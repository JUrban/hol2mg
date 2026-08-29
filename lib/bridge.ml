(* Bridge generator (docs/DESIGN.md §21.5): a proof-producing elaborator that walks a HOL
   theorem in lockstep with the native elaborator (lib/elab.ml) and the literal
   interpretation (lib/literal.ml), producing a Megalodon proof term of

       (literal statement) -> (native statement)

   The native statement it derives must be byte-identical to the one produced by
   Elab.elab_sequent; otherwise the theorem is reported as bridge_mismatch.  Proofs are
   proof terms (Megalodon `exact`), built from the lemmas of mglib/literal/bridge.mg, the
   compatibility theorems of mglib/literal/compat.mg (statements generated here, see
   compat_statement) and the typing lemmas of the literal constants. *)

open Hol
module R = Registry
module L = Literal
module E = Elab

exception Bridge_unsupported of string
let unsupported fmt = Printf.ksprintf (fun s -> raise (Bridge_unsupported s)) fmt

type dir = Fwd | Bwd            (* Fwd: literal -> native; Bwd: native -> literal *)

(* how a literal term relates to its native counterpart *)
type relkind =
  | KEq                          (* lit = nat *)
  | KRep of Mg.tm                (* hl_rep A lit = nat *)
  | KRep2 of Mg.tm               (* hl_rep2 A lit = nat : a set of subsets of A (nested representation) *)
  | KPW of Mg.tm                 (* forall x :e A, lit x = nat x  (meta-function, arity 1) *)
  | KPWP of Mg.tm                (* forall x :e A, lit x = 1 <-> nat x (meta-predicate, arity 1) *)
  | KRepFun of Mg.tm * Mg.tm     (* forall x :e K, hl_rep A (lit x) = nat x  (function into subsets of A) *)
  | KIff                         (* lit = 1 <-> nat *)
  | KPW2 of Mg.tm * Mg.tm        (* forall x :e A, forall y :e B, lit x y = nat x y *)
  | KPWP2 of Mg.tm * Mg.tm       (* forall x :e A, forall y :e B, lit x y = 1 <-> nat x y *)

type vinfo = {
  vty : ty;
  view : E.view;
  lit : Mg.tm;                   (* literal term standing for the variable *)
  nat : Mg.tm option;            (* substitution for the native variable name (Bwd domain changes) *)
  mem : string;                  (* proof term of lit :e L[vty] *)
  rel : string;                  (* proof term of the relation (per relkind), "" when reflexive *)
  kind : relkind;
  hyp : string;                  (* extra hypothesis name (subset: s c= A; metafun: closure) *)
}

type genv = {
  lctx : L.ctx;
  nctx : E.ctx;
  an : L.analysis;
  compat : (string, string * string) Hashtbl.t;   (* compat lemma name -> (statement text, status) *)
  mutable vars : (string * vinfo) list;             (* HOL key -> info *)
  mutable nonempty : (string * string) list;        (* carrier parameter -> hypothesis name *)
  mutable counter : int;
  mutable used_compat : string list;
  mutable lit_typing : bool;                        (* refer to the literal-carrier typing lemmas (_in_lit) *)
  mutable hyps : (Mg.tm * string) list;             (* native hypotheses in scope: proposition, proof term *)
}

(* side conditions of compatibility theorems (docs/DESIGN.md §21.4): constants whose HOL
   meaning is underspecified outside a domain get a hypothesis on the literal arguments;
   the bridge discharges it from the hypotheses in scope.  Templates use ?1.. for the literal
   arguments and ?A.. for carriers. *)
let side_conditions : (string * string list) list =
  [ ("CARD", [ "finite ?1" ]);
    ("sup", [ "exists x :e R, is_lub ?1 x" ]);
    ("inf", [ "exists x :e R, is_glb ?1 x" ]);
    ("num_of_int", [ "?1 :e omega" ]);
    ("HD", [ "~ ?1 = seq_nil" ]);
    ("TL", [ "~ ?1 = seq_nil" ]);
    ("LAST", [ "~ ?1 = seq_nil" ]) ]
(* side-condition templates use the native placeholders: `?1` is the representation of a subset
   argument (hl_rep .. / hl_rep2 ..) *)

(* derived side conditions: condition template -> alternative rules (premise slots, lemma).
   Each slot lists alternative premise templates with a wrapper lemma ("" = use the hypothesis as
   is; "mem" = the template `?x :e ?1`, turned into nonemptiness by neq_Empty_of_mem; otherwise
   `wrapper S Hsub h`).  Premises are matched among the hypotheses in native form, `?1` denoting
   the native set; the rule's lemma takes the set, its `c= R` proof and the slot proofs in order. *)
let nonempty_alts = [ ("~ ?1 = Empty", ""); ("?1 <> Empty", ""); ("?x :e ?1", "mem") ]
(* special wrappers: "mem" (a membership hypothesis gives nonemptiness), "lub"/"glb" (a hypothesis
   `is_lub ?1 x` with x a real variable gives the witness), "var" (the native term is a variable
   bound with the required carrier); a rule with lemma "" returns its single slot proof *)
let side_derivations : (string * ((string * string) list list * string) list) list =
  [ ("exists x :e R, is_lub ?1 x",
     [ ([ nonempty_alts; [ ("exists b :e R, forall x :e ?1, x <= b", ""); ("exists b :e R, forall x :e R, x :e ?1 -> x <= b", "bound_above_of_guarded"); ("@bound_above", "") ] ], "lub_of_bounds");
       ([ nonempty_alts; [ ("finite ?1", "") ] ], "lub_of_finite");
       ([ [ ("is_lub ?1 ?x", "lub") ] ], "") ]);
    ("exists x :e R, is_glb ?1 x",
     [ ([ nonempty_alts; [ ("exists b :e R, forall x :e ?1, b <= x", ""); ("exists b :e R, forall x :e R, x :e ?1 -> b <= x", "bound_below_of_guarded"); ("@bound_below", "") ] ], "glb_of_bounds");
       ([ nonempty_alts; [ ("finite ?1", "") ] ], "glb_of_finite");
       ([ [ ("is_glb ?1 ?x", "glb") ] ], "") ]);
    ("?1 :e omega",
     [ ([ [ ("0 <= ?1", "") ] ], "int_nonneg_omega");
       ([ [ ("?1 :e omega", "var") ] ], "") ]);
    ("~ ?1 = seq_nil",
     [ ([ [ ("~ ?1 = seq_nil", ""); ("?1 <> seq_nil", "") ] ], "") ]) ]

(* the membership hypothesis of a native variable bound with a set carrier *)
let nat_var_mem g (t : Mg.tm) : (Mg.tm * string) option =
  match t with
  | Mg.Var n ->
      List.find_map (fun (k, v) ->
        match List.assoc_opt k g.nctx.E.vars, v.view with
        | Some (_, _, n'), E.VSet c when n' = n && v.nat = None -> Some (c, v.mem)
        | _ -> None) g.vars
  | _ -> None

(* the template parser only knows the God1 signature: literal-layer constants (hl_...) come back
   as variables; make them constants so that structural matching against generated terms works *)
let rec cstify (t : Mg.tm) : Mg.tm =
  match t with
  | Mg.Var v when String.length v > 3 && String.sub v 0 3 = "hl_" -> Mg.Cst v
  | Mg.App (a, b) -> Mg.App (cstify a, cstify b)
  | Mg.Lam (x, ty, b) -> Mg.Lam (x, ty, cstify b)
  | Mg.LamIn (x, a, b) -> Mg.LamIn (x, cstify a, cstify b)
  | Mg.All (x, ty, b) -> Mg.All (x, ty, cstify b)
  | Mg.AllIn (x, a, b) -> Mg.AllIn (x, cstify a, cstify b)
  | Mg.Ex (x, ty, b) -> Mg.Ex (x, ty, cstify b)
  | Mg.ExIn (x, a, b) -> Mg.ExIn (x, cstify a, cstify b)
  | Mg.Imp (a, b) -> Mg.Imp (cstify a, cstify b)
  | Mg.Sep (x, a, p) -> Mg.Sep (x, cstify a, cstify p)
  | Mg.If (c, a, b) -> Mg.If (cstify c, cstify a, cstify b)
  | _ -> t

let paren s = "(" ^ s ^ ")"
let pp t = Mg.to_string t
let ppp t = paren (Mg.to_string t)

(* ------------------------------------------------------------------------ *)
(* Texts of literal and native subformulas / subterms.                      *)
(* ------------------------------------------------------------------------ *)

let nsubst g = List.filter_map (fun (_, v) -> match v.nat with Some t -> (match v.view with _ -> Some (E.(match List.assoc_opt "" [] with _ -> ""), t)) | None -> None) g.vars

(* native substitutions are keyed by the native variable name *)
let nat_subst g =
  List.filter_map (fun (k, v) ->
    match v.nat, List.assoc_opt k g.nctx.E.vars with
    | Some t, Some (_, _, n) -> Some (n, t)
    | _ -> None) g.vars

(* pair projections of explicit tuples, (a,b) 0 = a and (a,b) 1 = b, reduced everywhere: the
   elaborator's statement-level rewrite pass does the same (rules tuple_2_0_eq/tuple_2_1_eq), and
   the relation of a mapped constant replays them on the derived side (normalize_singletons) *)
let rec reduce_tuples (t : Mg.tm) : Mg.tm =
  match t with
  | Mg.App (a, b) ->
      let a' = reduce_tuples a and b' = reduce_tuples b in
      (match a', b' with
       | Mg.Tuple [ x; _ ], Mg.Num 0 -> x
       | Mg.Tuple [ _; y ], Mg.Num 1 -> y
       | _ -> Mg.App (a', b'))
  | Mg.Lam (x, ty, b) -> Mg.Lam (x, ty, reduce_tuples b)
  | Mg.LamIn (x, a, b) -> Mg.LamIn (x, reduce_tuples a, reduce_tuples b)
  | Mg.All (x, ty, b) -> Mg.All (x, ty, reduce_tuples b)
  | Mg.AllIn (x, a, b) -> Mg.AllIn (x, reduce_tuples a, reduce_tuples b)
  | Mg.AllSub (x, a, b) -> Mg.AllSub (x, reduce_tuples a, reduce_tuples b)
  | Mg.Ex (x, ty, b) -> Mg.Ex (x, ty, reduce_tuples b)
  | Mg.ExIn (x, a, b) -> Mg.ExIn (x, reduce_tuples a, reduce_tuples b)
  | Mg.ExSub (x, a, b) -> Mg.ExSub (x, reduce_tuples a, reduce_tuples b)
  | Mg.Imp (a, b) -> Mg.Imp (reduce_tuples a, reduce_tuples b)
  | Mg.Sep (x, a, p) -> Mg.Sep (x, reduce_tuples a, reduce_tuples p)
  | Mg.Repl (x, a, b) -> Mg.Repl (x, reduce_tuples a, reduce_tuples b)
  | Mg.ReplSep (x, a, p, b) -> Mg.ReplSep (x, reduce_tuples a, reduce_tuples p, reduce_tuples b)
  | Mg.SetEnum l -> Mg.SetEnum (List.map reduce_tuples l)
  | Mg.If (c, a, b) -> Mg.If (reduce_tuples c, reduce_tuples a, reduce_tuples b)
  | Mg.Tuple l -> Mg.Tuple (List.map reduce_tuples l)
  | Mg.SigmaIn (x, a, b) -> Mg.SigmaIn (x, reduce_tuples a, reduce_tuples b)
  | Mg.PiIn (x, a, b) -> Mg.PiIn (x, reduce_tuples a, reduce_tuples b)
  | Mg.FamUnion (x, a, b) -> Mg.FamUnion (x, reduce_tuples a, reduce_tuples b)
  | _ -> t

(* canonical bound-variable names, for comparisons up to alpha-equivalence *)
let rec alpha_canon depth (t : Mg.tm) : Mg.tm =
  let bind x body = let x' = "_b" ^ string_of_int depth in (x', alpha_canon (depth + 1) (Mg.subst [ (x, Mg.Var x') ] body)) in
  let bind2 x b1 b2 = let x' = "_b" ^ string_of_int depth in (x', alpha_canon (depth + 1) (Mg.subst [ (x, Mg.Var x') ] b1), alpha_canon (depth + 1) (Mg.subst [ (x, Mg.Var x') ] b2)) in
  match t with
  | Mg.App (a, b) -> Mg.App (alpha_canon depth a, alpha_canon depth b)
  | Mg.Lam (x, ty, b) -> let x', b' = bind x b in Mg.Lam (x', ty, b')
  | Mg.LamIn (x, a, b) -> let x', b' = bind x b in Mg.LamIn (x', alpha_canon depth a, b')
  | Mg.All (x, ty, b) -> let x', b' = bind x b in Mg.All (x', ty, b')
  | Mg.AllIn (x, a, b) -> let x', b' = bind x b in Mg.AllIn (x', alpha_canon depth a, b')
  | Mg.AllSub (x, a, b) -> let x', b' = bind x b in Mg.AllSub (x', alpha_canon depth a, b')
  | Mg.Ex (x, ty, b) -> let x', b' = bind x b in Mg.Ex (x', ty, b')
  | Mg.ExIn (x, a, b) -> let x', b' = bind x b in Mg.ExIn (x', alpha_canon depth a, b')
  | Mg.ExSub (x, a, b) -> let x', b' = bind x b in Mg.ExSub (x', alpha_canon depth a, b')
  | Mg.Imp (a, b) -> Mg.Imp (alpha_canon depth a, alpha_canon depth b)
  | Mg.Sep (x, a, p) -> let x', p' = bind x p in Mg.Sep (x', alpha_canon depth a, p')
  | Mg.Repl (x, a, b) -> let x', b' = bind x b in Mg.Repl (x', alpha_canon depth a, b')
  | Mg.ReplSep (x, a, p, b) -> let x', p', b' = bind2 x p b in Mg.ReplSep (x', alpha_canon depth a, p', b')
  | Mg.SetEnum l -> Mg.SetEnum (List.map (alpha_canon depth) l)
  | Mg.If (c, a, b) -> Mg.If (alpha_canon depth c, alpha_canon depth a, alpha_canon depth b)
  | Mg.Tuple l -> Mg.Tuple (List.map (alpha_canon depth) l)
  | Mg.SigmaIn (x, a, b) -> let x', b' = bind x b in Mg.SigmaIn (x', alpha_canon depth a, b')
  | Mg.PiIn (x, a, b) -> let x', b' = bind x b in Mg.PiIn (x', alpha_canon depth a, b')
  | Mg.FamUnion (x, a, b) -> let x', b' = bind x b in Mg.FamUnion (x', alpha_canon depth a, b')
  | _ -> t

let alpha_eq a b = alpha_canon 0 a = alpha_canon 0 b

(* bounds of a real set from hypotheses of the forms
     forall x :e R, x :e s -> x <= b / b <= x / abs_SNo x <= a / abs_SNo (x + - l) <= e / a <= x /\ x <= b
   (bound terms must be real variables) *)
let derive_bound g (s : Mg.tm) (upper : bool) : string option =
  let typR t = (match nat_var_mem g t with Some (Mg.Cst ("R" | "real"), h) -> Some h | _ -> None) in
  let is_x x t = (t = Mg.Var x) in
  List.find_map (fun (h, hp) -> match h with
    | Mg.AllIn (x, Mg.Cst ("R" | "real"), Mg.Imp (Mg.App (Mg.App (Mg.Cst "In", xv), s'), body)) when is_x x xv && s' = s ->
        (match body with
         | Mg.App (Mg.App (Mg.Cst "SNoLe", xv'), b) when is_x x xv' && upper && not (List.mem x (Mg.free_vars b)) ->
             Option.map (fun hb -> Printf.sprintf "(bound_above_concrete %s %s %s %s)" (ppp s) (ppp b) hb hp) (typR b)
         | Mg.App (Mg.App (Mg.Cst "SNoLe", b), xv') when is_x x xv' && not upper && not (List.mem x (Mg.free_vars b)) ->
             Option.map (fun hb -> Printf.sprintf "(bound_below_concrete %s %s %s %s)" (ppp s) (ppp b) hb hp) (typR b)
         | Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.App (Mg.Cst "abs_SNo", xv')), a) when is_x x xv' && not (List.mem x (Mg.free_vars a)) ->
             Option.map (fun ha -> Printf.sprintf "(%s %s %s %s %s)" (if upper then "bound_above_of_abs" else "bound_below_of_abs") (ppp s) (ppp a) ha hp) (typR a)
         | Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.App (Mg.Cst "abs_SNo", Mg.App (Mg.App (Mg.Cst "add_SNo", xv'), Mg.App (Mg.Cst "minus_SNo", l)))), e)
           when is_x x xv' && not (List.mem x (Mg.free_vars l)) && not (List.mem x (Mg.free_vars e)) ->
             (match typR l, typR e with
              | Some hl, Some he -> Some (Printf.sprintf "(%s %s %s %s %s %s %s)" (if upper then "bound_above_of_abs_shift" else "bound_below_of_abs_shift") (ppp s) (ppp l) (ppp e) hl he hp)
              | _ -> None)
         | Mg.App (Mg.App (Mg.Cst "and", Mg.App (Mg.App (Mg.Cst "SNoLe", a), xv1)), Mg.App (Mg.App (Mg.Cst "SNoLe", xv2), b))
           when is_x x xv1 && is_x x xv2 && not (List.mem x (Mg.free_vars a)) && not (List.mem x (Mg.free_vars b)) ->
             if upper then Option.map (fun hb -> Printf.sprintf "(bound_above_of_pair %s %s %s %s %s)" (ppp s) (ppp a) (ppp b) hb hp) (typR b)
             else Option.map (fun ha -> Printf.sprintf "(bound_below_of_pair %s %s %s %s %s)" (ppp s) (ppp a) (ppp b) ha hp) (typR a)
         | _ -> None)
    | _ -> None) g.hyps

let nprop g t = reduce_tuples (Mg.normalize (Mg.subst (nat_subst g) (E.elab g.nctx t E.VProp)))
let ntext g t = pp (nprop g t)
let lprop g t = L.lprop g.lctx t
let ltext g t = pp (lprop g t)
let lterm g t = L.lterm g.lctx t

(* structural derivation of `finite s` from the hypotheses in scope: finite hypotheses, singletons,
   adjoined elements, unions, replacements, separations, differences, intersections, subsets of
   finite sets (a `s c= t` hypothesis), bounded segments of omega *)
let rec derive_finite g (s : Mg.tm) (depth : int) : string option =
  if depth > 6 then None
  else
    match List.assoc_opt (Mg.App (Mg.Cst "finite", s)) g.hyps with
    | Some h -> Some h
    | None ->
        let sub = derive_finite g in
        let r = (match s with
          | Mg.Cst "Empty" | Mg.Num 0 -> Some "finite_Empty"
          | Mg.Num n when n <= 2 -> Some (Printf.sprintf "(nat_finite %d nat_%d)" n n)
          | Mg.SetEnum [ a ] -> Some (Printf.sprintf "(Sing_finite %s)" (ppp a))
          | Mg.App (Mg.App (Mg.Cst "SetAdjoin", x), a) -> Option.map (fun p -> Printf.sprintf "(adjoin_finite %s %s %s)" (ppp x) (ppp a) p) (sub x (depth + 1))
          | Mg.App (Mg.App (Mg.Cst "binunion", x), y) ->
              (match sub x (depth + 1), sub y (depth + 1) with
               | Some px, Some py -> Some (Printf.sprintf "(binunion_finite %s %s %s %s)" (ppp x) px (ppp y) py)
               | _ -> None)
          | Mg.Repl (v, x, f) -> Option.map (fun p -> Printf.sprintf "(Repl_finite (fun %s:set => %s) %s %s)" v (pp f) (ppp x) p) (sub x (depth + 1))
          | Mg.Sep (v, Mg.Cst "omega", body) when (match body with
                | Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var v'), _) -> v' = v
                | Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var v'), _) -> v' = v
                | Mg.App (Mg.App (Mg.Cst "and", _), Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var v'), _)) -> v' = v
                | _ -> false) ->
              (* {i :e omega | .. i <= n} c= {i :e omega | i <= n}, finite by segment_le_finite *)
              let n, imp = (match body with
                | Mg.App (Mg.App (Mg.Cst "SNoLe", _), n) -> (n, Printf.sprintf "(fun %s H%s H => H)" v v)
                | Mg.App (Mg.App (Mg.Cst "SNoLt", _), n) -> (n, Printf.sprintf "(fun %s H%s H => (SNoLtLe %s %s H))" v v v (ppp n))
                | Mg.App (Mg.App (Mg.Cst "and", a), (Mg.App (Mg.App (Mg.Cst "SNoLe", _), n) as b)) -> (n, Printf.sprintf "(fun %s H%s H => (andER (%s) (%s) H))" v v (pp a) (pp b))
                | _ -> assert false) in
              (match nat_var_mem g n with
               | Some (Mg.Cst "omega", hn) ->
                   let seg = Mg.Sep (v, Mg.Cst "omega", Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var v), n)) in
                   Some (Printf.sprintf "(Subq_finite %s (segment_le_finite %s %s) %s (Sep_Subq_Sep omega (fun %s:set => %s) (fun %s:set => %s <= %s) %s))" (ppp seg) (ppp n) hn (ppp s) v (pp body) v v (ppp n) imp)
               | _ -> None)
          | Mg.Sep (v, x, p) -> Option.map (fun pf -> Printf.sprintf "(Subq_finite %s %s %s (Sep_Subq %s (fun %s:set => %s)))" (ppp x) pf (ppp s) (ppp x) v (pp p)) (sub x (depth + 1))
          | Mg.App (Mg.App (Mg.Cst "setminus", x), y) -> Option.map (fun pf -> Printf.sprintf "(Subq_finite %s %s %s (setminus_Subq %s %s))" (ppp x) pf (ppp s) (ppp x) (ppp y)) (sub x (depth + 1))
          | Mg.App (Mg.App (Mg.Cst "binintersect", x), y) ->
              (match sub x (depth + 1) with
               | Some pf -> Some (Printf.sprintf "(Subq_finite %s %s %s (binintersect_Subq_1 %s %s))" (ppp x) pf (ppp s) (ppp x) (ppp y))
               | None -> Option.map (fun pf -> Printf.sprintf "(Subq_finite %s %s %s (binintersect_Subq_2 %s %s))" (ppp y) pf (ppp s) (ppp x) (ppp y)) (sub y (depth + 1)))
          | _ -> None) in
        (match r with
         | Some _ -> r
         | None ->
             List.find_map (fun (h, hp) -> match h with
               | Mg.App (Mg.App (Mg.Cst "Subq", s'), t) when s' = s && t <> s -> Option.map (fun pt -> Printf.sprintf "(Subq_finite %s %s %s %s)" (ppp t) pt (ppp s) hp) (sub t (depth + 1))
               | _ -> None) g.hyps)

(* ------------------------------------------------------------------------ *)
(* Nonemptiness and typing proofs for literal carriers and terms.           *)
(* ------------------------------------------------------------------------ *)

let rec nonempty_pf g (ty : ty) : string =
  match ty with
  | TyVar a ->
      let n = (try List.assoc a g.lctx.L.tyvar_names with Not_found -> E.sanitize_tyvar a) in
      (try List.assoc n g.nonempty with Not_found -> unsupported "no nonemptiness hypothesis for carrier %s" n)
  | TyApp ("bool", []) -> "two_nonempty"
  | TyApp ("fun", [ a; b ]) -> Printf.sprintf "(setexp_nonempty %s %s %s)" (ppp (L.carrier g.lctx a)) (ppp (L.carrier g.lctx b)) (nonempty_pf g b)
  | TyApp ("prod", [ a; b ]) -> Printf.sprintf "(setprod_nonempty %s %s %s %s)" (ppp (L.carrier g.lctx a)) (ppp (L.carrier g.lctx b)) (nonempty_pf g a) (nonempty_pf g b)
  | TyApp (("num" | "ind"), []) -> "omega_nonempty"
  | TyApp ("real", []) -> "R_nonempty"
  | TyApp ("1", []) -> "one_nonempty"
  | TyApp ("list", [ a ]) -> Printf.sprintf "(finseq_nonempty %s)" (ppp (L.carrier g.lctx a))
  | TyApp ("option", [ a ]) -> Printf.sprintf "(setsum_nonempty_L 1 %s one_nonempty)" (ppp (L.carrier g.lctx a))
  | TyApp ("sum", [ a; b ]) -> Printf.sprintf "(setsum_nonempty_L %s %s %s)" (ppp (L.carrier g.lctx a)) (ppp (L.carrier g.lctx b)) (nonempty_pf g a)
  | TyApp (c, args) when Hashtbl.mem g.an.L.tydefs c ->
      if g.lctx.L.use_native_tydefs && args = [] && Hashtbl.mem L.tydef_native c then ("hl_ty_" ^ E.sanitize_var c ^ "_native_nonempty")
      else paren (String.concat " " (("hl_ty_" ^ E.sanitize_var c ^ "_nonempty") :: List.map (fun a -> ppp (L.carrier g.lctx a)) args @ List.map (nonempty_pf g) args))
  | TyApp (c, _) -> unsupported "nonemptiness of carrier for type %s" c

let const_tyvars g c =
  let generic = (try Hashtbl.find g.an.L.consts c with Not_found -> unsupported "no generic type for %s" c) in
  L.tyvars_ordered generic []

(* carrier arguments of a constant occurrence, and the corresponding nonemptiness proofs *)
let const_carriers g c ty =
  let generic = Hashtbl.find g.an.L.consts c in
  let sub = L.match_ty generic ty [] in
  List.map (fun a -> let t = List.assoc a sub in (L.carrier g.lctx t, t)) (L.tyvars_ordered generic [])

let typing_lemma_name c = L.mg_name_of_const c ^ "_in"
let typing_lemma_name_of g c = L.mg_name_of_const c ^ (if g.lit_typing && not (List.mem_assoc c L.primitive_consts) then "_in_lit" else "_in")

(* proof of  L[t] :e L[type_of t] *)
let rec typ g (t : tm) : string =
  let ty = type_of [] t in
  if ty = bool_ty && L.is_logical t then Printf.sprintf "(If_in_2 %s)" (ppp (lprop g t))
  else
    match t with
    | Free (k, _) -> (match List.assoc_opt k g.vars with Some v -> v.mem | None -> unsupported "typing: unknown variable %s" k)
    | Const (c, cty) ->
        let cs = const_carriers g c cty in
        String.concat " " ((paren (typing_lemma_name_of g c)) :: List.map (fun (ca, _) -> ppp ca) cs @ List.map (fun (_, t) -> nonempty_pf g t) cs)
        |> paren
    | App (f, x) ->
        let fty = type_of [] f in
        let a, b = dest_fun_ty fty in
        Printf.sprintf "(setexp_ap %s %s %s %s %s %s)" (ppp (L.carrier g.lctx a)) (ppp (L.carrier g.lctx b)) (ppp (lterm g f)) (typ g f) (ppp (lterm g x)) (typ g x)
    | Lam (x, xty, body) ->
        let n, key, body' = open_lit g x xty body in
        let ca = L.carrier g.lctx xty in
        let cod = type_of [] body' in
        let hx = "H" ^ n in
        g.vars <- (key, { vty = xty; view = E.VSet ca; lit = Mg.Var n; nat = None; mem = hx; rel = ""; kind = KEq; hyp = "" }) :: g.vars;
        let inner = typ g body' in
        let lb = lterm g body' in
        close_lit g key n;
        Printf.sprintf "(lam_Pi %s (fun _ => %s) (fun %s => %s) (fun %s %s => %s))" (ppp ca) (pp (L.carrier g.lctx cod)) n (pp lb) n hx inner
    | Bound _ -> unsupported "typing: bound variable"

(* open a binder on the literal side only (typing of lambdas inside definitions) *)
and open_lit g x xty body =
  let n = L.fresh g.lctx x in
  let key = x ^ "\000" ^ n ^ "#" ^ string_of_int g.counter in
  g.counter <- g.counter + 1;
  g.lctx.L.vars <- (key, Mg.Var n) :: g.lctx.L.vars;
  (n, key, open_with (Free (key, xty)) body)

and close_lit g key n =
  g.lctx.L.vars <- List.remove_assoc key g.lctx.L.vars;
  g.vars <- List.remove_assoc key g.vars;
  L.release g.lctx n

(* ------------------------------------------------------------------------ *)
(* Compatibility lemma statements (generated; proved by hand in compat.mg).  *)
(* ------------------------------------------------------------------------ *)

let compat_name (e : R.const_entry) idx =
  L.mg_name_of_const e.R.c_hol ^ "_compat" ^ (if idx = 0 then "" else string_of_int idx)

(* The statement is built from the scheme, the roles and the template of the entry:
     forall A..:set, A <> Empty -> .. ->
     forall l1 :e L[t1], [forall f1:set -> set, (forall x :e A, l1 x = f1 x) ->]
                         [forall P1:set -> prop, (forall x :e A, l1 x = 1 <-> P1 x) ->]
                         [forall p1:prop, (l1 = 1 <-> p1) ->] ...
     RESULT
   where RESULT relates hl_c A.. l1 .. ln to the template instantiated with l_i (set roles),
   hl_rep A l_i (subset roles), f_i / P_i / p_i (meta roles). *)
(* native form of a literal value of the given type: subsets are represented by hl_rep, sets of
   subsets by hl_rep2; everything else is the value itself *)
let nat_of_lit lctx (ty : ty) (t : Mg.tm) : Mg.tm =
  match ty with
  | TyApp ("fun", [ TyApp ("fun", [ a; TyApp ("bool", []) ]); TyApp ("bool", []) ]) -> Mg.apps (Mg.Cst "hl_rep2") [ L.carrier lctx a; t ]
  | TyApp ("fun", [ a; TyApp ("bool", []) ]) -> Mg.apps (Mg.Cst "hl_rep") [ L.carrier lctx a; t ]
  | _ -> t

(* native carrier of a type variable's instance (the carrier of `?A` in templates): subsets are
   data of `Power A` *)
let nat_carrier_of lctx (ty : ty) : Mg.tm =
  match ty with
  | TyApp ("fun", [ a; TyApp ("bool", []) ]) -> Mg.App (Mg.Cst "Power", L.carrier lctx a)
  | _ -> L.carrier lctx ty

let rec subst_ty (a : string) (by : ty) (t : ty) : ty =
  match t with
  | TyVar b when b = a -> by
  | TyVar _ -> t
  | TyApp (c, args) -> TyApp (c, List.map (subst_ty a by) args)

let rec compat_statement (an : L.analysis) (e : R.const_entry) : Mg.tm option = compat_statement_of an e e.R.c_scheme

(* the entry's compatibility statement at the nested instance A := A -> bool (single type
   variable), used for set-of-subsets occurrences *)
and compat_statement_nested (an : L.analysis) (e : R.const_entry) : Mg.tm option =
  match L.tyvars_ordered e.R.c_scheme [] with
  | [ a ] -> compat_statement_of an e (subst_ty a (TyApp ("fun", [ TyVar a; TyApp ("bool", []) ])) e.R.c_scheme)
  | _ -> None

and compat_statement_of (an : L.analysis) (e : R.const_entry) (scheme : ty) : Mg.tm option =
  let tvs = L.tyvars_ordered scheme [] in
  let tv_names = L.tyvar_params tvs in
  let tv_inst = (match L.tyvars_ordered e.R.c_scheme [], tvs with
    | [ a ], [ _ ] when scheme <> e.R.c_scheme -> [ (a, TyApp ("fun", [ TyVar a; TyApp ("bool", []) ])) ]
    | _ -> []) in
  let lctx = L.new_ctx an.L.consts an.L.supported an.L.tydefs tv_names in
  lctx.L.use_native_tydefs <- true;
  let doms, res = strip_fun_ty scheme in
  let n = List.length e.R.c_args in
  if List.length doms < n then None
  else begin
    let doms = List.filteri (fun i _ -> i < n) doms in
    let res = List.fold_right (fun d acc -> fun_ty d acc) (List.filteri (fun i _ -> i >= n) (fst (strip_fun_ty scheme))) res in
    let args = List.mapi (fun i (role, aty) ->
      let l = L.fresh lctx ("l" ^ string_of_int (i + 1)) in
      let ca = L.carrier lctx aty in
      match role with
      | R.RSet -> (l, ca, `Set, nat_of_lit lctx aty (Mg.Var l))
      | R.RSubset ->
          (match aty with
           | TyApp ("fun", [ _; TyApp ("bool", []) ]) -> (l, ca, `Set, nat_of_lit lctx aty (Mg.Var l))
           | _ -> (l, ca, `Bad, Mg.Var l))
      | R.RProp -> let p = L.fresh lctx ("p" ^ string_of_int (i + 1)) in (l, ca, `Prop p, Mg.Var p)
      | R.RMetaFun k ->
          let k = (match k with Some k -> k | None -> E.fun_arity aty) in
          (match k, aty with
           | 1, TyApp ("fun", [ a; cod ]) -> let f = L.fresh lctx ("f" ^ string_of_int (i + 1)) in (l, ca, `Fun (f, L.carrier lctx a, nat_of_lit lctx cod (Mg.App (Mg.Var l, Mg.Var "x"))), Mg.Var f)
           | 2, TyApp ("fun", [ a; TyApp ("fun", [ b; _ ]) ]) -> let f = L.fresh lctx ("f" ^ string_of_int (i + 1)) in (l, ca, `Fun2 (f, L.carrier lctx a, L.carrier lctx b), Mg.Var f)
           | _ -> (l, ca, `Bad, Mg.Var l))
      | R.RMetaPred k ->
          let k = (match k with Some k -> k | None -> E.fun_arity aty) in
          (match k, aty with
           | 1, TyApp ("fun", [ a; TyApp ("bool", []) ]) -> let p = L.fresh lctx ("P" ^ string_of_int (i + 1)) in (l, ca, `Pred (p, L.carrier lctx a, nat_of_lit lctx a (Mg.Var "x")), Mg.Var p)
           | 2, TyApp ("fun", [ a; TyApp ("fun", [ b; TyApp ("bool", []) ]) ]) -> let p = L.fresh lctx ("P" ^ string_of_int (i + 1)) in (l, ca, `Pred2 (p, L.carrier lctx a, L.carrier lctx b, nat_of_lit lctx a (Mg.Var "x"), nat_of_lit lctx b (Mg.Var "y")), Mg.Var p)
           | _ -> (l, ca, `Bad, Mg.Var l))) (List.combine e.R.c_args doms) in
    if List.exists (fun (_, _, k, _) -> k = `Bad) args then None
    else begin
      let sub = List.mapi (fun i (_, _, _, t) -> (string_of_int (i + 1), t)) args
                @ List.map (fun (a, n) -> (a, (match List.assoc_opt a tv_inst with Some t -> nat_carrier_of lctx (subst_ty a (TyVar n) t) | None -> Mg.Var n))) tv_names in
      let rhs = Mg.normalize (Mg.inst sub e.R.c_template) in
      (* the literal constant applied to the carrier parameters of its *generic* type instantiated
         at the entry's scheme (an instance entry such as `==` at int gets `hl_sym_3d3d int`) *)
      let lhs = Mg.apps (L.const_ref lctx e.R.c_hol scheme) (List.map (fun (l, _, _, _) -> Mg.Var l) args) in
      let result = (match e.R.c_result with
        | R.RProp -> Some (L.mg_iff (L.mg_eq lhs L.one) rhs)
        | R.RSet -> Some (L.mg_eq lhs rhs)
        | R.RSubset -> (match res with
            | TyApp ("fun", [ _; TyApp ("bool", []) ]) -> Some (L.mg_eq (nat_of_lit lctx res lhs) rhs)
            | _ -> None)
        | R.RMetaFun _ -> (match res with
            | TyApp ("fun", [ d; _ ]) -> Some (Mg.AllIn ("x", L.carrier lctx d, L.mg_eq (Mg.App (lhs, Mg.Var "x")) (Mg.normalize (Mg.App (rhs, Mg.Var "x")))))
            | _ -> None)
        | R.RMetaPred _ -> (match res with
            | TyApp ("fun", [ d; TyApp ("bool", []) ]) -> Some (Mg.AllIn ("x", L.carrier lctx d, L.mg_iff (L.mg_eq (Mg.App (lhs, Mg.Var "x")) L.one) (Mg.normalize (Mg.App (rhs, Mg.Var "x")))))
            | _ -> None)) in
      match result with
      | None -> None
      | Some body ->
          let sides = (match List.assoc_opt e.R.c_hol side_conditions with
            | Some l -> List.map (fun t -> Mg.normalize (Mg.inst sub (cstify (Mg.parse_template t)))) l
            | None -> []) in
          let body = List.fold_right (fun sc acc -> Mg.Imp (sc, acc)) sides body in
          let body = List.fold_right (fun (l, ca, k, _) acc ->
            let acc = (match k with
              | `Fun (f, a, lx) -> Mg.All (f, Mg.Arr (Mg.Set, Mg.Set), Mg.Imp (Mg.AllIn ("x", a, L.mg_eq lx (Mg.App (Mg.Var f, Mg.Var "x"))), acc))
              | `Pred (p, a, nx) -> Mg.All (p, Mg.Arr (Mg.Set, Mg.Prop), Mg.Imp (Mg.AllIn ("x", a, L.mg_iff (L.mg_eq (Mg.App (Mg.Var l, Mg.Var "x")) L.one) (Mg.App (Mg.Var p, nx))), acc))
              | `Fun2 (f, a, b) -> Mg.All (f, Mg.Arr (Mg.Set, Mg.Arr (Mg.Set, Mg.Set)), Mg.Imp (Mg.AllIn ("x", a, Mg.AllIn ("y", b, L.mg_eq (Mg.apps (Mg.Var l) [ Mg.Var "x"; Mg.Var "y" ]) (Mg.apps (Mg.Var f) [ Mg.Var "x"; Mg.Var "y" ]))), acc))
              | `Pred2 (p, a, b, nx, ny) -> Mg.All (p, Mg.Arr (Mg.Set, Mg.Arr (Mg.Set, Mg.Prop)), Mg.Imp (Mg.AllIn ("x", a, Mg.AllIn ("y", b, L.mg_iff (L.mg_eq (Mg.apps (Mg.Var l) [ Mg.Var "x"; Mg.Var "y" ]) L.one) (Mg.apps (Mg.Var p) [ nx; ny ]))), acc))
              | `Prop p -> Mg.All (p, Mg.Prop, Mg.Imp (L.mg_iff (L.mg_eq (Mg.Var l) L.one) (Mg.Var p), acc))
              | _ -> acc) in
            Mg.AllIn (l, ca, acc)) args body in
          let body = List.fold_right (fun (_, n) acc -> Mg.Imp (L.mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc)) tv_names body in
          let body = List.fold_right (fun (_, n) acc -> Mg.All (n, Mg.Set, acc)) tv_names body in
          Some body
    end
  end

(* ------------------------------------------------------------------------ *)
(* Term relations.                                                          *)
(* ------------------------------------------------------------------------ *)

let refl = "(fun q H => H)"

(* Leibniz: from pf_eq : l = n and pf : P[l] obtain P[n], where ctx is P with a hole `u` *)
let leibniz pf_eq (ctx_with_u : string) pf = Printf.sprintf "(%s (fun hl__u hl__v => %s) %s)" pf_eq ctx_with_u pf

(* replace occurrences of a subterm by a variable *)
let rec replace_tm (old : Mg.tm) (by : Mg.tm) (t : Mg.tm) : Mg.tm =
  if t = old then by
  else
    match t with
    | Mg.App (a, b) -> Mg.App (replace_tm old by a, replace_tm old by b)
    | Mg.Lam (x, ty, b) -> Mg.Lam (x, ty, replace_tm old by b)
    | Mg.LamIn (x, a, b) -> Mg.LamIn (x, replace_tm old by a, replace_tm old by b)
    | Mg.All (x, ty, b) -> Mg.All (x, ty, replace_tm old by b)
    | Mg.AllIn (x, a, b) -> Mg.AllIn (x, replace_tm old by a, replace_tm old by b)
    | Mg.AllSub (x, a, b) -> Mg.AllSub (x, replace_tm old by a, replace_tm old by b)
    | Mg.Ex (x, ty, b) -> Mg.Ex (x, ty, replace_tm old by b)
    | Mg.ExIn (x, a, b) -> Mg.ExIn (x, replace_tm old by a, replace_tm old by b)
    | Mg.ExSub (x, a, b) -> Mg.ExSub (x, replace_tm old by a, replace_tm old by b)
    | Mg.Imp (a, b) -> Mg.Imp (replace_tm old by a, replace_tm old by b)
    | Mg.Sep (x, a, p) -> Mg.Sep (x, replace_tm old by a, replace_tm old by p)
    | Mg.Repl (x, a, b) -> Mg.Repl (x, replace_tm old by a, replace_tm old by b)
    | Mg.ReplSep (x, a, p, b) -> Mg.ReplSep (x, replace_tm old by a, replace_tm old by p, replace_tm old by b)
    | Mg.SetEnum l -> Mg.SetEnum (List.map (replace_tm old by) l)
    | Mg.If (c, a, b) -> Mg.If (replace_tm old by c, replace_tm old by a, replace_tm old by b)
    | Mg.Tuple l -> Mg.Tuple (List.map (replace_tm old by) l)
    | Mg.SigmaIn (x, a, b) -> Mg.SigmaIn (x, replace_tm old by a, replace_tm old by b)
    | Mg.PiIn (x, a, b) -> Mg.PiIn (x, replace_tm old by a, replace_tm old by b)
    | Mg.FamUnion (x, a, b) -> Mg.FamUnion (x, replace_tm old by a, replace_tm old by b)
    | _ -> t

(* rewrite the proposition `prop` (a proof pf of it is given) replacing the literal term l by
   the native term n, justified by pf_eq : l = n; returns (new prop, proof) *)
let rewrite_in (pf_eq : string) (l : Mg.tm) (n : Mg.tm) (prop : Mg.tm) (pf : string) : Mg.tm * string =
  if l = n then (prop, pf)
  else begin
    let ctx = replace_tm l (Mg.Var "hl__u") prop in
    let prop' = replace_tm l n prop in
    (prop', leibniz pf_eq (pp ctx) pf)
  end

let eq_sym l n pf = Printf.sprintf "(eq_sym_i %s %s %s)" (ppp l) (ppp n) pf

(* the registry entry used by Elab for a constant occurrence *)
let mapped_entry g c cty =
  match R.find_const g.nctx.E.reg c cty with
  | Some (e, inst) -> Some (e, inst)
  | None -> None

(* compatibility lemma for an entry, if available (statement text must match compat.mg) *)
let compat_for g (e : R.const_entry) : string =
  let idx = (match Hashtbl.find_opt g.nctx.E.reg.R.consts e.R.c_hol with
    | Some l -> (let rec find i = function [] -> 0 | x :: r -> if x == e then i else find (i + 1) r in find 0 l)
    | None -> 0) in
  let name = compat_name e idx in
  (match Hashtbl.find_opt g.compat name with
   | Some (_, "ok") -> if not (List.mem name g.used_compat) then g.used_compat <- name :: g.used_compat; name
   | Some (_, st) -> unsupported "compat_missing: %s (%s)" name st
   | None -> unsupported "compat_missing: %s" name)

let compat_for_nested g (e : R.const_entry) : string =
  let idx = (match Hashtbl.find_opt g.nctx.E.reg.R.consts e.R.c_hol with
    | Some l -> (let rec find i = function [] -> 0 | x :: r -> if x == e then i else find (i + 1) r in find 0 l)
    | None -> 0) in
  let name = compat_name e idx ^ "_pow" in
  (match Hashtbl.find_opt g.compat name with
   | Some (_, "ok") -> if not (List.mem name g.used_compat) then g.used_compat <- name :: g.used_compat; name
   | Some (_, st) -> unsupported "compat_missing: %s (%s)" name st
   | None -> unsupported "compat_missing: %s" name)

let imp_lemma dir name la na lb nb pa pb =
  match dir with
  | Fwd -> Printf.sprintf "(%s %s %s %s %s %s %s)" name la na lb nb pa pb
  | Bwd -> Printf.sprintf "(%s %s %s %s %s %s %s)" name na la nb lb pa pb

(* open a lambda binder exactly as the elaborator does; returns the native name, the opened body,
   the variable's view and a cleanup function (the variable is registered in all contexts) *)
let open_lam g x xty body =
  let n = E.fresh g.nctx x in
  let key = x ^ "\000" ^ n ^ "#" ^ string_of_int g.counter in
  g.counter <- g.counter + 1;
  let body' = open_with (Free (key, xty)) body in
  let xview = (match E.choose_view g.nctx (key, xty) [ body' ] with
    | E.VMetaFun _ | E.VMetaPred _ -> E.data_view g.nctx xty
    | E.VProp -> E.VSet (Mg.Num 2)
    | v -> v) in
  g.nctx.E.vars <- (key, (xty, xview, n)) :: g.nctx.E.vars;
  if not (List.mem n g.lctx.L.used) then g.lctx.L.used <- n :: g.lctx.L.used;
  g.lctx.L.vars <- (key, Mg.Var n) :: g.lctx.L.vars;
  let plain = (match xview with
    | E.VSubset (Mg.App (Mg.Cst "Power", cs)) -> { vty = xty; view = xview; lit = Mg.Var n; nat = Some (Mg.apps (Mg.Cst "hl_rep2") [ cs; Mg.Var n ]); mem = "H" ^ n; rel = ""; kind = KRep2 cs; hyp = "" }
    | E.VSubset cs -> { vty = xty; view = xview; lit = Mg.Var n; nat = Some (Mg.apps (Mg.Cst "hl_rep") [ cs; Mg.Var n ]); mem = "H" ^ n; rel = ""; kind = KRep cs; hyp = "" }
    | _ -> { vty = xty; view = xview; lit = Mg.Var n; nat = None; mem = "H" ^ n; rel = ""; kind = KEq; hyp = "" }) in
  g.vars <- (key, plain) :: g.vars;
  let cleanup () =
    g.nctx.E.vars <- List.remove_assoc key g.nctx.E.vars;
    g.lctx.L.vars <- List.remove_assoc key g.lctx.L.vars;
    g.vars <- List.remove_assoc key g.vars;
    E.release g.nctx n; g.lctx.L.used <- List.filter (( <> ) n) g.lctx.L.used in
  (n, body', xview, cleanup)

(* relation proof for a HOL term in a given native view; returns (lit, nat, kind, proof) *)
let rec rel g (t : tm) (want : E.view option) : Mg.tm * Mg.tm * relkind * string =
  let nat, nview = E.elab_nat g.nctx t want in
  let nat = reduce_tuples (Mg.normalize (Mg.subst (nat_subst g) nat)) in
  let lit = lterm g t in
  let r = rel_nat g t lit nat nview in
  match want with
  | None -> r
  | Some w -> coerce_rel g t r w

(* relation in the natural view of the term *)
and rel_nat g (t : tm) (lit : Mg.tm) (nat : Mg.tm) (nview : E.view) : Mg.tm * Mg.tm * relkind * string =
  match t with
  | Free (k, _) ->
      (match List.assoc_opt k g.vars with
       | Some v -> (lit, nat, v.kind, v.rel)
       | None -> unsupported "rel: unknown variable %s" k)
  | _ ->
      let h, args = head_and_args t in
      (match h, nview with
       | Free (k, _), _ ->
           (* application of a variable *)
           let v = (match List.assoc_opt k g.vars with Some v -> v | None -> unsupported "rel: unknown variable %s" k) in
           (match v.kind, args with
            | KEq, _ ->
                (* set-valued function variable applied via ap: both sides identical up to argument relations *)
                let lit_now = ref (Mg.apps v.lit []) and pf = ref refl in
                let cur = ref v.lit in
                List.iter (fun a ->
                  let la, na, ka, pa = rel g a (Some (E.VSet (L.carrier g.lctx (type_of [] a)))) in
                  if ka <> KEq then unsupported "rel: argument of set function must be a set value";
                  (* !cur la = ?cur na : from refl by rewriting la -> na *)
                  let prop = L.mg_eq (Mg.App (!cur, la)) (Mg.App (!cur, la)) in
                  let ctx = L.mg_eq (Mg.App (!cur, la)) (Mg.App (replace_tm la (Mg.Var "hl__u") !cur, Mg.Var "hl__u")) in
                  ignore prop; ignore ctx;
                  cur := Mg.App (!cur, na); lit_now := Mg.App (!lit_now, la);
                  pf := if la = na then refl else unsupported "rel: set function applied to non-identical argument") args;
                if nview <> E.VSet (Mg.Var "?") then ();
                (lit, nat, KEq, !pf)
            | KPW a, [ x ] ->
                (* meta-function variable applied: lit = F lx, nat = f nx with rel: forall x :e A, F x = f x *)
                let lx, nx, kx, px = rel g x (Some (E.VSet a)) in
                if kx <> KEq then unsupported "rel: metafun argument";
                (* base: lit = head lx where head is the native function; then rewrite lx -> nx in the RHS only *)
                let head = if v.rel = "" then v.lit else (match v.nat with Some t -> t | None -> Mg.Var (match List.assoc_opt k g.nctx.E.vars with Some (_, _, n) -> n | None -> k)) in
                let pf0 = if v.rel = "" then refl else Printf.sprintf "(%s %s %s)" v.rel (ppp lx) (typ g x) in
                if lx = nx then (lit, nat, KEq, pf0)
                else begin
                  let ctx = L.mg_eq lit (Mg.App (head, Mg.Var "hl__u")) in
                  (lit, nat, KEq, leibniz (if px = "" then refl else px) (pp ctx) pf0)
                end
            | KPWP a, [ x ] ->
                (* the argument is a set value of the literal carrier a; a subset-typed argument (a = 2 :^: c)
                   is a native subset of c, related through its representation *)
                let want = (match a with
                  | Mg.App (Mg.App (Mg.Cst "setexp", Mg.Num 2), Mg.App (Mg.App (Mg.Cst "setexp", Mg.Num 2), c)) -> E.VSet (Mg.App (Mg.Cst "Power", Mg.App (Mg.Cst "Power", c)))
                  | Mg.App (Mg.App (Mg.Cst "setexp", Mg.Num 2), c) -> E.VSet (Mg.App (Mg.Cst "Power", c))
                  | _ -> E.VSet a) in
                let lx, nx, kx, px = rel g x (Some want) in
                let conv c _rep_c chi_c chi_rep rp =
                  (* lit = n lx ; nat = n (ch (r lx)) = 1 *)
                  Printf.sprintf "((eq_sym_i (%s %s %s) %s (%s %s %s %s)) (fun hl__u hl__v => %s = 1 <-> %s = 1) (iff_refl (%s = 1)))"
                    chi_c (ppp c) (ppp rp) (ppp lx) chi_rep (ppp c) (ppp lx) (typ g x) (pp lit) (pp (Mg.App (v.lit, Mg.Var "hl__u"))) (pp lit) in
                let arg_lit, pf0 = (match kx with
                  | KEq -> (lx, if v.rel = "" then Printf.sprintf "(iff_refl %s)" (ppp (L.mg_eq lit L.one)) else Printf.sprintf "(%s %s %s)" v.rel (ppp lx) (typ g x))
                  | KRep c ->
                      let rp = Mg.apps (Mg.Cst "hl_rep") [ c; lx ] in
                      (rp, if v.rel = "" then conv c "hl_rep" "hl_chi" "hl_chi_rep" rp else Printf.sprintf "(%s %s %s)" v.rel (ppp lx) (typ g x))
                  | KRep2 c ->
                      let rp = Mg.apps (Mg.Cst "hl_rep2") [ c; lx ] in
                      (rp, if v.rel = "" then conv c "hl_rep2" "hl_chi2" "hl_chi2_rep2" rp else Printf.sprintf "(%s %s %s)" v.rel (ppp lx) (typ g x))
                  | _ -> unsupported "rel: metapred argument") in
                if arg_lit = nx then (lit, nat, KIff, pf0)
                else begin
                  (* rewrite the argument on the native side only *)
                  let head = (match v.nat with Some t -> t | None -> Mg.Var (match List.assoc_opt k g.nctx.E.vars with Some (_, _, n) -> n | None -> k)) in
                  let ctx = L.mg_iff (L.mg_eq lit L.one) (Mg.App (head, Mg.Var "hl__u")) in
                  (lit, nat, KIff, leibniz (if px = "" then refl else px) (pp ctx) pf0)
                end
            | KPW2 (a, b), [ x; y ] ->
                let lx, nx, kx, px = rel g x (Some (E.VSet a)) and ly, ny, ky, py = rel g y (Some (E.VSet b)) in
                if kx <> KEq || ky <> KEq then unsupported "rel: metafun2 argument";
                let head = if v.rel = "" then v.lit else (match v.nat with Some t -> t | None -> Mg.Var (match List.assoc_opt k g.nctx.E.vars with Some (_, _, n) -> n | None -> k)) in
                let pf0 = if v.rel = "" then refl else Printf.sprintf "(%s %s %s %s %s)" v.rel (ppp lx) (typ g x) (ppp ly) (typ g y) in
                let pf1 = if lx = nx then pf0 else leibniz (if px = "" then refl else px) (pp (L.mg_eq lit (Mg.apps head [ Mg.Var "hl__u"; ly ]))) pf0 in
                let pf2 = if ly = ny then pf1 else leibniz (if py = "" then refl else py) (pp (L.mg_eq lit (Mg.apps head [ nx; Mg.Var "hl__u" ]))) pf1 in
                (lit, nat, KEq, pf2)
            | KPWP2 (a, b), [ x; y ] ->
                let lx, nx, kx, px = rel g x (Some (E.VSet a)) and ly, ny, ky, py = rel g y (Some (E.VSet b)) in
                if kx <> KEq || ky <> KEq then unsupported "rel: metapred2 argument";
                let pf0 = if v.rel = "" then Printf.sprintf "(iff_refl %s)" (ppp (L.mg_eq lit L.one)) else Printf.sprintf "(%s %s %s %s %s)" v.rel (ppp lx) (typ g x) (ppp ly) (typ g y) in
                let head = (match v.nat with Some t -> t | None -> Mg.Var (match List.assoc_opt k g.nctx.E.vars with Some (_, _, n) -> n | None -> k)) in
                let pf1 = if lx = nx then pf0 else leibniz (if px = "" then refl else px) (pp (L.mg_iff (L.mg_eq lit L.one) (Mg.apps head [ Mg.Var "hl__u"; ly ]))) pf0 in
                let pf2 = if ly = ny then pf1 else leibniz (if py = "" then refl else py) (pp (L.mg_iff (L.mg_eq lit L.one) (Mg.apps head [ nx; Mg.Var "hl__u" ]))) pf1 in
                (lit, nat, KIff, pf2)
            | KRep a, [ x ] ->
                (* subset variable applied: native x :e s; literal S x = 1 *)
                let lx, nx, kx, _ = rel g x (Some (E.VSet a)) in
                if kx <> KEq || lx <> nx then unsupported "rel: subset applied to non-identical argument";
                (* hl_rep_iff a S x Hx : S x = 1 <-> x :e hl_rep a S ; then rewrite hl_rep a S -> nat subset *)
                let repS = Mg.apps (Mg.Cst "hl_rep") [ a; v.lit ] in
                let pf0 = Printf.sprintf "(hl_rep_iff %s %s %s %s)" (ppp a) (ppp v.lit) (ppp lx) (typ g x) in
                let prop0 = L.mg_iff (L.mg_eq (Mg.App (v.lit, lx)) L.one) (L.mg_in lx repS) in
                let natS = (match nat with Mg.App (Mg.App (Mg.Cst "In", _), s) -> s | _ -> unsupported "rel: subset application shape") in
                let _, pf = if v.rel = "" then (prop0, pf0) else rewrite_in v.rel repS natS prop0 pf0 in
                (lit, nat, KIff, pf)
            | KRep2 a, [ x ] ->
                (* set-of-subsets variable applied to a subset: S x = 1 <-> hl_rep a x :e hl_rep2 a S *)
                let lx, nx, kx, px = rel g x (Some (E.VSubset a)) in
                (match kx with KRep _ -> () | _ -> unsupported "rel: nested subset argument relation");
                let repS = Mg.apps (Mg.Cst "hl_rep2") [ a; v.lit ] and repx = Mg.apps (Mg.Cst "hl_rep") [ a; lx ] in
                let pf0 = Printf.sprintf "(iff_trans (%s = 1) (%s :e hl_rep (2 :^: %s) %s) (%s :e %s) (hl_rep_iff (2 :^: %s) %s %s %s) (mem_rep2_iff %s %s %s %s))"
                  (pp (Mg.App (v.lit, lx))) (pp lx) (pp a) (ppp v.lit) (pp repx) (pp repS) (pp a) (ppp v.lit) (ppp lx) (typ g x) (ppp a) (ppp lx) (typ g x) (ppp v.lit) in
                let prop0 = L.mg_iff (L.mg_eq (Mg.App (v.lit, lx)) L.one) (L.mg_in repx repS) in
                let prop1, pf1 = if repx = nx then (prop0, pf0) else rewrite_in (if px = "" then refl else px) repx nx prop0 pf0 in
                let natS = (match nat with Mg.App (Mg.App (Mg.Cst "In", _), s) -> s | _ -> unsupported "rel: nested subset application shape") in
                let _, pf = if v.rel = "" then (prop1, pf1) else rewrite_in v.rel repS natS prop1 pf1 in
                (lit, nat, KIff, pf)
            | KRepFun (kc, a), [ x ] ->
                (* a function into subsets applied: hl_rep a (f x) = g x from the pointwise hypothesis *)
                let lx, nx, kx, px = rel g x (Some (E.VSet kc)) in
                if kx <> KEq then unsupported "rel: function-into-subsets argument relation";
                let head = (match v.nat with Some t -> t | None -> Mg.Var (match List.assoc_opt k g.nctx.E.vars with Some (_, _, n) -> n | None -> k)) in
                let pf0 = Printf.sprintf "(%s %s %s)" v.rel (ppp lx) (typ g x) in
                let pf = if lx = nx then pf0 else leibniz (if px = "" then refl else px) (pp (L.mg_eq (Mg.apps (Mg.Cst "hl_rep") [ a; lit ]) (Mg.App (head, Mg.Var "hl__u")))) pf0 in
                (lit, nat, KRep a, pf)
            | KPWP2 (a, b), [ x ] when (match nview with E.VMetaPred [ _ ] -> true | _ -> false) ->
                (* a binary meta-predicate variable applied to one argument, used as a unary one *)
                let lx, nx, kx, _ = rel g x (Some (E.VSet a)) in
                if kx <> KEq || lx <> nx then unsupported "rel: partial metapred2 argument";
                let pw = if v.rel = "" then Printf.sprintf "(fun hl__y Hhl__y => (iff_refl (%s hl__y = 1)))" (ppp lit)
                  else Printf.sprintf "(fun hl__y Hhl__y => (%s %s %s hl__y Hhl__y))" v.rel (ppp lx) (typ g x) in
                (lit, nat, KPWP b, pw)
            | KPW2 (a, b), [ x ] when (match nview with E.VMetaFun ([ _ ], _) -> true | _ -> false) ->
                let lx, nx, kx, _ = rel g x (Some (E.VSet a)) in
                if kx <> KEq || lx <> nx then unsupported "rel: partial metafun2 argument";
                let pw = if v.rel = "" then Printf.sprintf "(fun hl__y Hhl__y => %s)" refl
                  else Printf.sprintf "(fun hl__y Hhl__y => (%s %s %s hl__y Hhl__y))" v.rel (ppp lx) (typ g x) in
                (lit, nat, KPW b, pw)
            | _ -> unsupported "rel: variable application with this view/arity")
       | Const (c, cty), _ ->
           (match c with
            | "T" | "F" | "~" | "/\\" | "\\/" | "==>" | "=" | "!" | "?" | "COND" when L.is_logical t ->
                (* a formula used as data: lit = if LP then 1 else 0.  In a prop position the relation is
                   `lit = 1 <-> NP`; in a set position the native side is `if NP then 1 else 0` *)
                let lp = ltext g t and np = ntext g t in
                let fwd = bridge g Fwd t and bwd = bridge g Bwd t in
                let iff = Printf.sprintf "(iffI (%s) (%s) %s %s)" lp np fwd bwd in
                (match nview with
                 | E.VProp ->
                     (lit, nat, KIff, Printf.sprintf "(iff_trans ((if %s then 1 else 0) = 1) (%s) (%s) (If_1_iff (%s)) %s)" lp lp np lp iff)
                 | E.VSet _ ->
                     (match nat with
                      | Mg.If (npp, Mg.Num 1, Mg.Num 0) when npp = nprop g t ->
                          (lit, nat, KEq, Printf.sprintf "(if_prop_cong (%s) (%s) 1 0 %s)" lp np iff)
                      | _ -> unsupported "rel: formula as data (native %s)" (pp nat))
                 | _ -> unsupported "rel: formula as data (view %s)" (E.string_of_view nview))
            | "GSPEC" when (match E.dest_gspec t with Some (_, [ _; _ ], _, _) -> true | _ -> false) ->
                (* a comprehension with two pattern variables {F x y | P x y}: native \/_ x :e A, {F x y | y :e B, P x y} *)
                let _, xs, p, body = Option.get (E.dest_gspec t) in
                let (x, xty), (y, yty) = (match xs with [ a; b ] -> (a, b) | _ -> assert false) in
                let nx = E.fresh g.nctx x in
                let kx = x ^ "\000" ^ nx ^ "#" ^ string_of_int g.counter in
                g.counter <- g.counter + 1;
                let ny = E.fresh g.nctx y in
                let ky = y ^ "\000" ^ ny ^ "#" ^ string_of_int g.counter in
                g.counter <- g.counter + 1;
                let open2 tm = open_with (Const ("T", bool_ty)) (open_with (Free (kx, xty)) (open_with (Free (ky, yty)) tm)) in
                let p' = open2 p and body' = open2 body in
                let ca = L.carrier g.lctx xty and cb2 = L.carrier g.lctx yty in
                let body_ty = type_of [] body' in
                let cb = L.carrier g.lctx body_ty in
                let reg (k, ty, n, c) =
                  g.nctx.E.vars <- (k, (ty, E.VSet c, n)) :: g.nctx.E.vars;
                  g.lctx.L.vars <- (k, Mg.Var n) :: g.lctx.L.vars; g.lctx.L.used <- n :: g.lctx.L.used;
                  g.vars <- (k, { vty = ty; view = E.VSet c; lit = Mg.Var n; nat = None; mem = "H" ^ n; rel = ""; kind = KEq; hyp = "" }) :: g.vars in
                reg (kx, xty, nx, ca); reg (ky, yty, ny, cb2);
                let cleanup () = List.iter (fun (k, n) ->
                  g.nctx.E.vars <- List.remove_assoc k g.nctx.E.vars; E.release g.nctx n;
                  g.lctx.L.vars <- List.remove_assoc k g.lctx.L.vars; g.lctx.L.used <- List.filter (( <> ) n) g.lctx.L.used;
                  g.vars <- List.remove_assoc k g.vars) [ (kx, nx); (ky, ny) ] in
                let result = (try
                  let lp = if L.is_logical p' then Mg.If (lprop g p', L.one, L.zero) else lterm g p' in
                  let lt = lterm g body' in
                  let np = nprop g p' in
                  let nt = reduce_tuples (Mg.normalize (Mg.subst (nat_subst g) (E.elab g.nctx body' (E.data_view g.nctx body_ty)))) in
                  let hx = "H" ^ nx and hy = "H" ^ ny in
                  let q_lam = Printf.sprintf "(fun %s %s => %s)" nx ny (pp lp) and f_lam = Printf.sprintf "(fun %s %s => %s)" nx ny (pp lt) in
                  let hq = Printf.sprintf "(fun %s %s %s %s => %s)" nx hx ny hy (if L.is_logical p' then Printf.sprintf "(If_in_2 %s)" (ppp (lprop g p')) else typ g p') in
                  let generic = Printf.sprintf "(hl_gspec_generic2 %s %s %s %s %s %s)" (ppp ca) (ppp cb2) (ppp cb) q_lam f_lam hq in
                  let mid = Mg.Sep ("v", cb, Mg.ExIn (nx, ca, Mg.ExIn (ny, cb2, L.mg_and (L.mg_eq lp L.one) (L.mg_eq (Mg.Var "v") lt)))) in
                  let iff_p =
                    if L.is_logical p' then
                      Printf.sprintf "(iff_trans (%s = 1) %s %s (If_1_iff %s) (iffI %s %s %s %s))" (ppp lp) (ppp (lprop g p')) (ppp np) (ppp (lprop g p')) (ppp (lprop g p')) (ppp np) (bridge g Fwd p') (bridge g Bwd p')
                    else (let _, _, kp, pfp = rel g p' (Some E.VProp) in if kp <> KIff then unsupported "gspec predicate relation"; pfp) in
                  let lt2, nt2, kt, pt = rel g body' (Some (E.VSet cb)) in
                  if kt <> KEq then unsupported "gspec body relation";
                  if lt2 <> lt || nt2 <> nt then unsupported "gspec body texts";
                  let pt = if pt = "" then refl else pt in
                  (match nat with
                   | Mg.FamUnion (_, a, Mg.ReplSep (_, b, _, _)) when a = ca && b = cb2 -> ()
                   | _ -> unsupported "gspec pair pattern: native %s is not a family union" (pp nat));
                  let hf = Printf.sprintf "(fun %s %s %s %s => %s)" nx hx ny hy (typ g body') in
                  let hff = Printf.sprintf "(fun %s %s %s %s => %s)" nx hx ny hy pt in
                  let hp = Printf.sprintf "(fun %s %s %s %s => %s)" nx hx ny hy iff_p in
                  let f'_lam = Printf.sprintf "(fun %s %s => %s)" nx ny (pp nt) and p_lam = Printf.sprintf "(fun %s %s => %s)" nx ny (pp np) in
                  let pf = Printf.sprintf "(eq_trans_i (hl_rep %s %s) %s %s %s (gspec_famunion_form %s %s %s %s %s %s %s %s %s %s))" (ppp cb) (ppp lit) (ppp mid) (ppp nat) generic (ppp ca) (ppp cb2) (ppp cb) q_lam f_lam f'_lam p_lam hf hff hp in
                  (lit, nat, KRep cb, pf)
                  with e -> cleanup (); raise e) in
                cleanup (); result
            | "GSPEC" when (match E.dest_gspec t with Some (_, [ _ ], _, _) -> true | _ -> false) ->
                let _, xs, p, body = Option.get (E.dest_gspec t) in
                let x, xty = List.hd xs in
                let n = E.fresh g.nctx x in
                let key = x ^ "\000" ^ n ^ "#" ^ string_of_int g.counter in
                g.counter <- g.counter + 1;
                let open1 tm = open_with (Const ("T", bool_ty)) (open_with (Free (key, xty)) tm) in
                let p' = open1 p and body' = open1 body in
                let ca = L.carrier g.lctx xty in
                let body_ty = type_of [] body' in
                let cb = L.carrier g.lctx body_ty in
                g.nctx.E.vars <- (key, (xty, E.VSet ca, n)) :: g.nctx.E.vars;
                g.lctx.L.vars <- (key, Mg.Var n) :: g.lctx.L.vars; g.lctx.L.used <- n :: g.lctx.L.used;
                g.vars <- (key, { vty = xty; view = E.VSet ca; lit = Mg.Var n; nat = None; mem = "H" ^ n; rel = ""; kind = KEq; hyp = "" }) :: g.vars;
                let cleanup () =
                  g.nctx.E.vars <- List.remove_assoc key g.nctx.E.vars; E.release g.nctx n;
                  g.lctx.L.vars <- List.remove_assoc key g.lctx.L.vars; g.lctx.L.used <- List.filter (( <> ) n) g.lctx.L.used;
                  g.vars <- List.remove_assoc key g.vars in
                let result = (try
                  let lp = if L.is_logical p' then Mg.If (lprop g p', L.one, L.zero) else lterm g p' in
                  let lt = lterm g body' in
                  let np = nprop g p' in
                  let nt = Mg.normalize (Mg.subst (nat_subst g) (E.elab g.nctx body' (E.data_view g.nctx body_ty))) in
                  let hn = "H" ^ n in
                  let q_lam = Printf.sprintf "(fun %s => %s)" n (pp lp) and f_lam = Printf.sprintf "(fun %s => %s)" n (pp lt) in
                  let hq = Printf.sprintf "(fun %s %s => %s)" n hn (if L.is_logical p' then Printf.sprintf "(If_in_2 %s)" (ppp (lprop g p')) else typ g p') in
                  let generic = Printf.sprintf "(hl_gspec_generic %s %s %s %s %s)" (ppp ca) (ppp cb) q_lam f_lam hq in
                  let mid = Mg.Sep ("v", cb, Mg.ExIn (n, ca, L.mg_and (L.mg_eq lp L.one) (L.mg_eq (Mg.Var "v") lt))) in
                  (* iff between q x = 1 and the native predicate *)
                  let iff_p () =
                    if L.is_logical p' then
                      Printf.sprintf "(iff_trans (%s = 1) %s %s (If_1_iff %s) (iffI %s %s %s %s))" (ppp lp) (ppp (lprop g p')) (ppp np) (ppp (lprop g p')) (ppp (lprop g p')) (ppp np) (bridge g Fwd p') (bridge g Bwd p')
                    else (let _, _, kp, pfp = rel g p' (Some E.VProp) in if kp <> KIff then unsupported "gspec predicate relation"; pfp) in
                  let eq_t () = (let lt2, nt2, kt, pt = rel g body' (Some (E.VSet cb)) in if kt <> KEq then unsupported "gspec body relation"; if lt2 <> lt || nt2 <> nt then unsupported "gspec body texts"; if pt = "" then refl else pt) in
                  let hf = Printf.sprintf "(fun %s %s => %s)" n hn (typ g body') in
                  (match nat with
                   | Mg.Sep (_, _, _) when lt = Mg.Var n && cb = ca ->
                       let native_pred = Printf.sprintf "(fun %s => %s)" n (pp np) in
                       let pf = Printf.sprintf "(eq_trans_i (hl_rep %s %s) %s %s %s (eq_trans_i %s %s %s (gspec_sep_form %s %s) (Sep_ext_iff %s (fun %s => %s = 1) %s (fun %s %s => %s))))"
                                  (ppp cb) (ppp lit) (ppp mid) (ppp nat) generic (ppp mid) (ppp (Mg.Sep (n, ca, L.mg_eq lp L.one))) (ppp nat) (ppp ca) q_lam (ppp ca) n (ppp lp) native_pred n hn (iff_p ()) in
                       (lit, nat, KRep cb, pf)
                   | Mg.Repl (_, _, _) when (match p' with Const ("T", _) -> true | _ -> false) ->
                       let pf = Printf.sprintf "(eq_trans_i (hl_rep %s %s) %s %s %s (eq_trans_i %s %s %s (gspec_repl_form %s %s %s %s) (Repl_ext_pw2 %s %s (fun %s => %s) (fun %s %s => %s))))"
                                  (ppp cb) (ppp lit) (ppp mid) (ppp nat) generic (ppp mid) (ppp (Mg.Repl (n, ca, lt))) (ppp nat) (ppp ca) (ppp cb) f_lam hf (ppp ca) f_lam n (pp nt) n hn (eq_t ()) in
                       (lit, nat, KRep cb, pf)
                   | Mg.ReplSep (_, _, _, _) ->
                       let pf = Printf.sprintf "(eq_trans_i (hl_rep %s %s) %s %s %s (eq_trans_i %s %s %s (gspec_replsep_form %s %s %s %s %s) (ReplSep_ext %s (fun %s => %s = 1) (fun %s => %s) %s (fun %s => %s) (fun %s %s => %s) (fun %s %s => %s))))"
                                  (ppp cb) (ppp lit) (ppp mid) (ppp nat) generic (ppp mid) (ppp (Mg.ReplSep (n, ca, L.mg_eq lp L.one, lt))) (ppp nat) (ppp ca) (ppp cb) q_lam f_lam hf (ppp ca) n (ppp lp) n (pp np) f_lam n (pp nt) n hn (iff_p ()) n hn (eq_t ()) in
                       (lit, nat, KRep cb, pf)
                   | _ -> unsupported "gspec native form %s" (pp nat))
                  with e -> cleanup (); raise e) in
                cleanup (); result
            | "NUMERAL" when dest_numeral t <> None ->
                let v = Option.get (dest_numeral t) in
                if v > 512 then unsupported "rel: numeral %d too large" v;
                (* lit = hl_NUMERAL (bits); nat = v; proof by evaluating the bits with hl_BIT0_0 / hl_BIT0_S / hl_BIT1_S *)
                let bits = List.hd args in
                let rec num_omega k = if k = 0 then "(nat_p_omega 0 nat_0)" else Printf.sprintf "(nat_p_omega %d (nat_ordsucc %d (omega_nat_p %d %s)))" k (k - 1) (k - 1) (num_omega (k - 1)) in
                let numv k = Mg.Num k in
                (* hl_BIT0 (Num w) = Num (2w) *)
                let rec bit0_num w =
                  if w = 0 then "hl_BIT0_0"
                  else Printf.sprintf "(eq_trans_i (hl_BIT0 %d) (ordsucc (ordsucc (hl_BIT0 %d))) %d (hl_BIT0_S %d %s) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 %d) %d %s))"
                         w (w - 1) (2 * w) (w - 1) (num_omega (w - 1)) (w - 1) (2 * (w - 1)) (bit0_num (w - 1)) in
                let rec pf_bits (b : tm) : Mg.tm * int * string =
                  (match b with
                   | Const ("_0", _) -> (Mg.Cst "hl_zero", 0, "hl_zero_compat")
                   | App (Const ("BIT0", _), b') ->
                       let lb, w, pb = pf_bits b' in
                       let lit = Mg.App (Mg.Cst "hl_BIT0", lb) in
                       (lit, 2 * w, Printf.sprintf "(eq_trans_i %s (hl_BIT0 %d) %d (f_equal (fun x => hl_BIT0 x) %s %d %s) %s)" (ppp lit) w (2 * w) (ppp lb) w pb (bit0_num w))
                   | App (Const ("BIT1", _), b') ->
                       let lb, w, pb = pf_bits b' in
                       let lit = Mg.App (Mg.Cst "hl_BIT1", lb) in
                       let mem = Printf.sprintf "((eq_sym_i %s %d %s) (fun hl__u hl__v => hl__u :e omega) %s)" (ppp lb) w pb (num_omega w) in
                       (lit, 2 * w + 1,
                        Printf.sprintf "(eq_trans_i %s (ordsucc (hl_BIT0 %s)) %d (hl_BIT1_S %s %s) (f_equal (fun x => ordsucc x) (hl_BIT0 %s) %d (eq_trans_i (hl_BIT0 %s) (hl_BIT0 %d) %d (f_equal (fun x => hl_BIT0 x) %s %d %s) %s)))"
                          (ppp lit) (ppp lb) (2 * w + 1) (ppp lb) mem (ppp lb) (2 * w) (ppp lb) w (2 * w) (ppp lb) w pb (bit0_num w))
                   | _ -> unsupported "rel: numeral shape") in
                let lb, w, pb = pf_bits bits in
                if w <> v then unsupported "rel: numeral value mismatch";
                let mem = Printf.sprintf "((eq_sym_i %s %d %s) (fun hl__u hl__v => hl__u :e omega) %s)" (ppp lb) w pb (num_omega w) in
                let pf = Printf.sprintf "(eq_trans_i %s %s %d (hl_NUMERAL_compat %s %s) %s)" (ppp lit) (ppp lb) v (ppp lb) mem pb in
                ignore numv;
                if nat <> Mg.Num v then unsupported "rel: numeral native %s" (pp nat);
                (lit, nat, KEq, pf)
            | "COND" when List.length args = 3 && (match nview with E.VSubset _ -> true | _ -> false) ->
                (* if c then a else b at a subset type, viewed as a subset: hl_rep of the conditional is
                   the conditional of the representations (hl_COND_if, hl_rep_if) *)
                let ty = type_of [] t in
                let ca = L.carrier g.lctx ty in
                let ra = (match nview with E.VSubset ra -> ra | _ -> assert false) in
                let c0 = List.nth args 0 and a = List.nth args 1 and b = List.nth args 2 in
                let lc, nc, kc, pc = rel g c0 (Some E.VProp) in
                if kc <> KIff then unsupported "rel: conditional condition";
                let la, na, ka, pa = rel g a (Some nview) and lb, nb, kb, pb = rel g b (Some nview) in
                (match ka, kb with KRep _, KRep _ -> () | _ -> unsupported "rel: subset conditional branches");
                let pf0 = Printf.sprintf "(hl_COND_if %s %s %s %s %s %s %s %s %s)" (ppp ca) (ppp lc) (typ g c0) (ppp nc) pc (ppp la) (typ g a) (ppp lb) (typ g b) in
                (* hl_rep ra lit = hl_rep ra (if nc then la else lb) = if nc then hl_rep ra la else hl_rep ra lb *)
                let rep x = Mg.apps (Mg.Cst "hl_rep") [ ra; x ] in
                let e1 = L.mg_eq (rep lit) (rep (Mg.If (nc, la, lb))) in
                let pf1 = Printf.sprintf "(f_equal (fun hl__w => hl_rep %s hl__w) %s %s %s)" (ppp ra) (ppp lit) (ppp (Mg.If (nc, la, lb))) pf0 in
                let e2 = L.mg_eq (rep lit) (Mg.If (nc, rep la, rep lb)) in
                let pf2 = Printf.sprintf "(eq_trans_i %s %s %s %s (hl_rep_if %s %s %s %s))" (ppp (rep lit)) (ppp (rep (Mg.If (nc, la, lb)))) (ppp (Mg.If (nc, rep la, rep lb))) pf1 (ppp ra) (ppp nc) (ppp la) (ppp lb) in
                ignore e1;
                let prop3, pf3 = (let ctx = L.mg_eq (rep lit) (Mg.If (nc, Mg.Var "hl__u", rep lb)) in (L.mg_eq (rep lit) (Mg.If (nc, na, rep lb)), leibniz pa (pp ctx) pf2)) in
                let prop4, pf4 = (let ctx = L.mg_eq (rep lit) (Mg.If (nc, na, Mg.Var "hl__u")) in (L.mg_eq (rep lit) (Mg.If (nc, na, nb)), leibniz pb (pp ctx) pf3)) in
                ignore e2; ignore prop3;
                (match prop4 with
                 | Mg.App (Mg.App (Mg.Cst "eq", _), r) when r <> nat -> unsupported "rel: subset conditional derived %s differs from %s" (pp r) (pp nat)
                 | _ -> ());
                (lit, nat, KRep ra, pf4)
            | "COND" when List.length args = 3 ->
                (* if c then a else b at a data type: hl_COND_if + argument rewrites *)
                let ty = type_of [] t in
                let ca = L.carrier g.lctx ty in
                let c0 = List.nth args 0 and a = List.nth args 1 and b = List.nth args 2 in
                let lc, nc, kc, pc = rel g c0 (Some E.VProp) in
                if kc <> KIff then unsupported "rel: conditional condition";
                (* the branches are related under the condition / its negation (side conditions may use them) *)
                let saved = g.hyps in
                let hc = Printf.sprintf "H__c%d" g.counter in
                g.counter <- g.counter + 1;
                g.hyps <- (nc, hc) :: saved;
                let la, na, ka, pa = (try rel g a (Some (E.VSet ca)) with e -> g.hyps <- saved; raise e) in
                g.hyps <- (L.mg_not nc, hc) :: saved;
                let lb, nb, kb, pb = (try rel g b (Some (E.VSet ca)) with e -> g.hyps <- saved; raise e) in
                g.hyps <- saved;
                if ka <> KEq || kb <> KEq then unsupported "rel: conditional branches";
                let pa = if pa = "" then refl else pa and pb = if pb = "" then refl else pb in
                let pf = Printf.sprintf "(hl_COND_if_dep %s %s %s %s %s %s %s %s %s %s %s (fun %s : %s => %s) (fun %s : ~ %s => %s))" (ppp ca) (ppp lc) (typ g c0) (ppp nc) pc (ppp la) (typ g a) (ppp lb) (typ g b) (ppp na) (ppp nb) hc (ppp nc) pa hc (ppp nc) pb in
                let derived = Mg.If (nc, na, nb) in
                if not (alpha_eq derived nat) then unsupported "rel: conditional derived %s differs from %s" (pp derived) (pp nat);
                (lit, nat, KEq, pf)
            | "o" when (match args, nview with [ _; _ ], (E.VMetaFun ([ _ ], _) | E.VMetaPred [ _ ]) -> true | _ -> false) ->
                (* composition as a meta function/predicate: relate the lambda \x. f (g x) and go back
                   to the literal hl_o with pw_o_pred / pw_o_fun *)
                let f, gg = (match args with [ f; gg ] -> (f, gg) | _ -> assert false) in
                let dom, _ = dest_fun_ty (type_of [] gg) in
                let t' = Lam ("x", dom, App (Hol.lift 1 0 f, App (Hol.lift 1 0 gg, Bound 0))) in
                let _, _, k', pf' = rel g t' (Some nview) in
                let cs = const_carriers g "o" cty in
                let carr = String.concat " " (List.map (fun (c, _) -> ppp c) cs) in
                let typs = String.concat " " (List.map (fun a -> Printf.sprintf "%s %s" (ppp (lterm g a)) (typ g a)) [ f; gg ]) in
                let rx = nat_of_lit g.lctx dom (Mg.Var "hl__x") in
                let m = if rx = Mg.Var "hl__x" then ppp nat else Printf.sprintf "(fun hl__x:set => %s %s)" (ppp nat) (ppp rx) in
                (match k' with
                 | KPWP _ -> (lit, nat, k', Printf.sprintf "(pw_o_pred %s %s %s %s)" carr typs m pf')
                 | KPW _ -> (lit, nat, k', Printf.sprintf "(pw_o_fun %s %s %s %s)" carr typs m pf')
                 | _ -> unsupported "rel: composition relation")
            | "@" when (match args, nview with [ Lam _ ], E.VSet _ -> true | _ -> false) ->
                (* the chosen object: hl_select A F = choose_in A (fun x => F x = 1) = choose_in A N pointwise *)
                let p = List.hd args in
                let ca = (match nview with E.VSet ca -> ca | _ -> assert false) in
                let lp, np, kp, pw = rel g p (Some (E.VMetaPred [ ca ])) in
                (match kp with KPWP _ -> () | _ -> unsupported "rel: choice body relation");
                let mid = Mg.App (Mg.App (Mg.Cst "choose_in", ca), Mg.Lam ("hl__x", Mg.Set, L.mg_eq (Mg.App (lp, Mg.Var "hl__x")) L.one)) in
                let pf = Printf.sprintf "(eq_trans_i %s %s %s (hl_select_eq %s %s %s) (choose_in_ext %s (fun hl__x:set => %s hl__x = 1) %s %s))"
                  (ppp lit) (ppp mid) (ppp nat) (ppp ca) (ppp lp) (typ g p) (ppp ca) (ppp lp) (ppp np) pw in
                (lit, nat, KEq, pf)
            | _ ->
                (match mapped_entry g c cty with
                 | Some (e, _) when List.length args = List.length e.R.c_args -> rel_mapped g e c cty args lit nat nview
                 | Some (e, _) when List.length args + 2 = List.length e.R.c_args && (match nview with E.VMetaFun ([ _; _ ], _) | E.VMetaPred [ _; _ ] -> true | _ -> false) ->
                     (* two missing arguments: eta-expand twice and relate the arity-2 lambda *)
                     let rem_ty = List.fold_left (fun ty _ -> snd (dest_fun_ty ty)) cty args in
                     let d1, ty2 = dest_fun_ty rem_ty in
                     let d2, _ = dest_fun_ty ty2 in
                     let t' = Lam ("x", d1, Lam ("y", d2, App (App (Hol.lift 2 0 t, Bound 1), Bound 0))) in
                     let _, _, k', pf' = rel g t' (Some nview) in
                     let c1 = L.carrier g.lctx d1 and c2 = L.carrier g.lctx d2 in
                     let r1 = nat_of_lit g.lctx d1 (Mg.Var "hl__x") and r2 = nat_of_lit g.lctx d2 (Mg.Var "hl__y") in
                     let m = if r1 = Mg.Var "hl__x" && r2 = Mg.Var "hl__y" then ppp nat else Printf.sprintf "(fun hl__x:set => fun hl__y:set => %s %s %s)" (ppp nat) (ppp r1) (ppp r2) in
                     (match k' with
                      | KPWP2 _ -> (lit, nat, k', Printf.sprintf "(pw_eta_pred2 %s %s %s %s %s)" (ppp c1) (ppp c2) (ppp lit) m pf')
                      | KPW2 _ -> (lit, nat, k', Printf.sprintf "(pw_eta_fun2 %s %s %s %s %s)" (ppp c1) (ppp c2) (ppp lit) m pf')
                      | _ -> unsupported "rel: partial application (arity 2) shape")
                 | Some (e, _) when List.length args = List.length e.R.c_args + 1 && (match e.R.c_result with R.RMetaFun _ | R.RMetaPred _ -> true | _ -> false) ->
                     (* over-application of a constant with a meta-function/predicate result: relate the
                        application to the registry's arguments pointwise, then apply to the extra argument *)
                     let n = List.length e.R.c_args in
                     let base_args = List.filteri (fun i _ -> i < n) args and x = List.nth args n in
                     let t0 = List.fold_left (fun acc a -> App (acc, a)) h base_args in
                     let rem_ty = List.fold_left (fun ty _ -> snd (dest_fun_ty ty)) cty base_args in
                     let dom, cod = dest_fun_ty rem_ty in
                     let cd = L.carrier g.lctx dom in
                     let want0 = (match e.R.c_result with R.RMetaPred _ -> E.VMetaPred [ cd ] | _ -> E.VMetaFun ([ cd ], L.carrier g.lctx cod)) in
                     let l0, n0, k0, p0 = rel g t0 (Some want0) in
                     let lx, nx, kx, px = rel g x (Some (E.VSet cd)) in
                     if kx <> KEq then unsupported "rel: over-application argument relation";
                     ignore l0;
                     (match k0 with
                      | KPW _ ->
                          let pf0 = Printf.sprintf "(%s %s %s)" p0 (ppp lx) (typ g x) in
                          if lx = nx then (lit, nat, KEq, pf0)
                          else (lit, nat, KEq, leibniz (if px = "" then refl else px) (pp (L.mg_eq lit (Mg.App (n0, Mg.Var "hl__u")))) pf0)
                      | KPWP _ ->
                          let pf0 = Printf.sprintf "(%s %s %s)" p0 (ppp lx) (typ g x) in
                          if lx = nx then (lit, nat, KIff, pf0)
                          else (lit, nat, KIff, leibniz (if px = "" then refl else px) (pp (L.mg_iff (L.mg_eq lit L.one) (Mg.App (n0, Mg.Var "hl__u")))) pf0)
                      | _ -> unsupported "rel: over-application relation")
                 | Some (e, _) when List.length args < List.length e.R.c_args && (match nview with E.VMetaFun ([ _ ], _) | E.VMetaPred [ _ ] -> true | _ -> false) ->
                     (* partial application in a meta position: eta-expand and relate the lambda; the
                        literal of the original term is the unexpanded application, evaluated with beta *)
                     let rem_ty = List.fold_left (fun ty _ -> snd (dest_fun_ty ty)) cty args in
                     let dom, _ = dest_fun_ty rem_ty in
                     let t' = E.eta_expand "x" t rem_ty in
                     let l', n', k', pf' = rel g t' (Some nview) in
                     ignore n';
                     let ca = L.carrier g.lctx dom in
                     (* the native side is applied to the representation of the literal element *)
                     let rx = nat_of_lit g.lctx dom (Mg.Var "hl__x") in
                     let m = if rx = Mg.Var "hl__x" then ppp nat else Printf.sprintf "(fun hl__x:set => %s %s)" (ppp nat) (ppp rx) in
                     (match k', l' with
                      | KPWP _, Mg.LamIn _ ->
                          (* pf' : forall x :e D, (fun x :e D => lit x) x = 1 <-> M x *)
                          (lit, nat, k', Printf.sprintf "(pw_eta_pred %s %s %s %s)" (ppp ca) (ppp lit) m pf')
                      | KPW _, Mg.LamIn _ ->
                          (lit, nat, k', Printf.sprintf "(pw_eta_fun %s %s %s %s)" (ppp ca) (ppp lit) m pf')
                      | _ -> unsupported "rel: partial application shape")
                 | Some _ -> unsupported "rel: partial application of mapped constant %s (view %s, %d args)" c (E.string_of_view nview) (List.length args)
                 | None -> unsupported "rel: unmapped constant %s (view %s, %d args)" c (E.string_of_view nview) (List.length args)))
       | Lam (x, xty, body), (E.VMetaFun ([ _ ], _) | E.VMetaPred [ _ ]) ->
           (* a lambda in meta position: open the binder exactly as Elab does and relate pointwise;
              the literal side is a set-level lambda, evaluated with `beta` *)
           let c, dopt = (match nview with E.VMetaFun ([ c ], d) -> (c, Some d) | E.VMetaPred [ c ] -> (c, None) | _ -> assert false) in
           (* the literal lambda binds over the literal carrier: 2 :^: c' for a native carrier Power c' *)
           let rec lit_carrier c = (match c with Mg.App (Mg.Cst "Power", c') -> Mg.App (Mg.App (Mg.Cst "setexp", Mg.Num 2), lit_carrier c') | _ -> c) in
           let c = lit_carrier c in
           let is_pred = (dopt = None) in
           let d = (match dopt with Some d -> d | None -> Mg.Num 2) in
           let n = E.fresh g.nctx x in
           let key = x ^ "\000" ^ n ^ "#" ^ string_of_int g.counter in
           g.counter <- g.counter + 1;
           let body' = open_with (Free (key, xty)) body in
           let xview = (match E.choose_view g.nctx (key, xty) [ body' ] with
             | E.VMetaFun _ | E.VMetaPred _ -> E.data_view g.nctx xty
             | E.VProp -> E.VSet (Mg.Num 2)
             | v -> v) in
           g.nctx.E.vars <- (key, (xty, xview, n)) :: g.nctx.E.vars;
           if not (List.mem n g.lctx.L.used) then g.lctx.L.used <- n :: g.lctx.L.used;
           g.lctx.L.vars <- (key, Mg.Var n) :: g.lctx.L.vars;
           let plain = (match xview with
             | E.VSubset (Mg.App (Mg.Cst "Power", cs)) -> { vty = xty; view = xview; lit = Mg.Var n; nat = Some (Mg.apps (Mg.Cst "hl_rep2") [ cs; Mg.Var n ]); mem = "H" ^ n; rel = ""; kind = KRep2 cs; hyp = "" }
             | E.VSubset cs -> { vty = xty; view = xview; lit = Mg.Var n; nat = Some (Mg.apps (Mg.Cst "hl_rep") [ cs; Mg.Var n ]); mem = "H" ^ n; rel = ""; kind = KRep cs; hyp = "" }
             | _ -> { vty = xty; view = xview; lit = Mg.Var n; nat = None; mem = "H" ^ n; rel = ""; kind = KEq; hyp = "" }) in
           g.vars <- (key, plain) :: g.vars;
           let finish () =
             g.nctx.E.vars <- List.remove_assoc key g.nctx.E.vars;
             g.lctx.L.vars <- List.remove_assoc key g.lctx.L.vars;
             g.vars <- List.remove_assoc key g.vars;
             E.release g.nctx n; g.lctx.L.used <- List.filter (( <> ) n) g.lctx.L.used in
           let hn = "H" ^ n in
           let result = (try
             if is_pred then begin
               let lp = ltext g body' and np = ntext g body' in
               let fwd = bridge g Fwd body' and bwd = bridge g Bwd body' in
               let lbt = lterm g body' in
               let pw = (match lbt with
                 | Mg.If (_, Mg.Num 1, Mg.Num 0) ->
                     (* logical body: the literal lambda returns `if LP then 1 else 0` *)
                     let lb = Printf.sprintf "(if %s then 1 else 0)" lp in
                     Printf.sprintf "(fun %s %s => (iff_eq1_l (%s %s) %s (beta %s (fun %s:set => %s) %s %s) (%s) (iff_trans (%s = 1) (%s) (%s) (If_1_iff (%s)) (iffI (%s) (%s) %s %s))))"
                       n hn (ppp lit) n lb (ppp c) n lb n hn np lb lp np lp lp np fwd bwd
                 | _ ->
                     (* Boolean-valued term body: the literal lambda returns the term itself, LP is `term = 1` *)
                     let lb = ppp lbt in
                     Printf.sprintf "(fun %s %s => (iff_eq1_l (%s %s) %s (beta %s (fun %s:set => %s) %s %s) (%s) (iffI (%s) (%s) %s %s)))"
                       n hn (ppp lit) n lb (ppp c) n lb n hn np lp np fwd bwd) in
               (lit, nat, KPWP c, pw)
             end else begin
               match d with
               | Mg.App (Mg.Cst "Power", a) ->
                   (* a lambda into subsets: hl_rep a (lit x) = nat x from the body's representation relation *)
                   let lb, nb, kb, pb = rel g body' (Some (E.VSubset a)) in
                   (match kb with KRep _ -> () | _ -> unsupported "rel: lambda body representation relation");
                   let rep t = Mg.apps (Mg.Cst "hl_rep") [ a; t ] in
                   let step1 = Printf.sprintf "(f_equal (fun hl__w => hl_rep %s hl__w) (%s %s) %s (beta %s (fun %s:set => %s) %s %s))" (ppp a) (ppp lit) n (ppp lb) (ppp c) n (pp lb) n hn in
                   let pw = if pb = "" then Printf.sprintf "(fun %s %s => %s)" n hn step1
                     else Printf.sprintf "(fun %s %s => (eq_trans_i %s %s %s %s %s))" n hn (ppp (rep (Mg.App (lit, Mg.Var n)))) (ppp (rep lb)) (ppp nb) step1 pb in
                   (lit, nat, KRepFun (c, a), pw)
               | _ ->
                   let lb, nb, kb, pb = rel g body' (Some (E.VSet d)) in
                   if kb <> KEq then unsupported "rel: lambda body relation";
                   let pw = if pb = "" then Printf.sprintf "(fun %s %s => (beta %s (fun %s:set => %s) %s %s))" n hn (ppp c) n (pp lb) n hn
                     else Printf.sprintf "(fun %s %s => (eq_trans_i (%s %s) %s %s (beta %s (fun %s:set => %s) %s %s) %s))" n hn (ppp lit) n (ppp lb) (ppp nb) (ppp c) n (pp lb) n hn pb in
                   (lit, nat, KPW c, pw)
             end
           with e -> finish (); raise e) in
           finish (); result
       | Lam (x, xty, body), (E.VMetaFun ([ _; _ ], _) | E.VMetaPred [ _; _ ]) when args = [] && (match body with Lam _ -> true | _ -> false) ->
           (* a lambda of arity 2 in a meta position: pointwise on both arguments via lam2_beta *)
           let is_pred = (match nview with E.VMetaPred _ -> true | _ -> false) in
           let n1, body1, _, cleanup1 = open_lam g x xty body in
           let result = (try
             (match body1 with
              | Lam (y, yty, body2) ->
                  let n2, body', _, cleanup2 = open_lam g y yty body2 in
                  let c1 = L.carrier g.lctx xty and c2 = L.carrier g.lctx yty in
                  let r = (try
                    if is_pred then begin
                      let lp = ltext g body' and np = ntext g body' in
                      let fwd = bridge g Fwd body' and bwd = bridge g Bwd body' in
                      let lbt = lterm g body' in
                      let pw = (match lbt with
                        | Mg.If (_, Mg.Num 1, Mg.Num 0) ->
                            let lb = Printf.sprintf "(if %s then 1 else 0)" lp in
                            Printf.sprintf "(fun %s H%s %s H%s => (iff_eq1_l (%s %s %s) %s (lam2_beta %s %s (fun %s %s => %s) %s H%s %s H%s) (%s) (iff_trans (%s = 1) (%s) (%s) (If_1_iff (%s)) (iffI (%s) (%s) %s %s))))"
                              n1 n1 n2 n2 (ppp lit) n1 n2 lb (ppp c1) (ppp c2) n1 n2 lb n1 n1 n2 n2 np lb lp np lp lp np fwd bwd
                        | _ ->
                            let lb = ppp lbt in
                            Printf.sprintf "(fun %s H%s %s H%s => (iff_eq1_l (%s %s %s) %s (lam2_beta %s %s (fun %s %s => %s) %s H%s %s H%s) (%s) (iffI (%s) (%s) %s %s)))"
                              n1 n1 n2 n2 (ppp lit) n1 n2 lb (ppp c1) (ppp c2) n1 n2 lb n1 n1 n2 n2 np lp np fwd bwd) in
                      (lit, nat, KPWP2 (c1, c2), pw)
                    end else begin
                      let d = (match nview with E.VMetaFun (_, d) -> d | _ -> assert false) in
                      let lb, nb, kb, pb = rel g body' (Some (E.VSet d)) in
                      if kb <> KEq then unsupported "rel: lambda body relation";
                      let pw = if pb = "" then Printf.sprintf "(fun %s H%s %s H%s => (lam2_beta %s %s (fun %s %s => %s) %s H%s %s H%s))" n1 n1 n2 n2 (ppp c1) (ppp c2) n1 n2 (pp lb) n1 n1 n2 n2
                        else Printf.sprintf "(fun %s H%s %s H%s => (eq_trans_i (%s %s %s) %s %s (lam2_beta %s %s (fun %s %s => %s) %s H%s %s H%s) %s))" n1 n1 n2 n2 (ppp lit) n1 n2 (ppp lb) (ppp nb) (ppp c1) (ppp c2) n1 n2 (pp lb) n1 n1 n2 n2 pb in
                      (lit, nat, KPW2 (c1, c2), pw)
                    end
                  with e -> cleanup2 (); raise e) in
                  cleanup2 (); r
              | _ -> unsupported "rel: lambda arity")
           with e -> cleanup1 (); raise e) in
           cleanup1 (); result
       | Lam (x, xty, body), (E.VSet _ | E.VSubset _) when args = [] ->
           (* a lambda as data: a set-level function (extensionality) or a comprehension *)
           let n, body', _, cleanup = open_lam g x xty body in
           let ca = L.carrier g.lctx xty in
           let result = (try
             if type_of [] body' = bool_ty then begin
               let lp = ltext g body' and np = ntext g body' in
               let fwd = bridge g Fwd body' and bwd = bridge g Bwd body' in
               (match nat with
                | Mg.Sep _ -> (lit, nat, KRep ca, Printf.sprintf "(hl_rep_chip_sep %s (fun %s:set => %s) (fun %s:set => %s) (fun %s H%s => (iffI (%s) (%s) %s %s)))" (ppp ca) n lp n np n n lp np fwd bwd)
                | _ -> unsupported "rel: lambda as data (native %s)" (pp nat))
             end else begin
               let lb, nb, kb, pb = rel g body' (Some (E.VSet (L.carrier g.lctx (type_of [] body')))) in
               if kb <> KEq then unsupported "rel: lambda body relation";
               (lit, nat, KEq, Printf.sprintf "(lam_ext_in %s (fun %s:set => %s) (fun %s:set => %s) (fun %s H%s => %s))" (ppp ca) n (pp lb) n (pp nb) n n (if pb = "" then refl else pb))
             end
           with e -> cleanup (); raise e) in
           cleanup (); result
       | Lam (x, xty, body), E.VSet _ when List.length args = 1 ->
           (* an applied lambda: beta on the literal side, the elaborator has reduced the native side *)
           let a = List.hd args in
           let red = beta (Lam (x, xty, body)) a in
           let l2, n2, k2, p2 = rel g red (Some nview) in
           if k2 <> KEq then unsupported "rel: applied lambda relation";
           let ca = L.carrier g.lctx xty in
           (match lit with
            | Mg.App (Mg.LamIn (xn, _, lb), la) ->
                (lit, nat, KEq, Printf.sprintf "(eq_trans_i %s %s %s (beta %s (fun %s:set => %s) %s %s) %s)" (ppp lit) (ppp l2) (ppp n2) (ppp ca) xn (pp lb) (ppp la) (typ g a) (if p2 = "" then refl else p2))
            | _ -> unsupported "rel: applied lambda shape")
       | Lam (x, xty, body), E.VMetaPred [ _; d ] when args = [] && (match type_of [ xty ] body with TyApp ("fun", [ _; TyApp ("bool", []) ]) -> true | _ -> false) ->
           (* a lambda into subsets viewed as a binary predicate: lit i a = 1 <-> a :e N[body i] *)
           let n, body', _, cleanup = open_lam g x xty body in
           let r = (try
             let cl = L.carrier g.lctx xty in
             let lb, nb, kb, pb = rel g body' (Some (E.VSubset d)) in
             (match kb with KRep _ -> () | _ -> unsupported "rel: lambda into subsets body relation");
             let pb = if pb = "" then refl else pb in
             let pw = Printf.sprintf "(fun %s H%s hl__a Hhl__a => (lam_subset_pw %s %s (fun %s:set => %s) %s %s H%s hl__a Hhl__a %s))" n n (ppp cl) (ppp d) n (pp lb) (ppp nb) n n pb in
             (lit, nat, KPWP2 (cl, d), pw)
             with e -> cleanup (); raise e) in
           cleanup (); r
       | Lam _, _ ->
           let vs = (match nview with
             | E.VSet c -> "set(" ^ pp c ^ ")" | E.VSubset c -> "subset(" ^ pp c ^ ")" | E.VProp -> "prop"
             | E.VMetaFun (cs, d) -> "metafun(" ^ String.concat "," (List.map pp cs) ^ ";" ^ pp d ^ ")"
             | E.VMetaPred cs -> "metapred(" ^ String.concat "," (List.map pp cs) ^ ")") in
           unsupported "rel: lambda (view %s, %d args)" vs (List.length args)
       | _ -> unsupported "rel: head")

(* mapped constant application: use its compatibility lemma *)
and rel_mapped g (e : R.const_entry) c cty args lit nat nview =
  let tvs = L.tyvars_ordered e.R.c_scheme [] in
  (* the entry's scheme has its own type-variable names: instantiate it against the occurrence type *)
  let sub = (try L.match_ty e.R.c_scheme cty [] with _ -> unsupported "rel_mapped: scheme %s does not match %s" (string_of_ty e.R.c_scheme) (string_of_ty cty)) in
  (* a single type variable instantiated to a subset type: the nested instance (_pow lemma), whose
     carrier parameter is the inner carrier *)
  let nested = (match tvs with
    | [ a ] -> (match List.assoc_opt a sub with Some (TyApp ("fun", [ x; TyApp ("bool", []) ])) -> Some (a, x) | _ -> None)
    | _ -> None) in
  let name = (match nested with Some _ -> compat_for_nested g e | None -> compat_for g e) in
  (* carrier parameters of the compatibility lemma: one per type variable of the entry's scheme
     (a type-specialised entry has none even when the literal constant is polymorphic) *)
  let cs = (match nested with Some (_, x) -> [ (L.carrier g.lctx x, x) ] | None -> List.map (fun a -> let t = List.assoc a sub in (L.carrier g.lctx t, t)) tvs) in
  (* compat A.. HA.. l1 pf1 [f1 rel1] ... *)
  let doms, _ = strip_fun_ty cty in
  let parts = ref [ paren name ] in
  List.iter (fun (ca, _) -> parts := ppp ca :: !parts) cs;
  List.iter (fun (_, t) -> parts := nonempty_pf g t :: !parts) cs;
  (* the statement we obtain, instantiated: `?A` is the native carrier of the instance *)
  let inst = List.map (fun a -> (a, nat_carrier_of g.lctx (List.assoc a sub))) tvs in
  let tsub = ref (List.map (fun (a, ca) -> (a, ca)) inst) in
  let lsub = ref (List.map (fun a -> (a, L.carrier g.lctx (List.assoc a sub))) tvs) in   (* literal arguments, for side conditions *)
  let argtyp = ref [] in   (* literal typing proofs of set arguments: (index, (literal, proof, carrier)) *)
  let rewrites = ref [] in     (* (literal subterm, native subterm, proof) to apply to the RHS *)
  List.iteri (fun i (role, a) ->
    let aty = List.nth doms i in
    match role with
    | R.RSet ->
        let la, na, ka, pa = rel g a (Some (E.VSet (nat_carrier_of g.lctx aty))) in
        (match ka with
         | KEq ->
             parts := typ g a :: ppp la :: !parts;
             tsub := (string_of_int (i + 1), la) :: !tsub;
             lsub := (string_of_int (i + 1), la) :: !lsub;
             argtyp := (string_of_int (i + 1), (la, typ g a, L.carrier g.lctx aty)) :: !argtyp;
             if la <> na then rewrites := (la, na, pa) :: !rewrites
         | KRep ca ->
             (* a subset used as data: the native value is its representation *)
             parts := typ g a :: ppp la :: !parts;
             let repl = Mg.apps (Mg.Cst "hl_rep") [ ca; la ] in
             tsub := (string_of_int (i + 1), repl) :: !tsub;
             lsub := (string_of_int (i + 1), la) :: !lsub;
             if repl <> na then rewrites := (repl, na, (if pa = "" then refl else pa)) :: !rewrites
         | _ -> unsupported "rel_mapped: set argument relation")
    | R.RSubset ->
        let ca = (match aty with TyApp ("fun", [ d; _ ]) -> L.carrier g.lctx d | _ -> unsupported "subset role") in
        let nested_arg = (match aty with TyApp ("fun", [ TyApp ("fun", [ x; TyApp ("bool", []) ]); _ ]) -> Some (L.carrier g.lctx x) | _ -> None) in
        (match nested_arg with
         | None ->
             let la, na, ka, pa = rel g a (Some (E.VSubset ca)) in
             (match ka with KRep _ -> () | _ -> unsupported "rel_mapped: subset argument relation");
             parts := typ g a :: ppp la :: !parts;
             tsub := (string_of_int (i + 1), Mg.apps (Mg.Cst "hl_rep") [ ca; la ]) :: !tsub;
             lsub := (string_of_int (i + 1), la) :: !lsub;
             let repl = Mg.apps (Mg.Cst "hl_rep") [ ca; la ] in
             if repl <> na then rewrites := (repl, na, (if pa = "" then refl else pa)) :: !rewrites
         | Some cx ->
             let la, na, ka, pa = rel g a (Some (E.VSubset (Mg.App (Mg.Cst "Power", cx)))) in
             (match ka with KRep2 _ -> () | _ -> unsupported "rel_mapped: nested subset argument relation");
             parts := typ g a :: ppp la :: !parts;
             let repl = Mg.apps (Mg.Cst "hl_rep2") [ cx; la ] in
             tsub := (string_of_int (i + 1), repl) :: !tsub;
             lsub := (string_of_int (i + 1), la) :: !lsub;
             if repl <> na then rewrites := (repl, na, (if pa = "" then refl else pa)) :: !rewrites)
    | R.RProp ->
        let la, na, ka, pa = rel g a (Some E.VProp) in
        if ka <> KIff then unsupported "rel_mapped: prop argument relation";
        parts := paren pa :: ppp na :: typ g a :: ppp la :: !parts;
        tsub := (string_of_int (i + 1), na) :: !tsub
    | R.RMetaFun k ->
        let k = (match k with Some k -> k | None -> E.fun_arity aty) in
        if k = 1 then begin
          let d, cod = dest_fun_ty aty in
          let subset_cod = (match cod with TyApp ("fun", [ _; TyApp ("bool", []) ]) -> true | _ -> false) in
          let la, na, ka, pa = rel g a (Some (E.VMetaFun ([ L.carrier g.lctx d ], if subset_cod then nat_carrier_of g.lctx cod else L.carrier g.lctx cod))) in
          (match ka, subset_cod with KPW _, false | KRepFun _, true -> () | _ -> unsupported "rel_mapped: metafun argument relation");
          let pw = if pa = "" then Printf.sprintf "(fun x Hx => (fun q H => H))" else pa in
          let na_meta = (match na with Mg.Lam _ -> ppp na | _ -> Printf.sprintf "(fun hl__x:set => %s hl__x)" (ppp na)) in
          parts := paren pw :: na_meta :: typ g a :: ppp la :: !parts;
          tsub := (string_of_int (i + 1), na) :: !tsub
        end else if k = 2 then begin
          let d1, r1 = dest_fun_ty aty in
          let d2, cod = dest_fun_ty r1 in
          let la, na, ka, pa = rel g a (Some (E.VMetaFun ([ L.carrier g.lctx d1; L.carrier g.lctx d2 ], L.carrier g.lctx cod))) in
          (match ka with KPW2 _ -> () | _ -> unsupported "rel_mapped: metafun2 argument relation");
          let pw = if pa = "" then Printf.sprintf "(fun x Hx y Hy => (fun q H => H))" else pa in
          let na_meta = (match na with Mg.Lam _ -> ppp na | _ -> Printf.sprintf "(fun hl__x:set => fun hl__y:set => %s hl__x hl__y)" (ppp na)) in
          parts := paren pw :: na_meta :: typ g a :: ppp la :: !parts;
          tsub := (string_of_int (i + 1), na) :: !tsub
        end else unsupported "rel_mapped: metafun arity %d" k
    | R.RMetaPred k ->
        let k = (match k with Some k -> k | None -> E.fun_arity aty) in
        if k = 1 then begin
          let d, _ = dest_fun_ty aty in
          let la, na, ka, pa = rel g a (Some (E.VMetaPred [ L.carrier g.lctx d ])) in
          (match ka with KPWP _ -> () | _ -> unsupported "rel_mapped: metapred argument relation");
          let pw = if pa = "" then Printf.sprintf "(fun x Hx => iff_refl (%s x = 1))" (ppp la) else pa in
          let na_meta = (match na with Mg.Lam _ -> ppp na | _ -> Printf.sprintf "(fun hl__x:set => %s hl__x)" (ppp na)) in
          parts := paren pw :: na_meta :: typ g a :: ppp la :: !parts;
          tsub := (string_of_int (i + 1), na) :: !tsub
        end else if k = 2 then begin
          let d1, r1 = dest_fun_ty aty in
          let d2, _ = dest_fun_ty r1 in
          let la, na, ka, pa = rel g a (Some (E.VMetaPred [ L.carrier g.lctx d1; L.carrier g.lctx d2 ])) in
          (match ka with KPWP2 _ -> () | _ -> unsupported "rel_mapped: metapred2 argument relation");
          let pw = if pa = "" then Printf.sprintf "(fun x Hx y Hy => iff_refl (%s x y = 1))" (ppp la) else pa in
          let na_meta = (match na with Mg.Lam _ -> ppp na | _ -> Printf.sprintf "(fun hl__x:set => fun hl__y:set => %s hl__x hl__y)" (ppp na)) in
          parts := paren pw :: na_meta :: typ g a :: ppp la :: !parts;
          tsub := (string_of_int (i + 1), na) :: !tsub
        end else unsupported "rel_mapped: metapred arity %d" k) (List.combine e.R.c_args (List.filteri (fun i _ -> i < List.length e.R.c_args) args));
  let pf0 = paren (String.concat " " (List.rev !parts)) in
  (* side conditions: instantiate with the literal arguments, find their native form among the
     hypotheses in scope, and transport the hypothesis back to the literal form *)
  let pf0 = (match List.assoc_opt e.R.c_hol side_conditions with
    | None -> pf0
    | Some scs ->
        let lit_sub = List.mapi (fun i (_, _, _, _) -> ()) [] in ignore lit_sub;
        List.fold_left (fun pf sc_t ->
          let sc = Mg.normalize (Mg.inst !tsub (cstify (Mg.parse_template sc_t))) in
          (* native form after the pending rewrites *)
          let nat_of t = List.fold_left (fun t (l, n, _) -> replace_tm l n t) t (List.rev !rewrites) in
          let sc_nat = nat_of sc in
          (* forward transport of a literal-level proof through the pending rewrites *)
          let transport_fwd (prop, pf) = List.fold_left (fun (cur, pf) (l, n, pe) ->
            if replace_tm l n cur = cur then (cur, pf)
            else (replace_tm l n cur, Printf.sprintf "(%s (fun hl__u hl__v => %s) %s)" pe (pp (replace_tm l (Mg.Var "hl__u") cur)) pf)) (prop, pf) (List.rev !rewrites) in
          let derived () = (match List.assoc_opt sc_t side_derivations with
            | None -> None
            | Some rules ->
                (match List.assoc_opt "1" !lsub, List.assoc_opt "1" !tsub with
                 | Some la, Some s_lit ->
                     let s_nat = nat_of s_lit in
                     let ca = (match s_lit with Mg.App (Mg.App (Mg.Cst "hl_rep", ca), _) -> ca | _ -> Mg.Cst "R") in
                     (* the "typing" argument of a rule: a subset argument's `c= carrier`, a set argument's
                        membership, transported to the native term *)
                     let hsub = lazy (match s_lit, List.assoc_opt "1" !argtyp with
                       | Mg.App (Mg.App (Mg.Cst "hl_rep", _), _), _ -> snd (transport_fwd (Mg.App (Mg.App (Mg.Cst "Subq", s_lit), ca), Printf.sprintf "(hl_rep_Subq %s %s)" (ppp ca) (ppp la)))
                       | _, Some (l, tp, c) -> snd (transport_fwd (L.mg_in l c, tp))
                       | _ -> "") in
                     let find_slot alts = List.find_map (fun (tpl, wrap) ->
                       if wrap = "mem" then
                         (match List.find_map (fun (h, pf) -> match h with
                           | Mg.App (Mg.App (Mg.Cst "In", e), s) when s = s_nat -> Some (Printf.sprintf "(neq_Empty_of_mem %s %s %s)" (ppp s_nat) (ppp e) pf)
                           | _ -> None) g.hyps with
                          | Some p -> Some p
                          | None ->
                              (* structural nonemptiness: singletons and adjoined elements *)
                              (match s_nat with
                               | Mg.SetEnum [ a ] -> Some (Printf.sprintf "(neq_Empty_of_mem %s %s (SingI %s))" (ppp s_nat) (ppp a) (ppp a))
                               | Mg.App (Mg.App (Mg.Cst "SetAdjoin", x), a) -> Some (Printf.sprintf "(neq_Empty_of_mem %s %s (binunionI2 %s %s %s (SingI %s)))" (ppp s_nat) (ppp a) (ppp x) (ppp (Mg.SetEnum [ a ])) (ppp a) (ppp a))
                               | _ -> None))
                       else if wrap = "lub" || wrap = "glb" then
                         List.find_map (fun (h, pf) -> match h with
                           | Mg.App (Mg.App (Mg.Cst ("is_lub" | "is_glb" as c), s), x) when s = s_nat && ((c = "is_lub") = (wrap = "lub")) ->
                               (match nat_var_mem g x with
                                | Some (Mg.Cst ("R" | "real"), hx) -> Some (Printf.sprintf "(%s_witness %s %s %s %s)" wrap (ppp s_nat) (ppp x) hx pf)
                                | _ -> None)
                           | _ -> None) g.hyps
                       else if wrap = "var" then
                         (match nat_var_mem g s_nat with
                          | Some (c, hx) when Mg.to_string c = Mg.to_string (Mg.normalize (Mg.inst [ ("1", s_nat) ] (cstify (Mg.parse_template tpl)))) -> None
                          | Some (Mg.Cst "omega", hx) when tpl = "?1 :e omega" -> Some hx
                          | _ -> None)
                       else if tpl = "@bound_above" then Option.map (fun p -> Printf.sprintf "(bound_above_of_guarded %s %s %s)" (ppp s_nat) (Lazy.force hsub) p) (derive_bound g s_nat true)
                       else if tpl = "@bound_below" then Option.map (fun p -> Printf.sprintf "(bound_below_of_guarded %s %s %s)" (ppp s_nat) (Lazy.force hsub) p) (derive_bound g s_nat false)
                       else begin
                         let p = Mg.normalize (Mg.inst [ ("1", s_nat) ] (cstify (Mg.parse_template tpl))) in
                         match List.assoc_opt p g.hyps with
                         | None ->
                             if tpl = "finite ?1" then derive_finite g s_nat 0
                             else if tpl = "~ ?1 = seq_nil" then
                               (match s_nat with
                                | Mg.App (Mg.App (Mg.Cst "seq_cons", h), t) -> Some (Printf.sprintf "(seq_cons_neq_nil %s %s)" (ppp h) (ppp t))
                                | _ -> None)
                             else None
                         | Some h -> Some (if wrap = "" then h else Printf.sprintf "(%s %s %s %s)" wrap (ppp s_nat) (Lazy.force hsub) h)
                       end) alts in
                     List.find_map (fun (slots, lemma) ->
                       let premises = List.map find_slot slots in
                       if List.exists (fun p -> p = None) premises then None
                       else if lemma = "" then Some (Option.get (List.hd premises))
                       else Some (Printf.sprintf "(%s %s %s %s)" lemma (ppp s_nat) (Lazy.force hsub) (String.concat " " (List.map (fun p -> Option.get p) premises)))) rules
                 | _ -> None)) in
          let derived () = (match derived () with
            | Some p -> Some p
            | None -> (match sc_nat with Mg.App (Mg.Cst "finite", s) -> derive_finite g s 0 | _ -> None)) in
          (match (match List.assoc_opt sc_nat g.hyps with Some h -> Some h | None -> derived ()) with
           | None -> unsupported "side condition %s not available from hypotheses [hyps: %s]" (pp sc_nat)
                       (String.concat ", " (List.map (fun (h, _) -> pp h) g.hyps))
           | Some h ->
               (* transport h : sc_nat back to sc: reverse rewrites one by one *)
               let h' = List.fold_left (fun (cur_prop, h) (l, n, pe) ->
                 let ctx = replace_tm n (Mg.Var "hl__u") cur_prop in
                 let prop' = replace_tm n l cur_prop in
                 (prop', Printf.sprintf "((eq_sym_i %s %s %s) (fun hl__u hl__v => %s) %s)" (ppp l) (ppp n) pe (pp ctx) h)) (sc_nat, h) !rewrites in
               Printf.sprintf "(%s %s)" pf (snd h'))) pf0 scs) in
  let rhs0 = Mg.normalize (Mg.inst !tsub e.R.c_template) in
  let lhs = lit in
  let prop0 = (match e.R.c_result with
    | R.RProp -> L.mg_iff (L.mg_eq lhs L.one) rhs0
    | R.RSet -> L.mg_eq lhs rhs0
    | R.RSubset ->
        let n = List.length e.R.c_args in
        let resty = List.fold_right (fun d acc -> fun_ty d acc) (List.filteri (fun i _ -> i >= n) doms) (snd (strip_fun_ty cty)) in
        (match resty with TyApp ("fun", [ _; _ ]) -> () | _ -> unsupported "subset result");
        L.mg_eq (nat_of_lit g.lctx resty lhs) rhs0
    | R.RMetaFun _ | R.RMetaPred _ ->
        (* meta-valued result: pointwise on the next argument, named as in the elaborated lambda *)
        let n = List.length e.R.c_args in
        let resty = List.fold_right (fun d acc -> fun_ty d acc) (List.filteri (fun i _ -> i >= n) doms) (snd (strip_fun_ty cty)) in
        let d = (match resty with TyApp ("fun", [ d; _ ]) -> d | _ -> unsupported "rel_mapped: meta result type") in
        let xn = (match nat with Mg.Lam (xn, _, _) -> xn | _ -> unsupported "rel_mapped: meta result is not a lambda") in
        let body = Mg.normalize (Mg.App (rhs0, Mg.Var xn)) in
        (match e.R.c_result with
         | R.RMetaPred _ -> Mg.AllIn (xn, L.carrier g.lctx d, L.mg_iff (L.mg_eq (Mg.App (lhs, Mg.Var xn)) L.one) body)
         | _ -> Mg.AllIn (xn, L.carrier g.lctx d, L.mg_eq (Mg.App (lhs, Mg.Var xn)) body))) in
  (* apply the pending rewrites of the right-hand side *)
  let prop, pf = List.fold_left (fun (prop, pf) (l, n, pe) ->
    (* only rewrite inside the RHS: abstract occurrences in the RHS part *)
    let split_rhs prop = (match prop with
      | Mg.App (Mg.App (Mg.Cst "iff", a), b) -> (fun b' -> Mg.App (Mg.App (Mg.Cst "iff", a), b')), b
      | Mg.App (Mg.App (Mg.Cst "eq", a), b) -> (fun b' -> Mg.App (Mg.App (Mg.Cst "eq", a), b')), b
      | Mg.AllIn (x, c, Mg.App (Mg.App (Mg.Cst (("iff" | "eq") as k), a), b)) -> (fun b' -> Mg.AllIn (x, c, Mg.App (Mg.App (Mg.Cst k, a), b'))), b
      | _ -> (fun b' -> b'), prop) in
    let rebuild, b = split_rhs prop in
    let ctx = rebuild (replace_tm l (Mg.Var "hl__u") b) in
    let prop' = rebuild (replace_tm l n b) in
    (prop', leibniz pe (pp ctx) pf)) (prop0, pf0) (List.rev !rewrites) in
  (* replay the elaborator's singleton normalisation SetAdjoin Empty a = {a} on the native side *)
  let rec find_adjoin_empty t = (match t with
    | Mg.App (Mg.App (Mg.Cst "SetAdjoin", Mg.Cst "Empty"), a) -> Some (t, Mg.SetEnum [ a ], Printf.sprintf "(binunion_idl %s)" (ppp (Mg.SetEnum [ a ])))
    | Mg.App (Mg.Tuple [ a; b ], Mg.Num 0) -> Some (t, a, Printf.sprintf "(tuple_2_0_eq %s %s)" (ppp a) (ppp b))
    | Mg.App (Mg.Tuple [ a; b ], Mg.Num 1) -> Some (t, b, Printf.sprintf "(tuple_2_1_eq %s %s)" (ppp a) (ppp b))
    | Mg.App (f, x) -> (match find_adjoin_empty f with Some r -> Some r | None -> find_adjoin_empty x)
    | Mg.Sep (_, a, p) -> (match find_adjoin_empty a with Some r -> Some r | None -> find_adjoin_empty p)
    | Mg.If (c, a, b) -> (match find_adjoin_empty c with Some r -> Some r | None -> (match find_adjoin_empty a with Some r -> Some r | None -> find_adjoin_empty b))
    | _ -> None) in
  let split_rhs prop = (match prop with
    | Mg.App (Mg.App (Mg.Cst "iff", a), b) -> (fun b' -> Mg.App (Mg.App (Mg.Cst "iff", a), b')), b
    | Mg.App (Mg.App (Mg.Cst "eq", a), b) -> (fun b' -> Mg.App (Mg.App (Mg.Cst "eq", a), b')), b
    | Mg.AllIn (x, c, Mg.App (Mg.App (Mg.Cst (("iff" | "eq") as k), a), b)) -> (fun b' -> Mg.AllIn (x, c, Mg.App (Mg.App (Mg.Cst k, a), b'))), b
    | _ -> (fun b' -> b'), prop) in
  let rec normalize_singletons (prop, pf) =
    let rebuild, b = split_rhs prop in
    (match find_adjoin_empty b with
     | None -> (prop, pf)
     | Some (l, n, pe) ->
         let ctx = rebuild (replace_tm l (Mg.Var "hl__u") b) in
         let prop' = rebuild (replace_tm l n b) in
         normalize_singletons (prop', leibniz pe (pp ctx) pf)) in
  let prop, pf = normalize_singletons (prop, pf) in
  let kind = (match e.R.c_result with
    | R.RProp -> KIff | R.RSet -> KEq
    | R.RSubset -> (match nview with E.VSubset (Mg.App (Mg.Cst "Power", a)) -> KRep2 a | E.VSubset a -> KRep a | _ -> KRep (Mg.Var "?"))
    | R.RMetaFun _ -> (match prop with Mg.AllIn (_, c, _) -> KPW c | _ -> KEq)
    | R.RMetaPred _ -> (match prop with Mg.AllIn (_, c, _) -> KPWP c | _ -> KIff)) in
  (* sanity: the derived native form must be the one Elab produced *)
  let derived = (match prop with
    | Mg.App (Mg.App (Mg.Cst ("iff" | "eq"), _), b) -> b
    | Mg.AllIn (x, _, Mg.App (Mg.App (Mg.Cst ("iff" | "eq"), _), b)) -> Mg.Lam (x, (match e.R.c_result with R.RMetaPred _ -> Mg.Prop | _ -> Mg.Set), b)
    | _ -> prop) in
  if not (alpha_eq derived nat) then unsupported "rel_mapped: derived native %s differs from elaborated %s" (pp derived) (pp nat);
  (lit, nat, kind, pf)

and coerce_rel g t (lit, nat, kind, pf) (want : E.view) =
  match kind, want with
  | KEq, E.VSet _ | KIff, E.VProp | KRep _, E.VSubset _ -> (lit, nat, kind, pf)
  | KRep2 _, E.VSubset _ -> (lit, nat, kind, pf)
  | KRep a, E.VSet (Mg.App (Mg.Cst "Power", a')) when a = a' -> (lit, nat, kind, pf)   (* a subset used as data of Power A *)
  | KRep2 a, E.VSet (Mg.App (Mg.Cst "Power", Mg.App (Mg.Cst "Power", a'))) when a = a' -> (lit, nat, kind, pf)
  | KPW a, E.VMetaFun ([ _ ], _) -> (lit, nat, kind, pf)
  | KRepFun _, E.VMetaFun ([ _ ], _) -> (lit, nat, kind, pf)
  | KPWP2 (c, d), E.VMetaFun ([ c' ], Mg.App (Mg.Cst "Power", d')) when c = c' && d = d' ->
      (* a binary predicate used as a function into subsets: hl_rep d (lit i) = {a :e d | nat i a} *)
      (match nat with
       | Mg.Lam (i, _, Mg.Lam (a, _, body)) ->
           let nat' = Mg.Lam (i, Mg.Set, Mg.Sep (a, d, body)) in
           let pf' = Printf.sprintf "(rep_of_pw2 %s %s %s (fun %s %s => %s) %s)" (ppp c) (ppp d) (ppp lit) i a (pp body) pf in
           (lit, nat', KRepFun (c, d), pf')
       | _ -> unsupported "coerce_rel: binary predicate as a function into subsets (shape %s)" (pp nat))
  | KPWP a, E.VMetaPred [ _ ] -> (lit, nat, kind, pf)
  | KPW2 _, E.VMetaFun ([ _; _ ], _) -> (lit, nat, kind, pf)
  | KPWP2 _, E.VMetaPred [ _; _ ] -> (lit, nat, kind, pf)
  | KEq, E.VMetaFun ([ a ], _) ->
      (* set function value used as a meta function: nat is the same set applied *)
      let pw = if lit = nat then "" else Printf.sprintf "(eq_to_pw %s %s %s %s)" (ppp a) (ppp lit) (ppp nat) pf in
      (lit, nat, KPW a, pw)
  | KRep a, E.VMetaPred [ _ ] ->
      let pw = Printf.sprintf "(rep_to_pw %s %s %s %s %s)" (ppp a) (ppp lit) (ppp nat) (typ g t) (if pf = "" then refl else pf) in
      (lit, nat, KPWP a, pw)
  | _ -> unsupported "coerce_rel: %s" (E.string_of_view want)

(* ------------------------------------------------------------------------ *)
(* Formula bridging.                                                        *)
(* ------------------------------------------------------------------------ *)

and bridge g (dir : dir) (t : tm) : string =
  match head_and_args t with
  | Const ("T", _), [] -> "(imp_refl True)"
  | Const ("F", _), [] -> "(imp_refl False)"
  | Const ("~", _), [ a ] ->
      let la = paren (ltext g a) and na = paren (ntext g a) in
      (match dir with
       | Fwd -> Printf.sprintf "(imp_not %s %s %s)" la na (bridge g Bwd a)
       | Bwd -> Printf.sprintf "(imp_not %s %s %s)" na la (bridge g Fwd a))
  | Const ("?!", _), [ p ] ->
      (* ?!x. P x is bridged through its expansion ?x. P x /\ !y. P y ==> y = x (exactly as the
         elaborator renders it); the literal constant hl_exists_unique is related to that expansion
         by hl_exists_unique_lit *)
      let p = (match p with Lam _ -> p | _ -> let pty, _ = dest_fun_ty (type_of [] p) in E.eta_expand "x" p pty) in
      (match p with
       | Lam (x, ty, body) ->
           let py = Hol.lift 1 1 body in
           let uniq = E.mk_forall "y" ty (E.mk_imp py (E.mk_eq ty (Bound 0) (Bound 1))) in
           let expanded = E.mk_exists x ty (E.mk_conj body uniq) in
           let n = E.fresh g.nctx x in
           let key = x ^ "\000" ^ n ^ "#" ^ string_of_int g.counter in
           g.counter <- g.counter + 1;
           let body' = open_with (Free (key, ty)) body in
           if not (List.mem n g.lctx.L.used) then g.lctx.L.used <- n :: g.lctx.L.used;
           g.lctx.L.vars <- (key, Mg.Var n) :: g.lctx.L.vars;
           let cleanup () =
             g.lctx.L.vars <- List.remove_assoc key g.lctx.L.vars; E.release g.nctx n;
             g.lctx.L.used <- List.filter (( <> ) n) g.lctx.L.used in
           (* the literal body is either `if LP then 1 else 0` (logical body) or a set term of 2 *)
           let lb, lp, tb = (try (lterm g body', ltext g body', typ g body') with e -> cleanup (); raise e) in
           cleanup ();
           let ca = L.carrier g.lctx ty in
           let la = ltext g t and la' = ltext g expanded and na = ntext g t in
           let eu = (match lb with
             | Mg.If (_, Mg.Num 1, Mg.Num 0) -> Printf.sprintf "(hl_exists_unique_lit %s (fun %s => %s))" (ppp ca) n lp
             | _ -> Printf.sprintf "(hl_exists_unique_lit_fun %s (fun %s => %s) (fun %s H%s => %s))" (ppp ca) n (pp lb) n n tb) in
           let inner = bridge g dir expanded in
           (match dir with
            | Fwd -> Printf.sprintf "(imp_trans (%s) (%s) (%s) (andEL ((%s) -> (%s)) ((%s) -> (%s)) %s) %s)" la la' na la la' la' la eu inner
            | Bwd -> Printf.sprintf "(imp_trans (%s) (%s) (%s) %s (andER ((%s) -> (%s)) ((%s) -> (%s)) %s))" na la' la inner la la' la' la eu)
       | _ -> unsupported "bridge: ?!")
  | Const ("/\\", _), [ a; b ] ->
      (* the native conjuncts of a are hypotheses while bridging b (side conditions of b may use them) *)
      let la = ltext g a and na = ntext g a and lb = ltext g b and nb = ntext g b in
      let na_t = nprop g a in
      let rec conjuncts (t : Mg.tm) (h : string) acc =
        (match t with
         | Mg.App (Mg.App (Mg.Cst "and", p), q) -> conjuncts q (Printf.sprintf "(andER %s %s %s)" (ppp p) (ppp q) h) (conjuncts p (Printf.sprintf "(andEL %s %s %s)" (ppp p) (ppp q) h) acc)
         | _ -> (t, h) :: acc) in
      let saved = g.hyps in
      let hn = Printf.sprintf "H__and%d" g.counter in
      g.counter <- g.counter + 1;
      let pa = bridge g dir a in
      g.hyps <- conjuncts na_t hn g.hyps;
      let pb = (try bridge g dir b with e -> g.hyps <- saved; raise e) in
      g.hyps <- saved;
      (match dir with
       | Fwd -> Printf.sprintf "(imp_and_dep (%s) (%s) (%s) (%s) %s (fun %s : (%s) => %s))" la na lb nb pa hn na pb
       | Bwd -> Printf.sprintf "(imp_and_dep_bwd (%s) (%s) (%s) (%s) %s (fun %s : (%s) => %s))" la na lb nb pa hn na pb)
  | Const ("\\/", _), [ a; b ] ->
      imp_lemma dir "imp_or" (paren (ltext g a)) (paren (ntext g a)) (paren (ltext g b)) (paren (ntext g b)) (bridge g dir a) (bridge g dir b)
  | Const ("==>", _), [ a; b ] ->
      let la = ltext g a and na = ntext g a and lb = ltext g b and nb = ntext g b in
      let na_t = nprop g a in
      let rec conjuncts (t : Mg.tm) (h : string) acc =
        (match t with
         | Mg.App (Mg.App (Mg.Cst "and", p), q) -> conjuncts q (Printf.sprintf "(andER %s %s %s)" (ppp p) (ppp q) h) (conjuncts p (Printf.sprintf "(andEL %s %s %s)" (ppp p) (ppp q) h) acc)
         | _ -> (t, h) :: acc) in
      let saved = g.hyps in
      (* hypothesis names are unique per implication: nested premises must not shadow outer ones
         (side conditions refer to hypotheses by name) *)
      let hn = Printf.sprintf "H__hyp%d" g.counter in
      g.counter <- g.counter + 1;
      (match dir with
       | Fwd ->
           let pa = bridge g Bwd a in
           g.hyps <- conjuncts na_t hn g.hyps;
           let pb = (try bridge g Fwd b with e -> g.hyps <- saved; raise e) in
           g.hyps <- saved;
           Printf.sprintf "(fun H__L : ((%s) -> (%s)) => fun %s : (%s) => %s (H__L (%s %s)))" la lb hn na pb pa hn
       | Bwd ->
           let pa = bridge g Fwd a in
           g.hyps <- conjuncts na_t (Printf.sprintf "(%s %s)" pa hn) g.hyps;
           let pb = (try bridge g Bwd b with e -> g.hyps <- saved; raise e) in
           g.hyps <- saved;
           Printf.sprintf "(fun H__N : ((%s) -> (%s)) => fun %s : (%s) => %s (H__N (%s %s)))" na nb hn la pb pa hn)
  | Const ("=", cty), [ a; b ] ->
      let ty, _ = dest_fun_ty cty in
      if ty = bool_ty then begin
        let la = paren (ltext g a) and na = paren (ntext g a) and lb = paren (ltext g b) and nb = paren (ntext g b) in
        match dir with
        | Fwd -> Printf.sprintf "(imp_iff %s %s %s %s %s %s %s %s)" la na lb nb (bridge g Fwd a) (bridge g Bwd a) (bridge g Fwd b) (bridge g Bwd b)
        | Bwd -> Printf.sprintf "(imp_iff %s %s %s %s %s %s %s %s)" na la nb lb (bridge g Bwd a) (bridge g Fwd a) (bridge g Bwd b) (bridge g Fwd b)
      end else bridge_eq g dir ty a b
  | Const ("!", _), [ Lam (x, xty, body) ] -> bridge_binder g dir `All x xty body
  | Const ("?", _), [ Lam (x, xty, body) ] -> bridge_binder g dir `Ex x xty body
  | Const ("COND", _), [ c; a; b ] when type_of [] t = bool_ty ->
      (* literal (c /\ a) \/ (~c /\ b), native (c -> a) /\ (~c -> b) *)
      let lc = paren (ltext g c) and nc = paren (ntext g c) and la = paren (ltext g a) and na = paren (ntext g a) and lb = paren (ltext g b) and nb = paren (ntext g b) in
      let cf = bridge g Fwd c and cb = bridge g Bwd c in
      (match dir with
       | Fwd -> Printf.sprintf "(cond_bool_fwd %s %s %s %s %s %s %s %s %s %s)" lc la lb nc na nb cf cb (bridge g Fwd a) (bridge g Fwd b)
       | Bwd -> Printf.sprintf "(cond_bool_bwd %s %s %s %s %s %s %s %s %s %s)" lc la lb nc na nb cf cb (bridge g Bwd a) (bridge g Bwd b))
  | _ -> bridge_atom g dir t

(* atoms: literal L[t] = 1 versus the native proposition *)
and bridge_atom g dir t =
  let lit, nat, kind, pf = rel g t (Some E.VProp) in
  ignore lit; ignore nat;
  (match kind with KIff -> () | _ -> unsupported "bridge_atom: relation kind");
  let lp = paren (pp (L.mg_eq lit L.one)) and np = paren (pp nat) in
  match dir with
  | Fwd -> Printf.sprintf "(iffEL %s %s %s)" lp np pf
  | Bwd -> Printf.sprintf "(iffER %s %s %s)" lp np pf

and bridge_eq g dir ty a b =
  (* mirror Elab.elab_eq: pointwise for naturally-meta function terms *)
  if is_fun_ty ty && (nat_meta g a || nat_meta g b) then begin
    let hint = (match E.lam_name a with Some s -> s | None -> (match E.lam_name b with Some s -> s | None -> "x")) in
    let dom, cod = dest_fun_ty ty in
    let a' = beta (lift 1 0 a) (Bound 0) and b' = beta (lift 1 0 b) (Bound 0) in
    let inner = E.mk_eq cod a' b' in
    let pw = E.mk_forall hint dom inner in
    (* literal: L[a] = L[b] (set functions) <-> forall x :e A, L[a] x = L[b] x  (eq_Pi_pointwise) ;
       the literal of `pw` is forall x :e A, L[a x] = L[b x] where L[(\y.t) x] is a beta redex *)
    let ca = L.carrier g.lctx dom and cb = L.carrier g.lctx cod in
    let la = lterm g a and lb = lterm g b in
    let lit_eq = paren (pp (L.mg_eq la lb)) in
    let lit_pw = paren (ltext g pw) in
    let nat_pw = paren (ntext g pw) in
    let is_bool = cod = bool_ty in
    let iff = if is_bool then Printf.sprintf "(eq_Pi_pointwise_bool %s %s %s %s %s)" (ppp ca) (ppp la) (ppp lb) (typ g a) (typ g b)
      else Printf.sprintf "(eq_Pi_pointwise %s %s %s %s %s %s)" (ppp ca) (ppp cb) (ppp la) (ppp lb) (typ g a) (typ g b) in
    (match a, b with
     | Lam _, _ | _, Lam _ ->
         (* a lambda side: the literal of `pw` has the beta-reduced body, the pointwise form of
            eq_Pi_pointwise the applied lambda; convert with pw_app_conv[_bool] *)
         let side s ls =
           (match s with
            | Lam (x, xty, body) ->
                let n, body', _, cleanup = open_lam g x xty body in
                let r = (try
                  let lbt = lterm g body' in
                  if is_bool then
                    (match lbt with
                     | Mg.If (_, Mg.Num 1, Mg.Num 0) ->
                         let lp = ltext g body' in
                         (Printf.sprintf "(fun %s:set => %s)" n lp,
                          Printf.sprintf "(fun %s H%s => (iff_eq1_l (%s %s) %s (beta %s (fun %s => %s) %s H%s) (%s) (If_1_iff (%s))))" n n ls n (ppp lbt) (ppp ca) n (pp lbt) n n lp lp)
                     | _ ->
                         (Printf.sprintf "(fun %s:set => %s = 1)" n (pp lbt),
                          Printf.sprintf "(fun %s H%s => (iff_eq1_l (%s %s) %s (beta %s (fun %s => %s) %s H%s) (%s = 1) (iff_refl (%s = 1))))" n n ls n (ppp lbt) (ppp ca) n (pp lbt) n n (pp lbt) (pp lbt)))
                  else
                    (Printf.sprintf "(fun %s:set => %s)" n (pp lbt),
                     Printf.sprintf "(fun %s H%s => (beta %s (fun %s => %s) %s H%s))" n n (ppp ca) n (pp lbt) n n)
                  with e -> cleanup (); raise e) in
                cleanup (); r
            | _ when is_bool ->
                (* the application may be logical (a partially applied logical constant): its literal
                   is a proposition, related to the data constant by hl_<c>_eq1 *)
                let n, body', _, cleanup = open_lam g "x" dom (App (lift 1 0 s, Bound 0)) in
                let r = (try
                  if L.is_logical body' then begin
                    let lp = ltext g body' in
                    let h, hargs = head_and_args s in
                    let data_arg p = (match lterm g p with Mg.If _ -> unsupported "bridge_eq: logical head applied to a formula" | l -> ppp l) in
                    let pf = (match h, hargs with
                      | Const ("==>", _), [ p ] -> Printf.sprintf "(hl_imp_eq1 %s %s %s H%s)" (data_arg p) (typ g p) n n
                      | Const ("/\\", _), [ p ] -> Printf.sprintf "(hl_and_eq1 %s %s %s H%s)" (data_arg p) (typ g p) n n
                      | Const ("\\/", _), [ p ] -> Printf.sprintf "(hl_or_eq1 %s %s %s H%s)" (data_arg p) (typ g p) n n
                      | Const ("~", _), [] -> Printf.sprintf "(hl_not_eq1 %s H%s)" n n
                      | _ -> unsupported "bridge_eq: logical head %s" (match h with Const (c, _) -> c | _ -> "?")) in
                    (Printf.sprintf "(fun %s:set => %s)" n lp, Printf.sprintf "(fun %s H%s => %s)" n n pf)
                  end else
                    (Printf.sprintf "(fun %s:set => %s %s = 1)" n ls n, Printf.sprintf "(fun %s H%s => (iff_refl (%s %s = 1)))" n n ls n)
                  with e -> cleanup (); raise e) in
                cleanup (); r
            | _ -> (Printf.sprintf "(fun hl__pw:set => %s hl__pw)" ls, Printf.sprintf "(fun hl__pw Hhl__pw => %s)" refl)) in
         let fa, pa = side a (ppp la) and fb, pb = side b (ppp lb) in
         let lit_pw0 = if is_bool then Printf.sprintf "(forall hl__pw :e %s, %s hl__pw = 1 <-> %s hl__pw = 1)" (ppp ca) (ppp la) (ppp lb)
           else Printf.sprintf "(forall hl__pw :e %s, %s hl__pw = %s hl__pw)" (ppp ca) (ppp la) (ppp lb) in
         let conv = Printf.sprintf "(%s %s %s %s %s %s %s %s)" (if is_bool then "pw_app_conv_bool" else "pw_app_conv") (ppp ca) (ppp la) (ppp lb) fa fb pa pb in
         (match dir with
          | Fwd -> Printf.sprintf "(imp_trans %s %s %s (imp_trans %s %s %s (iffEL %s %s %s) (iffEL %s %s %s)) %s)" lit_eq lit_pw nat_pw lit_eq lit_pw0 lit_pw lit_eq lit_pw0 iff lit_pw0 lit_pw conv (bridge g Fwd pw)
          | Bwd -> Printf.sprintf "(imp_trans %s %s %s %s (imp_trans %s %s %s (iffER %s %s %s) (iffER %s %s %s)))" nat_pw lit_pw lit_eq (bridge g Bwd pw) lit_pw lit_pw0 lit_eq lit_pw0 lit_pw conv lit_eq lit_pw0 iff)
     | _ ->
         (match dir with
          | Fwd -> Printf.sprintf "(imp_trans %s %s %s (iffEL %s %s %s) %s)" lit_eq lit_pw nat_pw lit_eq lit_pw iff (bridge g Fwd pw)
          | Bwd -> Printf.sprintf "(imp_trans %s %s %s %s (iffER %s %s %s))" nat_pw lit_pw lit_eq (bridge g Bwd pw) lit_eq lit_pw iff))
  end else begin
    let want = (if is_fun_ty ty then E.data_view g.nctx ty else E.VSet (L.carrier g.lctx ty)) in
    let la, na, ka, pa = rel g a (Some want) and lb, nb, kb, pb = rel g b (Some want) in
    let pa = if pa = "" then refl else pa and pb = if pb = "" then refl else pb in
    match ka, kb with
    | KEq, KEq ->
        (match dir with
         | Fwd -> Printf.sprintf "(imp_eq %s %s %s %s %s %s)" (ppp la) (ppp na) (ppp lb) (ppp nb) pa pb
         | Bwd -> Printf.sprintf "(imp_eq %s %s %s %s %s %s)" (ppp na) (ppp la) (ppp nb) (ppp lb) (eq_sym la na pa) (eq_sym lb nb pb))
    | KRep ca, KRep _ ->
        (match dir with
         | Fwd -> Printf.sprintf "(rep_eq_fwd %s %s %s %s %s %s %s)" (ppp ca) (ppp la) (ppp lb) (ppp na) (ppp nb) pa pb
         | Bwd -> Printf.sprintf "(rep_eq_bwd %s %s %s %s %s %s %s %s %s)" (ppp ca) (ppp la) (ppp lb) (ppp na) (ppp nb) (typ g a) (typ g b) pa pb)
    | KRep2 ca, KRep2 _ ->
        (match dir with
         | Fwd -> Printf.sprintf "(rep2_eq_fwd %s %s %s %s %s %s %s)" (ppp ca) (ppp la) (ppp lb) (ppp na) (ppp nb) pa pb
         | Bwd -> Printf.sprintf "(rep2_eq_bwd %s %s %s %s %s %s %s %s %s)" (ppp ca) (ppp la) (ppp lb) (ppp na) (ppp nb) (typ g a) (typ g b) pa pb)
    | _ -> unsupported "bridge_eq: relation kinds"
  end

and nat_meta g t =
  match t with
  | Free (k, _) -> (match List.assoc_opt k g.vars with Some v -> E.is_meta v.view | None -> false)
  | Lam _ -> true
  | _ ->
      let h, args = head_and_args t in
      (match h with
       | Const (c, cty) ->
           (match R.find_const g.nctx.E.reg c cty with
            | Some (e, _) when List.length args >= List.length e.R.c_args ->
                (match e.R.c_result with R.RMetaFun _ | R.RMetaPred _ -> true | _ -> false)
            | Some _ -> true
            | None -> false)
       | Free (k, _) -> (match List.assoc_opt k g.vars with Some v -> E.is_meta v.view | None -> false)
       | _ -> false)

(* binders: choose the native view exactly like Elab.elab_binder, then use the matching lemma *)
and bridge_binder g dir kind x xty body =
  let n = E.fresh g.nctx x in
  let key = x ^ "\000" ^ n ^ "#" ^ string_of_int g.counter in
  g.counter <- g.counter + 1;
  let body' = open_with (Free (key, xty)) body in
  let xview = E.choose_view g.nctx (key, xty) [ body' ] in
  g.nctx.E.vars <- (key, (xty, xview, n)) :: g.nctx.E.vars;
  g.lctx.L.used <- n :: g.lctx.L.used;
  let ca = L.carrier g.lctx xty in
  let hn = "H" ^ n in
  let lit_of lit = g.lctx.L.vars <- (key, lit) :: g.lctx.L.vars in
  let finish () =
    g.nctx.E.vars <- List.remove_assoc key g.nctx.E.vars;
    g.lctx.L.vars <- List.remove_assoc key g.lctx.L.vars;
    g.vars <- List.remove_assoc key g.vars in
  let finish_all () =
    finish (); E.release g.nctx n; g.lctx.L.used <- List.filter (( <> ) n) g.lctx.L.used in
  let with_var (v : vinfo) f =
    g.nctx.E.vars <- (key, (xty, xview, n)) :: g.nctx.E.vars;
    if not (List.mem n g.lctx.L.used) then g.lctx.L.used <- n :: g.lctx.L.used;
    lit_of v.lit; g.vars <- (key, v) :: g.vars;
    let r = (try f () with e -> finish (); raise e) in
    finish (); r in
  (* texts of the bodies with the variable itself (for the lemma's predicate arguments) *)
  let plain = { vty = xty; view = xview; lit = Mg.Var n; nat = None; mem = hn; rel = ""; kind = KEq; hyp = "" } in
  let lbody, nbody = with_var plain (fun () -> (ltext g body', ntext g body')) in
  let result = (try bridge_binder_views g dir kind key n xty xview body' plain with_var lbody nbody hn ca with e -> finish_all (); raise e) in
  finish_all (); result

and bridge_binder_views g dir kind key n xty xview body' plain with_var lbody nbody hn ca =
  let lam_l lit_body = Printf.sprintf "(fun %s => %s)" n lit_body in
  let lam_n nat_body = Printf.sprintf "(fun %s => %s)" n nat_body in
  ignore key; ignore xty; ignore ca;
  let lemma base = (match kind with `All -> "imp_forall_" ^ base | `Ex -> "imp_exists_" ^ base) in
  let fwd_first = (match kind, dir with `All, Fwd | `Ex, Bwd -> true | _ -> false) in
  (* fwd_first: the sub-bridge sees the native variable (representation instantiated on the literal side);
     otherwise the literal variable is given and the native side is substituted *)
  match xview with
  | E.VSet (Mg.App (Mg.App (Mg.Cst "setexp", Mg.App (Mg.Cst "Power", a)), k)) when (match xty with TyApp ("fun", [ _; TyApp ("fun", [ _; TyApp ("bool", []) ]) ]) -> true | _ -> false) ->
      (* a function into subsets: the literal f :e 2 :^: A :^: K and the native g :e Power A :^: K are
         bound together with the pointwise hypothesis hl_rep A (f x) = g x *)
      let la = lam_l lbody and na = lam_n nbody in
      let n2 = E.fresh g.nctx n in
      let hn2 = "H" ^ n2 and hpw = "H" ^ n ^ "pw" in
      let v = { plain with nat = Some (Mg.Var n2); rel = hpw; kind = KRepFun (k, a); hyp = hn2 } in
      let sub = (try with_var v (fun () -> bridge g dir body') with e -> E.release g.nctx n2; raise e) in
      E.release g.nctx n2;
      let lemma = (match kind, dir with
        | `All, Fwd -> "imp_forall_repfun" | `All, Bwd -> "imp_forall_repfun_rev"
        | `Ex, Fwd -> "imp_exists_repfun" | `Ex, Bwd -> "imp_exists_repfun_rev") in
      Printf.sprintf "(%s %s %s %s %s (fun %s %s %s %s %s => %s))" lemma (ppp k) (ppp a) la na n hn n2 hn2 hpw sub
  | E.VSet c ->
      let sub = with_var plain (fun () -> bridge g dir body') in
      let la = lam_l lbody and na = lam_n nbody in
      (match dir with
       | Fwd -> Printf.sprintf "(%s %s %s %s (fun %s %s => %s))" (lemma "in") (ppp c) la na n hn sub
       | Bwd -> Printf.sprintf "(%s %s %s %s (fun %s %s => %s))" (lemma "in") (ppp c) na la n hn sub)
  | E.VMetaPred [ Mg.App (Mg.Cst "Power", c) ] ->
      (* a predicate on subsets (depth 1) or on sets of subsets (depth 2): literal predicates on the
         literal carrier D, composed with the representation r; converse direction through ch *)
      let la = lam_l lbody and na = lam_n nbody in
      let two_pow x = Mg.App (Mg.App (Mg.Cst "setexp", Mg.Num 2), x) in
      let c', rep_c, chi_c = (match c with
        | Mg.App (Mg.Cst "Power", c') -> (c', "hl_rep2", "hl_chi2")
        | _ -> (c, "hl_rep", "hl_chi")) in
      let d = (match c with Mg.App (Mg.Cst "Power", c') -> two_pow (two_pow c') | _ -> two_pow c) in
      let r = Printf.sprintf "(fun hl__x:set => %s %s hl__x)" rep_c (ppp c') and ch = Printf.sprintf "(fun hl__T:set => %s %s hl__T)" chi_c (ppp c') in
      if fwd_first then begin
        let comp = Mg.Lam ("hl__x", Mg.Set, Mg.App (Mg.Var n, Mg.apps (Mg.Cst rep_c) [ c'; Mg.Var "hl__x" ])) in
        let v = { plain with lit = Mg.apps (Mg.Cst "hl_chip") [ d; comp ]; mem = Printf.sprintf "(hl_chip_Pi %s %s)" (ppp d) (ppp comp);
                             rel = Printf.sprintf "(hl_chip_iff %s %s)" (ppp d) (ppp comp); kind = KPWP d } in
        let sub = with_var v (fun () -> bridge g dir body') in
        Printf.sprintf "(%s %s %s %s %s (fun %s => %s))" (match kind with `All -> "imp_forall_pred_rep" | `Ex -> "imp_exists_pred_rep_rev") (ppp d) r la na n sub
      end else begin
        let v = { plain with nat = Some (Mg.Lam ("hl__T", Mg.Set, L.mg_eq (Mg.App (Mg.Var n, Mg.apps (Mg.Cst chi_c) [ c'; Mg.Var "hl__T" ])) L.one)); rel = ""; kind = KPWP d } in
        let sub = with_var v (fun () -> bridge g dir body') in
        Printf.sprintf "(%s %s %s %s %s (fun %s %s => %s))" (match kind with `All -> "imp_forall_pred_rep_rev" | `Ex -> "imp_exists_pred_rep") (ppp d) ch la na n hn sub
      end
  | E.VMetaPred [ c ] ->
      let la = lam_l lbody and na = lam_n nbody in
      if fwd_first then begin
        let v = { plain with lit = Mg.apps (Mg.Cst "hl_chip") [ c; Mg.Var n ]; mem = Printf.sprintf "(hl_chip_Pi %s %s)" (ppp c) n;
                             rel = Printf.sprintf "(hl_chip_iff %s %s)" (ppp c) n; kind = KPWP c } in
        let sub = with_var v (fun () -> bridge g dir body') in
        Printf.sprintf "(%s %s %s %s (fun %s => %s))" (lemma (match kind with `All -> "pred" | `Ex -> "pred_rev")) (ppp c) la na n sub
      end else begin
        let v = { plain with nat = Some (Mg.Lam ("x", Mg.Set, L.mg_eq (Mg.App (Mg.Var n, Mg.Var "x")) L.one)); rel = ""; kind = KPWP c } in
        let sub = with_var v (fun () -> bridge g dir body') in
        Printf.sprintf "(%s %s %s %s (fun %s %s => %s))" (lemma (match kind with `All -> "pred_rev" | `Ex -> "pred")) (ppp c) la na n hn sub
      end
  | E.VMetaFun ([ c ], d) ->
      let la = lam_l lbody and na = lam_n nbody in
      let hf = "H" ^ n ^ "c" in
      if fwd_first then begin
        let v = { plain with lit = Mg.apps (Mg.Cst "hl_lam") [ c; Mg.Var n ]; mem = Printf.sprintf "(hl_lam_Pi %s %s %s %s)" (ppp c) (ppp d) n hf;
                             rel = Printf.sprintf "(hl_lam_ap %s %s)" (ppp c) n; kind = KPW c; hyp = hf } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_fun %s %s %s %s (fun %s %s => %s))" (ppp c) (ppp d) la na n hf sub
         | `Ex -> Printf.sprintf "(imp_exists_fun_rev %s %s %s %s (fun %s %s => %s))" (ppp c) (ppp d) la na n hf sub)
      end else begin
        let v = { plain with nat = Some (Mg.Lam ("x", Mg.Set, Mg.App (Mg.Var n, Mg.Var "x"))); rel = ""; kind = KPW c } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_fun_rev %s %s %s %s (fun %s %s => %s))" (ppp c) (ppp d) la na n hn sub
         | `Ex -> Printf.sprintf "(imp_exists_fun %s %s %s %s (fun %s %s => %s))" (ppp c) (ppp d) la na n hn sub)
      end
  | E.VSubset (Mg.App (Mg.Cst "Power", c)) ->
      (* a set of subsets of c: nested representation hl_rep2 / hl_chi2 *)
      let la = lam_l lbody and na = lam_n nbody in
      let hs = "H" ^ n ^ "s" in
      if fwd_first then begin
        let v = { plain with lit = Mg.apps (Mg.Cst "hl_chi2") [ c; Mg.Var n ]; mem = Printf.sprintf "(hl_chi2_Pi %s %s)" (ppp c) n;
                             rel = Printf.sprintf "(hl_rep2_chi2 %s %s %s)" (ppp c) n hs; kind = KRep2 c; hyp = hs } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_sub2 %s %s %s (fun %s %s => %s))" (ppp c) la na n hs sub
         | `Ex -> Printf.sprintf "(imp_exists_sub2_rev %s %s %s (fun %s %s => %s))" (ppp c) la na n hs sub)
      end else begin
        let v = { plain with nat = Some (Mg.apps (Mg.Cst "hl_rep2") [ c; Mg.Var n ]); rel = ""; kind = KRep2 c } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_sub2_rev %s %s %s (fun %s %s => %s))" (ppp c) la na n hn sub
         | `Ex -> Printf.sprintf "(imp_exists_sub2 %s %s %s (fun %s %s => %s))" (ppp c) la na n hn sub)
      end
  | E.VSubset c ->
      let la = lam_l lbody and na = lam_n nbody in
      let hs = "H" ^ n ^ "s" in
      if fwd_first then begin
        let v = { plain with lit = Mg.apps (Mg.Cst "hl_chi") [ c; Mg.Var n ]; mem = Printf.sprintf "(hl_chi_Pi %s %s)" (ppp c) n;
                             rel = Printf.sprintf "(hl_rep_chi %s %s %s)" (ppp c) n hs; kind = KRep c; hyp = hs } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_sub %s %s %s (fun %s %s => %s))" (ppp c) la na n hs sub
         | `Ex -> Printf.sprintf "(imp_exists_sub_rev %s %s %s (fun %s %s => %s))" (ppp c) la na n hs sub)
      end else begin
        let v = { plain with nat = Some (Mg.apps (Mg.Cst "hl_rep") [ c; Mg.Var n ]); rel = ""; kind = KRep c } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_sub_rev %s %s %s (fun %s %s => %s))" (ppp c) la na n hn sub
         | `Ex -> Printf.sprintf "(imp_exists_sub %s %s %s (fun %s %s => %s))" (ppp c) la na n hn sub)
      end
  | E.VMetaPred [ c; d ] ->
      let la = lam_l lbody and na = lam_n nbody in
      if fwd_first then begin
        let v = { plain with lit = Mg.apps (Mg.Cst "hl_chip2") [ c; d; Mg.Var n ]; mem = Printf.sprintf "(hl_chip2_Pi %s %s %s)" (ppp c) (ppp d) n;
                             rel = Printf.sprintf "(hl_chip2_iff %s %s %s)" (ppp c) (ppp d) n; kind = KPWP2 (c, d) } in
        let sub = with_var v (fun () -> bridge g dir body') in
        Printf.sprintf "(%s %s %s %s %s (fun %s => %s))" (lemma (match kind with `All -> "pred2" | `Ex -> "pred2_rev")) (ppp c) (ppp d) la na n sub
      end else begin
        let v = { plain with nat = Some (Mg.Lam ("x", Mg.Set, Mg.Lam ("y", Mg.Set, L.mg_eq (Mg.apps (Mg.Var n) [ Mg.Var "x"; Mg.Var "y" ]) L.one))); rel = ""; kind = KPWP2 (c, d) } in
        let sub = with_var v (fun () -> bridge g dir body') in
        Printf.sprintf "(%s %s %s %s %s (fun %s %s => %s))" (lemma (match kind with `All -> "pred2_rev" | `Ex -> "pred2")) (ppp c) (ppp d) la na n hn sub
      end
  | E.VMetaFun ([ c; d ], e) ->
      let la = lam_l lbody and na = lam_n nbody in
      let hf = "H" ^ n ^ "c" in
      if fwd_first then begin
        let v = { plain with lit = Mg.apps (Mg.Cst "hl_lam2") [ c; d; Mg.Var n ]; mem = Printf.sprintf "(hl_lam2_Pi %s %s %s %s %s)" (ppp c) (ppp d) (ppp e) n hf;
                             rel = Printf.sprintf "(hl_lam2_ap %s %s %s)" (ppp c) (ppp d) n; kind = KPW2 (c, d); hyp = hf } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_fun2 %s %s %s %s %s (fun %s %s => %s))" (ppp c) (ppp d) (ppp e) la na n hf sub
         | `Ex -> Printf.sprintf "(imp_exists_fun2_rev %s %s %s %s %s (fun %s %s => %s))" (ppp c) (ppp d) (ppp e) la na n hf sub)
      end else begin
        let v = { plain with nat = Some (Mg.Lam ("x", Mg.Set, Mg.Lam ("y", Mg.Set, Mg.apps (Mg.Var n) [ Mg.Var "x"; Mg.Var "y" ]))); rel = ""; kind = KPW2 (c, d) } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_fun2_rev %s %s %s %s %s (fun %s %s => %s))" (ppp c) (ppp d) (ppp e) la na n hn sub
         | `Ex -> Printf.sprintf "(imp_exists_fun2 %s %s %s %s %s (fun %s %s => %s))" (ppp c) (ppp d) (ppp e) la na n hn sub)
      end
  | E.VProp ->
      let la = lam_l lbody and na = lam_n nbody in
      if fwd_first then begin
        let v = { plain with lit = Mg.If (Mg.Var n, L.one, L.zero); mem = Printf.sprintf "(If_in_2 %s)" n;
                             rel = Printf.sprintf "(If_1_iff %s)" n; kind = KIff } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_bool %s %s (fun %s => %s))" la na n sub
         | `Ex -> Printf.sprintf "(imp_exists_bool_rev %s %s (fun %s => %s))" la na n sub)
      end else begin
        let v = { plain with nat = Some (L.mg_eq (Mg.Var n) L.one); rel = Printf.sprintf "(iff_refl (%s = 1))" n; kind = KIff } in
        let sub = with_var v (fun () -> bridge g dir body') in
        (match kind with
         | `All -> Printf.sprintf "(imp_forall_bool_rev %s %s (fun %s %s => %s))" la na n hn sub
         | `Ex -> Printf.sprintf "(imp_exists_bool %s %s (fun %s %s => %s))" la na n hn sub)
      end
  | _ -> unsupported "bridge_binder: view %s" (E.string_of_view xview)

(* ------------------------------------------------------------------------ *)
(* Whole theorems.                                                          *)
(* ------------------------------------------------------------------------ *)

(* abstract a free variable into a de Bruijn binder (for wrapping with a quantifier) *)
let abstract_free (s : string) (t : tm) : tm =
  let rec go d t =
    match t with
    | Free (s', _) when s' = s -> Bound d
    | Bound i when i >= d -> Bound (i + 1)
    | App (f, x) -> App (go d f, go d x)
    | Lam (x, ty, b) -> Lam (x, ty, go (d + 1) b)
    | _ -> t in
  go 0 t

type outcome = {
  lit_stmt : Mg.tm;
  nat_stmt : Mg.tm;            (* as derived here (pre-rewrite, pre-generalization) *)
  proof : string;              (* proof term of lit -> nat *)
  compat_used : string list;
}

let generate (reg : R.t) (an : L.analysis) (compat : (string, string * string) Hashtbl.t) (typing_ok : (string, unit) Hashtbl.t) (seq : sequent) : outcome =
  ignore typing_ok;
  if seq.hyps <> [] then unsupported "bridge: sequent with hypotheses";
  (* set up the two contexts exactly as Elab.elab_sequent / Literal.statement do *)
  let all = [ seq.concl ] in
  let tvs = List.sort compare (uniq (List.concat_map tyvars_of_tm all)) in
  let named = List.filter (fun a -> a = "" || a.[0] <> '?') tvs in
  let letters = List.init 26 (fun i -> String.make 1 (Char.chr (65 + i))) in
  let used = ref (List.map E.sanitize_tyvar named) in
  let tv_names = List.map (fun a ->
    if a <> "" && a.[0] = '?' then begin
      let l = (match List.find_opt (fun l -> not (List.mem l !used)) letters with Some l -> l | None -> E.sanitize_tyvar a) in
      used := l :: !used; (a, l)
    end else (a, E.sanitize_tyvar a)) tvs in
  let nctx = { E.reg; tyvar_names = tv_names; vars = []; used = List.map snd tv_names; st = { E.classes = []; bridges = []; notes = [] } } in
  let lctx = L.new_ctx an.L.consts an.L.supported an.L.tydefs tv_names in
  let g = { lctx; nctx; an; compat; vars = []; nonempty = List.map (fun (_, n) -> (n, "H" ^ n ^ "ne")) tv_names; counter = 0; used_compat = []; lit_typing = false; hyps = [] } in
  (* free variables, first occurrence order, native views as Elab *)
  let fvs = uniq (List.concat_map frees all) in
  let decls = List.map (fun (s, ty) ->
    let n = E.fresh nctx s in
    let v = E.choose_view nctx (s, ty) all in
    nctx.E.vars <- (s, (ty, v, n)) :: nctx.E.vars;
    lctx.L.used <- n :: lctx.L.used;
    lctx.L.vars <- (s, Mg.Var n) :: lctx.L.vars;
    (s, ty, v, n)) fvs in
  (* free variables are handled as outermost universal binders (same names/views as
     Elab.elab_sequent and Literal.statement) *)
  List.iter (fun (s, _, _, n) -> nctx.E.vars <- List.remove_assoc s nctx.E.vars; E.release nctx n;
              lctx.L.vars <- List.remove_assoc s lctx.L.vars; lctx.L.used <- List.filter (( <> ) n) lctx.L.used) decls;
  let concl = List.fold_right (fun (s, ty, _, _) acc -> E.mk_forall s ty (abstract_free s acc)) decls seq.concl in
  let lit_body = L.lprop lctx concl in
  let nat_body = reduce_tuples (E.elab nctx concl E.VProp) in
  let seq = { seq with concl } in
  let close_lit body = List.fold_right (fun (_, n) acc -> Mg.Imp (L.mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc)) tv_names body
                       |> fun b -> List.fold_right (fun (_, n) acc -> Mg.All (n, Mg.Set, acc)) tv_names b in
  let lit_stmt = close_lit lit_body in
  let nat_stmt = close_lit nat_body in
  (* translated type definitions with a proved native carrier: convert the literal hypothesis
     hl_ty_T -> carrier once (Leibniz), then work with native carriers *)
  lctx.L.use_native_tydefs <- true;
  let converters = Hashtbl.fold (fun t nat acc -> if Hashtbl.mem an.L.tydefs t then (t, nat) :: acc else acc) L.tydef_native [] in
  let converters = List.sort compare converters in
  let lit_native_body = ref lit_body in
  let wrap_hl = List.fold_left (fun hl (t, nat) ->
    let lit_ty = Mg.Cst ("hl_ty_" ^ E.sanitize_var t) in
    if replace_tm lit_ty (Mg.Var "hl__u") !lit_native_body = !lit_native_body then hl
    else begin
      let ctx = replace_tm lit_ty (Mg.Var "hl__u") !lit_native_body in
      lit_native_body := replace_tm lit_ty nat !lit_native_body;
      Printf.sprintf "(hl_ty_%s_native (fun hl__u hl__v => %s) %s)" (E.sanitize_var t) (pp ctx) hl
    end) "HL0" converters in
  let inner = bridge g Fwd seq.concl in
  let params = List.map snd tv_names in
  let hyps = List.map (fun n -> "H" ^ n ^ "ne") params in
  let hl_inst = if params = [] then "H__top" else Printf.sprintf "(H__top %s)" (String.concat " " (params @ hyps)) in
  let converted = if wrap_hl = "HL0" then hl_inst else Str.global_replace (Str.regexp_string "HL0") hl_inst wrap_hl in
  (* native post-processing: replay of the elaborator's approved rewrites, then the empty-carrier
     generalization.  Pair projections `(a,b) 0 = a` are transported by Leibniz steps on the proved
     body; eta-reduced meta lambdas are convertible for Megalodon and need no proof step. *)
  let _, rewrites = Rewrite.run nat_stmt in
  let replayable = [ "tuple_2_0_eq"; "tuple_2_1_eq"; "eta" ] in
  (match List.filter (fun r -> not (List.mem r replayable)) rewrites with
   | [] -> ()
   | l -> unsupported "native rewrites %s" (String.concat "," l));
  let final = Printf.sprintf "%s %s" inner converted in
  let nat_body = if List.mem "eta" rewrites then fst (Rewrite.run nat_body) else nat_body in
  let nat_stmt = close_lit nat_body in
  let nat_gen, dropped = Emptycase.generalize nat_stmt params in
  let kept_hyps = List.filter_map (fun p -> if List.mem p dropped then None else Some ("H" ^ p ^ "ne")) params in
  (* case analysis on the dropped carriers: the first dropped parameter is split innermost, so that
     its empty case may assume the later parameters nonempty, as the evaluator did *)
  let body_text = pp nat_body in
  let split = List.fold_left (fun acc d ->
    let body_d = Mg.subst [ (d, Mg.Cst "Empty") ] nat_body in
    let pf_empty = (try Emptyproof.prove body_d with Emptyproof.Cannot m -> unsupported "empty-carrier case of %s: %s" d m) in
    let ctx = Mg.subst [ (d, Mg.Var "hl__u") ] nat_body in
    let transported = Printf.sprintf "((eq_sym_i %s Empty H%se) (fun hl__u hl__v => %s) %s)" d d (pp ctx) pf_empty in
    Printf.sprintf "(xm (%s = Empty) (%s) (fun H%se => %s) (fun H%sne => %s))" d body_text d transported d acc) final dropped in
  let proof = if params = [] then Printf.sprintf "(fun H__top => %s)" split
              else Printf.sprintf "(fun H__top %s => %s)" (String.concat " " (params @ kept_hyps)) split in
  { lit_stmt; nat_stmt = nat_gen; proof; compat_used = List.rev g.used_compat }

(* typing lemma of a generated literal definition: forall A..:set, A <> Empty -> .. -> hl_c A.. :e L[sigma] *)
(* the rewrites converting native carriers of translated type definitions back to hl_ty_T *)
let carrier_conv (stmt_native : Mg.tm) : string =
  let tys = Hashtbl.fold (fun t nat acc -> if replace_tm nat (Mg.Var "hl__u") stmt_native <> stmt_native then t :: acc else acc) L.tydef_native [] in
  String.concat "" (List.map (fun t -> Printf.sprintf "rewrite <- hl_ty_%s_native. " (E.sanitize_var t)) (List.sort compare tys))

(* typing lemmas of a generated literal definition, in the literal-carrier form (_in_lit, proved
   structurally) and in the native-carrier form (_in, derived by rewriting the carrier equations) *)
let typing_lemma (an : L.analysis) (typing_ok : (string, unit) Hashtbl.t) (c : string) (cty : ty) (rhs : tm) : (string * string * string) list =
  let tvs = L.tyvars_ordered cty [] in
  let tv_names = L.tyvar_params tvs in
  let lctx = L.new_ctx an.L.consts an.L.supported an.L.tydefs tv_names in
  let dummy_reg = { R.types = Hashtbl.create 1; consts = Hashtbl.create 1; files = []; empty_rules = []; rewrite_rules = []; names = [] } in
  let nctx = { E.reg = dummy_reg; tyvar_names = tv_names; vars = []; used = List.map snd tv_names; st = { E.classes = []; bridges = []; notes = [] } } in
  let g = { lctx; nctx; an; compat = Hashtbl.create 1; vars = []; nonempty = List.map (fun (_, n) -> (n, "H" ^ n ^ "ne")) tv_names; counter = 0; used_compat = []; lit_typing = true; hyps = [] } in
  (* every constant used must have its typing lemma already *)
  List.iter (fun k -> if k <> c && not (List.mem_assoc k L.primitive_consts) && not (Hashtbl.mem typing_ok k) then unsupported "typing lemma of %s needs %s" c k) (L.consts_of_tm rhs []);
  let pf = typ g rhs in
  let params = List.map snd tv_names in
  let hyps = List.map (fun n -> "H" ^ n ^ "ne") params in
  let close stmt =
    let stmt = List.fold_right (fun n acc -> Mg.Imp (L.mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc)) params stmt in
    List.fold_right (fun n acc -> Mg.All (n, Mg.Set, acc)) params stmt in
  let hd = Mg.apps (Mg.Cst (L.mg_name_of_const c)) (List.map (fun n -> Mg.Var n) params) in
  let stmt_lit = close (L.mg_in hd (L.carrier lctx cty)) in
  lctx.L.use_native_tydefs <- true;
  let stmt_nat = close (L.mg_in hd (L.carrier lctx cty)) in
  let proof = if params = [] then pf else Printf.sprintf "(fun %s => %s)" (String.concat " " (params @ hyps)) pf in
  let lit_name = L.mg_name_of_const c ^ "_in_lit" in
  let native_proof =
    if stmt_nat = stmt_lit then Printf.sprintf "exact %s." lit_name
    else if params = [] then Printf.sprintf "%sexact %s." (carrier_conv stmt_nat) lit_name
    else Printf.sprintf "let %s. assume %s. %sexact (%s %s)." (String.concat " " params) (String.concat " " hyps) (carrier_conv stmt_nat) lit_name (String.concat " " (params @ hyps)) in
  [ (lit_name, Mg.to_string stmt_lit, "exact " ^ proof ^ "."); (typing_lemma_name c, Mg.to_string stmt_nat, native_proof) ]

(* lemmas of a translated type definition: the (admitted) literal nonemptiness fact, the
   nonemptiness of the subtype carrier, and the typing lemmas of abs and rep *)
let tydef_lemmas (an : L.analysis) (proved : (string, string) Hashtbl.t) (td : type_definition) (arity : int) : (string * string * string) list =
  let rho, pred = L.dest_tydef_bij td in
  let tvs = List.sort compare (L.tyvars_ordered (type_of [] pred) []) in
  if List.length tvs <> arity then unsupported "type definition %s: arity" td.td_name;
  let tv_names = L.tyvar_params tvs in
  let lctx = L.new_ctx an.L.consts an.L.supported an.L.tydefs tv_names in
  let params = List.map snd tv_names in
  let hyps = List.map (fun n -> "H" ^ n ^ "ne") params in
  let crho = L.carrier lctx rho and p = L.lterm lctx pred in
  let tyname = "hl_ty_" ^ E.sanitize_var td.td_name in
  let ty_app = Mg.apps (Mg.Cst tyname) (List.map (fun n -> Mg.Var n) params) in
  let close_hyp body = List.fold_right (fun n acc -> Mg.Imp (L.mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc)) params body in
  let close_all body = List.fold_right (fun n acc -> Mg.All (n, Mg.Set, acc)) params body in
  let binder = if params = [] then "" else Printf.sprintf "fun %s => " (String.concat " " (params @ hyps)) in
  let args = String.concat " " (params @ hyps) in
  (* the nonemptiness of the carrier is a hand-proved theorem of mglib/literal/carriers.mg *)
  let ne_name = tyname ^ "_nonempty" in
  let ne_stmt = Mg.to_string (close_all (close_hyp (L.mg_neq ty_app (Mg.Cst "Empty")))) in
  let ne_available = (match Hashtbl.find_opt proved ne_name with Some st -> st = ne_stmt | None -> false) in
  let ty_ne = (ne_name, ne_stmt, "") in
  let ne_pf = Printf.sprintf "(%s %s)" (tyname ^ "_nonempty") args in
  let rep_hd = Mg.apps (Mg.Cst (L.mg_name_of_const td.td_rep)) (List.map (fun n -> Mg.Var n) params) in
  let abs_hd = Mg.apps (Mg.Cst (L.mg_name_of_const td.td_abs)) (List.map (fun n -> Mg.Var n) params) in
  let rep_stmt = close_all (close_hyp (L.mg_in rep_hd (Mg.apps (Mg.Cst "setexp") [ crho; ty_app ]))) in
  let abs_stmt = close_all (close_hyp (L.mg_in abs_hd (Mg.apps (Mg.Cst "setexp") [ ty_app; crho ]))) in
  let rep_lit = (L.mg_name_of_const td.td_rep ^ "_in_lit", Mg.to_string rep_stmt, Printf.sprintf "exact (%shl_subtype_rep_in %s %s)." binder (ppp crho) (ppp p)) in
  let abs_lit = (L.mg_name_of_const td.td_abs ^ "_in_lit", Mg.to_string abs_stmt, Printf.sprintf "exact (%shl_subtype_abs_in %s %s %s)." binder (ppp crho) (ppp p) ne_pf) in
  (* native-carrier forms *)
  lctx.L.use_native_tydefs <- true;
  let crho_n = L.carrier lctx rho in
  let ty_app_n = (match (if params = [] then Hashtbl.find_opt L.tydef_native td.td_name else None) with Some nat -> nat | None -> ty_app) in
  let rep_stmt_n = close_all (close_hyp (L.mg_in rep_hd (Mg.apps (Mg.Cst "setexp") [ crho_n; ty_app_n ]))) in
  let abs_stmt_n = close_all (close_hyp (L.mg_in abs_hd (Mg.apps (Mg.Cst "setexp") [ ty_app_n; crho_n ]))) in
  let derive lit_name stmt_n stmt_l =
    if stmt_n = stmt_l then Printf.sprintf "exact %s." lit_name
    else if params = [] then Printf.sprintf "%sexact %s." (carrier_conv stmt_n) lit_name
    else Printf.sprintf "let %s. assume %s. %sexact (%s %s)." (String.concat " " params) (String.concat " " hyps) (carrier_conv stmt_n) lit_name (String.concat " " (params @ hyps)) in
  let rep_in = (L.mg_name_of_const td.td_rep ^ "_in", Mg.to_string rep_stmt_n, derive (L.mg_name_of_const td.td_rep ^ "_in_lit") rep_stmt_n rep_stmt) in
  let abs_in = (L.mg_name_of_const td.td_abs ^ "_in", Mg.to_string abs_stmt_n, derive (L.mg_name_of_const td.td_abs ^ "_in_lit") abs_stmt_n abs_stmt) in
  ignore ty_ne;
  if ne_available then [ rep_lit; rep_in; abs_lit; abs_in ] else [ rep_lit; rep_in; ("", ne_stmt, "") ]

(* unfolding lemma of a generated literal definition:
     hl_c_unfold : forall A..:set, forall x1 :e C1, .. , hl_c A.. x1 .. xn = body
   proved by a chain of beta rewrites (script) *)
let unfold_lemma (an : L.analysis) (c : string) (cty : ty) (rhs : tm) : string * string * string =
  let tvs = L.tyvars_ordered cty [] in
  let tv_names = L.tyvar_params tvs in
  let lctx = L.new_ctx an.L.consts an.L.supported an.L.tydefs tv_names in
  let body = L.lterm lctx rhs in
  let params = List.map snd tv_names in
  let name = L.mg_name_of_const c in
  (* peel the leading bounded lambdas *)
  let rec peel t acc = (match t with Mg.LamIn (x, ca, b) -> peel b ((x, ca) :: acc) | _ -> (List.rev acc, t)) in
  let args, core = peel body [] in
  let head = Mg.apps (Mg.Cst name) (List.map (fun n -> Mg.Var n) params) in
  let lhs = Mg.apps head (List.map (fun (x, _) -> Mg.Var x) args) in
  let stmt = L.mg_eq lhs core in
  let stmt = List.fold_right (fun (x, ca) acc -> Mg.AllIn (x, ca, acc)) args stmt in
  let stmt = List.fold_right (fun n acc -> Mg.All (n, Mg.Set, acc)) params stmt in
  let buf = Buffer.create 256 in
  if params <> [] then Buffer.add_string buf (Printf.sprintf "let %s. " (String.concat " " params));
  List.iter (fun (x, _) -> Buffer.add_string buf (Printf.sprintf "let %s. assume H%s. " x x)) args;
  (* unfold and rewrite the betas one by one *)
  let cur = ref body in
  let rest = ref args in
  Buffer.add_string buf (Printf.sprintf "prove %s. " (pp (L.mg_eq (Mg.apps body (List.map (fun (x, _) -> Mg.Var x) args)) core)));
  while !rest <> [] do
    (match !cur, !rest with
     | Mg.LamIn (x, ca, b), (_, _) :: r ->
         let remaining = List.map (fun (y, _) -> Mg.Var y) r in
         ignore remaining;
         Buffer.add_string buf (Printf.sprintf "rewrite (beta %s (fun %s => %s) %s H%s). " (ppp ca) x (pp b) x x);
         cur := b; rest := r
     | _ -> rest := [])
  done;
  Buffer.add_string buf "exact (fun q H => H).";
  (name ^ "_unfold", Mg.to_string stmt, Buffer.contents buf)

(* specification lemma of a HOL recursive definition (choice over a clause set):
     hl_c_spec : (exists g :e C', BODY g) -> BODY hl_c /\ hl_c :e C'
   recognised from the kernel definition shape  c = (@f. !tag. CLAUSES(f tag)) tag0
   or, without a tag,  c = @f. CLAUSES(f). *)
let spec_lemma (an : L.analysis) (c : string) (cty : ty) (rhs : tm) : (string * string * string) option =
  let tvs = L.tyvars_ordered cty [] in
  (* polymorphic constants: carrier parameters A.. with nonemptiness premises, as in compat statements *)
  let tv_names = L.tyvar_params tvs in
  begin
    let lctx = L.new_ctx an.L.consts an.L.supported an.L.tydefs tv_names in
    let nctx = { E.reg = { R.types = Hashtbl.create 1; consts = Hashtbl.create 1; files = []; empty_rules = []; rewrite_rules = []; names = [] }; tyvar_names = []; vars = []; used = []; st = { E.classes = []; bridges = []; notes = [] } } in
    let g = { lctx; nctx; an; compat = Hashtbl.create 1; vars = []; nonempty = List.map (fun (_, n) -> (n, "H" ^ n)) tv_names; counter = 0; used_compat = []; lit_typing = false; hyps = [] } in
    let name = L.mg_name_of_const c in
    let hd = Mg.apps (Mg.Cst name) (List.map (fun (_, n) -> Mg.Var n) tv_names) in
    let wrap stmt = List.fold_right (fun (_, n) acc -> Mg.All (n, Mg.Set, Mg.Imp (L.mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc))) tv_names stmt in
    let intro = String.concat "" (List.map (fun (_, n) -> Printf.sprintf "let %s. assume H%s. " n n) tv_names) in
    (* replace the de Bruijn pattern by the free variable g and check nothing else is bound *)
    let rec has_bound d t = (match t with Bound i -> i >= d | App (a, b) -> has_bound d a || has_bound d b | Lam (_, _, b) -> has_bound (d + 1) b | _ -> false) in
    let rec repl d pat_f pat_tag gty t =
      (match t with
       | App (Bound i, Bound j) when pat_tag >= 0 && i = pat_f + d && j = pat_tag + d -> Free ("g", gty)
       | Bound i when pat_tag < 0 && i = pat_f + d -> Free ("g", gty)
       | App (a, b) -> App (repl d pat_f pat_tag gty a, repl d pat_f pat_tag gty b)
       | Lam (x, ty, b) -> Lam (x, ty, repl (d + 1) pat_f pat_tag gty b)
       | _ -> t) in
    let finish c' clauses' t_carrier tag0 =
      if has_bound 0 clauses' then None
      else begin
        lctx.L.vars <- [ ("g", Mg.Var "g") ]; lctx.L.used <- "g" :: List.map snd tv_names;
        let cl_g = L.lprop lctx clauses' in
        let stmt = wrap (Mg.Imp (Mg.ExIn ("g", c', cl_g), L.mg_and (replace_tm (Mg.Var "g") hd cl_g) (L.mg_in hd c'))) in
        match tag0, t_carrier with
        | Some tag0, Some t ->
            (match (try Some (typ g tag0) with _ -> None) with
             | None -> None
             | Some tp ->
                 let pf = Printf.sprintf "%sassume Hex. exact (hl_recdef %s %s (fun g => %s) %s %s Hex)." intro (ppp c') (ppp t) (pp cl_g) (ppp (L.lterm lctx tag0)) tp in
                 Some (name ^ "_spec", Mg.to_string stmt, pf))
        | _ ->
            let pf = Printf.sprintf "%sassume Hex. exact (hl_recdef0 %s (fun g => %s) Hex)." intro (ppp c') (pp cl_g) in
            Some (name ^ "_spec", Mg.to_string stmt, pf)
      end in
    match rhs with
    | App (App (Const ("@", _), Lam (_, fty, App (Const ("!", _), Lam (_, tagty, clauses)))), tag0) ->
        (match fty with
         | TyApp ("fun", [ tt; gty ]) when tt = tagty ->
             let clauses' = repl 0 1 0 gty clauses in
             finish (L.carrier lctx gty) clauses' (Some (L.carrier lctx tagty)) (Some tag0)
         | _ -> None)
    | App (Const ("@", _), Lam (_, fty, clauses)) ->
        let clauses' = repl 0 0 (-1) fty clauses in
        finish (L.carrier lctx fty) clauses' None None
    | _ -> None
  end
