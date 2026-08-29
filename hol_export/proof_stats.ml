(* ========================================================================= *)
(* hol2mg proof-export pilot: statistics of the recorded proof DAGs.         *)
(* Load inside a session started with hol_export/hol_rec.ml (recording      *)
(* kernel), after update_database.ml:  loadt ".../proof_stats.ml";;         *)
(*   Hol2mg_stats.run "out.txt";;                                            *)
(* ========================================================================= *)

loads "update_database.ml";;

module Hol2mg_stats = struct

(* physical-identity table of theorems: structural hash buckets, == lookup *)
let ph_create n : (int, (thm * 'a) list ref) Hashtbl.t = Hashtbl.create n;;
let ph_find tbl th = let l = try !(Hashtbl.find tbl (Hashtbl.hash th)) with Not_found -> [] in
  snd (List.find (fun (t,_) -> t == th) l);;
let ph_mem tbl th = try ignore (ph_find tbl th); true with Not_found -> false;;
let ph_add tbl th v = let h = Hashtbl.hash th in
  (try let r = Hashtbl.find tbl h in r := (th,v) :: !r with Not_found -> Hashtbl.add tbl h (ref [(th,v)]));;
let ph_length tbl = Hashtbl.fold (fun _ r acc -> acc + List.length !r) tbl 0;;

let rule_name p = match p with
    Prefl _ -> "REFL" | Ptrans _ -> "TRANS" | Pmkcomb _ -> "MK_COMB" | Pabs _ -> "ABS"
  | Pbeta _ -> "BETA" | Passume _ -> "ASSUME" | Peqmp _ -> "EQ_MP" | Pdeduct _ -> "DEDUCT_ANTISYM_RULE"
  | Pinsttype _ -> "INST_TYPE" | Pinst _ -> "INST" | Paxiom _ -> "AXIOM" | Pdefinition _ -> "DEFINITION"
  | Ptydef_abs _ -> "TYDEF_ABS" | Ptydef_rep _ -> "TYDEF_REP";;

let premises p = match p with
    Ptrans(a,b) | Pmkcomb(a,b) | Peqmp(a,b) | Pdeduct(a,b) -> [a;b]
  | Pabs(_,a) | Pinsttype(_,a) | Pinst(_,a) | Ptydef_abs(_,_,_,a) | Ptydef_rep(_,_,_,a) -> [a]
  | _ -> [];;

(* nodes reachable from th, stopping at other named theorems; returns (own node count, rule counts) *)
let own_size named th =
  let seen = ph_create 256 in
  let rules = Hashtbl.create 16 in
  let stack = ref [th] in
  while !stack <> [] do
    let t = List.hd !stack in stack := List.tl !stack;
    if not (ph_mem seen t) then begin
      ph_add seen t ();
      let p = proof_of t in
      let r = rule_name p in
      Hashtbl.replace rules r (1 + (try Hashtbl.find rules r with Not_found -> 0));
      List.iter (fun q -> if ph_mem named q && not (q == th) then () else stack := q :: !stack) (premises p)
    end
  done;
  (ph_length seen, rules);;

let run outfile =
  update_database();
  let named_list = filter (fun (n,_) -> n <> "it" && n <> "buf__") (!theorems) in
  let named = ph_create 8192 in
  List.iter (fun (n,th) -> if not (ph_mem named th) then ph_add named th n) named_list;
  let oc = open_out outfile in
  let total = ref 0 in
  let global = Hashtbl.create 16 in
  let sizes = ref [] in
  List.iter (fun (n,th) ->
    let (sz, rules) = own_size named th in
    total := !total + sz;
    Hashtbl.iter (fun r c -> Hashtbl.replace global r (c + (try Hashtbl.find global r with Not_found -> 0))) rules;
    sizes := (sz, n) :: !sizes;
    Printf.fprintf oc "%s %d %s\n" n sz
      (String.concat "," (Hashtbl.fold (fun r c acc -> (r ^ ":" ^ string_of_int c) :: acc) rules [])))
    named_list;
  let sorted = List.sort compare !sizes in
  let nth = List.length sorted in
  let bucket lim = List.length (List.filter (fun (s,_) -> s <= lim) sorted) in
  Printf.fprintf oc "# theorems %d, total own nodes %d\n" nth !total;
  List.iter (fun lim -> Printf.fprintf oc "# own size <= %d: %d\n" lim (bucket lim)) [10;100;1000;10000;100000;1000000];
  Printf.fprintf oc "# rules: %s\n" (String.concat " " (Hashtbl.fold (fun r c acc -> (r ^ ":" ^ string_of_int c) :: acc) global []));
  List.iter (fun (s,n) -> Printf.fprintf oc "# largest %s %d\n" n s) (List.rev (List.filteri (fun i _ -> i >= nth - 15) sorted));
  close_out oc;
  Printf.printf "proof_stats: %d theorems, %d own nodes total\n%!" nth !total;;

end;;
