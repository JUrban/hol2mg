(* Empty-carrier evaluator: decides syntactically whether a statement still
   holds when a type-variable carrier is Empty, so that the default
   nonemptiness premise can be dropped (recorded as a generalization). *)

open Mg

let empty = Cst "Empty"
let is_empty t = (t = empty || t = Num 0)
let tru = Cst "True" and fls = Cst "False"

(* registry-provided rewrite rules (lhs with ?metas, rhs), each justified by a theorem *)
let rules : (tm * tm) list ref = ref []

let rec fo_match (pat : tm) (t : tm) (sub : (string * tm) list) : (string * tm) list option =
  match pat, t with
  | Meta m, _ -> (match List.assoc_opt m sub with Some u -> if u = t then Some sub else None | None -> Some ((m, t) :: sub))
  | Var a, Var b when a = b -> Some sub
  | Cst a, Cst b when a = b -> Some sub
  | Num a, Num b when a = b -> Some sub
  | App (f, x), App (g, y) -> (match fo_match f g sub with Some s -> fo_match x y s | None -> None)
  | SetEnum l1, SetEnum l2 when List.length l1 = List.length l2 ->
      List.fold_left2 (fun acc a b -> match acc with Some s -> fo_match a b s | None -> None) (Some sub) l1 l2
  | Tuple l1, Tuple l2 when List.length l1 = List.length l2 ->
      List.fold_left2 (fun acc a b -> match acc with Some s -> fo_match a b s | None -> None) (Some sub) l1 l2
  | _ -> if pat = t then Some sub else None

let rec apply_rules t =
  let rec go = function
    | [] -> t
    | (lhs, rhs) :: r -> (match fo_match lhs t [] with Some sub -> inst sub rhs | None -> go r)
  in
  go !rules

let rec simp t =
  let t = simp1 t in
  let t' = apply_rules t in
  if t' == t || t' = t then t else simp t'

and simp1 t =
  match t with
  | App (App (Cst "In", x), s) ->
      let x = simp x and s = simp s in
      if is_empty s then fls
      else (match s with
            | SetEnum l -> List.fold_right (fun e acc -> mk_or (mk_eq x e) acc) l fls |> simp_prop
            | Sep (y, a, p) when is_empty a -> fls
            | _ -> App (App (Cst "In", x), s))
  | App (App (Cst "Subq", a), b) ->
      let a = simp a and b = simp b in
      if is_empty a then tru else if is_empty b then simp_prop (mk_eq a empty) else App (App (Cst "Subq", a), b)
  | App (App (Cst "eq", a), b) ->
      let a = simp a and b = simp b in
      (match a, b with
       | Num x, Num y -> if x = y then tru else fls
       | _ -> if (is_empty a && is_empty b) then tru else simp_prop (mk_eq a b))
  | App (App (Cst "neq", a), b) -> simp_prop (App (Cst "not", mk_eq (simp a) (simp b)))
  | App (App (Cst "and", a), b) -> simp_prop (mk_and (simp a) (simp b))
  | App (App (Cst "or", a), b) -> simp_prop (mk_or (simp a) (simp b))
  | App (App (Cst "iff", a), b) -> simp_prop (App (App (Cst "iff", simp a), simp b))
  | App (Cst "not", a) -> simp_prop (App (Cst "not", simp a))
  | Imp (a, b) -> simp_prop (Imp (simp a, simp b))
  | App (Cst "Power", a) -> let a = simp a in if is_empty a then SetEnum [ empty ] else App (Cst "Power", a)
  | App (Cst "Union", a) -> let a = simp a in if is_empty a then empty else App (Cst "Union", a)
  | App (App (Cst "setexp", x), y) ->
      let x = simp x and y = simp y in
      if is_empty y then SetEnum [ empty ]
      else if is_empty x && Rewrite.nonempty y then empty
      else App (App (Cst "setexp", x), y)
  | App (App (Cst "setprod", x), y) ->
      let x = simp x and y = simp y in
      if is_empty x || is_empty y then empty else App (App (Cst "setprod", x), y)
  | App (App (Cst "setsum", x), y) ->
      let x = simp x and y = simp y in
      if is_empty x && is_empty y then empty else App (App (Cst "setsum", x), y)
  | App (App (Cst "binunion", x), y) ->
      let x = simp x and y = simp y in
      if is_empty x then y else if is_empty y then x else App (App (Cst "binunion", x), y)
  | App (App (Cst "binintersect", x), y) ->
      let x = simp x and y = simp y in
      if is_empty x || is_empty y then empty else App (App (Cst "binintersect", x), y)
  | App (App (Cst "setminus", x), y) ->
      let x = simp x and y = simp y in
      if is_empty x then empty else if is_empty y then x else App (App (Cst "setminus", x), y)
  | App (Cst "finseq", a) -> let a = simp a in if is_empty a then SetEnum [ empty ] else App (Cst "finseq", a)
  | App (f, x) ->
      let f = simp f and x = simp x in
      (match f with
       | Lam (y, _, b) -> simp (subst [ (y, x) ] b)
       | LamIn (y, a, b) when is_empty a -> empty        (* beta0 *)
       | _ when is_empty f -> empty                       (* ap Empty x = Empty *)
       | _ -> simp_arith (App (f, x)))
  | Lam (x, ty, b) -> Lam (x, ty, simp b)
  | LamIn (x, a, b) -> let a = simp a in if is_empty a then empty else LamIn (x, a, simp b)
  | All (x, ty, b) -> let b = simp b in if b = tru then tru else All (x, ty, b)
  | Ex (x, ty, b) -> let b = simp b in if b = tru then tru else if b = fls then fls else Ex (x, ty, b)
  | AllIn (x, a, b) ->
      let a = simp a in
      if is_empty a then tru
      else (match a with
            | SetEnum [ e ] -> simp (subst [ (x, e) ] b)
            | _ -> let b = simp b in if b = tru then tru else AllIn (x, a, b))
  | ExIn (x, a, b) ->
      let a = simp a in
      if is_empty a then fls
      else (match a with
            | SetEnum [ e ] -> simp (subst [ (x, e) ] b)
            | _ -> let b = simp b in if b = fls then fls else ExIn (x, a, b))
  | AllSub (x, a, b) ->
      let a = simp a in
      if is_empty a then simp (subst [ (x, empty) ] b) else let b = simp b in if b = tru then tru else AllSub (x, a, b)
  | ExSub (x, a, b) ->
      let a = simp a in
      if is_empty a then simp (subst [ (x, empty) ] b) else let b = simp b in if b = fls then fls else ExSub (x, a, b)
  | Sep (x, a, p) ->
      let a = simp a in
      if is_empty a then empty else (let p = simp p in if p = fls then empty else Sep (x, a, p))
  | App (Cst "finite", a) -> let a = simp a in if is_empty a then tru else App (Cst "finite", a)
  | App (Cst "finite_cardinality", a) -> let a = simp a in if is_empty a then Num 0 else App (Cst "finite_cardinality", a)
  | App (App (Cst "equip", a), b) -> let a = simp a and b = simp b in if is_empty a && (is_empty b || b = Num 0) then tru else App (App (Cst "equip", a), b)
  | Repl (x, a, b) -> let a = simp a in if is_empty a then empty else Repl (x, a, simp b)
  | ReplSep (x, a, p, b) -> let a = simp a in if is_empty a then empty else ReplSep (x, a, simp p, simp b)
  | SetEnum l -> SetEnum (List.map simp l)
  | If (c, a, b) ->
      let c = simp c in
      if c = tru then simp a else if c = fls then simp b else If (c, simp a, simp b)
  | Tuple l -> Tuple (List.map simp l)
  | SigmaIn (x, a, b) -> let a = simp a in if is_empty a then empty else SigmaIn (x, a, simp b)
  | PiIn (x, a, b) -> let a = simp a in if is_empty a then SetEnum [ empty ] else PiIn (x, a, simp b)
  | FamUnion (x, a, b) -> let a = simp a in if is_empty a then empty else FamUnion (x, a, simp b)
  | Var _ | Cst _ | Meta _ | Num _ -> t

and mk_eq a b = App (App (Cst "eq", a), b)
and mk_and a b = App (App (Cst "and", a), b)
and mk_or a b = App (App (Cst "or", a), b)

(* evidently nonempty sets *)
and nonempty_lit t =
  match t with
  | SetEnum (_ :: _) | Num _ | Cst ("omega" | "int" | "R" | "real" | "rational") -> (match t with Num 0 -> false | _ -> true)
  | App (Cst "Power", _) -> true
  | _ -> false

and simp_prop t =
  match t with
  | App (App (Cst "eq", a), b) ->
      if a = b then tru
      else if (is_empty a && nonempty_lit b) || (is_empty b && nonempty_lit a) then fls
      else t
  | App (App (Cst "and", a), b) -> if a = tru then b else if b = tru then a else if a = fls || b = fls then fls else t
  | App (App (Cst "or", a), b) -> if a = tru || b = tru then tru else if a = fls then b else if b = fls then a else t
  | App (App (Cst "iff", a), b) ->
      if a = b then tru else if a = tru then b else if b = tru then a
      else if a = fls then simp_prop (App (Cst "not", b)) else if b = fls then simp_prop (App (Cst "not", a)) else t
  | App (Cst "not", a) -> if a = tru then fls else if a = fls then tru else t
  | Imp (a, b) -> if a = fls then tru else if b = tru then tru else if a = tru then b else if a = b then tru else t
  | _ -> t

(* literal arithmetic on numerals *)
and simp_arith t =
  match t with
  | App (App (Cst "add_SNo", Num a), Num b) -> Num (a + b)
  | App (App (Cst "mul_SNo", Num a), Num b) -> Num (a * b)
  | App (Cst "ordsucc", Num a) -> Num (a + 1)
  | App (App (Cst "SNoLt", Num a), Num b) -> if a < b then tru else fls
  | App (App (Cst "SNoLe", Num a), Num b) -> if a <= b then tru else fls
  | _ -> t

(* Try to drop `A <> Empty ->` premises.  The statement has the shape
   forall A1 .. An : set, A1 <> Empty -> ... -> An <> Empty -> body.
   Returns the new statement and the list of parameters generalised. *)
let generalize (stmt : tm) (params : string list) : tm * string list =
  (* split off the parameter binders *)
  let rec split_params t = function
    | [] -> ([], t)
    | p :: ps -> (match t with All (x, Set, b) when x = p -> let l, r = split_params b ps in (x :: l, r) | _ -> ([], t))
  in
  let bound, rest = split_params stmt params in
  let rec split_prem t = function
    | [] -> ([], t)
    | p :: ps ->
        (match t with
         | Imp (App (App (Cst "neq", Var x), Cst "Empty"), b) when x = p -> let l, r = split_prem b ps in (x :: l, r)
         | _ -> ([], t))
  in
  let prems, body = split_prem rest bound in
  if List.length prems <> List.length bound then (stmt, [])
  else begin
    (* premises kept for the remaining parameters, evaluated one at a time *)
    let dropped = ref [] in
    let keep = ref [] in
    List.iter (fun p ->
      (* body with other kept premises re-attached *)
      let others = List.filter (fun q -> q <> p) (!keep @ List.filter (fun q -> q <> p && not (List.mem q !dropped)) bound) in
      let others = List.sort_uniq compare others in
      let with_prems = List.fold_right (fun q acc -> Imp (App (App (Cst "neq", Var q), Cst "Empty"), acc)) others body in
      let inst = subst [ (p, Cst "Empty") ] with_prems in
      if simp inst = tru then dropped := p :: !dropped else keep := p :: !keep) bound;
    let kept = List.filter (fun p -> not (List.mem p !dropped)) bound in
    let body' = List.fold_right (fun q acc -> Imp (App (App (Cst "neq", Var q), Cst "Empty"), acc)) kept body in
    let stmt' = List.fold_right (fun p acc -> All (p, Set, acc)) bound body' in
    (stmt', List.rev !dropped)
  end
