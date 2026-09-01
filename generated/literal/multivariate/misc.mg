// hol2mg literal statements (private): shard misc of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light:  / ABSOLUTELY_CONTINUOUS_IMP_BANACH_SPROPERTY   (hash md5:73b63f226e3b93eaf8f0c245bdb6b4fc)
Theorem hlt_ABSOLUTELY_CONTINUOUS_IMP_BANACH_SPROPERTY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall e1 :e R, hl_absolutely_continuous_on N f s = 1 /\ (hl_is_interval 1 s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) t s = 1 /\ (hl_measurable 1 t = 1 /\ hl_real_lt (hl_measure 1 t) d = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f t) = 1 /\ hl_real_lt (hl_measure N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f t)) e1 = 1.
Admitted.

// HOL Light:  / ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT_EQ   (hash md5:35845629d478941daef9a0cc869d011a)
Theorem hlt_ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 <-> hl_measurable_on M N f s = 1 /\ forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, hl_measurable_on M 1 g s = 1 /\ hl_bounded 1 (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R 1) g s) = 1 -> hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_drop (g x)) (f x)) s = 1.
Admitted.

// HOL Light:  / ABSOLUTELY_INTEGRABLE_CONVOLUTION_AE   (hash md5:79bfb419edaffa147b5e9cb90eb82b81)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CONVOLUTION_AE : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_absolutely_integrable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1) -> exists t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ forall x :e hl_ty_cart R M, ~ hl_IN (hl_ty_cart R M) x t = 1 -> hl_absolutely_integrable_on M Q (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light:  / ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET_EQ   (hash md5:7e8eded75fa17a6831986fdabfb9953d)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 <-> hl_measurable_on M N f s = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_lebesgue_measurable M t = 1 -> hl_integrable_on M N f t = 1.
Admitted.

// HOL Light:  / ABSOLUTELY_INTEGRABLE_PASTECART_SYM_UNIV   (hash md5:ddc2f3d6e0f1285ffe65e806cebbbc0f)
Theorem hlt_ABSOLUTELY_INTEGRABLE_PASTECART_SYM_UNIV : forall A B M N P:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e A, forall y :e B, hl_absolutely_integrable_on (hl_ty_finite_sum N M) P (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum N M))) = 1 <-> hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1.
Admitted.

// HOL Light:  / ABS_SQUARE_EQ_1   (hash md5:07d0cdd9270d0a3cc9c0d3f2589f5ee9)
Theorem hlt_ABS_SQUARE_EQ_1 : forall x :e R, hl_real_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_real_abs x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light:  / ABS_SQUARE_LE_1   (hash md5:bd37ca65a9b4615382495621c851efb9)
Theorem hlt_ABS_SQUARE_LE_1 : forall x :e R, hl_real_le (hl_real_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 <-> hl_real_le (hl_real_abs x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light:  / ABS_SQUARE_LT_1   (hash md5:2fc4a35d9721a94763e5559b60b05743)
Theorem hlt_ABS_SQUARE_LT_1 : forall x :e R, hl_real_lt (hl_real_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 <-> hl_real_lt (hl_real_abs x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light:  / APPROACHABLE_LT_LE   (hash md5:54afdab4ade10def5b20fc16157570d6)
Theorem hlt_APPROACHABLE_LT_LE : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall f :e R :^: A, (exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x :e A, hl_real_lt (f x) d = 1 -> P x = 1) <-> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x :e A, hl_real_le (f x) d = 1 -> P x = 1.
Admitted.

// HOL Light:  / ARBITRARY_INTERSECTION_OF_RELATIVE_TO   (hash md5:ca11f78934027fd4c8ed614ea10176fe)
Theorem hlt_ARBITRARY_INTERSECTION_OF_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, hl_relative_to A (hl_INTERSECTION_OF A (hl_ARBITRARY A) P) u = hl_relative_to A (hl_INTERSECTION_OF A (hl_ARBITRARY A) (hl_relative_to A P u)) u.
Admitted.

// HOL Light:  / ARBITRARY_UNION_OF_NONEMPTY_FINITE_INTERSECTION   (hash md5:5497805154c9de33906e671260b74d74)
Theorem hlt_ARBITRARY_UNION_OF_NONEMPTY_FINITE_INTERSECTION : forall A:set, A <> Empty -> forall u :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_ARBITRARY A) (hl_INTERSECTION_OF A (fun s :e 2 :^: (2 :^: A) => if hl_FINITE (2 :^: A) s = 1 /\ ~ s = hl_EMPTY (2 :^: A) then 1 else 0) u) = hl_UNION_OF A (hl_ARBITRARY A) (hl_relative_to A (hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) u) (hl_UNIONS A u)).
Admitted.

// HOL Light:  / ARBITRARY_UNION_OF_RELATIVE_TO   (hash md5:c93332108548ebf7036a037e341e28d8)
Theorem hlt_ARBITRARY_UNION_OF_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, hl_relative_to A (hl_UNION_OF A (hl_ARBITRARY A) P) u = hl_UNION_OF A (hl_ARBITRARY A) (hl_relative_to A P u).
Admitted.

// HOL Light:  / BACK_AND_FORTH   (hash md5:6f8da29ffc4d51e890ed055ded234d95)
Theorem hlt_BACK_AND_FORTH : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: B :^: A :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, (forall x :e A, forall y :e B, hl_IN A x s = 1 /\ hl_IN B y t = 1 -> R1 x x y y = 1) /\ ((forall x :e A, forall y :e B, forall x' :e A, forall y' :e B, hl_IN A x s = 1 /\ (hl_IN A x' s = 1 /\ (hl_IN B y t = 1 /\ (hl_IN B y' t = 1 /\ (~ x = x' /\ (~ y = y' /\ R1 x x' y y' = 1))))) -> R1 x' x y' y = 1) /\ (hl_COUNTABLE A s = 1 /\ (hl_COUNTABLE B t = 1 /\ (forall f :e B :^: A, forall s' :e 2 :^: A, forall t' :e 2 :^: B, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ (hl_FINITE B t' = 1 /\ (hl_SUBSET B t' t = 1 /\ (hl_IMAGE A B f s' = t' /\ ((forall x y :e A, hl_IN A x s' = 1 /\ hl_IN A y s' = 1 -> (f x = f y <-> x = y)) /\ (forall x y :e A, hl_IN A x s' = 1 /\ hl_IN A y s' = 1 -> R1 x y (f x) (f y) = 1)))))) -> (forall x :e A, hl_IN A x (hl_DIFF A s s') = 1 -> exists y :e B, hl_IN B y (hl_DIFF B t t') = 1 /\ forall z :e A, hl_IN A z s' = 1 -> R1 x z y (f z) = 1) /\ forall y :e B, hl_IN B y (hl_DIFF B t t') = 1 -> exists x :e A, hl_IN A x (hl_DIFF A s s') = 1 /\ forall z :e A, hl_IN A z s' = 1 -> R1 x z y (f z) = 1)))) -> exists f :e B :^: A, hl_IMAGE A B f s = t /\ ((forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ forall x y :e A, hl_IN A x s = 1 /\ hl_IN A y s = 1 -> R1 x y (f x) (f y) = 1).
Admitted.

// HOL Light:  / BACK_AND_FORTH_2   (hash md5:4ac756284b6bd4d91798bfb45f1ce257)
Theorem hlt_BACK_AND_FORTH_2 : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: B :^: A :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, (forall x :e A, forall y :e B, hl_IN A x s = 1 /\ hl_IN B y t = 1 -> R1 x x y y = 1) /\ ((forall x :e A, forall y :e B, forall x' :e A, forall y' :e B, hl_IN A x s = 1 /\ (hl_IN A x' s = 1 /\ (hl_IN B y t = 1 /\ (hl_IN B y' t = 1 /\ (~ x = x' /\ (~ y = y' /\ R1 x x' y y' = 1))))) -> R1 x' x y' y = 1) /\ (hl_COUNTABLE A s = 1 /\ (hl_COUNTABLE B t = 1 /\ ((forall f :e B :^: A, forall s' :e 2 :^: A, forall t' :e 2 :^: B, forall x :e A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ (hl_FINITE B t' = 1 /\ (hl_SUBSET B t' t = 1 /\ (hl_IMAGE A B f s' = t' /\ ((forall x1 y :e A, hl_IN A x1 s' = 1 /\ hl_IN A y s' = 1 -> (f x1 = f y <-> x1 = y)) /\ ((forall x1 y :e A, hl_IN A x1 s' = 1 /\ hl_IN A y s' = 1 -> R1 x1 y (f x1) (f y) = 1) /\ hl_IN A x (hl_DIFF A s s') = 1)))))) -> exists y :e B, hl_IN B y (hl_DIFF B t t') = 1 /\ forall z :e A, hl_IN A z s' = 1 -> R1 x z y (f z) = 1) /\ (forall f :e A :^: B, forall t' :e 2 :^: B, forall s' :e 2 :^: A, forall x :e B, hl_FINITE B t' = 1 /\ (hl_SUBSET B t' t = 1 /\ (hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ (hl_IMAGE B A f t' = s' /\ ((forall x1 y :e B, hl_IN B x1 t' = 1 /\ hl_IN B y t' = 1 -> (f x1 = f y <-> x1 = y)) /\ ((forall x1 y :e B, hl_IN B x1 t' = 1 /\ hl_IN B y t' = 1 -> R1 (f x1) (f y) x1 y = 1) /\ hl_IN B x (hl_DIFF B t t') = 1)))))) -> exists y :e A, hl_IN A y (hl_DIFF A s s') = 1 /\ forall z :e B, hl_IN B z t' = 1 -> R1 y (f z) x z = 1))))) -> exists f :e B :^: A, hl_IMAGE A B f s = t /\ ((forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ forall x y :e A, hl_IN A x s = 1 /\ hl_IN A y s = 1 -> R1 x y (f x) (f y) = 1).
Admitted.

// HOL Light:  / BACK_AND_FORTH_ALT   (hash md5:84c482e05baa2e759d6c50fb53e8d1cd)
Theorem hlt_BACK_AND_FORTH_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B) :^: (A :*: B), forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE A s = 1 /\ (hl_COUNTABLE B t = 1 /\ (forall R1 :e 2 :^: (A :*: B), hl_FINITE (A :*: B) R1 = 1 /\ (hl_SUBSET (A :*: B) R1 (hl_CROSS A B s t) = 1 /\ hl_pairwise (A :*: B) P R1 = 1) -> (forall x :e A, hl_IN A x s = 1 -> exists y :e B, hl_IN B y t = 1 /\ hl_pairwise (A :*: B) P (hl_INSERT (A :*: B) (hl_pair A B x y) R1) = 1) /\ forall y :e B, hl_IN B y t = 1 -> exists x :e A, hl_IN A x s = 1 /\ hl_pairwise (A :*: B) P (hl_INSERT (A :*: B) (hl_pair A B x y) R1) = 1)) -> exists R1 :e 2 :^: (A :*: B), hl_SUBSET (A :*: B) R1 (hl_CROSS A B s t) = 1 /\ (hl_pairwise (A :*: B) P R1 = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> exists y :e B, hl_IN B y t = 1 /\ hl_IN (A :*: B) (hl_pair A B x y) R1 = 1) /\ forall y :e B, hl_IN B y t = 1 -> exists x :e A, hl_IN A x s = 1 /\ hl_IN (A :*: B) (hl_pair A B x y) R1 = 1)).
Admitted.

// HOL Light:  / BAIRE_INDICATOR_DELTA   (hash md5:26ca4aa0bf193256836631cc0c5005b3)
Theorem hlt_BAIRE_INDICATOR_DELTA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_UNION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_o (hl_ty_cart R 1 :^: hl_ty_cart R N) 2 (2 :^: hl_ty_cart R N) (hl_baire N 1 n (hl_UNIV (hl_ty_cart R N))) (hl_indicator N)) s = 1 /\ hl_INTERSECTION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_o (hl_ty_cart R 1 :^: hl_ty_cart R N) 2 (2 :^: hl_ty_cart R N) (hl_baire N 1 n (hl_UNIV (hl_ty_cart R N))) (hl_indicator N)) s = 1 <-> hl_baire N 1 n (hl_UNIV (hl_ty_cart R N)) (hl_indicator N s) = 1.
Admitted.

// HOL Light:  / BAIRE_INDICATOR_SUC   (hash md5:052ca8d2bb087b35bf87515aab6bd4d4)
Theorem hlt_BAIRE_INDICATOR_SUC : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> (hl_UNION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_INTERSECTION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_o (hl_ty_cart R 1 :^: hl_ty_cart R N) 2 (2 :^: hl_ty_cart R N) (hl_baire N 1 n (hl_UNIV (hl_ty_cart R N))) (hl_indicator N))) s = 1 /\ hl_INTERSECTION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_UNION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_o (hl_ty_cart R 1 :^: hl_ty_cart R N) 2 (2 :^: hl_ty_cart R N) (hl_baire N 1 n (hl_UNIV (hl_ty_cart R N))) (hl_indicator N))) s = 1 <-> hl_baire N 1 (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_UNIV (hl_ty_cart R N)) (hl_indicator N s) = 1).
Admitted.

// HOL Light:  / CARD_EQ_INTEGER   (hash md5:5c917c1a47c4e179b64f46c5101eb490)
Theorem hlt_CARD_EQ_INTEGER : hl_sym_3d5f63 R omega hl_integer (hl_UNIV omega) = 1.
Admitted.

// HOL Light:  / CARD_EQ_RATIONAL   (hash md5:5d46f0b096b441a1a52bd29dc07a6f64)
Theorem hlt_CARD_EQ_RATIONAL : hl_sym_3d5f63 R omega hl_rational (hl_UNIV omega) = 1.
Admitted.

// HOL Light:  / CARD_SUSLIN_EQ   (hash md5:367ced7f33b0d36252d32c0708a6acd3)
Theorem hlt_CARD_SUSLIN_EQ : forall A:set, A <> Empty -> forall C :e 2 :^: (2 :^: A), hl_sym_3d5f63 (2 :^: A) R C (hl_UNIV R) = 1 -> hl_sym_3d5f63 (2 :^: A) R (hl_suslin A C) (hl_UNIV R) = 1.
Admitted.

// HOL Light:  / CARD_SUSLIN_LE   (hash md5:d2628631b05c9d4550b8091fd162388e)
Theorem hlt_CARD_SUSLIN_LE : forall A:set, A <> Empty -> forall C :e 2 :^: (2 :^: A), hl_sym_3c3d5f63 (2 :^: A) R C (hl_UNIV R) = 1 -> hl_sym_3c3d5f63 (2 :^: A) R (hl_suslin A C) (hl_UNIV R) = 1.
Admitted.

// HOL Light:  / COMPACT_IN_EQ_BOLZANO_WEIERSTRASS   (hash md5:96c6aa83cb9f9b9993176f5d8393d910)
Theorem hlt_COMPACT_IN_EQ_BOLZANO_WEIERSTRASS : forall A:set, A <> Empty -> forall m :e hl_ty_metric A, forall s :e 2 :^: A, hl_compact_in A (hl_mtopology A m) s = 1 <-> hl_SUBSET A s (hl_mspace A m) = 1 /\ forall t :e 2 :^: A, hl_SUBSET A t s = 1 /\ hl_INFINITE A t = 1 -> ~ hl_INTER A s (hl_derived_set_of A (hl_mtopology A m) t) = hl_EMPTY A.
Admitted.

// HOL Light:  / COMPACT_IN_IMP_TOTALLY_BOUNDED_IN_EXPLICIT   (hash md5:5680bb063b2f944f57970baf7961d0cc)
Theorem hlt_COMPACT_IN_IMP_TOTALLY_BOUNDED_IN_EXPLICIT : forall A:set, A <> Empty -> forall m :e hl_ty_metric A, forall s :e 2 :^: A, forall e1 :e R, hl_compact_in A (hl_mtopology A m) s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists k :e 2 :^: A, hl_FINITE A k = 1 /\ (hl_SUBSET A k s = 1 /\ hl_SUBSET A s (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1889 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_1889 (hl_IN A x k) (hl_mball A m (hl_pair A R x e1)) = 1 then 1 else 0))) = 1).
Admitted.

// HOL Light:  / COMPACT_IN_SEQUENTIALLY   (hash md5:0632322df2f76776cb3c9d201b6638ee)
Theorem hlt_COMPACT_IN_SEQUENTIALLY : forall A:set, A <> Empty -> forall m :e hl_ty_metric A, forall s :e 2 :^: A, hl_compact_in A (hl_mtopology A m) s = 1 <-> hl_SUBSET A s (hl_mspace A m) = 1 /\ forall x :e A :^: omega, (forall n :e omega, hl_IN A (x n) s = 1) -> exists l :e A, exists r :e omega :^: omega, hl_IN A l s = 1 /\ ((forall m1 n :e omega, hl_lt m1 n = 1 -> hl_lt (r m1) (r n) = 1) /\ hl_limit A omega (hl_mtopology A m) (hl_o omega A omega x r) l hl_sequentially = 1).
Admitted.

// HOL Light:  / COMPLETELY_METRIZABLE_SPACE_PRODUCT_TOPOLOGY   (hash md5:926834c4da3412afe5a79e94165369d8)
Theorem hlt_COMPLETELY_METRIZABLE_SPACE_PRODUCT_TOPOLOGY : forall A K:set, A <> Empty -> K <> Empty -> forall tops :e hl_ty_topology A :^: K, forall k :e 2 :^: K, hl_completely_metrizable_space (A :^: K) (hl_product_topology K A k tops) = 1 <-> hl_topspace (A :^: K) (hl_product_topology K A k tops) = hl_EMPTY (A :^: K) \/ hl_COUNTABLE K (hl_GSPEC K (fun GEN_PVAR_2180 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_2180 (if hl_IN K i k = 1 /\ ~ exists a :e A, hl_SUBSET A (hl_topspace A (tops i)) (hl_INSERT A a (hl_EMPTY A)) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_completely_metrizable_space A (tops i) = 1.
Admitted.

// HOL Light:  / CONNECTED_FINITE_IFF_COUNTABLE   (hash md5:cfe9258bef6437bd28127e6e8101a8e5)
Theorem hlt_CONNECTED_FINITE_IFF_COUNTABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 -> (hl_FINITE (hl_ty_cart R N) s = 1 <-> hl_COUNTABLE (hl_ty_cart R N) s = 1).
Admitted.

// HOL Light:  / CONNECTED_FINITE_IFF_SING   (hash md5:8f71e97e69ba4fe2b857bba2c6b12c94)
Theorem hlt_CONNECTED_FINITE_IFF_SING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 -> (hl_FINITE (hl_ty_cart R N) s = 1 <-> s = hl_EMPTY (hl_ty_cart R N) \/ exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))).
Admitted.

// HOL Light:  / CONNECTED_INFINITE_IFF_CARD_EQ   (hash md5:2b7877f510a128107dfb737ee50fba78)
Theorem hlt_CONNECTED_INFINITE_IFF_CARD_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 -> (hl_INFINITE (hl_ty_cart R N) s = 1 <-> hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1).
Admitted.

// HOL Light:  / CONTINUOUS_DISCONNECTED_RANGE_CONSTANT_EQ   (hash md5:b1459d1a02bb3b0c01846ea168a0e599)
Theorem hlt_CONTINUOUS_DISCONNECTED_RANGE_CONSTANT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_connected M s = 1 <-> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_continuous_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1 /\ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> hl_connected_component N t y = hl_INSERT (hl_ty_cart R N) y (hl_EMPTY (hl_ty_cart R N)))) -> exists a :e hl_ty_cart R N, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = a.
Admitted.

// HOL Light:  / CONTINUOUS_DISCRETE_RANGE_CONSTANT_EQ   (hash md5:228c33e0c834734fcf42eea37aeb2386)
Theorem hlt_CONTINUOUS_DISCRETE_RANGE_CONSTANT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_connected M s = 1 <-> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y s = 1 /\ ~ f y = f x -> hl_real_le e1 (hl_vector_norm N (hl_vector_sub N (f y) (f x))) = 1) -> exists a :e hl_ty_cart R N, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = a.
Admitted.

// HOL Light:  / CONTINUOUS_FINITE_RANGE_CONSTANT_EQ   (hash md5:917e9d83d8988f64f5b5c1c324ae6670)
Theorem hlt_CONTINUOUS_FINITE_RANGE_CONSTANT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_connected M s = 1 <-> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ hl_FINITE (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 -> exists a :e hl_ty_cart R N, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = a.
Admitted.

// HOL Light:  / CONTINUOUS_MAP_EQ_CLOSURE_PREIMAGE_SUBSET   (hash md5:f9f91ea96a312450c0075237ccf4bf3a)
Theorem hlt_CONTINUOUS_MAP_EQ_CLOSURE_PREIMAGE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_topspace A top)) (hl_topspace B top') = 1 /\ forall t :e 2 :^: B, hl_SUBSET A (hl_closure_of A top (hl_GSPEC A (fun GEN_PVAR_1292 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1292 (if hl_IN A x (hl_topspace A top) = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0))) (hl_GSPEC A (fun GEN_PVAR_1293 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1293 (if hl_IN A x (hl_topspace A top) = 1 /\ hl_IN B (f x) (hl_closure_of B top' t) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / CONTINUOUS_MAP_EQ_CLOSURE_PREIMAGE_SUBSET_ALT   (hash md5:74b165a3e22bdfe6df36d38b4f48b916)
Theorem hlt_CONTINUOUS_MAP_EQ_CLOSURE_PREIMAGE_SUBSET_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_topspace A top)) (hl_topspace B top') = 1 /\ forall t :e 2 :^: B, hl_SUBSET B t (hl_topspace B top') = 1 -> hl_SUBSET A (hl_closure_of A top (hl_GSPEC A (fun GEN_PVAR_1294 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1294 (if hl_IN A x (hl_topspace A top) = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0))) (hl_GSPEC A (fun GEN_PVAR_1295 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1295 (if hl_IN A x (hl_topspace A top) = 1 /\ hl_IN B (f x) (hl_closure_of B top' t) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / CONTINUOUS_MAP_EQ_IMAGE_CLOSURE_SUBSET   (hash md5:8ddc4da47442584c5959781f2db12cfa)
Theorem hlt_CONTINUOUS_MAP_EQ_IMAGE_CLOSURE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> forall s :e 2 :^: A, hl_SUBSET B (hl_IMAGE A B f (hl_closure_of A top s)) (hl_closure_of B top' (hl_IMAGE A B f s)) = 1.
Admitted.

// HOL Light:  / CONTINUOUS_MAP_EQ_IMAGE_CLOSURE_SUBSET_ALT   (hash md5:985eae71758d1f24661e99b7b4d92794)
Theorem hlt_CONTINUOUS_MAP_EQ_IMAGE_CLOSURE_SUBSET_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> forall s :e 2 :^: A, hl_SUBSET A s (hl_topspace A top) = 1 -> hl_SUBSET B (hl_IMAGE A B f (hl_closure_of A top s)) (hl_closure_of B top' (hl_IMAGE A B f s)) = 1.
Admitted.

// HOL Light:  / CONTINUOUS_MAP_EQ_IMAGE_CLOSURE_SUBSET_GEN   (hash md5:248c3c73a5b72cba108ea904c6b86917)
Theorem hlt_CONTINUOUS_MAP_EQ_IMAGE_CLOSURE_SUBSET_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_topspace A top)) (hl_topspace B top') = 1 /\ forall s :e 2 :^: A, hl_SUBSET B (hl_IMAGE A B f (hl_closure_of A top s)) (hl_closure_of B top' (hl_IMAGE A B f s)) = 1.
Admitted.

// HOL Light:  / CONTINUOUS_MAP_EQ_INTERIOR_PREIMAGE_SUBSET   (hash md5:9e7ede10b1571a5b62367b62bb5e3075)
Theorem hlt_CONTINUOUS_MAP_EQ_INTERIOR_PREIMAGE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_topspace A top)) (hl_topspace B top') = 1 /\ forall t :e 2 :^: B, hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_1302 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1302 (if hl_IN A x (hl_topspace A top) = 1 /\ hl_IN B (f x) (hl_interior_of B top' t) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_interior_of A top (hl_GSPEC A (fun GEN_PVAR_1303 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1303 (if hl_IN A x (hl_topspace A top) = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light:  / CONTINUOUS_MAP_EQ_INTERIOR_PREIMAGE_SUBSET_ALT   (hash md5:9ea11d163816ce63d5ce3816087aa1a4)
Theorem hlt_CONTINUOUS_MAP_EQ_INTERIOR_PREIMAGE_SUBSET_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_topspace A top)) (hl_topspace B top') = 1 /\ forall t :e 2 :^: B, hl_SUBSET B t (hl_topspace B top') = 1 -> hl_SUBSET A (hl_GSPEC A (fun GEN_PVAR_1304 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1304 (if hl_IN A x (hl_topspace A top) = 1 /\ hl_IN B (f x) (hl_interior_of B top' t) = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_interior_of A top (hl_GSPEC A (fun GEN_PVAR_1305 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_1305 (if hl_IN A x (hl_topspace A top) = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light:  / CONTINUOUS_WITHIN_SEQUENTIALLY_ALT   (hash md5:4a13dbc5847d1e9786ca96fcdb2793c2)
Theorem hlt_CONTINUOUS_WITHIN_SEQUENTIALLY_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_continuous (hl_ty_cart R M) N f (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 <-> forall e1 :e R, forall x :e hl_ty_cart R M :^: omega, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ ((forall n :e omega, hl_IN (hl_ty_cart R M) (x n) (hl_DELETE (hl_ty_cart R M) s a) = 1) /\ (hl_tendsto omega M x a hl_sequentially = 1 /\ (forall m n :e omega, x m = x n <-> m = n))) -> exists n :e omega, hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f (x n)) (f a))) e1 = 1.
Admitted.

// HOL Light:  / CONTINUOUS_WITHIN_SEQUENTIALLY_INJ   (hash md5:cb1e660e38ee18415a478d281e5a792b)
Theorem hlt_CONTINUOUS_WITHIN_SEQUENTIALLY_INJ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_continuous (hl_ty_cart R M) N f (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 <-> forall x :e hl_ty_cart R M :^: omega, (forall n :e omega, hl_IN (hl_ty_cart R M) (x n) (hl_DELETE (hl_ty_cart R M) s a) = 1) /\ ((forall m n :e omega, x m = x n <-> m = n) /\ hl_tendsto omega M x a hl_sequentially = 1) -> hl_tendsto omega N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) omega f x) (f a) hl_sequentially = 1.
Admitted.

// HOL Light:  / CONVERGENT_BOUNDED_INCREASING   (hash md5:ce2cb05b8254996032e25974fd6ed2cd)
Theorem hlt_CONVERGENT_BOUNDED_INCREASING : forall s :e R :^: omega, forall b :e R, (forall m n :e omega, hl_le m n = 1 -> hl_real_le (s m) (s n) = 1) /\ (forall n :e omega, hl_real_le (hl_real_abs (s n)) b = 1) -> exists l :e R, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N :e omega, forall n :e omega, hl_le N n = 1 -> hl_real_lt (hl_real_abs (hl_real_sub (s n) l)) e1 = 1.
Admitted.

// HOL Light:  / CONVERGENT_BOUNDED_MONOTONE   (hash md5:af73175d949fbb35bd9f190f14a67238)
Theorem hlt_CONVERGENT_BOUNDED_MONOTONE : forall s :e R :^: omega, forall b :e R, (forall n :e omega, hl_real_le (hl_real_abs (s n)) b = 1) /\ ((forall m n :e omega, hl_le m n = 1 -> hl_real_le (s m) (s n) = 1) \/ (forall m n :e omega, hl_le m n = 1 -> hl_real_le (s n) (s m) = 1)) -> exists l :e R, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N :e omega, forall n :e omega, hl_le N n = 1 -> hl_real_lt (hl_real_abs (hl_real_sub (s n) l)) e1 = 1.
Admitted.

// HOL Light:  / CONVEX_ON_LEFT_SECANT   (hash md5:d2a452ec3287dc8d2ddf4c0d47cadbf4)
Theorem hlt_CONVEX_ON_LEFT_SECANT : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N f s = 1 <-> forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1) -> hl_real_le (hl_real_div (hl_real_sub (f x) (f a)) (hl_vector_norm N (hl_vector_sub N x a))) (hl_real_div (hl_real_sub (f b) (f a)) (hl_vector_norm N (hl_vector_sub N b a))) = 1.
Admitted.

// HOL Light:  / CONVEX_ON_LEFT_SECANT_MUL   (hash md5:bfcec7ac2e05948e9e96d96320f44a0d)
Theorem hlt_CONVEX_ON_LEFT_SECANT_MUL : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N f s = 1 <-> forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) -> hl_real_le (hl_real_mul (hl_real_sub (f x) (f a)) (hl_vector_norm N (hl_vector_sub N b a))) (hl_real_mul (hl_real_sub (f b) (f a)) (hl_vector_norm N (hl_vector_sub N x a))) = 1.
Admitted.

// HOL Light:  / CONVEX_ON_MID_SECANT   (hash md5:44cfd9394915a24b07b5d524be4de91b)
Theorem hlt_CONVEX_ON_MID_SECANT : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N f s = 1 <-> forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1) -> hl_real_le (hl_real_div (hl_real_sub (f x) (f a)) (hl_vector_norm N (hl_vector_sub N x a))) (hl_real_div (hl_real_sub (f b) (f x)) (hl_vector_norm N (hl_vector_sub N b x))) = 1.
Admitted.

// HOL Light:  / CONVEX_ON_MID_SECANT_MUL   (hash md5:98d08a89a9f411c64d745dd2848b94d7)
Theorem hlt_CONVEX_ON_MID_SECANT_MUL : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N f s = 1 <-> forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) -> hl_real_le (hl_real_mul (hl_real_sub (f x) (f a)) (hl_vector_norm N (hl_vector_sub N b x))) (hl_real_mul (hl_real_sub (f b) (f x)) (hl_vector_norm N (hl_vector_sub N x a))) = 1.
Admitted.

// HOL Light:  / CONVEX_ON_RIGHT_SECANT   (hash md5:4c2c674762a1df9b0bf783097b4a823d)
Theorem hlt_CONVEX_ON_RIGHT_SECANT : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N f s = 1 <-> forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1) -> hl_real_le (hl_real_div (hl_real_sub (f b) (f a)) (hl_vector_norm N (hl_vector_sub N b a))) (hl_real_div (hl_real_sub (f b) (f x)) (hl_vector_norm N (hl_vector_sub N b x))) = 1.
Admitted.

// HOL Light:  / CONVEX_ON_RIGHT_SECANT_MUL   (hash md5:e2601f7b43bc8b50c7bf308deef45730)
Theorem hlt_CONVEX_ON_RIGHT_SECANT_MUL : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N f s = 1 <-> forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) -> hl_real_le (hl_real_mul (hl_real_sub (f b) (f a)) (hl_vector_norm N (hl_vector_sub N b x))) (hl_real_mul (hl_real_sub (f b) (f x)) (hl_vector_norm N (hl_vector_sub N b a))) = 1.
Admitted.

// HOL Light:  / COUNTABLE_INTEGER   (hash md5:f5b4ebeeeae932052a582fa8f5824792)
Theorem hlt_COUNTABLE_INTEGER : hl_COUNTABLE R hl_integer = 1.
Admitted.

// HOL Light:  / COUNTABLE_INTEGER_COORDINATES   (hash md5:190bbdf4d02e6026d9400591958daf01)
Theorem hlt_COUNTABLE_INTEGER_COORDINATES : forall N:set, N <> Empty -> hl_COUNTABLE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_646 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_646 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_integer (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / COUNTABLE_INTERSECTION_OF_RELATIVE_TO   (hash md5:f199dab7bbd19bef9d4c28baf9201fd2)
Theorem hlt_COUNTABLE_INTERSECTION_OF_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, hl_relative_to A (hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P) u = hl_relative_to A (hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_relative_to A P u)) u.
Admitted.

// HOL Light:  / COUNTABLE_INTERSECTION_OF_RELATIVE_TO_ALT   (hash md5:40c7cfe407bb4edcea4ce637e22b07f7)
Theorem hlt_COUNTABLE_INTERSECTION_OF_RELATIVE_TO_ALT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u s :e 2 :^: A, P u = 1 -> (hl_relative_to A (hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P) u s = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 /\ hl_SUBSET A s u = 1).
Admitted.

// HOL Light:  / COUNTABLE_LOCAL_MAXIMA   (hash md5:4b2f5fe1f78245465e3d9e94cb6b210b)
Theorem hlt_COUNTABLE_LOCAL_MAXIMA : forall f :e R :^: R, hl_COUNTABLE R (hl_GSPEC R (fun GEN_PVAR_652 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_652 (if exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x' :e R, hl_real_lt (hl_real_abs (hl_real_sub x' x)) d = 1 -> hl_real_le (f x') (f x) = 1 then 1 else 0) (f x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / COUNTABLE_LOCAL_MINIMA   (hash md5:9b8322135303afb9258606bb315ce74b)
Theorem hlt_COUNTABLE_LOCAL_MINIMA : forall f :e R :^: R, hl_COUNTABLE R (hl_GSPEC R (fun GEN_PVAR_653 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_653 (if exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x' :e R, hl_real_lt (hl_real_abs (hl_real_sub x' x)) d = 1 -> hl_real_le (f x) (f x') = 1 then 1 else 0) (f x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / COUNTABLE_RATIONAL   (hash md5:61c71b2a6e281a961ffdb38c68a9f192)
Theorem hlt_COUNTABLE_RATIONAL : hl_COUNTABLE R hl_rational = 1.
Admitted.

// HOL Light:  / COUNTABLE_RATIONAL_COORDINATES   (hash md5:86725fd7dcefb05e9ca7dfaebc141ed1)
Theorem hlt_COUNTABLE_RATIONAL_COORDINATES : forall N:set, N <> Empty -> hl_COUNTABLE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_648 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_648 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_rational (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / COUNTABLE_STRICT_LOCAL_MAXIMA   (hash md5:a763ba532920fbac858a5b19283d83e3)
Theorem hlt_COUNTABLE_STRICT_LOCAL_MAXIMA : forall f :e R :^: R, hl_COUNTABLE R (hl_GSPEC R (fun GEN_PVAR_655 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_655 (if exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x' :e R, hl_real_lt (hl_real_abs (hl_real_sub x' x)) d = 1 /\ ~ x' = x -> hl_real_lt (f x') (f x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / COUNTABLE_STRICT_LOCAL_MINIMA   (hash md5:dfc7c5e1dda6efbb03b1420f00f3efa6)
Theorem hlt_COUNTABLE_STRICT_LOCAL_MINIMA : forall f :e R :^: R, hl_COUNTABLE R (hl_GSPEC R (fun GEN_PVAR_656 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_656 (if exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x' :e R, hl_real_lt (hl_real_abs (hl_real_sub x' x)) d = 1 /\ ~ x' = x -> hl_real_lt (f x) (f x') = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / COUNTABLE_UNION_OF_RELATIVE_TO   (hash md5:176191deec6a99bb6a56ea7865d144a5)
Theorem hlt_COUNTABLE_UNION_OF_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, hl_relative_to A (hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P) u = hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_relative_to A P u).
Admitted.

// HOL Light:  / CYCLIC_PROD_INTEGER_MOD_GROUP   (hash md5:584367bec6acc91bd0054f712907ce06)
Theorem hlt_CYCLIC_PROD_INTEGER_MOD_GROUP : forall m n :e omega, hl_cyclic_group (hl_ty_int :*: hl_ty_int) (hl_prod_group hl_ty_int hl_ty_int (hl_integer_mod_group m) (hl_integer_mod_group n)) = 1 <-> hl_num_coprime (hl_pair omega omega m n) = 1.
Admitted.

// HOL Light:  / DIMENSION_DIMENSION_LE   (hash md5:d848ec613f1945763fc021e37961b2c8)
Theorem hlt_DIMENSION_DIMENSION_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> hl_dimension_le (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) n = 1.
Admitted.

// HOL Light:  / DIMENSION_LE_AFF_DIM   (hash md5:6067c21d4d39e801a0974c20155719b6)
Theorem hlt_DIMENSION_LE_AFF_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_dimension N s) (hl_aff_dim N s) = 1.
Admitted.

// HOL Light:  / DIMENSION_LE_EQ   (hash md5:b2d359bbd935c1c8a4ea7652ba87e163)
Theorem hlt_DIMENSION_LE_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ forall v :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_open N v = 1 /\ (hl_IN (hl_ty_cart R N) a v = 1 /\ hl_IN (hl_ty_cart R N) a s = 1) -> exists u :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ (hl_open N u = 1 /\ hl_int_le (hl_dimension N (hl_INTER (hl_ty_cart R N) s (hl_frontier N u))) (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1)).
Admitted.

// HOL Light:  / EMPTY_AS_REAL_INTERVAL   (hash md5:02ed7d225f7e2c6ab830a6226b6e1e98)
Theorem hlt_EMPTY_AS_REAL_INTERVAL : hl_EMPTY R = hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_NIL (R :*: R))).
Admitted.

// HOL Light:  / ENDS_IN_REAL_INTERVAL   (hash md5:f748a83c0e7a9a67e69d8e1d2a855083)
Theorem hlt_ENDS_IN_REAL_INTERVAL : (forall a b :e R, hl_IN R a (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) = 1 <-> ~ hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R))) = hl_EMPTY R) /\ ((forall a b :e R, hl_IN R b (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) = 1 <-> ~ hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R))) = hl_EMPTY R) /\ ((forall a b :e R, ~ hl_IN R a (hl_open_real_interval (hl_pair R R a b)) = 1) /\ forall a b :e R, ~ hl_IN R b (hl_open_real_interval (hl_pair R R a b)) = 1)).
Admitted.

// HOL Light:  / ENDS_IN_UNIT_REAL_INTERVAL   (hash md5:efb14126d5c4e386d794328c5cd2c942)
Theorem hlt_ENDS_IN_UNIT_REAL_INTERVAL : hl_IN R (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (R :*: R)))) = 1 /\ hl_IN R (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (R :*: R)))) = 1.
Admitted.

// HOL Light:  / EPSILON_DELTA_MINIMAL   (hash md5:15ee450d470ede4e2eff57ea8b641869)
Theorem hlt_EPSILON_DELTA_MINIMAL : forall A:set, A <> Empty -> forall P :e 2 :^: A :^: R, forall Q :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_631 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_631 (Q x) x = 1 then 1 else 0)) = 1 /\ ((forall d e1 :e R, forall x :e A, Q x = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_lt e1 d = 1) -> P d x = 1 -> P e1 x = 1) /\ (forall x :e A, Q x = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ P d x = 1)) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x :e A, Q x = 1 -> P d x = 1.
Admitted.

// HOL Light:  / EVENTUALLY_ATPOINTOF_WITHIN_SEQUENTIALLY   (hash md5:f054ae7a1103797b2d0f5445b47c935e)
Theorem hlt_EVENTUALLY_ATPOINTOF_WITHIN_SEQUENTIALLY : forall A:set, A <> Empty -> forall met :e hl_ty_metric A, forall P s :e 2 :^: A, forall a :e A, hl_eventually A P (hl_within A (hl_atpointof A (hl_mtopology A met) a) s) = 1 <-> forall x :e A :^: omega, (forall n :e omega, hl_IN A (x n) (hl_DELETE A (hl_INTER A s (hl_mspace A met)) a) = 1) /\ hl_limit A omega (hl_mtopology A met) x a hl_sequentially = 1 -> hl_eventually omega (fun n :e omega => P (x n)) hl_sequentially = 1.
Admitted.

// HOL Light:  / EVENTUALLY_ATPOINTOF_WITHIN_SEQUENTIALLY_DECREASING   (hash md5:aad4d33b89c7d473fdee2074e0496f7f)
Theorem hlt_EVENTUALLY_ATPOINTOF_WITHIN_SEQUENTIALLY_DECREASING : forall A:set, A <> Empty -> forall met :e hl_ty_metric A, forall P s :e 2 :^: A, forall a :e A, hl_eventually A P (hl_within A (hl_atpointof A (hl_mtopology A met) a) s) = 1 <-> forall x :e A :^: omega, (forall n :e omega, hl_IN A (x n) (hl_DELETE A (hl_INTER A s (hl_mspace A met)) a) = 1) /\ ((forall m n :e omega, hl_lt m n = 1 -> hl_real_lt (hl_mdist A met (hl_pair A A (x n) a)) (hl_mdist A met (hl_pair A A (x m) a)) = 1) /\ ((forall m n :e omega, x m = x n <-> m = n) /\ hl_limit A omega (hl_mtopology A met) x a hl_sequentially = 1)) -> hl_eventually omega (fun n :e omega => P (x n)) hl_sequentially = 1.
Admitted.

// HOL Light:  / EVENTUALLY_ATPOINTOF_WITHIN_SEQUENTIALLY_INJ   (hash md5:907bb2d49fe31f1a548a9575976046e8)
Theorem hlt_EVENTUALLY_ATPOINTOF_WITHIN_SEQUENTIALLY_INJ : forall A:set, A <> Empty -> forall met :e hl_ty_metric A, forall P s :e 2 :^: A, forall a :e A, hl_eventually A P (hl_within A (hl_atpointof A (hl_mtopology A met) a) s) = 1 <-> forall x :e A :^: omega, (forall n :e omega, hl_IN A (x n) (hl_DELETE A (hl_INTER A s (hl_mspace A met)) a) = 1) /\ ((forall m n :e omega, x m = x n <-> m = n) /\ hl_limit A omega (hl_mtopology A met) x a hl_sequentially = 1) -> hl_eventually omega (fun n :e omega => P (x n)) hl_sequentially = 1.
Admitted.

// HOL Light:  / EXISTS_DIFF   (hash md5:7859370bccab7dc8be1d8dbd9464ea9f)
Theorem hlt_EXISTS_DIFF : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (exists s :e 2 :^: A, P (hl_DIFF A (hl_UNIV A) s) = 1) <-> exists s :e 2 :^: A, P s = 1.
Admitted.

// HOL Light:  / EXISTS_MATRIFY   (hash md5:3b8d7ac1201e43c74ef27dc03cb1624a)
Theorem hlt_EXISTS_MATRIFY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: hl_ty_cart (hl_ty_cart A B) C, (exists x :e hl_ty_cart (hl_ty_cart A B) C, P x = 1) <-> exists x :e hl_ty_cart A (hl_ty_finite_prod C B), P (hl_matrify A C B x) = 1.
Admitted.

// HOL Light:  / EXISTS_VECTORIZE   (hash md5:0d832bd30fef52490f0e3b27205440e6)
Theorem hlt_EXISTS_VECTORIZE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: hl_ty_cart A (hl_ty_finite_prod B C), (exists x :e hl_ty_cart A (hl_ty_finite_prod B C), P x = 1) <-> exists x :e hl_ty_cart (hl_ty_cart A C) B, P (hl_vectorize A C B x) = 1.
Admitted.

// HOL Light:  / FGSIGMA_BAIRE_PREIMAGE_OPEN_ALT   (hash md5:d19a902fe42f2d3792616ea31ac65367)
Theorem hlt_FGSIGMA_BAIRE_PREIMAGE_OPEN_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall u :e 2 :^: hl_ty_cart R 1, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_baire N 1 (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_UNIV (hl_ty_cart R N)) f = 1 /\ hl_open 1 u = 1) -> hl_UNION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_INTERSECTION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_o (hl_ty_cart R 1 :^: hl_ty_cart R N) 2 (2 :^: hl_ty_cart R N) (hl_baire N 1 n (hl_UNIV (hl_ty_cart R N))) (hl_indicator N))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4115 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4115 (hl_IN (hl_ty_cart R 1) (f x) u) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / FINITE_CYCLIC_SUBGROUP   (hash md5:7ccb7e7f950ae87dda0054de3273d039)
Theorem hlt_FINITE_CYCLIC_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_FINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 <-> exists n :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_group_pow A G x n = hl_group_id A G).
Admitted.

// HOL Light:  / FINITE_CYCLIC_SUBGROUP_ALT   (hash md5:67a33657aa4fc7b8a14939099a7258fc)
Theorem hlt_FINITE_CYCLIC_SUBGROUP_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_FINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 <-> exists n :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_group_zpow A G x n = hl_group_id A G).
Admitted.

// HOL Light:  / FINITE_INDEX_NUMSEG_SPECIAL   (hash md5:219b67a8148005e9fc2d612bc6bb98b5)
Theorem hlt_FINITE_INDEX_NUMSEG_SPECIAL : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> exists f :e A :^: omega, (forall i j :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_CARD A s)) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_CARD A s)) = 1 /\ f i = f j) -> i = j) /\ (s = hl_IMAGE omega A f (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_CARD A s)) /\ f (hl_NUMERAL (hl_BIT1 hl_zero)) = a).
Admitted.

// HOL Light:  / FINITE_INTERSECTION_OF_RELATIVE_TO   (hash md5:cbd0aacd3f9b9a366b1401533ef5a013)
Theorem hlt_FINITE_INTERSECTION_OF_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, hl_relative_to A (hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P) u = hl_relative_to A (hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) (hl_relative_to A P u)) u.
Admitted.

// HOL Light:  / FINITE_INTERSECTION_OF_RELATIVE_TO_ALT   (hash md5:ff6de74e876b774c5a70cfeb1ef84f03)
Theorem hlt_FINITE_INTERSECTION_OF_RELATIVE_TO_ALT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u s :e 2 :^: A, P u = 1 -> (hl_relative_to A (hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P) u s = 1 <-> hl_INTERSECTION_OF A (hl_FINITE (2 :^: A)) P s = 1 /\ hl_SUBSET A s u = 1).
Admitted.

// HOL Light:  / FINITE_INTER_NUMSEG   (hash md5:f5b07b1956f4d123bb1dfd43d875e98c)
Theorem hlt_FINITE_INTER_NUMSEG : forall s :e 2 :^: omega, forall m n :e omega, hl_FINITE omega (hl_INTER omega s (hl_numseg m n)) = 1.
Admitted.

// HOL Light:  / FINITE_UNION_OF_RELATIVE_TO   (hash md5:d2e414dea5fb1d5aeb783fe988da920a)
Theorem hlt_FINITE_UNION_OF_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, hl_relative_to A (hl_UNION_OF A (hl_FINITE (2 :^: A)) P) u = hl_UNION_OF A (hl_FINITE (2 :^: A)) (hl_relative_to A P u).
Admitted.

// HOL Light:  / FORALL_DIFF   (hash md5:2db9d4e153e36aa0f6b1eb8c3cefed1e)
Theorem hlt_FORALL_DIFF : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, P (hl_DIFF A (hl_UNIV A) s) = 1) <-> forall s :e 2 :^: A, P s = 1.
Admitted.

// HOL Light:  / FORALL_DIFF_ALT   (hash md5:e67eec2c1b4fbdc7ecaeff14b2b6b8a3)
Theorem hlt_FORALL_DIFF_ALT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, (forall s :e 2 :^: A, hl_SUBSET A s u = 1 -> P (hl_DIFF A u s) = 1) <-> forall s :e 2 :^: A, hl_SUBSET A s u = 1 -> P s = 1.
Admitted.

// HOL Light:  / FORALL_DIFF_GEN   (hash md5:cb7f859259bbd06218007baa4f116537)
Theorem hlt_FORALL_DIFF_GEN : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, (forall s :e 2 :^: A, P (hl_DIFF A u s) = 1) <-> forall s :e 2 :^: A, hl_SUBSET A s u = 1 -> P s = 1.
Admitted.

// HOL Light:  / FORALL_MATRIFY   (hash md5:f1abbb15565e193b79ae12a618a41fad)
Theorem hlt_FORALL_MATRIFY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: hl_ty_cart (hl_ty_cart A B) C, (forall x :e hl_ty_cart (hl_ty_cart A B) C, P x = 1) <-> forall x :e hl_ty_cart A (hl_ty_finite_prod C B), P (hl_matrify A C B x) = 1.
Admitted.

// HOL Light:  / FORALL_POS_MONO   (hash md5:c76b3277d81c6b472efa427f79165f25)
Theorem hlt_FORALL_POS_MONO : forall P :e 2 :^: R, (forall d e1 :e R, hl_real_lt d e1 = 1 /\ P d = 1 -> P e1 = 1) /\ (forall n :e omega, ~ n = hl_NUMERAL hl_zero -> P (hl_real_inv (hl_real_of_num n)) = 1) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> P e1 = 1.
Admitted.

// HOL Light:  / FORALL_POS_MONO_1   (hash md5:f805c19e5ec0a3ac0a713ece2b06da5c)
Theorem hlt_FORALL_POS_MONO_1 : forall P :e 2 :^: R, (forall d e1 :e R, hl_real_lt d e1 = 1 /\ P d = 1 -> P e1 = 1) /\ (forall n :e omega, P (hl_real_inv (hl_real_add (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> P e1 = 1.
Admitted.

// HOL Light:  / FORALL_POS_MONO_1_EQ   (hash md5:2cb7e43295639b1ab247d4dd85b15b7f)
Theorem hlt_FORALL_POS_MONO_1_EQ : forall P :e 2 :^: R, (forall d e1 :e R, hl_real_lt d e1 = 1 /\ P d = 1 -> P e1 = 1) -> ((forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> P e1 = 1) <-> forall n :e omega, P (hl_real_inv (hl_real_add (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1).
Admitted.

// HOL Light:  / FORALL_POS_MONO_EQ   (hash md5:27570b5aca816f783c257d5283d8fab9)
Theorem hlt_FORALL_POS_MONO_EQ : forall P :e 2 :^: R, (forall d e1 :e R, hl_real_lt d e1 = 1 /\ P d = 1 -> P e1 = 1) -> ((forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> P e1 = 1) <-> forall n :e omega, ~ n = hl_NUMERAL hl_zero -> P (hl_real_inv (hl_real_of_num n)) = 1).
Admitted.

// HOL Light:  / FORALL_RELATIVE_TO   (hash md5:00e19968a9a4b9f5a27163da54ad1782)
Theorem hlt_FORALL_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, forall Q :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, hl_relative_to A P u s = 1 -> Q s = 1) <-> forall s :e 2 :^: A, P s = 1 -> Q (hl_INTER A u s) = 1.
Admitted.

// HOL Light:  / FORALL_SUC   (hash md5:ec141ef28858e6c926cc0bd3a16c22d8)
Theorem hlt_FORALL_SUC : forall P :e 2 :^: omega, (forall n :e omega, ~ n = hl_NUMERAL hl_zero -> P n = 1) <-> forall n :e omega, P (hl_SUC n) = 1.
Admitted.

// HOL Light:  / FORALL_VECTORIZE   (hash md5:4e14865e4dd21d209c6e0c6e13465df7)
Theorem hlt_FORALL_VECTORIZE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: hl_ty_cart A (hl_ty_finite_prod B C), (forall x :e hl_ty_cart A (hl_ty_finite_prod B C), P x = 1) <-> forall x :e hl_ty_cart (hl_ty_cart A C) B, P (hl_vectorize A C B x) = 1.
Admitted.

// HOL Light:  / FROM_0   (hash md5:d31e483967616faab1b8c8c40f510466)
Theorem hlt_FROM_0 : hl_from (hl_NUMERAL hl_zero) = hl_UNIV omega.
Admitted.

// HOL Light:  / FROM_INTER_NUMSEG   (hash md5:5787c9efbe460c633a51a8f3d23ac376)
Theorem hlt_FROM_INTER_NUMSEG : forall k n :e omega, hl_INTER omega (hl_from k) (hl_numseg (hl_NUMERAL hl_zero) n) = hl_numseg k n.
Admitted.

// HOL Light:  / FROM_INTER_NUMSEG_GEN   (hash md5:1aeb6524a0f578414b334f234e462152)
Theorem hlt_FROM_INTER_NUMSEG_GEN : forall k m n :e omega, hl_INTER omega (hl_from k) (hl_numseg m n) = hl_COND (2 :^: omega) (hl_lt m k) (hl_numseg k n) (hl_numseg m n).
Admitted.

// HOL Light:  / FROM_INTER_NUMSEG_MAX   (hash md5:13c8116cf492d4a917d070b5b8f1a6c8)
Theorem hlt_FROM_INTER_NUMSEG_MAX : forall m n p :e omega, hl_INTER omega (hl_from p) (hl_numseg m n) = hl_numseg (hl_MAX p m) n.
Admitted.

// HOL Light:  / FROM_MONO   (hash md5:b216bfaae7f8894517311ed5a19f3937)
Theorem hlt_FROM_MONO : forall m n :e omega, hl_SUBSET omega (hl_from m) (hl_from n) = 1 <-> hl_le n m = 1.
Admitted.

// HOL Light:  / FROM_NONEMPTY   (hash md5:79d49994d73c9120a1cfb8a6c5b75cf1)
Theorem hlt_FROM_NONEMPTY : forall n :e omega, ~ hl_from n = hl_EMPTY omega.
Admitted.

// HOL Light:  / FSIGMA_REDUCTION_GEN   (hash md5:7b379f7c1eb0633b9b2b94c3ce9f7d2e)
Theorem hlt_FSIGMA_REDUCTION_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, forall k :e omega, (forall n :e omega, hl_UNION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_o (hl_ty_cart R 1 :^: hl_ty_cart R N) 2 (2 :^: hl_ty_cart R N) (hl_baire N 1 k (hl_UNIV (hl_ty_cart R N))) (hl_indicator N)) (s n) = 1) /\ hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4116 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4116 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0)) = hl_UNIV (hl_ty_cart R N) -> exists t :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_baire N 1 k (hl_UNIV (hl_ty_cart R N)) (hl_indicator N (t n)) = 1) /\ ((forall n :e omega, hl_SUBSET (hl_ty_cart R N) (t n) (s n) = 1) /\ (hl_pairwise omega (fun m :e omega => fun n :e omega => hl_DISJOINT (hl_ty_cart R N) (t m) (t n)) (hl_UNIV omega) = 1 /\ hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4117 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4117 (hl_IN omega n (hl_UNIV omega)) (t n) = 1 then 1 else 0)) = hl_UNIV (hl_ty_cart R N))).
Admitted.

// HOL Light:  / GDELTA_SEPARATION_GEN   (hash md5:829414dff8cb9825a07327df2f46d71a)
Theorem hlt_GDELTA_SEPARATION_GEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall k :e omega, hl_INTERSECTION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_o (hl_ty_cart R 1 :^: hl_ty_cart R N) 2 (2 :^: hl_ty_cart R N) (hl_baire N 1 k (hl_UNIV (hl_ty_cart R N))) (hl_indicator N)) s = 1 /\ (hl_INTERSECTION_OF (hl_ty_cart R N) (hl_COUNTABLE (2 :^: hl_ty_cart R N)) (hl_o (hl_ty_cart R 1 :^: hl_ty_cart R N) 2 (2 :^: hl_ty_cart R N) (hl_baire N 1 k (hl_UNIV (hl_ty_cart R N))) (hl_indicator N)) t = 1 /\ hl_DISJOINT (hl_ty_cart R N) s t = 1) -> exists u :e 2 :^: hl_ty_cart R N, hl_baire N 1 k (hl_UNIV (hl_ty_cart R N)) (hl_indicator N u) = 1 /\ (hl_SUBSET (hl_ty_cart R N) s u = 1 /\ hl_DISJOINT (hl_ty_cart R N) u t = 1).
Admitted.

// HOL Light:  / GENERAL_REDUCTION_THEOREM   (hash md5:21453985dbd27d3c1579c5d73e0a1dbb)
Theorem hlt_GENERAL_REDUCTION_THEOREM : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), P (hl_EMPTY A) = 1 /\ ((forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_UNION A s t) = 1) /\ (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_DIFF A s t) = 1)) -> forall s :e 2 :^: A :^: omega, (forall n :e omega, hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (s n) = 1) -> exists t :e 2 :^: A :^: omega, (forall n :e omega, hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (t n) = 1) /\ ((forall n :e omega, hl_SUBSET A (t n) (s n) = 1) /\ (hl_pairwise omega (fun m :e omega => fun n :e omega => hl_DISJOINT A (t m) (t n)) (hl_UNIV omega) = 1 /\ hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_677 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_677 (hl_IN omega n (hl_UNIV omega)) (t n) = 1 then 1 else 0)) = hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_678 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_678 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0)))).
Admitted.

// HOL Light:  / GENERAL_REDUCTION_THEOREM_2   (hash md5:f5e0fb736c2f6b08dc334c551d3ca0dc)
Theorem hlt_GENERAL_REDUCTION_THEOREM_2 : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), P (hl_EMPTY A) = 1 /\ ((forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_UNION A s t) = 1) /\ (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_DIFF A s t) = 1)) -> forall s t :e 2 :^: A, hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 /\ hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P t = 1 -> exists s' t' :e 2 :^: A, hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s' = 1 /\ (hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P t' = 1 /\ (hl_SUBSET A s' s = 1 /\ (hl_SUBSET A t' t = 1 /\ (hl_DISJOINT A s' t' = 1 /\ hl_UNION A s' t' = hl_UNION A s t)))).
Admitted.

// HOL Light:  / GE_REFL   (hash md5:83c5b0f5937aae6185b2cf1affe4c820)
Theorem hlt_GE_REFL : forall n :e omega, hl_ge n n = 1.
Admitted.

// HOL Light:  / GROUP_ENDOMORPHISM_INTEGER_GROUP_EQ   (hash md5:30186b5b32bffe655be53413c027ba55)
Theorem hlt_GROUP_ENDOMORPHISM_INTEGER_GROUP_EQ : forall f :e hl_ty_int :^: hl_ty_int, hl_group_endomorphism hl_ty_int hl_integer_group f = 1 <-> exists c :e hl_ty_int, f = fun x :e hl_ty_int => hl_int_mul c x.
Admitted.

// HOL Light:  / GROUP_ENDOMORPHISM_INTEGER_GROUP_EQ_ALT   (hash md5:60428dd9ce9d2eedb5a3f99292c5b918)
Theorem hlt_GROUP_ENDOMORPHISM_INTEGER_GROUP_EQ_ALT : forall f :e hl_ty_int :^: hl_ty_int, hl_group_endomorphism hl_ty_int hl_integer_group f = 1 <-> hl_exists_unique hl_ty_int (fun c :e hl_ty_int => if f = fun x :e hl_ty_int => hl_int_mul c x then 1 else 0) = 1.
Admitted.

// HOL Light:  / GROUP_HOMOMORPHISM_HOM_BOUNDARY   (hash md5:047e9fd9827695f9c3a97153b598d7bc)
Theorem hlt_GROUP_HOMOMORPHISM_HOM_BOUNDARY : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_group_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) = 1.
Admitted.

// HOL Light:  / GROUP_HOMOMORPHISM_HOM_INDUCED   (hash md5:f88468d50ce6e0a267a982cde24f652e)
Theorem hlt_GROUP_HOMOMORPHISM_HOM_INDUCED : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, hl_group_homomorphism (2 :^: hl_ty_frag (A :^: (R :^: omega))) (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_pair (hl_ty_group (2 :^: hl_ty_frag (A :^: (R :^: omega)))) (hl_ty_group (2 :^: hl_ty_frag (B :^: (R :^: omega)))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f) = 1.
Admitted.

// HOL Light:  / GROUP_ID   (hash md5:fdde7d3d816227fe1cd4bc9701182ec6)
Theorem hlt_GROUP_ID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_IN A (hl_group_id A G) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light:  / GROUP_INV   (hash md5:f7248da217338601c3b2bb7a5c7230f1)
Theorem hlt_GROUP_INV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_IN A (hl_group_inv A G x) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light:  / GROUP_ISOMORPHISM_PROD_INTEGER_MOD_GROUP   (hash md5:248ea3c69d55c374b36e2de81b78f30d)
Theorem hlt_GROUP_ISOMORPHISM_PROD_INTEGER_MOD_GROUP : forall m n :e omega, hl_group_isomorphism hl_ty_int (hl_ty_int :*: hl_ty_int) (hl_pair (hl_ty_group hl_ty_int) (hl_ty_group (hl_ty_int :*: hl_ty_int)) (hl_integer_mod_group (hl_mul m n)) (hl_prod_group hl_ty_int hl_ty_int (hl_integer_mod_group m) (hl_integer_mod_group n))) (fun a :e hl_ty_int => hl_pair hl_ty_int hl_ty_int (hl_rem a (hl_int_of_num m)) (hl_rem a (hl_int_of_num n))) = 1 <-> hl_num_coprime (hl_pair omega omega m n) = 1.
Admitted.

// HOL Light:  / GROUP_MUL   (hash md5:00f62fa72ab09ecc3dd61b8cb0402159)
Theorem hlt_GROUP_MUL : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ hl_IN A y (hl_group_carrier A G) = 1 -> hl_IN A (hl_group_mul A G x y) (hl_group_carrier A G) = 1.
Admitted.

// HOL Light:  / GROUP_MUL_ASSOC   (hash md5:334e070afca6b2708308c15d0fb58d7e)
Theorem hlt_GROUP_MUL_ASSOC : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x y z :e A, hl_IN A x (hl_group_carrier A G) = 1 /\ (hl_IN A y (hl_group_carrier A G) = 1 /\ hl_IN A z (hl_group_carrier A G) = 1) -> hl_group_mul A G x (hl_group_mul A G y z) = hl_group_mul A G (hl_group_mul A G x y) z.
Admitted.

// HOL Light:  / GROUP_MUL_LID   (hash md5:35e236930e76885ce10d543ea5221906)
Theorem hlt_GROUP_MUL_LID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_mul A G (hl_group_id A G) x = x.
Admitted.

// HOL Light:  / GROUP_MUL_LINV   (hash md5:1eca31812a233872a5f213d38eb8cdd8)
Theorem hlt_GROUP_MUL_LINV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_mul A G (hl_group_inv A G x) x = hl_group_id A G.
Admitted.

// HOL Light:  / GROUP_MUL_RID   (hash md5:266458f1e4d527db0c7c76bbef52ad28)
Theorem hlt_GROUP_MUL_RID : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_mul A G x (hl_group_id A G) = x.
Admitted.

// HOL Light:  / GROUP_MUL_RINV   (hash md5:5386c1a2aac418be6b0404153325ca93)
Theorem hlt_GROUP_MUL_RINV : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> hl_group_mul A G x (hl_group_inv A G x) = hl_group_id A G.
Admitted.

// HOL Light:  / HAS_BOUNDED_VARIATION_COMPOSE_INCREASING   (hash md5:f31c7cc7f5dd258174b00558c073db13)
Theorem hlt_HAS_BOUNDED_VARIATION_COMPOSE_INCREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ hl_has_bounded_variation_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f a) (f b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light:  / HAS_BOUNDED_VARIATION_COMPOSE_INCREASING_GEN   (hash md5:3ee8c66e27e38561179b81319a31d872)
Theorem hlt_HAS_BOUNDED_VARIATION_COMPOSE_INCREASING_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_is_interval 1 t = 1 /\ (hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) t = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ hl_has_bounded_variation_on N g t = 1))) -> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f) s = 1.
Admitted.

// HOL Light:  / HAS_BOUNDED_VARIATION_ON_VECTOR_VARIATION   (hash md5:fb65ed97bf01ccb99d53e6293a2e1f2e)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_VECTOR_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light:  / HAS_BOUNDED_VARIATION_REFLECT_EQ_INTERVAL   (hash md5:519c8ecdb988a11286d919678b6d17b9)
Theorem hlt_HAS_BOUNDED_VARIATION_REFLECT_EQ_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_neg 1 x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 v) (hl_vector_neg 1 u)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light:  / HAS_BOUNDED_VARIATION_TRANSLATION_EQ_INTERVAL   (hash md5:b00147de53ee3b97a8d2ece57f46c587)
Theorem hlt_HAS_BOUNDED_VARIATION_TRANSLATION_EQ_INTERVAL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 a x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_add 1 a u) (hl_vector_add 1 a v)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light:  / HAS_DOUBLE_INTEGRAL_CONVOLUTION   (hash md5:2f0002537f4cba5b4b7dbecd7dbf5964)
Theorem hlt_HAS_DOUBLE_INTEGRAL_CONVOLUTION : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_absolutely_integrable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1) -> hl_has_integral M Q (fun x :e hl_ty_cart R M => hl_integral M Q (hl_UNIV (hl_ty_cart R M)) (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y))) (bop (hl_integral M N (hl_UNIV (hl_ty_cart R M)) f) (hl_integral M P (hl_UNIV (hl_ty_cart R M)) g)) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light:  / HAS_INTEGRAL_PASTECART_SYM_UNIV   (hash md5:eea7901fe5722e0c1b7981824bf1cabc)
Theorem hlt_HAS_INTEGRAL_PASTECART_SYM_UNIV : forall A M N P:set, A <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e A, forall y :e hl_ty_cart R P, hl_has_integral (hl_ty_finite_sum N M) P (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) y (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum N M))) = 1 <-> hl_has_integral (hl_ty_finite_sum M N) P f y (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1.
Admitted.

// HOL Light:  / HAS_SIZE_1_EXISTS   (hash md5:1806194ef26c1e7c9a9b85d98e55fd4f)
Theorem hlt_HAS_SIZE_1_EXISTS : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_HAS_SIZE A s (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> hl_exists_unique A (fun x :e A => hl_IN A x s) = 1.
Admitted.

// HOL Light:  / HOMEOMORPHIC_BALLS   (hash md5:4e467514479975e06c63565c177050c2)
Theorem hlt_HOMEOMORPHIC_BALLS : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall d e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_homeomorphic N N (hl_ball N (hl_pair (hl_ty_cart R N) R a d)) (hl_ball N (hl_pair (hl_ty_cart R N) R b e1)) = 1.
Admitted.

// HOL Light:  / HOMEOMORPHIC_CBALLS   (hash md5:b1bb2c855fb5a8cf3343997c9fae1e1d)
Theorem hlt_HOMEOMORPHIC_CBALLS : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall d e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_homeomorphic N N (hl_cball N (hl_pair (hl_ty_cart R N) R a d)) (hl_cball N (hl_pair (hl_ty_cart R N) R b e1)) = 1.
Admitted.

// HOL Light:  / HOMEOMORPHIC_CONVEX_COMPACT_SETS   (hash md5:ca049e3f104603adba2deed331d1fd14)
Theorem hlt_HOMEOMORPHIC_CONVEX_COMPACT_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ (hl_compact M s = 1 /\ (hl_convex N t = 1 /\ (hl_compact N t = 1 /\ hl_aff_dim M s = hl_aff_dim N t))) -> hl_homeomorphic M N s t = 1.
Admitted.

// HOL Light:  / HOMEOMORPHIC_DIMENSION   (hash md5:3fa9232c1aeecfa6713cbc30d46f7913)
Theorem hlt_HOMEOMORPHIC_DIMENSION : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_homeomorphic M N s t = 1 -> hl_dimension M s = hl_dimension N t.
Admitted.

// HOL Light:  / HOMEOMORPHIC_RELATIVE_FRONTIERS_CONVEX_BOUNDED_SETS   (hash md5:7d94acda86388affd86a2e04ae096126)
Theorem hlt_HOMEOMORPHIC_RELATIVE_FRONTIERS_CONVEX_BOUNDED_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ (hl_bounded M s = 1 /\ (hl_convex N t = 1 /\ (hl_bounded N t = 1 /\ hl_aff_dim M s = hl_aff_dim N t))) -> hl_homeomorphic M N (hl_relative_frontier M s) (hl_relative_frontier N t) = 1.
Admitted.

// HOL Light:  / HOMEOMORPHIC_RELATIVE_INTERIORS_CONVEX_COMPACT_SETS   (hash md5:4afd3048987d8de777db8ec04f20452c)
Theorem hlt_HOMEOMORPHIC_RELATIVE_INTERIORS_CONVEX_COMPACT_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ (hl_compact M s = 1 /\ (hl_convex N t = 1 /\ (hl_compact N t = 1 /\ hl_aff_dim M s = hl_aff_dim N t))) -> hl_homeomorphic M N (hl_relative_interior M s) (hl_relative_interior N t) = 1.
Admitted.

// HOL Light:  / HOMEOMORPHIC_SPHERES   (hash md5:1046d5f84b90832c87fa48edd5396f99)
Theorem hlt_HOMEOMORPHIC_SPHERES : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall d e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_homeomorphic N N (hl_sphere N (hl_pair (hl_ty_cart R N) R a d)) (hl_sphere N (hl_pair (hl_ty_cart R N) R b e1)) = 1.
Admitted.

// HOL Light:  / HOMOTOPIC_LOOPS_NEARBY_EXPLICIT   (hash md5:818c61b792ef266897c7bf75a681d44b)
Theorem hlt_HOMOTOPIC_LOOPS_NEARBY_EXPLICIT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 /\ (hl_path N h = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ (hl_pathfinish N h = hl_pathstart N h /\ (forall t :e hl_ty_cart R 1, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ~ hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (h t) (g t))) (hl_vector_norm N (hl_vector_sub N (g t) x)) = 1)))) -> hl_homotopic_loops N s g h = 1.
Admitted.

// HOL Light:  / HOMOTOPIC_PATHS_NEARBY_EXPLICIT   (hash md5:936b1d8093bf9b93a4acd8ffc2db5264)
Theorem hlt_HOMOTOPIC_PATHS_NEARBY_EXPLICIT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R N, forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path N g = 1 /\ (hl_path N h = 1 /\ (hl_pathstart N h = hl_pathstart N g /\ (hl_pathfinish N h = hl_pathfinish N g /\ (forall t :e hl_ty_cart R 1, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ~ hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (h t) (g t))) (hl_vector_norm N (hl_vector_sub N (g t) x)) = 1)))) -> hl_homotopic_paths N s g h = 1.
Admitted.

// HOL Light:  / HOM_BOUNDARY   (hash md5:ffcfdf5cbcdd26d7371ab1dfd939f437)
Theorem hlt_HOM_BOUNDARY : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s) c) (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s)))) = 1.
Admitted.

// HOL Light:  / HOM_BOUNDARY_CHAIN_BOUNDARY   (hash md5:5afb5a8db1a8cd24f0dc04a21b714a56)
Theorem hlt_HOM_BOUNDARY_CHAIN_BOUNDARY : forall A:set, A <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1 /\ hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) p = 1 -> hl_hom_boundary A (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c) = hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_pair (hl_ty_topology A) (2 :^: A) (hl_subtopology A top s) (hl_EMPTY A))) (hl_chain_boundary A p c).
Admitted.

// HOL Light:  / HOM_BOUNDARY_DEFAULT   (hash md5:841147b3b8e542d0232bcda8c90da853)
Theorem hlt_HOM_BOUNDARY_DEFAULT : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), ~ hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) c (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1 -> hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s) c = hl_group_id (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_homology_group A (hl_pair hl_ty_int (hl_ty_topology A) (hl_int_sub p (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_subtopology A top s))).
Admitted.

// HOL Light:  / HOM_BOUNDARY_RESTRICT   (hash md5:62a8148849543bf0abdb8515515a20e4)
Theorem hlt_HOM_BOUNDARY_RESTRICT : forall A:set, A <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top s) = hl_hom_boundary A p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s)).
Admitted.

// HOL Light:  / HOM_BOUNDARY_TRIVIAL   (hash md5:d2635e3bb5622fe8f116b1e103927993)
Theorem hlt_HOM_BOUNDARY_TRIVIAL : forall A:set, A <> Empty -> forall p :e hl_ty_int, hl_int_le p (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hl_hom_boundary A p = fun q :e hl_ty_topology A :*: 2 :^: A => fun r :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) => hl_ARB (2 :^: hl_ty_frag (A :^: (R :^: omega))).
Admitted.

// HOL Light:  / HOM_INDUCED   (hash md5:0392f272930630c5ef3a8e0c3e964d15)
Theorem hlt_HOM_INDUCED : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall f :e B :^: A, forall t :e 2 :^: B, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), hl_IN (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f c) (hl_group_carrier (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)))) = 1.
Admitted.

// HOL Light:  / HOM_INDUCED_CHAIN_MAP_GEN   (hash md5:95b5f4d8de2304e4fabecbee8cfbf4e8)
Theorem hlt_HOM_INDUCED_CHAIN_MAP_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall p :e omega, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, forall c :e hl_ty_frag (A :^: (R :^: omega)), hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f (hl_INTER A (hl_topspace A top) s)) t = 1 /\ hl_singular_relcycle A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c = 1) -> hl_hom_induced A B (hl_int_of_num p) (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f (hl_homologous_rel A (hl_pair omega (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)) c) = hl_homologous_rel B (hl_pair omega (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t)) (hl_chain_map A B p f c).
Admitted.

// HOL Light:  / HOM_INDUCED_DEFAULT   (hash md5:e8b55919a6da4e10a4a26b3936287dbf)
Theorem hlt_HOM_INDUCED_DEFAULT : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, forall f :e B :^: A, forall c :e 2 :^: hl_ty_frag (A :^: (R :^: omega)), ~ (hl_continuous_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 /\ (hl_SUBSET B (hl_IMAGE A B f (hl_INTER A (hl_topspace A top) s)) t = 1 /\ hl_IN (2 :^: hl_ty_frag (A :^: (R :^: omega))) c (hl_group_carrier (2 :^: hl_ty_frag (A :^: (R :^: omega))) (hl_relative_homology_group A (hl_pair hl_ty_int (hl_ty_topology A :*: 2 :^: A) p (hl_pair (hl_ty_topology A) (2 :^: A) top s)))) = 1)) -> hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) f c = hl_group_id (2 :^: hl_ty_frag (B :^: (R :^: omega))) (hl_relative_homology_group B (hl_pair hl_ty_int (hl_ty_topology B :*: 2 :^: B) p (hl_pair (hl_ty_topology B) (2 :^: B) top' t))).
Admitted.

// HOL Light:  / HOM_INDUCED_RESTRICT   (hash md5:f7d40d11a57fd0f125b768b6579f4f9c)
Theorem hlt_HOM_INDUCED_RESTRICT : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, forall top :e hl_ty_topology A, forall s :e 2 :^: A, forall top' :e hl_ty_topology B, forall t :e 2 :^: B, hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top s) (hl_pair (hl_ty_topology B) (2 :^: B) top' t) = hl_hom_induced A B p (hl_pair (hl_ty_topology A) (2 :^: A) top (hl_INTER A (hl_topspace A top) s)) (hl_pair (hl_ty_topology B) (2 :^: B) top' (hl_INTER B (hl_topspace B top') t)).
Admitted.

// HOL Light:  / HOM_INDUCED_TRIVIAL   (hash md5:063a5b6d5d7cce0c77e7a5dda58f74df)
Theorem hlt_HOM_INDUCED_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall p :e hl_ty_int, hl_int_lt p (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hl_hom_induced A B p = fun q :e hl_ty_topology A :*: 2 :^: A => fun r :e hl_ty_topology B :*: 2 :^: B => fun s :e B :^: A => fun t :e 2 :^: hl_ty_frag (A :^: (R :^: omega)) => hl_ARB (2 :^: hl_ty_frag (B :^: (R :^: omega))).
Admitted.

// HOL Light:  / HULLS_EQ   (hash md5:316ee5c20e7694080df534eec5d776df)
Theorem hlt_HULLS_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, (forall f :e 2 :^: (2 :^: A), (forall s1 :e 2 :^: A, hl_IN (2 :^: A) s1 f = 1 -> P s1 = 1) -> P (hl_INTERS A f) = 1) /\ (hl_SUBSET A s (hl_hull A P t) = 1 /\ hl_SUBSET A t (hl_hull A P s) = 1) -> hl_hull A P s = hl_hull A P t.
Admitted.

// HOL Light:  / HULL_ANTIMONO   (hash md5:2b5711211a7b8960763da4cea52902f6)
Theorem hlt_HULL_ANTIMONO : forall A:set, A <> Empty -> forall P Q :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_SUBSET (2 :^: A) P Q = 1 -> hl_SUBSET A (hl_hull A Q s) (hl_hull A P s) = 1.
Admitted.

// HOL Light:  / HULL_EQ   (hash md5:1046f40cb5600e96f635ddf4e8623811)
Theorem hlt_HULL_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, (forall f :e 2 :^: (2 :^: A), (forall s1 :e 2 :^: A, hl_IN (2 :^: A) s1 f = 1 -> P s1 = 1) -> P (hl_INTERS A f) = 1) -> (hl_hull A P s = s <-> P s = 1).
Admitted.

// HOL Light:  / HULL_HULL   (hash md5:8e81f8d16b7adc0b80b4f04d2971b17d)
Theorem hlt_HULL_HULL : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_hull A P (hl_hull A P s) = hl_hull A P s.
Admitted.

// HOL Light:  / HULL_IMAGE   (hash md5:f9f9df2cf75994e35d279993938c432f)
Theorem hlt_HULL_IMAGE : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall f :e A :^: A, forall s :e 2 :^: A, (forall s1 :e 2 :^: A, P (hl_hull A P s1) = 1) /\ ((forall s1 :e 2 :^: A, P (hl_IMAGE A A f s1) = 1 <-> P s1 = 1) /\ ((forall x y :e A, f x = f y -> x = y) /\ (forall y :e A, exists x :e A, f x = y))) -> hl_hull A P (hl_IMAGE A A f s) = hl_IMAGE A A f (hl_hull A P s).
Admitted.

// HOL Light:  / HULL_IMAGE_GALOIS   (hash md5:2f684707f66eb6da23ec9e9d27ea57ec)
Theorem hlt_HULL_IMAGE_GALOIS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall f g :e A :^: A, forall s :e 2 :^: A, (forall s1 :e 2 :^: A, P (hl_hull A P s1) = 1) /\ ((forall s1 :e 2 :^: A, P s1 = 1 -> P (hl_IMAGE A A f s1) = 1) /\ ((forall s1 :e 2 :^: A, P s1 = 1 -> P (hl_IMAGE A A g s1) = 1) /\ (forall s1 t :e 2 :^: A, hl_SUBSET A s1 (hl_IMAGE A A g t) = 1 <-> hl_SUBSET A (hl_IMAGE A A f s1) t = 1))) -> hl_hull A P (hl_IMAGE A A f s) = hl_IMAGE A A f (hl_hull A P s).
Admitted.

// HOL Light:  / HULL_IMAGE_SUBSET   (hash md5:330ea51bed8babcb259cc135ae4af713)
Theorem hlt_HULL_IMAGE_SUBSET : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall f :e A :^: A, forall s :e 2 :^: A, P (hl_hull A P s) = 1 /\ (forall s1 :e 2 :^: A, P s1 = 1 -> P (hl_IMAGE A A f s1) = 1) -> hl_SUBSET A (hl_hull A P (hl_IMAGE A A f s)) (hl_IMAGE A A f (hl_hull A P s)) = 1.
Admitted.

// HOL Light:  / HULL_INC   (hash md5:5b05bc18c696d55e2fa3e81509526dec)
Theorem hlt_HULL_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, forall x :e A, hl_IN A x s = 1 -> hl_IN A x (hl_hull A P s) = 1.
Admitted.

// HOL Light:  / HULL_INDUCT   (hash md5:4f79c0b27eea341b87a0ad8df6dfca23)
Theorem hlt_HULL_INDUCT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall p s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> p x = 1) /\ P (hl_GSPEC A (fun GEN_PVAR_640 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_640 (p x) x = 1 then 1 else 0)) = 1 -> forall x :e A, hl_IN A x (hl_hull A P s) = 1 -> p x = 1.
Admitted.

// HOL Light:  / HULL_INSERT   (hash md5:774d200f18f16b46b3ac18f4c5432370)
Theorem hlt_HULL_INSERT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall a :e A, forall s :e 2 :^: A, hl_hull A P (hl_INSERT A a s) = hl_hull A P (hl_INSERT A a (hl_hull A P s)).
Admitted.

// HOL Light:  / HULL_INTERS_SUBSET   (hash md5:76bb1a84cdebffea32f82f9e54ba01bb)
Theorem hlt_HULL_INTERS_SUBSET : forall A:set, A <> Empty -> forall P f :e 2 :^: (2 :^: A), hl_SUBSET A (hl_hull A P (hl_INTERS A f)) (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_642 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_642 (hl_IN (2 :^: A) s f) (hl_hull A P s) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light:  / HULL_INTER_SUBSET   (hash md5:f028ed2e1538c9f66dd8f05356038e71)
Theorem hlt_HULL_INTER_SUBSET : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_SUBSET A (hl_hull A P (hl_INTER A s t)) (hl_INTER A (hl_hull A P s) (hl_hull A P t)) = 1.
Admitted.

// HOL Light:  / HULL_MINIMAL   (hash md5:74ed3fadd440e8ff3bf29db44fb0ca6e)
Theorem hlt_HULL_MINIMAL : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ P t = 1 -> hl_SUBSET A (hl_hull A P s) t = 1.
Admitted.

// HOL Light:  / HULL_MONO   (hash md5:13c37b51520c483cab227e0d8db404f3)
Theorem hlt_HULL_MONO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_SUBSET A (hl_hull A P s) (hl_hull A P t) = 1.
Admitted.

// HOL Light:  / HULL_P   (hash md5:7500ac5ef339d557a3b7ee3df4a497f2)
Theorem hlt_HULL_P : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P s = 1 -> hl_hull A P s = s.
Admitted.

// HOL Light:  / HULL_P_AND_Q   (hash md5:87dddf6d07d6455c311e12952feceefb)
Theorem hlt_HULL_P_AND_Q : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall P Q :e 2 :^: (2 :^: A), (forall f :e 2 :^: (2 :^: A), (forall s1 :e 2 :^: A, hl_IN (2 :^: A) s1 f = 1 -> P s1 = 1) -> P (hl_INTERS A f) = 1) /\ ((forall f :e 2 :^: (2 :^: A), (forall s1 :e 2 :^: A, hl_IN (2 :^: A) s1 f = 1 -> Q s1 = 1) -> Q (hl_INTERS A f) = 1) /\ (forall s1 :e 2 :^: A, Q s1 = 1 -> Q (hl_hull A P s1) = 1)) -> hl_hull A (fun x :e 2 :^: A => if P x = 1 /\ Q x = 1 then 1 else 0) s = hl_hull A P (hl_hull A Q s).
Admitted.

// HOL Light:  / HULL_REDUNDANT   (hash md5:bce9ed015ef6f9fb64d7e2ae0c8e07e5)
Theorem hlt_HULL_REDUNDANT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall a :e A, forall s :e 2 :^: A, hl_IN A a (hl_hull A P s) = 1 -> hl_hull A P (hl_INSERT A a s) = hl_hull A P s.
Admitted.

// HOL Light:  / HULL_REDUNDANT_EQ   (hash md5:e4d9abdd0b26c2e91c5b4a3871fc1d1f)
Theorem hlt_HULL_REDUNDANT_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall a :e A, forall s :e 2 :^: A, hl_IN A a (hl_hull A P s) = 1 <-> hl_hull A P (hl_INSERT A a s) = hl_hull A P s.
Admitted.

// HOL Light:  / HULL_SUBSET   (hash md5:b62767308d1ee162e3e2dbae0cf302c1)
Theorem hlt_HULL_SUBSET : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_SUBSET A s (hl_hull A P s) = 1.
Admitted.

// HOL Light:  / HULL_UNION   (hash md5:f5596963d031b0a0a9998835f6eb6857)
Theorem hlt_HULL_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_hull A P (hl_UNION A s t) = hl_hull A P (hl_UNION A (hl_hull A P s) (hl_hull A P t)).
Admitted.

// HOL Light:  / HULL_UNIONS_SUBSET   (hash md5:42d3ae5841d4e4f108cbc51ac518c368)
Theorem hlt_HULL_UNIONS_SUBSET : forall A:set, A <> Empty -> forall P f :e 2 :^: (2 :^: A), hl_SUBSET A (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_641 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_641 (hl_IN (2 :^: A) s f) (hl_hull A P s) = 1 then 1 else 0))) (hl_hull A P (hl_UNIONS A f)) = 1.
Admitted.

// HOL Light:  / HULL_UNION_LEFT   (hash md5:77d9a70498f06e89d272c225396414e9)
Theorem hlt_HULL_UNION_LEFT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_hull A P (hl_UNION A s t) = hl_hull A P (hl_UNION A (hl_hull A P s) t).
Admitted.

// HOL Light:  / HULL_UNION_RIGHT   (hash md5:342b78e2e42e9e7e1160b0902f69b2f3)
Theorem hlt_HULL_UNION_RIGHT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_hull A P (hl_UNION A s t) = hl_hull A P (hl_UNION A s (hl_hull A P t)).
Admitted.

// HOL Light:  / HULL_UNION_SUBSET   (hash md5:4ba1b72e6d9b8986e1cfd8cf7dfad929)
Theorem hlt_HULL_UNION_SUBSET : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_SUBSET A (hl_UNION A (hl_hull A P s) (hl_hull A P t)) (hl_hull A P (hl_UNION A s t)) = 1.
Admitted.

// HOL Light:  / HULL_UNIQUE   (hash md5:72159a4eab90ede28c412504f4a46c27)
Theorem hlt_HULL_UNIQUE : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ (P t = 1 /\ (forall t' :e 2 :^: A, hl_SUBSET A s t' = 1 /\ P t' = 1 -> hl_SUBSET A t t' = 1)) -> hl_hull A P s = t.
Admitted.

// HOL Light:  / HULL_UNIV   (hash md5:5cb3abf81300a6e803c9449766f95fba)
Theorem hlt_HULL_UNIV : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_hull A P (hl_UNIV A) = hl_UNIV A.
Admitted.

// HOL Light:  / Hashek.hashek_def   (hash md5:c9e057b71c5558b394ac2bf4f300350e)
Theorem hlt_Hashek_hashek_def : hl_hashek = 1 <-> True.
Admitted.

// HOL Light:  / Hashek.hashek_eq   (hash md5:0dae2246aacb5ce8008e3a6e41a7740c)
Theorem hlt_Hashek_hashek_eq : ~ hl_hashek = 1 <-> False.
Admitted.

// HOL Light:  / Hashek.hashek_prop   (hash md5:83afef388f469aa764df4fb491000547)
Theorem hlt_Hashek_hashek_prop : forall x y :e 2, (x = 1 /\ hl_hashek = 1 -> y = 1 /\ hl_hashek = 1) -> x = 1 -> y = 1.
Admitted.

// HOL Light:  / Hashek.hashek_thm   (hash md5:8d3769f9cc2fc973217a2aaaa8ad7398)
Theorem hlt_Hashek_hashek_thm : hl_hashek = 1.
Admitted.

// HOL Light:  / INFINITE_CYCLIC_SUBGROUP   (hash md5:85769d2b840b2652cccd5e96bb9683bd)
Theorem hlt_INFINITE_CYCLIC_SUBGROUP : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_INFINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 <-> forall m n :e omega, hl_group_pow A G x m = hl_group_pow A G x n -> m = n).
Admitted.

// HOL Light:  / INFINITE_CYCLIC_SUBGROUP_ALT   (hash md5:47d5ae6c54a477e58dc79be38a854181)
Theorem hlt_INFINITE_CYCLIC_SUBGROUP_ALT : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall x :e A, hl_IN A x (hl_group_carrier A G) = 1 -> (hl_INFINITE A (hl_group_carrier A (hl_subgroup_generated A G (hl_INSERT A x (hl_EMPTY A)))) = 1 <-> forall m n :e hl_ty_int, hl_group_zpow A G x m = hl_group_zpow A G x n -> m = n).
Admitted.

// HOL Light:  / INFINITE_ENUMERATE_EQ_ALT   (hash md5:1e1614b12e1b07f267ae17b8b44e2ebe)
Theorem hlt_INFINITE_ENUMERATE_EQ_ALT : forall s :e 2 :^: omega, hl_INFINITE omega s = 1 <-> exists r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ forall n :e omega, hl_IN omega (r n) s = 1.
Admitted.

// HOL Light:  / INFINITE_ENUMERATE_WEAK   (hash md5:886adac2ee1f16ef0e310f1d258f7e75)
Theorem hlt_INFINITE_ENUMERATE_WEAK : forall s :e 2 :^: omega, hl_INFINITE omega s = 1 -> exists r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ forall n :e omega, hl_IN omega (r n) s = 1.
Admitted.

// HOL Light:  / INFINITE_FROM   (hash md5:8760e761bba0f2fe48a71e9b6f8a2b8c)
Theorem hlt_INFINITE_FROM : forall n :e omega, hl_INFINITE omega (hl_from n) = 1.
Admitted.

// HOL Light:  / INFINITE_IRRATIONAL_IN_RANGE   (hash md5:a30b9be028c9f9b9a33e73d702a45f94)
Theorem hlt_INFINITE_IRRATIONAL_IN_RANGE : forall a b :e R, hl_real_lt a b = 1 -> hl_INFINITE R (hl_GSPEC R (fun GEN_PVAR_649 :e R => if exists q :e R, hl_SETSPEC R GEN_PVAR_649 (if ~ hl_rational q = 1 /\ (hl_real_lt a q = 1 /\ hl_real_lt q b = 1) then 1 else 0) q = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / INTEGRABLE_PASTECART_SYM_UNIV   (hash md5:77ce620aa44f8bcda06de7952d53df4d)
Theorem hlt_INTEGRABLE_PASTECART_SYM_UNIV : forall A B M N P:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e A, forall y :e B, hl_integrable_on (hl_ty_finite_sum N M) P (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum N M))) = 1 <-> hl_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1.
Admitted.

// HOL Light:  / INTEGRAL_PASTECART_SYM_UNIV   (hash md5:10552cbe5441eb46d6635ff0d7a8ac27)
Theorem hlt_INTEGRAL_PASTECART_SYM_UNIV : forall A B M N P:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e A, forall y :e B, hl_integral (hl_ty_finite_sum N M) P (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum N M))) (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) = hl_integral (hl_ty_finite_sum M N) P (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) f.
Admitted.

// HOL Light:  / INTER_REAL_INTERVAL   (hash md5:6b393d983f3404b82c6f05f4f1fd67ef)
Theorem hlt_INTER_REAL_INTERVAL : forall a b c d :e R, hl_INTER R (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R c d) (hl_NIL (R :*: R)))) = hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_max a c) (hl_real_min b d)) (hl_NIL (R :*: R))).
Admitted.

// HOL Light:  / IN_FROM   (hash md5:de46bf34f18db6f4a2535cddd2ef4232)
Theorem hlt_IN_FROM : forall m n :e omega, hl_IN omega m (hl_from n) = 1 <-> hl_le n m = 1.
Admitted.

// HOL Light:  / IN_REAL_INTERVAL   (hash md5:f83270a98680b8c6c67932308385f317)
Theorem hlt_IN_REAL_INTERVAL : forall a b x :e R, (hl_IN R x (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) = 1 <-> hl_real_le a x = 1 /\ hl_real_le x b = 1) /\ (hl_IN R x (hl_open_real_interval (hl_pair R R a b)) = 1 <-> hl_real_lt a x = 1 /\ hl_real_lt x b = 1).
Admitted.

// HOL Light:  / IN_REAL_INTERVAL_REFLECT   (hash md5:ee925f07b78f3022903130de61559480)
Theorem hlt_IN_REAL_INTERVAL_REFLECT : (forall a b x :e R, hl_IN R (hl_real_neg x) (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_neg b) (hl_real_neg a)) (hl_NIL (R :*: R)))) = 1 <-> hl_IN R x (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) = 1) /\ forall a b x :e R, hl_IN R (hl_real_neg x) (hl_open_real_interval (hl_pair R R (hl_real_neg b) (hl_real_neg a))) = 1 <-> hl_IN R x (hl_open_real_interval (hl_pair R R a b)) = 1.
Admitted.

// HOL Light:  / IRRATIONAL_APPROXIMATION   (hash md5:880d83eb90830896ed3373c6813bd64a)
Theorem hlt_IRRATIONAL_APPROXIMATION : forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists y :e R, ~ hl_rational y = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub y x)) e1 = 1.
Admitted.

// HOL Light:  / IRRATIONAL_APPROXIMATION_ABOVE   (hash md5:c7d2e150de71a63931d041809074151f)
Theorem hlt_IRRATIONAL_APPROXIMATION_ABOVE : forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists q :e R, ~ hl_rational q = 1 /\ (hl_real_lt x q = 1 /\ hl_real_lt q (hl_real_add x e1) = 1).
Admitted.

// HOL Light:  / IRRATIONAL_APPROXIMATION_BELOW   (hash md5:104fdc4c8f8c3837cfaf42a3a4747f5f)
Theorem hlt_IRRATIONAL_APPROXIMATION_BELOW : forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists q :e R, ~ hl_rational q = 1 /\ (hl_real_lt (hl_real_sub x e1) q = 1 /\ hl_real_lt q x = 1).
Admitted.

// HOL Light:  / IRRATIONAL_APPROXIMATION_STRADDLE   (hash md5:ddf7760767f234ab08d991bb7b4831cd)
Theorem hlt_IRRATIONAL_APPROXIMATION_STRADDLE : forall x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists a b :e R, ~ hl_rational a = 1 /\ (~ hl_rational b = 1 /\ (hl_real_lt a x = 1 /\ (hl_real_lt x b = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub b a)) e1 = 1))).
Admitted.

// HOL Light:  / IRRATIONAL_BETWEEN   (hash md5:74cd3f9a1c3f7144dcc9732412c005fb)
Theorem hlt_IRRATIONAL_BETWEEN : forall a b :e R, hl_real_lt a b = 1 -> exists q :e R, ~ hl_rational q = 1 /\ (hl_real_lt a q = 1 /\ hl_real_lt q b = 1).
Admitted.

// HOL Light:  / IRRATIONAL_BETWEEN_EQ   (hash md5:3be62a034c7aede75c272d022e51c970)
Theorem hlt_IRRATIONAL_BETWEEN_EQ : forall a b :e R, (exists q :e R, ~ hl_rational q = 1 /\ (hl_real_lt a q = 1 /\ hl_real_lt q b = 1)) <-> hl_real_lt a b = 1.
Admitted.

// HOL Light:  / ISOMORPHIC_PROD_INTEGER_MOD_GROUP   (hash md5:1a8794005cdd794aa20c6af1d6d4d999)
Theorem hlt_ISOMORPHIC_PROD_INTEGER_MOD_GROUP : forall m n :e omega, hl_isomorphic_group (hl_ty_int :*: hl_ty_int) hl_ty_int (hl_prod_group hl_ty_int hl_ty_int (hl_integer_mod_group m) (hl_integer_mod_group n)) (hl_integer_mod_group (hl_mul m n)) = 1 <-> hl_num_coprime (hl_pair omega omega m n) = 1.
Admitted.

// HOL Light:  / IS_HULL   (hash md5:d730c8bd5c660063f8b369793ff69745)
Theorem hlt_IS_HULL : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, (forall f :e 2 :^: (2 :^: A), (forall s1 :e 2 :^: A, hl_IN (2 :^: A) s1 f = 1 -> P s1 = 1) -> P (hl_INTERS A f) = 1) -> (P s = 1 <-> exists t :e 2 :^: A, s = hl_hull A P t).
Admitted.

// HOL Light:  / IS_REALINTERVAL_CONTAINS_INTERVAL   (hash md5:4fe58c5161bad3d3fbaa8736c710ee7a)
Theorem hlt_IS_REALINTERVAL_CONTAINS_INTERVAL : forall s :e 2 :^: R, forall a b :e R, hl_is_realinterval s = 1 /\ (hl_IN R a s = 1 /\ hl_IN R b s = 1) -> hl_SUBSET R (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) s = 1.
Admitted.

// HOL Light:  / IS_REALINTERVAL_EMPTY   (hash md5:cf2a77adef1b199f3b57e1723e5b46d7)
Theorem hlt_IS_REALINTERVAL_EMPTY : hl_is_realinterval (hl_EMPTY R) = 1.
Admitted.

// HOL Light:  / IS_REALINTERVAL_INTER   (hash md5:9809fb15e0c9b3e0e06ba2f177b80515)
Theorem hlt_IS_REALINTERVAL_INTER : forall s t :e 2 :^: R, hl_is_realinterval s = 1 /\ hl_is_realinterval t = 1 -> hl_is_realinterval (hl_INTER R s t) = 1.
Admitted.

// HOL Light:  / IS_REALINTERVAL_INTERVAL   (hash md5:082efb27426085d67be94b0760d647b8)
Theorem hlt_IS_REALINTERVAL_INTERVAL : forall a b :e R, hl_is_realinterval (hl_open_real_interval (hl_pair R R a b)) = 1 /\ hl_is_realinterval (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) = 1.
Admitted.

// HOL Light:  / IS_REALINTERVAL_SHRINK   (hash md5:9237c545cc63f208276edda7428ef9fc)
Theorem hlt_IS_REALINTERVAL_SHRINK : forall s :e 2 :^: R, hl_is_realinterval (hl_IMAGE R R (fun x :e R => hl_real_div x (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))) s) = 1 <-> hl_is_realinterval s = 1.
Admitted.

// HOL Light:  / IS_REALINTERVAL_SING   (hash md5:a6ff556fa8c18df7601a0367394bfeb3)
Theorem hlt_IS_REALINTERVAL_SING : forall a :e R, hl_is_realinterval (hl_INSERT R a (hl_EMPTY R)) = 1.
Admitted.

// HOL Light:  / IS_REALINTERVAL_UNION   (hash md5:40116fe7ca0dbc3c0f4c8f1a2e803c48)
Theorem hlt_IS_REALINTERVAL_UNION : forall s t :e 2 :^: R, hl_is_realinterval s = 1 /\ (hl_is_realinterval t = 1 /\ ~ hl_INTER R s t = hl_EMPTY R) -> hl_is_realinterval (hl_UNION R s t) = 1.
Admitted.

// HOL Light:  / IS_REALINTERVAL_UNIV   (hash md5:638dc8cd1ccd0898409d37e95c10c6f4)
Theorem hlt_IS_REALINTERVAL_UNIV : hl_is_realinterval (hl_UNIV R) = 1.
Admitted.

// HOL Light:  / LAMBDA_SKOLEM   (hash md5:7ef8810f8e6a2e4238e174e8dc86f5cf)
Theorem hlt_LAMBDA_SKOLEM : forall A N:set, A <> Empty -> N <> Empty -> forall P :e 2 :^: A :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> exists x :e A, P i x = 1) <-> exists x :e hl_ty_cart A N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex A N x i) = 1.
Admitted.

// HOL Light:  / LEBESGUE_MEASURABLE_ABSOLUTELY_CONTINUOUS_IMAGE   (hash md5:3fe9eb7e42905816579558e4240d2198)
Theorem hlt_LEBESGUE_MEASURABLE_ABSOLUTELY_CONTINUOUS_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ (hl_is_interval 1 s = 1 /\ (hl_lebesgue_measurable 1 t = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1)) -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light:  / LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LE_EQ   (hash md5:5a9f35fb59b1bd88d975b4c4b1f8e43d)
Theorem hlt_LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable (hl_ty_finite_sum M N) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_8402 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart R M, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_8402 (hl_real_le (hl_vindex R N y k) (hl_vindex R N (f x) k)) (hl_pastecart R M N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LT_EQ   (hash md5:c4f8a58298a2a5b32d87529896fee2b6)
Theorem hlt_LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable (hl_ty_finite_sum M N) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_8412 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart R M, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_8412 (hl_real_lt (hl_vindex R N y k) (hl_vindex R N (f x) k)) (hl_pastecart R M N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / LEBESGUE_MEASURABLE_FUNCTION_ORTHANT_SET_LE_EQ   (hash md5:56769b78d64fdc9641c213a87fb76bcb)
Theorem hlt_LEBESGUE_MEASURABLE_FUNCTION_ORTHANT_SET_LE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_lebesgue_measurable (hl_ty_finite_sum M N) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_8403 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart R M, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_8403 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N y k) (hl_vindex R N (f x) k) = 1 then 1 else 0) (hl_pastecart R M N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / LEBESGUE_MEASURABLE_FUNCTION_ORTHANT_SET_LT_EQ   (hash md5:560e9cffaaaefe8c02e0b005e32ab232)
Theorem hlt_LEBESGUE_MEASURABLE_FUNCTION_ORTHANT_SET_LT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_lebesgue_measurable (hl_ty_finite_sum M N) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_8413 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart R M, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_8413 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N y k) (hl_vindex R N (f x) k) = 1 then 1 else 0) (hl_pastecart R M N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / LEBESGUE_NUMBER   (hash md5:7a19b2c2e7865794d077fdb4f53a28cd)
Theorem hlt_LEBESGUE_NUMBER : forall A:set, A <> Empty -> forall m :e hl_ty_metric A, forall s :e 2 :^: A, forall U :e 2 :^: (2 :^: A), hl_compact_in A (hl_mtopology A m) s = 1 /\ ((forall u :e 2 :^: A, hl_IN (2 :^: A) u U = 1 -> hl_open_in A (hl_mtopology A m) u = 1) /\ hl_SUBSET A s (hl_UNIONS A U) = 1) -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall x :e A, hl_IN A x s = 1 -> exists u :e 2 :^: A, hl_IN (2 :^: A) u U = 1 /\ hl_SUBSET A (hl_mball A m (hl_pair A R x e1)) u = 1.
Admitted.

// HOL Light:  / LIMPT_INFINITE_BALL   (hash md5:ed26daeb6b254b024b680634e61dc533)
Theorem hlt_LIMPT_INFINITE_BALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_limit_point_of N x s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_INFINITE (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R x e1))) = 1.
Admitted.

// HOL Light:  / LIMPT_INFINITE_CBALL   (hash md5:4d7e9ca56aa5016b9df282252f2d3668)
Theorem hlt_LIMPT_INFINITE_CBALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_limit_point_of N x s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_INFINITE (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s (hl_cball N (hl_pair (hl_ty_cart R N) R x e1))) = 1.
Admitted.

// HOL Light:  / LIMPT_INFINITE_OPEN   (hash md5:9f3411cc0fc5fa583b3ed2febef66dc1)
Theorem hlt_LIMPT_INFINITE_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_limit_point_of N x s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 /\ hl_open N t = 1 -> hl_INFINITE (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light:  / LIMPT_SEQUENTIAL   (hash md5:34b2609e87f84b4b04b8648b1aab7694)
Theorem hlt_LIMPT_SEQUENTIAL : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_limit_point_of N x s = 1 <-> exists f :e hl_ty_cart R N :^: omega, (forall n :e omega, hl_IN (hl_ty_cart R N) (f n) (hl_DELETE (hl_ty_cart R N) s x) = 1) /\ hl_tendsto omega N f x hl_sequentially = 1.
Admitted.

// HOL Light:  / LIMPT_SEQUENTIAL_DECREASING   (hash md5:2c13f05a332b6515c78883eb93007692)
Theorem hlt_LIMPT_SEQUENTIAL_DECREASING : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_limit_point_of N x s = 1 <-> exists f :e hl_ty_cart R N :^: omega, (forall n :e omega, hl_IN (hl_ty_cart R N) (f n) (hl_DELETE (hl_ty_cart R N) s x) = 1) /\ ((forall m n :e omega, hl_lt m n = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f n) x)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f m) x)) = 1) /\ hl_tendsto omega N f x hl_sequentially = 1).
Admitted.

// HOL Light:  / LIMPT_SEQUENTIAL_INJ   (hash md5:dcfc0fc6b72280b2eace2bd41b77db44)
Theorem hlt_LIMPT_SEQUENTIAL_INJ : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_limit_point_of N x s = 1 <-> exists f :e hl_ty_cart R N :^: omega, (forall n :e omega, hl_IN (hl_ty_cart R N) (f n) (hl_DELETE (hl_ty_cart R N) s x) = 1) /\ ((forall m n :e omega, f m = f n <-> m = n) /\ hl_tendsto omega N f x hl_sequentially = 1).
Admitted.

// HOL Light:  / LINEAR_EQUATIONS_1_EQ   (hash md5:8d1369219ab3cca9ad6f66d234972bde)
Theorem hlt_LINEAR_EQUATIONS_1_EQ : forall a b :e R, (exists x :e R, hl_real_mul a x = b) <-> a = hl_real_of_num (hl_NUMERAL hl_zero) -> b = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light:  / LINEAR_EQUATIONS_2_EQ   (hash md5:219c800549e1ab087d3be1d8b184b3fa)
Theorem hlt_LINEAR_EQUATIONS_2_EQ : forall a b c d u v :e R, (exists x y :e R, hl_real_add (hl_real_mul a x) (hl_real_mul b y) = u /\ hl_real_add (hl_real_mul c x) (hl_real_mul d y) = v) <-> (hl_real_mul a d = hl_real_mul b c -> hl_real_mul d u = hl_real_mul b v /\ hl_real_mul c u = hl_real_mul a v) /\ (a = hl_real_of_num (hl_NUMERAL hl_zero) /\ (b = hl_real_of_num (hl_NUMERAL hl_zero) /\ (c = hl_real_of_num (hl_NUMERAL hl_zero) /\ d = hl_real_of_num (hl_NUMERAL hl_zero))) -> u = hl_real_of_num (hl_NUMERAL hl_zero) /\ v = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light:  / LOCALLY_BAIRE   (hash md5:7c471fbd1a2870a9db87b3e84fc2c899)
Theorem hlt_LOCALLY_BAIRE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, hl_locally M (fun u :e 2 :^: hl_ty_cart R M => hl_baire M N k u f) s = 1 <-> hl_baire M N k s f = 1.
Admitted.

// HOL Light:  / LOCALLY_BAIRE_ALT   (hash md5:4551dec0cfea50e6eefb018f3a3c8f21)
Theorem hlt_LOCALLY_BAIRE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, hl_baire M N k s f = 1 <-> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists u v :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ (hl_IN (hl_ty_cart R M) x u = 1 /\ (hl_SUBSET (hl_ty_cart R M) u v = 1 /\ hl_baire M N k v f = 1)).
Admitted.

// HOL Light:  / LOCALLY_BAIRE_EXPLICIT   (hash md5:023f7d315ccda99a3e53c8bd2d6fe169)
Theorem hlt_LOCALLY_BAIRE_EXPLICIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, hl_baire M N k s f = 1 <-> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists u :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ (hl_IN (hl_ty_cart R M) x u = 1 /\ hl_baire M N k u f = 1).
Admitted.

// HOL Light:  / LOCALLY_COMPACT_HAUSDORFF_IMP_REGULAR_SPACE   (hash md5:4c279e750809a14803a85c48703f44d0)
Theorem hlt_LOCALLY_COMPACT_HAUSDORFF_IMP_REGULAR_SPACE : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_locally_compact_space A top = 1 /\ hl_hausdorff_space A top = 1 -> hl_regular_space A top = 1.
Admitted.

// HOL Light:  / LOCALLY_COMPACT_SPACE_NEIGHBOURHOOD_BASE   (hash md5:f6c807280b25e171f1e24d8af3b51cb6)
Theorem hlt_LOCALLY_COMPACT_SPACE_NEIGHBOURHOOD_BASE : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_hausdorff_space A top = 1 \/ hl_regular_space A top = 1 -> (hl_locally_compact_space A top = 1 <-> hl_neighbourhood_base_of A (hl_compact_in A top) top = 1).
Admitted.

// HOL Light:  / LOCALLY_CONNECTED_SPACE_ALT   (hash md5:0a0ad062958caca6b61d813c9d131bcb)
Theorem hlt_LOCALLY_CONNECTED_SPACE_ALT : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_locally_connected_space A top = 1 <-> hl_neighbourhood_base_of A (fun u :e 2 :^: A => if hl_open_in A top u = 1 /\ hl_connected_in A top u = 1 then 1 else 0) top = 1.
Admitted.

// HOL Light:  / LOCALLY_CONNECTED_SPACE_EQ_OPEN_CONNECTED_COMPONENT_OF   (hash md5:e183e7dfd5c59729eb7ba4fad7721b92)
Theorem hlt_LOCALLY_CONNECTED_SPACE_EQ_OPEN_CONNECTED_COMPONENT_OF : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_locally_connected_space A top = 1 <-> forall u :e 2 :^: A, forall x :e A, hl_open_in A top u = 1 /\ hl_IN A x u = 1 -> hl_open_in A top (hl_connected_component_of A (hl_subtopology A top u) x) = 1.
Admitted.

// HOL Light:  / LOCALLY_CONTINUOUS_ON   (hash md5:ef7611134775153563c5d1e43b94261b)
Theorem hlt_LOCALLY_CONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_locally M (fun u :e 2 :^: hl_ty_cart R M => hl_continuous_on M N f u) s = 1 <-> hl_continuous_on M N f s = 1.
Admitted.

// HOL Light:  / LOCALLY_CONTINUOUS_ON_ALT   (hash md5:ee4c3e167a95ce348530182ddd46794c)
Theorem hlt_LOCALLY_CONTINUOUS_ON_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 <-> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists u v :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ (hl_IN (hl_ty_cart R M) x u = 1 /\ (hl_SUBSET (hl_ty_cart R M) u v = 1 /\ hl_continuous_on M N f v = 1)).
Admitted.

// HOL Light:  / LOCALLY_CONTINUOUS_ON_EXPLICIT   (hash md5:c08e6026a9c090cf65120e4779c2cd20)
Theorem hlt_LOCALLY_CONTINUOUS_ON_EXPLICIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 <-> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists u :e 2 :^: hl_ty_cart R M, hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) s) u = 1 /\ (hl_IN (hl_ty_cart R M) x u = 1 /\ hl_continuous_on M N f u = 1).
Admitted.

// HOL Light:  / LOCALLY_DIMENSION_LE   (hash md5:7cf30a3984df477af3d178225f000a52)
Theorem hlt_LOCALLY_DIMENSION_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e hl_ty_int, hl_int_le (hl_dimension N s) n = 1 <-> hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ hl_locally N (fun u :e 2 :^: hl_ty_cart R N => hl_int_le (hl_dimension N u) n) s = 1.
Admitted.

// HOL Light:  / LOCALLY_LOCALLY   (hash md5:a00c754470b5e5e42e6d49785c1b5560)
Theorem hlt_LOCALLY_LOCALLY : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), hl_locally N (hl_locally N P) = hl_locally N P.
Admitted.

// HOL Light:  / LOCALLY_ON_NBDS   (hash md5:e6463c31c75d19ec7df784a126c2a540)
Theorem hlt_LOCALLY_ON_NBDS : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_locally N P s = 1 <-> forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 -> exists u v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_IN (hl_ty_cart R N) a u = 1 /\ (hl_SUBSET (hl_ty_cart R N) u v = 1 /\ (hl_SUBSET (hl_ty_cart R N) v s = 1 /\ hl_locally N P v = 1))).
Admitted.

// HOL Light:  / LOCALLY_ON_OPEN_SUBSETS   (hash md5:95955d93259116a93c0cc1df388537b2)
Theorem hlt_LOCALLY_ON_OPEN_SUBSETS : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_locally N P s = 1 <-> forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 -> exists v :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) v = 1 /\ (hl_IN (hl_ty_cart R N) a v = 1 /\ hl_locally N P v = 1).
Admitted.

// HOL Light:  / LOCALLY_PATH_CONNECTED_SPACE_ALT   (hash md5:5c0f3a7e80c45c22444916b074f5fbeb)
Theorem hlt_LOCALLY_PATH_CONNECTED_SPACE_ALT : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_locally_path_connected_space A top = 1 <-> hl_neighbourhood_base_of A (fun u :e 2 :^: A => if hl_open_in A top u = 1 /\ hl_path_connected_in A top u = 1 then 1 else 0) top = 1.
Admitted.

// HOL Light:  / LOCALLY_PATH_CONNECTED_SPACE_EQ_OPEN_PATH_COMPONENT_OF   (hash md5:7d9dcbd98ea74e7e0d86b6813dd66f53)
Theorem hlt_LOCALLY_PATH_CONNECTED_SPACE_EQ_OPEN_PATH_COMPONENT_OF : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_locally_path_connected_space A top = 1 <-> forall u :e 2 :^: A, forall x :e A, hl_open_in A top u = 1 /\ hl_IN A x u = 1 -> hl_open_in A top (hl_path_component_of A (hl_subtopology A top u) x) = 1.
Admitted.

// HOL Light:  / LOWER_BOUND_FINITE_SET   (hash md5:44c3f3817a8df00ff41faf4fe19da2e8)
Theorem hlt_LOWER_BOUND_FINITE_SET : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> exists a :e omega, forall x :e A, hl_IN A x s = 1 -> hl_le a (f x) = 1.
Admitted.

// HOL Light:  / LOWER_BOUND_FINITE_SET_REAL   (hash md5:858ba5a3f662867c72adc4900fd5d9d1)
Theorem hlt_LOWER_BOUND_FINITE_SET_REAL : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> exists a :e R, forall x :e A, hl_IN A x s = 1 -> hl_real_le a (f x) = 1.
Admitted.

// HOL Light:  / MATRIFY_COMPONENT   (hash md5:ac1c34f3d005490d930a3251802f3547)
Theorem hlt_MATRIFY_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall v :e hl_ty_cart A (hl_ty_finite_prod M N), forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex N (hl_UNIV N)) = 1)) -> hl_vindex A N (hl_vindex (hl_ty_cart A N) M (hl_matrify A M N v) i) j = hl_vindex A (hl_ty_finite_prod M N) v (hl_add (hl_mul (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) j).
Admitted.

// HOL Light:  / MATRIFY_EQ   (hash md5:109cb2355714767c3ece404ab4f8e7e1)
Theorem hlt_MATRIFY_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall m1 m2 :e hl_ty_cart R (hl_ty_finite_prod M N), hl_matrify R M N m1 = hl_matrify R M N m2 <-> m1 = m2.
Admitted.

// HOL Light:  / MATRIFY_VECTORIZE   (hash md5:ca02d881dc0bb1ca498410e58a1e926d)
Theorem hlt_MATRIFY_VECTORIZE : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart A N) M, hl_matrify A M N (hl_vectorize A N M m) = m.
Admitted.

// HOL Light:  / MATROID_FINITE_DIM   (hash md5:893c2e240141a21315c7d8d7cd7b7d80)
Theorem hlt_MATROID_FINITE_DIM : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 <-> exists b :e 2 :^: A, hl_FINITE A b = 1 /\ (hl_SUBSET A b (hl_matroid_set A m) = 1 /\ hl_SUBSET A s (hl_matroid_span A m b) = 1).
Admitted.

// HOL Light:  / MATROID_FINITE_DIM_BASIS   (hash md5:b6b46bc4e9e55c5e400e96b90db25f01)
Theorem hlt_MATROID_FINITE_DIM_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ exists b :e 2 :^: A, hl_FINITE A b = 1 /\ (hl_SUBSET A b s = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_matroid_span A m b = hl_matroid_span A m s)).
Admitted.

// HOL Light:  / MATROID_FINITE_DIM_SUBSET   (hash md5:932cbbbb344fd1c13df319d9e305bd77)
Theorem hlt_MATROID_FINITE_DIM_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ exists b :e 2 :^: A, hl_FINITE A b = 1 /\ (hl_SUBSET A b s = 1 /\ hl_SUBSET A s (hl_matroid_span A m b) = 1).
Admitted.

// HOL Light:  / MATROID_SPAN_EXCHANGE   (hash md5:370b74a5ced795de2deee0050242923e)
Theorem hlt_MATROID_SPAN_EXCHANGE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x y :e A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_IN A x (hl_matroid_set A m) = 1 /\ (hl_IN A y (hl_matroid_span A m (hl_INSERT A x s)) = 1 /\ ~ hl_IN A y (hl_matroid_span A m s) = 1)) -> hl_IN A x (hl_matroid_span A m (hl_INSERT A y s)) = 1.
Admitted.

// HOL Light:  / MATROID_SPAN_FINITARY   (hash md5:317fdc8de99ef569ab12abe3a4940cda)
Theorem hlt_MATROID_SPAN_FINITARY : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_IN A x (hl_matroid_span A m s) = 1 -> exists s' :e 2 :^: A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ hl_IN A x (hl_matroid_span A m s') = 1).
Admitted.

// HOL Light:  / MATROID_SPAN_MONO   (hash md5:8f466b65b389ea7d158f8e59a724e2db)
Theorem hlt_MATROID_SPAN_MONO : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1.
Admitted.

// HOL Light:  / MATROID_SPAN_SPAN   (hash md5:daeb27056de809a0943221341ba7111e)
Theorem hlt_MATROID_SPAN_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_span A m (hl_matroid_span A m s) = hl_matroid_span A m s.
Admitted.

// HOL Light:  / MATROID_SPAN_SUBSET   (hash md5:0ec247109aca67403b5cab230809bc1b)
Theorem hlt_MATROID_SPAN_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_set A m) = 1.
Admitted.

// HOL Light:  / MATROID_SPAN_SUPERSET   (hash md5:50b24f9be8f2ac1c47b912c6fe6b87fd)
Theorem hlt_MATROID_SPAN_SUPERSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_SUBSET A s (hl_matroid_span A m s) = 1.
Admitted.

// HOL Light:  / MDIST_0   (hash md5:3769dbc299e5529dcc31b97de3a5492e)
Theorem hlt_MDIST_0 : forall A:set, A <> Empty -> forall m :e hl_ty_metric A, forall x y :e A, hl_IN A x (hl_mspace A m) = 1 /\ hl_IN A y (hl_mspace A m) = 1 -> (hl_mdist A m (hl_pair A A x y) = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = y).
Admitted.

// HOL Light:  / MDIST_POS_LE   (hash md5:02234f9ce7256eb4fbc5fbf57af7d6b6)
Theorem hlt_MDIST_POS_LE : forall A:set, A <> Empty -> forall m :e hl_ty_metric A, forall x y :e A, hl_IN A x (hl_mspace A m) = 1 /\ hl_IN A y (hl_mspace A m) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_mdist A m (hl_pair A A x y)) = 1.
Admitted.

// HOL Light:  / MDIST_SYM   (hash md5:a3487ebbf64e623062422476d81cc7d0)
Theorem hlt_MDIST_SYM : forall A:set, A <> Empty -> forall m :e hl_ty_metric A, forall x y :e A, hl_IN A x (hl_mspace A m) = 1 /\ hl_IN A y (hl_mspace A m) = 1 -> hl_mdist A m (hl_pair A A x y) = hl_mdist A m (hl_pair A A y x).
Admitted.

// HOL Light:  / MDIST_TRIANGLE   (hash md5:bc130fbf082066a0cf4565e19f9af143)
Theorem hlt_MDIST_TRIANGLE : forall A:set, A <> Empty -> forall m :e hl_ty_metric A, forall x y z :e A, hl_IN A x (hl_mspace A m) = 1 /\ (hl_IN A y (hl_mspace A m) = 1 /\ hl_IN A z (hl_mspace A m) = 1) -> hl_real_le (hl_mdist A m (hl_pair A A x z)) (hl_real_add (hl_mdist A m (hl_pair A A x y)) (hl_mdist A m (hl_pair A A y z))) = 1.
Admitted.

// HOL Light:  / MEASURABLE_BOUNDED_DIFFERENTIABLE_IMAGE   (hash md5:93712bf5ceaf8577f8482f424474a89a)
Theorem hlt_MEASURABLE_BOUNDED_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall B :e R, hl_measurable N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 /\ hl_real_le (hl_real_abs (hl_det N (hl_matrix N N (f' x)))) B = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_BOREL   (hash md5:7fcc7dd6a1dee742b8893aa26edf8983)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_BOREL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_borel N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7138 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7138 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED   (hash md5:6494c4dd38172ce081e588614160504d)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7130 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7130 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED_INTERVAL   (hash md5:d3259df3dc46d9e4132cf3ae34d1ba19)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a b :e hl_ty_cart R N, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7131 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7131 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_GE   (hash md5:bc6a72788022c96b1ebf4b1131939951)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_GE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7133 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7133 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_ge (hl_vindex R N (f x) k) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_GT   (hash md5:03a01d26c80bc3cf55919ea8cd6006ec)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_GT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7134 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7134 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_gt (hl_vindex R N (f x) k) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_LE   (hash md5:6f51c3932711d45e257108ba0e295b2a)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7135 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7135 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_le (hl_vindex R N (f x) k) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_LT   (hash md5:b7b3e6095e2f0fb23a995552b3824619)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_LT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7136 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7136 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_lt (hl_vindex R N (f x) k) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_OPEN   (hash md5:9f0a11b8526c35e701bbda430ecdc824)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_open N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7132 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7132 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_OPEN_INTERVAL   (hash md5:7ddebf6cb1ebb5bdda28750f7c2c9b38)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a b :e hl_ty_cart R N, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7137 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7137 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_MEASURABLE_PREIMAGE_CLOSED   (hash md5:65ce8fcbb6e68a7a825152929ba8ccfe)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7145 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7145 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_MEASURABLE_PREIMAGE_CLOSED_INTERVAL   (hash md5:26036be63304dfe1f4a84e591981710c)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_CLOSED_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a b :e hl_ty_cart R N, hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7146 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7146 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_GE   (hash md5:853fa9423eaa4487599bbc1d47e0768d)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_GE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7148 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7148 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_ge (hl_vindex R N (f x) k) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_GT   (hash md5:828bd5a132a0ad29523cabfedb8b7e6b)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_GT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7149 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7149 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_gt (hl_vindex R N (f x) k) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_LE   (hash md5:c0e111732f39b103e465d48c7c9e5ecc)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7150 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7150 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_le (hl_vindex R N (f x) k) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_LT   (hash md5:e1d0d9ee630798559ad7f17cc015079f)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_HALFSPACE_COMPONENT_LT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7151 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7151 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_lt (hl_vindex R N (f x) k) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_MEASURABLE_PREIMAGE_OPEN   (hash md5:0f44b4d071a7f24eb10096ad7f7bff14)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_open N t = 1 -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7147 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7147 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_MEASURABLE_PREIMAGE_OPEN_INTERVAL   (hash md5:9ebeb76f279f94b13e4814d5e09bc08c)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall a b :e hl_ty_cart R N, hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7152 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7152 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light:  / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LT   (hash md5:66cc9c4764a2724539d4fc000f41c157)
Theorem hlt_MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6993 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6993 (hl_real_lt (hl_vindex R N (f x) k) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / MEASURABLE_ON_PREIMAGE_OPEN   (hash md5:6705a42baad6f8c7406220ad52ab8c88)
Theorem hlt_MEASURABLE_ON_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_open N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7016 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7016 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / MEASURABLE_ON_PREIMAGE_OPEN_INTERVAL   (hash md5:e68f05f3b93dcd9aa408e3338e96ade7)
Theorem hlt_MEASURABLE_ON_PREIMAGE_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a b :e hl_ty_cart R N, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7015 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7015 (hl_IN (hl_ty_cart R N) (f x) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b))) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / MEASURABLE_ON_SIMPLE_FUNCTION_LIMIT   (hash md5:ac51e25b7880cea36f62c0ce5c31bd15)
Theorem hlt_MEASURABLE_ON_SIMPLE_FUNCTION_LIMIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, (forall n :e omega, hl_measurable_on M N (g n) (hl_UNIV (hl_ty_cart R M)) = 1) /\ ((forall n :e omega, hl_FINITE (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (g n) (hl_UNIV (hl_ty_cart R M))) = 1) /\ forall x :e hl_ty_cart R M, hl_tendsto omega N (fun n :e omega => g n x) (f x) hl_sequentially = 1).
Admitted.

// HOL Light:  / MEASURE_BOUNDED_DIFFERENTIABLE_IMAGE   (hash md5:c588b232dec6b529cfbd35328332c592)
Theorem hlt_MEASURE_BOUNDED_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall B :e R, hl_measurable N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 /\ hl_real_le (hl_real_abs (hl_det N (hl_matrix N N (f' x)))) B = 1) -> hl_real_le (hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s)) (hl_real_mul B (hl_measure N s)) = 1.
Admitted.

// HOL Light:  / METRIZABLE_SPACE_PRODUCT_TOPOLOGY   (hash md5:10c25bdc23aa6e9506be5c7229f76d49)
Theorem hlt_METRIZABLE_SPACE_PRODUCT_TOPOLOGY : forall A K:set, A <> Empty -> K <> Empty -> forall tops :e hl_ty_topology A :^: K, forall k :e 2 :^: K, hl_metrizable_space (A :^: K) (hl_product_topology K A k tops) = 1 <-> hl_topspace (A :^: K) (hl_product_topology K A k tops) = hl_EMPTY (A :^: K) \/ hl_COUNTABLE K (hl_GSPEC K (fun GEN_PVAR_2179 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_2179 (if hl_IN K i k = 1 /\ ~ exists a :e A, hl_SUBSET A (hl_topspace A (tops i)) (hl_INSERT A a (hl_EMPTY A)) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ forall i :e K, hl_IN K i k = 1 -> hl_metrizable_space A (tops i) = 1.
Admitted.

// HOL Light:  / MONOTONE_BIGGER   (hash md5:43549bb10e456b2b244b6323ebb2d4b5)
Theorem hlt_MONOTONE_BIGGER : forall r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) -> forall n :e omega, hl_le n (r n) = 1.
Admitted.

// HOL Light:  / MONOTONE_SUBSEQUENCE   (hash md5:a2d5559f21cb8315251d070cd10396bb)
Theorem hlt_MONOTONE_SUBSEQUENCE : forall s :e R :^: omega, exists r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ ((forall m n :e omega, hl_le m n = 1 -> hl_real_le (s (r m)) (s (r n)) = 1) \/ forall m n :e omega, hl_le m n = 1 -> hl_real_le (s (r n)) (s (r m)) = 1).
Admitted.

// HOL Light:  / NEGLIGIBLE_ABSOLUTELY_CONTINUOUS_IMAGE   (hash md5:b4f813909b9037608faba1f10714d41e)
Theorem hlt_NEGLIGIBLE_ABSOLUTELY_CONTINUOUS_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ (hl_is_interval 1 s = 1 /\ (hl_negligible 1 t = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1)) -> hl_negligible N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light:  / NORMAL_SUBGROUP_LEFT_SUBSET_RIGHT_COSETS   (hash md5:6c31f4d078a604ba84445fca58c53617)
Theorem hlt_NORMAL_SUBGROUP_LEFT_SUBSET_RIGHT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ hl_SUBSET (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_930 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_930 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x n) = 1 then 1 else 0)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_931 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_931 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / NORMAL_SUBGROUP_RIGHT_SUBSET_LEFT_COSETS   (hash md5:e1e430f15e5aadfcad68533265a61d51)
Theorem hlt_NORMAL_SUBGROUP_RIGHT_SUBSET_LEFT_COSETS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, forall n :e 2 :^: A, hl_normal_subgroup_of A n G = 1 <-> hl_subgroup_of A n G = 1 /\ hl_SUBSET (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_932 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_932 (hl_IN A x (hl_group_carrier A G)) (hl_right_coset A G n x) = 1 then 1 else 0)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_933 :e 2 :^: A => if exists x :e A, hl_SETSPEC (2 :^: A) GEN_PVAR_933 (hl_IN A x (hl_group_carrier A G)) (hl_left_coset A G x n) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light:  / NO_PROPER_SUBGROUPS_EQ_CYCLIC_PRIME_ORDER   (hash md5:2c1acbdc53ef63a810a322de5faf8dc1)
Theorem hlt_NO_PROPER_SUBGROUPS_EQ_CYCLIC_PRIME_ORDER : forall A:set, A <> Empty -> forall G :e hl_ty_group A, (forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) \/ h = hl_group_carrier A G) <-> hl_cyclic_group A G = 1 /\ (hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_CARD A (hl_group_carrier A G) = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime (hl_CARD A (hl_group_carrier A G)) = 1)).
Admitted.

// HOL Light:  / OPEN_COUNTABLE_UNION_CLOSED_INTERVALS   (hash md5:4df18c29d0d8932d1c72ddaa94dc529d)
Theorem hlt_OPEN_COUNTABLE_UNION_CLOSED_INTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> exists D :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) D = 1 /\ ((forall i :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) i D = 1 -> hl_SUBSET (hl_ty_cart R N) i s = 1 /\ exists a b :e hl_ty_cart R N, i = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ hl_UNIONS (hl_ty_cart R N) D = s).
Admitted.

// HOL Light:  / OPEN_COUNTABLE_UNION_OPEN_INTERVALS   (hash md5:966926f260c01699932814355fa8237f)
Theorem hlt_OPEN_COUNTABLE_UNION_OPEN_INTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> exists D :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) D = 1 /\ ((forall i :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) i D = 1 -> hl_SUBSET (hl_ty_cart R N) i s = 1 /\ exists a b :e hl_ty_cart R N, i = hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) /\ hl_UNIONS (hl_ty_cart R N) D = s).
Admitted.

// HOL Light:  / OPEN_MAP_INTERIOR_OF_IMAGE_SUBSET   (hash md5:cf225c033529ddbdf67cb92b249b0297)
Theorem hlt_OPEN_MAP_INTERIOR_OF_IMAGE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_open_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> forall s :e 2 :^: A, hl_SUBSET B (hl_IMAGE A B f (hl_interior_of A top s)) (hl_interior_of B top' (hl_IMAGE A B f s)) = 1.
Admitted.

// HOL Light:  / OPEN_MAP_INTERIOR_OF_IMAGE_SUBSET_ALT   (hash md5:dff8312406027f383c2fa20e1ec8470d)
Theorem hlt_OPEN_MAP_INTERIOR_OF_IMAGE_SUBSET_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_open_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> forall s :e 2 :^: A, hl_SUBSET A s (hl_topspace A top) = 1 -> hl_SUBSET B (hl_IMAGE A B f (hl_interior_of A top s)) (hl_interior_of B top' (hl_IMAGE A B f s)) = 1.
Admitted.

// HOL Light:  / OPEN_MAP_INTERIOR_OF_IMAGE_SUBSET_GEN   (hash md5:6514d86fd3a4c40dbcaaefc2378d7e4e)
Theorem hlt_OPEN_MAP_INTERIOR_OF_IMAGE_SUBSET_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall top :e hl_ty_topology A, forall top' :e hl_ty_topology B, forall f :e B :^: A, hl_open_map A B (hl_pair (hl_ty_topology A) (hl_ty_topology B) top top') f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_topspace A top)) (hl_topspace B top') = 1 /\ forall s :e 2 :^: A, hl_SUBSET B (hl_IMAGE A B f (hl_interior_of A top s)) (hl_interior_of B top' (hl_IMAGE A B f s)) = 1.
Admitted.

// HOL Light:  / ORTHOGONALITY_PRESERVING_EQ_SIMILARITY   (hash md5:648527b62148315c86061bf0cc0ee23e)
Theorem hlt_ORTHOGONALITY_PRESERVING_EQ_SIMILARITY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, hl_orthogonal N x y = 1 -> hl_orthogonal N (f x) (f y) = 1) <-> exists c :e R, exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N g = 1 /\ f = fun z :e hl_ty_cart R N => hl_vmul N c (g z).
Admitted.

// HOL Light:  / ORTHOGONALITY_PRESERVING_EQ_SIMILARITY_ALT   (hash md5:5c311654d76bdf2b91520fc9d991e8de)
Theorem hlt_ORTHOGONALITY_PRESERVING_EQ_SIMILARITY_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, hl_orthogonal N x y = 1 -> hl_orthogonal N (f x) (f y) = 1) <-> exists c :e R, exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ (hl_orthogonal_transformation N g = 1 /\ f = fun z :e hl_ty_cart R N => hl_vmul N c (g z)).
Admitted.

// HOL Light:  / PADIC_RATIONAL_APPROXIMATION_STRADDLE_POS   (hash md5:be4953ae10665c28394dff7a58551f1f)
Theorem hlt_PADIC_RATIONAL_APPROXIMATION_STRADDLE_POS : forall p x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) p = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) -> exists n q r :e omega, hl_real_lt (hl_real_div (hl_real_of_num q) (hl_real_pow p n)) x = 1 /\ (hl_real_lt x (hl_real_div (hl_real_of_num r) (hl_real_pow p n)) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub (hl_real_div (hl_real_of_num q) (hl_real_pow p n)) (hl_real_div (hl_real_of_num r) (hl_real_pow p n)))) e1 = 1).
Admitted.

// HOL Light:  / PADIC_RATIONAL_APPROXIMATION_STRADDLE_POS_LE   (hash md5:05e169fddd37acc5bf474144db13e462)
Theorem hlt_PADIC_RATIONAL_APPROXIMATION_STRADDLE_POS_LE : forall p x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) p = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) -> exists n q r :e omega, hl_real_le (hl_real_div (hl_real_of_num q) (hl_real_pow p n)) x = 1 /\ (hl_real_lt x (hl_real_div (hl_real_of_num r) (hl_real_pow p n)) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub (hl_real_div (hl_real_of_num q) (hl_real_pow p n)) (hl_real_div (hl_real_of_num r) (hl_real_pow p n)))) e1 = 1).
Admitted.

// HOL Light:  / PARACOMPACT_HAUSDORFF_IMP_NORMAL_SPACE   (hash md5:c7725321a8b63783f44dff4fa5387fa9)
Theorem hlt_PARACOMPACT_HAUSDORFF_IMP_NORMAL_SPACE : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_paracompact_space A top = 1 /\ (hl_hausdorff_space A top = 1 \/ hl_regular_space A top = 1) -> hl_normal_space A top = 1.
Admitted.

// HOL Light:  / PARACOMPACT_HAUSDORFF_IMP_REGULAR_SPACE   (hash md5:d6913a508b645ffea4599c77f4adf8a3)
Theorem hlt_PARACOMPACT_HAUSDORFF_IMP_REGULAR_SPACE : forall A:set, A <> Empty -> forall top :e hl_ty_topology A, hl_paracompact_space A top = 1 /\ hl_hausdorff_space A top = 1 -> hl_regular_space A top = 1.
Admitted.

// HOL Light:  / PATH_CONNECTED_FROM_CLOSED_UNION_AND_INTER_LOCAL   (hash md5:82c843e6098193452d185e75be4ab166)
Theorem hlt_PATH_CONNECTED_FROM_CLOSED_UNION_AND_INTER_LOCAL : forall N:set, N <> Empty -> forall u s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_path_connected N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_path_connected N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_path_connected N s = 1 /\ hl_path_connected N t = 1.
Admitted.

// HOL Light:  / PATH_CONNECTED_FROM_OPEN_UNION_AND_INTER_LOCAL   (hash md5:2b1002cd55c41f75cb0e92ab911fedfe)
Theorem hlt_PATH_CONNECTED_FROM_OPEN_UNION_AND_INTER_LOCAL : forall N:set, N <> Empty -> forall u s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) t = 1 /\ (hl_path_connected N (hl_UNION (hl_ty_cart R N) s t) = 1 /\ hl_path_connected N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_path_connected N s = 1 /\ hl_path_connected N t = 1.
Admitted.

// HOL Light:  / POSET_ANTISYM   (hash md5:ba13202582f948e2591fea30c6186b30)
Theorem hlt_POSET_ANTISYM : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y.
Admitted.

// HOL Light:  / POSET_REFL   (hash md5:8dad76bdce58b79642205a8ab04ab9b6)
Theorem hlt_POSET_REFL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> forall x :e A, hl_fld A l x = 1 -> l x x = 1.
Admitted.

// HOL Light:  / POSET_TRANS   (hash md5:b29c36449f93ca446a3c710c5b86b04d)
Theorem hlt_POSET_TRANS : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1.
Admitted.

// HOL Light:  / POSITIVE_DEFINITE_EQ_CONGRUENT_IDENTITY   (hash md5:5b66e171665364df45e998260aef6164)
Theorem hlt_POSITIVE_DEFINITE_EQ_CONGRUENT_IDENTITY : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 <-> exists B :e hl_ty_cart (hl_ty_cart R N) N, hl_matrix_mul N N N (hl_transp N N B) (hl_matrix_mul N N N A B) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light:  / POSITIVE_DEFINITE_EQ_CONGRUENT_IDENTITY_ALT   (hash md5:b0c9905a3bece24a545c2d504221444c)
Theorem hlt_POSITIVE_DEFINITE_EQ_CONGRUENT_IDENTITY_ALT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 <-> exists B :e hl_ty_cart (hl_ty_cart R N) N, hl_invertible N N B = 1 /\ hl_matrix_mul N N N (hl_transp N N B) (hl_matrix_mul N N N A B) = hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light:  / POSITIVE_DEFINITE_HADAMARD_PRODUCT   (hash md5:542b66ad42ca01d018540549aa416dee)
Theorem hlt_POSITIVE_DEFINITE_HADAMARD_PRODUCT : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_definite N A = 1 /\ hl_positive_definite N B = 1 -> hl_positive_definite N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N B i) j)))) = 1.
Admitted.

// HOL Light:  / POSITIVE_SEMIDEFINITE_COVARIANCE_EQ   (hash md5:75aaa9d5603a6049fedd3ed93adb5dee)
Theorem hlt_POSITIVE_SEMIDEFINITE_COVARIANCE_EQ : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 <-> exists S :e hl_ty_cart (hl_ty_cart R N) N, A = hl_matrix_mul N N N (hl_transp N N S) S.
Admitted.

// HOL Light:  / POSITIVE_SEMIDEFINITE_COVARIANCE_EQ_ALT   (hash md5:93aed472c7aca3e848f1fdcf700fcda8)
Theorem hlt_POSITIVE_SEMIDEFINITE_COVARIANCE_EQ_ALT : forall N:set, N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 <-> exists S :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N S = 1 /\ A = hl_matrix_mul N N N (hl_transp N N S) S.
Admitted.

// HOL Light:  / POSITIVE_SEMIDEFINITE_HADAMARD_PRODUCT   (hash md5:73ebce9ec2fe46c1cb7f60462f836bf3)
Theorem hlt_POSITIVE_SEMIDEFINITE_HADAMARD_PRODUCT : forall N:set, N <> Empty -> forall A B :e hl_ty_cart (hl_ty_cart R N) N, hl_positive_semidefinite N A = 1 /\ hl_positive_semidefinite N B = 1 -> hl_positive_semidefinite N (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_real_mul (hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j) (hl_vindex R N (hl_vindex (hl_ty_cart R N) N B i) j)))) = 1.
Admitted.

// HOL Light:  / PRIME_ORDER_EQ_NO_PROPER_SUBGROUPS   (hash md5:a57425b9e9e5d0eca96180257880eb1a)
Theorem hlt_PRIME_ORDER_EQ_NO_PROPER_SUBGROUPS : forall A:set, A <> Empty -> forall G :e hl_ty_group A, hl_FINITE A (hl_group_carrier A G) = 1 /\ (hl_CARD A (hl_group_carrier A G) = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime (hl_CARD A (hl_group_carrier A G)) = 1) <-> forall h :e 2 :^: A, hl_subgroup_of A h G = 1 -> h = hl_INSERT A (hl_group_id A G) (hl_EMPTY A) \/ h = hl_group_carrier A G.
Admitted.

// HOL Light:  / P_HULL   (hash md5:1b748527234ddc5aa480e4d160ac6992)
Theorem hlt_P_HULL : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, (forall f :e 2 :^: (2 :^: A), (forall s1 :e 2 :^: A, hl_IN (2 :^: A) s1 f = 1 -> P s1 = 1) -> P (hl_INTERS A f) = 1) -> P (hl_hull A P s) = 1.
Admitted.

// HOL Light:  / REAL_ADD_ASSOC   (hash md5:74a76cf70ce019499736a9012b5e2bae)
Theorem hlt_REAL_ADD_ASSOC : forall x y z :e R, hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z.
Admitted.

// HOL Light:  / REAL_ADD_LDISTRIB   (hash md5:9504058edead67a0aafeb005184604d1)
Theorem hlt_REAL_ADD_LDISTRIB : forall x y z :e R, hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z).
Admitted.

// HOL Light:  / REAL_ADD_LID   (hash md5:bc28e0af8830dd84eb7843fab3060c61)
Theorem hlt_REAL_ADD_LID : forall x :e R, hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x = x.
Admitted.

// HOL Light:  / REAL_ADD_LINV   (hash md5:69b62ed94b5a39a5cb6b939e9fd25fcf)
Theorem hlt_REAL_ADD_LINV : forall x :e R, hl_real_add (hl_real_neg x) x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light:  / REAL_ADD_SYM   (hash md5:69f4343bec6bd235a399ba23a38d19cf)
Theorem hlt_REAL_ADD_SYM : forall x y :e R, hl_real_add x y = hl_real_add y x.
Admitted.

// HOL Light:  / REAL_ARCH_RDIV_EQ_0   (hash md5:04ed96a2a351279f4bb0d661e355759d)
Theorem hlt_REAL_ARCH_RDIV_EQ_0 : forall x c :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ (forall m :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 -> hl_real_le (hl_real_mul (hl_real_of_num m) x) c = 1)) -> x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light:  / REAL_CLOSED_OPEN_INTERVAL   (hash md5:e234a739dfe393f435b37b5d6941fb5a)
Theorem hlt_REAL_CLOSED_OPEN_INTERVAL : forall a b :e R, hl_real_le a b = 1 -> hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R))) = hl_UNION R (hl_open_real_interval (hl_pair R R a b)) (hl_INSERT R a (hl_INSERT R b (hl_EMPTY R))).
Admitted.

// HOL Light:  / REAL_CONVEX_SUM_BOUND_LE   (hash md5:9098db0d6d34d4dfaa0548f6250b774b)
Theorem hlt_REAL_CONVEX_SUM_BOUND_LE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall d :e R, forall a :e R :^: A, forall b :e R, forall x :e R :^: A, (forall i :e A, hl_IN A i s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (x i) = 1) /\ (hl_sum A s x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (forall i :e A, hl_IN A i s = 1 -> hl_real_le (hl_real_abs (hl_real_sub (a i) b)) d = 1)) -> hl_real_le (hl_real_abs (hl_real_sub (hl_sum A s (fun i :e A => hl_real_mul (a i) (x i))) b)) d = 1.
Admitted.

// HOL Light:  / REAL_CONVEX_SUM_BOUND_LT   (hash md5:8eb30549a2459ddee344c8a36afcf885)
Theorem hlt_REAL_CONVEX_SUM_BOUND_LT : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall d :e R, forall a :e R :^: A, forall b :e R, forall x :e R :^: A, (forall i :e A, hl_IN A i s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (x i) = 1) /\ (hl_sum A s x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (forall i :e A, hl_IN A i s = 1 -> hl_real_lt (hl_real_abs (hl_real_sub (a i) b)) d = 1)) -> hl_real_lt (hl_real_abs (hl_real_sub (hl_sum A s (fun i :e A => hl_real_mul (a i) (x i))) b)) d = 1.
Admitted.

// HOL Light:  / REAL_HALF   (hash md5:18cd9bae3943d5baa9dc5b382df62c6e)
Theorem hlt_REAL_HALF : (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1 <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) /\ ((forall e1 :e R, hl_real_add (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = e1) /\ forall e1 :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_div e1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = e1).
Admitted.

// HOL Light:  / REAL_INTERVAL_EQ_EMPTY   (hash md5:dda50884786e8fa3992d122cb59f3b0f)
Theorem hlt_REAL_INTERVAL_EQ_EMPTY : (forall a b :e R, hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R))) = hl_EMPTY R <-> hl_real_lt b a = 1) /\ forall a b :e R, hl_open_real_interval (hl_pair R R a b) = hl_EMPTY R <-> hl_real_le b a = 1.
Admitted.

// HOL Light:  / REAL_INTERVAL_NE_EMPTY   (hash md5:bd8b1157b9d6af850888da2e94a3a166)
Theorem hlt_REAL_INTERVAL_NE_EMPTY : (forall a b :e R, ~ hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R))) = hl_EMPTY R <-> hl_real_le a b = 1) /\ forall a b :e R, ~ hl_open_real_interval (hl_pair R R a b) = hl_EMPTY R <-> hl_real_lt a b = 1.
Admitted.

// HOL Light:  / REAL_INTERVAL_OPEN_SUBSET_CLOSED   (hash md5:6013d5029e60abad7ff4c39f02f493f5)
Theorem hlt_REAL_INTERVAL_OPEN_SUBSET_CLOSED : forall a b :e R, hl_SUBSET R (hl_open_real_interval (hl_pair R R a b)) (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) = 1.
Admitted.

// HOL Light:  / REAL_INTERVAL_SING   (hash md5:f0d1b639dfebe11dc4d3c3f57cb19d13)
Theorem hlt_REAL_INTERVAL_SING : forall a :e R, hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a a) (hl_NIL (R :*: R))) = hl_INSERT R a (hl_EMPTY R) /\ hl_open_real_interval (hl_pair R R a a) = hl_EMPTY R.
Admitted.

// HOL Light:  / REAL_INV_0   (hash md5:58bc73bd1864f8ac755987a82d6740f3)
Theorem hlt_REAL_INV_0 : hl_real_inv (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light:  / REAL_LET_BETWEEN   (hash md5:8ded4a221cc0c69e4657371588e7b297)
Theorem hlt_REAL_LET_BETWEEN : forall a b :e R, hl_real_lt a b = 1 <-> exists x :e R, hl_real_le a x = 1 /\ hl_real_lt x b = 1.
Admitted.

// HOL Light:  / REAL_LE_ANTISYM   (hash md5:2a36fae7a764e7b6f8d1470ecbd9d3be)
Theorem hlt_REAL_LE_ANTISYM : forall x y :e R, hl_real_le x y = 1 /\ hl_real_le y x = 1 <-> x = y.
Admitted.

// HOL Light:  / REAL_LE_BETWEEN   (hash md5:e6c510df10145d6664cfc9ed815d8460)
Theorem hlt_REAL_LE_BETWEEN : forall a b :e R, hl_real_le a b = 1 <-> exists x :e R, hl_real_le a x = 1 /\ hl_real_le x b = 1.
Admitted.

// HOL Light:  / REAL_LE_LADD_IMP   (hash md5:e8653e43300f16893ae7f5529f64d7cf)
Theorem hlt_REAL_LE_LADD_IMP : forall x y z :e R, hl_real_le y z = 1 -> hl_real_le (hl_real_add x y) (hl_real_add x z) = 1.
Admitted.

// HOL Light:  / REAL_LE_MUL   (hash md5:c9eb15fcdfc4e3e8805ec06d0461d25f)
Theorem hlt_REAL_LE_MUL : forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1.
Admitted.

// HOL Light:  / REAL_LE_REFL   (hash md5:597f574f403c13d75887c264bf98d7ab)
Theorem hlt_REAL_LE_REFL : forall x :e R, hl_real_le x x = 1.
Admitted.

// HOL Light:  / REAL_LE_TOTAL   (hash md5:f100ea3864b4736d03f4488873b9fdf2)
Theorem hlt_REAL_LE_TOTAL : forall x y :e R, hl_real_le x y = 1 \/ hl_real_le y x = 1.
Admitted.

// HOL Light:  / REAL_LE_TRANS   (hash md5:650af3c1406ad5babc239cd1e46503bc)
Theorem hlt_REAL_LE_TRANS : forall x y z :e R, hl_real_le x y = 1 /\ hl_real_le y z = 1 -> hl_real_le x z = 1.
Admitted.

// HOL Light:  / REAL_LTE_BETWEEN   (hash md5:f5bc722130d30916e847a44ca3a81102)
Theorem hlt_REAL_LTE_BETWEEN : forall a b :e R, hl_real_lt a b = 1 <-> exists x :e R, hl_real_lt a x = 1 /\ hl_real_le x b = 1.
Admitted.

// HOL Light:  / REAL_LT_BETWEEN   (hash md5:c54a729daba7483f8b0f6cc52cced18a)
Theorem hlt_REAL_LT_BETWEEN : forall a b :e R, hl_real_lt a b = 1 <-> exists x :e R, hl_real_lt a x = 1 /\ hl_real_lt x b = 1.
Admitted.

// HOL Light:  / REAL_LT_BETWEEN_GEN   (hash md5:cf6e53c88019474c11db7f85f40a9b9b)
Theorem hlt_REAL_LT_BETWEEN_GEN : forall s t :e 2 :^: R, hl_FINITE R s = 1 /\ hl_FINITE R t = 1 -> ((exists x :e R, (forall a :e R, hl_IN R a s = 1 -> hl_real_lt a x = 1) /\ forall b :e R, hl_IN R b t = 1 -> hl_real_lt x b = 1) <-> forall a b :e R, hl_IN R a s = 1 /\ hl_IN R b t = 1 -> hl_real_lt a b = 1).
Admitted.

// HOL Light:  / REAL_MUL_ASSOC   (hash md5:9ea7c36e21183fa79ec8bfdc791ec8c6)
Theorem hlt_REAL_MUL_ASSOC : forall x y z :e R, hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z.
Admitted.

// HOL Light:  / REAL_MUL_LID   (hash md5:fa6266f855ff7b740d82e448c2b4c45d)
Theorem hlt_REAL_MUL_LID : forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x.
Admitted.

// HOL Light:  / REAL_MUL_LINV   (hash md5:a9878dfb3f8f4e0493a76e9de2ddf29c)
Theorem hlt_REAL_MUL_LINV : forall x :e R, ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_mul (hl_real_inv x) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light:  / REAL_MUL_SYM   (hash md5:863e7ca45d4101c0041b89d44ea64c52)
Theorem hlt_REAL_MUL_SYM : forall x y :e R, hl_real_mul x y = hl_real_mul y x.
Admitted.

// HOL Light:  / REAL_NON_MONOTONE   (hash md5:7e0ed4b9297266aab12dc589bcaf6e1a)
Theorem hlt_REAL_NON_MONOTONE : forall P :e 2 :^: R, forall f :e R :^: R, (forall x y :e R, P x = 1 /\ (P y = 1 /\ hl_real_le x y = 1) -> hl_real_le (f x) (f y) = 1) \/ (forall x y :e R, P x = 1 /\ (P y = 1 /\ hl_real_le x y = 1) -> hl_real_le (f y) (f x) = 1) <-> ~ exists x y z :e R, P x = 1 /\ (P y = 1 /\ (P z = 1 /\ (hl_real_lt x y = 1 /\ (hl_real_lt y z = 1 /\ (hl_real_lt (f x) (f y) = 1 /\ hl_real_lt (f z) (f y) = 1 \/ hl_real_lt (f y) (f x) = 1 /\ hl_real_lt (f y) (f z) = 1))))).
Admitted.

// HOL Light:  / REAL_OF_NUM_ADD   (hash md5:783dde967a79844cda42d3f3e75c41ad)
Theorem hlt_REAL_OF_NUM_ADD : forall m n :e omega, hl_real_add (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_add m n).
Admitted.

// HOL Light:  / REAL_OF_NUM_EQ   (hash md5:e649467213c154968e334408a35629a3)
Theorem hlt_REAL_OF_NUM_EQ : forall m n :e omega, hl_real_of_num m = hl_real_of_num n <-> m = n.
Admitted.

// HOL Light:  / REAL_OF_NUM_LE   (hash md5:b38ea287b1a6fde1b028bc2167d47117)
Theorem hlt_REAL_OF_NUM_LE : forall m n :e omega, hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl_le m n = 1.
Admitted.

// HOL Light:  / REAL_OF_NUM_MUL   (hash md5:5d6f0dca606a500bcdc82080ce708462)
Theorem hlt_REAL_OF_NUM_MUL : forall m n :e omega, hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_mul m n).
Admitted.

// HOL Light:  / REAL_OPEN_CLOSED_INTERVAL   (hash md5:0edd50ac1e08116f757ce5443daab891)
Theorem hlt_REAL_OPEN_CLOSED_INTERVAL : forall a b :e R, hl_open_real_interval (hl_pair R R a b) = hl_DIFF R (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) (hl_INSERT R a (hl_INSERT R b (hl_EMPTY R))).
Admitted.

// HOL Light:  / RECURSION_ON_DYADIC_FRACTIONS   (hash md5:2c633b7a4fd1d13635a8963302dde36e)
Theorem hlt_RECURSION_ON_DYADIC_FRACTIONS : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall a b :e A, (forall x y z :e A, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1) /\ (R1 a b = 1 /\ (forall x y :e A, R1 x y = 1 -> exists z :e A, R1 x z = 1 /\ R1 z y = 1)) -> exists f :e A :^: R, f (hl_real_of_num (hl_NUMERAL hl_zero)) = a /\ (f (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = b /\ forall x y :e R, hl_IN R x (hl_GSPEC R (fun GEN_PVAR_680 :e R => if exists k n :e omega, hl_SETSPEC R GEN_PVAR_680 (hl_le k (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) (hl_real_div (hl_real_of_num k) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) = 1 then 1 else 0)) = 1 /\ (hl_IN R y (hl_GSPEC R (fun GEN_PVAR_681 :e R => if exists k n :e omega, hl_SETSPEC R GEN_PVAR_681 (hl_le k (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) (hl_real_div (hl_real_of_num k) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) = 1 then 1 else 0)) = 1 /\ hl_real_lt x y = 1) -> R1 (f x) (f y) = 1).
Admitted.

// HOL Light:  / REFLECT_REAL_INTERVAL   (hash md5:bfee800006e4b8469d14bafb63d62445)
Theorem hlt_REFLECT_REAL_INTERVAL : (forall a b :e R, hl_IMAGE R R hl_real_neg (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) = hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R (hl_real_neg b) (hl_real_neg a)) (hl_NIL (R :*: R)))) /\ forall a b :e R, hl_IMAGE R R hl_real_neg (hl_open_real_interval (hl_pair R R a b)) = hl_open_real_interval (hl_pair R R (hl_real_neg b) (hl_real_neg a)).
Admitted.

// HOL Light:  / RELATIVE_TO   (hash md5:9c3e056f3135ff7a27ddbd53c8224f5c)
Theorem hlt_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u :e 2 :^: A, hl_relative_to A P u = hl_GSPEC (2 :^: A) (fun GEN_PVAR_657 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_657 (P s) (hl_INTER A u s) = 1 then 1 else 0).
Admitted.

// HOL Light:  / RELATIVE_TO_COMPL   (hash md5:05b1fb37bc246558328f15f1493b0b1a)
Theorem hlt_RELATIVE_TO_COMPL : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u s :e 2 :^: A, hl_SUBSET A s u = 1 -> (hl_relative_to A P u (hl_DIFF A u s) = 1 <-> hl_relative_to A (fun c :e 2 :^: A => P (hl_DIFF A (hl_UNIV A) c)) u s = 1).
Admitted.

// HOL Light:  / RELATIVE_TO_IMP_SUBSET   (hash md5:70f94ec9403fc737e4dae551367a381a)
Theorem hlt_RELATIVE_TO_IMP_SUBSET : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_relative_to A P s t = 1 -> hl_SUBSET A t s = 1.
Admitted.

// HOL Light:  / RELATIVE_TO_INC   (hash md5:7cedeb7d72246e7f7af8d979fd06ce76)
Theorem hlt_RELATIVE_TO_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u s :e 2 :^: A, P s = 1 -> hl_relative_to A P u (hl_INTER A u s) = 1.
Admitted.

// HOL Light:  / RELATIVE_TO_INTER   (hash md5:f8570de11f0bcb9bbcc6fbbb9d30b837)
Theorem hlt_RELATIVE_TO_INTER : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, (forall c d :e 2 :^: A, P c = 1 /\ P d = 1 -> P (hl_INTER A c d) = 1) -> forall c d :e 2 :^: A, hl_relative_to A P s c = 1 /\ hl_relative_to A P s d = 1 -> hl_relative_to A P s (hl_INTER A c d) = 1.
Admitted.

// HOL Light:  / RELATIVE_TO_MONO   (hash md5:4935ffe3a789b1e8ca42142f181cf935)
Theorem hlt_RELATIVE_TO_MONO : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall P Q :e 2 :^: (2 :^: A), (forall s1 :e 2 :^: A, P s1 = 1 -> Q s1 = 1) -> forall u :e 2 :^: A, hl_relative_to A P u s = 1 -> hl_relative_to A Q u s = 1.
Admitted.

// HOL Light:  / RELATIVE_TO_RELATIVE_TO   (hash md5:75cfc16699db24af35150fabc98fb8cc)
Theorem hlt_RELATIVE_TO_RELATIVE_TO : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_relative_to A (hl_relative_to A P s) t = hl_relative_to A P (hl_INTER A s t).
Admitted.

// HOL Light:  / RELATIVE_TO_SUBSET   (hash md5:d39a62b8bb6ef93242b9cea4a57336c1)
Theorem hlt_RELATIVE_TO_SUBSET : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ P s = 1 -> hl_relative_to A P t s = 1.
Admitted.

// HOL Light:  / RELATIVE_TO_SUBSET_INC   (hash md5:120610080a9b3de84bb5c2603d13a7a3)
Theorem hlt_RELATIVE_TO_SUBSET_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u s :e 2 :^: A, hl_SUBSET A s u = 1 /\ P s = 1 -> hl_relative_to A P u s = 1.
Admitted.

// HOL Light:  / RELATIVE_TO_SUBSET_TRANS   (hash md5:48370076e23d2798505477b9ea52ff14)
Theorem hlt_RELATIVE_TO_SUBSET_TRANS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall u s t :e 2 :^: A, hl_relative_to A P u s = 1 /\ (hl_SUBSET A s t = 1 /\ hl_SUBSET A t u = 1) -> hl_relative_to A P t s = 1.
Admitted.

// HOL Light:  / RELATIVE_TO_UNION   (hash md5:2b6869b7648d4ab4df46c1d6804ccd9a)
Theorem hlt_RELATIVE_TO_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, (forall c d :e 2 :^: A, P c = 1 /\ P d = 1 -> P (hl_UNION A c d) = 1) -> forall c d :e 2 :^: A, hl_relative_to A P s c = 1 /\ hl_relative_to A P s d = 1 -> hl_relative_to A P s (hl_UNION A c d) = 1.
Admitted.

// HOL Light:  / RELATIVE_TO_UNIV   (hash md5:bd92aa50e9747e9d72fe0fc75e7dd4a2)
Theorem hlt_RELATIVE_TO_UNIV : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_relative_to A P (hl_UNIV A) s = 1 <-> P s = 1.
Admitted.

// HOL Light:  / SEQ_MONO_LEMMA   (hash md5:7fe97efc1aa9b12ae82c1b9ff9be3404)
Theorem hlt_SEQ_MONO_LEMMA : forall m :e omega, forall d e1 :e R :^: omega, (forall n :e omega, hl_ge n m = 1 -> hl_real_lt (d n) (e1 n) = 1) /\ (forall n :e omega, hl_ge n m = 1 -> hl_real_le (e1 n) (e1 m) = 1) -> forall n :e omega, hl_ge n m = 1 -> hl_real_lt (d n) (e1 m) = 1.
Admitted.

// HOL Light:  / STRICTLY_DECREASING_ALT   (hash md5:d0e1101b08ae8524ca1ac1e71f78ba7e)
Theorem hlt_STRICTLY_DECREASING_ALT : forall P :e 2 :^: R, forall f :e R :^: R, (forall x y :e R, P x = 1 /\ (P y = 1 /\ hl_real_lt x y = 1) -> hl_real_lt (f y) (f x) = 1) <-> (forall x y :e R, P x = 1 /\ (P y = 1 /\ hl_real_le x y = 1) -> hl_real_le (f y) (f x) = 1) /\ forall x y :e R, P x = 1 /\ (P y = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light:  / STRICTLY_INCREASING_ALT   (hash md5:8a0329fd4b5a3170e8161cf62d7dfea7)
Theorem hlt_STRICTLY_INCREASING_ALT : forall P :e 2 :^: R, forall f :e R :^: R, (forall x y :e R, P x = 1 /\ (P y = 1 /\ hl_real_lt x y = 1) -> hl_real_lt (f x) (f y) = 1) <-> (forall x y :e R, P x = 1 /\ (P y = 1 /\ hl_real_le x y = 1) -> hl_real_le (f x) (f y) = 1) /\ forall x y :e R, P x = 1 /\ (P y = 1 /\ f x = f y) -> x = y.
Admitted.

// HOL Light:  / SUBSEQUENCE_DIAGONALIZATION_LEMMA   (hash md5:cffccdc4b85622b40bd2183fdfa62b23)
Theorem hlt_SUBSEQUENCE_DIAGONALIZATION_LEMMA : forall A:set, A <> Empty -> forall P :e 2 :^: (A :^: omega) :^: omega, (forall i :e omega, forall r :e A :^: omega, exists k :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (k m) (k n) = 1) /\ P i (hl_o omega A omega r k) = 1) /\ (forall i :e omega, forall r :e A :^: omega, forall k1 k2 :e omega :^: omega, forall N :e omega, P i (hl_o omega A omega r k1) = 1 /\ (forall j :e omega, hl_le N j = 1 -> exists j' :e omega, hl_le j j' = 1 /\ k2 j = k1 j') -> P i (hl_o omega A omega r k2) = 1) -> forall r :e A :^: omega, exists k :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (k m) (k n) = 1) /\ forall i :e omega, P i (hl_o omega A omega r k) = 1.
Admitted.

// HOL Light:  / SUBSEQUENCE_IMP_INJECTIVE   (hash md5:d5d680c8a10027a765816c2ebec6335b)
Theorem hlt_SUBSEQUENCE_IMP_INJECTIVE : forall r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) -> forall m n :e omega, r m = r n <-> m = n.
Admitted.

// HOL Light:  / SUBSEQUENCE_STEPWISE   (hash md5:c6c269d05343cd0371438d8b45d8f9e2)
Theorem hlt_SUBSEQUENCE_STEPWISE : forall r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) <-> forall n :e omega, hl_lt (r n) (r (hl_SUC n)) = 1.
Admitted.

// HOL Light:  / SUBSET_HULL   (hash md5:1f8517fdc8c9431f67d1921a7a73c9f0)
Theorem hlt_SUBSET_HULL : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, P t = 1 -> (hl_SUBSET A (hl_hull A P s) t = 1 <-> hl_SUBSET A s t = 1).
Admitted.

// HOL Light:  / SUBSET_REAL_INTERVAL   (hash md5:d1fc48d3f1f2ed5e135c2b6a922c1bdf)
Theorem hlt_SUBSET_REAL_INTERVAL : forall a b c d :e R, (hl_SUBSET R (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R c d) (hl_NIL (R :*: R)))) = 1 <-> hl_real_lt b a = 1 \/ hl_real_le c a = 1 /\ (hl_real_le a b = 1 /\ hl_real_le b d = 1)) /\ ((hl_SUBSET R (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R)))) (hl_open_real_interval (hl_pair R R c d)) = 1 <-> hl_real_lt b a = 1 \/ hl_real_lt c a = 1 /\ (hl_real_le a b = 1 /\ hl_real_lt b d = 1)) /\ ((hl_SUBSET R (hl_open_real_interval (hl_pair R R a b)) (hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R c d) (hl_NIL (R :*: R)))) = 1 <-> hl_real_le b a = 1 \/ hl_real_le c a = 1 /\ (hl_real_lt a b = 1 /\ hl_real_le b d = 1)) /\ (hl_SUBSET R (hl_open_real_interval (hl_pair R R a b)) (hl_open_real_interval (hl_pair R R c d)) = 1 <-> hl_real_le b a = 1 \/ hl_real_le c a = 1 /\ (hl_real_lt a b = 1 /\ hl_real_le b d = 1)))).
Admitted.

// HOL Light:  / SUM_GP   (hash md5:3b6983aaadd5ef0cda39d3081837e538)
Theorem hlt_SUM_GP : forall x :e R, forall m n :e omega, hl_sum omega (hl_numseg m n) (fun i :e omega => hl_real_pow x i) = hl_COND R (hl_lt n m) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_COND R (if x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) (hl_real_of_num (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m)) (hl_real_div (hl_real_sub (hl_real_pow x m) (hl_real_pow x (hl_SUC n))) (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x))).
Admitted.

// HOL Light:  / SUM_GP_BASIC   (hash md5:90d0718180c4b1f31f9d330f75e3320e)
Theorem hlt_SUM_GP_BASIC : forall x :e R, forall n :e omega, hl_real_mul (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_pow x i)) = hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_pow x (hl_SUC n)).
Admitted.

// HOL Light:  / SUM_GP_MULTIPLIED   (hash md5:92514d7ec42b07a220c06343249365e7)
Theorem hlt_SUM_GP_MULTIPLIED : forall x :e R, forall m n :e omega, hl_le m n = 1 -> hl_real_mul (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x) (hl_sum omega (hl_numseg m n) (fun i :e omega => hl_real_pow x i)) = hl_real_sub (hl_real_pow x m) (hl_real_pow x (hl_SUC n)).
Admitted.

// HOL Light:  / SUM_GP_OFFSET   (hash md5:10b07ead8205b7b96091efe13fe8b43a)
Theorem hlt_SUM_GP_OFFSET : forall x :e R, forall m n :e omega, hl_sum omega (hl_numseg m (hl_add m n)) (fun i :e omega => hl_real_pow x i) = hl_COND R (if x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) (hl_real_add (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_pow x m) (hl_real_div (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_pow x (hl_SUC n))) (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x))).
Admitted.

// HOL Light:  / SUSLIN_INC   (hash md5:be58ba60ce692f9ed27f6511b6072bf9)
Theorem hlt_SUSLIN_INC : forall A:set, A <> Empty -> forall C :e 2 :^: (2 :^: A), forall s :e 2 :^: A, C s = 1 -> hl_suslin A C s = 1.
Admitted.

// HOL Light:  / SUSLIN_INTER   (hash md5:f6175944e33733fef4b09a55c5722519)
Theorem hlt_SUSLIN_INTER : forall A:set, A <> Empty -> forall C :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_suslin A C s = 1 /\ hl_suslin A C t = 1 -> hl_suslin A C (hl_INTER A s t) = 1.
Admitted.

// HOL Light:  / SUSLIN_INTERS   (hash md5:3bb354a8df4534bbd9996d70059c1022)
Theorem hlt_SUSLIN_INTERS : forall A:set, A <> Empty -> forall C f :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) f = 1 /\ (~ f = hl_EMPTY (2 :^: A) /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s f = 1 -> hl_suslin A C s = 1)) -> hl_suslin A C (hl_INTERS A f) = 1.
Admitted.

// HOL Light:  / SUSLIN_MONO   (hash md5:8b5949a55064ed369cfdf17bd4178213)
Theorem hlt_SUSLIN_MONO : forall A:set, A <> Empty -> forall C D :e 2 :^: (2 :^: A), forall s :e 2 :^: A, (forall t :e 2 :^: A, C t = 1 -> D t = 1) /\ hl_suslin A C s = 1 -> hl_suslin A D s = 1.
Admitted.

// HOL Light:  / SUSLIN_REGULAR   (hash md5:9a44c644b4971a28237f380fa3dbad84)
Theorem hlt_SUSLIN_REGULAR : forall A:set, A <> Empty -> forall u :e 2 :^: (2 :^: A), (forall c :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) c = 1 /\ (~ c = hl_EMPTY (2 :^: A) /\ hl_SUBSET (2 :^: A) c u = 1) -> hl_IN (2 :^: A) (hl_INTERS A c) u = 1) -> hl_suslin A u = hl_GSPEC (2 :^: A) (fun GEN_PVAR_687 :e 2 :^: A => if exists f :e 2 :^: A :^: finseq omega, hl_SETSPEC (2 :^: A) GEN_PVAR_687 (if (forall l :e finseq omega, ~ l = hl_NIL omega -> hl_IN (2 :^: A) (f l) u = 1) /\ forall s :e omega :^: omega, forall m n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ hl_le m n = 1 -> hl_SUBSET A (f (hl_list_of_seq omega s n)) (f (hl_list_of_seq omega s m)) = 1 then 1 else 0) (hl_suslin_operation A f) = 1 then 1 else 0).
Admitted.

// HOL Light:  / SUSLIN_SUBSET   (hash md5:e408b616fd38259821c15b52b51c44b8)
Theorem hlt_SUSLIN_SUBSET : forall A:set, A <> Empty -> forall C D :e 2 :^: (2 :^: A), hl_SUBSET (2 :^: A) C D = 1 -> hl_SUBSET (2 :^: A) (hl_suslin A C) (hl_suslin A D) = 1.
Admitted.

// HOL Light:  / SUSLIN_SUPERSET   (hash md5:df75bf6e6422a43e9915fb68f9e229d8)
Theorem hlt_SUSLIN_SUPERSET : forall A:set, A <> Empty -> forall u :e 2 :^: (2 :^: A), hl_SUBSET (2 :^: A) u (hl_suslin A u) = 1.
Admitted.

// HOL Light:  / SUSLIN_SUSLIN   (hash md5:464965fc071704dabfaefe193a0be33c)
Theorem hlt_SUSLIN_SUSLIN : forall A:set, A <> Empty -> forall u :e 2 :^: (2 :^: A), hl_suslin A (hl_suslin A u) = hl_suslin A u.
Admitted.

// HOL Light:  / SUSLIN_UNION   (hash md5:7dff975a5560e8619ca41504fa88f2c7)
Theorem hlt_SUSLIN_UNION : forall A:set, A <> Empty -> forall C :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_suslin A C s = 1 /\ hl_suslin A C t = 1 -> hl_suslin A C (hl_UNION A s t) = 1.
Admitted.

// HOL Light:  / SUSLIN_UNIONS   (hash md5:b8d7e74f932cd7c40c90e82027031fcd)
Theorem hlt_SUSLIN_UNIONS : forall A:set, A <> Empty -> forall C f :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) f = 1 /\ (~ f = hl_EMPTY (2 :^: A) /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s f = 1 -> hl_suslin A C s = 1)) -> hl_suslin A C (hl_UNIONS A f) = 1.
Admitted.

// HOL Light:  / TRIANGLE_LEMMA   (hash md5:c0b4c20d689f99bdaf0086400b2bd7bd)
Theorem hlt_TRIANGLE_LEMMA : forall x y z :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) z = 1 /\ hl_real_le (hl_real_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow z (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) -> hl_real_le x (hl_real_add y z) = 1.
Admitted.

// HOL Light:  / UNIFORMLY_CONTINUOUS_MAP_SEQUENTIALLY   (hash md5:78ac3d74078805c1d1dab138193b09f2)
Theorem hlt_UNIFORMLY_CONTINUOUS_MAP_SEQUENTIALLY : forall A B:set, A <> Empty -> B <> Empty -> forall m1 :e hl_ty_metric A, forall m2 :e hl_ty_metric B, forall f :e B :^: A, hl_uniformly_continuous_map A B (hl_pair (hl_ty_metric A) (hl_ty_metric B) m1 m2) f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_mspace A m1)) (hl_mspace B m2) = 1 /\ forall x y :e A :^: omega, (forall n :e omega, hl_IN A (x n) (hl_mspace A m1) = 1) /\ ((forall n :e omega, hl_IN A (y n) (hl_mspace A m1) = 1) /\ hl_limit R omega hl_euclideanreal (fun n :e omega => hl_mdist A m1 (hl_pair A A (x n) (y n))) (hl_real_of_num (hl_NUMERAL hl_zero)) hl_sequentially = 1) -> hl_limit R omega hl_euclideanreal (fun n :e omega => hl_mdist B m2 (hl_pair B B (f (x n)) (f (y n)))) (hl_real_of_num (hl_NUMERAL hl_zero)) hl_sequentially = 1.
Admitted.

// HOL Light:  / UNIFORMLY_CONTINUOUS_MAP_SEQUENTIALLY_ALT   (hash md5:e793140ee0be01d1463ba40de4ba1630)
Theorem hlt_UNIFORMLY_CONTINUOUS_MAP_SEQUENTIALLY_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall m1 :e hl_ty_metric A, forall m2 :e hl_ty_metric B, forall f :e B :^: A, hl_uniformly_continuous_map A B (hl_pair (hl_ty_metric A) (hl_ty_metric B) m1 m2) f = 1 <-> hl_SUBSET B (hl_IMAGE A B f (hl_mspace A m1)) (hl_mspace B m2) = 1 /\ forall e1 :e R, forall x y :e A :^: omega, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ ((forall n :e omega, hl_IN A (x n) (hl_mspace A m1) = 1) /\ ((forall n :e omega, hl_IN A (y n) (hl_mspace A m1) = 1) /\ hl_limit R omega hl_euclideanreal (fun n :e omega => hl_mdist A m1 (hl_pair A A (x n) (y n))) (hl_real_of_num (hl_NUMERAL hl_zero)) hl_sequentially = 1)) -> exists n :e omega, hl_real_lt (hl_mdist B m2 (hl_pair B B (f (x n)) (f (y n)))) e1 = 1.
Admitted.

// HOL Light:  / UNIFORMLY_CONTINUOUS_ON_SEQUENTIALLY   (hash md5:4026f6470c798d877396fe3cb0503112)
Theorem hlt_UNIFORMLY_CONTINUOUS_ON_SEQUENTIALLY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_uniformly_continuous_on M N f s = 1 <-> forall x y :e hl_ty_cart R M :^: omega, (forall n :e omega, hl_IN (hl_ty_cart R M) (x n) s = 1) /\ ((forall n :e omega, hl_IN (hl_ty_cart R M) (y n) s = 1) /\ hl_tendsto omega M (fun n :e omega => hl_vector_sub M (x n) (y n)) (hl_vec M (hl_NUMERAL hl_zero)) hl_sequentially = 1) -> hl_tendsto omega N (fun n :e omega => hl_vector_sub N (f (x n)) (f (y n))) (hl_vec N (hl_NUMERAL hl_zero)) hl_sequentially = 1.
Admitted.

// HOL Light:  / UNIFORMLY_CONTINUOUS_ON_SEQUENTIALLY_ALT   (hash md5:33372305f98e0eb3205db0b5b92a8b0f)
Theorem hlt_UNIFORMLY_CONTINUOUS_ON_SEQUENTIALLY_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_uniformly_continuous_on M N f s = 1 <-> forall e1 :e R, forall x y :e hl_ty_cart R M :^: omega, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ ((forall n :e omega, hl_IN (hl_ty_cart R M) (x n) s = 1) /\ ((forall n :e omega, hl_IN (hl_ty_cart R M) (y n) s = 1) /\ hl_tendsto omega M (fun n :e omega => hl_vector_sub M (x n) (y n)) (hl_vec M (hl_NUMERAL hl_zero)) hl_sequentially = 1)) -> exists n :e omega, hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f (x n)) (f (y n)))) e1 = 1.
Admitted.

// HOL Light:  / UPPER_BOUND_FINITE_SET   (hash md5:c5be7e653b78f8c25821729043c78fb7)
Theorem hlt_UPPER_BOUND_FINITE_SET : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> exists a :e omega, forall x :e A, hl_IN A x s = 1 -> hl_le (f x) a = 1.
Admitted.

// HOL Light:  / UPPER_BOUND_FINITE_SET_REAL   (hash md5:a055ff4f48ea82858211505d0cab1798)
Theorem hlt_UPPER_BOUND_FINITE_SET_REAL : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> exists a :e R, forall x :e A, hl_IN A x s = 1 -> hl_real_le (f x) a = 1.
Admitted.

// HOL Light:  / VECTORIZE_COMPONENT   (hash md5:15dc8a4dbc7780133707c250547f72ef)
Theorem hlt_VECTORIZE_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall m :e hl_ty_cart (hl_ty_cart A N) M, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_mul (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_vindex A (hl_ty_finite_prod M N) (hl_vectorize A N M m) i = hl_vindex A N (hl_vindex (hl_ty_cart A N) M m (hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_DIV (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))))) (hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_MOD (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)))).
Admitted.

// HOL Light:  / VECTORIZE_EQ   (hash md5:99a417ffb80187bae0fa501979211e83)
Theorem hlt_VECTORIZE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall m1 m2 :e hl_ty_cart (hl_ty_cart R N) M, hl_vectorize R N M m1 = hl_vectorize R N M m2 <-> m1 = m2.
Admitted.

// HOL Light:  / VECTORIZE_GSPEC   (hash md5:6dc1cf0af913969f63896733951c1107)
Theorem hlt_VECTORIZE_GSPEC : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall P :e 2 :^: hl_ty_cart (hl_ty_cart A N) M, hl_GSPEC (hl_ty_cart A (hl_ty_finite_prod M N)) (fun GEN_PVAR_636 :e hl_ty_cart A (hl_ty_finite_prod M N) => if exists m :e hl_ty_cart (hl_ty_cart A N) M, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_prod M N)) GEN_PVAR_636 (P m) (hl_vectorize A N M m) = 1 then 1 else 0) = hl_GSPEC (hl_ty_cart A (hl_ty_finite_prod M N)) (fun GEN_PVAR_637 :e hl_ty_cart A (hl_ty_finite_prod M N) => if exists v :e hl_ty_cart A (hl_ty_finite_prod M N), hl_SETSPEC (hl_ty_cart A (hl_ty_finite_prod M N)) GEN_PVAR_637 (P (hl_matrify A M N v)) v = 1 then 1 else 0).
Admitted.

// HOL Light:  / VECTORIZE_MATRIFY   (hash md5:a9e4fe245e083b1a6ef9624cdd2870e5)
Theorem hlt_VECTORIZE_MATRIFY : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall a :e hl_ty_cart A (hl_ty_finite_prod M N), hl_vectorize A N M (hl_matrify A M N a) = a.
Admitted.

// HOL Light:  / VECTOR_VARIATION_COMPOSE_INCREASING   (hash md5:fcf7a352ed1104c3818dd732e31bf5b0)
Theorem hlt_VECTOR_VARIATION_COMPOSE_INCREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ hl_has_bounded_variation_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f a) (f b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f)) (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f a) (f b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) g) = 1.
Admitted.

// HOL Light:  / VECTOR_VARIATION_COMPOSE_INCREASING_GEN   (hash md5:b0388a3e1cc28db93c05e8041106fb94)
Theorem hlt_VECTOR_VARIATION_COMPOSE_INCREASING_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_is_interval 1 t = 1 /\ (hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) t = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ hl_has_bounded_variation_on N g t = 1))) -> hl_real_le (hl_vector_variation N s (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f)) (hl_vector_variation N t g) = 1.
Admitted.

// HOL Light:  / VECTOR_VARIATION_REFLECT_INTERVAL   (hash md5:451a772b0d5518dff7188206ca270d97)
Theorem hlt_VECTOR_VARIATION_REFLECT_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => f (hl_vector_neg 1 x)) = hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 v) (hl_vector_neg 1 u)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f.
Admitted.

// HOL Light:  / VECTOR_VARIATION_TRANSLATION_INTERVAL   (hash md5:b611ab2242f5521c4b8109169c3f1c55)
Theorem hlt_VECTOR_VARIATION_TRANSLATION_INTERVAL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 a x)) = hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_add 1 a u) (hl_vector_add 1 a v)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f.
Admitted.

// HOL Light:  / VECTOR_VARIATION_VECTOR_VARIATION   (hash md5:7c354fdb5277fe9a5b98b18b2790a09e)
Theorem hlt_VECTOR_VARIATION_VECTOR_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_vector_variation 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) = hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f.
Admitted.

// HOL Light:  / WOSET_ANTISYM   (hash md5:b7edb5ebaa5295a5ab47facef321cb1e)
Theorem hlt_WOSET_ANTISYM : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y.
Admitted.

// HOL Light:  / WOSET_REFL   (hash md5:2657e9808b0eab43787cca78dd9d1087)
Theorem hlt_WOSET_REFL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x :e A, hl_fld A l x = 1 -> l x x = 1.
Admitted.

// HOL Light:  / WOSET_TOTAL   (hash md5:e4e85261ff7babcf95145df8b9803d8e)
Theorem hlt_WOSET_TOTAL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y :e A, hl_fld A l x = 1 /\ hl_fld A l y = 1 -> l x y = 1 \/ l y x = 1.
Admitted.

// HOL Light:  / WOSET_TRANS   (hash md5:2f6108c0be40e22372e36f256a09f219)
Theorem hlt_WOSET_TRANS : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1.
Admitted.

// HOL Light:  / WOSET_WELL   (hash md5:21ee058a10356d881f0fb0745d5a7181)
Theorem hlt_WOSET_WELL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall s :e 2 :^: A, (forall x :e A, s x = 1 -> hl_fld A l x = 1) /\ (exists x :e A, s x = 1) -> exists x :e A, s x = 1 /\ forall y :e A, s y = 1 -> l x y = 1.
Admitted.

// HOL Light:  / WQOSET_ANTICHAIN   (hash md5:677ba4f78023c861e1bd1422705472f0)
Theorem hlt_WQOSET_ANTICHAIN : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> hl_qoset A l = 1 /\ (hl_WF A (hl_strictly A l) = 1 /\ forall s :e 2 :^: A, hl_antichain A l s = 1 -> hl_FINITE A s = 1).
Admitted.

// HOL Light:  / WQOSET_NOBAD   (hash md5:2335184538662ee9cce85cc928a9851d)
Theorem hlt_WQOSET_NOBAD : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> hl_qoset A l = 1 /\ forall x :e A :^: omega, (forall n :e omega, hl_IN A (x n) (hl_fld A l) = 1) -> exists i j :e omega, hl_lt i j = 1 /\ l (x i) (x j) = 1.
Admitted.

// HOL Light:  / WQOSET_NOBAD_SUBSEQ   (hash md5:50d5416656b450467dc4740b717acb55)
Theorem hlt_WQOSET_NOBAD_SUBSEQ : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> hl_qoset A l = 1 /\ forall x :e A :^: omega, (forall n :e omega, hl_IN A (x n) (hl_fld A l) = 1) -> exists r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ forall i j :e omega, hl_le i j = 1 -> l (x (r i)) (x (r j)) = 1.
Admitted.

// HOL Light:  / closed_real_interval   (hash md5:2b236165fe65811a878f0107b67ec565)
Theorem hlt_closed_real_interval_thm : forall a b :e R, hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R))) = hl_GSPEC R (fun GEN_PVAR_633 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_633 (if hl_real_le a x = 1 /\ hl_real_le x b = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light:  / from   (hash md5:b0554bf822f90b7c4045d0b3d3c95d19)
Theorem hlt_from_thm : forall n :e omega, hl_from n = hl_GSPEC omega (fun GEN_PVAR_643 :e omega => if exists m :e omega, hl_SETSPEC omega GEN_PVAR_643 (hl_le n m) m = 1 then 1 else 0).
Admitted.

// HOL Light:  / hull   (hash md5:afd62b722c2164b212ca3fddc891f9ff)
Theorem hlt_hull_thm : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_hull A P s = hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_638 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_638 (if P t = 1 /\ hl_SUBSET A s t = 1 then 1 else 0) t = 1 then 1 else 0)).
Admitted.

// HOL Light:  / is_realinterval   (hash md5:e66fae9478108c62ccc078b367ceee87)
Theorem hlt_is_realinterval_thm : forall s :e 2 :^: R, hl_is_realinterval s = 1 <-> forall a b c :e R, hl_IN R a s = 1 /\ (hl_IN R b s = 1 /\ (hl_real_le a c = 1 /\ hl_real_le c b = 1)) -> hl_IN R c s = 1.
Admitted.

// HOL Light:  / matrify   (hash md5:c95bb6c03e86089bf4e1de99b578bac0)
Theorem hlt_matrify_thm : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_matrify A M N = fun x :e hl_ty_cart A (hl_ty_finite_prod M N) => hl_lambda (hl_ty_cart A N) M (fun i :e omega => hl_lambda A N (fun j :e omega => hl_vindex A (hl_ty_finite_prod M N) x (hl_add (hl_mul (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) j))).
Admitted.

// HOL Light:  / open_real_interval   (hash md5:b90ab1559ee9b05e5f9764bedbf7a5e3)
Theorem hlt_open_real_interval_thm : forall a b :e R, hl_open_real_interval (hl_pair R R a b) = hl_GSPEC R (fun GEN_PVAR_632 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_632 (if hl_real_lt a x = 1 /\ hl_real_lt x b = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light:  / real_interval   (hash md5:336dde35241fe3e8710ec56a210a346b)
Theorem hlt_real_interval : forall a b :e R, hl_open_real_interval (hl_pair R R a b) = hl_GSPEC R (fun GEN_PVAR_634 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_634 (if hl_real_lt a x = 1 /\ hl_real_lt x b = 1 then 1 else 0) x = 1 then 1 else 0) /\ hl_closed_real_interval (hl_CONS (R :*: R) (hl_pair R R a b) (hl_NIL (R :*: R))) = hl_GSPEC R (fun GEN_PVAR_635 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_635 (if hl_real_le a x = 1 /\ hl_real_le x b = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light:  / relative_to   (hash md5:139162c4f9b0c9a24b6f52e1d5d05c19)
Theorem hlt_relative_to_thm : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_relative_to A P s t = 1 <-> exists u :e 2 :^: A, P u = 1 /\ hl_INTER A s u = t.
Admitted.

// HOL Light:  / suslin_operation   (hash md5:3963c70e77cad83a20cf1d93378e0e99)
Theorem hlt_suslin_operation_thm : forall A:set, A <> Empty -> forall f :e 2 :^: A :^: finseq omega, hl_suslin_operation A f = hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_684 :e 2 :^: A => if exists s :e omega :^: omega, hl_SETSPEC (2 :^: A) GEN_PVAR_684 (hl_IN (omega :^: omega) s (hl_UNIV (omega :^: omega))) (hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_683 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_683 (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n) (f (hl_list_of_seq omega s n)) = 1 then 1 else 0))) = 1 then 1 else 0)).
Admitted.

// HOL Light:  / suslin   (hash md5:779577f1befb6808201596e882d744ee)
Theorem hlt_suslin_thm : forall A:set, A <> Empty -> forall u :e 2 :^: (2 :^: A), hl_suslin A u = hl_GSPEC (2 :^: A) (fun GEN_PVAR_685 :e 2 :^: A => if exists f :e 2 :^: A :^: finseq omega, hl_SETSPEC (2 :^: A) GEN_PVAR_685 (if forall l :e finseq omega, ~ l = hl_NIL omega -> hl_IN (2 :^: A) (f l) u = 1 then 1 else 0) (hl_suslin_operation A f) = 1 then 1 else 0).
Admitted.

// HOL Light:  / vectorize   (hash md5:f340a8700d8db2d6ac414db8ae798f7b)
Theorem hlt_vectorize_thm : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_vectorize A N M = fun x :e hl_ty_cart (hl_ty_cart A N) M => hl_lambda A (hl_ty_finite_prod M N) (fun i :e omega => hl_vindex A N (hl_vindex (hl_ty_cart A N) M x (hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_DIV (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))))) (hl_add (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_MOD (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))))).
Admitted.

// HOL Light: EC/misc.ml:120 / SYMMETRY_LEMMA   (hash md5:6a21a50ce4d06eb9f8f85b6f0e7b1478)
Theorem hlt_SYMMETRY_LEMMA : forall A:set, A <> Empty -> forall P :e 2 :^: A :^: A :^: A :^: A, (forall a b c d :e A, P a b c d = 1 -> P a b d c = 1) /\ (forall a b c d :e A, ~ a = b /\ (~ c = d /\ (a = c /\ b = d \/ (a = c /\ ~ b = d \/ (~ a = c /\ b = d \/ ~ a = c /\ (~ a = d /\ (~ b = c /\ ~ b = d)))))) -> P a b c d = 1) -> forall a b c d :e A, ~ a = b /\ ~ c = d -> P a b c d = 1.
Admitted.

