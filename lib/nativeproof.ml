(* Bounded declarative prover for native statements (docs/DESIGN.md 23, phase N2).
   Emits God1-style proofs -- let/assume/prove/apply/exact/witness with -/+/* bullets --
   using only definitional logic (andI, orIL, orIR, iffI, inline Leibniz equality) and
   instantiations of universally quantified hypotheses.  No hl_* symbols, no literal layer:
   the proofs check against the native context (God1 signature + native prelude + public
   definitions) alone. *)

let pp = Mg.to_string
let ppp t = "(" ^ Mg.to_string t ^ ")"

(* a metavariable bound to a partial application of an infix-notation constant must be
   printed eta-expanded: bare `eq t` has no parse (the notation supplies the hidden
   type argument), while `fun hl__w:set => t = hl__w` does *)
let ppp_fn t = match t with
  | Mg.App (Mg.Cst ("eq" | "In" | "Subq" | "neq" | "SNoLe" | "SNoLt"
                    | "add_SNo" | "mul_SNo" | "iff" | "and" | "or"), _) ->
      "(fun hl__w:set => " ^ Mg.to_string (Mg.App (t, Mg.Var "hl__w")) ^ ")"
  | _ -> ppp t

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

(* does the term contain any binder (used to gate alpha-equality fallbacks) *)
let rec has_binders = function
  | Mg.All _ | Mg.AllIn _ | Mg.AllSub _ | Mg.Ex _ | Mg.ExIn _ | Mg.ExSub _
  | Mg.Lam _ | Mg.LamIn _ | Mg.Sep _ | Mg.Repl _ | Mg.ReplSep _
  | Mg.SigmaIn _ | Mg.PiIn _ | Mg.FamUnion _ -> true
  | Mg.App (a, b) | Mg.Imp (a, b) -> has_binders a || has_binders b
  | Mg.If (a, b, c) -> has_binders a || has_binders b || has_binders c
  | Mg.Tuple l | Mg.SetEnum l -> List.exists has_binders l
  | _ -> false

let refl_tm = "(fun q H => H)"

(* bottom-up beta normalization (bounded); printed-form comparison then treats
   (fun x => b) t and b[x:=t] as equal, matching Megalodon's conversion *)
let rec beta_n n t =
  if n <= 0 then t else
  match t with
  | Mg.App (a, b) ->
      let a = beta_n (n - 1) a and b = beta_n (n - 1) b in
      (match a with
       | Mg.Lam (x, _, body) -> beta_n (n - 1) (Mg.subst [ (x, b) ] body)
       | _ -> Mg.App (a, b))
  | Mg.Imp (a, b) -> Mg.Imp (beta_n (n - 1) a, beta_n (n - 1) b)
  | Mg.Lam (x, m, b) -> Mg.Lam (x, m, beta_n (n - 1) b)
  | Mg.All (x, m, b) -> Mg.All (x, m, beta_n (n - 1) b)
  | Mg.Ex (x, m, b) -> Mg.Ex (x, m, beta_n (n - 1) b)
  | Mg.AllIn (x, a, b) -> Mg.AllIn (x, beta_n (n - 1) a, beta_n (n - 1) b)
  | Mg.ExIn (x, a, b) -> Mg.ExIn (x, beta_n (n - 1) a, beta_n (n - 1) b)
  | Mg.AllSub (x, a, b) -> Mg.AllSub (x, beta_n (n - 1) a, beta_n (n - 1) b)
  | Mg.ExSub (x, a, b) -> Mg.ExSub (x, beta_n (n - 1) a, beta_n (n - 1) b)
  | Mg.Sep (x, a, b) -> Mg.Sep (x, beta_n (n - 1) a, beta_n (n - 1) b)
  | Mg.If (a, b, c) -> Mg.If (beta_n (n - 1) a, beta_n (n - 1) b, beta_n (n - 1) c)
  | Mg.Tuple l -> Mg.Tuple (List.map (beta_n (n - 1)) l)
  | Mg.SetEnum l -> Mg.SetEnum (List.map (beta_n (n - 1)) l)
  | t -> t
let beta t = beta_n 200 t

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

type st = { mutable fuel : int; mutable names : (string, unit) Hashtbl.t;
            memo : (string, int) Hashtbl.t; (* failed close_term: context key -> max adepth tried *)
            pps : (Mg.tm, string) Hashtbl.t (* memoized pp of hypothesis props (memo keys) *) }

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
  (* bindings made inside a binder's scope must not capture the bound variable *)
  let scoped x f =
    let before = List.length !bnd in
    let ok = f () in
    ok && List.for_all (fun (_, t) -> not (List.mem x (Mg.free_vars t)))
            (List.filteri (fun i _ -> i < List.length !bnd - before) !bnd) in
  (* env maps pattern-side binder names to goal-side binder names (alpha matching) *)
  let rec go env pv pat goal =
    match pat, goal with
    | Mg.Var v, _ when List.mem v pv ->
        (match List.assoc_opt v !bnd with
         | Some t -> aeq t goal
         | None -> bnd := (v, goal) :: !bnd; true)
    | Mg.Var a, Mg.Var b ->
        (match List.assoc_opt a env with
         | Some b' -> b = b'
         | None -> a = b && not (List.exists (fun (_, g) -> g = b) env))
    | Mg.Cst a, Mg.Cst b -> a = b
    | Mg.Num a, Mg.Num b -> a = b
    (* numerals are definitionally ordsucc towers: let patterns cross the boundary *)
    | Mg.App (Mg.Cst "ordsucc", p'), Mg.Num k when k > 0 ->
        go env pv p' (Mg.Num (k - 1))
    | Mg.Num k, Mg.App (Mg.Cst "ordsucc", g') when k > 0 ->
        go env pv (Mg.Num (k - 1)) g'
    | Mg.App (a1, b1), Mg.App (a2, b2) -> go env pv a1 a2 && go env pv b1 b2
    | Mg.Imp (a1, b1), Mg.Imp (a2, b2) -> go env pv a1 a2 && go env pv b1 b2
    | Mg.Tuple l1, Mg.Tuple l2 | Mg.SetEnum l1, Mg.SetEnum l2 ->
        List.length l1 = List.length l2 && List.for_all2 (go env pv) l1 l2
    | Mg.If (a1, b1, c1), Mg.If (a2, b2, c2) ->
        go env pv a1 a2 && go env pv b1 b2 && go env pv c1 c2
    | Mg.Lam (x1, _, b1), Mg.Lam (x2, _, b2)
    | Mg.All (x1, _, b1), Mg.All (x2, _, b2) | Mg.Ex (x1, _, b1), Mg.Ex (x2, _, b2) ->
        scoped x2 (fun () -> go ((x1, x2) :: env) (List.filter (( <> ) x1) pv) b1 b2)
    | Mg.AllIn (x1, a1, b1), Mg.AllIn (x2, a2, b2) | Mg.ExIn (x1, a1, b1), Mg.ExIn (x2, a2, b2)
    | Mg.AllSub (x1, a1, b1), Mg.AllSub (x2, a2, b2) | Mg.ExSub (x1, a1, b1), Mg.ExSub (x2, a2, b2)
    | Mg.LamIn (x1, a1, b1), Mg.LamIn (x2, a2, b2)
    | Mg.Sep (x1, a1, b1), Mg.Sep (x2, a2, b2) | Mg.Repl (x1, a1, b1), Mg.Repl (x2, a2, b2)
    | Mg.SigmaIn (x1, a1, b1), Mg.SigmaIn (x2, a2, b2) | Mg.PiIn (x1, a1, b1), Mg.PiIn (x2, a2, b2)
    | Mg.FamUnion (x1, a1, b1), Mg.FamUnion (x2, a2, b2) ->
        go env pv a1 a2
        && scoped x2 (fun () -> go ((x1, x2) :: env) (List.filter (( <> ) x1) pv) b1 b2)
    | Mg.ReplSep (x1, a1, p1, b1), Mg.ReplSep (x2, a2, p2, b2) ->
        go env pv a1 a2 &&
        scoped x2 (fun () ->
          let env' = (x1, x2) :: env in
          let pv' = List.filter (( <> ) x1) pv in go env' pv' p1 p2 && go env' pv' b1 b2)
    | _ -> false
  in
  if go [] pvars pat goal then Some !bnd else None

(* strip a hypothesis into (binders-and-premises, conclusion) *)
type prem = PVar of string | PMem of string * Mg.tm | PSub of string * Mg.tm | PProp of Mg.tm

let rec strip_hyp t : prem list * Mg.tm =
  match t with
  | Mg.All (x, _, b) -> let p, c = strip_hyp b in (PVar x :: p, c)
  | Mg.AllIn (x, a, b) -> let p, c = strip_hyp b in (PVar x :: PMem (x, a) :: p, c)
  | Mg.AllSub (x, a, b) -> let p, c = strip_hyp b in (PVar x :: PSub (x, a) :: p, c)
  | Mg.Imp (p, q) -> let ps, c = strip_hyp q in (PProp p :: ps, c)
  | c -> ([], c)

(* curated definitional unfoldings of binary predicates: constant -> unfolded prop *)
let mg_and a b = Mg.App (Mg.App (Mg.Cst "and", a), b)
let unfold_def2 (c : string) (x : Mg.tm) (y : Mg.tm) : Mg.tm option =
  match c with
  | "divides_int" ->
      Some (mg_and (mg_and (mg_in x (Mg.Cst "int")) (mg_in y (Mg.Cst "int")))
              (Mg.ExIn ("hl__k", Mg.Cst "int",
                 Mg.App (Mg.App (Mg.Cst "eq",
                   Mg.App (Mg.App (Mg.Cst "mul_SNo", x), Mg.Var "hl__k")), y))))
  | "divides_nat" ->
      (* God1 defines divides_nat before mul_SNo exists: its `*` is mul_nat *)
      Some (mg_and (mg_and (mg_in x (Mg.Cst "omega")) (mg_in y (Mg.Cst "omega")))
              (Mg.ExIn ("hl__k", Mg.Cst "omega",
                 Mg.App (Mg.App (Mg.Cst "eq",
                   Mg.App (Mg.App (Mg.Cst "mul_nat", x), Mg.Var "hl__k")), y))))
  | _ -> None

(* enrich a hypothesis with its derived term projections (no script): conjunction and
   iff components, memberships in separations / boolean set operations / enumerations *)
let rec augment (name : string) (prop : Mg.tm) (acc : hyp list) : hyp list =
  let h = { hname = name; prop } in
  match dest_and prop with
  | Some (a, b) ->
      let sa = ppp a and sb = ppp b in
      augment (Printf.sprintf "(andEL %s %s %s)" sa sb name) a
        (augment (Printf.sprintf "(andER %s %s %s)" sa sb name) b (h :: acc))
  | None ->
  match dest_iff prop with
  | Some (p, q) ->
      let i1 = Mg.Imp (p, q) and i2 = Mg.Imp (q, p) in
      let sa = ppp i1 and sb = ppp i2 in
      augment (Printf.sprintf "(andEL %s %s %s)" sa sb name) i1
        (augment (Printf.sprintf "(andER %s %s %s)" sa sb name) i2 (h :: acc))
  | None ->
  match prop with
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.Sep (x, a, pbody)) ->
      let pl = Printf.sprintf "(fun %s:set => %s)" x (pp pbody) in
      augment (Printf.sprintf "(SepE1 %s %s %s %s)" (ppp a) pl (ppp z) name) (mg_in z a)
        (augment (Printf.sprintf "(SepE2 %s %s %s %s)" (ppp a) pl (ppp z) name)
           (Mg.subst [ (x, z) ] pbody) (h :: acc))
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.App (Mg.App (Mg.Cst "binintersect", a), b)) ->
      augment (Printf.sprintf "(binintersectE1 %s %s %s %s)" (ppp a) (ppp b) (ppp z) name) (mg_in z a)
        (augment (Printf.sprintf "(binintersectE2 %s %s %s %s)" (ppp a) (ppp b) (ppp z) name)
           (mg_in z b) (h :: acc))
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.App (Mg.App (Mg.Cst "setminus", a), b)) ->
      augment (Printf.sprintf "(setminusE1 %s %s %s %s)" (ppp a) (ppp b) (ppp z) name) (mg_in z a)
        (augment (Printf.sprintf "(setminusE2 %s %s %s %s)" (ppp a) (ppp b) (ppp z) name)
           (Mg.App (Mg.Cst "not", mg_in z b)) (h :: acc))
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.App (Mg.App (Mg.Cst "binunion", a), b)) ->
      { hname = Printf.sprintf "(binunionE %s %s %s %s)" (ppp a) (ppp b) (ppp z) name;
        prop = Mg.App (Mg.App (Mg.Cst "or", mg_in z a), mg_in z b) } :: h :: acc
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.SetEnum [ a ]) ->
      { hname = Printf.sprintf "(SingE %s %s %s)" (ppp a) (ppp z) name;
        prop = Mg.App (Mg.App (Mg.Cst "eq", z), a) } :: h :: acc
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.SetEnum [ a; b ]) ->
      { hname = Printf.sprintf "(UPairE %s %s %s %s)" (ppp z) (ppp a) (ppp b) name;
        prop = Mg.App (Mg.App (Mg.Cst "or",
          Mg.App (Mg.App (Mg.Cst "eq", z), a)), Mg.App (Mg.App (Mg.Cst "eq", z), b)) } :: h :: acc
  | _ -> h :: acc

(* rename every binder in a term to a fresh name (st-aware), so unfolded definitions
   never shadow context variables: replace_tm/aeq compare printed forms and would
   otherwise confuse bound and free occurrences of the same name *)
let rec freshen_binders st t =
  let fr x b re =
    let x' = fresh st x in
    re x' (Mg.subst [ (x, Mg.Var x') ] b) in
  match t with
  | Mg.App (a, b) -> Mg.App (freshen_binders st a, freshen_binders st b)
  | Mg.Imp (a, b) -> Mg.Imp (freshen_binders st a, freshen_binders st b)
  | Mg.If (a, b, c) -> Mg.If (freshen_binders st a, freshen_binders st b, freshen_binders st c)
  | Mg.Tuple l -> Mg.Tuple (List.map (freshen_binders st) l)
  | Mg.SetEnum l -> Mg.SetEnum (List.map (freshen_binders st) l)
  | Mg.Lam (x, m, b) -> fr x b (fun x' b' -> Mg.Lam (x', m, freshen_binders st b'))
  | Mg.All (x, m, b) -> fr x b (fun x' b' -> Mg.All (x', m, freshen_binders st b'))
  | Mg.Ex (x, m, b) -> fr x b (fun x' b' -> Mg.Ex (x', m, freshen_binders st b'))
  | Mg.AllIn (x, a, b) -> let a' = freshen_binders st a in fr x b (fun x' b' -> Mg.AllIn (x', a', freshen_binders st b'))
  | Mg.ExIn (x, a, b) -> let a' = freshen_binders st a in fr x b (fun x' b' -> Mg.ExIn (x', a', freshen_binders st b'))
  | Mg.AllSub (x, a, b) -> let a' = freshen_binders st a in fr x b (fun x' b' -> Mg.AllSub (x', a', freshen_binders st b'))
  | Mg.ExSub (x, a, b) -> let a' = freshen_binders st a in fr x b (fun x' b' -> Mg.ExSub (x', a', freshen_binders st b'))
  | Mg.Sep (x, a, b) -> let a' = freshen_binders st a in fr x b (fun x' b' -> Mg.Sep (x', a', freshen_binders st b'))
  | t -> t

(* term-level closing of a goal: hypothesis, reflexivity, symmetry/transitivity motives,
   True, False from a contradiction, and application of a stripped hypothesis whose
   conclusion matches (premises closed recursively at smaller depth) *)
let pp_st st t =
  match Hashtbl.find_opt st.pps t with
  | Some s -> s
  | None -> let s = pp t in Hashtbl.add st.pps t s; s

let rec close_term st (hyps : hyp list) (goal : Mg.tm) (adepth : int) : string option =
  spend st 1;
  let key = lazy (
    let b = Buffer.create 256 in
    Buffer.add_string b (pp goal); Buffer.add_char b '|';
    List.iter (fun h -> Buffer.add_string b (pp_st st h.prop); Buffer.add_char b ';') hyps;
    Buffer.contents b) in
  match Hashtbl.find_opt st.memo (Lazy.force key) with
  | Some a when a >= adepth -> None
  | _ ->
      (match close_term_inner st hyps goal adepth with
       | Some t -> Some t
       | None ->
           (match Hashtbl.find_opt st.memo (Lazy.force key) with
            | Some a when a >= adepth -> ()
            | _ -> Hashtbl.replace st.memo (Lazy.force key) adepth);
           None)

and close_term_inner st (hyps : hyp list) (goal : Mg.tm) (adepth : int) : string option =
  match List.find_opt (fun h -> aeq h.prop goal) hyps with
  | Some h -> Some h.hname
  | None ->
  (* alpha-equal hypothesis (binder names differ; Megalodon accepts the citation) *)
  match (if has_binders goal
         then List.find_opt (fun h -> match_tm [] goal h.prop <> None) hyps
         else None) with
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
           (match close_term st hyps a adepth with
            | Some ta ->
                (match close_term st hyps b adepth with
                 | Some tb -> Some (Printf.sprintf "(andI %s %s %s %s)" (ppp a) (ppp b) ta tb)
                 | None -> None)
            | None -> None)
       | None ->
           match dest_or goal with
           | Some (a, b) ->
               (match close_term st hyps a adepth with
                | Some ta -> Some (Printf.sprintf "(orIL %s %s %s)" (ppp a) (ppp b) ta)
                | None ->
                    (match close_term st hyps b adepth with
                     | Some tb -> Some (Printf.sprintf "(orIR %s %s %s)" (ppp a) (ppp b) tb)
                     | None -> None))
           | None -> None)
      |> function
      | Some t -> Some t
      | None ->
      (* negations and implications as lambda proof terms *)
      (match dest_not goal with
       | Some p ->
           spend st 3;
           let hn = fresh st "hl__H" in
           (match close_term st (augment hn p hyps) (Mg.Cst "False") adepth with
            | Some t -> Some (Printf.sprintf "(fun %s : %s => %s)" hn (pp p) t)
            | None -> None)
       | None ->
           (match goal with
            | Mg.Imp (p, q) when adepth >= 2 ->
                spend st 5;
                let hn = fresh st "hl__H" in
                (match close_term st (augment hn p hyps) q (adepth - 1) with
                 | Some t -> Some (Printf.sprintf "(fun %s : %s => %s)" hn (pp p) t)
                 | None -> None)
            | _ -> None))
      |> function
      | Some t -> Some t
      | None ->
      (* existential introduction as a proof term (God1 ex_intro); witnesses from
         membership hypotheses, or choose_in on a carrier known nonempty *)
      (match goal with
       | Mg.ExIn (x, a, p) ->
           let wits = List.filter_map (fun h ->
             match h.prop with
             | Mg.App (Mg.App (Mg.Cst "In", t), a') when aeq a a' -> Some t
             | _ -> None) hyps
             @ List.filter_map (fun h ->
                 match match_tm [ x ] p h.prop with
                 | Some [ (x', t) ] when x' = x -> Some t
                 | _ -> None) hyps
             @ (if List.exists (fun h ->
                     aeq h.prop (Mg.App (Mg.App (Mg.Cst "neq", a), Mg.Cst "Empty"))) hyps
                then [ Mg.App (Mg.App (Mg.Cst "choose_in", a), Mg.Lam ("hl__w", Mg.Set, Mg.Cst "True")) ]
                else []) in
           let pred = Mg.Lam ("hl__w", Mg.Set,
             Mg.App (Mg.App (Mg.Cst "and", mg_in (Mg.Var "hl__w") a),
                     Mg.subst [ (x, Mg.Var "hl__w") ] p)) in
           List.find_map (fun w ->
             let pw = beta (Mg.subst [ (x, w) ] p) in
             match close_term st hyps (mg_in w a) (adepth - 1) with
             | None -> None
             | Some tm ->
                 (match close_term st hyps pw (adepth - 1) with
                  | None -> None
                  | Some tp ->
                      Some (Printf.sprintf "(ex_intro %s %s (andI %s %s %s %s))"
                              (ppp pred) (ppp w) (ppp (mg_in w a)) (ppp pw) tm tp))) wits
       | Mg.Ex (x, Mg.Set, p) ->
           let wits = List.filter_map (fun h ->
             match h.prop with
             | Mg.App (Mg.App (Mg.Cst "In", t), _) -> Some t
             | _ -> None) hyps in
           let pred = Mg.Lam ("hl__w", Mg.Set, Mg.subst [ (x, Mg.Var "hl__w") ] p) in
           List.find_map (fun w ->
             match close_term st hyps (beta (Mg.subst [ (x, w) ] p)) (adepth - 1) with
             | None -> None
             | Some tp -> Some (Printf.sprintf "(ex_intro %s %s %s)" (ppp pred) (ppp w) tp)) wits
       | _ -> None)
      |> function
      | Some t -> Some t
      | None ->
      (* membership in separations, boolean set operations, and enumerations *)
      (match goal with
       | Mg.App (Mg.App (Mg.Cst "In", z), sset) ->
           (match sset with
            | Mg.Sep (x, a, pbody) ->
                (match close_term st hyps (mg_in z a) adepth with
                 | None -> None
                 | Some t1 ->
                     (match close_term st hyps (Mg.subst [ (x, z) ] pbody) adepth with
                      | None -> None
                      | Some t2 ->
                          Some (Printf.sprintf "(SepI %s (fun %s:set => %s) %s %s %s)"
                                  (ppp a) x (pp pbody) (ppp z) t1 t2)))
            | Mg.App (Mg.App (Mg.Cst "binintersect", a), b) ->
                (match close_term st hyps (mg_in z a) adepth with
                 | None -> None
                 | Some t1 ->
                     (match close_term st hyps (mg_in z b) adepth with
                      | None -> None
                      | Some t2 -> Some (Printf.sprintf "(binintersectI %s %s %s %s %s)"
                                           (ppp a) (ppp b) (ppp z) t1 t2)))
            | Mg.App (Mg.App (Mg.Cst "binunion", a), b) ->
                (match close_term st hyps (mg_in z a) adepth with
                 | Some t1 -> Some (Printf.sprintf "(binunionI1 %s %s %s %s)" (ppp a) (ppp b) (ppp z) t1)
                 | None ->
                     (match close_term st hyps (mg_in z b) adepth with
                      | Some t2 -> Some (Printf.sprintf "(binunionI2 %s %s %s %s)" (ppp a) (ppp b) (ppp z) t2)
                      | None -> None))
            | Mg.App (Mg.App (Mg.Cst "setminus", a), b) ->
                (match close_term st hyps (mg_in z a) adepth with
                 | None -> None
                 | Some t1 ->
                     (match close_term st hyps (Mg.App (Mg.Cst "not", mg_in z b)) adepth with
                      | Some t2 -> Some (Printf.sprintf "(setminusI %s %s %s %s %s)"
                                           (ppp a) (ppp b) (ppp z) t1 t2)
                      | None -> None))
            | Mg.SetEnum [ a ] when aeq z a -> Some (Printf.sprintf "(SingI %s)" (ppp a))
            | Mg.SetEnum [ a; b ] ->
                if aeq z a then Some (Printf.sprintf "(UPairI1 %s %s)" (ppp a) (ppp b))
                else if aeq z b then Some (Printf.sprintf "(UPairI2 %s %s)" (ppp a) (ppp b))
                else None
            | _ -> None)
           |> (function
               | Some t -> Some t
               | None ->
                   (* membership through a subset hypothesis *)
                   List.find_map (fun h ->
                     match h.prop with
                     | Mg.App (Mg.App (Mg.Cst "Subq", s1), t1) when aeq t1 sset ->
                         (match close_term st hyps (mg_in z s1) (adepth - 1) with
                          | Some t -> Some (Printf.sprintf "(%s %s %s)" h.hname (ppp z) t)
                          | None -> None)
                     | _ -> None) hyps)
       | _ -> None)
      |> function
      | Some t -> Some t
      | None ->
      (* derived equations: instantiate an equation-concluding hypothesis at either side
         of an equational goal, then chain with symmetry/transitivity/transport *)
      (match dest_eq goal with
       | Some (a, b) when adepth >= 2 ->
           let derive h =
             let prems, concl = strip_hyp h.prop in
             if prems = [] then None else
             let pvars = List.filter_map (function PVar x -> Some x | _ -> None) prems in
             (match dest_eq concl with
              | Some (l, _) ->
                  let try_tgt tgt =
                    (match match_tm pvars l tgt with
                     | None -> None
                     | Some bnd when List.for_all (fun v -> List.mem_assoc v bnd) pvars ->
                         let inst t = beta (Mg.subst bnd t) in
                         let rec args = function
                           | [] -> Some []
                           | PVar x :: rest ->
                               (match args rest with Some r -> Some (ppp_fn (List.assoc x bnd) :: r) | None -> None)
                           | PMem (x, aa) :: rest ->
                               (match close_term st hyps (mg_in (inst (Mg.Var x)) (inst aa)) (adepth - 1) with
                                | Some t -> (match args rest with Some r -> Some (t :: r) | None -> None)
                                | None -> None)
                           | PSub (x, aa) :: rest ->
                               (match close_term st hyps (mg_subq (inst (Mg.Var x)) (inst aa)) (adepth - 1) with
                                | Some t -> (match args rest with Some r -> Some (t :: r) | None -> None)
                                | None -> None)
                           | PProp pp' :: rest ->
                               (match close_term st hyps (inst pp') (adepth - 1) with
                                | Some t -> (match args rest with Some r -> Some (t :: r) | None -> None)
                                | None -> None)
                         in
                         (match args prems with
                          | Some lst -> Some { hname = Printf.sprintf "(%s %s)" h.hname (String.concat " " lst);
                                               prop = inst concl }
                          | None -> None)
                     | Some _ -> None) in
                  (match try_tgt a with Some d -> Some d | None -> try_tgt b)
              | None -> None) in
           let derived = List.filter_map derive hyps in
           let fresh_d = List.filter (fun d -> not (List.exists (fun h -> aeq h.prop d.prop) hyps)) derived in
           if fresh_d = [] then None
           else (spend st 3; close_term st (fresh_d @ hyps) goal (adepth - 1))
       | _ -> None)
      |> function
      | Some t -> Some t
      | None ->
      (* transport along an equality hypothesis: close goal[e2 := e1] and rewrite *)
      (match List.find_map (fun h ->
         match dest_eq h.prop with
         | Some (e1, e2) when not (aeq e1 e2) ->
             spend st 2;
             let g' = replace_tm e2 e1 goal in
             let d1 () =
               if aeq g' goal then None else
               (match close_term st hyps g' (adepth - 1) with
                | Some t -> Some (Printf.sprintf "(%s (fun hl__u hl__v => %s) %s)"
                                    h.hname (pp (replace_tm e2 (Mg.Var "hl__u") goal)) t)
                | None -> None) in
             let d2 () =
               let g2 = replace_tm e1 e2 goal in
               if aeq g2 goal then None else
               (match close_term st hyps g2 (adepth - 1) with
                | Some t -> Some (Printf.sprintf "((%s (fun hl__u hl__v => hl__u = %s) %s) (fun hl__u hl__v => %s) %s)"
                                    h.hname (ppp e1) refl_tm (pp (replace_tm e1 (Mg.Var "hl__u") goal)) t)
                | None -> None) in
             (match d1 () with Some t -> Some t | None -> d2 ())
         | _ -> None) hyps with
       | Some t -> Some t
       | None ->
      List.find_map (fun h ->
        let prems, concl = strip_hyp h.prop in
        if prems = [] then None else
        let pvars = List.filter_map (function PVar x -> Some x | _ -> None) prems in
        (* the conclusion itself, or a projection path through nested /\ and <->
           conclusions (each variant: target pattern + projection spec from concl) *)
        let variants =
          let rec proj depth c path =
            (c, `Proj (List.rev path))
            :: (if depth <= 0 then [] else
                match dest_and c with
                | Some (a, b) ->
                    proj (depth - 1) a ((`L, a, b) :: path) @ proj (depth - 1) b ((`R, a, b) :: path)
                | None ->
                    (match dest_iff c with
                     | Some (p, q) ->
                         let i1 = Mg.Imp (p, q) and i2 = Mg.Imp (q, p) in
                         [ (i1, `Proj (List.rev ((`L, i1, i2) :: path)));
                           (i2, `Proj (List.rev ((`R, i1, i2) :: path))) ]
                     | None -> [])) in
          (match proj 4 concl [] with
           | (_, _) :: rest -> (concl, `Id) :: rest
           | [] -> [ (concl, `Id) ])
          @ (match dest_not concl with
              | Some np' -> [ (Mg.Cst "False", `NotApp np') ]
              | None -> [])
          @ (match dest_eq concl with
              | Some (l, r) when not (aeq l r) ->
                  [ (Mg.App (Mg.App (Mg.Cst "eq", r), l), `Sym l) ]
              | _ -> [])
          @ (match dest_iff concl with
              | Some (p, q) ->
                  let i1 = Mg.Imp (p, q) and i2 = Mg.Imp (q, p) in
                  [ (q, `IffFwd (p, i1, i2)); (p, `IffBwd (q, i1, i2)) ]
              | None -> []) in
        List.find_map (fun (cpat, wrap) ->
        match match_tm pvars cpat goal with
        | None -> None
        | Some bnd0 ->
            (* for a negated conclusion, bind from it first: the premise back-chaining
               below can otherwise mis-bind against an unrelated membership hypothesis *)
            let bnd0 = (match wrap with
              | `NotApp np' ->
                  let miss = List.filter (fun v -> not (List.mem_assoc v bnd0)) pvars in
                  if miss = [] then bnd0
                  else (match List.find_map (fun h2 ->
                          match_tm miss (Mg.subst bnd0 np') h2.prop) hyps with
                        | Some ext -> ext @ bnd0
                        | None -> bnd0)
              | _ -> bnd0) in
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
                    | None ->
                        (* a membership premise over a carrier known nonempty: choose an element *)
                        (match pr with
                         | PMem (x, a) when not (List.mem_assoc x bnd) ->
                             let a' = Mg.subst bnd a in
                             if List.exists (fun h2 ->
                                  aeq h2.prop (Mg.App (Mg.App (Mg.Cst "neq", a'), Mg.Cst "Empty"))) hyps
                             then (x, Mg.App (Mg.App (Mg.Cst "choose_in", a'),
                                              Mg.Lam ("hl__w", Mg.Set, Mg.Cst "True"))) :: bnd
                             else bnd
                         | _ -> bnd)))) bnd0 prems in
            let bnd = (match wrap with
              | `NotApp np' when not (List.for_all (fun v -> List.mem_assoc v bnd) pvars) ->
                  let miss = List.filter (fun v -> not (List.mem_assoc v bnd)) pvars in
                  (match List.find_map (fun h2 -> match_tm miss (Mg.subst bnd np') h2.prop) hyps with
                   | Some ext -> ext @ bnd
                   | None -> bnd)
              | _ -> bnd) in
            if not (List.for_all (fun v -> List.mem_assoc v bnd) pvars) then None else
            let inst t = beta (Mg.subst bnd t) in
            let rec args = function
              | [] -> Some []
              | PVar x :: rest ->
                  (match args rest with Some r -> Some (ppp_fn (List.assoc x bnd) :: r) | None -> None)
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
                 (match wrap with
                  | `Id -> Some base
                  | `Sym l -> Some (Printf.sprintf "(%s (fun hl__u hl__v => hl__u = %s) %s)" base (ppp (inst l)) refl_tm)
                  | `Proj path ->
                      Some (List.fold_left (fun acc (side, a, b) ->
                        match side with
                        | `L -> Printf.sprintf "(andEL %s %s %s)" (ppp (inst a)) (ppp (inst b)) acc
                        | `R -> Printf.sprintf "(andER %s %s %s)" (ppp (inst a)) (ppp (inst b)) acc) base path)
                  | `IffFwd (p, i1, i2) ->
                      (spend st 2;
                       match close_term st hyps (inst p) (adepth - 1) with
                       | Some tp -> Some (Printf.sprintf "((andEL %s %s %s) %s)"
                                            (ppp (inst i1)) (ppp (inst i2)) base tp)
                       | None -> None)
                  | `IffBwd (q, i1, i2) ->
                      (spend st 2;
                       match close_term st hyps (inst q) (adepth - 1) with
                       | Some tq -> Some (Printf.sprintf "((andER %s %s %s) %s)"
                                            (ppp (inst i1)) (ppp (inst i2)) base tq)
                       | None -> None)
                  | `NotApp np' ->
                      (spend st 2;
                       match close_term st hyps (inst np') (adepth - 1) with
                       | Some tp -> Some (Printf.sprintf "(%s %s)" base tp)
                       | None -> None))
             | None -> None)) variants) hyps)
      |> function
      | Some t -> Some t
      | None ->
          (* last resort: a contradictory context proves anything *)
          if goal = Mg.Cst "False" || adepth <= 1 then None
          else (spend st 5;
                match close_term st hyps (Mg.Cst "False") (adepth - 1) with
                | Some t -> Some (Printf.sprintf "(FalseE %s (%s))" t (pp goal))
                | None -> None)

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
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.Sep (x, a, pbody)) ->
      let pl = Printf.sprintf "(fun %s:set => %s)" x (pp pbody) in
      let t1 = Printf.sprintf "(SepE1 %s %s %s %s)" (ppp a) pl (ppp z) name in
      let t2 = Printf.sprintf "(SepE2 %s %s %s %s)" (ppp a) pl (ppp z) name in
      push st gl t1 (mg_in z a) (h :: hyps) (fun hyps ->
        push st gl t2 (Mg.subst [ (x, z) ] pbody) hyps cont)
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.App (Mg.App (Mg.Cst "binintersect", a), b)) ->
      let t1 = Printf.sprintf "(binintersectE1 %s %s %s %s)" (ppp a) (ppp b) (ppp z) name in
      let t2 = Printf.sprintf "(binintersectE2 %s %s %s %s)" (ppp a) (ppp b) (ppp z) name in
      push st gl t1 (mg_in z a) (h :: hyps) (fun hyps -> push st gl t2 (mg_in z b) hyps cont)
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.App (Mg.App (Mg.Cst "setminus", a), b)) ->
      let t1 = Printf.sprintf "(setminusE1 %s %s %s %s)" (ppp a) (ppp b) (ppp z) name in
      let t2 = Printf.sprintf "(setminusE2 %s %s %s %s)" (ppp a) (ppp b) (ppp z) name in
      push st gl t1 (mg_in z a) (h :: hyps) (fun hyps ->
        push st gl t2 (Mg.App (Mg.Cst "not", mg_in z b)) hyps cont)
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.App (Mg.App (Mg.Cst "binunion", a), b)) ->
      let t = Printf.sprintf "(binunionE %s %s %s %s)" (ppp a) (ppp b) (ppp z) name in
      push st gl t (Mg.App (Mg.App (Mg.Cst "or", mg_in z a), mg_in z b)) (h :: hyps) cont
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.App (Mg.App (Mg.Cst "SetAdjoin", a), b)) ->
      let t = Printf.sprintf "(SetAdjoinE %s %s %s %s)" (ppp a) (ppp b) (ppp z) name in
      push st gl t (Mg.App (Mg.App (Mg.Cst "or", mg_in z a), mg_in z (Mg.SetEnum [ b ])))
        (h :: hyps) cont
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.App (Mg.Cst "ordsucc", a)) ->
      let t = Printf.sprintf "(ordsuccE %s %s %s)" (ppp a) (ppp z) name in
      push st gl t (Mg.App (Mg.App (Mg.Cst "or", mg_in z a),
                     Mg.App (Mg.App (Mg.Cst "eq", z), a))) (h :: hyps) cont
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.SetEnum [ a ]) ->
      push st gl (Printf.sprintf "(SingE %s %s %s)" (ppp a) (ppp z) name)
        (Mg.App (Mg.App (Mg.Cst "eq", z), a)) (h :: hyps) cont
  | Mg.App (Mg.App (Mg.Cst "In", z), Mg.SetEnum [ a; b ]) ->
      push st gl (Printf.sprintf "(UPairE %s %s %s %s)" (ppp z) (ppp a) (ppp b) name)
        (Mg.App (Mg.App (Mg.Cst "or",
           Mg.App (Mg.App (Mg.Cst "eq", z), a)), Mg.App (Mg.App (Mg.Cst "eq", z), b)))
        (h :: hyps) cont
  | _ -> cont (h :: hyps)

let np_debug = Sys.getenv_opt "NPDEBUG" <> None

(* NPCLASSICAL=0 disables the classical refutation rule (docs/DESIGN.md 23.5 N6a) —
   used for the very large profiles where the extra search cost per failing theorem
   dominates the pass time (multivariate) *)
let np_classical = Sys.getenv_opt "NPCLASSICAL" <> Some "0"

let rec prove_goal st (hyps : hyp list) (goal : Mg.tm) (d : int) : string list =
  spend st 2;
  if np_debug then Printf.eprintf "[np] goal(d=%d,fuel=%d): %s\n%!" d st.fuel (String.concat " ; " (List.map (fun h -> h.hname ^ " : " ^ pp h.prop) (List.filteri (fun i _ -> i < 6) hyps)) ^ " |- " ^ pp goal);
  match goal with
  | Mg.All (x, _, b) ->
      let x' = fresh st x in
      Printf.sprintf "let %s." x' :: prove_goal st hyps (Mg.subst [ (x, Mg.Var x') ] b) d
  | Mg.AllIn (x, a, b) when a = Mg.Cst "omega" &&
      (let b0 = beta (Mg.subst [ (x, Mg.Num 0) ] b) in
       let bs = beta (Mg.subst [ (x, Mg.App (Mg.Cst "ordsucc", Mg.Var x)) ] b) in
       let want = Mg.App (Mg.App (Mg.Cst "and", b0), Mg.AllIn (x, Mg.Cst "omega", Mg.Imp (b, bs))) in
       List.exists (fun h -> aeq h.prop want) hyps) ->
      (* natural-number induction: the hypothesis is exactly base /\ step *)
      let b0 = beta (Mg.subst [ (x, Mg.Num 0) ] b) in
      let bs = beta (Mg.subst [ (x, Mg.App (Mg.Cst "ordsucc", Mg.Var x)) ] b) in
      let want = Mg.App (Mg.App (Mg.Cst "and", b0), Mg.AllIn (x, Mg.Cst "omega", Mg.Imp (b, bs))) in
      let h = List.find (fun h -> aeq h.prop want) hyps in
      let sstep = ppp (Mg.AllIn (x, Mg.Cst "omega", Mg.Imp (b, bs))) in
      let x' = fresh st x in
      let hx = fresh st ("H" ^ x') in
      let k = fresh st "hl__k" and hk = fresh st "Hk" and ih = fresh st "IH" in
      [ Printf.sprintf "let %s. assume %s." x' hx;
        Printf.sprintf "exact (nat_ind (fun %s:set => %s) (andEL %s %s %s) (fun %s %s %s => (andER %s %s %s) %s (nat_p_omega %s %s) %s) %s (omega_nat_p %s %s))."
          x (pp b)
          (ppp b0) sstep h.hname
          k hk ih (ppp b0) sstep h.hname k k hk ih
          x' x' hx ]
  | Mg.AllIn (x, dom, b) when
      (match dom with Mg.App (Mg.Cst "finseq", _) -> true | _ -> false) &&
      (let elt = (match dom with Mg.App (Mg.Cst "finseq", e) -> e | _ -> assert false) in
       List.exists (fun h ->
         match h.prop with
         | Mg.App (Mg.App (Mg.Cst "and", c1), Mg.AllIn (av, elt', Mg.AllIn (yv, dom', Mg.Imp (pp', q)))) ->
             aeq elt' elt && aeq dom' dom
             && aeq c1 (beta (Mg.subst [ (x, Mg.Cst "seq_nil") ] b))
             && aeq pp' (beta (Mg.subst [ (x, Mg.Var yv) ] b))
             && aeq q (beta (Mg.subst [ (x, Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var av), Mg.Var yv)) ] b))
         | _ -> false) hyps) ->
      (* sequence induction (mglib/native/finseq.mg seq_induct): hypothesis is base /\ step *)
      let elt = (match dom with Mg.App (Mg.Cst "finseq", e) -> e | _ -> assert false) in
      let h = List.find (fun h ->
        match h.prop with
        | Mg.App (Mg.App (Mg.Cst "and", c1), Mg.AllIn (av, elt', Mg.AllIn (yv, dom', Mg.Imp (pp', q)))) ->
            aeq elt' elt && aeq dom' dom
            && aeq c1 (beta (Mg.subst [ (x, Mg.Cst "seq_nil") ] b))
            && aeq pp' (beta (Mg.subst [ (x, Mg.Var yv) ] b))
            && aeq q (beta (Mg.subst [ (x, Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var av), Mg.Var yv)) ] b))
        | _ -> false) hyps in
      let step = (match h.prop with Mg.App (Mg.App (Mg.Cst "and", _), st') -> st' | _ -> assert false) in
      let c1 = beta (Mg.subst [ (x, Mg.Cst "seq_nil") ] b) in
      let x' = fresh st x in
      let hx = fresh st ("H" ^ x') in
      [ Printf.sprintf "let %s. assume %s." x' hx;
        Printf.sprintf "exact (seq_induct %s (fun %s:set => %s) (andEL %s %s %s) (andER %s %s %s) %s %s)."
          (ppp elt) x (pp b)
          (ppp c1) (ppp step) h.hname
          (ppp c1) (ppp step) h.hname
          x' hx ]
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
  | Mg.App (Mg.App (Mg.Cst "Subq", sl), tr) ->
      (match close_term st hyps goal 2 with
       | Some tm -> [ Printf.sprintf "exact %s." tm ]
       | None ->
           let x' = fresh st "x" in
           let hx = fresh st ("H" ^ x') in
           Printf.sprintf "let %s. assume %s." x' hx
           :: push st (mg_in (Mg.Var x') tr) hx (mg_in (Mg.Var x') sl) hyps
                (fun hyps -> prove_goal st hyps (mg_in (Mg.Var x') tr) d))
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
      (match dest_not q with
       | Some p' when aeq p' p -> [ Printf.sprintf "exact (xm (%s))." (pp p) ]
       | _ ->
      match close_term st hyps g 2 with
       | Some t -> [ Printf.sprintf "exact %s." t ]
       | None ->
           let fuel0 = st.fuel in
           (try "apply orIL." :: prove_goal st hyps p d
            with Give_up when fuel0 - st.fuel < fuel0 / 2 ->
              (try "apply orIR." :: prove_goal st hyps q d
               with Give_up -> or_elim st hyps g d)))
  | Mg.ExIn (x, a, b) ->
      (match close_term st hyps goal 3 with
       | Some t -> [ Printf.sprintf "exact %s." t ]
       | None ->
      (* witnesses from membership hypotheses of the right carrier *)
      let cands = List.filter_map (fun h ->
        match h.prop with
        | Mg.App (Mg.App (Mg.Cst "In", t), a') when aeq a a' -> Some t
        | _ -> None) hyps in
      let cands = cands
        @ List.filter_map (fun h ->
            match match_tm [ x ] b h.prop with
            | Some [ (x', t) ] when x' = x -> Some t
            | _ -> None) hyps
        @ (if List.exists (fun h ->
              aeq h.prop (Mg.App (Mg.App (Mg.Cst "neq", a), Mg.Cst "Empty"))) hyps
         then [ Mg.App (Mg.App (Mg.Cst "choose_in", a), Mg.Lam ("hl__w", Mg.Set, Mg.Cst "True")) ]
         else []) in
      let rec try_wit = function
        | [] -> or_elim st hyps goal d
        | t :: rest ->
            let fuel0 = st.fuel in
            (try
               Printf.sprintf "witness %s." (pp t)
               :: "apply andI."
               :: (block d [ Printf.sprintf "exact %s."
                               (match close_term st hyps (mg_in t a) 2 with Some s -> s | None -> raise Give_up) ]
                   @ block d (prove_goal st hyps (beta (Mg.subst [ (x, t) ] b)) (d + 1)))
             with Give_up -> if fuel0 - st.fuel > fuel0 / 2 then raise Give_up else try_wit rest)
      in try_wit cands)
  | Mg.Ex (x, m, b) ->
      (match close_term st hyps goal 3 with
       | Some t -> [ Printf.sprintf "exact %s." t ]
       | None ->
      (* unbounded existential: True/False for prop binders, constant lambdas for
         function binders, else membership terms *)
      let wits =
        (match m with
         | Mg.Prop -> [ Mg.Cst "True"; Mg.Cst "False" ]
         | Mg.Arr (Mg.Set, Mg.Set) ->
             List.filter_map (fun h ->
               match h.prop with
               | Mg.App (Mg.App (Mg.Cst "In", t), _) ->
                   Some (Mg.Lam ("hl__w", Mg.Set, t))
               | _ -> None) hyps
         | _ ->
             List.filter_map (fun h ->
               match h.prop with
               | Mg.App (Mg.App (Mg.Cst "In", t), _) -> Some t
               | _ -> None) hyps
             @ [ Mg.Cst "Empty" ]) in
      let rec try_wit = function
        | [] -> or_elim st hyps goal d
        | t :: rest ->
            let fuel0 = st.fuel in
            (try Printf.sprintf "witness %s." (pp t) :: prove_goal st hyps (beta (Mg.subst [ (x, t) ] b)) d
             with Give_up -> if fuel0 - st.fuel > fuel0 / 2 then raise Give_up else try_wit rest)
      in try_wit wits)
  | Mg.App (Mg.App (Mg.Cst c, ux), uy) when unfold_def2 c ux uy <> None ->
      (match close_term st hyps goal 3 with
       | Some t -> [ Printf.sprintf "exact %s." t ]
       | None ->
           (match unfold_def2 c ux uy with
            | Some u ->
                let u = freshen_binders st u in
                Printf.sprintf "prove %s." (pp u) :: prove_goal st hyps u d
            | None -> assert false))
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
           | None ->
               (* set equalities via extensionality *)
               let is_setop = function
                 | Mg.Sep _ | Mg.SetEnum _
                 | Mg.App (Mg.App (Mg.Cst ("binintersect" | "binunion" | "setminus"), _), _) -> true
                 | _ -> false in
               let has_sub v = List.exists (fun h ->
                 match h.prop with
                 | Mg.App (Mg.App (Mg.Cst "Subq", v'), _) -> aeq v' v
                 | _ -> false) hyps in
               (match dest_eq g with
                | Some (l, r) when is_setop l || is_setop r || (has_sub l && has_sub r) ->
                    Printf.sprintf "apply (set_ext %s %s)." (ppp l) (ppp r)
                    :: (block d (prove_goal st hyps (mg_subq l r) (d + 1))
                        @ block d (prove_goal st hyps (mg_subq r l) (d + 1)))
                | _ ->
                    (* rewrite the goal with an equation hypothesis: claim goal[t:=s],
                       then transport back along the equation (N12) *)
                    let eq_rw () =
                      match List.find_map (fun h ->
                        match dest_eq h.prop with
                        | Some (t, s) when (match t with Mg.Var _ -> false | _ -> true)
                                           && not (aeq t s)
                                           && not (aeq (replace_tm t s g) g) ->
                            Some (h, t, s)
                        | _ -> None) hyps with
                      | None -> None
                      | Some (h, t, s) ->
                          let fuel0 = st.fuel in
                          (try
                             spend st 30;
                             let g' = replace_tm t s g in
                             let ln = fresh st "L" in
                             let body = prove_goal st hyps g' (d + 1) in
                             let body = (match body with
                               | [] -> []
                               | [ x ] -> [ "{ " ^ x ^ " }" ]
                               | x :: rest ->
                                   (match List.rev rest with
                                    | last :: mid ->
                                        ("{ " ^ x) :: List.rev ((last ^ " }") :: mid)
                                    | [] -> [ "{ " ^ x ^ " }" ])) in
                             Some (Printf.sprintf "claim %s: %s." ln (pp g')
                                   :: body
                                   @ [ Printf.sprintf
                                         "exact ((eq_sym_i %s %s %s) (fun hl__u hl__v => %s) %s)."
                                         (ppp t) (ppp s) h.hname
                                         (pp (replace_tm t (Mg.Var "hl__u") g)) ln ])
                           with Give_up when fuel0 - st.fuel < fuel0 / 2 -> None) in
                    match eq_rw () with
                    | Some lines -> lines
                    | None ->
                    (* refutation: with goal False, apply a negation hypothesis and
                       prove its body (classical steps then come from xm_split) *)
                    let neg_cands =
                      if g = Mg.Cst "False" && np_classical && d <= 4
                         && not (List.exists (fun h -> dest_or h.prop <> None) hyps) then
                        List.filteri (fun i _ -> i < 3)
                          (List.filter_map (fun h ->
                             match dest_not h.prop with
                             | Some p when not (aeq p (Mg.Cst "False")) -> Some (h, p)
                             | _ -> None) hyps)
                      else [] in
                    let rec try_neg = function
                      | [] -> or_elim st hyps g d
                      | (h, p) :: rest ->
                          let fuel0 = st.fuel in
                          (try Printf.sprintf "apply %s." h.hname :: prove_goal st hyps p (d + 1)
                           with Give_up ->
                             if fuel0 - st.fuel > fuel0 / 2 then raise Give_up else try_neg rest)
                    in try_neg neg_cands))

and if_split st hyps goal d =
  (* first if-subterm of the goal, outside binders *)
  let rec find_if t = match t with
    | Mg.If (c, u, v) -> Some (c, u, v)
    | Mg.App (a, b) | Mg.Imp (a, b) -> (match find_if a with Some r -> Some r | None -> find_if b)
    | Mg.Tuple l | Mg.SetEnum l -> List.fold_left (fun acc x -> match acc with Some _ -> acc | None -> find_if x) None l
    | _ -> None in
  match find_if goal with
  | None -> xm_split st hyps goal d
  | Some (c, u, v) ->
      spend st 100;  (* case splits are expensive: cap them via the fuel budget *)
      let bl lines = (match bullet d with
        | Some _ -> block d lines
        | None -> (match lines with f :: r -> ("- " ^ f) :: List.map (fun l -> "  " ^ l) r | [] -> [])) in
      let branch lemma keep cond h1 =
        let eq_name = Printf.sprintf "(%s %s %s %s %s)" lemma (ppp c) (ppp u) (ppp v) h1 in
        let eq_prop = Mg.App (Mg.App (Mg.Cst "eq", Mg.If (c, u, v)), keep) in
        Printf.sprintf "assume %s." h1
        :: push st goal h1 cond hyps (fun hyps ->
             push st goal eq_name eq_prop hyps (fun hyps -> prove_goal st hyps goal (d + 1))) in
      let h1 = fresh st "H" and h2 = fresh st "H" in
      Printf.sprintf "apply (xm (%s))." (pp c)
      :: (bl (branch "If_i_1" u c h1)
          @ bl (branch "If_i_0" v (Mg.App (Mg.Cst "not", c)) h2))

and xm_split st hyps goal d =
  (* only worthwhile when a negation hypothesis can feed the refutation; the guard
     also keeps or-heavy searches from draining their fuel here *)
  if goal = Mg.Cst "False"
     || List.exists (fun h ->
          match dest_not h.prop with Some p -> aeq p goal | None -> false) hyps
  then raise Give_up
  else if not (List.exists (fun h -> dest_not h.prop <> None) hyps) then
    atom_split st hyps goal d
  else begin
    spend st 100;  (* classical splits are expensive: cap them via the fuel budget *)
    let bl lines = (match bullet d with
      | Some _ -> block d lines
      | None -> (match lines with f :: r -> ("- " ^ f) :: List.map (fun l -> "  " ^ l) r | [] -> [])) in
    let h1 = fresh st "H" and h2 = fresh st "H" in
    let lname = fresh st "L" in
    let body = push st (Mg.Cst "False") h2 (Mg.App (Mg.Cst "not", goal)) hyps
                 (fun hyps -> prove_goal st hyps (Mg.Cst "False") (d + 1)) in
    let body = (match body with
      | [] -> []
      | [ x ] -> [ "{ " ^ x ^ " }" ]
      | x :: rest ->
          (match List.rev rest with
           | last :: mid -> ("{ " ^ x) :: List.rev ((last ^ " }") :: mid)
           | [] -> [ "{ " ^ x ^ " }" ])) in
    Printf.sprintf "apply (xm (%s))." (pp goal)
    :: (bl [ Printf.sprintf "assume %s. exact %s." h1 h1 ]
        @ bl (Printf.sprintf "assume %s." h2
              :: Printf.sprintf "claim %s: False." lname
              :: body
              @ [ Printf.sprintf "exact (FalseE %s (%s))." lname (pp goal) ]))
  end

and atom_split st hyps goal d =
  (* no negation hypothesis to refute with: classical split on the first propositional
     atom (a prop variable) in the goal's boolean skeleton (docs/DESIGN.md 23.5 N6b) *)
  if not np_classical || d > 2 then raise Give_up else
  let rec atom t =
    match dest_and t with
    | Some (a, b) -> (match atom a with Some v -> Some v | None -> atom b)
    | None ->
    match dest_or t with
    | Some (a, b) -> (match atom a with Some v -> Some v | None -> atom b)
    | None ->
    match dest_iff t with
    | Some (a, b) -> (match atom a with Some v -> Some v | None -> atom b)
    | None ->
    match dest_not t with
    | Some a -> atom a
    | None ->
    match t with
    | Mg.Imp (a, b) -> (match atom a with Some v -> Some v | None -> atom b)
    | Mg.Var _ -> Some t
    | _ -> None in
  (match atom goal with
   | None -> raise Give_up
   | Some v ->
       if List.exists (fun h -> aeq h.prop v
            || (match dest_not h.prop with Some p -> aeq p v | None -> false)) hyps
       then raise Give_up else begin
         spend st 100;
         let bl lines = (match bullet d with
           | Some _ -> block d lines
           | None -> (match lines with f :: r -> ("- " ^ f) :: List.map (fun l -> "  " ^ l) r | [] -> [])) in
         let h1 = fresh st "H" and h2 = fresh st "H" in
         Printf.sprintf "apply (xm (%s))." (pp v)
         :: (bl (Printf.sprintf "assume %s." h1
                 :: push st goal h1 v hyps (fun hyps -> prove_goal st hyps goal (d + 1)))
             @ bl (Printf.sprintf "assume %s." h2
                   :: push st goal h2 (Mg.App (Mg.Cst "not", v)) hyps
                        (fun hyps -> prove_goal st hyps goal (d + 1))))
       end)

and or_elim st hyps goal d =
  match List.find_opt (fun h -> dest_or h.prop <> None) hyps with
  | Some h ->
      let p, q = (match dest_or h.prop with Some pq -> pq | None -> assert false) in
      let hyps' = List.filter (fun h2 -> h2.hname <> h.hname) hyps in
      let h1 = fresh st "H" and h2 = fresh st "H" in
      Printf.sprintf "apply %s." h.hname
      :: (block d (Printf.sprintf "assume %s." h1 :: push st goal h1 p hyps' (fun hy -> prove_goal st hy goal (d + 1)))
          @ block d (Printf.sprintf "assume %s." h2 :: push st goal h2 q hyps' (fun hy -> prove_goal st hy goal (d + 1))))
  | None -> if_split st hyps goal d

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
             (Mg.Var "hl__A")))));
    ("If_i_1",
     Mg.All ("hl__p", Mg.Prop, Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set,
       Mg.Imp (Mg.Var "hl__p",
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.If (Mg.Var "hl__p", Mg.Var "hl__x", Mg.Var "hl__y")), Mg.Var "hl__x"))))));
    ("If_i_0",
     Mg.All ("hl__p", Mg.Prop, Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "not", Mg.Var "hl__p"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.If (Mg.Var "hl__p", Mg.Var "hl__x", Mg.Var "hl__y")), Mg.Var "hl__y"))))));
    ("int_add_SNo",
     Mg.AllIn ("hl__x", Mg.Cst "int", Mg.AllIn ("hl__y", Mg.Cst "int",
       mg_in (Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")) (Mg.Cst "int"))));
    ("int_mul_SNo",
     Mg.AllIn ("hl__x", Mg.Cst "int", Mg.AllIn ("hl__y", Mg.Cst "int",
       mg_in (Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")) (Mg.Cst "int"))));
    ("int_minus_SNo",
     Mg.AllIn ("hl__x", Mg.Cst "int",
       mg_in (Mg.App (Mg.Cst "minus_SNo", Mg.Var "hl__x")) (Mg.Cst "int")));
    ("In_0_1", mg_in (Mg.Num 0) (Mg.Num 1));
    ("omega_nonneg",
     Mg.AllIn ("hl__m", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Num 0), Mg.Var "hl__m")));
    ("omega_ordsucc",
     Mg.AllIn ("hl__n", Mg.Cst "omega",
       mg_in (Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n")) (Mg.Cst "omega")));
    ("SNoLe_ref",
     Mg.All ("hl__x", Mg.Set,
       Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__x"), Mg.Var "hl__x")));
    ("SNoLt_irref",
     Mg.All ("hl__x", Mg.Set,
       Mg.App (Mg.Cst "not", Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__x"))));
    ("mul_SNo_zeroL",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq", Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Num 0), Mg.Var "hl__x")), Mg.Num 0))));
    ("mul_SNo_assoc",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"),
                 Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__y"), Mg.Var "hl__z"))),
               Mg.App (Mg.App (Mg.Cst "mul_SNo",
                 Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")), Mg.Var "hl__z")))))))));
    ("add_SNo_assoc",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"),
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__y"), Mg.Var "hl__z"))),
               Mg.App (Mg.App (Mg.Cst "add_SNo",
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")), Mg.Var "hl__z")))))))));
    ("SNoLe_antisym",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__x"), Mg.Var "hl__y"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__y"), Mg.Var "hl__x"),
               Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__x"), Mg.Var "hl__y"))))))));
    ("add_SNo_1_ordsucc",
     Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__n"), Mg.Num 1)),
         Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))));
    ("nat_p_ordinal",
     Mg.All ("hl__n", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "nat_p", Mg.Var "hl__n"),
         Mg.App (Mg.Cst "ordinal", Mg.Var "hl__n"))));
    ("add_SNo_ordinal_SL",
     Mg.All ("hl__a", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "ordinal", Mg.Var "hl__a"),
         Mg.All ("hl__b", Mg.Set,
           Mg.Imp (Mg.App (Mg.Cst "ordinal", Mg.Var "hl__b"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__a")), Mg.Var "hl__b")),
               Mg.App (Mg.Cst "ordsucc", Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__a"), Mg.Var "hl__b"))))))));
    ("add_SNo_ordinal_SR",
     Mg.All ("hl__a", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "ordinal", Mg.Var "hl__a"),
         Mg.All ("hl__b", Mg.Set,
           Mg.Imp (Mg.App (Mg.Cst "ordinal", Mg.Var "hl__b"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__a"), Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__b"))),
               Mg.App (Mg.Cst "ordsucc", Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__a"), Mg.Var "hl__b"))))))));
    ("mul_nat_SR",
     Mg.All ("hl__n", Mg.Set, Mg.All ("hl__m", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "nat_p", Mg.Var "hl__m"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.App (Mg.Cst "mul_nat", Mg.Var "hl__n"), Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__m"))),
           Mg.App (Mg.App (Mg.Cst "add_nat", Mg.Var "hl__n"),
             Mg.App (Mg.App (Mg.Cst "mul_nat", Mg.Var "hl__n"), Mg.Var "hl__m")))))));
    ("mul_nat_mul_SNo",
     Mg.AllIn ("hl__n", Mg.Cst "omega", Mg.AllIn ("hl__m", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "mul_nat", Mg.Var "hl__n"), Mg.Var "hl__m")),
         Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__n"), Mg.Var "hl__m")))));
    ("add_nat_add_SNo",
     Mg.AllIn ("hl__n", Mg.Cst "omega", Mg.AllIn ("hl__m", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "add_nat", Mg.Var "hl__n"), Mg.Var "hl__m")),
         Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__n"), Mg.Var "hl__m")))));
    ("mul_nat_p",
     Mg.All ("hl__n", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "nat_p", Mg.Var "hl__n"),
         Mg.All ("hl__m", Mg.Set,
           Mg.Imp (Mg.App (Mg.Cst "nat_p", Mg.Var "hl__m"),
             Mg.App (Mg.Cst "nat_p", Mg.App (Mg.App (Mg.Cst "mul_nat", Mg.Var "hl__n"), Mg.Var "hl__m")))))));
    ("mul_SNo_zeroR",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq", Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Num 0)), Mg.Num 0))));
    ("mul_SNo_oneR",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq", Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Num 1)), Mg.Var "hl__x"))));
    ("mul_SNo_distrL",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"),
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__y"), Mg.Var "hl__z"))),
               Mg.App (Mg.App (Mg.Cst "add_SNo",
                 Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
                 Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Var "hl__z"))))))))));
    ("mul_SNo_distrR",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "mul_SNo",
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")), Mg.Var "hl__z")),
               Mg.App (Mg.App (Mg.Cst "add_SNo",
                 Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Var "hl__z")),
                 Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__y"), Mg.Var "hl__z"))))))))));
    ("mul_SNo_SR_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__m"), Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
         Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__m"),
           Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__m"), Mg.Var "hl__n"))))));
    ("mul_SNo_SL_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__m")), Mg.Var "hl__n")),
         Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__n"),
           Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__m"), Mg.Var "hl__n"))))));
    ("SNoLt_ordsucc_iff_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__m"), Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
         Mg.App (Mg.App (Mg.Cst "or",
           Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__m"), Mg.Var "hl__n")),
           Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__m"), Mg.Var "hl__n"))))));
    ("SNoLe_ordsucc_iff_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__m"), Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
         Mg.App (Mg.App (Mg.Cst "or",
           Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__m"), Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
           Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__m"), Mg.Var "hl__n"))))));
    ("SNoLt_tra",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__y"),
               Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__y"), Mg.Var "hl__z"),
                 Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__z"))))))))));
    ("SNoLe_tra",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__x"), Mg.Var "hl__y"),
               Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__y"), Mg.Var "hl__z"),
                 Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__x"), Mg.Var "hl__z"))))))))));
    ("SNoLtLe_tra",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__y"),
               Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__y"), Mg.Var "hl__z"),
                 Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__z"))))))))));
    ("SNoLeLt_tra",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__x"), Mg.Var "hl__y"),
               Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__y"), Mg.Var "hl__z"),
                 Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__z"))))))))));
    ("not_SNoLt_0_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega",
       Mg.App (Mg.Cst "not",
         Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__m"), Mg.Num 0))));
    ("SNoLe_0_iff_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__m"), Mg.Num 0)),
         Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__m"), Mg.Num 0))));
    ("SNoLt_ordsucc_SNoLe_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__m"),
           Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
         Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__m"), Mg.Var "hl__n")))));
    ("SNoLe_ordsucc_SNoLt_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "SNoLe",
           Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__m")), Mg.Var "hl__n")),
         Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__m"), Mg.Var "hl__n")))));
    ("num_recursion",
     Mg.All ("hl__A", Mg.Set, Mg.AllIn ("hl__e", Mg.Var "hl__A",
       Mg.All ("hl__f", Mg.Arr (Mg.Set, Mg.Arr (Mg.Set, Mg.Set)),
         Mg.Imp (
           Mg.AllIn ("hl__x", Mg.Var "hl__A", Mg.AllIn ("hl__y", Mg.Cst "omega",
             mg_in (Mg.App (Mg.App (Mg.Var "hl__f", Mg.Var "hl__x"), Mg.Var "hl__y"))
               (Mg.Var "hl__A"))),
           Mg.Ex ("hl__fn", Mg.Arr (Mg.Set, Mg.Set),
             Mg.App (Mg.App (Mg.Cst "and",
               Mg.AllIn ("hl__x", Mg.Cst "omega",
                 mg_in (Mg.App (Mg.Var "hl__fn", Mg.Var "hl__x")) (Mg.Var "hl__A"))),
               Mg.App (Mg.App (Mg.Cst "and",
                 Mg.App (Mg.App (Mg.Cst "eq",
                   Mg.App (Mg.Var "hl__fn", Mg.Num 0)), Mg.Var "hl__e")),
                 Mg.AllIn ("hl__n", Mg.Cst "omega",
                   Mg.App (Mg.App (Mg.Cst "eq",
                     Mg.App (Mg.Var "hl__fn", Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
                     Mg.App (Mg.App (Mg.Var "hl__f",
                       Mg.App (Mg.Var "hl__fn", Mg.Var "hl__n")), Mg.Var "hl__n")))))))))));
    ("skolem_thm",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__B", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "neq", Mg.Var "hl__A"), Mg.Cst "Empty"),
         Mg.Imp (Mg.App (Mg.App (Mg.Cst "neq", Mg.Var "hl__B"), Mg.Cst "Empty"),
           Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Arr (Mg.Set, Mg.Prop)),
             Mg.App (Mg.App (Mg.Cst "iff",
               Mg.AllIn ("hl__x", Mg.Var "hl__A",
                 Mg.ExIn ("hl__y", Mg.Var "hl__B",
                   Mg.App (Mg.App (Mg.Var "hl__P", Mg.Var "hl__x"), Mg.Var "hl__y")))),
               Mg.Ex ("hl__g", Mg.Arr (Mg.Set, Mg.Set),
                 Mg.App (Mg.App (Mg.Cst "and",
                   Mg.AllIn ("hl__x", Mg.Var "hl__A",
                     mg_in (Mg.App (Mg.Var "hl__g", Mg.Var "hl__x")) (Mg.Var "hl__B"))),
                   Mg.AllIn ("hl__x", Mg.Var "hl__A",
                     Mg.App (Mg.App (Mg.Var "hl__P", Mg.Var "hl__x"),
                       Mg.App (Mg.Var "hl__g", Mg.Var "hl__x"))))))))))));
    ("list_recursion",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__Z", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "neq", Mg.Var "hl__A"), Mg.Cst "Empty"),
         Mg.AllIn ("hl__e", Mg.Var "hl__Z",
           Mg.All ("hl__c", Mg.Arr (Mg.Set, Mg.Arr (Mg.Set, Mg.Arr (Mg.Set, Mg.Set))),
             Mg.Imp (
               Mg.AllIn ("hl__x", Mg.Var "hl__A",
                 Mg.AllIn ("hl__y", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
                   Mg.AllIn ("hl__z", Mg.Var "hl__Z",
                     mg_in (Mg.App (Mg.App (Mg.App (Mg.Var "hl__c", Mg.Var "hl__x"),
                                      Mg.Var "hl__y"), Mg.Var "hl__z"))
                       (Mg.Var "hl__Z")))),
               Mg.Ex ("hl__fn", Mg.Arr (Mg.Set, Mg.Set),
                 Mg.App (Mg.App (Mg.Cst "and",
                   Mg.AllIn ("hl__x", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
                     mg_in (Mg.App (Mg.Var "hl__fn", Mg.Var "hl__x")) (Mg.Var "hl__Z"))),
                   Mg.App (Mg.App (Mg.Cst "and",
                     Mg.App (Mg.App (Mg.Cst "eq",
                       Mg.App (Mg.Var "hl__fn", Mg.Cst "seq_nil")), Mg.Var "hl__e")),
                     Mg.AllIn ("hl__a", Mg.Var "hl__A",
                       Mg.AllIn ("hl__b", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
                         Mg.App (Mg.App (Mg.Cst "eq",
                           Mg.App (Mg.Var "hl__fn",
                             Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__b"))),
                           Mg.App (Mg.App (Mg.App (Mg.Var "hl__c", Mg.Var "hl__a"), Mg.Var "hl__b"),
                             Mg.App (Mg.Var "hl__fn", Mg.Var "hl__b")))))))))))))));
    ("seq_len_nil",
     Mg.App (Mg.App (Mg.Cst "eq",
       Mg.App (Mg.Cst "seq_len", Mg.Cst "seq_nil")), Mg.Num 0));
    ("seq_len_cons",
     Mg.All ("hl__A", Mg.Set, Mg.AllIn ("hl__a", Mg.Var "hl__A",
       Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.Cst "seq_len",
             Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__l"))),
           Mg.App (Mg.Cst "ordsucc", Mg.App (Mg.Cst "seq_len", Mg.Var "hl__l")))))));
    ("seq_map_nil",
     Mg.All ("hl__f", Mg.Arr (Mg.Set, Mg.Set),
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "seq_map", Mg.Var "hl__f"), Mg.Cst "seq_nil")),
         Mg.Cst "seq_nil")));
    ("seq_map_cons",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__f", Mg.Arr (Mg.Set, Mg.Set),
       Mg.AllIn ("hl__a", Mg.Var "hl__A",
         Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
           Mg.App (Mg.App (Mg.Cst "eq",
             Mg.App (Mg.App (Mg.Cst "seq_map", Mg.Var "hl__f"),
               Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__l"))),
             Mg.App (Mg.App (Mg.Cst "seq_cons",
               Mg.App (Mg.Var "hl__f", Mg.Var "hl__a")),
               Mg.App (Mg.App (Mg.Cst "seq_map", Mg.Var "hl__f"), Mg.Var "hl__l"))))))));
    ("seq_append_nil",
     Mg.All ("hl__A", Mg.Set,
       Mg.AllIn ("hl__m", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.App (Mg.Cst "seq_append", Mg.Cst "seq_nil"), Mg.Var "hl__m")),
           Mg.Var "hl__m"))));
    ("seq_append_cons",
     Mg.All ("hl__A", Mg.Set, Mg.AllIn ("hl__a", Mg.Var "hl__A",
       Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
         Mg.AllIn ("hl__m", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
           Mg.App (Mg.App (Mg.Cst "eq",
             Mg.App (Mg.App (Mg.Cst "seq_append",
               Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__l")),
               Mg.Var "hl__m")),
             Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"),
               Mg.App (Mg.App (Mg.Cst "seq_append", Mg.Var "hl__l"), Mg.Var "hl__m"))))))));
    ("seq_nil_finseq",
     Mg.All ("hl__A", Mg.Set,
       mg_in (Mg.Cst "seq_nil") (Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"))));
    ("seq_cons_finseq",
     Mg.All ("hl__A", Mg.Set, Mg.AllIn ("hl__a", Mg.Var "hl__A",
       Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
         mg_in (Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__l"))
           (Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"))))));
    ("seq_nth_cons_0",
     Mg.All ("hl__A", Mg.Set, Mg.AllIn ("hl__a", Mg.Var "hl__A",
       Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.App (Mg.Cst "seq_nth",
             Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__l")),
             Mg.Num 0)),
           Mg.Var "hl__a")))));
    ("seq_nth_cons_S",
     Mg.All ("hl__A", Mg.Set, Mg.AllIn ("hl__a", Mg.Var "hl__A",
       Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
         Mg.AllIn ("hl__i", Mg.App (Mg.Cst "seq_len", Mg.Var "hl__l"),
           Mg.App (Mg.App (Mg.Cst "eq",
             Mg.App (Mg.App (Mg.Cst "seq_nth",
               Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__l")),
               Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__i"))),
             Mg.App (Mg.App (Mg.Cst "seq_nth", Mg.Var "hl__l"), Mg.Var "hl__i")))))));
    ("seq_append_finseq",
     Mg.All ("hl__A", Mg.Set,
       Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
         Mg.AllIn ("hl__m", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
           mg_in (Mg.App (Mg.App (Mg.Cst "seq_append", Mg.Var "hl__l"), Mg.Var "hl__m"))
             (Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"))))));
    ("seq_map_finseq",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__B", Mg.Set,
       Mg.All ("hl__f", Mg.Arr (Mg.Set, Mg.Set),
         Mg.Imp (
           Mg.AllIn ("hl__x", Mg.Var "hl__A",
             mg_in (Mg.App (Mg.Var "hl__f", Mg.Var "hl__x")) (Mg.Var "hl__B")),
           Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
             mg_in (Mg.App (Mg.App (Mg.Cst "seq_map", Mg.Var "hl__f"), Mg.Var "hl__l"))
               (Mg.App (Mg.Cst "finseq", Mg.Var "hl__B"))))))));
    ("seq_all_nil",
     Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "seq_all", Mg.Var "hl__P"), Mg.Cst "seq_nil")),
         Mg.Cst "True")));
    ("seq_all_cons",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
       Mg.AllIn ("hl__a", Mg.Var "hl__A",
         Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
           Mg.App (Mg.App (Mg.Cst "iff",
             Mg.App (Mg.App (Mg.Cst "seq_all", Mg.Var "hl__P"),
               Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__l"))),
             Mg.App (Mg.App (Mg.Cst "and",
               Mg.App (Mg.Var "hl__P", Mg.Var "hl__a")),
               Mg.App (Mg.App (Mg.Cst "seq_all", Mg.Var "hl__P"), Mg.Var "hl__l"))))))));
    ("ordsuccE",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set,
       Mg.Imp (mg_in (Mg.Var "hl__y") (Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__x")),
         Mg.App (Mg.App (Mg.Cst "or",
           mg_in (Mg.Var "hl__y") (Mg.Var "hl__x")),
           Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__y"), Mg.Var "hl__x"))))));
    ("real_SNo",
     Mg.AllIn ("hl__x", Mg.Cst "R",
       Mg.App (Mg.Cst "SNo", Mg.Var "hl__x")));
    ("SNoLtLe",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__y"),
         Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__x"), Mg.Var "hl__y")))));
    ("SNoLtLe_or",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.App (Mg.App (Mg.Cst "or",
             Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__y")),
             Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__y"), Mg.Var "hl__x")))))));
    ("in_1_eq_0",
     Mg.AllIn ("hl__v", Mg.Num 1,
       Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__v"), Mg.Num 0)));
    ("real_lt_iff",
     Mg.AllIn ("hl__y", Mg.Cst "R", Mg.AllIn ("hl__x", Mg.Cst "R",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__y")),
         Mg.App (Mg.Cst "not",
           Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__y"), Mg.Var "hl__x"))))));
    ("SetAdjoinE",
     Mg.All ("hl__X", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (mg_in (Mg.Var "hl__z")
                 (Mg.App (Mg.App (Mg.Cst "SetAdjoin", Mg.Var "hl__X"), Mg.Var "hl__y")),
         Mg.App (Mg.App (Mg.Cst "or",
           mg_in (Mg.Var "hl__z") (Mg.Var "hl__X")),
           mg_in (Mg.Var "hl__z") (Mg.SetEnum [ Mg.Var "hl__y" ])))))));
    ("SetAdjoinI1",
     Mg.All ("hl__X", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (mg_in (Mg.Var "hl__z") (Mg.Var "hl__X"),
         mg_in (Mg.Var "hl__z")
           (Mg.App (Mg.App (Mg.Cst "SetAdjoin", Mg.Var "hl__X"), Mg.Var "hl__y")))))));
    ("SetAdjoinI2",
     Mg.All ("hl__X", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (mg_in (Mg.Var "hl__z") (Mg.SetEnum [ Mg.Var "hl__y" ]),
         mg_in (Mg.Var "hl__z")
           (Mg.App (Mg.App (Mg.Cst "SetAdjoin", Mg.Var "hl__X"), Mg.Var "hl__y")))))));
    ("SingI",
     Mg.All ("hl__x", Mg.Set,
       mg_in (Mg.Var "hl__x") (Mg.SetEnum [ Mg.Var "hl__x" ])));
    ("bit0_eq_omega",
     Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Num 2), Mg.Var "hl__n")),
         Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__n"), Mg.Var "hl__n"))));
    ("bit1_eq_omega",
     Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "add_SNo",
           Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Num 2), Mg.Var "hl__n")),
           Mg.Num 1)),
         Mg.App (Mg.Cst "ordsucc",
           Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__n"), Mg.Var "hl__n")))));
    ("minus_SNo_invol",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.Cst "minus_SNo", Mg.App (Mg.Cst "minus_SNo", Mg.Var "hl__x"))),
           Mg.Var "hl__x"))));
    ("add_SNo_minus_SNo_linv",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.App (Mg.Cst "add_SNo",
             Mg.App (Mg.Cst "minus_SNo", Mg.Var "hl__x")), Mg.Var "hl__x")),
           Mg.Num 0))));
    ("minus_SNo_0",
     Mg.App (Mg.App (Mg.Cst "eq",
       Mg.App (Mg.Cst "minus_SNo", Mg.Num 0)), Mg.Num 0));
    ("exp_SNo_nat_0",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.App (Mg.Cst "exp_SNo_nat", Mg.Var "hl__x"), Mg.Num 0)),
           Mg.Num 1))));
    ("exp_SNo_nat_S",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.All ("hl__n", Mg.Set,
           Mg.Imp (Mg.App (Mg.Cst "nat_p", Mg.Var "hl__n"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "exp_SNo_nat", Mg.Var "hl__x"),
                 Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
               Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"),
                 Mg.App (Mg.App (Mg.Cst "exp_SNo_nat", Mg.Var "hl__x"),
                   Mg.Var "hl__n"))))))));
    ("seq_ex_nil",
     Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "seq_ex", Mg.Var "hl__P"), Mg.Cst "seq_nil")),
         Mg.Cst "False")));
    ("seq_ex_cons",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
       Mg.AllIn ("hl__a", Mg.Var "hl__A",
         Mg.AllIn ("hl__l", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
           Mg.App (Mg.App (Mg.Cst "iff",
             Mg.App (Mg.App (Mg.Cst "seq_ex", Mg.Var "hl__P"),
               Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__a"), Mg.Var "hl__l"))),
             Mg.App (Mg.App (Mg.Cst "or",
               Mg.App (Mg.Var "hl__P", Mg.Var "hl__a")),
               Mg.App (Mg.App (Mg.Cst "seq_ex", Mg.Var "hl__P"), Mg.Var "hl__l"))))))));
    ("pair_eta_setprod",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__B", Mg.Set,
       Mg.AllIn ("hl__x",
         Mg.App (Mg.App (Mg.Cst "setprod", Mg.Var "hl__A"), Mg.Var "hl__B"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.Tuple [ Mg.App (Mg.Var "hl__x", Mg.Num 0);
                      Mg.App (Mg.Var "hl__x", Mg.Num 1) ]),
           Mg.Var "hl__x")))));
    ("left_or_exists_thm",
     Mg.All ("hl__A", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "neq", Mg.Var "hl__A"), Mg.Cst "Empty"),
         Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop), Mg.All ("hl__Q", Mg.Prop,
           Mg.App (Mg.App (Mg.Cst "iff",
             Mg.App (Mg.App (Mg.Cst "or",
               Mg.ExIn ("hl__x", Mg.Var "hl__A",
                 Mg.App (Mg.Var "hl__P", Mg.Var "hl__x"))),
               Mg.Var "hl__Q")),
             Mg.ExIn ("hl__x", Mg.Var "hl__A",
               Mg.App (Mg.App (Mg.Cst "or",
                 Mg.App (Mg.Var "hl__P", Mg.Var "hl__x")), Mg.Var "hl__Q"))))))));
    ("right_or_exists_thm",
     Mg.All ("hl__A", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "neq", Mg.Var "hl__A"), Mg.Cst "Empty"),
         Mg.All ("hl__P", Mg.Prop, Mg.All ("hl__Q", Mg.Arr (Mg.Set, Mg.Prop),
           Mg.App (Mg.App (Mg.Cst "iff",
             Mg.App (Mg.App (Mg.Cst "or", Mg.Var "hl__P"),
               Mg.ExIn ("hl__x", Mg.Var "hl__A",
                 Mg.App (Mg.Var "hl__Q", Mg.Var "hl__x")))),
             Mg.ExIn ("hl__x", Mg.Var "hl__A",
               Mg.App (Mg.App (Mg.Cst "or", Mg.Var "hl__P"),
                 Mg.App (Mg.Var "hl__Q", Mg.Var "hl__x")))))))));
    ("add_SNo_cancel_L",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__z")),
               Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__y"), Mg.Var "hl__z")))))))));
    ("add_SNo_Le1",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__x"), Mg.Var "hl__z"),
               Mg.App (Mg.App (Mg.Cst "SNoLe",
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__z"), Mg.Var "hl__y"))))))))));
    ("add_SNo_Le2",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__y"), Mg.Var "hl__z"),
               Mg.App (Mg.App (Mg.Cst "SNoLe",
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__z"))))))))));
    ("add_SNo_Le1_cancel",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe",
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__z"), Mg.Var "hl__y")),
               Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__x"), Mg.Var "hl__z")))))))));
    ("add_SNo_Lt1",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__z"),
               Mg.App (Mg.App (Mg.Cst "SNoLt",
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__z"), Mg.Var "hl__y"))))))))));
    ("add_SNo_Lt1_cancel",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLt",
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__z"), Mg.Var "hl__y")),
               Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__x"), Mg.Var "hl__z")))))))));
    ("not_SNoLe_iff_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.Cst "not",
           Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__m"), Mg.Var "hl__n"))),
         Mg.App (Mg.App (Mg.Cst "SNoLt", Mg.Var "hl__n"), Mg.Var "hl__m")))));
    ("cond_elim_thm",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
       Mg.All ("hl__c", Mg.Prop,
         Mg.AllIn ("hl__x", Mg.Var "hl__A", Mg.AllIn ("hl__y", Mg.Var "hl__A",
           Mg.App (Mg.App (Mg.Cst "iff",
             Mg.App (Mg.Var "hl__P",
               Mg.If (Mg.Var "hl__c", Mg.Var "hl__x", Mg.Var "hl__y"))),
             Mg.App (Mg.App (Mg.Cst "and",
               Mg.Imp (Mg.Var "hl__c",
                 Mg.App (Mg.Var "hl__P", Mg.Var "hl__x"))),
               Mg.Imp (Mg.App (Mg.Cst "not", Mg.Var "hl__c"),
                 Mg.App (Mg.Var "hl__P", Mg.Var "hl__y"))))))))));
    ("SNoLe_add_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__m"),
         Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__m"), Mg.Var "hl__n")))));
    ("add_SNo_com_3_0_1",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"),
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__y"), Mg.Var "hl__z"))),
               Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__y"),
                 Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__z"))))))))));
    ("mul_SNo_com_3_0_1",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set, Mg.All ("hl__z", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__z"),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"),
                 Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__y"), Mg.Var "hl__z"))),
               Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__y"),
                 Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Var "hl__z"))))))))));
    ("not_cons_nil",
     Mg.All ("hl__A", Mg.Set, Mg.AllIn ("hl__h", Mg.Var "hl__A",
       Mg.AllIn ("hl__t", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
         Mg.App (Mg.Cst "not",
           Mg.App (Mg.App (Mg.Cst "eq",
             Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__h"), Mg.Var "hl__t")),
             Mg.Cst "seq_nil"))))));
    ("forall_pair_thm",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__B", Mg.Set,
       Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
         Mg.App (Mg.App (Mg.Cst "iff",
           Mg.AllIn ("hl__p",
             Mg.App (Mg.App (Mg.Cst "setprod", Mg.Var "hl__A"), Mg.Var "hl__B"),
             Mg.App (Mg.Var "hl__P", Mg.Var "hl__p"))),
           Mg.AllIn ("hl__x", Mg.Var "hl__A",
             Mg.AllIn ("hl__y", Mg.Var "hl__B",
               Mg.App (Mg.Var "hl__P",
                 Mg.Tuple [ Mg.Var "hl__x"; Mg.Var "hl__y" ]))))))));
    ("exists_pair_thm",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__B", Mg.Set,
       Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
         Mg.App (Mg.App (Mg.Cst "iff",
           Mg.ExIn ("hl__p",
             Mg.App (Mg.App (Mg.Cst "setprod", Mg.Var "hl__A"), Mg.Var "hl__B"),
             Mg.App (Mg.Var "hl__P", Mg.Var "hl__p"))),
           Mg.ExIn ("hl__x", Mg.Var "hl__A",
             Mg.ExIn ("hl__y", Mg.Var "hl__B",
               Mg.App (Mg.Var "hl__P",
                 Mg.Tuple [ Mg.Var "hl__x"; Mg.Var "hl__y" ]))))))));
    ("right_imp_exists_thm",
     Mg.All ("hl__A", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "neq", Mg.Var "hl__A"), Mg.Cst "Empty"),
         Mg.All ("hl__P", Mg.Prop, Mg.All ("hl__Q", Mg.Arr (Mg.Set, Mg.Prop),
           Mg.App (Mg.App (Mg.Cst "iff",
             Mg.Imp (Mg.Var "hl__P",
               Mg.ExIn ("hl__x", Mg.Var "hl__A",
                 Mg.App (Mg.Var "hl__Q", Mg.Var "hl__x")))),
             Mg.ExIn ("hl__x", Mg.Var "hl__A",
               Mg.Imp (Mg.Var "hl__P",
                 Mg.App (Mg.Var "hl__Q", Mg.Var "hl__x")))))))));
    ("sub_0_thm",
     Mg.AllIn ("hl__m", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "and",
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.App (Mg.Cst "minus_nat", Mg.Num 0), Mg.Var "hl__m")),
           Mg.Num 0)),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.App (Mg.Cst "minus_nat", Mg.Var "hl__m"), Mg.Num 0)),
           Mg.Var "hl__m"))));
    ("in_cross_thm",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__B", Mg.Set,
       Mg.AllIn ("hl__x", Mg.Var "hl__A", Mg.AllIn ("hl__y", Mg.Var "hl__B",
         Mg.AllSub ("hl__s", Mg.Var "hl__A", Mg.AllSub ("hl__t", Mg.Var "hl__B",
           Mg.App (Mg.App (Mg.Cst "iff",
             mg_in (Mg.Tuple [ Mg.Var "hl__x"; Mg.Var "hl__y" ])
               (Mg.App (Mg.App (Mg.Cst "setprod", Mg.Var "hl__s"), Mg.Var "hl__t"))),
             Mg.App (Mg.App (Mg.Cst "and",
               mg_in (Mg.Var "hl__x") (Mg.Var "hl__s")),
               mg_in (Mg.Var "hl__y") (Mg.Var "hl__t"))))))))));
    ("sub_suc_thm",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "eq",
         Mg.App (Mg.App (Mg.Cst "minus_nat",
           Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__m")),
           Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
         Mg.App (Mg.App (Mg.Cst "minus_nat", Mg.Var "hl__m"), Mg.Var "hl__n")))));
    ("filter_thm",
     Mg.All ("hl__A", Mg.Set, Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
       Mg.AllIn ("hl__h", Mg.Var "hl__A",
         Mg.AllIn ("hl__t", Mg.App (Mg.Cst "finseq", Mg.Var "hl__A"),
           Mg.App (Mg.App (Mg.Cst "and",
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "seq_filter", Mg.Var "hl__P"), Mg.Cst "seq_nil")),
               Mg.Cst "seq_nil")),
             Mg.App (Mg.App (Mg.Cst "eq",
               Mg.App (Mg.App (Mg.Cst "seq_filter", Mg.Var "hl__P"),
                 Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__h"), Mg.Var "hl__t"))),
               Mg.If (Mg.App (Mg.Var "hl__P", Mg.Var "hl__h"),
                 Mg.App (Mg.App (Mg.Cst "seq_cons", Mg.Var "hl__h"),
                   Mg.App (Mg.App (Mg.Cst "seq_filter", Mg.Var "hl__P"), Mg.Var "hl__t")),
                 Mg.App (Mg.App (Mg.Cst "seq_filter", Mg.Var "hl__P"), Mg.Var "hl__t")))))))));
    ("even_thm",
     Mg.App (Mg.App (Mg.Cst "and",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.Cst "even_nat", Mg.Num 0)), Mg.Cst "True")),
       Mg.AllIn ("hl__n", Mg.Cst "omega",
         Mg.App (Mg.App (Mg.Cst "iff",
           Mg.App (Mg.Cst "even_nat", Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n"))),
           Mg.App (Mg.Cst "not", Mg.App (Mg.Cst "even_nat", Mg.Var "hl__n"))))));
    ("not_even_thm",
     Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.Cst "not", Mg.App (Mg.Cst "even_nat", Mg.Var "hl__n"))),
         Mg.App (Mg.Cst "odd_nat", Mg.Var "hl__n"))));
    ("minus_nat_In_omega",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       mg_in (Mg.App (Mg.App (Mg.Cst "minus_nat", Mg.Var "hl__n"), Mg.Var "hl__m"))
         (Mg.Cst "omega"))));
    ("add_minus_nat_le",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__m"), Mg.Var "hl__n"),
         Mg.App (Mg.App (Mg.Cst "eq",
           Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__m"),
             Mg.App (Mg.App (Mg.Cst "minus_nat", Mg.Var "hl__n"), Mg.Var "hl__m"))),
           Mg.Var "hl__n")))));
    ("le_exists_thm",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.App (Mg.App (Mg.Cst "iff",
         Mg.App (Mg.App (Mg.Cst "SNoLe", Mg.Var "hl__m"), Mg.Var "hl__n")),
         Mg.ExIn ("hl__d", Mg.Cst "omega",
           Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__n"),
             Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__m"), Mg.Var "hl__d")))))));
    ("nat_0", Mg.App (Mg.Cst "nat_p", Mg.Num 0));
    ("nat_ordsucc",
     Mg.All ("hl__n", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "nat_p", Mg.Var "hl__n"),
         Mg.App (Mg.Cst "nat_p", Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__n")))));
    ("neq_ordsucc_0",
     Mg.All ("hl__a", Mg.Set,
       Mg.App (Mg.App (Mg.Cst "neq", Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__a")), Mg.Num 0)));
    ("ordsucc_inj",
     Mg.All ("hl__a", Mg.Set, Mg.All ("hl__b", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "eq", Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__a")),
                 Mg.App (Mg.Cst "ordsucc", Mg.Var "hl__b")),
               Mg.App (Mg.App (Mg.Cst "eq", Mg.Var "hl__a"), Mg.Var "hl__b")))));
    ("omega_SNo",
     Mg.AllIn ("hl__n", Mg.Cst "omega", Mg.App (Mg.Cst "SNo", Mg.Var "hl__n")));
    ("omega_nat_p",
     Mg.AllIn ("hl__n", Mg.Cst "omega", Mg.App (Mg.Cst "nat_p", Mg.Var "hl__n")));
    ("nat_p_omega",
     Mg.All ("hl__n", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "nat_p", Mg.Var "hl__n"), mg_in (Mg.Var "hl__n") (Mg.Cst "omega"))));
    ("add_SNo_In_omega",
     Mg.AllIn ("hl__n", Mg.Cst "omega", Mg.AllIn ("hl__m", Mg.Cst "omega",
       mg_in (Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__n"), Mg.Var "hl__m")) (Mg.Cst "omega"))));
    ("mul_SNo_In_omega",
     Mg.AllIn ("hl__n", Mg.Cst "omega", Mg.AllIn ("hl__m", Mg.Cst "omega",
       mg_in (Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__n"), Mg.Var "hl__m")) (Mg.Cst "omega"))));
    ("add_SNo_0L",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq", Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Num 0), Mg.Var "hl__x")), Mg.Var "hl__x"))));
    ("add_SNo_0R",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq", Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Num 0)), Mg.Var "hl__x"))));
    ("add_SNo_com",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.App (Mg.App (Mg.Cst "eq",
             Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
             Mg.App (Mg.App (Mg.Cst "add_SNo", Mg.Var "hl__y"), Mg.Var "hl__x")))))));
    ("mul_SNo_com",
     Mg.All ("hl__x", Mg.Set, Mg.All ("hl__y", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__y"),
           Mg.App (Mg.App (Mg.Cst "eq",
             Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__x"), Mg.Var "hl__y")),
             Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Var "hl__y"), Mg.Var "hl__x")))))));
    ("mul_SNo_oneL",
     Mg.All ("hl__x", Mg.Set,
       Mg.Imp (Mg.App (Mg.Cst "SNo", Mg.Var "hl__x"),
         Mg.App (Mg.App (Mg.Cst "eq", Mg.App (Mg.App (Mg.Cst "mul_SNo", Mg.Num 1), Mg.Var "hl__x")), Mg.Var "hl__x"))));

    ("divides_nat_divides_int",
     Mg.All ("hl__m", Mg.Set, Mg.All ("hl__n", Mg.Set,
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "divides_nat", Mg.Var "hl__m"), Mg.Var "hl__n"),
               Mg.App (Mg.App (Mg.Cst "divides_int", Mg.Var "hl__m"), Mg.Var "hl__n")))));
    ("divides_int_divides_nat",
     Mg.AllIn ("hl__m", Mg.Cst "omega", Mg.AllIn ("hl__n", Mg.Cst "omega",
       Mg.Imp (Mg.App (Mg.App (Mg.Cst "divides_int", Mg.Var "hl__m"), Mg.Var "hl__n"),
               Mg.App (Mg.App (Mg.Cst "divides_nat", Mg.Var "hl__m"), Mg.Var "hl__n")))));
    ("Subq_omega_int", Mg.App (Mg.App (Mg.Cst "Subq", Mg.Cst "omega"), Mg.Cst "int"));
    ("choose_in_spec",
     Mg.All ("hl__A", Mg.Set,
       Mg.All ("hl__P", Mg.Arr (Mg.Set, Mg.Prop),
         Mg.Imp (Mg.ExIn ("hl__w", Mg.Var "hl__A", Mg.App (Mg.Var "hl__P", Mg.Var "hl__w")),
           Mg.App (Mg.App (Mg.Cst "and",
             mg_in (Mg.App (Mg.App (Mg.Cst "choose_in", Mg.Var "hl__A"), Mg.Var "hl__P"))
               (Mg.Var "hl__A")),
             Mg.App (Mg.Var "hl__P",
               Mg.App (Mg.App (Mg.Cst "choose_in", Mg.Var "hl__A"), Mg.Var "hl__P"))))))) ]

(* congruence closing of an iff between structurally similar props (docs/DESIGN.md 24.3):
   recurse through shared connectives and binders with the mglib/native/logic.mg congruence
   lemmas; mismatching leaves close via close_term (premise instances).  Pure term output. *)
let rec iff_congruence st (hyps : hyp list) (l : Mg.tm) (r : Mg.tm) : string option =
  spend st 2;
  if aeq l r then Some (Printf.sprintf "(iff_refl %s)" (ppp l)) else
  let leaf () =
    match close_term st hyps (Mg.App (Mg.App (Mg.Cst "iff", l), r)) 3 with
    | Some t -> Some t
    | None ->
    (* an equality-instance rewrite at set level: r = l[X:=Y] with X = Y closable *)
    match
      List.find_map (fun h ->
        let prems, concl = strip_hyp h.prop in
        let pvars = List.filter_map (function PVar x -> Some x | _ -> None) prems in
        let rec eqs_of c =
          (match dest_and c with
           | Some (a, b) -> eqs_of a @ eqs_of b
           | None -> (match dest_eq c with Some lr -> [ lr ] | None -> [])) in
        List.find_map (fun (xp, yp) ->
          (match xp with Mg.Var v when List.mem v pvars -> None | _ ->
           let cands = ref [] in
           let rec sub t = (match match_tm pvars xp t with
             | Some bnd when List.for_all (fun v -> List.mem_assoc v bnd) pvars -> cands := bnd :: !cands
             | _ -> ());
             (match t with
              | Mg.App (a, b) -> sub a; sub b
              | Mg.Imp (a, b) -> sub a; sub b
              | Mg.If (a, b, c) -> sub a; sub b; sub c
              | _ -> ()) in
           sub l;
           List.find_map (fun bnd ->
             let xi = beta (Mg.subst bnd xp) and yi = beta (Mg.subst bnd yp) in
             if aeq xi yi then None else
             if not (aeq (replace_tm xi yi l) r) then None else
             match close_term st hyps (Mg.App (Mg.App (Mg.Cst "eq", xi), yi)) 3 with
             | None -> None
             | Some pe ->
                 Some (Printf.sprintf "(%s (fun hl__u hl__v => (%s) <-> (%s)) (iff_refl (%s)))"
                         pe (pp l) (pp (replace_tm xi (Mg.Var "hl__u") l)) (pp l))
           ) !cands)) (eqs_of concl)) hyps
    with
    | Some t -> Some t
    | None ->
        (if np_debug then Printf.eprintf "[cg] leaf fail: %s ||| %s\n%!"
           (String.sub (pp l) 0 (min 300 (String.length (pp l))))
           (String.sub (pp r) 0 (min 300 (String.length (pp r)))));
        None in
  let bin cong a b a' b' =
    (match iff_congruence st hyps a a' with
     | None -> None
     | Some pa ->
         (match iff_congruence st hyps b b' with
          | None -> None
          | Some pb -> Some (Printf.sprintf "(%s %s %s %s %s %s %s)" cong (ppp a) (ppp a') (ppp b) (ppp b') pa pb))) in
  let res =
    (match l, r with
     | Mg.App (Mg.App (Mg.Cst "and", a), b), Mg.App (Mg.App (Mg.Cst "and", a'), b') -> bin "and_iff_cong" a b a' b'
     | Mg.App (Mg.App (Mg.Cst "or", a), b), Mg.App (Mg.App (Mg.Cst "or", a'), b') -> bin "or_iff_cong" a b a' b'
     | Mg.App (Mg.App (Mg.Cst "iff", a), b), Mg.App (Mg.App (Mg.Cst "iff", a'), b') -> bin "iff_iff_cong" a b a' b'
     | Mg.Imp (a, b), Mg.Imp (a', b') -> bin "imp_iff_cong" a b a' b'
     | Mg.App (Mg.Cst "not", a), Mg.App (Mg.Cst "not", a') ->
         (match iff_congruence st hyps a a' with
          | None -> None
          | Some pa -> Some (Printf.sprintf "(not_iff_cong %s %s %s)" (ppp a) (ppp a') pa))
     | Mg.AllIn (x, d, b), Mg.AllIn (x', d', b') when aeq d d' ->
         let xf = fresh st (if x = x' then x else "hl__c") in
         let hf = fresh st ("H" ^ xf) in
         let bl = Mg.subst [ (x, Mg.Var xf) ] b and br = Mg.subst [ (x', Mg.Var xf) ] b' in
         (match iff_congruence st ({ hname = hf; prop = mg_in (Mg.Var xf) d } :: hyps) bl br with
          | None -> None
          | Some pb -> Some (Printf.sprintf "(all_in_iff_cong %s (fun %s:set => %s) (fun %s:set => %s) (fun %s %s => %s))"
                               (ppp d) xf (pp bl) xf (pp br) xf hf pb))
     | Mg.ExIn (x, d, b), Mg.ExIn (x', d', b') when aeq d d' ->
         let xf = fresh st (if x = x' then x else "hl__c") in
         let hf = fresh st ("H" ^ xf) in
         let bl = Mg.subst [ (x, Mg.Var xf) ] b and br = Mg.subst [ (x', Mg.Var xf) ] b' in
         (match iff_congruence st ({ hname = hf; prop = mg_in (Mg.Var xf) d } :: hyps) bl br with
          | None -> None
          | Some pb -> Some (Printf.sprintf "(ex_in_iff_cong %s (fun %s:set => %s) (fun %s:set => %s) (fun %s %s => %s))"
                               (ppp d) xf (pp bl) xf (pp br) xf hf pb))
     | Mg.AllSub (x, d, b), Mg.AllSub (x', d', b') when aeq d d' ->
         let xf = fresh st (if x = x' then x else "hl__c") in
         let hf = fresh st ("H" ^ xf) in
         let bl = Mg.subst [ (x, Mg.Var xf) ] b and br = Mg.subst [ (x', Mg.Var xf) ] b' in
         (match iff_congruence st ({ hname = hf; prop = mg_subq (Mg.Var xf) d } :: hyps) bl br with
          | None -> None
          | Some pb -> Some (Printf.sprintf "(all_sub_iff_cong %s (fun %s:set => %s) (fun %s:set => %s) (fun %s %s => %s))"
                               (ppp d) xf (pp bl) xf (pp br) xf hf pb))
     | Mg.ExSub (x, d, b), Mg.ExSub (x', d', b') when aeq d d' ->
         let xf = fresh st (if x = x' then x else "hl__c") in
         let hf = fresh st ("H" ^ xf) in
         let bl = Mg.subst [ (x, Mg.Var xf) ] b and br = Mg.subst [ (x', Mg.Var xf) ] b' in
         (match iff_congruence st ({ hname = hf; prop = mg_subq (Mg.Var xf) d } :: hyps) bl br with
          | None -> None
          | Some pb -> Some (Printf.sprintf "(ex_sub_iff_cong %s (fun %s:set => %s) (fun %s:set => %s) (fun %s %s => %s))"
                               (ppp d) xf (pp bl) xf (pp br) xf hf pb))
     | Mg.All (x, Mg.Set, b), Mg.All (x', Mg.Set, b') ->
         let xf = fresh st (if x = x' then x else "hl__c") in
         let bl = Mg.subst [ (x, Mg.Var xf) ] b and br = Mg.subst [ (x', Mg.Var xf) ] b' in
         (match iff_congruence st hyps bl br with
          | None -> None
          | Some pb -> Some (Printf.sprintf "(all_iff_cong (fun %s:set => %s) (fun %s:set => %s) (fun %s:set => %s))"
                               xf (pp bl) xf (pp br) xf pb))
     | Mg.Ex (x, Mg.Set, b), Mg.Ex (x', Mg.Set, b') ->
         let xf = fresh st (if x = x' then x else "hl__c") in
         let bl = Mg.subst [ (x, Mg.Var xf) ] b and br = Mg.subst [ (x', Mg.Var xf) ] b' in
         (match iff_congruence st hyps bl br with
          | None -> None
          | Some pb -> Some (Printf.sprintf "(ex_iff_cong (fun %s:set => %s) (fun %s:set => %s) (fun %s:set => %s))"
                               xf (pp bl) xf (pp br) xf pb))
     | Mg.All (x, Mg.Prop, b), Mg.All (x', Mg.Prop, b') ->
         let xf = fresh st (if x = x' then x else "hl__c") in
         let bl = Mg.subst [ (x, Mg.Var xf) ] b and br = Mg.subst [ (x', Mg.Var xf) ] b' in
         (match iff_congruence st hyps bl br with
          | None -> None
          | Some pb -> Some (Printf.sprintf "(allp_iff_cong (fun %s:prop => %s) (fun %s:prop => %s) (fun %s:prop => %s))"
                               xf (pp bl) xf (pp br) xf pb))
     | _ -> None) in
  (match res with Some t -> Some t | None -> leaf ())

(* one-step rewrite of [t] by a purely universally quantified iff/eq premise
   (docs/DESIGN.md 24.3): find a subterm matching a premise's left side, replace by the
   instantiated right side.  Returns the rewritten whole term. *)
let rec find_rewrites (hyps : hyp list) (t : Mg.tm) : Mg.tm list =
  let rec rules_of concl =
    (match dest_and concl with
     | Some (a, b) -> rules_of a @ rules_of b
     | None ->
         (match dest_iff concl with
          | Some lr -> [ lr ]
          | None ->
              (match dest_eq concl with
               | Some lr -> [ lr ]
               (* a plain fact rewrites to True (HOL's implicit p = T rule) *)
               | None -> [ (concl, Mg.Cst "True") ]))) in
  let here =
    List.concat_map (fun h ->
      let prems, concl = strip_hyp h.prop in
      let pvars = List.filter_map (function PVar x -> Some x | _ -> None) prems in
      List.filter_map (fun (lp, rp) ->
        (* a bare-variable left side matches everything: not a rewrite rule *)
        (match lp with Mg.Var v when List.mem v pvars -> None | _ ->
         if aeq lp rp then None else
         match match_tm pvars lp t with
         | Some bnd when List.for_all (fun v -> List.mem_assoc v bnd) pvars ->
             let t' = beta (Mg.subst bnd rp) in
             if aeq t' t then None else Some t'
         | _ -> None)) (rules_of concl)) hyps in
  let deeper =
      let rec collect = function
        | [] -> []
        | (sub, rebuild) :: rest ->
            (match find_rewrites hyps sub with
             | sub' :: _ -> [ rebuild sub' ]
             | [] -> collect rest) in
      collect in
  here
  @ (match t with
     | Mg.App (a, b) -> deeper [ (a, (fun a' -> Mg.App (a', b))); (b, (fun b' -> Mg.App (a, b'))) ]
     | Mg.Imp (a, b) -> deeper [ (a, (fun a' -> Mg.Imp (a', b))); (b, (fun b' -> Mg.Imp (a, b'))) ]
     | Mg.AllIn (x, d, b) -> deeper [ (b, (fun b' -> Mg.AllIn (x, d, b'))) ]
     | Mg.ExIn (x, d, b) -> deeper [ (b, (fun b' -> Mg.ExIn (x, d, b'))) ]
     | Mg.AllSub (x, d, b) -> deeper [ (b, (fun b' -> Mg.AllSub (x, d, b'))) ]
     | Mg.ExSub (x, d, b) -> deeper [ (b, (fun b' -> Mg.ExSub (x, d, b'))) ]
     | Mg.All (x, m, b) -> deeper [ (b, (fun b' -> Mg.All (x, m, b'))) ]
     | Mg.Ex (x, m, b) -> deeper [ (b, (fun b' -> Mg.Ex (x, m, b'))) ]
     | Mg.Lam (x, m, b) -> deeper [ (b, (fun b' -> Mg.Lam (x, m, b'))) ]
     | _ -> [])

(* iff intro lemmas (mglib/native/logic.mg): available to the congruence/rewrite paths
   only, so the general prover's search is unchanged *)
let iff_builtins : (string * Mg.tm) list =
  [ ("iff_true_intro",
     Mg.All ("hl__p", Mg.Prop,
       Mg.Imp (Mg.Var "hl__p",
         Mg.App (Mg.App (Mg.Cst "iff", Mg.Var "hl__p"), Mg.Cst "True"))));
    ("iff_false_intro",
     Mg.All ("hl__p", Mg.Prop,
       Mg.Imp (Mg.App (Mg.Cst "not", Mg.Var "hl__p"),
         Mg.App (Mg.App (Mg.Cst "iff", Mg.Var "hl__p"), Mg.Cst "False")))) ]

(* congruence closing of `l <-> r` as a proof term, for the recorded-proof import
   (docs/DESIGN.md 24.3): premises are citable named facts (instances, previous claims) *)
let congruence_iff ?(budget = 4000) ~(premises : (string * Mg.tm) list) (l : Mg.tm) (r : Mg.tm) : string option =
  let st = { fuel = budget; names = Hashtbl.create 64; memo = Hashtbl.create 4096; pps = Hashtbl.create 512 } in
  List.iter (fun (n, _) -> Hashtbl.replace st.names n ()) premises;
  let hyps0 = List.fold_left (fun acc (n, p) -> augment n p acc) [] (premises @ builtin_premises @ iff_builtins) in
  try iff_congruence st hyps0 l r with Give_up | Stack_overflow -> None

let default_budget =
  match Sys.getenv_opt "NPBUDGET" with
  | Some s -> (try int_of_string s with _ -> 6000)
  | None -> 6000

let prove ?budget ?(max_lines = 200) ?(premises : (string * Mg.tm) list = [])
    (goal : Mg.tm) : string option =
  let budget = match budget with Some b -> b | None -> default_budget in
  let st = { fuel = budget; names = Hashtbl.create 64; memo = Hashtbl.create 4096; pps = Hashtbl.create 512 } in
  let premises = premises @ builtin_premises in
  ignore collect_names;  (* statement binders may be shadowed by let/assume; nothing is pre-seeded *)
  List.iter (fun (n, _) -> Hashtbl.replace st.names n ()) premises;
  let hyps0 = List.map (fun (n, p) -> { hname = n; prop = p }) premises in
  try
    let lines = prove_goal st hyps0 goal 0 in
    if List.length lines > max_lines then None else Some (String.concat "\n" lines)
  with Give_up | Stack_overflow -> None

(* rewrite-normalization to True (docs/DESIGN.md 24.3): chain the goal through one-step
   premise rewrites, each step proved by congruence, until it collapses to True.  Emitted
   as a readable claim chain E1..En over the intermediate forms. *)
let prove_via_rewrites ?(budget = 6000) ~(premises : (string * Mg.tm) list) (goal : Mg.tm) : string option =
  if premises = [] then None else
  let dbg = np_debug in
  (if dbg then Printf.eprintf "[rw] goal: %s | premises: %s\n%!" (String.sub (pp goal) 0 (min 120 (String.length (pp goal)))) (String.concat "," (List.map fst premises)));
  let st = { fuel = budget; names = Hashtbl.create 64; memo = Hashtbl.create 4096; pps = Hashtbl.create 512 } in
  List.iter (fun (n, _) -> Hashtbl.replace st.names n ()) premises;
  let hyps0 = List.fold_left (fun acc (n, p) -> augment n p acc) [] (premises @ builtin_premises @ iff_builtins) in
  let trivially cur =
    if cur = Mg.Cst "True" then Some "exact (fun p:prop => fun H:p => H)." else
    match prove ~budget:800 ~premises cur with
    | Some scr -> Some scr
    | None -> None in
  let rec chain acc cur k =
    if k > 40 then None
    else match trivially cur with
    | Some fin -> Some (List.rev acc, cur, fin)
    | None ->
    let cands = find_rewrites hyps0 cur in
    (if dbg && cands = [] then Printf.eprintf "[rw] no rewrite at step %d: %s\n%!" k (String.sub (pp cur) 0 (min 150 (String.length (pp cur)))));
    let rec try_c seen = function
      | [] -> None
      | nxt :: rest when List.exists (aeq nxt) seen -> try_c seen rest
      | nxt :: rest ->
          (if dbg then Printf.eprintf "[rw] step %d: -> %s\n%!" k (String.sub (pp nxt) 0 (min 150 (String.length (pp nxt)))));
          (match (try iff_congruence st hyps0 cur nxt with Give_up | Stack_overflow -> None) with
           | None -> (if dbg then Printf.eprintf "[rw] congruence failed, next candidate\n%!"); try_c (nxt :: seen) rest
           | Some pf ->
               (match chain ((cur, nxt, pf) :: acc) nxt (k + 1) with
                | Some r -> Some r
                | None -> try_c (nxt :: seen) rest)) in
    try_c [] (List.filteri (fun i _ -> i < 6) cands) in
  match chain [] goal 0 with
  | None | Some ([], _, _) -> None
  | Some (steps, final, fin) ->
      let buf = Buffer.create 1024 in
      List.iteri (fun i (l, r, pf) ->
        Buffer.add_string buf (Printf.sprintf "claim E%d : (%s) <-> (%s).\n{ exact %s. }\n" (i + 1) (Mg.to_string l) (Mg.to_string r) pf)) steps;
      Buffer.add_string buf (Printf.sprintf "claim F0 : %s.\n{ %s }\n" (Mg.to_string final) fin);
      let n = List.length steps in
      let rec compose i =
        if i > n then "F0"
        else (let (l, r, _) = List.nth steps (i - 1) in
              Printf.sprintf "(iffER (%s) (%s) E%d %s)" (Mg.to_string l) (Mg.to_string r) i (compose (i + 1))) in
      Buffer.add_string buf (Printf.sprintf "exact %s." (compose 1));
      Some (Buffer.contents buf)

