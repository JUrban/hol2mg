(* Canonical HOL IR: types, terms (de Bruijn bound variables), type checking,
   JSON decoding of the exporter's records, and a diagnostic printer. *)

type ty =
  | TyVar of string
  | TyApp of string * ty list

type tm =
  | Bound of int                 (* de Bruijn index, innermost binder = 0 *)
  | Free of string * ty
  | Const of string * ty         (* occurrence type *)
  | App of tm * tm
  | Lam of string * ty * tm      (* display name, domain type, body *)

exception Type_error of string

let bool_ty = TyApp ("bool", [])
let num_ty = TyApp ("num", [])
let fun_ty a b = TyApp ("fun", [a; b])

let dest_fun_ty = function
  | TyApp ("fun", [a; b]) -> (a, b)
  | _ -> raise (Type_error "dest_fun_ty: not a function type")

let is_fun_ty = function TyApp ("fun", [_; _]) -> true | _ -> false

let rec strip_fun_ty ty =
  match ty with
  | TyApp ("fun", [a; b]) -> let args, r = strip_fun_ty b in (a :: args, r)
  | _ -> ([], ty)

(* ------------------------------------------------------------------------ *)
(* Printing types (HOL Light style, for diagnostics).                       *)
(* ------------------------------------------------------------------------ *)

let rec string_of_ty ?(prec = 0) ty =
  match ty with
  | TyVar s -> s
  | TyApp ("fun", [a; b]) ->
      let s = string_of_ty ~prec:1 a ^ "->" ^ string_of_ty ~prec:0 b in
      if prec > 0 then "(" ^ s ^ ")" else s
  | TyApp ("prod", [a; b]) ->
      let s = string_of_ty ~prec:2 a ^ "#" ^ string_of_ty ~prec:1 b in
      if prec > 1 then "(" ^ s ^ ")" else s
  | TyApp (c, []) -> c
  | TyApp (c, [a]) -> string_of_ty ~prec:3 a ^ " " ^ c
  | TyApp (c, args) -> "(" ^ String.concat "," (List.map string_of_ty args) ^ ")" ^ c

(* ------------------------------------------------------------------------ *)
(* Type checking.                                                           *)
(* ------------------------------------------------------------------------ *)

(* term printer for diagnostics; set below once string_of_tm is defined *)
let tm_printer : (tm -> string) ref = ref (fun _ -> "<term>")

(* Source-IR type checking.  Every node's type is recomputed; a failure names the
   offending subterm together with the expected and actual types. *)
let rec type_of ctx tm =
  match tm with
  | Bound i ->
      (try List.nth ctx i with _ -> raise (Type_error (Printf.sprintf "unbound de Bruijn index %d (depth %d)" i (List.length ctx))))
  | Free (_, ty) | Const (_, ty) -> ty
  | App (f, x) ->
      let ft = type_of ctx f in
      let a, b = (match ft with
        | TyApp ("fun", [a; b]) -> (a, b)
        | _ -> raise (Type_error (Printf.sprintf "application of a non-function in `%s`: head `%s` has type %s"
                                    (!tm_printer tm) (!tm_printer f) (string_of_ty ft)))) in
      let xt = type_of ctx x in
      if xt = a then b
      else raise (Type_error (Printf.sprintf "application type mismatch in `%s`: argument `%s` expected %s, got %s"
                                 (!tm_printer tm) (!tm_printer x) (string_of_ty a) (string_of_ty xt)))
  | Lam (_, ty, b) -> fun_ty ty (type_of (ty :: ctx) b)

let is_prop ctx tm = (type_of ctx tm = bool_ty)

(* ------------------------------------------------------------------------ *)
(* de Bruijn utilities.                                                     *)
(* ------------------------------------------------------------------------ *)

(* lift indices >= cutoff by n *)
let rec lift n cutoff tm =
  match tm with
  | Bound i -> if i >= cutoff then Bound (i + n) else tm
  | Free _ | Const _ -> tm
  | App (f, x) -> App (lift n cutoff f, lift n cutoff x)
  | Lam (s, ty, b) -> Lam (s, ty, lift n (cutoff + 1) b)

(* substitute u for Bound k (u is at depth k... i.e. u must be lifted by k) *)
let rec subst_bound k u tm =
  match tm with
  | Bound i -> if i = k then lift k 0 u else if i > k then Bound (i - 1) else tm
  | Free _ | Const _ -> tm
  | App (f, x) -> App (subst_bound k u f, subst_bound k u x)
  | Lam (s, ty, b) -> Lam (s, ty, subst_bound (k + 1) u b)

(* open the body of a binder with a free variable *)
let open_with fv body = subst_bound 0 fv body

let beta f x =
  match f with
  | Lam (_, _, b) -> subst_bound 0 x b
  | _ -> App (f, x)

(* abstract a free variable named s of type ty (reverse of open_with) *)
let rec abstract_free (s, ty) depth tm =
  match tm with
  | Free (s', ty') when s' = s && ty' = ty -> Bound depth
  | Bound i -> if i >= depth then Bound (i + 1) else tm
  | Free _ | Const _ -> tm
  | App (f, x) -> App (abstract_free (s, ty) depth f, abstract_free (s, ty) depth x)
  | Lam (s', ty', b) -> Lam (s', ty', abstract_free (s, ty) (depth + 1) b)

(* replace a free variable by a term (term must not capture bound variables: we lift it) *)
let rec replace_free (s, ty) u depth tm =
  match tm with
  | Free (s', ty') when s' = s && ty' = ty -> lift depth 0 u
  | Bound _ | Free _ | Const _ -> tm
  | App (f, x) -> App (replace_free (s, ty) u depth f, replace_free (s, ty) u depth x)
  | Lam (s', ty', b) -> Lam (s', ty', replace_free (s, ty) u (depth + 1) b)

(* replace every occurrence of the subterm pat (closed w.r.t. binders) by u *)
let rec replace_subterm pat u depth tm =
  if tm = lift depth 0 pat then lift depth 0 u
  else match tm with
    | Bound _ | Free _ | Const _ -> tm
    | App (f, x) -> App (replace_subterm pat u depth f, replace_subterm pat u depth x)
    | Lam (s, ty, b) -> Lam (s, ty, replace_subterm pat u (depth + 1) b)

let rec frees tm =
  match tm with
  | Free (s, ty) -> [ (s, ty) ]
  | Bound _ | Const _ -> []
  | App (f, x) -> frees f @ frees x
  | Lam (_, _, b) -> frees b

let uniq l =
  let rec go seen = function
    | [] -> List.rev seen
    | x :: t -> if List.mem x seen then go seen t else go (x :: seen) t
  in go [] l

let rec consts tm =
  match tm with
  | Const (s, ty) -> [ (s, ty) ]
  | Bound _ | Free _ -> []
  | App (f, x) -> consts f @ consts x
  | Lam (_, _, b) -> consts b

let rec tyvars_of_ty = function
  | TyVar s -> [ s ]
  | TyApp (_, args) -> List.concat_map tyvars_of_ty args

let rec tyvars_of_tm tm =
  match tm with
  | Bound _ -> []
  | Free (_, ty) | Const (_, ty) -> tyvars_of_ty ty
  | App (f, x) -> tyvars_of_tm f @ tyvars_of_tm x
  | Lam (_, ty, b) -> tyvars_of_ty ty @ tyvars_of_tm b

let free_names tm = List.map fst (frees tm)

(* occurs check for Bound 0 *)
let rec occurs_bound k tm =
  match tm with
  | Bound i -> i = k
  | Free _ | Const _ -> false
  | App (f, x) -> occurs_bound k f || occurs_bound k x
  | Lam (_, _, b) -> occurs_bound (k + 1) b

(* ------------------------------------------------------------------------ *)
(* Logical structure recognizers.                                           *)
(* ------------------------------------------------------------------------ *)

let dest_binder name tm =
  match tm with
  | App (Const (c, _), Lam (s, ty, b)) when c = name -> Some (s, ty, b)
  | _ -> None

let dest_binop name tm =
  match tm with
  | App (App (Const (c, _), a), b) when c = name -> Some (a, b)
  | _ -> None

let dest_eq tm =
  match tm with
  | App (App (Const ("=", TyApp ("fun", [ ty; _ ])), a), b) -> Some (ty, a, b)
  | _ -> None

let rec strip_app tm args =
  match tm with
  | App (f, x) -> strip_app f (x :: args)
  | _ -> (tm, args)

let head_and_args tm = strip_app tm []

(* HOL Light numerals: NUMERAL (BIT0/BIT1 ... _0) *)
let rec dest_bits tm =
  match tm with
  | Const ("_0", _) -> Some 0
  | App (Const ("BIT0", _), t) -> (match dest_bits t with Some n -> Some (2 * n) | None -> None)
  | App (Const ("BIT1", _), t) -> (match dest_bits t with Some n -> Some (2 * n + 1) | None -> None)
  | _ -> None

let dest_numeral tm =
  match tm with
  | App (Const ("NUMERAL", _), t) -> dest_bits t
  | _ -> None

(* ------------------------------------------------------------------------ *)
(* HOL-style term printer (diagnostics only; names may shadow).             *)
(* ------------------------------------------------------------------------ *)

let binders = [ ("!", "!"); ("?", "?"); ("?!", "?!"); ("@", "@") ]
let infixes =
  [ ("=", ("=", 12, `Right)); ("==>", ("==>", 4, `Right)); ("/\\", ("/\\", 8, `Right));
    ("\\/", ("\\/", 6, `Right)); ("<=>", ("<=>", 2, `Right)); ("IN", ("IN", 11, `Right));
    ("+", ("+", 16, `Right)); ("*", ("*", 20, `Right)); ("-", ("-", 18, `Left));
    ("<", ("<", 12, `Right)); ("<=", ("<=", 12, `Right)); (">", (">", 12, `Right));
    (">=", (">=", 12, `Right)); (",", (",", 14, `Right)); ("o", ("o", 26, `Right));
    ("SUBSET", ("SUBSET", 12, `Right)); ("UNION", ("UNION", 16, `Right));
    ("INTER", ("INTER", 20, `Right)); ("DIFF", ("DIFF", 18, `Left));
    ("INSERT", ("INSERT", 21, `Right)); ("DELETE", ("DELETE", 21, `Left));
    ("EXP", ("EXP", 24, `Left)); ("DIV", ("DIV", 22, `Left)); ("MOD", ("MOD", 22, `Left));
    ("APPEND", ("APPEND", 16, `Right)); ("CONS", ("CONS", 23, `Right));
    ("real_add", ("+", 16, `Right)); ("real_mul", ("*", 20, `Right)); ("real_sub", ("-", 18, `Left));
    ("real_lt", ("<", 12, `Right)); ("real_le", ("<=", 12, `Right)); ("real_gt", (">", 12, `Right));
    ("real_ge", (">=", 12, `Right)); ("real_pow", ("pow", 24, `Left)); ("real_div", ("/", 22, `Left));
    ("int_add", ("+", 16, `Right)); ("int_mul", ("*", 20, `Right)); ("int_sub", ("-", 18, `Left));
    ("int_lt", ("<", 12, `Right)); ("int_le", ("<=", 12, `Right)); ("int_gt", (">", 12, `Right));
    ("int_ge", (">=", 12, `Right)); ("int_pow", ("pow", 24, `Left)); ("$", ("$", 25, `Left)) ]

let string_of_tm tm =
  let fresh names s =
    if not (List.mem s names) then s
    else
      let rec go i = let s' = s ^ string_of_int i in if List.mem s' names then go (i + 1) else s' in
      go 1
  in
  let rec pr ctx prec tm =
    match tm with
    | Bound i -> (try List.nth ctx i with _ -> "#" ^ string_of_int i)
    | Free (s, _) -> s
    | Const ("T", _) -> "T"
    | Const ("F", _) -> "F"
    | Const (s, _) -> s
    | App (Const ("~", _), a) -> let s = "~" ^ pr ctx 30 a in if prec > 30 then "(" ^ s ^ ")" else s
    | App (Const ("NUMERAL", _), _) when dest_numeral tm <> None ->
        string_of_int (Option.get (dest_numeral tm))
    | App (Const (b, _), Lam (s, ty, body)) when List.mem_assoc b binders ->
        let s' = fresh ctx s in
        let str = List.assoc b binders ^ s' ^ ":" ^ string_of_ty ty ^ ". " ^ pr (s' :: ctx) 0 body in
        if prec > 0 then "(" ^ str ^ ")" else str
    | App (App (Const ("=", TyApp ("fun", [ TyApp ("bool", []); _ ])), a), b) ->
        binop ctx prec "<=>" 2 `Right a b
    | App (App (Const (c, _), a), b) when List.mem_assoc c infixes ->
        let sym, p, assoc = List.assoc c infixes in
        binop ctx prec sym p assoc a b
    | App (App (App (Const ("COND", _), c), a), b) ->
        let s = "if " ^ pr ctx 0 c ^ " then " ^ pr ctx 0 a ^ " else " ^ pr ctx 0 b in
        if prec > 0 then "(" ^ s ^ ")" else s
    | App (f, x) ->
        let s = pr ctx 100 f ^ " " ^ pr ctx 101 x in
        if prec > 100 then "(" ^ s ^ ")" else s
    | Lam (s, ty, body) ->
        let s' = fresh ctx s in
        let str = "\\" ^ s' ^ ":" ^ string_of_ty ty ^ ". " ^ pr (s' :: ctx) 0 body in
        if prec > 0 then "(" ^ str ^ ")" else str
  and binop ctx prec sym p assoc a b =
    let lp, rp = match assoc with `Right -> (p + 1, p) | `Left -> (p, p + 1) in
    let s = pr ctx lp a ^ " " ^ sym ^ " " ^ pr ctx rp b in
    if prec > p then "(" ^ s ^ ")" else s
  in
  pr [] 0 tm

let () = tm_printer := string_of_tm

(* ------------------------------------------------------------------------ *)
(* JSON decoding of exporter records.                                       *)
(* ------------------------------------------------------------------------ *)

open Yojson.Safe

exception Decode_error of string

let rec ty_of_json (j : t) : ty =
  match j with
  | `List [ `String "v"; `String s ] -> TyVar s
  | `List [ `String "c"; `String s; `List args ] -> TyApp (s, List.map ty_of_json args)
  | _ -> raise (Decode_error ("bad type: " ^ to_string j))

let rec tm_of_json (j : t) : tm =
  match j with
  | `List [ `String "B"; `Int i ] -> Bound i
  | `List [ `String "V"; `String s; ty ] -> Free (s, ty_of_json ty)
  | `List [ `String "K"; `String s; ty ] -> Const (s, ty_of_json ty)
  | `List [ `String "A"; f; x ] -> App (tm_of_json f, tm_of_json x)
  | `List [ `String "L"; `String s; ty; b ] -> Lam (s, ty_of_json ty, tm_of_json b)
  | _ -> raise (Decode_error ("bad term: " ^ String.sub (to_string j) 0 (min 200 (String.length (to_string j)))))

let rec json_of_ty = function
  | TyVar s -> `List [ `String "v"; `String s ]
  | TyApp (s, args) -> `List [ `String "c"; `String s; `List (List.map json_of_ty args) ]

let rec json_of_tm = function
  | Bound i -> `List [ `String "B"; `Int i ]
  | Free (s, ty) -> `List [ `String "V"; `String s; json_of_ty ty ]
  | Const (s, ty) -> `List [ `String "K"; `String s; json_of_ty ty ]
  | App (f, x) -> `List [ `String "A"; json_of_tm f; json_of_tm x ]
  | Lam (s, ty, b) -> `List [ `String "L"; `String s; json_of_ty ty; json_of_tm b ]

type sequent = { hyps : tm list; concl : tm }

type thm_record = {
  kind : string;               (* theorem | axiom | basic_definition *)
  name : string;
  aliases : string list;
  hash : string;
  seq : sequent;
  tyvars : string list;
  display : string;
  warnings : t list;
}

type type_definition = {
  td_name : string; td_abs : string; td_rep : string;
  td_nonempty : tm; td_bij : tm;
}

type export = {
  meta : t;
  type_constructors : (string * int) list;
  constants : (string * ty) list;
  axioms : thm_record list;
  basic_definitions : thm_record list;
  type_definitions : type_definition list;
  inductive_types : t list;
  theorems : thm_record list;
}

let member k j = try Util.member k j with _ -> `Null
let to_string_opt = function `String s -> s | _ -> ""
let to_list_opt = function `List l -> l | _ -> []

let thm_of_json j =
  let kind = to_string_opt (member "kind" j) in
  { kind;
    name = to_string_opt (member "name" j);
    aliases = List.map to_string_opt (to_list_opt (member "aliases" j));
    hash = to_string_opt (member "hash" j);
    seq = { hyps = List.map tm_of_json (to_list_opt (member "hyps" j));
            concl = tm_of_json (member "concl" j) };
    tyvars = List.map to_string_opt (to_list_opt (member "tyvars" j));
    display = to_string_opt (member "display" j);
    warnings = to_list_opt (member "warnings" j) }

let read_export file =
  let ic = open_in file in
  let meta = ref `Null and tcs = ref [] and cs = ref [] and axs = ref [] and defs = ref []
  and tds = ref [] and inds = ref [] and thms = ref [] in
  (try
     while true do
       let line = input_line ic in
       if String.trim line <> "" then begin
         let j = from_string line in
         match to_string_opt (member "kind" j) with
         | "meta" -> meta := j
         | "type_constructor" ->
             tcs := (to_string_opt (member "name" j), Util.to_int (member "arity" j)) :: !tcs
         | "constant" -> cs := (to_string_opt (member "name" j), ty_of_json (member "type" j)) :: !cs
         | "axiom" -> axs := thm_of_json j :: !axs
         | "basic_definition" -> defs := thm_of_json j :: !defs
         | "type_definition" ->
             tds := { td_name = to_string_opt (member "name" j); td_abs = to_string_opt (member "abs" j);
                      td_rep = to_string_opt (member "rep" j);
                      td_nonempty = tm_of_json (member "nonempty_concl" j);
                      td_bij = tm_of_json (member "bijections_concl" j) } :: !tds
         | "inductive_type" -> inds := j :: !inds
         | "theorem" -> thms := thm_of_json j :: !thms
         | k -> raise (Decode_error ("unknown record kind " ^ k))
       end
     done
   with End_of_file -> ());
  close_in ic;
  { meta = !meta; type_constructors = List.rev !tcs; constants = List.rev !cs;
    axioms = List.rev !axs; basic_definitions = List.rev !defs; type_definitions = List.rev !tds;
    inductive_types = List.rev !inds; theorems = List.rev !thms }

(* ------------------------------------------------------------------------ *)
(* Extraction gate: recompute every node's type.                            *)
(* ------------------------------------------------------------------------ *)

let check_sequent (s : sequent) =
  List.iter (fun h -> let t = type_of [] h in
              if t <> bool_ty then raise (Type_error (Printf.sprintf "hypothesis `%s` has type %s, not bool" (!tm_printer h) (string_of_ty t)))) s.hyps;
  let t = type_of [] s.concl in
  if t <> bool_ty then raise (Type_error (Printf.sprintf "conclusion `%s` has type %s, not bool" (!tm_printer s.concl) (string_of_ty t)))

let check_term_bool what tm =
  let t = type_of [] tm in
  if t <> bool_ty then raise (Type_error (Printf.sprintf "%s `%s` has type %s, not bool" what (!tm_printer tm) (string_of_ty t)))
