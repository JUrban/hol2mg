(* Native elaboration: HOL IR -> Megalodon IR under the view discipline. *)

open Hol
module R = Registry

type carrier = Mg.tm

type view =
  | VSet of carrier
  | VProp
  | VMetaFun of carrier list * carrier
  | VMetaPred of carrier list
  | VSubset of carrier

exception Unsupported of string      (* pending_mapping style failures *)
exception Elab_error of string       (* internal / invariant failures *)

let unsupported fmt = Printf.ksprintf (fun s -> raise (Unsupported s)) fmt
let fail fmt = Printf.ksprintf (fun s -> raise (Elab_error s)) fmt

type status = { mutable classes : string list; mutable bridges : string list; mutable notes : string list }

type ctx = {
  reg : R.t;
  tyvar_names : (string * string) list;                 (* HOL tyvar -> Megalodon parameter name *)
  mutable vars : (string * (ty * view * string)) list;   (* HOL free var -> (type, view, target name) *)
  mutable used : string list;                            (* target names in use *)
  st : status;
}

let note ctx s = if not (List.mem s ctx.st.notes) then ctx.st.notes <- s :: ctx.st.notes
let use_class ctx e_class bridge =
  if not (List.mem e_class ctx.st.classes) then ctx.st.classes <- e_class :: ctx.st.classes;
  if bridge <> "" && not (List.mem bridge ctx.st.bridges) then ctx.st.bridges <- bridge :: ctx.st.bridges

let string_of_view = function
  | VSet c -> "set(" ^ Mg.to_string c ^ ")"
  | VProp -> "prop"
  | VMetaFun (ds, c) -> "metafun(" ^ String.concat "," (List.map Mg.to_string ds) ^ " -> " ^ Mg.to_string c ^ ")"
  | VMetaPred ds -> "metapred(" ^ String.concat "," (List.map Mg.to_string ds) ^ ")"
  | VSubset c -> "subset(" ^ Mg.to_string c ^ ")"

(* ------------------------------------------------------------------------ *)
(* Carriers.                                                                *)
(* ------------------------------------------------------------------------ *)

let sanitize_tyvar s =
  if String.length s > 0 && s.[0] = '?' then "T" ^ String.sub s 1 (String.length s - 1)
  else String.map (fun c -> if c = '\'' then '_' else c) s

let rec carrier ctx (ty : ty) : carrier =
  match ty with
  | TyVar a -> Mg.Var (try List.assoc a ctx.tyvar_names with Not_found -> sanitize_tyvar a)
  | TyApp ("bool", []) -> Mg.Num 2
  | TyApp ("fun", [ a; TyApp ("bool", []) ]) -> Mg.App (Mg.Cst "Power", carrier ctx a)
  | TyApp ("fun", [ a; b ]) -> Mg.App (Mg.App (Mg.Cst "setexp", carrier ctx b), carrier ctx a)
  | TyApp (c, args) ->
      (match Hashtbl.find_opt ctx.reg.R.types c with
       | None -> unsupported "no carrier mapping for type constructor %s (in %s)" c (string_of_ty ty)
       | Some e when e.R.t_status = "internal" -> unsupported "internal construction type %s" c
       | Some e ->
           use_class ctx e.R.t_class e.R.t_bridge;
           if e.R.t_status = "pending" then unsupported "type mapping for %s is pending" c;
           let sub = List.mapi (fun i a -> (string_of_int i, carrier ctx a)) args in
           Mg.normalize (Mg.inst sub e.R.t_carrier))

(* the natural meta view of a HOL type *)
let rec view_of_type ctx (ty : ty) : view =
  match ty with
  | TyApp ("bool", []) -> VProp
  | TyApp ("fun", _) ->
      let doms, res = strip_fun_ty ty in
      if res = bool_ty then VMetaPred (List.map (carrier ctx) doms)
      else VMetaFun (List.map (carrier ctx) doms, carrier ctx res)
  | _ -> VSet (carrier ctx ty)

let data_view ctx (ty : ty) : view =
  match ty with
  | TyApp ("fun", [ a; TyApp ("bool", []) ]) -> VSubset (carrier ctx a)
  | _ -> VSet (carrier ctx ty)

let is_meta = function VMetaFun _ | VMetaPred _ -> true | _ -> false

(* ------------------------------------------------------------------------ *)
(* Names.                                                                   *)
(* ------------------------------------------------------------------------ *)

let sanitize_var s =
  let b = Buffer.create (String.length s) in
  String.iter (fun c -> if Mg.is_name_char c then Buffer.add_char b c else Buffer.add_char b '_') s;
  let s' = Buffer.contents b in
  let alnum = String.exists (fun c -> c <> '_' && c <> '\'') s' in
  if not alnum then (match s with "<<" | "<<<" | "<" | "<=" | "<<=" -> "lt" | "op" -> "op" | "+" | "*" -> "op" | _ -> "rel")
  else if s'.[0] >= '0' && s'.[0] <= '9' then "v" ^ s' else s'

let fresh ctx base =
  let base = sanitize_var base in
  let n = Mg.fresh_name base ctx.used in
  ctx.used <- n :: ctx.used; n

(* fresh names for closure premises: x, y, z, w, ... *)
let fresh_seq ctx n =
  let names = [ "x"; "y"; "z"; "w"; "u"; "v" ] in
  List.init n (fun i -> fresh ctx (if i < List.length names then List.nth names i else "x"))

let release ctx n = ctx.used <- List.filter (( <> ) n) ctx.used

(* ------------------------------------------------------------------------ *)
(* Usage analysis: is every occurrence of variable v meta-compatible?       *)
(* An occurrence is compatible when applied to >= arity args, or when it    *)
(* sits in a meta slot (metafun/metapred template argument, operand of      *)
(* equality at function type, branch of a function-typed COND).             *)
(* ------------------------------------------------------------------------ *)

let rec fun_arity ty = match ty with TyApp ("fun", [ _; b ]) -> 1 + fun_arity b | _ -> 0

let all_occurrences_meta ctx (v : string * ty) (arity : int) (t : tm) : bool =
  let ok = ref true in
  (* expect = number of further arguments the position will supply *)
  let rec walk expect t =
    let h, args = head_and_args t in
    let m = List.length args in
    (match h with
     | Free (s, ty) when (s, ty) = v -> if m + expect < arity then ok := false
     | _ -> ());
    (match h with
     | Free _ | Bound _ -> List.iter (walk 0) args
     | Const ("=", TyApp ("fun", [ ty; _ ])) when m = 2 ->
         let r = fun_arity ty in List.iter (walk r) args
     | Const ("COND", TyApp ("fun", [ _; TyApp ("fun", [ ty; _ ]) ])) when m = 3 ->
         walk 0 (List.hd args); List.iter (walk (fun_arity ty)) (List.tl args)
     | Const (("!" | "?" | "?!" | "@"), _) -> List.iter (walk 1) args
     | Const (c, cty) ->
         let entry = R.find_const ctx.reg c cty in
         let roles = (match entry with Some (e, _) -> e.R.c_args | None -> []) in
         let sdoms = (match entry with Some (e, _) -> fst (strip_fun_ty e.R.c_scheme) | None -> []) in
         List.iteri (fun i a ->
           let role = (try List.nth roles i with _ -> R.RSet) in
           let slot = (match role with
             | R.RMetaFun (Some k) | R.RMetaPred (Some k) -> k
             | R.RMetaFun None | R.RMetaPred None -> (try fun_arity (List.nth sdoms i) with _ -> 0)
             | _ -> 0) in
           walk slot a) args
     | Lam (_, _, b) -> List.iter (walk 0) args; walk 0 b
     | App _ -> fail "walk: application head")
  in
  walk 0 t;
  !ok

(* choose the view of a variable for a scope *)
let choose_view ctx (name, ty) (scope : tm list) : view =
  match view_of_type ctx ty with
  | VProp -> VProp   (* TODO: bool data occurrences *)
  | (VMetaFun _ | VMetaPred _) as mv ->
      let arity = fun_arity ty in
      if List.for_all (all_occurrences_meta ctx (name, ty) arity) scope then mv else data_view ctx ty
  | v -> v

(* ------------------------------------------------------------------------ *)
(* Coercions between views.                                                 *)
(* ------------------------------------------------------------------------ *)

let mg_in x s = Mg.App (Mg.App (Mg.Cst "In", x), s)
let mg_eq a b = Mg.App (Mg.App (Mg.Cst "eq", a), b)
let mg_iff a b = Mg.App (Mg.App (Mg.Cst "iff", a), b)
let mg_and a b = Mg.App (Mg.App (Mg.Cst "and", a), b)
let mg_or a b = Mg.App (Mg.App (Mg.Cst "or", a), b)
let mg_not a = Mg.App (Mg.Cst "not", a)
let mg_neq a b = Mg.App (Mg.App (Mg.Cst "neq", a), b)

let rec mty_of_view = function
  | VSet _ | VSubset _ -> Mg.Set
  | VProp -> Mg.Prop
  | VMetaFun (ds, _) -> List.fold_right (fun _ acc -> Mg.Arr (Mg.Set, acc)) ds Mg.Set
  | VMetaPred ds -> List.fold_right (fun _ acc -> Mg.Arr (Mg.Set, acc)) ds Mg.Prop

(* reify a meta view into a set value: fun x :e A => ... / {x :e A | ...} *)
let rec reify ctx (t : Mg.tm) (v : view) : Mg.tm =
  match v with
  | VMetaFun ([ d ], _) ->
      let x = fresh ctx "x" in
      let r = Mg.LamIn (x, d, Mg.normalize (Mg.App (t, Mg.Var x))) in release ctx x; r
  | VMetaFun (d :: ds, c) ->
      let x = fresh ctx "x" in
      let inner = reify ctx (Mg.normalize (Mg.App (t, Mg.Var x))) (VMetaFun (ds, c)) in
      release ctx x; Mg.LamIn (x, d, inner)
  | VMetaPred [ d ] ->
      let x = fresh ctx "x" in
      let r = Mg.Sep (x, d, Mg.normalize (Mg.App (t, Mg.Var x))) in release ctx x; r
  | VMetaPred (d :: ds) ->
      let x = fresh ctx "x" in
      let inner = reify ctx (Mg.normalize (Mg.App (t, Mg.Var x))) (VMetaPred ds) in
      release ctx x; Mg.LamIn (x, d, inner)
  | _ -> t

(* run a set value as a meta function/predicate of given arity *)
let rec run ctx (t : Mg.tm) (v : view) : Mg.tm =
  match v with
  | VMetaFun (ds, _) ->
      let xs = List.map (fun _ -> fresh ctx "x") ds in
      let body = List.fold_left (fun acc x -> Mg.App (acc, Mg.Var x)) t xs in
      List.iter (release ctx) xs;
      List.fold_right (fun x acc -> Mg.Lam (x, Mg.Set, acc)) xs body
  | VMetaPred ds ->
      let xs = List.map (fun _ -> fresh ctx "x") ds in
      let last = List.nth xs (List.length xs - 1) in
      let init = List.filteri (fun i _ -> i < List.length xs - 1) xs in
      let body = mg_in (Mg.Var last) (List.fold_left (fun acc x -> Mg.App (acc, Mg.Var x)) t init) in
      List.iter (release ctx) xs;
      List.fold_right (fun x acc -> Mg.Lam (x, Mg.Set, acc)) xs body
  | _ -> t

let coerce ctx (t : Mg.tm) (from : view) (target : view) : Mg.tm =
  match from, target with
  | VSet _, VSet _ | VProp, VProp | VSubset _, VSubset _ | VSubset _, VSet _ | VSet _, VSubset _ -> t
  | VMetaFun (ds, c), VMetaFun (ds', c') ->
      if List.length ds = List.length ds' then t
      else if List.length ds' < List.length ds then begin
        (* eta-expand |ds'| args, reify the tail *)
        let k = List.length ds' in
        let xs = List.map (fun _ -> fresh ctx "x") ds' in
        let applied = List.fold_left (fun acc x -> Mg.App (acc, Mg.Var x)) t xs in
        let tail = List.filteri (fun i _ -> i >= k) ds in
        let body = reify ctx applied (VMetaFun (tail, c)) in
        List.iter (release ctx) xs;
        List.fold_right (fun x acc -> Mg.Lam (x, Mg.Set, acc)) xs body
      end else fail "coerce: metafun arity increase (%s -> %s)" (string_of_view from) (string_of_view target)
  | VMetaPred ds, VMetaPred ds' ->
      if List.length ds = List.length ds' then t
      else if List.length ds' < List.length ds then begin
        let k = List.length ds' in
        let xs = List.map (fun _ -> fresh ctx "x") ds' in
        let applied = List.fold_left (fun acc x -> Mg.App (acc, Mg.Var x)) t xs in
        let tail = List.filteri (fun i _ -> i >= k) ds in
        let body = reify ctx applied (VMetaPred tail) in
        List.iter (release ctx) xs;
        List.fold_right (fun x acc -> Mg.Lam (x, Mg.Set, acc)) xs body
      end else fail "coerce: metapred arity increase"
  | (VMetaFun _ | VMetaPred _), (VSet _ | VSubset _) -> reify ctx t from
  | (VSet _ | VSubset _), (VMetaFun _ | VMetaPred _) -> run ctx t target
  | VMetaFun (ds, c), VMetaPred ds' when List.length ds = List.length ds' ->
      (* a function into the boolean carrier used as a predicate *)
      let xs = List.map (fun _ -> fresh ctx "x") ds in
      let body = mg_eq (List.fold_left (fun acc x -> Mg.App (acc, Mg.Var x)) t xs) (Mg.Num 1) in
      List.iter (release ctx) xs;
      List.fold_right (fun x acc -> Mg.Lam (x, Mg.Set, acc)) xs body
  | VMetaPred ds, VMetaFun (ds', _) when List.length ds > List.length ds' ->
      let k = List.length ds' in
      let xs = List.map (fun _ -> fresh ctx "x") ds' in
      let applied = List.fold_left (fun acc x -> Mg.App (acc, Mg.Var x)) t xs in
      let tail = List.filteri (fun i _ -> i >= k) ds in
      let body = reify ctx applied (VMetaPred tail) in
      List.iter (release ctx) xs;
      List.fold_right (fun x acc -> Mg.Lam (x, Mg.Set, acc)) xs body
  | VMetaPred ds, VMetaFun (ds', _) when List.length ds = List.length ds' ->
      let xs = List.map (fun _ -> fresh ctx "x") ds in
      let body = Mg.If (Mg.normalize (List.fold_left (fun acc x -> Mg.App (acc, Mg.Var x)) t xs), Mg.Num 1, Mg.Num 0) in
      List.iter (release ctx) xs;
      List.fold_right (fun x acc -> Mg.Lam (x, Mg.Set, acc)) xs body
  | VProp, VSet _ -> Mg.If (t, Mg.Num 1, Mg.Num 0)
  | VSet _, VProp -> mg_eq t (Mg.Num 1)
  | _ -> fail "coerce: cannot convert %s to %s" (string_of_view from) (string_of_view target)

(* ------------------------------------------------------------------------ *)
(* HOL-level helpers.                                                       *)
(* ------------------------------------------------------------------------ *)

let mk_forall x ty body = App (Const ("!", fun_ty (fun_ty ty bool_ty) bool_ty), Lam (x, ty, body))
let mk_exists x ty body = App (Const ("?", fun_ty (fun_ty ty bool_ty) bool_ty), Lam (x, ty, body))
let mk_eq ty a b = App (App (Const ("=", fun_ty ty (fun_ty ty bool_ty)), a), b)
let mk_imp a b = App (App (Const ("==>", fun_ty bool_ty (fun_ty bool_ty bool_ty)), a), b)
let mk_conj a b = App (App (Const ("/\\", fun_ty bool_ty (fun_ty bool_ty bool_ty)), a), b)

(* eta-expand t : ty (function type) by one argument, with binder name hint *)
let eta_expand hint t ty =
  let a, _ = dest_fun_ty ty in
  Lam (hint, a, App (lift 1 0 t, Bound 0))

let lam_name = function Lam (s, _, _) -> Some s | _ -> None

(* Recognise INSERT a (INSERT b ... EMPTY) chains. *)
let rec dest_set_enum tm acc =
  match tm with
  | Const ("EMPTY", _) -> Some (List.rev acc)
  | App (App (Const ("INSERT", _), a), s) -> dest_set_enum s (a :: acc)
  | _ -> None

(* GSPEC (\v. ?x1..xn. SETSPEC v P t) *)
let dest_gspec tm =
  match tm with
  | App (Const ("GSPEC", _), Lam (v, _, body)) ->
      let rec strip_ex acc t =
        match t with
        | App (Const ("?", _), Lam (x, ty, b)) -> strip_ex ((x, ty) :: acc) b
        | _ -> (List.rev acc, t)
      in
      let xs, inner = strip_ex [] body in
      (match inner with
       | App (App (App (Const ("SETSPEC", _), Bound k), p), t) when k = List.length xs ->
           Some (v, xs, p, t)
       | _ -> None)
  | _ -> None

(* ------------------------------------------------------------------------ *)
(* Elaboration.                                                             *)
(* ------------------------------------------------------------------------ *)

let rec elab ctx (t : tm) (role : view) : Mg.tm =
  let r, v = elab_nat ctx t (Some role) in
  coerce ctx r v role

(* elaborate in the natural view; the hint says what the context wants *)
and elab_nat ctx (t : tm) (hint : view option) : Mg.tm * view =
  match t with
  | Bound _ -> fail "elab: unexpected bound variable"
  | Free (s, ty) ->
      (match List.assoc_opt s ctx.vars with
       | Some (ty', v, n) when ty' = ty -> (Mg.Var n, v)
       | _ -> fail "elab: unknown free variable %s:%s" s (string_of_ty ty))
  | Const ("T", _) -> (Mg.Cst "True", VProp)
  | Const ("F", _) -> (Mg.Cst "False", VProp)
  | Const _ | App _ -> elab_app ctx t hint
  | Lam (x, ty, body) ->
      (* natural view of a lambda is meta; but if a set value / subset is wanted, build it directly *)
      let full_ty = type_of [] t in
      (match hint with
       | Some (VSet _) | Some (VSubset _) -> (elab_lam_data ctx t full_ty, data_view ctx full_ty)
       | _ ->
           let n = fresh ctx x in
           let fv = Free (n, ty) in
           let body' = open_with fv body in
           let xview = choose_view ctx (n, ty) [ body' ] in
           ctx.vars <- (n, (ty, xview, n)) :: ctx.vars;
           let xview_meta = (match xview with VMetaFun _ | VMetaPred _ -> true | _ -> false) in
           if xview_meta then begin
             (* a lambda binding a function variable used applicatively: keep meta but the
                incoming argument is a set; run it *)
             ctx.vars <- List.remove_assoc n ctx.vars; release ctx n;
             (elab_lam_data ctx t full_ty, data_view ctx full_ty)
           end else begin
             let res_ty = type_of [ ty ] body in
             let inner_view = (match view_of_type ctx res_ty with
               | VMetaFun (ds, c) -> VMetaFun (ds, c) | VMetaPred ds -> VMetaPred ds | v -> v) in
             let b = elab ctx body' inner_view in
             ctx.vars <- List.remove_assoc n ctx.vars; release ctx n;
             let v = (match inner_view with
               | VProp -> VMetaPred [ carrier ctx ty ]
               | VSet c -> VMetaFun ([ carrier ctx ty ], c)
               | VSubset c -> VMetaFun ([ carrier ctx ty ], Mg.App (Mg.Cst "Power", c))
               | VMetaFun (ds, c) -> VMetaFun (carrier ctx ty :: ds, c)
               | VMetaPred ds -> VMetaPred (carrier ctx ty :: ds)) in
             let b = (match inner_view, v with
               | VSubset _, VMetaFun _ -> b
               | _ -> b) in
             (Mg.Lam (n, Mg.Set, b), v)
           end)

(* a lambda as data: fun x :e A => ... or {x :e A | ...} *)
and elab_lam_data ctx (t : tm) (full_ty : ty) : Mg.tm =
  match t with
  | Lam (x, ty, body) ->
      let n = fresh ctx x in
      let fv = Free (n, ty) in
      let body' = open_with fv body in
      let xview = choose_view ctx (n, ty) [ body' ] in
      ctx.vars <- (n, (ty, xview, n)) :: ctx.vars;
      let res_ty = type_of [ ty ] body in
      let dom = carrier ctx ty in
      let r =
        if res_ty = bool_ty then Mg.Sep (n, dom, elab ctx body' VProp)
        else Mg.LamIn (n, dom, elab ctx body' (data_view ctx res_ty))
      in
      ctx.vars <- List.remove_assoc n ctx.vars; release ctx n;
      (* if the binder variable needed a meta view inside its scope, the set-bound
         variable must be run: rewrite occurrences *)
      (match xview with
       | VMetaFun _ | VMetaPred _ ->
           (* the variable was declared meta but is bound as a set; convert uses *)
           let runv = run ctx (Mg.Var n) xview in
           (match r with
            | Mg.Sep (n', d, p) -> Mg.Sep (n', d, Mg.normalize (Mg.subst [ (n, runv) ] p))
            | Mg.LamIn (n', d, b) -> Mg.LamIn (n', d, Mg.normalize (Mg.subst [ (n, runv) ] b))
            | _ -> r)
       | _ -> r)
  | _ -> fail "elab_lam_data: not a lambda"

and elab_binder ctx (kind : [ `All | `Ex ]) (x : string) (ty : ty) (body : tm) : Mg.tm =
  let n = fresh ctx x in
  let fv = Free (n, ty) in
  let body' = open_with fv body in
  let xview = choose_view ctx (n, ty) [ body' ] in
  ctx.vars <- (n, (ty, xview, n)) :: ctx.vars;
  let b = elab ctx body' VProp in
  ctx.vars <- List.remove_assoc n ctx.vars; release ctx n;
  let closure = (match xview with
    | VMetaFun (ds, c) ->
        let xs = fresh_seq ctx (List.length ds) in
        let app = List.fold_left (fun acc y -> Mg.App (acc, Mg.Var y)) (Mg.Var n) xs in
        let cl = List.fold_right2 (fun y d acc -> Mg.AllIn (y, d, acc)) xs ds (mg_in app c) in
        List.iter (release ctx) xs; Some cl
    | _ -> None) in
  match kind, xview with
  | `All, VSet c -> Mg.AllIn (n, c, b)
  | `All, VSubset c -> Mg.AllSub (n, c, b)
  | `All, VProp -> Mg.All (n, Mg.Prop, b)
  | `All, VMetaPred _ -> Mg.All (n, mty_of_view xview, b)
  | `All, VMetaFun _ -> Mg.All (n, mty_of_view xview, (match closure with Some cl -> Mg.Imp (cl, b) | None -> b))
  | `Ex, VSet c -> Mg.ExIn (n, c, b)
  | `Ex, VSubset c -> Mg.ExSub (n, c, b)
  | `Ex, VProp -> Mg.Ex (n, Mg.Prop, b)
  | `Ex, VMetaPred _ -> Mg.Ex (n, mty_of_view xview, b)
  | `Ex, VMetaFun _ -> Mg.Ex (n, mty_of_view xview, (match closure with Some cl -> mg_and cl b | None -> b))

and elab_eq ctx (ty : ty) (a : tm) (b : tm) : Mg.tm =
  if ty = bool_ty then mg_iff (elab ctx a VProp) (elab ctx b VProp)
  else if is_fun_ty ty then begin
    let nat_view t = (match t with
      | Free (s, _) -> (match List.assoc_opt s ctx.vars with Some (_, v, _) -> is_meta v | None -> false)
      | Lam _ -> true
      | _ ->
          let h, args = head_and_args t in
          (match h with
           | Const (c, cty) ->
               (match R.find_const ctx.reg c cty with
                | Some (e, _) when List.length args >= List.length e.R.c_args ->
                    (match e.R.c_result with R.RMetaFun _ | R.RMetaPred _ -> true | _ -> false)
                | Some _ -> true   (* partial application of a mapped constant: meta *)
                | None -> false)
           | Free (s, _) ->
               (match List.assoc_opt s ctx.vars with Some (_, v, _) -> is_meta v | None -> false)
           | _ -> false)) in
    if nat_view a || nat_view b then begin
      (* pointwise *)
      let hint = (match lam_name a with Some s -> s | None -> (match lam_name b with Some s -> s | None -> "x")) in
      let dom, cod = dest_fun_ty ty in
      let a' = beta (lift 1 0 a) (Bound 0) and b' = beta (lift 1 0 b) (Bound 0) in
      let inner = mk_eq cod a' b' in
      elab ctx (mk_forall hint dom inner) VProp
    end else
      mg_eq (elab ctx a (data_view ctx ty)) (elab ctx b (data_view ctx ty))
  end else
    mg_eq (elab ctx a (VSet (carrier ctx ty))) (elab ctx b (VSet (carrier ctx ty)))

and elab_app ctx (t : tm) (hint : view option) : Mg.tm * view =
  let h, args = head_and_args t in
  let nargs = List.length args in
  match h with
  | Lam _ ->
      (* beta-redex in the source: reduce (approved rewrite) *)
      note ctx "beta";
      elab_nat ctx (List.fold_left (fun f a -> beta f a) h args) hint
  | Free (s, ty) ->
      (match List.assoc_opt s ctx.vars with
       | None -> fail "elab: unknown variable %s" s
       | Some (_, VMetaFun (ds, c), n) ->
           let k = List.length ds in
           if nargs > k then fail "elab: metafun %s over-applied" s;
           let args' = List.mapi (fun i a -> elab ctx a (VSet (List.nth ds i))) args in
           let r = Mg.apps (Mg.Var n) args' in
           if nargs = k then (r, VSet c)
           else (r, VMetaFun (List.filteri (fun i _ -> i >= nargs) ds, c))
       | Some (_, VMetaPred ds, n) ->
           let k = List.length ds in
           if nargs > k then fail "elab: metapred %s over-applied" s;
           let args' = List.mapi (fun i a -> elab ctx a (VSet (List.nth ds i))) args in
           let r = Mg.apps (Mg.Var n) args' in
           if nargs = k then (r, VProp) else (r, VMetaPred (List.filteri (fun i _ -> i >= nargs) ds))
       | Some (_, VSubset c, n) ->
           (match args with
            | [ a ] -> (mg_in (elab ctx a (VSet c)) (Mg.Var n), VProp)
            | [] -> (Mg.Var n, VSubset c)
            | _ -> fail "elab: subset variable %s over-applied" s)
       | Some (_, VSet c, n) ->
           (* set-valued function variable applied via ap *)
           let doms, res = strip_fun_ty ty in
           let args' = List.mapi (fun i a -> elab ctx a (data_view ctx (List.nth doms i))) args in
           let r = Mg.apps (Mg.Var n) args' in
           let rest_ty = List.fold_right (fun d acc -> fun_ty d acc) (List.filteri (fun i _ -> i >= nargs) doms) res in
           if rest_ty = bool_ty then (mg_eq r (Mg.Num 1), VProp)   (* boolean carrier value as prop *)
           else (r, data_view ctx rest_ty)
       | Some (_, VProp, n) -> if nargs = 0 then (Mg.Var n, VProp) else fail "elab: prop variable applied")
  | Const (c, cty) -> elab_const ctx t c cty args hint
  | Bound _ -> fail "elab: bound head"
  | App _ -> fail "elab: app head"

and elab_const ctx (t : tm) (c : string) (cty : ty) (args : tm list) (hint : view option) : Mg.tm * view =
  let nargs = List.length args in
  let arg i = List.nth args i in
  match c, args with
  (* ---- built-in logic ---- *)
  | "~", [ a ] -> (mg_not (elab ctx a VProp), VProp)
  | "/\\", [ a; b ] -> (mg_and (elab ctx a VProp) (elab ctx b VProp), VProp)
  | "\\/", [ a; b ] -> (mg_or (elab ctx a VProp) (elab ctx b VProp), VProp)
  | "==>", [ a; b ] -> (Mg.Imp (elab ctx a VProp, elab ctx b VProp), VProp)
  | "=", [ a; b ] ->
      let ty, _ = dest_fun_ty cty in
      (elab_eq ctx ty a b, VProp)
  | "!", [ Lam (x, ty, body) ] -> (elab_binder ctx `All x ty body, VProp)
  | "?", [ Lam (x, ty, body) ] -> (elab_binder ctx `Ex x ty body, VProp)
  | ("!" | "?" | "?!" | "@"), [ p ] when (match p with Lam _ -> false | _ -> true) ->
      (* non-lambda argument: eta-expand *)
      let pty, _ = dest_fun_ty cty in
      elab_const ctx t c cty [ eta_expand "x" p pty ] hint
  | "?!", [ Lam (x, ty, body) ] ->
      (* ?!x. P x  ==>  ?x. P x /\ !y. P y ==> y = x *)
      let py = lift 1 1 body in   (* P y: y = Bound 0, x = Bound 1 *)
      let uniq = mk_forall "y" ty (mk_imp py (mk_eq ty (Bound 0) (Bound 1))) in
      (elab_binder ctx `Ex x ty (mk_conj body uniq), VProp)
  | "@", [ Lam (x, ty, body) ] ->
      (* the chosen object is a set value of the carrier; functions/predicates are chosen as data *)
      let n = fresh ctx x in
      let body' = open_with (Free (n, ty)) body in
      let xview = data_view ctx ty in
      let c = (match xview with VSet c | VSubset c -> c | _ -> fail "@: data view") in
      let c = (match xview with VSubset a -> Mg.App (Mg.Cst "Power", a) | _ -> c) in
      ctx.vars <- (n, (ty, xview, n)) :: ctx.vars;
      let b = elab ctx body' VProp in
      ctx.vars <- List.remove_assoc n ctx.vars; release ctx n;
      use_class ctx "definitionally_exact" "choose_in_spec";
      (Mg.App (Mg.App (Mg.Cst "choose_in", c), Mg.Lam (n, Mg.Set, b)), xview)
  | "COND", p :: a :: b :: (_ :: _ as rest) ->
      (* over-applied conditional: push the arguments into the branches *)
      elab_const ctx t c cty [ p; List.fold_left (fun f x -> App (f, x)) a rest; List.fold_left (fun f x -> App (f, x)) b rest ] hint
  | "COND", [ p; a; b ] ->
      let res_ty = (match cty with TyApp ("fun", [ _; TyApp ("fun", [ r; _ ]) ]) -> r | _ -> fail "COND type") in
      let p' = elab ctx p VProp in
      if res_ty = bool_ty then
        (mg_and (Mg.Imp (p', elab ctx a VProp)) (Mg.Imp (mg_not p', elab ctx b VProp)), VProp)
      else if is_fun_ty res_ty && (match hint with Some (VMetaFun _ | VMetaPred _) | None -> true | _ -> false) then begin
        let v = view_of_type ctx res_ty in
        let a' = elab ctx a v and b' = elab ctx b v in
        let ds = (match v with VMetaFun (ds, _) | VMetaPred ds -> ds | _ -> []) in
        let xs = List.map (fun _ -> fresh ctx "x") ds in
        let app t = List.fold_left (fun acc x -> Mg.App (acc, Mg.Var x)) t xs in
        let body = (match v with
          | VMetaPred _ -> mg_and (Mg.Imp (p', Mg.normalize (app a'))) (Mg.Imp (mg_not p', Mg.normalize (app b')))
          | _ -> Mg.If (p', Mg.normalize (app a'), Mg.normalize (app b'))) in
        List.iter (release ctx) xs;
        (List.fold_right (fun x acc -> Mg.Lam (x, Mg.Set, acc)) xs body, v)
      end else begin
        let v = data_view ctx res_ty in
        (Mg.If (p', elab ctx a v, elab ctx b v), v)
      end
  | "NUMERAL", [ _ ] when dest_numeral t <> None ->
      (Mg.Num (Option.get (dest_numeral t)), VSet (Mg.Cst "omega"))
  | "GABS", Lam (f, fty, body) :: rest ->
      (* paired abstraction: GABS (\f. !x1..xn. GEQ (f (x1,..,xn)) t)  ==>  \p. t[xi := proj_i p] *)
      let fv = Free (fresh ctx f, fty) in
      let body = open_with fv body in
      let rec strip acc t = (match t with
        | App (Const ("!", _), Lam (x, ty, b)) -> let n = fresh ctx x in strip ((n, ty) :: acc) (open_with (Free (n, ty)) b)
        | _ -> (List.rev acc, t)) in
      let xs, inner = strip [] body in
      (match inner with
       | App (App (Const ("GEQ", _), App (fv', tuple)), rhs) when fv' = fv ->
           let pty = type_of [] tuple in
           let pn = fresh ctx "p" in
           let p = Free (pn, pty) in
           (* projections: walk the tuple structure *)
           let rec projs tm acc_tm ty = (match tm with
             | App (App (Const (",", _), a), b) ->
                 let ta, tb = (match ty with TyApp ("prod", [ ta; tb ]) -> (ta, tb) | _ -> fail "GABS: tuple type") in
                 let fst_ = App (Const ("FST", fun_ty ty ta), acc_tm) and snd_ = App (Const ("SND", fun_ty ty tb), acc_tm) in
                 projs a fst_ ta @ projs b snd_ tb
             | Free (x, xty) -> [ ((x, xty), acc_tm) ]
             | _ -> fail "GABS: unsupported tuple pattern") in
           let sub = projs tuple p pty in
           List.iter (fun ((x, _), _) -> if not (List.mem_assoc x xs) then fail "GABS: pattern variable not bound") sub;
           let rhs' = List.fold_left (fun t ((x, xty), proj) -> replace_free (x, xty) proj 0 t) rhs sub in
           let lam = Lam (pn, pty, abstract_free (pn, pty) 0 rhs') in
           List.iter (fun (n, _) -> release ctx n) xs;
           release ctx pn; (match fv with Free (n, _) -> release ctx n | _ -> ());
           note ctx "paired-lambda";
           elab_nat ctx (List.fold_left (fun f a -> beta f a) lam rest) hint
       | _ -> unsupported "GABS not in paired-abstraction form")
  | "GSPEC", [ Lam _ ] ->
      (match dest_gspec t with
       | Some (v, xs, p, body) -> (elab_gspec ctx v xs p body, VSubset (carrier ctx (fst (dest_fun_ty cty))))
       | None -> unsupported "GSPEC not in set-comprehension form")
  | "GSPEC", [ (Lam _ as g); x ] ->
      (* comprehension applied to an element: membership *)
      let ety = fst (dest_fun_ty cty) in
      let s, _ = elab_const ctx (App (Const (c, cty), g)) c cty [ g ] (Some (VSubset (carrier ctx ety))) in
      (mg_in (elab ctx x (VSet (carrier ctx ety))) s, VProp)
  | "INSERT", [ _; _ ] when dest_set_enum t [] <> None ->
      let elems = Option.get (dest_set_enum t []) in
      let ety = (match cty with TyApp ("fun", [ a; _ ]) -> a | _ -> fail "INSERT type") in
      let c = carrier ctx ety in
      (Mg.SetEnum (List.map (fun e -> elab ctx e (VSet c)) elems), VSubset c)
  | _ ->
      (match R.find_const ctx.reg c cty with
       | None ->
           if nargs = 0 && (c = "!" || c = "?" || c = "@" || c = "?!") then unsupported "bare binder constant %s" c
           else unsupported "unmapped constant %s : %s" c (string_of_ty cty)
       | Some (e, inst) -> elab_mapped ctx e inst c cty args hint)

and elab_mapped ctx (e : R.const_entry) inst (c : string) (cty : ty) (args : tm list) hint : Mg.tm * view =
  let n = List.length e.R.c_args in
  let nargs = List.length args in
  if e.R.c_status = "pending" then unsupported "mapping for %s is pending" c;
  if e.R.c_status = "internal" then unsupported "internal constant %s (%s)" c e.R.c_notes;
  if e.R.c_status = "auto" then note ctx ("auto:" ^ c);
  use_class ctx e.R.c_class e.R.c_bridge;
  if nargs < n then begin
    (* partial application: eta-expand at the HOL level *)
    let t = List.fold_left (fun f a -> App (f, a)) (Const (c, cty)) args in
    let ty = type_of [] t in
    elab_nat ctx (eta_expand "x" t ty) hint
  end else begin
    let doms, _ = strip_fun_ty cty in
    let sdoms, _ = strip_fun_ty e.R.c_scheme in
    let arg_views = List.mapi (fun i role ->
      let aty = List.nth doms i in
      (* the slot arity is fixed by the scheme; the instance may have a larger arity *)
      let k = (match role with R.RMetaFun (Some k) | R.RMetaPred (Some k) -> k | _ -> fun_arity (List.nth sdoms i)) in
      let idoms, ires = strip_fun_ty aty in
      let take n l = List.filteri (fun j _ -> j < n) l and drop n l = List.filteri (fun j _ -> j >= n) l in
      let residual = List.fold_right (fun d acc -> fun_ty d acc) (drop k idoms) ires in
      match role with
      | R.RSet -> VSet (carrier ctx aty)
      | R.RProp -> VProp
      | R.RSubset -> (match aty with TyApp ("fun", [ a; TyApp ("bool", []) ]) -> VSubset (carrier ctx a)
                      | _ -> fail "registry: subset role for non-predicate argument of %s" c)
      | R.RMetaFun _ ->
          if k = 0 || List.length idoms < k then fail "registry: metafun role for non-function argument of %s" c;
          if residual = bool_ty then begin
            (* boolean-valued function in a metafun slot: data booleans (2) when the value flows
               into a set result, otherwise keep it a predicate *)
            match e.R.c_result with
            | R.RSet | R.RSubset -> VMetaFun (List.map (carrier ctx) (take k idoms), Mg.Num 2)
            | _ -> VMetaPred (List.map (carrier ctx) (take k idoms))
          end
          else VMetaFun (List.map (carrier ctx) (take k idoms), carrier ctx residual)
      | R.RMetaPred _ ->
          if k = 0 || List.length idoms < k || residual <> bool_ty then fail "registry: metapred role for non-predicate argument of %s" c;
          VMetaPred (List.map (carrier ctx) (take k idoms))) e.R.c_args in
    let args' = List.mapi (fun i a -> elab ctx a (List.nth arg_views i)) (List.filteri (fun i _ -> i < n) args) in
    let sub = List.mapi (fun i a -> (string_of_int (i + 1), a)) args'
              @ List.map (fun (v, ty) -> (v, carrier ctx ty)) inst in
    let r = Mg.normalize (Mg.inst sub e.R.c_template) in
    let res_hol_ty = List.fold_left (fun ty _ -> snd (dest_fun_ty ty)) cty (List.filteri (fun i _ -> i < n) args) in
    let res_view = (match e.R.c_result with
      | R.RSet -> VSet (carrier ctx res_hol_ty)
      | R.RProp -> VProp
      | R.RSubset -> (match res_hol_ty with TyApp ("fun", [ a; TyApp ("bool", []) ]) -> VSubset (carrier ctx a)
                      | _ -> fail "registry: subset result for %s" c)
      | R.RMetaFun _ -> view_of_type ctx res_hol_ty
      | R.RMetaPred _ -> view_of_type ctx res_hol_ty) in
    (* extra arguments *)
    let extra = List.filteri (fun i _ -> i >= n) args in
    if extra = [] then (r, res_view)
    else begin
      match res_view with
      | VMetaFun (ds, cod) ->
          let k = List.length ds in
          if List.length extra > k then fail "over-application of %s" c;
          let extra' = List.mapi (fun i a -> elab ctx a (VSet (List.nth ds i))) extra in
          let r = Mg.normalize (Mg.apps r extra') in
          if List.length extra = k then (r, VSet cod)
          else (r, VMetaFun (List.filteri (fun i _ -> i >= List.length extra) ds, cod))
      | VMetaPred ds ->
          let k = List.length ds in
          if List.length extra > k then fail "over-application of %s" c;
          let extra' = List.mapi (fun i a -> elab ctx a (VSet (List.nth ds i))) extra in
          let r = Mg.normalize (Mg.apps r extra') in
          if List.length extra = k then (r, VProp)
          else (r, VMetaPred (List.filteri (fun i _ -> i >= List.length extra) ds))
      | VSubset cdom ->
          (match extra with
           | [ a ] -> (mg_in (elab ctx a (VSet cdom)) r, VProp)
           | _ -> fail "subset over-applied for %s" c)
      | VSet _ ->
          let doms, res = strip_fun_ty res_hol_ty in
          let extra' = List.mapi (fun i a -> elab ctx a (data_view ctx (List.nth doms i))) extra in
          let rest_ty = List.fold_right (fun d acc -> fun_ty d acc) (List.filteri (fun i _ -> i >= List.length extra) doms) res in
          let r = Mg.apps r extra' in
          if rest_ty = bool_ty then (mg_eq r (Mg.Num 1), VProp) else (r, data_view ctx rest_ty)
      | VProp -> fail "prop result over-applied for %s" c
    end
  end

(* {t | x1 :e A1, ..., P} *)
and elab_gspec ctx (v : string) (xs : (string * ty) list) (p : tm) (body : tm) : Mg.tm =
  (* xs are bound as Bound (n-1) .. Bound 0 in p and body; the outer v is Bound n (unused) *)
  let n = List.length xs in
  let names = List.map (fun (x, _) -> fresh ctx x) xs in
  let frees = List.map2 (fun nm (_, ty) -> Free (nm, ty)) names xs in
  (* substitute innermost first: Bound 0 = last variable *)
  let sub t = List.fold_left (fun t fv -> subst_bound 0 fv t) t (List.rev frees) in
  let p' = sub p and body' = sub body in
  (* the v binder: replace remaining Bound 0 (was Bound n) by an unused variable; it must not occur *)
  if occurs_bound 0 p' || occurs_bound 0 body' then unsupported "GSPEC pattern uses the outer variable";
  let p' = subst_bound 0 (Const ("T", bool_ty)) p' and body' = subst_bound 0 (Const ("T", bool_ty)) body' in
  List.iter2 (fun nm (_, ty) -> ctx.vars <- (nm, (ty, VSet (carrier ctx ty), nm)) :: ctx.vars) names xs;
  let body_ty = type_of [] body' in
  let bv = data_view ctx body_ty in
  let pp = elab ctx p' VProp and bb = elab ctx body' bv in
  List.iter (fun nm -> ctx.vars <- List.remove_assoc nm ctx.vars; release ctx nm) names;
  let is_true = (match pp with Mg.Cst "True" -> true | _ -> false) in
  match names, xs with
  | [ x ], [ (_, ty) ] ->
      let c = carrier ctx ty in
      if bb = Mg.Var x then Mg.Sep (x, c, pp)
      else if is_true then Mg.Repl (x, c, bb)
      else Mg.ReplSep (x, c, pp, bb)
  | _ ->
      (* nested family unions over all but the last variable *)
      let cs = List.map (fun (_, ty) -> carrier ctx ty) xs in
      let last_x = List.nth names (n - 1) and last_c = List.nth cs (n - 1) in
      let inner = if is_true then Mg.Repl (last_x, last_c, bb) else Mg.ReplSep (last_x, last_c, pp, bb) in
      List.fold_right2 (fun x c acc -> Mg.FamUnion (x, c, acc))
        (List.filteri (fun i _ -> i < n - 1) names) (List.filteri (fun i _ -> i < n - 1) cs) inner

(* ------------------------------------------------------------------------ *)
(* Theorem statements.                                                      *)
(* ------------------------------------------------------------------------ *)

type result = {
  statement : Mg.tm;
  tyvar_params : string list;
  classes : string list;
  bridges : string list;
  notes : string list;
  var_views : (string * string) list;   (* free var -> view *)
}

let elab_sequent (reg : R.t) (seq : sequent) : result =
  let all = seq.concl :: seq.hyps in
  let tvs = uniq (List.concat_map tyvars_of_tm all) in
  let tvs = List.sort compare tvs in
  (* invented HOL type variables (?123) get the first free capital letters *)
  let named = List.filter (fun a -> a = "" || a.[0] <> '?') tvs in
  let letters = List.init 26 (fun i -> String.make 1 (Char.chr (65 + i))) in
  let used = ref (List.map sanitize_tyvar named) in
  let tv_names = List.map (fun a ->
    if a <> "" && a.[0] = '?' then begin
      let l = (match List.find_opt (fun l -> not (List.mem l !used)) letters with Some l -> l | None -> sanitize_tyvar a) in
      used := l :: !used; (a, l)
    end else (a, sanitize_tyvar a)) tvs in
  let ctx = { reg; tyvar_names = tv_names; vars = []; used = List.map snd tv_names; st = { classes = []; bridges = []; notes = [] } } in
  (* free variables in order of first occurrence *)
  let fvs = uniq (List.concat_map frees all) in
  let decls = List.map (fun (s, ty) ->
    let n = fresh ctx s in
    let v = choose_view ctx (s, ty) all in
    (* rename in terms if needed *)
    ctx.vars <- (s, (ty, v, n)) :: ctx.vars;
    (s, ty, v, n)) fvs in
  let body = List.fold_right (fun h acc -> Mg.Imp (elab ctx h VProp, acc)) seq.hyps (elab ctx seq.concl VProp) in
  let body = List.fold_right (fun (_, _, v, n) acc ->
    match v with
    | VSet c -> Mg.AllIn (n, c, acc)
    | VSubset c -> Mg.AllSub (n, c, acc)
    | VProp -> Mg.All (n, Mg.Prop, acc)
    | VMetaPred _ -> Mg.All (n, mty_of_view v, acc)
    | VMetaFun (ds, c) ->
        let xs = fresh_seq ctx (List.length ds) in
        let app = List.fold_left (fun acc y -> Mg.App (acc, Mg.Var y)) (Mg.Var n) xs in
        let cl = List.fold_right2 (fun y d acc -> Mg.AllIn (y, d, acc)) xs ds (mg_in app c) in
        List.iter (release ctx) xs;
        Mg.All (n, mty_of_view v, Mg.Imp (cl, acc))) decls body in
  let body = List.fold_right (fun (_, n) acc -> Mg.Imp (mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc)) tv_names body in
  let body = List.fold_right (fun (_, n) acc -> Mg.All (n, Mg.Set, acc)) tv_names body in
  let body, rewrites = Rewrite.run body in
  List.iter (fun r -> note ctx ("rewrite:" ^ r)) rewrites;
  let body, dropped = Emptycase.generalize body (List.map snd tv_names) in
  List.iter (fun p -> use_class ctx "generalization" ("empty_case:" ^ p)) dropped;
  { statement = body; tyvar_params = List.map snd tv_names; classes = ctx.st.classes; bridges = ctx.st.bridges;
    notes = ctx.st.notes; var_views = List.map (fun (s, _, v, _) -> (s, string_of_view v)) decls }

(* ------------------------------------------------------------------------ *)
(* Automatic native definitions for constants defined by new_definition.   *)
(* ------------------------------------------------------------------------ *)

type auto_def = {
  ad_hol : string;                 (* HOL constant *)
  ad_target : string;              (* Megalodon name *)
  ad_type : Mg.mty;                (* Megalodon type of the definition *)
  ad_body : Mg.tm;                 (* fun A .. x .. => body *)
  ad_scheme : ty;
  ad_roles : R.role_spec list;
  ad_result : R.role_spec;
  ad_params : string list;         (* carrier parameter names, in scheme tyvar order *)
  ad_notes : string list;
}

exception Not_definitional of string

let rec mty_of_role_ty ctx role (aty : ty) : Mg.mty =
  match role with
  | R.RSet | R.RSubset -> Mg.Set
  | R.RProp -> Mg.Prop
  | R.RMetaFun _ | R.RMetaPred _ -> mty_of_view (view_of_type ctx aty)

(* default roles for an argument / result type *)
let role_of_type (t : ty) : R.role_spec =
  match t with
  | TyApp ("bool", []) -> R.RProp
  | TyApp ("fun", [ _; TyApp ("bool", []) ]) -> R.RSubset
  | TyApp ("fun", _) ->
      let _, res = strip_fun_ty t in
      if res = bool_ty then R.RMetaPred None else R.RMetaFun None
  | _ -> R.RSet

let view_of_role ctx role (aty : ty) : view =
  match role with
  | R.RSet -> VSet (carrier ctx aty)
  | R.RProp -> VProp
  | R.RSubset -> (match aty with TyApp ("fun", [ a; TyApp ("bool", []) ]) -> VSubset (carrier ctx a) | _ -> VSet (carrier ctx aty))
  | R.RMetaFun _ | R.RMetaPred _ -> view_of_type ctx aty

let elab_definition (reg : R.t) (cname : string) (target : string) (scheme : ty) (rhs : tm) (arg_names : string list) : auto_def =
  let tvs = List.sort compare (uniq (tyvars_of_ty scheme)) in
  let letters = List.init 26 (fun i -> String.make 1 (Char.chr (65 + i))) in
  let used = ref (List.map sanitize_tyvar (List.filter (fun a -> a = "" || a.[0] <> '?') tvs)) in
  let tv_names = List.map (fun a ->
    if a <> "" && a.[0] = '?' then begin
      let l = (match List.find_opt (fun l -> not (List.mem l !used)) letters with Some l -> l | None -> sanitize_tyvar a) in
      used := l :: !used; (a, l)
    end else (a, sanitize_tyvar a)) tvs in
  let ctx = { reg; tyvar_names = tv_names; vars = []; used = List.map snd tv_names; st = { classes = []; bridges = []; notes = [] } } in
  (* the arity of the definition follows the leading lambdas of the right-hand side;
     the remaining (possibly functional) type determines the result role *)
  let rec leading_lams t acc = (match t with Lam (x, ty, b) -> leading_lams b ((x, ty) :: acc) | _ -> (List.rev acc, t)) in
  let lams, core = leading_lams rhs [] in
  let k = List.length lams in
  (match head_and_args core with
   | Const ("@", _), _ -> raise (Not_definitional "specification-style definition (choice)")
   | _ -> ());
  let all_doms, _ = strip_fun_ty scheme in
  if List.length all_doms < k then raise (Not_definitional "more lambdas than arguments");
  let doms = List.filteri (fun i _ -> i < k) all_doms in
  let res = List.fold_left (fun ty _ -> snd (dest_fun_ty ty)) scheme doms in
  let roles = List.map role_of_type doms in
  let result_role = role_of_type res in
  (* open the binders with named free variables and forced views *)
  let rec open_all t i names acc =
    match t with
    | Lam (x, ty, b) when i < k ->
        let hint = (match names with n :: _ when n <> "" && n.[0] <> '_' -> n | _ -> if x <> "" && x.[0] <> '_' then x else "x") in
        let n = fresh ctx hint in
        let v = view_of_role ctx (List.nth roles i) ty in
        ctx.vars <- (n, (ty, v, n)) :: ctx.vars;
        open_all (open_with (Free (n, ty)) b) (i + 1) (match names with _ :: r -> r | [] -> []) ((n, ty, v) :: acc)
    | _ -> (List.rev acc, t)
  in
  let args, body = open_all rhs 0 arg_names [] in
  let result_view = view_of_role ctx result_role res in
  let body' = elab ctx body result_view in
  let body', rewrites = Rewrite.run body' in
  List.iter (fun r -> note ctx ("rewrite:" ^ r)) rewrites;
  let mtys = List.map (fun (_, _, v) -> mty_of_view v) args in
  let rty = mty_of_view result_view in
  let ty = List.fold_right (fun _ acc -> Mg.Arr (Mg.Set, acc)) tv_names (List.fold_right (fun m acc -> Mg.Arr (m, acc)) mtys rty) in
  let term = List.fold_right (fun (n, _, v) acc -> Mg.Lam (n, mty_of_view v, acc)) args body' in
  let term = List.fold_right (fun (_, n) acc -> Mg.Lam (n, Mg.Set, acc)) tv_names term in
  { ad_hol = cname; ad_target = target; ad_type = ty; ad_body = term; ad_scheme = scheme; ad_roles = roles;
    ad_result = result_role; ad_params = List.map snd tv_names; ad_notes = ctx.st.notes }

(* registry entry for an auto definition: template  target ?A ?B ?1 ?2 ... *)
let register_auto (reg : R.t) (d : auto_def) =
  let t = Mg.apps (Mg.Cst d.ad_target) (List.map (fun p -> Mg.Meta p) d.ad_params @ List.mapi (fun i _ -> Mg.Meta (string_of_int (i + 1))) d.ad_roles) in
  let e = { R.c_hol = d.ad_hol; c_scheme = d.ad_scheme; c_args = d.ad_roles; c_result = d.ad_result; c_template = t;
            c_class = "definitionally_exact"; c_status = "auto"; c_bridge = ""; c_notes = "auto definition"; c_source = "auto" } in
  let prev = (try Hashtbl.find reg.R.consts d.ad_hol with Not_found -> []) in
  Hashtbl.replace reg.R.consts d.ad_hol (prev @ [ e ])

(* binder names from a definitional theorem  !v1..vk. c v1..vk = rhs  /  c = \v1..vk. rhs *)
let arg_names_of_theorem (t : tm) : string list =
  let rec foralls t acc = (match t with App (Const ("!", _), Lam (x, _, b)) -> foralls b (x :: acc) | _ -> (List.rev acc, t)) in
  let names, body = foralls t [] in
  match dest_eq body with
  | Some (_, lhs, rhs) ->
      let _, args = head_and_args lhs in
      let from_lhs = List.filter_map (fun a -> match a with Bound i -> (try Some (List.nth (List.rev names) i) with _ -> None) | Free (s, _) -> Some s | _ -> None) args in
      let rec lams t acc = (match t with Lam (x, _, b) -> lams b (x :: acc) | _ -> List.rev acc) in
      from_lhs @ lams rhs []
  | None -> []
