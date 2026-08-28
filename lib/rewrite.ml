(* Approved native rewrites applied to elaborated statements.  Every rule is
   either a definitional/provable identity valid unconditionally, or guarded by
   a syntactic side condition that the generated forms always satisfy.  The
   registry supplies (lhs, rhs, justification, guards); a few normalisations
   are built in. *)

open Mg

let rules : (tm * tm * string * (string * string) list) list ref = ref []
let applied : string list ref = ref []   (* justifications used for the current statement *)

(* evidently positive dimension expressions *)
let rec positive_dim t =
  match t with
  | Num n -> n >= 1
  | App (Cst "dimindex", _) -> true
  | App (App (Cst "add_SNo", a), b) -> positive_dim a || positive_dim b
  | App (App (Cst "mul_SNo", a), b) -> positive_dim a && positive_dim b
  | If (_, a, b) -> positive_dim a && positive_dim b
  | _ -> false

(* evidently nonempty sets *)
let rec nonempty t =
  match t with
  | Num n -> n >= 1
  | Cst ("omega" | "int" | "R" | "real" | "rational") -> true
  | SetEnum (_ :: _) -> true
  | App (Cst "Power", _) -> true
  | App (Cst "idx", _) -> true
  | App (Cst "idx_n", k) -> positive_dim k
  | App (Cst "ordsucc", _) -> true
  | App (Cst "finseq", _) -> true
  | App (App (Cst "setexp", a), b) -> nonempty a
  | App (App (Cst "setprod", a), b) -> nonempty a && nonempty b
  | App (App (Cst "binunion", a), b) -> nonempty a || nonempty b
  | _ -> false

let guard_ok name t =
  match name with
  | "positive_dim" -> positive_dim t
  | "nonempty" -> nonempty t
  | _ -> false

let rec fo_match pat t sub =
  match pat, t with
  | Meta m, _ -> (match List.assoc_opt m sub with Some u -> if u = t then Some sub else None | None -> Some ((m, t) :: sub))
  | Var a, Var b when a = b -> Some sub
  | Cst a, Cst b when a = b -> Some sub
  | Num a, Num b when a = b -> Some sub
  | App (f, x), App (g, y) -> (match fo_match f g sub with Some s -> fo_match x y s | None -> None)
  | Imp (a, b), Imp (c, d) -> (match fo_match a c sub with Some s -> fo_match b d s | None -> None)
  | Sep (x, a, p), Sep (y, b, q) when x = y -> (match fo_match a b sub with Some s -> fo_match p q s | None -> None)
  | Sep (x, a, p), Sep (y, b, q) -> (match fo_match a b sub with Some s -> fo_match p (subst [ (y, Var x) ] q) s | None -> None)
  | SetEnum l1, SetEnum l2 when List.length l1 = List.length l2 ->
      List.fold_left2 (fun acc a b -> match acc with Some s -> fo_match a b s | None -> None) (Some sub) l1 l2
  | Tuple l1, Tuple l2 when List.length l1 = List.length l2 ->
      List.fold_left2 (fun acc a b -> match acc with Some s -> fo_match a b s | None -> None) (Some sub) l1 l2
  | _ -> if pat = t then Some sub else None

let try_rules t =
  let rec go = function
    | [] -> None
    | (lhs, rhs, by, guards) :: r ->
        (match fo_match lhs t [] with
         | Some sub when List.for_all (fun (m, g) -> match List.assoc_opt m sub with Some u -> guard_ok g u | None -> false) guards ->
             if by <> "" && not (List.mem by !applied) then applied := by :: !applied;
             Some (inst sub rhs)
         | _ -> go r)
  in
  go !rules

(* names of variables with meta (function/predicate) types in scope, for eta *)
let meta_vars : string list ref = ref []
(* constants whose (fully applied by carriers/args) result is a meta function/predicate *)
let meta_consts : (string, unit) Hashtbl.t = Hashtbl.create 64

let note s = if not (List.mem s !applied) then applied := s :: !applied

let rec builtin t =
  match t with
  | Repl (x, s, Var y) when x = y -> note "Repl_identity"; s
  | App (Tuple [ a; _ ], Num 0) -> note "tuple_2_0_eq"; a
  | App (Tuple [ _; b ], Num 1) -> note "tuple_2_1_eq"; b
  | App (App (Cst "add_SNo", Num a), Num b) -> note "arith"; Num (a + b)
  | App (App (Cst "mul_SNo", Num a), Num b) -> note "arith"; Num (a * b)
  | App (Cst "ordsucc", Num a) -> note "arith"; Num (a + 1)
  | Lam (x, _, App (f, Var y)) when x = y && not (List.mem x (free_vars f)) && is_meta_head f -> note "eta"; f
  (* vacuous binders over inhabited domains *)
  | AllSub (x, _, b) when not (List.mem x (free_vars b)) -> note "vacuous_forall"; b
  | All (x, _, b) when not (List.mem x (free_vars b)) -> note "vacuous_forall"; b
  | AllIn (x, a, b) when not (List.mem x (free_vars b)) && nonempty a -> note "vacuous_forall"; b
  | ExSub (x, _, b) when not (List.mem x (free_vars b)) -> note "vacuous_exists"; b
  | Ex (x, _, b) when not (List.mem x (free_vars b)) -> note "vacuous_exists"; b
  | ExIn (x, a, b) when not (List.mem x (free_vars b)) && nonempty a -> note "vacuous_exists"; b
  | _ -> t

and is_meta_head f =
  match f with
  | Var v -> List.mem v !meta_vars
  | Cst c -> Hashtbl.mem meta_consts c
  | App (g, _) -> is_meta_head g
  | Lam _ -> true
  | _ -> false

let rec normalize t =
  let t = map_children normalize t in
  let t = builtin t in
  match try_rules t with
  | Some t' -> normalize t'
  | None -> t

and map_children f t =
  match t with
  | Var _ | Cst _ | Meta _ | Num _ -> t
  | App (a, b) -> App (f a, f b)
  | Imp (a, b) -> Imp (f a, f b)
  | Lam (x, ty, b) -> Lam (x, ty, f b)
  | All (x, ty, b) -> All (x, ty, f b)
  | Ex (x, ty, b) -> Ex (x, ty, f b)
  | LamIn (x, a, b) -> LamIn (x, f a, f b)
  | AllIn (x, a, b) -> AllIn (x, f a, f b)
  | AllSub (x, a, b) -> AllSub (x, f a, f b)
  | ExIn (x, a, b) -> ExIn (x, f a, f b)
  | ExSub (x, a, b) -> ExSub (x, f a, f b)
  | Sep (x, a, p) -> Sep (x, f a, f p)
  | Repl (x, a, b) -> Repl (x, f a, f b)
  | ReplSep (x, a, p, b) -> ReplSep (x, f a, f p, f b)
  | SigmaIn (x, a, b) -> SigmaIn (x, f a, f b)
  | PiIn (x, a, b) -> PiIn (x, f a, f b)
  | FamUnion (x, a, b) -> FamUnion (x, f a, f b)
  | SetEnum ts -> SetEnum (List.map f ts)
  | Tuple ts -> Tuple (List.map f ts)
  | If (a, b, c) -> If (f a, f b, f c)

(* collect meta-typed bound/free variable names of a statement *)
let rec collect_meta t =
  match t with
  | All (x, ty, b) | Ex (x, ty, b) | Lam (x, ty, b) ->
      (match ty with Arr _ -> x :: collect_meta b | _ -> collect_meta b)
  | _ -> List.concat_map collect_meta (children t)

and children t =
  match t with
  | Var _ | Cst _ | Meta _ | Num _ -> []
  | App (a, b) | Imp (a, b) -> [ a; b ]
  | Lam (_, _, b) | All (_, _, b) | Ex (_, _, b) -> [ b ]
  | LamIn (_, a, b) | AllIn (_, a, b) | AllSub (_, a, b) | ExIn (_, a, b) | ExSub (_, a, b)
  | Sep (_, a, b) | Repl (_, a, b) | SigmaIn (_, a, b) | PiIn (_, a, b) | FamUnion (_, a, b) -> [ a; b ]
  | ReplSep (_, a, p, b) -> [ a; p; b ]
  | SetEnum ts | Tuple ts -> ts
  | If (a, b, c) -> [ a; b; c ]

let run (t : tm) : tm * string list =
  applied := [];
  meta_vars := collect_meta t;
  let t' = normalize t in
  (t', List.rev !applied)
