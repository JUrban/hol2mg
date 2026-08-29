(* Literal semantic layer (docs/DESIGN.md §21.2): the syntax-directed set-theoretic
   interpretation of typed HOL terms.  Private: consumed only by the certification
   modules and the bridge generator, never pretty-printed for the public library.

   L[tau]  carrier of a type (a Megalodon set term)
   L[t]    set-valued interpretation of a term
   LP[t]   propositional interpretation of a Boolean term (deep logical structure) *)

open Hol

exception Literal_unsupported of string
let unsupported fmt = Printf.ksprintf (fun s -> raise (Literal_unsupported s)) fmt

(* ------------------------------------------------------------------------ *)
(* Primitive interface (§21.4).  Everything else is interpreted from its    *)
(* kernel definition.                                                       *)
(* ------------------------------------------------------------------------ *)

(* HOL type constructors with primitive carriers: name -> (arity, carrier builder) *)
let primitive_types : (string * (Mg.tm list -> Mg.tm)) list =
  [ ("bool", fun _ -> Mg.Num 2);
    ("fun", (function [ a; b ] -> Mg.App (Mg.App (Mg.Cst "setexp", b), a) | _ -> assert false));
    ("prod", (function [ a; b ] -> Mg.App (Mg.App (Mg.Cst "setprod", a), b) | _ -> assert false));
    ("num", fun _ -> Mg.Cst "omega");
    ("ind", fun _ -> Mg.Cst "omega");
    ("real", fun _ -> Mg.Cst "R");
    ("1", fun _ -> Mg.Num 1);
    ("list", (function [ a ] -> Mg.App (Mg.Cst "finseq", a) | _ -> assert false));
    ("option", (function [ a ] -> Mg.App (Mg.App (Mg.Cst "setsum", Mg.Num 1), a) | _ -> assert false));
    ("sum", (function [ a; b ] -> Mg.App (Mg.App (Mg.Cst "setsum", a), b) | _ -> assert false)) ]

(* HOL constants with primitive literal definitions (defined in mglib/literal/model.mg);
   name -> Megalodon name.  Their carrier arguments follow the generic type as for every
   other constant. *)
let primitive_consts : (string * string) list =
  [ ("=", "hl_eq"); ("@", "hl_select"); ("_0", "hl_zero"); ("SUC", "hl_SUC"); (",", "hl_pair");
    ("one", "hl_one"); ("NIL", "hl_NIL"); ("CONS", "hl_CONS"); ("NONE", "hl_NONE"); ("SOME", "hl_SOME");
    ("INL", "hl_INL"); ("INR", "hl_INR");
    ("real_of_num", "hl_real_of_num"); ("real_neg", "hl_real_neg"); ("real_add", "hl_real_add");
    ("real_mul", "hl_real_mul"); ("real_le", "hl_real_le"); ("real_inv", "hl_real_inv") ]

(* symbolic HOL constant names -> Megalodon identifiers *)
let symbolic_names : (string * string) list =
  [ ("=", "eq"); ("@", "select"); ("!", "forall"); ("?", "exists"); ("?!", "exists_unique");
    ("/\\", "and"); ("\\/", "or"); ("~", "not"); ("==>", "imp"); (",", "pair");
    ("+", "add"); ("-", "sub"); ("*", "mul"); ("<", "lt"); ("<=", "le"); (">", "gt"); (">=", "ge");
    ("..", "numseg"); ("$", "vindex"); ("%", "vmul"); ("**", "mmul"); ("%%", "mcmul"); ("--", "vneg");
    ("-->", "tendsto"); ("--->", "tendsto_real"); ("++", "poly_add"); ("_0", "zero") ]

let mg_name_of_const c =
  if List.mem_assoc c primitive_consts then List.assoc c primitive_consts
  else
    let base = (match List.assoc_opt c symbolic_names with
      | Some s -> s
      | None ->
          if c <> "" && String.for_all (fun ch -> Mg.is_name_char ch) c then String.map (fun ch -> if ch = '\'' then '_' else ch) c
          else "sym_" ^ String.concat "" (List.map (fun ch -> Printf.sprintf "%02x" (Char.code ch)) (List.init (String.length c) (String.get c)))) in
    "hl_" ^ base

(* ------------------------------------------------------------------------ *)
(* Types.                                                                   *)
(* ------------------------------------------------------------------------ *)

(* type variables of a type in order of first occurrence *)
let rec tyvars_ordered ty acc =
  match ty with
  | TyVar a -> if List.mem a acc then acc else acc @ [ a ]
  | TyApp (_, args) -> List.fold_left (fun acc t -> tyvars_ordered t acc) acc args

let rec match_ty (pat : ty) (ty : ty) (sub : (string * ty) list) : (string * ty) list =
  match pat, ty with
  | TyVar a, _ ->
      (match List.assoc_opt a sub with
       | Some t when t = ty -> sub
       | Some _ -> raise (Literal_unsupported "type matching: inconsistent instance")
       | None -> (a, ty) :: sub)
  | TyApp (c, ps), TyApp (d, ts) when c = d && List.length ps = List.length ts ->
      List.fold_left2 (fun sub p t -> match_ty p t sub) sub ps ts
  | _ -> raise (Literal_unsupported "type matching: constructor mismatch")

type ctx = {
  tyvar_names : (string * string) list;             (* HOL tyvar -> Megalodon parameter *)
  consts : (string, ty) Hashtbl.t;                  (* generic types of constants *)
  supported : (string, bool) Hashtbl.t;             (* constant -> supported? *)
  tydefs : (string, string list) Hashtbl.t;         (* translated type definition -> tyvar order of the carrier *)
  mutable vars : (string * string) list;            (* HOL free var -> Megalodon name *)
  mutable used : string list;
}

let sanitize_var = Elab.sanitize_var

let fresh ctx base =
  let base = sanitize_var base in
  (* Megalodon identifiers start with a letter: HOL genvars (_123) get a prefix *)
  let base = if base = "" || not (let c = base.[0] in (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) then "v" ^ base else base in
  let taken n = List.mem n ctx.used || Hashtbl.mem Mg.sig_names n || List.mem n Mg.reserved_words in
  let n = if taken base then (let rec go i = let n = base ^ string_of_int i in if taken n then go (i + 1) else n in go 1) else base in
  ctx.used <- n :: ctx.used; n

let release ctx n = ctx.used <- List.filter (( <> ) n) ctx.used

let rec carrier ctx (ty : ty) : Mg.tm =
  match ty with
  | TyVar a -> Mg.Var (try List.assoc a ctx.tyvar_names with Not_found -> Elab.sanitize_tyvar a)
  | TyApp (c, args) ->
      (match List.assoc_opt c primitive_types with
       | Some f -> f (List.map (carrier ctx) args)
       | None ->
           (match Hashtbl.find_opt ctx.tydefs c with
            | Some _ -> Mg.apps (Mg.Cst ("hl_ty_" ^ sanitize_var c)) (List.map (carrier ctx) args)
            | None -> unsupported "type constructor %s has no literal carrier" c))

(* ------------------------------------------------------------------------ *)
(* Terms and formulas.                                                      *)
(* ------------------------------------------------------------------------ *)

let mg_in x s = Mg.App (Mg.App (Mg.Cst "In", x), s)
let mg_eq a b = Mg.App (Mg.App (Mg.Cst "eq", a), b)
let mg_iff a b = Mg.App (Mg.App (Mg.Cst "iff", a), b)
let mg_and a b = Mg.App (Mg.App (Mg.Cst "and", a), b)
let mg_or a b = Mg.App (Mg.App (Mg.Cst "or", a), b)
let mg_not a = Mg.App (Mg.Cst "not", a)
let mg_neq a b = Mg.App (Mg.App (Mg.Cst "neq", a), b)
let one = Mg.Num 1 and zero = Mg.Num 0

let logical_heads = [ "T"; "F"; "~"; "/\\"; "\\/"; "==>"; "="; "!"; "?"; "COND" ]

(* a Boolean term whose head is translated deeply by LP *)
let is_logical (t : tm) =
  match head_and_args t with
  | Const ("COND", _), [ _; _; _ ] -> type_of [] t = bool_ty
  | Const (c, _), args ->
      List.mem c logical_heads
      && (match c with
          | "T" | "F" -> args = []
          | "~" -> List.length args = 1
          | "!" | "?" -> (match args with [ Lam _ ] -> true | _ -> false)
          | _ -> List.length args = 2)
  | _ -> false

let const_ref ctx c ty =
  (match Hashtbl.find_opt ctx.supported c with
   | Some true -> ()
   | Some false -> unsupported "constant %s is outside the literal interface" c
   | None -> unsupported "constant %s has no literal definition" c);
  let generic = (try Hashtbl.find ctx.consts c with Not_found -> unsupported "constant %s has no generic type" c) in
  let sub = match_ty generic ty [] in
  let tvs = tyvars_ordered generic [] in
  Mg.apps (Mg.Cst (mg_name_of_const c)) (List.map (fun a -> carrier ctx (List.assoc a sub)) tvs)

let rec lterm ctx (t : tm) : Mg.tm =
  if type_of [] t = bool_ty && is_logical t then Mg.If (lprop ctx t, one, zero)
  else
    match t with
    | Bound _ -> failwith "lterm: bound variable"
    | Free (s, _) -> Mg.Var (try List.assoc s ctx.vars with Not_found -> failwith ("lterm: unknown variable " ^ s))
    | Const (c, ty) -> const_ref ctx c ty
    | App (f, x) -> Mg.App (lterm ctx f, lterm ctx x)
    | Lam (x, ty, body) ->
        let n = fresh ctx x in
        ctx.vars <- (x ^ "\000" ^ n, n) :: ctx.vars;
        let body' = open_with (Free (x ^ "\000" ^ n, ty)) body in
        let b = lterm ctx body' in
        ctx.vars <- List.remove_assoc (x ^ "\000" ^ n) ctx.vars; release ctx n;
        Mg.LamIn (n, carrier ctx ty, b)

and lprop ctx (t : tm) : Mg.tm =
  match head_and_args t with
  | Const ("T", _), [] -> Mg.Cst "True"
  | Const ("F", _), [] -> Mg.Cst "False"
  | Const ("~", _), [ a ] -> mg_not (lprop ctx a)
  | Const ("/\\", _), [ a; b ] -> mg_and (lprop ctx a) (lprop ctx b)
  | Const ("\\/", _), [ a; b ] -> mg_or (lprop ctx a) (lprop ctx b)
  | Const ("==>", _), [ a; b ] -> Mg.Imp (lprop ctx a, lprop ctx b)
  | Const ("=", cty), [ a; b ] ->
      let ty, _ = dest_fun_ty cty in
      if ty = bool_ty then mg_iff (lprop ctx a) (lprop ctx b) else mg_eq (lterm ctx a) (lterm ctx b)
  | Const ("!", _), [ Lam (x, ty, body) ] -> let n, b = lbinder ctx x ty body in Mg.AllIn (n, carrier ctx ty, b)
  | Const ("?", _), [ Lam (x, ty, body) ] -> let n, b = lbinder ctx x ty body in Mg.ExIn (n, carrier ctx ty, b)
  | Const ("COND", _), [ c; a; b ] when type_of [] t = bool_ty ->
      let c' = lprop ctx c in
      mg_or (mg_and c' (lprop ctx a)) (mg_and (mg_not c') (lprop ctx b))
  | _ -> mg_eq (lterm ctx t) one

and lbinder ctx x ty body =
  let n = fresh ctx x in
  let key = x ^ "\000" ^ n in
  ctx.vars <- (key, n) :: ctx.vars;
  let b = lprop ctx (open_with (Free (key, ty)) body) in
  ctx.vars <- List.remove_assoc key ctx.vars; release ctx n;
  (n, b)

(* ------------------------------------------------------------------------ *)
(* Definitions, type definitions, statements.                               *)
(* ------------------------------------------------------------------------ *)

let new_ctx consts supported tydefs tv_names =
  { tyvar_names = tv_names; consts; supported; tydefs; vars = []; used = List.map snd tv_names }

let tyvar_params (tvs : string list) = List.map (fun a -> (a, Elab.sanitize_tyvar a)) tvs

let mty_of_arity k = List.fold_right (fun _ acc -> Mg.Arr (Mg.Set, acc)) (List.init k (fun i -> i)) Mg.Set

(* Definition hl_c : set -> .. -> set := fun A .. => L[rhs] *)
let definition consts supported tydefs (c : string) (generic : ty) (rhs : tm) : string * Mg.mty * Mg.tm =
  let tvs = tyvars_ordered generic [] in
  let tv_names = tyvar_params tvs in
  let ctx = new_ctx consts supported tydefs tv_names in
  let body = lterm ctx rhs in
  let body = List.fold_right (fun (_, n) acc -> Mg.Lam (n, Mg.Set, acc)) tv_names body in
  (mg_name_of_const c, mty_of_arity (List.length tvs), body)

(* A type definition T (abs : rho -> T, rep : T -> rho, predicate P : rho -> bool, read off the
   exported bijection theorem) becomes the subtype hl_ty_T A.. = {x :e L[rho] | L[P] x = 1} and
   the generic abs/rep of model.mg. *)
let rec occurs_bound i t =
  match t with
  | Bound j -> i = j
  | App (f, x) -> occurs_bound i f || occurs_bound i x
  | Lam (_, _, b) -> occurs_bound (i + 1) b
  | _ -> false

let dest_tydef_bij (td : type_definition) =
  (* bijection theorem: (!a. abs (rep a) = a) /\ (!r. P r <=> rep (abs r) = r) *)
  match head_and_args td.td_bij with
  | Const ("/\\", _), [ _; second ] ->
      (match second with
       | App (Const ("!", _), Lam (_, rho, body)) ->
           (match head_and_args body with
            | Const ("=", _), [ p; _ ] ->
                (* the predicate may arrive beta-reduced: abstract the representative again *)
                (match p with
                 | App (pf, Bound 0) when not (occurs_bound 0 pf) -> (rho, pf)
                 | _ -> (rho, Lam ("r", rho, p)))
            | _ -> unsupported "type definition %s: unexpected bijection theorem" td.td_name)
       | _ -> unsupported "type definition %s: unexpected bijection theorem" td.td_name)
  | _ -> unsupported "type definition %s: unexpected bijection theorem" td.td_name

let tydef consts supported tydefs (td : type_definition) (arity : int) : (string * Mg.mty * Mg.tm) list =
  let rho, pred = dest_tydef_bij td in
  (* the type's parameters are the predicate's type variables in sorted order
     (HOL Light new_basic_type_definition) *)
  let tvs = List.sort compare (tyvars_ordered (type_of [] pred) []) in
  if List.length tvs <> arity then unsupported "type definition %s: %d type variables but arity %d" td.td_name (List.length tvs) arity;
  let tv_names = tyvar_params tvs in
  let ctx = new_ctx consts supported tydefs tv_names in
  let carrier_rho = carrier ctx rho in
  let p = lterm ctx pred in
  let lam body = List.fold_right (fun (_, n) acc -> Mg.Lam (n, Mg.Set, acc)) tv_names body in
  let ty_name = "hl_ty_" ^ sanitize_var td.td_name in
  let x = fresh ctx "x" in
  let sub = Mg.Sep (x, carrier_rho, mg_eq (Mg.App (p, Mg.Var x)) one) in
  let k = List.length tvs in
  [ (ty_name, mty_of_arity k, lam sub);
    (mg_name_of_const td.td_abs, mty_of_arity k, lam (Mg.apps (Mg.Cst "hl_subtype_abs") [ carrier_rho; p ]));
    (mg_name_of_const td.td_rep, mty_of_arity k, lam (Mg.apps (Mg.Cst "hl_subtype_rep") [ carrier_rho; p ])) ]

(* closed literal statement of a sequent, in the same variable order as the native layer *)
let statement consts supported tydefs (seq : sequent) : Mg.tm * (string * string) list * (string * ty * string) list =
  let all = seq.concl :: seq.hyps in
  let tvs = List.sort compare (uniq (List.concat_map tyvars_of_tm all)) in
  let named = List.filter (fun a -> a = "" || a.[0] <> '?') tvs in
  let letters = List.init 26 (fun i -> String.make 1 (Char.chr (65 + i))) in
  let used = ref (List.map Elab.sanitize_tyvar named) in
  let tv_names = List.map (fun a ->
    if a <> "" && a.[0] = '?' then begin
      let l = (match List.find_opt (fun l -> not (List.mem l !used)) letters with Some l -> l | None -> Elab.sanitize_tyvar a) in
      used := l :: !used; (a, l)
    end else (a, Elab.sanitize_tyvar a)) tvs in
  let ctx = new_ctx consts supported tydefs tv_names in
  let fvs = uniq (List.concat_map frees all) in
  let decls = List.map (fun (s, ty) -> let n = fresh ctx s in ctx.vars <- (s, n) :: ctx.vars; (s, ty, n)) fvs in
  let body = List.fold_right (fun h acc -> Mg.Imp (lprop ctx h, acc)) seq.hyps (lprop ctx seq.concl) in
  let body = List.fold_right (fun (_, ty, n) acc -> Mg.AllIn (n, carrier ctx ty, acc)) decls body in
  let body = List.fold_right (fun (_, n) acc -> Mg.Imp (mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc)) tv_names body in
  let body = List.fold_right (fun (_, n) acc -> Mg.All (n, Mg.Set, acc)) tv_names body in
  (body, tv_names, decls)

(* ------------------------------------------------------------------------ *)
(* Support analysis over the export.                                        *)
(* ------------------------------------------------------------------------ *)

let rec consts_of_tm t acc =
  match t with
  | Const (c, _) -> if List.mem c acc then acc else c :: acc
  | App (f, x) -> consts_of_tm x (consts_of_tm f acc)
  | Lam (_, _, b) -> consts_of_tm b acc
  | _ -> acc

let rec tycons_of_ty ty acc =
  match ty with
  | TyVar _ -> acc
  | TyApp (c, args) -> List.fold_left (fun acc t -> tycons_of_ty t acc) (if List.mem c acc then acc else c :: acc) args

let rec tycons_of_tm t acc =
  match t with
  | Free (_, ty) | Const (_, ty) -> tycons_of_ty ty acc
  | App (f, x) -> tycons_of_tm x (tycons_of_tm f acc)
  | Lam (_, ty, b) -> tycons_of_tm b (tycons_of_ty ty acc)
  | Bound _ -> acc

type analysis = {
  consts : (string, ty) Hashtbl.t;
  supported : (string, bool) Hashtbl.t;      (* constants *)
  tydefs : (string, string list) Hashtbl.t;  (* translated type definitions *)
  reasons : (string, string) Hashtbl.t;      (* unsupported constant -> reason *)
  definitions : (string * ty * tm) list;     (* supported kernel definitions, kernel order *)
  type_definitions : (type_definition * int) list;
}

let analyse (ex : export) : analysis =
  let consts = Hashtbl.create 512 in
  List.iter (fun (c, ty) -> Hashtbl.replace consts c ty) ex.constants;
  let supported = Hashtbl.create 512 and reasons = Hashtbl.create 64 and tydefs = Hashtbl.create 16 in
  let arities = Hashtbl.create 32 in
  List.iter (fun (c, k) -> Hashtbl.replace arities c k) ex.type_constructors;
  let prim_ty c = List.mem_assoc c primitive_types in
  (* type definitions: primitive types are skipped; others become subtypes *)
  let tds = List.filter_map (fun (td : type_definition) ->
    if prim_ty td.td_name then None
    else (try let _ = dest_tydef_bij td in Some (td, (try Hashtbl.find arities td.td_name with Not_found -> 0))
          with Literal_unsupported m -> prerr_endline ("literal: type definition " ^ td.td_name ^ " skipped: " ^ m); None)) ex.type_definitions in
  List.iter (fun ((td : type_definition), _) -> Hashtbl.replace tydefs td.td_name []) tds;
  let ty_ok ty = List.for_all (fun c -> prim_ty c || Hashtbl.mem tydefs c) (tycons_of_ty ty []) in
  (* abs/rep functions of primitive types are unsupported *)
  List.iter (fun (td : type_definition) ->
    if prim_ty td.td_name then begin
      Hashtbl.replace supported td.td_abs false; Hashtbl.replace reasons td.td_abs ("representation function of the primitive type " ^ td.td_name);
      Hashtbl.replace supported td.td_rep false; Hashtbl.replace reasons td.td_rep ("representation function of the primitive type " ^ td.td_name)
    end) ex.type_definitions;
  List.iter (fun (c, _) -> if List.mem_assoc c primitive_consts then Hashtbl.replace supported c true) ex.constants;
  (* abs/rep of translated type definitions *)
  List.iter (fun ((td : type_definition), _) -> Hashtbl.replace supported td.td_abs true; Hashtbl.replace supported td.td_rep true) tds;
  let defs = ref [] in
  List.iter (fun (d : thm_record) ->
    match head_and_args d.seq.concl with
    | Const ("=", _), [ Const (c, cty); rhs ] ->
        if Hashtbl.mem supported c then ()   (* primitive or type-definition constant: kernel definition ignored *)
        else begin
          let bad_ty = not (ty_ok cty) in
          let bad_consts = List.filter (fun k -> k <> c && Hashtbl.find_opt supported k <> Some true) (consts_of_tm rhs []) in
          let bad_tycons = List.filter (fun k -> not (prim_ty k || Hashtbl.mem tydefs k)) (tycons_of_tm rhs []) in
          if bad_ty || bad_consts <> [] || bad_tycons <> [] then begin
            Hashtbl.replace supported c false;
            Hashtbl.replace reasons c
              (if bad_ty then "type mentions an unsupported type constructor"
               else if bad_tycons <> [] then "definition mentions unsupported type " ^ String.concat "," bad_tycons
               else "definition uses unsupported " ^ String.concat "," bad_consts)
          end else begin
            Hashtbl.replace supported c true;
            defs := (c, cty, rhs) :: !defs
          end
        end
    | _ -> ()) ex.basic_definitions;
  List.iter (fun (c, _) -> if not (Hashtbl.mem supported c) then begin
      Hashtbl.replace supported c false; Hashtbl.replace reasons c "no kernel definition (axiomatic or construction constant)" end) ex.constants;
  { consts; supported; tydefs; reasons; definitions = List.rev !defs; type_definitions = tds }

let unsupported_in (a : analysis) (seq : sequent) : string list =
  let all = seq.concl :: seq.hyps in
  let cs = List.filter (fun c -> Hashtbl.find_opt a.supported c <> Some true) (uniq (List.concat_map (fun t -> consts_of_tm t []) all)) in
  let tcs = List.filter (fun c -> not (List.mem_assoc c primitive_types || Hashtbl.mem a.tydefs c)) (uniq (List.concat_map (fun t -> tycons_of_tm t []) all)) in
  cs @ List.map (fun c -> "type " ^ c) tcs
