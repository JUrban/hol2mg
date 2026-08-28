(* Mapping registry: typed decoding and validation of mappings/*.json. *)

open Hol

type role_spec = RSet | RProp | RMetaFun of int option | RMetaPred of int option | RSubset

type type_entry = {
  t_hol : string;                 (* type constructor name *)
  t_arity : int;
  t_carrier : Mg.tm;              (* template with ?0 .. ?n-1 for argument carriers *)
  t_class : string;               (* definitionally_exact | native_isomorphism | generalization | opaque *)
  t_status : string;              (* reviewed | draft | pending *)
  t_bridge : string;
  t_module : string;
  t_notes : string;
}

type const_entry = {
  c_hol : string;
  c_scheme : ty;                  (* polymorphic type scheme *)
  c_args : role_spec list;        (* one per declared argument *)
  c_result : role_spec;
  c_template : Mg.tm;             (* ?1..?n args, ?A.. type carriers *)
  c_class : string;
  c_status : string;
  c_bridge : string;
  c_notes : string;
  c_source : string;              (* mapping file *)
}

type t = {
  types : (string, type_entry) Hashtbl.t;
  consts : (string, const_entry list) Hashtbl.t;   (* several entries may share a name (different schemes) *)
  files : (string * string) list;                  (* file, md5 *)
  empty_rules : (Mg.tm * Mg.tm * string) list;     (* lhs, rhs, justifying theorem *)
  rewrite_rules : (Mg.tm * Mg.tm * string * (string * string) list) list;  (* + guards: placeholder -> guard name *)
  names : (string * string) list;                   (* HOL symbolic constant/type name -> Megalodon name (for auto definitions) *)
}

exception Registry_error of string

(* ---- HOL type scheme parser: A, bool, num, A list, (A,B)sum, A->B, A#B, A^N ---- *)

let type_constructors : (string, int) Hashtbl.t = Hashtbl.create 64

let parse_scheme (s : string) : ty =
  let n = String.length s in
  let i = ref 0 in
  let peekc () = if !i < n then Some s.[!i] else None in
  let skip () = while !i < n && (s.[!i] = ' ' || s.[!i] = '\t') do incr i done in
  let ident () =
    skip ();
    let j = !i in
    while !i < n && (let c = s.[!i] in (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c = '_' || c = '\'') do incr i done;
    String.sub s j (!i - j)
  in
  let rec arrow () =
    let a = sum () in
    skip ();
    if !i + 1 < n && s.[!i] = '-' && s.[!i + 1] = '>' then (i := !i + 2; fun_ty a (arrow ())) else a
  and sum () =
    let a = prod () in
    skip ();
    if !i < n && s.[!i] = '+' then (incr i; TyApp ("sum", [ a; sum () ])) else a
  and prod () =
    let a = cart () in
    skip ();
    if !i < n && s.[!i] = '#' then (incr i; TyApp ("prod", [ a; prod () ])) else a
  and cart () =
    let a = postfix () in
    skip ();
    if !i < n && s.[!i] = '^' then (incr i; let b = postfix () in TyApp ("cart", [ a; b ])) else a
  and postfix () =
    let a = atom () in
    let rec go a =
      skip ();
      match peekc () with
      | Some c when (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ->
          let save = !i in
          let id = ident () in
          if Hashtbl.mem type_constructors id && Hashtbl.find type_constructors id = 1 then go (TyApp (id, [ a ]))
          else (i := save; a)
      | _ -> a
    in
    go a
  and atom () =
    skip ();
    match peekc () with
    | Some '(' ->
        incr i;
        let a = arrow () in
        let args = ref [ a ] in
        skip ();
        while !i < n && s.[!i] = ',' do incr i; args := arrow () :: !args; skip () done;
        if !i >= n || s.[!i] <> ')' then raise (Registry_error ("scheme: expected ) in " ^ s));
        incr i;
        let args = List.rev !args in
        (match args with
         | [ a ] -> a
         | _ ->
             let c = ident () in
             if c = "" then raise (Registry_error ("scheme: expected constructor after tuple in " ^ s));
             TyApp (c, args))
    | Some _ ->
        let id = ident () in
        if id = "" then raise (Registry_error ("scheme: bad type " ^ s));
        if Hashtbl.mem type_constructors id then begin
          if Hashtbl.find type_constructors id = 0 then TyApp (id, [])
          else raise (Registry_error ("scheme: constructor " ^ id ^ " needs arguments in " ^ s))
        end else TyVar id
    | None -> raise (Registry_error ("scheme: unexpected end in " ^ s))
  in
  let t = arrow () in
  skip ();
  if !i <> n then raise (Registry_error ("scheme: trailing text in " ^ s));
  t

(* "metafun" / "metafun/2": optional explicit arity for schemes with nested arrows *)
let role_of_string s =
  let base, ar = (match String.index_opt s '/' with
    | Some i -> (String.sub s 0 i, Some (int_of_string (String.sub s (i + 1) (String.length s - i - 1))))
    | None -> (s, None)) in
  match base with
  | "set" -> RSet | "prop" -> RProp | "metafun" -> RMetaFun ar | "metapred" -> RMetaPred ar | "subset" -> RSubset
  | _ -> raise (Registry_error ("unknown role " ^ s))

let string_of_role = function
  | RSet -> "set" | RProp -> "prop" | RMetaFun _ -> "metafun" | RMetaPred _ -> "metapred" | RSubset -> "subset"

let str k j = match Yojson.Safe.Util.member k j with `String s -> s | `Null -> "" | _ -> raise (Registry_error ("field " ^ k ^ " must be a string"))
let strd k d j = match Yojson.Safe.Util.member k j with `String s -> s | _ -> d

let load (files : string list) (type_ctors : (string * int) list) : t =
  List.iter (fun (c, n) -> Hashtbl.replace type_constructors c n) type_ctors;
  let reg = { types = Hashtbl.create 64; consts = Hashtbl.create 512; files = []; empty_rules = []; rewrite_rules = []; names = [] } in
  let rules = ref [] in
  let rw = ref [] in
  let names = ref [] in
  let files_md5 = ref [] in
  List.iter (fun file ->
    let j = Yojson.Safe.from_file file in
    files_md5 := (file, Digest.to_hex (Digest.file file)) :: !files_md5;
    let open Yojson.Safe.Util in
    List.iter (fun tj ->
      let hol = str "hol" tj in
      let arity = (match member "arity" tj with `Int n -> n | _ -> (try Hashtbl.find type_constructors hol with Not_found -> 0)) in
      let e = { t_hol = hol; t_arity = arity; t_carrier = Mg.parse_template (str "carrier" tj);
                t_class = strd "class" "opaque" tj; t_status = strd "status" "draft" tj;
                t_bridge = strd "bridge" "" tj; t_module = strd "module" "" tj; t_notes = strd "notes" "" tj } in
      List.iter (fun m ->
        let ok = (try int_of_string m < arity with _ -> false) in
        if not ok then raise (Registry_error (Printf.sprintf "%s: type %s carrier template uses bad placeholder ?%s" file hol m)))
        (Mg.metas e.t_carrier);
      if Hashtbl.mem reg.types hol then raise (Registry_error (file ^ ": duplicate type mapping " ^ hol));
      Hashtbl.replace reg.types hol e) (match member "types" j with `List l -> l | _ -> []);
    List.iter (fun cj ->
      let hol = str "hol" cj in
      let scheme = parse_scheme (str "scheme" cj) in
      let args = List.map (fun a -> role_of_string (to_string a)) (match member "args" cj with `List l -> l | _ -> []) in
      let result = role_of_string (strd "result" "set" cj) in
      let template = Mg.parse_template (str "template" cj) in
      let e = { c_hol = hol; c_scheme = scheme; c_args = args; c_result = result; c_template = template;
                c_class = strd "class" "opaque" cj; c_status = strd "status" "draft" cj;
                c_bridge = strd "bridge" "" cj; c_notes = strd "notes" "" cj; c_source = file } in
      (* validate arity against scheme *)
      let dom, _ = strip_fun_ty scheme in
      if List.length args > List.length dom then
        raise (Registry_error (Printf.sprintf "%s: constant %s declares %d args but scheme has %d" file hol (List.length args) (List.length dom)));
      let tvs = uniq (tyvars_of_ty scheme) in
      List.iter (fun m ->
        let ok = (try let k = int_of_string m in k >= 1 && k <= List.length args with _ -> List.mem m tvs) in
        if not ok then raise (Registry_error (Printf.sprintf "%s: constant %s template uses unknown placeholder ?%s" file hol m)))
        (Mg.metas template);
      let prev = (try Hashtbl.find reg.consts hol with Not_found -> []) in
      Hashtbl.replace reg.consts hol (prev @ [ e ])) (match member "constants" j with `List l -> l | _ -> []);
    List.iter (fun rj ->
      rules := (Mg.parse_template (str "lhs" rj), Mg.parse_template (str "rhs" rj), strd "by" "" rj) :: !rules)
      (match member "empty_rules" j with `List l -> l | _ -> []);
    List.iter (fun rj ->
      let guards = (match member "guard" rj with
        | `Assoc l -> List.map (fun (k, v) -> (k, to_string v)) l
        | _ -> []) in
      rw := (Mg.parse_template (str "lhs" rj), Mg.parse_template (str "rhs" rj), strd "by" "" rj, guards) :: !rw)
      (match member "rewrite_rules" j with `List l -> l | _ -> []);
    (match member "names" j with
     | `Assoc l -> List.iter (fun (k, v) -> names := (k, to_string v) :: !names) l
     | _ -> ())) files;
  { reg with files = List.rev !files_md5; empty_rules = List.rev !rules; rewrite_rules = List.rev !rw; names = List.rev !names }

(* first-order matching of a scheme against an occurrence type *)
let rec tymatch sch ty sofar =
  match sch, ty with
  | TyVar a, _ ->
      (match List.assoc_opt a sofar with
       | Some t -> if t = ty then Some sofar else None
       | None -> Some ((a, ty) :: sofar))
  | TyApp (c, args), TyApp (c', args') when c = c' && List.length args = List.length args' ->
      List.fold_left2 (fun acc a b -> match acc with None -> None | Some s -> tymatch a b s) (Some sofar) args args'
  | _ -> None

let find_const reg name ty =
  match Hashtbl.find_opt reg.consts name with
  | None -> None
  | Some entries ->
      let rec go = function
        | [] ->
            (* internal (quarantined) constants match by name alone *)
            (match List.find_opt (fun e -> e.c_status = "internal") entries with
             | Some e -> Some (e, [])
             | None -> None)
        | e :: r -> (match tymatch e.c_scheme ty [] with Some inst -> Some (e, inst) | None -> go r)
      in
      go entries
