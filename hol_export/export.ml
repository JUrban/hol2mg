(* ========================================================================= *)
(* hol2mg exporter: dump kernel-level HOL Light statements as JSON Lines.    *)
(*                                                                           *)
(* Loaded inside a HOL Light session (after the profile roots) with          *)
(*   loadt "/path/to/hol2mg/hol_export/export.ml";;                          *)
(*   Hol2mg.export "out.jsonl";;                                             *)
(*                                                                           *)
(* Only kernel destructors are used; pretty-printed syntax is emitted        *)
(* solely as an advisory "display" string for diagnostics.                   *)
(* ========================================================================= *)

loads "update_database.ml";;

module Hol2mg = struct

let schema_version = 1;;

(* ----------------------------------------------------------------------- *)
(* Minimal JSON writer.                                                    *)
(* ----------------------------------------------------------------------- *)

let json_escape s =
  let b = Buffer.create (String.length s + 8) in
  String.iter (fun c ->
    match c with
    | '"' -> Buffer.add_string b "\\\""
    | '\\' -> Buffer.add_string b "\\\\"
    | '\n' -> Buffer.add_string b "\\n"
    | '\t' -> Buffer.add_string b "\\t"
    | '\r' -> Buffer.add_string b "\\r"
    | c when Char.code c < 32 -> Buffer.add_string b (Printf.sprintf "\\u%04x" (Char.code c))
    | c -> Buffer.add_char b c) s;
  Buffer.contents b;;

let jstr s = "\"" ^ json_escape s ^ "\"";;
let jint i = string_of_int i;;
let jbool b = if b then "true" else "false";;
let jlist l = "[" ^ String.concat "," l ^ "]";;
let jobj kvs = "{" ^ String.concat "," (map (fun (k,v) -> jstr k ^ ":" ^ v) kvs) ^ "}";;

(* ----------------------------------------------------------------------- *)
(* Types and terms.  Bound variables use de Bruijn indices ("B",i); the     *)
(* binder keeps its display name.  Free variables are ("V",name,type).     *)
(* ----------------------------------------------------------------------- *)

let rec json_of_type ty =
  match ty with
  | Tyvar s -> jlist [jstr "v"; jstr s]
  | Tyapp(s,args) -> jlist [jstr "c"; jstr s; jlist (map json_of_type args)];;

let rec index_of x l i =
  match l with
  | [] -> None
  | y::t -> if compare x y = 0 then Some i else index_of x t (i+1);;

let rec json_of_term env tm =
  match tm with
  | Var(s,ty) ->
      (match index_of (s,ty) env 0 with
       | Some i -> jlist [jstr "B"; jint i]
       | None -> jlist [jstr "V"; jstr s; json_of_type ty])
  | Const(s,ty) -> jlist [jstr "K"; jstr s; json_of_type ty]
  | Comb(f,x) -> jlist [jstr "A"; json_of_term env f; json_of_term env x]
  | Abs(v,b) ->
      let (s,ty) = dest_var v in
      jlist [jstr "L"; jstr s; json_of_type ty; json_of_term ((s,ty)::env) b];;

(* Canonical (alpha-invariant) string for hashing. *)

let rec canon_type b ty =
  match ty with
  | Tyvar s -> Buffer.add_char b '\''; Buffer.add_string b s
  | Tyapp(s,args) ->
      Buffer.add_string b s;
      if args <> [] then begin
        Buffer.add_char b '(';
        List.iteri (fun i a -> if i > 0 then Buffer.add_char b ','; canon_type b a) args;
        Buffer.add_char b ')'
      end;;

let rec canon_term b env tm =
  match tm with
  | Var(s,ty) ->
      (match index_of (s,ty) env 0 with
       | Some i -> Buffer.add_char b '#'; Buffer.add_string b (string_of_int i)
       | None -> Buffer.add_char b 'V'; Buffer.add_string b (string_of_int (String.length s));
                 Buffer.add_char b ':'; Buffer.add_string b s; Buffer.add_char b ':';
                 canon_type b ty)
  | Const(s,ty) ->
      Buffer.add_char b 'K'; Buffer.add_string b (string_of_int (String.length s));
      Buffer.add_char b ':'; Buffer.add_string b s; Buffer.add_char b ':'; canon_type b ty
  | Comb(f,x) ->
      Buffer.add_char b '('; canon_term b env f; Buffer.add_char b ' '; canon_term b env x; Buffer.add_char b ')'
  | Abs(v,body) ->
      let (s,ty) = dest_var v in
      Buffer.add_string b "(\\"; canon_type b ty; Buffer.add_char b '.'; canon_term b ((s,ty)::env) body; Buffer.add_char b ')';;

let canon_string_of_term tm =
  let b = Buffer.create 256 in canon_term b [] tm; Buffer.contents b;;

let canon_string_of_sequent (asl,c) =
  let hs = sort (<) (map canon_string_of_term asl) in
  String.concat " ; " hs ^ " |- " ^ canon_string_of_term c;;

let hash_of_sequent seq = Digest.to_hex (Digest.string (canon_string_of_sequent seq));;

(* ----------------------------------------------------------------------- *)
(* Explicit type arguments of constant occurrences.                        *)
(* ----------------------------------------------------------------------- *)

let rec tymatch gty ity sofar =
  match gty, ity with
  | Tyvar a, _ ->
      (match (try Some (assoc a sofar) with Failure _ -> None) with
       | Some t -> if compare t ity = 0 then sofar else failwith "tymatch: inconsistent"
       | None -> (a,ity)::sofar)
  | Tyapp(c,args), Tyapp(c',args') when c = c' && length args = length args' ->
      itlist2 tymatch args args' sofar
  | _ -> failwith "tymatch: mismatch";;

let rec tyvar_names ty =
  match ty with
  | Tyvar s -> [s]
  | Tyapp(_,args) -> setify (itlist (fun a acc -> tyvar_names a @ acc) args []);;

let rec tyapp_names ty =
  match ty with
  | Tyvar _ -> []
  | Tyapp(s,args) -> setify (s :: itlist (fun a acc -> tyapp_names a @ acc) args []);;

(* Returns (name, [(tyvar, instance)]) or raises. *)
let const_type_args (name,ty) =
  let gty = get_const_type name in
  let inst = tymatch gty ty [] in
  let vs = sort (<) (tyvar_names gty) in
  map (fun v -> (v, assoc v inst)) vs;;

(* ----------------------------------------------------------------------- *)
(* Term traversals.                                                        *)
(* ----------------------------------------------------------------------- *)

let rec fold_term f acc tm =
  let acc = f acc tm in
  match tm with
  | Comb(a,b) -> fold_term f (fold_term f acc a) b
  | Abs(v,b) -> fold_term f (fold_term f acc v) b
  | _ -> acc;;

let consts_of_term tm =
  setify (fold_term (fun acc t -> match t with Const(s,_) -> s::acc | _ -> acc) [] tm);;

let const_instances_of_term tm =
  setify (fold_term (fun acc t -> match t with Const(s,ty) -> (s,ty)::acc | _ -> acc) [] tm);;

let types_of_term tm =
  setify (fold_term (fun acc t ->
    match t with
    | Var(_,ty) | Const(_,ty) -> tyapp_names ty @ acc
    | _ -> acc) [] tm);;

let warnings_of_term tm =
  let insts = const_instances_of_term tm in
  itlist (fun (s,ty) acc ->
    try ignore (const_type_args (s,ty)); acc
    with Failure msg -> (jobj [("const", jstr s); ("type", json_of_type ty); ("problem", jstr msg)])::acc)
   insts [];;

(* ----------------------------------------------------------------------- *)
(* Records.                                                                *)
(* ----------------------------------------------------------------------- *)

let json_of_sequent (asl,c) =
  [("hyps", jlist (map (json_of_term []) asl)); ("concl", json_of_term [] c)];;

let display_of_thm th =
  try string_of_thm th with _ -> "<unprintable>";;

let thm_record kind name aliases th =
  let asl,c = dest_thm th in
  let all = c::asl in
  let tvs = setify (itlist (fun t acc -> map dest_vartype (type_vars_in_term t) @ acc) all []) in
  let fvs = freesl all in
  let cs = setify (itlist (fun t acc -> consts_of_term t @ acc) all []) in
  let tys = setify (itlist (fun t acc -> types_of_term t @ acc) all []) in
  let warns = itlist (fun t acc -> warnings_of_term t @ acc) all [] in
  jobj ([("kind", jstr kind); ("schema", jint schema_version);
         ("name", jstr name); ("aliases", jlist (map jstr aliases));
         ("hash", jstr (hash_of_sequent (asl,c)))]
        @ json_of_sequent (asl,c) @
        [("tyvars", jlist (map jstr (sort (<) tvs)));
         ("frees", jlist (map (fun v -> let (s,ty) = dest_var v in jlist [jstr s; json_of_type ty]) fvs));
         ("consts", jlist (map jstr (sort (<) cs)));
         ("types", jlist (map jstr (sort (<) tys)));
         ("display", jstr (display_of_thm th));
         ("warnings", jlist warns)]);;

(* ----------------------------------------------------------------------- *)
(* Theorem discovery: all top-level OCaml values of type thm.               *)
(* ----------------------------------------------------------------------- *)

let preferred_name names =
  let names = sort (<) names in
  let plain = filter (fun s -> not (String.contains s '.')) names in
  match plain with
  | n::_ -> n
  | [] -> hd names;;

let discover_theorems () =
  update_database();
  let named = filter (fun (n,_) -> n <> "it" && n <> "buf__") (!theorems) in
  (* group by canonical hash *)
  let tbl = Hashtbl.create 8192 in
  let order = ref [] in
  List.iter (fun (n,th) ->
    let h = hash_of_sequent (dest_thm th) in
    match (try Some (Hashtbl.find tbl h) with Not_found -> None) with
    | Some (th0,ns) -> Hashtbl.replace tbl h (th0, n::ns)
    | None -> Hashtbl.add tbl h (th, [n]); order := h :: !order) named;
  let groups = map (fun h -> let (th,ns) = Hashtbl.find tbl h in (preferred_name ns, setify ns, th)) !order in
  sort (fun (a,_,_) (b,_,_) -> a <= b) groups;;

(* ----------------------------------------------------------------------- *)
(* Main export.                                                            *)
(* ----------------------------------------------------------------------- *)

let getenv_opt v = try Some (Sys.getenv v) with Not_found -> None;;

let export outfile =
  let oc = open_out outfile in
  let emit s = output_string oc s; output_char oc '\n' in
  let profile = match getenv_opt "HOL2MG_PROFILE" with Some p -> p | None -> "unknown" in
  let commit = match getenv_opt "HOL2MG_HOL_COMMIT" with Some p -> p | None -> "unknown" in
  emit (jobj [("kind", jstr "meta"); ("schema", jint schema_version);
              ("profile", jstr profile); ("hol_light_commit", jstr commit);
              ("hol_version", jstr hol_version); ("ocaml_version", jstr Sys.ocaml_version);
              ("loaded_files", jlist (map (fun (f,d) -> jlist [jstr f; jstr (Digest.to_hex d)]) (List.rev (!loaded_files))))]);
  (* type constructors *)
  List.iter (fun (s,n) -> emit (jobj [("kind", jstr "type_constructor"); ("name", jstr s); ("arity", jint n)]))
    (sort (fun (a,_) (b,_) -> a <= b) (types()));
  (* constants *)
  List.iter (fun (s,ty) -> emit (jobj [("kind", jstr "constant"); ("name", jstr s); ("type", json_of_type ty)]))
    (sort (fun (a,_) (b,_) -> a <= b) (constants()));
  (* axioms *)
  List.iter (fun th -> emit (thm_record "axiom" "" [] th)) (List.rev (axioms()));
  (* kernel definitions |- c = t *)
  List.iter (fun th ->
      let c = concl th in
      let cname = try fst (dest_const (lhs c)) with Failure _ -> "" in
      let r = thm_record "basic_definition" cname [] th in
      emit r) (List.rev (definitions()));
  (* type definitions *)
  List.iter (fun ((tyname,absname,repname),(th,tth)) ->
      emit (jobj [("kind", jstr "type_definition"); ("name", jstr tyname);
                  ("abs", jstr absname); ("rep", jstr repname);
                  ("nonempty_hash", jstr (hash_of_sequent (dest_thm th)));
                  ("nonempty_concl", json_of_term [] (concl th));
                  ("bijections_concl", json_of_term [] (concl tth))]))
    (List.rev (!the_type_definitions));
  (* inductive datatypes *)
  List.iter (fun (spec,(ind,rec_)) ->
      emit (jobj [("kind", jstr "inductive_type"); ("spec", jstr spec);
                  ("induction_hash", jstr (hash_of_sequent (dest_thm ind)));
                  ("recursion_hash", jstr (hash_of_sequent (dest_thm rec_)))]))
    (List.rev (!the_inductive_types));
  (* named theorems *)
  let groups = discover_theorems () in
  List.iter (fun (name,aliases,th) -> emit (thm_record "theorem" name aliases th)) groups;
  close_out oc;
  Printf.printf "hol2mg: exported %d theorem groups to %s\n%!" (length groups) outfile;;

end;;
