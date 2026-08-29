(* Proof-producing empty-carrier simplifier (docs/DESIGN.md §21.5).  Mirrors the rules of
   lib/emptycase.ml: given a native proposition in which a carrier parameter has been replaced
   by Empty, produce a Megalodon proof term of it (or of its negation), using the identities of
   mglib/literal/bridge.mg.  Everything is expressed by proof terms; equalities of subterms are
   transported with Leibniz contexts (see Bridge.leibniz). *)

open Mg

exception Cannot of string
let cannot fmt = Printf.ksprintf (fun s -> raise (Cannot s)) fmt

let pp = Mg.to_string
let ppp t = "(" ^ Mg.to_string t ^ ")"
let refl = "(fun q H => H)"
let empty = Cst "Empty"
let is_empty t = (t = empty || t = Num 0)
let tru = Cst "True" and fls = Cst "False"

(* replace occurrences of a subterm *)
let rec replace_tm (old : tm) (by : tm) (t : tm) : tm =
  if t = old then by
  else
    match t with
    | App (a, b) -> App (replace_tm old by a, replace_tm old by b)
    | Lam (x, ty, b) -> Lam (x, ty, replace_tm old by b)
    | LamIn (x, a, b) -> LamIn (x, replace_tm old by a, replace_tm old by b)
    | All (x, ty, b) -> All (x, ty, replace_tm old by b)
    | AllIn (x, a, b) -> AllIn (x, replace_tm old by a, replace_tm old by b)
    | AllSub (x, a, b) -> AllSub (x, replace_tm old by a, replace_tm old by b)
    | Ex (x, ty, b) -> Ex (x, ty, replace_tm old by b)
    | ExIn (x, a, b) -> ExIn (x, replace_tm old by a, replace_tm old by b)
    | ExSub (x, a, b) -> ExSub (x, replace_tm old by a, replace_tm old by b)
    | Imp (a, b) -> Imp (replace_tm old by a, replace_tm old by b)
    | Sep (x, a, p) -> Sep (x, replace_tm old by a, replace_tm old by p)
    | Repl (x, a, b) -> Repl (x, replace_tm old by a, replace_tm old by b)
    | ReplSep (x, a, p, b) -> ReplSep (x, replace_tm old by a, replace_tm old by p, replace_tm old by b)
    | SetEnum l -> SetEnum (List.map (replace_tm old by) l)
    | If (c, a, b) -> If (replace_tm old by c, replace_tm old by a, replace_tm old by b)
    | Tuple l -> Tuple (List.map (replace_tm old by) l)
    | SigmaIn (x, a, b) -> SigmaIn (x, replace_tm old by a, replace_tm old by b)
    | PiIn (x, a, b) -> PiIn (x, replace_tm old by a, replace_tm old by b)
    | FamUnion (x, a, b) -> FamUnion (x, replace_tm old by a, replace_tm old by b)
    | _ -> t

let leib (pf_eq : string) (ctx : tm) (pf : string) = Printf.sprintf "(%s (fun hl__u hl__v => %s) %s)" pf_eq (pp ctx) pf
let sym a b pf = Printf.sprintf "(eq_sym_i %s %s %s)" (ppp a) (ppp b) pf
let trans a b c p1 p2 = if p1 = "" then p2 else if p2 = "" then p1 else Printf.sprintf "(eq_trans_i %s %s %s %s %s)" (ppp a) (ppp b) (ppp c) p1 p2

(* replace a subterm by the hole hl__u *)
let hole (old : tm) (t : tm) = replace_tm old (Var "hl__u") t

(* evidently nonempty sets: a member and its membership proof *)
let rec member_of (t : tm) : (tm * string) option =
  match t with
  | Num n when n >= 1 -> Some (Num (n - 1), Printf.sprintf "(ordsuccI2 %d)" (n - 1))
  | Cst "omega" -> Some (Num 0, "(nat_p_omega 0 nat_0)")
  | Cst ("R" | "real") -> Some (Num 0, "real_0")
  | Cst "int" -> Some (Num 0, "(Subq_omega_int 0 (nat_p_omega 0 nat_0))")
  | SetEnum (e :: _) -> (match t with SetEnum [ _ ] -> Some (e, Printf.sprintf "(SingI %s)" (ppp e)) | _ -> None)
  | App (Cst "Power", x) -> Some (empty, Printf.sprintf "(Empty_In_Power %s)" (ppp x))
  | App (Cst "finseq", a) -> Some (Cst "seq_nil", Printf.sprintf "(seq_nil_finseq %s)" (ppp a))
  | App (App (Cst "setexp", x), y) when is_empty y -> Some (empty, Printf.sprintf "(SingI Empty)")
  | _ -> None

let nonempty_pf (t : tm) : string option =
  match member_of t with
  | Some (e, pe) -> Some (Printf.sprintf "(nonempty_of_In %s %s %s)" (ppp t) (ppp e) pe)
  | None -> None

(* ---- numerals: membership, order ---- *)
let rec nat_of (n : int) : string = if n = 0 then "nat_0" else Printf.sprintf "(nat_ordsucc %d %s)" (n - 1) (nat_of (n - 1))
let ordinal_of n = Printf.sprintf "(nat_p_ordinal %d %s)" n (nat_of n)
(* a :e b for a < b *)
let rec num_mem a b = if a = b - 1 then Printf.sprintf "(ordsuccI2 %d)" a else Printf.sprintf "(ordsuccI1 %d %d %s)" (b - 1) a (num_mem a (b - 1))
let num_lt a b = Printf.sprintf "(ordinal_In_SNoLt %d %s %d %s)" b (ordinal_of b) a (num_mem a b)
let num_le a b = if a = b then Printf.sprintf "(SNoLe_ref %d)" a else Printf.sprintf "(SNoLtLe %d %d %s)" a b (num_lt a b)
(* ~ (a = b) for a <> b: a = b with a < b gives a :e a *)
let num_neq a b =
  if a < b then Printf.sprintf "(fun H => In_irref %d (H (fun hl__u hl__v => %d :e hl__u) %s))" a a (num_mem a b)
  else Printf.sprintf "(fun H => In_irref %d (H (fun hl__u hl__v => hl__u :e %d) %s))" b b (num_mem b a)
let num_not_lt a b = (* ~ (a < b) for a >= b *)
  if a = b then Printf.sprintf "(SNoLt_irref %d)" a
  else Printf.sprintf "(fun H => SNoLt_irref %d (SNoLt_tra %d %d %d (nat_p_SNo %d %s) (nat_p_SNo %d %s) (nat_p_SNo %d %s) H %s))" a a b a a (nat_of a) b (nat_of b) a (nat_of a) (num_lt b a)
let num_not_le a b = (* ~ (a <= b) for a > b *)
  Printf.sprintf "(fun H => SNoLt_irref %d (SNoLtLe_tra %d %d %d (nat_p_SNo %d %s) (nat_p_SNo %d %s) (nat_p_SNo %d %s) %s H))" b b a b b (nat_of b) a (nat_of a) b (nat_of b) (num_lt b a)

(* ---- terms: (normal form, proof of t = t') ; proof "" means syntactically identical ---- *)
let rec simp (t : tm) : tm * string =
  match t with
  | App (App (Cst op, a), b) when List.mem op [ "binunion"; "binintersect"; "setminus"; "setexp"; "setprod"; "setsum"; "equip" ] ->
      let a', pa = simp a and b', pb = simp b in
      let t1 = App (App (Cst op, a'), b') in
      let p1 = if pa = "" && pb = "" then "" else Printf.sprintf "(f_equal2 (fun x y => %s) %s %s %s %s %s %s)" (pp (App (App (Cst op, Var "x"), Var "y"))) (ppp a) (ppp a') (ppp b) (ppp b') (if pa = "" then refl else pa) (if pb = "" then refl else pb) in
      let t2, p2 = (match op with
        | "binunion" -> if is_empty a' then (b', Printf.sprintf "(binunion_idl %s)" (ppp b')) else if is_empty b' then (a', Printf.sprintf "(binunion_idr %s)" (ppp a')) else (t1, "")
        | "binintersect" -> if is_empty a' then (empty, Printf.sprintf "(binintersect_Empty_L %s)" (ppp b')) else if is_empty b' then (empty, Printf.sprintf "(binintersect_Empty_R %s)" (ppp a')) else (t1, "")
        | "setminus" -> if is_empty a' then (empty, Printf.sprintf "(setminus_Empty_L %s)" (ppp b')) else if is_empty b' then (a', Printf.sprintf "(setminus_Empty_R %s)" (ppp a')) else (t1, "")
        | "setexp" ->
            if is_empty b' then (SetEnum [ empty ], Printf.sprintf "(setexp_Empty_dom %s)" (ppp a'))
            else if is_empty a' then (match nonempty_pf b' with Some pn -> (empty, Printf.sprintf "(setexp_Empty_cod %s %s)" (ppp b') pn) | None -> (t1, ""))
            else (t1, "")
        | "setprod" -> if is_empty a' then (empty, Printf.sprintf "(setprod_Empty_L %s)" (ppp b')) else if is_empty b' then (empty, Printf.sprintf "(setprod_Empty_R %s)" (ppp a')) else (t1, "")
        | "setsum" -> if is_empty a' && is_empty b' then (empty, "setsum_Empty") else (t1, "")
        | _ -> (t1, "")) in
      (t2, trans t t1 t2 p1 p2)
  | App (Cst op, a) when List.mem op [ "Power"; "Union"; "finseq"; "finite_cardinality" ] ->
      let a', pa = simp a in
      let t1 = App (Cst op, a') in
      let p1 = if pa = "" then "" else Printf.sprintf "(f_equal (fun x => %s) %s %s %s)" (pp (App (Cst op, Var "x"))) (ppp a) (ppp a') pa in
      let t2, p2 = (match op with
        | "Power" -> if is_empty a' then (SetEnum [ empty ], "Power_0_Sing_0") else (t1, "")
        | "Union" -> if is_empty a' then (empty, "Union_Empty") else (t1, "")
        | "finseq" -> if is_empty a' then (SetEnum [ Cst "seq_nil" ], "finseq_Empty") else (t1, "")
        | "finite_cardinality" -> if is_empty a' then (Num 0, "finite_cardinality_Empty") else (t1, "")
        | _ -> (t1, "")) in
      (t2, trans t t1 t2 p1 p2)
  | App (f, x) ->
      let f', pf = simp f and x', px = simp x in
      let t1 = App (f', x') in
      let p1 = if pf = "" && px = "" then "" else Printf.sprintf "(f_equal2 (fun x y => x y) %s %s %s %s %s %s)" (ppp f) (ppp f') (ppp x) (ppp x') (if pf = "" then refl else pf) (if px = "" then refl else px) in
      let t2, p2 = (match f' with
        | LamIn (_, a, _) when is_empty a -> (empty, Printf.sprintf "(beta0 Empty (fun hl__u => hl__u) %s (EmptyE %s))" (ppp x') (ppp x'))
        | _ when is_empty f' -> (empty, Printf.sprintf "(ap_Empty %s)" (ppp x'))
        | _ -> (t1, "")) in
      (t2, trans t t1 t2 p1 p2)
  | Repl (x, a, b) -> let a', pa = simp a in
      if is_empty a' then (empty, trans t (Repl (x, a', b)) empty (if pa = "" then "" else Printf.sprintf "(f_equal (fun hl__u => %s) %s %s %s)" (pp (Repl (x, Var "hl__u", b))) (ppp a) (ppp a') pa) (Printf.sprintf "(Repl_Empty (fun %s => %s))" x (pp b)))
      else (t, "")
  | ReplSep (x, a, p, b) -> let a', pa = simp a in
      if is_empty a' then (empty, trans t (ReplSep (x, a', p, b)) empty (if pa = "" then "" else Printf.sprintf "(f_equal (fun hl__u => %s) %s %s %s)" (pp (ReplSep (x, Var "hl__u", p, b))) (ppp a) (ppp a') pa) (Printf.sprintf "(ReplSep_Empty (fun %s => %s) (fun %s => %s))" x (pp p) x (pp b)))
      else (t, "")
  | Sep (x, a, p) -> let a', pa = simp a in
      if is_empty a' then (empty, trans t (Sep (x, a', p)) empty (if pa = "" then "" else Printf.sprintf "(f_equal (fun hl__u => %s) %s %s %s)" (pp (Sep (x, Var "hl__u", p))) (ppp a) (ppp a') pa) (Printf.sprintf "(Sep_Empty (fun %s => %s))" x (pp p)))
      else (t, "")
  | SigmaIn (x, a, b) -> let a', pa = simp a in
      if is_empty a' then (empty, trans t (SigmaIn (x, a', b)) empty (if pa = "" then "" else Printf.sprintf "(f_equal (fun hl__u => %s) %s %s %s)" (pp (SigmaIn (x, Var "hl__u", b))) (ppp a) (ppp a') pa) (Printf.sprintf "(Sigma_Empty (fun %s => %s))" x (pp b)))
      else (t, "")
  | PiIn (x, a, b) -> let a', pa = simp a in
      if is_empty a' then (SetEnum [ empty ], trans t (PiIn (x, a', b)) (SetEnum [ empty ]) (if pa = "" then "" else Printf.sprintf "(f_equal (fun hl__u => %s) %s %s %s)" (pp (PiIn (x, Var "hl__u", b))) (ppp a) (ppp a') pa) (Printf.sprintf "(Pi_Empty_dom (fun %s => %s))" x (pp b)))
      else (t, "")
  | FamUnion (x, a, b) -> let a', pa = simp a in
      if is_empty a' then (empty, trans t (FamUnion (x, a', b)) empty (if pa = "" then "" else Printf.sprintf "(f_equal (fun hl__u => %s) %s %s %s)" (pp (FamUnion (x, Var "hl__u", b))) (ppp a) (ppp a') pa) (Printf.sprintf "(famunion_Empty (fun %s => %s))" x (pp b)))
      else (t, "")
  | If (c, a, b) ->
      (try let pc = prove c in let a', pa = simp a in (a', trans t a a' (Printf.sprintf "(If_i_1 %s %s %s %s)" (ppp c) (ppp a) (ppp b) pc) pa)
       with Cannot _ ->
         (try let pc = refute c in let b', pb = simp b in (b', trans t b b' (Printf.sprintf "(If_i_0 %s %s %s %s)" (ppp c) (ppp a) (ppp b) pc) pb)
          with Cannot _ -> (t, "")))
  | _ -> (t, "")

(* transport along t = t' (proof pe) in an explicit one-position context ctx (with the hole
   hl__u): forward (from ctx[t] to ctx[t']) or back (from ctx[t'] to ctx[t]) *)
and transport (t : tm) (t' : tm) (pe : string) (ctx : tm) (pf : string) : string =
  if pe = "" then pf else leib pe ctx pf
and transport_back (t : tm) (t' : tm) (pe : string) (ctx : tm) (pf : string) : string =
  if pe = "" then pf else leib (sym t t' pe) ctx pf

(* ---- propositions ---- *)
and prove (t : tm) : string =
  match t with
  | Cst "True" -> "(fun p H => H)"
  | AllIn (x, c, b) ->
      let c', pc = simp c in
      let with_c' pf = transport_back c c' pc (AllIn (x, Var "hl__u", b)) pf in
      if is_empty c' then with_c' (Printf.sprintf "(forall_in_Empty (fun %s => %s))" x (pp b))
      else (match c' with
        | SetEnum [ e ] -> with_c' (Printf.sprintf "(forall_Sing %s (fun %s => %s) %s)" (ppp e) x (pp b) (prove (Mg.subst [ (x, e) ] b)))
        | _ -> Printf.sprintf "(fun %s H%s => %s)" x x (prove b))
  | AllSub (x, c, b) ->
      let c', pc = simp c in
      let with_c' pf = transport_back c c' pc (AllSub (x, Var "hl__u", b)) pf in
      if is_empty c' then with_c' (Printf.sprintf "(forall_Sub_Empty (fun %s => %s) %s)" x (pp b) (prove (Mg.subst [ (x, empty) ] b)))
      else Printf.sprintf "(fun %s H%s => %s)" x x (prove b)
  | All (x, _, b) -> Printf.sprintf "(fun %s => %s)" x (prove b)
  | ExIn (x, c, b) ->
      let c', pc = simp c in
      let with_c' pf = transport_back c c' pc (ExIn (x, Var "hl__u", b)) pf in
      (match c' with
       | SetEnum [ e ] -> with_c' (Printf.sprintf "(exists_Sing %s (fun %s => %s) %s)" (ppp e) x (pp b) (prove (Mg.subst [ (x, e) ] b)))
       | _ -> cannot "exists over %s" (pp c'))
  | ExSub (x, c, b) ->
      let c', pc = simp c in
      let with_c' pf = transport_back c c' pc (ExSub (x, Var "hl__u", b)) pf in
      if is_empty c' then with_c' (Printf.sprintf "(exists_Sub_Empty (fun %s => %s) %s)" x (pp b) (prove (Mg.subst [ (x, empty) ] b)))
      else cannot "exists subset of %s" (pp c')
  | Imp (a, b) ->
      (try Printf.sprintf "(fun H : %s => %s)" (pp a) (prove b)
       with Cannot mb -> (try Printf.sprintf "(fun H : %s => FalseE (%s H) %s)" (pp a) (refute a) (ppp b) with Cannot _ -> cannot "%s" mb))
  | App (App (Cst "and", a), b) -> Printf.sprintf "(andI %s %s %s %s)" (ppp a) (ppp b) (prove a) (prove b)
  | App (App (Cst "or", a), b) ->
      (try Printf.sprintf "(orIL %s %s %s)" (ppp a) (ppp b) (prove a)
       with Cannot ma -> (try Printf.sprintf "(orIR %s %s %s)" (ppp a) (ppp b) (prove b) with Cannot mb -> cannot "or: %s | %s" ma mb))
  | App (App (Cst "iff", a), b) ->
      (try let pa = prove a and pb = prove b in Printf.sprintf "(iffI %s %s (fun _ => %s) (fun _ => %s))" (ppp a) (ppp b) pb pa
       with Cannot m1 ->
         (try
            let ra = refute a and rb = refute b in
            Printf.sprintf "(iffI %s %s (fun H : %s => FalseE (%s H) %s) (fun H : %s => FalseE (%s H) %s))" (ppp a) (ppp b) (pp a) ra (ppp b) (pp b) rb (ppp a)
          with Cannot m2 -> cannot "iff: %s | %s" m1 m2))
  | App (Cst "not", a) -> refute a
  | App (App (Cst "neq", a), b) -> refute (App (App (Cst "eq", a), b))
  | App (App (Cst "eq", a), b) ->
      let a', pa = simp a and b', pb = simp b in
      let norm x = (match x with Cst "Empty" -> Num 0 | _ -> x) in
      if a' = b' || norm a' = norm b' then trans a a' b (if pa = "" then "" else pa) (if pb = "" then "" else sym b b' pb) |> (fun p -> if p = "" then refl else p)
      else cannot "eq %s = %s" (pp a') (pp b')
  | App (App (Cst ("SNoLe" | "SNoLt" as op), a), b) ->
      let a', pa = simp a and b', pb = simp b in
      let norm x = (match x with Cst "Empty" -> Num 0 | _ -> x) in
      (match norm a', norm b' with
       | Num i, Num j when (if op = "SNoLe" then i <= j else i < j) ->
           let p1 = if op = "SNoLe" then num_le i j else num_lt i j in
           let p2 = transport_back b b' pb (App (App (Cst op, a'), Var "hl__u")) p1 in
           transport_back a a' pa (App (App (Cst op, Var "hl__u"), b)) p2
       | _ -> cannot "order atom")
  | App (App (Cst "Subq", a), b) ->
      let a', pa = simp a and b', pb = simp b in
      if is_empty a' then transport_back a a' pa (App (App (Cst "Subq", Var "hl__u"), b)) (Printf.sprintf "(Subq_Empty %s)" (ppp b))
      else if a' = b' then
        let p1 = Printf.sprintf "(Subq_ref %s)" (ppp a') in
        let p2 = transport_back b b' pb (App (App (Cst "Subq", a'), Var "hl__u")) p1 in
        transport_back a a' pa (App (App (Cst "Subq", Var "hl__u"), b)) p2
      else cannot "Subq"
  | App (Cst "finite", a) ->
      let a', pa = simp a in
      if is_empty a' then transport_back a a' pa (App (Cst "finite", Var "hl__u")) "finite_Empty" else cannot "finite"
  | App (App (Cst "equip", a), b) ->
      let a', pa = simp a and b', pb = simp b in
      if is_empty a' && is_empty b' then
        let p1 = "(equip_ref Empty)" in
        let p2 = transport_back b b' pb (App (App (Cst "equip", a'), Var "hl__u")) p1 in
        transport_back a a' pa (App (App (Cst "equip", Var "hl__u"), b)) p2
      else cannot "equip"
  | App (App (Cst "In", x), s) ->
      let s', ps = simp s in
      (match s' with
       | SetEnum [ e ] ->
           let x', px = simp x in
           if x' = e then transport_back s s' ps (App (App (Cst "In", x), Var "hl__u")) (transport_back x x' px (App (App (Cst "In", Var "hl__u"), s')) (Printf.sprintf "(SingI %s)" (ppp e)))
           else cannot "In singleton"
       | _ -> cannot "In")
  | _ -> cannot "prove %s" (pp t)

(* proof of ~ t *)
and refute (t : tm) : string =
  let lam body = Printf.sprintf "(fun H : %s => %s)" (pp t) body in
  match t with
  | Cst "False" -> lam "H"
  | App (App (Cst "In", x), s) ->
      let s', ps = simp s in
      if is_empty s' then lam (Printf.sprintf "EmptyE %s %s" (ppp x) (transport s s' ps (App (App (Cst "In", x), Var "hl__u")) "H"))
      else cannot "refute In"
  | ExIn (x, c, b) ->
      let c', pc = simp c in
      if is_empty c' then lam (Printf.sprintf "not_exists_in_Empty (fun %s => %s) %s" x (pp b) (transport c c' pc (ExIn (x, Var "hl__u", b)) "H"))
      else (let rb = refute b in lam (Printf.sprintf "H False (fun %s H%s0 => %s (andER (%s :e %s) %s H%s0))" x x rb x (pp c) (ppp b) x))
  | ExSub (x, c, b) ->
      let rb = refute b in lam (Printf.sprintf "H False (fun %s H%s0 => %s (andER (%s c= %s) %s H%s0))" x x rb x (pp c) (ppp b) x)
  | Ex (x, _, b) ->
      let rb = refute b in lam (Printf.sprintf "H False (fun %s => %s)" x rb)
  | AllIn (x, c, b) ->
      (* a universal over a singleton whose instance is refutable *)
      let c', pc = simp c in
      (match c' with
       | SetEnum [ e ] -> let rb = refute (Mg.subst [ (x, e) ] b) in lam (Printf.sprintf "%s (%s %s (SingI %s))" rb (transport c c' pc (AllIn (x, Var "hl__u", b)) "H") (ppp e) (ppp e))
       | _ -> cannot "refute forall")
  | App (App (Cst "and", a), b) ->
      (try let ra = refute a in lam (Printf.sprintf "%s (andEL %s %s H)" ra (ppp a) (ppp b))
       with Cannot _ -> let rb = refute b in lam (Printf.sprintf "%s (andER %s %s H)" rb (ppp a) (ppp b)))
  | App (App (Cst "or", a), b) ->
      let ra = refute a and rb = refute b in
      lam (Printf.sprintf "H False %s %s" ra rb)
  | App (Cst "not", a) -> lam (Printf.sprintf "H %s" (prove a))
  | App (App (Cst "neq", a), b) -> lam (Printf.sprintf "H %s" (prove (App (App (Cst "eq", a), b))))
  | Imp (a, b) -> let pa = prove a and rb = refute b in lam (Printf.sprintf "%s (H %s)" rb pa)
  | App (App (Cst "iff", a), b) ->
      (try let pa = prove a and rb = refute b in lam (Printf.sprintf "%s (iffEL %s %s H %s)" rb (ppp a) (ppp b) pa)
       with Cannot _ -> let ra = refute a and pb = prove b in lam (Printf.sprintf "%s (iffER %s %s H %s)" ra (ppp a) (ppp b) pb))
  | App (App (Cst ("SNoLe" | "SNoLt" as op), a), b) ->
      let a', pa = simp a and b', pb = simp b in
      let norm x = (match x with Cst "Empty" -> Num 0 | _ -> x) in
      (match norm a', norm b' with
       | Num i, Num j when (if op = "SNoLe" then i > j else i >= j) ->
           let p1 = if op = "SNoLe" then num_not_le i j else num_not_lt i j in
           lam (Printf.sprintf "%s %s" p1 (transport b b' pb (App (App (Cst op, a'), Var "hl__u")) (transport a a' pa (App (App (Cst op, Var "hl__u"), b)) "H")))
       | _ -> cannot "refute order atom")
  | App (App (Cst "eq", a), b) when (let norm x = (match x with Cst "Empty" -> Num 0 | _ -> x) in
                                     match norm (fst (simp a)), norm (fst (simp b)) with Num i, Num j -> i <> j | _ -> false) ->
      let a', pa = simp a and b', pb = simp b in
      let norm x = (match x with Cst "Empty" -> Num 0 | _ -> x) in
      (match norm a', norm b' with
       | Num i, Num j -> lam (Printf.sprintf "%s %s" (num_neq i j) (transport b b' pb (App (App (Cst "eq", a'), Var "hl__u")) (transport a a' pa (App (App (Cst "eq", Var "hl__u"), b)) "H")))
       | _ -> cannot "refute numeral eq")
  | App (App (Cst "eq", a), b) ->
      let a', pa = simp a and b', pb = simp b in
      (* Empty <> other when other has a member *)
      let to_normal h = transport b b' pb (App (App (Cst "eq", a'), Var "hl__u")) (transport a a' pa (App (App (Cst "eq", Var "hl__u"), b)) h) in
      if is_empty a' && not (is_empty b') then
        (match member_of b' with
         | Some (e, pe) -> lam (Printf.sprintf "Empty_neq_of_In %s %s %s %s" (ppp b') (ppp e) pe (to_normal "H"))
         | None -> cannot "refute eq")
      else if is_empty b' && not (is_empty a') then
        (match member_of a' with
         | Some (e, pe) -> lam (Printf.sprintf "Empty_neq_of_In %s %s %s (eq_sym_i %s Empty %s)" (ppp a') (ppp e) pe (ppp a') (to_normal "H"))
         | None -> cannot "refute eq")
      else cannot "refute eq %s = %s" (pp a') (pp b')
  | _ -> cannot "refute %s" (pp t)
