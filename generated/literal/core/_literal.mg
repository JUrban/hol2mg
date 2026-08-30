// hol2mg literal layer (private, docs/DESIGN.md §21.2): syntax-directed interpretation of the
// HOL Light kernel definitions of profile core (commit 433477862bb90b328a593e012e09390e99b2439b).  Checked after mglib/native/*.mg and
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
  fun A:set => fun B:set => hl_subtype_abs (A :^: hl_ty_finite_image B) (fun r :e A :^: hl_ty_finite_image B => if True then 1 else 0).
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

