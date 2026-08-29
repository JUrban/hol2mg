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
  | KPW of Mg.tm                 (* forall x :e A, lit x = nat x  (meta-function, arity 1) *)
  | KPWP of Mg.tm                (* forall x :e A, lit x = 1 <-> nat x (meta-predicate, arity 1) *)
  | KIff                         (* lit = 1 <-> nat *)

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
}

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

let nprop g t = Mg.normalize (Mg.subst (nat_subst g) (E.elab g.nctx t E.VProp))
let ntext g t = pp (nprop g t)
let lprop g t = L.lprop g.lctx t
let ltext g t = pp (lprop g t)
let lterm g t = L.lterm g.lctx t

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
let compat_statement (an : L.analysis) (e : R.const_entry) : Mg.tm option =
  let scheme = e.R.c_scheme in
  let tvs = L.tyvars_ordered scheme [] in
  let tv_names = L.tyvar_params tvs in
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
      | R.RSet -> (l, ca, `Set, Mg.Var l)
      | R.RSubset ->
          (match aty with
           | TyApp ("fun", [ a; TyApp ("bool", []) ]) -> (l, ca, `Set, Mg.apps (Mg.Cst "hl_rep") [ L.carrier lctx a; Mg.Var l ])
           | _ -> (l, ca, `Bad, Mg.Var l))
      | R.RProp -> let p = L.fresh lctx ("p" ^ string_of_int (i + 1)) in (l, ca, `Prop p, Mg.Var p)
      | R.RMetaFun k ->
          let k = (match k with Some k -> k | None -> E.fun_arity aty) in
          if k <> 1 then (l, ca, `Bad, Mg.Var l)
          else (match aty with
                | TyApp ("fun", [ a; _ ]) -> let f = L.fresh lctx ("f" ^ string_of_int (i + 1)) in (l, ca, `Fun (f, L.carrier lctx a), Mg.Var f)
                | _ -> (l, ca, `Bad, Mg.Var l))
      | R.RMetaPred k ->
          let k = (match k with Some k -> k | None -> E.fun_arity aty) in
          if k <> 1 then (l, ca, `Bad, Mg.Var l)
          else (match aty with
                | TyApp ("fun", [ a; TyApp ("bool", []) ]) -> let p = L.fresh lctx ("P" ^ string_of_int (i + 1)) in (l, ca, `Pred (p, L.carrier lctx a), Mg.Var p)
                | _ -> (l, ca, `Bad, Mg.Var l))) (List.combine e.R.c_args doms) in
    if List.exists (fun (_, _, k, _) -> k = `Bad) args then None
    else begin
      let sub = List.mapi (fun i (_, _, _, t) -> (string_of_int (i + 1), t)) args
                @ List.map (fun (a, n) -> (a, Mg.Var n)) tv_names in
      let rhs = Mg.normalize (Mg.inst sub e.R.c_template) in
      let lhs = Mg.apps (Mg.Cst (L.mg_name_of_const e.R.c_hol)) (List.map (fun (_, n) -> Mg.Var n) tv_names @ List.map (fun (l, _, _, _) -> Mg.Var l) args) in
      let result = (match e.R.c_result with
        | R.RProp -> Some (L.mg_iff (L.mg_eq lhs L.one) rhs)
        | R.RSet -> Some (L.mg_eq lhs rhs)
        | R.RSubset -> (match res with
            | TyApp ("fun", [ a; TyApp ("bool", []) ]) -> Some (L.mg_eq (Mg.apps (Mg.Cst "hl_rep") [ L.carrier lctx a; lhs ]) rhs)
            | _ -> None)
        | _ -> None) in
      match result with
      | None -> None
      | Some body ->
          let body = List.fold_right (fun (l, ca, k, _) acc ->
            let acc = (match k with
              | `Fun (f, a) -> Mg.All (f, Mg.Arr (Mg.Set, Mg.Set), Mg.Imp (Mg.AllIn ("x", a, L.mg_eq (Mg.App (Mg.Var l, Mg.Var "x")) (Mg.App (Mg.Var f, Mg.Var "x"))), acc))
              | `Pred (p, a) -> Mg.All (p, Mg.Arr (Mg.Set, Mg.Prop), Mg.Imp (Mg.AllIn ("x", a, L.mg_iff (L.mg_eq (Mg.App (Mg.Var l, Mg.Var "x")) L.one) (Mg.App (Mg.Var p, Mg.Var "x"))), acc))
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

(* relation proof for a HOL term in a given native view; returns (lit, nat, kind, proof) *)
let rec rel g (t : tm) (want : E.view option) : Mg.tm * Mg.tm * relkind * string =
  let nat, nview = E.elab_nat g.nctx t want in
  let nat = Mg.normalize (Mg.subst (nat_subst g) nat) in
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
                (* meta-function variable applied: lit = F x, nat = f x' with rel: forall x :e A, F x = f x *)
                let lx, nx, kx, _ = rel g x (Some (E.VSet a)) in
                if kx <> KEq then unsupported "rel: metafun argument";
                if lx <> nx then unsupported "rel: metafun applied to non-identical argument (%s vs %s)" (pp lx) (pp nx);
                if v.rel = "" then (lit, nat, KEq, refl)
                else (lit, nat, KEq, Printf.sprintf "(%s %s %s)" v.rel (ppp lx) (typ g x))
            | KPWP a, [ x ] ->
                let lx, nx, kx, _ = rel g x (Some (E.VSet a)) in
                if kx <> KEq then unsupported "rel: metapred argument";
                if lx <> nx then unsupported "rel: metapred applied to non-identical argument";
                if v.rel = "" then (lit, nat, KIff, Printf.sprintf "(iff_refl %s)" (ppp (L.mg_eq lit L.one)))
                else (lit, nat, KIff, Printf.sprintf "(%s %s %s)" v.rel (ppp lx) (typ g x))
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
            | _ -> unsupported "rel: variable application with this view/arity")
       | Const (c, cty), _ ->
           (match c with
            | "T" | "F" | "~" | "/\\" | "\\/" | "==>" | "=" | "!" | "?" | "COND" when L.is_logical t ->
                (* a formula used as data: lit = if LP then 1 else 0; native data view of bool *)
                unsupported "rel: formula as data"
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
            | "COND" when List.length args = 3 ->
                (* if c then a else b at a data type: hl_COND_if + argument rewrites *)
                let ty = type_of [] t in
                let ca = L.carrier g.lctx ty in
                let c0 = List.nth args 0 and a = List.nth args 1 and b = List.nth args 2 in
                let lc, nc, kc, pc = rel g c0 (Some E.VProp) in
                if kc <> KIff then unsupported "rel: conditional condition";
                let la, na, ka, pa = rel g a (Some (E.VSet ca)) and lb, nb, kb, pb = rel g b (Some (E.VSet ca)) in
                if ka <> KEq || kb <> KEq then unsupported "rel: conditional branches";
                let pf0 = Printf.sprintf "(hl_COND_if %s %s %s %s %s %s %s %s %s)" (ppp ca) (ppp lc) (typ g c0) (ppp nc) pc (ppp la) (typ g a) (ppp lb) (typ g b) in
                let prop0 = L.mg_eq lit (Mg.If (nc, la, lb)) in
                let prop1, pf1 = if la = na then (prop0, pf0) else
                  (let ctx = L.mg_eq lit (Mg.If (nc, Mg.Var "hl__u", lb)) in (L.mg_eq lit (Mg.If (nc, na, lb)), leibniz (if pa = "" then refl else pa) (pp ctx) pf0)) in
                let prop2, pf2 = if lb = nb then (prop1, pf1) else
                  (let ctx = L.mg_eq lit (Mg.If (nc, na, Mg.Var "hl__u")) in (L.mg_eq lit (Mg.If (nc, na, nb)), leibniz (if pb = "" then refl else pb) (pp ctx) pf1)) in
                (match prop2 with
                 | Mg.App (Mg.App (Mg.Cst "eq", _), r) when r <> nat -> unsupported "rel: conditional derived %s differs from %s" (pp r) (pp nat)
                 | _ -> ());
                (lit, nat, KEq, pf2)
            | _ ->
                (match mapped_entry g c cty with
                 | Some (e, _) when List.length args = List.length e.R.c_args -> rel_mapped g e c cty args lit nat nview
                 | Some _ -> unsupported "rel: partial application of mapped constant %s" c
                 | None -> unsupported "rel: unmapped constant %s" c))
       | Lam _, _ -> unsupported "rel: lambda"
       | _ -> unsupported "rel: head")

(* mapped constant application: use its compatibility lemma *)
and rel_mapped g (e : R.const_entry) c cty args lit nat nview =
  let name = compat_for g e in
  let cs = const_carriers g c cty in
  (* compat A.. HA.. l1 pf1 [f1 rel1] ... *)
  let doms, _ = strip_fun_ty cty in
  let parts = ref [ paren name ] in
  List.iter (fun (ca, _) -> parts := ppp ca :: !parts) cs;
  List.iter (fun (_, t) -> parts := nonempty_pf g t :: !parts) cs;
  (* the statement we obtain, instantiated *)
  let tvs = L.tyvars_ordered e.R.c_scheme [] in
  let generic = Hashtbl.find g.an.L.consts c in
  let sub = L.match_ty generic cty [] in
  let inst = List.map (fun a -> (a, L.carrier g.lctx (List.assoc a sub))) tvs in
  let tsub = ref (List.map (fun (a, ca) -> (a, ca)) inst) in
  let rewrites = ref [] in     (* (literal subterm, native subterm, proof) to apply to the RHS *)
  List.iteri (fun i (role, a) ->
    let aty = List.nth doms i in
    match role with
    | R.RSet ->
        let la, na, ka, pa = rel g a (Some (E.VSet (L.carrier g.lctx aty))) in
        if ka <> KEq then unsupported "rel_mapped: set argument relation";
        parts := typ g a :: ppp la :: !parts;
        tsub := (string_of_int (i + 1), la) :: !tsub;
        if la <> na then rewrites := (la, na, pa) :: !rewrites
    | R.RSubset ->
        let ca = (match aty with TyApp ("fun", [ d; _ ]) -> L.carrier g.lctx d | _ -> unsupported "subset role") in
        let la, na, ka, pa = rel g a (Some (E.VSubset ca)) in
        (match ka with KRep _ -> () | _ -> unsupported "rel_mapped: subset argument relation");
        parts := typ g a :: ppp la :: !parts;
        tsub := (string_of_int (i + 1), Mg.apps (Mg.Cst "hl_rep") [ ca; la ]) :: !tsub;
        let repl = Mg.apps (Mg.Cst "hl_rep") [ ca; la ] in
        if repl <> na then rewrites := (repl, na, (if pa = "" then refl else pa)) :: !rewrites
    | R.RProp ->
        let la, na, ka, pa = rel g a (Some E.VProp) in
        if ka <> KIff then unsupported "rel_mapped: prop argument relation";
        parts := paren pa :: ppp na :: typ g a :: ppp la :: !parts;
        tsub := (string_of_int (i + 1), na) :: !tsub
    | R.RMetaFun k ->
        let k = (match k with Some k -> k | None -> E.fun_arity aty) in
        if k <> 1 then unsupported "rel_mapped: metafun arity %d" k;
        let d, cod = dest_fun_ty aty in
        let la, na, ka, pa = rel g a (Some (E.VMetaFun ([ L.carrier g.lctx d ], L.carrier g.lctx cod))) in
        (match ka with KPW _ -> () | _ -> unsupported "rel_mapped: metafun argument relation");
        let pw = if pa = "" then Printf.sprintf "(fun x Hx => (fun q H => H))" else pa in
        parts := paren pw :: ppp na :: typ g a :: ppp la :: !parts;
        tsub := (string_of_int (i + 1), na) :: !tsub
    | R.RMetaPred k ->
        let k = (match k with Some k -> k | None -> E.fun_arity aty) in
        if k <> 1 then unsupported "rel_mapped: metapred arity %d" k;
        let d, _ = dest_fun_ty aty in
        let la, na, ka, pa = rel g a (Some (E.VMetaPred [ L.carrier g.lctx d ])) in
        (match ka with KPWP _ -> () | _ -> unsupported "rel_mapped: metapred argument relation");
        let pw = if pa = "" then Printf.sprintf "(fun x Hx => iff_refl (%s x = 1))" (ppp la) else pa in
        parts := paren pw :: ppp na :: typ g a :: ppp la :: !parts;
        tsub := (string_of_int (i + 1), na) :: !tsub) (List.combine e.R.c_args (List.filteri (fun i _ -> i < List.length e.R.c_args) args));
  let pf0 = paren (String.concat " " (List.rev !parts)) in
  let rhs0 = Mg.normalize (Mg.inst !tsub e.R.c_template) in
  let lhs = lit in
  let prop0 = (match e.R.c_result with
    | R.RProp -> L.mg_iff (L.mg_eq lhs L.one) rhs0
    | R.RSet -> L.mg_eq lhs rhs0
    | R.RSubset ->
        let n = List.length e.R.c_args in
        let resty = List.fold_right (fun d acc -> fun_ty d acc) (List.filteri (fun i _ -> i >= n) doms) (snd (strip_fun_ty cty)) in
        let ca = (match resty with TyApp ("fun", [ d; _ ]) -> L.carrier g.lctx d | _ -> unsupported "subset result") in
        L.mg_eq (Mg.apps (Mg.Cst "hl_rep") [ ca; lhs ]) rhs0
    | _ -> unsupported "rel_mapped: result role") in
  (* apply the pending rewrites of the right-hand side *)
  let prop, pf = List.fold_left (fun (prop, pf) (l, n, pe) ->
    (* only rewrite inside the RHS: abstract occurrences in the RHS part *)
    let split_rhs prop = (match prop with
      | Mg.App (Mg.App (Mg.Cst "iff", a), b) -> (fun b' -> Mg.App (Mg.App (Mg.Cst "iff", a), b')), b
      | Mg.App (Mg.App (Mg.Cst "eq", a), b) -> (fun b' -> Mg.App (Mg.App (Mg.Cst "eq", a), b')), b
      | _ -> (fun b' -> b'), prop) in
    let rebuild, b = split_rhs prop in
    let ctx = rebuild (replace_tm l (Mg.Var "hl__u") b) in
    let prop' = rebuild (replace_tm l n b) in
    (prop', leibniz pe (pp ctx) pf)) (prop0, pf0) (List.rev !rewrites) in
  ignore prop;
  let kind = (match e.R.c_result with R.RProp -> KIff | R.RSet -> KEq | R.RSubset -> KRep (match nview with E.VSubset a -> a | _ -> Mg.Var "?") | _ -> KEq) in
  (* sanity: the derived native form must be the one Elab produced *)
  let derived = (match prop with
    | Mg.App (Mg.App (Mg.Cst ("iff" | "eq"), _), b) -> b
    | _ -> prop) in
  if derived <> nat then unsupported "rel_mapped: derived native %s differs from elaborated %s" (pp derived) (pp nat);
  (lit, nat, kind, pf)

and coerce_rel g t (lit, nat, kind, pf) (want : E.view) =
  match kind, want with
  | KEq, E.VSet _ | KIff, E.VProp | KRep _, E.VSubset _ -> (lit, nat, kind, pf)
  | KPW a, E.VMetaFun ([ _ ], _) -> (lit, nat, kind, pf)
  | KPWP a, E.VMetaPred [ _ ] -> (lit, nat, kind, pf)
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

let imp_lemma dir name la na lb nb pa pb =
  match dir with
  | Fwd -> Printf.sprintf "(%s %s %s %s %s %s %s)" name la na lb nb pa pb
  | Bwd -> Printf.sprintf "(%s %s %s %s %s %s %s)" name na la nb lb pa pb

let rec bridge g (dir : dir) (t : tm) : string =
  match head_and_args t with
  | Const ("T", _), [] -> "(imp_refl True)"
  | Const ("F", _), [] -> "(imp_refl False)"
  | Const ("~", _), [ a ] ->
      let la = paren (ltext g a) and na = paren (ntext g a) in
      (match dir with
       | Fwd -> Printf.sprintf "(imp_not %s %s %s)" la na (bridge g Bwd a)
       | Bwd -> Printf.sprintf "(imp_not %s %s %s)" na la (bridge g Fwd a))
  | Const ("/\\", _), [ a; b ] ->
      imp_lemma dir "imp_and" (paren (ltext g a)) (paren (ntext g a)) (paren (ltext g b)) (paren (ntext g b)) (bridge g dir a) (bridge g dir b)
  | Const ("\\/", _), [ a; b ] ->
      imp_lemma dir "imp_or" (paren (ltext g a)) (paren (ntext g a)) (paren (ltext g b)) (paren (ntext g b)) (bridge g dir a) (bridge g dir b)
  | Const ("==>", _), [ a; b ] ->
      let flip = (match dir with Fwd -> Bwd | Bwd -> Fwd) in
      imp_lemma dir "imp_imp" (paren (ltext g a)) (paren (ntext g a)) (paren (ltext g b)) (paren (ntext g b)) (bridge g flip a) (bridge g dir b)
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
  | Const ("COND", _), [ _; _; _ ] when type_of [] t = bool_ty -> unsupported "bridge: boolean conditional"
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
    (match a, b with
     | Lam _, _ | _, Lam _ -> unsupported "bridge_eq: pointwise equality with a lambda side"
     | _ ->
         let ca = L.carrier g.lctx dom and cb = L.carrier g.lctx cod in
         let la = lterm g a and lb = lterm g b in
         let lit_eq = paren (pp (L.mg_eq la lb)) in
         let lit_pw = paren (ltext g pw) in
         let nat_pw = paren (ntext g pw) in
         let iff = Printf.sprintf "(eq_Pi_pointwise %s %s %s %s %s %s)" (ppp ca) (ppp cb) (ppp la) (ppp lb) (typ g a) (typ g b) in
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
  | E.VSet c ->
      let sub = with_var plain (fun () -> bridge g dir body') in
      let la = lam_l lbody and na = lam_n nbody in
      (match dir with
       | Fwd -> Printf.sprintf "(%s %s %s %s (fun %s %s => %s))" (lemma "in") (ppp c) la na n hn sub
       | Bwd -> Printf.sprintf "(%s %s %s %s (fun %s %s => %s))" (lemma "in") (ppp c) na la n hn sub)
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
  let g = { lctx; nctx; an; compat; vars = []; nonempty = List.map (fun (_, n) -> (n, "H" ^ n ^ "ne")) tv_names; counter = 0; used_compat = []; lit_typing = false } in
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
  let nat_body = E.elab nctx concl E.VProp in
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
  (* wrap: fun HL A.. HAne.. => inner (converted (HL A.. HAne..)) *)
  let params = List.map snd tv_names in
  let hyps = List.map (fun n -> "H" ^ n ^ "ne") params in
  let hl_inst = if params = [] then "HL" else Printf.sprintf "(HL %s)" (String.concat " " (params @ hyps)) in
  let converted = if wrap_hl = "HL0" then hl_inst else Str.global_replace (Str.regexp_string "HL0") hl_inst wrap_hl in
  let proof = Printf.sprintf "(fun HL %s => %s %s)" (String.concat " " (params @ hyps)) inner converted in
  let proof = if params = [] then Printf.sprintf "(fun HL => %s %s)" inner converted else proof in
  { lit_stmt; nat_stmt; proof; compat_used = List.rev g.used_compat }

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
  let g = { lctx; nctx; an; compat = Hashtbl.create 1; vars = []; nonempty = List.map (fun (_, n) -> (n, "H" ^ n ^ "ne")) tv_names; counter = 0; used_compat = []; lit_typing = true } in
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
  if tvs <> [] then None
  else begin
    let lctx = L.new_ctx an.L.consts an.L.supported an.L.tydefs [] in
    let nctx = { E.reg = { R.types = Hashtbl.create 1; consts = Hashtbl.create 1; files = []; empty_rules = []; rewrite_rules = []; names = [] }; tyvar_names = []; vars = []; used = []; st = { E.classes = []; bridges = []; notes = [] } } in
    let g = { lctx; nctx; an; compat = Hashtbl.create 1; vars = []; nonempty = []; counter = 0; used_compat = []; lit_typing = false } in
    let name = L.mg_name_of_const c in
    let hd = Mg.Cst name in
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
        lctx.L.vars <- [ ("g", Mg.Var "g") ]; lctx.L.used <- [ "g" ];
        let cl_g = L.lprop lctx clauses' in
        let stmt = Mg.Imp (Mg.ExIn ("g", c', cl_g), L.mg_and (replace_tm (Mg.Var "g") hd cl_g) (L.mg_in hd c')) in
        match tag0, t_carrier with
        | Some tag0, Some t ->
            (match (try Some (typ g tag0) with _ -> None) with
             | None -> None
             | Some tp ->
                 let pf = Printf.sprintf "assume Hex. exact (hl_recdef %s %s (fun g => %s) %s %s Hex)." (ppp c') (ppp t) (pp cl_g) (ppp (L.lterm lctx tag0)) tp in
                 Some (name ^ "_spec", Mg.to_string stmt, pf))
        | _ ->
            let pf = Printf.sprintf "assume Hex. exact (hl_recdef0 %s (fun g => %s) Hex)." (ppp c') (pp cl_g) in
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
