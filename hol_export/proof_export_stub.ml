type hol_type = Tyvar of string | Tyapp of string * hol_type list
type term = Var of string * hol_type | Const of string * hol_type | Comb of term * term | Abs of term * term
type thm = Sequent of (term list * term * proof)
and proof = Prefl of term | Ptrans of thm * thm | Pmkcomb of thm * thm | Pabs of term * thm | Pbeta of term | Passume of term | Peqmp of thm * thm | Pdeduct of thm * thm | Pinsttype of (hol_type * hol_type) list * thm | Pinst of (term * term) list * thm | Paxiom of term | Pdefinition of term | Ptydef_abs of string * string * string * thm | Ptydef_rep of string * string * string * thm
let proof_of (Sequent(_,_,p)) = p
let dest_thm (Sequent(a,c,_)) = (a,c)
let theorems : (string * thm) list ref = ref []
let update_database () = ()
let filter = List.filter and map = List.map
module Hol2mg = struct
  let jstr (s:string) = s let jint (i:int) = string_of_int i let jlist (l:string list) = String.concat "," l
  let jobj (kvs:(string*string) list) = String.concat "," (List.map (fun (k,v) -> k ^ v) kvs)
  let hash_of_sequent (_:(term list * term)) = ""
end
