(* ========================================================================= *)
(* hol2mg proof-export pilot: dump recorded kernel proofs as JSON Lines.     *)
(* Load in a session started in the recording directory (tools/make_hol_rec_dir.sh) *)
(* after hol_export/export.ml:  loadt ".../proof_export.ml";;               *)
(*   Hol2mg_proof.export "out.jsonl" 1000 [] [];;   (cap on own nodes, name filter, names exported regardless of the cap) *)
(* Records: {"kind":"type",id,node} {"kind":"term",id,node} shared across the *)
(* file (structural hash-consing), and {"kind":"proof",name,hash,root,nodes}  *)
(* with one node per shared inference (post-order), named leaves as NAMED.   *)
(* ========================================================================= *)

module Hol2mg_proof = struct

open Hol2mg;;

let oc = ref stdout;;
let emit s = output_string !oc s; output_char !oc '\n';;

let tytab : (hol_type, int) Hashtbl.t = Hashtbl.create 4096;;
let tmtab : (term, int) Hashtbl.t = Hashtbl.create 65536;;

let rec ty_id ty =
  try Hashtbl.find tytab ty with Not_found ->
    let node = match ty with
        Tyvar s -> jobj ["k", jstr "v"; "n", jstr s]
      | Tyapp(s,l) -> let ids = map ty_id l in jobj ["k", jstr "a"; "n", jstr s; "a", jlist (map jint ids)] in
    let id = Hashtbl.length tytab in
    Hashtbl.add tytab ty id;
    emit (jobj ["kind", jstr "type"; "id", jint id; "node", node]); id;;

let rec tm_id tm =
  try Hashtbl.find tmtab tm with Not_found ->
    let node = match tm with
        Var(s,ty) -> jobj ["k", jstr "v"; "n", jstr s; "t", jint (ty_id ty)]
      | Const(s,ty) -> jobj ["k", jstr "c"; "n", jstr s; "t", jint (ty_id ty)]
      | Comb(f,x) -> let a = tm_id f in let b = tm_id x in jobj ["k", jstr "ap"; "f", jint a; "x", jint b]
      | Abs(v,b) -> let a = tm_id v in let c = tm_id b in jobj ["k", jstr "lam"; "v", jint a; "b", jint c] in
    let id = Hashtbl.length tmtab in
    Hashtbl.add tmtab tm id;
    emit (jobj ["kind", jstr "term"; "id", jint id; "node", node]); id;;

(* physical-identity table of theorems *)
let ph_create n = Hashtbl.create n;;
let ph_find tbl th = let l = try !(Hashtbl.find tbl (Hashtbl.hash th)) with Not_found -> [] in
  snd (List.find (fun (t,_) -> t == th) l);;
let ph_mem tbl th = try ignore (ph_find tbl th); true with Not_found -> false;;
let ph_add tbl th v = let h = Hashtbl.hash th in
  (try let r = Hashtbl.find tbl h in r := (th,v) :: !r with Not_found -> Hashtbl.add tbl h (ref [(th,v)]));;

let premises p = match p with
    Ptrans(a,b) | Pmkcomb(a,b) | Peqmp(a,b) | Pdeduct(a,b) -> [a;b]
  | Pabs(_,a) | Pinsttype(_,a) | Pinst(_,a) | Ptydef_abs(_,_,_,a) | Ptydef_rep(_,_,_,a) -> [a]
  | _ -> [];;

(* own node count with named theorems as leaves; None if above the cap *)
let own_size_capped named cap th =
  let seen = ph_create 256 in
  let n = ref 0 in
  let stack = ref [th] in
  let over = ref false in
  while !stack <> [] && not !over do
    let t = List.hd !stack in stack := List.tl !stack;
    if not (ph_mem seen t) then begin
      ph_add seen t (); incr n; if !n > cap then over := true;
      List.iter (fun q -> if ph_mem named q && not (q == th) then () else stack := q :: !stack) (premises (proof_of t))
    end
  done;
  if !over then None else Some !n;;

let seq_json (asl,c) = ["hyps", jlist (map (fun h -> jint (tm_id h)) asl); "concl", jint (tm_id c)];;

(* export one theorem: nodes in post-order with local ids; named leaves (other than the root) as NAMED *)
let export_theorem named_ph name th =
  let local = ph_create 256 in
  let nodes = ref [] in
  let counter = ref 0 in
  let rec visit t =
    if ph_mem local t then ph_find local t else begin
      let p = proof_of t in
      let is_leaf = ph_mem named_ph t && not (t == th) && (match p with Pdefinition _ | Paxiom _ -> false | _ -> true) in
      let args =
        if is_leaf then ["rule", jstr "NAMED"; "name", jstr (ph_find named_ph t)]
        else match p with
          Prefl tm -> ["rule", jstr "REFL"; "tm", jint (tm_id tm)]
        | Ptrans(a,b) -> let ia = visit a in let ib = visit b in ["rule", jstr "TRANS"; "p", jlist [jint ia; jint ib]]
        | Pmkcomb(a,b) -> let ia = visit a in let ib = visit b in ["rule", jstr "MK_COMB"; "p", jlist [jint ia; jint ib]]
        | Pabs(v,a) -> let ia = visit a in ["rule", jstr "ABS"; "tm", jint (tm_id v); "p", jlist [jint ia]]
        | Pbeta tm -> ["rule", jstr "BETA"; "tm", jint (tm_id tm)]
        | Passume tm -> ["rule", jstr "ASSUME"; "tm", jint (tm_id tm)]
        | Peqmp(a,b) -> let ia = visit a in let ib = visit b in ["rule", jstr "EQ_MP"; "p", jlist [jint ia; jint ib]]
        | Pdeduct(a,b) -> let ia = visit a in let ib = visit b in ["rule", jstr "DEDUCT_ANTISYM_RULE"; "p", jlist [jint ia; jint ib]]
        | Pinsttype(theta,a) -> let ia = visit a in
            ["rule", jstr "INST_TYPE"; "theta", jlist (map (fun (t,v) -> jlist [jint (ty_id v); jint (ty_id t)]) theta); "p", jlist [jint ia]]
        | Pinst(theta,a) -> let ia = visit a in
            ["rule", jstr "INST"; "theta", jlist (map (fun (t,v) -> jlist [jint (tm_id v); jint (tm_id t)]) theta); "p", jlist [jint ia]]
        | Paxiom tm -> ["rule", jstr "AXIOM"; "tm", jint (tm_id tm)]
        | Pdefinition c -> ["rule", jstr "DEFINITION"; "tm", jint (tm_id c)]
        | Ptydef_abs(ty,ab,rp,a) -> let ia = visit a in ["rule", jstr "TYDEF_ABS"; "ty", jstr ty; "abs", jstr ab; "rep", jstr rp; "p", jlist [jint ia]]
        | Ptydef_rep(ty,ab,rp,a) -> let ia = visit a in ["rule", jstr "TYDEF_REP"; "ty", jstr ty; "abs", jstr ab; "rep", jstr rp; "p", jlist [jint ia]] in
      let id = !counter in incr counter;
      ph_add local t id;
      nodes := jobj (("id", jint id) :: args @ seq_json (dest_thm t)) :: !nodes;
      id
    end in
  let root = visit th in
  emit (jobj ["kind", jstr "proof"; "name", jstr name; "hash", jstr (hash_of_sequent (dest_thm th));
              "root", jint root; "nodes", jlist (List.rev !nodes)]);;

let export outfile cap only force =
  update_database();
  let named_list = filter (fun (n,_) -> n <> "it" && n <> "buf__") (!theorems) in
  (* physical table thm -> name (first name wins) *)
  let named_ph = ph_create 8192 in
  List.iter (fun (n,th) -> if not (ph_mem named_ph th) then ph_add named_ph th n) named_list;
  oc := open_out outfile;
  Hashtbl.reset tytab; Hashtbl.reset tmtab;
  let n_exp = ref 0 and n_skip = ref 0 in
  List.iter (fun (n,th) ->
    if only <> [] && not (List.mem n only) then () else
    if List.mem n force then (export_theorem named_ph n th; incr n_exp) else
    match own_size_capped named_ph cap th with
      None -> incr n_skip
    | Some _ -> (export_theorem named_ph n th; incr n_exp)) named_list;
  close_out !oc;
  Printf.printf "proof_export: %d theorems exported, %d above the cap (%d), %d types, %d terms\n%!" !n_exp !n_skip cap (Hashtbl.length tytab) (Hashtbl.length tmtab);;

end;;
