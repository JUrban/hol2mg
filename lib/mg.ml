(* Native Megalodon IR, notation table (from a signature file), printer that
   mirrors Megalodon's precedence parser, a template parser for the mapping
   registry, and substitution / beta-normalisation. *)

type mty = Set | Prop | Arr of mty * mty

type tm =
  | Var of string                       (* variable or parameter *)
  | Cst of string                       (* target constant *)
  | Meta of string                      (* template placeholder ?name *)
  | App of tm * tm
  | Lam of string * mty * tm            (* fun x:T => t *)
  | LamIn of string * tm * tm           (* fun x :e A => t *)
  | All of string * mty * tm            (* forall x:T, p *)
  | AllIn of string * tm * tm           (* forall x :e A, p *)
  | AllSub of string * tm * tm          (* forall x c= A, p *)
  | Ex of string * mty * tm
  | ExIn of string * tm * tm
  | ExSub of string * tm * tm
  | Imp of tm * tm
  | Sep of string * tm * tm             (* {x :e A | p} *)
  | Repl of string * tm * tm            (* {t | x :e A} *)
  | ReplSep of string * tm * tm * tm    (* {t | x :e A, p} *)
  | SetEnum of tm list                  (* {a,b,c} *)
  | If of tm * tm * tm
  | Tuple of tm list                    (* (a,b) ; at least 2 *)
  | Num of int
  | SigmaIn of string * tm * tm         (* Sigma_ x :e A, B *)
  | PiIn of string * tm * tm            (* Pi_ x :e A, B *)
  | FamUnion of string * tm * tm        (* \/_ x :e A, B *)

let rec string_of_mty ?(prec = 0) = function
  | Set -> "set"
  | Prop -> "prop"
  | Arr (a, b) ->
      let s = string_of_mty ~prec:1 a ^ " -> " ^ string_of_mty ~prec:0 b in
      if prec > 0 then "(" ^ s ^ ")" else s

(* ------------------------------------------------------------------------ *)
(* Notation table.                                                          *)
(* ------------------------------------------------------------------------ *)

type assoc = LeftA | RightA | NoneA
type notation = Infix of string * int * assoc | Prefix of string * int | Postfix of string * int

(* constant name -> notation (final state after reading the signature) *)
let notations : (string, notation) Hashtbl.t = Hashtbl.create 64
(* symbol -> constant (for the template parser) *)
let infix_syms : (string, string * int * assoc) Hashtbl.t = Hashtbl.create 64
let prefix_syms : (string, string * int) Hashtbl.t = Hashtbl.create 16
let postfix_syms : (string, string * int) Hashtbl.t = Hashtbl.create 16

let reserved_words =
  [ "fun"; "forall"; "exists"; "let"; "in"; "if"; "then"; "else"; "set"; "prop";
    "Section"; "End"; "Variable"; "Hypothesis"; "Let"; "Definition"; "Theorem"; "Axiom";
    "Parameter"; "Admitted"; "Qed"; "Infix"; "Prefix"; "Postfix"; "Binder"; "Notation";
    "Opaque"; "Transparent"; "Unicode"; "ProofArchived"; "Conjecture"; "Lemma"; "Example";
    "Fact"; "Corollary"; "Proposition"; "SType"; "apply"; "exact"; "assume"; "claim";
    "rewrite"; "aby"; "prove"; "witness"; "cases"; "reflexivity"; "symmetry"; "admit" ]

(* names declared by the target signature (constants) *)
let sig_names : (string, unit) Hashtbl.t = Hashtbl.create 4096

let declare_notation cst n =
  Hashtbl.replace notations cst n;
  match n with
  | Infix (s, p, a) -> Hashtbl.replace infix_syms s (cst, p, a)
  | Prefix (s, p) -> Hashtbl.replace prefix_syms s (cst, p)
  | Postfix (s, p) -> Hashtbl.replace postfix_syms s (cst, p)

let builtin_notations () =
  declare_notation "eq" (Infix ("=", 502, NoneA));
  declare_notation "neq" (Infix ("<>", 502, NoneA));
  declare_notation "In" (Infix (":e", 500, NoneA));
  declare_notation "Subq" (Infix ("c=", 500, NoneA));
  Hashtbl.replace infix_syms "->" ("->", 800, RightA);
  Hashtbl.replace infix_syms ":e" (":e", 500, NoneA);
  Hashtbl.replace infix_syms "c=" ("c=", 500, NoneA)

(* Read Infix/Prefix/Postfix declarations and declared names from a .mgs/.mg file. *)
let load_signature file =
  builtin_notations ();
  let ic = open_in file in
  let re_inf = Str.regexp "^Infix +\\([^ ]+\\) +\\([0-9]+\\) *\\(left\\|right\\)? *:= *\\([A-Za-z_0-9']+\\)" in
  let re_pre = Str.regexp "^Prefix +\\([^ ]+\\) +\\([0-9]+\\) *:= *\\([A-Za-z_0-9']+\\)" in
  let re_post = Str.regexp "^Postfix +\\([^ ]+\\) +\\([0-9]+\\) *:= *\\([A-Za-z_0-9']+\\)" in
  let re_decl = Str.regexp "^\\(Definition\\|Parameter\\|Axiom\\|Theorem\\|ProofArchived\\) +\\([A-Za-z_0-9']+\\)" in
  (try
     while true do
       let l = input_line ic in
       if Str.string_match re_inf l 0 then begin
         let sym = Str.matched_group 1 l and p = int_of_string (Str.matched_group 2 l)
         and cst = Str.matched_group 4 l in
         let a = (try (match Str.matched_group 3 l with "left" -> LeftA | "right" -> RightA | _ -> NoneA)
                  with Not_found -> NoneA) in
         declare_notation cst (Infix (sym, p, a))
       end else if Str.string_match re_pre l 0 then
         declare_notation (Str.matched_group 3 l) (Prefix (Str.matched_group 1 l, int_of_string (Str.matched_group 2 l)))
       else if Str.string_match re_post l 0 then
         declare_notation (Str.matched_group 3 l) (Postfix (Str.matched_group 1 l, int_of_string (Str.matched_group 2 l)))
       else if Str.string_match re_decl l 0 then begin
         let names = Str.matched_group 2 l in
         List.iter (fun n -> if n <> "" then Hashtbl.replace sig_names n ()) (String.split_on_char ' ' names)
       end
     done
   with End_of_file -> ());
  close_in ic

(* Override the textual notation scan with an empirically resolved table
   (tools/probe_notations.py), if present next to the signature. *)
let load_notation_table file =
  let j = Yojson.Safe.from_file file in
  let open Yojson.Safe.Util in
  Hashtbl.reset notations; Hashtbl.reset infix_syms; Hashtbl.reset prefix_syms; Hashtbl.reset postfix_syms;
  builtin_notations ();
  let assoc_of = function "left" -> LeftA | "right" -> RightA | _ -> NoneA in
  (match member "infix" j with
   | `Assoc l -> List.iter (fun (sym, v) -> match v with
       | `List [ `String c; `Int p; `String a ] -> declare_notation c (Infix (sym, p, assoc_of a))
       | _ -> ()) l
   | _ -> ());
  (match member "prefix" j with
   | `Assoc l -> List.iter (fun (sym, v) -> match v with `List [ `String c; `Int p ] -> declare_notation c (Prefix (sym, p)) | _ -> ()) l
   | _ -> ());
  (match member "postfix" j with
   | `Assoc l -> List.iter (fun (sym, v) -> match v with `List [ `String c; `Int p ] -> declare_notation c (Postfix (sym, p)) | _ -> ()) l
   | _ -> ())

(* only the declared names of a file (used for the native prelude modules) *)
let load_signature_names file =
  let ic = open_in file in
  let re_decl = Str.regexp "^\\(Definition\\|Parameter\\|Axiom\\|Theorem\\|ProofArchived\\) +\\([A-Za-z_0-9']+\\)" in
  (try while true do
     let l = input_line ic in
     if Str.string_match re_decl l 0 then Hashtbl.replace sig_names (Str.matched_group 2 l) ()
   done with End_of_file -> ());
  close_in ic

let is_reserved s = List.mem s reserved_words || Hashtbl.mem sig_names s

(* ------------------------------------------------------------------------ *)
(* Printer.  pr q trailing t prints t so that it parses under parse_S_ q.   *)
(* Binder-like terms need parentheses only when something follows them.     *)
(* ------------------------------------------------------------------------ *)

let is_binderish = function
  | Lam _ | LamIn _ | All _ | AllIn _ | AllSub _ | Ex _ | ExIn _ | ExSub _ | If _
  | SigmaIn _ | PiIn _ | FamUnion _ -> true
  | _ -> false

let rec strip_app t args = match t with App (f, x) -> strip_app f (x :: args) | _ -> (t, args)

let paren s = "(" ^ s ^ ")"

let rec pr q trailing t =
  match t with
  | Var s | Cst s -> s
  | Meta s -> "?" ^ s
  | Num n -> string_of_int n
  | Tuple ts -> "(" ^ String.concat "," (List.map (pr 1023 true) ts) ^ ")"
  | SetEnum ts -> "{" ^ String.concat "," (List.map (pr 1023 true) ts) ^ "}"
  | Sep (x, a, p) -> "{" ^ x ^ " :e " ^ pr 500 false a ^ " | " ^ pr 1023 true p ^ "}"
  | Repl (x, a, b) -> "{" ^ pr 1023 false b ^ " | " ^ x ^ " :e " ^ pr 1023 true a ^ "}"
  | ReplSep (x, a, p, b) ->
      "{" ^ pr 1023 false b ^ " | " ^ x ^ " :e " ^ pr 1023 false a ^ ", " ^ pr 1023 true p ^ "}"
  | App _ ->
      let h, args = strip_app t [] in
      (match h, args with
       | Cst c, [ a; b ] when (match Hashtbl.find_opt notations c with
                                | Some (Infix (sym, _, _)) -> (match Hashtbl.find_opt infix_syms sym with Some (c', _, _) -> c' = c | None -> false)
                                | _ -> false) ->
           let (Infix (sym, p, assoc)) = Hashtbl.find notations c [@@warning "-8"] in
           pr_infix q trailing sym p assoc a b
       | Cst c, [ a ] when (match Hashtbl.find_opt notations c with
                             | Some (Prefix (sym, _)) -> (match Hashtbl.find_opt prefix_syms sym with Some (c', _) -> c' = c | None -> false)
                             | _ -> false) ->
           let (Prefix (sym, p)) = Hashtbl.find notations c [@@warning "-8"] in
           let s = sym ^ " " ^ pr_operand (p + 1) trailing a in
           if q <= p then paren s else s
       | Cst c, [ a ] when (match Hashtbl.find_opt notations c with
                             | Some (Postfix (sym, _)) -> (match Hashtbl.find_opt postfix_syms sym with Some (c', _) -> c' = c | None -> false)
                             | _ -> false) ->
           let (Postfix (sym, p)) = Hashtbl.find notations c [@@warning "-8"] in
           let s = pr_operand (p + 1) false a ^ " " ^ sym in
           if q <= p then paren s else s
       | _ ->
           let hs = (match h with Var _ | Cst _ | Meta _ | Num _ | Tuple _ | SetEnum _ | Sep _ | Repl _ | ReplSep _ -> pr 0 false h | _ -> paren (pr 1023 true h)) in
           hs ^ " " ^ String.concat " " (List.map pr_atom args))
  | Imp (a, b) -> pr_infix q trailing "->" 800 RightA a b
  | Lam (x, ty, b) -> binderish q trailing ("fun " ^ x ^ ":" ^ string_of_mty ty ^ " => " ^ pr 1010 true b)
  | LamIn (x, a, b) -> binderish q trailing ("fun " ^ x ^ " :e " ^ pr 1010 false a ^ " => " ^ pr 1010 true b)
  | All (x, ty, b) -> binderish q trailing (pr_multi "forall" (x, `Ty ty) b)
  | AllIn (x, a, b) -> binderish q trailing (pr_multi "forall" (x, `In a) b)
  | AllSub (x, a, b) -> binderish q trailing (pr_multi "forall" (x, `Sub a) b)
  | Ex (x, ty, b) -> binderish q trailing (pr_multi "exists" (x, `Ty ty) b)
  | ExIn (x, a, b) -> binderish q trailing (pr_multi "exists" (x, `In a) b)
  | ExSub (x, a, b) -> binderish q trailing (pr_multi "exists" (x, `Sub a) b)
  | If (c, a, b) ->
      binderish q trailing ("if " ^ pr 1010 true c ^ " then " ^ pr 1010 true a ^ " else " ^ pr 1010 true b)
  | SigmaIn (x, a, b) -> binderish q trailing ("Sigma_ " ^ x ^ " :e " ^ pr 1010 false a ^ ", " ^ pr 1010 true b)
  | PiIn (x, a, b) -> binderish q trailing ("Pi_ " ^ x ^ " :e " ^ pr 1010 false a ^ ", " ^ pr 1010 true b)
  | FamUnion (x, a, b) -> binderish q trailing ("\\/_ " ^ x ^ " :e " ^ pr 1010 false a ^ ", " ^ pr 1010 true b)

and binderish q trailing s = if trailing then s else paren s

(* merge consecutive binders with identical domain: forall x y :e A, ... *)
and pr_multi kw (x, dom) body =
  let same d1 d2 = (match d1, d2 with `Ty a, `Ty b -> a = b | `In a, `In b -> a = b | `Sub a, `Sub b -> a = b | _ -> false) in
  let rec collect names body =
    match kw, body with
    | "forall", All (y, ty, b) when same dom (`Ty ty) -> collect (y :: names) b
    | "forall", AllIn (y, a, b) when same dom (`In a) -> collect (y :: names) b
    | "forall", AllSub (y, a, b) when same dom (`Sub a) -> collect (y :: names) b
    | "exists", Ex (y, ty, b) when same dom (`Ty ty) -> collect (y :: names) b
    | "exists", ExIn (y, a, b) when same dom (`In a) -> collect (y :: names) b
    | "exists", ExSub (y, a, b) when same dom (`Sub a) -> collect (y :: names) b
    | _ -> (List.rev names, body)
  in
  let names, body = collect [ x ] body in
  let doms = (match dom with
    | `Ty ty -> ":" ^ string_of_mty ty
    | `In a -> " :e " ^ pr 1010 false a
    | `Sub a -> " c= " ^ pr 1010 false a) in
  kw ^ " " ^ String.concat " " names ^ doms ^ ", " ^ pr 1010 true body

and pr_infix q trailing sym p assoc a b =
  let lq, rq = (match assoc with LeftA -> (p + 1, p) | RightA -> (p, p + 1) | NoneA -> (p, p)) in
  let s = pr_operand lq false a ^ " " ^ sym ^ " " ^ pr_operand rq trailing b in
  if q <= p then paren s else s

(* an operand: binderish terms are parenthesised unless trailing *)
and pr_operand q trailing t =
  if is_binderish t then (if trailing then pr q true t else paren (pr 1023 true t)) else pr q trailing t

(* application argument: must be atomic *)
and pr_atom t =
  match t with
  | Var _ | Cst _ | Meta _ | Num _ | Tuple _ | SetEnum _ | Sep _ | Repl _ | ReplSep _ -> pr 0 false t
  | _ -> paren (pr 1023 true t)

let to_string t = pr 1023 true t

(* ------------------------------------------------------------------------ *)
(* Free variables, substitution, beta.                                      *)
(* ------------------------------------------------------------------------ *)

let rec free_vars t =
  match t with
  | Var s -> [ s ]
  | Cst _ | Meta _ | Num _ -> []
  | App (a, b) | Imp (a, b) -> free_vars a @ free_vars b
  | Lam (x, _, b) | All (x, _, b) | Ex (x, _, b) -> List.filter (( <> ) x) (free_vars b)
  | LamIn (x, a, b) | AllIn (x, a, b) | AllSub (x, a, b) | ExIn (x, a, b) | ExSub (x, a, b)
  | Repl (x, a, b) | SigmaIn (x, a, b) | PiIn (x, a, b) | FamUnion (x, a, b) ->
      free_vars a @ List.filter (( <> ) x) (free_vars b)
  | Sep (x, a, p) -> free_vars a @ List.filter (( <> ) x) (free_vars p)
  | ReplSep (x, a, p, b) -> free_vars a @ List.filter (( <> ) x) (free_vars p @ free_vars b)
  | SetEnum ts | Tuple ts -> List.concat_map free_vars ts
  | If (a, b, c) -> free_vars a @ free_vars b @ free_vars c

let rec metas t =
  match t with
  | Meta s -> [ s ]
  | Var _ | Cst _ | Num _ -> []
  | App (a, b) | Imp (a, b) -> metas a @ metas b
  | Lam (_, _, b) | All (_, _, b) | Ex (_, _, b) -> metas b
  | LamIn (_, a, b) | AllIn (_, a, b) | AllSub (_, a, b) | ExIn (_, a, b) | ExSub (_, a, b)
  | Repl (_, a, b) | SigmaIn (_, a, b) | PiIn (_, a, b) | FamUnion (_, a, b) | Sep (_, a, b) -> metas a @ metas b
  | ReplSep (_, a, p, b) -> metas a @ metas p @ metas b
  | SetEnum ts | Tuple ts -> List.concat_map metas ts
  | If (a, b, c) -> metas a @ metas b @ metas c

let rec fresh_name base avoid =
  if not (List.mem base avoid) && not (is_reserved base) then base
  else
    let rec go i = let s = base ^ string_of_int i in if List.mem s avoid || is_reserved s then go (i + 1) else s in
    go 0

(* capture-avoiding substitution of variables *)
let rec subst (sub : (string * tm) list) t =
  let fv_sub = List.concat_map (fun (_, v) -> free_vars v) sub in
  let bind x body_f =
    let sub' = List.filter (fun (y, _) -> y <> x) sub in
    if List.mem x fv_sub && sub' <> [] then begin
      let x' = fresh_name x (fv_sub @ List.concat_map (fun (y, _) -> [ y ]) sub' @ free_vars t) in
      (x', fun b -> subst ((x, Var x') :: sub') (body_f b))
    end else (x, fun b -> subst sub' (body_f b))
  in
  match t with
  | Var s -> (try List.assoc s sub with Not_found -> t)
  | Cst _ | Meta _ | Num _ -> t
  | App (a, b) -> App (subst sub a, subst sub b)
  | Imp (a, b) -> Imp (subst sub a, subst sub b)
  | Lam (x, ty, b) -> let x', f = bind x (fun b -> b) in Lam (x', ty, f b)
  | All (x, ty, b) -> let x', f = bind x (fun b -> b) in All (x', ty, f b)
  | Ex (x, ty, b) -> let x', f = bind x (fun b -> b) in Ex (x', ty, f b)
  | LamIn (x, a, b) -> let x', f = bind x (fun b -> b) in LamIn (x', subst sub a, f b)
  | AllIn (x, a, b) -> let x', f = bind x (fun b -> b) in AllIn (x', subst sub a, f b)
  | AllSub (x, a, b) -> let x', f = bind x (fun b -> b) in AllSub (x', subst sub a, f b)
  | ExIn (x, a, b) -> let x', f = bind x (fun b -> b) in ExIn (x', subst sub a, f b)
  | ExSub (x, a, b) -> let x', f = bind x (fun b -> b) in ExSub (x', subst sub a, f b)
  | Sep (x, a, p) -> let x', f = bind x (fun b -> b) in Sep (x', subst sub a, f p)
  | Repl (x, a, b) -> let x', f = bind x (fun b -> b) in Repl (x', subst sub a, f b)
  | ReplSep (x, a, p, b) -> let x', f = bind x (fun b -> b) in ReplSep (x', subst sub a, f p, f b)
  | SigmaIn (x, a, b) -> let x', f = bind x (fun b -> b) in SigmaIn (x', subst sub a, f b)
  | PiIn (x, a, b) -> let x', f = bind x (fun b -> b) in PiIn (x', subst sub a, f b)
  | FamUnion (x, a, b) -> let x', f = bind x (fun b -> b) in FamUnion (x', subst sub a, f b)
  | SetEnum ts -> SetEnum (List.map (subst sub) ts)
  | Tuple ts -> Tuple (List.map (subst sub) ts)
  | If (a, b, c) -> If (subst sub a, subst sub b, subst sub c)

(* rename binders of t whose names occur in `avoid` (capture avoidance for inst) *)
let rec rename_binders avoid t =
  let rb x body_f =
    if List.mem x avoid then
      let x' = fresh_name x (avoid @ free_vars t) in
      (x', fun b -> rename_binders avoid (subst [ (x, Var x') ] (body_f b)))
    else (x, fun b -> rename_binders avoid (body_f b))
  in
  match t with
  | Var _ | Cst _ | Meta _ | Num _ -> t
  | App (a, b) -> App (rename_binders avoid a, rename_binders avoid b)
  | Imp (a, b) -> Imp (rename_binders avoid a, rename_binders avoid b)
  | Lam (x, ty, b) -> let x', f = rb x (fun b -> b) in Lam (x', ty, f b)
  | All (x, ty, b) -> let x', f = rb x (fun b -> b) in All (x', ty, f b)
  | Ex (x, ty, b) -> let x', f = rb x (fun b -> b) in Ex (x', ty, f b)
  | LamIn (x, a, b) -> let x', f = rb x (fun b -> b) in LamIn (x', rename_binders avoid a, f b)
  | AllIn (x, a, b) -> let x', f = rb x (fun b -> b) in AllIn (x', rename_binders avoid a, f b)
  | AllSub (x, a, b) -> let x', f = rb x (fun b -> b) in AllSub (x', rename_binders avoid a, f b)
  | ExIn (x, a, b) -> let x', f = rb x (fun b -> b) in ExIn (x', rename_binders avoid a, f b)
  | ExSub (x, a, b) -> let x', f = rb x (fun b -> b) in ExSub (x', rename_binders avoid a, f b)
  | Sep (x, a, p) -> let x', f = rb x (fun b -> b) in Sep (x', rename_binders avoid a, f p)
  | Repl (x, a, b) -> let x', f = rb x (fun b -> b) in Repl (x', rename_binders avoid a, f b)
  | ReplSep (x, a, p, b) -> let x', f = rb x (fun b -> b) in ReplSep (x', rename_binders avoid a, f p, f b)
  | SigmaIn (x, a, b) -> let x', f = rb x (fun b -> b) in SigmaIn (x', rename_binders avoid a, f b)
  | PiIn (x, a, b) -> let x', f = rb x (fun b -> b) in PiIn (x', rename_binders avoid a, f b)
  | FamUnion (x, a, b) -> let x', f = rb x (fun b -> b) in FamUnion (x', rename_binders avoid a, f b)
  | SetEnum ts -> SetEnum (List.map (rename_binders avoid) ts)
  | Tuple ts -> Tuple (List.map (rename_binders avoid) ts)
  | If (a, b, c) -> If (rename_binders avoid a, rename_binders avoid b, rename_binders avoid c)

(* instantiate template placeholders (capture-avoiding) *)
let rec inst (sub : (string * tm) list) t =
  let avoid = List.concat_map (fun (_, v) -> free_vars v) sub in
  let t = if avoid = [] then t else rename_binders avoid t in
  inst_raw sub t

and inst_raw (sub : (string * tm) list) t =
  match t with
  | Meta s -> (try List.assoc s sub with Not_found -> t)
  | Var _ | Cst _ | Num _ -> t
  | App (a, b) -> App (inst_raw sub a, inst_raw sub b)
  | Imp (a, b) -> Imp (inst_raw sub a, inst_raw sub b)
  | Lam (x, ty, b) -> Lam (x, ty, inst_raw sub b)
  | All (x, ty, b) -> All (x, ty, inst_raw sub b)
  | Ex (x, ty, b) -> Ex (x, ty, inst_raw sub b)
  | LamIn (x, a, b) -> LamIn (x, inst_raw sub a, inst_raw sub b)
  | AllIn (x, a, b) -> AllIn (x, inst_raw sub a, inst_raw sub b)
  | AllSub (x, a, b) -> AllSub (x, inst_raw sub a, inst_raw sub b)
  | ExIn (x, a, b) -> ExIn (x, inst_raw sub a, inst_raw sub b)
  | ExSub (x, a, b) -> ExSub (x, inst_raw sub a, inst_raw sub b)
  | Sep (x, a, p) -> Sep (x, inst_raw sub a, inst_raw sub p)
  | Repl (x, a, b) -> Repl (x, inst_raw sub a, inst_raw sub b)
  | ReplSep (x, a, p, b) -> ReplSep (x, inst_raw sub a, inst_raw sub p, inst_raw sub b)
  | SigmaIn (x, a, b) -> SigmaIn (x, inst_raw sub a, inst_raw sub b)
  | PiIn (x, a, b) -> PiIn (x, inst_raw sub a, inst_raw sub b)
  | FamUnion (x, a, b) -> FamUnion (x, inst_raw sub a, inst_raw sub b)
  | SetEnum ts -> SetEnum (List.map (inst_raw sub) ts)
  | Tuple ts -> Tuple (List.map (inst_raw sub) ts)
  | If (a, b, c) -> If (inst_raw sub a, inst_raw sub b, inst_raw sub c)

(* Beta-normalise meta-level redexes (fun x:T => b) a, with the binder-name
   preference: a template binder applied as the sole argument of a lambda
   takes over the lambda's display name. *)
let rec beta t =
  match t with
  | App (f, a) ->
      let f = beta f and a = beta a in
      (match f with
       | Lam (x, _, b) -> beta (subst [ (x, a) ] b)
       | _ -> App (f, a))
  | Imp (a, b) -> Imp (beta a, beta b)
  | Lam (x, ty, b) -> Lam (x, ty, beta b)
  | All (x, ty, b) -> rename_binder (fun (x, b) -> All (x, ty, b)) x (beta b)
  | Ex (x, ty, b) -> rename_binder (fun (x, b) -> Ex (x, ty, b)) x (beta b)
  | LamIn (x, a, b) -> rename_binder (fun (x, b) -> LamIn (x, beta a, b)) x (beta b)
  | AllIn (x, a, b) -> rename_binder (fun (x, b) -> AllIn (x, beta a, b)) x (beta b)
  | AllSub (x, a, b) -> rename_binder (fun (x, b) -> AllSub (x, beta a, b)) x (beta b)
  | ExIn (x, a, b) -> rename_binder (fun (x, b) -> ExIn (x, beta a, b)) x (beta b)
  | ExSub (x, a, b) -> rename_binder (fun (x, b) -> ExSub (x, beta a, b)) x (beta b)
  | Sep (x, a, p) -> rename_binder (fun (x, p) -> Sep (x, beta a, p)) x (beta p)
  | Repl (x, a, b) -> rename_binder (fun (x, b) -> Repl (x, beta a, b)) x (beta b)
  | ReplSep (x, a, p, b) -> ReplSep (x, beta a, beta p, beta b)
  | SigmaIn (x, a, b) -> SigmaIn (x, beta a, beta b)
  | PiIn (x, a, b) -> PiIn (x, beta a, beta b)
  | FamUnion (x, a, b) -> FamUnion (x, beta a, beta b)
  | SetEnum ts -> SetEnum (List.map beta ts)
  | Tuple ts -> Tuple (List.map beta ts)
  | If (a, b, c) -> If (beta a, beta b, beta c)
  | Var _ | Cst _ | Meta _ | Num _ -> t

and rename_binder mk x b = mk (x, b)

(* Pre-beta pass: if a template binder x's body is (Lam(y,..,..)) applied to
   (Var x), rename x to y (unless y is captured).  Applied before `beta`. *)
let rec prefer_names t =
  let pick x b =
    match b with
    | App (Lam (y, _, body), Var x') when x' = x && y <> x && not (List.mem y (free_vars b)) ->
        (y, subst [ (x, Var y) ] b)
    | _ -> (x, b)
  in
  match t with
  | App (f, a) -> App (prefer_names f, prefer_names a)
  | Imp (a, b) -> Imp (prefer_names a, prefer_names b)
  | Lam (x, ty, b) -> let b = prefer_names b in let x, b = pick x b in Lam (x, ty, b)
  | All (x, ty, b) -> let b = prefer_names b in let x, b = pick x b in All (x, ty, b)
  | Ex (x, ty, b) -> let b = prefer_names b in let x, b = pick x b in Ex (x, ty, b)
  | LamIn (x, a, b) -> let b = prefer_names b in let x, b = pick x b in LamIn (x, prefer_names a, b)
  | AllIn (x, a, b) -> let b = prefer_names b in let x, b = pick x b in AllIn (x, prefer_names a, b)
  | AllSub (x, a, b) -> let b = prefer_names b in let x, b = pick x b in AllSub (x, prefer_names a, b)
  | ExIn (x, a, b) -> let b = prefer_names b in let x, b = pick x b in ExIn (x, prefer_names a, b)
  | ExSub (x, a, b) -> let b = prefer_names b in let x, b = pick x b in ExSub (x, prefer_names a, b)
  | Sep (x, a, p) -> let p = prefer_names p in let x, p = pick x p in Sep (x, prefer_names a, p)
  | Repl (x, a, b) -> let b = prefer_names b in let x, b = pick x b in Repl (x, prefer_names a, b)
  | ReplSep (x, a, p, b) -> ReplSep (x, prefer_names a, prefer_names p, prefer_names b)
  | SigmaIn (x, a, b) -> SigmaIn (x, prefer_names a, prefer_names b)
  | PiIn (x, a, b) -> PiIn (x, prefer_names a, prefer_names b)
  | FamUnion (x, a, b) -> FamUnion (x, prefer_names a, prefer_names b)
  | SetEnum ts -> SetEnum (List.map prefer_names ts)
  | Tuple ts -> Tuple (List.map prefer_names ts)
  | If (a, b, c) -> If (prefer_names a, prefer_names b, prefer_names c)
  | Var _ | Cst _ | Meta _ | Num _ -> t

let normalize t = beta (prefer_names t)

let rec apps f args = match args with [] -> f | a :: r -> apps (App (f, a)) r

(* ------------------------------------------------------------------------ *)
(* Template parser (Megalodon-syntax subset with ?placeholders).            *)
(* ------------------------------------------------------------------------ *)

exception Parse_error of string

type tok =
  | TName of string | TMeta of string | TNum of int | TSym of string
  | TLParen | TRParen | TLBrace | TRBrace | TComma | TBar | TColon | TEOF

let is_name_char c = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c = '_' || c = '\''
let sym_chars = "+-*/^<>=:\\.~|"

let tokenize s =
  let n = String.length s in
  let toks = ref [] in
  let i = ref 0 in
  while !i < n do
    let c = s.[!i] in
    if c = ' ' || c = '\t' || c = '\n' then incr i
    else if c = '(' then (toks := TLParen :: !toks; incr i)
    else if c = ')' then (toks := TRParen :: !toks; incr i)
    else if c = '{' then (toks := TLBrace :: !toks; incr i)
    else if c = '}' then (toks := TRBrace :: !toks; incr i)
    else if c = ',' then (toks := TComma :: !toks; incr i)
    else if c = '?' then begin
      let j = ref (!i + 1) in
      while !j < n && is_name_char s.[!j] do incr j done;
      toks := TMeta (String.sub s (!i + 1) (!j - !i - 1)) :: !toks; i := !j
    end
    else if c >= '0' && c <= '9' then begin
      let j = ref !i in
      while !j < n && s.[!j] >= '0' && s.[!j] <= '9' do incr j done;
      toks := TNum (int_of_string (String.sub s !i (!j - !i))) :: !toks; i := !j
    end
    else if is_name_char c then begin
      let j = ref !i in
      while !j < n && is_name_char s.[!j] do incr j done;
      let name = String.sub s !i (!j - !i) in
      if name = "c" && !j < n && s.[!j] = '=' && (!j + 1 >= n || not (String.contains sym_chars s.[!j + 1])) then
        (toks := TSym "c=" :: !toks; i := !j + 1)
      else (toks := TName name :: !toks; i := !j)
    end
    else if String.contains sym_chars c then begin
      let j = ref !i in
      while !j < n && String.contains sym_chars s.[!j] do incr j done;
      (* ":e" and "/:e" end with a letter *)
      if !j < n && s.[!j] = 'e' && s.[!j - 1] = ':' && (!j + 1 >= n || not (is_name_char s.[!j + 1])) then incr j;
      let sym = String.sub s !i (!j - !i) in
      (* split "|" and ":" when they are structural *)
      if sym = "|" then toks := TBar :: !toks
      else if sym = ":" then toks := TColon :: !toks
      else toks := TSym sym :: !toks;
      i := !j
    end
    else raise (Parse_error (Printf.sprintf "bad character %c in template %s" c s))
  done;
  List.rev !toks

let parse_template (s : string) : tm =
  let toks = ref (tokenize s) in
  let peek () = match !toks with t :: _ -> t | [] -> TEOF in
  let next () = match !toks with t :: r -> toks := r; t | [] -> TEOF in
  let expect t = if next () <> t then raise (Parse_error ("template: expected token in " ^ s)) in
  let rec parse_mty () =
    let a = (match next () with
      | TName "set" -> Set | TName "prop" -> Prop
      | TLParen -> let t = parse_mty () in expect TRParen; t
      | _ -> raise (Parse_error ("template: bad type in " ^ s))) in
    (match peek () with TSym "->" -> ignore (next ()); Arr (a, parse_mty ()) | _ -> a)
  in
  (* parse binder variable list: names then (: type | :e term | c= term) *)
  let rec parse_names acc =
    match peek () with TName x -> ignore (next ()); parse_names (x :: acc) | _ -> List.rev acc
  in
  let rec expr q =
    let lhs = (match peek () with
      | TName ("forall" | "exists" | "fun" | "Sigma_" | "Pi_" as kw) ->
          ignore (next ());
          let names = parse_names [] in
          if names = [] then raise (Parse_error ("template: binder without variables in " ^ s));
          let dom = (match next () with
            | TColon -> `Ty (parse_mty ())
            | TSym ":e" -> `In (expr 1010)
            | TSym "c=" -> `Sub (expr 1010)
            | TComma when kw <> "fun" -> `None
            | TSym "=>" when kw = "fun" -> `None
            | _ -> raise (Parse_error ("template: bad binder in " ^ s))) in
          (match dom with `None -> () | _ -> if kw = "fun" then expect (TSym "=>") else expect TComma);
          let body = expr 1010 in
          List.fold_right (fun x b ->
            match kw, dom with
            | "forall", `Ty ty -> All (x, ty, b)
            | "forall", `In a -> AllIn (x, a, b)
            | "forall", `Sub a -> AllSub (x, a, b)
            | "forall", `None -> All (x, Set, b)
            | "exists", `Ty ty -> Ex (x, ty, b)
            | "exists", `In a -> ExIn (x, a, b)
            | "exists", `Sub a -> ExSub (x, a, b)
            | "exists", `None -> Ex (x, Set, b)
            | "fun", `Ty ty -> Lam (x, ty, b)
            | "fun", `In a -> LamIn (x, a, b)
            | "fun", `None -> Lam (x, Set, b)
            | "Sigma_", `In a -> SigmaIn (x, a, b)
            | "Pi_", `In a -> PiIn (x, a, b)
            | _ -> raise (Parse_error ("template: unsupported binder form in " ^ s))) names body
      | TSym "\\/_" ->
          ignore (next ());
          let x = (match next () with TName x -> x | _ -> raise (Parse_error "famunion var")) in
          expect (TSym ":e"); let a = expr 1010 in expect TComma; let b = expr 1010 in FamUnion (x, a, b)
      | TName "if" ->
          ignore (next ());
          let c = expr 1010 in expect (TName "then"); let a = expr 1010 in expect (TName "else");
          let b = expr 1010 in If (c, a, b)
      | TSym sym when Hashtbl.mem prefix_syms sym ->
          ignore (next ());
          let cst, p = Hashtbl.find prefix_syms sym in
          if q <= p then raise (Parse_error ("template: prefix operator needs parentheses in " ^ s));
          let a = expr (p + 1) in App (Cst cst, a)
      | _ -> app ()) in
    infix_loop q lhs
  and infix_loop q lhs =
    match peek () with
    | TSym sym when Hashtbl.mem infix_syms sym ->
        let cst, p, assoc = Hashtbl.find infix_syms sym in
        if q <= p then lhs
        else begin
          ignore (next ());
          let rq = (match assoc with RightA -> p + 1 | _ -> p) in
          (* Megalodon: a binder-like right operand extends to the end (unless parenthesised) *)
          let starts_binder = (match !toks with
            | TName ("forall" | "exists" | "fun" | "Sigma_" | "Pi_" | "if") :: _ | TSym "\\/_" :: _ -> true
            | TSym sym :: TName ("forall" | "exists" | "fun" | "Sigma_" | "Pi_" | "if") :: _ when Hashtbl.mem prefix_syms sym -> true
            | _ -> false) in
          let rhs = expr rq in
          let t = (match cst with
            | "->" -> Imp (lhs, rhs)
            | _ -> App (App (Cst cst, lhs), rhs)) in
          if starts_binder then t else infix_loop q t
        end
    | TSym sym when Hashtbl.mem postfix_syms sym ->
        let cst, p = Hashtbl.find postfix_syms sym in
        if q <= p then lhs else (ignore (next ()); infix_loop q (App (Cst cst, lhs)))
    | _ -> lhs
  and app () =
    let h = atom () in
    let rec args f =
      match peek () with
      | TName x when not (List.mem x [ "then"; "else"; "forall"; "exists"; "fun"; "if"; "Sigma_"; "Pi_" ]) ->
          ignore (next ()); args (App (f, name_tm x))
      | TMeta m -> ignore (next ()); args (App (f, Meta m))
      | TNum n -> ignore (next ()); args (App (f, Num n))
      | TLParen | TLBrace -> args (App (f, atom ()))
      | _ -> f
    in
    args h
  and name_tm x = if Hashtbl.mem sig_names x then Cst x else Var x
  and atom () =
    match next () with
    | TName x -> name_tm x
    | TMeta m -> Meta m
    | TNum n -> Num n
    | TLParen ->
        let a = expr 1023 in
        (match peek () with
         | TComma ->
             let rec more acc = (match peek () with TComma -> ignore (next ()); more (expr 1023 :: acc) | _ -> List.rev acc) in
             let ts = more [ a ] in expect TRParen; Tuple ts
         | _ -> expect TRParen; a)
    | TLBrace ->
        (* {x :e A | p} | {t | x :e A} | {t | x :e A, p} | {a,b,c} *)
        (match !toks with
         | TName x :: TSym ":e" :: rest ->
             toks := rest;
             let a = expr 500 in
             (match next () with
              | TBar -> let p = expr 1023 in expect TRBrace; Sep (x, a, p)
              | TRBrace -> Sep (x, a, Cst "True")
              | _ -> raise (Parse_error ("template: bad separation in " ^ s)))
         | _ ->
             let a = expr 1023 in
             (match next () with
              | TBar ->
                  let x = (match next () with TName x -> x | _ -> raise (Parse_error "replacement var")) in
                  expect (TSym ":e");
                  let dom = expr 1023 in
                  (match next () with
                   | TRBrace -> Repl (x, dom, a)
                   | TComma -> let p = expr 1023 in expect TRBrace; ReplSep (x, dom, p, a)
                   | _ -> raise (Parse_error ("template: bad replacement in " ^ s)))
              | TComma ->
                  let rec more acc = (match peek () with TComma -> ignore (next ()); more (expr 1023 :: acc) | _ -> List.rev acc) in
                  let ts = more [ a ] in expect TRBrace; SetEnum ts
              | TRBrace -> SetEnum [ a ]
              | _ -> raise (Parse_error ("template: bad set braces in " ^ s))))
    | _ -> raise (Parse_error ("template: unexpected token in " ^ s))
  in
  let t = expr 1023 in
  if peek () <> TEOF then raise (Parse_error ("template: trailing tokens in " ^ s));
  t
