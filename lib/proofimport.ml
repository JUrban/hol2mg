(* Proof import into the uniform model (docs/DESIGN.md 22.3).

   A recorded kernel proof (hol_export/proof_export.ml) becomes one Megalodon theorem hltu_N
   whose statement is the closed uniform form of the sequent, with one claim per shared inference
   node; the deep literal statement hlt_N then follows by the generated coherence proof.  Every
   step is checked by Megalodon; nothing here is trusted. *)

open Hol
module L = Literal

exception Import_unsupported of string
let unsupported fmt = Printf.ksprintf (fun s -> raise (Import_unsupported s)) fmt

type pnode = {
  id : int; rule : string;
  tm : tm option;                          (* REFL / BETA / ASSUME / AXIOM / DEFINITION term, ABS variable *)
  theta_ty : (string * ty) list;           (* INST_TYPE: type variable -> type *)
  theta_tm : ((string * ty) * tm) list;    (* INST: variable -> term *)
  prem : int list; leaf : string option;   (* NAMED leaf: HOL name *)
  tyn : string;                            (* TYDEF_*: the type name *)
  hyps : tm list; concl : tm }
type proof = { pname : string; phash : string; root : int; nodes : pnode array }

(* ------------------------------------------------------------------------ *)
(* Reading the JSON Lines export.                                           *)
(* ------------------------------------------------------------------------ *)

let load (file : string) : proof list =
  let tys : (int, ty) Hashtbl.t = Hashtbl.create 4096 in
  let tmj : (int, Yojson.Safe.t) Hashtbl.t = Hashtbl.create 65536 in
  let proofs = ref [] in
  let mem k j = (match List.assoc_opt k (match j with `Assoc l -> l | _ -> []) with Some v -> v | None -> `Null) in
  let str j = (match j with `String s -> s | _ -> failwith "proofimport: string expected") in
  let int j = (match j with `Int i -> i | _ -> failwith "proofimport: int expected") in
  let lst j = (match j with `List l -> l | _ -> []) in
  let ty_of id = Hashtbl.find tys id in
  (* terms: named variables in the export; bound occurrences become de Bruijn indices *)
  let rec conv env id =
    let j = Hashtbl.find tmj id in
    match str (mem "k" j) with
    | "v" -> let n = str (mem "n" j) and ty = ty_of (int (mem "t" j)) in
        let rec idx i = function [] -> None | (m, t) :: rest -> if m = n && t = ty then Some i else idx (i + 1) rest in
        (match idx 0 env with Some i -> Bound i | None -> Free (n, ty))
    | "c" -> Const (str (mem "n" j), ty_of (int (mem "t" j)))
    | "ap" -> App (conv env (int (mem "f" j)), conv env (int (mem "x" j)))
    | "lam" ->
        let vj = Hashtbl.find tmj (int (mem "v" j)) in
        let vn = str (mem "n" vj) and vty = ty_of (int (mem "t" vj)) in
        Lam (vn, vty, conv ((vn, vty) :: env) (int (mem "b" j)))
    | k -> failwith ("proofimport: term kind " ^ k) in
  let ic = open_in file in
  (try while true do
     let line = input_line ic in
     if line = "" then () else
     let j = Yojson.Safe.from_string line in
     match str (mem "kind" j) with
     | "type" ->
         let node = mem "node" j in
         let ty = (match str (mem "k" node) with
           | "v" -> TyVar (str (mem "n" node))
           | _ -> TyApp (str (mem "n" node), List.map (fun a -> ty_of (int a)) (lst (mem "a" node)))) in
         Hashtbl.replace tys (int (mem "id" j)) ty
     | "term" -> Hashtbl.replace tmj (int (mem "id" j)) (mem "node" j)
     | "proof" ->
         let nodes = List.map (fun nj ->
           let rule = str (mem "rule" nj) in
           let tmo = (match mem "tm" nj with `Int i -> Some (conv [] i) | _ -> None) in
           let theta_ty = (if rule = "INST_TYPE" then List.map (fun pr -> match lst pr with [ v; t ] ->
               (match ty_of (int v) with TyVar a -> (a, ty_of (int t)) | _ -> failwith "proofimport: INST_TYPE") | _ -> failwith "theta") (lst (mem "theta" nj)) else []) in
           let theta_tm = (if rule = "INST" then List.map (fun pr -> match lst pr with [ v; t ] ->
               (match conv [] (int v) with Free (s, ty) -> ((s, ty), conv [] (int t)) | _ -> failwith "proofimport: INST") | _ -> failwith "theta") (lst (mem "theta" nj)) else []) in
           { id = int (mem "id" nj); rule; tm = tmo; theta_ty; theta_tm;
             prem = List.map int (lst (mem "p" nj));
             leaf = (match mem "name" nj with `String s -> Some s | _ -> None);
             tyn = (match mem "ty" nj with `String s -> s | _ -> "");
             hyps = List.map (fun h -> conv [] (int h)) (lst (mem "hyps" nj));
             concl = conv [] (int (mem "concl" nj)) }) (lst (mem "nodes" j)) in
         let arr = Array.of_list nodes in
         Array.iteri (fun i n -> if n.id <> i then failwith "proofimport: node ids") arr;
         proofs := { pname = str (mem "name" j); phash = str (mem "hash" j); root = int (mem "root" j); nodes = arr } :: !proofs
     | k -> failwith ("proofimport: record kind " ^ k)
   done with End_of_file -> ());
  close_in ic;
  List.rev !proofs

(* ------------------------------------------------------------------------ *)
(* HOL-level substitution (de Bruijn terms: no capture).                    *)
(* ------------------------------------------------------------------------ *)

let rec inst_ty (theta : (string * ty) list) (ty : ty) : ty =
  match ty with
  | TyVar a -> (try List.assoc a theta with Not_found -> ty)
  | TyApp (c, args) -> TyApp (c, List.map (inst_ty theta) args)

let rec inst_tm theta (t : tm) : tm =
  match t with
  | Bound _ -> t
  | Free (s, ty) -> Free (s, inst_ty theta ty)
  | Const (c, ty) -> Const (c, inst_ty theta ty)
  | App (f, x) -> App (inst_tm theta f, inst_tm theta x)
  | Lam (x, ty, b) -> Lam (x, inst_ty theta ty, inst_tm theta b)

let rec subst_frees (theta : ((string * ty) * tm) list) (t : tm) : tm =
  match t with
  | Free (s, ty) -> (try List.assoc (s, ty) theta with Not_found -> t)
  | App (f, x) -> App (subst_frees theta f, subst_frees theta x)
  | Lam (x, ty, b) -> Lam (x, ty, subst_frees theta b)
  | _ -> t

(* alpha-equivalence: de Bruijn terms compared with binder display names erased *)
let rec canon (t : tm) : tm =
  match t with
  | App (f, x) -> App (canon f, canon x)
  | Lam (_, ty, b) -> Lam ("", ty, canon b)
  | _ -> t
let alpha_eq (a : tm) (b : tm) = canon a = canon b

(* HOL variables are identified by name and type: distinct variables with the same name and
   different types occur in kernel proofs (e.g. y':A and y':B in the pair theorems).  The contexts
   key variables by name, so such variables are renamed apart before translation. *)
let rename_apart (p : proof) : proof * (string * ty, string) Hashtbl.t * (string, string) Hashtbl.t =
  let seen : (string, ty list) Hashtbl.t = Hashtbl.create 64 in
  let rec collect t = (match t with
    | Free (s, ty) -> let l = (try Hashtbl.find seen s with Not_found -> []) in if not (List.mem ty l) then Hashtbl.replace seen s (l @ [ ty ])
    | App (f, x) -> collect f; collect x
    | Lam (_, _, b) -> collect b
    | _ -> ()) in
  (* the root's variables keep their names: seen first *)
  let root = p.nodes.(p.root) in
  List.iter collect root.hyps; collect root.concl;
  Array.iter (fun (n : pnode) -> List.iter collect n.hyps; collect n.concl; (match n.tm with Some t -> collect t | None -> ());
    List.iter (fun ((s, ty), t) -> collect (Free (s, ty)); collect t) n.theta_tm) p.nodes;
  let ren = Hashtbl.create 16 in
  Hashtbl.iter (fun s l -> List.iteri (fun i ty -> if i > 0 then Hashtbl.replace ren (s, ty) (s ^ "'v" ^ string_of_int i)) l) seen;
  let orig = Hashtbl.create 16 in
  Hashtbl.iter (fun (s, _) s' -> Hashtbl.replace orig s' s) ren;
  if Hashtbl.length ren = 0 then (p, ren, orig) else begin
    let rec rn t = (match t with
      | Free (s, ty) -> (match Hashtbl.find_opt ren (s, ty) with Some s' -> Free (s', ty) | None -> t)
      | App (f, x) -> App (rn f, rn x)
      | Lam (x, ty, b) -> Lam (x, ty, rn b)
      | _ -> t) in
    let nodes = Array.map (fun (n : pnode) ->
      { n with hyps = List.map rn n.hyps; concl = rn n.concl; tm = Option.map rn n.tm;
               theta_tm = List.map (fun ((s, ty), t) -> ((match Hashtbl.find_opt ren (s, ty) with Some s' -> s' | None -> s), ty), rn t) n.theta_tm }) p.nodes in
    ({ p with nodes }, ren, orig)
  end

(* after a type instantiation a variable (s, ty) may correspond to a renamed variable: canonical name *)
let canon_name ren orig (s : string) (ty : ty) : string =
  let s0 = (try Hashtbl.find orig s with Not_found -> s) in
  (try Hashtbl.find ren (s0, ty) with Not_found -> s0)
let rec fix_names ren orig (t : tm) : tm =
  match t with
  | Free (s, ty) -> Free (canon_name ren orig s ty, ty)
  | App (f, x) -> App (fix_names ren orig f, fix_names ren orig x)
  | Lam (x, ty, b) -> Lam (x, ty, fix_names ren orig b)
  | _ -> t

(* ------------------------------------------------------------------------ *)
(* Signatures and closed statements (the uniform form of a sequent).        *)
(* ------------------------------------------------------------------------ *)

type sg = { tvs : (string * string) list; vars : (string * ty * string) list; hyps : tm list; concl : tm }

(* Megalodon's parser reads a lambda whose body is a bare variable, in a proof-term position, as a
   proof-level lambda; inside proof terms such bodies are printed through the definitional identity
   hl_id (convertible).  Statements are printed plainly. *)
let rec guard (t : Mg.tm) : Mg.tm =
  match t with
  | Mg.LamIn (x, a, Mg.Var y) -> Mg.LamIn (x, guard a, Mg.App (Mg.Cst "hl_id", Mg.App (Mg.Cst "hl_id", Mg.Var y)))
  | Mg.Lam (x, ty, Mg.Var y) -> Mg.Lam (x, ty, Mg.App (Mg.Cst "hl_id", Mg.App (Mg.Cst "hl_id", Mg.Var y)))
  | Mg.LamIn (x, a, b) -> Mg.LamIn (x, guard a, guard b)
  | Mg.Lam (x, ty, b) -> Mg.Lam (x, ty, guard b)
  | Mg.App (f, x) -> Mg.App (guard f, guard x)
  | Mg.All (x, ty, b) -> Mg.All (x, ty, guard b)
  | Mg.AllIn (x, a, b) -> Mg.AllIn (x, guard a, guard b)
  | Mg.Ex (x, ty, b) -> Mg.Ex (x, ty, guard b)
  | Mg.ExIn (x, a, b) -> Mg.ExIn (x, guard a, guard b)
  | Mg.Imp (a, b) -> Mg.Imp (guard a, guard b)
  | Mg.If (c, a, b) -> Mg.If (guard c, guard a, guard b)
  | _ -> t
let pps t = Mg.to_string t                       (* statements *)
let pp t = Mg.to_string (guard t)                (* inside proof terms *)
let ppp t = "(" ^ pp t ^ ")"
(* the body of a printed meta-lambda: a bare variable goes through hl_id *)
(* not eta-reducible (hl_id (hl_id x)): Megalodon eta-reduces lambda arguments before comparing and
   would then not unfold hl_id; at body level the comparison with x unfolds it *)
let pb t = (match t with Mg.Var _ -> "hl_id (hl_id " ^ pp t ^ ")" | _ -> pp t)

(* the same conventions as Literal.statement: sorted type variables, free variables in order *)
let tyvar_names (hyps : tm list) (concl : tm) : (string * string) list =
  let all = concl :: hyps in
  let tvs = List.sort compare (uniq (List.concat_map tyvars_of_tm all)) in
  List.map (fun a -> (a, Elab.sanitize_tyvar a)) tvs

let make_ctx (an : L.analysis) (tvs : (string * string) list) = L.new_ctx an.L.consts an.L.supported an.L.tydefs tvs

(* register the free variables (names as Literal.statement); returns the declarations *)
let declare_vars (ctx : L.ctx) (fvs : (string * ty) list) : (string * ty * string) list =
  List.map (fun (s, ty) -> let n = L.fresh ctx s in ctx.L.vars <- (s, Mg.Var n) :: ctx.L.vars; (s, ty, n)) fvs

let signature (an : L.analysis) (hyps : tm list) (concl : tm) : sg =
  let tvs = tyvar_names hyps concl in
  let ctx = make_ctx an tvs in
  let fvs = uniq (List.concat_map frees (concl :: hyps)) in
  let vars = declare_vars ctx fvs in
  { tvs; vars; hyps; concl }

(* a context with the signature's variables registered *)
let ctx_of (an : L.analysis) (sg : sg) : L.ctx =
  let ctx = make_ctx an sg.tvs in
  List.iter (fun (s, _, n) -> ctx.L.vars <- (s, Mg.Var n) :: ctx.L.vars; if not (List.mem n ctx.L.used) then ctx.L.used <- n :: ctx.L.used) sg.vars;
  ctx

let one = Mg.Num 1

(* Opening a binder: the bound variable becomes the pseudo-free variable hl__b<depth> (never a HOL
   name, so a free variable of the same HOL name inside the body is not captured); its Megalodon
   name is fresh from the HOL binder name.  Canonical per structure, so alpha-equivalent subterms
   open identically and share typing claims. *)
let open_lam (ctx : L.ctx) (x : string) (ty : ty) (body : tm) : string * string * tm =
  let depth = List.fold_left (fun m (k, _) ->
    if String.length k > 5 && String.sub k 0 5 = "hl__b" then (try max m (1 + int_of_string (String.sub k 5 (String.length k - 5))) with _ -> m) else m) 0 ctx.L.vars in
  let key = "hl__b" ^ string_of_int depth in
  let n = L.fresh ctx x in
  ctx.L.vars <- (key, Mg.Var n) :: ctx.L.vars;
  (n, key, open_with (Free (key, ty)) body)
let close_lam (ctx : L.ctx) (key : string) (n : string) =
  ctx.L.vars <- List.remove_assoc key ctx.L.vars; L.release ctx n

let rec uterm (ctx : L.ctx) (t : tm) : Mg.tm =
  match t with
  | Bound _ -> failwith "uterm: bound variable"
  | Free (s, _) -> (try List.assoc s ctx.L.vars with Not_found -> unsupported "uterm: variable %s not in scope [%s]" s (String.concat "," (List.map fst ctx.L.vars)))
  | Const ("hl__choose", ty) -> Mg.apps (Mg.Cst "choose_in") [ L.carrier ctx ty; Mg.Lam ("hl__y", Mg.Set, Mg.Cst "True") ]
  | Const (c, ty) -> L.const_ref ctx c ty
  | App (f, x) -> Mg.App (uterm ctx f, uterm ctx x)
  | Lam (x, ty, body) ->
      let n, key, body' = open_lam ctx x ty body in
      let b = uterm ctx body' in
      close_lam ctx key n;
      Mg.LamIn (n, L.carrier ctx ty, b)

let ustmt_of (an : L.analysis) (sg : sg) : Mg.tm =
  let ctx = ctx_of an sg in
  let body = List.fold_right (fun h acc -> Mg.Imp (L.mg_eq (uterm ctx h) one, acc)) sg.hyps (L.mg_eq (uterm ctx sg.concl) one) in
  let body = List.fold_right (fun (_, ty, n) acc -> Mg.AllIn (n, L.carrier ctx ty, acc)) sg.vars body in
  let body = List.fold_right (fun (_, n) acc -> Mg.Imp (L.mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc)) sg.tvs body in
  List.fold_right (fun (_, n) acc -> Mg.All (n, Mg.Set, acc)) sg.tvs body

(* the binders of the closed statement, as a proof-term lambda prefix *)
let binders (sg : sg) : string =
  String.concat " " (List.map (fun (_, n) -> n) sg.tvs @ List.map (fun (_, n) -> "H" ^ n ^ "ne") sg.tvs
                     @ List.concat_map (fun (_, _, n) -> [ n; "H" ^ n ]) sg.vars
                     @ List.mapi (fun i _ -> "Hh" ^ string_of_int i) sg.hyps)

(* ------------------------------------------------------------------------ *)
(* Nonemptiness of carriers and typing of uniform terms.                     *)
(* ------------------------------------------------------------------------ *)

let rec ne (ctx : L.ctx) (ty : ty) : string =
  let car = L.carrier ctx in
  match ty with
  | TyVar a -> "H" ^ (try List.assoc a ctx.L.tyvar_names with Not_found -> Elab.sanitize_tyvar a) ^ "ne"
  | TyApp ("bool", []) -> "two_nonempty"
  | TyApp (("num" | "ind"), []) -> "omega_nonempty"
  | TyApp ("real", []) -> "(nonempty_of_In R 0 real_0)"
  | TyApp ("1", []) -> "one_nonempty"
  | TyApp ("fun", [ a; b ]) -> Printf.sprintf "(setexp_nonempty %s %s %s)" (ppp (car a)) (ppp (car b)) (ne ctx b)
  | TyApp ("prod", [ a; b ]) -> Printf.sprintf "(setprod_nonempty %s %s %s %s)" (ppp (car a)) (ppp (car b)) (ne ctx a) (ne ctx b)
  | TyApp ("list", [ a ]) -> Printf.sprintf "(finseq_nonempty %s)" (ppp (car a))
  | TyApp ("option", [ a ]) -> Printf.sprintf "(setsum_nonempty_l 1 %s one_nonempty)" (ppp (car a))
  | TyApp ("sum", [ a; b ]) -> Printf.sprintf "(setsum_nonempty_l %s %s %s)" (ppp (car a)) (ppp (car b)) (ne ctx a)
  | TyApp (c, []) when Hashtbl.mem ctx.L.tydefs c -> Printf.sprintf "hl_ty_%s_nonempty" (Elab.sanitize_var c)
  | TyApp (c, args) when Hashtbl.mem ctx.L.tydefs c ->
      (* parametrised translated type: hl_ty_T_nonempty A.. HA.. (docs/DESIGN.md 21.9) *)
      Printf.sprintf "(hl_ty_%s_nonempty %s %s)" (Elab.sanitize_var c) (String.concat " " (List.map (fun a -> ppp (car a)) args)) (String.concat " " (List.map (ne ctx) args))
  | TyApp (c, _) -> unsupported "nonemptiness of the carrier of %s" c

type env = {
  an : L.analysis;
  thm_name : string -> string;          (* HOL theorem name -> Megalodon name *)
  leaves : (string, sg) Hashtbl.t;      (* named leaves referenced, with their signatures *)
  mutable share : bool;                 (* typing derivations as shared claims (inside hltu_N) *)
  tcl : (tm, string) Hashtbl.t;         (* canonical term -> typing claim name *)
  pending : Buffer.t;                   (* typing claims to emit before the current node claim *)
  mutable tcount : int;
  ren : (string * ty, string) Hashtbl.t;   (* variables renamed apart (rename_apart) *)
  orig : (string, string) Hashtbl.t;
}

let hyp_of_var (ctx : L.ctx) (s : string) : string =
  match List.assoc_opt s ctx.L.vars with Some (Mg.Var n) -> "H" ^ n | _ -> unsupported "variable %s not in scope [%s]" s (String.concat "," (List.map fst ctx.L.vars))

let closed_stmt (an : L.analysis) (sg : sg) (body : Mg.tm) : Mg.tm =
  let ctx = ctx_of an sg in
  let body = List.fold_right (fun (_, ty, n) acc -> Mg.AllIn (n, L.carrier ctx ty, acc)) sg.vars body in
  let body = List.fold_right (fun (_, n) acc -> Mg.Imp (L.mg_neq (Mg.Var n) (Mg.Cst "Empty"), acc)) sg.tvs body in
  List.fold_right (fun (_, n) acc -> Mg.All (n, Mg.Set, acc)) sg.tvs body

let rec utyp (env : env) (ctx : L.ctx) (t : tm) : string =
  match t with
  | Bound _ -> failwith "utyp: bound variable"
  | Free (s, _) -> hyp_of_var ctx s
  | (App _ | Lam _) when env.share -> apply_tclaim env ctx t
  | Const ("hl__choose", ty) -> Printf.sprintf "(choose_in_in %s %s (fun hl__y:set => True))" (ppp (L.carrier ctx ty)) (ne ctx ty)
  | Const (c, ty) ->
      let generic = (try Hashtbl.find ctx.L.consts c with Not_found -> unsupported "constant %s has no generic type" c) in
      let sub = L.match_ty generic ty [] in
      let tvs = L.tyvars_ordered generic [] in
      (* typing lemmas of constants whose type mentions a translated type definition exist in the
         literal-carrier form (_in_lit); the uniform terms use literal carriers *)
      let lit = List.exists (fun k -> Hashtbl.mem ctx.L.tydefs k) (L.tycons_of_ty generic []) in
      let name = L.mg_name_of_const c ^ (if lit then "_in_lit" else "_in") in
      if tvs = [] then name
      else Printf.sprintf "(%s %s %s)" name (String.concat " " (List.map (fun a -> ppp (L.carrier ctx (List.assoc a sub))) tvs))
             (String.concat " " (List.map (fun a -> ne ctx (List.assoc a sub)) tvs))
  | App (f, x) ->
      let a, b = dest_fun_ty (type_of [] f) in
      (try Printf.sprintf "(setexp_ap %s %s %s %s %s %s)" (ppp (L.carrier ctx a)) (ppp (L.carrier ctx b)) (ppp (uterm ctx f)) (utyp env ctx f) (ppp (uterm ctx x)) (utyp env ctx x)
       with Import_unsupported m when String.length m < 400 -> unsupported "%s | in %s" m (String.concat " " (List.map (fun (s, _) -> s) (frees t))))
  | Lam (x, ty, body) ->
      let n, key, body' = open_lam ctx x ty body in
      let bty = type_of [] body' in
      let r = Printf.sprintf "(u_lam_in %s %s (fun %s:set => %s) (fun %s H%s => %s))" (ppp (L.carrier ctx ty)) (ppp (L.carrier ctx bty)) n (pb (uterm ctx body')) n n (utyp env ctx body') in
      close_lam ctx key n;
      r

(* a shared typing claim for an application or abstraction: closed over the term's type variables
   and free variables, emitted (with the claims it uses) before the node that first needs it *)
and apply_tclaim (env : env) (ctx : L.ctx) (t : tm) : string =
  let key = canon t in
  let name = (match Hashtbl.find_opt env.tcl key with
    | Some nm -> nm
    | None ->
        let nm = "t" ^ string_of_int env.tcount in
        env.tcount <- env.tcount + 1;
        Hashtbl.replace env.tcl key nm;
        let sg = signature env.an [] t in
        let ctx' = ctx_of env.an sg in
        let stmt = closed_stmt env.an sg (L.mg_in (uterm ctx' t) (L.carrier ctx' (type_of [] t))) in
        let body = (match t with
          | App (f, x) ->
              let a, b = dest_fun_ty (type_of [] f) in
              Printf.sprintf "(setexp_ap %s %s %s %s %s %s)" (ppp (L.carrier ctx' a)) (ppp (L.carrier ctx' b)) (ppp (uterm ctx' f)) (utyp env ctx' f) (ppp (uterm ctx' x)) (utyp env ctx' x)
          | Lam (x, ty, body) ->
              let n, key, body' = open_lam ctx' x ty body in
              let bty = type_of [] body' in
              let r = Printf.sprintf "(u_lam_in %s %s (fun %s:set => %s) (fun %s H%s => %s))" (ppp (L.carrier ctx' ty)) (ppp (L.carrier ctx' bty)) n (pb (uterm ctx' body')) n n (utyp env ctx' body') in
              close_lam ctx' key n;
              r
          | _ -> assert false) in
        let pf = if binders sg = "" then body else Printf.sprintf "(fun %s => %s)" (binders sg) body in
        Buffer.add_string env.pending (Printf.sprintf "claim %s : %s.\n{ exact %s. }\n" nm (pps stmt) pf);
        nm) in
  let sg = signature env.an [] t in
  let tyargs = List.map (fun (a, _) -> ppp (L.carrier ctx (TyVar a))) sg.tvs @ List.map (fun (a, _) -> ne ctx (TyVar a)) sg.tvs in
  let vargs = List.concat_map (fun (s, _, _) -> [ ppp (try List.assoc s ctx.L.vars with Not_found -> unsupported "typing claim of %s: variable %s not in scope" (Mg.to_string (uterm ctx t)) s); hyp_of_var ctx s ]) sg.vars in
  let args = tyargs @ vargs in
  if args = [] then name else Printf.sprintf "(%s %s)" name (String.concat " " args)

(* ------------------------------------------------------------------------ *)
(* Coherence between the deep literal translation and the uniform one.     *)
(* ------------------------------------------------------------------------ *)

(* coh t : L[t] = U[t];  cohp t : LP[t] <-> U[t] = 1 *)
let rec coh (env : env) (ctx : L.ctx) (t : tm) : string =
  if type_of [] t = bool_ty && L.is_logical t then
    Printf.sprintf "(eq_trans_i %s %s %s (If_i_iff_ext %s (%s = 1) %s) (If_eq1_self %s %s))"
      (ppp (L.lterm ctx t)) (ppp (Mg.If (L.mg_eq (uterm ctx t) one, one, Mg.Num 0))) (ppp (uterm ctx t))
      (ppp (L.lprop ctx t)) (ppp (uterm ctx t)) (cohp env ctx t) (ppp (uterm ctx t)) (utyp env ctx t)
  else
    match t with
    | Free _ | Const _ -> "(fun q H => H)"
    | App (f, x) ->
        if coh_trivial ctx f && coh_trivial ctx x then "(fun q H => H)"
        else Printf.sprintf "(f_equal2 (fun u:set => fun v:set => u v) %s %s %s %s %s %s)" (ppp (L.lterm ctx f)) (ppp (uterm ctx f)) (ppp (L.lterm ctx x)) (ppp (uterm ctx x)) (coh env ctx f) (coh env ctx x)
    | Lam (x, ty, body) ->
        let n, key, body' = open_lam ctx x ty body in
        let r = if coh_trivial ctx body' then "(fun q H => H)"
                else Printf.sprintf "(lam_ext_in %s (fun %s:set => %s) (fun %s:set => %s) (fun %s H%s => %s))" (ppp (L.carrier ctx ty)) n (pb (L.lterm ctx body')) n (pb (uterm ctx body')) n n (coh env ctx body') in
        close_lam ctx key n;
        r
    | Bound _ -> failwith "coh: bound"

(* L[t] and U[t] coincide syntactically when t has no applied logical head as data *)
and coh_trivial (ctx : L.ctx) (t : tm) : bool =
  if type_of [] t = bool_ty && L.is_logical t then false
  else match t with
    | Free _ | Const _ -> true
    | App (f, x) -> coh_trivial ctx f && coh_trivial ctx x
    | Lam (x, ty, body) ->
        let n, key, body' = open_lam ctx x ty body in
        let r = coh_trivial ctx body' in
        close_lam ctx key n; r
    | Bound _ -> false

and cohp (env : env) (ctx : L.ctx) (t : tm) : string =
  let u x = ppp (uterm ctx x) and lp x = ppp (L.lprop ctx x) in
  let eq1 x = Printf.sprintf "(%s = 1)" (ppp (uterm ctx x)) in
  match head_and_args t with
  | Const ("T", _), [] -> "hl_T_lit"
  | Const ("F", _), [] -> "hl_F_lit"
  | Const ("~", _), [ a ] ->
      Printf.sprintf "(iff_tra %s (~ %s) (%s = 1) (iff_not_cong %s %s %s) (iff_symm (%s = 1) (~ %s) (hl_not_char %s %s)))"
        (ppp (L.lprop ctx t)) (eq1 a) (ppp (uterm ctx t)) (lp a) (eq1 a) (cohp env ctx a) (ppp (uterm ctx t)) (eq1 a) (u a) (utyp env ctx a)
  | Const (("/\\" | "\\/" | "==>") as op, _), [ a; b ] ->
      let cong, conn, char = (match op with "/\\" -> "iff_and_cong", "/\\", "hl_and_char" | "\\/" -> "iff_or_cong", "\\/", "hl_or_char" | _ -> "iff_imp_cong", "->", "hl_imp_char") in
      let mid = Printf.sprintf "(%s %s %s)" (eq1 a) conn (eq1 b) in
      Printf.sprintf "(iff_tra %s %s (%s = 1) (%s %s %s %s %s %s %s) (iff_symm (%s = 1) %s (%s %s %s %s %s)))"
        (ppp (L.lprop ctx t)) mid (ppp (uterm ctx t)) cong (lp a) (eq1 a) (lp b) (eq1 b) (cohp env ctx a) (cohp env ctx b)
        (ppp (uterm ctx t)) mid char (u a) (utyp env ctx a) (u b) (utyp env ctx b)
  | Const ("=", cty), [ a; b ] ->
      let ty, _ = dest_fun_ty cty in
      let car = ppp (L.carrier ctx ty) in
      if ty = bool_ty then
        let mid = Printf.sprintf "(%s <-> %s)" (eq1 a) (eq1 b) in
        Printf.sprintf "(iff_tra %s %s (%s = 1) (iff_iff_cong %s %s %s %s %s %s) (iff_symm (%s = 1) %s (iff_tra (%s = 1) (%s = %s) %s (hl_eq_iff 2 %s %s %s %s) (eq2_iff %s %s %s %s))))"
          (ppp (L.lprop ctx t)) mid (ppp (uterm ctx t)) (lp a) (eq1 a) (lp b) (eq1 b) (cohp env ctx a) (cohp env ctx b)
          (ppp (uterm ctx t)) mid (ppp (uterm ctx t)) (ppp (uterm ctx a)) (ppp (uterm ctx b)) mid (u a) (utyp env ctx a) (u b) (utyp env ctx b) (u a) (utyp env ctx a) (u b) (utyp env ctx b)
      else
        let mid = Printf.sprintf "(%s = %s)" (ppp (uterm ctx a)) (ppp (uterm ctx b)) in
        Printf.sprintf "(iff_tra %s %s (%s = 1) (eq_iff_of_eq %s %s %s %s %s %s) (iff_symm (%s = 1) %s (hl_eq_iff %s %s %s %s %s)))"
          (ppp (L.lprop ctx t)) mid (ppp (uterm ctx t)) (ppp (L.lterm ctx a)) (u a) (ppp (L.lterm ctx b)) (u b) (coh env ctx a) (coh env ctx b)
          (ppp (uterm ctx t)) mid car (u a) (utyp env ctx a) (u b) (utyp env ctx b)
  | Const (("!" | "?") as q, _), [ Lam (x, ty, body) ] ->
      let n, key, body' = open_lam ctx x ty body in
      let car = ppp (L.carrier ctx ty) in
      let lam = Printf.sprintf "(fun %s :e %s => %s)" n (pp (L.carrier ctx ty)) (pb (uterm ctx body')) in
      let cong, quant, char = (match q with "!" -> "iff_forall_in_cong", "forall", "hl_forall_char" | _ -> "iff_exists_in_cong", "exists", "hl_exists_char") in
      let mid = Printf.sprintf "(%s %s :e %s, %s %s = 1)" quant n (pp (L.carrier ctx ty)) lam n in
      let r = Printf.sprintf "(iff_tra %s %s (%s = 1) (%s %s (fun %s:set => %s) (fun %s:set => %s %s = 1) (fun %s H%s => (iff_tra %s (%s = 1) (%s %s = 1) %s (eq_iff_eq1 %s (%s %s) (eq_sym_i (%s %s) %s (beta %s (fun %s:set => %s) %s H%s)))))) (iff_symm (%s = 1) %s (%s %s %s (u_lam_in %s 2 (fun %s:set => %s) (fun %s H%s => %s)))))"
        (ppp (L.lprop ctx t)) mid (ppp (uterm ctx t)) cong car n (pp (L.lprop ctx body')) n lam n n n
        (ppp (L.lprop ctx body')) (pp (uterm ctx body')) lam n (cohp env ctx body') (ppp (uterm ctx body')) lam n lam n (ppp (uterm ctx body')) car n (pp (uterm ctx body')) n n
        (ppp (uterm ctx t)) mid char car lam car n (pb (uterm ctx body')) n n (utyp env ctx body') in
      close_lam ctx key n;
      r
  | Const ("COND", _), [ c; a; b ] when type_of [] t = bool_ty ->
      let mid = Printf.sprintf "((%s /\\ %s) \\/ (~ %s /\\ %s))" (eq1 c) (eq1 a) (eq1 c) (eq1 b) in
      Printf.sprintf "(iff_tra %s %s (%s = 1) (iff_or_cong (%s /\\ %s) (%s /\\ %s) (~ %s /\\ %s) (~ %s /\\ %s) (iff_and_cong %s %s %s %s %s %s) (iff_and_cong (~ %s) (~ %s) %s %s (iff_not_cong %s %s %s) %s)) (iff_symm (%s = 1) %s (hl_COND_char2 %s %s %s %s %s %s)))"
        (ppp (L.lprop ctx t)) mid (ppp (uterm ctx t))
        (lp c) (lp a) (eq1 c) (eq1 a) (lp c) (lp b) (eq1 c) (eq1 b)
        (lp c) (eq1 c) (lp a) (eq1 a) (cohp env ctx c) (cohp env ctx a)
        (lp c) (eq1 c) (lp b) (eq1 b) (lp c) (eq1 c) (cohp env ctx c) (cohp env ctx b)
        (ppp (uterm ctx t)) mid (u c) (utyp env ctx c) (u a) (utyp env ctx a) (u b) (utyp env ctx b)
  | _ -> Printf.sprintf "(eq_iff_eq1 %s %s %s)" (ppp (L.lterm ctx t)) (u t) (coh env ctx t)

(* ------------------------------------------------------------------------ *)
(* Node proofs.                                                             *)
(* ------------------------------------------------------------------------ *)


let dest_eq (t : tm) : ty * tm * tm =
  match head_and_args t with
  | Const ("=", cty), [ a; b ] -> (fst (dest_fun_ty cty), a, b)
  | _ -> unsupported "not an equation"

(* application of a premise's closed statement in the current context *)
let apply_prem (ctx : L.ctx) (pf : string) (sg_j : sg) ~(tymap : string -> ty) ~(tmmap : string * ty -> Mg.tm * string) ~(hypmap : tm -> string) : string =
  let tyargs = List.map (fun (a, _) -> ppp (L.carrier ctx (tymap a))) sg_j.tvs @ List.map (fun (a, _) -> ne ctx (tymap a)) sg_j.tvs in
  let inst_theta = List.map (fun (a, _) -> (a, tymap a)) sg_j.tvs in
  let vargs = List.concat_map (fun (s, ty, _) -> let t, p = tmmap (s, inst_ty inst_theta ty) in [ ppp t; p ]) sg_j.vars in
  let hargs = List.map (fun h -> hypmap h) sg_j.hyps in
  let args = tyargs @ vargs @ hargs in
  if args = [] then pf else Printf.sprintf "(%s %s)" pf (String.concat " " args)

let node_proof (env : env) (p : proof) (sgs : sg array) (i : int) : string =
  let n = p.nodes.(i) in
  let sg = sgs.(i) in
  let ctx = ctx_of env.an sg in
  let u t = ppp (uterm ctx t) and ty_ t = utyp env ctx t and car ty = ppp (L.carrier ctx ty) in
  let hyp_index (h : tm) = (let rec go k = function
    | [] -> unsupported "node %d (%s): hypothesis %s not in scope [%s]" i n.rule (Mg.to_string (uterm ctx h)) (String.concat "; " (List.map (fun x -> Mg.to_string (uterm ctx x)) sg.hyps))
    | x :: rest -> if alpha_eq x h then "Hh" ^ string_of_int k else go (k + 1) rest in go 0 sg.hyps) in
  (* identity-style maps for the current node *)
  let tymap_id a = if List.mem_assoc a sg.tvs then TyVar a else TyApp ("1", []) in
  let tmmap_id (s, ty) =
    let s = canon_name env.ren env.orig s ty in
    (match List.find_opt (fun (s', ty', _) -> s' = s && ty' = ty) sg.vars with
     | Some (_, _, nm) -> (Mg.Var nm, "H" ^ nm)
     | None -> (uterm ctx (Const ("hl__choose", ty)), utyp env ctx (Const ("hl__choose", ty)))) in
  (* variables and type variables of the premises that do not occur in this node's sequent are closed
     consistently: lost type variables become 1, lost variables the pseudo-constant hl__choose *)
  let prem_sgs = List.map (fun j -> sgs.(j)) n.prem in
  let lost_ty = List.filter_map (fun (a, _) -> if List.mem_assoc a sg.tvs then None else Some (a, TyApp ("1", []))) (uniq (List.concat_map (fun (g : sg) -> g.tvs) prem_sgs)) in
  let keep_var = ref [] in   (* variables bound locally by the rule (ABS) *)
  let cl (t : tm) : tm =
    let t = fix_names env.ren env.orig (inst_tm lost_ty t) in
    let fv = uniq (frees t) in
    let sub = List.filter_map (fun (s, ty) -> if List.exists (fun (s', ty', _) -> s' = s && ty' = ty) sg.vars || List.mem (s, ty) !keep_var then None else Some ((s, ty), Const ("hl__choose", ty))) fv in
    subst_frees sub t in
  let prem k =
    let j = List.nth n.prem k in
    (match p.nodes.(j).leaf with
     | Some name when p.nodes.(j).rule = "NAMED" -> "hltu_" ^ env.thm_name name
     | _ -> "n" ^ string_of_int j) in
  let pre k = apply_prem ctx (prem k) sgs.(List.nth n.prem k) ~tymap:tymap_id ~tmmap:tmmap_id ~hypmap:hyp_index in
  let body = (match n.rule with
    | "REFL" ->
        let t = Option.get n.tm in
        Printf.sprintf "(u_refl %s %s %s)" (car (type_of [] t)) (u t) (ty_ t)
    | "TRANS" ->
        let ty, a, _ = dest_eq n.concl in
        let _, _, b = dest_eq (cl p.nodes.(List.nth n.prem 0).concl) in
        let _, _, c = dest_eq n.concl in
        Printf.sprintf "(u_trans %s %s %s %s %s %s %s %s %s)" (car ty) (u a) (ty_ a) (u b) (ty_ b) (u c) (ty_ c) (pre 0) (pre 1)
    | "MK_COMB" ->
        let _, f, g = dest_eq (cl p.nodes.(List.nth n.prem 0).concl) in
        let a_ty, x, y = dest_eq (cl p.nodes.(List.nth n.prem 1).concl) in
        let _, b_ty = dest_fun_ty (type_of [] f) in
        Printf.sprintf "(u_mkcomb %s %s %s %s %s %s %s %s %s %s %s %s)" (car a_ty) (car b_ty) (u f) (ty_ f) (u g) (ty_ g) (u x) (ty_ x) (u y) (ty_ y) (pre 0) (pre 1)
    | "ABS" ->
        let v = (match n.tm with Some (Free (s, ty)) -> (s, ty) | _ -> unsupported "ABS variable") in
        keep_var := [ v ];
        let _, l, r = dest_eq (cl p.nodes.(List.nth n.prem 0).concl) in
        let vs, vty = v in
        let bty = type_of [] l in
        let nm = L.fresh ctx vs in
        ctx.L.vars <- (vs, Mg.Var nm) :: ctx.L.vars;
        let tmmap (s, ty) = if s = vs && ty = vty then (Mg.Var nm, "H" ^ nm) else tmmap_id (s, ty) in
        let inner = apply_prem ctx (prem 0) sgs.(List.nth n.prem 0) ~tymap:tymap_id ~tmmap ~hypmap:hyp_index in
        let r = Printf.sprintf "(u_abs %s %s (fun %s:set => %s) (fun %s:set => %s) (fun %s H%s => %s) (fun %s H%s => %s) (fun %s H%s => %s))"
                  (car vty) (car bty) nm (pb (uterm ctx l)) nm (pb (uterm ctx r)) nm nm (ty_ l) nm nm (ty_ r) nm nm inner in
        ctx.L.vars <- List.remove_assoc vs ctx.L.vars; L.release ctx nm;
        r
    | "BETA" ->
        (match n.tm with
         | Some (App (Lam (x, ty, body), (Free (_, _) as arg))) ->
             let uarg = u arg and targ = ty_ arg in   (* the argument is the free variable x: before opening the binder of the same name *)
             let nm, key, body' = open_lam ctx x ty body in
             let bty = type_of [] body' in
             let r = Printf.sprintf "(u_beta %s %s (fun %s:set => %s) (fun %s H%s => %s) %s %s)" (car ty) (car bty) nm (pb (uterm ctx body')) nm nm (ty_ body') uarg targ in
             close_lam ctx key nm;
             r
         | _ -> unsupported "BETA shape")
    | "ASSUME" -> hyp_index (Option.get n.tm)
    | "EQ_MP" ->
        let _, a, b = dest_eq (cl p.nodes.(List.nth n.prem 0).concl) in
        Printf.sprintf "(u_eqmp %s %s %s %s %s %s)" (u a) (ty_ a) (u b) (ty_ b) (pre 0) (pre 1)
    | "DEDUCT_ANTISYM_RULE" ->
        let c1 = cl p.nodes.(List.nth n.prem 0).concl and c2 = cl p.nodes.(List.nth n.prem 1).concl in
        let hm1 h = if alpha_eq (cl h) c2 then "Hd__r" else hyp_index h and hm2 h = if alpha_eq (cl h) c1 then "Hd__l" else hyp_index h in
        let p1 = apply_prem ctx (prem 0) sgs.(List.nth n.prem 0) ~tymap:tymap_id ~tmmap:tmmap_id ~hypmap:hm1 in
        let p2 = apply_prem ctx (prem 1) sgs.(List.nth n.prem 1) ~tymap:tymap_id ~tmmap:tmmap_id ~hypmap:hm2 in
        Printf.sprintf "(u_deduct %s %s %s %s (fun Hd__r => %s) (fun Hd__l => %s))" (u c1) (ty_ c1) (u c2) (ty_ c2) p1 p2
    | "INST_TYPE" ->
        let theta = n.theta_ty in
        let tymap a = (try List.assoc a theta with Not_found -> tymap_id a) in
        let hypmap h = hyp_index (fix_names env.ren env.orig (inst_tm theta h)) in
        apply_prem ctx (prem 0) sgs.(List.nth n.prem 0) ~tymap ~tmmap:tmmap_id ~hypmap
    | "INST" ->
        let theta = n.theta_tm in
        let tmmap (s, ty) = (match List.assoc_opt (s, ty) theta with Some t -> (uterm ctx t, ty_ t) | None -> tmmap_id (s, ty)) in
        let hypmap h = hyp_index (subst_frees theta h) in
        apply_prem ctx (prem 0) sgs.(List.nth n.prem 0) ~tymap:tymap_id ~tmmap ~hypmap
    | "NAMED" ->
        let name = Option.get n.leaf in
        Hashtbl.replace env.leaves name sg;
        (* the leaf's own statement is closed over its signature; here it is applied to the node's context *)
        apply_prem ctx ("hltu_" ^ env.thm_name name) sg ~tymap:tymap_id ~tmmap:tmmap_id ~hypmap:hyp_index
    | "AXIOM" ->
        (match n.concl with
         | App (Const ("!", _), Lam (_, TyApp ("fun", [ a; b ]), App (App (Const ("=", _), Lam (_, _, App (Bound 1, Bound 0))), Bound 0))) ->
             Printf.sprintf "(u_ETA_AX %s %s %s %s)" (car a) (car b) (ne ctx a) (ne ctx b)
         | App (Const ("!", _), Lam (_, TyApp ("fun", [ a; TyApp ("bool", []) ]), App (Const ("!", _), Lam (_, _, App (App (Const ("==>", _), _), _))))) ->
             Printf.sprintf "(u_SELECT_AX %s %s)" (car a) (ne ctx a)
         | App (Const ("?", _), Lam (_, TyApp ("fun", [ TyApp ("ind", []); TyApp ("ind", []) ]), _)) -> "u_INFINITY_AX"
         | _ -> unsupported "axiom %s" (Mg.to_string (uterm ctx n.concl)))
    | "DEFINITION" ->
        let ty, c, rhs = dest_eq n.concl in
        (match c with Const (cn, _) when List.mem_assoc cn L.primitive_consts -> unsupported "definition of the primitive constant %s" cn | _ -> ());
        Printf.sprintf "(u_eq_intro %s %s %s %s %s %s)" (car ty) (u c) (ty_ c) (u rhs) (ty_ rhs) (coh env ctx rhs)
    | "TYDEF_ABS" | "TYDEF_REP" ->
        let td = (match List.find_opt (fun ((td : type_definition), _) -> td.td_name = n.tyn) env.an.L.type_definitions with
          | Some (td, _) -> td | None -> unsupported "type definition %s not translated" n.tyn) in
        let rho, pf = L.dest_tydef_bij td in
        let rcar = car rho and pred = u pf in
        if n.rule = "TYDEF_ABS" then begin
          (* abs (rep a) = a *)
          let ty, lhs, a = dest_eq n.concl in
          Printf.sprintf "(u_eq_intro %s %s %s %s %s (hl_subtype_abs_rep %s %s %s %s))" (car ty) (u lhs) (ty_ lhs) (u a) (ty_ a) rcar pred (u a) (ty_ a)
        end else begin
          (* P r = (rep (abs r) = r), with the nonemptiness theorem P t as premise *)
          let _, lhs, _ = dest_eq n.concl in
          let r = (match lhs with App (_, r) -> r | _ -> unsupported "TYDEF_REP shape") in
          let pt = cl p.nodes.(List.nth n.prem 0).concl in
          let p', t = (match pt with App (p', t) -> (p', t) | _ -> unsupported "TYDEF_REP premise shape") in
          (* the nonemptiness theorem P' t: P' is the definition's predicate up to a beta step *)
          let wit = (if alpha_eq p' pf then pre 0
                     else match p' with
                       | Lam (x, ty, b) when alpha_eq (open_with t b) (App (pf, t)) || alpha_eq (canon (open_with t b)) (canon (App (pf, t))) ->
                           let nm, key, b' = open_lam ctx x ty b in
                           let lam = Printf.sprintf "(fun %s:set => %s)" nm (pb (uterm ctx b')) in
                           close_lam ctx key nm;
                           Printf.sprintf "((beta %s %s %s %s) (fun hl__u hl__v => hl__u = 1) %s)" (car ty) lam (u t) (ty_ t) (pre 0)
                       | _ -> unsupported "TYDEF_REP: predicate %s differs from the definition's" (Mg.to_string (uterm ctx p'))) in
          let lem = Printf.sprintf "(u_tydef_rep %s %s (hl_subtype_nonempty_of %s %s %s %s %s) %s %s %s)" rcar pred rcar pred (u t) (ty_ t) wit (ty_ pf) (u r) (ty_ r) in
          (* the theorem states P' r with P' the (possibly eta-expanded) predicate: beta step on the left *)
          let _, _, rhs_t = dest_eq n.concl in
          (match lhs with
           | App ((Lam (x, ty, b) as p'), _) when not (alpha_eq p' pf) ->
               let nm, key, b' = open_lam ctx x ty b in
               let lam = Printf.sprintf "(fun %s:set => %s)" nm (pb (uterm ctx b')) in
               close_lam ctx key nm;
               Printf.sprintf "((eq_sym_i %s %s (beta %s %s %s %s)) (fun hl__u hl__v => hl_eq 2 hl__u %s = 1) %s)" (u lhs) (u (App (pf, r))) (car ty) lam (u r) (ty_ r) (u rhs_t) lem
           | _ -> lem)
        end
    | r -> unsupported "rule %s" r) in
  if binders sg = "" then body else Printf.sprintf "(fun %s => %s)" (binders sg) body

(* ------------------------------------------------------------------------ *)
(* Emission.                                                                *)
(* ------------------------------------------------------------------------ *)

type result = {
  uniform : string;            (* Theorem hltu_N ... Qed. *)
  discharge : string;          (* proof term of hlt_N from hltu_N (the coherence) *)
  leaf_names : string list;    (* HOL names of the named leaves *)
  leaf_stmts : (string * string) list;   (* Megalodon name -> uniform statement of each leaf *)
  nodes : int;
}

let import (an : L.analysis) (thm_name : string -> string) (p : proof) (seq : sequent) : result =
  let p, ren, orig = rename_apart p in
  let env = { an; thm_name; leaves = Hashtbl.create 16; share = true; tcl = Hashtbl.create 256; pending = Buffer.create 4096; tcount = 0; ren; orig } in
  let sgs = Array.map (fun (n : pnode) -> signature an n.hyps n.concl) p.nodes in
  let buf = Buffer.create 65536 in
  let root_sg = sgs.(p.root) in
  (* the root must be the exported sequent *)
  if root_sg.concl <> seq.concl || root_sg.hyps <> seq.hyps then unsupported "root sequent differs from the exported statement";
  let root_stmt = ustmt_of an root_sg in
  let name = "hltu_" ^ thm_name p.pname in
  Buffer.add_string buf (Printf.sprintf "Theorem %s : %s.\n" name (pps root_stmt));
  Array.iteri (fun i n ->
    if n.rule = "NAMED" then Hashtbl.replace env.leaves (Option.get n.leaf) sgs.(i)   (* leaves are theorems, referenced directly *)
    else begin
      let stmt = ustmt_of an sgs.(i) in
      let pf = (try node_proof env p sgs i with Import_unsupported m when String.length m < 600 -> unsupported "node %d (%s): %s" i n.rule m) in
      Buffer.add_buffer buf env.pending; Buffer.clear env.pending;
      Buffer.add_string buf (Printf.sprintf "claim n%d : %s.\n{ exact %s. }\n" i (pps stmt) pf)
    end) p.nodes;
  (* leaves referenced directly: give them node aliases? no: NAMED nodes are applied by name in node_proof *)
  Buffer.add_string buf (Printf.sprintf "exact n%d.\nQed.\n" p.root);
  (* coherence: hlt_N from hltu_N (outside hltu_N: typing derivations inline) *)
  env.share <- false;
  let ctx = ctx_of an root_sg in
  let binders_txt = String.concat " " (List.map (fun (_, n) -> n) root_sg.tvs @ List.map (fun (_, n) -> "H" ^ n ^ "ne") root_sg.tvs @ List.concat_map (fun (_, _, n) -> [ n; "H" ^ n ]) root_sg.vars @ List.mapi (fun i _ -> "Hl" ^ string_of_int i) root_sg.hyps) in
  let fwd h k = Printf.sprintf "(%s (%s -> %s = 1) (fun hl__f hl__b => hl__f) Hl%d)" (cohp env ctx h) (ppp (L.lprop ctx h)) (ppp (uterm ctx h)) k in
  let args = String.concat " " (List.map (fun (_, n) -> n) root_sg.tvs @ List.map (fun (_, n) -> "H" ^ n ^ "ne") root_sg.tvs @ List.concat_map (fun (_, _, n) -> [ n; "H" ^ n ]) root_sg.vars @ List.mapi (fun k h -> fwd h k) root_sg.hyps) in
  let applied = if args = "" then name else Printf.sprintf "(%s %s)" name args in
  let c = root_sg.concl in
  let discharge = Printf.sprintf "(fun %s => (%s (%s = 1 -> %s) (fun hl__f hl__b => hl__b) %s))" binders_txt (cohp env ctx c) (ppp (uterm ctx c)) (ppp (L.lprop ctx c)) applied in
  let discharge = if binders_txt = "" then Printf.sprintf "(%s (%s = 1 -> %s) (fun hl__f hl__b => hl__b) %s)" (cohp env ctx c) (ppp (uterm ctx c)) (ppp (L.lprop ctx c)) applied else discharge in
  let leaf_names = Hashtbl.fold (fun k _ acc -> k :: acc) env.leaves [] in
  let leaf_stmts = Hashtbl.fold (fun k sg acc -> ("hltu_" ^ thm_name k, pps (ustmt_of an sg)) :: acc) env.leaves [] in
  { uniform = Buffer.contents buf; discharge; leaf_names; leaf_stmts; nodes = Array.length p.nodes }
