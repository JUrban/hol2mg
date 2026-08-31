(* Bounded declarative prover for native statements (docs/DESIGN.md 23, phase N2).
   Emits God1-style proofs -- let/assume/prove/apply/exact/witness with -/+/* bullets --
   using only definitional logic (andI, orIL, orIR, iffI, inline Leibniz equality) and
   instantiations of universally quantified hypotheses.  No hl_* symbols, no literal layer:
   the proofs check against the native context (God1 signature + native prelude + public
   definitions) alone. *)

let pp = Mg.to_string
let ppp t = "(" ^ Mg.to_string t ^ ")"

exception Give_up

type hyp = { hname : string; prop : Mg.tm }

let dest_and = function Mg.App (Mg.App (Mg.Cst "and", a), b) -> Some (a, b) | _ -> None
let dest_or = function Mg.App (Mg.App (Mg.Cst "or", a), b) -> Some (a, b) | _ -> None
let dest_iff = function Mg.App (Mg.App (Mg.Cst "iff", a), b) -> Some (a, b) | _ -> None
let dest_not = function
  | Mg.App (Mg.Cst "not", a) -> Some a
  | Mg.App (Mg.App (Mg.Cst "neq", a), b) -> Some (Mg.App (Mg.App (Mg.Cst "eq", a), b))
  | _ -> None
let dest_eq = function Mg.App (Mg.App (Mg.Cst "eq", a), b) -> Some (a, b) | _ -> None
let mg_in x a = Mg.App (Mg.App (Mg.Cst "In", x), a)
let mg_subq x a = Mg.App (Mg.App (Mg.Cst "Subq", x), a)

(* printing is canonical enough for the pilot's equality of formulas *)
let aeq a b = pp a = pp b

let refl_tm = "(fun q H => H)"

(* replace every occurrence (up to printing equality) of [old_t] by [by_t] *)
let rec replace_tm old_t by_t t =
  if aeq t old_t then by_t else
  match t with
  | Mg.App (a, b) -> Mg.App (replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.Imp (a, b) -> Mg.Imp (replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.Tuple l -> Mg.Tuple (List.map (replace_tm old_t by_t) l)
  | Mg.SetEnum l -> Mg.SetEnum (List.map (replace_tm old_t by_t) l)
  | Mg.If (a, b, c) -> Mg.If (replace_tm old_t by_t a, replace_tm old_t by_t b, replace_tm old_t by_t c)
  | Mg.Lam (x, m, b) -> Mg.Lam (x, m, replace_tm old_t by_t b)
  | Mg.All (x, m, b) -> Mg.All (x, m, replace_tm old_t by_t b)
  | Mg.Ex (x, m, b) -> Mg.Ex (x, m, replace_tm old_t by_t b)
  | Mg.LamIn (x, a, b) -> Mg.LamIn (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.AllIn (x, a, b) -> Mg.AllIn (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.AllSub (x, a, b) -> Mg.AllSub (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.ExIn (x, a, b) -> Mg.ExIn (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.ExSub (x, a, b) -> Mg.ExSub (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.Sep (x, a, b) -> Mg.Sep (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.Repl (x, a, b) -> Mg.Repl (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.ReplSep (x, a, pr, b) -> Mg.ReplSep (x, replace_tm old_t by_t a, replace_tm old_t by_t pr, replace_tm old_t by_t b)
  | Mg.SigmaIn (x, a, b) -> Mg.SigmaIn (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.PiIn (x, a, b) -> Mg.PiIn (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | Mg.FamUnion (x, a, b) -> Mg.FamUnion (x, replace_tm old_t by_t a, replace_tm old_t by_t b)
  | t -> t

type st = { mutable fuel : int; mutable names : (string, unit) Hashtbl.t }

let spend st n = st.fuel <- st.fuel - n; if st.fuel < 0 then raise Give_up

let fresh st base =
  let base = if base = "" then "x" else base in
  let rec go i =
    let n = if i = 0 then base else base ^ string_of_int i in
    if Hashtbl.mem st.names n then go (i + 1) else (Hashtbl.replace st.names n (); n)
  in go 0

let rec collect_names t =
  let acc = ref [] in
  let rec go t = match t with
    | Mg.Var v | Mg.Cst v -> acc := v :: !acc
    | Mg.Meta _ | Mg.Num _ -> ()
    | Mg.App (a, b) | Mg.If (a, b, Mg.Num 0) -> go a; go b
    | Mg.Lam (x, _, b) | Mg.All (x, _, b) | Mg.Ex (x, _, b) -> acc := x :: !acc; go b
    | Mg.LamIn (x, a, b) | Mg.AllIn (x, a, b) | Mg.AllSub (x, a, b)
    | Mg.ExIn (x, a, b) | Mg.ExSub (x, a, b) | Mg.Sep (x, a, b) | Mg.Repl (x, a, b)
    | Mg.SigmaIn (x, a, b) | Mg.PiIn (x, a, b) | Mg.FamUnion (x, a, b) ->
        acc := x :: !acc; go a; go b
    | Mg.ReplSep (x, a, p, b) -> acc := x :: !acc; go a; go p; go b
    | Mg.Imp (a, b) -> go a; go b
    | Mg.SetEnum l | Mg.Tuple l -> List.iter go l
    | Mg.If (a, b, c) -> go a; go b; go c
  in go t; !acc

(* first-order matching: pattern variables pvars (bound in the hypothesis) against a goal *)
let match_tm (pvars : string list) (pat : Mg.tm) (goal : Mg.tm) : (string * Mg.tm) list option =
  let bnd = ref [] in
  let rec go pv pat goal =
    match pat, goal with
    | Mg.Var v, _ when List.mem v pv ->
        (match List.assoc_opt v !bnd with
         | Some t -> aeq t goal
         | None -> bnd := (v, goal) :: !bnd; true)
    | Mg.Var a, Mg.Var b | Mg.Cst a, Mg.Cst b -> a = b
    | Mg.Num a, Mg.Num b -> a = b
    | Mg.App (a1, b1), Mg.App (a2, b2) -> go pv a1 a2 && go pv b1 b2
    | Mg.Imp (a1, b1), Mg.Imp (a2, b2) -> go pv a1 a2 && go pv b1 b2
    | Mg.Tuple l1, Mg.Tuple l2 | Mg.SetEnum l1, Mg.SetEnum l2 ->
        List.length l1 = List.length l2 && List.for_all2 (go pv) l1 l2
    | Mg.If (a1, b1, c1), Mg.If (a2, b2, c2) -> go pv a1 a2 && go pv b1 b2 && go pv c1 c2
    | Mg.Lam (x1, _, b1), Mg.Lam (x2, _, b2)
    | Mg.All (x1, _, b1), Mg.All (x2, _, b2) | Mg.Ex (x1, _, b1), Mg.Ex (x2, _, b2) ->
        x1 = x2 && go (List.filter (( <> ) x1) pv) b1 b2
    | Mg.AllIn (x1, a1, b1), Mg.AllIn (x2, a2, b2) | Mg.ExIn (x1, a1, b1), Mg.ExIn (x2, a2, b2)
    | Mg.AllSub (x1, a1, b1), Mg.AllSub (x2, a2, b2) | Mg.ExSub (x1, a1, b1), Mg.ExSub (x2, a2, b2)
    | Mg.LamIn (x1, a1, b1), Mg.LamIn (x2, a2, b2)
    | Mg.Sep (x1, a1, b1), Mg.Sep (x2, a2, b2) | Mg.Repl (x1, a1, b1), Mg.Repl (x2, a2, b2)
    | Mg.SigmaIn (x1, a1, b1), Mg.SigmaIn (x2, a2, b2) | Mg.PiIn (x1, a1, b1), Mg.PiIn (x2, a2, b2)
    | Mg.FamUnion (x1, a1, b1), Mg.FamUnion (x2, a2, b2) ->
        x1 = x2 && go pv a1 a2 && go (List.filter (( <> ) x1) pv) b1 b2
    | Mg.ReplSep (x1, a1, p1, b1), Mg.ReplSep (x2, a2, p2, b2) ->
        x1 = x2 && go pv a1 a2 &&
        (let pv' = List.filter (( <> ) x1) pv in go pv' p1 p2 && go pv' b1 b2)
    | _ -> false
  in
  if go pvars pat goal then Some !bnd else None

(* strip a hypothesis into (binders-and-premises, conclusion) *)
type prem = PVar of string | PMem of string * Mg.tm | PSub of string * Mg.tm | PProp of Mg.tm

let rec strip_hyp t : prem list * Mg.tm =
  match t with
  | Mg.All (x, _, b) -> let p, c = strip_hyp b in (PVar x :: p, c)
  | Mg.AllIn (x, a, b) -> let p, c = strip_hyp b in (PVar x :: PMem (x, a) :: p, c)
  | Mg.AllSub (x, a, b) -> let p, c = strip_hyp b in (PVar x :: PSub (x, a) :: p, c)
  | Mg.Imp (p, q) -> let ps, c = strip_hyp q in (PProp p :: ps, c)
  | c -> ([], c)

(* term-level closing of a goal: hypothesis, reflexivity, symmetry/transitivity motives,
   True, False from a contradiction, and application of a stripped hypothesis whose
   conclusion matches (premises closed recursively at smaller depth) *)
let rec close_term st (hyps : hyp list) (goal : Mg.tm) (adepth : int) : string option =
  spend st 1;
  match List.find_opt (fun h -> aeq h.prop goal) hyps with
  | Some h -> Some h.hname
  | None ->
  match goal with
  | Mg.Cst "True" -> Some "(fun p:prop => fun H:p => H)"
  | _ ->
  (* a False goal from a negation hypothesis (recursively closing the positive side);
     other closings below (e.g. hypothesis application) still apply to False goals *)
  (if goal <> Mg.Cst "False" then None else
     List.find_map (fun h ->
       match dest_not h.prop with
       | Some p ->
           (match List.find_opt (fun h2 -> aeq h2.prop p) hyps with
            | Some h2 -> Some (Printf.sprintf "(%s %s)" h.hname h2.hname)
            | None ->
                if adepth <= 0 then None else
                (match close_term st (List.filter (fun h2 -> h2.hname <> h.hname) hyps) p (adepth - 1) with
                 | Some t -> Some (Printf.sprintf "(%s %s)" h.hname t)
                 | None -> None))
       | None -> None) hyps)
  |> function
  | Some t -> Some t
  | None ->
  (* ex falso: any goal follows from a False hypothesis or a direct contradiction *)
  (match List.find_opt (fun h -> h.prop = Mg.Cst "False") hyps with
   | Some h -> Some (Printf.sprintf "(FalseE %s (%s))" h.hname (pp goal))
   | None ->
       match List.find_map (fun h ->
         match dest_not h.prop with
         | Some p -> (match List.find_opt (fun h2 -> aeq h2.prop p) hyps with
                      | Some h2 -> Some (Printf.sprintf "(FalseE (%s %s) (%s))" h.hname h2.hname (pp goal))
                      | None -> None)
         | None -> None) hyps with
       | Some t -> Some t
       | None -> None)
  |> function
  | Some t -> Some t
  | None ->
  (match dest_eq goal with
   | Some (a, b) when aeq a b -> Some refl_tm
   | Some (a, b) ->
       let sym = List.find_map (fun h ->
         match dest_eq h.prop with
         | Some (x, y) when aeq x b && aeq y a ->
             Some (Printf.sprintf "(%s (fun hl__u hl__v => hl__u = %s) %s)" h.hname (ppp b) refl_tm)
         | _ -> None) hyps in
       let cong () =
         (* rewriting with one equality hypothesis: goal l = r with r = l[e1 := e2] *)
         List.find_map (fun h ->
           match dest_eq h.prop with
           | Some (e1, e2) when not (aeq e1 e2) ->
               (* first-variable Leibniz: h (fun u v => P[u]) (pf : P[e1]) : P[e2] *)
               if aeq (replace_tm e1 e2 a) b && not (aeq a b) then
                 (* P[u] := a = a[e1:=u]; P[e1] is refl, P[e2] is the goal *)
                 Some (Printf.sprintf "(%s (fun hl__u hl__v => %s = %s) %s)"
                         h.hname (ppp a) (ppp (replace_tm e1 (Mg.Var "hl__u") a)) refl_tm)
               else if aeq (replace_tm e2 e1 b) a then
                 (* via h_sym : e2 = e1 and P[u] := b[e2:=u] = b; P[e2] is refl, P[e1] the goal *)
                 Some (Printf.sprintf "((%s (fun hl__u hl__v => hl__u = %s) %s) (fun hl__u hl__v => %s = %s) %s)"
                         h.hname (ppp e1) refl_tm (ppp (replace_tm e2 (Mg.Var "hl__u") b)) (ppp b) refl_tm)
               else None
           | _ -> None) hyps in
       (match sym with
        | Some t -> Some t
        | None ->
            (match cong () with
             | Some t -> Some t
             | None ->
            (* one transitivity step through a hypothesis chain a = c, c = b *)
            List.find_map (fun h1 ->
              match dest_eq h1.prop with
              | Some (x, c) when aeq x a ->
                  List.find_map (fun h2 ->
                    match dest_eq h2.prop with
                    | Some (y, z) when aeq y c && aeq z b ->
                        Some (Printf.sprintf "(%s (fun hl__u hl__v => %s = hl__u) %s)" h2.hname (ppp a) h1.hname)
                    | _ -> None) hyps
              | _ -> None) hyps))
   | None -> None)
  |> function
  | Some t -> Some t
  | None ->
      if adepth <= 0 then None else
      (* introductions as proof terms: andI / orIL / orIR *)
      (match dest_and goal with
       | Some (a, b) ->
           (match close_term st hyps a (adepth - 1) with
            | Some ta ->
                (match close_term st hyps b (adepth - 1) with
                 | Some tb -> Some (Printf.sprintf "(andI %s %s %s %s)" (ppp a) (ppp b) ta tb)
                 | None -> None)
            | None -> None)
       | None ->
           match dest_or goal with
           | Some (a, b) ->
               (match close_term st hyps a (adepth - 1) with
                | Some ta -> Some (Printf.sprintf "(orIL %s %s %s)" (ppp a) (ppp b) ta)
                | None ->
                    (match close_term st hyps b (adepth - 1) with
                     | Some tb -> Some (Printf.sprintf "(orIR %s %s %s)" (ppp a) (ppp b) tb)
                     | None -> None))
           | None -> None)
      |> function
      | Some t -> Some t
      | None ->
      (* transport along an equality hypothesis: close goal[e2 := e1] and rewrite *)
      (match List.find_map (fun h ->
         match dest_eq h.prop with
         | Some (e1, e2) when not (aeq e1 e2) ->
             let g' = replace_tm e2 e1 goal in
             if aeq g' goal then
               (let g2 = replace_tm e1 e2 goal in
                if aeq g2 goal then None
                else match close_term st hyps g2 (adepth - 1) with
                  | Some t -> Some (Printf.sprintf "((%s (fun hl__u hl__v => hl__u = %s) %s) (fun hl__u hl__v => %s) %s)"
                                      h.hname (ppp e1) refl_tm (pp (replace_tm e1 (Mg.Var "hl__u") goal)) t)
                  | None -> None)
             else
               (match close_term st hyps g' (adepth - 1) with
                | Some t -> Some (Printf.sprintf "(%s (fun hl__u hl__v => %s) %s)"
                                    h.hname (pp (replace_tm e2 (Mg.Var "hl__u") goal)) t)
                | None -> None)
         | _ -> None) hyps with
       | Some t -> Some t
       | None ->
      List.find_map (fun h ->
        let prems, concl = strip_hyp h.prop in
        if prems = [] then None else
        let pvars = List.filter_map (function PVar x -> Some x | _ -> None) prems in
        (* the conclusion itself, or a projection out of an /\ or <-> conclusion *)
        let variants =
          (concl, `Id)
          :: (match dest_and concl with
              | Some (a, b) -> [ (a, `AndL (a, b)); (b, `AndR (a, b)) ]
              | None ->
                  (match dest_iff concl with
                   | Some (p, q) ->
                       let i1 = Mg.Imp (p, q) and i2 = Mg.Imp (q, p) in
                       [ (i1, `AndL (i1, i2)); (i2, `AndR (i1, i2)) ]
                   | None -> [])) in
        List.find_map (fun (cpat, wrap) ->
        match match_tm pvars cpat goal with
        | None -> None
        | Some bnd0 ->
            (* pattern variables the conclusion leaves open are bound by matching the
               hypothesis' own premises against the available hypotheses (back-chaining) *)
            let bnd = List.fold_left (fun bnd pr ->
              let miss = List.filter (fun v -> not (List.mem_assoc v bnd)) pvars in
              if miss = [] then bnd else
              let pat = (match pr with
                | PProp p -> Some (Mg.subst bnd p)
                | PMem (x, a) -> Some (Mg.subst bnd (mg_in (Mg.Var x) a))
                | PSub (x, a) -> Some (Mg.subst bnd (mg_subq (Mg.Var x) a))
                | PVar _ -> None) in
              (match pat with
               | None -> bnd
               | Some pat ->
                   (match List.find_map (fun h2 -> match_tm miss pat h2.prop) hyps with
                    | Some ext -> ext @ bnd
                    | None -> bnd))) bnd0 prems in
            if not (List.for_all (fun v -> List.mem_assoc v bnd) pvars) then None else
            let inst t = Mg.subst bnd t in
            let rec args = function
              | [] -> Some []
              | PVar x :: rest ->
                  (match args rest with Some r -> Some (ppp (List.assoc x bnd) :: r) | None -> None)
              | PMem (x, a) :: rest ->
                  (match close_term st hyps (mg_in (inst (Mg.Var x)) (inst a)) (adepth - 1) with
                   | Some t -> (match args rest with Some r -> Some (t :: r) | None -> None)
                   | None -> None)
              | PSub (x, a) :: rest ->
                  (match close_term st hyps (mg_subq (inst (Mg.Var x)) (inst a)) (adepth - 1) with
                   | Some t -> (match args rest with Some r -> Some (t :: r) | None -> None)
                   | None -> None)
              | PProp p :: rest ->
                  (match close_term st hyps (inst p) (adepth - 1) with
                   | Some t -> (match args rest with Some r -> Some (t :: r) | None -> None)
                   | None -> None)
            in
            (match args prems with
             | Some l ->
                 let base = Printf.sprintf "(%s %s)" h.hname (String.concat " " l) in
                 Some (match wrap with
                       | `Id -> base
                       | `AndL (a, b) -> Printf.sprintf "(andEL %s %s %s)" (ppp (inst a)) (ppp (inst b)) base
                       | `AndR (a, b) -> Printf.sprintf "(andER %s %s %s)" (ppp (inst a)) (ppp (inst b)) base)
             | None -> None)) variants) hyps)

(* bullets by depth; deeper levels run sequentially *)
let bullet d = match d with 0 -> Some "-" | 1 -> Some "+" | 2 -> Some "*" | _ -> None

let block d (lines : string list) : string list =
  match bullet d, lines with
  | Some b, first :: rest -> (b ^ " " ^ first) :: List.map (fun l -> "  " ^ l) rest
  | _, l -> l

(* add a hypothesis; conjunctions and iffs contribute their components as derived *term*
   hypotheses (no script, so a goal equal to the hypothesis is never closed by accident);
   existential hypotheses are eliminated by script unless they are the goal itself *)
let rec push st (gl : Mg.tm) (name : string) (prop : Mg.tm) (hyps : hyp list)
    (cont : hyp list -> string list) : string list =
  spend st 1;
  let h = { hname = name; prop } in
  let comps = (match dest_and prop with
    | Some (a, b) -> Some (a, b, ppp a, ppp b)
    | None ->
        (match dest_iff prop with
         | Some (p, q) ->
             let a = Mg.Imp (p, q) and b = Mg.Imp (q, p) in
             Some (a, b, ppp a, ppp b)
         | None -> None)) in
  match comps with
  | Some (a, b, sa, sb) ->
      let ta = Printf.sprintf "(andEL %s %s %s)" sa sb name in
      let tb = Printf.sprintf "(andER %s %s %s)" sa sb name in
      push st gl ta a (h :: hyps) (fun hyps -> push st gl tb b hyps cont)
  | None ->
  match prop with
  | (Mg.ExIn _ | Mg.Ex _ | Mg.ExSub _) when aeq prop gl -> cont (h :: hyps)
  | Mg.ExIn (x, a, p) ->
      let x' = fresh st x in
      let p = Mg.subst [ (x, Mg.Var x') ] p in
      let h0 = fresh st "H" and hm = fresh st ("H" ^ x') and hp = fresh st "H" in
      Printf.sprintf "apply %s. let %s. assume %s. apply %s. assume %s %s." name x' h0 h0 hm hp
      :: push st gl hm (mg_in (Mg.Var x') a) hyps (fun hyps -> push st gl hp p hyps cont)
  | Mg.ExSub (x, a, p) ->
      let x' = fresh st x in
      let p = Mg.subst [ (x, Mg.Var x') ] p in
      let h0 = fresh st "H" and hm = fresh st ("H" ^ x') and hp = fresh st "H" in
      Printf.sprintf "apply %s. let %s. assume %s. apply %s. assume %s %s." name x' h0 h0 hm hp
      :: push st gl hm (mg_subq (Mg.Var x') a) hyps (fun hyps -> push st gl hp p hyps cont)
  | Mg.Ex (x, _, p) ->
      let x' = fresh st x in
      let p = Mg.subst [ (x, Mg.Var x') ] p in
      let hp = fresh st "H" in
      Printf.sprintf "apply %s. let %s. assume %s." name x' hp
      :: push st gl hp p hyps cont
  | _ -> cont (h :: hyps)

let rec prove_goal st (hyps : hyp list) (goal : Mg.tm) (d : int) : string list =
  spend st 2;
  match goal with
  | Mg.All (x, _, b) ->
      let x' = fresh st x in
      Printf.sprintf "let %s." x' :: prove_goal st hyps (Mg.subst [ (x, Mg.Var x') ] b) d
  | Mg.AllIn (x, a, b) ->
      let x' = fresh st x in
      let hx = fresh st ("H" ^ x') in
      let b' = Mg.subst [ (x, Mg.Var x') ] b in
      Printf.sprintf "let %s. assume %s." x' hx
      :: push st b' hx (mg_in (Mg.Var x') a) hyps (fun hyps -> prove_goal st hyps b' d)
  | Mg.AllSub (x, a, b) ->
      let x' = fresh st x in
      let hx = fresh st ("H" ^ x') in
      let b' = Mg.subst [ (x, Mg.Var x') ] b in
      Printf.sprintf "let %s. assume %s." x' hx
      :: push st b' hx (mg_subq (Mg.Var x') a) hyps (fun hyps -> prove_goal st hyps b' d)
  | Mg.Imp (p, q) ->
      let hn = fresh st "H" in
      Printf.sprintf "assume %s." hn :: push st q hn p hyps (fun hyps -> prove_goal st hyps q d)
  | g when dest_not g <> None ->
      let p = (match dest_not g with Some p -> p | None -> assert false) in
      let hn = fresh st "H" in
      Printf.sprintf "assume %s." hn
      :: push st (Mg.Cst "False") hn p hyps (fun hyps -> prove_goal st hyps (Mg.Cst "False") d)
  | g when dest_and g <> None ->
      let p, q = (match dest_and g with Some pq -> pq | None -> assert false) in
      (match close_term st hyps g 2 with
       | Some t -> [ Printf.sprintf "exact %s." t ]
       | None ->
           "apply andI."
           :: (block d (prove_goal st hyps p (d + 1)) @ block d (prove_goal st hyps q (d + 1))))
  | g when dest_iff g <> None ->
      let p, q = (match dest_iff g with Some pq -> pq | None -> assert false) in
      (match close_term st hyps g 2 with
       | Some t -> [ Printf.sprintf "exact %s." t ]
       | None ->
           "apply iffI."
           :: (block d (prove_goal st hyps (Mg.Imp (p, q)) (d + 1))
               @ block d (prove_goal st hyps (Mg.Imp (q, p)) (d + 1))))
  | g when dest_or g <> None ->
      let p, q = (match dest_or g with Some pq -> pq | None -> assert false) in
      (match close_term st hyps g 2 with
       | Some t -> [ Printf.sprintf "exact %s." t ]
       | None ->
           let fuel0 = st.fuel in
           (try "apply orIL." :: prove_goal st hyps p d
            with Give_up when fuel0 - st.fuel < fuel0 / 2 ->
              (try "apply orIR." :: prove_goal st hyps q d
               with Give_up -> or_elim st hyps g d)))
  | Mg.ExIn (x, a, b) ->
      (* witnesses from membership hypotheses of the right carrier *)
      let cands = List.filter_map (fun h ->
        match h.prop with
        | Mg.App (Mg.App (Mg.Cst "In", t), a') when aeq a a' -> Some t
        | _ -> None) hyps in
      let rec try_wit = function
        | [] -> raise Give_up
        | t :: rest ->
            let fuel0 = st.fuel in
            (try
               Printf.sprintf "witness %s." (pp t)
               :: "apply andI."
               :: (block d [ Printf.sprintf "exact %s."
                               (match close_term st hyps (mg_in t a) 2 with Some s -> s | None -> raise Give_up) ]
                   @ block d (prove_goal st hyps (Mg.subst [ (x, t) ] b) (d + 1)))
             with Give_up -> if fuel0 - st.fuel > fuel0 / 2 then raise Give_up else try_wit rest)
      in try_wit cands
  | Mg.Ex (x, m, b) ->
      (* unbounded existential: True/False for prop binders, else membership terms *)
      let wits =
        (match m with
         | Mg.Prop -> [ Mg.Cst "True"; Mg.Cst "False" ]
         | _ ->
             List.filter_map (fun h ->
               match h.prop with
               | Mg.App (Mg.App (Mg.Cst "In", t), _) -> Some t
               | _ -> None) hyps
             @ [ Mg.Cst "Empty" ]) in
      let rec try_wit = function
        | [] -> raise Give_up
        | t :: rest ->
            let fuel0 = st.fuel in
            (try Printf.sprintf "witness %s." (pp t) :: prove_goal st hyps (Mg.subst [ (x, t) ] b) d
             with Give_up -> if fuel0 - st.fuel > fuel0 / 2 then raise Give_up else try_wit rest)
      in try_wit wits
  | g ->
      (match close_term st hyps g 3 with
       | Some t -> [ Printf.sprintf "exact %s." t ]
       | None ->
           (* classical: a double-negation hypothesis of the goal *)
           match List.find_opt (fun h ->
             match dest_not h.prop with
             | Some p -> (match dest_not p with Some q -> aeq q g | None -> false)
             | None -> false) hyps with
           | Some h ->
               let h1 = fresh st "H" in
               let bl lines = (match bullet d with
                 | Some _ -> block d lines
                 | None -> (match lines with f :: r -> ("- " ^ f) :: List.map (fun l -> "  " ^ l) r | [] -> [])) in
               Printf.sprintf "apply (xm (%s))." (pp g)
               :: (bl [ Printf.sprintf "assume %s. exact %s." h1 h1 ]
                   @ bl [ Printf.sprintf "assume %s. exact (FalseE (%s %s) (%s))." h1 h.hname h1 (pp g) ])
           | None -> or_elim st hyps g d)

and or_elim st hyps goal d =
  match List.find_opt (fun h -> dest_or h.prop <> None) hyps with
  | Some h ->
      let p, q = (match dest_or h.prop with Some pq -> pq | None -> assert false) in
      let hyps' = List.filter (fun h2 -> h2.hname <> h.hname) hyps in
      let h1 = fresh st "H" and h2 = fresh st "H" in
      Printf.sprintf "apply %s." h.hname
      :: (block d (Printf.sprintf "assume %s." h1 :: push st goal h1 p hyps' (fun hy -> prove_goal st hy goal (d + 1)))
          @ block d (Printf.sprintf "assume %s." h2 :: push st goal h2 q hyps' (fun hy -> prove_goal st hy goal (d + 1))))
  | None -> raise Give_up

(* God1/prelude facts available in every composition the generated proofs check in
   (docs/DESIGN.md 23.5).  Statements are hand-built ASTs of the library lemmas; EmptyE
   is stated in its definitionally equal `-> False` form so hypothesis application fires. *)
let builtin_premises : (string * Mg.tm) list =
  [ ("EmptyE",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (mg_in (Mg.Var "hl__x") (Mg.Cst "Empty"), Mg.Cst "False")));
    ("choose_in_in",
     Mg.All ("hl__A", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "neq", Mg.Var "hl__A"), Mg.Cst "Empty"),
         Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
           mg_in (Mg.App (Mg.App (Mg.Cst "choose_in", Mg.Var "hl__A"), Mg.Var "hl__P"))
             (Mg.Var "hl__A"))))) ]

let prove ?(budget = 6000) ?(max_lines = 200) ?(premises : (string * Mg.tm) list = [])
    (goal : Mg.tm) : string option =
  let st = { fuel = budget; names = Hashtbl.create 64 } in
  let premises = premises @ builtin_premises in
  ignore collect_names;  (* statement binders may be shadowed by let/assume; nothing is pre-seeded *)
  List.iter (fun (n, _) -> Hashtbl.replace st.names n ()) premises;
  let hyps0 = List.map (fun (n, p) -> { hname = n; prop = p }) premises in
  try
    let lines = prove_goal st hyps0 goal 0 in
    if List.length lines > max_lines then None else Some (String.concat "\n" lines)
  with Give_up | Stack_overflow -> None
