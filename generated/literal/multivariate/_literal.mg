// hol2mg literal layer (private, docs/DESIGN.md §21.2): syntax-directed interpretation of the
// HOL Light kernel definitions of profile multivariate (commit 433477862bb90b328a593e012e09390e99b2439b).  Checked after mglib/native/*.mg and
// mglib/literal/model.mg.  Generated; do not edit.

// HOL Light: T : bool
Definition hl_T : set :=
  if (fun p :e 2 => p) = fun p :e 2 => p then 1 else 0.

// HOL Light: /\ : bool->bool->bool
Definition hl_and : set :=
  fun p :e 2 => fun q :e 2 => if (fun f :e 2 :^: 2 :^: 2 => f p q) = fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0) then 1 else 0.

// HOL Light: ==> : bool->bool->bool
Definition hl_imp : set :=
  fun p :e 2 => fun q :e 2 => if p = 1 /\ q = 1 <-> p = 1 then 1 else 0.

// HOL Light: ! : (A->bool)->bool
Definition hl_forall : set -> set :=
  fun A:set => fun P :e 2 :^: A => if P = fun x :e A => if True then 1 else 0 then 1 else 0.

// HOL Light: ? : (A->bool)->bool
Definition hl_exists : set -> set :=
  fun A:set => fun P :e 2 :^: A => if forall q :e 2, (forall x :e A, P x = 1 -> q = 1) -> q = 1 then 1 else 0.

// HOL Light: \/ : bool->bool->bool
Definition hl_or : set :=
  fun p :e 2 => fun q :e 2 => if forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1 then 1 else 0.

// HOL Light: F : bool
Definition hl_F : set :=
  if forall p :e 2, p = 1 then 1 else 0.

// HOL Light: ~ : bool->bool
Definition hl_not : set :=
  fun p :e 2 => if p = 1 -> False then 1 else 0.

// HOL Light: ?! : (A->bool)->bool
Definition hl_exists_unique : set -> set :=
  fun A:set => fun P :e 2 :^: A => if hl_exists A P = 1 /\ forall x y :e A, P x = 1 /\ P y = 1 -> x = y then 1 else 0.

// HOL Light: _FALSITY_ : bool
Definition hl__FALSITY_ : set :=
  if False then 1 else 0.

// HOL Light: COND : bool->A->A->A
Definition hl_COND : set -> set :=
  fun A:set => fun t :e 2 => fun t1 :e A => fun t2 :e A => hl_select A (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0).

// HOL Light: o : (B->C)->(A->B)->A->C
Definition hl_o : set -> set -> set -> set :=
  fun B:set => fun C:set => fun A:set => fun f :e C :^: B => fun g :e B :^: A => fun x :e A => f (g x).

// HOL Light: I : A->A
Definition hl_I : set -> set :=
  fun A:set => fun x :e A => x.

// HOL Light: hashek : bool
Definition hl_hashek : set :=
  if True then 1 else 0.

// HOL Light: LET : (A->B)->A->B
Definition hl_LET : set -> set -> set :=
  fun A:set => fun B:set => fun f :e B :^: A => fun x :e A => f x.

// HOL Light: LET_END : A->A
Definition hl_LET_END : set -> set :=
  fun A:set => fun t :e A => t.

// HOL Light: GABS : (A->bool)->A
Definition hl_GABS : set -> set :=
  fun A:set => fun P :e 2 :^: A => hl_select A P.

// HOL Light: GEQ : A->A->bool
Definition hl_GEQ : set -> set :=
  fun A:set => fun a :e A => fun b :e A => if a = b then 1 else 0.

// HOL Light: _SEQPATTERN : (A->B->bool)->(A->B->bool)->A->B->bool
Definition hl__SEQPATTERN : set -> set -> set :=
  fun A:set => fun B:set => fun r :e 2 :^: B :^: A => fun s :e 2 :^: B :^: A => fun x :e A => hl_COND (2 :^: B) (if exists y :e B, r x y = 1 then 1 else 0) (r x) (s x).

// HOL Light: _UNGUARDED_PATTERN : bool->bool->bool
Definition hl__UNGUARDED_PATTERN : set :=
  fun p :e 2 => fun r :e 2 => if p = 1 /\ r = 1 then 1 else 0.

// HOL Light: _GUARDED_PATTERN : bool->bool->bool->bool
Definition hl__GUARDED_PATTERN : set :=
  fun p :e 2 => fun g :e 2 => fun r :e 2 => if p = 1 /\ (g = 1 /\ r = 1) then 1 else 0.

// HOL Light: _MATCH : A->(A->B->bool)->B
Definition hl__MATCH : set -> set -> set :=
  fun A:set => fun B:set => fun e1 :e A => fun r :e 2 :^: B :^: A => hl_COND B (hl_exists_unique B (r e1)) (hl_select B (r e1)) (hl_select B (fun z :e B => if False then 1 else 0)).

// HOL Light: _FUNCTION : (A->B->bool)->A->B
Definition hl__FUNCTION : set -> set -> set :=
  fun A:set => fun B:set => fun r :e 2 :^: B :^: A => fun x :e A => hl_COND B (hl_exists_unique B (r x)) (hl_select B (r x)) (hl_select B (fun z :e B => if False then 1 else 0)).

// HOL Light: mk_pair : A->B->A->B->bool
Definition hl_mk_pair : set -> set -> set :=
  fun A:set => fun B:set => fun x :e A => fun y :e B => fun a :e A => fun b :e B => if a = x /\ b = y then 1 else 0.

// HOL Light: FST : A#B->A
Definition hl_FST : set -> set -> set :=
  fun A:set => fun B:set => fun p :e A :*: B => hl_select A (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0).

// HOL Light: SND : A#B->B
Definition hl_SND : set -> set -> set :=
  fun A:set => fun B:set => fun p :e A :*: B => hl_select B (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0).

// HOL Light: CURRY : (A#B->C)->A->B->C
Definition hl_CURRY : set -> set -> set -> set :=
  fun A:set => fun B:set => fun C:set => fun v_1283 :e C :^: (A :*: B) => fun v_1284 :e A => fun v_1285 :e B => v_1283 (hl_pair A B v_1284 v_1285).

// HOL Light: UNCURRY : (A->B->C)->A#B->C
Definition hl_UNCURRY : set -> set -> set -> set :=
  fun A:set => fun B:set => fun C:set => fun v_1304 :e C :^: B :^: A => fun v_1305 :e A :*: B => v_1304 (hl_FST A B v_1305) (hl_SND A B v_1305).

// HOL Light: PASSOC : ((A#B)#C->D)->A#B#C->D
Definition hl_PASSOC : set -> set -> set -> set -> set :=
  fun A:set => fun B:set => fun C:set => fun D:set => fun v_1321 :e D :^: (A :*: B :*: C) => fun v_1322 :e A :*: (B :*: C) => v_1321 (hl_pair (A :*: B) C (hl_pair A B (hl_FST A (B :*: C) v_1322) (hl_FST B C (hl_SND A (B :*: C) v_1322))) (hl_SND B C (hl_SND A (B :*: C) v_1322))).

// HOL Light: ONE_ONE : (A->B)->bool
Definition hl_ONE_ONE : set -> set -> set :=
  fun A:set => fun B:set => fun v_2064 :e B :^: A => if forall x1 x2 :e A, v_2064 x1 = v_2064 x2 -> x1 = x2 then 1 else 0.

// HOL Light: ONTO : (A->B)->bool
Definition hl_ONTO : set -> set -> set :=
  fun A:set => fun B:set => fun v_2069 :e B :^: A => if forall y :e B, exists x :e A, y = v_2069 x then 1 else 0.

// HOL Light: IND_SUC : ind->ind
Definition hl_IND_SUC : set :=
  hl_select (omega :^: omega) (fun f :e omega :^: omega => if exists z :e omega, (forall x1 x2 :e omega, f x1 = f x2 <-> x1 = x2) /\ forall x :e omega, ~ f x = z then 1 else 0).

// HOL Light: IND_0 : ind
Definition hl_IND_0 : set :=
  hl_select omega (fun z :e omega => if (forall x1 x2 :e omega, hl_IND_SUC x1 = hl_IND_SUC x2 <-> x1 = x2) /\ forall x :e omega, ~ hl_IND_SUC x = z then 1 else 0).

// HOL Light: NUM_REP : ind->bool
Definition hl_NUM_REP : set :=
  fun a :e omega => if forall NUM_REP' :e 2 :^: omega, (forall a1 :e omega, a1 = hl_IND_0 \/ (exists i :e omega, a1 = hl_IND_SUC i /\ NUM_REP' i = 1) -> NUM_REP' a1 = 1) -> NUM_REP' a = 1 then 1 else 0.

// HOL Light: NUMERAL : num->num
Definition hl_NUMERAL : set :=
  fun v_2128 :e omega => v_2128.

// HOL Light: BIT0 : num->num
Definition hl_BIT0 : set :=
  hl_select (omega :^: omega) (fun fn :e omega :^: omega => if fn (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero /\ forall n :e omega, fn (hl_SUC n) = hl_SUC (hl_SUC (fn n)) then 1 else 0).

// HOL Light: BIT1 : num->num
Definition hl_BIT1 : set :=
  fun v_2143 :e omega => hl_SUC (hl_BIT0 v_2143).

// HOL Light: PRE : num->num
Definition hl_PRE : set :=
  hl_select (omega :^: omega :^: (omega :*: (omega :*: omega))) (fun PRE :e omega :^: omega :^: (omega :*: (omega :*: omega)) => if forall v_2151 :e omega :*: (omega :*: omega), PRE v_2151 (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero /\ forall n :e omega, PRE v_2151 (hl_SUC n) = n then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: + : num->num->num
Definition hl_add : set :=
  hl_select (omega :^: omega :^: omega :^: omega) (fun op :e omega :^: omega :^: omega :^: omega => if forall v_2155 :e omega, (forall n :e omega, op v_2155 (hl_NUMERAL hl_zero) n = n) /\ forall m n :e omega, op v_2155 (hl_SUC m) n = hl_SUC (op v_2155 m n) then 1 else 0) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))).

// HOL Light: * : num->num->num
Definition hl_mul : set :=
  hl_select (omega :^: omega :^: omega :^: omega) (fun op :e omega :^: omega :^: omega :^: omega => if forall v_2186 :e omega, (forall n :e omega, op v_2186 (hl_NUMERAL hl_zero) n = hl_NUMERAL hl_zero) /\ forall m n :e omega, op v_2186 (hl_SUC m) n = hl_add (op v_2186 m n) n then 1 else 0) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))).

// HOL Light: EXP : num->num->num
Definition hl_EXP : set :=
  hl_select (omega :^: omega :^: omega :^: (omega :*: (omega :*: omega))) (fun EXP :e omega :^: omega :^: omega :^: (omega :*: (omega :*: omega)) => if forall v_2224 :e omega :*: (omega :*: omega), (forall m :e omega, EXP v_2224 m (hl_NUMERAL hl_zero) = hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall m n :e omega, EXP v_2224 m (hl_SUC n) = hl_mul m (EXP v_2224 m n) then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: <= : num->num->bool
Definition hl_le : set :=
  hl_select (2 :^: omega :^: omega :^: (omega :*: omega)) (fun lt :e 2 :^: omega :^: omega :^: (omega :*: omega) => if forall v_2241 :e omega :*: omega, (forall m :e omega, lt v_2241 m (hl_NUMERAL hl_zero) = 1 <-> m = hl_NUMERAL hl_zero) /\ forall m n :e omega, lt v_2241 m (hl_SUC n) = 1 <-> m = hl_SUC n \/ lt v_2241 m n = 1 then 1 else 0) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))).

// HOL Light: < : num->num->bool
Definition hl_lt : set :=
  hl_select (2 :^: omega :^: omega :^: omega) (fun lt :e 2 :^: omega :^: omega :^: omega => if forall v_2248 :e omega, (forall m :e omega, lt v_2248 m (hl_NUMERAL hl_zero) = 1 <-> False) /\ forall m n :e omega, lt v_2248 m (hl_SUC n) = 1 <-> m = n \/ lt v_2248 m n = 1 then 1 else 0) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero))))))).

// HOL Light: >= : num->num->bool
Definition hl_ge : set :=
  fun v_2249 :e omega => fun v_2250 :e omega => hl_le v_2250 v_2249.

// HOL Light: > : num->num->bool
Definition hl_gt : set :=
  fun v_2261 :e omega => fun v_2262 :e omega => hl_lt v_2262 v_2261.

// HOL Light: MAX : num->num->num
Definition hl_MAX : set :=
  fun v_2273 :e omega => fun v_2274 :e omega => hl_COND omega (hl_le v_2273 v_2274) v_2274 v_2273.

// HOL Light: MIN : num->num->num
Definition hl_MIN : set :=
  fun v_2285 :e omega => fun v_2286 :e omega => hl_COND omega (hl_le v_2285 v_2286) v_2285 v_2286.

// HOL Light: EVEN : num->bool
Definition hl_EVEN : set :=
  hl_select (2 :^: omega :^: (omega :*: (omega :*: (omega :*: omega)))) (fun EVEN :e 2 :^: omega :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_2603 :e omega :*: (omega :*: (omega :*: omega)), (EVEN v_2603 (hl_NUMERAL hl_zero) = 1 <-> True) /\ forall n :e omega, EVEN v_2603 (hl_SUC n) = 1 <-> ~ EVEN v_2603 n = 1 then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))).

// HOL Light: ODD : num->bool
Definition hl_ODD : set :=
  hl_select (2 :^: omega :^: (omega :*: (omega :*: omega))) (fun ODD :e 2 :^: omega :^: (omega :*: (omega :*: omega)) => if forall v_2607 :e omega :*: (omega :*: omega), (ODD v_2607 (hl_NUMERAL hl_zero) = 1 <-> False) /\ forall n :e omega, ODD v_2607 (hl_SUC n) = 1 <-> ~ ODD v_2607 n = 1 then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: - : num->num->num
Definition hl_sub : set :=
  hl_select (omega :^: omega :^: omega :^: omega) (fun rel :e omega :^: omega :^: omega :^: omega => if forall v_2766 :e omega, (forall m :e omega, rel v_2766 m (hl_NUMERAL hl_zero) = m) /\ forall m n :e omega, rel v_2766 m (hl_SUC n) = hl_PRE (rel v_2766 m n) then 1 else 0) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))).

// HOL Light: FACT : num->num
Definition hl_FACT : set :=
  hl_select (omega :^: omega :^: (omega :*: (omega :*: (omega :*: omega)))) (fun FACT :e omega :^: omega :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_2944 :e omega :*: (omega :*: (omega :*: omega)), FACT v_2944 (hl_NUMERAL hl_zero) = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall n :e omega, FACT v_2944 (hl_SUC n) = hl_mul (hl_SUC n) (FACT v_2944 n) then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))).

// HOL Light: DIV : num->num->num
Definition hl_DIV : set :=
  hl_select (omega :^: omega :^: omega :^: (omega :*: (omega :*: omega))) (fun q :e omega :^: omega :^: omega :^: (omega :*: (omega :*: omega)) => if forall v_3086 :e omega :*: (omega :*: omega), exists r :e omega :^: omega :^: omega, forall m n :e omega, n = hl_NUMERAL hl_zero /\ (q v_3086 m n = hl_NUMERAL hl_zero /\ r m n = m) \/ ~ n = hl_NUMERAL hl_zero /\ (m = hl_add (hl_mul (q v_3086 m n) n) (r m n) /\ hl_lt (r m n) n = 1) then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: MOD : num->num->num
Definition hl_MOD : set :=
  hl_select (omega :^: omega :^: omega :^: (omega :*: (omega :*: omega))) (fun r :e omega :^: omega :^: omega :^: (omega :*: (omega :*: omega)) => if forall v_3087 :e omega :*: (omega :*: omega), forall m n :e omega, n = hl_NUMERAL hl_zero /\ (hl_DIV m n = hl_NUMERAL hl_zero /\ r v_3087 m n = m) \/ ~ n = hl_NUMERAL hl_zero /\ (m = hl_add (hl_mul (hl_DIV m n) n) (r v_3087 m n) /\ hl_lt (r v_3087 m n) n = 1) then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: minimal : (num->bool)->num
Definition hl_minimal : set :=
  fun v_6536 :e 2 :^: omega => hl_select omega (fun n :e omega => if v_6536 n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ v_6536 m = 1 then 1 else 0).

// HOL Light: WF : (A->A->bool)->bool
Definition hl_WF : set -> set :=
  fun A:set => fun v_6923 :e 2 :^: A :^: A => if forall P :e 2 :^: A, (exists x :e A, P x = 1) -> exists x :e A, P x = 1 /\ forall y :e A, v_6923 y x = 1 -> ~ P y = 1 then 1 else 0.

// HOL Light: MEASURE : (A->num)->A->A->bool
Definition hl_MEASURE : set -> set :=
  fun A:set => fun v_8094 :e omega :^: A => fun x :e A => fun y :e A => hl_lt (v_8094 x) (v_8094 y).

// HOL Light: NUMPAIR : num->num->num
Definition hl_NUMPAIR : set :=
  fun v_17487 :e omega => fun v_17488 :e omega => hl_mul (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) v_17487) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) v_17488) (hl_NUMERAL (hl_BIT1 hl_zero))).

// HOL Light: NUMFST : num->num
Definition hl_NUMFST : set :=
  hl_select (omega :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (fun X :e omega :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) => if forall v_17503 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))), exists Y :e omega :^: omega, forall x y :e omega, X v_17503 (hl_NUMPAIR x y) = x /\ Y (hl_NUMPAIR x y) = y then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: NUMSND : num->num
Definition hl_NUMSND : set :=
  hl_select (omega :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (fun Y :e omega :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) => if forall v_17504 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))), forall x y :e omega, hl_NUMFST (hl_NUMPAIR x y) = x /\ Y v_17504 (hl_NUMPAIR x y) = y then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: NUMSUM : bool->num->num
Definition hl_NUMSUM : set :=
  fun v_17505 :e 2 => fun v_17506 :e omega => hl_COND omega v_17505 (hl_SUC (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) v_17506)) (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) v_17506).

// HOL Light: NUMLEFT : num->bool
Definition hl_NUMLEFT : set :=
  hl_select (2 :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (fun X :e 2 :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) => if forall v_17535 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))), exists Y :e omega :^: omega, forall x :e 2, forall y :e omega, (X v_17535 (hl_NUMSUM x y) = 1 <-> x = 1) /\ Y (hl_NUMSUM x y) = y then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))))))))).

// HOL Light: NUMRIGHT : num->num
Definition hl_NUMRIGHT : set :=
  hl_select (omega :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (fun Y :e omega :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) => if forall v_17536 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))), forall x :e 2, forall y :e omega, (hl_NUMLEFT (hl_NUMSUM x y) = 1 <-> x = 1) /\ Y v_17536 (hl_NUMSUM x y) = y then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))))).

// HOL Light: INJN : num->num->A->bool
Definition hl_INJN : set -> set :=
  fun A:set => fun v_17537 :e omega => fun n :e omega => fun a :e A => if n = v_17537 then 1 else 0.

// HOL Light: INJA : A->num->A->bool
Definition hl_INJA : set -> set :=
  fun A:set => fun v_17542 :e A => fun n :e omega => fun b :e A => if b = v_17542 then 1 else 0.

// HOL Light: INJF : (num->num->A->bool)->num->A->bool
Definition hl_INJF : set -> set :=
  fun A:set => fun v_17549 :e 2 :^: A :^: omega :^: omega => fun n :e omega => v_17549 (hl_NUMFST n) (hl_NUMSND n).

// HOL Light: INJP : (num->A->bool)->(num->A->bool)->num->A->bool
Definition hl_INJP : set -> set :=
  fun A:set => fun v_17554 :e 2 :^: A :^: omega => fun v_17555 :e 2 :^: A :^: omega => fun n :e omega => fun a :e A => if hl_NUMLEFT n = 1 /\ v_17554 (hl_NUMRIGHT n) a = 1 \/ ~ hl_NUMLEFT n = 1 /\ v_17555 (hl_NUMRIGHT n) a = 1 then 1 else 0.

// HOL Light: ZCONSTR : num->A->(num->num->A->bool)->num->A->bool
Definition hl_ZCONSTR : set -> set :=
  fun A:set => fun v_17566 :e omega => fun v_17567 :e A => fun v_17568 :e 2 :^: A :^: omega :^: omega => hl_INJP A (hl_INJN A (hl_SUC v_17566)) (hl_INJP A (hl_INJA A v_17567) (hl_INJF A v_17568)).

// HOL Light: ZBOT : num->A->bool
Definition hl_ZBOT : set -> set :=
  fun A:set => hl_INJP A (hl_INJN A (hl_NUMERAL hl_zero)) (hl_select (2 :^: A :^: omega) (fun z :e 2 :^: A :^: omega => if True then 1 else 0)).

// HOL Light: ZRECSPACE : (num->A->bool)->bool
Definition hl_ZRECSPACE : set -> set :=
  fun A:set => fun a :e 2 :^: A :^: omega => if forall ZRECSPACE' :e 2 :^: (2 :^: A :^: omega), (forall a1 :e 2 :^: A :^: omega, a1 = hl_ZBOT A \/ (exists c :e omega, exists i :e A, exists r :e 2 :^: A :^: omega :^: omega, a1 = hl_ZCONSTR A c i r /\ forall n :e omega, ZRECSPACE' (r n) = 1) -> ZRECSPACE' a1 = 1) -> ZRECSPACE' a = 1 then 1 else 0.

// HOL Light: FCONS : A->(num->A)->num->A
Definition hl_FCONS : set -> set :=
  fun A:set => hl_select (A :^: omega :^: (A :^: omega) :^: A :^: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (fun FCONS :e A :^: omega :^: (A :^: omega) :^: A :^: (omega :*: (omega :*: (omega :*: (omega :*: omega)))) => if forall v_17623 :e omega :*: (omega :*: (omega :*: (omega :*: omega))), (forall a :e A, forall f :e A :^: omega, FCONS v_17623 a f (hl_NUMERAL hl_zero) = a) /\ forall a :e A, forall f :e A :^: omega, forall n :e omega, FCONS v_17623 a f (hl_SUC n) = f n then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))))))).

// HOL Light: FNIL : num->A
Definition hl_FNIL : set -> set :=
  fun A:set => fun v_17624 :e omega => hl_select A (fun x :e A => if True then 1 else 0).

// HOL Light: OUTL : (A,B)sum->A
Definition hl_OUTL : set -> set -> set :=
  fun A:set => fun B:set => hl_select (A :^: (A :+: B) :^: (omega :*: (omega :*: (omega :*: omega)))) (fun OUTL1 :e A :^: (A :+: B) :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_17649 :e omega :*: (omega :*: (omega :*: omega)), forall x :e A, OUTL1 v_17649 (hl_INL A B x) = x then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))).

// HOL Light: OUTR : (A,B)sum->B
Definition hl_OUTR : set -> set -> set :=
  fun A:set => fun B:set => hl_select (B :^: (A :+: B) :^: (omega :*: (omega :*: (omega :*: omega)))) (fun OUTR1 :e B :^: (A :+: B) :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_17651 :e omega :*: (omega :*: (omega :*: omega)), forall y :e B, OUTR1 v_17651 (hl_INR B A y) = y then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))).

// HOL Light: ISO : (A->B)->(B->A)->bool
Definition hl_ISO : set -> set -> set :=
  fun A:set => fun B:set => fun v_17732 :e B :^: A => fun v_17733 :e A :^: B => if (forall x :e B, v_17732 (v_17733 x) = x) /\ forall y :e A, v_17733 (v_17732 y) = y then 1 else 0.

// HOL Light: HD : A list->A
Definition hl_HD : set -> set :=
  fun A:set => hl_select (A :^: finseq A :^: (omega :*: omega)) (fun HD :e A :^: finseq A :^: (omega :*: omega) => if forall v_18090 :e omega :*: omega, forall t :e finseq A, forall h :e A, HD v_18090 (hl_CONS A h t) = h then 1 else 0) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))).

// HOL Light: TL : A list->A list
Definition hl_TL : set -> set :=
  fun A:set => hl_select (finseq A :^: finseq A :^: (omega :*: omega)) (fun TL :e finseq A :^: finseq A :^: (omega :*: omega) => if forall v_18094 :e omega :*: omega, forall h :e A, forall t :e finseq A, TL v_18094 (hl_CONS A h t) = t then 1 else 0) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))).

// HOL Light: APPEND : A list->A list->A list
Definition hl_APPEND : set -> set :=
  fun A:set => hl_select (finseq A :^: finseq A :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (fun APPEND :e finseq A :^: finseq A :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) => if forall v_18098 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))), (forall l :e finseq A, APPEND v_18098 (hl_NIL A) l = l) /\ forall h :e A, forall t l :e finseq A, APPEND v_18098 (hl_CONS A h t) l = hl_CONS A h (APPEND v_18098 t l) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: REVERSE : A list->A list
Definition hl_REVERSE : set -> set :=
  fun A:set => hl_select (finseq A :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (fun REVERSE :e finseq A :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) => if forall v_18102 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))), REVERSE v_18102 (hl_NIL A) = hl_NIL A /\ forall l :e finseq A, forall x :e A, REVERSE v_18102 (hl_CONS A x l) = hl_APPEND A (REVERSE v_18102 l) (hl_CONS A x (hl_NIL A)) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))))))))).

// HOL Light: LENGTH : A list->num
Definition hl_LENGTH : set -> set :=
  fun A:set => hl_select (omega :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (fun LENGTH :e omega :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) => if forall v_18106 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))), LENGTH v_18106 (hl_NIL A) = hl_NUMERAL hl_zero /\ forall h :e A, forall t :e finseq A, LENGTH v_18106 (hl_CONS A h t) = hl_SUC (LENGTH v_18106 t) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: MAP : (A->B)->A list->B list
Definition hl_MAP : set -> set -> set :=
  fun A:set => fun B:set => hl_select (finseq B :^: finseq A :^: (B :^: A) :^: (omega :*: (omega :*: omega))) (fun MAP :e finseq B :^: finseq A :^: (B :^: A) :^: (omega :*: (omega :*: omega)) => if forall v_18113 :e omega :*: (omega :*: omega), (forall f :e B :^: A, MAP v_18113 f (hl_NIL A) = hl_NIL B) /\ forall f :e B :^: A, forall h :e A, forall t :e finseq A, MAP v_18113 f (hl_CONS A h t) = hl_CONS B (f h) (MAP v_18113 f t) then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: LAST : A list->A
Definition hl_LAST : set -> set :=
  fun A:set => hl_select (A :^: finseq A :^: (omega :*: (omega :*: (omega :*: omega)))) (fun LAST :e A :^: finseq A :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_18117 :e omega :*: (omega :*: (omega :*: omega)), forall h :e A, forall t :e finseq A, LAST v_18117 (hl_CONS A h t) = hl_COND A (if t = hl_NIL A then 1 else 0) h (LAST v_18117 t) then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))).

// HOL Light: BUTLAST : A list->A list
Definition hl_BUTLAST : set -> set :=
  fun A:set => hl_select (finseq A :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (fun BUTLAST :e finseq A :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) => if forall v_18121 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))), BUTLAST v_18121 (hl_NIL A) = hl_NIL A /\ forall h :e A, forall t :e finseq A, BUTLAST v_18121 (hl_CONS A h t) = hl_COND (finseq A) (if t = hl_NIL A then 1 else 0) (hl_NIL A) (hl_CONS A h (BUTLAST v_18121 t)) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))))))))).

// HOL Light: REPLICATE : num->A->A list
Definition hl_REPLICATE : set -> set :=
  fun A:set => hl_select (finseq A :^: A :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (fun REPLICATE :e finseq A :^: A :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) => if forall v_18125 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))), (forall x :e A, REPLICATE v_18125 (hl_NUMERAL hl_zero) x = hl_NIL A) /\ forall n :e omega, forall x :e A, REPLICATE v_18125 (hl_SUC n) x = hl_CONS A x (REPLICATE v_18125 n x) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))))))))))).

// HOL Light: NULL : A list->bool
Definition hl_NULL : set -> set :=
  fun A:set => hl_select (2 :^: finseq A :^: (omega :*: (omega :*: (omega :*: omega)))) (fun NULL :e 2 :^: finseq A :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_18129 :e omega :*: (omega :*: (omega :*: omega)), (NULL v_18129 (hl_NIL A) = 1 <-> True) /\ forall h :e A, forall t :e finseq A, NULL v_18129 (hl_CONS A h t) = 1 <-> False then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))).

// HOL Light: ALL : (A->bool)->A list->bool
Definition hl_ALL : set -> set :=
  fun A:set => hl_select (2 :^: finseq A :^: (2 :^: A) :^: (omega :*: (omega :*: omega))) (fun ALL :e 2 :^: finseq A :^: (2 :^: A) :^: (omega :*: (omega :*: omega)) => if forall v_18136 :e omega :*: (omega :*: omega), (forall P :e 2 :^: A, ALL v_18136 P (hl_NIL A) = 1 <-> True) /\ forall h :e A, forall P :e 2 :^: A, forall t :e finseq A, ALL v_18136 P (hl_CONS A h t) = 1 <-> P h = 1 /\ ALL v_18136 P t = 1 then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: EX : (A->bool)->A list->bool
Definition hl_EX : set -> set :=
  fun A:set => hl_select (2 :^: finseq A :^: (2 :^: A) :^: (omega :*: omega)) (fun EX :e 2 :^: finseq A :^: (2 :^: A) :^: (omega :*: omega) => if forall v_18143 :e omega :*: omega, (forall P :e 2 :^: A, EX v_18143 P (hl_NIL A) = 1 <-> False) /\ forall h :e A, forall P :e 2 :^: A, forall t :e finseq A, EX v_18143 P (hl_CONS A h t) = 1 <-> P h = 1 \/ EX v_18143 P t = 1 then 1 else 0) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))).

// HOL Light: ITLIST : (A->B->B)->A list->B->B
Definition hl_ITLIST : set -> set -> set :=
  fun A:set => fun B:set => hl_select (B :^: B :^: finseq A :^: (B :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (fun ITLIST :e B :^: B :^: finseq A :^: (B :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) => if forall v_18151 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))), (forall f :e B :^: B :^: A, forall b :e B, ITLIST v_18151 f (hl_NIL A) b = b) /\ forall h :e A, forall f :e B :^: B :^: A, forall t :e finseq A, forall b :e B, ITLIST v_18151 f (hl_CONS A h t) b = f h (ITLIST v_18151 f t b) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: MEM : A->A list->bool
Definition hl_MEM : set -> set :=
  fun A:set => hl_select (2 :^: finseq A :^: A :^: (omega :*: (omega :*: omega))) (fun MEM :e 2 :^: finseq A :^: A :^: (omega :*: (omega :*: omega)) => if forall v_18158 :e omega :*: (omega :*: omega), (forall x :e A, MEM v_18158 x (hl_NIL A) = 1 <-> False) /\ forall h x :e A, forall t :e finseq A, MEM v_18158 x (hl_CONS A h t) = 1 <-> x = h \/ MEM v_18158 x t = 1 then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: ALL2 : (A->B->bool)->A list->B list->bool
Definition hl_ALL2 : set -> set -> set :=
  fun A:set => fun B:set => hl_select (2 :^: finseq B :^: finseq A :^: (2 :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: omega)))) (fun ALL2 :e 2 :^: finseq B :^: finseq A :^: (2 :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_18166 :e omega :*: (omega :*: (omega :*: omega)), (forall P :e 2 :^: B :^: A, forall l2 :e finseq B, ALL2 v_18166 P (hl_NIL A) l2 = 1 <-> l2 = hl_NIL B) /\ forall h1 :e A, forall P :e 2 :^: B :^: A, forall t1 :e finseq A, forall l2 :e finseq B, ALL2 v_18166 P (hl_CONS A h1 t1) l2 = 1 <-> l2 = hl_NIL B /\ False \/ ~ l2 = hl_NIL B /\ (P h1 (hl_HD B l2) = 1 /\ ALL2 v_18166 P t1 (hl_TL B l2) = 1) then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))).

// HOL Light: MAP2 : (A->B->C)->A list->B list->C list
Definition hl_MAP2 : set -> set -> set -> set :=
  fun A:set => fun B:set => fun C:set => hl_select (finseq C :^: finseq B :^: finseq A :^: (C :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: omega)))) (fun MAP2 :e finseq C :^: finseq B :^: finseq A :^: (C :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_18174 :e omega :*: (omega :*: (omega :*: omega)), (forall f :e C :^: B :^: A, forall l :e finseq B, MAP2 v_18174 f (hl_NIL A) l = hl_NIL C) /\ forall h1 :e A, forall f :e C :^: B :^: A, forall t1 :e finseq A, forall l :e finseq B, MAP2 v_18174 f (hl_CONS A h1 t1) l = hl_CONS C (f h1 (hl_HD B l)) (MAP2 v_18174 f t1 (hl_TL B l)) then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))).

// HOL Light: EL : num->A list->A
Definition hl_EL : set -> set :=
  fun A:set => hl_select (A :^: finseq A :^: omega :^: (omega :*: omega)) (fun EL :e A :^: finseq A :^: omega :^: (omega :*: omega) => if forall v_18178 :e omega :*: omega, (forall l :e finseq A, EL v_18178 (hl_NUMERAL hl_zero) l = hl_HD A l) /\ forall n :e omega, forall l :e finseq A, EL v_18178 (hl_SUC n) l = EL v_18178 n (hl_TL A l) then 1 else 0) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))).

// HOL Light: FILTER : (A->bool)->A list->A list
Definition hl_FILTER : set -> set :=
  fun A:set => hl_select (finseq A :^: finseq A :^: (2 :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (fun FILTER :e finseq A :^: finseq A :^: (2 :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) => if forall v_18185 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))), (forall P :e 2 :^: A, FILTER v_18185 P (hl_NIL A) = hl_NIL A) /\ forall h :e A, forall P :e 2 :^: A, forall t :e finseq A, FILTER v_18185 P (hl_CONS A h t) = hl_COND (finseq A) (P h) (hl_CONS A h (FILTER v_18185 P t)) (FILTER v_18185 P t) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: ASSOC : A->(A#B) list->B
Definition hl_ASSOC : set -> set -> set :=
  fun A:set => fun B:set => hl_select (B :^: finseq (A :*: B) :^: A :^: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (fun ASSOC :e B :^: finseq (A :*: B) :^: A :^: (omega :*: (omega :*: (omega :*: (omega :*: omega)))) => if forall v_18192 :e omega :*: (omega :*: (omega :*: (omega :*: omega))), forall h :e A :*: B, forall a :e A, forall t :e finseq (A :*: B), ASSOC v_18192 a (hl_CONS (A :*: B) h t) = hl_COND B (if hl_FST A B h = a then 1 else 0) (hl_SND A B h) (ASSOC v_18192 a t) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))))))).

// HOL Light: ITLIST2 : (A->B->C->C)->A list->B list->C->C
Definition hl_ITLIST2 : set -> set -> set -> set :=
  fun A:set => fun B:set => fun C:set => hl_select (C :^: C :^: finseq B :^: finseq A :^: (C :^: C :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (fun ITLIST2 :e C :^: C :^: finseq B :^: finseq A :^: (C :^: C :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) => if forall v_18201 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))), (forall f :e C :^: C :^: B :^: A, forall l2 :e finseq B, forall b :e C, ITLIST2 v_18201 f (hl_NIL A) l2 b = b) /\ forall h1 :e A, forall f :e C :^: C :^: B :^: A, forall t1 :e finseq A, forall l2 :e finseq B, forall b :e C, ITLIST2 v_18201 f (hl_CONS A h1 t1) l2 b = f h1 (hl_HD B l2) (ITLIST2 v_18201 f t1 (hl_TL B l2) b) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: ZIP : A list->B list->(A#B) list
Definition hl_ZIP : set -> set -> set :=
  fun A:set => fun B:set => hl_select (finseq (A :*: B) :^: finseq B :^: finseq A :^: (omega :*: (omega :*: omega))) (fun ZIP :e finseq (A :*: B) :^: finseq B :^: finseq A :^: (omega :*: (omega :*: omega)) => if forall v_18205 :e omega :*: (omega :*: omega), (forall l2 :e finseq B, ZIP v_18205 (hl_NIL A) l2 = hl_NIL (A :*: B)) /\ forall h1 :e A, forall t1 :e finseq A, forall l2 :e finseq B, ZIP v_18205 (hl_CONS A h1 t1) l2 = hl_CONS (A :*: B) (hl_pair A B h1 (hl_HD B l2)) (ZIP v_18205 t1 (hl_TL B l2)) then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))))).

// HOL Light: ALLPAIRS : (A->B->bool)->A list->B list->bool
Definition hl_ALLPAIRS : set -> set -> set :=
  fun A:set => fun B:set => hl_select (2 :^: finseq B :^: finseq A :^: (2 :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (fun ALLPAIRS :e 2 :^: finseq B :^: finseq A :^: (2 :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) => if forall v_18213 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))), (forall f :e 2 :^: B :^: A, forall l :e finseq B, ALLPAIRS v_18213 f (hl_NIL A) l = 1 <-> True) /\ forall h :e A, forall f :e 2 :^: B :^: A, forall t :e finseq A, forall l :e finseq B, ALLPAIRS v_18213 f (hl_CONS A h t) l = 1 <-> hl_ALL B (f h) l = 1 /\ ALLPAIRS v_18213 f t l = 1 then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))))).

// HOL Light: PAIRWISE : (A->A->bool)->A list->bool
Definition hl_PAIRWISE : set -> set :=
  fun A:set => hl_select (2 :^: finseq A :^: (2 :^: A :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (fun PAIRWISE :e 2 :^: finseq A :^: (2 :^: A :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) => if forall v_18220 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))), (forall r :e 2 :^: A :^: A, PAIRWISE v_18220 r (hl_NIL A) = 1 <-> True) /\ forall h :e A, forall r :e 2 :^: A :^: A, forall t :e finseq A, PAIRWISE v_18220 r (hl_CONS A h t) = 1 <-> hl_ALL A (r h) t = 1 /\ PAIRWISE v_18220 r t = 1 then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))))).

// HOL Light: list_of_seq : (num->A)->num->A list
Definition hl_list_of_seq : set -> set :=
  fun A:set => hl_select (finseq A :^: omega :^: (A :^: omega) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (fun list_of_seq :e finseq A :^: omega :^: (A :^: omega) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) => if forall v_18227 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))), (forall s :e A :^: omega, list_of_seq v_18227 s (hl_NUMERAL hl_zero) = hl_NIL A) /\ forall s :e A :^: omega, forall n :e omega, list_of_seq v_18227 s (hl_SUC n) = hl_APPEND A (list_of_seq v_18227 s n) (hl_CONS A (s n) (hl_NIL A)) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))))))).

// HOL Light: dist : num#num->num
Definition hl_dist : set :=
  fun v_23033 :e omega :*: omega => hl_add (hl_sub (hl_FST omega omega v_23033) (hl_SND omega omega v_23033)) (hl_sub (hl_SND omega omega v_23033) (hl_FST omega omega v_23033)).

// HOL Light: is_nadd : (num->num)->bool
Definition hl_is_nadd : set :=
  fun v_23343 :e omega :^: omega => if exists B :e omega, forall m n :e omega, hl_le (hl_dist (hl_pair omega omega (hl_mul m (v_23343 n)) (hl_mul n (v_23343 m)))) (hl_mul B (hl_add m n)) = 1 then 1 else 0.

// HOL Light: real_sub : real->real->real
Definition hl_real_sub : set :=
  fun v_24112 :e R => fun v_24113 :e R => hl_real_add v_24112 (hl_real_neg v_24113).

// HOL Light: real_lt : real->real->bool
Definition hl_real_lt : set :=
  fun v_24124 :e R => fun v_24125 :e R => if ~ hl_real_le v_24125 v_24124 = 1 then 1 else 0.

// HOL Light: real_ge : real->real->bool
Definition hl_real_ge : set :=
  fun v_24136 :e R => fun v_24137 :e R => hl_real_le v_24137 v_24136.

// HOL Light: real_gt : real->real->bool
Definition hl_real_gt : set :=
  fun v_24148 :e R => fun v_24149 :e R => hl_real_lt v_24149 v_24148.

// HOL Light: real_abs : real->real
Definition hl_real_abs : set :=
  fun v_24160 :e R => hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v_24160) v_24160 (hl_real_neg v_24160).

// HOL Light: real_pow : real->num->real
Definition hl_real_pow : set :=
  hl_select (R :^: omega :^: R :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (fun real_pow :e R :^: omega :^: R :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) => if forall v_24171 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))), (forall x :e R, real_pow v_24171 x (hl_NUMERAL hl_zero) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall x :e R, forall n :e omega, real_pow v_24171 x (hl_SUC n) = hl_real_mul x (real_pow v_24171 x n) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))).

// HOL Light: real_div : real->real->real
Definition hl_real_div : set :=
  fun v_24172 :e R => fun v_24173 :e R => hl_real_mul v_24172 (hl_real_inv v_24173).

// HOL Light: real_max : real->real->real
Definition hl_real_max : set :=
  fun v_24184 :e R => fun v_24185 :e R => hl_COND R (hl_real_le v_24184 v_24185) v_24185 v_24184.

// HOL Light: real_min : real->real->real
Definition hl_real_min : set :=
  fun v_24196 :e R => fun v_24197 :e R => hl_COND R (hl_real_le v_24196 v_24197) v_24196 v_24197.

// HOL Light: real_sgn : real->real
Definition hl_real_sgn : set :=
  fun v_26684 :e R => hl_COND R (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) v_26684) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_COND R (hl_real_lt v_26684 (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL hl_zero))).

// HOL Light: sqrt : real->real
Definition hl_sqrt : set :=
  fun v_27235 :e R => hl_select R (fun y :e R => if hl_real_sgn y = hl_real_sgn v_27235 /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs v_27235 then 1 else 0).

// HOL Light: DECIMAL : num->num->real
Definition hl_DECIMAL : set :=
  fun v_27914 :e omega => fun v_27915 :e omega => hl_real_div (hl_real_of_num v_27914) (hl_real_of_num v_27915).

// HOL Light: integer : real->bool
Definition hl_integer : set :=
  fun v_28801 :e R => if exists n :e omega, hl_real_abs v_28801 = hl_real_of_num n then 1 else 0.

// HOL Light type definition int (abs int_of_real, rep real_of_int)
Definition hl_ty_int : set :=
  {x :e R | hl_integer x = 1}.
Definition hl_int_of_real : set :=
  hl_subtype_abs R hl_integer.
Definition hl_real_of_int : set :=
  hl_subtype_rep R hl_integer.

// HOL Light: int_le : int->int->bool
Definition hl_int_le : set :=
  fun v_28827 :e hl_ty_int => fun v_28828 :e hl_ty_int => hl_real_le (hl_real_of_int v_28827) (hl_real_of_int v_28828).

// HOL Light: int_lt : int->int->bool
Definition hl_int_lt : set :=
  fun v_28839 :e hl_ty_int => fun v_28840 :e hl_ty_int => hl_real_lt (hl_real_of_int v_28839) (hl_real_of_int v_28840).

// HOL Light: int_ge : int->int->bool
Definition hl_int_ge : set :=
  fun v_28851 :e hl_ty_int => fun v_28852 :e hl_ty_int => hl_real_ge (hl_real_of_int v_28851) (hl_real_of_int v_28852).

// HOL Light: int_gt : int->int->bool
Definition hl_int_gt : set :=
  fun v_28863 :e hl_ty_int => fun v_28864 :e hl_ty_int => hl_real_gt (hl_real_of_int v_28863) (hl_real_of_int v_28864).

// HOL Light: int_of_num : num->int
Definition hl_int_of_num : set :=
  fun v_28875 :e omega => hl_int_of_real (hl_real_of_num v_28875).

// HOL Light: int_neg : int->int
Definition hl_int_neg : set :=
  fun v_28880 :e hl_ty_int => hl_int_of_real (hl_real_neg (hl_real_of_int v_28880)).

// HOL Light: int_add : int->int->int
Definition hl_int_add : set :=
  fun v_28889 :e hl_ty_int => fun v_28890 :e hl_ty_int => hl_int_of_real (hl_real_add (hl_real_of_int v_28889) (hl_real_of_int v_28890)).

// HOL Light: int_sub : int->int->int
Definition hl_int_sub : set :=
  fun v_28921 :e hl_ty_int => fun v_28922 :e hl_ty_int => hl_int_of_real (hl_real_sub (hl_real_of_int v_28921) (hl_real_of_int v_28922)).

// HOL Light: int_mul : int->int->int
Definition hl_int_mul : set :=
  fun v_28933 :e hl_ty_int => fun v_28934 :e hl_ty_int => hl_int_of_real (hl_real_mul (hl_real_of_int v_28933) (hl_real_of_int v_28934)).

// HOL Light: int_abs : int->int
Definition hl_int_abs : set :=
  fun v_28953 :e hl_ty_int => hl_int_of_real (hl_real_abs (hl_real_of_int v_28953)).

// HOL Light: int_sgn : int->int
Definition hl_int_sgn : set :=
  fun v_28964 :e hl_ty_int => hl_int_of_real (hl_real_sgn (hl_real_of_int v_28964)).

// HOL Light: int_max : int->int->int
Definition hl_int_max : set :=
  fun v_29024 :e hl_ty_int => fun v_29025 :e hl_ty_int => hl_int_of_real (hl_real_max (hl_real_of_int v_29024) (hl_real_of_int v_29025)).

// HOL Light: int_min : int->int->int
Definition hl_int_min : set :=
  fun v_29042 :e hl_ty_int => fun v_29043 :e hl_ty_int => hl_int_of_real (hl_real_min (hl_real_of_int v_29042) (hl_real_of_int v_29043)).

// HOL Light: int_pow : int->num->int
Definition hl_int_pow : set :=
  fun v_29060 :e hl_ty_int => fun v_29061 :e omega => hl_int_of_real (hl_real_pow (hl_real_of_int v_29060) v_29061).

// HOL Light: div : int->int->int
Definition hl_div : set :=
  hl_select (hl_ty_int :^: hl_ty_int :^: hl_ty_int :^: (omega :*: (omega :*: omega))) (fun q :e hl_ty_int :^: hl_ty_int :^: hl_ty_int :^: (omega :*: (omega :*: omega)) => if forall v_29412 :e omega :*: (omega :*: omega), exists r :e hl_ty_int :^: hl_ty_int :^: hl_ty_int, forall m n :e hl_ty_int, n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (q v_29412 m n = hl_int_of_num (hl_NUMERAL hl_zero) /\ r m n = m) \/ ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (r m n) = 1 /\ (hl_int_lt (r m n) (hl_int_abs n) = 1 /\ m = hl_int_add (hl_int_mul (q v_29412 m n) n) (r m n))) then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))))).

// HOL Light: rem : int->int->int
Definition hl_rem : set :=
  hl_select (hl_ty_int :^: hl_ty_int :^: hl_ty_int :^: (omega :*: (omega :*: omega))) (fun r :e hl_ty_int :^: hl_ty_int :^: hl_ty_int :^: (omega :*: (omega :*: omega)) => if forall v_29413 :e omega :*: (omega :*: omega), forall m n :e hl_ty_int, n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_div m n = hl_int_of_num (hl_NUMERAL hl_zero) /\ r v_29413 m n = m) \/ ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (r v_29413 m n) = 1 /\ (hl_int_lt (r v_29413 m n) (hl_int_abs n) = 1 /\ m = hl_int_add (hl_int_mul (hl_div m n) n) (r v_29413 m n))) then 1 else 0) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))).

// HOL Light: == : A->A->(A->A->bool)->bool
Definition hl_sym_3d3d : set -> set :=
  fun A:set => fun v_29688 :e A => fun v_29689 :e A => fun v_29690 :e 2 :^: A :^: A => v_29690 v_29688 v_29689.

// HOL Light: real_mod : real->real->real->bool
Definition hl_real_mod : set :=
  fun v_29709 :e R => fun v_29710 :e R => fun v_29711 :e R => if exists q :e R, hl_integer q = 1 /\ hl_real_sub v_29710 v_29711 = hl_real_mul q v_29709 then 1 else 0.

// HOL Light: int_divides : int->int->bool
Definition hl_int_divides : set :=
  fun v_29730 :e hl_ty_int => fun v_29731 :e hl_ty_int => if exists x :e hl_ty_int, v_29731 = hl_int_mul v_29730 x then 1 else 0.

// HOL Light: int_mod : int->int->int->bool
Definition hl_int_mod : set :=
  fun v_29750 :e hl_ty_int => fun v_29751 :e hl_ty_int => fun v_29752 :e hl_ty_int => hl_int_divides v_29750 (hl_int_sub v_29751 v_29752).

// HOL Light: int_coprime : int#int->bool
Definition hl_int_coprime : set :=
  fun v_29777 :e hl_ty_int :*: hl_ty_int => if exists x y :e hl_ty_int, hl_int_add (hl_int_mul (hl_FST hl_ty_int hl_ty_int v_29777) x) (hl_int_mul (hl_SND hl_ty_int hl_ty_int v_29777) y) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0.

// HOL Light: int_gcd : int#int->int
Definition hl_int_gcd : set :=
  hl_select (hl_ty_int :^: (hl_ty_int :*: hl_ty_int) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (fun d :e hl_ty_int :^: (hl_ty_int :*: hl_ty_int) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) => if forall v_31046 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))), forall a b :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (d v_31046 (hl_pair hl_ty_int hl_ty_int a b)) = 1 /\ (hl_int_divides (d v_31046 (hl_pair hl_ty_int hl_ty_int a b)) a = 1 /\ (hl_int_divides (d v_31046 (hl_pair hl_ty_int hl_ty_int a b)) b = 1 /\ exists x y :e hl_ty_int, d v_31046 (hl_pair hl_ty_int hl_ty_int a b) = hl_int_add (hl_int_mul a x) (hl_int_mul b y))) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))).

// HOL Light: int_lcm : int#int->int
Definition hl_int_lcm : set :=
  fun v_31047 :e hl_ty_int :*: hl_ty_int => hl_COND hl_ty_int (if hl_int_mul (hl_FST hl_ty_int hl_ty_int v_31047) (hl_SND hl_ty_int hl_ty_int v_31047) = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_div (hl_int_abs (hl_int_mul (hl_FST hl_ty_int hl_ty_int v_31047) (hl_SND hl_ty_int hl_ty_int v_31047))) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_FST hl_ty_int hl_ty_int v_31047) (hl_SND hl_ty_int hl_ty_int v_31047)))).

// HOL Light: num_of_int : int->num
Definition hl_num_of_int : set :=
  fun v_31320 :e hl_ty_int => hl_select omega (fun n :e omega => if hl_int_of_num n = v_31320 then 1 else 0).

// HOL Light: num_divides : num->num->bool
Definition hl_num_divides : set :=
  fun v_31352 :e omega => fun v_31353 :e omega => hl_int_divides (hl_int_of_num v_31352) (hl_int_of_num v_31353).

// HOL Light: num_mod : num->num->num->bool
Definition hl_num_mod : set :=
  fun v_31364 :e omega => fun v_31365 :e omega => fun v_31366 :e omega => hl_int_mod (hl_int_of_num v_31364) (hl_int_of_num v_31365) (hl_int_of_num v_31366).

// HOL Light: num_coprime : num#num->bool
Definition hl_num_coprime : set :=
  fun v_31385 :e omega :*: omega => hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_FST omega omega v_31385)) (hl_int_of_num (hl_SND omega omega v_31385))).

// HOL Light: num_gcd : num#num->num
Definition hl_num_gcd : set :=
  fun v_31394 :e omega :*: omega => hl_num_of_int (hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_FST omega omega v_31394)) (hl_int_of_num (hl_SND omega omega v_31394)))).

// HOL Light: num_lcm : num#num->num
Definition hl_num_lcm : set :=
  fun v_31403 :e omega :*: omega => hl_num_of_int (hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_FST omega omega v_31403)) (hl_int_of_num (hl_SND omega omega v_31403)))).

// HOL Light: prime : num->bool
Definition hl_prime : set :=
  fun v_32188 :e omega => if ~ v_32188 = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall x :e omega, hl_num_divides x v_32188 = 1 -> x = hl_NUMERAL (hl_BIT1 hl_zero) \/ x = v_32188 then 1 else 0.

// HOL Light: real_zpow : real->int->real
Definition hl_real_zpow : set :=
  fun v_32346 :e R => fun v_32347 :e hl_ty_int => hl_COND R (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) v_32347) (hl_real_pow v_32346 (hl_num_of_int v_32347)) (hl_real_inv (hl_real_pow v_32346 (hl_num_of_int (hl_int_neg v_32347)))).

// HOL Light: IN : A->(A->bool)->bool
Definition hl_IN : set -> set :=
  fun A:set => fun v_32403 :e A => fun v_32404 :e 2 :^: A => v_32404 v_32403.

// HOL Light type definition group (abs group, rep group_operations)
Definition hl_ty_group : set -> set :=
  fun A:set => {x :e 2 :^: A :*: (A :*: (A :^: A :*: A :^: A :^: A)) | (fun r :e 2 :^: A :*: (A :*: (A :^: A :*: A :^: A :^: A)) => if hl_IN A (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ ((forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_IN A (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) /\ ((forall x y :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ hl_IN A y (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_IN A (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x y) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) /\ ((forall x y z :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ (hl_IN A y (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ hl_IN A z (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) y z) = hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x y) z) /\ ((forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x = x /\ hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) = x) /\ forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) x = hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) /\ hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) = hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r))))) then 1 else 0) x = 1}.
Definition hl_group : set -> set :=
  fun A:set => hl_subtype_abs (2 :^: A :*: (A :*: (A :^: A :*: A :^: A :^: A))) (fun r :e 2 :^: A :*: (A :*: (A :^: A :*: A :^: A :^: A)) => if hl_IN A (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ ((forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_IN A (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) /\ ((forall x y :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ hl_IN A y (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_IN A (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x y) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) /\ ((forall x y z :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ (hl_IN A y (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ hl_IN A z (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) y z) = hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x y) z) /\ ((forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x = x /\ hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) = x) /\ forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) x = hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) /\ hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) = hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r))))) then 1 else 0).
Definition hl_group_operations : set -> set :=
  fun A:set => hl_subtype_rep (2 :^: A :*: (A :*: (A :^: A :*: A :^: A :^: A))) (fun r :e 2 :^: A :*: (A :*: (A :^: A :*: A :^: A :^: A)) => if hl_IN A (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ ((forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_IN A (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) /\ ((forall x y :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ hl_IN A y (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_IN A (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x y) (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) /\ ((forall x y z :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ (hl_IN A y (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 /\ hl_IN A z (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1) -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) y z) = hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x y) z) /\ ((forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x = x /\ hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) = x) /\ forall x :e A, hl_IN A x (hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) = 1 -> hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) x = hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r) /\ hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x (hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r)) x) = hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) r))))) then 1 else 0).

// HOL Light: GSPEC : (A->bool)->A->bool
Definition hl_GSPEC : set -> set :=
  fun A:set => fun v_32415 :e 2 :^: A => v_32415.

// HOL Light: SETSPEC : A->bool->A->bool
Definition hl_SETSPEC : set -> set :=
  fun A:set => fun v_32420 :e A => fun v_32421 :e 2 => fun v_32422 :e A => if v_32421 = 1 /\ v_32420 = v_32422 then 1 else 0.

// HOL Light: EMPTY : A->bool
Definition hl_EMPTY : set -> set :=
  fun A:set => fun x :e A => if False then 1 else 0.

// HOL Light: INSERT : A->(A->bool)->A->bool
Definition hl_INSERT : set -> set :=
  fun A:set => fun v_32459 :e A => fun v_32460 :e 2 :^: A => fun y :e A => if hl_IN A y v_32460 = 1 \/ y = v_32459 then 1 else 0.

// HOL Light: UNIV : A->bool
Definition hl_UNIV : set -> set :=
  fun A:set => fun x :e A => if True then 1 else 0.

// HOL Light: UNION : (A->bool)->(A->bool)->A->bool
Definition hl_UNION : set -> set :=
  fun A:set => fun v_32471 :e 2 :^: A => fun v_32472 :e 2 :^: A => hl_GSPEC A (fun GEN_PVAR_0 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_0 (if hl_IN A x v_32471 = 1 \/ hl_IN A x v_32472 = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: UNIONS : ((A->bool)->bool)->A->bool
Definition hl_UNIONS : set -> set :=
  fun A:set => fun v_32483 :e 2 :^: (2 :^: A) => hl_GSPEC A (fun GEN_PVAR_1 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1 (if exists u :e 2 :^: A, hl_IN (2 :^: A) u v_32483 = 1 /\ hl_IN A x u = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: INTER : (A->bool)->(A->bool)->A->bool
Definition hl_INTER : set -> set :=
  fun A:set => fun v_32488 :e 2 :^: A => fun v_32489 :e 2 :^: A => hl_GSPEC A (fun GEN_PVAR_2 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2 (if hl_IN A x v_32488 = 1 /\ hl_IN A x v_32489 = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light type definition net (abs mk_net, rep dest_net)
Definition hl_ty_net : set -> set :=
  fun A:set => {x :e 2 :^: (2 :^: A) :*: 2 :^: A | (fun r :e 2 :^: (2 :^: A) :*: 2 :^: A => if forall s t :e 2 :^: A, hl_IN (2 :^: A) s (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 /\ hl_IN (2 :^: A) t (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 -> hl_IN (2 :^: A) (hl_INTER A s t) (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 then 1 else 0) x = 1}.
Definition hl_mk_net : set -> set :=
  fun A:set => hl_subtype_abs (2 :^: (2 :^: A) :*: 2 :^: A) (fun r :e 2 :^: (2 :^: A) :*: 2 :^: A => if forall s t :e 2 :^: A, hl_IN (2 :^: A) s (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 /\ hl_IN (2 :^: A) t (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 -> hl_IN (2 :^: A) (hl_INTER A s t) (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 then 1 else 0).
Definition hl_dest_net : set -> set :=
  fun A:set => hl_subtype_rep (2 :^: (2 :^: A) :*: 2 :^: A) (fun r :e 2 :^: (2 :^: A) :*: 2 :^: A => if forall s t :e 2 :^: A, hl_IN (2 :^: A) s (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 /\ hl_IN (2 :^: A) t (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 -> hl_IN (2 :^: A) (hl_INTER A s t) (hl_FST (2 :^: (2 :^: A)) (2 :^: A) r) = 1 then 1 else 0).

// HOL Light: INTERS : ((A->bool)->bool)->A->bool
Definition hl_INTERS : set -> set :=
  fun A:set => fun v_32500 :e 2 :^: (2 :^: A) => hl_GSPEC A (fun GEN_PVAR_3 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_3 (if forall u :e 2 :^: A, hl_IN (2 :^: A) u v_32500 = 1 -> hl_IN A x u = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: DIFF : (A->bool)->(A->bool)->A->bool
Definition hl_DIFF : set -> set :=
  fun A:set => fun v_32505 :e 2 :^: A => fun v_32506 :e 2 :^: A => hl_GSPEC A (fun GEN_PVAR_4 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4 (if hl_IN A x v_32505 = 1 /\ ~ hl_IN A x v_32506 = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: DELETE : (A->bool)->A->A->bool
Definition hl_DELETE : set -> set :=
  fun A:set => fun v_32517 :e 2 :^: A => fun v_32518 :e A => hl_GSPEC A (fun GEN_PVAR_6 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_6 (if hl_IN A y v_32517 = 1 /\ ~ y = v_32518 then 1 else 0) y = 1 then 1 else 0).

// HOL Light: SUBSET : (A->bool)->(A->bool)->bool
Definition hl_SUBSET : set -> set :=
  fun A:set => fun v_32529 :e 2 :^: A => fun v_32530 :e 2 :^: A => if forall x :e A, hl_IN A x v_32529 = 1 -> hl_IN A x v_32530 = 1 then 1 else 0.

// HOL Light: PSUBSET : (A->bool)->(A->bool)->bool
Definition hl_PSUBSET : set -> set :=
  fun A:set => fun v_32541 :e 2 :^: A => fun v_32542 :e 2 :^: A => if hl_SUBSET A v_32541 v_32542 = 1 /\ ~ v_32541 = v_32542 then 1 else 0.

// HOL Light: DISJOINT : (A->bool)->(A->bool)->bool
Definition hl_DISJOINT : set -> set :=
  fun A:set => fun v_32553 :e 2 :^: A => fun v_32554 :e 2 :^: A => if hl_INTER A v_32553 v_32554 = hl_EMPTY A then 1 else 0.

// HOL Light: SING : (A->bool)->bool
Definition hl_SING : set -> set :=
  fun A:set => fun v_32565 :e 2 :^: A => if exists x :e A, v_32565 = hl_INSERT A x (hl_EMPTY A) then 1 else 0.

// HOL Light: FINITE : (A->bool)->bool
Definition hl_FINITE : set -> set :=
  fun A:set => fun a :e 2 :^: A => if forall FINITE' :e 2 :^: (2 :^: A), (forall a1 :e 2 :^: A, a1 = hl_EMPTY A \/ (exists x :e A, exists s :e 2 :^: A, a1 = hl_INSERT A x s /\ FINITE' s = 1) -> FINITE' a1 = 1) -> FINITE' a = 1 then 1 else 0.

// HOL Light type definition frag (abs mk_frag, rep dest_frag)
Definition hl_ty_frag : set -> set :=
  fun A:set => {x :e hl_ty_int :^: A | (fun r :e hl_ty_int :^: A => hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_711 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_711 (if ~ r x = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) x = 1}.
Definition hl_mk_frag : set -> set :=
  fun A:set => hl_subtype_abs (hl_ty_int :^: A) (fun r :e hl_ty_int :^: A => hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_711 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_711 (if ~ r x = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))).
Definition hl_dest_frag : set -> set :=
  fun A:set => hl_subtype_rep (hl_ty_int :^: A) (fun r :e hl_ty_int :^: A => hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_711 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_711 (if ~ r x = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))).

// HOL Light type definition matroid (abs matroid, rep dest_matroid)
Definition hl_ty_matroid : set -> set :=
  fun A:set => {x :e 2 :^: A :*: 2 :^: A :^: (2 :^: A) | (fun r :e 2 :^: A :*: 2 :^: A :^: (2 :^: A) => if (forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1) /\ ((forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A s (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1) /\ ((forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r t) = 1) /\ ((forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) /\ ((forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1 -> exists s' :e 2 :^: A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s') = 1)) /\ forall s :e 2 :^: A, forall x y :e A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ (hl_IN A x (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ (hl_IN A y (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_INSERT A x s)) = 1 /\ ~ hl_IN A y (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1)) -> hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_INSERT A y s)) = 1)))) then 1 else 0) x = 1}.
Definition hl_matroid : set -> set :=
  fun A:set => hl_subtype_abs (2 :^: A :*: 2 :^: A :^: (2 :^: A)) (fun r :e 2 :^: A :*: 2 :^: A :^: (2 :^: A) => if (forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1) /\ ((forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A s (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1) /\ ((forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r t) = 1) /\ ((forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) /\ ((forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1 -> exists s' :e 2 :^: A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s') = 1)) /\ forall s :e 2 :^: A, forall x y :e A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ (hl_IN A x (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ (hl_IN A y (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_INSERT A x s)) = 1 /\ ~ hl_IN A y (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1)) -> hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_INSERT A y s)) = 1)))) then 1 else 0).
Definition hl_dest_matroid : set -> set :=
  fun A:set => hl_subtype_rep (2 :^: A :*: 2 :^: A :^: (2 :^: A)) (fun r :e 2 :^: A :*: 2 :^: A :^: (2 :^: A) => if (forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1) /\ ((forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A s (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1) /\ ((forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r t) = 1) /\ ((forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) /\ ((forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1 -> exists s' :e 2 :^: A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s') = 1)) /\ forall s :e 2 :^: A, forall x y :e A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ (hl_IN A x (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ (hl_IN A y (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_INSERT A x s)) = 1 /\ ~ hl_IN A y (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1)) -> hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_INSERT A y s)) = 1)))) then 1 else 0).

// HOL Light: INFINITE : (A->bool)->bool
Definition hl_INFINITE : set -> set :=
  fun A:set => fun v_32574 :e 2 :^: A => if ~ hl_FINITE A v_32574 = 1 then 1 else 0.

// HOL Light: IMAGE : (A->B)->(A->bool)->B->bool
Definition hl_IMAGE : set -> set -> set :=
  fun A:set => fun B:set => fun v_32579 :e B :^: A => fun v_32580 :e 2 :^: A => hl_GSPEC B (fun GEN_PVAR_7 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_7 (if exists x :e A, hl_IN A x v_32580 = 1 /\ y = v_32579 x then 1 else 0) y = 1 then 1 else 0).

// HOL Light: INJ : (A->B)->(A->bool)->(B->bool)->bool
Definition hl_INJ : set -> set -> set :=
  fun A:set => fun B:set => fun v_32591 :e B :^: A => fun v_32592 :e 2 :^: A => fun v_32593 :e 2 :^: B => if (forall x :e A, hl_IN A x v_32592 = 1 -> hl_IN B (v_32591 x) v_32593 = 1) /\ forall x y :e A, hl_IN A x v_32592 = 1 /\ (hl_IN A y v_32592 = 1 /\ v_32591 x = v_32591 y) -> x = y then 1 else 0.

// HOL Light: SURJ : (A->B)->(A->bool)->(B->bool)->bool
Definition hl_SURJ : set -> set -> set :=
  fun A:set => fun B:set => fun v_32612 :e B :^: A => fun v_32613 :e 2 :^: A => fun v_32614 :e 2 :^: B => if (forall x :e A, hl_IN A x v_32613 = 1 -> hl_IN B (v_32612 x) v_32614 = 1) /\ forall x :e B, hl_IN B x v_32614 = 1 -> exists y :e A, hl_IN A y v_32613 = 1 /\ v_32612 y = x then 1 else 0.

// HOL Light: BIJ : (A->B)->(A->bool)->(B->bool)->bool
Definition hl_BIJ : set -> set -> set :=
  fun A:set => fun B:set => fun v_32633 :e B :^: A => fun v_32634 :e 2 :^: A => fun v_32635 :e 2 :^: B => if hl_INJ A B v_32633 v_32634 v_32635 = 1 /\ hl_SURJ A B v_32633 v_32634 v_32635 = 1 then 1 else 0.

// HOL Light: CHOICE : (A->bool)->A
Definition hl_CHOICE : set -> set :=
  fun A:set => fun v_32654 :e 2 :^: A => hl_select A (fun x :e A => hl_IN A x v_32654).

// HOL Light: REST : (A->bool)->A->bool
Definition hl_REST : set -> set :=
  fun A:set => fun v_32659 :e 2 :^: A => hl_DELETE A v_32659 (hl_CHOICE A v_32659).

// HOL Light: FINREC : (A->B->B)->B->(A->bool)->B->num->bool
Definition hl_FINREC : set -> set -> set :=
  fun A:set => fun B:set => hl_select (2 :^: omega :^: B :^: (2 :^: A) :^: B :^: (B :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (fun FINREC :e 2 :^: omega :^: B :^: (2 :^: A) :^: B :^: (B :^: B :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) => if forall v_42261 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))), (forall f :e B :^: B :^: A, forall s :e 2 :^: A, forall a b :e B, FINREC v_42261 f b s a (hl_NUMERAL hl_zero) = 1 <-> s = hl_EMPTY A /\ a = b) /\ forall b :e B, forall s :e 2 :^: A, forall n :e omega, forall a :e B, forall f :e B :^: B :^: A, FINREC v_42261 f b s a (hl_SUC n) = 1 <-> exists x :e A, exists c :e B, hl_IN A x s = 1 /\ (FINREC v_42261 f b (hl_DELETE A s x) c n = 1 /\ a = f x c) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: ITSET : (A->B->B)->(A->bool)->B->B
Definition hl_ITSET : set -> set -> set :=
  fun A:set => fun B:set => fun v_43111 :e B :^: B :^: A => fun v_43112 :e 2 :^: A => fun v_43113 :e B => hl_select (B :^: (2 :^: A)) (fun g :e B :^: (2 :^: A) => if g (hl_EMPTY A) = v_43113 /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND B (hl_IN A x s) (g s) (v_43111 x (g s)) then 1 else 0) v_43112.

// HOL Light: CARD : (A->bool)->num
Definition hl_CARD : set -> set :=
  fun A:set => fun v_43314 :e 2 :^: A => hl_ITSET A omega (fun x :e A => fun n :e omega => hl_SUC n) v_43314 (hl_NUMERAL hl_zero).

// HOL Light: HAS_SIZE : (A->bool)->num->bool
Definition hl_HAS_SIZE : set -> set :=
  fun A:set => fun v_43555 :e 2 :^: A => fun v_43556 :e omega => if hl_FINITE A v_43555 = 1 /\ hl_CARD A v_43555 = v_43556 then 1 else 0.

// HOL Light: CROSS : (A->bool)->(B->bool)->A#B->bool
Definition hl_CROSS : set -> set -> set :=
  fun A:set => fun B:set => fun v_47474 :e 2 :^: A => fun v_47475 :e 2 :^: B => hl_GSPEC (A :*: B) (fun GEN_PVAR_132 :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) GEN_PVAR_132 (if hl_IN A x v_47474 = 1 /\ hl_IN B y v_47475 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0).

// HOL Light: ARB : A
Definition hl_ARB : set -> set :=
  fun A:set => hl_select A (fun x :e A => if False then 1 else 0).

// HOL Light: EXTENSIONAL : (A->bool)->(A->B)->bool
Definition hl_EXTENSIONAL : set -> set -> set :=
  fun A:set => fun B:set => fun v_48248 :e 2 :^: A => hl_GSPEC (B :^: A) (fun GEN_PVAR_141 :e B :^: A => if exists f :e B :^: A, hl_SETSPEC (B :^: A) GEN_PVAR_141 (if forall x :e A, ~ hl_IN A x v_48248 = 1 -> f x = hl_ARB B then 1 else 0) f = 1 then 1 else 0).

// HOL Light: RESTRICTION : (A->bool)->(A->B)->A->B
Definition hl_RESTRICTION : set -> set -> set :=
  fun A:set => fun B:set => fun v_48300 :e 2 :^: A => fun v_48301 :e B :^: A => fun v_48302 :e A => hl_COND B (hl_IN A v_48302 v_48300) (v_48301 v_48302) (hl_ARB B).

// HOL Light: cartesian_product : (K->bool)->(K->A->bool)->(K->A)->bool
Definition hl_cartesian_product : set -> set -> set :=
  fun K:set => fun A:set => fun v_48495 :e 2 :^: K => fun v_48496 :e 2 :^: A :^: K => hl_GSPEC (A :^: K) (fun GEN_PVAR_142 :e A :^: K => if exists f :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_142 (if hl_EXTENSIONAL K A v_48495 f = 1 /\ forall i :e K, hl_IN K i v_48495 = 1 -> hl_IN A (f i) (v_48496 i) = 1 then 1 else 0) f = 1 then 1 else 0).

// HOL Light: product_map : (K->bool)->(K->A->B)->(K->A)->K->B
Definition hl_product_map : set -> set -> set -> set :=
  fun K:set => fun A:set => fun B:set => fun v_49544 :e 2 :^: K => fun v_49545 :e B :^: A :^: K => fun x :e A :^: K => hl_RESTRICTION K B v_49544 (fun i :e K => v_49545 i (x i)).

// HOL Light: disjoint_union : (K->bool)->(K->A->bool)->K#A->bool
Definition hl_disjoint_union : set -> set -> set :=
  fun K:set => fun A:set => fun v_49680 :e 2 :^: K => fun v_49681 :e 2 :^: A :^: K => hl_GSPEC (K :*: A) (fun GEN_PVAR_145 :e K :*: A => if exists i :e K, exists x :e A, hl_SETSPEC (K :*: A) GEN_PVAR_145 (if hl_IN K i v_49680 = 1 /\ hl_IN A x (v_49681 i) = 1 then 1 else 0) (hl_pair K A i x) = 1 then 1 else 0).

// HOL Light: set_of_list : A list->A->bool
Definition hl_set_of_list : set -> set :=
  fun A:set => hl_select (2 :^: A :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (fun set_of_list :e 2 :^: A :^: finseq A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) => if forall v_56577 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))), set_of_list v_56577 (hl_NIL A) = hl_EMPTY A /\ forall h :e A, forall t :e finseq A, set_of_list v_56577 (hl_CONS A h t) = hl_INSERT A h (set_of_list v_56577 t) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))))))).

// HOL Light: list_of_set : (A->bool)->A list
Definition hl_list_of_set : set -> set :=
  fun A:set => fun v_56578 :e 2 :^: A => hl_select (finseq A) (fun l :e finseq A => if hl_set_of_list A l = v_56578 /\ hl_LENGTH A l = hl_CARD A v_56578 then 1 else 0).

// HOL Light: pairwise : (A->A->bool)->(A->bool)->bool
Definition hl_pairwise : set -> set :=
  fun A:set => fun v_56768 :e 2 :^: A :^: A => fun v_56769 :e 2 :^: A => if forall x y :e A, hl_IN A x v_56769 = 1 /\ (hl_IN A y v_56769 = 1 /\ ~ x = y) -> v_56768 x y = 1 then 1 else 0.

// HOL Light: UNION_OF : (((A->bool)->bool)->bool)->((A->bool)->bool)->(A->bool)->bool
Definition hl_UNION_OF : set -> set :=
  fun A:set => fun v_57481 :e 2 :^: (2 :^: (2 :^: A)) => fun v_57482 :e 2 :^: (2 :^: A) => fun s :e 2 :^: A => if exists u :e 2 :^: (2 :^: A), v_57481 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> v_57482 c = 1) /\ hl_UNIONS A u = s) then 1 else 0.

// HOL Light: INTERSECTION_OF : (((A->bool)->bool)->bool)->((A->bool)->bool)->(A->bool)->bool
Definition hl_INTERSECTION_OF : set -> set :=
  fun A:set => fun v_57493 :e 2 :^: (2 :^: (2 :^: A)) => fun v_57494 :e 2 :^: (2 :^: A) => fun s :e 2 :^: A => if exists u :e 2 :^: (2 :^: A), v_57493 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> v_57494 c = 1) /\ hl_INTERS A u = s) then 1 else 0.

// HOL Light: ARBITRARY : ((A->bool)->bool)->bool
Definition hl_ARBITRARY : set -> set :=
  fun A:set => fun v_57629 :e 2 :^: (2 :^: A) => if True then 1 else 0.

// HOL Light: <=_c : (A->bool)->(B->bool)->bool
Definition hl_sym_3c3d5f63 : set -> set -> set :=
  fun A:set => fun B:set => fun v_64223 :e 2 :^: A => fun v_64224 :e 2 :^: B => if exists f :e B :^: A, (forall x :e A, hl_IN A x v_64223 = 1 -> hl_IN B (f x) v_64224 = 1) /\ forall x y :e A, hl_IN A x v_64223 = 1 /\ (hl_IN A y v_64223 = 1 /\ f x = f y) -> x = y then 1 else 0.

// HOL Light: <_c : (A->bool)->(B->bool)->bool
Definition hl_sym_3c5f63 : set -> set -> set :=
  fun A:set => fun B:set => fun v_64235 :e 2 :^: A => fun v_64236 :e 2 :^: B => if hl_sym_3c3d5f63 A B v_64235 v_64236 = 1 /\ ~ hl_sym_3c3d5f63 B A v_64236 v_64235 = 1 then 1 else 0.

// HOL Light: =_c : (A->bool)->(B->bool)->bool
Definition hl_sym_3d5f63 : set -> set -> set :=
  fun A:set => fun B:set => fun v_64247 :e 2 :^: A => fun v_64248 :e 2 :^: B => if exists f :e B :^: A, (forall x :e A, hl_IN A x v_64247 = 1 -> hl_IN B (f x) v_64248 = 1) /\ forall y :e B, hl_IN B y v_64248 = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x v_64247 = 1 /\ f x = y then 1 else 0) = 1 then 1 else 0.

// HOL Light: >=_c : (A->bool)->(B->bool)->bool
Definition hl_sym_3e3d5f63 : set -> set -> set :=
  fun A:set => fun B:set => fun v_64259 :e 2 :^: A => fun v_64260 :e 2 :^: B => hl_sym_3c3d5f63 B A v_64260 v_64259.

// HOL Light: >_c : (A->bool)->(B->bool)->bool
Definition hl_sym_3e5f63 : set -> set -> set :=
  fun A:set => fun B:set => fun v_64271 :e 2 :^: A => fun v_64272 :e 2 :^: B => hl_sym_3c5f63 B A v_64272 v_64271.

// HOL Light: COUNTABLE : (A->bool)->bool
Definition hl_COUNTABLE : set -> set :=
  fun A:set => fun v_64422 :e 2 :^: A => hl_sym_3e3d5f63 omega A (hl_UNIV omega) v_64422.

// HOL Light: sup : (real->bool)->real
Definition hl_sup : set :=
  fun v_64427 :e 2 :^: R => hl_select R (fun a :e R => if (forall x :e R, hl_IN R x v_64427 = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x v_64427 = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1 then 1 else 0).

// HOL Light: inf : (real->bool)->real
Definition hl_inf : set :=
  fun v_65286 :e 2 :^: R => hl_select R (fun a :e R => if (forall x :e R, hl_IN R x v_65286 = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x v_65286 = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1 then 1 else 0).

// HOL Light: has_inf : (real->bool)->real->bool
Definition hl_has_inf : set :=
  fun v_66636 :e 2 :^: R => fun v_66637 :e R => if forall c :e R, (forall x :e R, hl_IN R x v_66636 = 1 -> hl_real_le c x = 1) <-> hl_real_le c v_66637 = 1 then 1 else 0.

// HOL Light: has_sup : (real->bool)->real->bool
Definition hl_has_sup : set :=
  fun v_66648 :e 2 :^: R => fun v_66649 :e R => if forall c :e R, (forall x :e R, hl_IN R x v_66648 = 1 -> hl_real_le x c = 1) <-> hl_real_le v_66649 c = 1 then 1 else 0.

// HOL Light: .. : num->num->num->bool
Definition hl_numseg : set :=
  fun v_67074 :e omega => fun v_67075 :e omega => hl_GSPEC omega (fun GEN_PVAR_231 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_231 (if hl_le v_67074 x = 1 /\ hl_le x v_67075 = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: neutral : (A->A->A)->A
Definition hl_neutral : set -> set :=
  fun A:set => fun v_68986 :e A :^: A :^: A => hl_select A (fun x :e A => if forall y :e A, v_68986 x y = y /\ v_68986 y x = y then 1 else 0).

// HOL Light: monoidal : (A->A->A)->bool
Definition hl_monoidal : set -> set :=
  fun A:set => fun v_68991 :e A :^: A :^: A => if (forall x y :e A, v_68991 x y = v_68991 y x) /\ ((forall x y z :e A, v_68991 x (v_68991 y z) = v_68991 (v_68991 x y) z) /\ forall x :e A, v_68991 (hl_neutral A v_68991) x = x) then 1 else 0.

// HOL Light: support : (B->B->B)->(A->B)->(A->bool)->A->bool
Definition hl_support : set -> set -> set :=
  fun B:set => fun A:set => fun v_69076 :e B :^: B :^: B => fun v_69077 :e B :^: A => fun v_69078 :e 2 :^: A => hl_GSPEC A (fun GEN_PVAR_239 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_239 (if hl_IN A x v_69078 = 1 /\ ~ v_69077 x = hl_neutral B v_69076 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: iterate : (B->B->B)->(A->bool)->(A->B)->B
Definition hl_iterate : set -> set -> set :=
  fun B:set => fun A:set => fun v_69097 :e B :^: B :^: B => fun v_69098 :e 2 :^: A => fun v_69099 :e B :^: A => hl_COND B (hl_FINITE A (hl_support B A v_69097 v_69099 v_69098)) (hl_ITSET A B (fun x :e A => fun a :e B => v_69097 (v_69099 x) a) (hl_support B A v_69097 v_69099 v_69098) (hl_neutral B v_69097)) (hl_neutral B v_69097).

// HOL Light: iterato : (A->bool)->A->(A->A->A)->(K->K->bool)->(K->bool)->(K->A)->A
Definition hl_iterato : set -> set -> set :=
  fun A:set => fun K:set => hl_select (A :^: (A :^: K) :^: (2 :^: K) :^: (2 :^: K :^: K) :^: (A :^: A :^: A) :^: A :^: (2 :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (fun itty :e A :^: (A :^: K) :^: (2 :^: K) :^: (2 :^: K :^: K) :^: (A :^: A :^: A) :^: A :^: (2 :^: A) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) => if forall v_76853 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))), forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, itty v_76853 dom neut op lt k f = hl_COND A (if hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_265 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_265 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ~ hl_GSPEC K (fun GEN_PVAR_266 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_266 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0) = hl_EMPTY K then 1 else 0) (hl_LET K A (fun i :e K => hl_LET_END A (op (f i) (itty v_76853 dom neut op lt (hl_GSPEC K (fun GEN_PVAR_267 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_267 (if hl_IN K j (hl_DELETE K k i) = 1 /\ hl_IN A (f j) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) j = 1 then 1 else 0)) f))) (hl_COND K (if exists i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 /\ forall j :e K, lt j i = 1 /\ (hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1) -> j = i) then 1 else 0) (hl_select K (fun i :e K => if hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 /\ forall j :e K, lt j i = 1 /\ (hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1) -> j = i) then 1 else 0)) (hl_select K (fun i :e K => if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0)))) neut then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))).

// HOL Light: nproduct : (A->bool)->(A->num)->num
Definition hl_nproduct : set -> set :=
  fun A:set => hl_iterate omega A hl_mul.

// HOL Light: iproduct : (A->bool)->(A->int)->int
Definition hl_iproduct : set -> set :=
  fun A:set => hl_iterate hl_ty_int A hl_int_mul.

// HOL Light: product : (A->bool)->(A->real)->real
Definition hl_product : set -> set :=
  fun A:set => hl_iterate R A hl_real_mul.

// HOL Light: isum : (A->bool)->(A->int)->int
Definition hl_isum : set -> set :=
  fun A:set => hl_iterate hl_ty_int A hl_int_add.

// HOL Light: nsum : (A->bool)->(A->num)->num
Definition hl_nsum : set -> set :=
  fun A:set => hl_iterate omega A hl_add.

// HOL Light: sum : (A->bool)->(A->real)->real
Definition hl_sum : set -> set :=
  fun A:set => hl_iterate R A hl_real_add.

// HOL Light: polynomial_function : (real->real)->bool
Definition hl_polynomial_function : set :=
  fun v_94306 :e R :^: R => if exists m :e omega, exists c :e R :^: omega, forall x :e R, v_94306 x = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) then 1 else 0.

// HOL Light: dimindex : (A->bool)->num
Definition hl_dimindex : set -> set :=
  fun A:set => fun v_94348 :e 2 :^: A => hl_COND omega (hl_FINITE A (hl_UNIV A)) (hl_CARD A (hl_UNIV A)) (hl_NUMERAL (hl_BIT1 hl_zero)).

// HOL Light type definition finite_image (abs finite_index, rep dest_finite_image)
Definition hl_ty_finite_image : set -> set :=
  fun A:set => {x :e omega | (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))) x = 1}.
Definition hl_finite_index : set -> set :=
  fun A:set => hl_subtype_abs omega (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))).
Definition hl_dest_finite_image : set -> set :=
  fun A:set => hl_subtype_rep omega (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))).

// HOL Light type definition cart (abs mk_cart, rep dest_cart)
Definition hl_ty_cart : set -> set -> set :=
  fun A:set => fun B:set => {x :e A :^: hl_ty_finite_image B | (fun r :e A :^: hl_ty_finite_image B => if True then 1 else 0) x = 1}.
Definition hl_mk_cart : set -> set -> set :=
  fun B:set => fun A:set => hl_subtype_abs (A :^: hl_ty_finite_image B) (fun r :e A :^: hl_ty_finite_image B => if True then 1 else 0).
Definition hl_dest_cart : set -> set -> set :=
  fun A:set => fun B:set => hl_subtype_rep (A :^: hl_ty_finite_image B) (fun r :e A :^: hl_ty_finite_image B => if True then 1 else 0).

// HOL Light type definition finite_sum (abs mk_finite_sum, rep dest_finite_sum)
Definition hl_ty_finite_sum : set -> set -> set :=
  fun A:set => fun B:set => {x :e omega | (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) x = 1}.
Definition hl_mk_finite_sum : set -> set -> set :=
  fun A:set => fun B:set => hl_subtype_abs omega (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))).
Definition hl_dest_finite_sum : set -> set -> set :=
  fun A:set => fun B:set => hl_subtype_rep omega (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))).

// HOL Light type definition finite_diff (abs mk_finite_diff, rep dest_finite_diff)
Definition hl_ty_finite_diff : set -> set -> set :=
  fun A:set => fun B:set => {x :e omega | (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_COND omega (hl_lt (hl_dimindex B (hl_UNIV B)) (hl_dimindex A (hl_UNIV A))) (hl_sub (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) (hl_NUMERAL (hl_BIT1 hl_zero))))) x = 1}.
Definition hl_mk_finite_diff : set -> set -> set :=
  fun A:set => fun B:set => hl_subtype_abs omega (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_COND omega (hl_lt (hl_dimindex B (hl_UNIV B)) (hl_dimindex A (hl_UNIV A))) (hl_sub (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Definition hl_dest_finite_diff : set -> set -> set :=
  fun A:set => fun B:set => hl_subtype_rep omega (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_COND omega (hl_lt (hl_dimindex B (hl_UNIV B)) (hl_dimindex A (hl_UNIV A))) (hl_sub (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) (hl_NUMERAL (hl_BIT1 hl_zero))))).

// HOL Light type definition finite_prod (abs mk_finite_prod, rep dest_finite_prod)
Definition hl_ty_finite_prod : set -> set -> set :=
  fun A:set => fun B:set => {x :e omega | (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) x = 1}.
Definition hl_mk_finite_prod : set -> set -> set :=
  fun A:set => fun B:set => hl_subtype_abs omega (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))).
Definition hl_dest_finite_prod : set -> set -> set :=
  fun A:set => fun B:set => hl_subtype_rep omega (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))).

// HOL Light type definition multivector (abs mk_multivector, rep dest_multivector)
Definition hl_ty_multivector : set -> set :=
  fun N:set => {x :e 2 :^: omega | (fun r :e 2 :^: omega => hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) x = 1}.
Definition hl_mk_multivector : set -> set :=
  fun N:set => hl_subtype_abs (2 :^: omega) (fun r :e 2 :^: omega => hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))).
Definition hl_dest_multivector : set -> set :=
  fun N:set => hl_subtype_rep (2 :^: omega) (fun r :e 2 :^: omega => hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))).

// HOL Light: $ : (A,N)cart->num->A
Definition hl_vindex : set -> set -> set :=
  fun A:set => fun N:set => fun v_94758 :e hl_ty_cart A N => fun v_94759 :e omega => hl_dest_cart A N v_94758 (hl_finite_index N v_94759).

// HOL Light: lambda : (num->A)->(A,B)cart
Definition hl_lambda : set -> set -> set :=
  fun A:set => fun B:set => fun v_94794 :e A :^: omega => hl_select (hl_ty_cart A B) (fun f :e hl_ty_cart A B => if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B f i = v_94794 i then 1 else 0).

// HOL Light: pastecart : (A,M)cart->(A,N)cart->(A,(M,N)finite_sum)cart
Definition hl_pastecart : set -> set -> set -> set :=
  fun A:set => fun M:set => fun N:set => fun v_95085 :e hl_ty_cart A M => fun v_95086 :e hl_ty_cart A N => hl_lambda A (hl_ty_finite_sum M N) (fun i :e omega => hl_COND A (hl_le i (hl_dimindex M (hl_UNIV M))) (hl_vindex A M v_95085 i) (hl_vindex A N v_95086 (hl_sub i (hl_dimindex M (hl_UNIV M))))).

// HOL Light: fstcart : (A,(M,N)finite_sum)cart->(A,M)cart
Definition hl_fstcart : set -> set -> set -> set :=
  fun A:set => fun M:set => fun N:set => fun v_95097 :e hl_ty_cart A (hl_ty_finite_sum M N) => hl_lambda A M (fun i :e omega => hl_vindex A (hl_ty_finite_sum M N) v_95097 i).

// HOL Light: sndcart : (A,(M,N)finite_sum)cart->(A,N)cart
Definition hl_sndcart : set -> set -> set -> set :=
  fun A:set => fun M:set => fun N:set => fun v_95102 :e hl_ty_cart A (hl_ty_finite_sum M N) => hl_lambda A N (fun i :e omega => hl_vindex A (hl_ty_finite_sum M N) v_95102 (hl_add i (hl_dimindex M (hl_UNIV M)))).

// HOL Light: vector : A list->(A,N)cart
Definition hl_vector : set -> set -> set :=
  fun A:set => fun N:set => fun v_102225 :e finseq A => hl_lambda A N (fun i :e omega => hl_EL A (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) v_102225).

// HOL Light: PCROSS : ((A,M)cart->bool)->((A,N)cart->bool)->(A,(M,N)finite_sum)cart->bool
Definition hl_PCROSS : set -> set -> set -> set :=
  fun A:set => fun M:set => fun N:set => fun v_102252 :e 2 :^: hl_ty_cart A M => fun v_102253 :e 2 :^: hl_ty_cart A N => hl_GSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_363 :e hl_ty_cart A (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_363 (if hl_IN (hl_ty_cart A M) x v_102252 = 1 /\ hl_IN (hl_ty_cart A N) y v_102253 = 1 then 1 else 0) (hl_pastecart A M N x y) = 1 then 1 else 0).

// HOL Light: CASEWISE : ((?138308->?138312)#(?138313->?138308->?138272)) list->?138313->?138312->?138272
Definition hl_CASEWISE : set -> set -> set -> set -> set :=
  fun T138308:set => fun T138312:set => fun T138313:set => fun T138272:set => hl_select (T138272 :^: T138312 :^: T138313 :^: finseq (T138312 :^: T138308 :*: T138272 :^: T138308 :^: T138313) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (fun CASEWISE :e T138272 :^: T138312 :^: T138313 :^: finseq (T138312 :^: T138308 :*: T138272 :^: T138308 :^: T138313) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) => if forall v_102857 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))), (forall f :e T138313, forall x :e T138312, CASEWISE v_102857 (hl_NIL (T138312 :^: T138308 :*: T138272 :^: T138308 :^: T138313)) f x = hl_select T138272 (fun y :e T138272 => if True then 1 else 0)) /\ forall h :e T138312 :^: T138308 :*: T138272 :^: T138308 :^: T138313, forall t :e finseq (T138312 :^: T138308 :*: T138272 :^: T138308 :^: T138313), forall f :e T138313, forall x :e T138312, CASEWISE v_102857 (hl_CONS (T138312 :^: T138308 :*: T138272 :^: T138308 :^: T138313) h t) f x = hl_COND T138272 (if exists y :e T138308, hl_FST (T138312 :^: T138308) (T138272 :^: T138308 :^: T138313) h y = x then 1 else 0) (hl_SND (T138312 :^: T138308) (T138272 :^: T138308 :^: T138313) h f (hl_select T138308 (fun y :e T138308 => if hl_FST (T138312 :^: T138308) (T138272 :^: T138308 :^: T138313) h y = x then 1 else 0))) (CASEWISE v_102857 t f x) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))))))))).

// HOL Light: admissible : (?138610->?138603->bool)->((?138610->?138606)->?138616->bool)->(?138616->?138603)->((?138610->?138606)->?138616->?138611)->bool
Definition hl_admissible : set -> set -> set -> set -> set -> set :=
  fun T138610:set => fun T138603:set => fun T138606:set => fun T138616:set => fun T138611:set => fun v_103924 :e 2 :^: T138603 :^: T138610 => fun v_103925 :e 2 :^: T138616 :^: (T138606 :^: T138610) => fun v_103926 :e T138603 :^: T138616 => fun v_103927 :e T138611 :^: T138616 :^: (T138606 :^: T138610) => if forall f g :e T138606 :^: T138610, forall a :e T138616, v_103925 f a = 1 /\ (v_103925 g a = 1 /\ (forall z :e T138610, v_103924 z (v_103926 a) = 1 -> f z = g z)) -> v_103927 f a = v_103927 g a then 1 else 0.

// HOL Light: tailadmissible : (A->A->bool)->((A->B)->P->bool)->(P->A)->((A->B)->P->B)->bool
Definition hl_tailadmissible : set -> set -> set -> set :=
  fun A:set => fun B:set => fun P:set => fun v_103956 :e 2 :^: A :^: A => fun v_103957 :e 2 :^: P :^: (B :^: A) => fun v_103958 :e A :^: P => fun v_103959 :e B :^: P :^: (B :^: A) => if exists P1 :e 2 :^: P :^: (B :^: A), exists G :e A :^: P :^: (B :^: A), exists H :e B :^: P :^: (B :^: A), (forall f :e B :^: A, forall a :e P, forall y :e A, P1 f a = 1 /\ v_103956 y (G f a) = 1 -> v_103956 y (v_103958 a) = 1) /\ ((forall f g :e B :^: A, forall a :e P, (forall z :e A, v_103956 z (v_103958 a) = 1 -> f z = g z) -> (P1 f a = 1 <-> P1 g a = 1) /\ (G f a = G g a /\ H f a = H g a)) /\ forall f :e B :^: A, forall a :e P, v_103957 f a = 1 -> v_103959 f a = hl_COND B (P1 f a) (f (G f a)) (H f a)) then 1 else 0.

// HOL Light: superadmissible : (?138760->?138760->bool)->((?138760->?138762)->?138768->bool)->(?138768->?138760)->((?138760->?138762)->?138768->?138762)->bool
Definition hl_superadmissible : set -> set -> set -> set :=
  fun T138760:set => fun T138762:set => fun T138768:set => fun v_103988 :e 2 :^: T138760 :^: T138760 => fun v_103989 :e 2 :^: T138768 :^: (T138762 :^: T138760) => fun v_103990 :e T138760 :^: T138768 => fun v_103991 :e T138762 :^: T138768 :^: (T138762 :^: T138760) => if hl_admissible T138760 T138760 T138762 T138768 2 v_103988 (fun f :e T138762 :^: T138760 => fun a :e T138768 => if True then 1 else 0) v_103990 v_103989 = 1 -> hl_tailadmissible T138760 T138762 T138768 v_103988 v_103989 v_103990 v_103991 = 1 then 1 else 0.

// HOL Light: fld : (A->A->bool)->A->bool
Definition hl_fld : set -> set :=
  fun A:set => fun v_113912 :e 2 :^: A :^: A => hl_GSPEC A (fun GEN_PVAR_372 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_372 (if exists y :e A, v_113912 x y = 1 \/ v_113912 y x = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: qoset : (A->A->bool)->bool
Definition hl_qoset : set -> set :=
  fun A:set => fun v_113967 :e 2 :^: A :^: A => if (forall x :e A, hl_IN A x (hl_fld A v_113967) = 1 -> v_113967 x x = 1) /\ forall x y z :e A, v_113967 x y = 1 /\ v_113967 y z = 1 -> v_113967 x z = 1 then 1 else 0.

// HOL Light: poset : (A->A->bool)->bool
Definition hl_poset : set -> set :=
  fun A:set => fun v_113972 :e 2 :^: A :^: A => if (forall x :e A, hl_IN A x (hl_fld A v_113972) = 1 -> v_113972 x x = 1) /\ ((forall x y z :e A, v_113972 x y = 1 /\ v_113972 y z = 1 -> v_113972 x z = 1) /\ forall x y :e A, v_113972 x y = 1 /\ v_113972 y x = 1 -> x = y) then 1 else 0.

// HOL Light: toset : (A->A->bool)->bool
Definition hl_toset : set -> set :=
  fun A:set => fun v_113977 :e 2 :^: A :^: A => if (forall x :e A, hl_IN A x (hl_fld A v_113977) = 1 -> v_113977 x x = 1) /\ ((forall x y z :e A, v_113977 x y = 1 /\ v_113977 y z = 1 -> v_113977 x z = 1) /\ ((forall x y :e A, v_113977 x y = 1 /\ v_113977 y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A v_113977) = 1 /\ hl_IN A y (hl_fld A v_113977) = 1 -> v_113977 x y = 1 \/ v_113977 y x = 1)) then 1 else 0.

// HOL Light: woset : (A->A->bool)->bool
Definition hl_woset : set -> set :=
  fun A:set => fun v_113982 :e 2 :^: A :^: A => if (forall x :e A, hl_IN A x (hl_fld A v_113982) = 1 -> v_113982 x x = 1) /\ ((forall x y z :e A, v_113982 x y = 1 /\ v_113982 y z = 1 -> v_113982 x z = 1) /\ ((forall x y :e A, v_113982 x y = 1 /\ v_113982 y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A v_113982) = 1 /\ hl_IN A y (hl_fld A v_113982) = 1 -> v_113982 x y = 1 \/ v_113982 y x = 1) /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A v_113982) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> v_113982 x y = 1))) then 1 else 0.

// HOL Light: wqoset : (A->A->bool)->bool
Definition hl_wqoset : set -> set :=
  fun A:set => fun v_113987 :e 2 :^: A :^: A => if (forall x :e A, hl_IN A x (hl_fld A v_113987) = 1 -> v_113987 x x = 1) /\ ((forall x y z :e A, v_113987 x y = 1 /\ v_113987 y z = 1 -> v_113987 x z = 1) /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A v_113987) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ v_113987 x y = 1)) then 1 else 0.

// HOL Light: chain : (A->A->bool)->(A->bool)->bool
Definition hl_chain : set -> set :=
  fun A:set => fun v_113992 :e 2 :^: A :^: A => fun v_113993 :e 2 :^: A => if forall x y :e A, hl_IN A x v_113993 = 1 /\ hl_IN A y v_113993 = 1 -> v_113992 x y = 1 \/ v_113992 y x = 1 then 1 else 0.

// HOL Light: antichain : (A->A->bool)->(A->bool)->bool
Definition hl_antichain : set -> set :=
  fun A:set => fun v_114004 :e 2 :^: A :^: A => fun v_114005 :e 2 :^: A => if hl_SUBSET A v_114005 (hl_fld A v_114004) = 1 /\ hl_pairwise A (fun x :e A => fun y :e A => if ~ v_114004 x y = 1 then 1 else 0) v_114005 = 1 then 1 else 0.

// HOL Light: strictly : (A->A->bool)->A->A->bool
Definition hl_strictly : set -> set :=
  fun A:set => fun v_114657 :e 2 :^: A :^: A => fun x :e A => fun y :e A => if v_114657 x y = 1 /\ ~ v_114657 y x = 1 then 1 else 0.

// HOL Light: properly : (A->A->bool)->A->A->bool
Definition hl_properly : set -> set :=
  fun A:set => fun v_114662 :e 2 :^: A :^: A => fun x :e A => fun y :e A => if v_114662 x y = 1 /\ ~ x = y then 1 else 0.

// HOL Light: inseg : (A->A->bool)->(A->A->bool)->bool
Definition hl_inseg : set -> set :=
  fun A:set => fun v_118921 :e 2 :^: A :^: A => fun v_118922 :e 2 :^: A :^: A => if forall x y :e A, v_118921 x y = 1 <-> v_118922 x y = 1 /\ hl_fld A v_118921 y = 1 then 1 else 0.

// HOL Light: linseg : (A->A->bool)->A->A->A->bool
Definition hl_linseg : set -> set :=
  fun A:set => fun v_118993 :e 2 :^: A :^: A => fun v_118994 :e A => fun x :e A => fun y :e A => if v_118993 x y = 1 /\ hl_properly A v_118993 y v_118994 = 1 then 1 else 0.

// HOL Light: ordinal : (A->A->bool)->bool
Definition hl_ordinal : set -> set :=
  fun A:set => fun v_119005 :e 2 :^: A :^: A => if hl_woset A v_119005 = 1 /\ forall x :e A, hl_fld A v_119005 x = 1 -> x = hl_select A (fun y :e A => if ~ hl_properly A v_119005 y x = 1 then 1 else 0) then 1 else 0.

// HOL Light: +_c : (?155390->bool)->(?155389->bool)->(?155390,?155389)sum->bool
Definition hl_sym_2b5f63 : set -> set -> set :=
  fun T155390:set => fun T155389:set => fun v_201474 :e 2 :^: T155390 => fun v_201475 :e 2 :^: T155389 => hl_UNION (T155390 :+: T155389) (hl_GSPEC (T155390 :+: T155389) (fun GEN_PVAR_406 :e T155390 :+: T155389 => if exists x :e T155390, hl_SETSPEC (T155390 :+: T155389) GEN_PVAR_406 (hl_IN T155390 x v_201474) (hl_INL T155390 T155389 x) = 1 then 1 else 0)) (hl_GSPEC (T155390 :+: T155389) (fun GEN_PVAR_407 :e T155390 :+: T155389 => if exists y :e T155389, hl_SETSPEC (T155390 :+: T155389) GEN_PVAR_407 (hl_IN T155389 y v_201475) (hl_INR T155389 T155390 y) = 1 then 1 else 0)).

// HOL Light: *_c : (?155423->bool)->(?155422->bool)->?155423#?155422->bool
Definition hl_sym_2a5f63 : set -> set -> set :=
  fun T155423:set => fun T155422:set => fun v_201486 :e 2 :^: T155423 => fun v_201487 :e 2 :^: T155422 => hl_GSPEC (T155423 :*: T155422) (fun GEN_PVAR_408 :e T155423 :*: T155422 => if exists x :e T155423, exists y :e T155422, hl_SETSPEC (T155423 :*: T155422) GEN_PVAR_408 (if hl_IN T155423 x v_201486 = 1 /\ hl_IN T155422 y v_201487 = 1 then 1 else 0) (hl_pair T155423 T155422 x y) = 1 then 1 else 0).

// HOL Light: ^_c : (A->bool)->(B->bool)->(B->A)->bool
Definition hl_sym_5e5f63 : set -> set -> set :=
  fun A:set => fun B:set => fun v_237767 :e 2 :^: A => fun v_237768 :e 2 :^: B => hl_GSPEC (A :^: B) (fun GEN_PVAR_450 :e A :^: B => if exists f :e A :^: B, hl_SETSPEC (A :^: B) GEN_PVAR_450 (if (forall x :e B, hl_IN B x v_237768 = 1 -> hl_IN A (f x) v_237767 = 1) /\ forall x :e B, ~ hl_IN B x v_237768 = 1 -> f x = hl_select A (fun y :e A => if False then 1 else 0) then 1 else 0) f = 1 then 1 else 0).

// HOL Light: permutes : (?173361->?173361)->(?173361->bool)->bool
Definition hl_permutes : set -> set :=
  fun T173361:set => fun v_245366 :e T173361 :^: T173361 => fun v_245367 :e 2 :^: T173361 => if (forall x :e T173361, ~ hl_IN T173361 x v_245367 = 1 -> v_245366 x = x) /\ forall y :e T173361, hl_exists_unique T173361 (fun x :e T173361 => if v_245366 x = y then 1 else 0) = 1 then 1 else 0.

// HOL Light: inverse : (?173379->?173376)->?173376->?173379
Definition hl_inverse : set -> set -> set :=
  fun T173379:set => fun T173376:set => fun v_245378 :e T173376 :^: T173379 => fun y :e T173376 => hl_select T173379 (fun x :e T173379 => if v_245378 x = y then 1 else 0).

// HOL Light: swap : ?173622#?173622->?173622->?173622
Definition hl_swap : set -> set :=
  fun T173622:set => fun v_245820 :e T173622 :*: T173622 => fun v_245821 :e T173622 => hl_COND T173622 (if v_245821 = hl_FST T173622 T173622 v_245820 then 1 else 0) (hl_SND T173622 T173622 v_245820) (hl_COND T173622 (if v_245821 = hl_SND T173622 T173622 v_245820 then 1 else 0) (hl_FST T173622 T173622 v_245820) v_245821).

// HOL Light: three_cycle : A->A->A->A->A
Definition hl_three_cycle : set -> set :=
  fun A:set => fun v_254381 :e A => fun v_254382 :e A => fun v_254383 :e A => fun x :e A => hl_COND A (if x = v_254381 then 1 else 0) v_254382 (hl_COND A (if x = v_254382 then 1 else 0) v_254383 (hl_COND A (if x = v_254383 then 1 else 0) v_254381 x)).

// HOL Light: swapseq : num->(?198413->?198413)->bool
Definition hl_swapseq : set -> set :=
  fun T198413:set => fun a0 :e omega => fun a1 :e T198413 :^: T198413 => if forall swapseq' :e 2 :^: (T198413 :^: T198413) :^: omega, (forall a01 :e omega, forall a11 :e T198413 :^: T198413, a01 = hl_NUMERAL hl_zero /\ a11 = hl_I T198413 \/ (exists a b :e T198413, exists p :e T198413 :^: T198413, exists n :e omega, a01 = hl_SUC n /\ (a11 = hl_o T198413 T198413 T198413 (hl_swap T198413 (hl_pair T198413 T198413 a b)) p /\ (swapseq' n p = 1 /\ ~ a = b))) -> swapseq' a01 a11 = 1) -> swapseq' a0 a1 = 1 then 1 else 0.

// HOL Light: permutation : (?198427->?198427)->bool
Definition hl_permutation : set -> set :=
  fun T198427:set => fun v_264414 :e T198427 :^: T198427 => if exists n :e omega, hl_swapseq T198427 n v_264414 = 1 then 1 else 0.

// HOL Light: evenperm : (?199130->?199130)->bool
Definition hl_evenperm : set -> set :=
  fun T199130:set => fun v_267351 :e T199130 :^: T199130 => hl_EVEN (hl_select omega (fun n :e omega => hl_swapseq T199130 n v_267351)).

// HOL Light: sign : (?200054->?200054)->real
Definition hl_sign : set -> set :=
  fun T200054:set => fun v_269593 :e T200054 :^: T200054 => hl_COND R (hl_evenperm T200054 v_269593) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).

// HOL Light: rational : real->bool
Definition hl_rational : set :=
  fun v_280069 :e R => if exists m n :e R, hl_integer m = 1 /\ (hl_integer n = 1 /\ (~ n = hl_real_of_num (hl_NUMERAL hl_zero) /\ v_280069 = hl_real_div m n)) then 1 else 0.

// HOL Light: floor : real->real
Definition hl_floor : set :=
  hl_select (R :^: R :^: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (fun n :e R :^: R :^: (omega :*: (omega :*: (omega :*: (omega :*: omega)))) => if forall v_280451 :e omega :*: (omega :*: (omega :*: (omega :*: omega))), exists r :e R :^: R, forall x :e R, hl_integer (n v_280451 x) = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (r x) = 1 /\ (hl_real_lt (r x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ x = hl_real_add (n v_280451 x) (r x))) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))).

// HOL Light: frac : real->real
Definition hl_frac : set :=
  hl_select (R :^: R :^: (omega :*: (omega :*: (omega :*: omega)))) (fun r :e R :^: R :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_280452 :e omega :*: (omega :*: (omega :*: omega)), forall x :e R, hl_integer (hl_floor x) = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (r v_280452 x) = 1 /\ (hl_real_lt (r v_280452 x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ x = hl_real_add (hl_floor x) (r v_280452 x))) then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))).

// HOL Light: is_realinterval : (real->bool)->bool
Definition hl_is_realinterval : set :=
  fun v_282192 :e 2 :^: R => if forall a b c :e R, hl_IN R a v_282192 = 1 /\ (hl_IN R b v_282192 = 1 /\ (hl_real_le a c = 1 /\ hl_real_le c b = 1)) -> hl_IN R c v_282192 = 1 then 1 else 0.

// HOL Light: open_real_interval : real#real->real->bool
Definition hl_open_real_interval : set :=
  fun v_282253 :e R :*: R => hl_GSPEC R (fun GEN_PVAR_632 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_632 (if hl_real_lt (hl_FST R R v_282253) x = 1 /\ hl_real_lt x (hl_SND R R v_282253) = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: closed_real_interval : (real#real) list->real->bool
Definition hl_closed_real_interval : set :=
  hl_select (2 :^: R :^: finseq (R :*: R) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))) (fun closed_real_interval1 :e 2 :^: R :^: finseq (R :*: R) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))))) => if forall v_282372 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))), forall a b :e R, closed_real_interval1 v_282372 (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R))) = hl_GSPEC R (fun GEN_PVAR_633 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_633 (if hl_real_le a x = 1 /\ hl_real_le x b = 1 then 1 else 0) x = 1 then 1 else 0) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))))))))))))).

// HOL Light: vectorize : ((A,N)cart,M)cart->(A,(M,N)finite_prod)cart
Definition hl_vectorize : set -> set -> set -> set :=
  fun A:set => fun N:set => fun M:set => fun x :e hl_ty_cart (hl_ty_cart A N) M => hl_lambda A (hl_ty_finite_prod M N) (fun i :e omega => hl_vindex A N (hl_vindex (hl_ty_cart A N) M x (hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_DIV (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))))) (hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_MOD (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))))).

// HOL Light: matrify : (A,(M,N)finite_prod)cart->((A,N)cart,M)cart
Definition hl_matrify : set -> set -> set -> set :=
  fun A:set => fun M:set => fun N:set => fun x :e hl_ty_cart A (hl_ty_finite_prod M N) => hl_lambda (hl_ty_cart A N) M (fun i :e omega => hl_lambda A N (fun j :e omega => hl_vindex A (hl_ty_finite_prod M N) x (hl_add (hl_mul (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) j))).

// HOL Light: hull : ((?221254->bool)->bool)->(?221254->bool)->?221254->bool
Definition hl_hull : set -> set :=
  fun T221254:set => fun v_283551 :e 2 :^: (2 :^: T221254) => fun v_283552 :e 2 :^: T221254 => hl_INTERS T221254 (hl_GSPEC (2 :^: T221254) (fun GEN_PVAR_638 :e 2 :^: T221254 => if exists t :e 2 :^: T221254, hl_SETSPEC (2 :^: T221254) GEN_PVAR_638 (if v_283551 t = 1 /\ hl_SUBSET T221254 v_283552 t = 1 then 1 else 0) t = 1 then 1 else 0)).

// HOL Light: from : num->num->bool
Definition hl_from : set :=
  fun v_284469 :e omega => hl_GSPEC omega (fun GEN_PVAR_643 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_643 (hl_le v_284469 m) m = 1 then 1 else 0).

// HOL Light: relative_to : ((?233683->bool)->bool)->(?233683->bool)->(?233683->bool)->bool
Definition hl_relative_to : set -> set :=
  fun T233683:set => hl_select (2 :^: (2 :^: T233683) :^: (2 :^: T233683) :^: (2 :^: (2 :^: T233683)) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (fun relative_to1 :e 2 :^: (2 :^: T233683) :^: (2 :^: T233683) :^: (2 :^: (2 :^: T233683)) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) => if forall v_288097 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))), forall P :e 2 :^: (2 :^: T233683), forall s t :e 2 :^: T233683, relative_to1 v_288097 P s t = 1 <-> exists u :e 2 :^: T233683, P u = 1 /\ hl_INTER T233683 s u = t then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))))))).

// HOL Light: suslin_operation : (num list->A->bool)->A->bool
Definition hl_suslin_operation : set -> set :=
  fun A:set => fun v_316588 :e 2 :^: A :^: finseq omega => hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_684 :e 2 :^: A => if exists s :e omega :^: omega, hl_SETSPEC (2 :^: A) GEN_PVAR_684 (hl_IN (omega :^: omega) s (hl_UNIV (omega :^: omega))) (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_683 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_683 (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n) (v_316588 (hl_list_of_seq omega s n)) = 1 then 1 else 0))) = 1 then 1 else 0)).

// HOL Light: suslin : ((?238025->bool)->bool)->(?238025->bool)->bool
Definition hl_suslin : set -> set :=
  fun T238025:set => fun v_316593 :e 2 :^: (2 :^: T238025) => hl_GSPEC (2 :^: T238025) (fun GEN_PVAR_685 :e 2 :^: T238025 => if exists f :e 2 :^: T238025 :^: finseq omega, hl_SETSPEC (2 :^: T238025) GEN_PVAR_685 (if forall l :e finseq omega, ~ l = hl_NIL omega -> hl_IN (2 :^: T238025) (f l) v_316593 = 1 then 1 else 0) (hl_suslin_operation T238025 f) = 1 then 1 else 0).

// HOL Light: ITER : num->(?240246->?240246)->?240246->?240246
Definition hl_ITER : set -> set :=
  fun T240246:set => hl_select (T240246 :^: T240246 :^: (T240246 :^: T240246) :^: omega :^: (omega :*: (omega :*: (omega :*: omega)))) (fun ITER :e T240246 :^: T240246 :^: (T240246 :^: T240246) :^: omega :^: (omega :*: (omega :*: (omega :*: omega))) => if forall v_348790 :e omega :*: (omega :*: (omega :*: omega)), (forall x :e T240246, forall f :e T240246 :^: T240246, ITER v_348790 (hl_NUMERAL hl_zero) f x = x) /\ forall x :e T240246, forall f :e T240246 :^: T240246, forall n :e omega, ITER v_348790 (hl_SUC n) f x = f (ITER v_348790 n f x) then 1 else 0) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))))))).

// HOL Light: frag_support : A frag->A->bool
Definition hl_frag_support : set -> set :=
  fun A:set => fun v_349973 :e hl_ty_frag A => hl_GSPEC A (fun GEN_PVAR_712 :e A => if exists a :e A, hl_SETSPEC A GEN_PVAR_712 (if ~ hl_dest_frag A v_349973 a = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) a = 1 then 1 else 0).

// HOL Light: frag_0 : A frag
Definition hl_frag_0 : set -> set :=
  fun A:set => hl_mk_frag A (fun x :e A => hl_int_of_num (hl_NUMERAL hl_zero)).

// HOL Light: frag_of : A->A frag
Definition hl_frag_of : set -> set :=
  fun A:set => fun v_349978 :e A => hl_mk_frag A (fun a :e A => hl_COND hl_ty_int (if a = v_349978 then 1 else 0) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_of_num (hl_NUMERAL hl_zero))).

// HOL Light: frag_neg : A frag->A frag
Definition hl_frag_neg : set -> set :=
  fun A:set => fun v_349983 :e hl_ty_frag A => hl_mk_frag A (fun a :e A => hl_int_neg (hl_dest_frag A v_349983 a)).

// HOL Light: frag_cmul : int->A frag->A frag
Definition hl_frag_cmul : set -> set :=
  fun A:set => fun v_349988 :e hl_ty_int => fun v_349989 :e hl_ty_frag A => hl_mk_frag A (fun a :e A => hl_int_mul v_349988 (hl_dest_frag A v_349989 a)).

// HOL Light: frag_add : A frag->A frag->A frag
Definition hl_frag_add : set -> set :=
  fun A:set => fun v_350000 :e hl_ty_frag A => fun v_350001 :e hl_ty_frag A => hl_mk_frag A (fun a :e A => hl_int_add (hl_dest_frag A v_350000 a) (hl_dest_frag A v_350001 a)).

// HOL Light: frag_sub : A frag->A frag->A frag
Definition hl_frag_sub : set -> set :=
  fun A:set => fun v_350012 :e hl_ty_frag A => fun v_350013 :e hl_ty_frag A => hl_mk_frag A (fun a :e A => hl_int_sub (hl_dest_frag A v_350012 a) (hl_dest_frag A v_350013 a)).

// HOL Light: frag_extend : (A->B frag)->A frag->B frag
Definition hl_frag_extend : set -> set -> set :=
  fun A:set => fun B:set => fun v_350618 :e hl_ty_frag B :^: A => fun v_350619 :e hl_ty_frag A => hl_iterate (hl_ty_frag B) A (hl_frag_add B) (hl_frag_support A v_350619) (fun a :e A => hl_frag_cmul B (hl_dest_frag A v_350619 a) (v_350618 a)).

// HOL Light: index : num->num->num
Definition hl_index : set :=
  fun v_357806 :e omega => fun v_357807 :e omega => hl_COND omega (if hl_le v_357806 (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 \/ v_357807 = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL hl_zero) (hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_731 :e omega => if exists j :e omega, hl_SETSPEC omega GEN_PVAR_731 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_num_divides (hl_EXP v_357806 j) v_357807 = 1 then 1 else 0) j = 1 then 1 else 0))).

// HOL Light: group_carrier : A group->A->bool
Definition hl_group_carrier : set -> set :=
  fun A:set => fun g :e hl_ty_group A => hl_FST (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_operations A g).

// HOL Light: group_id : A group->A
Definition hl_group_id : set -> set :=
  fun A:set => fun g :e hl_ty_group A => hl_FST A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_operations A g)).

// HOL Light: group_inv : A group->A->A
Definition hl_group_inv : set -> set :=
  fun A:set => fun g :e hl_ty_group A => hl_FST (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_operations A g))).

// HOL Light: group_mul : A group->A->A->A
Definition hl_group_mul : set -> set :=
  fun A:set => fun g :e hl_ty_group A => hl_SND (A :^: A) (A :^: A :^: A) (hl_SND A (A :^: A :*: A :^: A :^: A) (hl_SND (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_operations A g))).

// HOL Light: singleton_group : A->A group
Definition hl_singleton_group : set -> set :=
  fun A:set => fun v_365385 :e A => hl_group A (hl_pair (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_INSERT A v_365385 (hl_EMPTY A)) (hl_pair A (A :^: A :*: A :^: A :^: A) v_365385 (hl_pair (A :^: A) (A :^: A :^: A) (fun x :e A => v_365385) (fun x :e A => fun y :e A => v_365385)))).

// HOL Light: trivial_group : ?257863 group->bool
Definition hl_trivial_group : set -> set :=
  fun T257863:set => fun v_365390 :e hl_ty_group T257863 => if hl_group_carrier T257863 v_365390 = hl_INSERT T257863 (hl_group_id T257863 v_365390) (hl_EMPTY T257863) then 1 else 0.

// HOL Light: opposite_group : A group->A group
Definition hl_opposite_group : set -> set :=
  fun A:set => fun v_365456 :e hl_ty_group A => hl_group A (hl_pair (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_group_carrier A v_365456) (hl_pair A (A :^: A :*: A :^: A :^: A) (hl_group_id A v_365456) (hl_pair (A :^: A) (A :^: A :^: A) (hl_group_inv A v_365456) (fun x :e A => fun y :e A => hl_group_mul A v_365456 y x)))).

// HOL Light: group_div : ?258236 group->?258236->?258236->?258236
Definition hl_group_div : set -> set :=
  fun T258236:set => fun v_365461 :e hl_ty_group T258236 => fun v_365462 :e T258236 => fun v_365463 :e T258236 => hl_group_mul T258236 v_365461 v_365462 (hl_group_inv T258236 v_365461 v_365463).

// HOL Light: group_pow : ?259428 group->?259428->num->?259428
Definition hl_group_pow : set -> set :=
  fun T259428:set => hl_select (T259428 :^: omega :^: T259428 :^: hl_ty_group T259428 :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (fun group_pow1 :e T259428 :^: omega :^: T259428 :^: hl_ty_group T259428 :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) => if forall v_366096 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))), (forall x :e T259428, forall G :e hl_ty_group T259428, group_pow1 v_366096 G x (hl_NUMERAL hl_zero) = hl_group_id T259428 G) /\ forall G :e hl_ty_group T259428, forall x :e T259428, forall n :e omega, group_pow1 v_366096 G x (hl_SUC n) = hl_group_mul T259428 G x (group_pow1 v_366096 G x n) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))))).

// HOL Light: group_zpow : A group->A->int->A
Definition hl_group_zpow : set -> set :=
  fun A:set => fun v_366156 :e hl_ty_group A => fun v_366157 :e A => fun v_366158 :e hl_ty_int => hl_COND A (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) v_366158) (hl_group_pow A v_366156 v_366157 (hl_num_of_int v_366158)) (hl_group_inv A v_366156 (hl_group_pow A v_366156 v_366157 (hl_num_of_int (hl_int_neg v_366158)))).

// HOL Light: abelian_group : A group->bool
Definition hl_abelian_group : set -> set :=
  fun A:set => fun v_366344 :e hl_ty_group A => if forall x y :e A, hl_IN A x (hl_group_carrier A v_366344) = 1 /\ hl_IN A y (hl_group_carrier A v_366344) = 1 -> hl_group_mul A v_366344 x y = hl_group_mul A v_366344 y x then 1 else 0.

// HOL Light: group_neg : ?261264 group->?261264->?261264
Definition hl_group_neg : set -> set :=
  fun T261264:set => fun v_366561 :e hl_ty_group T261264 => fun v_366562 :e T261264 => hl_COND T261264 (hl_IN T261264 v_366562 (hl_group_carrier T261264 v_366561)) (hl_group_inv T261264 v_366561 v_366562) v_366562.

// HOL Light: group_add : A group->A->A->A
Definition hl_group_add : set -> set :=
  fun A:set => fun v_366573 :e hl_ty_group A => fun v_366574 :e A => fun v_366575 :e A => hl_COND A (if hl_IN A v_366574 (hl_group_carrier A v_366573) = 1 /\ hl_IN A v_366575 (hl_group_carrier A v_366573) = 1 then 1 else 0) (hl_group_mul A v_366573 v_366574 v_366575) (hl_COND A (hl_IN A v_366574 (hl_group_carrier A v_366573)) v_366575 (hl_COND A (hl_IN A v_366575 (hl_group_carrier A v_366573)) v_366574 (hl_select A (fun w :e A => if ~ hl_IN A w (hl_group_carrier A v_366573) = 1 then 1 else 0)))).

// HOL Light: group_nmul : ?261345 group->num->?261345->?261345
Definition hl_group_nmul : set -> set :=
  fun T261345:set => hl_select (T261345 :^: T261345 :^: omega :^: hl_ty_group T261345 :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (fun group_nmul1 :e T261345 :^: T261345 :^: omega :^: hl_ty_group T261345 :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) => if forall v_366601 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))), (forall x :e T261345, forall G :e hl_ty_group T261345, group_nmul1 v_366601 G (hl_NUMERAL hl_zero) x = hl_group_id T261345 G) /\ forall G :e hl_ty_group T261345, forall n :e omega, forall x :e T261345, group_nmul1 v_366601 G (hl_SUC n) x = hl_group_add T261345 G x (group_nmul1 v_366601 G n x) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))).

// HOL Light: group_product : A group->(?262457->?262457->bool)->(?262457->bool)->(?262457->A)->A
Definition hl_group_product : set -> set -> set :=
  fun A:set => fun T262457:set => fun v_366963 :e hl_ty_group A => hl_iterato A T262457 (hl_group_carrier A v_366963) (hl_group_id A v_366963) (hl_group_mul A v_366963).

// HOL Light: group_sum : A group->(K->bool)->(K->A)->A
Definition hl_group_sum : set -> set -> set :=
  fun A:set => fun K:set => fun v_366968 :e hl_ty_group A => hl_group_product A K v_366968 (hl_select (2 :^: K :^: K) (fun l :e 2 :^: K :^: K => if hl_woset K l = 1 /\ hl_fld K l = hl_UNIV K then 1 else 0)).

// HOL Light: group_conjugation : ?267893 group->?267893->?267893->?267893
Definition hl_group_conjugation : set -> set :=
  fun T267893:set => fun v_382206 :e hl_ty_group T267893 => fun v_382207 :e T267893 => fun v_382208 :e T267893 => hl_group_mul T267893 v_382206 v_382207 (hl_group_mul T267893 v_382206 v_382208 (hl_group_inv T267893 v_382206 v_382207)).

// HOL Light: subgroup_of : (A->bool)->A group->bool
Definition hl_subgroup_of : set -> set :=
  fun A:set => fun v_382914 :e 2 :^: A => fun v_382915 :e hl_ty_group A => if hl_SUBSET A v_382914 (hl_group_carrier A v_382915) = 1 /\ (hl_IN A (hl_group_id A v_382915) v_382914 = 1 /\ ((forall x :e A, hl_IN A x v_382914 = 1 -> hl_IN A (hl_group_inv A v_382915 x) v_382914 = 1) /\ forall x y :e A, hl_IN A x v_382914 = 1 /\ hl_IN A y v_382914 = 1 -> hl_IN A (hl_group_mul A v_382915 x y) v_382914 = 1)) then 1 else 0.

// HOL Light: subgroup_generated : A group->(A->bool)->A group
Definition hl_subgroup_generated : set -> set :=
  fun A:set => fun v_383756 :e hl_ty_group A => fun v_383757 :e 2 :^: A => hl_group A (hl_pair (2 :^: A) (A :*: (A :^: A :*: A :^: A :^: A)) (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_812 :e 2 :^: A => if exists h :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_812 (if hl_subgroup_of A h v_383756 = 1 /\ hl_SUBSET A (hl_INTER A (hl_group_carrier A v_383756) v_383757) h = 1 then 1 else 0) h = 1 then 1 else 0))) (hl_pair A (A :^: A :*: A :^: A :^: A) (hl_group_id A v_383756) (hl_pair (A :^: A) (A :^: A :^: A) (hl_group_inv A v_383756) (hl_group_mul A v_383756)))).

// HOL Light: prod_group : A group->B group->(A#B) group
Definition hl_prod_group : set -> set -> set :=
  fun A:set => fun B:set => fun v_385716 :e hl_ty_group A => fun v_385717 :e hl_ty_group B => hl_group (A :*: B) (hl_pair (2 :^: (A :*: B)) (A :*: B :*: ((A :*: B) :^: (A :*: B) :*: (A :*: B) :^: (A :*: B) :^: (A :*: B))) (hl_CROSS A B (hl_group_carrier A v_385716) (hl_group_carrier B v_385717)) (hl_pair (A :*: B) ((A :*: B) :^: (A :*: B) :*: (A :*: B) :^: (A :*: B) :^: (A :*: B)) (hl_pair A B (hl_group_id A v_385716) (hl_group_id B v_385717)) (hl_pair ((A :*: B) :^: (A :*: B)) ((A :*: B) :^: (A :*: B) :^: (A :*: B)) (hl_GABS ((A :*: B) :^: (A :*: B)) (fun f :e (A :*: B) :^: (A :*: B) => if forall x :e A, forall x' :e B, hl_GEQ (A :*: B) (f (hl_pair A B x x')) (hl_pair A B (hl_group_inv A v_385716 x) (hl_group_inv B v_385717 x')) = 1 then 1 else 0)) (hl_GABS ((A :*: B) :^: (A :*: B) :^: (A :*: B)) (fun f :e (A :*: B) :^: (A :*: B) :^: (A :*: B) => if forall x :e A, forall x' :e B, hl_GEQ ((A :*: B) :^: (A :*: B)) (f (hl_pair A B x x')) (hl_GABS ((A :*: B) :^: (A :*: B)) (fun f1 :e (A :*: B) :^: (A :*: B) => if forall y :e A, forall y' :e B, hl_GEQ (A :*: B) (f1 (hl_pair A B y y')) (hl_pair A B (hl_group_mul A v_385716 x y) (hl_group_mul B v_385717 x' y')) = 1 then 1 else 0)) = 1 then 1 else 0))))).

// HOL Light: product_group : (K->bool)->(K->A group)->(K->A) group
Definition hl_product_group : set -> set -> set :=
  fun K:set => fun A:set => fun v_386478 :e 2 :^: K => fun v_386479 :e hl_ty_group A :^: K => hl_group (A :^: K) (hl_pair (2 :^: (A :^: K)) (A :^: K :*: (A :^: K :^: (A :^: K) :*: A :^: K :^: (A :^: K) :^: (A :^: K))) (hl_cartesian_product K A v_386478 (fun i :e K => hl_group_carrier A (v_386479 i))) (hl_pair (A :^: K) (A :^: K :^: (A :^: K) :*: A :^: K :^: (A :^: K) :^: (A :^: K)) (hl_RESTRICTION K A v_386478 (fun i :e K => hl_group_id A (v_386479 i))) (hl_pair (A :^: K :^: (A :^: K)) (A :^: K :^: (A :^: K) :^: (A :^: K)) (fun x :e A :^: K => hl_RESTRICTION K A v_386478 (fun i :e K => hl_group_inv A (v_386479 i) (x i))) (fun x :e A :^: K => fun y :e A :^: K => hl_RESTRICTION K A v_386478 (fun i :e K => hl_group_mul A (v_386479 i) (x i) (y i)))))).

// HOL Light: sum_group : (K->bool)->(K->A group)->(K->A) group
Definition hl_sum_group : set -> set -> set :=
  fun K:set => fun A:set => fun v_386820 :e 2 :^: K => fun v_386821 :e hl_ty_group A :^: K => hl_subgroup_generated (A :^: K) (hl_product_group K A v_386820 v_386821) (hl_GSPEC (A :^: K) (fun GEN_PVAR_822 :e A :^: K => if exists x :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_822 (if hl_IN (A :^: K) x (hl_cartesian_product K A v_386820 (fun i :e K => hl_group_carrier A (v_386821 i))) = 1 /\ hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_821 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_821 (if hl_IN K i v_386820 = 1 /\ ~ x i = hl_group_id A (v_386821 i) then 1 else 0) i = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)).

// HOL Light: group_homomorphism : A group#B group->(A->B)->bool
Definition hl_group_homomorphism : set -> set -> set :=
  fun A:set => fun B:set => fun v_387347 :e hl_ty_group A :*: hl_ty_group B => fun v_387348 :e B :^: A => if hl_SUBSET B (hl_IMAGE A B v_387348 (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387347))) (hl_group_carrier B (hl_SND (hl_ty_group A) (hl_ty_group B) v_387347)) = 1 /\ (v_387348 (hl_group_id A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387347)) = hl_group_id B (hl_SND (hl_ty_group A) (hl_ty_group B) v_387347) /\ ((forall x :e A, hl_IN A x (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387347)) = 1 -> v_387348 (hl_group_inv A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387347) x) = hl_group_inv B (hl_SND (hl_ty_group A) (hl_ty_group B) v_387347) (v_387348 x)) /\ forall x y :e A, hl_IN A x (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387347)) = 1 /\ hl_IN A y (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387347)) = 1 -> v_387348 (hl_group_mul A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387347) x y) = hl_group_mul B (hl_SND (hl_ty_group A) (hl_ty_group B) v_387347) (v_387348 x) (v_387348 y))) then 1 else 0.

// HOL Light: group_monomorphism : A group#B group->(A->B)->bool
Definition hl_group_monomorphism : set -> set -> set :=
  fun A:set => fun B:set => fun v_387364 :e hl_ty_group A :*: hl_ty_group B => fun v_387365 :e B :^: A => if hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_FST (hl_ty_group A) (hl_ty_group B) v_387364) (hl_SND (hl_ty_group A) (hl_ty_group B) v_387364)) v_387365 = 1 /\ forall x y :e A, hl_IN A x (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387364)) = 1 /\ (hl_IN A y (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387364)) = 1 /\ v_387365 x = v_387365 y) -> x = y then 1 else 0.

// HOL Light: group_epimorphism : A group#B group->(A->B)->bool
Definition hl_group_epimorphism : set -> set -> set :=
  fun A:set => fun B:set => fun v_387381 :e hl_ty_group A :*: hl_ty_group B => fun v_387382 :e B :^: A => if hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_FST (hl_ty_group A) (hl_ty_group B) v_387381) (hl_SND (hl_ty_group A) (hl_ty_group B) v_387381)) v_387382 = 1 /\ hl_IMAGE A B v_387382 (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387381)) = hl_group_carrier B (hl_SND (hl_ty_group A) (hl_ty_group B) v_387381) then 1 else 0.

// HOL Light: group_endomorphism : A group->(A->A)->bool
Definition hl_group_endomorphism : set -> set :=
  fun A:set => fun v_387398 :e hl_ty_group A => fun v_387399 :e A :^: A => hl_group_homomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) v_387398 v_387398) v_387399.

// HOL Light: group_isomorphisms : A group#B group->(A->B)#(B->A)->bool
Definition hl_group_isomorphisms : set -> set -> set :=
  fun A:set => fun B:set => fun v_387410 :e hl_ty_group A :*: hl_ty_group B => fun v_387411 :e B :^: A :*: A :^: B => if hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_FST (hl_ty_group A) (hl_ty_group B) v_387410) (hl_SND (hl_ty_group A) (hl_ty_group B) v_387410)) (hl_FST (B :^: A) (A :^: B) v_387411) = 1 /\ (hl_group_homomorphism B A (hl_pair (hl_ty_group B) (hl_ty_group A) (hl_SND (hl_ty_group A) (hl_ty_group B) v_387410) (hl_FST (hl_ty_group A) (hl_ty_group B) v_387410)) (hl_SND (B :^: A) (A :^: B) v_387411) = 1 /\ ((forall x :e A, hl_IN A x (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_387410)) = 1 -> hl_SND (B :^: A) (A :^: B) v_387411 (hl_FST (B :^: A) (A :^: B) v_387411 x) = x) /\ forall y :e B, hl_IN B y (hl_group_carrier B (hl_SND (hl_ty_group A) (hl_ty_group B) v_387410)) = 1 -> hl_FST (B :^: A) (A :^: B) v_387411 (hl_SND (B :^: A) (A :^: B) v_387411 y) = y)) then 1 else 0.

// HOL Light: group_isomorphism : A group#B group->(A->B)->bool
Definition hl_group_isomorphism : set -> set -> set :=
  fun A:set => fun B:set => fun v_387432 :e hl_ty_group A :*: hl_ty_group B => fun v_387433 :e B :^: A => if exists g :e A :^: B, hl_group_isomorphisms A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_FST (hl_ty_group A) (hl_ty_group B) v_387432) (hl_SND (hl_ty_group A) (hl_ty_group B) v_387432)) (hl_pair (B :^: A) (A :^: B) v_387433 g) = 1 then 1 else 0.

// HOL Light: group_automorphism : A group->(A->A)->bool
Definition hl_group_automorphism : set -> set :=
  fun A:set => fun v_387449 :e hl_ty_group A => fun v_387450 :e A :^: A => hl_group_isomorphism A A (hl_pair (hl_ty_group A) (hl_ty_group A) v_387449 v_387449) v_387450.

// HOL Light: isomorphic_group : A group->B group->bool
Definition hl_isomorphic_group : set -> set -> set :=
  fun A:set => fun B:set => fun v_410272 :e hl_ty_group A => fun v_410273 :e hl_ty_group B => if exists f :e B :^: A, hl_group_isomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) v_410272 v_410273) f = 1 then 1 else 0.

// HOL Light: group_setinv : ?283516 group->(?283516->bool)->?283516->bool
Definition hl_group_setinv : set -> set :=
  fun T283516:set => fun v_414345 :e hl_ty_group T283516 => fun v_414346 :e 2 :^: T283516 => hl_GSPEC T283516 (fun GEN_PVAR_844 :e T283516 => if exists x :e T283516, hl_SETSPEC T283516 GEN_PVAR_844 (hl_IN T283516 x v_414346) (hl_group_inv T283516 v_414345 x) = 1 then 1 else 0).

// HOL Light: group_setmul : ?283545 group->(?283545->bool)->(?283545->bool)->?283545->bool
Definition hl_group_setmul : set -> set :=
  fun T283545:set => fun v_414357 :e hl_ty_group T283545 => fun v_414358 :e 2 :^: T283545 => fun v_414359 :e 2 :^: T283545 => hl_GSPEC T283545 (fun GEN_PVAR_845 :e T283545 => if exists x y :e T283545, hl_SETSPEC T283545 GEN_PVAR_845 (if hl_IN T283545 x v_414358 = 1 /\ hl_IN T283545 y v_414359 = 1 then 1 else 0) (hl_group_mul T283545 v_414357 x y) = 1 then 1 else 0).

// HOL Light: group_action : A group->(X->bool)->(A->X->X)->bool
Definition hl_group_action : set -> set -> set :=
  fun A:set => fun X:set => fun v_416575 :e hl_ty_group A => fun v_416576 :e 2 :^: X => fun v_416577 :e X :^: X :^: A => if (forall g :e A, forall x :e X, hl_IN A g (hl_group_carrier A v_416575) = 1 /\ hl_IN X x v_416576 = 1 -> hl_IN X (v_416577 g x) v_416576 = 1) /\ ((forall x :e X, hl_IN X x v_416576 = 1 -> v_416577 (hl_group_id A v_416575) x = x) /\ forall g h :e A, forall x :e X, hl_IN A g (hl_group_carrier A v_416575) = 1 /\ (hl_IN A h (hl_group_carrier A v_416575) = 1 /\ hl_IN X x v_416576 = 1) -> v_416577 (hl_group_mul A v_416575 g h) x = v_416577 g (v_416577 h x)) then 1 else 0.

// HOL Light: group_stabilizer : A group->(A->X->X)->X->A->bool
Definition hl_group_stabilizer : set -> set -> set :=
  fun A:set => fun X:set => fun v_419508 :e hl_ty_group A => fun v_419509 :e X :^: X :^: A => fun v_419510 :e X => hl_GSPEC A (fun GEN_PVAR_857 :e A => if exists g :e A, hl_SETSPEC A GEN_PVAR_857 (if hl_IN A g (hl_group_carrier A v_419508) = 1 /\ v_419509 g v_419510 = v_419510 then 1 else 0) g = 1 then 1 else 0).

// HOL Light: group_orbit : A group->(X->bool)->(A->X->X)->X->X->bool
Definition hl_group_orbit : set -> set -> set :=
  fun A:set => fun X:set => fun v_420176 :e hl_ty_group A => fun v_420177 :e 2 :^: X => fun v_420178 :e X :^: X :^: A => fun v_420179 :e X => fun v_420180 :e X => if hl_IN X v_420179 v_420177 = 1 /\ (hl_IN X v_420180 v_420177 = 1 /\ exists g :e A, hl_IN A g (hl_group_carrier A v_420176) = 1 /\ v_420178 g v_420179 = v_420180) then 1 else 0.

// HOL Light: right_coset : ?290311 group->(?290311->bool)->?290311->?290311->bool
Definition hl_right_coset : set -> set :=
  fun T290311:set => fun v_425680 :e hl_ty_group T290311 => fun v_425681 :e 2 :^: T290311 => fun v_425682 :e T290311 => hl_group_setmul T290311 v_425680 v_425681 (hl_INSERT T290311 v_425682 (hl_EMPTY T290311)).

// HOL Light: left_coset : ?290326 group->?290326->(?290326->bool)->?290326->bool
Definition hl_left_coset : set -> set :=
  fun T290326:set => fun v_425701 :e hl_ty_group T290326 => fun v_425702 :e T290326 => fun v_425703 :e 2 :^: T290326 => hl_group_setmul T290326 v_425701 (hl_INSERT T290326 v_425702 (hl_EMPTY T290326)) v_425703.

// HOL Light: normal_subgroup_of : (A->bool)->A group->bool
Definition hl_normal_subgroup_of : set -> set :=
  fun A:set => fun v_431363 :e 2 :^: A => fun v_431364 :e hl_ty_group A => if hl_subgroup_of A v_431363 v_431364 = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A v_431364) = 1 -> hl_left_coset A v_431364 x v_431363 = hl_right_coset A v_431364 v_431363 x then 1 else 0.

// HOL Light: group_conjugate : A group->(A->bool)->(A->bool)->bool
Definition hl_group_conjugate : set -> set :=
  fun A:set => fun v_433835 :e hl_ty_group A => fun v_433836 :e 2 :^: A => fun v_433837 :e 2 :^: A => if hl_SUBSET A v_433836 (hl_group_carrier A v_433835) = 1 /\ (hl_SUBSET A v_433837 (hl_group_carrier A v_433835) = 1 /\ exists a :e A, hl_IN A a (hl_group_carrier A v_433835) = 1 /\ hl_IMAGE A A (hl_group_conjugation A v_433835 a) v_433836 = v_433837) then 1 else 0.

// HOL Light: group_centralizer : A group->(A->bool)->A->bool
Definition hl_group_centralizer : set -> set :=
  fun A:set => fun v_434608 :e hl_ty_group A => fun v_434609 :e 2 :^: A => hl_GSPEC A (fun GEN_PVAR_946 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_946 (if hl_IN A x (hl_group_carrier A v_434608) = 1 /\ forall y :e A, hl_IN A y (hl_group_carrier A v_434608) = 1 /\ hl_IN A y v_434609 = 1 -> hl_group_mul A v_434608 x y = hl_group_mul A v_434608 y x then 1 else 0) x = 1 then 1 else 0).

// HOL Light: group_normalizer : A group->(A->bool)->A->bool
Definition hl_group_normalizer : set -> set :=
  fun A:set => fun v_434620 :e hl_ty_group A => fun v_434621 :e 2 :^: A => hl_GSPEC A (fun GEN_PVAR_947 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_947 (if hl_IN A x (hl_group_carrier A v_434620) = 1 /\ hl_group_setmul A v_434620 (hl_INSERT A x (hl_EMPTY A)) (hl_INTER A (hl_group_carrier A v_434620) v_434621) = hl_group_setmul A v_434620 (hl_INTER A (hl_group_carrier A v_434620) v_434621) (hl_INSERT A x (hl_EMPTY A)) then 1 else 0) x = 1 then 1 else 0).

// HOL Light: quotient_group : A group->(A->bool)->(A->bool) group
Definition hl_quotient_group : set -> set :=
  fun A:set => fun v_436691 :e hl_ty_group A => fun v_436692 :e 2 :^: A => hl_group (2 :^: A) (hl_pair (2 :^: (2 :^: A)) (2 :^: A :*: (2 :^: A :^: (2 :^: A) :*: 2 :^: A :^: (2 :^: A) :^: (2 :^: A))) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_965 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_965 (hl_IN A x (hl_group_carrier A v_436691)) (hl_right_coset A v_436691 v_436692 x) = 1 then 1 else 0)) (hl_pair (2 :^: A) (2 :^: A :^: (2 :^: A) :*: 2 :^: A :^: (2 :^: A) :^: (2 :^: A)) v_436692 (hl_pair (2 :^: A :^: (2 :^: A)) (2 :^: A :^: (2 :^: A) :^: (2 :^: A)) (hl_group_setinv A v_436691) (hl_group_setmul A v_436691)))).

// HOL Light: group_kernel : A group#B group->(A->B)->A->bool
Definition hl_group_kernel : set -> set -> set :=
  fun A:set => fun B:set => fun v_439166 :e hl_ty_group A :*: hl_ty_group B => fun v_439167 :e B :^: A => hl_GSPEC A (fun GEN_PVAR_973 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_973 (if hl_IN A x (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_439166)) = 1 /\ v_439167 x = hl_group_id B (hl_SND (hl_ty_group A) (hl_ty_group B) v_439166) then 1 else 0) x = 1 then 1 else 0).

// HOL Light: group_image : A group#B group->(A->B)->B->bool
Definition hl_group_image : set -> set -> set :=
  fun A:set => fun B:set => fun v_439183 :e hl_ty_group A :*: hl_ty_group B => fun v_439184 :e B :^: A => hl_IMAGE A B v_439184 (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_439183)).

// HOL Light: trivial_homomorphism : A group#B group->(A->B)->bool
Definition hl_trivial_homomorphism : set -> set -> set :=
  fun A:set => fun B:set => fun v_469486 :e hl_ty_group A :*: hl_ty_group B => fun v_469487 :e B :^: A => if hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_FST (hl_ty_group A) (hl_ty_group B) v_469486) (hl_SND (hl_ty_group A) (hl_ty_group B) v_469486)) v_469487 = 1 /\ forall x :e A, hl_IN A x (hl_group_carrier A (hl_FST (hl_ty_group A) (hl_ty_group B) v_469486)) = 1 -> v_469487 x = hl_group_id B (hl_SND (hl_ty_group A) (hl_ty_group B) v_469486) then 1 else 0.

// HOL Light: group_element_order : A group->A->num
Definition hl_group_element_order : set -> set :=
  fun A:set => fun v_470977 :e hl_ty_group A => fun v_470978 :e A => hl_select omega (fun d :e omega => if forall n :e omega, hl_group_pow A v_470977 v_470978 n = hl_group_id A v_470977 <-> hl_num_divides d n = 1 then 1 else 0).

// HOL Light: cyclic_group : ?312405 group->bool
Definition hl_cyclic_group : set -> set :=
  fun T312405:set => fun v_475804 :e hl_ty_group T312405 => if exists x :e T312405, hl_IN T312405 x (hl_group_carrier T312405 v_475804) = 1 /\ hl_subgroup_generated T312405 v_475804 (hl_INSERT T312405 x (hl_EMPTY T312405)) = v_475804 then 1 else 0.

// HOL Light: finitely_generated_group : A group->bool
Definition hl_finitely_generated_group : set -> set :=
  fun A:set => fun v_478853 :e hl_ty_group A => if exists s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_subgroup_generated A v_478853 s = v_478853 then 1 else 0.

// HOL Light: integer_group : int group
Definition hl_integer_group : set :=
  hl_group hl_ty_int (hl_pair (2 :^: hl_ty_int) (hl_ty_int :*: (hl_ty_int :^: hl_ty_int :*: hl_ty_int :^: hl_ty_int :^: hl_ty_int)) (hl_UNIV hl_ty_int) (hl_pair hl_ty_int (hl_ty_int :^: hl_ty_int :*: hl_ty_int :^: hl_ty_int :^: hl_ty_int) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_pair (hl_ty_int :^: hl_ty_int) (hl_ty_int :^: hl_ty_int :^: hl_ty_int) hl_int_neg hl_int_add))).

// HOL Light: integer_mod_group : num->int group
Definition hl_integer_mod_group : set :=
  fun v_505088 :e omega => hl_COND (hl_ty_group hl_ty_int) (if v_505088 = hl_NUMERAL hl_zero then 1 else 0) hl_integer_group (hl_group hl_ty_int (hl_pair (2 :^: hl_ty_int) (hl_ty_int :*: (hl_ty_int :^: hl_ty_int :*: hl_ty_int :^: hl_ty_int :^: hl_ty_int)) (hl_GSPEC hl_ty_int (fun GEN_PVAR_1057 :e hl_ty_int => if exists m :e hl_ty_int, hl_SETSPEC hl_ty_int GEN_PVAR_1057 (if hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1 /\ hl_int_lt m (hl_int_of_num v_505088) = 1 then 1 else 0) m = 1 then 1 else 0)) (hl_pair hl_ty_int (hl_ty_int :^: hl_ty_int :*: hl_ty_int :^: hl_ty_int :^: hl_ty_int) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_pair (hl_ty_int :^: hl_ty_int) (hl_ty_int :^: hl_ty_int :^: hl_ty_int) (fun a :e hl_ty_int => hl_rem (hl_int_neg a) (hl_int_of_num v_505088)) (fun a :e hl_ty_int => fun b :e hl_ty_int => hl_rem (hl_int_add a b) (hl_int_of_num v_505088)))))).

// HOL Light: pgroup : (num->bool)->A group->bool
Definition hl_pgroup : set -> set :=
  fun A:set => fun v_507931 :e 2 :^: omega => fun v_507932 :e hl_ty_group A => if forall p :e omega, forall x :e A, hl_prime p = 1 /\ (hl_IN A x (hl_group_carrier A v_507932) = 1 /\ hl_num_divides p (hl_group_element_order A v_507932 x) = 1) -> hl_IN omega p v_507931 = 1 then 1 else 0.

// HOL Light: free_abelian_group : (A->bool)->A frag group
Definition hl_free_abelian_group : set -> set :=
  fun A:set => fun v_578328 :e 2 :^: A => hl_group (hl_ty_frag A) (hl_pair (2 :^: hl_ty_frag A) (hl_ty_frag A :*: (hl_ty_frag A :^: hl_ty_frag A :*: hl_ty_frag A :^: hl_ty_frag A :^: hl_ty_frag A)) (hl_GSPEC (hl_ty_frag A) (fun GEN_PVAR_1212 :e hl_ty_frag A => if exists c :e hl_ty_frag A, hl_SETSPEC (hl_ty_frag A) GEN_PVAR_1212 (hl_SUBSET A (hl_frag_support A c) v_578328) c = 1 then 1 else 0)) (hl_pair (hl_ty_frag A) (hl_ty_frag A :^: hl_ty_frag A :*: hl_ty_frag A :^: hl_ty_frag A :^: hl_ty_frag A) (hl_frag_0 A) (hl_pair (hl_ty_frag A :^: hl_ty_frag A) (hl_ty_frag A :^: hl_ty_frag A :^: hl_ty_frag A) (hl_frag_neg A) (hl_frag_add A)))).

// HOL Light: solvable_group : A group->bool
Definition hl_solvable_group : set -> set :=
  fun A:set => fun v_580156 :e hl_ty_group A => if exists k :e omega, exists c :e 2 :^: A :^: omega, c (hl_NUMERAL hl_zero) = hl_group_carrier A v_580156 /\ (c k = hl_INSERT A (hl_group_id A v_580156) (hl_EMPTY A) /\ forall i :e omega, hl_lt i k = 1 -> hl_normal_subgroup_of A (c (hl_SUC i)) (hl_subgroup_generated A v_580156 (c i)) = 1 /\ hl_abelian_group (2 :^: A) (hl_quotient_group A (hl_subgroup_generated A v_580156 (c i)) (c (hl_SUC i))) = 1) then 1 else 0.

// HOL Light: group_exactness : A group#B group#C group->(A->B)#(B->C)->bool
Definition hl_group_exactness : set -> set -> set -> set :=
  fun A:set => fun B:set => fun C:set => fun v_583717 :e hl_ty_group A :*: (hl_ty_group B :*: hl_ty_group C) => fun v_583718 :e B :^: A :*: C :^: B => if hl_group_homomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_FST (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583717) (hl_FST (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583717))) (hl_FST (B :^: A) (C :^: B) v_583718) = 1 /\ (hl_group_homomorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_FST (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583717)) (hl_SND (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583717))) (hl_SND (B :^: A) (C :^: B) v_583718) = 1 /\ hl_group_image A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_FST (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583717) (hl_FST (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583717))) (hl_FST (B :^: A) (C :^: B) v_583718) = hl_group_kernel B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_FST (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583717)) (hl_SND (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583717))) (hl_SND (B :^: A) (C :^: B) v_583718)) then 1 else 0.

// HOL Light: short_exact_sequence : A group#B group#C group->(A->B)#(B->C)->bool
Definition hl_short_exact_sequence : set -> set -> set -> set :=
  fun A:set => fun B:set => fun C:set => fun v_583744 :e hl_ty_group A :*: (hl_ty_group B :*: hl_ty_group C) => fun v_583745 :e B :^: A :*: C :^: B => if hl_group_monomorphism A B (hl_pair (hl_ty_group A) (hl_ty_group B) (hl_FST (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583744) (hl_FST (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583744))) (hl_FST (B :^: A) (C :^: B) v_583745) = 1 /\ (hl_group_exactness A B C (hl_pair (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) (hl_FST (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583744) (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_FST (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583744)) (hl_SND (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583744)))) (hl_pair (B :^: A) (C :^: B) (hl_FST (B :^: A) (C :^: B) v_583745) (hl_SND (B :^: A) (C :^: B) v_583745)) = 1 /\ hl_group_epimorphism B C (hl_pair (hl_ty_group B) (hl_ty_group C) (hl_FST (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583744)) (hl_SND (hl_ty_group B) (hl_ty_group C) (hl_SND (hl_ty_group A) (hl_ty_group B :*: hl_ty_group C) v_583744))) (hl_SND (B :^: A) (C :^: B) v_583745) = 1) then 1 else 0.

// HOL Light: matroid_set : A matroid->A->bool
Definition hl_matroid_set : set -> set :=
  fun A:set => fun m :e hl_ty_matroid A => hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) (hl_dest_matroid A m).

// HOL Light: matroid_span : A matroid->(A->bool)->A->bool
Definition hl_matroid_span : set -> set :=
  fun A:set => fun m :e hl_ty_matroid A => hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) (hl_dest_matroid A m).

// HOL Light: matroid_spanning : A matroid->(A->bool)->bool
Definition hl_matroid_spanning : set -> set :=
  fun A:set => fun v_615510 :e hl_ty_matroid A => fun v_615511 :e 2 :^: A => if hl_SUBSET A v_615511 (hl_matroid_set A v_615510) = 1 /\ hl_matroid_span A v_615510 v_615511 = hl_matroid_set A v_615510 then 1 else 0.

// HOL Light: matroid_independent : A matroid->(A->bool)->bool
Definition hl_matroid_independent : set -> set :=
  fun A:set => fun v_615522 :e hl_ty_matroid A => fun v_615523 :e 2 :^: A => if hl_SUBSET A v_615523 (hl_matroid_set A v_615522) = 1 /\ forall x :e A, hl_IN A x v_615523 = 1 -> ~ hl_IN A x (hl_matroid_span A v_615522 (hl_DELETE A v_615523 x)) = 1 then 1 else 0.

// HOL Light: matroid_basis : A matroid->(A->bool)->bool
Definition hl_matroid_basis : set -> set :=
  fun A:set => fun v_615534 :e hl_ty_matroid A => fun v_615535 :e 2 :^: A => if hl_matroid_spanning A v_615534 v_615535 = 1 /\ hl_matroid_independent A v_615534 v_615535 = 1 then 1 else 0.

// HOL Light: matroid_dependent : A matroid->(A->bool)->bool
Definition hl_matroid_dependent : set -> set :=
  fun A:set => hl_select (2 :^: (2 :^: A) :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))) (fun matroid_dependent1 :e 2 :^: (2 :^: A) :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))) => if forall v_615659 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))), forall m :e hl_ty_matroid A, forall s :e 2 :^: A, matroid_dependent1 v_615659 m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ ~ hl_matroid_independent A m s = 1 then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))))))))))))).

// HOL Light: matroid_subspace : A matroid->(A->bool)->bool
Definition hl_matroid_subspace : set -> set :=
  fun A:set => fun v_622983 :e hl_ty_matroid A => fun v_622984 :e 2 :^: A => if hl_SUBSET A v_622984 (hl_matroid_set A v_622983) = 1 /\ hl_matroid_span A v_622983 v_622984 = v_622984 then 1 else 0.

// HOL Light: submatroid : A matroid->(A->bool)->A matroid
Definition hl_submatroid : set -> set :=
  fun A:set => fun v_623130 :e hl_ty_matroid A => fun v_623131 :e 2 :^: A => hl_matroid A (hl_pair (2 :^: A) (2 :^: A :^: (2 :^: A)) (hl_matroid_span A v_623130 (hl_INTER A (hl_matroid_set A v_623130) v_623131)) (hl_matroid_span A v_623130)).

// HOL Light: matroid_finite_dimensional : A matroid->bool
Definition hl_matroid_finite_dimensional : set -> set :=
  fun A:set => hl_select (2 :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))))))))) (fun matroid_finite_dimensional1 :e 2 :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))))))))))) => if forall v_623564 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))))))), forall m :e hl_ty_matroid A, matroid_finite_dimensional1 v_623564 m = 1 <-> exists b :e 2 :^: A, hl_FINITE A b = 1 /\ hl_matroid_spanning A m b = 1 then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))))))))))))))))))).

// HOL Light: matroid_dimension : A matroid->num
Definition hl_matroid_dimension : set -> set :=
  fun A:set => hl_select (omega :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))) (fun matroid_dimension1 :e omega :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))) => if forall v_623589 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))), forall m :e hl_ty_matroid A, matroid_dimension1 v_623589 m = hl_select omega (fun n :e omega => if forall b :e 2 :^: A, hl_matroid_basis A m b = 1 -> hl_HAS_SIZE A b n = 1 then 1 else 0) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))))))))))))).

// HOL Light: matroid_finite_dim : A matroid->(A->bool)->bool
Definition hl_matroid_finite_dim : set -> set :=
  fun A:set => hl_select (2 :^: (2 :^: A) :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))) (fun matroid_finite_dim1 :e 2 :^: (2 :^: A) :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))) => if forall v_623703 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))), forall m :e hl_ty_matroid A, forall s :e 2 :^: A, matroid_finite_dim1 v_623703 m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_matroid_finite_dimensional A (hl_submatroid A m s) = 1 then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))))))))))).

// HOL Light: matroid_dim : A matroid->(A->bool)->num
Definition hl_matroid_dim : set -> set :=
  fun A:set => hl_select (omega :^: (2 :^: A) :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (fun matroid_dim1 :e omega :^: (2 :^: A) :^: hl_ty_matroid A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) => if forall v_623817 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))), forall m :e hl_ty_matroid A, forall s :e 2 :^: A, matroid_dim1 v_623817 m s = hl_matroid_dimension A (hl_submatroid A m s) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))))))).

// HOL Light: istopology : ((?354366->bool)->bool)->bool
Definition hl_istopology : set -> set :=
  fun T354366:set => fun v_627233 :e 2 :^: (2 :^: T354366) => if hl_IN (2 :^: T354366) (hl_EMPTY T354366) v_627233 = 1 /\ ((forall s t :e 2 :^: T354366, hl_IN (2 :^: T354366) s v_627233 = 1 /\ hl_IN (2 :^: T354366) t v_627233 = 1 -> hl_IN (2 :^: T354366) (hl_INTER T354366 s t) v_627233 = 1) /\ forall k :e 2 :^: (2 :^: T354366), hl_SUBSET (2 :^: T354366) k v_627233 = 1 -> hl_IN (2 :^: T354366) (hl_UNIONS T354366 k) v_627233 = 1) then 1 else 0.

// HOL Light type definition topology (abs topology, rep open_in)
Definition hl_ty_topology : set -> set :=
  fun A:set => {x :e 2 :^: (2 :^: A) | hl_istopology A x = 1}.
Definition hl_topology : set -> set :=
  fun A:set => hl_subtype_abs (2 :^: (2 :^: A)) (hl_istopology A).
Definition hl_open_in : set -> set :=
  fun A:set => hl_subtype_rep (2 :^: (2 :^: A)) (hl_istopology A).

// HOL Light: topspace : ?354428 topology->?354428->bool
Definition hl_topspace : set -> set :=
  fun T354428:set => fun v_627275 :e hl_ty_topology T354428 => hl_UNIONS T354428 (hl_GSPEC (2 :^: T354428) (fun GEN_PVAR_1231 :e 2 :^: T354428 => if exists s :e 2 :^: T354428, hl_SETSPEC (2 :^: T354428) GEN_PVAR_1231 (hl_open_in T354428 v_627275 s) s = 1 then 1 else 0)).

// HOL Light: closed_in : ?354731 topology->(?354731->bool)->bool
Definition hl_closed_in : set -> set :=
  fun T354731:set => fun v_627310 :e hl_ty_topology T354731 => fun v_627311 :e 2 :^: T354731 => if hl_SUBSET T354731 v_627311 (hl_topspace T354731 v_627310) = 1 /\ hl_open_in T354731 v_627310 (hl_DIFF T354731 (hl_topspace T354731 v_627310) v_627311) = 1 then 1 else 0.

// HOL Light: discrete_topology : (A->bool)->A topology
Definition hl_discrete_topology : set -> set :=
  fun A:set => fun v_627889 :e 2 :^: A => hl_topology A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1235 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1235 (hl_SUBSET A s v_627889) s = 1 then 1 else 0)).

// HOL Light: discrete_space : A topology->bool
Definition hl_discrete_space : set -> set :=
  fun A:set => fun v_627894 :e hl_ty_topology A => if hl_discrete_topology A (hl_topspace A v_627894) = v_627894 then 1 else 0.

// HOL Light: subtopology : ?356067 topology->(?356067->bool)->?356067 topology
Definition hl_subtopology : set -> set :=
  fun T356067:set => fun v_628240 :e hl_ty_topology T356067 => fun v_628241 :e 2 :^: T356067 => hl_topology T356067 (hl_GSPEC (2 :^: T356067) (fun GEN_PVAR_1237 :e 2 :^: T356067 => if exists s :e 2 :^: T356067, hl_SETSPEC (2 :^: T356067) GEN_PVAR_1237 (hl_open_in T356067 v_628240 s) (hl_INTER T356067 s v_628241) = 1 then 1 else 0)).

// HOL Light: hereditarily : (A topology->bool)->A topology->bool
Definition hl_hereditarily : set -> set :=
  fun A:set => fun v_629240 :e 2 :^: hl_ty_topology A => fun v_629241 :e hl_ty_topology A => if forall s :e 2 :^: A, hl_SUBSET A s (hl_topspace A v_629241) = 1 -> v_629240 (hl_subtopology A v_629241 s) = 1 then 1 else 0.

// HOL Light: derived_set_of : A topology->(A->bool)->A->bool
Definition hl_derived_set_of : set -> set :=
  fun A:set => fun v_629262 :e hl_ty_topology A => fun v_629263 :e 2 :^: A => hl_GSPEC A (fun GEN_PVAR_1246 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1246 (if hl_IN A x (hl_topspace A v_629262) = 1 /\ forall t :e 2 :^: A, hl_IN A x t = 1 /\ hl_open_in A v_629262 t = 1 -> exists y :e A, ~ y = x /\ (hl_IN A y v_629263 = 1 /\ hl_IN A y t = 1) then 1 else 0) x = 1 then 1 else 0).

// HOL Light: closure_of : A topology->(A->bool)->A->bool
Definition hl_closure_of : set -> set :=
  fun A:set => fun v_629701 :e hl_ty_topology A => fun v_629702 :e 2 :^: A => hl_GSPEC A (fun GEN_PVAR_1249 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1249 (if hl_IN A x (hl_topspace A v_629701) = 1 /\ forall t :e 2 :^: A, hl_IN A x t = 1 /\ hl_open_in A v_629701 t = 1 -> exists y :e A, hl_IN A y v_629702 = 1 /\ hl_IN A y t = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: interior_of : ?360953 topology->(?360953->bool)->?360953->bool
Definition hl_interior_of : set -> set :=
  fun T360953:set => fun v_630241 :e hl_ty_topology T360953 => fun v_630242 :e 2 :^: T360953 => hl_GSPEC T360953 (fun GEN_PVAR_1259 :e T360953 => if exists x :e T360953, hl_SETSPEC T360953 GEN_PVAR_1259 (if exists t :e 2 :^: T360953, hl_open_in T360953 v_630241 t = 1 /\ (hl_IN T360953 x t = 1 /\ hl_SUBSET T360953 t v_630242 = 1) then 1 else 0) x = 1 then 1 else 0).

// HOL Light: frontier_of : ?362289 topology->(?362289->bool)->?362289->bool
Definition hl_frontier_of : set -> set :=
  fun T362289:set => fun v_630602 :e hl_ty_topology T362289 => fun v_630603 :e 2 :^: T362289 => hl_DIFF T362289 (hl_closure_of T362289 v_630602 v_630603) (hl_interior_of T362289 v_630602 v_630603).

// HOL Light: locally_finite_in : ?364017 topology->((?364017->bool)->bool)->bool
Definition hl_locally_finite_in : set -> set :=
  fun T364017:set => fun v_631005 :e hl_ty_topology T364017 => fun v_631006 :e 2 :^: (2 :^: T364017) => if (forall u :e 2 :^: T364017, hl_IN (2 :^: T364017) u v_631006 = 1 -> hl_SUBSET T364017 u (hl_topspace T364017 v_631005) = 1) /\ forall x :e T364017, hl_IN T364017 x (hl_topspace T364017 v_631005) = 1 -> exists v :e 2 :^: T364017, hl_open_in T364017 v_631005 v = 1 /\ (hl_IN T364017 x v = 1 /\ hl_FINITE (2 :^: T364017) (hl_GSPEC (2 :^: T364017) (fun GEN_PVAR_1263 :e 2 :^: T364017 => if exists u :e 2 :^: T364017, hl_SETSPEC (2 :^: T364017) GEN_PVAR_1263 (if hl_IN (2 :^: T364017) u v_631006 = 1 /\ ~ hl_INTER T364017 u v = hl_EMPTY T364017 then 1 else 0) u = 1 then 1 else 0)) = 1) then 1 else 0.

// HOL Light: continuous_map : A topology#B topology->(A->B)->bool
Definition hl_continuous_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_631231 :e hl_ty_topology A :*: hl_ty_topology B => fun v_631232 :e B :^: A => if (forall x :e A, hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_631231)) = 1 -> hl_IN B (v_631232 x) (hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_631231)) = 1) /\ forall u :e 2 :^: B, hl_open_in B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_631231) u = 1 -> hl_open_in A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_631231) (hl_GSPEC A (fun GEN_PVAR_1276 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1276 (if hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_631231)) = 1 /\ hl_IN B (v_631232 x) u = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0.

// HOL Light: open_map : A topology#B topology->(A->B)->bool
Definition hl_open_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_639273 :e hl_ty_topology A :*: hl_ty_topology B => fun v_639274 :e B :^: A => if forall u :e 2 :^: A, hl_open_in A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_639273) u = 1 -> hl_open_in B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_639273) (hl_IMAGE A B v_639274 u) = 1 then 1 else 0.

// HOL Light: closed_map : A topology#B topology->(A->B)->bool
Definition hl_closed_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_639290 :e hl_ty_topology A :*: hl_ty_topology B => fun v_639291 :e B :^: A => if forall u :e 2 :^: A, hl_closed_in A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_639290) u = 1 -> hl_closed_in B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_639290) (hl_IMAGE A B v_639291 u) = 1 then 1 else 0.

// HOL Light: quotient_map : A topology#B topology->(A->B)->bool
Definition hl_quotient_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_643121 :e hl_ty_topology A :*: hl_ty_topology B => fun v_643122 :e B :^: A => if hl_IMAGE A B v_643122 (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_643121)) = hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_643121) /\ forall u :e 2 :^: B, hl_SUBSET B u (hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_643121)) = 1 -> (hl_open_in A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_643121) (hl_GSPEC A (fun GEN_PVAR_1371 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1371 (if hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_643121)) = 1 /\ hl_IN B (v_643122 x) u = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_open_in B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_643121) u = 1) then 1 else 0.

// HOL Light: prod_topology : A topology->B topology->(A#B) topology
Definition hl_prod_topology : set -> set -> set :=
  fun A:set => fun B:set => fun v_652356 :e hl_ty_topology A => fun v_652357 :e hl_ty_topology B => hl_topology (A :*: B) (hl_UNION_OF (A :*: B) (hl_ARBITRARY (A :*: B)) (hl_GSPEC (2 :^: (A :*: B)) (fun GEN_PVAR_1385 :e 2 :^: (A :*: B) => if exists s :e 2 :^: A, exists t :e 2 :^: B, hl_SETSPEC (2 :^: (A :*: B)) GEN_PVAR_1385 (if hl_open_in A v_652356 s = 1 /\ hl_open_in B v_652357 t = 1 then 1 else 0) (hl_CROSS A B s t) = 1 then 1 else 0))).

// HOL Light: product_topology : (K->bool)->(K->A topology)->(K->A) topology
Definition hl_product_topology : set -> set -> set :=
  fun K:set => fun A:set => fun v_656241 :e 2 :^: K => fun v_656242 :e hl_ty_topology A :^: K => hl_topology (A :^: K) (hl_UNION_OF (A :^: K) (hl_ARBITRARY (A :^: K)) (hl_relative_to (A :^: K) (hl_INTERSECTION_OF (A :^: K) (hl_FINITE (2 :^: (A :^: K))) (hl_GSPEC (2 :^: (A :^: K)) (fun GEN_PVAR_1390 :e 2 :^: (A :^: K) => if exists k :e K, exists u :e 2 :^: A, hl_SETSPEC (2 :^: (A :^: K)) GEN_PVAR_1390 (if hl_IN K k v_656241 = 1 /\ hl_open_in A (v_656242 k) u = 1 then 1 else 0) (hl_GSPEC (A :^: K) (fun GEN_PVAR_1389 :e A :^: K => if exists x :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_1389 (hl_IN A (x k) u) x = 1 then 1 else 0)) = 1 then 1 else 0))) (hl_GSPEC (A :^: K) (fun GEN_PVAR_1391 :e A :^: K => if exists x :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_1391 (if hl_EXTENSIONAL K A v_656241 x = 1 /\ forall k :e K, hl_IN K k v_656241 = 1 -> hl_IN A (x k) (hl_topspace A (v_656242 k)) = 1 then 1 else 0) x = 1 then 1 else 0)))).

// HOL Light: sum_topology : (K->bool)->(K->A topology)->(K#A) topology
Definition hl_sum_topology : set -> set -> set :=
  fun K:set => fun A:set => fun v_663332 :e 2 :^: K => fun v_663333 :e hl_ty_topology A :^: K => hl_topology (K :*: A) (hl_GSPEC (2 :^: (K :*: A)) (fun GEN_PVAR_1454 :e 2 :^: (K :*: A) => if exists u :e 2 :^: (K :*: A), hl_SETSPEC (2 :^: (K :*: A)) GEN_PVAR_1454 (if hl_SUBSET (K :*: A) u (hl_disjoint_union K A v_663332 (hl_o (hl_ty_topology A) (2 :^: A) K (hl_topspace A) v_663333)) = 1 /\ forall i :e K, hl_IN K i v_663332 = 1 -> hl_open_in A (v_663333 i) (hl_GSPEC A (fun GEN_PVAR_1453 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1453 (hl_IN (K :*: A) (hl_pair K A i x) u) x = 1 then 1 else 0)) = 1 then 1 else 0) u = 1 then 1 else 0)).

// HOL Light: homeomorphic_map : A topology#B topology->(A->B)->bool
Definition hl_homeomorphic_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_663859 :e hl_ty_topology A :*: hl_ty_topology B => fun v_663860 :e B :^: A => if hl_quotient_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_663859) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_663859)) v_663860 = 1 /\ forall x y :e A, hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_663859)) = 1 /\ hl_IN A y (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_663859)) = 1 -> (v_663860 x = v_663860 y <-> x = y) then 1 else 0.

// HOL Light: homeomorphic_maps : A topology#B topology->(A->B)#(B->A)->bool
Definition hl_homeomorphic_maps : set -> set -> set :=
  fun A:set => fun B:set => fun v_663876 :e hl_ty_topology A :*: hl_ty_topology B => fun v_663877 :e B :^: A :*: A :^: B => if hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_663876) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_663876)) (hl_FST (B :^: A) (A :^: B) v_663877) = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_663876) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_663876)) (hl_SND (B :^: A) (A :^: B) v_663877) = 1 /\ ((forall x :e A, hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_663876)) = 1 -> hl_SND (B :^: A) (A :^: B) v_663877 (hl_FST (B :^: A) (A :^: B) v_663877 x) = x) /\ forall y :e B, hl_IN B y (hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_663876)) = 1 -> hl_FST (B :^: A) (A :^: B) v_663877 (hl_SND (B :^: A) (A :^: B) v_663877 y) = y)) then 1 else 0.

// HOL Light: homeomorphic_space : A topology->B topology->bool
Definition hl_homeomorphic_space : set -> set -> set :=
  fun A:set => fun B:set => fun v_717278 :e hl_ty_topology A => fun v_717279 :e hl_ty_topology B => if exists f :e B :^: A, exists g :e A :^: B, hl_homeomorphic_maps A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) v_717278 v_717279) (hl_pair (B :^: A) (A :^: B) f g) = 1 then 1 else 0.

// HOL Light: embedding_map : A topology#B topology->(A->B)->bool
Definition hl_embedding_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_718612 :e hl_ty_topology A :*: hl_ty_topology B => fun v_718613 :e B :^: A => hl_homeomorphic_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_718612) (hl_subtopology B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_718612) (hl_IMAGE A B v_718613 (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_718612))))) v_718613.

// HOL Light: retraction_maps : A topology#B topology->(A->B)#(B->A)->bool
Definition hl_retraction_maps : set -> set -> set :=
  fun A:set => fun B:set => fun v_721743 :e hl_ty_topology A :*: hl_ty_topology B => fun v_721744 :e B :^: A :*: A :^: B => if hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_721743) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_721743)) (hl_FST (B :^: A) (A :^: B) v_721744) = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_721743) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_721743)) (hl_SND (B :^: A) (A :^: B) v_721744) = 1 /\ forall x :e B, hl_IN B x (hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_721743)) = 1 -> hl_FST (B :^: A) (A :^: B) v_721744 (hl_SND (B :^: A) (A :^: B) v_721744 x) = x) then 1 else 0.

// HOL Light: section_map : A topology#B topology->(A->B)->bool
Definition hl_section_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_721765 :e hl_ty_topology A :*: hl_ty_topology B => fun v_721766 :e B :^: A => if exists g :e A :^: B, hl_retraction_maps B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_721765) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_721765)) (hl_pair (A :^: B) (B :^: A) g v_721766) = 1 then 1 else 0.

// HOL Light: retraction_map : A topology#B topology->(A->B)->bool
Definition hl_retraction_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_721782 :e hl_ty_topology A :*: hl_ty_topology B => fun v_721783 :e B :^: A => if exists g :e A :^: B, hl_retraction_maps A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_721782) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_721782)) (hl_pair (B :^: A) (A :^: B) v_721783 g) = 1 then 1 else 0.

// HOL Light: retract_of_space : (A->bool)->A topology->bool
Definition hl_retract_of_space : set -> set :=
  fun A:set => fun v_727335 :e 2 :^: A => fun v_727336 :e hl_ty_topology A => if hl_SUBSET A v_727335 (hl_topspace A v_727336) = 1 /\ exists r :e A :^: A, hl_continuous_map A A (hl_pair (hl_ty_topology A) (hl_ty_topology A) v_727336 (hl_subtopology A v_727336 v_727335)) r = 1 /\ forall x :e A, hl_IN A x v_727335 = 1 -> r x = x then 1 else 0.

// HOL Light: compact_in : A topology->(A->bool)->bool
Definition hl_compact_in : set -> set :=
  fun A:set => fun v_728114 :e hl_ty_topology A => fun v_728115 :e 2 :^: A => if hl_SUBSET A v_728115 (hl_topspace A v_728114) = 1 /\ forall U :e 2 :^: (2 :^: A), (forall u :e 2 :^: A, hl_IN (2 :^: A) u U = 1 -> hl_open_in A v_728114 u = 1) /\ hl_SUBSET A v_728115 (hl_UNIONS A U) = 1 -> exists V :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) V = 1 /\ (hl_SUBSET (2 :^: A) V U = 1 /\ hl_SUBSET A v_728115 (hl_UNIONS A V) = 1) then 1 else 0.

// HOL Light: compact_space : A topology->bool
Definition hl_compact_space : set -> set :=
  fun A:set => fun v_728126 :e hl_ty_topology A => hl_compact_in A v_728126 (hl_topspace A v_728126).

// HOL Light: separated_in : ?392782 topology->(?392782->bool)->(?392782->bool)->bool
Definition hl_separated_in : set -> set :=
  fun T392782:set => fun v_741253 :e hl_ty_topology T392782 => fun v_741254 :e 2 :^: T392782 => fun v_741255 :e 2 :^: T392782 => if hl_SUBSET T392782 v_741254 (hl_topspace T392782 v_741253) = 1 /\ (hl_SUBSET T392782 v_741255 (hl_topspace T392782 v_741253) = 1 /\ (hl_INTER T392782 v_741254 (hl_closure_of T392782 v_741253 v_741255) = hl_EMPTY T392782 /\ hl_INTER T392782 v_741255 (hl_closure_of T392782 v_741253 v_741254) = hl_EMPTY T392782)) then 1 else 0.

// HOL Light: t1_space : ?393963 topology->bool
Definition hl_t1_space : set -> set :=
  fun T393963:set => fun v_743397 :e hl_ty_topology T393963 => if forall x y :e T393963, hl_IN T393963 x (hl_topspace T393963 v_743397) = 1 /\ (hl_IN T393963 y (hl_topspace T393963 v_743397) = 1 /\ ~ x = y) -> exists u :e 2 :^: T393963, hl_open_in T393963 v_743397 u = 1 /\ (hl_IN T393963 x u = 1 /\ ~ hl_IN T393963 y u = 1) then 1 else 0.

// HOL Light: hausdorff_space : A topology->bool
Definition hl_hausdorff_space : set -> set :=
  fun A:set => fun v_744580 :e hl_ty_topology A => if forall x y :e A, hl_IN A x (hl_topspace A v_744580) = 1 /\ (hl_IN A y (hl_topspace A v_744580) = 1 /\ ~ x = y) -> exists u v :e 2 :^: A, hl_open_in A v_744580 u = 1 /\ (hl_open_in A v_744580 v = 1 /\ (hl_IN A x u = 1 /\ (hl_IN A y v = 1 /\ hl_DISJOINT A u v = 1))) then 1 else 0.

// HOL Light: kc_space : A topology->bool
Definition hl_kc_space : set -> set :=
  fun A:set => fun v_751137 :e hl_ty_topology A => if forall s :e 2 :^: A, hl_compact_in A v_751137 s = 1 -> hl_closed_in A v_751137 s = 1 then 1 else 0.

// HOL Light: proper_map : A topology#B topology->(A->B)->bool
Definition hl_proper_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_752629 :e hl_ty_topology A :*: hl_ty_topology B => fun v_752630 :e B :^: A => if hl_closed_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_752629) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_752629)) v_752630 = 1 /\ forall y :e B, hl_IN B y (hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_752629)) = 1 -> hl_compact_in A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_752629) (hl_GSPEC A (fun GEN_PVAR_1536 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1536 (if hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_752629)) = 1 /\ v_752630 x = y then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0.

// HOL Light: perfect_map : A topology#B topology->(A->B)->bool
Definition hl_perfect_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_761394 :e hl_ty_topology A :*: hl_ty_topology B => fun v_761395 :e B :^: A => if hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_761394) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_761394)) v_761395 = 1 /\ (hl_proper_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_761394) (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_761394)) v_761395 = 1 /\ hl_IMAGE A B v_761395 (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_761394)) = hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_761394)) then 1 else 0.

// HOL Light: lindelof_space : A topology->bool
Definition hl_lindelof_space : set -> set :=
  fun A:set => fun v_766199 :e hl_ty_topology A => if forall U :e 2 :^: (2 :^: A), (forall u :e 2 :^: A, hl_IN (2 :^: A) u U = 1 -> hl_open_in A v_766199 u = 1) /\ hl_UNIONS A U = hl_topspace A v_766199 -> exists V :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) V = 1 /\ (hl_SUBSET (2 :^: A) V U = 1 /\ hl_UNIONS A V = hl_topspace A v_766199) then 1 else 0.

// HOL Light: second_countable : A topology->bool
Definition hl_second_countable : set -> set :=
  fun A:set => fun v_768614 :e hl_ty_topology A => if exists b :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) b = 1 /\ ((forall v :e 2 :^: A, hl_IN (2 :^: A) v b = 1 -> hl_open_in A v_768614 v = 1) /\ forall u :e 2 :^: A, forall x :e A, hl_open_in A v_768614 u = 1 /\ hl_IN A x u = 1 -> exists v :e 2 :^: A, hl_IN (2 :^: A) v b = 1 /\ (hl_IN A x v = 1 /\ hl_SUBSET A v u = 1)) then 1 else 0.

// HOL Light: first_countable : A topology->bool
Definition hl_first_countable : set -> set :=
  fun A:set => fun v_768619 :e hl_ty_topology A => if forall x :e A, hl_IN A x (hl_topspace A v_768619) = 1 -> exists b :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) b = 1 /\ ((forall v :e 2 :^: A, hl_IN (2 :^: A) v b = 1 -> hl_open_in A v_768619 v = 1) /\ forall u :e 2 :^: A, hl_open_in A v_768619 u = 1 /\ hl_IN A x u = 1 -> exists v :e 2 :^: A, hl_IN (2 :^: A) v b = 1 /\ (hl_IN A x v = 1 /\ hl_SUBSET A v u = 1)) then 1 else 0.

// HOL Light: separable_space : A topology->bool
Definition hl_separable_space : set -> set :=
  fun A:set => fun v_768624 :e hl_ty_topology A => if exists c :e 2 :^: A, hl_COUNTABLE A c = 1 /\ (hl_SUBSET A c (hl_topspace A v_768624) = 1 /\ hl_closure_of A v_768624 c = hl_topspace A v_768624) then 1 else 0.

// HOL Light: netfilter : A net->(A->bool)->bool
Definition hl_netfilter : set -> set :=
  fun A:set => fun v_770617 :e hl_ty_net A => hl_FST (2 :^: (2 :^: A)) (2 :^: A) (hl_dest_net A v_770617).

// HOL Light: netlimits : A net->A->bool
Definition hl_netlimits : set -> set :=
  fun A:set => fun v_770622 :e hl_ty_net A => hl_SND (2 :^: (2 :^: A)) (2 :^: A) (hl_dest_net A v_770622).

// HOL Light: netlimit : A net->A
Definition hl_netlimit : set -> set :=
  fun A:set => fun v_770627 :e hl_ty_net A => hl_select A (fun x :e A => hl_IN A x (hl_netlimits A v_770627)).

// HOL Light: within : ?410361 net->(?410361->bool)->?410361 net
Definition hl_within : set -> set :=
  fun T410361:set => fun v_770655 :e hl_ty_net T410361 => fun v_770656 :e 2 :^: T410361 => hl_mk_net T410361 (hl_pair (2 :^: (2 :^: T410361)) (2 :^: T410361) (hl_relative_to T410361 (hl_netfilter T410361 v_770655) v_770656) (hl_netlimits T410361 v_770655)).

// HOL Light: eventually : (A->bool)->A net->bool
Definition hl_eventually : set -> set :=
  fun A:set => fun v_770735 :e 2 :^: A => fun v_770736 :e hl_ty_net A => if hl_netfilter A v_770736 = hl_EMPTY (2 :^: A) \/ exists u :e 2 :^: A, hl_IN (2 :^: A) u (hl_netfilter A v_770736) = 1 /\ forall x :e A, hl_IN A x (hl_DIFF A u (hl_netlimits A v_770736)) = 1 -> v_770735 x = 1 then 1 else 0.

// HOL Light: trivial_limit : ?410534 net->bool
Definition hl_trivial_limit : set -> set :=
  fun T410534:set => fun v_770747 :e hl_ty_net T410534 => hl_eventually T410534 (fun x :e T410534 => if False then 1 else 0) v_770747.

// HOL Light: sequentially : num net
Definition hl_sequentially : set :=
  hl_mk_net omega (hl_pair (2 :^: (2 :^: omega)) (2 :^: omega) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_1595 :e 2 :^: omega => if exists n :e omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_1595 (hl_IN omega n (hl_UNIV omega)) (hl_from n) = 1 then 1 else 0)) (hl_EMPTY omega)).

// HOL Light: fsigma_in : A topology->(A->bool)->bool
Definition hl_fsigma_in : set -> set :=
  fun A:set => fun v_771257 :e hl_ty_topology A => hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_closed_in A v_771257).

// HOL Light: gdelta_in : A topology->(A->bool)->bool
Definition hl_gdelta_in : set -> set :=
  fun A:set => fun v_771262 :e hl_ty_topology A => hl_relative_to A (hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_open_in A v_771262)) (hl_topspace A v_771262).

// HOL Light: borel_in : A topology->(A->bool)->bool
Definition hl_borel_in : set -> set :=
  fun A:set => fun top :e hl_ty_topology A => fun a :e 2 :^: A => if forall borel_in' :e 2 :^: (2 :^: A), (forall a1 :e 2 :^: A, hl_open_in A top a1 = 1 \/ ((exists s :e 2 :^: A, a1 = hl_DIFF A (hl_topspace A top) s /\ borel_in' s = 1) \/ (exists u :e 2 :^: (2 :^: A), a1 = hl_UNIONS A u /\ (hl_COUNTABLE (2 :^: A) u = 1 /\ forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> borel_in' s = 1))) -> borel_in' a1 = 1) -> borel_in' a = 1 then 1 else 0.

// HOL Light: borel_measurable_map : A topology#B topology->(A->B)->bool
Definition hl_borel_measurable_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_773851 :e hl_ty_topology A :*: hl_ty_topology B => fun v_773852 :e B :^: A => if (forall x :e A, hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_773851)) = 1 -> hl_IN B (v_773852 x) (hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_773851)) = 1) /\ forall u :e 2 :^: B, hl_borel_in B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_773851) u = 1 -> hl_borel_in A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_773851) (hl_GSPEC A (fun GEN_PVAR_1620 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1620 (if hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_773851)) = 1 /\ hl_IN B (v_773852 x) u = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0.

// HOL Light: is_metric_space : (A->bool)#(A#A->real)->bool
Definition hl_is_metric_space : set -> set :=
  fun A:set => fun v_775331 :e 2 :^: A :*: R :^: (A :*: A) => if (forall x y :e A, hl_IN A x (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1 /\ hl_IN A y (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_SND (2 :^: A) (R :^: (A :*: A)) v_775331 (hl_pair A A x y)) = 1) /\ ((forall x y :e A, hl_IN A x (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1 /\ hl_IN A y (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1 -> (hl_SND (2 :^: A) (R :^: (A :*: A)) v_775331 (hl_pair A A x y) = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = y)) /\ ((forall x y :e A, hl_IN A x (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1 /\ hl_IN A y (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1 -> hl_SND (2 :^: A) (R :^: (A :*: A)) v_775331 (hl_pair A A x y) = hl_SND (2 :^: A) (R :^: (A :*: A)) v_775331 (hl_pair A A y x)) /\ forall x y z :e A, hl_IN A x (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1 /\ (hl_IN A y (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1 /\ hl_IN A z (hl_FST (2 :^: A) (R :^: (A :*: A)) v_775331) = 1) -> hl_real_le (hl_SND (2 :^: A) (R :^: (A :*: A)) v_775331 (hl_pair A A x z)) (hl_real_add (hl_SND (2 :^: A) (R :^: (A :*: A)) v_775331 (hl_pair A A x y)) (hl_SND (2 :^: A) (R :^: (A :*: A)) v_775331 (hl_pair A A y z))) = 1)) then 1 else 0.

// HOL Light type definition metric (abs metric, rep dest_metric)
Definition hl_ty_metric : set -> set :=
  fun A:set => {x :e 2 :^: A :*: R :^: (A :*: A) | hl_is_metric_space A x = 1}.
Definition hl_metric : set -> set :=
  fun A:set => hl_subtype_abs (2 :^: A :*: R :^: (A :*: A)) (hl_is_metric_space A).
Definition hl_dest_metric : set -> set :=
  fun A:set => hl_subtype_rep (2 :^: A :*: R :^: (A :*: A)) (hl_is_metric_space A).

// HOL Light: mspace : A metric->A->bool
Definition hl_mspace : set -> set :=
  fun A:set => fun v_775571 :e hl_ty_metric A => hl_FST (2 :^: A) (R :^: (A :*: A)) (hl_dest_metric A v_775571).

// HOL Light: mdist : A metric->A#A->real
Definition hl_mdist : set -> set :=
  fun A:set => fun v_775576 :e hl_ty_metric A => hl_SND (2 :^: A) (R :^: (A :*: A)) (hl_dest_metric A v_775576).

// HOL Light: mball : A metric->A#real->A->bool
Definition hl_mball : set -> set :=
  fun A:set => fun v_776090 :e hl_ty_metric A => fun v_776091 :e A :*: R => hl_GSPEC A (fun GEN_PVAR_1638 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_1638 (if hl_IN A (hl_FST A R v_776091) (hl_mspace A v_776090) = 1 /\ (hl_IN A y (hl_mspace A v_776090) = 1 /\ hl_real_lt (hl_mdist A v_776090 (hl_pair A A (hl_FST A R v_776091) y)) (hl_SND A R v_776091) = 1) then 1 else 0) y = 1 then 1 else 0).

// HOL Light: submetric : A metric->(A->bool)->A metric
Definition hl_submetric : set -> set :=
  fun A:set => fun v_776160 :e hl_ty_metric A => fun v_776161 :e 2 :^: A => hl_metric A (hl_pair (2 :^: A) (R :^: (A :*: A)) (hl_INTER A v_776161 (hl_mspace A v_776160)) (hl_mdist A v_776160)).

// HOL Light: mtopology : A metric->A topology
Definition hl_mtopology : set -> set :=
  fun A:set => fun v_776178 :e hl_ty_metric A => hl_topology A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1639 :e 2 :^: A => if exists u :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1639 (if hl_SUBSET A u (hl_mspace A v_776178) = 1 /\ forall x :e A, hl_IN A x u = 1 -> exists r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_SUBSET A (hl_mball A v_776178 (hl_pair A R x r)) u = 1 then 1 else 0) u = 1 then 1 else 0)).

// HOL Light: mcball : A metric->A#real->A->bool
Definition hl_mcball : set -> set :=
  fun A:set => fun v_776457 :e hl_ty_metric A => fun v_776458 :e A :*: R => hl_GSPEC A (fun GEN_PVAR_1645 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_1645 (if hl_IN A (hl_FST A R v_776458) (hl_mspace A v_776457) = 1 /\ (hl_IN A y (hl_mspace A v_776457) = 1 /\ hl_real_le (hl_mdist A v_776457 (hl_pair A A (hl_FST A R v_776458) y)) (hl_SND A R v_776458) = 1) then 1 else 0) y = 1 then 1 else 0).

// HOL Light: msphere : A metric->A#real->A->bool
Definition hl_msphere : set -> set :=
  fun A:set => fun v_776670 :e hl_ty_metric A => fun v_776671 :e A :*: R => hl_GSPEC A (fun GEN_PVAR_1646 :e A => if exists y :e A, hl_SETSPEC A GEN_PVAR_1646 (if hl_mdist A v_776670 (hl_pair A A (hl_FST A R v_776671) y) = hl_SND A R v_776671 then 1 else 0) y = 1 then 1 else 0).

// HOL Light: mbounded : A metric->(A->bool)->bool
Definition hl_mbounded : set -> set :=
  fun A:set => fun v_776735 :e hl_ty_metric A => fun v_776736 :e 2 :^: A => if exists c :e A, exists b :e R, hl_SUBSET A v_776736 (hl_mcball A v_776735 (hl_pair A R c b)) = 1 then 1 else 0.

// HOL Light: discrete_metric : (?420635->bool)->?420635 metric
Definition hl_discrete_metric : set -> set :=
  fun T420635:set => fun v_777260 :e 2 :^: T420635 => hl_metric T420635 (hl_pair (2 :^: T420635) (R :^: (T420635 :*: T420635)) v_777260 (hl_GABS (R :^: (T420635 :*: T420635)) (fun f :e R :^: (T420635 :*: T420635) => if forall x y :e T420635, hl_GEQ R (f (hl_pair T420635 T420635 x y)) (hl_COND R (if x = y then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 then 1 else 0))).

// HOL Light: metrizable_space : ?420813 topology->bool
Definition hl_metrizable_space : set -> set :=
  fun T420813:set => fun v_777487 :e hl_ty_topology T420813 => if exists m :e hl_ty_metric T420813, v_777487 = hl_mtopology T420813 m then 1 else 0.

// HOL Light: connected_space : A topology->bool
Definition hl_connected_space : set -> set :=
  fun A:set => fun v_782944 :e hl_ty_topology A => if ~ exists e1 e2 :e 2 :^: A, hl_open_in A v_782944 e1 = 1 /\ (hl_open_in A v_782944 e2 = 1 /\ (hl_SUBSET A (hl_topspace A v_782944) (hl_UNION A e1 e2) = 1 /\ (hl_INTER A e1 e2 = hl_EMPTY A /\ (~ e1 = hl_EMPTY A /\ ~ e2 = hl_EMPTY A)))) then 1 else 0.

// HOL Light: connected_in : ?422034 topology->(?422034->bool)->bool
Definition hl_connected_in : set -> set :=
  fun T422034:set => fun v_782949 :e hl_ty_topology T422034 => fun v_782950 :e 2 :^: T422034 => if hl_SUBSET T422034 v_782950 (hl_topspace T422034 v_782949) = 1 /\ hl_connected_space T422034 (hl_subtopology T422034 v_782949 v_782950) = 1 then 1 else 0.

// HOL Light: separated_between : A topology->(A->bool)->(A->bool)->bool
Definition hl_separated_between : set -> set :=
  fun A:set => fun v_799946 :e hl_ty_topology A => fun v_799947 :e 2 :^: A => fun v_799948 :e 2 :^: A => if exists u v :e 2 :^: A, hl_open_in A v_799946 u = 1 /\ (hl_open_in A v_799946 v = 1 /\ (hl_UNION A u v = hl_topspace A v_799946 /\ (hl_DISJOINT A u v = 1 /\ (hl_SUBSET A v_799947 u = 1 /\ hl_SUBSET A v_799948 v = 1)))) then 1 else 0.

// HOL Light: connected_component_of : ?428457 topology->?428457->?428457->bool
Definition hl_connected_component_of : set -> set :=
  fun T428457:set => fun v_801386 :e hl_ty_topology T428457 => fun v_801387 :e T428457 => fun v_801388 :e T428457 => if exists t :e 2 :^: T428457, hl_connected_in T428457 v_801386 t = 1 /\ (hl_IN T428457 v_801387 t = 1 /\ hl_IN T428457 v_801388 t = 1) then 1 else 0.

// HOL Light: connected_components_of : ?428487 topology->(?428487->bool)->bool
Definition hl_connected_components_of : set -> set :=
  fun T428487:set => fun v_801407 :e hl_ty_topology T428487 => hl_GSPEC (2 :^: T428487) (fun GEN_PVAR_1686 :e 2 :^: T428487 => if exists x :e T428487, hl_SETSPEC (2 :^: T428487) GEN_PVAR_1686 (hl_IN T428487 x (hl_topspace T428487 v_801407)) (hl_connected_component_of T428487 v_801407 x) = 1 then 1 else 0).

// HOL Light: monotone_map : A topology#B topology->(A->B)->bool
Definition hl_monotone_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_813016 :e hl_ty_topology A :*: hl_ty_topology B => fun v_813017 :e B :^: A => if hl_SUBSET B (hl_IMAGE A B v_813017 (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_813016))) (hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_813016)) = 1 /\ forall y :e B, hl_IN B y (hl_topspace B (hl_SND (hl_ty_topology A) (hl_ty_topology B) v_813016)) = 1 -> hl_connected_in A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_813016) (hl_GSPEC A (fun GEN_PVAR_1699 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1699 (if hl_IN A x (hl_topspace A (hl_FST (hl_ty_topology A) (hl_ty_topology B) v_813016)) = 1 /\ v_813017 x = y then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0.

// HOL Light: neighbourhood_base_at : A->((A->bool)->bool)->A topology->bool
Definition hl_neighbourhood_base_at : set -> set :=
  fun A:set => fun v_818157 :e A => fun v_818158 :e 2 :^: (2 :^: A) => fun v_818159 :e hl_ty_topology A => if forall w :e 2 :^: A, hl_open_in A v_818159 w = 1 /\ hl_IN A v_818157 w = 1 -> exists u v :e 2 :^: A, hl_open_in A v_818159 u = 1 /\ (v_818158 v = 1 /\ (hl_IN A v_818157 u = 1 /\ (hl_SUBSET A u v = 1 /\ hl_SUBSET A v w = 1))) then 1 else 0.

// HOL Light: neighbourhood_base_of : ((?432325->bool)->bool)->?432325 topology->bool
Definition hl_neighbourhood_base_of : set -> set :=
  fun T432325:set => fun v_818178 :e 2 :^: (2 :^: T432325) => fun v_818179 :e hl_ty_topology T432325 => if forall x :e T432325, hl_IN T432325 x (hl_topspace T432325 v_818179) = 1 -> hl_neighbourhood_base_at T432325 x v_818178 v_818179 = 1 then 1 else 0.

// HOL Light: t0_space : A topology->bool
Definition hl_t0_space : set -> set :=
  fun A:set => fun v_818616 :e hl_ty_topology A => if forall x y :e A, hl_IN A x (hl_topspace A v_818616) = 1 /\ (hl_IN A y (hl_topspace A v_818616) = 1 /\ ~ x = y) -> exists u :e 2 :^: A, hl_open_in A v_818616 u = 1 /\ ~ (hl_IN A x u = 1 <-> hl_IN A y u = 1) then 1 else 0.

// HOL Light: kolmogorov_quotient : A topology->A->A
Definition hl_kolmogorov_quotient : set -> set :=
  fun A:set => fun v_822527 :e hl_ty_topology A => fun x :e A => hl_select A (fun y :e A => if forall u :e 2 :^: A, hl_open_in A v_822527 u = 1 -> (hl_IN A y u = 1 <-> hl_IN A x u = 1) then 1 else 0).

// HOL Light: regular_space : A topology->bool
Definition hl_regular_space : set -> set :=
  fun A:set => fun v_823792 :e hl_ty_topology A => if forall c :e 2 :^: A, forall a :e A, hl_closed_in A v_823792 c = 1 /\ hl_IN A a (hl_DIFF A (hl_topspace A v_823792) c) = 1 -> exists u v :e 2 :^: A, hl_open_in A v_823792 u = 1 /\ (hl_open_in A v_823792 v = 1 /\ (hl_IN A a u = 1 /\ (hl_SUBSET A c v = 1 /\ hl_DISJOINT A u v = 1))) then 1 else 0.

// HOL Light: locally_compact_space : ?438604 topology->bool
Definition hl_locally_compact_space : set -> set :=
  fun T438604:set => fun v_831936 :e hl_ty_topology T438604 => if forall x :e T438604, hl_IN T438604 x (hl_topspace T438604 v_831936) = 1 -> exists u k :e 2 :^: T438604, hl_open_in T438604 v_831936 u = 1 /\ (hl_compact_in T438604 v_831936 k = 1 /\ (hl_IN T438604 x u = 1 /\ hl_SUBSET T438604 u k = 1)) then 1 else 0.

// HOL Light: real_open : (real->bool)->bool
Definition hl_real_open : set :=
  fun v_847195 :e 2 :^: R => if forall x :e R, hl_IN R x v_847195 = 1 -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall x' :e R, hl_real_lt (hl_real_abs (hl_real_sub x' x)) e1 = 1 -> hl_IN R x' v_847195 = 1 then 1 else 0.

// HOL Light: real_closed : (real->bool)->bool
Definition hl_real_closed : set :=
  fun v_847200 :e 2 :^: R => hl_real_open (hl_DIFF R (hl_UNIV R) v_847200).

// HOL Light: euclideanreal : real topology
Definition hl_euclideanreal : set :=
  hl_topology R hl_real_open.

// HOL Light: real_euclidean_metric : real metric
Definition hl_real_euclidean_metric : set :=
  hl_metric R (hl_pair (2 :^: R) (R :^: (R :*: R)) (hl_UNIV R) (hl_GABS (R :^: (R :*: R)) (fun f :e R :^: (R :*: R) => if forall x y :e R, hl_GEQ R (f (hl_pair R R x y)) (hl_real_abs (hl_real_sub y x)) = 1 then 1 else 0))).

// HOL Light: real_bounded : (real->bool)->bool
Definition hl_real_bounded : set :=
  fun v_847718 :e 2 :^: R => if exists B :e R, forall x :e R, hl_IN R x v_847718 = 1 -> hl_real_le (hl_real_abs x) B = 1 then 1 else 0.

// HOL Light: real_compact : (real->bool)->bool
Definition hl_real_compact : set :=
  fun v_849000 :e 2 :^: R => hl_compact_in R hl_euclideanreal v_849000.

// HOL Light: atpointof : ?445254 topology->?445254->?445254 net
Definition hl_atpointof : set -> set :=
  fun T445254:set => fun v_849888 :e hl_ty_topology T445254 => fun v_849889 :e T445254 => hl_mk_net T445254 (hl_pair (2 :^: (2 :^: T445254)) (2 :^: T445254) (hl_GSPEC (2 :^: T445254) (fun GEN_PVAR_1817 :e 2 :^: T445254 => if exists u :e 2 :^: T445254, hl_SETSPEC (2 :^: T445254) GEN_PVAR_1817 (if hl_open_in T445254 v_849888 u = 1 /\ hl_IN T445254 v_849889 u = 1 then 1 else 0) u = 1 then 1 else 0)) (hl_INSERT T445254 v_849889 (hl_EMPTY T445254))).

// HOL Light: limit : B topology->(A->B)->B->A net->bool
Definition hl_limit : set -> set -> set :=
  fun B:set => fun A:set => fun v_850228 :e hl_ty_topology B => fun v_850229 :e B :^: A => fun v_850230 :e B => fun v_850231 :e hl_ty_net A => if hl_IN B v_850230 (hl_topspace B v_850228) = 1 /\ forall u :e 2 :^: B, hl_open_in B v_850228 u = 1 /\ hl_IN B v_850230 u = 1 -> hl_eventually A (fun x :e A => hl_IN B (v_850229 x) u) v_850231 = 1 then 1 else 0.

// HOL Light: cauchy_in : A metric->(num->A)->bool
Definition hl_cauchy_in : set -> set :=
  fun A:set => fun v_854399 :e hl_ty_metric A => fun v_854400 :e A :^: omega => if (forall n :e omega, hl_IN A (v_854400 n) (hl_mspace A v_854399) = 1) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N :e omega, forall n n' :e omega, hl_le N n = 1 /\ hl_le N n' = 1 -> hl_real_lt (hl_mdist A v_854399 (hl_pair A A (v_854400 n) (v_854400 n'))) e1 = 1 then 1 else 0.

// HOL Light: mcomplete : A metric->bool
Definition hl_mcomplete : set -> set :=
  fun A:set => fun v_854411 :e hl_ty_metric A => if forall s :e A :^: omega, hl_cauchy_in A v_854411 s = 1 -> exists x :e A, hl_limit A omega (hl_mtopology A v_854411) s x hl_sequentially = 1 then 1 else 0.

// HOL Light: totally_bounded_in : A metric->(A->bool)->bool
Definition hl_totally_bounded_in : set -> set :=
  fun A:set => fun v_858885 :e hl_ty_metric A => fun v_858886 :e 2 :^: A => if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists k :e 2 :^: A, hl_FINITE A k = 1 /\ (hl_SUBSET A k v_858886 = 1 /\ hl_SUBSET A v_858886 (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1875 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1875 (hl_IN A x k) (hl_mball A v_858885 (hl_pair A R x e1)) = 1 then 1 else 0))) = 1) then 1 else 0.

// HOL Light: topcontinuous_at : A topology->B topology->(A->B)->A->bool
Definition hl_topcontinuous_at : set -> set -> set :=
  fun A:set => fun B:set => fun v_862273 :e hl_ty_topology A => fun v_862274 :e hl_ty_topology B => fun v_862275 :e B :^: A => fun v_862276 :e A => if hl_IN A v_862276 (hl_topspace A v_862273) = 1 /\ ((forall x :e A, hl_IN A x (hl_topspace A v_862273) = 1 -> hl_IN B (v_862275 x) (hl_topspace B v_862274) = 1) /\ forall v :e 2 :^: B, hl_open_in B v_862274 v = 1 /\ hl_IN B (v_862275 v_862276) v = 1 -> exists u :e 2 :^: A, hl_open_in A v_862273 u = 1 /\ (hl_IN A v_862276 u = 1 /\ forall y :e A, hl_IN A y u = 1 -> hl_IN B (v_862275 y) v = 1)) then 1 else 0.

// HOL Light: ---> : (A->real)->real->A net->bool
Definition hl_tendsto_real : set -> set :=
  fun A:set => fun v_863418 :e R :^: A => fun v_863419 :e R => fun v_863420 :e hl_ty_net A => hl_limit R A hl_euclideanreal v_863418 v_863419 v_863420.

// HOL Light: reallim : A net->(A->real)->real
Definition hl_reallim : set -> set :=
  fun A:set => fun v_863439 :e hl_ty_net A => fun v_863440 :e R :^: A => hl_select R (fun l :e R => hl_tendsto_real A v_863440 l v_863439).

// HOL Light: real_sums : (num->real)->real->(num->bool)->bool
Definition hl_real_sums : set :=
  fun v_863455 :e R :^: omega => fun v_863456 :e R => fun v_863457 :e 2 :^: omega => hl_tendsto_real omega (fun n :e omega => hl_sum omega (hl_INTER omega v_863457 (hl_numseg (hl_NUMERAL hl_zero) n)) v_863455) v_863456 hl_sequentially.

// HOL Light: real_infsum : (num->bool)->(num->real)->real
Definition hl_real_infsum : set :=
  fun v_863476 :e 2 :^: omega => fun v_863477 :e R :^: omega => hl_select R (fun l :e R => hl_real_sums v_863477 l v_863476).

// HOL Light: real_summable : (num->bool)->(num->real)->bool
Definition hl_real_summable : set :=
  fun v_863488 :e 2 :^: omega => fun v_863489 :e R :^: omega => if exists l :e R, hl_real_sums v_863489 l v_863488 = 1 then 1 else 0.

// HOL Light: path_in : A topology->(real->A)->bool
Definition hl_path_in : set -> set :=
  fun A:set => fun v_864044 :e hl_ty_topology A => fun v_864045 :e A :^: R => hl_continuous_map R A (hl_pair (hl_ty_topology R) (hl_ty_topology A) (hl_subtopology R hl_euclideanreal (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (R :*: R))))) v_864044) v_864045.

// HOL Light: path_connected_space : A topology->bool
Definition hl_path_connected_space : set -> set :=
  fun A:set => fun v_864472 :e hl_ty_topology A => if forall x y :e A, hl_IN A x (hl_topspace A v_864472) = 1 /\ hl_IN A y (hl_topspace A v_864472) = 1 -> exists g :e A :^: R, hl_path_in A v_864472 g = 1 /\ (g (hl_real_of_num (hl_NUMERAL hl_zero)) = x /\ g (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = y) then 1 else 0.

// HOL Light: path_connected_in : A topology->(A->bool)->bool
Definition hl_path_connected_in : set -> set :=
  fun A:set => fun v_864477 :e hl_ty_topology A => fun v_864478 :e 2 :^: A => if hl_SUBSET A v_864478 (hl_topspace A v_864477) = 1 /\ hl_path_connected_space A (hl_subtopology A v_864477 v_864478) = 1 then 1 else 0.

// HOL Light: path_component_of : ?467417 topology->?467417->?467417->bool
Definition hl_path_component_of : set -> set :=
  fun T467417:set => fun v_866390 :e hl_ty_topology T467417 => fun v_866391 :e T467417 => fun v_866392 :e T467417 => if exists g :e T467417 :^: R, hl_path_in T467417 v_866390 g = 1 /\ (g (hl_real_of_num (hl_NUMERAL hl_zero)) = v_866391 /\ g (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = v_866392) then 1 else 0.

// HOL Light: path_components_of : ?467444 topology->(?467444->bool)->bool
Definition hl_path_components_of : set -> set :=
  fun T467444:set => fun v_866411 :e hl_ty_topology T467444 => hl_GSPEC (2 :^: T467444) (fun GEN_PVAR_1940 :e 2 :^: T467444 => if exists x :e T467444, hl_SETSPEC (2 :^: T467444) GEN_PVAR_1940 (hl_IN T467444 x (hl_topspace T467444 v_866411)) (hl_path_component_of T467444 v_866411 x) = 1 then 1 else 0).

// HOL Light: normal_space : A topology->bool
Definition hl_normal_space : set -> set :=
  fun A:set => fun v_878296 :e hl_ty_topology A => if forall s t :e 2 :^: A, hl_closed_in A v_878296 s = 1 /\ (hl_closed_in A v_878296 t = 1 /\ hl_DISJOINT A s t = 1) -> exists u v :e 2 :^: A, hl_open_in A v_878296 u = 1 /\ (hl_open_in A v_878296 v = 1 /\ (hl_SUBSET A s u = 1 /\ (hl_SUBSET A t v = 1 /\ hl_DISJOINT A u v = 1))) then 1 else 0.

// HOL Light: completely_regular_space : A topology->bool
Definition hl_completely_regular_space : set -> set :=
  fun A:set => fun v_894176 :e hl_ty_topology A => if forall s :e 2 :^: A, forall x :e A, hl_closed_in A v_894176 s = 1 /\ hl_IN A x (hl_DIFF A (hl_topspace A v_894176) s) = 1 -> exists f :e R :^: A, hl_continuous_map A R (hl_pair (hl_ty_topology A) (hl_ty_topology R) v_894176 (hl_subtopology R hl_euclideanreal (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (R :*: R)))))) f = 1 /\ (f x = hl_real_of_num (hl_NUMERAL hl_zero) /\ forall x1 :e A, hl_IN A x1 s = 1 -> f x1 = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) then 1 else 0.

// HOL Light: weakly_locally_path_connected_at : ?480841->?480841 topology->bool
Definition hl_weakly_locally_path_connected_at : set -> set :=
  fun T480841:set => fun v_897819 :e T480841 => fun v_897820 :e hl_ty_topology T480841 => hl_neighbourhood_base_at T480841 v_897819 (hl_path_connected_in T480841 v_897820) v_897820.

// HOL Light: locally_path_connected_at : ?480849->?480849 topology->bool
Definition hl_locally_path_connected_at : set -> set :=
  fun T480849:set => fun v_897831 :e T480849 => fun v_897832 :e hl_ty_topology T480849 => hl_neighbourhood_base_at T480849 v_897831 (fun u :e 2 :^: T480849 => if hl_open_in T480849 v_897832 u = 1 /\ hl_path_connected_in T480849 v_897832 u = 1 then 1 else 0) v_897832.

// HOL Light: locally_path_connected_space : ?480869 topology->bool
Definition hl_locally_path_connected_space : set -> set :=
  fun T480869:set => fun v_897843 :e hl_ty_topology T480869 => hl_neighbourhood_base_of T480869 (hl_path_connected_in T480869 v_897843) v_897843.

// HOL Light: weakly_locally_connected_at : ?482594->?482594 topology->bool
Definition hl_weakly_locally_connected_at : set -> set :=
  fun T482594:set => fun v_899288 :e T482594 => fun v_899289 :e hl_ty_topology T482594 => hl_neighbourhood_base_at T482594 v_899288 (hl_connected_in T482594 v_899289) v_899289.

// HOL Light: locally_connected_at : ?482602->?482602 topology->bool
Definition hl_locally_connected_at : set -> set :=
  fun T482602:set => fun v_899300 :e T482602 => fun v_899301 :e hl_ty_topology T482602 => hl_neighbourhood_base_at T482602 v_899300 (fun u :e 2 :^: T482602 => if hl_open_in T482602 v_899301 u = 1 /\ hl_connected_in T482602 v_899301 u = 1 then 1 else 0) v_899301.

// HOL Light: locally_connected_space : ?482622 topology->bool
Definition hl_locally_connected_space : set -> set :=
  fun T482622:set => fun v_899312 :e hl_ty_topology T482622 => hl_neighbourhood_base_of T482622 (hl_connected_in T482622 v_899312) v_899312.

// HOL Light: quasi_component_of : ?484315 topology->?484315->?484315->bool
Definition hl_quasi_component_of : set -> set :=
  fun T484315:set => fun v_900700 :e hl_ty_topology T484315 => fun v_900701 :e T484315 => fun v_900702 :e T484315 => if hl_IN T484315 v_900701 (hl_topspace T484315 v_900700) = 1 /\ (hl_IN T484315 v_900702 (hl_topspace T484315 v_900700) = 1 /\ forall t :e 2 :^: T484315, hl_closed_in T484315 v_900700 t = 1 /\ hl_open_in T484315 v_900700 t = 1 -> (hl_IN T484315 v_900701 t = 1 <-> hl_IN T484315 v_900702 t = 1)) then 1 else 0.

// HOL Light: quasi_components_of : ?484338 topology->(?484338->bool)->bool
Definition hl_quasi_components_of : set -> set :=
  fun T484338:set => fun v_900721 :e hl_ty_topology T484338 => hl_GSPEC (2 :^: T484338) (fun GEN_PVAR_2040 :e 2 :^: T484338 => if exists x :e T484338, hl_SETSPEC (2 :^: T484338) GEN_PVAR_2040 (hl_IN T484338 x (hl_topspace T484338 v_900721)) (hl_quasi_component_of T484338 v_900721 x) = 1 then 1 else 0).

// HOL Light: k_space : A topology->bool
Definition hl_k_space : set -> set :=
  fun A:set => fun v_904870 :e hl_ty_topology A => if forall s :e 2 :^: A, hl_SUBSET A s (hl_topspace A v_904870) = 1 -> (hl_closed_in A v_904870 s = 1 <-> forall k :e 2 :^: A, hl_compact_in A v_904870 k = 1 -> hl_closed_in A (hl_subtopology A v_904870 k) (hl_INTER A k s) = 1) then 1 else 0.

// HOL Light: kification : A topology->A topology
Definition hl_kification : set -> set :=
  fun A:set => hl_select (hl_ty_topology A :^: hl_ty_topology A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (fun kification1 :e hl_ty_topology A :^: hl_ty_topology A :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) => if forall v_908191 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))), forall top :e hl_ty_topology A, kification1 v_908191 top = hl_topology A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2080 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2080 (if hl_SUBSET A s (hl_topspace A top) = 1 /\ forall k :e 2 :^: A, hl_compact_in A top k = 1 -> hl_open_in A (hl_subtopology A top k) (hl_INTER A k s) = 1 then 1 else 0) s = 1 then 1 else 0)) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))).

// HOL Light: alexandroff_compactification : A topology->(A,1)sum topology
Definition hl_alexandroff_compactification : set -> set :=
  fun A:set => fun v_909676 :e hl_ty_topology A => hl_topology (A :+: 1) (hl_UNION (2 :^: (A :+: 1)) (hl_GSPEC (2 :^: (A :+: 1)) (fun GEN_PVAR_2082 :e 2 :^: (A :+: 1) => if exists u :e 2 :^: A, hl_SETSPEC (2 :^: (A :+: 1)) GEN_PVAR_2082 (hl_open_in A v_909676 u) (hl_IMAGE A (A :+: 1) (hl_INL A 1) u) = 1 then 1 else 0)) (hl_GSPEC (2 :^: (A :+: 1)) (fun GEN_PVAR_2083 :e 2 :^: (A :+: 1) => if exists c :e 2 :^: A, hl_SETSPEC (2 :^: (A :+: 1)) GEN_PVAR_2083 (if hl_compact_in A v_909676 c = 1 /\ hl_closed_in A v_909676 c = 1 then 1 else 0) (hl_INSERT (A :+: 1) (hl_INR 1 A hl_one) (hl_IMAGE A (A :+: 1) (hl_INL A 1) (hl_DIFF A (hl_topspace A v_909676) c))) = 1 then 1 else 0))).

// HOL Light: homotopic_with : ((?496001->?495998)->bool)->?496001 topology#?495998 topology->(?496001->?495998)->(?496001->?495998)->bool
Definition hl_homotopic_with : set -> set -> set :=
  fun T496001:set => fun T495998:set => fun v_919148 :e 2 :^: (T495998 :^: T496001) => fun v_919149 :e hl_ty_topology T496001 :*: hl_ty_topology T495998 => fun v_919150 :e T495998 :^: T496001 => fun v_919151 :e T495998 :^: T496001 => if exists h :e T495998 :^: (R :*: T496001), hl_continuous_map (R :*: T496001) T495998 (hl_pair (hl_ty_topology (R :*: T496001)) (hl_ty_topology T495998) (hl_prod_topology R T496001 (hl_subtopology R hl_euclideanreal (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (R :*: R))))) (hl_FST (hl_ty_topology T496001) (hl_ty_topology T495998) v_919149)) (hl_SND (hl_ty_topology T496001) (hl_ty_topology T495998) v_919149)) h = 1 /\ ((forall x :e T496001, h (hl_pair R T496001 (hl_real_of_num (hl_NUMERAL hl_zero)) x) = v_919150 x) /\ ((forall x :e T496001, h (hl_pair R T496001 (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x) = v_919151 x) /\ forall t :e R, hl_IN R t (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (R :*: R)))) = 1 -> v_919148 (fun x :e T496001 => h (hl_pair R T496001 t x)) = 1)) then 1 else 0.

// HOL Light: homotopy_equivalent_space : A topology->B topology->bool
Definition hl_homotopy_equivalent_space : set -> set -> set :=
  fun A:set => fun B:set => fun v_920017 :e hl_ty_topology A => fun v_920018 :e hl_ty_topology B => if exists f :e B :^: A, exists g :e A :^: B, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) v_920017 v_920018) f = 1 /\ (hl_continuous_map B A (hl_pair (hl_ty_topology B) (hl_ty_topology A) v_920018 v_920017) g = 1 /\ (hl_homotopic_with A A (fun x :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) v_920017 v_920017) (hl_o B A A g f) (hl_I A) = 1 /\ hl_homotopic_with B B (fun x :e B :^: B => if True then 1 else 0) (hl_pair (hl_ty_topology B) (hl_ty_topology B) v_920018 v_920018) (hl_o A B B f g) (hl_I B) = 1)) then 1 else 0.

// HOL Light: contractible_space : A topology->bool
Definition hl_contractible_space : set -> set :=
  fun A:set => fun v_920765 :e hl_ty_topology A => if exists a :e A, hl_homotopic_with A A (fun x :e A :^: A => if True then 1 else 0) (hl_pair (hl_ty_topology A) (hl_ty_topology A) v_920765 v_920765) (fun x :e A => x) (fun x :e A => a) = 1 then 1 else 0.

// HOL Light: completely_metrizable_space : ?499501 topology->bool
Definition hl_completely_metrizable_space : set -> set :=
  fun T499501:set => fun v_921977 :e hl_ty_topology T499501 => if exists m :e hl_ty_metric T499501, hl_mcomplete T499501 m = 1 /\ v_921977 = hl_mtopology T499501 m then 1 else 0.

// HOL Light: prod_metric : A metric->B metric->(A#B) metric
Definition hl_prod_metric : set -> set -> set :=
  fun A:set => fun B:set => fun v_925711 :e hl_ty_metric A => fun v_925712 :e hl_ty_metric B => hl_metric (A :*: B) (hl_pair (2 :^: (A :*: B)) (R :^: (A :*: B :*: (A :*: B))) (hl_CROSS A B (hl_mspace A v_925711) (hl_mspace B v_925712)) (hl_GABS (R :^: (A :*: B :*: (A :*: B))) (fun f :e R :^: (A :*: B :*: (A :*: B)) => if forall x :e A, forall y :e B, forall x' :e A, forall y' :e B, hl_GEQ R (f (hl_pair (A :*: B) (A :*: B) (hl_pair A B x y) (hl_pair A B x' y'))) (hl_sqrt (hl_real_add (hl_real_pow (hl_mdist A v_925711 (hl_pair A A x x')) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow (hl_mdist B v_925712 (hl_pair B B y y')) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) = 1 then 1 else 0))).

// HOL Light: lipschitz_continuous_map : ?501997 metric#?501985 metric->(?501997->?501985)->bool
Definition hl_lipschitz_continuous_map : set -> set -> set :=
  fun T501997:set => fun T501985:set => fun v_929468 :e hl_ty_metric T501997 :*: hl_ty_metric T501985 => fun v_929469 :e T501985 :^: T501997 => if hl_SUBSET T501985 (hl_IMAGE T501997 T501985 v_929469 (hl_mspace T501997 (hl_FST (hl_ty_metric T501997) (hl_ty_metric T501985) v_929468))) (hl_mspace T501985 (hl_SND (hl_ty_metric T501997) (hl_ty_metric T501985) v_929468)) = 1 /\ exists B :e R, forall x y :e T501997, hl_IN T501997 x (hl_mspace T501997 (hl_FST (hl_ty_metric T501997) (hl_ty_metric T501985) v_929468)) = 1 /\ hl_IN T501997 y (hl_mspace T501997 (hl_FST (hl_ty_metric T501997) (hl_ty_metric T501985) v_929468)) = 1 -> hl_real_le (hl_mdist T501985 (hl_SND (hl_ty_metric T501997) (hl_ty_metric T501985) v_929468) (hl_pair T501985 T501985 (v_929469 x) (v_929469 y))) (hl_real_mul B (hl_mdist T501997 (hl_FST (hl_ty_metric T501997) (hl_ty_metric T501985) v_929468) (hl_pair T501997 T501997 x y))) = 1 then 1 else 0.

// HOL Light: uniformly_continuous_map : ?502552 metric#?502547 metric->(?502552->?502547)->bool
Definition hl_uniformly_continuous_map : set -> set -> set :=
  fun T502552:set => fun T502547:set => fun v_929996 :e hl_ty_metric T502552 :*: hl_ty_metric T502547 => fun v_929997 :e T502547 :^: T502552 => if hl_SUBSET T502547 (hl_IMAGE T502552 T502547 v_929997 (hl_mspace T502552 (hl_FST (hl_ty_metric T502552) (hl_ty_metric T502547) v_929996))) (hl_mspace T502547 (hl_SND (hl_ty_metric T502552) (hl_ty_metric T502547) v_929996)) = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x x' :e T502552, hl_IN T502552 x (hl_mspace T502552 (hl_FST (hl_ty_metric T502552) (hl_ty_metric T502547) v_929996)) = 1 /\ (hl_IN T502552 x' (hl_mspace T502552 (hl_FST (hl_ty_metric T502552) (hl_ty_metric T502547) v_929996)) = 1 /\ hl_real_lt (hl_mdist T502552 (hl_FST (hl_ty_metric T502552) (hl_ty_metric T502547) v_929996) (hl_pair T502552 T502552 x' x)) d = 1) -> hl_real_lt (hl_mdist T502547 (hl_SND (hl_ty_metric T502552) (hl_ty_metric T502547) v_929996) (hl_pair T502547 T502547 (v_929997 x') (v_929997 x))) e1 = 1 then 1 else 0.

// HOL Light: cauchy_continuous_map : ?503300 metric#?503308 metric->(?503300->?503308)->bool
Definition hl_cauchy_continuous_map : set -> set -> set :=
  fun T503300:set => fun T503308:set => fun v_930691 :e hl_ty_metric T503300 :*: hl_ty_metric T503308 => fun v_930692 :e T503308 :^: T503300 => if forall x :e T503300 :^: omega, hl_cauchy_in T503300 (hl_FST (hl_ty_metric T503300) (hl_ty_metric T503308) v_930691) x = 1 -> hl_cauchy_in T503308 (hl_SND (hl_ty_metric T503300) (hl_ty_metric T503308) v_930691) (hl_o T503300 T503308 omega v_930692 x) = 1 then 1 else 0.

// HOL Light: mdiameter : A metric->(A->bool)->real
Definition hl_mdiameter : set -> set :=
  fun A:set => fun v_937175 :e hl_ty_metric A => fun v_937176 :e 2 :^: A => hl_COND R (if v_937176 = hl_EMPTY A then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_sup (hl_GSPEC R (fun GEN_PVAR_2107 :e R => if exists x y :e A, hl_SETSPEC R GEN_PVAR_2107 (if hl_IN A x v_937176 = 1 /\ hl_IN A y v_937176 = 1 then 1 else 0) (hl_mdist A v_937175 (hl_pair A A x y)) = 1 then 1 else 0))).

// HOL Light: fccoverable_space : A metric->bool
Definition hl_fccoverable_space : set -> set :=
  fun A:set => fun v_958019 :e hl_ty_metric A => if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) c = 1 /\ (hl_UNIONS A c = hl_mspace A v_958019 /\ forall t :e 2 :^: A, hl_IN (2 :^: A) t c = 1 -> hl_connected_in A (hl_mtopology A v_958019) t = 1 /\ (hl_mbounded A v_958019 t = 1 /\ hl_real_le (hl_mdiameter A v_958019 t) e1 = 1)) then 1 else 0.

// HOL Light: ulc_space : A metric->bool
Definition hl_ulc_space : set -> set :=
  fun A:set => fun v_958024 :e hl_ty_metric A => if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x y :e A, hl_IN A x (hl_mspace A v_958024) = 1 /\ (hl_IN A y (hl_mspace A v_958024) = 1 /\ hl_real_lt (hl_mdist A v_958024 (hl_pair A A x y)) d = 1) -> exists c :e 2 :^: A, hl_IN A x c = 1 /\ (hl_IN A y c = 1 /\ (hl_SUBSET A c (hl_mspace A v_958024) = 1 /\ (hl_connected_in A (hl_mtopology A v_958024) c = 1 /\ (hl_mbounded A v_958024 c = 1 /\ hl_real_le (hl_mdiameter A v_958024 c) e1 = 1)))) then 1 else 0.

// HOL Light: fccoverable_in : A metric->(A->bool)->bool
Definition hl_fccoverable_in : set -> set :=
  fun A:set => fun v_958029 :e hl_ty_metric A => fun v_958030 :e 2 :^: A => if hl_SUBSET A v_958030 (hl_mspace A v_958029) = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) c = 1 /\ (hl_UNIONS A c = v_958030 /\ forall t :e 2 :^: A, hl_IN (2 :^: A) t c = 1 -> hl_connected_in A (hl_mtopology A v_958029) t = 1 /\ (hl_mbounded A v_958029 t = 1 /\ hl_real_le (hl_mdiameter A v_958029 t) e1 = 1)) then 1 else 0.

// HOL Light: capped_metric : real->A metric->A metric
Definition hl_capped_metric : set -> set :=
  fun A:set => fun v_1043916 :e R => fun v_1043917 :e hl_ty_metric A => hl_COND (hl_ty_metric A) (hl_real_le v_1043916 (hl_real_of_num (hl_NUMERAL hl_zero))) v_1043917 (hl_metric A (hl_pair (2 :^: A) (R :^: (A :*: A)) (hl_mspace A v_1043917) (hl_GABS (R :^: (A :*: A)) (fun f :e R :^: (A :*: A) => if forall x y :e A, hl_GEQ R (f (hl_pair A A x y)) (hl_real_min v_1043916 (hl_mdist A v_1043917 (hl_pair A A x y))) = 1 then 1 else 0)))).

// HOL Light: euclidean_space : num->(num->real) topology
Definition hl_euclidean_space : set :=
  fun v_1069929 :e omega => hl_subtopology (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2188 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2188 (if forall i :e omega, ~ hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) v_1069929) = 1 -> x i = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)).

// HOL Light: nsphere : num->(num->real) topology
Definition hl_nsphere : set :=
  fun v_1070148 :e omega => hl_subtopology (R :^: omega) (hl_euclidean_space (hl_add v_1070148 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_GSPEC (R :^: omega) (fun GEN_PVAR_2194 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2194 (if hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add v_1070148 (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun i :e omega => hl_real_pow (x i) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) x = 1 then 1 else 0)).

// HOL Light: funspace : (A->bool)->B metric->(A->B) metric
Definition hl_funspace : set -> set -> set :=
  fun A:set => fun B:set => fun v_1072425 :e 2 :^: A => fun v_1072426 :e hl_ty_metric B => hl_metric (B :^: A) (hl_pair (2 :^: (B :^: A)) (R :^: (B :^: A :*: B :^: A)) (hl_GSPEC (B :^: A) (fun GEN_PVAR_2200 :e B :^: A => if exists f :e B :^: A, hl_SETSPEC (B :^: A) GEN_PVAR_2200 (if (forall x :e A, hl_IN A x v_1072425 = 1 -> hl_IN B (f x) (hl_mspace B v_1072426) = 1) /\ (hl_IN (B :^: A) f (hl_EXTENSIONAL A B v_1072425) = 1 /\ hl_mbounded B v_1072426 (hl_IMAGE A B f v_1072425) = 1) then 1 else 0) f = 1 then 1 else 0)) (hl_GABS (R :^: (B :^: A :*: B :^: A)) (fun f :e R :^: (B :^: A :*: B :^: A) => if forall f1 g :e B :^: A, hl_GEQ R (f (hl_pair (B :^: A) (B :^: A) f1 g)) (hl_COND R (if v_1072425 = hl_EMPTY A then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_sup (hl_GSPEC R (fun GEN_PVAR_2201 :e R => if exists x :e A, hl_SETSPEC R GEN_PVAR_2201 (hl_IN A x v_1072425) (hl_mdist B v_1072426 (hl_pair B B (f1 x) (g x))) = 1 then 1 else 0)))) = 1 then 1 else 0))).

// HOL Light: cfunspace : A topology->B metric->(A->B) metric
Definition hl_cfunspace : set -> set -> set :=
  fun A:set => fun B:set => fun v_1074194 :e hl_ty_topology A => fun v_1074195 :e hl_ty_metric B => hl_submetric (B :^: A) (hl_funspace A B (hl_topspace A v_1074194) v_1074195) (hl_GSPEC (B :^: A) (fun GEN_PVAR_2213 :e B :^: A => if exists f :e B :^: A, hl_SETSPEC (B :^: A) GEN_PVAR_2213 (hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) v_1074194 (hl_mtopology B v_1074195)) f) f = 1 then 1 else 0)).

// HOL Light: paracompact_space : A topology->bool
Definition hl_paracompact_space : set -> set :=
  fun A:set => fun v_1102304 :e hl_ty_topology A => if forall U :e 2 :^: (2 :^: A), (forall u :e 2 :^: A, hl_IN (2 :^: A) u U = 1 -> hl_open_in A v_1102304 u = 1) /\ hl_UNIONS A U = hl_topspace A v_1102304 -> exists V :e 2 :^: (2 :^: A), (forall v :e 2 :^: A, hl_IN (2 :^: A) v V = 1 -> hl_open_in A v_1102304 v = 1) /\ (hl_UNIONS A V = hl_topspace A v_1102304 /\ ((forall v :e 2 :^: A, hl_IN (2 :^: A) v V = 1 -> exists u :e 2 :^: A, hl_IN (2 :^: A) u U = 1 /\ hl_SUBSET A v u = 1) /\ hl_locally_finite_in A v_1102304 V = 1)) then 1 else 0.

// HOL Light: sigma_locally_finite_in : A topology->((A->bool)->bool)->bool
Definition hl_sigma_locally_finite_in : set -> set :=
  fun A:set => fun v_1106480 :e hl_ty_topology A => fun v_1106481 :e 2 :^: (2 :^: A) => if exists f :e 2 :^: (2 :^: A) :^: omega, (forall n :e omega, hl_locally_finite_in A v_1106480 (f n) = 1) /\ v_1106481 = hl_UNIONS (2 :^: A) (hl_GSPEC (2 :^: (2 :^: A)) (fun GEN_PVAR_2265 :e 2 :^: (2 :^: A) => if exists n :e omega, hl_SETSPEC (2 :^: (2 :^: A)) GEN_PVAR_2265 (hl_IN omega n (hl_UNIV omega)) (f n) = 1 then 1 else 0)) then 1 else 0.

// HOL Light: dimension_le : A topology->int->bool
Definition hl_dimension_le : set -> set :=
  fun A:set => fun a0 :e hl_ty_topology A => fun a1 :e hl_ty_int => if forall dimension_le' :e 2 :^: hl_ty_int :^: hl_ty_topology A, (forall a01 :e hl_ty_topology A, forall a11 :e hl_ty_int, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) a11 = 1 /\ (forall v :e 2 :^: A, forall a :e A, hl_open_in A a01 v = 1 /\ hl_IN A a v = 1 -> exists u :e 2 :^: A, hl_IN A a u = 1 /\ (hl_SUBSET A u v = 1 /\ (hl_open_in A a01 u = 1 /\ dimension_le' (hl_subtopology A a01 (hl_frontier_of A a01 u)) (hl_int_sub a11 (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1))) -> dimension_le' a01 a11 = 1) -> dimension_le' a0 a1 = 1 then 1 else 0.

// HOL Light: cantor_space : (num->bool) topology
Definition hl_cantor_space : set :=
  hl_product_topology omega 2 (hl_UNIV omega) (fun n :e omega => hl_discrete_topology 2 (hl_UNIV 2)).

// HOL Light: cantor_term : (num->bool)->num->real
Definition hl_cantor_term : set :=
  fun v_1154707 :e 2 :^: omega => fun v_1154708 :e omega => hl_real_div (hl_COND R (v_1154707 v_1154708) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_add v_1154708 (hl_NUMERAL (hl_BIT1 hl_zero)))).

// HOL Light: cantor_map : (num->bool)->real
Definition hl_cantor_map : set :=
  fun v_1154719 :e 2 :^: omega => hl_real_infsum (hl_from (hl_NUMERAL hl_zero)) (hl_cantor_term v_1154719).

// HOL Light: cantor_set : real->bool
Definition hl_cantor_set : set :=
  hl_IMAGE (2 :^: omega) R hl_cantor_map (hl_UNIV (2 :^: omega)).

// HOL Light: standard_simplex : num->(num->real)->bool
Definition hl_standard_simplex : set :=
  fun v_1307267 :e omega => hl_GSPEC (R :^: omega) (fun GEN_PVAR_2513 :e R :^: omega => if exists x :e R :^: omega, hl_SETSPEC (R :^: omega) GEN_PVAR_2513 (if (forall i :e omega, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (x i) = 1 /\ hl_real_le (x i) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ ((forall i :e omega, hl_lt v_1307267 i = 1 -> x i = hl_real_of_num (hl_NUMERAL hl_zero)) /\ hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) v_1307267) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) then 1 else 0) x = 1 then 1 else 0).

// HOL Light: simplicial_face : num->(num->real)->num->real
Definition hl_simplicial_face : set :=
  fun v_1307994 :e omega => fun v_1307995 :e R :^: omega => fun i :e omega => hl_COND R (hl_lt i v_1307994) (v_1307995 i) (hl_COND R (if i = v_1307994 then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (v_1307995 (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))))).

// HOL Light: singular_simplex : num#A topology->((num->real)->A)->bool
Definition hl_singular_simplex : set -> set :=
  fun A:set => fun v_1308096 :e omega :*: hl_ty_topology A => fun v_1308097 :e A :^: (R :^: omega) => if hl_continuous_map (R :^: omega) A (hl_pair (hl_ty_topology (R :^: omega)) (hl_ty_topology A) (hl_subtopology (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_standard_simplex (hl_FST omega (hl_ty_topology A) v_1308096))) (hl_SND omega (hl_ty_topology A) v_1308096)) v_1308097 = 1 /\ hl_EXTENSIONAL (R :^: omega) A (hl_standard_simplex (hl_FST omega (hl_ty_topology A) v_1308096)) v_1308097 = 1 then 1 else 0.

// HOL Light: singular_face : num->num->((num->real)->?587375)->(num->real)->?587375
Definition hl_singular_face : set -> set :=
  fun T587375:set => fun v_1308243 :e omega => fun v_1308244 :e omega => fun v_1308245 :e T587375 :^: (R :^: omega) => hl_RESTRICTION (R :^: omega) T587375 (hl_standard_simplex (hl_sub v_1308243 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_o (R :^: omega) T587375 (R :^: omega) v_1308245 (hl_simplicial_face v_1308244)).

// HOL Light: singular_chain : num#A topology->((num->real)->A) frag->bool
Definition hl_singular_chain : set -> set :=
  fun A:set => fun v_1308266 :e omega :*: hl_ty_topology A => fun v_1308267 :e hl_ty_frag (A :^: (R :^: omega)) => hl_SUBSET (A :^: (R :^: omega)) (hl_frag_support (A :^: (R :^: omega)) v_1308267) (hl_singular_simplex A (hl_pair omega (hl_ty_topology A) (hl_FST omega (hl_ty_topology A) v_1308266) (hl_SND omega (hl_ty_topology A) v_1308266))).

// HOL Light: chain_boundary : num->((num->real)->A) frag->((num->real)->A) frag
Definition hl_chain_boundary : set -> set :=
  fun A:set => fun v_1308520 :e omega => fun v_1308521 :e hl_ty_frag (A :^: (R :^: omega)) => hl_COND (hl_ty_frag (A :^: (R :^: omega))) (if v_1308520 = hl_NUMERAL hl_zero then 1 else 0) (hl_frag_0 (A :^: (R :^: omega))) (hl_frag_extend (A :^: (R :^: omega)) (A :^: (R :^: omega)) (fun f :e A :^: (R :^: omega) => hl_iterate (hl_ty_frag (A :^: (R :^: omega))) omega (hl_frag_add (A :^: (R :^: omega))) (hl_numseg (hl_NUMERAL hl_zero) v_1308520) (fun k :e omega => hl_frag_cmul (A :^: (R :^: omega)) (hl_int_pow (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) k) (hl_frag_of (A :^: (R :^: omega)) (hl_singular_face A v_1308520 k f)))) v_1308521).

// HOL Light: mod_subset : num#?588333 topology->((num->real)->?588333) frag->((num->real)->?588333) frag->bool
Definition hl_mod_subset : set -> set :=
  fun T588333:set => fun v_1308621 :e omega :*: hl_ty_topology T588333 => fun v_1308622 :e hl_ty_frag (T588333 :^: (R :^: omega)) => fun v_1308623 :e hl_ty_frag (T588333 :^: (R :^: omega)) => hl_singular_chain T588333 (hl_pair omega (hl_ty_topology T588333) (hl_FST omega (hl_ty_topology T588333) v_1308621) (hl_SND omega (hl_ty_topology T588333) v_1308621)) (hl_frag_sub (T588333 :^: (R :^: omega)) v_1308622 v_1308623).

// HOL Light: singular_relcycle : num#?588564 topology#(?588564->bool)->((num->real)->?588564) frag->bool
Definition hl_singular_relcycle : set -> set :=
  fun T588564:set => fun v_1308648 :e omega :*: (hl_ty_topology T588564 :*: 2 :^: T588564) => fun v_1308649 :e hl_ty_frag (T588564 :^: (R :^: omega)) => if hl_singular_chain T588564 (hl_pair omega (hl_ty_topology T588564) (hl_FST omega (hl_ty_topology T588564 :*: 2 :^: T588564) v_1308648) (hl_FST (hl_ty_topology T588564) (2 :^: T588564) (hl_SND omega (hl_ty_topology T588564 :*: 2 :^: T588564) v_1308648))) v_1308649 = 1 /\ hl_sym_3d3d (hl_ty_frag (T588564 :^: (R :^: omega))) (hl_chain_boundary T588564 (hl_FST omega (hl_ty_topology T588564 :*: 2 :^: T588564) v_1308648) v_1308649) (hl_frag_0 (T588564 :^: (R :^: omega))) (hl_mod_subset T588564 (hl_pair omega (hl_ty_topology T588564) (hl_sub (hl_FST omega (hl_ty_topology T588564 :*: 2 :^: T588564) v_1308648) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_subtopology T588564 (hl_FST (hl_ty_topology T588564) (2 :^: T588564) (hl_SND omega (hl_ty_topology T588564 :*: 2 :^: T588564) v_1308648)) (hl_SND (hl_ty_topology T588564) (2 :^: T588564) (hl_SND omega (hl_ty_topology T588564 :*: 2 :^: T588564) v_1308648))))) = 1 then 1 else 0.

// HOL Light: singular_relboundary : num#?589171 topology#(?589171->bool)->((num->real)->?589171) frag->bool
Definition hl_singular_relboundary : set -> set :=
  fun T589171:set => fun v_1308786 :e omega :*: (hl_ty_topology T589171 :*: 2 :^: T589171) => fun v_1308787 :e hl_ty_frag (T589171 :^: (R :^: omega)) => if exists d :e hl_ty_frag (T589171 :^: (R :^: omega)), hl_singular_chain T589171 (hl_pair omega (hl_ty_topology T589171) (hl_add (hl_FST omega (hl_ty_topology T589171 :*: 2 :^: T589171) v_1308786) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_FST (hl_ty_topology T589171) (2 :^: T589171) (hl_SND omega (hl_ty_topology T589171 :*: 2 :^: T589171) v_1308786))) d = 1 /\ hl_sym_3d3d (hl_ty_frag (T589171 :^: (R :^: omega))) (hl_chain_boundary T589171 (hl_add (hl_FST omega (hl_ty_topology T589171 :*: 2 :^: T589171) v_1308786) (hl_NUMERAL (hl_BIT1 hl_zero))) d) v_1308787 (hl_mod_subset T589171 (hl_pair omega (hl_ty_topology T589171) (hl_FST omega (hl_ty_topology T589171 :*: 2 :^: T589171) v_1308786) (hl_subtopology T589171 (hl_FST (hl_ty_topology T589171) (2 :^: T589171) (hl_SND omega (hl_ty_topology T589171 :*: 2 :^: T589171) v_1308786)) (hl_SND (hl_ty_topology T589171) (2 :^: T589171) (hl_SND omega (hl_ty_topology T589171 :*: 2 :^: T589171) v_1308786))))) = 1 then 1 else 0.

// HOL Light: homologous_rel : num#A topology#(A->bool)->((num->real)->A) frag->((num->real)->A) frag->bool
Definition hl_homologous_rel : set -> set :=
  fun A:set => fun v_1309166 :e omega :*: (hl_ty_topology A :*: 2 :^: A) => fun v_1309167 :e hl_ty_frag (A :^: (R :^: omega)) => fun v_1309168 :e hl_ty_frag (A :^: (R :^: omega)) => hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_FST omega (hl_ty_topology A :*: 2 :^: A) v_1309166) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_FST (hl_ty_topology A) (2 :^: A) (hl_SND omega (hl_ty_topology A :*: 2 :^: A) v_1309166)) (hl_SND (hl_ty_topology A) (2 :^: A) (hl_SND omega (hl_ty_topology A :*: 2 :^: A) v_1309166)))) (hl_frag_sub (A :^: (R :^: omega)) v_1309167 v_1309168).

// HOL Light: simplex_map : num->(A->B)->((num->real)->A)->(num->real)->B
Definition hl_simplex_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_1310651 :e omega => fun v_1310652 :e B :^: A => fun v_1310653 :e A :^: (R :^: omega) => hl_RESTRICTION (R :^: omega) B (hl_standard_simplex v_1310651) (hl_o A B (R :^: omega) v_1310652 v_1310653).

// HOL Light: chain_map : num->(A->B)->((num->real)->A) frag->((num->real)->B) frag
Definition hl_chain_map : set -> set -> set :=
  fun A:set => fun B:set => fun v_1311091 :e omega => fun v_1311092 :e B :^: A => fun v_1311093 :e hl_ty_frag (A :^: (R :^: omega)) => hl_frag_extend (A :^: (R :^: omega)) (B :^: (R :^: omega)) (hl_o (B :^: (R :^: omega)) (hl_ty_frag (B :^: (R :^: omega))) (A :^: (R :^: omega)) (hl_frag_of (B :^: (R :^: omega))) (hl_simplex_map A B v_1311091 v_1311092)) v_1311093.

// HOL Light: oriented_simplex : num->(num->num->real)->(num->real)->num->real
Definition hl_oriented_simplex : set :=
  fun v_1312332 :e omega => fun v_1312333 :e R :^: omega :^: omega => hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex v_1312332) (fun x :e R :^: omega => fun i :e omega => hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) v_1312332) (fun j :e omega => hl_real_mul (v_1312333 j i) (x j))).

// HOL Light: simplicial_simplex : num#((num->real)->bool)->((num->real)->num->real)->bool
Definition hl_simplicial_simplex : set :=
  fun v_1312344 :e omega :*: 2 :^: (R :^: omega) => fun v_1312345 :e R :^: omega :^: (R :^: omega) => if hl_singular_simplex (R :^: omega) (hl_pair omega (hl_ty_topology (R :^: omega)) (hl_FST omega (2 :^: (R :^: omega)) v_1312344) (hl_subtopology (R :^: omega) (hl_product_topology omega R (hl_UNIV omega) (fun i :e omega => hl_euclideanreal)) (hl_SND omega (2 :^: (R :^: omega)) v_1312344))) v_1312345 = 1 /\ exists l :e R :^: omega :^: omega, v_1312345 = hl_oriented_simplex (hl_FST omega (2 :^: (R :^: omega)) v_1312344) l then 1 else 0.

// HOL Light: simplicial_chain : num#((num->real)->bool)->((num->real)->num->real) frag->bool
Definition hl_simplicial_chain : set :=
  fun v_1312369 :e omega :*: 2 :^: (R :^: omega) => fun v_1312370 :e hl_ty_frag (R :^: omega :^: (R :^: omega)) => hl_SUBSET (R :^: omega :^: (R :^: omega)) (hl_frag_support (R :^: omega :^: (R :^: omega)) v_1312370) (hl_simplicial_simplex (hl_pair omega (2 :^: (R :^: omega)) (hl_FST omega (2 :^: (R :^: omega)) v_1312369) (hl_SND omega (2 :^: (R :^: omega)) v_1312369))).

// HOL Light: simplex_cone : num->(num->real)->((num->real)->num->real)->(num->real)->num->real
Definition hl_simplex_cone : set :=
  hl_select (R :^: omega :^: (R :^: omega) :^: (R :^: omega :^: (R :^: omega)) :^: (R :^: omega) :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (fun cone :e R :^: omega :^: (R :^: omega) :^: (R :^: omega :^: (R :^: omega)) :^: (R :^: omega) :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) => if forall v_1312590 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))), forall p :e omega, forall v :e R :^: omega, forall l :e R :^: omega :^: omega, cone v_1312590 p v (hl_oriented_simplex p l) = hl_oriented_simplex (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (fun i :e omega => hl_COND (R :^: omega) (if i = hl_NUMERAL hl_zero then 1 else 0) v (l (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))))) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))))).

// HOL Light: simplicial_cone : num->(num->real)->((num->real)->num->real) frag->((num->real)->num->real) frag
Definition hl_simplicial_cone : set :=
  fun v_1312749 :e omega => fun v_1312750 :e R :^: omega => hl_frag_extend (R :^: omega :^: (R :^: omega)) (R :^: omega :^: (R :^: omega)) (hl_o (R :^: omega :^: (R :^: omega)) (hl_ty_frag (R :^: omega :^: (R :^: omega))) (R :^: omega :^: (R :^: omega)) (hl_frag_of (R :^: omega :^: (R :^: omega))) (hl_simplex_cone v_1312749 v_1312750)).

// HOL Light: simplicial_vertex : num->((num->real)->num->real)->num->real
Definition hl_simplicial_vertex : set :=
  fun v_1313024 :e omega => fun v_1313025 :e R :^: omega :^: (R :^: omega) => v_1313025 (fun j :e omega => hl_COND R (if j = v_1313024 then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))).

// HOL Light: simplicial_subdivision : num->((num->real)->num->real) frag->((num->real)->num->real) frag
Definition hl_simplicial_subdivision : set :=
  hl_select (hl_ty_frag (R :^: omega :^: (R :^: omega)) :^: hl_ty_frag (R :^: omega :^: (R :^: omega)) :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))))) (fun simplicial_subdivision1 :e hl_ty_frag (R :^: omega :^: (R :^: omega)) :^: hl_ty_frag (R :^: omega :^: (R :^: omega)) :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))))))) => if forall v_1313045 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))), simplicial_subdivision1 v_1313045 (hl_NUMERAL hl_zero) = hl_I (hl_ty_frag (R :^: omega :^: (R :^: omega))) /\ forall p :e omega, simplicial_subdivision1 v_1313045 (hl_SUC p) = hl_frag_extend (R :^: omega :^: (R :^: omega)) (R :^: omega :^: (R :^: omega)) (fun f :e R :^: omega :^: (R :^: omega) => hl_simplicial_cone p (fun i :e omega => hl_real_div (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_SUC p)) (fun j :e omega => hl_simplicial_vertex j f i)) (hl_real_add (hl_real_of_num p) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (simplicial_subdivision1 v_1313045 p (hl_chain_boundary (R :^: omega) (hl_SUC p) (hl_frag_of (R :^: omega :^: (R :^: omega)) f)))) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))))))))))))))).

// HOL Light: singular_subdivision : num->((num->real)->?602765) frag->((num->real)->?602765) frag
Definition hl_singular_subdivision : set -> set :=
  fun T602765:set => fun v_1313950 :e omega => hl_frag_extend (T602765 :^: (R :^: omega)) (T602765 :^: (R :^: omega)) (fun f :e T602765 :^: (R :^: omega) => hl_chain_map (R :^: omega) T602765 v_1313950 f (hl_simplicial_subdivision v_1313950 (hl_frag_of (R :^: omega :^: (R :^: omega)) (hl_RESTRICTION (R :^: omega) (R :^: omega) (hl_standard_simplex v_1313950) (hl_I (R :^: omega)))))).

// HOL Light: chain_group : num#A topology->((num->real)->A) frag group
Definition hl_chain_group : set -> set :=
  fun A:set => fun v_1321893 :e omega :*: hl_ty_topology A => hl_free_abelian_group (A :^: (R :^: omega)) (hl_singular_simplex A (hl_pair omega (hl_ty_topology A) (hl_FST omega (hl_ty_topology A) v_1321893) (hl_SND omega (hl_ty_topology A) v_1321893))).

// HOL Light: relcycle_group : num#A topology#(A->bool)->((num->real)->A) frag group
Definition hl_relcycle_group : set -> set :=
  fun A:set => fun v_1321902 :e omega :*: (hl_ty_topology A :*: 2 :^: A) => hl_subgroup_generated (hl_ty_frag (A :^: (R :^: omega))) (hl_chain_group A (hl_pair omega (hl_ty_topology A) (hl_FST omega (hl_ty_topology A :*: 2 :^: A) v_1321902) (hl_FST (hl_ty_topology A) (2 :^: A) (hl_SND omega (hl_ty_topology A :*: 2 :^: A) v_1321902)))) (hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_FST omega (hl_ty_topology A :*: 2 :^: A) v_1321902) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_FST (hl_ty_topology A) (2 :^: A) (hl_SND omega (hl_ty_topology A :*: 2 :^: A) v_1321902)) (hl_SND (hl_ty_topology A) (2 :^: A) (hl_SND omega (hl_ty_topology A :*: 2 :^: A) v_1321902))))).

// HOL Light: relative_homology_group : int#A topology#(A->bool)->(((num->real)->A) frag->bool) group
Definition hl_relative_homology_group : set -> set :=
  fun A:set => fun v_1321915 :e hl_ty_int :*: (hl_ty_topology A :*: 2 :^: A) => hl_COND (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_int_lt (hl_FST hl_ty_int (hl_ty_topology A :*: 2 :^: A) v_1321915) (hl_int_of_num (hl_NUMERAL hl_zero))) (hl_singleton_group (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_ARB (2 :^: hl_ty_frag (A :^: (R :^: omega))))) (hl_quotient_group (hl_ty_frag (A :^: (R :^: omega))) (hl_relcycle_group A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_num_of_int (hl_FST hl_ty_int (hl_ty_topology A :*: 2 :^: A) v_1321915)) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_FST (hl_ty_topology A) (2 :^: A) (hl_SND hl_ty_int (hl_ty_topology A :*: 2 :^: A) v_1321915)) (hl_SND (hl_ty_topology A) (2 :^: A) (hl_SND hl_ty_int (hl_ty_topology A :*: 2 :^: A) v_1321915))))) (hl_singular_relboundary A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_num_of_int (hl_FST hl_ty_int (hl_ty_topology A :*: 2 :^: A) v_1321915)) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_FST (hl_ty_topology A) (2 :^: A) (hl_SND hl_ty_int (hl_ty_topology A :*: 2 :^: A) v_1321915)) (hl_SND (hl_ty_topology A) (2 :^: A) (hl_SND hl_ty_int (hl_ty_topology A :*: 2 :^: A) v_1321915)))))).

// HOL Light: homology_group : int#A topology->(((num->real)->A) frag->bool) group
Definition hl_homology_group : set -> set :=
  fun A:set => fun v_1321928 :e hl_ty_int :*: hl_ty_topology A => hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) (hl_FST hl_ty_int (hl_ty_topology A) v_1321928) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_SND hl_ty_int (hl_ty_topology A) v_1321928) (hl_EMPTY A))).

// HOL Light: hom_boundary : int->A topology#(A->bool)->(((num->real)->A) frag->bool)->((num->real)->A) frag->bool
Definition hl_hom_boundary : set -> set :=
  fun A:set => hl_select (2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega))) :^: (hl_ty_topology A :*: 2 :^: A) :^: hl_ty_int :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (fun d :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega))) :^: (hl_ty_topology A :*: 2 :^: A) :^: hl_ty_int :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) => if forall v_1322554 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))), (forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), ~ hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) c (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1 -> d v_1322554 p (hl_pair (hl_ty_topology A) (2 :^: A) top s) c = hl_group_id (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) /\ ((forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) (d v_1322554 p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = 1) /\ ((forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 /\ hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 -> d v_1322554 (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c) = hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A))) (hl_chain_boundary A p c)) /\ ((forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, d v_1322554 p (hl_pair (hl_ty_topology A) (2 :^: A) top s) = d v_1322554 p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s))) /\ ((forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) (d v_1322554 p (hl_pair (hl_ty_topology A) (2 :^: A) top s) c) (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) = 1) /\ forall p :e hl_ty_int, hl_int_le p (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> d v_1322554 p = fun q :e hl_ty_topology A :*: 2 :^: A => fun r :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) => hl_ARB (2 :^: hl_ty_frag (A :^: (R :^: omega))))))) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))))).

// HOL Light: hom_induced : int->A topology#(A->bool)->B topology#(B->bool)->(A->B)->(((num->real)->A) frag->bool)->((num->real)->B) frag->bool
Definition hl_hom_induced : set -> set -> set :=
  fun A:set => fun B:set => hl_select (2 :^: hl_ty_frag (B :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega))) :^: (B :^: A) :^: (hl_ty_topology B :*: 2 :^: B) :^: (hl_ty_topology A :*: 2 :^: A) :^: hl_ty_int :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (fun hom_relmap :e 2 :^: hl_ty_frag (B :^: (R :^: omega)) :^: (2 :^: hl_ty_frag (A :^: (R :^: omega))) :^: (B :^: A) :^: (hl_ty_topology B :*: 2 :^: B) :^: (hl_ty_topology A :*: 2 :^: A) :^: hl_ty_int :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) => if forall v_1327340 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))), (forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), ~ (hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f (hl_INTER A (hl_topspace A top) s)) t = 1 /\ hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) c (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1)) -> hom_relmap v_1327340 p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f c = hl_group_id (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) /\ ((forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, hl_group_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) (hom_relmap v_1327340 p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f) = 1) /\ ((forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f (hl_INTER A (hl_topspace A top) s)) t = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1) -> hom_relmap v_1327340 (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f (hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c) = hl_homologous_rel B (hl_pair omega (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)) (hl_chain_map A B p f c)) /\ ((forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, hom_relmap v_1327340 p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) = hom_relmap v_1327340 p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_INTER B (hl_topspace B top') t))) /\ ((forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall f :e B :^: A, forall t :e 2 :^: B, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hom_relmap v_1327340 p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f c) (hl_group_carrier (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) = 1) /\ forall p :e hl_ty_int, hl_int_lt p (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hom_relmap v_1327340 p = fun q :e hl_ty_topology A :*: 2 :^: A => fun r :e hl_ty_topology B :*: 2 :^: B => fun s :e B :^: A => fun t :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) => hl_ARB (2 :^: hl_ty_frag (B :^: (R :^: omega))))))) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))))))).

// HOL Light: hom_relboundary : int->A topology#(A->bool)#(A->bool)->(((num->real)->A) frag->bool)->((num->real)->A) frag->bool
Definition hl_hom_relboundary : set -> set :=
  fun A:set => fun v_1343578 :e hl_ty_int => fun v_1343579 :e hl_ty_topology A :*: (2 :^: A :*: 2 :^: A) => hl_o (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_induced A A (hl_int_sub v_1343578 (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A (hl_FST (hl_ty_topology A) (2 :^: A :*: 2 :^: A) v_1343579) (hl_FST (2 :^: A) (2 :^: A) (hl_SND (hl_ty_topology A) (2 :^: A :*: 2 :^: A) v_1343579))) (hl_EMPTY A)) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A (hl_FST (hl_ty_topology A) (2 :^: A :*: 2 :^: A) v_1343579) (hl_FST (2 :^: A) (2 :^: A) (hl_SND (hl_ty_topology A) (2 :^: A :*: 2 :^: A) v_1343579))) (hl_SND (2 :^: A) (2 :^: A) (hl_SND (hl_ty_topology A) (2 :^: A :*: 2 :^: A) v_1343579))) (fun x :e A => x)) (hl_hom_boundary A v_1343578 (hl_pair (hl_ty_topology A) (2 :^: A) (hl_FST (hl_ty_topology A) (2 :^: A :*: 2 :^: A) v_1343579) (hl_FST (2 :^: A) (2 :^: A) (hl_SND (hl_ty_topology A) (2 :^: A :*: 2 :^: A) v_1343579)))).

// HOL Light: reduced_homology_group : int#A topology->(((num->real)->A) frag->bool) group
Definition hl_reduced_homology_group : set -> set :=
  fun A:set => fun v_1345094 :e hl_ty_int :*: hl_ty_topology A => hl_subgroup_generated (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_FST hl_ty_int (hl_ty_topology A) v_1345094) (hl_SND hl_ty_int (hl_ty_topology A) v_1345094))) (hl_group_kernel (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (1 :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (1 :^: (R :^: omega)))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_FST hl_ty_int (hl_ty_topology A) v_1345094) (hl_SND hl_ty_int (hl_ty_topology A) v_1345094))) (hl_homology_group 1 (hl_pair hl_ty_int (hl_ty_topology 1) (hl_FST hl_ty_int (hl_ty_topology A) v_1345094) (hl_discrete_topology 1 (hl_INSERT 1 hl_one (hl_EMPTY 1)))))) (hl_hom_induced A 1 (hl_FST hl_ty_int (hl_ty_topology A) v_1345094) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_SND hl_ty_int (hl_ty_topology A) v_1345094) (hl_EMPTY A)) (hl_pair (hl_ty_topology 1) (2 :^: 1) (hl_discrete_topology 1 (hl_INSERT 1 hl_one (hl_EMPTY 1))) (hl_EMPTY 1)) (fun x :e A => hl_one))).

// HOL Light: brouwer_degree2 : num->((num->real)->num->real)->int
Definition hl_brouwer_degree2 : set :=
  fun v_1351174 :e omega => fun v_1351175 :e R :^: omega :^: (R :^: omega) => hl_select hl_ty_int (fun d :e hl_ty_int => if forall x :e 2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) x (hl_group_carrier (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num v_1351174) (hl_nsphere v_1351174)))) = 1 -> hl_hom_induced (R :^: omega) (R :^: omega) (hl_int_of_num v_1351174) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere v_1351174) (hl_EMPTY (R :^: omega))) (hl_pair (hl_ty_topology (R :^: omega)) (2 :^: (R :^: omega)) (hl_nsphere v_1351174) (hl_EMPTY (R :^: omega))) v_1351175 x = hl_group_zpow (2 :^: hl_ty_frag (R :^: omega :^: (R :^: omega))) (hl_reduced_homology_group (R :^: omega) (hl_pair hl_ty_int (hl_ty_topology (R :^: omega)) (hl_int_of_num v_1351174) (hl_nsphere v_1351174))) x d then 1 else 0).

// HOL Light: vector_add : (real,N)cart->(real,N)cart->(real,N)cart
Definition hl_vector_add : set -> set :=
  fun N:set => fun v_1434260 :e hl_ty_cart R N => fun v_1434261 :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_real_add (hl_vindex R N v_1434260 i) (hl_vindex R N v_1434261 i)).

// HOL Light: vector_sub : (real,N)cart->(real,N)cart->(real,N)cart
Definition hl_vector_sub : set -> set :=
  fun N:set => fun v_1434272 :e hl_ty_cart R N => fun v_1434273 :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_real_sub (hl_vindex R N v_1434272 i) (hl_vindex R N v_1434273 i)).

// HOL Light: vector_neg : (real,N)cart->(real,N)cart
Definition hl_vector_neg : set -> set :=
  fun N:set => fun v_1434284 :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_real_neg (hl_vindex R N v_1434284 i)).

// HOL Light: % : real->(real,N)cart->(real,N)cart
Definition hl_vmul : set -> set :=
  fun N:set => fun v_1434289 :e R => fun v_1434290 :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_real_mul v_1434289 (hl_vindex R N v_1434290 i)).

// HOL Light: vec : num->(real,N)cart
Definition hl_vec : set -> set :=
  fun N:set => fun v_1434301 :e omega => hl_lambda R N (fun i :e omega => hl_real_of_num v_1434301).

// HOL Light: dot : (real,N)cart->(real,N)cart->real
Definition hl_dot : set -> set :=
  fun N:set => fun v_1434306 :e hl_ty_cart R N => fun v_1434307 :e hl_ty_cart R N => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_mul (hl_vindex R N v_1434306 i) (hl_vindex R N v_1434307 i)).

// HOL Light: vector_norm : (real,?651982)cart->real
Definition hl_vector_norm : set -> set :=
  fun T651982:set => fun v_1435062 :e hl_ty_cart R T651982 => hl_sqrt (hl_dot T651982 v_1435062 v_1435062).

// HOL Light: distance : (real,?652007)cart#(real,?652007)cart->real
Definition hl_distance : set -> set :=
  fun T652007:set => fun v_1435067 :e hl_ty_cart R T652007 :*: hl_ty_cart R T652007 => hl_vector_norm T652007 (hl_vector_sub T652007 (hl_FST (hl_ty_cart R T652007) (hl_ty_cart R T652007) v_1435067) (hl_SND (hl_ty_cart R T652007) (hl_ty_cart R T652007) v_1435067)).

// HOL Light: vsum : (A->bool)->(A->(real,N)cart)->(real,N)cart
Definition hl_vsum : set -> set -> set :=
  fun A:set => fun N:set => fun v_1436864 :e 2 :^: A => fun v_1436865 :e hl_ty_cart R N :^: A => hl_lambda R N (fun i :e omega => hl_sum A v_1436864 (fun x :e A => hl_vindex R N (v_1436865 x) i)).

// HOL Light: basis : num->(real,?661278)cart
Definition hl_basis : set -> set :=
  fun T661278:set => fun v_1438545 :e omega => hl_lambda R T661278 (fun i :e omega => hl_COND R (if i = v_1438545 then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))).

// HOL Light: orthogonal : (real,?661980)cart->(real,?661980)cart->bool
Definition hl_orthogonal : set -> set :=
  fun T661980:set => fun v_1438751 :e hl_ty_cart R T661980 => fun v_1438752 :e hl_ty_cart R T661980 => if hl_dot T661980 v_1438751 v_1438752 = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0.

// HOL Light: linear : ((real,M)cart->(real,N)cart)->bool
Definition hl_linear : set -> set -> set :=
  fun M:set => fun N:set => fun v_1438929 :e hl_ty_cart R N :^: hl_ty_cart R M => if (forall x y :e hl_ty_cart R M, v_1438929 (hl_vector_add M x y) = hl_vector_add N (v_1438929 x) (v_1438929 y)) /\ forall c :e R, forall x :e hl_ty_cart R M, v_1438929 (hl_vmul M c x) = hl_vmul N c (v_1438929 x) then 1 else 0.

// HOL Light: bilinear : ((real,?664164)cart->(real,?664153)cart->(real,?664154)cart)->bool
Definition hl_bilinear : set -> set -> set -> set :=
  fun T664164:set => fun T664153:set => fun T664154:set => fun v_1439251 :e hl_ty_cart R T664154 :^: hl_ty_cart R T664153 :^: hl_ty_cart R T664164 => if (forall x :e hl_ty_cart R T664164, hl_linear T664153 T664154 (fun y :e hl_ty_cart R T664153 => v_1439251 x y) = 1) /\ forall y :e hl_ty_cart R T664153, hl_linear T664164 T664154 (fun x :e hl_ty_cart R T664164 => v_1439251 x y) = 1 then 1 else 0.

// HOL Light: adjoint : ((real,M)cart->(real,N)cart)->(real,N)cart->(real,M)cart
Definition hl_adjoint : set -> set -> set :=
  fun M:set => fun N:set => fun v_1439823 :e hl_ty_cart R N :^: hl_ty_cart R M => hl_select (hl_ty_cart R M :^: hl_ty_cart R N) (fun f' :e hl_ty_cart R M :^: hl_ty_cart R N => if forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_dot N (v_1439823 x) y = hl_dot M x (f' y) then 1 else 0).

// HOL Light: %% : real->((real,N)cart,M)cart->((real,N)cart,M)cart
Definition hl_mcmul : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440026 :e R => fun v_1440027 :e hl_ty_cart (hl_ty_cart R N) M => hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_mul v_1440026 (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440027 i) j))).

// HOL Light: matrix_neg : ((real,N)cart,M)cart->((real,N)cart,M)cart
Definition hl_matrix_neg : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440038 :e hl_ty_cart (hl_ty_cart R N) M => hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_neg (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440038 i) j))).

// HOL Light: matrix_add : ((real,N)cart,M)cart->((real,N)cart,M)cart->((real,N)cart,M)cart
Definition hl_matrix_add : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440043 :e hl_ty_cart (hl_ty_cart R N) M => fun v_1440044 :e hl_ty_cart (hl_ty_cart R N) M => hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_add (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440043 i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440044 i) j))).

// HOL Light: matrix_sub : ((real,N)cart,M)cart->((real,N)cart,M)cart->((real,N)cart,M)cart
Definition hl_matrix_sub : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440055 :e hl_ty_cart (hl_ty_cart R N) M => fun v_1440056 :e hl_ty_cart (hl_ty_cart R N) M => hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_sub (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440055 i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440056 i) j))).

// HOL Light: matrix_mul : ((real,N)cart,M)cart->((real,P)cart,N)cart->((real,P)cart,M)cart
Definition hl_matrix_mul : set -> set -> set -> set :=
  fun N:set => fun M:set => fun P:set => fun v_1440067 :e hl_ty_cart (hl_ty_cart R N) M => fun v_1440068 :e hl_ty_cart (hl_ty_cart R P) N => hl_lambda (hl_ty_cart R P) M (fun i :e omega => hl_lambda R P (fun j :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun k :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440067 i) k) (hl_vindex R P (hl_vindex (hl_ty_cart R P) N v_1440068 k) j)))).

// HOL Light: matrix_vector_mul : ((real,N)cart,M)cart->(real,N)cart->(real,M)cart
Definition hl_matrix_vector_mul : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440079 :e hl_ty_cart (hl_ty_cart R N) M => fun v_1440080 :e hl_ty_cart R N => hl_lambda R M (fun i :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun j :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440079 i) j) (hl_vindex R N v_1440080 j))).

// HOL Light: vector_matrix_mul : (real,M)cart->((real,N)cart,M)cart->(real,N)cart
Definition hl_vector_matrix_mul : set -> set -> set :=
  fun M:set => fun N:set => fun v_1440091 :e hl_ty_cart R M => fun v_1440092 :e hl_ty_cart (hl_ty_cart R N) M => hl_lambda R N (fun j :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) (fun i :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440092 i) j) (hl_vindex R M v_1440091 i))).

// HOL Light: mat : num->((real,N)cart,M)cart
Definition hl_mat : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440103 :e omega => hl_lambda (hl_ty_cart R N) M (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if i = j then 1 else 0) (hl_real_of_num v_1440103) (hl_real_of_num (hl_NUMERAL hl_zero)))).

// HOL Light: transp : ((real,N)cart,M)cart->((real,M)cart,N)cart
Definition hl_transp : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440108 :e hl_ty_cart (hl_ty_cart R N) M => hl_lambda (hl_ty_cart R M) N (fun i :e omega => hl_lambda R M (fun j :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440108 j) i)).

// HOL Light: row : num->((real,N)cart,M)cart->(real,N)cart
Definition hl_row : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440113 :e omega => fun v_1440114 :e hl_ty_cart (hl_ty_cart R N) M => hl_lambda R N (fun j :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440114 v_1440113) j).

// HOL Light: column : num->((real,N)cart,M)cart->(real,M)cart
Definition hl_column : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440125 :e omega => fun v_1440126 :e hl_ty_cart (hl_ty_cart R N) M => hl_lambda R M (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1440126 i) v_1440125).

// HOL Light: rows : ((real,N)cart,M)cart->(real,N)cart->bool
Definition hl_rows : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440137 :e hl_ty_cart (hl_ty_cart R N) M => hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2781 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2781 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 then 1 else 0) (hl_row N M i v_1440137) = 1 then 1 else 0).

// HOL Light: columns : ((real,N)cart,M)cart->(real,M)cart->bool
Definition hl_columns : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440142 :e hl_ty_cart (hl_ty_cart R N) M => hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_2782 :e hl_ty_cart R M => if exists i :e omega, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_2782 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_column N M i v_1440142) = 1 then 1 else 0).

// HOL Light: symmetric_matrix : ((real,N)cart,N)cart->bool
Definition hl_symmetric_matrix : set -> set :=
  fun N:set => fun v_1440207 :e hl_ty_cart (hl_ty_cart R N) N => if hl_transp N N v_1440207 = v_1440207 then 1 else 0.

// HOL Light: normal_matrix : ((real,N)cart,N)cart->bool
Definition hl_normal_matrix : set -> set :=
  fun N:set => fun v_1440212 :e hl_ty_cart (hl_ty_cart R N) N => if hl_matrix_mul N N N (hl_transp N N v_1440212) v_1440212 = hl_matrix_mul N N N v_1440212 (hl_transp N N v_1440212) then 1 else 0.

// HOL Light: invertible : ((real,N)cart,M)cart->bool
Definition hl_invertible : set -> set -> set :=
  fun N:set => fun M:set => fun v_1440734 :e hl_ty_cart (hl_ty_cart R N) M => if exists A' :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul N M M v_1440734 A' = hl_mat M M (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_matrix_mul M N N A' v_1440734 = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0.

// HOL Light: matrix : ((real,M)cart->(real,N)cart)->((real,M)cart,N)cart
Definition hl_matrix : set -> set -> set :=
  fun M:set => fun N:set => fun v_1440951 :e hl_ty_cart R N :^: hl_ty_cart R M => hl_lambda (hl_ty_cart R M) N (fun i :e omega => hl_lambda R M (fun j :e omega => hl_vindex R N (v_1440951 (hl_basis M j)) i)).

// HOL Light: onorm : ((real,M)cart->(real,N)cart)->real
Definition hl_onorm : set -> set -> set :=
  fun M:set => fun N:set => fun v_1441039 :e hl_ty_cart R N :^: hl_ty_cart R M => hl_sup (hl_GSPEC R (fun GEN_PVAR_2783 :e R => if exists x :e hl_ty_cart R M, hl_SETSPEC R GEN_PVAR_2783 (if hl_vector_norm M x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) (hl_vector_norm N (v_1441039 x)) = 1 then 1 else 0)).

// HOL Light: lift : real->(real,1)cart
Definition hl_lift : set :=
  fun v_1442875 :e R => hl_lambda R 1 (fun i :e omega => v_1442875).

// HOL Light: drop : (real,1)cart->real
Definition hl_drop : set :=
  fun v_1442880 :e hl_ty_cart R 1 => hl_vindex R 1 v_1442880 (hl_NUMERAL (hl_BIT1 hl_zero)).

// HOL Light: indicator : ((real,M)cart->bool)->(real,M)cart->(real,1)cart
Definition hl_indicator : set -> set :=
  fun M:set => fun v_1444648 :e 2 :^: hl_ty_cart R M => fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R 1) (hl_IN (hl_ty_cart R M) x v_1444648) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero)).

// HOL Light: dropout : num->(real,M)cart->(real,N)cart
Definition hl_dropout : set -> set -> set :=
  fun M:set => fun N:set => fun v_1445171 :e omega => fun v_1445172 :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_COND R (if hl_lt i v_1445171 = 1 /\ hl_le i (hl_dimindex M (hl_UNIV M)) = 1 then 1 else 0) (hl_vindex R M v_1445172 i) (hl_COND R (hl_le (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex M (hl_UNIV M))) (hl_vindex R M v_1445172 (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL hl_zero)))).

// HOL Light: pushin : num->?678191->(?678191,?678202)cart->(?678191,?678190)cart
Definition hl_pushin : set -> set -> set -> set :=
  fun T678191:set => fun T678202:set => fun T678190:set => fun v_1445183 :e omega => fun v_1445184 :e T678191 => fun v_1445185 :e hl_ty_cart T678191 T678202 => hl_lambda T678191 T678190 (fun i :e omega => hl_COND T678191 (hl_lt i v_1445183) (hl_vindex T678191 T678202 v_1445185 i) (hl_COND T678191 (if i = v_1445183 then 1 else 0) v_1445184 (hl_vindex T678191 T678202 v_1445185 (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero)))))).

// HOL Light: subspace : ((real,?679304)cart->bool)->bool
Definition hl_subspace : set -> set :=
  fun T679304:set => fun v_1445587 :e 2 :^: hl_ty_cart R T679304 => if hl_IN (hl_ty_cart R T679304) (hl_vec T679304 (hl_NUMERAL hl_zero)) v_1445587 = 1 /\ ((forall x y :e hl_ty_cart R T679304, hl_IN (hl_ty_cart R T679304) x v_1445587 = 1 /\ hl_IN (hl_ty_cart R T679304) y v_1445587 = 1 -> hl_IN (hl_ty_cart R T679304) (hl_vector_add T679304 x y) v_1445587 = 1) /\ forall c :e R, forall x :e hl_ty_cart R T679304, hl_IN (hl_ty_cart R T679304) x v_1445587 = 1 -> hl_IN (hl_ty_cart R T679304) (hl_vmul T679304 c x) v_1445587 = 1) then 1 else 0.

// HOL Light: span : ((real,?679316)cart->bool)->(real,?679316)cart->bool
Definition hl_span : set -> set :=
  fun T679316:set => fun v_1445592 :e 2 :^: hl_ty_cart R T679316 => hl_hull (hl_ty_cart R T679316) (hl_subspace T679316) v_1445592.

// HOL Light: dependent : ((real,?679334)cart->bool)->bool
Definition hl_dependent : set -> set :=
  fun T679334:set => fun v_1445597 :e 2 :^: hl_ty_cart R T679334 => if exists a :e hl_ty_cart R T679334, hl_IN (hl_ty_cart R T679334) a v_1445597 = 1 /\ hl_IN (hl_ty_cart R T679334) a (hl_span T679334 (hl_DELETE (hl_ty_cart R T679334) v_1445597 a)) = 1 then 1 else 0.

// HOL Light: independent : ((real,?679344)cart->bool)->bool
Definition hl_independent : set -> set :=
  fun T679344:set => fun v_1445602 :e 2 :^: hl_ty_cart R T679344 => if ~ hl_dependent T679344 v_1445602 = 1 then 1 else 0.

// HOL Light: dim : ((real,N)cart->bool)->num
Definition hl_dim : set -> set :=
  fun N:set => fun v_1454321 :e 2 :^: hl_ty_cart R N => hl_select omega (fun n :e omega => if exists b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b v_1454321 = 1 /\ (hl_independent N b = 1 /\ (hl_SUBSET (hl_ty_cart R N) v_1454321 (hl_span N b) = 1 /\ hl_HAS_SIZE (hl_ty_cart R N) b n = 1)) then 1 else 0).

// HOL Light: euclidean_matroid : (real,N)cart matroid
Definition hl_euclidean_matroid : set -> set :=
  fun N:set => hl_matroid (hl_ty_cart R N) (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N :^: (2 :^: hl_ty_cart R N)) (hl_UNIV (hl_ty_cart R N)) (hl_span N)).

// HOL Light: rowvector : (real,N)cart->((real,N)cart,1)cart
Definition hl_rowvector : set -> set :=
  fun N:set => fun v_1469405 :e hl_ty_cart R N => hl_lambda (hl_ty_cart R N) 1 (fun i :e omega => hl_lambda R N (fun j :e omega => hl_vindex R N v_1469405 j)).

// HOL Light: columnvector : (real,N)cart->((real,1)cart,N)cart
Definition hl_columnvector : set -> set :=
  fun N:set => fun v_1469410 :e hl_ty_cart R N => hl_lambda (hl_ty_cart R 1) N (fun i :e omega => hl_lambda R 1 (fun j :e omega => hl_vindex R N v_1469410 i)).

// HOL Light: rank : ((real,M)cart,N)cart->num
Definition hl_rank : set -> set -> set :=
  fun M:set => fun N:set => fun v_1469636 :e hl_ty_cart (hl_ty_cart R M) N => hl_dim N (hl_columns M N v_1469636).

// HOL Light: matrix_inv : ((real,M)cart,N)cart->((real,N)cart,M)cart
Definition hl_matrix_inv : set -> set -> set :=
  fun M:set => fun N:set => fun v_1487567 :e hl_ty_cart (hl_ty_cart R M) N => hl_matrix N M (fun y :e hl_ty_cart R N => hl_select (hl_ty_cart R M) (fun x :e hl_ty_cart R M => if (forall w :e hl_ty_cart R M, hl_matrix_vector_mul M N v_1487567 w = hl_vec N (hl_NUMERAL hl_zero) -> hl_orthogonal M x w = 1) /\ forall z :e hl_ty_cart R M, hl_orthogonal N (hl_vector_sub N y (hl_matrix_vector_mul M N v_1487567 x)) (hl_matrix_vector_mul M N v_1487567 z) = 1 then 1 else 0)).

// HOL Light: infnorm : (real,N)cart->real
Definition hl_infnorm : set -> set :=
  fun N:set => hl_select (R :^: hl_ty_cart R N :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (fun infnorm1 :e R :^: hl_ty_cart R N :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) => if forall v_1490045 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))), forall x :e hl_ty_cart R N, infnorm1 v_1490045 x = hl_sup (hl_GSPEC R (fun GEN_PVAR_2889 :e R => if exists i :e omega, hl_SETSPEC R GEN_PVAR_2889 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_real_abs (hl_vindex R N x i)) = 1 then 1 else 0)) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))))).

// HOL Light: collinear : ((real,?712660)cart->bool)->bool
Definition hl_collinear : set -> set :=
  fun T712660:set => fun v_1490473 :e 2 :^: hl_ty_cart R T712660 => if exists u :e hl_ty_cart R T712660, forall x y :e hl_ty_cart R T712660, hl_IN (hl_ty_cart R T712660) x v_1490473 = 1 /\ hl_IN (hl_ty_cart R T712660) y v_1490473 = 1 -> exists c :e R, hl_vector_sub T712660 x y = hl_vmul T712660 c u then 1 else 0.

// HOL Light: between : (real,?714347)cart->(real,?714347)cart#(real,?714347)cart->bool
Definition hl_between : set -> set :=
  fun T714347:set => fun v_1492001 :e hl_ty_cart R T714347 => fun v_1492002 :e hl_ty_cart R T714347 :*: hl_ty_cart R T714347 => if hl_distance T714347 (hl_pair (hl_ty_cart R T714347) (hl_ty_cart R T714347) (hl_FST (hl_ty_cart R T714347) (hl_ty_cart R T714347) v_1492002) (hl_SND (hl_ty_cart R T714347) (hl_ty_cart R T714347) v_1492002)) = hl_real_add (hl_distance T714347 (hl_pair (hl_ty_cart R T714347) (hl_ty_cart R T714347) (hl_FST (hl_ty_cart R T714347) (hl_ty_cart R T714347) v_1492002) v_1492001)) (hl_distance T714347 (hl_pair (hl_ty_cart R T714347) (hl_ty_cart R T714347) v_1492001 (hl_SND (hl_ty_cart R T714347) (hl_ty_cart R T714347) v_1492002))) then 1 else 0.

// HOL Light: midpoint : (real,?715518)cart#(real,?715518)cart->(real,?715518)cart
Definition hl_midpoint : set -> set :=
  fun T715518:set => fun v_1492665 :e hl_ty_cart R T715518 :*: hl_ty_cart R T715518 => hl_vmul T715518 (hl_real_inv (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vector_add T715518 (hl_FST (hl_ty_cart R T715518) (hl_ty_cart R T715518) v_1492665) (hl_SND (hl_ty_cart R T715518) (hl_ty_cart R T715518) v_1492665)).

// HOL Light: open_interval : (real,N)cart#(real,N)cart->(real,N)cart->bool
Definition hl_open_interval : set -> set :=
  fun N:set => fun v_1492748 :e hl_ty_cart R N :*: hl_ty_cart R N => hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2894 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2894 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N (hl_FST (hl_ty_cart R N) (hl_ty_cart R N) v_1492748) i) (hl_vindex R N x i) = 1 /\ hl_real_lt (hl_vindex R N x i) (hl_vindex R N (hl_SND (hl_ty_cart R N) (hl_ty_cart R N) v_1492748) i) = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: closed_interval : ((real,N)cart#(real,N)cart) list->(real,N)cart->bool
Definition hl_closed_interval : set -> set :=
  fun N:set => fun v_1492757 :e finseq (hl_ty_cart R N :*: hl_ty_cart R N) => hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_2895 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_2895 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N (hl_FST (hl_ty_cart R N) (hl_ty_cart R N) (hl_HD (hl_ty_cart R N :*: hl_ty_cart R N) v_1492757)) i) (hl_vindex R N x i) = 1 /\ hl_real_le (hl_vindex R N x i) (hl_vindex R N (hl_SND (hl_ty_cart R N) (hl_ty_cart R N) (hl_HD (hl_ty_cart R N :*: hl_ty_cart R N) v_1492757)) i) = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: trace : ((real,N)cart,N)cart->real
Definition hl_trace : set -> set :=
  fun N:set => fun v_1500183 :e hl_ty_cart (hl_ty_cart R N) N => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N v_1500183 i) i).

// HOL Light: det : ((real,N)cart,N)cart->real
Definition hl_det : set -> set :=
  fun N:set => fun v_1500196 :e hl_ty_cart (hl_ty_cart R N) N => hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_2910 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_2910 (hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) p = 1 then 1 else 0)) (fun p :e omega :^: omega => hl_real_mul (hl_sign omega p) (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N v_1500196 i) (p i)))).

// HOL Light: cofactor : ((real,N)cart,N)cart->((real,N)cart,N)cart
Definition hl_cofactor : set -> set :=
  fun N:set => fun v_1505345 :e hl_ty_cart (hl_ty_cart R N) N => hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_det N (hl_lambda (hl_ty_cart R N) N (fun k :e omega => hl_lambda R N (fun l :e omega => hl_COND R (if k = i /\ l = j then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_COND R (if k = i \/ l = j then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N v_1505345 k) l))))))).

// HOL Light: diagonal_matrix : ((real,N)cart,M)cart->bool
Definition hl_diagonal_matrix : set -> set -> set :=
  fun N:set => fun M:set => fun v_1512149 :e hl_ty_cart (hl_ty_cart R N) M => if forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) M v_1512149 i) j = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0.

// HOL Light: positive_semidefinite : ((real,N)cart,N)cart->bool
Definition hl_positive_semidefinite : set -> set :=
  fun N:set => fun v_1512969 :e hl_ty_cart (hl_ty_cart R N) N => if hl_symmetric_matrix N v_1512969 = 1 /\ forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_dot N x (hl_matrix_vector_mul N N v_1512969 x)) = 1 then 1 else 0.

// HOL Light: positive_definite : ((real,N)cart,N)cart->bool
Definition hl_positive_definite : set -> set :=
  fun N:set => fun v_1513593 :e hl_ty_cart (hl_ty_cart R N) N => if hl_symmetric_matrix N v_1513593 = 1 /\ forall x :e hl_ty_cart R N, ~ x = hl_vec N (hl_NUMERAL hl_zero) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_dot N x (hl_matrix_vector_mul N N v_1513593 x)) = 1 then 1 else 0.

// HOL Light: orthogonal_transformation : ((real,N)cart->(real,N)cart)->bool
Definition hl_orthogonal_transformation : set -> set :=
  fun N:set => fun v_1514302 :e hl_ty_cart R N :^: hl_ty_cart R N => if hl_linear N N v_1514302 = 1 /\ forall v w :e hl_ty_cart R N, hl_dot N (v_1514302 v) (v_1514302 w) = hl_dot N v w then 1 else 0.

// HOL Light: orthogonal_matrix : ((real,N)cart,N)cart->bool
Definition hl_orthogonal_matrix : set -> set :=
  fun N:set => fun v_1514467 :e hl_ty_cart (hl_ty_cart R N) N => if hl_matrix_mul N N N (hl_transp N N v_1514467) v_1514467 = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_matrix_mul N N N v_1514467 (hl_transp N N v_1514467) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0.

// HOL Light: rotation_matrix : ((real,?747464)cart,?747464)cart->bool
Definition hl_rotation_matrix : set -> set :=
  fun T747464:set => fun v_1522524 :e hl_ty_cart (hl_ty_cart R T747464) T747464 => if hl_orthogonal_matrix T747464 v_1522524 = 1 /\ hl_det T747464 v_1522524 = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0.

// HOL Light: rotoinversion_matrix : ((real,?747479)cart,?747479)cart->bool
Definition hl_rotoinversion_matrix : set -> set :=
  fun T747479:set => fun v_1522529 :e hl_ty_cart (hl_ty_cart R T747479) T747479 => if hl_orthogonal_matrix T747479 v_1522529 = 1 /\ hl_det T747479 v_1522529 = hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) then 1 else 0.

// HOL Light: reflect_along : (real,N)cart->(real,N)cart->(real,N)cart
Definition hl_reflect_along : set -> set :=
  fun N:set => fun v_1527223 :e hl_ty_cart R N => fun v_1527224 :e hl_ty_cart R N => hl_vector_sub N v_1527224 (hl_vmul N (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_div (hl_dot N v_1527224 v_1527223) (hl_dot N v_1527223 v_1527223))) v_1527223).

// HOL Light: open : ((real,?755435)cart->bool)->bool
Definition hl_open : set -> set :=
  fun T755435:set => fun v_1529386 :e 2 :^: hl_ty_cart R T755435 => if forall x :e hl_ty_cart R T755435, hl_IN (hl_ty_cart R T755435) x v_1529386 = 1 -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall x' :e hl_ty_cart R T755435, hl_real_lt (hl_distance T755435 (hl_pair (hl_ty_cart R T755435) (hl_ty_cart R T755435) x' x)) e1 = 1 -> hl_IN (hl_ty_cart R T755435) x' v_1529386 = 1 then 1 else 0.

// HOL Light: euclidean : (real,?755451)cart topology
Definition hl_euclidean : set -> set :=
  fun T755451:set => hl_topology (hl_ty_cart R T755451) (hl_open T755451).

// HOL Light: euclidean_metric : (real,N)cart metric
Definition hl_euclidean_metric : set -> set :=
  fun N:set => hl_metric (hl_ty_cart R N) (hl_pair (2 :^: hl_ty_cart R N) (R :^: (hl_ty_cart R N :*: hl_ty_cart R N)) (hl_UNIV (hl_ty_cart R N)) (hl_distance N)).

// HOL Light: closed : ((real,N)cart->bool)->bool
Definition hl_closed : set -> set :=
  fun N:set => fun v_1529416 :e 2 :^: hl_ty_cart R N => hl_open N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) v_1529416).

// HOL Light: ball : (real,?757203)cart#real->(real,?757203)cart->bool
Definition hl_ball : set -> set :=
  fun T757203:set => fun v_1529813 :e hl_ty_cart R T757203 :*: R => hl_GSPEC (hl_ty_cart R T757203) (fun GEN_PVAR_3106 :e hl_ty_cart R T757203 => if exists y :e hl_ty_cart R T757203, hl_SETSPEC (hl_ty_cart R T757203) GEN_PVAR_3106 (hl_real_lt (hl_distance T757203 (hl_pair (hl_ty_cart R T757203) (hl_ty_cart R T757203) (hl_FST (hl_ty_cart R T757203) R v_1529813) y)) (hl_SND (hl_ty_cart R T757203) R v_1529813)) y = 1 then 1 else 0).

// HOL Light: cball : (real,?757296)cart#real->(real,?757296)cart->bool
Definition hl_cball : set -> set :=
  fun T757296:set => fun v_1529822 :e hl_ty_cart R T757296 :*: R => hl_GSPEC (hl_ty_cart R T757296) (fun GEN_PVAR_3107 :e hl_ty_cart R T757296 => if exists y :e hl_ty_cart R T757296, hl_SETSPEC (hl_ty_cart R T757296) GEN_PVAR_3107 (hl_real_le (hl_distance T757296 (hl_pair (hl_ty_cart R T757296) (hl_ty_cart R T757296) (hl_FST (hl_ty_cart R T757296) R v_1529822) y)) (hl_SND (hl_ty_cart R T757296) R v_1529822)) y = 1 then 1 else 0).

// HOL Light: sphere : (real,?757389)cart#real->(real,?757389)cart->bool
Definition hl_sphere : set -> set :=
  fun T757389:set => fun v_1529831 :e hl_ty_cart R T757389 :*: R => hl_GSPEC (hl_ty_cart R T757389) (fun GEN_PVAR_3108 :e hl_ty_cart R T757389 => if exists y :e hl_ty_cart R T757389, hl_SETSPEC (hl_ty_cart R T757389) GEN_PVAR_3108 (if hl_distance T757389 (hl_pair (hl_ty_cart R T757389) (hl_ty_cart R T757389) (hl_FST (hl_ty_cart R T757389) R v_1529831) y) = hl_SND (hl_ty_cart R T757389) R v_1529831 then 1 else 0) y = 1 then 1 else 0).

// HOL Light: manhattan : (real,N)cart metric
Definition hl_manhattan : set -> set :=
  fun N:set => hl_metric (hl_ty_cart R N) (hl_pair (2 :^: hl_ty_cart R N) (R :^: (hl_ty_cart R N :*: hl_ty_cart R N)) (hl_UNIV (hl_ty_cart R N)) (hl_GABS (R :^: (hl_ty_cart R N :*: hl_ty_cart R N)) (fun f :e R :^: (hl_ty_cart R N :*: hl_ty_cart R N) => if forall x y :e hl_ty_cart R N, hl_GEQ R (f (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_abs (hl_real_sub (hl_vindex R N x i) (hl_vindex R N y i)))) = 1 then 1 else 0))).

// HOL Light: closed_segment : ((real,?760700)cart#(real,?760700)cart) list->(real,?760700)cart->bool
Definition hl_closed_segment : set -> set :=
  fun T760700:set => hl_select (2 :^: hl_ty_cart R T760700 :^: finseq (hl_ty_cart R T760700 :*: hl_ty_cart R T760700) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))))) (fun closed_segment1 :e 2 :^: hl_ty_cart R T760700 :^: finseq (hl_ty_cart R T760700 :*: hl_ty_cart R T760700) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))))) => if forall v_1532041 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))), forall a b :e hl_ty_cart R T760700, closed_segment1 v_1532041 (hl_CONS (hl_ty_cart R T760700 :*: hl_ty_cart R T760700) (hl_pair (hl_ty_cart R T760700) (hl_ty_cart R T760700) a b) (hl_NIL (hl_ty_cart R T760700 :*: hl_ty_cart R T760700))) = hl_GSPEC (hl_ty_cart R T760700) (fun GEN_PVAR_3110 :e hl_ty_cart R T760700 => if exists u :e R, hl_SETSPEC (hl_ty_cart R T760700) GEN_PVAR_3110 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 then 1 else 0) (hl_vector_add T760700 (hl_vmul T760700 (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) a) (hl_vmul T760700 u b)) = 1 then 1 else 0) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))))))).

// HOL Light: open_segment : (real,?760717)cart#(real,?760717)cart->(real,?760717)cart->bool
Definition hl_open_segment : set -> set :=
  fun T760717:set => fun v_1532042 :e hl_ty_cart R T760717 :*: hl_ty_cart R T760717 => hl_DIFF (hl_ty_cart R T760717) (hl_closed_segment T760717 (hl_CONS (hl_ty_cart R T760717 :*: hl_ty_cart R T760717) (hl_pair (hl_ty_cart R T760717) (hl_ty_cart R T760717) (hl_FST (hl_ty_cart R T760717) (hl_ty_cart R T760717) v_1532042) (hl_SND (hl_ty_cart R T760717) (hl_ty_cart R T760717) v_1532042)) (hl_NIL (hl_ty_cart R T760717 :*: hl_ty_cart R T760717)))) (hl_INSERT (hl_ty_cart R T760717) (hl_FST (hl_ty_cart R T760717) (hl_ty_cart R T760717) v_1532042) (hl_INSERT (hl_ty_cart R T760717) (hl_SND (hl_ty_cart R T760717) (hl_ty_cart R T760717) v_1532042) (hl_EMPTY (hl_ty_cart R T760717)))).

// HOL Light: connected : ((real,?763186)cart->bool)->bool
Definition hl_connected : set -> set :=
  fun T763186:set => fun v_1533152 :e 2 :^: hl_ty_cart R T763186 => if ~ exists e1 e2 :e 2 :^: hl_ty_cart R T763186, hl_open T763186 e1 = 1 /\ (hl_open T763186 e2 = 1 /\ (hl_SUBSET (hl_ty_cart R T763186) v_1533152 (hl_UNION (hl_ty_cart R T763186) e1 e2) = 1 /\ (hl_INTER (hl_ty_cart R T763186) e1 (hl_INTER (hl_ty_cart R T763186) e2 v_1533152) = hl_EMPTY (hl_ty_cart R T763186) /\ (~ hl_INTER (hl_ty_cart R T763186) e1 v_1533152 = hl_EMPTY (hl_ty_cart R T763186) /\ ~ hl_INTER (hl_ty_cart R T763186) e2 v_1533152 = hl_EMPTY (hl_ty_cart R T763186))))) then 1 else 0.

// HOL Light: limit_point_of : (real,?765763)cart->((real,?765763)cart->bool)->bool
Definition hl_limit_point_of : set -> set :=
  fun T765763:set => fun v_1535575 :e hl_ty_cart R T765763 => fun v_1535576 :e 2 :^: hl_ty_cart R T765763 => if forall t :e 2 :^: hl_ty_cart R T765763, hl_IN (hl_ty_cart R T765763) v_1535575 t = 1 /\ hl_open T765763 t = 1 -> exists y :e hl_ty_cart R T765763, ~ y = v_1535575 /\ (hl_IN (hl_ty_cart R T765763) y v_1535576 = 1 /\ hl_IN (hl_ty_cart R T765763) y t = 1) then 1 else 0.

// HOL Light: interior : ((real,?767052)cart->bool)->(real,?767052)cart->bool
Definition hl_interior : set -> set :=
  fun T767052:set => fun v_1536409 :e 2 :^: hl_ty_cart R T767052 => hl_GSPEC (hl_ty_cart R T767052) (fun GEN_PVAR_3123 :e hl_ty_cart R T767052 => if exists x :e hl_ty_cart R T767052, hl_SETSPEC (hl_ty_cart R T767052) GEN_PVAR_3123 (if exists t :e 2 :^: hl_ty_cart R T767052, hl_open T767052 t = 1 /\ (hl_IN (hl_ty_cart R T767052) x t = 1 /\ hl_SUBSET (hl_ty_cart R T767052) t v_1536409 = 1) then 1 else 0) x = 1 then 1 else 0).

// HOL Light: closure : ((real,?767686)cart->bool)->(real,?767686)cart->bool
Definition hl_closure : set -> set :=
  fun T767686:set => fun v_1536839 :e 2 :^: hl_ty_cart R T767686 => hl_UNION (hl_ty_cart R T767686) v_1536839 (hl_GSPEC (hl_ty_cart R T767686) (fun GEN_PVAR_3125 :e hl_ty_cart R T767686 => if exists x :e hl_ty_cart R T767686, hl_SETSPEC (hl_ty_cart R T767686) GEN_PVAR_3125 (hl_limit_point_of T767686 x v_1536839) x = 1 then 1 else 0)).

// HOL Light: frontier : ((real,?770017)cart->bool)->(real,?770017)cart->bool
Definition hl_frontier : set -> set :=
  fun T770017:set => fun v_1537571 :e 2 :^: hl_ty_cart R T770017 => hl_DIFF (hl_ty_cart R T770017) (hl_closure T770017 v_1537571) (hl_interior T770017 v_1537571).

// HOL Light: at : (real,?771775)cart->(real,?771775)cart net
Definition hl_at : set -> set :=
  fun T771775:set => fun v_1539747 :e hl_ty_cart R T771775 => hl_atpointof (hl_ty_cart R T771775) (hl_euclidean T771775) v_1539747.

// HOL Light: at_infinity : (real,?771818)cart net
Definition hl_at_infinity : set -> set :=
  fun T771818:set => hl_mk_net (hl_ty_cart R T771818) (hl_pair (2 :^: (2 :^: hl_ty_cart R T771818)) (2 :^: hl_ty_cart R T771818) (hl_GSPEC (2 :^: hl_ty_cart R T771818) (fun GEN_PVAR_3135 :e 2 :^: hl_ty_cart R T771818 => if exists b :e R, hl_SETSPEC (2 :^: hl_ty_cart R T771818) GEN_PVAR_3135 (hl_IN R b (hl_UNIV R)) (hl_GSPEC (hl_ty_cart R T771818) (fun GEN_PVAR_3134 :e hl_ty_cart R T771818 => if exists x :e hl_ty_cart R T771818, hl_SETSPEC (hl_ty_cart R T771818) GEN_PVAR_3134 (hl_real_le b (hl_vector_norm T771818 x)) x = 1 then 1 else 0)) = 1 then 1 else 0)) (hl_EMPTY (hl_ty_cart R T771818))).

// HOL Light: at_posinfinity : real net
Definition hl_at_posinfinity : set :=
  hl_mk_net R (hl_pair (2 :^: (2 :^: R)) (2 :^: R) (hl_GSPEC (2 :^: R) (fun GEN_PVAR_3138 :e 2 :^: R => if exists a :e R, hl_SETSPEC (2 :^: R) GEN_PVAR_3138 (hl_IN R a (hl_UNIV R)) (hl_GSPEC R (fun GEN_PVAR_3137 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_3137 (hl_real_le a x) x = 1 then 1 else 0)) = 1 then 1 else 0)) (hl_EMPTY R)).

// HOL Light: at_neginfinity : real net
Definition hl_at_neginfinity : set :=
  hl_mk_net R (hl_pair (2 :^: (2 :^: R)) (2 :^: R) (hl_GSPEC (2 :^: R) (fun GEN_PVAR_3141 :e 2 :^: R => if exists a :e R, hl_SETSPEC (2 :^: R) GEN_PVAR_3141 (hl_IN R a (hl_UNIV R)) (hl_GSPEC R (fun GEN_PVAR_3140 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_3140 (hl_real_le x a) x = 1 then 1 else 0)) = 1 then 1 else 0)) (hl_EMPTY R)).

// HOL Light: in_direction : (real,?771951)cart->(real,?771951)cart->(real,?771951)cart net
Definition hl_in_direction : set -> set :=
  fun T771951:set => fun v_1539752 :e hl_ty_cart R T771951 => fun v_1539753 :e hl_ty_cart R T771951 => hl_within (hl_ty_cart R T771951) (hl_at T771951 v_1539752) (hl_GSPEC (hl_ty_cart R T771951) (fun GEN_PVAR_3142 :e hl_ty_cart R T771951 => if exists b :e hl_ty_cart R T771951, hl_SETSPEC (hl_ty_cart R T771951) GEN_PVAR_3142 (if exists c :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_vector_sub T771951 b v_1539752 = hl_vmul T771951 c v_1539753 then 1 else 0) b = 1 then 1 else 0)).

// HOL Light: --> : (?773916->(real,?773911)cart)->(real,?773911)cart->?773916 net->bool
Definition hl_tendsto : set -> set -> set :=
  fun T773916:set => fun T773911:set => fun v_1540183 :e hl_ty_cart R T773911 :^: T773916 => fun v_1540184 :e hl_ty_cart R T773911 => fun v_1540185 :e hl_ty_net T773916 => if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_eventually T773916 (fun x :e T773916 => hl_real_lt (hl_distance T773911 (hl_pair (hl_ty_cart R T773911) (hl_ty_cart R T773911) (v_1540183 x) v_1540184)) e1) v_1540185 = 1 then 1 else 0.

// HOL Light: lim : ?773960 net->(?773960->(real,?773959)cart)->(real,?773959)cart
Definition hl_lim : set -> set -> set :=
  fun T773960:set => fun T773959:set => fun v_1540204 :e hl_ty_net T773960 => fun v_1540205 :e hl_ty_cart R T773959 :^: T773960 => hl_select (hl_ty_cart R T773959) (fun l :e hl_ty_cart R T773959 => hl_tendsto T773960 T773959 v_1540205 l v_1540204).

// HOL Light: condensation_point_of : (real,?776809)cart->((real,?776809)cart->bool)->bool
Definition hl_condensation_point_of : set -> set :=
  fun T776809:set => fun v_1541346 :e hl_ty_cart R T776809 => fun v_1541347 :e 2 :^: hl_ty_cart R T776809 => if forall t :e 2 :^: hl_ty_cart R T776809, hl_IN (hl_ty_cart R T776809) v_1541346 t = 1 /\ hl_open T776809 t = 1 -> ~ hl_COUNTABLE (hl_ty_cart R T776809) (hl_INTER (hl_ty_cart R T776809) v_1541347 t) = 1 then 1 else 0.

// HOL Light: bounded : ((real,N)cart->bool)->bool
Definition hl_bounded : set -> set :=
  fun N:set => fun v_1544934 :e 2 :^: hl_ty_cart R N => if exists a :e R, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x v_1544934 = 1 -> hl_real_le (hl_vector_norm N x) a = 1 then 1 else 0.

// HOL Light: compact : ((real,N)cart->bool)->bool
Definition hl_compact : set -> set :=
  fun N:set => fun v_1547031 :e 2 :^: hl_ty_cart R N => if forall f :e hl_ty_cart R N :^: omega, (forall n :e omega, hl_IN (hl_ty_cart R N) (f n) v_1547031 = 1) -> exists l :e hl_ty_cart R N, exists r :e omega :^: omega, hl_IN (hl_ty_cart R N) l v_1547031 = 1 /\ ((forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ hl_tendsto omega N (hl_o omega (hl_ty_cart R N) omega f r) l hl_sequentially = 1) then 1 else 0.

// HOL Light: cauchy : (num->(real,N)cart)->bool
Definition hl_cauchy : set -> set :=
  fun N:set => fun v_1547184 :e hl_ty_cart R N :^: omega => if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall m n :e omega, hl_ge m N1 = 1 /\ hl_ge n N1 = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (v_1547184 m) (v_1547184 n))) e1 = 1 then 1 else 0.

// HOL Light: complete : ((real,N)cart->bool)->bool
Definition hl_complete : set -> set :=
  fun N:set => fun v_1547191 :e 2 :^: hl_ty_cart R N => if forall f :e hl_ty_cart R N :^: omega, (forall n :e omega, hl_IN (hl_ty_cart R N) (f n) v_1547191 = 1) /\ hl_cauchy N f = 1 -> exists l :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) l v_1547191 = 1 /\ hl_tendsto omega N f l hl_sequentially = 1 then 1 else 0.

// HOL Light: continuous : (?793034->(real,?793032)cart)->?793034 net->bool
Definition hl_continuous : set -> set -> set :=
  fun T793034:set => fun T793032:set => fun v_1549762 :e hl_ty_cart R T793032 :^: T793034 => fun v_1549763 :e hl_ty_net T793034 => hl_tendsto T793034 T793032 v_1549762 (v_1549762 (hl_netlimit T793034 v_1549763)) v_1549763.

// HOL Light: continuous_on : ((real,?794267)cart->(real,?794276)cart)->((real,?794267)cart->bool)->bool
Definition hl_continuous_on : set -> set -> set :=
  fun T794267:set => fun T794276:set => fun v_1550896 :e hl_ty_cart R T794276 :^: hl_ty_cart R T794267 => fun v_1550897 :e 2 :^: hl_ty_cart R T794267 => if forall x :e hl_ty_cart R T794267, hl_IN (hl_ty_cart R T794267) x v_1550897 = 1 -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x' :e hl_ty_cart R T794267, hl_IN (hl_ty_cart R T794267) x' v_1550897 = 1 /\ hl_real_lt (hl_distance T794267 (hl_pair (hl_ty_cart R T794267) (hl_ty_cart R T794267) x' x)) d = 1 -> hl_real_lt (hl_distance T794276 (hl_pair (hl_ty_cart R T794276) (hl_ty_cart R T794276) (v_1550896 x') (v_1550896 x))) e1 = 1 then 1 else 0.

// HOL Light: uniformly_continuous_on : ((real,?794338)cart->(real,?794347)cart)->((real,?794338)cart->bool)->bool
Definition hl_uniformly_continuous_on : set -> set -> set :=
  fun T794338:set => fun T794347:set => fun v_1550908 :e hl_ty_cart R T794347 :^: hl_ty_cart R T794338 => fun v_1550909 :e 2 :^: hl_ty_cart R T794338 => if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x x' :e hl_ty_cart R T794338, hl_IN (hl_ty_cart R T794338) x v_1550909 = 1 /\ (hl_IN (hl_ty_cart R T794338) x' v_1550909 = 1 /\ hl_real_lt (hl_distance T794338 (hl_pair (hl_ty_cart R T794338) (hl_ty_cart R T794338) x' x)) d = 1) -> hl_real_lt (hl_distance T794347 (hl_pair (hl_ty_cart R T794347) (hl_ty_cart R T794347) (v_1550908 x') (v_1550908 x))) e1 = 1 then 1 else 0.

// HOL Light: connected_component : ((real,?821239)cart->bool)->(real,?821239)cart->(real,?821239)cart->bool
Definition hl_connected_component : set -> set :=
  fun T821239:set => fun v_1580003 :e 2 :^: hl_ty_cart R T821239 => fun v_1580004 :e hl_ty_cart R T821239 => fun v_1580005 :e hl_ty_cart R T821239 => if exists t :e 2 :^: hl_ty_cart R T821239, hl_connected T821239 t = 1 /\ (hl_SUBSET (hl_ty_cart R T821239) t v_1580003 = 1 /\ (hl_IN (hl_ty_cart R T821239) v_1580004 t = 1 /\ hl_IN (hl_ty_cart R T821239) v_1580005 t = 1)) then 1 else 0.

// HOL Light: components : ((real,N)cart->bool)->((real,N)cart->bool)->bool
Definition hl_components : set -> set :=
  fun N:set => fun v_1580609 :e 2 :^: hl_ty_cart R N => hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_3472 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_3472 (hl_IN (hl_ty_cart R N) x v_1580609) (hl_connected_component N v_1580609 x) = 1 then 1 else 0).

// HOL Light: diameter : ((real,?830995)cart->bool)->real
Definition hl_diameter : set -> set :=
  fun T830995:set => fun v_1588182 :e 2 :^: hl_ty_cart R T830995 => hl_COND R (if v_1588182 = hl_EMPTY (hl_ty_cart R T830995) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_sup (hl_GSPEC R (fun GEN_PVAR_3504 :e R => if exists x y :e hl_ty_cart R T830995, hl_SETSPEC R GEN_PVAR_3504 (if hl_IN (hl_ty_cart R T830995) x v_1588182 = 1 /\ hl_IN (hl_ty_cart R T830995) y v_1588182 = 1 then 1 else 0) (hl_vector_norm T830995 (hl_vector_sub T830995 x y)) = 1 then 1 else 0))).

// HOL Light: is_interval : ((real,N)cart->bool)->bool
Definition hl_is_interval : set -> set :=
  fun N:set => fun v_1595014 :e 2 :^: hl_ty_cart R N => if forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a v_1595014 = 1 /\ (hl_IN (hl_ty_cart R N) b v_1595014 = 1 /\ (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N x i) = 1 /\ hl_real_le (hl_vindex R N x i) (hl_vindex R N b i) = 1 \/ hl_real_le (hl_vindex R N b i) (hl_vindex R N x i) = 1 /\ hl_real_le (hl_vindex R N x i) (hl_vindex R N a i) = 1)) -> hl_IN (hl_ty_cart R N) x v_1595014 = 1 then 1 else 0.

// HOL Light: homeomorphism : ((real,?853346)cart->bool)#((real,?853347)cart->bool)->((real,?853346)cart->(real,?853347)cart)#((real,?853347)cart->(real,?853346)cart)->bool
Definition hl_homeomorphism : set -> set -> set :=
  fun T853346:set => fun T853347:set => fun v_1602555 :e 2 :^: hl_ty_cart R T853346 :*: 2 :^: hl_ty_cart R T853347 => fun v_1602556 :e hl_ty_cart R T853347 :^: hl_ty_cart R T853346 :*: hl_ty_cart R T853346 :^: hl_ty_cart R T853347 => if (forall x :e hl_ty_cart R T853346, hl_IN (hl_ty_cart R T853346) x (hl_FST (2 :^: hl_ty_cart R T853346) (2 :^: hl_ty_cart R T853347) v_1602555) = 1 -> hl_SND (hl_ty_cart R T853347 :^: hl_ty_cart R T853346) (hl_ty_cart R T853346 :^: hl_ty_cart R T853347) v_1602556 (hl_FST (hl_ty_cart R T853347 :^: hl_ty_cart R T853346) (hl_ty_cart R T853346 :^: hl_ty_cart R T853347) v_1602556 x) = x) /\ (hl_IMAGE (hl_ty_cart R T853346) (hl_ty_cart R T853347) (hl_FST (hl_ty_cart R T853347 :^: hl_ty_cart R T853346) (hl_ty_cart R T853346 :^: hl_ty_cart R T853347) v_1602556) (hl_FST (2 :^: hl_ty_cart R T853346) (2 :^: hl_ty_cart R T853347) v_1602555) = hl_SND (2 :^: hl_ty_cart R T853346) (2 :^: hl_ty_cart R T853347) v_1602555 /\ (hl_continuous_on T853346 T853347 (hl_FST (hl_ty_cart R T853347 :^: hl_ty_cart R T853346) (hl_ty_cart R T853346 :^: hl_ty_cart R T853347) v_1602556) (hl_FST (2 :^: hl_ty_cart R T853346) (2 :^: hl_ty_cart R T853347) v_1602555) = 1 /\ ((forall y :e hl_ty_cart R T853347, hl_IN (hl_ty_cart R T853347) y (hl_SND (2 :^: hl_ty_cart R T853346) (2 :^: hl_ty_cart R T853347) v_1602555) = 1 -> hl_FST (hl_ty_cart R T853347 :^: hl_ty_cart R T853346) (hl_ty_cart R T853346 :^: hl_ty_cart R T853347) v_1602556 (hl_SND (hl_ty_cart R T853347 :^: hl_ty_cart R T853346) (hl_ty_cart R T853346 :^: hl_ty_cart R T853347) v_1602556 y) = y) /\ (hl_IMAGE (hl_ty_cart R T853347) (hl_ty_cart R T853346) (hl_SND (hl_ty_cart R T853347 :^: hl_ty_cart R T853346) (hl_ty_cart R T853346 :^: hl_ty_cart R T853347) v_1602556) (hl_SND (2 :^: hl_ty_cart R T853346) (2 :^: hl_ty_cart R T853347) v_1602555) = hl_FST (2 :^: hl_ty_cart R T853346) (2 :^: hl_ty_cart R T853347) v_1602555 /\ hl_continuous_on T853347 T853346 (hl_SND (hl_ty_cart R T853347 :^: hl_ty_cart R T853346) (hl_ty_cart R T853346 :^: hl_ty_cart R T853347) v_1602556) (hl_SND (2 :^: hl_ty_cart R T853346) (2 :^: hl_ty_cart R T853347) v_1602555) = 1)))) then 1 else 0.

// HOL Light: homeomorphic : ((real,?853364)cart->bool)->((real,?853363)cart->bool)->bool
Definition hl_homeomorphic : set -> set -> set :=
  fun T853364:set => fun T853363:set => fun v_1602577 :e 2 :^: hl_ty_cart R T853364 => fun v_1602578 :e 2 :^: hl_ty_cart R T853363 => if exists f :e hl_ty_cart R T853363 :^: hl_ty_cart R T853364, exists g :e hl_ty_cart R T853364 :^: hl_ty_cart R T853363, hl_homeomorphism T853364 T853363 (hl_pair (2 :^: hl_ty_cart R T853364) (2 :^: hl_ty_cart R T853363) v_1602577 v_1602578) (hl_pair (hl_ty_cart R T853363 :^: hl_ty_cart R T853364) (hl_ty_cart R T853364 :^: hl_ty_cart R T853363) f g) = 1 then 1 else 0.

// HOL Light: sums : (num->(real,?885824)cart)->(real,?885824)cart->(num->bool)->bool
Definition hl_sums : set -> set :=
  fun T885824:set => fun v_1654267 :e hl_ty_cart R T885824 :^: omega => fun v_1654268 :e hl_ty_cart R T885824 => fun v_1654269 :e 2 :^: omega => hl_tendsto omega T885824 (fun n :e omega => hl_vsum omega T885824 (hl_INTER omega v_1654269 (hl_numseg (hl_NUMERAL hl_zero) n)) v_1654267) v_1654268 hl_sequentially.

// HOL Light: infsum : (num->bool)->(num->(real,?885843)cart)->(real,?885843)cart
Definition hl_infsum : set -> set :=
  fun T885843:set => fun v_1654288 :e 2 :^: omega => fun v_1654289 :e hl_ty_cart R T885843 :^: omega => hl_select (hl_ty_cart R T885843) (fun l :e hl_ty_cart R T885843 => hl_sums T885843 v_1654289 l v_1654288).

// HOL Light: summable : (num->bool)->(num->(real,?885857)cart)->bool
Definition hl_summable : set -> set :=
  fun T885857:set => fun v_1654300 :e 2 :^: omega => fun v_1654301 :e hl_ty_cart R T885857 :^: omega => if exists l :e hl_ty_cart R T885857, hl_sums T885857 v_1654301 l v_1654300 = 1 then 1 else 0.

// HOL Light: closest_point : ((real,?898692)cart->bool)->(real,?898692)cart->(real,?898692)cart
Definition hl_closest_point : set -> set :=
  fun T898692:set => fun v_1662229 :e 2 :^: hl_ty_cart R T898692 => fun v_1662230 :e hl_ty_cart R T898692 => hl_select (hl_ty_cart R T898692) (fun x :e hl_ty_cart R T898692 => if hl_IN (hl_ty_cart R T898692) x v_1662229 = 1 /\ forall y :e hl_ty_cart R T898692, hl_IN (hl_ty_cart R T898692) y v_1662229 = 1 -> hl_real_le (hl_distance T898692 (hl_pair (hl_ty_cart R T898692) (hl_ty_cart R T898692) v_1662230 x)) (hl_distance T898692 (hl_pair (hl_ty_cart R T898692) (hl_ty_cart R T898692) v_1662230 y)) = 1 then 1 else 0).

// HOL Light: setdist : ((real,?899664)cart->bool)#((real,?899664)cart->bool)->real
Definition hl_setdist : set -> set :=
  fun T899664:set => fun v_1663089 :e 2 :^: hl_ty_cart R T899664 :*: 2 :^: hl_ty_cart R T899664 => hl_COND R (if hl_FST (2 :^: hl_ty_cart R T899664) (2 :^: hl_ty_cart R T899664) v_1663089 = hl_EMPTY (hl_ty_cart R T899664) \/ hl_SND (2 :^: hl_ty_cart R T899664) (2 :^: hl_ty_cart R T899664) v_1663089 = hl_EMPTY (hl_ty_cart R T899664) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_inf (hl_GSPEC R (fun GEN_PVAR_3724 :e R => if exists x y :e hl_ty_cart R T899664, hl_SETSPEC R GEN_PVAR_3724 (if hl_IN (hl_ty_cart R T899664) x (hl_FST (2 :^: hl_ty_cart R T899664) (2 :^: hl_ty_cart R T899664) v_1663089) = 1 /\ hl_IN (hl_ty_cart R T899664) y (hl_SND (2 :^: hl_ty_cart R T899664) (2 :^: hl_ty_cart R T899664) v_1663089) = 1 then 1 else 0) (hl_distance T899664 (hl_pair (hl_ty_cart R T899664) (hl_ty_cart R T899664) x y)) = 1 then 1 else 0))).

// HOL Light: hausdist : ((real,N)cart->bool)#((real,N)cart->bool)->real
Definition hl_hausdist : set -> set :=
  fun N:set => fun v_1666512 :e 2 :^: hl_ty_cart R N :*: 2 :^: hl_ty_cart R N => hl_LET (2 :^: R) R (fun ds :e 2 :^: R => hl_LET_END R (hl_COND R (if ~ ds = hl_EMPTY R /\ exists b :e R, forall d :e R, hl_IN R d ds = 1 -> hl_real_le d b = 1 then 1 else 0) (hl_sup ds) (hl_real_of_num (hl_NUMERAL hl_zero)))) (hl_UNION R (hl_GSPEC R (fun GEN_PVAR_3751 :e R => if exists x :e hl_ty_cart R N, hl_SETSPEC R GEN_PVAR_3751 (hl_IN (hl_ty_cart R N) x (hl_FST (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_1666512)) (hl_setdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) (hl_SND (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_1666512))) = 1 then 1 else 0)) (hl_GSPEC R (fun GEN_PVAR_3752 :e R => if exists y :e hl_ty_cart R N, hl_SETSPEC R GEN_PVAR_3752 (hl_IN (hl_ty_cart R N) y (hl_SND (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_1666512)) (hl_setdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) y (hl_EMPTY (hl_ty_cart R N))) (hl_FST (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_1666512))) = 1 then 1 else 0))).

// HOL Light: locally : (((real,N)cart->bool)->bool)->((real,N)cart->bool)->bool
Definition hl_locally : set -> set :=
  fun N:set => fun v_1688536 :e 2 :^: (2 :^: hl_ty_cart R N) => fun v_1688537 :e 2 :^: hl_ty_cart R N => if forall w :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v_1688537) w = 1 /\ hl_IN (hl_ty_cart R N) x w = 1 -> exists u v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v_1688537) u = 1 /\ (v_1688536 v = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ hl_SUBSET (hl_ty_cart R N) v w = 1))) then 1 else 0.

// HOL Light: gdelta : ((real,N)cart->bool)->bool
Definition hl_gdelta : set -> set :=
  fun N:set => fun v_1700737 :e 2 :^: hl_ty_cart R N => hl_INTERSECTION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_open N) v_1700737.

// HOL Light: fsigma : ((real,N)cart->bool)->bool
Definition hl_fsigma : set -> set :=
  fun N:set => fun v_1700742 :e 2 :^: hl_ty_cart R N => hl_UNION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_closed N) v_1700742.

// HOL Light: borel : ((real,N)cart->bool)->bool
Definition hl_borel : set -> set :=
  fun N:set => fun a :e 2 :^: hl_ty_cart R N => if forall borel' :e 2 :^: (2 :^: hl_ty_cart R N), (forall a1 :e 2 :^: hl_ty_cart R N, hl_open N a1 = 1 \/ ((exists s :e 2 :^: hl_ty_cart R N, a1 = hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s /\ borel' s = 1) \/ (exists u :e 2 :^: (2 :^: hl_ty_cart R N), a1 = hl_UNIONS (hl_ty_cart R N) u /\ (hl_COUNTABLE (2 :^: hl_ty_cart R N) u = 1 /\ forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s u = 1 -> borel' s = 1))) -> borel' a1 = 1) -> borel' a = 1 then 1 else 0.

// HOL Light: baire : num->((real,M)cart->bool)->((real,M)cart->(real,N)cart)->bool
Definition hl_baire : set -> set -> set :=
  fun M:set => fun N:set => hl_select (2 :^: (hl_ty_cart R N :^: hl_ty_cart R M) :^: (2 :^: hl_ty_cart R M) :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (fun baire1 :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M) :^: (2 :^: hl_ty_cart R M) :^: omega :^: (omega :*: (omega :*: (omega :*: (omega :*: omega)))) => if forall v_1716995 :e omega :*: (omega :*: (omega :*: (omega :*: omega))), (forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, baire1 v_1716995 (hl_NUMERAL hl_zero) s f = 1 <-> hl_continuous_on M N f s = 1) /\ forall n :e omega, forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, baire1 v_1716995 (hl_SUC n) s f = 1 <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, (forall k :e omega, baire1 v_1716995 n s (g k) = 1) /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_tendsto omega N (fun k :e omega => g k x) (f x) hl_sequentially = 1 then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))))))).

// HOL Light: borel_measurable_on : ((real,M)cart->(real,N)cart)->((real,M)cart->bool)->bool
Definition hl_borel_measurable_on : set -> set -> set :=
  fun M:set => fun N:set => fun a0 :e hl_ty_cart R N :^: hl_ty_cart R M => fun a1 :e 2 :^: hl_ty_cart R M => if forall borel_measurable_on' :e 2 :^: (2 :^: hl_ty_cart R M) :^: (hl_ty_cart R N :^: hl_ty_cart R M), (forall a01 :e hl_ty_cart R N :^: hl_ty_cart R M, forall a11 :e 2 :^: hl_ty_cart R M, hl_continuous_on M N a01 a11 = 1 \/ (exists f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, (forall n :e omega, borel_measurable_on' (f n) a11 = 1) /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x a11 = 1 -> hl_tendsto omega N (fun n :e omega => f n x) (a01 x) hl_sequentially = 1) -> borel_measurable_on' a01 a11 = 1) -> borel_measurable_on' a0 a1 = 1 then 1 else 0.

// HOL Light: analytic : ((real,?959344)cart->bool)->bool
Definition hl_analytic : set -> set :=
  fun T959344:set => fun v_1739078 :e 2 :^: hl_ty_cart R T959344 => hl_suslin (hl_ty_cart R T959344) (hl_compact T959344) v_1739078.

// HOL Light: affine : ((real,?965405)cart->bool)->bool
Definition hl_affine : set -> set :=
  fun T965405:set => fun v_1746570 :e 2 :^: hl_ty_cart R T965405 => if forall x y :e hl_ty_cart R T965405, forall u v :e R, hl_IN (hl_ty_cart R T965405) x v_1746570 = 1 /\ (hl_IN (hl_ty_cart R T965405) y v_1746570 = 1 /\ hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_IN (hl_ty_cart R T965405) (hl_vector_add T965405 (hl_vmul T965405 u x) (hl_vmul T965405 v y)) v_1746570 = 1 then 1 else 0.

// HOL Light: convex : ((real,?971243)cart->bool)->bool
Definition hl_convex : set -> set :=
  fun T971243:set => fun v_1751085 :e 2 :^: hl_ty_cart R T971243 => if forall x y :e hl_ty_cart R T971243, forall u v :e R, hl_IN (hl_ty_cart R T971243) x v_1751085 = 1 /\ (hl_IN (hl_ty_cart R T971243) y v_1751085 = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) -> hl_IN (hl_ty_cart R T971243) (hl_vector_add T971243 (hl_vmul T971243 u x) (hl_vmul T971243 v y)) v_1751085 = 1 then 1 else 0.

// HOL Light: conic : ((real,?974235)cart->bool)->bool
Definition hl_conic : set -> set :=
  fun T974235:set => fun v_1752934 :e 2 :^: hl_ty_cart R T974235 => if forall x :e hl_ty_cart R T974235, forall c :e R, hl_IN (hl_ty_cart R T974235) x v_1752934 = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 -> hl_IN (hl_ty_cart R T974235) (hl_vmul T974235 c x) v_1752934 = 1 then 1 else 0.

// HOL Light: affine_dependent : ((real,N)cart->bool)->bool
Definition hl_affine_dependent : set -> set :=
  fun N:set => fun v_1754447 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x v_1754447 = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_DELETE (hl_ty_cart R N) v_1754447 x)) = 1 then 1 else 0.

// HOL Light: coplanar : ((real,?976949)cart->bool)->bool
Definition hl_coplanar : set -> set :=
  fun T976949:set => fun v_1755365 :e 2 :^: hl_ty_cart R T976949 => if exists u v w :e hl_ty_cart R T976949, hl_SUBSET (hl_ty_cart R T976949) v_1755365 (hl_hull (hl_ty_cart R T976949) (hl_affine T976949) (hl_INSERT (hl_ty_cart R T976949) u (hl_INSERT (hl_ty_cart R T976949) v (hl_INSERT (hl_ty_cart R T976949) w (hl_EMPTY (hl_ty_cart R T976949)))))) = 1 then 1 else 0.

// HOL Light: convex_on : ((real,?978143)cart->real)->((real,?978143)cart->bool)->bool
Definition hl_convex_on : set -> set :=
  fun T978143:set => fun v_1756607 :e R :^: hl_ty_cart R T978143 => fun v_1756608 :e 2 :^: hl_ty_cart R T978143 => if forall x y :e hl_ty_cart R T978143, forall u v :e R, hl_IN (hl_ty_cart R T978143) x v_1756608 = 1 /\ (hl_IN (hl_ty_cart R T978143) y v_1756608 = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) -> hl_real_le (v_1756607 (hl_vector_add T978143 (hl_vmul T978143 u x) (hl_vmul T978143 v y))) (hl_real_add (hl_real_mul u (v_1756607 x)) (hl_real_mul v (v_1756607 y))) = 1 then 1 else 0.

// HOL Light: aff_dim : ((real,?990983)cart->bool)->int
Definition hl_aff_dim : set -> set :=
  fun T990983:set => fun v_1767853 :e 2 :^: hl_ty_cart R T990983 => hl_select hl_ty_int (fun d :e hl_ty_int => if exists b :e 2 :^: hl_ty_cart R T990983, hl_hull (hl_ty_cart R T990983) (hl_affine T990983) b = hl_hull (hl_ty_cart R T990983) (hl_affine T990983) v_1767853 /\ (~ hl_affine_dependent T990983 b = 1 /\ hl_int_of_num (hl_CARD (hl_ty_cart R T990983) b) = hl_int_add d (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) then 1 else 0).

// HOL Light: polar_dual : ((real,N)cart->bool)->(real,N)cart->bool
Definition hl_polar_dual : set -> set :=
  fun N:set => fun v_1798043 :e 2 :^: hl_ty_cart R N => hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4880 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4880 (if forall u :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) u v_1798043 = 1 -> hl_real_ge (hl_dot N u x) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: convex_cone : ((real,?1024250)cart->bool)->bool
Definition hl_convex_cone : set -> set :=
  fun T1024250:set => fun v_1824804 :e 2 :^: hl_ty_cart R T1024250 => if ~ v_1824804 = hl_EMPTY (hl_ty_cart R T1024250) /\ (hl_convex T1024250 v_1824804 = 1 /\ hl_conic T1024250 v_1824804 = 1) then 1 else 0.

// HOL Light: epigraph : ((real,N)cart->bool)->((real,N)cart->real)->(real,(N,1)finite_sum)cart->bool
Definition hl_epigraph : set -> set :=
  fun N:set => fun v_1827953 :e 2 :^: hl_ty_cart R N => fun v_1827954 :e R :^: hl_ty_cart R N => hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) (fun GEN_PVAR_4955 :e hl_ty_cart R (hl_ty_finite_sum N 1) => if exists xy :e hl_ty_cart R (hl_ty_finite_sum N 1), hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) GEN_PVAR_4955 (if hl_IN (hl_ty_cart R N) (hl_fstcart R N 1 xy) v_1827953 = 1 /\ hl_real_le (v_1827954 (hl_fstcart R N 1 xy)) (hl_drop (hl_sndcart R N 1 xy)) = 1 then 1 else 0) xy = 1 then 1 else 0).

// HOL Light: starlike : ((real,?1029231)cart->bool)->bool
Definition hl_starlike : set -> set :=
  fun T1029231:set => fun v_1829933 :e 2 :^: hl_ty_cart R T1029231 => if exists a :e hl_ty_cart R T1029231, hl_IN (hl_ty_cart R T1029231) a v_1829933 = 1 /\ forall x :e hl_ty_cart R T1029231, hl_IN (hl_ty_cart R T1029231) x v_1829933 = 1 -> hl_SUBSET (hl_ty_cart R T1029231) (hl_closed_segment T1029231 (hl_CONS (hl_ty_cart R T1029231 :*: hl_ty_cart R T1029231) (hl_pair (hl_ty_cart R T1029231) (hl_ty_cart R T1029231) a x) (hl_NIL (hl_ty_cart R T1029231 :*: hl_ty_cart R T1029231)))) v_1829933 = 1 then 1 else 0.

// HOL Light: relative_interior : ((real,?1032880)cart->bool)->(real,?1032880)cart->bool
Definition hl_relative_interior : set -> set :=
  fun T1032880:set => fun v_1832027 :e 2 :^: hl_ty_cart R T1032880 => hl_GSPEC (hl_ty_cart R T1032880) (fun GEN_PVAR_4975 :e hl_ty_cart R T1032880 => if exists x :e hl_ty_cart R T1032880, hl_SETSPEC (hl_ty_cart R T1032880) GEN_PVAR_4975 (if exists t :e 2 :^: hl_ty_cart R T1032880, hl_open_in (hl_ty_cart R T1032880) (hl_subtopology (hl_ty_cart R T1032880) (hl_euclidean T1032880) (hl_hull (hl_ty_cart R T1032880) (hl_affine T1032880) v_1832027)) t = 1 /\ (hl_IN (hl_ty_cart R T1032880) x t = 1 /\ hl_SUBSET (hl_ty_cart R T1032880) t v_1832027 = 1) then 1 else 0) x = 1 then 1 else 0).

// HOL Light: relative_frontier : ((real,?1032900)cart->bool)->(real,?1032900)cart->bool
Definition hl_relative_frontier : set -> set :=
  fun T1032900:set => fun v_1832032 :e 2 :^: hl_ty_cart R T1032900 => hl_DIFF (hl_ty_cart R T1032900) (hl_closure T1032900 v_1832032) (hl_relative_interior T1032900 v_1832032).

// HOL Light: barycentre : ((real,?1070140)cart->bool)->(real,?1070140)cart
Definition hl_barycentre : set -> set :=
  fun T1070140:set => fun v_1869645 :e 2 :^: hl_ty_cart R T1070140 => hl_COND (hl_ty_cart R T1070140) (hl_FINITE (hl_ty_cart R T1070140) v_1869645) (hl_vsum (hl_ty_cart R T1070140) T1070140 v_1869645 (fun x :e hl_ty_cart R T1070140 => hl_vmul T1070140 (hl_real_inv (hl_real_of_num (hl_CARD (hl_ty_cart R T1070140) v_1869645))) x)) (hl_vec T1070140 (hl_NUMERAL hl_zero)).

// HOL Light: path : ((real,1)cart->(real,N)cart)->bool
Definition hl_path : set -> set :=
  fun N:set => fun v_1875053 :e hl_ty_cart R N :^: hl_ty_cart R 1 => hl_continuous_on 1 N v_1875053 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))).

// HOL Light: pathstart : ((real,1)cart->(real,N)cart)->(real,N)cart
Definition hl_pathstart : set -> set :=
  fun N:set => fun v_1875058 :e hl_ty_cart R N :^: hl_ty_cart R 1 => v_1875058 (hl_vec 1 (hl_NUMERAL hl_zero)).

// HOL Light: pathfinish : ((real,1)cart->(real,N)cart)->(real,N)cart
Definition hl_pathfinish : set -> set :=
  fun N:set => fun v_1875063 :e hl_ty_cart R N :^: hl_ty_cart R 1 => v_1875063 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))).

// HOL Light: path_image : ((real,1)cart->(real,N)cart)->(real,N)cart->bool
Definition hl_path_image : set -> set :=
  fun N:set => fun v_1875068 :e hl_ty_cart R N :^: hl_ty_cart R 1 => hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) v_1875068 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))).

// HOL Light: reversepath : ((real,1)cart->(real,N)cart)->(real,1)cart->(real,N)cart
Definition hl_reversepath : set -> set :=
  fun N:set => fun v_1875073 :e hl_ty_cart R N :^: hl_ty_cart R 1 => fun x :e hl_ty_cart R 1 => v_1875073 (hl_vector_sub 1 (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) x).

// HOL Light: ++ : ((real,1)cart->?1074593)->((real,1)cart->?1074593)->(real,1)cart->?1074593
Definition hl_poly_add : set -> set :=
  fun T1074593:set => fun v_1875078 :e T1074593 :^: hl_ty_cart R 1 => fun v_1875079 :e T1074593 :^: hl_ty_cart R 1 => fun x :e hl_ty_cart R 1 => hl_COND T1074593 (hl_real_le (hl_drop x) (hl_real_div (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (v_1875078 (hl_vmul 1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) x)) (v_1875079 (hl_vector_sub 1 (hl_vmul 1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) x) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))).

// HOL Light: simple_path : ((real,1)cart->(real,N)cart)->bool
Definition hl_simple_path : set -> set :=
  fun N:set => fun v_1875090 :e hl_ty_cart R N :^: hl_ty_cart R 1 => if hl_path N v_1875090 = 1 /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ v_1875090 x = v_1875090 y) -> x = y \/ (x = hl_vec 1 (hl_NUMERAL hl_zero) /\ y = hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)) \/ x = hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)) /\ y = hl_vec 1 (hl_NUMERAL hl_zero)) then 1 else 0.

// HOL Light: arc : ((real,1)cart->(real,N)cart)->bool
Definition hl_arc : set -> set :=
  fun N:set => fun v_1875095 :e hl_ty_cart R N :^: hl_ty_cart R 1 => if hl_path N v_1875095 = 1 /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ v_1875095 x = v_1875095 y) -> x = y then 1 else 0.

// HOL Light: shiftpath : (real,1)cart->((real,1)cart->(real,N)cart)->(real,1)cart->(real,N)cart
Definition hl_shiftpath : set -> set :=
  fun N:set => fun v_1880135 :e hl_ty_cart R 1 => fun v_1880136 :e hl_ty_cart R N :^: hl_ty_cart R 1 => fun x :e hl_ty_cart R 1 => hl_COND (hl_ty_cart R N) (hl_real_le (hl_drop (hl_vector_add 1 v_1880135 x)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (v_1880136 (hl_vector_add 1 v_1880135 x)) (v_1880136 (hl_vector_add 1 v_1880135 (hl_vector_sub 1 x (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))))).

// HOL Light: subpath : (real,1)cart->(real,1)cart->((real,1)cart->?1080743)->(real,1)cart->?1080743
Definition hl_subpath : set -> set :=
  fun T1080743:set => fun v_1880297 :e hl_ty_cart R 1 => fun v_1880298 :e hl_ty_cart R 1 => fun v_1880299 :e T1080743 :^: hl_ty_cart R 1 => fun x :e hl_ty_cart R 1 => v_1880299 (hl_vector_add 1 v_1880297 (hl_vmul 1 (hl_drop (hl_vector_sub 1 v_1880298 v_1880297)) x)).

// HOL Light: linepath : (real,?1084934)cart#(real,?1084934)cart->(real,1)cart->(real,?1084934)cart
Definition hl_linepath : set -> set :=
  fun T1084934:set => fun v_1887751 :e hl_ty_cart R T1084934 :*: hl_ty_cart R T1084934 => fun x :e hl_ty_cart R 1 => hl_vector_add T1084934 (hl_vmul T1084934 (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_drop x)) (hl_FST (hl_ty_cart R T1084934) (hl_ty_cart R T1084934) v_1887751)) (hl_vmul T1084934 (hl_drop x) (hl_SND (hl_ty_cart R T1084934) (hl_ty_cart R T1084934) v_1887751)).

// HOL Light: path_component : ((real,?1087099)cart->bool)->(real,?1087099)cart->(real,?1087099)cart->bool
Definition hl_path_component : set -> set :=
  fun T1087099:set => fun v_1895703 :e 2 :^: hl_ty_cart R T1087099 => fun v_1895704 :e hl_ty_cart R T1087099 => fun v_1895705 :e hl_ty_cart R T1087099 => if exists g :e hl_ty_cart R T1087099 :^: hl_ty_cart R 1, hl_path T1087099 g = 1 /\ (hl_SUBSET (hl_ty_cart R T1087099) (hl_path_image T1087099 g) v_1895703 = 1 /\ (hl_pathstart T1087099 g = v_1895704 /\ hl_pathfinish T1087099 g = v_1895705)) then 1 else 0.

// HOL Light: path_components : ((real,?1087141)cart->bool)->((real,?1087141)cart->bool)->bool
Definition hl_path_components : set -> set :=
  fun T1087141:set => fun v_1895724 :e 2 :^: hl_ty_cart R T1087141 => hl_GSPEC (2 :^: hl_ty_cart R T1087141) (fun GEN_PVAR_5081 :e 2 :^: hl_ty_cart R T1087141 => if exists x :e hl_ty_cart R T1087141, hl_SETSPEC (2 :^: hl_ty_cart R T1087141) GEN_PVAR_5081 (hl_IN (hl_ty_cart R T1087141) x v_1895724) (hl_path_component T1087141 v_1895724 x) = 1 then 1 else 0).

// HOL Light: path_connected : ((real,?1087639)cart->bool)->bool
Definition hl_path_connected : set -> set :=
  fun T1087639:set => fun v_1895921 :e 2 :^: hl_ty_cart R T1087639 => if forall x y :e hl_ty_cart R T1087639, hl_IN (hl_ty_cart R T1087639) x v_1895921 = 1 /\ hl_IN (hl_ty_cart R T1087639) y v_1895921 = 1 -> exists g :e hl_ty_cart R T1087639 :^: hl_ty_cart R 1, hl_path T1087639 g = 1 /\ (hl_SUBSET (hl_ty_cart R T1087639) (hl_path_image T1087639 g) v_1895921 = 1 /\ (hl_pathstart T1087639 g = x /\ hl_pathfinish T1087639 g = y)) then 1 else 0.

// HOL Light: inside : ((real,N)cart->bool)->(real,N)cart->bool
Definition hl_inside : set -> set :=
  fun N:set => fun v_2060939 :e 2 :^: hl_ty_cart R N => hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5327 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5327 (if ~ hl_IN (hl_ty_cart R N) x v_2060939 = 1 /\ hl_bounded N (hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) v_2060939) x) = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: outside : ((real,N)cart->bool)->(real,N)cart->bool
Definition hl_outside : set -> set :=
  fun N:set => fun v_2060944 :e 2 :^: hl_ty_cart R N => hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5328 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5328 (if ~ hl_IN (hl_ty_cart R N) x v_2060944 = 1 /\ ~ hl_bounded N (hl_connected_component N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) v_2060944) x) = 1 then 1 else 0) x = 1 then 1 else 0).

// HOL Light: homotopic_paths : ((real,?1160715)cart->bool)->((real,1)cart->(real,?1160715)cart)->((real,1)cart->(real,?1160715)cart)->bool
Definition hl_homotopic_paths : set -> set :=
  fun T1160715:set => fun v_2066983 :e 2 :^: hl_ty_cart R T1160715 => fun v_2066984 :e hl_ty_cart R T1160715 :^: hl_ty_cart R 1 => fun v_2066985 :e hl_ty_cart R T1160715 :^: hl_ty_cart R 1 => hl_homotopic_with (hl_ty_cart R 1) (hl_ty_cart R T1160715) (fun r :e hl_ty_cart R T1160715 :^: hl_ty_cart R 1 => if hl_pathstart T1160715 r = hl_pathstart T1160715 v_2066984 /\ hl_pathfinish T1160715 r = hl_pathfinish T1160715 v_2066984 then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R 1)) (hl_ty_topology (hl_ty_cart R T1160715)) (hl_subtopology (hl_ty_cart R 1) (hl_euclidean 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_subtopology (hl_ty_cart R T1160715) (hl_euclidean T1160715) v_2066983)) v_2066984 v_2066985.

// HOL Light: homotopic_loops : ((real,?1163318)cart->bool)->((real,1)cart->(real,?1163318)cart)->((real,1)cart->(real,?1163318)cart)->bool
Definition hl_homotopic_loops : set -> set :=
  fun T1163318:set => fun v_2070775 :e 2 :^: hl_ty_cart R T1163318 => fun v_2070776 :e hl_ty_cart R T1163318 :^: hl_ty_cart R 1 => fun v_2070777 :e hl_ty_cart R T1163318 :^: hl_ty_cart R 1 => hl_homotopic_with (hl_ty_cart R 1) (hl_ty_cart R T1163318) (fun r :e hl_ty_cart R T1163318 :^: hl_ty_cart R 1 => if hl_pathfinish T1163318 r = hl_pathstart T1163318 r then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R 1)) (hl_ty_topology (hl_ty_cart R T1163318)) (hl_subtopology (hl_ty_cart R 1) (hl_euclidean 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_subtopology (hl_ty_cart R T1163318) (hl_euclidean T1163318) v_2070775)) v_2070776 v_2070777.

// HOL Light: simply_connected : ((real,N)cart->bool)->bool
Definition hl_simply_connected : set -> set :=
  fun N:set => fun v_2078503 :e 2 :^: hl_ty_cart R N => if forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N p = 1 /\ (hl_pathfinish N p = hl_pathstart N p /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) v_2078503 = 1 /\ (hl_path N q = 1 /\ (hl_pathfinish N q = hl_pathstart N q /\ hl_SUBSET (hl_ty_cart R N) (hl_path_image N q) v_2078503 = 1)))) -> hl_homotopic_loops N v_2078503 p q = 1 then 1 else 0.

// HOL Light: fundamental_group : ((real,N)cart->bool)#(real,N)cart->(((real,1)cart->(real,N)cart)->bool)->bool
Definition hl_fundamental_group : set -> set :=
  fun N:set => fun v_2080246 :e 2 :^: hl_ty_cart R N :*: hl_ty_cart R N => hl_GSPEC (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) (fun GEN_PVAR_5354 :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1) => if exists p :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_SETSPEC (2 :^: (hl_ty_cart R N :^: hl_ty_cart R 1)) GEN_PVAR_5354 (if hl_path N p = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N p) (hl_FST (2 :^: hl_ty_cart R N) (hl_ty_cart R N) v_2080246) = 1 /\ (hl_pathstart N p = hl_SND (2 :^: hl_ty_cart R N) (hl_ty_cart R N) v_2080246 /\ hl_pathfinish N p = hl_SND (2 :^: hl_ty_cart R N) (hl_ty_cart R N) v_2080246)) then 1 else 0) (hl_homotopic_paths N (hl_FST (2 :^: hl_ty_cart R N) (hl_ty_cart R N) v_2080246) p) = 1 then 1 else 0).

// HOL Light: homotopy_equivalent : ((real,M)cart->bool)->((real,N)cart->bool)->bool
Definition hl_homotopy_equivalent : set -> set -> set :=
  fun M:set => fun N:set => fun v_2081931 :e 2 :^: hl_ty_cart R M => fun v_2081932 :e 2 :^: hl_ty_cart R N => if exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_continuous_on M N f v_2081931 = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f v_2081931) v_2081932 = 1 /\ (hl_continuous_on N M g v_2081932 = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) g v_2081932) v_2081931 = 1 /\ (hl_homotopic_with (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M :^: hl_ty_cart R M => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R M)) (hl_ty_topology (hl_ty_cart R M)) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) v_2081931) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) v_2081931)) (hl_o (hl_ty_cart R N) (hl_ty_cart R M) (hl_ty_cart R M) g f) (hl_I (hl_ty_cart R M)) = 1 /\ hl_homotopic_with (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N :^: hl_ty_cart R N => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R N)) (hl_ty_topology (hl_ty_cart R N)) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v_2081932) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v_2081932)) (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R N) f g) (hl_I (hl_ty_cart R N)) = 1)))) then 1 else 0.

// HOL Light: contractible : ((real,?1175435)cart->bool)->bool
Definition hl_contractible : set -> set :=
  fun T1175435:set => fun v_2088285 :e 2 :^: hl_ty_cart R T1175435 => if exists a :e hl_ty_cart R T1175435, hl_homotopic_with (hl_ty_cart R T1175435) (hl_ty_cart R T1175435) (fun x :e hl_ty_cart R T1175435 :^: hl_ty_cart R T1175435 => if True then 1 else 0) (hl_pair (hl_ty_topology (hl_ty_cart R T1175435)) (hl_ty_topology (hl_ty_cart R T1175435)) (hl_subtopology (hl_ty_cart R T1175435) (hl_euclidean T1175435) v_2088285) (hl_subtopology (hl_ty_cart R T1175435) (hl_euclidean T1175435) v_2088285)) (fun x :e hl_ty_cart R T1175435 => x) (fun x :e hl_ty_cart R T1175435 => a) = 1 then 1 else 0.

// HOL Light: dimension : ((real,N)cart->bool)->int
Definition hl_dimension : set -> set :=
  fun N:set => fun v_2110147 :e 2 :^: hl_ty_cart R N => hl_COND hl_ty_int (if v_2110147 = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_minimal (fun n :e omega => hl_dimension_le (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v_2110147) (hl_int_of_num n)))).

// HOL Light: covering_space : ((real,M)cart->bool)#((real,M)cart->(real,N)cart)->((real,N)cart->bool)->bool
Definition hl_covering_space : set -> set -> set :=
  fun M:set => fun N:set => fun v_2122972 :e 2 :^: hl_ty_cart R M :*: hl_ty_cart R N :^: hl_ty_cart R M => fun v_2122973 :e 2 :^: hl_ty_cart R N => if hl_continuous_on M N (hl_SND (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) v_2122972) (hl_FST (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) v_2122972) = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (hl_SND (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) v_2122972) (hl_FST (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) v_2122972) = v_2122973 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x v_2122973 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) v_2122973) t = 1 /\ exists v :e 2 :^: (2 :^: hl_ty_cart R M), hl_UNIONS (hl_ty_cart R M) v = hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5416 :e hl_ty_cart R M => if exists x1 :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5416 (if hl_IN (hl_ty_cart R M) x1 (hl_FST (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) v_2122972) = 1 /\ hl_IN (hl_ty_cart R N) (hl_SND (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) v_2122972 x1) t = 1 then 1 else 0) x1 = 1 then 1 else 0) /\ ((forall u :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) u v = 1 -> hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_FST (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) v_2122972)) u = 1) /\ (hl_pairwise (2 :^: hl_ty_cart R M) (hl_DISJOINT (hl_ty_cart R M)) v = 1 /\ forall u :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) u v = 1 -> exists q :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) u t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) (hl_SND (2 :^: hl_ty_cart R M) (hl_ty_cart R N :^: hl_ty_cart R M) v_2122972) q) = 1)))) then 1 else 0.

// HOL Light: face_of : ((real,?1212817)cart->bool)->((real,?1212817)cart->bool)->bool
Definition hl_face_of : set -> set :=
  fun T1212817:set => fun v_2279403 :e 2 :^: hl_ty_cart R T1212817 => fun v_2279404 :e 2 :^: hl_ty_cart R T1212817 => if hl_SUBSET (hl_ty_cart R T1212817) v_2279403 v_2279404 = 1 /\ (hl_convex T1212817 v_2279403 = 1 /\ forall a b x :e hl_ty_cart R T1212817, hl_IN (hl_ty_cart R T1212817) a v_2279404 = 1 /\ (hl_IN (hl_ty_cart R T1212817) b v_2279404 = 1 /\ (hl_IN (hl_ty_cart R T1212817) x v_2279403 = 1 /\ hl_IN (hl_ty_cart R T1212817) x (hl_open_segment T1212817 (hl_pair (hl_ty_cart R T1212817) (hl_ty_cart R T1212817) a b)) = 1)) -> hl_IN (hl_ty_cart R T1212817) a v_2279403 = 1 /\ hl_IN (hl_ty_cart R T1212817) b v_2279403 = 1) then 1 else 0.

// HOL Light: exposed_face_of : ((real,?1219232)cart->bool)->((real,?1219232)cart->bool)->bool
Definition hl_exposed_face_of : set -> set :=
  fun T1219232:set => fun v_2289923 :e 2 :^: hl_ty_cart R T1219232 => fun v_2289924 :e 2 :^: hl_ty_cart R T1219232 => if hl_face_of T1219232 v_2289923 v_2289924 = 1 /\ exists a :e hl_ty_cart R T1219232, exists b :e R, hl_SUBSET (hl_ty_cart R T1219232) v_2289924 (hl_GSPEC (hl_ty_cart R T1219232) (fun GEN_PVAR_5562 :e hl_ty_cart R T1219232 => if exists x :e hl_ty_cart R T1219232, hl_SETSPEC (hl_ty_cart R T1219232) GEN_PVAR_5562 (hl_real_le (hl_dot T1219232 a x) b) x = 1 then 1 else 0)) = 1 /\ v_2289923 = hl_INTER (hl_ty_cart R T1219232) v_2289924 (hl_GSPEC (hl_ty_cart R T1219232) (fun GEN_PVAR_5563 :e hl_ty_cart R T1219232 => if exists x :e hl_ty_cart R T1219232, hl_SETSPEC (hl_ty_cart R T1219232) GEN_PVAR_5563 (if hl_dot T1219232 a x = b then 1 else 0) x = 1 then 1 else 0)) then 1 else 0.

// HOL Light: extreme_point_of : (real,?1220830)cart->((real,?1220830)cart->bool)->bool
Definition hl_extreme_point_of : set -> set :=
  fun T1220830:set => fun v_2290668 :e hl_ty_cart R T1220830 => fun v_2290669 :e 2 :^: hl_ty_cart R T1220830 => if hl_IN (hl_ty_cart R T1220830) v_2290668 v_2290669 = 1 /\ forall a b :e hl_ty_cart R T1220830, hl_IN (hl_ty_cart R T1220830) a v_2290669 = 1 /\ hl_IN (hl_ty_cart R T1220830) b v_2290669 = 1 -> ~ hl_IN (hl_ty_cart R T1220830) v_2290668 (hl_open_segment T1220830 (hl_pair (hl_ty_cart R T1220830) (hl_ty_cart R T1220830) a b)) = 1 then 1 else 0.

// HOL Light: facet_of : ((real,?1225784)cart->bool)->((real,?1225784)cart->bool)->bool
Definition hl_facet_of : set -> set :=
  fun T1225784:set => fun v_2300878 :e 2 :^: hl_ty_cart R T1225784 => fun v_2300879 :e 2 :^: hl_ty_cart R T1225784 => if hl_face_of T1225784 v_2300878 v_2300879 = 1 /\ (~ v_2300878 = hl_EMPTY (hl_ty_cart R T1225784) /\ hl_aff_dim T1225784 v_2300878 = hl_int_sub (hl_aff_dim T1225784 v_2300879) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) then 1 else 0.

// HOL Light: edge_of : ((real,?1227028)cart->bool)->((real,?1227028)cart->bool)->bool
Definition hl_edge_of : set -> set :=
  fun T1227028:set => fun v_2303128 :e 2 :^: hl_ty_cart R T1227028 => fun v_2303129 :e 2 :^: hl_ty_cart R T1227028 => if hl_face_of T1227028 v_2303128 v_2303129 = 1 /\ hl_aff_dim T1227028 v_2303128 = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0.

// HOL Light: polytope : ((real,?1233346)cart->bool)->bool
Definition hl_polytope : set -> set :=
  fun T1233346:set => fun v_2308714 :e 2 :^: hl_ty_cart R T1233346 => if exists v :e 2 :^: hl_ty_cart R T1233346, hl_FINITE (hl_ty_cart R T1233346) v = 1 /\ v_2308714 = hl_hull (hl_ty_cart R T1233346) (hl_convex T1233346) v then 1 else 0.

// HOL Light: polyhedron : ((real,?1235070)cart->bool)->bool
Definition hl_polyhedron : set -> set :=
  fun T1235070:set => fun v_2309306 :e 2 :^: hl_ty_cart R T1235070 => if exists f :e 2 :^: (2 :^: hl_ty_cart R T1235070), hl_FINITE (2 :^: hl_ty_cart R T1235070) f = 1 /\ (v_2309306 = hl_INTERS (hl_ty_cart R T1235070) f /\ forall h :e 2 :^: hl_ty_cart R T1235070, hl_IN (2 :^: hl_ty_cart R T1235070) h f = 1 -> exists a :e hl_ty_cart R T1235070, exists b :e R, ~ a = hl_vec T1235070 (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R T1235070) (fun GEN_PVAR_5663 :e hl_ty_cart R T1235070 => if exists x :e hl_ty_cart R T1235070, hl_SETSPEC (hl_ty_cart R T1235070) GEN_PVAR_5663 (hl_real_le (hl_dot T1235070 a x) b) x = 1 then 1 else 0)) then 1 else 0.

// HOL Light: simplex : int->((real,?1249511)cart->bool)->bool
Definition hl_simplex : set -> set :=
  fun T1249511:set => fun v_2564595 :e hl_ty_int => fun v_2564596 :e 2 :^: hl_ty_cart R T1249511 => if exists c :e 2 :^: hl_ty_cart R T1249511, ~ hl_affine_dependent T1249511 c = 1 /\ (hl_int_of_num (hl_CARD (hl_ty_cart R T1249511) c) = hl_int_add v_2564595 (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ v_2564596 = hl_hull (hl_ty_cart R T1249511) (hl_convex T1249511) c) then 1 else 0.

// HOL Light: simplicial_complex : (((real,?1251739)cart->bool)->bool)->bool
Definition hl_simplicial_complex : set -> set :=
  fun T1251739:set => fun v_2568395 :e 2 :^: (2 :^: hl_ty_cart R T1251739) => if hl_FINITE (2 :^: hl_ty_cart R T1251739) v_2568395 = 1 /\ ((forall s :e 2 :^: hl_ty_cart R T1251739, hl_IN (2 :^: hl_ty_cart R T1251739) s v_2568395 = 1 -> exists n :e hl_ty_int, hl_simplex T1251739 n s = 1) /\ ((forall f s :e 2 :^: hl_ty_cart R T1251739, hl_IN (2 :^: hl_ty_cart R T1251739) s v_2568395 = 1 /\ hl_face_of T1251739 f s = 1 -> hl_IN (2 :^: hl_ty_cart R T1251739) f v_2568395 = 1) /\ forall s s' :e 2 :^: hl_ty_cart R T1251739, hl_IN (2 :^: hl_ty_cart R T1251739) s v_2568395 = 1 /\ hl_IN (2 :^: hl_ty_cart R T1251739) s' v_2568395 = 1 -> hl_face_of T1251739 (hl_INTER (hl_ty_cart R T1251739) s s') s = 1 /\ hl_face_of T1251739 (hl_INTER (hl_ty_cart R T1251739) s s') s' = 1)) then 1 else 0.

// HOL Light: triangulation : (((real,N)cart->bool)->bool)->bool
Definition hl_triangulation : set -> set :=
  fun N:set => fun v_2568400 :e 2 :^: (2 :^: hl_ty_cart R N) => if hl_FINITE (2 :^: hl_ty_cart R N) v_2568400 = 1 /\ ((forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t v_2568400 = 1 -> exists n :e hl_ty_int, hl_simplex N n t = 1) /\ forall t t' :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t v_2568400 = 1 /\ hl_IN (2 :^: hl_ty_cart R N) t' v_2568400 = 1 -> hl_face_of N (hl_INTER (hl_ty_cart R N) t t') t = 1 /\ hl_face_of N (hl_INTER (hl_ty_cart R N) t t') t' = 1) then 1 else 0.

// HOL Light: brouwer_degree1 : num->((real,N)cart->(real,N)cart)->int
Definition hl_brouwer_degree1 : set -> set :=
  fun N:set => fun v_2610899 :e omega => fun v_2610900 :e hl_ty_cart R N :^: hl_ty_cart R N => hl_COND hl_ty_int (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) v_2610899 = 1 /\ hl_le v_2610899 (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_brouwer_degree2 (hl_sub v_2610899 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_o (hl_ty_cart R N) (R :^: omega) (R :^: omega) (fun x :e hl_ty_cart R N => fun i :e omega => hl_COND R (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i v_2610899 = 1 then 1 else 0) (hl_vindex R N x i) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (R :^: omega) v_2610900 (fun x :e R :^: omega => hl_lambda R N (fun i :e omega => hl_COND R (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i v_2610899 = 1 then 1 else 0) (x i) (hl_real_of_num (hl_NUMERAL hl_zero))))))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).

// HOL Light: brouwer_degree : ((real,N)cart->(real,N)cart)->int
Definition hl_brouwer_degree : set -> set :=
  fun N:set => fun v_2610911 :e hl_ty_cart R N :^: hl_ty_cart R N => hl_brouwer_degree1 N (hl_dimindex N (hl_UNIV N)) v_2610911.

// HOL Light: retraction : ((real,N)cart->bool)#((real,N)cart->bool)->((real,N)cart->(real,N)cart)->bool
Definition hl_retraction : set -> set :=
  fun N:set => fun v_2617301 :e 2 :^: hl_ty_cart R N :*: 2 :^: hl_ty_cart R N => fun v_2617302 :e hl_ty_cart R N :^: hl_ty_cart R N => if hl_SUBSET (hl_ty_cart R N) (hl_SND (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_2617301) (hl_FST (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_2617301) = 1 /\ (hl_continuous_on N N v_2617302 (hl_FST (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_2617301) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) v_2617302 (hl_FST (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_2617301)) (hl_SND (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_2617301) = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_SND (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) v_2617301) = 1 -> v_2617302 x = x)) then 1 else 0.

// HOL Light: retract_of : ((real,?1260224)cart->bool)->((real,?1260224)cart->bool)->bool
Definition hl_retract_of : set -> set :=
  fun T1260224:set => fun v_2617318 :e 2 :^: hl_ty_cart R T1260224 => fun v_2617319 :e 2 :^: hl_ty_cart R T1260224 => if exists r :e hl_ty_cart R T1260224 :^: hl_ty_cart R T1260224, hl_retraction T1260224 (hl_pair (2 :^: hl_ty_cart R T1260224) (2 :^: hl_ty_cart R T1260224) v_2617319 v_2617318) r = 1 then 1 else 0.

// HOL Light: AR : ((real,N)cart->bool)->bool
Definition hl_AR : set -> set :=
  fun N:set => fun v_2663017 :e 2 :^: hl_ty_cart R N => if forall u s' :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_homeomorphic N (hl_ty_finite_sum N 1) v_2663017 s' = 1 /\ hl_closed_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) s' = 1 -> hl_retract_of (hl_ty_finite_sum N 1) s' u = 1 then 1 else 0.

// HOL Light: ANR : ((real,N)cart->bool)->bool
Definition hl_ANR : set -> set :=
  fun N:set => fun v_2663022 :e 2 :^: hl_ty_cart R N => if forall u s' :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_homeomorphic N (hl_ty_finite_sum N 1) v_2663022 s' = 1 /\ hl_closed_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) s' = 1 -> exists t :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N 1), hl_open_in (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_subtopology (hl_ty_cart R (hl_ty_finite_sum N 1)) (hl_euclidean (hl_ty_finite_sum N 1)) u) t = 1 /\ hl_retract_of (hl_ty_finite_sum N 1) s' t = 1 then 1 else 0.

// HOL Light: ENR : ((real,?1269272)cart->bool)->bool
Definition hl_ENR : set -> set :=
  fun T1269272:set => fun v_2663027 :e 2 :^: hl_ty_cart R T1269272 => if exists u :e 2 :^: hl_ty_cart R T1269272, hl_open T1269272 u = 1 /\ hl_retract_of T1269272 v_2663027 u = 1 then 1 else 0.

// HOL Light: interval_bij : (real,N)cart#(real,N)cart->(real,N)cart#(real,N)cart->(real,N)cart->(real,N)cart
Definition hl_interval_bij : set -> set :=
  fun N:set => fun v_2760927 :e hl_ty_cart R N :*: hl_ty_cart R N => fun v_2760928 :e hl_ty_cart R N :*: hl_ty_cart R N => fun v_2760929 :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_real_add (hl_vindex R N (hl_FST (hl_ty_cart R N) (hl_ty_cart R N) v_2760928) i) (hl_real_mul (hl_real_div (hl_real_sub (hl_vindex R N v_2760929 i) (hl_vindex R N (hl_FST (hl_ty_cart R N) (hl_ty_cart R N) v_2760927) i)) (hl_real_sub (hl_vindex R N (hl_SND (hl_ty_cart R N) (hl_ty_cart R N) v_2760927) i) (hl_vindex R N (hl_FST (hl_ty_cart R N) (hl_ty_cart R N) v_2760927) i))) (hl_real_sub (hl_vindex R N (hl_SND (hl_ty_cart R N) (hl_ty_cart R N) v_2760928) i) (hl_vindex R N (hl_FST (hl_ty_cart R N) (hl_ty_cart R N) v_2760928) i)))).

// HOL Light: has_derivative : ((real,?1299934)cart->(real,?1299931)cart)->((real,?1299934)cart->(real,?1299931)cart)->(real,?1299934)cart net->bool
Definition hl_has_derivative : set -> set -> set :=
  fun T1299934:set => fun T1299931:set => fun v_2796617 :e hl_ty_cart R T1299931 :^: hl_ty_cart R T1299934 => fun v_2796618 :e hl_ty_cart R T1299931 :^: hl_ty_cart R T1299934 => fun v_2796619 :e hl_ty_net (hl_ty_cart R T1299934) => if hl_linear T1299934 T1299931 v_2796618 = 1 /\ hl_tendsto (hl_ty_cart R T1299934) T1299931 (fun y :e hl_ty_cart R T1299934 => hl_vmul T1299931 (hl_real_inv (hl_vector_norm T1299934 (hl_vector_sub T1299934 y (hl_netlimit (hl_ty_cart R T1299934) v_2796619)))) (hl_vector_sub T1299931 (v_2796617 y) (hl_vector_add T1299931 (v_2796617 (hl_netlimit (hl_ty_cart R T1299934) v_2796619)) (v_2796618 (hl_vector_sub T1299934 y (hl_netlimit (hl_ty_cart R T1299934) v_2796619)))))) (hl_vec T1299931 (hl_NUMERAL hl_zero)) v_2796619 = 1 then 1 else 0.

// HOL Light: differentiable : ((real,?1301888)cart->(real,?1301887)cart)->(real,?1301888)cart net->bool
Definition hl_differentiable : set -> set -> set :=
  fun T1301888:set => fun T1301887:set => fun v_2796935 :e hl_ty_cart R T1301887 :^: hl_ty_cart R T1301888 => fun v_2796936 :e hl_ty_net (hl_ty_cart R T1301888) => if exists f' :e hl_ty_cart R T1301887 :^: hl_ty_cart R T1301888, hl_has_derivative T1301888 T1301887 v_2796935 f' v_2796936 = 1 then 1 else 0.

// HOL Light: differentiable_on : ((real,?1301911)cart->(real,?1301905)cart)->((real,?1301911)cart->bool)->bool
Definition hl_differentiable_on : set -> set -> set :=
  fun T1301911:set => fun T1301905:set => fun v_2796947 :e hl_ty_cart R T1301905 :^: hl_ty_cart R T1301911 => fun v_2796948 :e 2 :^: hl_ty_cart R T1301911 => if forall x :e hl_ty_cart R T1301911, hl_IN (hl_ty_cart R T1301911) x v_2796948 = 1 -> hl_differentiable T1301911 T1301905 v_2796947 (hl_within (hl_ty_cart R T1301911) (hl_at T1301911 x) v_2796948) = 1 then 1 else 0.

// HOL Light: frechet_derivative : ((real,?1302266)cart->(real,?1302265)cart)->(real,?1302266)cart net->(real,?1302266)cart->(real,?1302265)cart
Definition hl_frechet_derivative : set -> set -> set :=
  fun T1302266:set => fun T1302265:set => fun v_2797577 :e hl_ty_cart R T1302265 :^: hl_ty_cart R T1302266 => fun v_2797578 :e hl_ty_net (hl_ty_cart R T1302266) => hl_select (hl_ty_cart R T1302265 :^: hl_ty_cart R T1302266) (fun f' :e hl_ty_cart R T1302265 :^: hl_ty_cart R T1302266 => hl_has_derivative T1302266 T1302265 v_2797577 f' v_2797578).

// HOL Light: jacobian : ((real,?1302324)cart->(real,?1302325)cart)->(real,?1302324)cart net->((real,?1302324)cart,?1302325)cart
Definition hl_jacobian : set -> set -> set :=
  fun T1302324:set => fun T1302325:set => fun v_2797589 :e hl_ty_cart R T1302325 :^: hl_ty_cart R T1302324 => fun v_2797590 :e hl_ty_net (hl_ty_cart R T1302324) => hl_matrix T1302324 T1302325 (hl_frechet_derivative T1302324 T1302325 v_2797589 v_2797590).

// HOL Light: has_vector_derivative : ((real,1)cart->(real,?1331411)cart)->(real,?1331411)cart->(real,1)cart net->bool
Definition hl_has_vector_derivative : set -> set :=
  fun T1331411:set => fun v_2962239 :e hl_ty_cart R T1331411 :^: hl_ty_cart R 1 => fun v_2962240 :e hl_ty_cart R T1331411 => fun v_2962241 :e hl_ty_net (hl_ty_cart R 1) => hl_has_derivative 1 T1331411 v_2962239 (fun x :e hl_ty_cart R 1 => hl_vmul T1331411 (hl_drop x) v_2962240) v_2962241.

// HOL Light: vector_derivative : ((real,1)cart->(real,N)cart)->(real,1)cart net->(real,N)cart
Definition hl_vector_derivative : set -> set :=
  fun N:set => fun v_2962260 :e hl_ty_cart R N :^: hl_ty_cart R 1 => fun v_2962261 :e hl_ty_net (hl_ty_cart R 1) => hl_select (hl_ty_cart R N) (fun f' :e hl_ty_cart R N => hl_has_vector_derivative N v_2962260 f' v_2962261).

// HOL Light: bitset : num->num->bool
Definition hl_bitset : set :=
  fun v_2964505 :e omega => hl_GSPEC omega (fun GEN_PVAR_6095 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_6095 (hl_ODD (hl_DIV v_2964505 (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i))) i = 1 then 1 else 0).

// HOL Light: binarysum : (num->bool)->num
Definition hl_binarysum : set :=
  fun v_2964510 :e 2 :^: omega => hl_nsum omega v_2964510 (fun i :e omega => hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i).

// HOL Light: setcode : (num->bool)->num
Definition hl_setcode : set :=
  fun v_2965376 :e 2 :^: omega => hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_binarysum (hl_IMAGE omega omega hl_PRE v_2965376)).

// HOL Light: codeset : num->num->bool
Definition hl_codeset : set :=
  fun v_2965381 :e omega => hl_IMAGE omega omega hl_SUC (hl_bitset (hl_sub v_2965381 (hl_NUMERAL (hl_BIT1 hl_zero)))).

// HOL Light: $$ : (real,N multivector)cart->(num->bool)->real
Definition hl_sym_2424 : set -> set :=
  fun N:set => fun v_2965707 :e hl_ty_cart R (hl_ty_multivector N) => fun v_2965708 :e 2 :^: omega => hl_vindex R (hl_ty_multivector N) v_2965707 (hl_setcode v_2965708).

// HOL Light: lambdas : ((num->bool)->real)->(real,N multivector)cart
Definition hl_lambdas : set -> set :=
  fun N:set => fun v_2965719 :e R :^: (2 :^: omega) => hl_lambda R (hl_ty_multivector N) (fun i :e omega => v_2965719 (hl_codeset i)).

// HOL Light: mbasis : (num->bool)->(real,?1337517 multivector)cart
Definition hl_mbasis : set -> set :=
  fun T1337517:set => fun v_2965762 :e 2 :^: omega => hl_lambdas T1337517 (fun s :e 2 :^: omega => hl_COND R (if v_2965762 = s then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))).

// HOL Light: multivec : (real,N)cart->(real,N multivector)cart
Definition hl_multivec : set -> set :=
  fun N:set => fun v_2966038 :e hl_ty_cart R N => hl_vsum omega (hl_ty_multivector N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vmul (hl_ty_multivector N) (hl_vindex R N v_2966038 i) (hl_mbasis N (hl_INSERT omega i (hl_EMPTY omega)))).

// HOL Light: multivector : num->(real,N multivector)cart->bool
Definition hl_multivector : set -> set :=
  fun N:set => fun v_2966043 :e omega => fun v_2966044 :e hl_ty_cart R (hl_ty_multivector N) => if forall s :e 2 :^: omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ ~ hl_sym_2424 N v_2966044 s = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_HAS_SIZE omega s v_2966043 = 1 then 1 else 0.

// HOL Light: grade : num->(real,N multivector)cart->(real,N multivector)cart
Definition hl_grade : set -> set :=
  fun N:set => fun v_2966055 :e omega => fun v_2966056 :e hl_ty_cart R (hl_ty_multivector N) => hl_lambdas N (fun s :e 2 :^: omega => hl_COND R (hl_HAS_SIZE omega s v_2966055) (hl_sym_2424 N v_2966056 s) (hl_real_of_num (hl_NUMERAL hl_zero))).

// HOL Light: Product : ((num->bool)->(num->bool)->real)->((num->bool)->(num->bool)->num->bool)->(real,N multivector)cart->(real,N multivector)cart->(real,N multivector)cart
Definition hl_Product : set -> set :=
  fun N:set => fun v_2966071 :e R :^: (2 :^: omega) :^: (2 :^: omega) => fun v_2966072 :e 2 :^: omega :^: (2 :^: omega) :^: (2 :^: omega) => fun v_2966073 :e hl_ty_cart R (hl_ty_multivector N) => fun v_2966074 :e hl_ty_cart R (hl_ty_multivector N) => hl_vsum (2 :^: omega) (hl_ty_multivector N) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6108 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6108 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vsum (2 :^: omega) (hl_ty_multivector N) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6109 :e 2 :^: omega => if exists s1 :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6109 (hl_SUBSET omega s1 (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s1 = 1 then 1 else 0)) (fun t :e 2 :^: omega => hl_vmul (hl_ty_multivector N) (hl_real_mul (hl_sym_2424 N v_2966073 s) (hl_real_mul (hl_sym_2424 N v_2966074 t) (v_2966071 s t))) (hl_mbasis N (v_2966072 s t)))).

// HOL Light: geom_mul : (real,N multivector)cart->(real,N multivector)cart->(real,N multivector)cart
Definition hl_geom_mul : set -> set :=
  fun N:set => fun v_2967250 :e hl_ty_cart R (hl_ty_multivector N) => fun v_2967251 :e hl_ty_cart R (hl_ty_multivector N) => hl_Product N (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6111 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6111 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1))) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0)))) (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_UNION omega (hl_DIFF omega s t) (hl_DIFF omega t s)) v_2967250 v_2967251.

// HOL Light: outer : (real,N multivector)cart->(real,N multivector)cart->(real,N multivector)cart
Definition hl_outer : set -> set :=
  fun N:set => fun v_2967334 :e hl_ty_cart R (hl_ty_multivector N) => fun v_2967335 :e hl_ty_cart R (hl_ty_multivector N) => hl_Product N (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_COND R (if ~ hl_INTER omega s t = hl_EMPTY omega then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6112 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6112 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1))) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0))))) (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_UNION omega (hl_DIFF omega s t) (hl_DIFF omega t s)) v_2967334 v_2967335.

// HOL Light: inner : (real,N multivector)cart->(real,N multivector)cart->(real,N multivector)cart
Definition hl_inner : set -> set :=
  fun N:set => fun v_2967520 :e hl_ty_cart R (hl_ty_multivector N) => fun v_2967521 :e hl_ty_cart R (hl_ty_multivector N) => hl_Product N (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_COND R (if s = hl_EMPTY omega \/ (t = hl_EMPTY omega \/ ~ (hl_DIFF omega s t = hl_EMPTY omega /\ ~ hl_DIFF omega t s = hl_EMPTY omega)) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD (omega :*: omega) (hl_GSPEC (omega :*: omega) (fun GEN_PVAR_6114 :e omega :*: omega => if exists i j :e omega, hl_SETSPEC (omega :*: omega) GEN_PVAR_6114 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ (hl_IN omega i s = 1 /\ (hl_IN omega j t = 1 /\ hl_gt i j = 1))) then 1 else 0) (hl_pair omega omega i j) = 1 then 1 else 0))))) (fun s :e 2 :^: omega => fun t :e 2 :^: omega => hl_UNION omega (hl_DIFF omega s t) (hl_DIFF omega t s)) v_2967520 v_2967521.

// HOL Light: seqiterate : (?1340862->?1340862->?1340862)->(num->bool)->(num->?1340862)->?1340862
Definition hl_seqiterate : set -> set :=
  fun T1340862:set => hl_select (T1340862 :^: (T1340862 :^: omega) :^: (2 :^: omega) :^: (T1340862 :^: T1340862 :^: T1340862) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))))) (fun h :e T1340862 :^: (T1340862 :^: omega) :^: (2 :^: omega) :^: (T1340862 :^: T1340862 :^: T1340862) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))))) => if forall v_2969161 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))), forall op :e T1340862 :^: T1340862 :^: T1340862, forall f :e T1340862 :^: omega, forall s :e 2 :^: omega, h v_2969161 op s f = hl_COND T1340862 (if hl_INFINITE omega s = 1 \/ s = hl_EMPTY omega then 1 else 0) (hl_neutral T1340862 op) (hl_LET omega T1340862 (fun i :e omega => hl_LET_END T1340862 (hl_COND T1340862 (if s = hl_INSERT omega i (hl_EMPTY omega) then 1 else 0) (f i) (op (f i) (h v_2969161 op (hl_DELETE omega s i) f)))) (hl_minimal (fun x :e omega => hl_IN omega x s))) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))))))).

// HOL Light: outermorphism : ((real,N)cart->(real,P)cart)->(real,N multivector)cart->(real,P multivector)cart
Definition hl_outermorphism : set -> set -> set :=
  fun N:set => fun P:set => fun v_2969431 :e hl_ty_cart R P :^: hl_ty_cart R N => fun v_2969432 :e hl_ty_cart R (hl_ty_multivector N) => hl_vsum (2 :^: omega) (hl_ty_multivector P) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6122 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6122 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vmul (hl_ty_multivector P) (hl_sym_2424 N v_2969432 s) (hl_seqiterate (hl_ty_cart R (hl_ty_multivector P)) (hl_outer P) s (hl_o (hl_ty_cart R P) (hl_ty_cart R (hl_ty_multivector P)) omega (hl_multivec P) (hl_o (hl_ty_cart R N) (hl_ty_cart R P) omega v_2969431 (hl_basis N))))).

// HOL Light: reversion : (real,N multivector)cart->(real,N multivector)cart
Definition hl_reversion : set -> set :=
  fun N:set => fun v_2969550 :e hl_ty_cart R (hl_ty_multivector N) => hl_lambdas N (fun s :e 2 :^: omega => hl_real_mul (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_DIV (hl_mul (hl_CARD omega s) (hl_sub (hl_CARD omega s) (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_sym_2424 N v_2969550 s)).

// HOL Light: interval_upperbound : ((real,M)cart->bool)->(real,M)cart
Definition hl_interval_upperbound : set -> set :=
  fun M:set => fun v_2969865 :e 2 :^: hl_ty_cart R M => hl_lambda R M (fun i :e omega => hl_sup (hl_GSPEC R (fun GEN_PVAR_6126 :e R => if exists a :e R, hl_SETSPEC R GEN_PVAR_6126 (if exists x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x v_2969865 = 1 /\ hl_vindex R M x i = a then 1 else 0) a = 1 then 1 else 0))).

// HOL Light: interval_lowerbound : ((real,M)cart->bool)->(real,M)cart
Definition hl_interval_lowerbound : set -> set :=
  fun M:set => fun v_2969870 :e 2 :^: hl_ty_cart R M => hl_lambda R M (fun i :e omega => hl_inf (hl_GSPEC R (fun GEN_PVAR_6127 :e R => if exists a :e R, hl_SETSPEC R GEN_PVAR_6127 (if exists x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x v_2969870 = 1 /\ hl_vindex R M x i = a then 1 else 0) a = 1 then 1 else 0))).

// HOL Light: content : ((real,M)cart->bool)->real
Definition hl_content : set -> set :=
  fun M:set => fun v_2969977 :e 2 :^: hl_ty_cart R M => hl_COND R (if v_2969977 = hl_EMPTY (hl_ty_cart R M) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) (fun i :e omega => hl_real_sub (hl_vindex R M (hl_interval_upperbound M v_2969977) i) (hl_vindex R M (hl_interval_lowerbound M v_2969977) i))).

// HOL Light: gauge : ((real,?1343674)cart->(real,?1343674)cart->bool)->bool
Definition hl_gauge : set -> set :=
  fun T1343674:set => fun v_2970811 :e 2 :^: hl_ty_cart R T1343674 :^: hl_ty_cart R T1343674 => if forall x :e hl_ty_cart R T1343674, hl_IN (hl_ty_cart R T1343674) x (v_2970811 x) = 1 /\ hl_open T1343674 (v_2970811 x) = 1 then 1 else 0.

// HOL Light: division_of : (((real,?1343978)cart->bool)->bool)->((real,?1343978)cart->bool)->bool
Definition hl_division_of : set -> set :=
  fun T1343978:set => fun v_2970850 :e 2 :^: (2 :^: hl_ty_cart R T1343978) => fun v_2970851 :e 2 :^: hl_ty_cart R T1343978 => if hl_FINITE (2 :^: hl_ty_cart R T1343978) v_2970850 = 1 /\ ((forall k :e 2 :^: hl_ty_cart R T1343978, hl_IN (2 :^: hl_ty_cart R T1343978) k v_2970850 = 1 -> hl_SUBSET (hl_ty_cart R T1343978) k v_2970851 = 1 /\ (~ k = hl_EMPTY (hl_ty_cart R T1343978) /\ exists a b :e hl_ty_cart R T1343978, k = hl_closed_interval T1343978 (hl_CONS (hl_ty_cart R T1343978 :*: hl_ty_cart R T1343978) (hl_pair (hl_ty_cart R T1343978) (hl_ty_cart R T1343978) a b) (hl_NIL (hl_ty_cart R T1343978 :*: hl_ty_cart R T1343978))))) /\ ((forall k1 k2 :e 2 :^: hl_ty_cart R T1343978, hl_IN (2 :^: hl_ty_cart R T1343978) k1 v_2970850 = 1 /\ (hl_IN (2 :^: hl_ty_cart R T1343978) k2 v_2970850 = 1 /\ ~ k1 = k2) -> hl_INTER (hl_ty_cart R T1343978) (hl_interior T1343978 k1) (hl_interior T1343978 k2) = hl_EMPTY (hl_ty_cart R T1343978)) /\ hl_UNIONS (hl_ty_cart R T1343978) v_2970850 = v_2970851)) then 1 else 0.

// HOL Light: tagged_partial_division_of : ((real,?1349533)cart#((real,?1349533)cart->bool)->bool)->((real,?1349533)cart->bool)->bool
Definition hl_tagged_partial_division_of : set -> set :=
  fun T1349533:set => fun v_3001962 :e 2 :^: (hl_ty_cart R T1349533 :*: 2 :^: hl_ty_cart R T1349533) => fun v_3001963 :e 2 :^: hl_ty_cart R T1349533 => if hl_FINITE (hl_ty_cart R T1349533 :*: 2 :^: hl_ty_cart R T1349533) v_3001962 = 1 /\ ((forall x :e hl_ty_cart R T1349533, forall k :e 2 :^: hl_ty_cart R T1349533, hl_IN (hl_ty_cart R T1349533 :*: 2 :^: hl_ty_cart R T1349533) (hl_pair (hl_ty_cart R T1349533) (2 :^: hl_ty_cart R T1349533) x k) v_3001962 = 1 -> hl_IN (hl_ty_cart R T1349533) x k = 1 /\ (hl_SUBSET (hl_ty_cart R T1349533) k v_3001963 = 1 /\ exists a b :e hl_ty_cart R T1349533, k = hl_closed_interval T1349533 (hl_CONS (hl_ty_cart R T1349533 :*: hl_ty_cart R T1349533) (hl_pair (hl_ty_cart R T1349533) (hl_ty_cart R T1349533) a b) (hl_NIL (hl_ty_cart R T1349533 :*: hl_ty_cart R T1349533))))) /\ forall x1 :e hl_ty_cart R T1349533, forall k1 :e 2 :^: hl_ty_cart R T1349533, forall x2 :e hl_ty_cart R T1349533, forall k2 :e 2 :^: hl_ty_cart R T1349533, hl_IN (hl_ty_cart R T1349533 :*: 2 :^: hl_ty_cart R T1349533) (hl_pair (hl_ty_cart R T1349533) (2 :^: hl_ty_cart R T1349533) x1 k1) v_3001962 = 1 /\ (hl_IN (hl_ty_cart R T1349533 :*: 2 :^: hl_ty_cart R T1349533) (hl_pair (hl_ty_cart R T1349533) (2 :^: hl_ty_cart R T1349533) x2 k2) v_3001962 = 1 /\ ~ hl_pair (hl_ty_cart R T1349533) (2 :^: hl_ty_cart R T1349533) x1 k1 = hl_pair (hl_ty_cart R T1349533) (2 :^: hl_ty_cart R T1349533) x2 k2) -> hl_INTER (hl_ty_cart R T1349533) (hl_interior T1349533 k1) (hl_interior T1349533 k2) = hl_EMPTY (hl_ty_cart R T1349533)) then 1 else 0.

// HOL Light: tagged_division_of : ((real,?1349544)cart#((real,?1349544)cart->bool)->bool)->((real,?1349544)cart->bool)->bool
Definition hl_tagged_division_of : set -> set :=
  fun T1349544:set => fun v_3001974 :e 2 :^: (hl_ty_cart R T1349544 :*: 2 :^: hl_ty_cart R T1349544) => fun v_3001975 :e 2 :^: hl_ty_cart R T1349544 => if hl_tagged_partial_division_of T1349544 v_3001974 v_3001975 = 1 /\ hl_UNIONS (hl_ty_cart R T1349544) (hl_GSPEC (2 :^: hl_ty_cart R T1349544) (fun GEN_PVAR_6151 :e 2 :^: hl_ty_cart R T1349544 => if exists k :e 2 :^: hl_ty_cart R T1349544, hl_SETSPEC (2 :^: hl_ty_cart R T1349544) GEN_PVAR_6151 (if exists x :e hl_ty_cart R T1349544, hl_IN (hl_ty_cart R T1349544 :*: 2 :^: hl_ty_cart R T1349544) (hl_pair (hl_ty_cart R T1349544) (2 :^: hl_ty_cart R T1349544) x k) v_3001974 = 1 then 1 else 0) k = 1 then 1 else 0)) = v_3001975 then 1 else 0.

// HOL Light: fine : (?1351151->?1351150->bool)->(?1351151#(?1351150->bool)->bool)->bool
Definition hl_fine : set -> set -> set :=
  fun T1351151:set => fun T1351150:set => fun v_3008778 :e 2 :^: T1351150 :^: T1351151 => fun v_3008779 :e 2 :^: (T1351151 :*: 2 :^: T1351150) => if forall x :e T1351151, forall k :e 2 :^: T1351150, hl_IN (T1351151 :*: 2 :^: T1351150) (hl_pair T1351151 (2 :^: T1351150) x k) v_3008779 = 1 -> hl_SUBSET T1351150 k (v_3008778 x) = 1 then 1 else 0.

// HOL Light: has_integral_compact_interval : ((real,?1351404)cart->(real,?1351436)cart)->(real,?1351436)cart->((real,?1351404)cart->bool)->bool
Definition hl_has_integral_compact_interval : set -> set -> set :=
  fun T1351404:set => fun T1351436:set => fun v_3008866 :e hl_ty_cart R T1351436 :^: hl_ty_cart R T1351404 => fun v_3008867 :e hl_ty_cart R T1351436 => fun v_3008868 :e 2 :^: hl_ty_cart R T1351404 => if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R T1351404 :^: hl_ty_cart R T1351404, hl_gauge T1351404 d = 1 /\ forall p :e 2 :^: (hl_ty_cart R T1351404 :*: 2 :^: hl_ty_cart R T1351404), hl_tagged_division_of T1351404 p v_3008868 = 1 /\ hl_fine (hl_ty_cart R T1351404) (hl_ty_cart R T1351404) d p = 1 -> hl_real_lt (hl_vector_norm T1351436 (hl_vector_sub T1351436 (hl_vsum (hl_ty_cart R T1351404 :*: 2 :^: hl_ty_cart R T1351404) T1351436 p (hl_GABS (hl_ty_cart R T1351436 :^: (hl_ty_cart R T1351404 :*: 2 :^: hl_ty_cart R T1351404)) (fun f :e hl_ty_cart R T1351436 :^: (hl_ty_cart R T1351404 :*: 2 :^: hl_ty_cart R T1351404) => if forall x :e hl_ty_cart R T1351404, forall k :e 2 :^: hl_ty_cart R T1351404, hl_GEQ (hl_ty_cart R T1351436) (f (hl_pair (hl_ty_cart R T1351404) (2 :^: hl_ty_cart R T1351404) x k)) (hl_vmul T1351436 (hl_content T1351404 k) (v_3008866 x)) = 1 then 1 else 0))) v_3008867)) e1 = 1 then 1 else 0.

// HOL Light: has_integral : ((real,?1351573)cart->(real,?1351577)cart)->(real,?1351577)cart->((real,?1351573)cart->bool)->bool
Definition hl_has_integral : set -> set -> set :=
  fun T1351573:set => fun T1351577:set => fun v_3008887 :e hl_ty_cart R T1351577 :^: hl_ty_cart R T1351573 => fun v_3008888 :e hl_ty_cart R T1351577 => fun v_3008889 :e 2 :^: hl_ty_cart R T1351573 => if (exists a b :e hl_ty_cart R T1351573, v_3008889 = hl_closed_interval T1351573 (hl_CONS (hl_ty_cart R T1351573 :*: hl_ty_cart R T1351573) (hl_pair (hl_ty_cart R T1351573) (hl_ty_cart R T1351573) a b) (hl_NIL (hl_ty_cart R T1351573 :*: hl_ty_cart R T1351573)))) /\ hl_has_integral_compact_interval T1351573 T1351577 v_3008887 v_3008888 v_3008889 = 1 \/ ~ (exists a b :e hl_ty_cart R T1351573, v_3008889 = hl_closed_interval T1351573 (hl_CONS (hl_ty_cart R T1351573 :*: hl_ty_cart R T1351573) (hl_pair (hl_ty_cart R T1351573) (hl_ty_cart R T1351573) a b) (hl_NIL (hl_ty_cart R T1351573 :*: hl_ty_cart R T1351573)))) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall a b :e hl_ty_cart R T1351573, hl_SUBSET (hl_ty_cart R T1351573) (hl_ball T1351573 (hl_pair (hl_ty_cart R T1351573) R (hl_vec T1351573 (hl_NUMERAL hl_zero)) B)) (hl_closed_interval T1351573 (hl_CONS (hl_ty_cart R T1351573 :*: hl_ty_cart R T1351573) (hl_pair (hl_ty_cart R T1351573) (hl_ty_cart R T1351573) a b) (hl_NIL (hl_ty_cart R T1351573 :*: hl_ty_cart R T1351573)))) = 1 -> exists z :e hl_ty_cart R T1351577, hl_has_integral_compact_interval T1351573 T1351577 (fun x :e hl_ty_cart R T1351573 => hl_COND (hl_ty_cart R T1351577) (hl_IN (hl_ty_cart R T1351573) x v_3008889) (v_3008887 x) (hl_vec T1351577 (hl_NUMERAL hl_zero))) z (hl_closed_interval T1351573 (hl_CONS (hl_ty_cart R T1351573 :*: hl_ty_cart R T1351573) (hl_pair (hl_ty_cart R T1351573) (hl_ty_cart R T1351573) a b) (hl_NIL (hl_ty_cart R T1351573 :*: hl_ty_cart R T1351573)))) = 1 /\ hl_real_lt (hl_vector_norm T1351577 (hl_vector_sub T1351577 z v_3008888)) e1 = 1 then 1 else 0.

// HOL Light: integrable_on : ((real,?1351842)cart->(real,?1351841)cart)->((real,?1351842)cart->bool)->bool
Definition hl_integrable_on : set -> set -> set :=
  fun T1351842:set => fun T1351841:set => fun v_3009369 :e hl_ty_cart R T1351841 :^: hl_ty_cart R T1351842 => fun v_3009370 :e 2 :^: hl_ty_cart R T1351842 => if exists y :e hl_ty_cart R T1351841, hl_has_integral T1351842 T1351841 v_3009369 y v_3009370 = 1 then 1 else 0.

// HOL Light: integral : ((real,?1351857)cart->bool)->((real,?1351857)cart->(real,?1351856)cart)->(real,?1351856)cart
Definition hl_integral : set -> set -> set :=
  fun T1351857:set => fun T1351856:set => fun v_3009381 :e 2 :^: hl_ty_cart R T1351857 => fun v_3009382 :e hl_ty_cart R T1351856 :^: hl_ty_cart R T1351857 => hl_select (hl_ty_cart R T1351856) (fun y :e hl_ty_cart R T1351856 => hl_has_integral T1351857 T1351856 v_3009382 y v_3009381).

// HOL Light: operative : (A->A->A)->(((real,N)cart->bool)->A)->bool
Definition hl_operative : set -> set -> set :=
  fun A:set => fun N:set => fun v_3026301 :e A :^: A :^: A => fun v_3026302 :e A :^: (2 :^: hl_ty_cart R N) => if (forall a b :e hl_ty_cart R N, hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> v_3026302 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_neutral A v_3026301) /\ forall a b :e hl_ty_cart R N, forall c :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> v_3026302 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = v_3026301 (v_3026302 (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6227 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6227 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)))) (v_3026302 (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6228 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6228 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)))) then 1 else 0.

// HOL Light: lifted : (?1360870->?1360870->?1360868)->?1360870 option->?1360870 option->?1360868 option
Definition hl_lifted : set -> set -> set :=
  fun T1360870:set => fun T1360868:set => hl_select ((1 :+: T1360868) :^: (1 :+: T1360870) :^: (1 :+: T1360870) :^: (T1360868 :^: T1360870 :^: T1360870) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))))) (fun lifted1 :e (1 :+: T1360868) :^: (1 :+: T1360870) :^: (1 :+: T1360870) :^: (T1360868 :^: T1360870 :^: T1360870) :^: (omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega))))) => if forall v_3027623 :e omega :*: (omega :*: (omega :*: (omega :*: (omega :*: omega)))), (forall op :e T1360868 :^: T1360870 :^: T1360870, forall rel :e 1 :+: T1360870, lifted1 v_3027623 op (hl_NONE T1360870) rel = hl_NONE T1360868) /\ ((forall op :e T1360868 :^: T1360870 :^: T1360870, forall rel :e 1 :+: T1360870, lifted1 v_3027623 op rel (hl_NONE T1360870) = hl_NONE T1360868) /\ forall op :e T1360868 :^: T1360870 :^: T1360870, forall x y :e T1360870, lifted1 v_3027623 op (hl_SOME T1360870 x) (hl_SOME T1360870 y) = hl_SOME T1360868 (op x y)) then 1 else 0) (hl_pair omega (omega :*: (omega :*: (omega :*: (omega :*: omega)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: (omega :*: omega))) (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: (omega :*: omega)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega (omega :*: omega) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_pair omega omega (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))))))))))).

// HOL Light: division_points : ((real,N)cart->bool)->(((real,N)cart->bool)->bool)->num#real->bool
Definition hl_division_points : set -> set :=
  fun N:set => fun v_3028164 :e 2 :^: hl_ty_cart R N => fun v_3028165 :e 2 :^: (2 :^: hl_ty_cart R N) => hl_GSPEC (omega :*: R) (fun GEN_PVAR_6229 :e omega :*: R => if exists j :e omega, exists x :e R, hl_SETSPEC (omega :*: R) GEN_PVAR_6229 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_lt (hl_vindex R N (hl_interval_lowerbound N v_3028164) j) x = 1 /\ (hl_real_lt x (hl_vindex R N (hl_interval_upperbound N v_3028164) j) = 1 /\ exists i :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) i v_3028165 = 1 /\ (hl_vindex R N (hl_interval_lowerbound N i) j = x \/ hl_vindex R N (hl_interval_upperbound N i) j = x)))) then 1 else 0) (hl_pair omega R j x) = 1 then 1 else 0).

// HOL Light: negligible : ((real,?1366825)cart->bool)->bool
Definition hl_negligible : set -> set :=
  fun T1366825:set => fun v_3046686 :e 2 :^: hl_ty_cart R T1366825 => if forall a b :e hl_ty_cart R T1366825, hl_has_integral T1366825 1 (hl_indicator T1366825 v_3046686) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_closed_interval T1366825 (hl_CONS (hl_ty_cart R T1366825 :*: hl_ty_cart R T1366825) (hl_pair (hl_ty_cart R T1366825) (hl_ty_cart R T1366825) a b) (hl_NIL (hl_ty_cart R T1366825 :*: hl_ty_cart R T1366825)))) = 1 then 1 else 0.

// HOL Light: set_variation : ((real,M)cart->bool)->(((real,M)cart->bool)->(real,N)cart)->real
Definition hl_set_variation : set -> set -> set :=
  fun M:set => fun N:set => fun v_3097655 :e 2 :^: hl_ty_cart R M => fun v_3097656 :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M) => hl_sup (hl_GSPEC R (fun GEN_PVAR_6353 :e R => if exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_SETSPEC R GEN_PVAR_6353 (if exists t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t v_3097655 = 1 then 1 else 0) (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (v_3097656 k))) = 1 then 1 else 0)).

// HOL Light: has_bounded_setvariation_on : (((real,M)cart->bool)->(real,N)cart)->((real,M)cart->bool)->bool
Definition hl_has_bounded_setvariation_on : set -> set -> set :=
  fun M:set => fun N:set => fun v_3097667 :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M) => fun v_3097668 :e 2 :^: hl_ty_cart R M => if exists B :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t v_3097668 = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (v_3097667 k))) B = 1 then 1 else 0.

// HOL Light: absolutely_integrable_on : ((real,?1400469)cart->(real,?1400464)cart)->((real,?1400469)cart->bool)->bool
Definition hl_absolutely_integrable_on : set -> set -> set :=
  fun T1400469:set => fun T1400464:set => fun v_3104165 :e hl_ty_cart R T1400464 :^: hl_ty_cart R T1400469 => fun v_3104166 :e 2 :^: hl_ty_cart R T1400469 => if hl_integrable_on T1400469 T1400464 v_3104165 v_3104166 = 1 /\ hl_integrable_on T1400469 1 (fun x :e hl_ty_cart R T1400469 => hl_lift (hl_vector_norm T1400464 (v_3104165 x))) v_3104166 = 1 then 1 else 0.

// HOL Light: equiintegrable_on : (((real,M)cart->(real,N)cart)->bool)->((real,M)cart->bool)->bool
Definition hl_equiintegrable_on : set -> set -> set :=
  fun M:set => fun N:set => fun v_3156019 :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M) => fun v_3156020 :e 2 :^: hl_ty_cart R M => if (forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f v_3156019 = 1 -> hl_integrable_on M N f v_3156020 = 1) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_gauge M d = 1 /\ forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f v_3156019 = 1 /\ (hl_tagged_division_of M p v_3156020 = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1) -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))) (hl_integral M N v_3156020 f))) e1 = 1 then 1 else 0.

// HOL Light: has_bounded_variation_on : ((real,1)cart->(real,N)cart)->((real,1)cart->bool)->bool
Definition hl_has_bounded_variation_on : set -> set :=
  fun N:set => fun v_3216765 :e hl_ty_cart R N :^: hl_ty_cart R 1 => fun v_3216766 :e 2 :^: hl_ty_cart R 1 => hl_has_bounded_setvariation_on 1 N (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_sub N (v_3216765 (hl_interval_upperbound 1 k)) (v_3216765 (hl_interval_lowerbound 1 k))) v_3216766.

// HOL Light: vector_variation : ((real,1)cart->bool)->((real,1)cart->(real,N)cart)->real
Definition hl_vector_variation : set -> set :=
  fun N:set => fun v_3216777 :e 2 :^: hl_ty_cart R 1 => fun v_3216778 :e hl_ty_cart R N :^: hl_ty_cart R 1 => hl_set_variation 1 N v_3216777 (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_sub N (v_3216778 (hl_interval_upperbound 1 k)) (v_3216778 (hl_interval_lowerbound 1 k))).

// HOL Light: absolutely_setcontinuous_on : (((real,M)cart->bool)->(real,N)cart)->((real,M)cart->bool)->bool
Definition hl_absolutely_setcontinuous_on : set -> set -> set :=
  fun M:set => fun N:set => fun v_3259234 :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M) => fun v_3259235 :e 2 :^: hl_ty_cart R M => if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ (hl_SUBSET (hl_ty_cart R M) t v_3259235 = 1 /\ hl_real_lt (hl_sum (2 :^: hl_ty_cart R M) d (hl_content M)) r = 1) -> hl_real_lt (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (v_3259234 k))) e1 = 1 then 1 else 0.

// HOL Light: absolutely_continuous_on : ((real,1)cart->(real,N)cart)->((real,1)cart->bool)->bool
Definition hl_absolutely_continuous_on : set -> set :=
  fun N:set => fun v_3270908 :e hl_ty_cart R N :^: hl_ty_cart R 1 => fun v_3270909 :e 2 :^: hl_ty_cart R 1 => hl_absolutely_setcontinuous_on 1 N (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_sub N (v_3270908 (hl_interval_upperbound 1 k)) (v_3270908 (hl_interval_lowerbound 1 k))) v_3270909.

// HOL Light: rectifiable_path : ((real,1)cart->(real,N)cart)->bool
Definition hl_rectifiable_path : set -> set :=
  fun N:set => fun v_3274842 :e hl_ty_cart R N :^: hl_ty_cart R 1 => if hl_path N v_3274842 = 1 /\ hl_has_bounded_variation_on N v_3274842 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 then 1 else 0.

// HOL Light: path_length : ((real,1)cart->(real,N)cart)->real
Definition hl_path_length : set -> set :=
  fun N:set => fun v_3274847 :e hl_ty_cart R N :^: hl_ty_cart R 1 => hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) v_3274847.

// HOL Light: has_measure : ((real,?1486765)cart->bool)->real->bool
Definition hl_has_measure : set -> set :=
  fun T1486765:set => fun v_3288780 :e 2 :^: hl_ty_cart R T1486765 => fun v_3288781 :e R => hl_has_integral T1486765 1 (fun x :e hl_ty_cart R T1486765 => hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lift v_3288781) v_3288780.

// HOL Light: measurable : ((real,?1486781)cart->bool)->bool
Definition hl_measurable : set -> set :=
  fun T1486781:set => fun v_3288792 :e 2 :^: hl_ty_cart R T1486781 => if exists m :e R, hl_has_measure T1486781 v_3288792 m = 1 then 1 else 0.

// HOL Light: measure : ((real,?1486793)cart->bool)->real
Definition hl_measure : set -> set :=
  fun T1486793:set => fun v_3288797 :e 2 :^: hl_ty_cart R T1486793 => hl_select R (fun m :e R => hl_has_measure T1486793 v_3288797 m).

// HOL Light: measurable_on : ((real,M)cart->(real,N)cart)->((real,M)cart->bool)->bool
Definition hl_measurable_on : set -> set -> set :=
  fun M:set => fun N:set => fun v_3365742 :e hl_ty_cart R N :^: hl_ty_cart R M => fun v_3365743 :e 2 :^: hl_ty_cart R M => if exists k :e 2 :^: hl_ty_cart R M, exists g :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, hl_negligible M k = 1 /\ ((forall n :e omega, hl_continuous_on M N (g n) (hl_UNIV (hl_ty_cart R M)) = 1) /\ forall x :e hl_ty_cart R M, ~ hl_IN (hl_ty_cart R M) x k = 1 -> hl_tendsto omega N (fun n :e omega => g n x) (hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x v_3365743) (v_3365742 x) (hl_vec N (hl_NUMERAL hl_zero))) hl_sequentially = 1) then 1 else 0.

// HOL Light: lebesgue_measurable : ((real,N)cart->bool)->bool
Definition hl_lebesgue_measurable : set -> set :=
  fun N:set => fun v_3365754 :e 2 :^: hl_ty_cart R N => hl_measurable_on N 1 (hl_indicator N v_3365754) (hl_UNIV (hl_ty_cart R N)).

