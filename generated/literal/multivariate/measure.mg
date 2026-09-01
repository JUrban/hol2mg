// hol2mg literal statements (private): shard measure of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/measure.ml:21 / has_measure   (hash md5:3a97ee1b609dbe192353288586cf15e4)
Theorem hlt_has_measure_thm : forall A:set, A <> Empty -> forall m :e R, forall s :e 2 :^: hl_ty_cart R A, hl_has_measure A s m = 1 <-> hl_has_integral A 1 (fun x :e hl_ty_cart R A => hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lift m) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24 / measurable   (hash md5:3a0d7a7fa848a2026f38e3919f3e59b8)
Theorem hlt_measurable_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 <-> exists m :e R, hl_has_measure A s m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27 / measure   (hash md5:b669e44af267e2756b9373f9bdb2f76b)
Theorem hlt_measure_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measure A s = hl_select R (fun m :e R => hl_has_measure A s m).
Admitted.

// HOL Light: Multivariate/measure.ml:30 / HAS_MEASURE_MEASURE   (hash md5:30b2be25bb17ba1141e2c6bc5313b16d)
Theorem hlt_HAS_MEASURE_MEASURE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 <-> hl_has_measure A s (hl_measure A s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:34 / HAS_MEASURE_UNIQUE   (hash md5:f11d204a61fe83f7e29ce4b704720990)
Theorem hlt_HAS_MEASURE_UNIQUE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall m1 m2 :e R, hl_has_measure A s m1 = 1 /\ hl_has_measure A s m2 = 1 -> m1 = m2.
Admitted.

// HOL Light: Multivariate/measure.ml:38 / MEASURE_UNIQUE   (hash md5:940b1b6ee7e7fd5837d72d93fdaff175)
Theorem hlt_MEASURE_UNIQUE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall m :e R, hl_has_measure A s m = 1 -> hl_measure A s = m.
Admitted.

// HOL Light: Multivariate/measure.ml:42 / HAS_MEASURE_MEASURABLE_MEASURE   (hash md5:fdad3b0b2cecace7ad826e25ae1002f2)
Theorem hlt_HAS_MEASURE_MEASURABLE_MEASURE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall m :e R, hl_has_measure A s m = 1 <-> hl_measurable A s = 1 /\ hl_measure A s = m.
Admitted.

// HOL Light: Multivariate/measure.ml:46 / HAS_MEASURE_IMP_MEASURABLE   (hash md5:80299835be793ed2dc9f56b03cdbc3d6)
Theorem hlt_HAS_MEASURE_IMP_MEASURABLE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall m :e R, hl_has_measure A s m = 1 -> hl_measurable A s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:50 / HAS_MEASURE   (hash md5:8416b350b4990f52339480a02dd081f8)
Theorem hlt_HAS_MEASURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_has_measure N s m = 1 <-> hl_has_integral N 1 (fun x :e hl_ty_cart R N => hl_COND (hl_ty_cart R 1) (hl_IN (hl_ty_cart R N) x s) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_lift m) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:56 / MEASURABLE   (hash md5:6a95ef9b4a2a30e695e0f7631d9dbc58)
Theorem hlt_MEASURABLE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 <-> hl_integrable_on A 1 (fun x :e hl_ty_cart R A => hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:61 / MEASURABLE_INTEGRABLE   (hash md5:9f2b603c0b3dc5332932c955dfd1aa86)
Theorem hlt_MEASURABLE_INTEGRABLE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 <-> hl_integrable_on A 1 (fun x :e hl_ty_cart R A => hl_COND (hl_ty_cart R 1) (hl_IN (hl_ty_cart R A) x s) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_UNIV (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:67 / MEASURE_INTEGRAL   (hash md5:710f7502851b68afcb4c655afaad7743)
Theorem hlt_MEASURE_INTEGRAL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 -> hl_measure A s = hl_drop (hl_integral A 1 s (fun x :e hl_ty_cart R A => hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/measure.ml:74 / MEASURE_INTEGRAL_UNIV   (hash md5:2c592c2155f91d792726ca4bb943a1f1)
Theorem hlt_MEASURE_INTEGRAL_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 -> hl_measure A s = hl_drop (hl_integral A 1 (hl_UNIV (hl_ty_cart R A)) (fun x :e hl_ty_cart R A => hl_COND (hl_ty_cart R 1) (hl_IN (hl_ty_cart R A) x s) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/measure.ml:83 / INTEGRAL_MEASURE   (hash md5:0302a7697073cef6c5dffc2c00205159)
Theorem hlt_INTEGRAL_MEASURE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 -> hl_integral A 1 s (fun x :e hl_ty_cart R A => hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_lift (hl_measure A s).
Admitted.

// HOL Light: Multivariate/measure.ml:87 / INTEGRAL_MEASURE_UNIV   (hash md5:5b8db148ccc97d7a9b4ec2586bf84f3b)
Theorem hlt_INTEGRAL_MEASURE_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 -> hl_integral A 1 (hl_UNIV (hl_ty_cart R A)) (fun x :e hl_ty_cart R A => hl_COND (hl_ty_cart R 1) (hl_IN (hl_ty_cart R A) x s) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero))) = hl_lift (hl_measure A s).
Admitted.

// HOL Light: Multivariate/measure.ml:93 / INTEGRABLE_ON_INDICATOR   (hash md5:05c81b6509c3cdfc20b3bf8ad08ef179)
Theorem hlt_INTEGRABLE_ON_INDICATOR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_integrable_on N 1 (hl_indicator N s) t = 1 <-> hl_measurable N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:101 / ABSOLUTELY_INTEGRABLE_ON_INDICATOR   (hash md5:87ba4a94d59fe0185608e18c88e883c7)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_INDICATOR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_absolutely_integrable_on N 1 (hl_indicator N s) t = 1 <-> hl_measurable N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:108 / INTEGRAL_INDICATOR   (hash md5:41eda5d1e0a74b99cfd5a8b70acac2a6)
Theorem hlt_INTEGRAL_INDICATOR : forall M:set, M <> Empty -> forall s t :e 2 :^: hl_ty_cart R M, hl_measurable M (hl_INTER (hl_ty_cart R M) s t) = 1 -> hl_integral M 1 t (hl_indicator M s) = hl_lift (hl_measure M (hl_INTER (hl_ty_cart R M) s t)).
Admitted.

// HOL Light: Multivariate/measure.ml:114 / HAS_MEASURE_INTERVAL   (hash md5:56fff681f0eee7d6cba4b126b0b9c5d7)
Theorem hlt_HAS_MEASURE_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_has_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1) /\ forall a b :e hl_ty_cart R N, hl_has_measure N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:129 / MEASURABLE_INTERVAL   (hash md5:54f8a0b944abae11c41b192fc3543224)
Theorem hlt_MEASURABLE_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_measurable N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_measurable N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:134 / MEASURE_INTERVAL   (hash md5:bbaf122c51b916e15ec539553c42a389)
Theorem hlt_MEASURE_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) /\ forall a b :e hl_ty_cart R N, hl_measure N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/measure.ml:140 / MEASURE_INTERVAL_1   (hash md5:250b41c1d3147f453a30517257139c77)
Theorem hlt_MEASURE_INTERVAL_1 : (forall a b :e hl_ty_cart R 1, hl_measure 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_COND R (hl_real_le (hl_drop a) (hl_drop b)) (hl_real_sub (hl_drop b) (hl_drop a)) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall a b :e hl_ty_cart R 1, hl_measure 1 (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = hl_COND R (hl_real_le (hl_drop a) (hl_drop b)) (hl_real_sub (hl_drop b) (hl_drop a)) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:148 / MEASURE_INTERVAL_1_ALT   (hash md5:63beff9096f7c0a89d3d67a589ac165d)
Theorem hlt_MEASURE_INTERVAL_1_ALT : (forall a b :e hl_ty_cart R 1, hl_measure 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_COND R (hl_real_lt (hl_drop a) (hl_drop b)) (hl_real_sub (hl_drop b) (hl_drop a)) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall a b :e hl_ty_cart R 1, hl_measure 1 (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = hl_COND R (hl_real_lt (hl_drop a) (hl_drop b)) (hl_real_sub (hl_drop b) (hl_drop a)) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:155 / MEASURE_INTERVAL_2   (hash md5:1f2d1065433625b547f5831c2dc95370)
Theorem hlt_MEASURE_INTERVAL_2 : (forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_measure (idx_n (2 * dimindex 1)) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = hl_COND R (if hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_measure (idx_n (2 * dimindex 1)) (hl_open_interval (idx_n (2 * dimindex 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b)) = hl_COND R (if hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:167 / MEASURE_INTERVAL_2_ALT   (hash md5:374e47fba0d4a4154988668b4a8ca3a5)
Theorem hlt_MEASURE_INTERVAL_2_ALT : (forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_measure (idx_n (2 * dimindex 1)) (hl_closed_interval (idx_n (2 * dimindex 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1)))))) = hl_COND R (if hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_measure (idx_n (2 * dimindex 1)) (hl_open_interval (idx_n (2 * dimindex 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_ty_cart R (idx_n (2 * dimindex 1))) a b)) = hl_COND R (if hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:183 / MEASURE_INTERVAL_3   (hash md5:b640f25286d45d98fae7745b0f81cbe4)
Theorem hlt_MEASURE_INTERVAL_3 : (forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_measure (idx_n (2 * dimindex 1 + 1)) (hl_closed_interval (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1 + 1)))))) = hl_COND R (if hl_real_le (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_le (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = 1) then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_measure (idx_n (2 * dimindex 1 + 1)) (hl_open_interval (idx_n (2 * dimindex 1 + 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) a b)) = hl_COND R (if hl_real_le (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_le (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = 1) then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:195 / MEASURE_INTERVAL_3_ALT   (hash md5:e7f3352174144fb85e1640d365bf1fa7)
Theorem hlt_MEASURE_INTERVAL_3_ALT : (forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_measure (idx_n (2 * dimindex 1 + 1)) (hl_closed_interval (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1 + 1)))))) = hl_COND R (if hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = 1) then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_measure (idx_n (2 * dimindex 1 + 1)) (hl_open_interval (idx_n (2 * dimindex 1 + 1)) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) a b)) = hl_COND R (if hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_lt (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = 1) then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:213 / MEASURE_INTERVAL_4   (hash md5:235e7a13dea33403b1d53e615885630d)
Theorem hlt_MEASURE_INTERVAL_4 : (forall a b :e hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), hl_measure (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_closed_interval (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) :*: hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) :*: hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))))))) = hl_COND R (if hl_real_le (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_le (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ (hl_real_le (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall a b :e hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), hl_measure (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_open_interval (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) a b)) = hl_COND R (if hl_real_le (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_le (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ (hl_real_le (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_le (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:225 / MEASURE_INTERVAL_4_ALT   (hash md5:393d7899681e28ca374b9d7e766a2c6c)
Theorem hlt_MEASURE_INTERVAL_4_ALT : (forall a b :e hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), hl_measure (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_closed_interval (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) :*: hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) a b) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) :*: hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))))))) = hl_COND R (if hl_real_lt (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_lt (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ (hl_real_lt (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_lt (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall a b :e hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))), hl_measure (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_open_interval (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) (hl_ty_cart R (idx_n (2 * dimindex (idx_n (2 * dimindex 1))))) a b)) = hl_COND R (if hl_real_lt (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_lt (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 /\ (hl_real_lt (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = 1 /\ hl_real_lt (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) then 1 else 0) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) b (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vindex R (idx_n (2 * dimindex (idx_n (2 * dimindex 1)))) a (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:244 / MEASURABLE_INTER   (hash md5:3c7cc3e4456e589176284a299e067036)
Theorem hlt_MEASURABLE_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_measurable N t = 1 -> hl_measurable N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:263 / MEASURABLE_UNION   (hash md5:e78c8476763467b82cd470bac2f56de5)
Theorem hlt_MEASURABLE_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_measurable N t = 1 -> hl_measurable N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:282 / HAS_MEASURE_DISJOINT_UNION   (hash md5:55316b4817d061e83d848cd068e28e85)
Theorem hlt_HAS_MEASURE_DISJOINT_UNION : forall A:set, A <> Empty -> forall s1 s2 :e 2 :^: hl_ty_cart R A, forall m1 m2 :e R, hl_has_measure A s1 m1 = 1 /\ (hl_has_measure A s2 m2 = 1 /\ hl_DISJOINT (hl_ty_cart R A) s1 s2 = 1) -> hl_has_measure A (hl_UNION (hl_ty_cart R A) s1 s2) (hl_real_add m1 m2) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:294 / MEASURE_DISJOINT_UNION   (hash md5:997bdfac16b328c2466ecf95a2b4c29d)
Theorem hlt_MEASURE_DISJOINT_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 /\ (hl_measurable A t = 1 /\ hl_DISJOINT (hl_ty_cart R A) s t = 1) -> hl_measure A (hl_UNION (hl_ty_cart R A) s t) = hl_real_add (hl_measure A s) (hl_measure A t).
Admitted.

// HOL Light: Multivariate/measure.ml:300 / MEASURE_DISJOINT_UNION_EQ   (hash md5:dfc23c9b6893c407c063c175672c3592)
Theorem hlt_MEASURE_DISJOINT_UNION_EQ : forall A:set, A <> Empty -> forall s t u :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 /\ (hl_measurable A t = 1 /\ (hl_UNION (hl_ty_cart R A) s t = u /\ hl_DISJOINT (hl_ty_cart R A) s t = 1)) -> hl_real_add (hl_measure A s) (hl_measure A t) = hl_measure A u.
Admitted.

// HOL Light: Multivariate/measure.ml:306 / HAS_MEASURE_POS_LE   (hash md5:e134f8089be8e06c63a08c4f3858e4f9)
Theorem hlt_HAS_MEASURE_POS_LE : forall N:set, N <> Empty -> forall m :e R, forall s :e 2 :^: hl_ty_cart R N, hl_has_measure N s m = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:317 / MEASURE_POS_LE   (hash md5:6074a87b9971409c4ae0ea60b1658d0c)
Theorem hlt_MEASURE_POS_LE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure A s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:321 / HAS_MEASURE_SUBSET   (hash md5:f29c6c11a4583802c9c5a965b6179fc7)
Theorem hlt_HAS_MEASURE_SUBSET : forall N:set, N <> Empty -> forall s1 s2 :e 2 :^: hl_ty_cart R N, forall m1 m2 :e R, hl_has_measure N s1 m1 = 1 /\ (hl_has_measure N s2 m2 = 1 /\ hl_SUBSET (hl_ty_cart R N) s1 s2 = 1) -> hl_real_le m1 m2 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:332 / MEASURE_SUBSET   (hash md5:641fcc7b0489ea4764e2463ef736e446)
Theorem hlt_MEASURE_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 /\ (hl_measurable A t = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1) -> hl_real_le (hl_measure A s) (hl_measure A t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:337 / HAS_MEASURE_0   (hash md5:cdddf47ff23aaea59256d64987067e7f)
Theorem hlt_HAS_MEASURE_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_has_measure N s (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:369 / MEASURE_EQ_0   (hash md5:59f4086c0f435452520aafd5227b1692)
Theorem hlt_MEASURE_EQ_0 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_negligible A s = 1 -> hl_measure A s = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/measure.ml:373 / NEGLIGIBLE_IMP_MEASURABLE   (hash md5:7456917e4fa2a38c738df4e3c88e8b0d)
Theorem hlt_NEGLIGIBLE_IMP_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 -> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:377 / HAS_MEASURE_EMPTY   (hash md5:e74f17add4c5507d2a72efad63c4e132)
Theorem hlt_HAS_MEASURE_EMPTY : forall A:set, A <> Empty -> hl_has_measure A (hl_EMPTY (hl_ty_cart R A)) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:381 / MEASURE_EMPTY   (hash md5:8a4c67c950cc3c9817d2b688c22c34fd)
Theorem hlt_MEASURE_EMPTY : forall A:set, A <> Empty -> hl_measure A (hl_EMPTY (hl_ty_cart R A)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/measure.ml:385 / MEASURABLE_EMPTY   (hash md5:92ec9cbbf1ac2f5572d3e644edb29bdb)
Theorem hlt_MEASURABLE_EMPTY : forall A:set, A <> Empty -> hl_measurable A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:389 / MEASURABLE_SING   (hash md5:2b7757c35dbdc9ea5307b0b50b06aed1)
Theorem hlt_MEASURABLE_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_measurable N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:393 / MEASURABLE_MEASURE_EQ_0   (hash md5:1e1403a17fac5710b3c5658eb63acaa4)
Theorem hlt_MEASURABLE_MEASURE_EQ_0 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 -> (hl_measure A s = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_negligible A s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:398 / NEGLIGIBLE_EQ_MEASURE_0   (hash md5:bf9827f331c51b31d81825566757428e)
Theorem hlt_NEGLIGIBLE_EQ_MEASURE_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> hl_measurable N s = 1 /\ hl_measure N s = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/measure.ml:403 / MEASURE_SING   (hash md5:94d5be56a5564f005a2be010c12cfbf4)
Theorem hlt_MEASURE_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_measure N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/measure.ml:407 / MEASURABLE_MEASURE_POS_LT   (hash md5:fbab05d223e2d787889889a0faaa72da)
Theorem hlt_MEASURABLE_MEASURE_POS_LT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 -> (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure A s) = 1 <-> ~ hl_negligible A s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:412 / NEGLIGIBLE_INTERVAL   (hash md5:0c5978000ceda88b9293de101031d5b6)
Theorem hlt_NEGLIGIBLE_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> (forall a b :e hl_ty_cart R A, hl_negligible A (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 <-> hl_open_interval A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) = hl_EMPTY (hl_ty_cart R A)) /\ forall a b :e hl_ty_cart R B, hl_negligible B (hl_open_interval B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b)) = 1 <-> hl_open_interval B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) = hl_EMPTY (hl_ty_cart R B).
Admitted.

// HOL Light: Multivariate/measure.ml:419 / MEASURABLE_UNIONS   (hash md5:d47d6838ceec1c44e7a12b9762f1bf7f)
Theorem hlt_MEASURABLE_UNIONS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_measurable N s = 1) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:429 / HAS_MEASURE_DIFF_SUBSET   (hash md5:269648f3d850d9544d554a68980cfd95)
Theorem hlt_HAS_MEASURE_DIFF_SUBSET : forall A:set, A <> Empty -> forall s1 s2 :e 2 :^: hl_ty_cart R A, forall m1 m2 :e R, hl_has_measure A s1 m1 = 1 /\ (hl_has_measure A s2 m2 = 1 /\ hl_SUBSET (hl_ty_cart R A) s2 s1 = 1) -> hl_has_measure A (hl_DIFF (hl_ty_cart R A) s1 s2) (hl_real_sub m1 m2) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:442 / MEASURABLE_DIFF   (hash md5:459a3084f7b67f404f7c7cd3bdc97126)
Theorem hlt_MEASURABLE_DIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_measurable N t = 1 -> hl_measurable N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:454 / MEASURE_DIFF_SUBSET   (hash md5:411845328f104ba4b7ccabadb24c6489)
Theorem hlt_MEASURE_DIFF_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 /\ (hl_measurable A t = 1 /\ hl_SUBSET (hl_ty_cart R A) t s = 1) -> hl_measure A (hl_DIFF (hl_ty_cart R A) s t) = hl_real_sub (hl_measure A s) (hl_measure A t).
Admitted.

// HOL Light: Multivariate/measure.ml:460 / HAS_MEASURE_UNION_NEGLIGIBLE   (hash md5:760d0f4bcb8d5888ce56b7ae10c40264)
Theorem hlt_HAS_MEASURE_UNION_NEGLIGIBLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall m :e R, hl_has_measure N s m = 1 /\ hl_negligible N t = 1 -> hl_has_measure N (hl_UNION (hl_ty_cart R N) s t) m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:470 / HAS_MEASURE_DIFF_NEGLIGIBLE   (hash md5:d34779eb358885b63665f2cd4c26ea72)
Theorem hlt_HAS_MEASURE_DIFF_NEGLIGIBLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall m :e R, hl_has_measure N s m = 1 /\ hl_negligible N t = 1 -> hl_has_measure N (hl_DIFF (hl_ty_cart R N) s t) m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:480 / HAS_MEASURE_UNION_NEGLIGIBLE_EQ   (hash md5:8ad8ce531f40805a016a496c3334932f)
Theorem hlt_HAS_MEASURE_UNION_NEGLIGIBLE_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall m :e R, hl_negligible N t = 1 -> (hl_has_measure N (hl_UNION (hl_ty_cart R N) s t) m = 1 <-> hl_has_measure N s m = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:489 / HAS_MEASURE_DIFF_NEGLIGIBLE_EQ   (hash md5:9fe86ed8d3e36a16ad1b167b5eac9597)
Theorem hlt_HAS_MEASURE_DIFF_NEGLIGIBLE_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall m :e R, hl_negligible N t = 1 -> (hl_has_measure N (hl_DIFF (hl_ty_cart R N) s t) m = 1 <-> hl_has_measure N s m = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:498 / HAS_MEASURE_ALMOST   (hash md5:9d62111e61d8b1d4b5c01d86c8823024)
Theorem hlt_HAS_MEASURE_ALMOST : forall A:set, A <> Empty -> forall s s' t :e 2 :^: hl_ty_cart R A, forall m :e R, hl_has_measure A s m = 1 /\ (hl_negligible A t = 1 /\ hl_UNION (hl_ty_cart R A) s t = hl_UNION (hl_ty_cart R A) s' t) -> hl_has_measure A s' m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:506 / HAS_MEASURE_ALMOST_EQ   (hash md5:d3da64e253b739dcd20661e16d35f152)
Theorem hlt_HAS_MEASURE_ALMOST_EQ : forall A:set, A <> Empty -> forall m :e R, forall s s' t :e 2 :^: hl_ty_cart R A, hl_negligible A t = 1 /\ hl_UNION (hl_ty_cart R A) s t = hl_UNION (hl_ty_cart R A) s' t -> (hl_has_measure A s m = 1 <-> hl_has_measure A s' m = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:511 / MEASURABLE_ALMOST   (hash md5:26dfed834ae814045069f5df36ecae01)
Theorem hlt_MEASURABLE_ALMOST : forall A:set, A <> Empty -> forall s s' t :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 /\ (hl_negligible A t = 1 /\ hl_UNION (hl_ty_cart R A) s t = hl_UNION (hl_ty_cart R A) s' t) -> hl_measurable A s' = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:516 / HAS_MEASURE_NEGLIGIBLE_UNION   (hash md5:c75496743e35854e4da2788d733e9e49)
Theorem hlt_HAS_MEASURE_NEGLIGIBLE_UNION : forall N:set, N <> Empty -> forall s1 s2 :e 2 :^: hl_ty_cart R N, forall m1 m2 :e R, hl_has_measure N s1 m1 = 1 /\ (hl_has_measure N s2 m2 = 1 /\ hl_negligible N (hl_INTER (hl_ty_cart R N) s1 s2) = 1) -> hl_has_measure N (hl_UNION (hl_ty_cart R N) s1 s2) (hl_real_add m1 m2) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:533 / MEASURE_NEGLIGIBLE_UNION   (hash md5:d13b100b02d143ffe9251a2892f6830b)
Theorem hlt_MEASURE_NEGLIGIBLE_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 /\ (hl_measurable A t = 1 /\ hl_negligible A (hl_INTER (hl_ty_cart R A) s t) = 1) -> hl_measure A (hl_UNION (hl_ty_cart R A) s t) = hl_real_add (hl_measure A s) (hl_measure A t).
Admitted.

// HOL Light: Multivariate/measure.ml:539 / MEASURE_NEGLIGIBLE_UNION_EQ   (hash md5:03cd676b28c0c215784da1ff38bffb4d)
Theorem hlt_MEASURE_NEGLIGIBLE_UNION_EQ : forall A:set, A <> Empty -> forall s t u :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 /\ (hl_measurable A t = 1 /\ (hl_UNION (hl_ty_cart R A) s t = u /\ hl_negligible A (hl_INTER (hl_ty_cart R A) s t) = 1)) -> hl_real_add (hl_measure A s) (hl_measure A t) = hl_measure A u.
Admitted.

// HOL Light: Multivariate/measure.ml:545 / HAS_MEASURE_NEGLIGIBLE_SYMDIFF   (hash md5:9117b5417c05ab648f45b3320fd03d9e)
Theorem hlt_HAS_MEASURE_NEGLIGIBLE_SYMDIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall m :e R, hl_has_measure N s m = 1 /\ hl_negligible N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s)) = 1 -> hl_has_measure N t m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:555 / MEASURABLE_NEGLIGIBLE_SYMDIFF   (hash md5:6db9fba5b96d7615ed9ed4364380ffa9)
Theorem hlt_MEASURABLE_NEGLIGIBLE_SYMDIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_negligible N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s)) = 1 -> hl_measurable N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:562 / MEASURABLE_NEGLIGIBLE_SYMDIFF_EQ   (hash md5:ca39ebb2010fd5007afa5981083fbee1)
Theorem hlt_MEASURABLE_NEGLIGIBLE_SYMDIFF_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_negligible N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s)) = 1 -> (hl_measurable N s = 1 <-> hl_measurable N t = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:568 / MEASURE_NEGLIGIBLE_SYMDIFF   (hash md5:fd559404b6190fae070e7e974773638f)
Theorem hlt_MEASURE_NEGLIGIBLE_SYMDIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_negligible N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s)) = 1 -> hl_measure N s = hl_measure N t.
Admitted.

// HOL Light: Multivariate/measure.ml:581 / NEGLIGIBLE_SYMDIFF_EQ   (hash md5:e95a9cbf9e9a76a9f7b283741beeefe7)
Theorem hlt_NEGLIGIBLE_SYMDIFF_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_negligible N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s)) = 1 -> (hl_negligible N s = 1 <-> hl_negligible N t = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:590 / NEGLIGIBLE_DELETE   (hash md5:d601cbc212ed81e5a546518c6423a1cd)
Theorem hlt_NEGLIGIBLE_DELETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_negligible N (hl_DELETE (hl_ty_cart R N) s a) = 1 <-> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:596 / HAS_MEASURE_NEGLIGIBLE_UNIONS   (hash md5:97dbff36ce8de6ee6f3ac7fa1f7ec452)
Theorem hlt_HAS_MEASURE_NEGLIGIBLE_UNIONS : forall N:set, N <> Empty -> forall m :e R :^: (2 :^: hl_ty_cart R N), forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_has_measure N s (m s) = 1) /\ (forall s t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) t f = 1 /\ ~ s = t) -> hl_negligible N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_has_measure N (hl_UNIONS (hl_ty_cart R N) f) (hl_sum (2 :^: hl_ty_cart R N) f m) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:614 / MEASURE_NEGLIGIBLE_UNIONS   (hash md5:39fe694de07692b4ffbc1630b729d52a)
Theorem hlt_MEASURE_NEGLIGIBLE_UNIONS : forall N:set, N <> Empty -> forall m :e R :^: (2 :^: hl_ty_cart R N), forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_has_measure N s (m s) = 1) /\ (forall s t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) t f = 1 /\ ~ s = t) -> hl_negligible N (hl_INTER (hl_ty_cart R N) s t) = 1)) -> hl_measure N (hl_UNIONS (hl_ty_cart R N) f) = hl_sum (2 :^: hl_ty_cart R N) f m.
Admitted.

// HOL Light: Multivariate/measure.ml:623 / HAS_MEASURE_DISJOINT_UNIONS   (hash md5:30168baa42d99ebebef5c1dafef8bd1c)
Theorem hlt_HAS_MEASURE_DISJOINT_UNIONS : forall N:set, N <> Empty -> forall m :e R :^: (2 :^: hl_ty_cart R N), forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_has_measure N s (m s) = 1) /\ (forall s t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) t f = 1 /\ ~ s = t) -> hl_DISJOINT (hl_ty_cart R N) s t = 1)) -> hl_has_measure N (hl_UNIONS (hl_ty_cart R N) f) (hl_sum (2 :^: hl_ty_cart R N) f m) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:633 / MEASURE_DISJOINT_UNIONS   (hash md5:d16ab38884ea9442d1674826ee02a079)
Theorem hlt_MEASURE_DISJOINT_UNIONS : forall N:set, N <> Empty -> forall m :e R :^: (2 :^: hl_ty_cart R N), forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_has_measure N s (m s) = 1) /\ (forall s t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) t f = 1 /\ ~ s = t) -> hl_DISJOINT (hl_ty_cart R N) s t = 1)) -> hl_measure N (hl_UNIONS (hl_ty_cart R N) f) = hl_sum (2 :^: hl_ty_cart R N) f m.
Admitted.

// HOL Light: Multivariate/measure.ml:642 / HAS_MEASURE_NEGLIGIBLE_UNIONS_IMAGE   (hash md5:580d8fbeb98f07d01ab1bcb373641fea)
Theorem hlt_HAS_MEASURE_NEGLIGIBLE_UNIONS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_measurable N (f x) = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_negligible N (hl_INTER (hl_ty_cart R N) (f x) (f y)) = 1)) -> hl_has_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) f s)) (hl_sum A s (fun x :e A => hl_measure N (f x))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:661 / MEASURE_NEGLIGIBLE_UNIONS_IMAGE   (hash md5:3ce363f1bfd84d71e90476ed929c5cc2)
Theorem hlt_MEASURE_NEGLIGIBLE_UNIONS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_measurable N (f x) = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_negligible N (hl_INTER (hl_ty_cart R N) (f x) (f y)) = 1)) -> hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) f s)) = hl_sum A s (fun x :e A => hl_measure N (f x)).
Admitted.

// HOL Light: Multivariate/measure.ml:670 / HAS_MEASURE_DISJOINT_UNIONS_IMAGE   (hash md5:81a44f190ab3b5c87d62e6357dd90304)
Theorem hlt_HAS_MEASURE_DISJOINT_UNIONS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_measurable N (f x) = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_DISJOINT (hl_ty_cart R N) (f x) (f y) = 1)) -> hl_has_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) f s)) (hl_sum A s (fun x :e A => hl_measure N (f x))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:680 / MEASURE_DISJOINT_UNIONS_IMAGE   (hash md5:2b592389e46d556d33d718f3986679d7)
Theorem hlt_MEASURE_DISJOINT_UNIONS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_measurable N (f x) = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_DISJOINT (hl_ty_cart R N) (f x) (f y) = 1)) -> hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) f s)) = hl_sum A s (fun x :e A => hl_measure N (f x)).
Admitted.

// HOL Light: Multivariate/measure.ml:689 / HAS_MEASURE_NEGLIGIBLE_UNIONS_IMAGE_STRONG   (hash md5:dd015c5217fef2b194fb32e1a12ee672)
Theorem hlt_HAS_MEASURE_NEGLIGIBLE_UNIONS_IMAGE_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_6803 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_6803 (if hl_IN A x s = 1 /\ ~ f x = hl_EMPTY (hl_ty_cart R N) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_measurable N (f x) = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_negligible N (hl_INTER (hl_ty_cart R N) (f x) (f y)) = 1)) -> hl_has_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) f s)) (hl_sum A s (fun x :e A => hl_measure N (f x))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:708 / MEASURE_NEGLIGIBLE_UNIONS_IMAGE_STRONG   (hash md5:4cab12f46074e81d4b4365d1b8bec2e7)
Theorem hlt_MEASURE_NEGLIGIBLE_UNIONS_IMAGE_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_6804 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_6804 (if hl_IN A x s = 1 /\ ~ f x = hl_EMPTY (hl_ty_cart R N) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_measurable N (f x) = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_negligible N (hl_INTER (hl_ty_cart R N) (f x) (f y)) = 1)) -> hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) f s)) = hl_sum A s (fun x :e A => hl_measure N (f x)).
Admitted.

// HOL Light: Multivariate/measure.ml:717 / HAS_MEASURE_DISJOINT_UNIONS_IMAGE_STRONG   (hash md5:73aa98bd494c19b2020b623e03b7cbe4)
Theorem hlt_HAS_MEASURE_DISJOINT_UNIONS_IMAGE_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_6805 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_6805 (if hl_IN A x s = 1 /\ ~ f x = hl_EMPTY (hl_ty_cart R N) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_measurable N (f x) = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_DISJOINT (hl_ty_cart R N) (f x) (f y) = 1)) -> hl_has_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) f s)) (hl_sum A s (fun x :e A => hl_measure N (f x))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:727 / MEASURE_DISJOINT_UNIONS_IMAGE_STRONG   (hash md5:44ec9b254090a774bd707d3721c8d205)
Theorem hlt_MEASURE_DISJOINT_UNIONS_IMAGE_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_6806 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_6806 (if hl_IN A x s = 1 /\ ~ f x = hl_EMPTY (hl_ty_cart R N) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_measurable N (f x) = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> hl_DISJOINT (hl_ty_cart R N) (f x) (f y) = 1)) -> hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) f s)) = hl_sum A s (fun x :e A => hl_measure N (f x)).
Admitted.

// HOL Light: Multivariate/measure.ml:736 / MEASURE_UNION   (hash md5:743e9874cf194b7a0713d5053fdd4d8c)
Theorem hlt_MEASURE_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_measurable N t = 1 -> hl_measure N (hl_UNION (hl_ty_cart R N) s t) = hl_real_add (hl_measure N s) (hl_real_sub (hl_measure N t) (hl_measure N (hl_INTER (hl_ty_cart R N) s t))).
Admitted.

// HOL Light: Multivariate/measure.ml:763 / MEASURE_UNION_LE   (hash md5:eb5ecd78dc258bd252846444f6652a96)
Theorem hlt_MEASURE_UNION_LE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_measurable N t = 1 -> hl_real_le (hl_measure N (hl_UNION (hl_ty_cart R N) s t)) (hl_real_add (hl_measure N s) (hl_measure N t)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:771 / MEASURE_UNIONS_LE   (hash md5:14534a641995869c8725edc6f80f28e9)
Theorem hlt_MEASURE_UNIONS_LE : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_measurable N s = 1) -> hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) f)) (hl_sum (2 :^: hl_ty_cart R N) f (fun s :e 2 :^: hl_ty_cart R N => hl_measure N s)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:787 / MEASURABLE_INSERT   (hash md5:b38b96235d7c6f2597753cc771472a2a)
Theorem hlt_MEASURABLE_INSERT : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable N (hl_INSERT (hl_ty_cart R N) x s) = 1 <-> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:793 / MEASURABLE_DELETE   (hash md5:103318658bfc5ba1b149904fb76c27ed)
Theorem hlt_MEASURABLE_DELETE : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable N (hl_DELETE (hl_ty_cart R N) s x) = 1 <-> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:799 / MEASURE_INSERT   (hash md5:b3ecf4b4e083bb29cb757b292efc1ed3)
Theorem hlt_MEASURE_INSERT : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measure N (hl_INSERT (hl_ty_cart R N) x s) = hl_measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:805 / MEASURE_DELETE   (hash md5:082ff5fc89c07bcf46962820ffe00104)
Theorem hlt_MEASURE_DELETE : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measure N (hl_DELETE (hl_ty_cart R N) s x) = hl_measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:811 / MEASURE_UNIONS_LE_IMAGE   (hash md5:ca5012fca4d941cb3f5e432ae985933f)
Theorem hlt_MEASURE_UNIONS_LE_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e 2 :^: A, forall s :e 2 :^: hl_ty_cart R N :^: A, hl_FINITE A f = 1 /\ (forall a :e A, hl_IN A a f = 1 -> hl_measurable N (s a) = 1) -> hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) s f))) (hl_sum A f (fun a :e A => hl_measure N (s a))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:822 / MEASURE_SUB_LE_MEASURE_DIFF   (hash md5:a808e9370bc51e951c3ea98e6db4ddf3)
Theorem hlt_MEASURE_SUB_LE_MEASURE_DIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_measurable N t = 1 -> hl_real_le (hl_real_sub (hl_measure N s) (hl_measure N t)) (hl_measure N (hl_DIFF (hl_ty_cart R N) s t)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:832 / MEASURE_SUB_LE_MEASURE_SYMDIFF   (hash md5:12576e32382340043e8e01ca06e59acd)
Theorem hlt_MEASURE_SUB_LE_MEASURE_SYMDIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_measurable N t = 1 -> hl_real_le (hl_real_abs (hl_real_sub (hl_measure N s) (hl_measure N t))) (hl_measure N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:845 / MEASURABLE_INNER_OUTER   (hash md5:a5ad66844e5cda6c1d0361842219460f)
Theorem hlt_MEASURABLE_INNER_OUTER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s u = 1 /\ (hl_measurable N t = 1 /\ (hl_measurable N u = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub (hl_measure N t) (hl_measure N u))) e1 = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:872 / HAS_MEASURE_INNER_OUTER   (hash md5:887c6edd41330bdbd19d884ee76f46b8)
Theorem hlt_HAS_MEASURE_INNER_OUTER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_has_measure N s m = 1 <-> (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_measurable N t = 1 /\ hl_real_lt (hl_real_sub m e1) (hl_measure N t) = 1)) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s u = 1 /\ (hl_measurable N u = 1 /\ hl_real_lt (hl_measure N u) (hl_real_add m e1) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:908 / HAS_MEASURE_INNER_OUTER_LE   (hash md5:304dd97f9b404704684cbad2b850b159)
Theorem hlt_HAS_MEASURE_INNER_OUTER_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_has_measure N s m = 1 <-> (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_measurable N t = 1 /\ hl_real_le (hl_real_sub m e1) (hl_measure N t) = 1)) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s u = 1 /\ (hl_measurable N u = 1 /\ hl_real_le (hl_measure N u) (hl_real_add m e1) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:920 / NEGLIGIBLE_OUTER   (hash md5:800ad9de98edac8291eb042f334ad584)
Theorem hlt_NEGLIGIBLE_OUTER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_measurable N t = 1 /\ hl_real_lt (hl_measure N t) e1 = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:930 / NEGLIGIBLE_OUTER_LE   (hash md5:93390efdb2f060a1999a3506fa3abc43)
Theorem hlt_NEGLIGIBLE_OUTER_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_measurable N t = 1 /\ hl_real_le (hl_measure N t) e1 = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:938 / HAS_MEASURE_LIMIT   (hash md5:8554efcc5ffb6abfc8c7ceaadc8d98e5)
Theorem hlt_HAS_MEASURE_LIMIT : forall A:set, A <> Empty -> forall m :e R, forall s :e 2 :^: hl_ty_cart R A, hl_has_measure A s m = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall a b :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_ball A (hl_pair (hl_ty_cart R A) R (hl_vec A (hl_NUMERAL hl_zero)) B)) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 -> exists z :e R, hl_has_measure A (hl_INTER (hl_ty_cart R A) s (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))))) z = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub z m)) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:955 / MEASURE_LIMIT   (hash md5:6866dd4e4a4596e0622b25a0689950f5)
Theorem hlt_MEASURE_LIMIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall a b :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) B)) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_real_lt (hl_real_abs (hl_real_sub (hl_measure N (hl_INTER (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))))) (hl_measure N s))) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:968 / INTEGRABLE_ON_CONST   (hash md5:ec0ea536235fac276b0119f13a402295)
Theorem hlt_INTEGRABLE_ON_CONST : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall c :e hl_ty_cart R N, hl_integrable_on M N (fun x :e hl_ty_cart R M => c) s = 1 <-> c = hl_vec N (hl_NUMERAL hl_zero) \/ hl_measurable M s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:991 / ABSOLUTELY_INTEGRABLE_ON_CONST   (hash md5:b3b6d2902b07649a4f53f8dbda4b585a)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall c :e hl_ty_cart R B, hl_absolutely_integrable_on A B (fun x :e hl_ty_cart R A => c) s = 1 <-> c = hl_vec B (hl_NUMERAL hl_zero) \/ hl_measurable A s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:996 / HAS_INTEGRAL_CONST_GEN   (hash md5:98de71c6a9e58a484c3aee3921af976e)
Theorem hlt_HAS_INTEGRAL_CONST_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall c :e hl_ty_cart R N, hl_measurable M s = 1 -> hl_has_integral M N (fun x :e hl_ty_cart R M => c) (hl_vmul N (hl_measure M s) c) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1007 / INTEGRAL_CONST_GEN   (hash md5:5aa3c7471150610e08134b238a11b3ab)
Theorem hlt_INTEGRAL_CONST_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall c :e hl_ty_cart R N, hl_measurable M s = 1 -> hl_integral M N s (fun x :e hl_ty_cart R M => c) = hl_vmul N (hl_measure M s) c.
Admitted.

// HOL Light: Multivariate/measure.ml:1013 / OPEN_NOT_NEGLIGIBLE   (hash md5:fe364f60ab8f6de81fa50b8f7371015e)
Theorem hlt_OPEN_NOT_NEGLIGIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> ~ hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1044 / NOT_NEGLIGIBLE_UNIV   (hash md5:c1091b90afbb97ec1a9c24b4d7224f5f)
Theorem hlt_NOT_NEGLIGIBLE_UNIV : forall N:set, N <> Empty -> ~ hl_negligible N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1048 / NEGLIGIBLE_EMPTY_INTERIOR   (hash md5:66be64b1b4b92814cb11b681c94c73f3)
Theorem hlt_NEGLIGIBLE_EMPTY_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 -> hl_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/measure.ml:1053 / HAS_INTEGRAL_NEGLIGIBLE_EQ_AE   (hash md5:31b952422617ee04425037502e0b3a06)
Theorem hlt_HAS_INTEGRAL_NEGLIGIBLE_EQ_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ (forall x :e hl_ty_cart R M, forall i :e omega, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f x) i) = 1) -> (hl_has_integral M N f (hl_vec N (hl_NUMERAL hl_zero)) s = 1 <-> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6807 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6807 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ~ f x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:1075 / HAS_MEASURE_AFFINITY   (hash md5:abd4214f5eb01a425d60dc54da633bc9)
Theorem hlt_HAS_MEASURE_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, forall y :e R, hl_has_measure N s y = 1 -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) (hl_real_mul (hl_real_pow (hl_real_abs m) (hl_dimindex N (hl_UNIV N))) y) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1151 / STRETCH_GALOIS   (hash md5:68bd183b3106217d01e048d16cfdb963)
Theorem hlt_STRETCH_GALOIS : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, forall m :e R :^: omega, (forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> ~ m k = hl_real_of_num (hl_NUMERAL hl_zero)) -> (y = hl_lambda R N (fun k :e omega => hl_real_mul (m k) (hl_vindex R N x k)) <-> hl_lambda R N (fun k :e omega => hl_real_mul (hl_real_inv (m k)) (hl_vindex R N y k)) = x).
Admitted.

// HOL Light: Multivariate/measure.ml:1162 / HAS_MEASURE_STRETCH   (hash md5:205cb8d9039158d992318c6d92358a1a)
Theorem hlt_HAS_MEASURE_STRETCH : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R :^: omega, forall y :e R, hl_has_measure N s y = 1 -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_lambda R N (fun k :e omega => hl_real_mul (m k) (hl_vindex R N x k))) s) (hl_real_mul (hl_real_abs (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) m)) y) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1281 / HAS_MEASURE_TRANSLATION   (hash md5:e12c4f6de51d093c642affe720f92fc1)
Theorem hlt_HAS_MEASURE_TRANSLATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall a :e hl_ty_cart R N, hl_has_measure N s m = 1 -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1289 / NEGLIGIBLE_TRANSLATION   (hash md5:fbf7fd9be25574f2a93c2badea359ddf)
Theorem hlt_NEGLIGIBLE_TRANSLATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_negligible N s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1293 / HAS_MEASURE_TRANSLATION_EQ   (hash md5:bbea37161801555bce0c137c2245a9e6)
Theorem hlt_HAS_MEASURE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) m = 1 <-> hl_has_measure N s m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1304 / MEASURE_TRANSLATION   (hash md5:119cd87dab4290548d3cd20286b5617a)
Theorem hlt_MEASURE_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = hl_measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1310 / NEGLIGIBLE_TRANSLATION_REV   (hash md5:5f44b0ee8e7fc88960c309f9d95048e1)
Theorem hlt_NEGLIGIBLE_TRANSLATION_REV : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1314 / NEGLIGIBLE_TRANSLATION_EQ   (hash md5:3e148cd5c2d865853c7f4d821d10357e)
Theorem hlt_NEGLIGIBLE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1320 / MEASURABLE_TRANSLATION_EQ   (hash md5:baaf8f9a5e65200b09976fe64c1f9ff4)
Theorem hlt_MEASURABLE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1326 / MEASURABLE_TRANSLATION   (hash md5:ebc9a5291560118381ba310051dfa2cc)
Theorem hlt_MEASURABLE_TRANSLATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_measurable N s = 1 -> hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1330 / HAS_MEASURE_SCALING   (hash md5:d95ce1f44ab9ec445f8e70753d268bbd)
Theorem hlt_HAS_MEASURE_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m c :e R, hl_has_measure N s m = 1 -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) (hl_real_mul (hl_real_pow (hl_real_abs c) (hl_dimindex N (hl_UNIV N))) m) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1339 / HAS_MEASURE_SCALING_EQ   (hash md5:934543bfccafaec945073f2293f2ca84)
Theorem hlt_HAS_MEASURE_SCALING_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m c :e R, ~ c = hl_real_of_num (hl_NUMERAL hl_zero) -> (hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) (hl_real_mul (hl_real_pow (hl_real_abs c) (hl_dimindex N (hl_UNIV N))) m) = 1 <-> hl_has_measure N s m = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:1352 / MEASURABLE_SCALING   (hash md5:c20bddd5e6a11737ac914fe2a0cb0800)
Theorem hlt_MEASURABLE_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_measurable N s = 1 -> hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1356 / MEASURABLE_SCALING_EQ   (hash md5:930399a380d95e10eb77af59e46adf54)
Theorem hlt_MEASURABLE_SCALING_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1367 / MEASURABLE_AFFINITY_EQ   (hash md5:84beb4e5f7ee470b6daa5eab1e379eff)
Theorem hlt_MEASURABLE_AFFINITY_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1373 / MEASURABLE_AFFINITY   (hash md5:0fc742b686d6dca4d63e982e4bfcd3aa)
Theorem hlt_MEASURABLE_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_measurable N s = 1 -> hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1377 / MEASURE_SCALING   (hash md5:c7053a5574779c7361231aa14a8779c7)
Theorem hlt_MEASURE_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_measurable N s = 1 -> hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = hl_real_mul (hl_real_pow (hl_real_abs c) (hl_dimindex N (hl_UNIV N))) (hl_measure N s).
Admitted.

// HOL Light: Multivariate/measure.ml:1384 / MEASURE_AFFINITY   (hash md5:c701dea6c8941b8ff634fd5ecab69cfb)
Theorem hlt_MEASURE_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_measurable N s = 1 -> hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = hl_real_mul (hl_real_pow (hl_real_abs m) (hl_dimindex N (hl_UNIV N))) (hl_measure N s).
Admitted.

// HOL Light: Multivariate/measure.ml:1393 / NEGLIGIBLE_SCALING   (hash md5:e1080fad114771f419ff0aee7b92fb12)
Theorem hlt_NEGLIGIBLE_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_negligible N s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1399 / NEGLIGIBLE_SCALING_EQ   (hash md5:ba10af83dbfdb605ac2844e44abe86ee)
Theorem hlt_NEGLIGIBLE_SCALING_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1411 / NEGLIGIBLE_AFFINITY_EQ   (hash md5:a87c8a5787d16d27c828dd47c84c10f0)
Theorem hlt_NEGLIGIBLE_AFFINITY_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1418 / NEGLIGIBLE_AFFINITY   (hash md5:e2fe07fbec8736026ed519008d8b5b15)
Theorem hlt_NEGLIGIBLE_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_negligible N s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1423 / NOT_MEASURABLE_UNIV   (hash md5:e096de67198931db4f8b78899a6987cb)
Theorem hlt_NOT_MEASURABLE_UNIV : forall N:set, N <> Empty -> ~ hl_measurable N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1441 / HAS_MEASURE_NESTED_UNIONS   (hash md5:9ec6fc82c85b7e4cd25dd9e967eb924f)
Theorem hlt_HAS_MEASURE_NESTED_UNIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, forall B :e R, (forall n :e omega, hl_measurable N (s n) = 1) /\ ((forall n :e omega, hl_real_le (hl_measure N (s n)) B = 1) /\ (forall n :e omega, hl_SUBSET (hl_ty_cart R N) (s n) (s (hl_SUC n)) = 1)) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6809 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6809 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1 /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_measure N (s n))) (hl_lift (hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6810 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6810 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))))) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1478 / MEASURABLE_NESTED_UNIONS   (hash md5:54944f10c9dcdb9bfbd27823732eeba5)
Theorem hlt_MEASURABLE_NESTED_UNIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, forall B :e R, (forall n :e omega, hl_measurable N (s n) = 1) /\ ((forall n :e omega, hl_real_le (hl_measure N (s n)) B = 1) /\ (forall n :e omega, hl_SUBSET (hl_ty_cart R N) (s n) (s (hl_SUC n)) = 1)) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6811 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6811 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1488 / HAS_MEASURE_COUNTABLE_NEGLIGIBLE_UNIONS   (hash md5:a321fdad49167ede2711edf66241ae8c)
Theorem hlt_HAS_MEASURE_COUNTABLE_NEGLIGIBLE_UNIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, forall B :e R, (forall n :e omega, hl_measurable N (s n) = 1) /\ ((forall m n :e omega, ~ m = n -> hl_negligible N (hl_INTER (hl_ty_cart R N) (s m) (s n)) = 1) /\ (forall n :e omega, hl_real_le (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun k :e omega => hl_measure N (s k))) B = 1)) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6813 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6813 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1 /\ hl_sums 1 (fun n :e omega => hl_lift (hl_measure N (s n))) (hl_lift (hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6814 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6814 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))))) (hl_from (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1527 / NEGLIGIBLE_COUNTABLE_UNIONS_GEN   (hash md5:67cb71123a83f490d71d4620ffd76e5e)
Theorem hlt_NEGLIGIBLE_COUNTABLE_UNIONS_GEN : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_negligible N s = 1) -> hl_negligible N (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1538 / HAS_MEASURE_COUNTABLE_NEGLIGIBLE_UNIONS_BOUNDED   (hash md5:36f7036d659df063ab1891d1e647d1b6)
Theorem hlt_HAS_MEASURE_COUNTABLE_NEGLIGIBLE_UNIONS_BOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_measurable N (s n) = 1) /\ ((forall m n :e omega, ~ m = n -> hl_negligible N (hl_INTER (hl_ty_cart R N) (s m) (s n)) = 1) /\ hl_bounded N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6815 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6815 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6816 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6816 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1 /\ hl_sums 1 (fun n :e omega => hl_lift (hl_measure N (s n))) (hl_lift (hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6817 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6817 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))))) (hl_from (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1564 / MEASURABLE_COUNTABLE_UNIONS_BOUNDED   (hash md5:9a9a09e12fcd448ccf97d775082a6590)
Theorem hlt_MEASURABLE_COUNTABLE_UNIONS_BOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_measurable N (s n) = 1) /\ hl_bounded N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6822 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6822 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1 -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6823 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6823 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1595 / MEASURE_COUNTABLE_UNIONS_LE_STRONG   (hash md5:6dc41818f6adc97e89204f8c34139bef)
Theorem hlt_MEASURE_COUNTABLE_UNIONS_LE_STRONG : forall N:set, N <> Empty -> forall d :e 2 :^: hl_ty_cart R N :^: omega, forall B :e R, (forall n :e omega, hl_measurable N (d n) = 1) /\ (forall n :e omega, hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6830 :e 2 :^: hl_ty_cart R N => if exists k :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6830 (hl_le k n) (d k) = 1 then 1 else 0)))) B = 1) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6831 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6831 (hl_IN omega n (hl_UNIV omega)) (d n) = 1 then 1 else 0))) = 1 /\ hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6832 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6832 (hl_IN omega n (hl_UNIV omega)) (d n) = 1 then 1 else 0)))) B = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1629 / MEASURE_COUNTABLE_UNIONS_LE   (hash md5:e3d7a6aeb24f33a6e58893420f4e7e07)
Theorem hlt_MEASURE_COUNTABLE_UNIONS_LE : forall N:set, N <> Empty -> forall d :e 2 :^: hl_ty_cart R N :^: omega, forall B :e R, (forall n :e omega, hl_measurable N (d n) = 1) /\ (forall n :e omega, hl_real_le (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun k :e omega => hl_measure N (d k))) B = 1) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6833 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6833 (hl_IN omega n (hl_UNIV omega)) (d n) = 1 then 1 else 0))) = 1 /\ hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6834 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6834 (hl_IN omega n (hl_UNIV omega)) (d n) = 1 then 1 else 0)))) B = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1644 / MEASURABLE_COUNTABLE_UNIONS_STRONG   (hash md5:60f693ec0a2bab30a7611d6d8b288779)
Theorem hlt_MEASURABLE_COUNTABLE_UNIONS_STRONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, forall B :e R, (forall n :e omega, hl_measurable N (s n) = 1) /\ (forall n :e omega, hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6835 :e 2 :^: hl_ty_cart R N => if exists k :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6835 (hl_le k n) (s k) = 1 then 1 else 0)))) B = 1) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6836 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6836 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1651 / MEASURABLE_COUNTABLE_UNIONS   (hash md5:713840d91ff5d091d30d1c99fc9e83ae)
Theorem hlt_MEASURABLE_COUNTABLE_UNIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, forall B :e R, (forall n :e omega, hl_measurable N (s n) = 1) /\ (forall n :e omega, hl_real_le (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun k :e omega => hl_measure N (s k))) B = 1) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6837 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6837 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1658 / MEASURE_COUNTABLE_UNIONS_LE_STRONG_GEN   (hash md5:bb4b2adf8ae9eaf0bdb369c905af5280)
Theorem hlt_MEASURE_COUNTABLE_UNIONS_LE_STRONG_GEN : forall N:set, N <> Empty -> forall D :e 2 :^: (2 :^: hl_ty_cart R N), forall B :e R, hl_COUNTABLE (2 :^: hl_ty_cart R N) D = 1 /\ ((forall d :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d D = 1 -> hl_measurable N d = 1) /\ (forall D' :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) D' D = 1 /\ hl_FINITE (2 :^: hl_ty_cart R N) D' = 1 -> hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) D')) B = 1)) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) D) = 1 /\ hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) D)) B = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1681 / MEASURE_COUNTABLE_UNIONS_LE_GEN   (hash md5:00551a9cf8656f38bb8e74268ee16521)
Theorem hlt_MEASURE_COUNTABLE_UNIONS_LE_GEN : forall N:set, N <> Empty -> forall D :e 2 :^: (2 :^: hl_ty_cart R N), forall B :e R, hl_COUNTABLE (2 :^: hl_ty_cart R N) D = 1 /\ ((forall d :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d D = 1 -> hl_measurable N d = 1) /\ (forall D' :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) D' D = 1 /\ hl_FINITE (2 :^: hl_ty_cart R N) D' = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R N) D' (fun d :e 2 :^: hl_ty_cart R N => hl_measure N d)) B = 1)) -> hl_measurable N (hl_UNIONS (hl_ty_cart R N) D) = 1 /\ hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) D)) B = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1694 / MEASURABLE_COUNTABLE_INTERS   (hash md5:404d8f18f0b0fbc6c1190e1203862dcb)
Theorem hlt_MEASURABLE_COUNTABLE_INTERS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_measurable N (s n) = 1) -> hl_measurable N (hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6841 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6841 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1721 / MEASURABLE_COUNTABLE_INTERS_GEN   (hash md5:298c49dfecf9a82758bcd1ae812ebc96)
Theorem hlt_MEASURABLE_COUNTABLE_INTERS_GEN : forall N:set, N <> Empty -> forall D :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) D = 1 /\ (~ D = hl_EMPTY (2 :^: hl_ty_cart R N) /\ (forall d :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d D = 1 -> hl_measurable N d = 1)) -> hl_measurable N (hl_INTERS (hl_ty_cart R N) D) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1732 / MEASURE_COUNTABLE_UNIONS_APPROACHABLE   (hash md5:7f5c49007586c7100d8eb85b252d4cbb)
Theorem hlt_MEASURE_COUNTABLE_UNIONS_APPROACHABLE : forall N:set, N <> Empty -> forall D :e 2 :^: (2 :^: hl_ty_cart R N), forall B e1 :e R, hl_COUNTABLE (2 :^: hl_ty_cart R N) D = 1 /\ ((forall d :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d D = 1 -> hl_measurable N d = 1) /\ ((forall D' :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) D' D = 1 /\ hl_FINITE (2 :^: hl_ty_cart R N) D' = 1 -> hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) D')) B = 1) /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1)) -> exists D' :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) D' D = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) D' = 1 /\ hl_real_lt (hl_real_sub (hl_measure N (hl_UNIONS (hl_ty_cart R N) D)) e1) (hl_measure N (hl_UNIONS (hl_ty_cart R N) D')) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:1779 / HAS_MEASURE_NESTED_INTERS   (hash md5:79b1ee4e35004a8b14b545938d0f5810)
Theorem hlt_HAS_MEASURE_NESTED_INTERS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_measurable N (s n) = 1) /\ (forall n :e omega, hl_SUBSET (hl_ty_cart R N) (s (hl_SUC n)) (s n) = 1) -> hl_measurable N (hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6850 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6850 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1 /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_measure N (s n))) (hl_lift (hl_measure N (hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6851 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6851 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))))) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1825 / INTEGRAL_ZERO_ON_SUBINTERVALS_IMP_ZERO_AE_ALT   (hash md5:1b190c1afcf0c4e63a2e13508f9766d7)
Theorem hlt_INTEGRAL_ZERO_ON_SUBINTERVALS_IMP_ZERO_AE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_has_integral M N f (hl_vec N (hl_NUMERAL hl_zero)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6855 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6855 (if ~ f x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:1850 / MEASURABLE_COMPACT   (hash md5:b3ae5410af4d02cbd3cee02705702d9d)
Theorem hlt_MEASURABLE_COMPACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 -> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2011 / MEASURABLE_OPEN   (hash md5:dcdfc5e653d579dcc7f9bc686615ffa1)
Theorem hlt_MEASURABLE_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_open N s = 1 -> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2025 / MEASURE_OPEN_POS_LT   (hash md5:dc3118cdb340f0ba201a9763e61901d1)
Theorem hlt_MEASURE_OPEN_POS_LT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_open A s = 1 /\ (hl_bounded A s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R A)) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure A s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2029 / MEASURE_OPEN_POS_LT_EQ   (hash md5:16b0732628bd82903ddae3f35657c31b)
Theorem hlt_MEASURE_OPEN_POS_LT_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_open A s = 1 /\ hl_bounded A s = 1 -> (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure A s) = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/measure.ml:2033 / MEASURABLE_CLOSURE   (hash md5:53ff4fe5b85922edfeaa07c6ddbe684e)
Theorem hlt_MEASURABLE_CLOSURE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_bounded A s = 1 -> hl_measurable A (hl_closure A s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2038 / MEASURABLE_INTERIOR   (hash md5:23cae47d79ab74dc0e0e8d06f9c2120e)
Theorem hlt_MEASURABLE_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_bounded A s = 1 -> hl_measurable A (hl_interior A s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2042 / MEASURABLE_FRONTIER   (hash md5:c849a477039e088a553c40d3bc9a26f7)
Theorem hlt_MEASURABLE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_measurable N (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2050 / MEASURE_FRONTIER   (hash md5:5f5090a63f2454789758103c37aec6f8)
Theorem hlt_MEASURE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_measure N (hl_frontier N s) = hl_real_sub (hl_measure N (hl_closure N s)) (hl_measure N (hl_interior N s)).
Admitted.

// HOL Light: Multivariate/measure.ml:2060 / MEASURE_CLOSURE   (hash md5:3d12b544f7ca4ba3205e5248820836cf)
Theorem hlt_MEASURE_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_negligible N (hl_frontier N s) = 1 -> hl_measure N (hl_closure N s) = hl_measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2072 / MEASURE_INTERIOR   (hash md5:d75c60b56632992f56840f0c3e58a374)
Theorem hlt_MEASURE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_negligible N (hl_frontier N s) = 1 -> hl_measure N (hl_interior N s) = hl_measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2084 / MEASURABLE_JORDAN   (hash md5:72e493bfd856c3f51a3c187a777dc5bb)
Theorem hlt_MEASURABLE_JORDAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_negligible N (hl_frontier N s) = 1 -> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2095 / HAS_MEASURE_ELEMENTARY   (hash md5:8b850c3338cb6f682077a7d39d8218bd)
Theorem hlt_HAS_MEASURE_ELEMENTARY : forall A:set, A <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_division_of A d s = 1 -> hl_has_measure A s (hl_sum (2 :^: hl_ty_cart R A) d (hl_content A)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2104 / MEASURABLE_ELEMENTARY   (hash md5:0ea1777f26ee0a89af3108f63c50fb6b)
Theorem hlt_MEASURABLE_ELEMENTARY : forall A:set, A <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_division_of A d s = 1 -> hl_measurable A s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2108 / MEASURE_ELEMENTARY   (hash md5:7764254f501d6c4019cdf27dea418b87)
Theorem hlt_MEASURE_ELEMENTARY : forall A:set, A <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_division_of A d s = 1 -> hl_measure A s = hl_sum (2 :^: hl_ty_cart R A) d (hl_content A).
Admitted.

// HOL Light: Multivariate/measure.ml:2112 / MEASURABLE_INTER_INTERVAL   (hash md5:0181fb6d019dd49fc614e6e50d8236de)
Theorem hlt_MEASURABLE_INTER_INTERVAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_measurable N s = 1 -> hl_measurable N (hl_INTER (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2116 / MEASURABLE_INSIDE   (hash md5:bdd11d987842ef34967fd1901e8d1aec)
Theorem hlt_MEASURABLE_INSIDE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 -> hl_measurable N (hl_inside N s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2125 / PART_MEASURES   (hash md5:a6b30e264ccf2080b2c5a819af815d61)
Theorem hlt_PART_MEASURES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_measurable N s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) m = 1 /\ hl_real_le m (hl_measure N s) = 1) -> exists t u :e 2 :^: hl_ty_cart R N, hl_DISJOINT (hl_ty_cart R N) t u = 1 /\ (hl_UNION (hl_ty_cart R N) t u = s /\ (hl_measurable N t = 1 /\ (hl_measure N t = m /\ (hl_measurable N u = 1 /\ hl_measure N u = hl_real_sub (hl_measure N s) m)))).
Admitted.

// HOL Light: Multivariate/measure.ml:2215 / HALF_MEASURES   (hash md5:b8492299fa2814fca7844128ed6114a1)
Theorem hlt_HALF_MEASURES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 -> exists t u :e 2 :^: hl_ty_cart R N, hl_DISJOINT (hl_ty_cart R N) t u = 1 /\ (hl_UNION (hl_ty_cart R N) t u = s /\ (hl_measurable N t = 1 /\ (hl_measure N t = hl_real_div (hl_measure N s) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) /\ (hl_measurable N u = 1 /\ hl_measure N u = hl_real_div (hl_measure N s) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))))).
Admitted.

// HOL Light: Multivariate/measure.ml:2229 / MULTIPART_MEASURES   (hash md5:2a71719e7eb06fbd94efb7cf49d7433c)
Theorem hlt_MULTIPART_MEASURES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_measurable N s = 1 /\ ~ n = hl_NUMERAL hl_zero -> exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_le (hl_CARD (2 :^: hl_ty_cart R N) f) n = 1 /\ (hl_pairwise (2 :^: hl_ty_cart R N) (hl_DISJOINT (hl_ty_cart R N)) f = 1 /\ (hl_UNIONS (hl_ty_cart R N) f = s /\ forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t f = 1 -> hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_measurable N t = 1 /\ hl_measure N t = hl_real_div (hl_measure N s) (hl_real_of_num n))))).
Admitted.

// HOL Light: Multivariate/measure.ml:2365 / STARLIKE_NEGLIGIBLE_BOUNDED_MEASURABLE   (hash md5:9ada8520a945dc75da3df035d99c4f2f)
Theorem hlt_STARLIKE_NEGLIGIBLE_BOUNDED_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ (hl_bounded N s = 1 /\ (forall c :e R, forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vmul N c x) s = 1) -> c = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2517 / STARLIKE_NEGLIGIBLE_LEMMA   (hash md5:943129c54c3e9088ef136689ef3c3147)
Theorem hlt_STARLIKE_NEGLIGIBLE_LEMMA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (forall c :e R, forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vmul N c x) s = 1) -> c = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2525 / STARLIKE_NEGLIGIBLE   (hash md5:fc3292f88d5f6b80d449f3f2026bfed1)
Theorem hlt_STARLIKE_NEGLIGIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_closed N s = 1 /\ (forall c :e R, forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vector_add N a x) s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N c x)) s = 1) -> c = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2539 / STARLIKE_NEGLIGIBLE_STRONG   (hash md5:91d3af9643bf58c69749834106b199af)
Theorem hlt_STARLIKE_NEGLIGIBLE_STRONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_closed N s = 1 /\ (forall c :e R, forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ (hl_real_lt c (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_IN (hl_ty_cart R N) (hl_vector_add N a x) s = 1) -> ~ hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N c x)) s = 1) -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2560 / NEGLIGIBLE_HYPERPLANE   (hash md5:ee304bedd76a0e345fd2019c1e06d348)
Theorem hlt_NEGLIGIBLE_HYPERPLANE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, ~ (a = hl_vec N (hl_NUMERAL hl_zero) /\ b = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6867 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6867 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2579 / NEGLIGIBLE_LOWDIM   (hash md5:e595862743dfba891c4da12242b5379b)
Theorem hlt_NEGLIGIBLE_LOWDIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lt (hl_dim N s) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2589 / NEGLIGIBLE_AFFINE_HULL   (hash md5:c5aabdd6cf50639516a1983fb8134968)
Theorem hlt_NEGLIGIBLE_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_negligible N (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2607 / NEGLIGIBLE_AFFINE_HULL_1   (hash md5:2eb440da7dde006945eda616f62e3fe1)
Theorem hlt_NEGLIGIBLE_AFFINE_HULL_1 : forall a :e hl_ty_cart R 1, hl_negligible 1 (hl_hull (hl_ty_cart R 1) (hl_affine 1) (hl_INSERT (hl_ty_cart R 1) a (hl_EMPTY (hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2613 / NEGLIGIBLE_AFFINE_HULL_2   (hash md5:dfbf059aacbd56f4b9d82ee5f37bf81b)
Theorem hlt_NEGLIGIBLE_AFFINE_HULL_2 : forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_negligible (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_affine (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2619 / NEGLIGIBLE_AFFINE_HULL_3   (hash md5:d261c68db44dd00cdc7e9484067a187f)
Theorem hlt_NEGLIGIBLE_AFFINE_HULL_3 : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_negligible (idx_n (2 * dimindex 1 + 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_affine (idx_n (2 * dimindex 1 + 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)))))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2625 / NEGLIGIBLE_CONVEX_HULL   (hash md5:74004c8677b49088ef4e3760e3fa5b63)
Theorem hlt_NEGLIGIBLE_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_negligible N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2633 / NEGLIGIBLE_CONVEX_HULL_1   (hash md5:b2d94414e9530b512f29a859da871df2)
Theorem hlt_NEGLIGIBLE_CONVEX_HULL_1 : forall a :e hl_ty_cart R 1, hl_negligible 1 (hl_hull (hl_ty_cart R 1) (hl_convex 1) (hl_INSERT (hl_ty_cart R 1) a (hl_EMPTY (hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2639 / NEGLIGIBLE_CONVEX_HULL_2   (hash md5:3931a30cdfb768bccad56a5624827eaa)
Theorem hlt_NEGLIGIBLE_CONVEX_HULL_2 : forall a b :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_negligible (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2645 / NEGLIGIBLE_CONVEX_HULL_3   (hash md5:f4b550348216c8f16af5e1ceddcc8850)
Theorem hlt_NEGLIGIBLE_CONVEX_HULL_3 : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_negligible (idx_n (2 * dimindex 1 + 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_convex (idx_n (2 * dimindex 1 + 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)))))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2655 / NEGLIGIBLE_CONVEX_FRONTIER   (hash md5:617f488ceb95d0a23ef8b5f5a543db4d)
Theorem hlt_NEGLIGIBLE_CONVEX_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_negligible N (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2698 / MEASURABLE_CONVEX   (hash md5:5b297d01987be0593a212564ec0575c1)
Theorem hlt_MEASURABLE_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_bounded N s = 1 -> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2703 / NEGLIGIBLE_CONVEX_INTERIOR   (hash md5:346d6dccbcbd11699582f70ef7252f52)
Theorem hlt_NEGLIGIBLE_CONVEX_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> (hl_negligible N s = 1 <-> hl_interior N s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/measure.ml:2717 / NEGLIGIBLE_SPHERE   (hash md5:bbd1845f9cd8771cb9ebc562640c8297)
Theorem hlt_NEGLIGIBLE_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_negligible N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2722 / MEASURABLE_BALL   (hash md5:a2db271fcdaf579a3d1fe57604c4252e)
Theorem hlt_MEASURABLE_BALL : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall r :e R, hl_measurable A (hl_ball A (hl_pair (hl_ty_cart R A) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2726 / MEASURABLE_CBALL   (hash md5:118102d6fc8ea38bd98b73d69dc64f07)
Theorem hlt_MEASURABLE_CBALL : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall r :e R, hl_measurable A (hl_cball A (hl_pair (hl_ty_cart R A) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2730 / MEASURE_BALL_POS   (hash md5:bb01cb9d8297d9ae75ba2e7cdbb2e51c)
Theorem hlt_MEASURE_BALL_POS : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure N (hl_ball N (hl_pair (hl_ty_cart R N) R x e1))) = 1 <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2735 / MEASURE_CBALL_POS   (hash md5:2779710e1948882a164e98c236509f61)
Theorem hlt_MEASURE_CBALL_POS : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure N (hl_cball N (hl_pair (hl_ty_cart R N) R x e1))) = 1 <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2742 / HAS_INTEGRAL_OPEN_INTERVAL   (hash md5:63765a223e84270e174a88c842fe8186)
Theorem hlt_HAS_INTEGRAL_OPEN_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, forall y :e hl_ty_cart R A, hl_has_integral B A f y (hl_open_interval B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b)) = 1 <-> hl_has_integral B A f y (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2750 / INTEGRABLE_ON_OPEN_INTERVAL   (hash md5:0354f2e3a9557f57bbfa0edbc05c8226)
Theorem hlt_INTEGRABLE_ON_OPEN_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, hl_integrable_on B A f (hl_open_interval B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b)) = 1 <-> hl_integrable_on B A f (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2755 / INTEGRAL_OPEN_INTERVAL   (hash md5:2afd18c508e7c33a74014c6a979c7b80)
Theorem hlt_INTEGRAL_OPEN_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, hl_integral B A (hl_open_interval B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b)) f = hl_integral B A (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) f.
Admitted.

// HOL Light: Multivariate/measure.ml:2759 / ABSOLUTELY_INTEGRABLE_ON_OPEN_INTERVAL   (hash md5:db71046a7b0f85a5c8e6dc9103d6c99f)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) = 1 <-> hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2765 / MEASURABLE_SEGMENT   (hash md5:5e2e1617000b921b737cbcfd42669d25)
Theorem hlt_MEASURABLE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_measurable N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_measurable N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2770 / MEASURE_SEGMENT_1   (hash md5:c1f60f6bafad4697c4cd47b323f07e2f)
Theorem hlt_MEASURE_SEGMENT_1 : (forall a b :e hl_ty_cart R 1, hl_measure 1 (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_vector_norm 1 (hl_vector_sub 1 b a)) /\ forall a b :e hl_ty_cart R 1, hl_measure 1 (hl_open_segment 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = hl_vector_norm 1 (hl_vector_sub 1 b a).
Admitted.

// HOL Light: Multivariate/measure.ml:2777 / NEGLIGIBLE_SEGMENT   (hash md5:78f7e0f88020f4b2c299de76c8c5efe5)
Theorem hlt_NEGLIGIBLE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_negligible N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 \/ a = b) /\ forall a b :e hl_ty_cart R N, hl_negligible N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 \/ a = b.
Admitted.

// HOL Light: Multivariate/measure.ml:2784 / MEASURE_BALL_SCALING   (hash md5:dd040499a35849d99f88b974c2e3bcd9)
Theorem hlt_MEASURE_BALL_SCALING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall c r :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 -> hl_measure N (hl_ball N (hl_pair (hl_ty_cart R N) R a (hl_real_mul c r))) = hl_real_mul (hl_real_pow c (hl_dimindex N (hl_UNIV N))) (hl_measure N (hl_ball N (hl_pair (hl_ty_cart R N) R a r))).
Admitted.

// HOL Light: Multivariate/measure.ml:2797 / MEASURE_CBALL_SCALING   (hash md5:c5516e8509c44456938246db7b4f72cc)
Theorem hlt_MEASURE_CBALL_SCALING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall c r :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 -> hl_measure N (hl_cball N (hl_pair (hl_ty_cart R N) R a (hl_real_mul c r))) = hl_real_mul (hl_real_pow c (hl_dimindex N (hl_UNIV N))) (hl_measure N (hl_cball N (hl_pair (hl_ty_cart R N) R a r))).
Admitted.

// HOL Light: Multivariate/measure.ml:2814 / MEASURE_CBALL_BOUND   (hash md5:4739f10fb68bc4eed9266f4e8212d675)
Theorem hlt_MEASURE_CBALL_BOUND : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall d :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 -> hl_real_le (hl_measure N (hl_cball N (hl_pair (hl_ty_cart R N) R x d))) (hl_real_pow (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) d) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2837 / MEASURE_BALL_BOUND   (hash md5:9b1e007298395ddd72d72a64bff18650)
Theorem hlt_MEASURE_BALL_BOUND : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall d :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 -> hl_real_le (hl_measure N (hl_ball N (hl_pair (hl_ty_cart R N) R x d))) (hl_real_pow (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) d) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2849 / NEGLIGIBLE_LINEAR_SINGULAR_IMAGE   (hash md5:ba318a2022cc70d8516df5eee3cc2801)
Theorem hlt_NEGLIGIBLE_LINEAR_SINGULAR_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ ~ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:2866 / COVERING_LEMMA   (hash md5:a720af4559b3c2c9ecfad9a880ee9b22)
Theorem hlt_COVERING_LEMMA : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall g :e 2 :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) /\ hl_gauge N g = 1) -> exists d :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) d = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 -> hl_SUBSET (hl_ty_cart R N) k (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (~ hl_interior N k = hl_EMPTY (hl_ty_cart R N) /\ exists c d1 :e hl_ty_cart R N, k = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d1) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) /\ ((forall k1 k2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k1 d = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) k2 d = 1 /\ ~ k1 = k2) -> hl_INTER (hl_ty_cart R N) (hl_interior N k1) (hl_interior N k2) = hl_EMPTY (hl_ty_cart R N)) /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_INTER (hl_ty_cart R N) s k) = 1 /\ hl_SUBSET (hl_ty_cart R N) k (g x) = 1) /\ ((forall u v :e hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) d = 1 -> exists n :e omega, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_sub (hl_vindex R N v i) (hl_vindex R N u i) = hl_real_div (hl_real_sub (hl_vindex R N b i) (hl_vindex R N a i)) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) /\ hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) d) = 1)))).
Admitted.

// HOL Light: Multivariate/measure.ml:3176 / COUNTABLE_ELEMENTARY_DIVISION   (hash md5:cf3465e61d634c1f6a069c385f94c300)
Theorem hlt_COUNTABLE_ELEMENTARY_DIVISION : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) d = 1 /\ (forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 -> exists a b :e hl_ty_cart R N, k = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) -> exists d' :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) d' = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d' = 1 -> ~ k = hl_EMPTY (hl_ty_cart R N) /\ exists a b :e hl_ty_cart R N, k = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ ((forall k l :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d' = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) l d' = 1 /\ ~ k = l) -> hl_INTER (hl_ty_cart R N) (hl_interior N k) (hl_interior N l) = hl_EMPTY (hl_ty_cart R N)) /\ hl_UNIONS (hl_ty_cart R N) d' = hl_UNIONS (hl_ty_cart R N) d)).
Admitted.

// HOL Light: Multivariate/measure.ml:3265 / EXPAND_CLOSED_OPEN_INTERVAL   (hash md5:cd2ae74d87df44a812c55a31ee4087f1)
Theorem hlt_EXPAND_CLOSED_OPEN_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c d :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1 /\ hl_real_le (hl_measure N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d))) (hl_real_add (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) e1) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:3316 / MEASURABLE_OUTER_INTERVALS_BOUNDED   (hash md5:8f7a1bdff19500821fb5b6a10934196b)
Theorem hlt_MEASURABLE_OUTER_INTERVALS_BOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, forall e1 :e R, hl_measurable N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists d :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) d = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 -> hl_SUBSET (hl_ty_cart R N) k (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (~ k = hl_EMPTY (hl_ty_cart R N) /\ exists c d1 :e hl_ty_cart R N, k = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d1) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) /\ ((forall k1 k2 :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k1 d = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) k2 d = 1 /\ ~ k1 = k2) -> hl_INTER (hl_ty_cart R N) (hl_interior N k1) (hl_interior N k2) = hl_EMPTY (hl_ty_cart R N)) /\ ((forall u v :e hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) d = 1 -> exists n :e omega, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_sub (hl_vindex R N v i) (hl_vindex R N u i) = hl_real_div (hl_real_sub (hl_vindex R N b i) (hl_vindex R N a i)) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 /\ ~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) -> ~ hl_interior N k = hl_EMPTY (hl_ty_cart R N)) /\ (hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) d) = 1 /\ (hl_measurable N (hl_UNIONS (hl_ty_cart R N) d) = 1 /\ hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) d)) (hl_real_add (hl_measure N s) e1) = 1)))))).
Admitted.

// HOL Light: Multivariate/measure.ml:3515 / MEASURABLE_OUTER_CLOSED_INTERVALS   (hash md5:d16488da7da8bbc4592ed2ec89b7eea8)
Theorem hlt_MEASURABLE_OUTER_CLOSED_INTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) d = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 -> ~ k = hl_EMPTY (hl_ty_cart R N) /\ exists a b :e hl_ty_cart R N, k = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ ((forall k l :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) l d = 1 /\ ~ k = l) -> hl_INTER (hl_ty_cart R N) (hl_interior N k) (hl_interior N l) = hl_EMPTY (hl_ty_cart R N)) /\ (hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) d) = 1 /\ (hl_measurable N (hl_UNIONS (hl_ty_cart R N) d) = 1 /\ hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) d)) (hl_real_add (hl_measure N s) e1) = 1)))).
Admitted.

// HOL Light: Multivariate/measure.ml:3647 / MEASURABLE_OUTER_OPEN_INTERVALS   (hash md5:c7a883d3a83500fe621c8634eced1415)
Theorem hlt_MEASURABLE_OUTER_OPEN_INTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) d = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 -> ~ k = hl_EMPTY (hl_ty_cart R N) /\ exists a b :e hl_ty_cart R N, k = hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) /\ (hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) d) = 1 /\ (hl_measurable N (hl_UNIONS (hl_ty_cart R N) d) = 1 /\ hl_real_le (hl_measure N (hl_UNIONS (hl_ty_cart R N) d)) (hl_real_add (hl_measure N s) e1) = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:3787 / MEASURABLE_OUTER_OPEN   (hash md5:830cf9ed316d2f46750d026d9ae81464)
Theorem hlt_MEASURABLE_OUTER_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_open N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_measurable N t = 1 /\ hl_real_lt (hl_measure N t) (hl_real_add (hl_measure N s) e1) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:3801 / MEASURABLE_INNER_COMPACT   (hash md5:3b5763f37129ccf360479b8796a02076)
Theorem hlt_MEASURABLE_INNER_COMPACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_compact N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_measurable N t = 1 /\ hl_real_lt (hl_measure N s) (hl_real_add (hl_measure N t) e1) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:3847 / OPEN_MEASURABLE_INNER_DIVISION   (hash md5:6e32268b784eea49a1072ad1c57d87b6)
Theorem hlt_OPEN_MEASURABLE_INNER_DIVISION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_open N s = 1 /\ (hl_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists D :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N D (hl_UNIONS (hl_ty_cart R N) D) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_UNIONS (hl_ty_cart R N) D) s = 1 /\ hl_real_lt (hl_measure N s) (hl_real_add (hl_measure N (hl_UNIONS (hl_ty_cart R N) D)) e1) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:3903 / OUTER_MEASURE   (hash md5:a5c72fbd76af6f5bd5b274dd44a6f7f8)
Theorem hlt_OUTER_MEASURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_measurable N t = 1 /\ forall t' :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t' = 1 /\ hl_measurable N t' = 1 -> hl_negligible N (hl_DIFF (hl_ty_cart R N) t t') = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:3968 / MEASURABLE_LINEAR_IMAGE_INTERVAL   (hash md5:f98725ce56fa61907a7b753fd1e6f85d)
Theorem hlt_MEASURABLE_LINEAR_IMAGE_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, hl_linear B A f = 1 -> hl_measurable A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:3976 / HAS_MEASURE_LINEAR_SUFFICIENT   (hash md5:15e638f6f15b1aae0465974e6fd5fcdf)
Theorem hlt_HAS_MEASURE_LINEAR_SUFFICIENT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall m :e R, hl_linear N N f = 1 /\ (forall a b :e hl_ty_cart R N, hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_real_mul m (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))))) = 1) -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_real_mul m (hl_measure N s)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4256 / INDUCT_MATRIX_ROW_OPERATIONS   (hash md5:b5bafffd77451410b3305bea942e6caf)
Theorem hlt_INDUCT_MATRIX_ROW_OPERATIONS : forall N:set, N <> Empty -> forall P :e 2 :^: hl_ty_cart (hl_ty_cart R N) N, (forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_row N N i A = hl_vec N (hl_NUMERAL hl_zero)) -> P A = 1) /\ ((forall A :e hl_ty_cart (hl_ty_cart R N) N, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j = hl_real_of_num (hl_NUMERAL hl_zero)) -> P A = 1) /\ ((forall A :e hl_ty_cart (hl_ty_cart R N) N, forall m n :e omega, P A = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n)))) -> P (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) (hl_swap omega (hl_pair omega omega m n) j)))) = 1) /\ (forall A :e hl_ty_cart (hl_ty_cart R N) N, forall m n :e omega, forall c :e R, P A = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n)))) -> P (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_COND (hl_ty_cart R N) (if i = m then 1 else 0) (hl_vector_add N (hl_row N N m A) (hl_vmul N c (hl_row N N n A))) (hl_row N N i A))) = 1))) -> forall A :e hl_ty_cart (hl_ty_cart R N) N, P A = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4400 / INDUCT_MATRIX_ELEMENTARY   (hash md5:3f0970bd4caf8c9a2ae289c5f947b9eb)
Theorem hlt_INDUCT_MATRIX_ELEMENTARY : forall N:set, N <> Empty -> forall P :e 2 :^: hl_ty_cart (hl_ty_cart R N) N, (forall A B :e hl_ty_cart (hl_ty_cart R N) N, P A = 1 /\ P B = 1 -> P (hl_matrix_mul N N N A B) = 1) /\ ((forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_row N N i A = hl_vec N (hl_NUMERAL hl_zero)) -> P A = 1) /\ ((forall A :e hl_ty_cart (hl_ty_cart R N) N, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j = hl_real_of_num (hl_NUMERAL hl_zero)) -> P A = 1) /\ ((forall m n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n))) -> P (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) i) (hl_swap omega (hl_pair omega omega m n) j)))) = 1) /\ (forall m n :e omega, forall c :e R, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n))) -> P (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if i = m /\ j = n then 1 else 0) c (hl_COND R (if i = j then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero)))))) = 1)))) -> forall A :e hl_ty_cart (hl_ty_cart R N) N, P A = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4455 / INDUCT_MATRIX_ELEMENTARY_ALT   (hash md5:139841084dddbb562ffb78022cdd24ad)
Theorem hlt_INDUCT_MATRIX_ELEMENTARY_ALT : forall N:set, N <> Empty -> forall P :e 2 :^: hl_ty_cart (hl_ty_cart R N) N, (forall A B :e hl_ty_cart (hl_ty_cart R N) N, P A = 1 /\ P B = 1 -> P (hl_matrix_mul N N N A B) = 1) /\ ((forall A :e hl_ty_cart (hl_ty_cart R N) N, forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_row N N i A = hl_vec N (hl_NUMERAL hl_zero)) -> P A = 1) /\ ((forall A :e hl_ty_cart (hl_ty_cart R N) N, (forall i j :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ i = j))) -> hl_vindex R N (hl_vindex (hl_ty_cart R N) N A i) j = hl_real_of_num (hl_NUMERAL hl_zero)) -> P A = 1) /\ ((forall m n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n))) -> P (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_vindex R N (hl_vindex (hl_ty_cart R N) N (hl_mat N N (hl_NUMERAL (hl_BIT1 hl_zero))) i) (hl_swap omega (hl_pair omega omega m n) j)))) = 1) /\ (forall m n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n))) -> P (hl_lambda (hl_ty_cart R N) N (fun i :e omega => hl_lambda R N (fun j :e omega => hl_COND R (if i = m /\ j = n \/ i = j then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero))))) = 1)))) -> forall A :e hl_ty_cart (hl_ty_cart R N) N, P A = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4503 / INDUCT_LINEAR_ELEMENTARY   (hash md5:fdb344f3d81965104e6320d75bcace84)
Theorem hlt_INDUCT_LINEAR_ELEMENTARY : forall N:set, N <> Empty -> forall P :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R N), (forall f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (hl_linear N N g = 1 /\ (P f = 1 /\ P g = 1)) -> P (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) f g) = 1) /\ ((forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall i :e omega, hl_linear N N f = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R N, hl_vindex R N (f x) i = hl_real_of_num (hl_NUMERAL hl_zero)))) -> P f = 1) /\ ((forall c :e R :^: omega, P (fun x :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_real_mul (c i) (hl_vindex R N x i))) = 1) /\ ((forall m n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n))) -> P (fun x :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_vindex R N x (hl_swap omega (hl_pair omega omega m n) i))) = 1) /\ (forall m n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n))) -> P (fun x :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_COND R (if i = m then 1 else 0) (hl_real_add (hl_vindex R N x m) (hl_vindex R N x n)) (hl_vindex R N x i))) = 1)))) -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_linear N N f = 1 -> P f = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4581 / LAMBDA_SWAP_GALOIS   (hash md5:07a72cd15299ac4541776d0d3180f409)
Theorem hlt_LAMBDA_SWAP_GALOIS : forall N:set, N <> Empty -> forall m n :e omega, forall x y :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ hl_le n (hl_dimindex N (hl_UNIV N)) = 1)) -> (x = hl_lambda R N (fun i :e omega => hl_vindex R N y (hl_swap omega (hl_pair omega omega m n) i)) <-> hl_lambda R N (fun i :e omega => hl_vindex R N x (hl_swap omega (hl_pair omega omega m n) i)) = y).
Admitted.

// HOL Light: Multivariate/measure.ml:4593 / LAMBDA_ADD_GALOIS   (hash md5:211139613da5e82a54cc8ad0caf97d50)
Theorem hlt_LAMBDA_ADD_GALOIS : forall N:set, N <> Empty -> forall m n :e omega, forall x y :e hl_ty_cart R N, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ ~ m = n))) -> (x = hl_lambda R N (fun i :e omega => hl_COND R (if i = m then 1 else 0) (hl_real_add (hl_vindex R N y m) (hl_vindex R N y n)) (hl_vindex R N y i)) <-> hl_lambda R N (fun i :e omega => hl_COND R (if i = m then 1 else 0) (hl_real_sub (hl_vindex R N x m) (hl_vindex R N x n)) (hl_vindex R N x i)) = y).
Admitted.

// HOL Light: Multivariate/measure.ml:4607 / HAS_MEASURE_SHEAR_INTERVAL   (hash md5:319558bb411035307f5bfea3624b0040)
Theorem hlt_HAS_MEASURE_SHEAR_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall m n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ (hl_le m (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ (~ m = n /\ (~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N a n) = 1))))) -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_COND R (if i = m then 1 else 0) (hl_real_add (hl_vindex R N x m) (hl_vindex R N x n)) (hl_vindex R N x i))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4781 / HAS_MEASURE_LINEAR_IMAGE   (hash md5:21b559f1349a3677e02a94d007693bdf)
Theorem hlt_HAS_MEASURE_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ hl_measurable N s = 1 -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_real_mul (hl_real_abs (hl_det N (hl_matrix N N f))) (hl_measure N s)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4934 / MEASURABLE_LINEAR_IMAGE   (hash md5:68b95775b3d8b9f910cc98b165c94908)
Theorem hlt_MEASURABLE_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ hl_measurable N s = 1 -> hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4941 / MEASURE_LINEAR_IMAGE   (hash md5:601ae53fb2caff94a8219eafcc2cae29)
Theorem hlt_MEASURE_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ hl_measurable N s = 1 -> hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = hl_real_mul (hl_real_abs (hl_det N (hl_matrix N N f))) (hl_measure N s).
Admitted.

// HOL Light: Multivariate/measure.ml:4949 / HAS_MEASURE_LINEAR_IMAGE_ALT   (hash md5:1a8f87724af953b9a51e5fb66dc24fe9)
Theorem hlt_HAS_MEASURE_LINEAR_IMAGE_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_linear N N f = 1 /\ hl_has_measure N s m = 1 -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) (hl_real_mul (hl_real_abs (hl_det N (hl_matrix N N f))) m) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4955 / HAS_MEASURE_LINEAR_IMAGE_SAME   (hash md5:c07b522fbd9981078def1f3ca4a88311)
Theorem hlt_HAS_MEASURE_LINEAR_IMAGE_SAME : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_linear A A f = 1 /\ (hl_measurable A s = 1 /\ hl_real_abs (hl_det A (hl_matrix A A f)) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_has_measure A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) f s) (hl_measure A s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4960 / MEASURE_LINEAR_IMAGE_SAME   (hash md5:1499891a22eb391130f5e474c2d081cb)
Theorem hlt_MEASURE_LINEAR_IMAGE_SAME : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (hl_measurable N s = 1 /\ hl_real_abs (hl_det N (hl_matrix N N f)) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = hl_measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:4968 / MEASURABLE_LINEAR_IMAGE_EQ   (hash md5:eb4fe4f46a64a8fc3fa9ca9f909e71b2)
Theorem hlt_MEASURABLE_LINEAR_IMAGE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> (hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1 <-> hl_measurable N s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:4976 / NEGLIGIBLE_LINEAR_IMAGE   (hash md5:f4b13af9d3562cdf92c747f2e1a3b97b)
Theorem hlt_NEGLIGIBLE_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ hl_negligible N s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4982 / NEGLIGIBLE_LINEAR_IMAGE_EQ   (hash md5:fb7ff373a5809cc25f27f30eee5295e6)
Theorem hlt_NEGLIGIBLE_LINEAR_IMAGE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> (hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1 <-> hl_negligible N s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:4990 / MEASURABLE_NEGATIONS   (hash md5:f22532cd8e12f5a0c9565a577759e226)
Theorem hlt_MEASURABLE_NEGATIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) s) = 1 <-> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:4995 / HAS_MEASURE_ORTHOGONAL_IMAGE   (hash md5:ab00961462ae45b72e783685ff700e4e)
Theorem hlt_HAS_MEASURE_ORTHOGONAL_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_orthogonal_transformation N f = 1 /\ hl_has_measure N s m = 1 -> hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) m = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5010 / HAS_MEASURE_ORTHOGONAL_IMAGE_EQ   (hash md5:b560ac7a18d4c55cc9d3630f62ab4f60)
Theorem hlt_HAS_MEASURE_ORTHOGONAL_IMAGE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_orthogonal_transformation N f = 1 -> (hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) m = 1 <-> hl_has_measure N s m = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:5026 / MEASURE_ORTHOGONAL_IMAGE_EQ   (hash md5:ffec282419d5048a33d94a25c6668b51)
Theorem hlt_MEASURE_ORTHOGONAL_IMAGE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 -> hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = hl_measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:5035 / MEASURE_NEGATIONS   (hash md5:ae605c97ed8095bb51fc6dba49b89115)
Theorem hlt_MEASURE_NEGATIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) s) = hl_measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:5039 / HAS_MEASURE_ISOMETRY   (hash md5:70c79de0ce1fccd7e9d91e21fa94ba76)
Theorem hlt_HAS_MEASURE_ISOMETRY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall m :e R, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ (hl_linear M N f = 1 /\ (forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x)) -> (hl_has_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) m = 1 <-> hl_has_measure M s m = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:5067 / MEASURABLE_LINEAR_IMAGE_EQ_GEN   (hash md5:ee374afda179336c0e925790bfe57e11)
Theorem hlt_MEASURABLE_LINEAR_IMAGE_EQ_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ (hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y)) -> (hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_measurable M s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:5090 / MEASURE_ISOMETRY   (hash md5:1d880c7631fab4fb7738cb8fa99c8055)
Theorem hlt_MEASURE_ISOMETRY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ (hl_linear M N f = 1 /\ (forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x)) -> hl_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_measure M s.
Admitted.

// HOL Light: Multivariate/measure.ml:5097 / MEASURABLE_CONVEX_EQ   (hash md5:50c9802c0ed9f3ad8009b125ebcf82c5)
Theorem hlt_MEASURABLE_CONVEX_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> (hl_measurable N s = 1 <-> hl_bounded N s = 1 \/ hl_interior N s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/measure.ml:5186 / CONGRUENT_IMAGE_STD_SIMPLEX   (hash md5:6a4125901b2d284f86536a998a3c7fa5)
Theorem hlt_CONGRUENT_IMAGE_STD_SIMPLEX : forall N:set, N <> Empty -> forall p :e omega :^: omega, hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6907 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6907 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x (p (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ (hl_real_le (hl_vindex R N x (p (hl_dimindex N (hl_UNIV N)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_lt i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N x (p i)) (hl_vindex R N x (p (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1) then 1 else 0) x = 1 then 1 else 0) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_lambda R N (fun i :e omega => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_inverse omega omega p i)) (fun j :e omega => hl_vindex R N x j))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6908 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6908 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x i) = 1) /\ hl_real_le (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N x i)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/measure.ml:5250 / HAS_MEASURE_IMAGE_STD_SIMPLEX   (hash md5:4a2497f6581158faf1ea2a47d85989c6)
Theorem hlt_HAS_MEASURE_IMAGE_STD_SIMPLEX : forall N:set, N <> Empty -> forall p :e omega :^: omega, hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_has_measure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6909 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6909 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x (p (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ (hl_real_le (hl_vindex R N x (p (hl_dimindex N (hl_UNIV N)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_lt i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N x (p i)) (hl_vindex R N x (p (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1) then 1 else 0) x = 1 then 1 else 0)) (hl_measure N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6910 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6910 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5299 / HAS_MEASURE_STD_SIMPLEX   (hash md5:665f4418b254f20609e505ad5d16a914)
Theorem hlt_HAS_MEASURE_STD_SIMPLEX : forall N:set, N <> Empty -> hl_has_measure N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6914 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6914 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0)))) (hl_real_inv (hl_real_of_num (hl_FACT (hl_dimindex N (hl_UNIV N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5414 / HAS_MEASURE_SIMPLEX_0   (hash md5:74d5dc819f625c48a5d2f0510fa58d11)
Theorem hlt_HAS_MEASURE_SIMPLEX_0 : forall N:set, N <> Empty -> forall l :e finseq (hl_ty_cart R N), hl_LENGTH (hl_ty_cart R N) l = hl_dimindex N (hl_UNIV N) -> hl_has_measure N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_set_of_list (hl_ty_cart R N) l))) (hl_real_div (hl_real_abs (hl_det N (hl_vector (hl_ty_cart R N) N l))) (hl_real_of_num (hl_FACT (hl_dimindex N (hl_UNIV N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5457 / HAS_MEASURE_SIMPLEX   (hash md5:b559df270c6f897959dfc464f76d8e53)
Theorem hlt_HAS_MEASURE_SIMPLEX : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall l :e finseq (hl_ty_cart R N), hl_LENGTH (hl_ty_cart R N) l = hl_dimindex N (hl_UNIV N) -> hl_has_measure N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_set_of_list (hl_ty_cart R N) (hl_CONS (hl_ty_cart R N) a l))) (hl_real_div (hl_real_abs (hl_det N (hl_vector (hl_ty_cart R N) N (hl_MAP (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_sub N x a) l)))) (hl_real_of_num (hl_FACT (hl_dimindex N (hl_UNIV N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5472 / MEASURABLE_CONVEX_HULL   (hash md5:699bef07ccb13176dce3490321b0ae88)
Theorem hlt_MEASURABLE_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_bounded A s = 1 -> hl_measurable A (hl_hull (hl_ty_cart R A) (hl_convex A) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5477 / MEASURABLE_SIMPLEX   (hash md5:18071436f8a5ff23e7c243286a38336c)
Theorem hlt_MEASURABLE_SIMPLEX : forall A:set, A <> Empty -> forall l :e finseq (hl_ty_cart R A), hl_measurable A (hl_hull (hl_ty_cart R A) (hl_convex A) (hl_set_of_list (hl_ty_cart R A) l)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5482 / MEASURE_SIMPLEX   (hash md5:72bfe5d3c0ec3e666313d77a4a527e8c)
Theorem hlt_MEASURE_SIMPLEX : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall l :e finseq (hl_ty_cart R N), hl_LENGTH (hl_ty_cart R N) l = hl_dimindex N (hl_UNIV N) -> hl_measure N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_set_of_list (hl_ty_cart R N) (hl_CONS (hl_ty_cart R N) a l))) = hl_real_div (hl_real_abs (hl_det N (hl_vector (hl_ty_cart R N) N (hl_MAP (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_sub N x a) l)))) (hl_real_of_num (hl_FACT (hl_dimindex N (hl_UNIV N)))).
Admitted.

// HOL Light: Multivariate/measure.ml:5493 / HAS_MEASURE_TRIANGLE   (hash md5:15d876e4d26d8120bb4296b3e109d5a1)
Theorem hlt_HAS_MEASURE_TRIANGLE : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_has_measure (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) (hl_real_div (hl_real_abs (hl_real_sub (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) c (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) c (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))))))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5503 / MEASURABLE_TRIANGLE   (hash md5:1568174b3f84c8a9855076d581ad6657)
Theorem hlt_MEASURABLE_TRIANGLE : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_measurable N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N)))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5510 / MEASURE_TRIANGLE   (hash md5:f578a9d1e1e4efaa5e1757a7565b6f3e)
Theorem hlt_MEASURE_TRIANGLE : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_measure (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) = hl_real_div (hl_real_abs (hl_real_sub (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) c (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1)) c (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1)) a (hl_NUMERAL (hl_BIT1 hl_zero))))))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/measure.ml:5521 / HAS_MEASURE_TETRAHEDRON   (hash md5:4298191592049dc1598a977adddb0799)
Theorem hlt_HAS_MEASURE_TETRAHEDRON : forall a b c d :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_has_measure (idx_n (2 * dimindex 1 + 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_convex (idx_n (2 * dimindex 1 + 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) c (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) d (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))))) (hl_real_div (hl_real_abs (hl_real_add (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_add (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))))))))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero)))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5537 / MEASURABLE_TETRAHEDRON   (hash md5:8b9cb34005ff2a7dc92315c7c1679d61)
Theorem hlt_MEASURABLE_TETRAHEDRON : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, hl_measurable N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N))))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5544 / MEASURE_TETRAHEDRON   (hash md5:9971ef3d1a7dfd2bc64a82b2591cded0)
Theorem hlt_MEASURE_TETRAHEDRON : forall a b c d :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)), hl_measure (idx_n (2 * dimindex 1 + 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_convex (idx_n (2 * dimindex 1 + 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) c (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) d (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))))) = hl_real_div (hl_real_abs (hl_real_add (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))))) (hl_real_add (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_real_sub (hl_real_sub (hl_real_sub (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) b (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (hl_real_mul (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) c (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_real_sub (hl_vindex R (idx_n (2 * dimindex 1 + 1)) d (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vindex R (idx_n (2 * dimindex 1 + 1)) a (hl_NUMERAL (hl_BIT1 hl_zero)))))))))) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/measure.ml:5560 / MEASURE_CONTINUOUS_WITH_HAUSDIST   (hash md5:a11a6f71dada18fdc2995873de80b7c5)
Theorem hlt_MEASURE_CONTINUOUS_WITH_HAUSDIST : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1)) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R N, hl_bounded N t = 1 /\ (hl_convex N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) d = 1)) -> hl_real_lt (hl_real_abs (hl_real_sub (hl_measure N t) (hl_measure N s))) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5602 / MEASURE_CONTINUOUS_WITH_HAUSDIST_EXPLICIT   (hash md5:1cab7df2dc209bf298a2b99f3c31e64c)
Theorem hlt_MEASURE_CONTINUOUS_WITH_HAUSDIST_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R N, hl_convex N t = 1 /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) /\ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1)) -> hl_real_lt (hl_real_abs (hl_real_sub (hl_measure N t) (hl_measure N s))) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5641 / MEASURE_SEMICONTINUOUS_WITH_HAUSDIST_EXPLICIT   (hash md5:3837e799b0dc0d4064ed784130dd3826)
Theorem hlt_MEASURE_SEMICONTINUOUS_WITH_HAUSDIST_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_bounded N s = 1 /\ (hl_negligible N (hl_frontier N s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall s' :e 2 :^: hl_ty_cart R N, hl_measurable N s' = 1 /\ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s' = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) -> hl_real_lt (hl_measure N s') (hl_real_add (hl_measure N s) e1) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5690 / MEASURE_SEMICONTINUOUS_WITH_HAUSDIST_BOUND   (hash md5:14ba276d9074508d23d783fb1a00593e)
Theorem hlt_MEASURE_SEMICONTINUOUS_WITH_HAUSDIST_BOUND : forall N:set, N <> Empty -> forall s s' :e 2 :^: hl_ty_cart R N, forall r e1 :e R, forall a :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_convex N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_bounded N s' = 1 /\ (hl_measurable N s' = 1 /\ (hl_real_le (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s s')) (hl_real_mul e1 r) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1)))))) -> hl_real_le (hl_measure N s') (hl_real_mul (hl_measure N s) (hl_real_pow (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) e1) (hl_dimindex N (hl_UNIV N)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5739 / STEINHAUS   (hash md5:d08506d49af522119f8f53230b9217c3)
Theorem hlt_STEINHAUS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure N s) = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) d)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6922 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6922 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 then 1 else 0) (hl_vector_sub N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5789 / MEASURABLE_NONNEGLIGIBLE_IMP_LARGE   (hash md5:bff94e2ffddd3b65739747fdf4e9d73c)
Theorem hlt_MEASURABLE_NONNEGLIGIBLE_IMP_LARGE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure N s) = 1 -> hl_sym_3d5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5834 / MEASURABLE_SMALL_IMP_NEGLIGIBLE   (hash md5:cb04432a83c939f4e5b8fe058b578828)
Theorem hlt_MEASURABLE_SMALL_IMP_NEGLIGIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_sym_3c5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1 -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:5845 / AUSTIN_LEMMA   (hash md5:87d98a1e7fd204e29946a464cc340ce2)
Theorem hlt_AUSTIN_LEMMA : forall N:set, N <> Empty -> forall D :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) D = 1 /\ (forall d :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d D = 1 -> exists k :e R, exists a b :e hl_ty_cart R N, d = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_sub (hl_vindex R N b i) (hl_vindex R N a i) = k) -> exists D' :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) D' D = 1 /\ (hl_pairwise (2 :^: hl_ty_cart R N) (hl_DISJOINT (hl_ty_cart R N)) D' = 1 /\ hl_real_ge (hl_measure N (hl_UNIONS (hl_ty_cart R N) D')) (hl_real_div (hl_measure N (hl_UNIONS (hl_ty_cart R N) D)) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_dimindex N (hl_UNIV N)))) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:5975 / INTEGRABLE_CCONTINUOUS_EXPLICIT   (hash md5:db955f4079c5723b0e6f614e270598fc)
Theorem hlt_INTEGRABLE_CCONTINUOUS_EXPLICIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> exists k :e 2 :^: hl_ty_cart R M, hl_negligible M k = 1 /\ forall x :e hl_ty_cart R M, forall e1 :e R, ~ hl_IN (hl_ty_cart R M) x k = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall h :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) h = 1 /\ hl_real_lt h d = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vmul N (hl_real_inv (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x (hl_vector_add M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x (hl_vector_add M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f)) (f x))) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:6405 / INTEGRABLE_CCONTINUOUS_EXPLICIT_SYMMETRIC   (hash md5:d7ed0980a361d0505c311aaa7d3d1c64)
Theorem hlt_INTEGRABLE_CCONTINUOUS_EXPLICIT_SYMMETRIC : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> exists k :e 2 :^: hl_ty_cart R M, hl_negligible M k = 1 /\ forall x :e hl_ty_cart R M, forall e1 :e R, ~ hl_IN (hl_ty_cart R M) x k = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall h :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) h = 1 /\ hl_real_lt h d = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vmul N (hl_real_inv (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_sub M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_vector_add M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_sub M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_vector_add M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f)) (f x))) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:6739 / HAS_VECTOR_DERIVATIVE_INDEFINITE_INTEGRAL   (hash md5:15407db48de06250e2212d7e352f4b72)
Theorem hlt_HAS_VECTOR_DERIVATIVE_INDEFINITE_INTEGRAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists k :e 2 :^: hl_ty_cart R 1, hl_negligible 1 k = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) k) = 1 -> hl_has_vector_derivative N (fun x1 :e hl_ty_cart R 1 => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x1) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (f x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:6863 / ABSOLUTELY_INTEGRABLE_LEBESGUE_POINTS   (hash md5:2827dae274ad169ebef7ecd519fb7a30)
Theorem hlt_ABSOLUTELY_INTEGRABLE_LEBESGUE_POINTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> exists k :e 2 :^: hl_ty_cart R M, hl_negligible M k = 1 /\ forall x :e hl_ty_cart R M, forall e1 :e R, ~ hl_IN (hl_ty_cart R M) x k = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall h :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) h = 1 /\ hl_real_lt h d = 1 -> hl_real_lt (hl_vector_norm 1 (hl_vmul 1 (hl_real_inv (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_sub M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_vector_add M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_integral M 1 (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_sub M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_vector_add M x (hl_vmul M h (hl_vec M (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun t :e hl_ty_cart R M => hl_lift (hl_vector_norm N (hl_vector_sub N (f t) (f x))))))) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:6959 / measurable_on   (hash md5:2f766a4ed44b210463db6dde43367ca0)
Theorem hlt_measurable_on_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 <-> exists k :e 2 :^: hl_ty_cart R M, exists g :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, hl_negligible M k = 1 /\ ((forall n :e omega, hl_continuous_on M N (g n) (hl_UNIV (hl_ty_cart R M)) = 1) /\ forall x :e hl_ty_cart R M, ~ hl_IN (hl_ty_cart R M) x k = 1 -> hl_tendsto omega N (fun n :e omega => g n x) (hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) hl_sequentially = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:6967 / MEASURABLE_ON_UNIV   (hash md5:e88e898b946ae9272fea466927700e35)
Theorem hlt_MEASURABLE_ON_UNIV : forall A M:set, A <> Empty -> M <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R A :^: hl_ty_cart R M, hl_measurable_on M A (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R A) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec A (hl_NUMERAL hl_zero))) (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_measurable_on M A f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:6976 / lebesgue_measurable   (hash md5:4ce41e870010172672837f990649b4c9)
Theorem hlt_lebesgue_measurable_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 <-> hl_measurable_on N 1 (hl_indicator N s) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:6983 / MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_INTEGRABLE   (hash md5:bc9ebfe18a4292d5b20110925367a928)
Theorem hlt_MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_integrable_on M 1 g s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_drop (g x)) = 1)) -> hl_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7030 / MEASURABLE_BOUNDED_AE_BY_INTEGRABLE_IMP_INTEGRABLE   (hash md5:d49f788675ded748e6617f693745e6c5)
Theorem hlt_MEASURABLE_BOUNDED_AE_BY_INTEGRABLE_IMP_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s k :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_integrable_on M 1 g s = 1 /\ (hl_negligible M k = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s k) = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_drop (g x)) = 1))) -> hl_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7043 / MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_ABSOLUTELY_INTEGRABLE   (hash md5:ccc9d9919c9578655bba8665e223d762)
Theorem hlt_MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_ABSOLUTELY_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_integrable_on M 1 g s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_drop (g x)) = 1)) -> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7061 / INTEGRAL_DROP_LE_MEASURABLE   (hash md5:9464cbc6ed311e0e24d5622d0cb326a6)
Theorem hlt_INTEGRAL_DROP_LE_MEASURABLE : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable_on N 1 f s = 1 /\ (hl_integrable_on N 1 g s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1 /\ hl_real_le (hl_drop (f x)) (hl_drop (g x)) = 1)) -> hl_real_le (hl_drop (hl_integral N 1 s f)) (hl_drop (hl_integral N 1 s g)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7072 / INTEGRABLE_SUBINTERVALS_IMP_MEASURABLE   (hash md5:7e2f7e3fa693c4d9aece1f2b12e3a9cd)
Theorem hlt_INTEGRABLE_SUBINTERVALS_IMP_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7162 / INTEGRABLE_IMP_MEASURABLE   (hash md5:1d7da0ccd193c7ef72e7ecc399da1a2d)
Theorem hlt_INTEGRABLE_IMP_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 -> hl_measurable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7174 / ABSOLUTELY_INTEGRABLE_MEASURABLE   (hash md5:1b498428bec7ebc10ed42d88b3c4dbbd)
Theorem hlt_ABSOLUTELY_INTEGRABLE_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 <-> hl_measurable_on M N f s = 1 /\ hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7189 / MEASURABLE_ON_COMPOSE_CONTINUOUS   (hash md5:cd8fdd9cfcd29a9895cea3921abfa393)
Theorem hlt_MEASURABLE_ON_COMPOSE_CONTINUOUS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_continuous_on N P g (hl_UNIV (hl_ty_cart R N)) = 1 -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7208 / MEASURABLE_ON_COMPOSE_CONTINUOUS_0   (hash md5:62944eeaf09c0d4232a623f2ef31f748)
Theorem hlt_MEASURABLE_ON_COMPOSE_CONTINUOUS_0 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_continuous_on N P g (hl_UNIV (hl_ty_cart R N)) = 1 /\ g (hl_vec N (hl_NUMERAL hl_zero)) = hl_vec P (hl_NUMERAL hl_zero)) -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7219 / MEASURABLE_ON_COMPOSE_CONTINUOUS_OPEN_INTERVAL   (hash md5:58dd152e3deb2cc53c87fe757c790b8c)
Theorem hlt_MEASURABLE_ON_COMPOSE_CONTINUOUS_OPEN_INTERVAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N) (f x) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1) /\ hl_continuous_on N P g (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1) -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7315 / MEASURABLE_ON_COMPOSE_CONTINUOUS_CLOSED_SET   (hash md5:195871b7db8c42c2afc90b5deb43e1d0)
Theorem hlt_MEASURABLE_ON_COMPOSE_CONTINUOUS_CLOSED_SET : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N) (f x) s = 1) /\ hl_continuous_on N P g s = 1)) -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7332 / MEASURABLE_ON_COMPOSE_CONTINUOUS_CLOSED_SET_0   (hash md5:e06616c9ba1c1df3825c54c0909e75e3)
Theorem hlt_MEASURABLE_ON_COMPOSE_CONTINUOUS_CLOSED_SET_0 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_closed N s = 1 /\ (hl_measurable_on M N f t = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N) (f x) s = 1) /\ (hl_continuous_on N P g s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 /\ g (hl_vec N (hl_NUMERAL hl_zero)) = hl_vec P (hl_NUMERAL hl_zero))))) -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) g f) t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7354 / CONTINUOUS_IMP_MEASURABLE_ON   (hash md5:ab43feb5e6860bf6fc0e629d7eb22fe9)
Theorem hlt_CONTINUOUS_IMP_MEASURABLE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7361 / MEASURABLE_ON_CONST   (hash md5:dd21aed80d330f57b012a31e114c22b5)
Theorem hlt_MEASURABLE_ON_CONST : forall M N:set, M <> Empty -> N <> Empty -> forall k :e hl_ty_cart R N, hl_measurable_on M N (fun x :e hl_ty_cart R M => k) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7365 / MEASURABLE_ON_0   (hash md5:bb2c96e21af90fc398a72b6cf2cb1c2d)
Theorem hlt_MEASURABLE_ON_0 : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_measurable_on A B (fun x :e hl_ty_cart R A => hl_vec B (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7370 / MEASURABLE_ON_CMUL   (hash md5:88b16da030bfba1ec7947ff83489940d)
Theorem hlt_MEASURABLE_ON_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7379 / MEASURABLE_ON_CMUL_EQ   (hash md5:1ba3be284dcf16351d105610eda4f648)
Theorem hlt_MEASURABLE_ON_CMUL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall c :e R, hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) s = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_measurable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7389 / MEASURABLE_ON_NEG   (hash md5:14377d9dc078d8a0be4b501d4693cb66)
Theorem hlt_MEASURABLE_ON_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7395 / MEASURABLE_ON_NEG_EQ   (hash md5:0ff052197f0cb31706254aabfd9a0d20)
Theorem hlt_MEASURABLE_ON_NEG_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) s = 1 <-> hl_measurable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7401 / MEASURABLE_ON_NORM   (hash md5:526c5064c5c0bb70bc7129336be05a37)
Theorem hlt_MEASURABLE_ON_NORM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 -> hl_measurable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7412 / MEASURABLE_ON_LIFT_ABS   (hash md5:8141230d5c6c4d596ed034603eb4a4ec)
Theorem hlt_MEASURABLE_ON_LIFT_ABS : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (f x)) s = 1 -> hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7418 / MEASURABLE_ON_PASTECART   (hash md5:f4fc97eaf0c10dfb7468aad07b8f287a)
Theorem hlt_MEASURABLE_ON_PASTECART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable_on M P g s = 1 -> hl_measurable_on M (hl_ty_finite_sum N P) (fun x :e hl_ty_cart R M => hl_pastecart R N P (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7438 / MEASURABLE_ON_COMBINE   (hash md5:d66dd8f5241654427b37dc4e7ffae9e9)
Theorem hlt_MEASURABLE_ON_COMBINE : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall h :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_measurable_on M P g s = 1 /\ (hl_continuous_on (hl_ty_finite_sum N P) Q (fun x :e hl_ty_cart R (hl_ty_finite_sum N P) => h (hl_fstcart R N P x) (hl_sndcart R N P x)) (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum N P))) = 1 /\ h (hl_vec N (hl_NUMERAL hl_zero)) (hl_vec P (hl_NUMERAL hl_zero)) = hl_vec Q (hl_NUMERAL hl_zero))) -> hl_measurable_on M Q (fun x :e hl_ty_cart R M => h (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7453 / MEASURABLE_ON_ADD   (hash md5:5d15151f3363ee3cdd380365c7eeaaca)
Theorem hlt_MEASURABLE_ON_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable_on M N g s = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_vector_add N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7462 / MEASURABLE_ON_SUB   (hash md5:a36c8a7f93dbb42c85acffd688cf0871)
Theorem hlt_MEASURABLE_ON_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable_on M N g s = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_vector_sub N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7471 / MEASURABLE_ON_MAX   (hash md5:e1c72f4e626242ea5aca24b8756ce324)
Theorem hlt_MEASURABLE_ON_MAX : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable_on M N g s = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_real_max (hl_vindex R N (f x) i) (hl_vindex R N (g x) i))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7496 / MEASURABLE_ON_MIN   (hash md5:7608a482ff1554f95b3292c14eb0f2a4)
Theorem hlt_MEASURABLE_ON_MIN : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable_on M N g s = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_real_min (hl_vindex R N (f x) i) (hl_vindex R N (g x) i))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7510 / MEASURABLE_ON_DROP_MUL   (hash md5:7e218e8fe2e7a4fea2af3e02340f0b26)
Theorem hlt_MEASURABLE_ON_DROP_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M 1 f s = 1 /\ hl_measurable_on M N g s = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_drop (f x)) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7522 / MEASURABLE_ON_LIFT_MUL   (hash md5:952eda8694e732d42b4b0ce8c0dbbeca)
Theorem hlt_MEASURABLE_ON_LIFT_MUL : forall A:set, A <> Empty -> forall f g :e R :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_measurable_on A 1 (fun x :e hl_ty_cart R A => hl_lift (f x)) s = 1 /\ hl_measurable_on A 1 (fun x :e hl_ty_cart R A => hl_lift (g x)) s = 1 -> hl_measurable_on A 1 (fun x :e hl_ty_cart R A => hl_lift (hl_real_mul (f x) (g x))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7530 / MEASURABLE_ON_MUL   (hash md5:017ffc6682e7f1636308dda048bfee0a)
Theorem hlt_MEASURABLE_ON_MUL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e R :^: hl_ty_cart R B, forall g :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_measurable_on B 1 (fun x :e hl_ty_cart R B => hl_lift (f x)) s = 1 /\ hl_measurable_on B A g s = 1 -> hl_measurable_on B A (fun x :e hl_ty_cart R B => hl_vmul A (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7537 / MEASURABLE_ON_VSUM   (hash md5:565b8e237b6dccf65c0c771536fd7625)
Theorem hlt_MEASURABLE_ON_VSUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: A, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (forall i :e A, hl_IN A i t = 1 -> hl_measurable_on M N (f i) s = 1) -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_vsum A N t (fun i :e A => f i x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7546 / MEASURABLE_ON_COMPONENTWISE   (hash md5:7f01d47c379a6c85bce6d11f8a0064a9)
Theorem hlt_MEASURABLE_ON_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_measurable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7584 / MEASURABLE_ON_CONST_EQ   (hash md5:cb06500851d2725b8c718f39d64dc36b)
Theorem hlt_MEASURABLE_ON_CONST_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall c :e hl_ty_cart R N, hl_measurable_on M N (fun x :e hl_ty_cart R M => c) s = 1 <-> c = hl_vec N (hl_NUMERAL hl_zero) \/ hl_lebesgue_measurable M s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7605 / MEASURABLE_ON_LIFT_POW   (hash md5:05901df8f2d5e2d628aadec32185db0b)
Theorem hlt_MEASURABLE_ON_LIFT_POW : forall M:set, M <> Empty -> forall f :e R :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall n :e omega, hl_measurable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (f x)) s = 1 /\ (n = hl_NUMERAL hl_zero -> hl_lebesgue_measurable M s = 1) -> hl_measurable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_real_pow (f x) n)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7618 / MEASURABLE_ON_LIFT_PRODUCT   (hash md5:53d0ed8ee56864be6b8f75f43009a6a5)
Theorem hlt_MEASURABLE_ON_LIFT_PRODUCT : forall A N:set, A <> Empty -> N <> Empty -> forall f :e R :^: hl_ty_cart R N :^: A, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ ((t = hl_EMPTY A -> hl_lebesgue_measurable N s = 1) /\ (forall i :e A, hl_IN A i t = 1 -> hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (f i x)) s = 1)) -> hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_product A t (fun i :e A => f i x))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7634 / MEASURABLE_ON_SPIKE   (hash md5:be85748005bb8a194fb6f9b5cdab6f54)
Theorem hlt_MEASURABLE_ON_SPIKE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> hl_measurable_on M N f t = 1 -> hl_measurable_on M N g t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7645 / MEASURABLE_ON_SPIKE_SET   (hash md5:5c74e387cd48cf2fbc961e9b3a4c893d)
Theorem hlt_MEASURABLE_ON_SPIKE_SET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 -> hl_measurable_on M N f s = 1 -> hl_measurable_on M N f t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7661 / MEASURABLE_ON_SPIKE_SET_EQ   (hash md5:00e89c64d4a80b8b4bb67bcaec153410)
Theorem hlt_MEASURABLE_ON_SPIKE_SET_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 -> (hl_measurable_on M N f s = 1 <-> hl_measurable_on M N f t = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:7668 / MEASURABLE_ON_EQ   (hash md5:ad316f0b2f99313ea73c16317eb39559)
Theorem hlt_MEASURABLE_ON_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = g x) /\ hl_measurable_on M N f s = 1 -> hl_measurable_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7678 / MEASURABLE_ON_RESTRICT   (hash md5:79eecaa9fdbadda4ee21851a0f75bfdc)
Theorem hlt_MEASURABLE_ON_RESTRICT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_lebesgue_measurable M s = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7689 / MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET   (hash md5:05603b7d9572329f0eb50ee354517e0f)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s t :e 2 :^: hl_ty_cart R B, hl_SUBSET (hl_ty_cart R B) s t = 1 /\ (hl_measurable_on B A f t = 1 /\ hl_lebesgue_measurable B s = 1) -> hl_measurable_on B A f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7701 / MEASURABLE_ON_OPEN_INTERVAL   (hash md5:2532552a2e39184d1cefa1827229a92c)
Theorem hlt_MEASURABLE_ON_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_measurable_on M N f (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) = 1 <-> hl_measurable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7711 / MEASURABLE_ON_CASES   (hash md5:e01ca1700c2dacf51a574f64ee4b49c9)
Theorem hlt_MEASURABLE_ON_CASES : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: hl_ty_cart R M, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6943 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6943 (P x) x = 1 then 1 else 0)) = 1 /\ (hl_measurable_on M N f s = 1 /\ hl_measurable_on M N g s = 1) -> hl_measurable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (P x) (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7741 / MEASURABLE_ON_LIMIT   (hash md5:fe84f55fc8a59c9640af3071cd1f5087)
Theorem hlt_MEASURABLE_ON_LIMIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s k :e 2 :^: hl_ty_cart R M, (forall n :e omega, hl_measurable_on M N (f n) s = 1) /\ (hl_negligible M k = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s k) = 1 -> hl_tendsto omega N (fun n :e omega => f n x) (g x) hl_sequentially = 1)) -> hl_measurable_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7825 / MEASURABLE_ON_BILINEAR   (hash md5:e1ed8c8d5ed4d2ebbc39272a9ad79558)
Theorem hlt_MEASURABLE_ON_BILINEAR : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall op :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_bilinear N P Q op = 1 /\ (hl_measurable_on M N f s = 1 /\ hl_measurable_on M P g s = 1) -> hl_measurable_on M Q (fun x :e hl_ty_cart R M => op (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7860 / ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT   (hash md5:3881353a8e8250239b4e28d39df25d67)
Theorem hlt_ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall op :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_bilinear N P Q op = 1 /\ (hl_measurable_on M N f s = 1 /\ (hl_bounded N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ hl_absolutely_integrable_on M P g s = 1)) -> hl_absolutely_integrable_on M Q (fun x :e hl_ty_cart R M => op (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7889 / MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_ABSOLUTELY_INTEGRABLE_AE   (hash md5:81f5d40a8e3c1b4fcb8e3c2f5b35832a)
Theorem hlt_MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_ABSOLUTELY_INTEGRABLE_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_integrable_on M 1 g s = 1 /\ (hl_negligible M t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_drop (g x)) = 1))) -> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7917 / ABSOLUTELY_INTEGRABLE_SQUARE_INTEGRABLE_PRODUCT   (hash md5:2e28c82c87f8d57e66149cc6d281e6eb)
Theorem hlt_ABSOLUTELY_INTEGRABLE_SQUARE_INTEGRABLE_PRODUCT : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_measurable_on M N f s = 1 /\ (hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_real_pow (hl_vector_norm N (f x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) s = 1 /\ (hl_measurable_on M P g s = 1 /\ hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_real_pow (hl_vector_norm P (g x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) s = 1))) -> hl_absolutely_integrable_on M Q (fun x :e hl_ty_cart R M => bop (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:7939 / SQUARE_INTEGRAL_SQUARE_INTEGRABLE_PRODUCT_LE   (hash md5:cf9f0337d25ef836edef2a723248f607)
Theorem hlt_SQUARE_INTEGRAL_SQUARE_INTEGRABLE_PRODUCT_LE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_real_pow (hl_vector_norm N (f x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) s = 1 /\ (hl_measurable_on M P g s = 1 /\ hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_real_pow (hl_vector_norm P (g x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) s = 1)) -> hl_real_le (hl_real_pow (hl_drop (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_real_mul (hl_vector_norm N (f x)) (hl_vector_norm P (g x)))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_drop (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_real_pow (hl_vector_norm N (f x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) (hl_drop (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_real_pow (hl_vector_norm P (g x)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8043 / MEASURABLE_ON_EMPTY   (hash md5:9e687f59cd63356fadd64b6c03b6b04f)
Theorem hlt_MEASURABLE_ON_EMPTY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_EMPTY (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8048 / MEASURABLE_ON_INTER   (hash md5:e4b1227e6e4f5f34bf3a3c9edf0b97c9)
Theorem hlt_MEASURABLE_ON_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable_on M N f t = 1 -> hl_measurable_on M N f (hl_INTER (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8113 / MEASURABLE_ON_DIFF   (hash md5:61ff97ea51f12ddbc9dd3e1611050e0f)
Theorem hlt_MEASURABLE_ON_DIFF : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable_on M N f t = 1 -> hl_measurable_on M N f (hl_DIFF (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8127 / MEASURABLE_ON_UNION   (hash md5:cf31978df47086e5d6681dc5af069769)
Theorem hlt_MEASURABLE_ON_UNION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable_on M N f t = 1 -> hl_measurable_on M N f (hl_UNION (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8142 / MEASURABLE_ON_UNIONS   (hash md5:4231fed9522097a901a6bf121e0bf3bb)
Theorem hlt_MEASURABLE_ON_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e 2 :^: (2 :^: hl_ty_cart R M), hl_FINITE (2 :^: hl_ty_cart R M) k = 1 /\ (forall s :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) s k = 1 -> hl_measurable_on M N f s = 1) -> hl_measurable_on M N f (hl_UNIONS (hl_ty_cart R M) k) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8151 / MEASURABLE_ON_COUNTABLE_UNIONS   (hash md5:978654b2c12ff47236c3e3c000f1f189)
Theorem hlt_MEASURABLE_ON_COUNTABLE_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e 2 :^: (2 :^: hl_ty_cart R M), hl_COUNTABLE (2 :^: hl_ty_cart R M) k = 1 /\ (forall s :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) s k = 1 -> hl_measurable_on M N f s = 1) -> hl_measurable_on M N f (hl_UNIONS (hl_ty_cart R M) k) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8191 / ABSOLUTELY_INTEGRABLE_IMPROPER_SIMPLE   (hash md5:abfeab6b9b4da4ae2909dac8145d5fc5)
Theorem hlt_ABSOLUTELY_INTEGRABLE_IMPROPER_SIMPLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, (forall c d :e hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) = 1 -> hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6951 :e hl_ty_cart R 1 => if exists c d :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6951 (hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b))) (hl_integral M 1 (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (f x)))) = 1 then 1 else 0)) = 1 -> hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8283 / ABSOLUTELY_INTEGRABLE_IMPROPER   (hash md5:28229e54de5eb6309cdfb448001ba76b)
Theorem hlt_ABSOLUTELY_INTEGRABLE_IMPROPER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, (forall c d :e hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) = 1 -> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) /\ (hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6954 :e hl_ty_cart R N => if exists c d :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6954 (hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) = 1 then 1 else 0)) = 1 /\ (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R M, hl_absolutely_integrable_on M 1 g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vindex R N (f x) i) (hl_drop (g x)) = 1) \/ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_ge (hl_vindex R N (f x) i) (hl_drop (g x)) = 1))) -> hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8449 / NEGLIGIBLE_LOCALLY_LIPSCHITZ_IMAGE   (hash md5:9e8baebcb595caba603c753fa4ca5bb5)
Theorem hlt_NEGLIGIBLE_LOCALLY_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists t :e 2 :^: hl_ty_cart R M, exists b :e R, hl_open M t = 1 /\ (hl_IN (hl_ty_cart R M) x t = 1 /\ forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y (hl_INTER (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f y) (f x))) (hl_real_mul b (hl_vector_norm M (hl_vector_sub M y x))) = 1))) -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8741 / NEGLIGIBLE_LOCALLY_LIPSCHITZ_IMAGE_LOWDIM   (hash md5:33964fdd6b5e37adcb5a2fc415a4cc66)
Theorem hlt_NEGLIGIBLE_LOCALLY_LIPSCHITZ_IMAGE_LOWDIM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lt (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists t :e 2 :^: hl_ty_cart R M, exists b :e R, hl_open M t = 1 /\ (hl_IN (hl_ty_cart R M) x t = 1 /\ forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y (hl_INTER (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f y) (f x))) (hl_real_mul b (hl_vector_norm M (hl_vector_sub M y x))) = 1)) -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8774 / NEGLIGIBLE_LIPSCHITZ_IMAGE_UNIV   (hash md5:d63b48100ac8d309dfe53eead6d37741)
Theorem hlt_NEGLIGIBLE_LIPSCHITZ_IMAGE_UNIV : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall B :e R, hl_negligible N s = 1 /\ (forall x y :e hl_ty_cart R N, hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm N (hl_vector_sub N x y))) = 1) -> hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8785 / NEGLIGIBLE_DIFFERENTIABLE_IMAGE_NEGLIGIBLE   (hash md5:1055c8ae66b98a43a368fdf362307e11)
Theorem hlt_NEGLIGIBLE_DIFFERENTIABLE_IMAGE_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_negligible M s = 1 /\ hl_differentiable_on M N f s = 1) -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8810 / NEGLIGIBLE_DIFFERENTIABLE_IMAGE_LOWDIM   (hash md5:7eef91fdab9d70535e2edc572a42e0ce)
Theorem hlt_NEGLIGIBLE_DIFFERENTIABLE_IMAGE_LOWDIM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lt (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_differentiable_on M N f s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:8850 / BABY_SARD   (hash md5:d18e6c0458e7f775a5f1eae6b69f9065)
Theorem hlt_BABY_SARD : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ hl_lt (hl_rank M N (hl_matrix M N (f' x))) (hl_dimindex N (hl_UNIV N)) = 1) -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9168 / BABY_SARD_ALT   (hash md5:1acf07298c7645a5a0e36aac477432e2)
Theorem hlt_BABY_SARD_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists f' :e hl_ty_cart R N :^: hl_ty_cart R M, hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ hl_lt (hl_rank M N (hl_matrix M N f')) (hl_dimindex N (hl_UNIV N)) = 1) -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9178 / NEGLIGIBLE_INFINITE_PREIMAGES_MOSTLY_DIFFERENTIABLE_GEN   (hash md5:d8681d0fdad9aae594f87f899a8ea9da)
Theorem hlt_NEGLIGIBLE_INFINITE_PREIMAGES_MOSTLY_DIFFERENTIABLE_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall y :e hl_ty_cart R N, hl_compact N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6965 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6965 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1) /\ hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6966 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6966 (if hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_differentiable N N f (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1 -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6968 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6968 (hl_INFINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6967 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6967 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9219 / NEGLIGIBLE_INFINITE_PREIMAGES_MOSTLY_DIFFERENTIABLE   (hash md5:ed8a80ce217aeb63c444ec9583f1376f)
Theorem hlt_NEGLIGIBLE_INFINITE_PREIMAGES_MOSTLY_DIFFERENTIABLE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_continuous_on N N f s = 1 /\ (hl_compact N s = 1 /\ hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6969 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6969 (if hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_differentiable N N f (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1) -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6971 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6971 (hl_INFINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6970 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6970 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9233 / NEGLIGIBLE_INFINITE_PREIMAGES_DIFFERENTIABLE   (hash md5:145618722a537ac4f35d3a0db4dc1e47)
Theorem hlt_NEGLIGIBLE_INFINITE_PREIMAGES_DIFFERENTIABLE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_differentiable_on N N f s = 1 -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6973 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6973 (hl_INFINITE (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6972 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6972 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9248 / NEGLIGIBLE_IMAGE_BOUNDED_VARIATION_INTERVAL   (hash md5:816edf667aac33d014702fb05a2cfe93)
Theorem hlt_NEGLIGIBLE_IMAGE_BOUNDED_VARIATION_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_has_bounded_variation_on N f s = 1 /\ hl_is_interval 1 s = 1) -> hl_negligible N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9298 / NEGLIGIBLE_ABSOLUTELY_CONTINUOUS_IMAGE_LOWDIM   (hash md5:9d1600e6c54e843a219f5393cfa825d4)
Theorem hlt_NEGLIGIBLE_ABSOLUTELY_CONTINUOUS_IMAGE_LOWDIM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_absolutely_continuous_on N f s = 1 /\ hl_is_interval 1 s = 1) -> hl_negligible N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9338 / NEGLIGIBLE_RECTIFIABLE_PATH_IMAGE   (hash md5:55835b1a6e91010354f1f953f97069d5)
Theorem hlt_NEGLIGIBLE_RECTIFIABLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_rectifiable_path N g = 1 -> hl_negligible N (hl_path_image N g) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9345 / INTERIOR_RECTIFIABLE_PATH_IMAGE   (hash md5:1584d8cb75c7dba7429a53c5ce12f671)
Theorem hlt_INTERIOR_RECTIFIABLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_rectifiable_path N g = 1 -> hl_interior N (hl_path_image N g) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/measure.ml:9355 / MEASURABLE_ON_INDICATOR   (hash md5:ae2bc87abb8806c874da6f873dbfa98b)
Theorem hlt_MEASURABLE_ON_INDICATOR : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_measurable_on A 1 (hl_indicator A t) s = 1 <-> hl_lebesgue_measurable A (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9362 / MEASURABLE_ON_INDICATOR_SUBSET   (hash md5:f1202d3e521a0123ae2731ed77e6264d)
Theorem hlt_MEASURABLE_ON_INDICATOR_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 -> (hl_measurable_on N 1 (hl_indicator N t) s = 1 <-> hl_lebesgue_measurable N t = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:9368 / MEASURABLE_IMP_LEBESGUE_MEASURABLE   (hash md5:b0071b5e0354b930145919bef863db2a)
Theorem hlt_MEASURABLE_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9374 / NEGLIGIBLE_IMP_LEBESGUE_MEASURABLE   (hash md5:ace35137621fc77e957177bb5600584e)
Theorem hlt_NEGLIGIBLE_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9378 / LEBESGUE_MEASURABLE_EMPTY   (hash md5:c5e6af1121e83ea38a828b17b83adc7c)
Theorem hlt_LEBESGUE_MEASURABLE_EMPTY : forall A:set, A <> Empty -> hl_lebesgue_measurable A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9382 / LEBESGUE_MEASURABLE_UNIV   (hash md5:50fd5eb84fafb897bdd019f9718e1c63)
Theorem hlt_LEBESGUE_MEASURABLE_UNIV : forall N:set, N <> Empty -> hl_lebesgue_measurable N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9386 / LEBESGUE_MEASURABLE_COMPACT   (hash md5:8d757328c521fa5a5c9c8cc16564bcd9)
Theorem hlt_LEBESGUE_MEASURABLE_COMPACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9390 / LEBESGUE_MEASURABLE_BALL   (hash md5:45950543b5e847bd2b5f4c8a446f0ad3)
Theorem hlt_LEBESGUE_MEASURABLE_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_lebesgue_measurable N (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9395 / LEBESGUE_MEASURABLE_CBALL   (hash md5:e7195f897fbf46269e8cc5e5edfebb2f)
Theorem hlt_LEBESGUE_MEASURABLE_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_lebesgue_measurable N (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9399 / LEBESGUE_MEASURABLE_INTERVAL   (hash md5:63ccf261e6268b1effd63e0b773d7fa4)
Theorem hlt_LEBESGUE_MEASURABLE_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_lebesgue_measurable N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_lebesgue_measurable N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9404 / LEBESGUE_MEASURABLE_INTER   (hash md5:c080cc57f09384807a08dc42af41ecae)
Theorem hlt_LEBESGUE_MEASURABLE_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ hl_lebesgue_measurable N t = 1 -> hl_lebesgue_measurable N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9411 / LEBESGUE_MEASURABLE_UNION   (hash md5:f77afb9321332a10cd3e202fb1a42139)
Theorem hlt_LEBESGUE_MEASURABLE_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ hl_lebesgue_measurable N t = 1 -> hl_lebesgue_measurable N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9418 / LEBESGUE_MEASURABLE_DIFF   (hash md5:7867df35bd093eac215c3071ad08b9aa)
Theorem hlt_LEBESGUE_MEASURABLE_DIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ hl_lebesgue_measurable N t = 1 -> hl_lebesgue_measurable N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9425 / LEBESGUE_MEASURABLE_COMPL   (hash md5:752d5b302f740ee9f28280909f2bb33c)
Theorem hlt_LEBESGUE_MEASURABLE_COMPL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) = 1 <-> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9430 / LEBESGUE_MEASURABLE_ON_SUBINTERVALS   (hash md5:568810814a218db4a9ce6e7694cadb15)
Theorem hlt_LEBESGUE_MEASURABLE_ON_SUBINTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 <-> forall a b :e hl_ty_cart R N, hl_lebesgue_measurable N (hl_INTER (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9449 / LEBESGUE_MEASURABLE_CLOSED   (hash md5:cde111b03ff12ee2ef5607ddc85bd152)
Theorem hlt_LEBESGUE_MEASURABLE_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9456 / LEBESGUE_MEASURABLE_OPEN   (hash md5:c25983935f43a0c8a780e6096d365eab)
Theorem hlt_LEBESGUE_MEASURABLE_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9462 / LEBESGUE_MEASURABLE_OPEN_IN   (hash md5:64bce0950b0ae5470e0a4a6b9b801067)
Theorem hlt_LEBESGUE_MEASURABLE_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ hl_lebesgue_measurable N s = 1 -> hl_lebesgue_measurable N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9469 / LEBESGUE_MEASURABLE_CLOSED_IN   (hash md5:6ad8906b2a3dc566417afd6cfd675361)
Theorem hlt_LEBESGUE_MEASURABLE_CLOSED_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ hl_lebesgue_measurable N s = 1 -> hl_lebesgue_measurable N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9476 / LEBESGUE_MEASURABLE_UNIONS   (hash md5:43b41f96b0e2d6e05558e622938422a9)
Theorem hlt_LEBESGUE_MEASURABLE_UNIONS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R A), hl_FINITE (2 :^: hl_ty_cart R A) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s f = 1 -> hl_lebesgue_measurable A s = 1) -> hl_lebesgue_measurable A (hl_UNIONS (hl_ty_cart R A) f) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9482 / LEBESGUE_MEASURABLE_COUNTABLE_UNIONS   (hash md5:2677680ef1f2276ba5427d4621cf6edc)
Theorem hlt_LEBESGUE_MEASURABLE_COUNTABLE_UNIONS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_lebesgue_measurable N s = 1) -> hl_lebesgue_measurable N (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9489 / LEBESGUE_MEASURABLE_COUNTABLE_UNIONS_EXPLICIT   (hash md5:562572ed8045b84d68ed2044c5de058a)
Theorem hlt_LEBESGUE_MEASURABLE_COUNTABLE_UNIONS_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_lebesgue_measurable N (s n) = 1) -> hl_lebesgue_measurable N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6978 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6978 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9497 / LEBESGUE_MEASURABLE_COUNTABLE_INTERS   (hash md5:e9e3d50f37258a967c2c420b14e9f169)
Theorem hlt_LEBESGUE_MEASURABLE_COUNTABLE_INTERS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_COUNTABLE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_lebesgue_measurable N s = 1) -> hl_lebesgue_measurable N (hl_INTERS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9507 / LEBESGUE_MEASURABLE_COUNTABLE_INTERS_EXPLICIT   (hash md5:9a7a754ca01576de540b6b9b5273c0a0)
Theorem hlt_LEBESGUE_MEASURABLE_COUNTABLE_INTERS_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_lebesgue_measurable N (s n) = 1) -> hl_lebesgue_measurable N (hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6979 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6979 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9515 / LEBESGUE_MEASURABLE_INTERS   (hash md5:d1aba00bd0661ae428419a2ef8b58073)
Theorem hlt_LEBESGUE_MEASURABLE_INTERS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_lebesgue_measurable N s = 1) -> hl_lebesgue_measurable N (hl_INTERS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9521 / GDELTA_IMP_LEBESGUE_MEASURABLE   (hash md5:7a14f6874ff7728cb5b1f2cb6155afed)
Theorem hlt_GDELTA_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_gdelta N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9528 / FSIGMA_IMP_LEBESGUE_MEASURABLE   (hash md5:4dfb7012d2321f271e770e53af86f158)
Theorem hlt_FSIGMA_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_fsigma N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9535 / BOREL_IMP_LEBESGUE_MEASURABLE   (hash md5:6f11950b701da78cbfb8d5e58f999e98)
Theorem hlt_BOREL_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_borel N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9541 / LEBESGUE_MEASURABLE_IFF_MEASURABLE   (hash md5:319ec59969a67bf8521a2bc1905b40eb)
Theorem hlt_LEBESGUE_MEASURABLE_IFF_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> (hl_lebesgue_measurable N s = 1 <-> hl_measurable N s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:9561 / LEBESGUE_MEASURABLE_MEASURABLE_ON_SUBINTERVALS   (hash md5:13ea13d3e870557fa9be93a2ebec26e7)
Theorem hlt_LEBESGUE_MEASURABLE_MEASURABLE_ON_SUBINTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 <-> forall a b :e hl_ty_cart R N, hl_measurable N (hl_INTER (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9569 / LEBESGUE_MEASURABLE_MEASURABLE_ON_COUNTABLE_SUBINTERVALS   (hash md5:ee6321ae33bb287355633a56160fd965)
Theorem hlt_LEBESGUE_MEASURABLE_MEASURABLE_ON_COUNTABLE_SUBINTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 <-> forall n :e omega, hl_measurable N (hl_INTER (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N (hl_vec N n)) (hl_vec N n)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9593 / MEASURABLE_ON_MEASURABLE_SUBSET   (hash md5:f99ac0a65dfa2895238ec0c42fab5b9a)
Theorem hlt_MEASURABLE_ON_MEASURABLE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s t :e 2 :^: hl_ty_cart R B, hl_SUBSET (hl_ty_cart R B) s t = 1 /\ (hl_measurable_on B A f t = 1 /\ hl_measurable B s = 1) -> hl_measurable_on B A f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9599 / LEBESGUE_MEASURABLE_JORDAN   (hash md5:04f3ffb58d9df1416a4bf28cc6503003)
Theorem hlt_LEBESGUE_MEASURABLE_JORDAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N (hl_frontier N s) = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9612 / LEBESGUE_MEASURABLE_CONVEX   (hash md5:1884ff098a4675356afe3d104dbd798e)
Theorem hlt_LEBESGUE_MEASURABLE_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9616 / LEBESGUE_MEASURABLE_NEGLIGIBLE_SYMDIFF   (hash md5:1695a2d4a480793a30c4bf382d8aba15)
Theorem hlt_LEBESGUE_MEASURABLE_NEGLIGIBLE_SYMDIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ hl_negligible N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s)) = 1 -> hl_lebesgue_measurable N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9629 / LEBESGUE_MEASURABLE_NEGLIGIBLE_SYMDIFF_EQ   (hash md5:ee4b9eb4e8fc09a80f1f14e484c78b38)
Theorem hlt_LEBESGUE_MEASURABLE_NEGLIGIBLE_SYMDIFF_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_negligible N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) s t) (hl_DIFF (hl_ty_cart R N) t s)) = 1 -> (hl_lebesgue_measurable N s = 1 <-> hl_lebesgue_measurable N t = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:9635 / LEBESGUE_MEASURABLE_INSERT   (hash md5:095d9aa88d47179e0df2cf33162328ab)
Theorem hlt_LEBESGUE_MEASURABLE_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_lebesgue_measurable N (hl_INSERT (hl_ty_cart R N) a s) = 1 <-> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9643 / LEBESGUE_MEASURABLE_DELETE   (hash md5:dbfeb3f32ca583ac4db49c849375381e)
Theorem hlt_LEBESGUE_MEASURABLE_DELETE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_lebesgue_measurable N (hl_DELETE (hl_ty_cart R N) s a) = 1 <-> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9651 / LEBESGUE_MEASURABLE_SING   (hash md5:5806921bfe16df03f0bef65e56feaf09)
Theorem hlt_LEBESGUE_MEASURABLE_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_lebesgue_measurable N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9656 / ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_INTER   (hash md5:352b83323d58c32d507722fa2247df2c)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_lebesgue_measurable M t = 1 -> hl_absolutely_integrable_on M N f (hl_INTER (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9679 / ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET   (hash md5:246e24f69efa11fc601d481b59c40ec5)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_lebesgue_measurable M t = 1) -> hl_absolutely_integrable_on M N f t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9690 / MEASURABLE_ON_TRANSLATION   (hash md5:4456d99744020149a85b8f276ca21315)
Theorem hlt_MEASURABLE_ON_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_measurable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) s) = 1 -> hl_measurable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_add M a x)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9708 / MEASURABLE_ON_TRANSLATION_EQ   (hash md5:4f757e38ac7efaa3c14da61c0a9cc8a8)
Theorem hlt_MEASURABLE_ON_TRANSLATION_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_measurable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_add M a x)) s = 1 <-> hl_measurable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9719 / NEGLIGIBLE_LINEAR_IMAGE_GEN   (hash md5:d98398296e39f28cc394a2aaf76ed251)
Theorem hlt_NEGLIGIBLE_LINEAR_IMAGE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_negligible M s = 1 /\ hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1) -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9727 / MEASURABLE_ON_LINEAR_IMAGE_EQ_GEN   (hash md5:75cd8e43ff1963086aac47ceaabf0859)
Theorem hlt_MEASURABLE_ON_LINEAR_IMAGE_EQ_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ (hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y)) -> (hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h f) s = 1 <-> hl_measurable_on N P h (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:9771 / MEASURABLE_ON_LINEAR_IMAGE_EQ   (hash md5:e91954e51d231d3c8804ee5009d855d2)
Theorem hlt_MEASURABLE_ON_LINEAR_IMAGE_EQ : forall N P:set, N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall h :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> (hl_measurable_on N P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R N) h f) s = 1 <-> hl_measurable_on N P h (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:9778 / LEBESGUE_MEASURABLE_TRANSLATION   (hash md5:2ecba9d2ac890cf0fd1b6d501dbeb821)
Theorem hlt_LEBESGUE_MEASURABLE_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:9789 / LEBESGUE_MEASURABLE_LINEAR_IMAGE_EQ   (hash md5:7dd84c180f588f466fe788f7f691e3da)
Theorem hlt_LEBESGUE_MEASURABLE_LINEAR_IMAGE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N N f = 1 /\ (forall x y :e hl_ty_cart R N, f x = f y -> x = y) -> (hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1 <-> hl_lebesgue_measurable N s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:9812 / MEASURABLE_ON_REFLECT   (hash md5:f0b46cf3af59b3af158f33f7da9691fb)
Theorem hlt_MEASURABLE_ON_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) s = 1 <-> hl_measurable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10046 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GE   (hash md5:5b2abee524732aa965470673da5618cc)
Theorem hlt_MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6996 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6996 (hl_real_ge (hl_vindex R N (f x) k) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10056 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GT   (hash md5:aa9a633d5d9e3d141745c273a1995799)
Theorem hlt_MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6997 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6997 (hl_real_gt (hl_vindex R N (f x) k) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10067 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LE   (hash md5:e029ba37a023c6dd4d664f9b7956f8b2)
Theorem hlt_MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7000 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7000 (hl_real_le (hl_vindex R N (f x) k) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10127 / MEASURABLE_ON_PREIMAGE_CLOSED   (hash md5:9c6d3e302aed8f910c59368dbfcb711c)
Theorem hlt_MEASURABLE_ON_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7019 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7019 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10138 / MEASURABLE_ON_PREIMAGE_CLOSED_INTERVAL   (hash md5:9607410f686e5c4176290195b2635253)
Theorem hlt_MEASURABLE_ON_PREIMAGE_CLOSED_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a b :e hl_ty_cart R N, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7024 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7024 (hl_IN (hl_ty_cart R N) (f x) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10158 / MEASURABLE_ON_PREIMAGE_BOREL   (hash md5:321661fc4c0b9ef3e0390834b5721514)
Theorem hlt_MEASURABLE_ON_PREIMAGE_BOREL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_borel N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7031 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7031 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10174 / LEBESGUE_MEASURABLE_PREIMAGE_OPEN   (hash md5:cb55eb46636aa68cdda1b7b30f9e8c7f)
Theorem hlt_LEBESGUE_MEASURABLE_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_open N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7032 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7032 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10180 / LEBESGUE_MEASURABLE_PREIMAGE_CLOSED   (hash md5:a085012d8e415a4035f8add89734fce7)
Theorem hlt_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_closed N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7033 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7033 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10186 / LEBESGUE_MEASURABLE_PREIMAGE_BOREL   (hash md5:695214a03e2c7c4db5efc449f9ed720d)
Theorem hlt_LEBESGUE_MEASURABLE_PREIMAGE_BOREL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_borel N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7034 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7034 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10192 / MEASURABLE_ON_PREIMAGE_ORTHANT_LE   (hash md5:e00d6537105733a63cbf8acdcb221581)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ORTHANT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e hl_ty_cart R N, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7043 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7043 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N a k) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10228 / MEASURABLE_ON_PREIMAGE_ORTHANT_GE   (hash md5:a452e53b8b3cd6d303390fe3c7d90004)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ORTHANT_GE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e hl_ty_cart R N, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7044 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7044 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_ge (hl_vindex R N (f x) k) (hl_vindex R N a k) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10239 / MEASURABLE_ON_PREIMAGE_ORTHANT_LT   (hash md5:400e9b6c6991c759dd260edce383b253)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ORTHANT_LT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e hl_ty_cart R N, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7053 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7053 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N (f x) k) (hl_vindex R N a k) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10277 / MEASURABLE_ON_PREIMAGE_ORTHANT_GT   (hash md5:da9457e293b5ce6eab656dcb4ef50b94)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ORTHANT_GT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e hl_ty_cart R N, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7054 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7054 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_gt (hl_vindex R N (f x) k) (hl_vindex R N a k) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10288 / MEASURABLE_ON_SIMPLE_FUNCTION_LIMIT_INCREASING   (hash md5:f64c9d3a0eafcb0cb5920dae0e58ed18)
Theorem hlt_MEASURABLE_ON_SIMPLE_FUNCTION_LIMIT_INCREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, hl_measurable_on N 1 f (hl_UNIV (hl_ty_cart R N)) = 1 /\ (forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1) <-> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, (forall n :e omega, forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (g n x)) = 1 /\ hl_real_le (hl_drop (g n x)) (hl_drop (f x)) = 1) /\ ((forall n :e omega, forall x :e hl_ty_cart R N, hl_real_le (hl_drop (g n x)) (hl_drop (g (hl_SUC n) x)) = 1) /\ ((forall n :e omega, hl_measurable_on N 1 (g n) (hl_UNIV (hl_ty_cart R N)) = 1) /\ ((forall n :e omega, hl_FINITE (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) (g n) (hl_UNIV (hl_ty_cart R N))) = 1) /\ forall x :e hl_ty_cart R N, hl_tendsto omega 1 (fun n :e omega => g n x) (f x) hl_sequentially = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:10637 / ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT_EQ_ALT   (hash md5:f4ed45accf0c76505c4bce838a753dbc)
Theorem hlt_ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT_EQ_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_absolutely_integrable_on M N f s = 1 <-> forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, hl_measurable_on M 1 g s = 1 /\ hl_bounded 1 (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R 1) g s) = 1 -> hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_drop (g x)) (f x)) s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10653 / ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET_EQ_ALT   (hash md5:c1f4682109a64f388fa8e51bbc4af350)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET_EQ_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_absolutely_integrable_on M N f s = 1 <-> forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_lebesgue_measurable M t = 1 -> hl_integrable_on M N f t = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10666 / MEASURABLE_LEBESGUE_MEASURABLE_SUBSET   (hash md5:5b2f87666538a836b8c19058ecc3afaf)
Theorem hlt_MEASURABLE_LEBESGUE_MEASURABLE_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ (hl_measurable N t = 1 /\ hl_SUBSET (hl_ty_cart R N) s t = 1) -> hl_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10679 / MEASURABLE_LEBESGUE_MEASURABLE_INTER_MEASURABLE   (hash md5:ddf036edc6a6f9e0227ff97749c18e86)
Theorem hlt_MEASURABLE_LEBESGUE_MEASURABLE_INTER_MEASURABLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ hl_measurable N t = 1 -> hl_measurable N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10687 / MEASURABLE_MEASURABLE_INTER_LEBESGUE_MEASURABLE   (hash md5:d26e379f9534dfa2ac4364708f521772)
Theorem hlt_MEASURABLE_MEASURABLE_INTER_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 /\ hl_lebesgue_measurable N t = 1 -> hl_measurable N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10692 / LEBESGUE_MEASURABLE_MEASURABLE_INTER_EQ   (hash md5:2f645e3375905b54d8c19fdb3599a910)
Theorem hlt_LEBESGUE_MEASURABLE_MEASURABLE_INTER_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_measurable N t = 1 -> hl_measurable N (hl_INTER (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10700 / MEASURABLE_INTER_HALFSPACE_LE   (hash md5:315603aeb535dcba44466a96298329ff)
Theorem hlt_MEASURABLE_INTER_HALFSPACE_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e R, forall i :e omega, hl_measurable N s = 1 -> hl_measurable N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7074 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7074 (hl_real_le (hl_vindex R N x i) a) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10709 / MEASURABLE_INTER_HALFSPACE_GE   (hash md5:55f0c83c16812d92a1b6df70e68044ac)
Theorem hlt_MEASURABLE_INTER_HALFSPACE_GE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e R, forall i :e omega, hl_measurable N s = 1 -> hl_measurable N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7075 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7075 (hl_real_ge (hl_vindex R N x i) a) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10718 / MEASURABLE_MEASURABLE_DIFF_LEBESGUE_MEASURABLE   (hash md5:1fa0ca9863f3480ceef8925125baaea1)
Theorem hlt_MEASURABLE_MEASURABLE_DIFF_LEBESGUE_MEASURABLE : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_measurable A s = 1 /\ hl_lebesgue_measurable A t = 1 -> hl_measurable A (hl_DIFF (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10725 / MEASURABLE_OPEN_IN   (hash md5:ba249369316ce7ed6763409b9aaa1ed3)
Theorem hlt_MEASURABLE_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ hl_measurable N s = 1 -> hl_measurable N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10732 / MEASURABLE_CLOSED_IN   (hash md5:200df81327f8b069107fdd00184976f7)
Theorem hlt_MEASURABLE_CLOSED_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ hl_measurable N s = 1 -> hl_measurable N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10739 / MEASURABLE_ON_REAL_SGN   (hash md5:57c2792c3039881f3994a920230e2263)
Theorem hlt_MEASURABLE_ON_REAL_SGN : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (f x)) s = 1 -> hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_sgn (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10764 / LEBESGUE_MEASURABLE_INNER_COMPACT   (hash md5:7ef6d8d5dc483ad8fd212ed0f8119c85)
Theorem hlt_LEBESGUE_MEASURABLE_INNER_COMPACT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ ~ hl_negligible N s = 1 -> exists k :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) k s = 1 /\ (hl_compact N k = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure N k) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10779 / CHOOSE_LARGE_MEASURABLE_SUBSET   (hash md5:a9ce5304856c8a0178ed66a343364c13)
Theorem hlt_CHOOSE_LARGE_MEASURABLE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall B :e R, hl_lebesgue_measurable N s = 1 /\ ~ hl_measurable N s = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_measurable N t = 1 /\ hl_real_le B (hl_measure N t) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10814 / CHOOSE_LARGE_COMPACT_SUBSET   (hash md5:f8a9923b74e81834aa80df24517c4e99)
Theorem hlt_CHOOSE_LARGE_COMPACT_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall B :e R, hl_lebesgue_measurable N s = 1 /\ ~ hl_measurable N s = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_compact N t = 1 /\ hl_real_le B (hl_measure N t) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10828 / CHOOSE_LARGE_COMPACT_SUBSET_ALT   (hash md5:5bd21d71228be4a16d06dfc51da0bb83)
Theorem hlt_CHOOSE_LARGE_COMPACT_SUBSET_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall B :e R, hl_lebesgue_measurable N s = 1 /\ hl_real_lt B (hl_measure N s) = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_compact N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_real_lt B (hl_measure N t) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10840 / OUTER_LEBESGUE_MEASURE   (hash md5:1f4a70b000274599373d20c8e1b43366)
Theorem hlt_OUTER_LEBESGUE_MEASURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_lebesgue_measurable N t = 1 /\ forall t' :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t' = 1 /\ hl_lebesgue_measurable N t' = 1 -> hl_negligible N (hl_DIFF (hl_ty_cart R N) t t') = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10867 / OUTER_MEASURE_GEN   (hash md5:f95249945803aa62ab98fd258f9c0b1c)
Theorem hlt_OUTER_MEASURE_GEN : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s u = 1 /\ hl_measurable N u = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_measurable N t = 1 /\ forall t' :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t' = 1 /\ hl_lebesgue_measurable N t' = 1 -> hl_negligible N (hl_DIFF (hl_ty_cart R N) t t') = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10886 / OUTER_MEASURE_EQ   (hash md5:86a1a10ef0ca9d5a70dd665eb916cff8)
Theorem hlt_OUTER_MEASURE_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ hl_measurable N t = 1) <-> exists t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_measurable N t = 1 /\ forall t' :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t' = 1 /\ hl_lebesgue_measurable N t' = 1 -> hl_negligible N (hl_DIFF (hl_ty_cart R N) t t') = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:10899 / CONTINUOUS_ON_MEASURE_IN_PORTION   (hash md5:0801b299df4f7e107f5319a37f246c7c)
Theorem hlt_CONTINUOUS_ON_MEASURE_IN_PORTION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, forall t :e 2 :^: hl_ty_cart R M, hl_measurable N s = 1 /\ ((forall a :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) a t = 1 -> hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7085 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7085 (hl_real_le (f a x) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)) = 1) /\ ((forall a :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) a t = 1 -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7086 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7086 (if f a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_continuous_on M 1 (fun a :e hl_ty_cart R M => hl_lift (f a x)) t = 1))) -> hl_continuous_on M 1 (fun a :e hl_ty_cart R M => hl_lift (hl_measure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7087 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7087 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_le (f a x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)))) t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10940 / CONTINUOUS_ON_MEASURE_IN_HALFSPACE   (hash md5:6881ce9cff7c4f2f8d9bd4027f0ab6eb)
Theorem hlt_CONTINUOUS_ON_MEASURE_IN_HALFSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall b :e R, hl_measurable N s = 1 -> hl_continuous_on N 1 (fun a :e hl_ty_cart R N => hl_lift (hl_measure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7088 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7088 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_le (hl_dot N a x) b = 1 then 1 else 0) x = 1 then 1 else 0)))) (hl_DELETE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_vec N (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:10957 / NEGLIGIBLE_DISJOINT_TRANSLATES   (hash md5:fd0b71c8665047c70d4b5f5109a2dc6f)
Theorem hlt_NEGLIGIBLE_DISJOINT_TRANSLATES : forall N:set, N <> Empty -> forall s k :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ (hl_limit_point_of N z k = 1 /\ hl_pairwise (hl_ty_cart R N) (fun a :e hl_ty_cart R N => fun b :e hl_ty_cart R N => hl_DISJOINT (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N b x) s)) k = 1) -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11029 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LE_DENSE   (hash md5:f47e7147eadb65a1e4d3b5aaa73d3e4c)
Theorem hlt_MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LE_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall r :e 2 :^: R, hl_closure 1 (hl_IMAGE R (hl_ty_cart R 1) hl_lift r) = hl_UNIV (hl_ty_cart R 1) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN R a r = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7093 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7093 (hl_real_le (hl_vindex R N (f x) k) a) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11074 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GE_DENSE   (hash md5:4313c822479ff18814c0cc18b5a56767)
Theorem hlt_MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GE_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall r :e 2 :^: R, hl_closure 1 (hl_IMAGE R (hl_ty_cart R 1) hl_lift r) = hl_UNIV (hl_ty_cart R 1) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN R a r = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7094 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7094 (hl_real_ge (hl_vindex R N (f x) k) a) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11094 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LT_DENSE   (hash md5:9ab3dfb52544636bfe4b1b8f113689c3)
Theorem hlt_MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LT_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall r :e 2 :^: R, hl_closure 1 (hl_IMAGE R (hl_ty_cart R 1) hl_lift r) = hl_UNIV (hl_ty_cart R 1) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN R a r = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7097 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7097 (hl_real_lt (hl_vindex R N (f x) k) a) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11105 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GT_DENSE   (hash md5:9e9b1c7ee4c20da6270069419916e597)
Theorem hlt_MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GT_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall r :e 2 :^: R, hl_closure 1 (hl_IMAGE R (hl_ty_cart R 1) hl_lift r) = hl_UNIV (hl_ty_cart R 1) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_IN R a r = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7100 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7100 (hl_real_gt (hl_vindex R N (f x) k) a) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11116 / MEASURABLE_ON_PREIMAGE_CLOSED_INTERVAL_DENSE   (hash md5:de7e484d2878bd688eb3eeda568e3d7a)
Theorem hlt_MEASURABLE_ON_PREIMAGE_CLOSED_INTERVAL_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_closure N t = hl_UNIV (hl_ty_cart R N) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a t = 1 /\ hl_IN (hl_ty_cart R N) b t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7105 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7105 (hl_IN (hl_ty_cart R N) (f x) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11180 / MEASURABLE_ON_PREIMAGE_OPEN_INTERVAL_DENSE   (hash md5:481365933313ece5ef8eb98c7bcd122d)
Theorem hlt_MEASURABLE_ON_PREIMAGE_OPEN_INTERVAL_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_closure N t = hl_UNIV (hl_ty_cart R N) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a t = 1 /\ hl_IN (hl_ty_cart R N) b t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7111 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7111 (hl_IN (hl_ty_cart R N) (f x) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b))) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11250 / MEASURABLE_ON_PREIMAGE_ORTHANT_LE_DENSE   (hash md5:906311e2059d4859a45a7a6e48593fe4)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ORTHANT_LE_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_closure N t = hl_UNIV (hl_ty_cart R N) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7116 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7116 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N a k) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11309 / MEASURABLE_ON_PREIMAGE_ORTHANT_GE_DENSE   (hash md5:182159fd4d6bcd62e064b74e8f668d72)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ORTHANT_GE_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_closure N t = hl_UNIV (hl_ty_cart R N) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7117 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7117 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_ge (hl_vindex R N (f x) k) (hl_vindex R N a k) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11326 / MEASURABLE_ON_PREIMAGE_ORTHANT_LT_DENSE   (hash md5:b7e7911f778e18d3728b02852022c4d6)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ORTHANT_LT_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_closure N t = hl_UNIV (hl_ty_cart R N) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7123 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7123 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N (f x) k) (hl_vindex R N a k) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11396 / MEASURABLE_ON_PREIMAGE_ORTHANT_GT_DENSE   (hash md5:3b8858d40273a3d20a563ce06888acea)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ORTHANT_GT_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_closure N t = hl_UNIV (hl_ty_cart R N) -> (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7124 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7124 (if forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_gt (hl_vindex R N (f x) k) (hl_vindex R N a k) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11496 / LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_OPEN   (hash md5:821fd37ad1b5b3ddedcffca06b0cedef)
Theorem hlt_LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ hl_open N t = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7139 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7139 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11502 / LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED   (hash md5:59f003a10c6da33ced957ffb240037e7)
Theorem hlt_LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ hl_closed N t = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7140 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7140 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11508 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_OPEN_EQ   (hash md5:17c9958f7cadf15127ac8e69ca47bd8d)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_OPEN_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_lebesgue_measurable M s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_open N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7142 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7142 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11518 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED_EQ   (hash md5:dee018f4f9a2839adf98b132e290d936)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_lebesgue_measurable M s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7144 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7144 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11592 / MEASURABLE_MEASURABLE_PREIMAGE_OPEN   (hash md5:edc92e1119666b318f31ac58871073e5)
Theorem hlt_MEASURABLE_MEASURABLE_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f s = 1 /\ (hl_measurable M s = 1 /\ hl_open N t = 1) -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7153 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7153 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11598 / MEASURABLE_MEASURABLE_PREIMAGE_CLOSED   (hash md5:136ef4248d89701f12a5a0708070fff8)
Theorem hlt_MEASURABLE_MEASURABLE_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f s = 1 /\ (hl_measurable M s = 1 /\ hl_closed N t = 1) -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7154 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7154 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11604 / MEASURABLE_ON_MEASURABLE_PREIMAGE_OPEN_EQ   (hash md5:a9d96967adb8e307bc190ceaded304e5)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_OPEN_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable M s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_open N t = 1 -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7156 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7156 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11614 / MEASURABLE_ON_MEASURABLE_PREIMAGE_CLOSED_EQ   (hash md5:b6f8a8bad7456d4fd3b1ead24b256485)
Theorem hlt_MEASURABLE_ON_MEASURABLE_PREIMAGE_CLOSED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_measurable M s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 -> hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7158 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7158 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11624 / LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_BOREL   (hash md5:fce5954aae4ced0439619b96085909f6)
Theorem hlt_LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_BOREL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ hl_borel N t = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7159 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7159 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11630 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_BOREL_EQ   (hash md5:6dac4d679ec201cc4bcef84419988f6b)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_BOREL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_lebesgue_measurable M s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_borel N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7161 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7161 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11644 / SUSLIN_LEBESGUE_MEASURABLE   (hash md5:f9b48c4f4b05e1527992578b151d5e61)
Theorem hlt_SUSLIN_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> hl_suslin (hl_ty_cart R N) (hl_lebesgue_measurable N) = hl_lebesgue_measurable N.
Admitted.

// HOL Light: Multivariate/measure.ml:11779 / ANALYTIC_IMP_LEBESGUE_MEASURABLE   (hash md5:da9727e8020f2eb8aa918407fdcf7ae3)
Theorem hlt_ANALYTIC_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_analytic N s = 1 -> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11786 / LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC   (hash md5:593836b8f41a22633e0f528e51192f2b)
Theorem hlt_LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ hl_analytic N t = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7171 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7171 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11805 / LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC   (hash md5:468f47c2e070e4944932e8c458c70203)
Theorem hlt_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_analytic N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7174 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7174 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11814 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC_EQ   (hash md5:cada0a327f88f10a8a6afb255d2ccfb8)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ hl_lebesgue_measurable M s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_analytic N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7175 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7175 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11823 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC   (hash md5:dc0f69ae36cc49e8413f052c7f6a810b)
Theorem hlt_MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_analytic N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7176 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7176 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:11830 / MEASURABLE_ON_PREIMAGE_ANALYTIC   (hash md5:f83a8e2fde3abf5d5f3eba22658925aa)
Theorem hlt_MEASURABLE_ON_PREIMAGE_ANALYTIC : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_analytic N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7177 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7177 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11841 / MEASURABLE_ON_LIFT_INV   (hash md5:48e71e288e30df16e31e3b01c1386024)
Theorem hlt_MEASURABLE_ON_LIFT_INV : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (f x)) s = 1 /\ hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7180 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7180 (if hl_IN (hl_ty_cart R N) x s = 1 /\ f x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_inv (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11898 / MEASURABLE_ON_LIFT_DIV   (hash md5:389a10f629713d513bbc4dbfac3934bb)
Theorem hlt_MEASURABLE_ON_LIFT_DIV : forall N:set, N <> Empty -> forall f g :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (f x)) s = 1 /\ (hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (g x)) s = 1 /\ hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7181 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7181 (if hl_IN (hl_ty_cart R N) x s = 1 /\ g x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1) -> hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_div (f x) (g x))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11907 / ABSOLUTELY_INTEGRABLE_UNION   (hash md5:39e39c2e114aac556800876e70016142)
Theorem hlt_ABSOLUTELY_INTEGRABLE_UNION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M N f t = 1 -> hl_absolutely_integrable_on M N f (hl_UNION (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11945 / ABSOLUTELY_INTEGRABLE_DIFF   (hash md5:81edf8f59d61ef1c385f1875eb68cd71)
Theorem hlt_ABSOLUTELY_INTEGRABLE_DIFF : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M N f t = 1 -> hl_absolutely_integrable_on M N f (hl_DIFF (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11961 / ABSOLUTELY_INTEGRABLE_INTER   (hash md5:d236d291fc22d79f9a21281c5b106880)
Theorem hlt_ABSOLUTELY_INTEGRABLE_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M N f t = 1 -> hl_absolutely_integrable_on M N f (hl_INTER (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:11978 / INTEGRAL_COUNTABLE_UNIONS_ALT   (hash md5:299f8eb41a0025f50aea6302b641afbe)
Theorem hlt_INTEGRAL_COUNTABLE_UNIONS_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M :^: omega, hl_absolutely_integrable_on M N f (hl_UNIONS (hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_7185 :e 2 :^: hl_ty_cart R M => if exists m :e omega, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_7185 (hl_IN omega m (hl_UNIV omega)) (s m) = 1 then 1 else 0))) = 1 /\ (forall m :e omega, hl_lebesgue_measurable M (s m) = 1) -> (forall n :e omega, hl_absolutely_integrable_on M N f (hl_UNIONS (hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_7186 :e 2 :^: hl_ty_cart R M => if exists m :e omega, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_7186 (hl_IN omega m (hl_numseg (hl_NUMERAL hl_zero) n)) (s m) = 1 then 1 else 0))) = 1) /\ hl_tendsto omega N (fun n :e omega => hl_integral M N (hl_UNIONS (hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_7187 :e 2 :^: hl_ty_cart R M => if exists m :e omega, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_7187 (hl_IN omega m (hl_numseg (hl_NUMERAL hl_zero) n)) (s m) = 1 then 1 else 0))) f) (hl_integral M N (hl_UNIONS (hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_7188 :e 2 :^: hl_ty_cart R M => if exists m :e omega, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_7188 (hl_IN omega m (hl_UNIV omega)) (s m) = 1 then 1 else 0))) f) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12025 / LEBESGUE_MEASURABLE_OUTER_OPEN   (hash md5:ca7164dcc7f7bf3774a1a8797d3febd8)
Theorem hlt_LEBESGUE_MEASURABLE_OUTER_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_lebesgue_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_open N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_measurable N (hl_DIFF (hl_ty_cart R N) t s) = 1 /\ hl_real_lt (hl_measure N (hl_DIFF (hl_ty_cart R N) t s)) e1 = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:12076 / LEBESGUE_MEASURABLE_INNER_CLOSED   (hash md5:22ee912ed28e9cd6f0e0124037899590)
Theorem hlt_LEBESGUE_MEASURABLE_INNER_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_lebesgue_measurable N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists t :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_measurable N (hl_DIFF (hl_ty_cart R N) s t) = 1 /\ hl_real_lt (hl_measure N (hl_DIFF (hl_ty_cart R N) s t)) e1 = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:12094 / STEINHAUS_LEBESGUE   (hash md5:647aeb6cd906b122948b479327598a91)
Theorem hlt_STEINHAUS_LEBESGUE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ ~ hl_negligible N s = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) d)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7191 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7191 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 then 1 else 0) (hl_vector_sub N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12107 / LEBESGUE_MEASURABLE_REGULAR_OUTER   (hash md5:98738c2fb90c4617369e0f5e3ec354ac)
Theorem hlt_LEBESGUE_MEASURABLE_REGULAR_OUTER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> exists k :e 2 :^: hl_ty_cart R N, exists c :e 2 :^: hl_ty_cart R N :^: omega, hl_negligible N k = 1 /\ ((forall n :e omega, hl_open N (c n) = 1) /\ s = hl_DIFF (hl_ty_cart R N) (hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_7193 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_7193 (hl_IN omega n (hl_UNIV omega)) (c n) = 1 then 1 else 0))) k).
Admitted.

// HOL Light: Multivariate/measure.ml:12131 / LEBESGUE_MEASURABLE_REGULAR_INNER   (hash md5:d4e08df78fcb87fff91c407a34197998)
Theorem hlt_LEBESGUE_MEASURABLE_REGULAR_INNER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> exists k :e 2 :^: hl_ty_cart R N, exists c :e 2 :^: hl_ty_cart R N :^: omega, hl_negligible N k = 1 /\ ((forall n :e omega, hl_compact N (c n) = 1) /\ s = hl_UNION (hl_ty_cart R N) (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_7198 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_7198 (hl_IN omega n (hl_UNIV omega)) (c n) = 1 then 1 else 0))) k).
Admitted.

// HOL Light: Multivariate/measure.ml:12174 / LEBESGUE_MEASURABLE_SMALL_IMP_NEGLIGIBLE   (hash md5:9fd5bab133208ba6b2fe166520bad76a)
Theorem hlt_LEBESGUE_MEASURABLE_SMALL_IMP_NEGLIGIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ hl_sym_3c5f63 (hl_ty_cart R N) R s (hl_UNIV R) = 1 -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12198 / LEBESGUE_MEASURABLE_ALMOST_FSIGMA   (hash md5:89ba02077fccc0cef23fe1b87890efde)
Theorem hlt_LEBESGUE_MEASURABLE_ALMOST_FSIGMA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> exists c t :e 2 :^: hl_ty_cart R N, hl_fsigma N c = 1 /\ (hl_negligible N t = 1 /\ (hl_UNION (hl_ty_cart R N) c t = s /\ hl_DISJOINT (hl_ty_cart R N) c t = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:12229 / LEBESGUE_MEASURABLE_ALMOST_GDELTA   (hash md5:62275568473255dce0973b284639e310)
Theorem hlt_LEBESGUE_MEASURABLE_ALMOST_GDELTA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> exists c t :e 2 :^: hl_ty_cart R N, hl_gdelta N c = 1 /\ (hl_negligible N t = 1 /\ (hl_UNION (hl_ty_cart R N) s t = c /\ hl_DISJOINT (hl_ty_cart R N) t s = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:12245 / NEGLIGIBLE_IFF_LEBESGUE_MEASURABLE_SUBSETS   (hash md5:9209ec62e092e0452255926312d82386)
Theorem hlt_NEGLIGIBLE_IFF_LEBESGUE_MEASURABLE_SUBSETS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_lebesgue_measurable N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12314 / NEGLIGIBLE_IFF_MEASURABLE_SUBSETS   (hash md5:75a5120fc371e3bcc5087cba2de6be21)
Theorem hlt_NEGLIGIBLE_IFF_MEASURABLE_SUBSETS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_measurable N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12320 / NON_MEASURABLE_SET   (hash md5:5a62d48e5c69a83e30f58e6e3d2d1c77)
Theorem hlt_NON_MEASURABLE_SET : forall N:set, N <> Empty -> exists s :e 2 :^: hl_ty_cart R N, ~ hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12329 / PRESERVES_LEBESGUE_MEASURABLE_IMP_PRESERVES_NEGLIGIBLE   (hash md5:e70c2b634fa14a27431ab496aa89725c)
Theorem hlt_PRESERVES_LEBESGUE_MEASURABLE_IMP_PRESERVES_NEGLIGIBLE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall t :e 2 :^: hl_ty_cart R N, hl_negligible N t = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_lebesgue_measurable A (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R A) f t) = 1) -> forall t :e 2 :^: hl_ty_cart R N, hl_negligible N t = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_negligible A (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R A) f t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12338 / PRESERVES_NEGLIGIBLE_IMAGE   (hash md5:a007d26498f39f3791a3cfd90d024336)
Theorem hlt_PRESERVES_NEGLIGIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) <-> forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12346 / PRESERVES_NEGLIGIBLE_IMAGE_UNIV   (hash md5:a0fb0d663de8818e19aa76df262304bc)
Theorem hlt_PRESERVES_NEGLIGIBLE_IMAGE_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) <-> forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12352 / LEBESGUE_MEASURABLE_CONTINUOUS_IMAGE   (hash md5:09e7efcb931a90ce14685c61f06efde8)
Theorem hlt_LEBESGUE_MEASURABLE_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) -> forall t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12372 / PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE   (hash md5:0d7114395b643a13b79f427ce17acc6d)
Theorem hlt_PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 -> ((forall t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) <-> forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:12382 / PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE_ALT   (hash md5:f7b5432c4a3c4402c6317c786af3fd0b)
Theorem hlt_PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 -> ((forall t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) <-> forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:12393 / LEBESGUE_MEASURABLE_DIFFERENTIABLE_IMAGE   (hash md5:94616f8b51cd23718e55c6ecb153624b)
Theorem hlt_LEBESGUE_MEASURABLE_DIFFERENTIABLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_differentiable_on M N f s = 1 /\ hl_lebesgue_measurable M s = 1) -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12407 / LEBESGUE_MEASURABLE_LINEAR_IMAGE_GEN   (hash md5:d0b29318d1927c7d5834e29992809f0c)
Theorem hlt_LEBESGUE_MEASURABLE_LINEAR_IMAGE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_lebesgue_measurable M s = 1 /\ hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1) -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12415 / MEASURABLE_LINEAR_IMAGE_GEN   (hash md5:dbb8f520c2193dca04a4827161dbc36f)
Theorem hlt_MEASURABLE_LINEAR_IMAGE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (hl_measurable M s = 1 /\ hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12439 / LEBESGUE_MEASURABLE_LINEAR_IMAGE_EQ_GEN   (hash md5:19205079787826b2c8ca09580a241cb7)
Theorem hlt_LEBESGUE_MEASURABLE_LINEAR_IMAGE_EQ_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ (hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y)) -> (hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_lebesgue_measurable M s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:12463 / DOUBLE_LEBESGUE_MEASURABLE   (hash md5:1518d8f6889a8fbd2c4d2c266a554751)
Theorem hlt_DOUBLE_LEBESGUE_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7205 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7205 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1) <-> hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ forall t :e 2 :^: hl_ty_cart R N, hl_negligible N t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7206 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7206 (hl_IN (hl_ty_cart R N) (f x) t) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12482 / DOUBLE_LEBESGUE_MEASURABLE_ON   (hash md5:a03878ba184f8d08b0beb0b2ad446edb)
Theorem hlt_DOUBLE_LEBESGUE_MEASURABLE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable M s = 1 /\ (hl_lebesgue_measurable N t = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) t = 1) -> ((forall u :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N u = 1 /\ hl_SUBSET (hl_ty_cart R N) u t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7210 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7210 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) u = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) <-> hl_measurable_on M N f s = 1 /\ forall u :e 2 :^: hl_ty_cart R N, hl_negligible N u = 1 /\ hl_SUBSET (hl_ty_cart R N) u t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7211 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7211 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) u = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:12516 / CONTINUOUS_IMP_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET   (hash md5:42c47f9259fcc0b9394f31d45227ab2e)
Theorem hlt_CONTINUOUS_IMP_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ hl_lebesgue_measurable M s = 1 -> hl_measurable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12619 / CONTINUOUS_IMP_MEASURABLE_ON_CLOSED_SUBSET   (hash md5:560bb17bdb33ba7c86b235d89132c5a8)
Theorem hlt_CONTINUOUS_IMP_MEASURABLE_ON_CLOSED_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f s = 1 /\ hl_closed M s = 1 -> hl_measurable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12625 / CONTINUOUS_AE_IMP_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET   (hash md5:16e082e8ae42925e27ae30707a857344)
Theorem hlt_CONTINUOUS_AE_IMP_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s m :e 2 :^: hl_ty_cart R M, hl_continuous_on M N f (hl_DIFF (hl_ty_cart R M) s m) = 1 /\ (hl_lebesgue_measurable M s = 1 /\ hl_negligible M m = 1) -> hl_measurable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12638 / MEASURABLE_CONTINUOUS_COMPOSE   (hash md5:463efdc09e20a672be8f1d1f94ddfbf2)
Theorem hlt_MEASURABLE_CONTINUOUS_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on N P f (hl_UNIV (hl_ty_cart R N)) = 1 /\ (hl_continuous_on M N g (hl_UNIV (hl_ty_cart R M)) = 1 /\ (forall k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7217 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7217 (hl_IN (hl_ty_cart R N) (g x) k) x = 1 then 1 else 0)) = 1)) -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f g) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12656 / MEASURABLE_ON_COMPOSE_REV   (hash md5:9883af969e665ad5187cefc8690cf48f)
Theorem hlt_MEASURABLE_ON_COMPOSE_REV : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable M s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s = t /\ ((forall k :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M k = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g k) = 1) /\ hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f g) s = 1)) -> hl_measurable_on N P f t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12676 / MEASURABLE_ON_CONTINUOUS_COMPOSE_REV   (hash md5:4cdafc5cac6cb9875a52382219e55e5f)
Theorem hlt_MEASURABLE_ON_CONTINUOUS_COMPOSE_REV : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable M s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s = t /\ ((forall k :e 2 :^: hl_ty_cart R M, hl_negligible M k = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g k) = 1) /\ (hl_continuous_on M N g s = 1 /\ hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f g) s = 1))) -> hl_measurable_on N P f t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12690 / MEASURABLE_ON_COMPOSE_GEN   (hash md5:56430de079146286daa45f24cb6ae565)
Theorem hlt_MEASURABLE_ON_COMPOSE_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N k = 1 /\ hl_SUBSET (hl_ty_cart R N) k t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7220 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7220 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (g x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ hl_measurable_on N P f t = 1)) -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f g) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12713 / MEASURABLE_ON_COMPOSE_ALT   (hash md5:9bbd0141e7a0c734f4c77024de648152)
Theorem hlt_MEASURABLE_ON_COMPOSE_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable M s = 1 /\ (hl_lebesgue_measurable N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1 /\ ((forall k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ hl_SUBSET (hl_ty_cart R N) k t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7221 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7221 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (g x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ (hl_measurable_on M N g s = 1 /\ hl_measurable_on N P f t = 1)))) -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f g) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12725 / MEASURABLE_ON_CONTINUOUS_COMPOSE   (hash md5:eb3363f2196e75f3721a1a6858994749)
Theorem hlt_MEASURABLE_ON_CONTINUOUS_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable M s = 1 /\ (hl_lebesgue_measurable N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) t = 1 /\ (hl_measurable_on N P f t = 1 /\ (hl_continuous_on M N g s = 1 /\ (forall k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ hl_SUBSET (hl_ty_cart R N) k t = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7222 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7222 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (g x) k = 1 then 1 else 0) x = 1 then 1 else 0)) = 1))))) -> hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f g) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12736 / MEASURABLE_ON_DIFFERENTIABLE_IMAGE   (hash md5:11e4bec86020a3f55c3f98ef8a9042c1)
Theorem hlt_MEASURABLE_ON_DIFFERENTIABLE_IMAGE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (hl_differentiable_on M N g s = 1 /\ hl_measurable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) f g) s = 1)) -> hl_measurable_on N P f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12752 / BOREL_MEASURABLE_IMP_MEASURABLE_ON   (hash md5:b5e7ec640dbe84468a37aeada7f65bb3)
Theorem hlt_BOREL_MEASURABLE_IMP_MEASURABLE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_borel_measurable_on M N f s = 1 /\ hl_lebesgue_measurable M s = 1 -> hl_measurable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12769 / BAIRE_IMP_MEASURABLE_ON   (hash md5:c4cb832f1c73af1747db18411701cf6a)
Theorem hlt_BAIRE_IMP_MEASURABLE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall n :e omega, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_baire M N n s f = 1 /\ hl_lebesgue_measurable M s = 1 -> hl_measurable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12774 / BAIRE_IMP_MEASURABLE_ON_UNIV   (hash md5:ed4b9b5796ddc70734b19a9a9bce1add)
Theorem hlt_BAIRE_IMP_MEASURABLE_ON_UNIV : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall n :e omega, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e A, hl_baire M N n (hl_UNIV (hl_ty_cart R M)) f = 1 -> hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12779 / MEASURABLE_EQ_ALMOST_BAIRE1   (hash md5:2876646b02f016863edd27f9584f5eae)
Theorem hlt_MEASURABLE_EQ_ALMOST_BAIRE1 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> exists s :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_DIFF (hl_ty_cart R M) (hl_UNIV (hl_ty_cart R M)) s) = 1 /\ hl_baire M N (hl_NUMERAL (hl_BIT1 hl_zero)) s f = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12802 / MEASURABLE_EQ_ALMOST_BAIRE2   (hash md5:aff84def63162aa7a8d4697070335bfa)
Theorem hlt_MEASURABLE_EQ_ALMOST_BAIRE2 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_baire M N (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_UNIV (hl_ty_cart R M)) g = 1 /\ hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7249 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7249 (if ~ g x = f x then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12886 / LEBESGUE_DENSITY_THEOREM_INTEGRAL_NORM_CBALL   (hash md5:93c12028873f50fdc6857abdcf963c11)
Theorem hlt_LEBESGUE_DENSITY_THEOREM_INTEGRAL_NORM_CBALL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> exists k :e 2 :^: hl_ty_cart R M, hl_negligible M k = 1 /\ forall x :e hl_ty_cart R M, ~ hl_IN (hl_ty_cart R M) x k = 1 -> hl_tendsto (hl_ty_cart R 1) 1 (fun e1 :e hl_ty_cart R 1 => hl_vmul 1 (hl_real_inv (hl_measure M (hl_cball M (hl_pair (hl_ty_cart R M) R x (hl_drop e1))))) (hl_integral M 1 (hl_cball M (hl_pair (hl_ty_cart R M) R x (hl_drop e1))) (fun y :e hl_ty_cart R M => hl_lift (hl_vector_norm N (hl_vector_sub N (f y) (f x)))))) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_7250 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_7250 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:12986 / LEBESGUE_DENSITY_THEOREM_INTEGRAL_NORM_BALL   (hash md5:7c854c3443b277c26cadadfce25c6247)
Theorem hlt_LEBESGUE_DENSITY_THEOREM_INTEGRAL_NORM_BALL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> exists k :e 2 :^: hl_ty_cart R M, hl_negligible M k = 1 /\ forall x :e hl_ty_cart R M, ~ hl_IN (hl_ty_cart R M) x k = 1 -> hl_tendsto (hl_ty_cart R 1) 1 (fun e1 :e hl_ty_cart R 1 => hl_vmul 1 (hl_real_inv (hl_measure M (hl_ball M (hl_pair (hl_ty_cart R M) R x (hl_drop e1))))) (hl_integral M 1 (hl_ball M (hl_pair (hl_ty_cart R M) R x (hl_drop e1))) (fun y :e hl_ty_cart R M => hl_lift (hl_vector_norm N (hl_vector_sub N (f y) (f x)))))) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_7251 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_7251 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:13013 / LEBESGUE_DENSITY_THEOREM_INTEGRAL_CBALL   (hash md5:5377f9a7870acdf7a89aa20883b489c7)
Theorem hlt_LEBESGUE_DENSITY_THEOREM_INTEGRAL_CBALL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_INTER (hl_ty_cart R M) s (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1) -> exists k :e 2 :^: hl_ty_cart R M, hl_negligible M k = 1 /\ forall x :e hl_ty_cart R M, ~ hl_IN (hl_ty_cart R M) x k = 1 -> hl_tendsto (hl_ty_cart R 1) N (fun e1 :e hl_ty_cart R 1 => hl_vmul N (hl_real_inv (hl_measure M (hl_cball M (hl_pair (hl_ty_cart R M) R x (hl_drop e1))))) (hl_integral M N (hl_INTER (hl_ty_cart R M) s (hl_cball M (hl_pair (hl_ty_cart R M) R x (hl_drop e1)))) f)) (hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_7252 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_7252 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:13067 / LEBESGUE_DENSITY_THEOREM_INTEGRAL_BALL   (hash md5:678c9f6f06333e3de57461bcc40555ae)
Theorem hlt_LEBESGUE_DENSITY_THEOREM_INTEGRAL_BALL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_INTER (hl_ty_cart R M) s (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1) -> exists k :e 2 :^: hl_ty_cart R M, hl_negligible M k = 1 /\ forall x :e hl_ty_cart R M, ~ hl_IN (hl_ty_cart R M) x k = 1 -> hl_tendsto (hl_ty_cart R 1) N (fun e1 :e hl_ty_cart R 1 => hl_vmul N (hl_real_inv (hl_measure M (hl_ball M (hl_pair (hl_ty_cart R M) R x (hl_drop e1))))) (hl_integral M N (hl_INTER (hl_ty_cart R M) s (hl_ball M (hl_pair (hl_ty_cart R M) R x (hl_drop e1)))) f)) (hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_7253 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_7253 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:13093 / LEBESGUE_DENSITY_THEOREM_LIFT_CBALL   (hash md5:0e0e63b68e1e7baa85668b4744291cf0)
Theorem hlt_LEBESGUE_DENSITY_THEOREM_LIFT_CBALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> exists k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ forall x :e hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) x k = 1 -> hl_tendsto (hl_ty_cart R 1) 1 (fun e1 :e hl_ty_cart R 1 => hl_lift (hl_real_div (hl_measure N (hl_INTER (hl_ty_cart R N) s (hl_cball N (hl_pair (hl_ty_cart R N) R x (hl_drop e1))))) (hl_measure N (hl_cball N (hl_pair (hl_ty_cart R N) R x (hl_drop e1)))))) (hl_COND (hl_ty_cart R 1) (hl_IN (hl_ty_cart R N) x s) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_7254 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_7254 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:13115 / LEBESGUE_DENSITY_THEOREM_LIFT_BALL   (hash md5:d312b9a9d85575a800f781d6a20bc9a0)
Theorem hlt_LEBESGUE_DENSITY_THEOREM_LIFT_BALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> exists k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ forall x :e hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) x k = 1 -> hl_tendsto (hl_ty_cart R 1) 1 (fun e1 :e hl_ty_cart R 1 => hl_lift (hl_real_div (hl_measure N (hl_INTER (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R x (hl_drop e1))))) (hl_measure N (hl_ball N (hl_pair (hl_ty_cart R N) R x (hl_drop e1)))))) (hl_COND (hl_ty_cart R 1) (hl_IN (hl_ty_cart R N) x s) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_7255 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_7255 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:13144 / DIFFERENTIAL_ZERO_MAXMIN_DENSITY   (hash md5:de53dc89a8b967dd030b513ef03bb613)
Theorem hlt_DIFFERENTIAL_ZERO_MAXMIN_DENSITY : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_has_derivative N 1 f f' (hl_within (hl_ty_cart R N) (hl_at N a) s) = 1 /\ ((hl_eventually (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_real_le (hl_drop (f a)) (hl_drop (f x))) (hl_within (hl_ty_cart R N) (hl_at N a) s) = 1 \/ hl_eventually (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_real_le (hl_drop (f x)) (hl_drop (f a))) (hl_within (hl_ty_cart R N) (hl_at N a) s) = 1) /\ (hl_lebesgue_measurable N s = 1 /\ hl_tendsto (hl_ty_cart R 1) 1 (fun e1 :e hl_ty_cart R 1 => hl_lift (hl_real_div (hl_measure N (hl_INTER (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R a (hl_drop e1))))) (hl_measure N (hl_ball N (hl_pair (hl_ty_cart R N) R a (hl_drop e1)))))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_7266 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_7266 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0))) = 1)) -> f' = fun v :e hl_ty_cart R N => hl_vec 1 (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/measure.ml:13321 / DIFFERENTIAL_ZERO_LEVELSET_DENSITY   (hash md5:afbb2e2766451f9beef13d7f993a3006)
Theorem hlt_DIFFERENTIAL_ZERO_LEVELSET_DENSITY : forall M N:set, M <> Empty -> N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall c :e hl_ty_cart R N, hl_has_derivative M N f f' (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 /\ (hl_eventually (hl_ty_cart R M) (fun x :e hl_ty_cart R M => if f x = c then 1 else 0) (hl_within (hl_ty_cart R M) (hl_at M a) s) = 1 /\ (hl_lebesgue_measurable M s = 1 /\ hl_tendsto (hl_ty_cart R 1) 1 (fun e1 :e hl_ty_cart R 1 => hl_lift (hl_real_div (hl_measure M (hl_INTER (hl_ty_cart R M) s (hl_ball M (hl_pair (hl_ty_cart R M) R a (hl_drop e1))))) (hl_measure M (hl_ball M (hl_pair (hl_ty_cart R M) R a (hl_drop e1)))))) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_within (hl_ty_cart R 1) (hl_at 1 (hl_vec 1 (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_7267 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_7267 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0))) = 1)) -> f' = fun h :e hl_ty_cart R M => hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/measure.ml:13351 / NEGLIGIBLE_POINTS_OF_AMBIGUOUS_DERIVATIVE   (hash md5:9633038204fddafd7df15a9d1685b582)
Theorem hlt_NEGLIGIBLE_POINTS_OF_AMBIGUOUS_DERIVATIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7270 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7270 (if hl_IN (hl_ty_cart R M) x s = 1 /\ exists y z :e hl_ty_cart R N :^: hl_ty_cart R M, hl_has_derivative M N f y (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ (hl_has_derivative M N f z (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ ~ y = z) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:13392 / PAIRWISE_DISJOINT_LEBESGUE_MEASURABLE_IMP_COUNTABLE   (hash md5:d13810c293a95f91b9e1fc6efc19aef4)
Theorem hlt_PAIRWISE_DISJOINT_LEBESGUE_MEASURABLE_IMP_COUNTABLE : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_pairwise (2 :^: hl_ty_cart R N) (fun s :e 2 :^: hl_ty_cart R N => fun t :e 2 :^: hl_ty_cart R N => hl_negligible N (hl_INTER (hl_ty_cart R N) s t)) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_lebesgue_measurable N s = 1 /\ ~ hl_negligible N s = 1) -> hl_COUNTABLE (2 :^: hl_ty_cart R N) f = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:13472 / WIENER_COVERING_LEMMA_BALLS   (hash md5:4182e54ee0fbcfabdc75be808fd401e2)
Theorem hlt_WIENER_COVERING_LEMMA_BALLS : forall A N:set, A <> Empty -> N <> Empty -> forall k :e 2 :^: A, forall a :e hl_ty_cart R N :^: A, forall r :e R :^: A, forall s :e 2 :^: hl_ty_cart R N, hl_FINITE A k = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) (fun i :e A => hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) k)) = 1 -> exists c :e 2 :^: A, hl_SUBSET A c k = 1 /\ (hl_pairwise A (fun i :e A => fun j :e A => hl_DISJOINT (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_ball N (hl_pair (hl_ty_cart R N) R (a j) (r j)))) c = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) (fun i :e A => hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (r i)))) c)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:13522 / WIENER_COVERING_LEMMA_CBALLS   (hash md5:a1b66e87209c7aa6db8c53e5f1d5f598)
Theorem hlt_WIENER_COVERING_LEMMA_CBALLS : forall A N:set, A <> Empty -> N <> Empty -> forall k :e 2 :^: A, forall a :e hl_ty_cart R N :^: A, forall r :e R :^: A, forall s :e 2 :^: hl_ty_cart R N, hl_FINITE A k = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) (fun i :e A => hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) k)) = 1 -> exists c :e 2 :^: A, hl_SUBSET A c k = 1 /\ (hl_pairwise A (fun i :e A => fun j :e A => hl_DISJOINT (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_cball N (hl_pair (hl_ty_cart R N) R (a j) (r j)))) c = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) (fun i :e A => hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (r i)))) c)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:13574 / VITALI_COVERING_LEMMA_CBALLS_BALLS   (hash md5:b2a191b7e61c332d2e9fa7ab56b92e0c)
Theorem hlt_VITALI_COVERING_LEMMA_CBALLS_BALLS : forall A N:set, A <> Empty -> N <> Empty -> forall a :e hl_ty_cart R N :^: A, forall r :e R :^: A, forall k :e 2 :^: A, forall B :e R, (forall i :e A, hl_IN A i k = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (r i) = 1 /\ hl_real_le (r i) B = 1) -> exists c :e 2 :^: A, hl_COUNTABLE A c = 1 /\ (hl_SUBSET A c k = 1 /\ (hl_pairwise A (fun i :e A => fun j :e A => hl_DISJOINT (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_cball N (hl_pair (hl_ty_cart R N) R (a j) (r j)))) c = 1 /\ forall i :e A, hl_IN A i k = 1 -> exists j :e A, hl_IN A j c = 1 /\ (~ hl_DISJOINT (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_cball N (hl_pair (hl_ty_cart R N) R (a j) (r j))) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_ball N (hl_pair (hl_ty_cart R N) R (a j) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))) (r j)))) = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:13706 / VITALI_COVERING_LEMMA_CBALLS   (hash md5:460af37b4261670c92cd384ad253923d)
Theorem hlt_VITALI_COVERING_LEMMA_CBALLS : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N :^: A, forall r :e R :^: A, forall k :e 2 :^: A, forall B :e R, hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) (fun i :e A => hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) k)) = 1 /\ (forall i :e A, hl_IN A i k = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (r i) = 1 /\ hl_real_le (r i) B = 1) -> exists c :e 2 :^: A, hl_COUNTABLE A c = 1 /\ (hl_SUBSET A c k = 1 /\ (hl_pairwise A (fun i :e A => fun j :e A => hl_DISJOINT (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_cball N (hl_pair (hl_ty_cart R N) R (a j) (r j)))) c = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) (fun i :e A => hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))) (r i)))) c)) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:13727 / VITALI_COVERING_LEMMA_BALLS   (hash md5:4c7c76ce45cf702a0706720e2ba64660)
Theorem hlt_VITALI_COVERING_LEMMA_BALLS : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N :^: A, forall r :e R :^: A, forall k :e 2 :^: A, forall B :e R, hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) (fun i :e A => hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) k)) = 1 /\ (forall i :e A, hl_IN A i k = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (r i) = 1 /\ hl_real_le (r i) B = 1) -> exists c :e 2 :^: A, hl_COUNTABLE A c = 1 /\ (hl_SUBSET A c k = 1 /\ (hl_pairwise A (fun i :e A => fun j :e A => hl_DISJOINT (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_ball N (hl_pair (hl_ty_cart R N) R (a j) (r j)))) c = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_IMAGE A (2 :^: hl_ty_cart R N) (fun i :e A => hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))) (r i)))) c)) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:13753 / VITALI_COVERING_THEOREM_CBALLS   (hash md5:eee527089cd6ad0b5470599528fd5218)
Theorem hlt_VITALI_COVERING_THEOREM_CBALLS : forall A N:set, A <> Empty -> N <> Empty -> forall k :e 2 :^: A, forall a :e hl_ty_cart R N :^: A, forall r :e R :^: A, forall s :e 2 :^: hl_ty_cart R N, (forall i :e A, hl_IN A i k = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (r i) = 1) /\ (forall x :e hl_ty_cart R N, forall d :e R, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 -> exists i :e A, hl_IN A i k = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) = 1 /\ hl_real_lt (r i) d = 1)) -> exists c :e 2 :^: A, hl_COUNTABLE A c = 1 /\ (hl_SUBSET A c k = 1 /\ (hl_pairwise A (fun i :e A => fun j :e A => hl_DISJOINT (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_cball N (hl_pair (hl_ty_cart R N) R (a j) (r j)))) c = 1 /\ hl_negligible N (hl_DIFF (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_7282 :e 2 :^: hl_ty_cart R N => if exists i :e A, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_7282 (hl_IN A i c) (hl_cball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) = 1 then 1 else 0)))) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:13921 / VITALI_COVERING_THEOREM_BALLS   (hash md5:98cd147d756aa57aa08878c50e957cc8)
Theorem hlt_VITALI_COVERING_THEOREM_BALLS : forall A N:set, A <> Empty -> N <> Empty -> forall k :e 2 :^: A, forall a :e hl_ty_cart R N :^: A, forall r :e R :^: A, forall s :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, forall d :e R, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 -> exists i :e A, hl_IN A i k = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) = 1 /\ hl_real_lt (r i) d = 1)) -> exists c :e 2 :^: A, hl_COUNTABLE A c = 1 /\ (hl_SUBSET A c k = 1 /\ (hl_pairwise A (fun i :e A => fun j :e A => hl_DISJOINT (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) (hl_ball N (hl_pair (hl_ty_cart R N) R (a j) (r j)))) c = 1 /\ hl_negligible N (hl_DIFF (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_7286 :e 2 :^: hl_ty_cart R N => if exists i :e A, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_7286 (hl_IN A i c) (hl_ball N (hl_pair (hl_ty_cart R N) R (a i) (r i))) = 1 then 1 else 0)))) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:13963 / LOCALLY_NEGLIGIBLE_ALT   (hash md5:1006b293f87ba1836fc15e3990e2b0fe)
Theorem hlt_LOCALLY_NEGLIGIBLE_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ hl_negligible N u = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:13983 / LOCALLY_NEGLIGIBLE   (hash md5:90d50aaa4b21e6eee3ff51cd854b2ef2)
Theorem hlt_LOCALLY_NEGLIGIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_negligible N) s = 1 <-> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:13993 / LOCALLY_LEBESGUE_MEASURABLE_ALT   (hash md5:bfef920ced604171b8f0d75f5e78401a)
Theorem hlt_LOCALLY_LEBESGUE_MEASURABLE_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists u :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) u = 1 /\ (hl_IN (hl_ty_cart R N) x u = 1 /\ hl_lebesgue_measurable N u = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:14013 / LOCALLY_LEBESGUE_MEASURABLE   (hash md5:c7e9da0cbd6aaaa6a43b84e4ea5433ff)
Theorem hlt_LOCALLY_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_locally N (hl_lebesgue_measurable N) s = 1 <-> hl_lebesgue_measurable N s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:14027 / NEGLIGIBLE_EQ_ZERO_DENSITY_ALT   (hash md5:de2fcf42cda7d208f00ef6daa36afbbc)
Theorem hlt_NEGLIGIBLE_EQ_ZERO_DENSITY_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall x :e hl_ty_cart R N, forall e1 :e R, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, exists u :e 2 :^: hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_real_le d e1 = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R x d))) u = 1 /\ (hl_measurable N u = 1 /\ hl_real_lt (hl_measure N u) (hl_real_mul e1 (hl_measure N (hl_ball N (hl_pair (hl_ty_cart R N) R x d)))) = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:14148 / NEGLIGIBLE_EQ_ZERO_DENSITY   (hash md5:45be5962dfe67a912c446259a5b48dc3)
Theorem hlt_NEGLIGIBLE_EQ_ZERO_DENSITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall x :e hl_ty_cart R N, forall r e1 :e R, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1) -> exists d :e R, exists u :e 2 :^: hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_real_le d r = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) s (hl_ball N (hl_pair (hl_ty_cart R N) R x d))) u = 1 /\ (hl_measurable N u = 1 /\ hl_real_lt (hl_measure N u) (hl_real_mul e1 (hl_measure N (hl_ball N (hl_pair (hl_ty_cart R N) R x d)))) = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:14174 / LEBESGUE_MEASURABLE_POINTS_OF_CONVERGENCE   (hash md5:a9715b3171342f7c06f2fbaa3b56ec50)
Theorem hlt_LEBESGUE_MEASURABLE_POINTS_OF_CONVERGENCE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 /\ ((forall y :e hl_ty_cart R N, hl_continuous_on M P (fun x :e hl_ty_cart R M => f x y) s = 1) /\ hl_continuous_on M N g s = 1) -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7316 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7316 (if hl_IN (hl_ty_cart R M) x s = 1 /\ exists l :e hl_ty_cart R P, hl_tendsto (hl_ty_cart R N) P (f x) l (hl_at N (g x)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:14272 / BOREL_POINTS_OF_DIFFERENTIABILITY   (hash md5:1c4ba97545c206561ef5bb473c02efaf)
Theorem hlt_BOREL_POINTS_OF_DIFFERENTIABILITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_borel M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7490 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7490 (hl_differentiable M N f (hl_at M x)) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:14505 / LEBESGUE_MEASURABLE_POINTS_OF_DIFFERENTIABILITY_WITHIN   (hash md5:44b57a7ce6dd67b158289536c37724ce)
Theorem hlt_LEBESGUE_MEASURABLE_POINTS_OF_DIFFERENTIABILITY_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7667 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7667 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:15044 / LEBESGUE_MEASURABLE_POINTS_OF_DIFFERENTIABILITY_AT   (hash md5:bce66d2e8c7571f0cfbc5fcce4feeca9)
Theorem hlt_LEBESGUE_MEASURABLE_POINTS_OF_DIFFERENTIABILITY_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7668 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7668 (hl_differentiable M N f (hl_at M x)) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:15052 / MEASURABLE_ON_PARTIAL_DERIVATIVES   (hash md5:6d7ec198e991baccb0678a9c9fac9d44)
Theorem hlt_MEASURABLE_ON_PARTIAL_DERIVATIVES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i j :e omega, hl_lebesgue_measurable M s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ hl_le j (hl_dimindex M (hl_UNIV M)) = 1)))) -> hl_measurable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R M (hl_vindex (hl_ty_cart R M) N (hl_matrix M N (f' x)) i) j)) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:15726 / MEASURABLE_ON_VECTOR_DERIVATIVE_GEN   (hash md5:65375903d9887e910205d89ad877f675)
Theorem hlt_MEASURABLE_ON_VECTOR_DERIVATIVE_GEN : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_lebesgue_measurable 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1) -> hl_measurable_on 1 N f' s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:15747 / MEASURABLE_ON_VECTOR_DERIVATIVE   (hash md5:a82bfc968869764eb0f8ce0b747ceee0)
Theorem hlt_MEASURABLE_ON_VECTOR_DERIVATIVE : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s k :e 2 :^: hl_ty_cart R 1, hl_negligible 1 k = 1 /\ (hl_lebesgue_measurable 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) s k) = 1 -> hl_has_vector_derivative N f (f' x) (hl_at 1 x) = 1)) -> hl_measurable_on 1 N f' s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:15763 / MEASURABLE_ON_DET_JACOBIAN   (hash md5:ec29a2c18ec77878fbac828eed57585c)
Theorem hlt_MEASURABLE_ON_DET_JACOBIAN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) -> hl_measurable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_det N (hl_matrix N N (f' x)))) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:15784 / LUZIN   (hash md5:8bc82590a958e196827d435c19ff3187)
Theorem hlt_LUZIN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall e1 :e R, hl_measurable M s = 1 /\ (hl_measurable_on M N f s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists k :e 2 :^: hl_ty_cart R M, hl_compact M k = 1 /\ (hl_SUBSET (hl_ty_cart R M) k s = 1 /\ (hl_real_lt (hl_measure M (hl_DIFF (hl_ty_cart R M) s k)) e1 = 1 /\ hl_continuous_on M N f k = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:15869 / LUZIN_EQ   (hash md5:f168384d34b06f661c16177911d86413)
Theorem hlt_LUZIN_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists k :e 2 :^: hl_ty_cart R M, hl_compact M k = 1 /\ (hl_SUBSET (hl_ty_cart R M) k s = 1 /\ (hl_real_lt (hl_measure M (hl_DIFF (hl_ty_cart R M) s k)) e1 = 1 /\ hl_continuous_on M N f k = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:15869 / LUZIN_EQ_ALT   (hash md5:fa0340d411366ddfe8134a49291d8d05)
Theorem hlt_LUZIN_EQ_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 -> (hl_measurable_on M N f s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists k :e 2 :^: hl_ty_cart R M, exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_compact M k = 1 /\ (hl_SUBSET (hl_ty_cart R M) k s = 1 /\ (hl_real_lt (hl_measure M (hl_DIFF (hl_ty_cart R M) s k)) e1 = 1 /\ (hl_continuous_on M N g (hl_UNIV (hl_ty_cart R M)) = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x k = 1 -> g x = f x)))).
Admitted.

// HOL Light: Multivariate/measure.ml:15972 / LUZIN_SIGMA   (hash md5:4d9873c763a33b20475626be81587d07)
Theorem hlt_LUZIN_SIGMA : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 /\ hl_measurable_on M N f s = 1 -> exists u :e 2 :^: (2 :^: hl_ty_cart R M), hl_COUNTABLE (2 :^: hl_ty_cart R M) u = 1 /\ (hl_pairwise (2 :^: hl_ty_cart R M) (hl_DISJOINT (hl_ty_cart R M)) u = 1 /\ ((forall k :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) k u = 1 -> hl_compact M k = 1 /\ (hl_SUBSET (hl_ty_cart R M) k s = 1 /\ hl_continuous_on M N f k = 1)) /\ hl_negligible M (hl_DIFF (hl_ty_cart R M) s (hl_UNIONS (hl_ty_cart R M) u)) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:16129 / LUZIN_SIGMA_EXPLICIT   (hash md5:1ed1859ebc281971556a4962ca02bdbf)
Theorem hlt_LUZIN_SIGMA_EXPLICIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 /\ hl_measurable_on M N f s = 1 -> exists k :e 2 :^: hl_ty_cart R M :^: omega, (forall n :e omega, hl_compact M (k n) = 1) /\ ((forall n :e omega, hl_SUBSET (hl_ty_cart R M) (k n) s = 1) /\ ((forall n :e omega, hl_continuous_on M N f (k n) = 1) /\ (hl_pairwise omega (fun m :e omega => fun n :e omega => hl_DISJOINT (hl_ty_cart R M) (k m) (k n)) (hl_UNIV omega) = 1 /\ hl_negligible M (hl_DIFF (hl_ty_cart R M) s (hl_UNIONS (hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_7845 :e 2 :^: hl_ty_cart R M => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_7845 (hl_IN omega n (hl_UNIV omega)) (k n) = 1 then 1 else 0)))) = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:16164 / LUZIN_SIGMA_NESTED   (hash md5:5d45ee8a31aa9559898987ca1e920222)
Theorem hlt_LUZIN_SIGMA_NESTED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 /\ hl_measurable_on M N f s = 1 -> exists k :e 2 :^: hl_ty_cart R M :^: omega, (forall n :e omega, hl_compact M (k n) = 1) /\ ((forall n :e omega, hl_SUBSET (hl_ty_cart R M) (k n) s = 1) /\ ((forall n :e omega, hl_continuous_on M N f (k n) = 1) /\ ((forall n :e omega, hl_SUBSET (hl_ty_cart R M) (k n) (k (hl_SUC n)) = 1) /\ hl_negligible M (hl_DIFF (hl_ty_cart R M) s (hl_UNIONS (hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_7849 :e 2 :^: hl_ty_cart R M => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_7849 (hl_IN omega n (hl_UNIV omega)) (k n) = 1 then 1 else 0)))) = 1))).
Admitted.

// HOL Light: Multivariate/measure.ml:16212 / PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE_GEN   (hash md5:8583204abebd35796130374d43697d8a)
Theorem hlt_PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 -> ((forall t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) <-> forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:16243 / LEBESGUE_MEASURABLE_PREIMAGE_CARD_LE   (hash md5:1cd055b6fdb46702cc0af48f28fdffe6)
Theorem hlt_LEBESGUE_MEASURABLE_PREIMAGE_CARD_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall n :e omega, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1)) -> hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7871 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7871 (if hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7869 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7869 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_le (hl_CARD (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7870 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7870 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) n = 1 then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16298 / LEBESGUE_MEASURABLE_PREIMAGE_HAS_SIZE   (hash md5:41e638ceae84392309c818fd2da430d0)
Theorem hlt_LEBESGUE_MEASURABLE_PREIMAGE_HAS_SIZE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall n :e omega, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1)) -> hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7874 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7874 (hl_HAS_SIZE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7873 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7873 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) n) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16318 / LEBESGUE_MEASURABLE_PREIMAGE_FINITE   (hash md5:382cf37b33b123e278099c7cf1d980ed)
Theorem hlt_LEBESGUE_MEASURABLE_PREIMAGE_FINITE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1)) -> hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7876 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7876 (hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7875 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7875 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16332 / LEBESGUE_MEASURABLE_PREIMAGE_INFINITE   (hash md5:10694fe0a926bb2040ccab5a9a8c65e6)
Theorem hlt_LEBESGUE_MEASURABLE_PREIMAGE_INFINITE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1)) -> hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7880 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7880 (hl_INFINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7879 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7879 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16341 / MEASURABLE_ON_BANACH_INDICATRIX   (hash md5:4bc5179322284ccf745a78fe90c066ad)
Theorem hlt_MEASURABLE_ON_BANACH_INDICATRIX : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall c :e hl_ty_cart R 1, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1)) -> hl_measurable_on N 1 (fun y :e hl_ty_cart R N => hl_COND (hl_ty_cart R 1) (hl_FINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7884 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7884 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) (hl_lift (hl_real_of_num (hl_CARD (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7885 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7885 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))))) c) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16382 / LEBESGUE_MEASURABLE_DOMAIN_OF_INJECTIVITY   (hash md5:ea813512595d0902c04261e1b8e15b6c)
Theorem hlt_LEBESGUE_MEASURABLE_DOMAIN_OF_INJECTIVITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 -> exists t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 /\ (hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t = hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s /\ forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_IN (hl_ty_cart R M) y t = 1 /\ f x = f y) -> x = y)).
Admitted.

// HOL Light: Multivariate/measure.ml:16449 / BOREL_DOMAIN_OF_INJECTIVITY   (hash md5:0a3d11afc67d0dadef46ba01003aaa6c)
Theorem hlt_BOREL_DOMAIN_OF_INJECTIVITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (forall n :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) n s = 1 /\ hl_negligible M n = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f n) = 1)) -> exists t :e 2 :^: hl_ty_cart R M, hl_borel M t = 1 /\ (hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_negligible N (hl_DIFF (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t)) = 1 /\ forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_IN (hl_ty_cart R M) y t = 1 /\ f x = f y) -> x = y)).
Admitted.

// HOL Light: Multivariate/measure.ml:16470 / GDELTA_DOMAIN_OF_INJECTIVITY_MEASURABLE   (hash md5:8233f4dfd76b96e3586a2517210535aa)
Theorem hlt_GDELTA_DOMAIN_OF_INJECTIVITY_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, forall e1 :e R, hl_measurable_on M N f s = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) u = 1 /\ (hl_measurable N u = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1))))) -> exists t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_gdelta M t = 1 /\ (hl_bounded M t = 1 /\ (hl_measurable M t = 1 /\ (hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1 /\ (hl_real_lt (hl_measure N (hl_DIFF (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t))) e1 = 1 /\ forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 /\ (hl_IN (hl_ty_cart R M) y t = 1 /\ f x = f y) -> x = y))))).
Admitted.

// HOL Light: Multivariate/measure.ml:16532 / LUZIN_NPROPERTY_IMP_COUNTABLE_PREIMAGES   (hash md5:c0fad3719f990cd8d5c3951a0fe6b699)
Theorem hlt_LUZIN_NPROPERTY_IMP_COUNTABLE_PREIMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 /\ (hl_measurable_on M N f s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1)) -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7922 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7922 (if ~ hl_COUNTABLE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7921 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7921 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16731 / BANACH_SPROPERTY_IMP_LUZIN_NPROPERTY_OUTER   (hash md5:5f395f335aadf1cb0def6cb46358bfca)
Theorem hlt_BANACH_SPROPERTY_IMP_LUZIN_NPROPERTY_OUTER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) d = 1) -> exists u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) u = 1 /\ (hl_measurable N u = 1 /\ hl_real_lt (hl_measure N u) e1 = 1)) -> forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16747 / BANACH_SPROPERTY_IMP_LUZIN_NPROPERTY   (hash md5:0d0f1b4e857e6c2079f050a4ba7d4df0)
Theorem hlt_BANACH_SPROPERTY_IMP_LUZIN_NPROPERTY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) d = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1 /\ hl_real_lt (hl_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t)) e1 = 1) -> forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16758 / BANACH_SPROPERTY_OUTER   (hash md5:8e29681662d40b9546cd3859cd6a8af8)
Theorem hlt_BANACH_SPROPERTY_OUTER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) d = 1) -> exists u :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) u = 1 /\ (hl_measurable N u = 1 /\ hl_real_lt (hl_measure N u) e1 = 1)) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) d = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1 /\ hl_real_lt (hl_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t)) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16791 / BANACH_SPROPERTY_IMP_PRESERVES_MEASURABLE   (hash md5:e081f10be7a3f61795b2953fe3e3afee)
Theorem hlt_BANACH_SPROPERTY_IMP_PRESERVES_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) d = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1 /\ hl_real_lt (hl_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t)) e1 = 1) -> forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_measurable M t = 1 -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16824 / BANACH_SPROPERTY_IMP_FINITE_PREIMAGES   (hash md5:fb3469169c2fd3233bf4247ee251d37c)
Theorem hlt_BANACH_SPROPERTY_IMP_FINITE_PREIMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (hl_measurable M s = 1 /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) d = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1 /\ hl_real_lt (hl_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t)) e1 = 1)) -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7935 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7935 (hl_INFINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7934 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7934 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:16968 / ABSOLUTELY_CONTINUOUS_MEASURE_IMAGE   (hash md5:3cd9130f957bec6a9f081ff7518cf32d)
Theorem hlt_ABSOLUTELY_CONTINUOUS_MEASURE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall u :e 2 :^: hl_ty_cart R N, hl_measurable_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) u = 1 /\ (hl_measurable N u = 1 /\ ((forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_negligible M t = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) /\ hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7947 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7947 (hl_INFINITE (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7946 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7946 (if hl_IN (hl_ty_cart R M) x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0))) y = 1 then 1 else 0)) = 1))) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) d = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1 /\ hl_real_lt (hl_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t)) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17114 / ABSOLUTELY_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE_GEN   (hash md5:f1f84031852b1edee676f7c61465b157)
Theorem hlt_ABSOLUTELY_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_continuous_on N N f s = 1 /\ hl_negligible N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_7950 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_7950 (if hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_differentiable N N f (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_measurable N t = 1 /\ hl_real_lt (hl_measure N t) d = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f t) = 1 /\ hl_real_lt (hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f t)) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17151 / ABSOLUTELY_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE   (hash md5:5b4a98523574b517b4a765ea2517dcac)
Theorem hlt_ABSOLUTELY_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_differentiable_on N N f s = 1 -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_measurable N t = 1 /\ hl_real_lt (hl_measure N t) d = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f t) = 1 /\ hl_real_lt (hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f t)) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17170 / LEBESGUE_MEASURABLE_LOCALLY_LIPSCHITZ_IMAGE   (hash md5:f548a9054c433bfdb4933c1e015050aa)
Theorem hlt_LEBESGUE_MEASURABLE_LOCALLY_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists t :e 2 :^: hl_ty_cart R M, exists b :e R, hl_open M t = 1 /\ (hl_IN (hl_ty_cart R M) x t = 1 /\ forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y (hl_INTER (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f y) (f x))) (hl_real_mul b (hl_vector_norm M (hl_vector_sub M y x))) = 1))) -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17207 / MEASURABLE_LOCALLY_LIPSCHITZ_IMAGE   (hash md5:c824ac362310a99c21f26370302e4318)
Theorem hlt_MEASURABLE_LOCALLY_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_measurable M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists t :e 2 :^: hl_ty_cart R M, hl_open M t = 1 /\ (hl_IN (hl_ty_cart R M) x t = 1 /\ forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y (hl_INTER (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f y) (f x))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M y x))) = 1))) -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17207 / MEASURE_LOCALLY_LIPSCHITZ_IMAGE   (hash md5:ea61f2c83bd69eb8615a82bacc81a7f3)
Theorem hlt_MEASURE_LOCALLY_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_measurable M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> exists t :e 2 :^: hl_ty_cart R M, hl_open M t = 1 /\ (hl_IN (hl_ty_cart R M) x t = 1 /\ forall y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) y (hl_INTER (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f y) (f x))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M y x))) = 1))) -> hl_real_le (hl_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_real_mul (hl_real_pow B (hl_dimindex N (hl_UNIV N))) (hl_measure M s)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17460 / LEBESGUE_MEASURABLE_LIPSCHITZ_IMAGE   (hash md5:ca384798cc969f93a3742d44c2bdb6c9)
Theorem hlt_LEBESGUE_MEASURABLE_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_lebesgue_measurable M s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1)) -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17471 / MEASURABLE_LIPSCHITZ_IMAGE   (hash md5:b90d5860eb2a27326f878003ffad79bb)
Theorem hlt_MEASURABLE_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_measurable M s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1)) -> hl_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17482 / MEASURE_LIPSCHITZ_IMAGE   (hash md5:2e2cb925ce86b641f2bba67834ea7940)
Theorem hlt_MEASURE_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_le (hl_dimindex M (hl_UNIV M)) (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_measurable M s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1)) -> hl_real_le (hl_measure N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_real_mul (hl_real_pow B (hl_dimindex N (hl_UNIV N))) (hl_measure M s)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17756 / MEASURABLE_DIFFERENTIABLE_IMAGE   (hash md5:e11623bf631249a36303eb6482fecac1)
Theorem hlt_MEASURABLE_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ hl_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' x))))) s = 1) -> hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:17756 / MEASURE_DIFFERENTIABLE_IMAGE   (hash md5:d7ad5377b48db748de5dcb1cafa4d073)
Theorem hlt_MEASURE_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall b :e R, hl_lebesgue_measurable N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (hl_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' x))))) s = 1 /\ hl_real_le (hl_drop (hl_integral N 1 s (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' x))))))) b = 1)) -> hl_real_le (hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s)) b = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:18042 / NEGLIGIBLE_DIFFERENTIABLE_PREIMAGE   (hash md5:2de6cceca1a521aeeee3c7ccc12fd98f)
Theorem hlt_NEGLIGIBLE_DIFFERENTIABLE_PREIMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 /\ hl_rank M N (hl_matrix M N (f' x)) = hl_dimindex N (hl_UNIV N)) /\ hl_negligible N t = 1) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_7984 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_7984 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R N) (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:18149 / ABSOLUTELY_INTEGRABLE_ON_IMAGE   (hash md5:24fb3d5bf0133f3b2bff91c5914e86b4)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M M g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M (g' x)))) (f (g x))) s = 1 -> hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:18149 / INTEGRAL_ON_IMAGE_DROP_UBOUND_LE   (hash md5:3bc2238374b6ea7ba7b3b7215b911cd2)
Theorem hlt_INTEGRAL_ON_IMAGE_DROP_UBOUND_LE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R N, forall g' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall b :e R, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f (g x))) = 1) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N g (g' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (hl_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_vmul 1 (hl_real_abs (hl_det N (hl_matrix N N (g' x)))) (f (g x))) s = 1 /\ hl_real_le (hl_drop (hl_integral N 1 s (fun x :e hl_ty_cart R N => hl_vmul 1 (hl_real_abs (hl_det N (hl_matrix N N (g' x)))) (f (g x))))) b = 1)) -> hl_real_le (hl_drop (hl_integral N 1 (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) g s) f)) b = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:18699 / HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_INVERTIBLE   (hash md5:3659e4a7c8c6d5e2fee485a27dbfe6ac)
Theorem hlt_HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_INVERTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g h :e hl_ty_cart R M :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall b :e hl_ty_cart R N, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M M g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> h (g x) = x) /\ hl_continuous_on M M h (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1) -> (hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M (g' x)))) (f (g x))) s = 1 /\ hl_integral M N s (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M (g' x)))) (f (g x))) = b <-> hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1 /\ hl_integral M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) f = b).
Admitted.

// HOL Light: Multivariate/measure.ml:19113 / HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES   (hash md5:2aa009018a7087a16d32b10208fb55f4)
Theorem hlt_HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall b :e hl_ty_cart R N, hl_lebesgue_measurable M s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M M g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ g x = g y) -> x = y)) -> (hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M (g' x)))) (f (g x))) s = 1 /\ hl_integral M N s (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M (g' x)))) (f (g x))) = b <-> hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1 /\ hl_integral M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) f = b).
Admitted.

// HOL Light: Multivariate/measure.ml:19509 / ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES   (hash md5:f7c455e1c511d9bd08665a1e06e7a653)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M M g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ g x = g y) -> x = y)) -> (hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1 <-> hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M (g' x)))) (f (g x))) s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:19520 / INTEGRAL_CHANGE_OF_VARIABLES   (hash md5:585c8cff674767d385e0c23c581097a7)
Theorem hlt_INTEGRAL_CHANGE_OF_VARIABLES : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R M, forall g' :e hl_ty_cart R M :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M M g (g' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ g x = g y) -> x = y) /\ (hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1 \/ hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M (g' x)))) (f (g x))) s = 1))) -> hl_integral M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) f = hl_integral M N s (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M (g' x)))) (f (g x))).
Admitted.

// HOL Light: Multivariate/measure.ml:19535 / HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_1   (hash md5:fee66c83f853881ee47193a9fabe088e)
Theorem hlt_HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g' :e R :^: R, forall s :e 2 :^: hl_ty_cart R 1, forall b :e hl_ty_cart R N, hl_lebesgue_measurable 1 s = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ g x = g y) -> x = y) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative 1 g (hl_lift (g' (hl_drop x))) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1)) -> (hl_absolutely_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_real_abs (g' (hl_drop x))) (f (g x))) s = 1 /\ hl_integral 1 N s (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_real_abs (g' (hl_drop x))) (f (g x))) = b <-> hl_absolutely_integrable_on 1 N f (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g s) = 1 /\ hl_integral 1 N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g s) f = b).
Admitted.

// HOL Light: Multivariate/measure.ml:19578 / ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES_1   (hash md5:8ed9472079b149f96dc63e749431fe20)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g' :e R :^: R, forall s :e 2 :^: hl_ty_cart R 1, hl_lebesgue_measurable 1 s = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ g x = g y) -> x = y) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative 1 g (hl_lift (g' (hl_drop x))) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1)) -> (hl_absolutely_integrable_on 1 N f (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g s) = 1 <-> hl_absolutely_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_real_abs (g' (hl_drop x))) (f (g x))) s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:19595 / HAS_MEASURE_DIFFERENTIABLE_IMAGE   (hash md5:bd5289269923bbb6c64add1972ec329c)
Theorem hlt_HAS_MEASURE_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall m :e R, hl_lebesgue_measurable N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y)) -> (hl_has_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) m = 1 <-> hl_has_integral N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' x))))) (hl_lift m) s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:19614 / MEASURABLE_DIFFERENTIABLE_IMAGE_EQ   (hash md5:dc8233c8ba0b0e41106c59db3c7cca64)
Theorem hlt_MEASURABLE_DIFFERENTIABLE_IMAGE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y)) -> (hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1 <-> hl_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' x))))) s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:19625 / MEASURABLE_DIFFERENTIABLE_IMAGE_ALT   (hash md5:bce80c098d6ebb7703b3edade7a1c74e)
Theorem hlt_MEASURABLE_DIFFERENTIABLE_IMAGE_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y)) -> (hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1 <-> hl_absolutely_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' x))))) s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:19639 / MEASURE_DIFFERENTIABLE_IMAGE_EQ   (hash md5:b755cb5c3a2633a4e07fc0dcdafea7c2)
Theorem hlt_MEASURE_DIFFERENTIABLE_IMAGE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1) /\ ((forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ f x = f y) -> x = y) /\ hl_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' x))))) s = 1)) -> hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = hl_drop (hl_integral N 1 s (fun x :e hl_ty_cart R N => hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' x)))))).
Admitted.

// HOL Light: Multivariate/measure.ml:19662 / HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_LINEAR   (hash md5:3aa78b699056cc02ff8bc7cbe6e913d2)
Theorem hlt_HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall b :e hl_ty_cart R N, hl_linear M M g = 1 -> (hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M g))) (f (g x))) s = 1 /\ hl_integral M N s (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M g))) (f (g x))) = b <-> hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1 /\ hl_integral M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) f = b).
Admitted.

// HOL Light: Multivariate/measure.ml:19690 / ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES_LINEAR   (hash md5:1662a3e088134da53aa2f7320fc7ce02)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M M g = 1 -> (hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M g))) (f (g x))) s = 1 <-> hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:19697 / ABSOLUTELY_INTEGRABLE_ON_LINEAR_IMAGE   (hash md5:edaf06e90d53c28e91ae99fa0fdb2403)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M M g = 1 -> (hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1 <-> hl_absolutely_integrable_on M N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R M) f g) s = 1 \/ hl_det M (hl_matrix M M g) = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/measure.ml:19706 / INTEGRAL_CHANGE_OF_VARIABLES_LINEAR   (hash md5:1455f66eb5c42373404be3d7e3ac8ed7)
Theorem hlt_INTEGRAL_CHANGE_OF_VARIABLES_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M M g = 1 /\ (hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) = 1 \/ hl_absolutely_integrable_on M N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R M) f g) s = 1) -> hl_integral M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) g s) f = hl_vmul N (hl_real_abs (hl_det M (hl_matrix M M g))) (hl_integral M N s (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R M) f g)).
Admitted.

// HOL Light: Multivariate/measure.ml:19734 / ABSOLUTELY_INTEGRABLE_APPROXIMATE_CONTINUOUS   (hash md5:7ffe477689d688619a81fd28da452012)
Theorem hlt_ABSOLUTELY_INTEGRABLE_APPROXIMATE_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall e1 :e R, hl_lebesgue_measurable M s = 1 /\ (hl_absolutely_integrable_on M N f s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_absolutely_integrable_on M N g s = 1 /\ (hl_continuous_on M N g (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_bounded N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_UNIV (hl_ty_cart R M))) = 1 /\ hl_real_lt (hl_vector_norm 1 (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (hl_vector_sub N (f x) (g x)))))) e1 = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:20116 / CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_NORM   (hash md5:a072c9f91fcae97699e6be0fb3def480)
Theorem hlt_CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_NORM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_tendsto (hl_ty_cart R M) 1 (fun a :e hl_ty_cart R M => hl_integral M 1 (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (hl_vector_sub N (f (hl_vector_add M a x)) (f x))))) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_at M (hl_vec M (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:20355 / CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_NORM_GEN   (hash md5:c1d3e5e4c3e3a9a0abb95120845c1e40)
Theorem hlt_CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_NORM_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ (hl_lebesgue_measurable M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1) -> hl_tendsto (hl_ty_cart R M) 1 (fun a :e hl_ty_cart R M => hl_integral M 1 t (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (hl_vector_sub N (f (hl_vector_add M a x)) (f x))))) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R M) (hl_at M (hl_vec M (hl_NUMERAL hl_zero))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8088 :e hl_ty_cart R M => if exists a :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8088 (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) t) s) a = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:20399 / CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_GEN   (hash md5:62084e39a4852dc1ee4882cf529d6c6f)
Theorem hlt_CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_lebesgue_measurable M t = 1 -> hl_continuous_on M N (fun a :e hl_ty_cart R M => hl_integral M N t (fun x :e hl_ty_cart R M => f (hl_vector_add M a x))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8089 :e hl_ty_cart R M => if exists a :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8089 (hl_SUBSET (hl_ty_cart R M) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) t) s) a = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:20446 / CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION   (hash md5:d0a014b6e2c2962e8b8fc7e66fddb881)
Theorem hlt_CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_continuous_on M N (fun a :e hl_ty_cart R M => hl_integral M N (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => f (hl_vector_add M a x))) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:20455 / CONTINUOUS_MEASURE_TRANSLATION_SYMDIFF   (hash md5:a1d718298527b08a62fb4bdb0d751239)
Theorem hlt_CONTINUOUS_MEASURE_TRANSLATION_SYMDIFF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 -> hl_tendsto (hl_ty_cart R N) 1 (fun a :e hl_ty_cart R N => hl_lift (hl_measure N (hl_UNION (hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) s) (hl_DIFF (hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s))))) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_at N (hl_vec N (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:20480 / CONTINUOUS_MEASURE_TRANSLATION_DIFF   (hash md5:a1b51c65e7c4811c6e4600716b5f97d1)
Theorem hlt_CONTINUOUS_MEASURE_TRANSLATION_DIFF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_measurable N s = 1 -> hl_tendsto (hl_ty_cart R N) 1 (fun a :e hl_ty_cart R N => hl_lift (hl_measure N (hl_DIFF (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) s))) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_at N (hl_vec N (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:20496 / CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE_TRANSLATION   (hash md5:e954d8845a7b816aa0615d767e0a83a1)
Theorem hlt_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE_TRANSLATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s k :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_differentiable_on N N f s = 1 /\ hl_compact N k = 1) -> hl_continuous_on N 1 (fun a :e hl_ty_cart R N => hl_lift (hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) k)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8097 :e hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8097 (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) k) s) a = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:20612 / SUBINTERVAL_MEAN_VALUE_THEOREM   (hash md5:7d1aa9676995e1ca48518d006ee0ec7a)
Theorem hlt_SUBINTERVAL_MEAN_VALUE_THEOREM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, forall n :e omega, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) /\ (~ n = hl_NUMERAL hl_zero /\ hl_absolutely_integrable_on N 1 f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) -> exists c d :e hl_ty_cart R N, hl_vector_add N c (hl_vmul N (hl_real_inv (hl_real_of_num n)) (hl_vector_sub N b a)) = d /\ (hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_vmul 1 (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) f) = hl_vmul 1 (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) f)).
Admitted.

// HOL Light: Multivariate/measure.ml:20856 / SUBINTERVAL_MEAN_VALUE_THEOREM_SEQ   (hash md5:bc17fa8f6608288424827e7ed6848ce4)
Theorem hlt_SUBINTERVAL_MEAN_VALUE_THEOREM_SEQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) /\ hl_absolutely_integrable_on N 1 f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> exists c d :e hl_ty_cart R N :^: omega, (forall n :e omega, exists m :e omega, ~ m = hl_NUMERAL hl_zero /\ hl_vector_add N (c n) (hl_vmul N (hl_real_inv (hl_real_of_num m)) (hl_vector_sub N b a)) = d n) /\ ((forall n :e omega, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (c n) (d n)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N)) /\ (hl_tendsto omega N (fun n :e omega => hl_vector_sub N (d n) (c n)) (hl_vec N (hl_NUMERAL hl_zero)) hl_sequentially = 1 /\ ((forall n :e omega, hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (c n) (d n)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ ((forall n :e omega, hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (c (hl_SUC n)) (d (hl_SUC n))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (c n) (d n)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall n :e omega, hl_vmul 1 (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (c n) (d n)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) f) = hl_vmul 1 (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (c n) (d n)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) f))))).
Admitted.

// HOL Light: Multivariate/measure.ml:20970 / SUBINTERVAL_MEAN_VALUE_THEOREM_ALT   (hash md5:fbbb48dcf6eac755c0586c85da706a4e)
Theorem hlt_SUBINTERVAL_MEAN_VALUE_THEOREM_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) /\ hl_absolutely_integrable_on N 1 f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c d :e hl_ty_cart R N, exists n :e omega, ~ n = hl_NUMERAL hl_zero /\ (hl_vector_add N c (hl_vmul N (hl_real_inv (hl_real_of_num n)) (hl_vector_sub N b a)) = d /\ (hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_real_lt (hl_diameter N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) e1 = 1 /\ hl_vmul 1 (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) f) = hl_vmul 1 (hl_measure N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) f))))).
Admitted.

// HOL Light: Multivariate/measure.ml:21012 / WEAK_LEBESGUE_POINTS_IMP_IVT   (hash md5:771ca8429156a16d9e966513db9802ce)
Theorem hlt_WEAK_LEBESGUE_POINTS_IMP_IVT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) /\ (hl_locally N (hl_absolutely_integrable_on N 1 f) s = 1 /\ (forall c :e 2 :^: hl_ty_cart R N :^: omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ ((forall n :e omega, exists u :e R, exists v :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ c n = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R N => hl_vector_add N (hl_vmul N u x1) v) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) /\ (hl_eventually omega (fun n :e omega => hl_IN (hl_ty_cart R N) x (c n)) hl_sequentially = 1 /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_diameter N (c n))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1)) -> hl_tendsto omega 1 (fun n :e omega => hl_vmul 1 (hl_real_inv (hl_measure N (c n))) (hl_integral N 1 (c n) f)) (f x) hl_sequentially = 1)))) -> hl_connected 1 (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:21318 / MEASURE_DIFFERENTIABLE_IMAGE_APPROX_GEN   (hash md5:1d5187a241451c2b6a2626ae32eddfb6)
Theorem hlt_MEASURE_DIFFERENTIABLE_IMAGE_APPROX_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: hl_ty_cart R N :^: omega, forall a :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_differentiable_on N N f s = 1 /\ ((forall v :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) v s = 1 /\ hl_open N v = 1 -> hl_open N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f v) = 1) /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (~ hl_det N (hl_jacobian N N f (hl_at N a)) = hl_real_of_num (hl_NUMERAL hl_zero) /\ (hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_diameter N (c n))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1 /\ ((forall n :e omega, hl_IN (hl_ty_cart R N) a (hl_closure N (c n)) = 1) /\ (exists A :e 2 :^: hl_ty_cart R N, hl_convex N A = 1 /\ (hl_bounded N A = 1 /\ (~ hl_interior N A = hl_EMPTY (hl_ty_cart R N) /\ forall n :e omega, exists t :e R, exists z :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 /\ hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N t x) z) A = c n))))))))) -> hl_eventually omega (fun n :e omega => hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (c n))) hl_sequentially = 1 /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_real_div (hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (c n))) (hl_measure N (c n)))) (hl_lift (hl_real_abs (hl_det N (hl_jacobian N N f (hl_at N a))))) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:21956 / MEASURE_DIFFERENTIABLE_IMAGE_APPROX   (hash md5:73d568690b1f63bb07c79a0d338488de)
Theorem hlt_MEASURE_DIFFERENTIABLE_IMAGE_APPROX : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall c :e 2 :^: hl_ty_cart R N :^: omega, forall a :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero)) /\ (hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_diameter N (c n))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1 /\ ((forall n :e omega, hl_IN (hl_ty_cart R N) a (hl_closure N (c n)) = 1) /\ (exists A :e 2 :^: hl_ty_cart R N, hl_convex N A = 1 /\ (hl_bounded N A = 1 /\ (~ hl_interior N A = hl_EMPTY (hl_ty_cart R N) /\ forall n :e omega, exists t :e R, exists z :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 /\ hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N t x) z) A = c n))))))) -> hl_eventually omega (fun n :e omega => hl_measurable N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (c n))) hl_sequentially = 1 /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_real_div (hl_measure N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (c n))) (hl_measure N (c n)))) (hl_lift (hl_real_abs (hl_det N (hl_matrix N N (f' a))))) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:21983 / CONNECTED_JACOBIAN_RANGE   (hash md5:84bdc6e9194854bdcd1e54139252ce94)
Theorem hlt_CONNECTED_JACOBIAN_RANGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero))) -> hl_connected 1 (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_lift (hl_det N (hl_matrix N N (f' x)))) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:22160 / CONNECTED_JACOBIAN_RANGE_ALT   (hash md5:77762c1a1d04267b39002fb77e4539cc)
Theorem hlt_CONNECTED_JACOBIAN_RANGE_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (hl_convex N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (~ hl_interior N t = hl_EMPTY (hl_ty_cart R N) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero)) /\ (hl_IN (hl_ty_cart R N) a t = 1 /\ hl_IN (hl_ty_cart R N) b t = 1)))))) -> hl_SUBSET (hl_ty_cart R 1) (hl_open_segment 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_lift (hl_det N (hl_matrix N N (f' a)))) (hl_lift (hl_det N (hl_matrix N N (f' b)))))) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_lift (hl_det N (hl_matrix N N (f' x)))) (hl_interior N t)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:22417 / CONNECTED_JACOBIAN_RANGE_SUBSET   (hash md5:74ead90d0b62b3fa2c527e23bfa5439f)
Theorem hlt_CONNECTED_JACOBIAN_RANGE_SUBSET : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (hl_convex N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (~ hl_interior N t = hl_EMPTY (hl_ty_cart R N) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero)))))) -> hl_connected 1 (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_lift (hl_det N (hl_matrix N N (f' x)))) t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:22446 / CONNECTED_JACOBIAN_GRAPH   (hash md5:abf2337f32f0dd7800d587ba88265c68)
Theorem hlt_CONNECTED_JACOBIAN_GRAPH : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R N, forall f' :e hl_ty_cart R N :^: hl_ty_cart R N :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ (hl_connected N s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_has_derivative N N f (f' x) (hl_at N x) = 1 /\ ~ hl_det N (hl_matrix N N (f' x)) = hl_real_of_num (hl_NUMERAL hl_zero))) -> hl_connected (hl_ty_finite_sum N 1) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) (fun GEN_PVAR_8118 :e hl_ty_cart R (hl_ty_finite_sum N 1) => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) GEN_PVAR_8118 (hl_IN (hl_ty_cart R N) x s) (hl_pastecart R N 1 x (hl_lift (hl_det N (hl_matrix N N (f' x))))) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:22827 / ABSOLUTE_INTEGRATION_BY_PARTS   (hash md5:1c8f50a3a87220f6b38fd7aab967e452)
Theorem hlt_ABSOLUTE_INTEGRATION_BY_PARTS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_bilinear M N P bop = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_absolutely_integrable_on 1 M f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_absolutely_integrable_on 1 N g' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_integral 1 M f' (f x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_integral 1 N g' (g x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1))))) -> hl_absolutely_integrable_on 1 P (fun x :e hl_ty_cart R 1 => bop (f x) (g' x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_absolutely_integrable_on 1 P (fun x :e hl_ty_cart R 1 => bop (f' x) (g x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_vector_add P (hl_integral 1 P (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => bop (f x) (g' x))) (hl_integral 1 P (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => bop (f' x) (g x))) = hl_vector_sub P (bop (f b) (g b)) (bop (f a) (g a))).
Admitted.

// HOL Light: Multivariate/measure.ml:23178 / DOUBLE_LEBESGUE_MEASURABLE_INVERSE_FUNCTION_GEN   (hash md5:0593268d65b5edc7c953eb2811c10489)
Theorem hlt_DOUBLE_LEBESGUE_MEASURABLE_INVERSE_FUNCTION_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) -> forall t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_INTER (hl_ty_cart R M) s t)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:23202 / DOUBLE_LEBESGUE_MEASURABLE_INVERSE_FUNCTION   (hash md5:761b9cb2bbaae7d4b6cb8bad266c559e)
Theorem hlt_DOUBLE_LEBESGUE_MEASURABLE_INVERSE_FUNCTION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ ((forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x)) -> forall t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 -> hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8120 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8120 (if hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ hl_IN (hl_ty_cart R M) (g y) t = 1 then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:23216 / LEBESGUE_MEASURABLE_MEASURABLE_IMAGE   (hash md5:988927208dda83dc93e76143c46a4597)
Theorem hlt_LEBESGUE_MEASURABLE_MEASURABLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ ((forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y)) -> hl_lebesgue_measurable N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:23216 / MEASURABLE_ON_INVERSE_FUNCTION   (hash md5:c5f36f95d322c67cc530fac7af69405f)
Theorem hlt_MEASURABLE_ON_INVERSE_FUNCTION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ ((forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x)) -> hl_measurable_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:23242 / DOUBLE_LEBESGUE_MEASURABLE_LEFT_INVERSE   (hash md5:1bf371a30829c4ef06abfbc315e8d332)
Theorem hlt_DOUBLE_LEBESGUE_MEASURABLE_LEFT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ ((forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y)) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x) /\ forall t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 -> hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8121 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8121 (if hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ hl_IN (hl_ty_cart R M) (g y) t = 1 then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:23258 / MEASURABLE_ON_LEFT_INVERSE   (hash md5:923163d48ec9118f97c4d383165f1b7a)
Theorem hlt_MEASURABLE_ON_LEFT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ ((forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y)) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g (f x) = x) /\ hl_measurable_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:23272 / DOUBLE_LEBESGUE_MEASURABLE_RIGHT_INVERSE   (hash md5:d40108996439c2cccee1985f93241722)
Theorem hlt_DOUBLE_LEBESGUE_MEASURABLE_RIGHT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 -> hl_IN (hl_ty_cart R M) (g y) s = 1 /\ f (g y) = y) /\ forall t :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M t = 1 -> hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8122 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8122 (if hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 /\ hl_IN (hl_ty_cart R M) (g y) t = 1 then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:23291 / MEASURABLE_ON_RIGHT_INVERSE   (hash md5:9deb63f3bf961b642fc152c41bda775c)
Theorem hlt_MEASURABLE_ON_RIGHT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_measurable_on M N f s = 1 /\ (forall t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f t) = 1) -> exists g :e hl_ty_cart R M :^: hl_ty_cart R N, (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 -> hl_IN (hl_ty_cart R M) (g y) s = 1 /\ f (g y) = y) /\ hl_measurable_on N M g (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:23313 / EGOROV   (hash md5:26f95481a9255c4da00f9ac811cb442f)
Theorem hlt_EGOROV : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_measurable M s = 1 /\ (hl_negligible M t = 1 /\ ((forall n :e omega, hl_measurable_on M N (f n) s = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_tendsto omega N (fun n :e omega => f n x) (g x) hl_sequentially = 1))) -> forall d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 -> exists k :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) k s = 1 /\ (hl_measurable M k = 1 /\ (hl_real_lt (hl_measure M k) d = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall n :e omega, forall x :e hl_ty_cart R M, hl_le N1 n = 1 /\ hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s k) = 1 -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f n x) (g x))) e1 = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:23426 / LEBESGUE_DIFFERENTIATION_THEOREM_COMPACT   (hash md5:e06088548a991b377227bf6c94e6dbb7)
Theorem hlt_LEBESGUE_DIFFERENTIATION_THEOREM_COMPACT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8165 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8165 (if hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ~ hl_differentiable 1 N f (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24634 / LEBESGUE_DIFFERENTIATION_THEOREM   (hash md5:a5daded4ec450511126796c39820ef8b)
Theorem hlt_LEBESGUE_DIFFERENTIATION_THEOREM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ hl_has_bounded_variation_on N f s = 1 -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8172 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8172 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_differentiable 1 N f (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24674 / LEBESGUE_DIFFERENTIATION_THEOREM_ALT   (hash md5:1a854a453a6191ada7c56fdcc710dc06)
Theorem hlt_LEBESGUE_DIFFERENTIATION_THEOREM_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ hl_has_bounded_variation_on N f s = 1 -> exists t :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) t s = 1 /\ (hl_negligible 1 t = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) s t) = 1 -> hl_differentiable 1 N f (hl_at 1 x) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:24684 / LEBESGUE_DIFFERENTIATION_THEOREM_GEN   (hash md5:ae3666e1057fe01064f113d8e9608be3)
Theorem hlt_LEBESGUE_DIFFERENTIATION_THEOREM_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_COUNTABLE (2 :^: hl_ty_cart R 1) (hl_components 1 s) = 1 /\ hl_has_bounded_variation_on N f s = 1 -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8178 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8178 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_differentiable 1 N f (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24701 / LEBESGUE_DIFFERENTIATION_THEOREM_INCREASING   (hash md5:ec8359a943d5dda318ac5a9ab0fced76)
Theorem hlt_LEBESGUE_DIFFERENTIATION_THEOREM_INCREASING : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8180 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8180 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_differentiable 1 1 f (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24728 / LEBESGUE_DIFFERENTIATION_THEOREM_DECREASING   (hash md5:0b087b08d846e493228cf91c7e0afa1f)
Theorem hlt_LEBESGUE_DIFFERENTIATION_THEOREM_DECREASING : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8181 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8181 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_differentiable 1 1 f (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24747 / ABSOLUTELY_CONTINUOUS_INTEGRAL   (hash md5:c7a3e5e82f6415b66fbe791cb2ef8d51)
Theorem hlt_ABSOLUTELY_CONTINUOUS_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall e1 :e R, hl_absolutely_integrable_on M N f s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t s = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) d = 1) -> hl_real_lt (hl_vector_norm N (hl_integral M N t f)) e1 = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24818 / ABSOLUTELY_SETCONTINUOUS_INDEFINITE_INTEGRAL   (hash md5:b1107956a93fc8d5addd295f2312efde)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_INDEFINITE_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_lebesgue_measurable M s = 1 -> hl_absolutely_setcontinuous_on M N (fun k :e 2 :^: hl_ty_cart R M => hl_integral M N k f) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24843 / ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_RIGHT   (hash md5:af12edab3c3dc3a73513b9e70b29e277)
Theorem hlt_ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_RIGHT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24865 / ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_LEFT   (hash md5:05b525483a272fd69c51eb45bace3d65)
Theorem hlt_ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_LEFT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24887 / FUNDAMENTAL_THEOREM_OF_CALCULUS_ABSOLUTELY_CONTINUOUS   (hash md5:3a6fc7f6bdb1933fcd0821149fc45b37)
Theorem hlt_FUNDAMENTAL_THEOREM_OF_CALCULUS_ABSOLUTELY_CONTINUOUS : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_negligible 1 s = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1))) -> hl_has_integral 1 N f' (hl_vector_sub N (f b) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:24991 / ABSOLUTELY_INTEGRABLE_BOUNDED_VARIATION_EQ   (hash md5:c36198bc193b606684a5d8506f949348)
Theorem hlt_ABSOLUTELY_INTEGRABLE_BOUNDED_VARIATION_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_bounded_variation_on N (fun t :e hl_ty_cart R 1 => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a t) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25012 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE   (hash md5:4fb32c71b33f474e2148ec4b5e3e2f00)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1)) -> hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25051 / ABSOLUTE_INTEGRAL_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ   (hash md5:b7a9f1caaf222dcbf6e4c490419c5964)
Theorem hlt_ABSOLUTE_INTEGRAL_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_integral 1 N f' (hl_vector_sub N (f x) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) <-> hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ exists s :e 2 :^: hl_ty_cart R 1, hl_negligible 1 s = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25106 / ABSOLUTE_INTEGRAL_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ_ALT   (hash md5:9876ff36e3c2ba83178878274f7472ef)
Theorem hlt_ABSOLUTE_INTEGRAL_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ_ALT : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_integral 1 N f' (hl_vector_sub N (f x) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) <-> hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ exists s :e 2 :^: hl_ty_cart R 1, hl_negligible 1 s = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_at 1 x) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25134 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ   (hash md5:613ad248276e46f3185723e49bd2a025)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ : forall N:set, N <> Empty -> forall f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> exists f :e hl_ty_cart R N :^: hl_ty_cart R 1, exists s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:25154 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ_ALT   (hash md5:c310a472a2539c8135271c85d1314199)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ_ALT : forall N:set, N <> Empty -> forall f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> exists f :e hl_ty_cart R N :^: hl_ty_cart R 1, exists s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_at 1 x) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:25180 / ABSOLUTE_INTEGRATION_BY_PARTS_SUM   (hash md5:2d94b38ced30c83ca71a1a8e2690e940)
Theorem hlt_ABSOLUTE_INTEGRATION_BY_PARTS_SUM : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_bilinear M N P bop = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_absolutely_integrable_on 1 M f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_integral 1 M f' (hl_vector_sub M (f x) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) /\ (hl_absolutely_integrable_on 1 N g' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_integral 1 N g' (hl_vector_sub N (g x) (g a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1)))) -> hl_absolutely_integrable_on 1 P (fun x :e hl_ty_cart R 1 => hl_vector_add P (bop (f x) (g' x)) (bop (f' x) (g x))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_integral 1 P (fun x1 :e hl_ty_cart R 1 => hl_vector_add P (bop (f x1) (g' x1)) (bop (f' x1) (g x1))) (hl_vector_sub P (bop (f x) (g x)) (bop (f a) (g a))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25210 / ABSOLUTELY_INTEGRABLE_INCREASING_DERIVATIVE   (hash md5:28cea90a9feacfd897ea1cc0f557db8d)
Theorem hlt_ABSOLUTELY_INTEGRABLE_INCREASING_DERIVATIVE : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> exists s :e 2 :^: hl_ty_cart R 1, exists f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, hl_negligible 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1) /\ (hl_absolutely_integrable_on 1 1 f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f')) (hl_real_sub (hl_drop (f x)) (hl_drop (f a))) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:25445 / ABSOLUTELY_INTEGRABLE_INCREASING_DERIVATIVE_ALT   (hash md5:f82eea4a28ade3f1c97645bfeb027c91)
Theorem hlt_ABSOLUTELY_INTEGRABLE_INCREASING_DERIVATIVE_ALT : forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ (hl_negligible 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1)) -> hl_absolutely_integrable_on 1 1 f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f')) (hl_real_sub (hl_drop (f x)) (hl_drop (f a))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25486 / ABSOLUTELY_INTEGRABLE_BOUNDED_VARIATION_DERIVATIVE   (hash md5:fcba854c1c07f879783666115d62b40f)
Theorem hlt_ABSOLUTELY_INTEGRABLE_BOUNDED_VARIATION_DERIVATIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists f' :e hl_ty_cart R N :^: hl_ty_cart R 1, exists s :e 2 :^: hl_ty_cart R 1, hl_negligible 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_at 1 x) = 1) /\ hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:25554 / ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_EQ   (hash md5:3c05fb13025e4b0b7a5003ebc1bd743e)
Theorem hlt_ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> exists f' :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_integral 1 N f' (hl_vector_sub N (f x) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25595 / ABSOLUTE_INTEGRAL_NORM_DERIVATIVE_LE_VARIATION   (hash md5:2218e90a6e866d141c84f2248b513754)
Theorem hlt_ABSOLUTE_INTEGRAL_NORM_DERIVATIVE_LE_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists s :e 2 :^: hl_ty_cart R 1, exists f' :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_negligible 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_at 1 x) = 1) /\ (hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ forall c :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (f' x))))) (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:25720 / ABSOLUTE_INTEGRAL_NORM_DERIVATIVE_LE_VARIATION_ALT   (hash md5:11d53f15c2b55de14fbe7ec1b7d3fbf1)
Theorem hlt_ABSOLUTE_INTEGRAL_NORM_DERIVATIVE_LE_VARIATION_ALT : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1)) -> hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ forall c :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (f' x))))) (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25769 / VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE_GEN   (hash md5:970392dd3c7cc012412ce2b8fab2e15b)
Theorem hlt_VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE_GEN : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1)) -> hl_absolutely_integrable_on 1 N f' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f = hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (f' x)))).
Admitted.

// HOL Light: Multivariate/measure.ml:25793 / ABSOLUTELY_CONTINUOUS_VECTOR_VARIATION   (hash md5:aa0d3de206169c3c9bb005c4544ef8b0)
Theorem hlt_ABSOLUTELY_CONTINUOUS_VECTOR_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25857 / INCREASING_FTC_AE_IMP_ABSOLUTELY_CONTINUOUS   (hash md5:6d6d3e8560af2bbf6023ee58e018e191)
Theorem hlt_INCREASING_FTC_AE_IMP_ABSOLUTELY_CONTINUOUS : forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ (hl_negligible 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1) /\ hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f' = hl_vector_sub 1 (f b) (f a))) -> hl_absolutely_continuous_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:25905 / VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE_REV   (hash md5:c692f6a0dda4c3618eb12ad37e107f9e)
Theorem hlt_VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE_REV : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) /\ hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f = hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (f' x)))))) -> hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26266 / MEASURABLE_ABSOLUTELY_CONTINUOUS_IMAGE   (hash md5:6356436d398decf6e25af15e47665943)
Theorem hlt_MEASURABLE_ABSOLUTELY_CONTINUOUS_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ (hl_is_interval 1 s = 1 /\ (hl_measurable 1 t = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1)) -> hl_measurable N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26301 / BANACH_ZARECKI   (hash md5:62ba41810b3d8bf48d2d776f48e62b72)
Theorem hlt_BANACH_ZARECKI : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_continuous_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_has_bounded_variation_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ forall t :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_negligible 1 t = 1 -> hl_negligible 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f t) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:26407 / BANACH_ZARECKI_GEN   (hash md5:186fdf6b2fd2095ccab8c90adc737488)
Theorem hlt_BANACH_ZARECKI_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ hl_bounded 1 s = 1 -> (hl_absolutely_continuous_on 1 f s = 1 <-> hl_continuous_on 1 1 f s = 1 /\ (hl_has_bounded_variation_on 1 f s = 1 /\ forall t :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) t s = 1 /\ hl_negligible 1 t = 1 -> hl_negligible 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f t) = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:26469 / ABSOLUTELY_CONTINUOUS_DIFFERENTIABLE_BV_GEN   (hash md5:61f5bcd5c3594d9210ce473b61c87cf6)
Theorem hlt_ABSOLUTELY_CONTINUOUS_DIFFERENTIABLE_BV_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_bounded 1 s = 1 /\ (hl_continuous_on 1 N f s = 1 /\ (hl_has_bounded_variation_on N f s = 1 /\ (hl_COUNTABLE (hl_ty_cart R 1) t = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) s t) = 1 -> hl_differentiable 1 N f (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1))))) -> hl_absolutely_continuous_on N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26506 / ABSOLUTELY_CONTINUOUS_DIFFERENTIABLE_BV   (hash md5:9351e644c9eebb183093bba6d7c5accd)
Theorem hlt_ABSOLUTELY_CONTINUOUS_DIFFERENTIABLE_BV : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_differentiable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26518 / ABSOLUTELY_CONTINUOUS_ON_COMPOSE   (hash md5:633d019e222fbfcd00d5444687d2f542)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_COMPOSE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_bounded 1 s = 1 /\ (hl_is_interval 1 t = 1 /\ (hl_bounded 1 t = 1 /\ (hl_absolutely_continuous_on N f t = 1 /\ (hl_absolutely_continuous_on 1 g s = 1 /\ hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g s) t = 1))))) -> (hl_absolutely_continuous_on N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) f g) s = 1 <-> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) f g) s = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:26556 / CONVERSE_SARD   (hash md5:aef957fb69abc23da248429d7c99e3f1)
Theorem hlt_CONVERSE_SARD : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall f' :e hl_ty_cart R N :^: hl_ty_cart R M :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_has_derivative M N f (f' x) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ hl_negligible N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8185 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8185 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_rank M N (hl_matrix M N (f' x)) = hl_dimindex N (hl_UNIV N) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26575 / CONVERSE_SARD_1   (hash md5:1898453db7dedc6f226291041aa860c0)
Theorem hlt_CONVERSE_SARD_1 : forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1) /\ hl_negligible 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = 1 -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8186 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8186 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ f' x = hl_vec 1 (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26590 / DIFF_CHAIN_WITHIN_EQUAL_AE   (hash md5:1fb47cc518f65897bc113e84bd2735d8)
Theorem hlt_DIFF_CHAIN_WITHIN_EQUAL_AE : forall f g f' g' h' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s t u v w :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) t = 1 /\ (hl_negligible 1 u = 1 /\ (hl_negligible 1 v = 1 /\ (hl_negligible 1 w = 1 /\ ((forall n :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) n t = 1 /\ hl_negligible 1 n = 1 -> hl_negligible 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g n) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) s u) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1) /\ ((forall y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) y (hl_DIFF (hl_ty_cart R 1) t v) = 1 -> hl_has_vector_derivative 1 g (g' y) (hl_within (hl_ty_cart R 1) (hl_at 1 y) t) = 1) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) s w) = 1 -> hl_has_vector_derivative 1 (hl_o (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_ty_cart R 1) g f) (h' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1))))))) -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8192 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8192 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ h' x = hl_vmul 1 (hl_drop (f' x)) (g' (f x)) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26661 / DIFF_CHAIN_AT_EQUAL_AE   (hash md5:22b3937d4a85788e9a6c81f3fb0ab816)
Theorem hlt_DIFF_CHAIN_AT_EQUAL_AE : forall f g f' g' h' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s t u v w :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) t = 1 /\ (hl_negligible 1 u = 1 /\ (hl_negligible 1 v = 1 /\ (hl_negligible 1 w = 1 /\ ((forall n :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) n t = 1 /\ hl_negligible 1 n = 1 -> hl_negligible 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g n) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) s u) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1) /\ ((forall y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) y (hl_DIFF (hl_ty_cart R 1) t v) = 1 -> hl_has_vector_derivative 1 g (g' y) (hl_at 1 y) = 1) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) s w) = 1 -> hl_has_vector_derivative 1 (hl_o (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_ty_cart R 1) g f) (h' x) (hl_at 1 x) = 1))))))) -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8193 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8193 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ h' x = hl_vmul 1 (hl_drop (f' x)) (g' (f x)) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26675 / DIFF_CHAIN_WITHIN_AE   (hash md5:9ac70036beea27c72ae68e9c4c46a9fa)
Theorem hlt_DIFF_CHAIN_WITHIN_AE : forall f g f' g' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s t u v :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) t = 1 /\ (hl_negligible 1 u = 1 /\ (hl_negligible 1 v = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) s u) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1) /\ ((forall y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) y (hl_DIFF (hl_ty_cart R 1) t v) = 1 -> hl_has_vector_derivative 1 g (g' y) (hl_within (hl_ty_cart R 1) (hl_at 1 y) t) = 1) /\ hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8198 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8198 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ f' x = hl_vec 1 (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1)))) -> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8199 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8199 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_has_vector_derivative 1 (hl_o (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_ty_cart R 1) g f) (hl_vmul 1 (hl_drop (f' x)) (g' (f x))) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:26727 / ABSOLUTE_INTEGRAL_SUBSTITUTION   (hash md5:de10fd21a38036299ad6f6194797ee20)
Theorem hlt_ABSOLUTE_INTEGRAL_SUBSTITUTION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g g' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_absolutely_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (g a) (g b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_absolutely_continuous_on 1 g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 g (g' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (g x)) (hl_drop (g y)) = 1))))) -> hl_absolutely_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop (g' x)) (f (g x))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop (g' x)) (f (g x))) = hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (g a) (g b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f.
Admitted.

// HOL Light: Multivariate/measure.ml:26825 / NEGLIGIBLE_IMAGE_INDEFINITE_INTEGRAL   (hash md5:1458fff83dbcc3d650f41f4a72d7ee90)
Theorem hlt_NEGLIGIBLE_IMAGE_INDEFINITE_INTEGRAL : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ hl_SUBSET (hl_ty_cart R 1) s (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_negligible 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun c :e hl_ty_cart R 1 => hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) s) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27205 / POSITIVE_AE_DERIVATIVE_IMP_NONDECREASING   (hash md5:21c7503960e2d5f2365ace314a3db1fd)
Theorem hlt_POSITIVE_AE_DERIVATIVE_IMP_NONDECREASING : forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_interior 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = hl_EMPTY (hl_ty_cart R 1) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f' x)) = 1)) -> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27309 / POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LT_GEN   (hash md5:08c3b39f0f3afe08628744b9503d5a35)
Theorem hlt_POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LT_GEN : forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_interior 1 s = hl_EMPTY (hl_ty_cart R 1) /\ (hl_interior 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = hl_EMPTY (hl_ty_cart R 1) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f' x)) = 1))) -> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27358 / POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LT   (hash md5:d9b370741a2a4b739567ad4344fab550)
Theorem hlt_POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LT : forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f' x)) = 1)) -> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27379 / POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LE_GEN   (hash md5:a2250bbbfb9530350da8eaa7d37c804b)
Theorem hlt_POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LE_GEN : forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f' x)) = 1)) -> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27408 / POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LE   (hash md5:8e91a493c590b1de5ed767dbcfbd9bf7)
Theorem hlt_POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LE : forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (f' x) (hl_at 1 x) = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f' x)) = 1)) -> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27427 / ZERO_AE_DERIVATIVE_IMP_CONSTANT_GEN   (hash md5:79aea86371f9f01660ea1038d6097df7)
Theorem hlt_ZERO_AE_DERIVATIVE_IMP_CONSTANT_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_at 1 x) = 1)) -> forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> f x = f a.
Admitted.

// HOL Light: Multivariate/measure.ml:27453 / ZERO_AE_DERIVATIVE_IMP_CONSTANT   (hash md5:c04ea55f5c0934609f9ba8a60a47e91a)
Theorem hlt_ZERO_AE_DERIVATIVE_IMP_CONSTANT : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_negligible 1 s = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative 1 f (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_at 1 x) = 1)) -> forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> f x = f a.
Admitted.

// HOL Light: Multivariate/measure.ml:27474 / CONVERGENCE_IN_MEASURE   (hash md5:cf21803cc293bcff4b54d246394fe22f)
Theorem hlt_CONVERGENCE_IN_MEASURE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall n :e omega, hl_measurable_on M N (f n) s = 1) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_eventually omega (fun n :e omega => if exists t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8228 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8228 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_ge (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f n x) (g x))) e1 = 1 then 1 else 0) x = 1 then 1 else 0)) t = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) e1 = 1) then 1 else 0) hl_sequentially = 1) -> exists r :e omega :^: omega, exists t :e 2 :^: hl_ty_cart R M, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ (hl_negligible M t = 1 /\ (hl_SUBSET (hl_ty_cart R M) t s = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_tendsto omega N (fun n :e omega => f (r n) x) (g x) hl_sequentially = 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:27563 / CONVERGENCE_IN_MEASURE_UNIQUE   (hash md5:a8776a82ac525fd0a33887df59e4dbb4)
Theorem hlt_CONVERGENCE_IN_MEASURE_UNIQUE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g h :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall n :e omega, hl_measurable_on M N (f n) s = 1) /\ ((forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_eventually omega (fun n :e omega => if exists t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8230 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8230 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_ge (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f n x) (g x))) e1 = 1 then 1 else 0) x = 1 then 1 else 0)) t = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) e1 = 1) then 1 else 0) hl_sequentially = 1) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_eventually omega (fun n :e omega => if exists t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8231 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8231 (if hl_IN (hl_ty_cart R M) x s = 1 /\ hl_real_ge (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f n x) (h x))) e1 = 1 then 1 else 0) x = 1 then 1 else 0)) t = 1 /\ (hl_measurable M t = 1 /\ hl_real_lt (hl_measure M t) e1 = 1) then 1 else 0) hl_sequentially = 1)) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8232 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8232 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ~ g x = h x then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27614 / ABSOLUTELY_CONTINUOUS_IMP_PATH   (hash md5:ab757aa3017a58807f45abc029e6ce79)
Theorem hlt_ABSOLUTELY_CONTINUOUS_IMP_PATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_absolutely_continuous_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_path N g = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27620 / ABSOLUTELY_CONTINUOUS_IMP_RECTIFIABLE_PATH   (hash md5:779ec9eb9cde334a95f8b04982eb4035)
Theorem hlt_ABSOLUTELY_CONTINUOUS_IMP_RECTIFIABLE_PATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_absolutely_continuous_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_rectifiable_path N g = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27628 / ABSOLUTELY_INTEGRABLE_VECTOR_DERIVATIVE_ABSOLUTELY_CONTINUOUS   (hash md5:822550ba63c37da975ae6f9f40f5a364)
Theorem hlt_ABSOLUTELY_INTEGRABLE_VECTOR_DERIVATIVE_ABSOLUTELY_CONTINUOUS : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_absolutely_continuous_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_absolutely_integrable_on 1 N (fun t :e hl_ty_cart R 1 => hl_vector_derivative N g (hl_at 1 t)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27673 / ABSOLUTELY_CONTINUOUS_REVERSEPATH   (hash md5:f89335f7a57bb21599ddf9a3619adac4)
Theorem hlt_ABSOLUTELY_CONTINUOUS_REVERSEPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_absolutely_continuous_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_absolutely_continuous_on N (hl_reversepath N g) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27721 / ABSOLUTELY_CONTINUOUS_JOINPATHS   (hash md5:8c23e8c54f63adb751b43c92c1c33928)
Theorem hlt_ABSOLUTELY_CONTINUOUS_JOINPATHS : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N g1 = hl_pathstart N g2 /\ (hl_absolutely_continuous_on N g1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_absolutely_continuous_on N g2 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_absolutely_continuous_on N (hl_poly_add (hl_ty_cart R N) g1 g2) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:27868 / FUBINI_MEASURE   (hash md5:1d2779a4c19c451e4363aaf44b8d2b12)
Theorem hlt_FUBINI_MEASURE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_measurable (hl_ty_finite_sum M N) s = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8318 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8318 (if ~ hl_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8317 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8317 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) y = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_has_integral M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_measure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8319 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8319 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) y = 1 then 1 else 0)))) (hl_lift (hl_measure (hl_ty_finite_sum M N) s)) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28335 / FUBINI_MEASURE_ALT   (hash md5:bf19a151909153cca0f389c02402d447)
Theorem hlt_FUBINI_MEASURE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_measurable (hl_ty_finite_sum M N) s = 1 -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8321 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8321 (if ~ hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8320 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8320 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) x = 1 then 1 else 0)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1 /\ hl_has_integral N 1 (fun y :e hl_ty_cart R N => hl_lift (hl_measure M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8322 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8322 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) x = 1 then 1 else 0)))) (hl_lift (hl_measure (hl_ty_finite_sum M N) s)) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28359 / FUBINI_LEBESGUE_MEASURABLE   (hash md5:eb5bbd4eb5b05537267d4056bab48fae)
Theorem hlt_FUBINI_LEBESGUE_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_lebesgue_measurable (hl_ty_finite_sum M N) s = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8328 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8328 (if ~ hl_lebesgue_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8327 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8327 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) y = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28387 / FUBINI_LEBESGUE_MEASURABLE_ALT   (hash md5:789d6e5bcd49baefc22458878107aaa1)
Theorem hlt_FUBINI_LEBESGUE_MEASURABLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_lebesgue_measurable (hl_ty_finite_sum M N) s = 1 -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8334 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8334 (if ~ hl_lebesgue_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8333 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8333 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) x = 1 then 1 else 0)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28415 / FUBINI_NEGLIGIBLE   (hash md5:d7b7a86558303c977efd648756fc54e4)
Theorem hlt_FUBINI_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_negligible (hl_ty_finite_sum M N) s = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8341 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8341 (if ~ hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8340 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8340 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) y = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28440 / FUBINI_NEGLIGIBLE_ALT   (hash md5:e477517a08fd46a901ac63cac17bd441)
Theorem hlt_FUBINI_NEGLIGIBLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_negligible (hl_ty_finite_sum M N) s = 1 -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8343 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8343 (if ~ hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8342 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8342 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) x = 1 then 1 else 0)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28462 / NEGLIGIBLE_PCROSS   (hash md5:1e70bd72ff88142a596920083b183c19)
Theorem hlt_NEGLIGIBLE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_negligible (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> hl_negligible M s = 1 \/ hl_negligible N t = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28590 / FUBINI_TONELLI_MEASURE   (hash md5:e6b1a82f8019ccfe0e893396d829da01)
Theorem hlt_FUBINI_TONELLI_MEASURE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_lebesgue_measurable (hl_ty_finite_sum M N) s = 1 -> (hl_measurable (hl_ty_finite_sum M N) s = 1 <-> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8355 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8355 (if ~ hl_measurable N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8354 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8354 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) y = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_measure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8356 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8356 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) y = 1 then 1 else 0)))) (hl_UNIV (hl_ty_cart R M)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:28627 / FUBINI_TONELLI_MEASURE_ALT   (hash md5:77f81da6962b12793f13829d7668acff)
Theorem hlt_FUBINI_TONELLI_MEASURE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_lebesgue_measurable (hl_ty_finite_sum M N) s = 1 -> (hl_measurable (hl_ty_finite_sum M N) s = 1 <-> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8358 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8358 (if ~ hl_measurable M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8357 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8357 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) x = 1 then 1 else 0)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1 /\ hl_integrable_on N 1 (fun y :e hl_ty_cart R N => hl_lift (hl_measure M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8359 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8359 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) x = 1 then 1 else 0)))) (hl_UNIV (hl_ty_cart R N)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:28654 / FUBINI_TONELLI_NEGLIGIBLE   (hash md5:15d2fcefe984e14fb4257f265b9f669e)
Theorem hlt_FUBINI_TONELLI_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_lebesgue_measurable (hl_ty_finite_sum M N) s = 1 -> (hl_negligible (hl_ty_finite_sum M N) s = 1 <-> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8363 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8363 (if ~ hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8362 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8362 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) y = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:28681 / FUBINI_TONELLI_NEGLIGIBLE_ALT   (hash md5:3a0474252be5ac3047fa2c2e4beeaf74)
Theorem hlt_FUBINI_TONELLI_NEGLIGIBLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_lebesgue_measurable (hl_ty_finite_sum M N) s = 1 -> (hl_negligible (hl_ty_finite_sum M N) s = 1 <-> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8365 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8365 (if ~ hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8364 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8364 (hl_IN (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N x y) s) x = 1 then 1 else 0)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:28707 / LEBESGUE_MEASURABLE_PCROSS   (hash md5:68340ac9b7f7c0bee31b1943a5158d52)
Theorem hlt_LEBESGUE_MEASURABLE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> hl_negligible M s = 1 \/ (hl_negligible N t = 1 \/ hl_lebesgue_measurable M s = 1 /\ hl_lebesgue_measurable N t = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:28788 / MEASURABLE_PCROSS   (hash md5:2928702b2926fa8f87f651e582d3c500)
Theorem hlt_MEASURABLE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> hl_negligible M s = 1 \/ (hl_negligible N t = 1 \/ hl_measurable M s = 1 /\ hl_measurable N t = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:28818 / HAS_MEASURE_PCROSS   (hash md5:aa3e3f76f122d7b741e2833ce04a0e1e)
Theorem hlt_HAS_MEASURE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall a b :e R, hl_has_measure M s a = 1 /\ hl_has_measure N t b = 1 -> hl_has_measure (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) (hl_real_mul a b) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28847 / MEASURE_PCROSS   (hash md5:7c5f4519913f60ad311d0f77ce72377e)
Theorem hlt_MEASURE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_measurable M s = 1 /\ hl_measurable N t = 1 -> hl_measure (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = hl_real_mul (hl_measure M s) (hl_measure N t).
Admitted.

// HOL Light: Multivariate/measure.ml:28857 / LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LE   (hash md5:904999af3c3babca218c43c8814ec37c)
Theorem hlt_LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e omega, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_lebesgue_measurable (hl_ty_finite_sum M N) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_8392 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart R M, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_8392 (hl_real_le (hl_vindex R N y k) (hl_vindex R N (f x) k)) (hl_pastecart R M N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:28895 / LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LT   (hash md5:8b984f309231354970ec0f6990022e7a)
Theorem hlt_LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e omega, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_lebesgue_measurable (hl_ty_finite_sum M N) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_8393 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart R M, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_8393 (hl_real_lt (hl_vindex R N y k) (hl_vindex R N (f x) k)) (hl_pastecart R M N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29012 / NEGLIGIBLE_MEASURABLE_FUNCTION_GRAPH   (hash md5:db3ac2ab8d74e20fc8f9a00130718b2a)
Theorem hlt_NEGLIGIBLE_MEASURABLE_FUNCTION_GRAPH : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_negligible (hl_ty_finite_sum M N) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) (fun GEN_PVAR_8423 :e hl_ty_cart R (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart R M, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum M N)) GEN_PVAR_8423 (if f x = y then 1 else 0) (hl_pastecart R M N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29065 / MEASURABLE_IFF_LEBESGUE_MEASURABLE_UNDER_CURVE   (hash md5:904c6f798b828305135a16113c54edb3)
Theorem hlt_MEASURABLE_IFF_LEBESGUE_MEASURABLE_UNDER_CURVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1) -> (hl_measurable_on N 1 f (hl_UNIV (hl_ty_cart R N)) = 1 <-> hl_lebesgue_measurable (hl_ty_finite_sum N 1) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) (fun GEN_PVAR_8430 :e hl_ty_cart R (hl_ty_finite_sum N 1) => if exists x :e hl_ty_cart R N, exists y :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) GEN_PVAR_8430 (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (f x)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_pastecart R N 1 x y) = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:29100 / INTEGRABLE_IFF_MEASURABLE_UNDER_CURVE   (hash md5:25a95dd74074b35d95cfd90b265379d1)
Theorem hlt_INTEGRABLE_IFF_MEASURABLE_UNDER_CURVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1) -> (hl_integrable_on N 1 f (hl_UNIV (hl_ty_cart R N)) = 1 <-> hl_measurable (hl_ty_finite_sum N 1) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) (fun GEN_PVAR_8436 :e hl_ty_cart R (hl_ty_finite_sum N 1) => if exists x :e hl_ty_cart R N, exists y :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) GEN_PVAR_8436 (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (f x)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_pastecart R N 1 x y) = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:29130 / HAS_INTEGRAL_MEASURE_UNDER_CURVE   (hash md5:1584523c723a3a8e556f025c9de9501b)
Theorem hlt_HAS_INTEGRAL_MEASURE_UNDER_CURVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall m :e R, (forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1) -> (hl_has_integral N 1 f (hl_lift m) (hl_UNIV (hl_ty_cart R N)) = 1 <-> hl_has_measure (hl_ty_finite_sum N 1) (hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) (fun GEN_PVAR_8438 :e hl_ty_cart R (hl_ty_finite_sum N 1) => if exists x :e hl_ty_cart R N, exists y :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) GEN_PVAR_8438 (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (f x)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_pastecart R N 1 x y) = 1 then 1 else 0)) m = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:29152 / MEASURABLE_ON_COMPOSE_FSTCART   (hash md5:dce371b429253adcb8e6320cd0db15d1)
Theorem hlt_MEASURABLE_ON_COMPOSE_FSTCART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R M, hl_measurable_on M P f (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_measurable_on (hl_ty_finite_sum M N) P (fun z :e hl_ty_cart R (hl_ty_finite_sum M N) => f (hl_fstcart R M N z)) (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29169 / MEASURABLE_ON_COMPOSE_SNDCART   (hash md5:870246c6f87d9a4309c74bff63e61201)
Theorem hlt_MEASURABLE_ON_COMPOSE_SNDCART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, hl_measurable_on N P f (hl_UNIV (hl_ty_cart R N)) = 1 -> hl_measurable_on (hl_ty_finite_sum M N) P (fun z :e hl_ty_cart R (hl_ty_finite_sum M N) => f (hl_sndcart R M N z)) (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29186 / MEASURABLE_ON_COMPOSE_SUB   (hash md5:8cd057f10f2b56a0b9de63edab6938c7)
Theorem hlt_MEASURABLE_ON_COMPOSE_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_measurable_on (hl_ty_finite_sum M M) N (fun z :e hl_ty_cart R (hl_ty_finite_sum M M) => f (hl_vector_sub M (hl_fstcart R M M z) (hl_sndcart R M M z))) (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M M))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29219 / FUBINI_ABSOLUTELY_INTEGRABLE   (hash md5:1ed7c0ea75376bc0be81977c39e1b67b)
Theorem hlt_FUBINI_ABSOLUTELY_INTEGRABLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8452 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8452 (if ~ hl_absolutely_integrable_on N P (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y)) (hl_UNIV (hl_ty_cart R N)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_has_integral M P (fun x :e hl_ty_cart R M => hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y))) (hl_integral (hl_ty_finite_sum M N) P (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) f) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29384 / FUBINI_ABSOLUTELY_INTEGRABLE_ALT   (hash md5:7de5f9bb9803156ab05d42e7f678a461)
Theorem hlt_FUBINI_ABSOLUTELY_INTEGRABLE_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8453 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8453 (if ~ hl_absolutely_integrable_on M P (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y)) (hl_UNIV (hl_ty_cart R M)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1 /\ hl_has_integral N P (fun y :e hl_ty_cart R N => hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y))) (hl_integral (hl_ty_finite_sum M N) P (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) f) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29399 / FUBINI_INTEGRAL   (hash md5:59eb46bda64cabbf42bdfe7dc9da4487)
Theorem hlt_FUBINI_INTEGRAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_integral (hl_ty_finite_sum M N) P (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) f = hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29408 / FUBINI_INTEGRAL_ALT   (hash md5:791ea42ebc3607b1d9db185bad4e3ea8)
Theorem hlt_FUBINI_INTEGRAL_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_integral (hl_ty_finite_sum M N) P (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) f = hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29417 / FUBINI_HAS_ABSOLUTE_INTEGRAL   (hash md5:dbb65fdf4c61f4716ab104ebe6946e50)
Theorem hlt_FUBINI_HAS_ABSOLUTE_INTEGRAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8456 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8456 (if ~ hl_absolutely_integrable_on N P (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y)) (hl_UNIV (hl_ty_cart R N)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 /\ (hl_absolutely_integrable_on M P (fun x :e hl_ty_cart R M => hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y))) (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y))) = hl_integral (hl_ty_finite_sum M N) P (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) f).
Admitted.

// HOL Light: Multivariate/measure.ml:29470 / FUBINI_HAS_ABSOLUTE_INTEGRAL_ALT   (hash md5:370b94b695919dec95b64b91e9c7c6cd)
Theorem hlt_FUBINI_HAS_ABSOLUTE_INTEGRAL_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8459 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8459 (if ~ hl_absolutely_integrable_on M P (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y)) (hl_UNIV (hl_ty_cart R M)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1 /\ (hl_absolutely_integrable_on N P (fun y :e hl_ty_cart R N => hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y))) (hl_UNIV (hl_ty_cart R N)) = 1 /\ hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y))) = hl_integral (hl_ty_finite_sum M N) P (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) f).
Admitted.

// HOL Light: Multivariate/measure.ml:29523 / FUBINI_INTEGRAL_SWAP   (hash md5:757e7d66a5e8e5ec2f04a893a3c337d0)
Theorem hlt_FUBINI_INTEGRAL_SWAP : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y))) = hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29531 / FUBINI_HAS_INTEGRAL_SWAP   (hash md5:410d439541bea4efe94ee2415199d99d)
Theorem hlt_FUBINI_HAS_INTEGRAL_SWAP : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_has_integral M P (fun x :e hl_ty_cart R M => hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y))) (hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y)))) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29542 / FUBINI_HAS_INTEGRAL_SWAP_ALT   (hash md5:c791a7744d7d90e4a7a5edd3c3066bed)
Theorem hlt_FUBINI_HAS_INTEGRAL_SWAP_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> hl_has_integral N P (fun y :e hl_ty_cart R N => hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y))) (hl_integral M P (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => hl_integral N P (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y)))) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29553 / FUBINI_INTEGRAL_INTERVAL   (hash md5:69850ffda45c6ed728e045fa015a2c76)
Theorem hlt_FUBINI_INTEGRAL_INTERVAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) = 1 -> hl_integral (hl_ty_finite_sum M N) P (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) f = hl_integral M P (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_integral N P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29570 / FUBINI_INTEGRAL_INTERVAL_ALT   (hash md5:3270e0ee47f7e415a3e8097ff99eeebb)
Theorem hlt_FUBINI_INTEGRAL_INTERVAL_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) = 1 -> hl_integral (hl_ty_finite_sum M N) P (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) f = hl_integral N P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (fun y :e hl_ty_cart R N => hl_integral M P (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29587 / INTEGRAL_PASTECART_CONTINUOUS   (hash md5:f010b64977930dc246833cb89a326c1a)
Theorem hlt_INTEGRAL_PASTECART_CONTINUOUS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_continuous_on (hl_ty_finite_sum M N) P f (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) = 1 -> hl_integral (hl_ty_finite_sum M N) P (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) f = hl_integral M P (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_integral N P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29596 / INTEGRAL_SWAP_CONTINUOUS   (hash md5:fc11a136671fb764917cbfbf1abb05b1)
Theorem hlt_INTEGRAL_SWAP_CONTINUOUS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_continuous_on (hl_ty_finite_sum M N) P (fun z :e hl_ty_cart R (hl_ty_finite_sum M N) => f (hl_fstcart R M N z) (hl_sndcart R M N z)) (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) = 1 -> hl_integral M P (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_integral N P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (f x)) = hl_integral N P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (fun y :e hl_ty_cart R N => hl_integral M P (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => f x y)).
Admitted.

// HOL Light: Multivariate/measure.ml:29611 / FUBINI_TONELLI   (hash md5:24744f8e5f4804d48d850a8269f2b465)
Theorem hlt_FUBINI_TONELLI : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_measurable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> (hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 <-> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8464 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8464 (if ~ hl_absolutely_integrable_on N P (fun y :e hl_ty_cart R N => f (hl_pastecart R M N x y)) (hl_UNIV (hl_ty_cart R N)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_integral N 1 (hl_UNIV (hl_ty_cart R N)) (fun y :e hl_ty_cart R N => hl_lift (hl_vector_norm P (f (hl_pastecart R M N x y))))) (hl_UNIV (hl_ty_cart R M)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:29737 / FUBINI_TONELLI_ALT   (hash md5:602dae363ba54c964b8bec5d286e0ea4)
Theorem hlt_FUBINI_TONELLI_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_measurable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 -> (hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f (hl_UNIV (hl_ty_cart R (hl_ty_finite_sum M N))) = 1 <-> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8465 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8465 (if ~ hl_absolutely_integrable_on M P (fun x :e hl_ty_cart R M => f (hl_pastecart R M N x y)) (hl_UNIV (hl_ty_cart R M)) = 1 then 1 else 0) y = 1 then 1 else 0)) = 1 /\ hl_integrable_on N 1 (fun y :e hl_ty_cart R N => hl_integral M 1 (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm P (f (hl_pastecart R M N x y))))) (hl_UNIV (hl_ty_cart R N)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:29765 / HAS_DOUBLE_INTEGRAL_PCROSS   (hash md5:3ca9e712a8591d0f66f59f5e611640b2)
Theorem hlt_HAS_DOUBLE_INTEGRAL_PCROSS : forall M N P Q R:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> R <> Empty -> forall bop :e hl_ty_cart R R :^: hl_ty_cart R Q :^: hl_ty_cart R P, forall f :e hl_ty_cart R P :^: hl_ty_cart R M, forall g :e hl_ty_cart R Q :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_bilinear P Q R bop = 1 /\ (hl_absolutely_integrable_on M P f s = 1 /\ hl_absolutely_integrable_on N Q g t = 1) -> hl_has_integral (hl_ty_finite_sum M N) R (fun z :e hl_ty_cart R (hl_ty_finite_sum M N) => bop (f (hl_fstcart R M N z)) (g (hl_sndcart R M N z))) (bop (hl_integral M P s f) (hl_integral N Q t g)) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:29890 / FUBINI_NEGLIGIBLE_REPLACEMENTS   (hash md5:901f0166824485cf654dea007dece6ec)
Theorem hlt_FUBINI_NEGLIGIBLE_REPLACEMENTS : forall N:set, N <> Empty -> forall k :e omega, forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> (hl_negligible N s = 1 <-> hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8473 :e hl_ty_cart R 1 => if exists a :e R, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8473 (if ~ hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8472 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8472 (hl_IN (hl_ty_cart R N) (hl_lambda R N (fun i :e omega => hl_COND R (if i = k then 1 else 0) a (hl_vindex R N x i))) s) x = 1 then 1 else 0)) = 1 then 1 else 0) (hl_lift a) = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:30025 / FUBINI_NEGLIGIBLE_REPLACEMENTS_ALT   (hash md5:f90ea56961c45912867f4052bb24f109)
Theorem hlt_FUBINI_NEGLIGIBLE_REPLACEMENTS_ALT : forall N:set, N <> Empty -> forall k :e omega, forall s :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> (hl_negligible N s = 1 <-> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8480 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8480 (if ~ hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8479 :e hl_ty_cart R 1 => if exists a :e R, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8479 (hl_IN (hl_ty_cart R N) (hl_lambda R N (fun i :e omega => hl_COND R (if i = k then 1 else 0) a (hl_vindex R N x i))) s) (hl_lift a) = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:30158 / FUBINI_NEGLIGIBLE_OFFSET   (hash md5:1a2d4584241ac65d89f03d7d456c539a)
Theorem hlt_FUBINI_NEGLIGIBLE_OFFSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall v :e hl_ty_cart R N, hl_lebesgue_measurable N s = 1 -> (hl_negligible N s = 1 <-> hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8493 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8493 (if ~ hl_negligible 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_8492 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_8492 (hl_IN (hl_ty_cart R N) (hl_vector_add N x (hl_vmul N (hl_drop t) v)) s) t = 1 then 1 else 0)) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/measure.ml:30250 / HAS_INTEGRAL_CONVOLUTION_SYM   (hash md5:6805630cdda570633e35e392f91abab6)
Theorem hlt_HAS_INTEGRAL_CONVOLUTION_SYM : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall i :e hl_ty_cart R Q, forall x :e hl_ty_cart R M, hl_has_integral M Q (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) i (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_has_integral M Q (fun y :e hl_ty_cart R M => bop (f y) (g (hl_vector_sub M x y))) i (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30263 / INTEGRABLE_CONVOLUTION_SYM   (hash md5:b208cc051c43bd40bdf22e1c24ca3405)
Theorem hlt_INTEGRABLE_CONVOLUTION_SYM : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_integrable_on M Q (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_integrable_on M Q (fun y :e hl_ty_cart R M => bop (f y) (g (hl_vector_sub M x y))) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30269 / INTEGRAL_CONVOLUTION_SYM   (hash md5:367256922fd8bd02ccfb0c1d3dedde59)
Theorem hlt_INTEGRAL_CONVOLUTION_SYM : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_integral M Q (hl_UNIV (hl_ty_cart R M)) (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) = hl_integral M Q (hl_UNIV (hl_ty_cart R M)) (fun y :e hl_ty_cart R M => bop (f y) (g (hl_vector_sub M x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:30275 / ABSOLUTELY_INTEGRABLE_CONVOLUTION_SYM   (hash md5:55d6fe4590f50cc4bd0894f7b740bc61)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CONVOLUTION_SYM : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_absolutely_integrable_on M Q (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_absolutely_integrable_on M Q (fun y :e hl_ty_cart R M => bop (f y) (g (hl_vector_sub M x y))) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30287 / MEASURABLE_ON_CONVOLUTION   (hash md5:8c120b07e3aff3f6faf0ef604ecd9768)
Theorem hlt_MEASURABLE_ON_CONVOLUTION : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_measurable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1) -> hl_measurable_on M Q (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30451 / DOUBLE_INTEGRABLE_CONVOLUTION   (hash md5:90e8e96301eb02e1c543fa6e624449d4)
Theorem hlt_DOUBLE_INTEGRABLE_CONVOLUTION : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_absolutely_integrable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1) -> hl_integrable_on M Q (fun x :e hl_ty_cart R M => hl_integral M Q (hl_UNIV (hl_ty_cart R M)) (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y))) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30462 / DOUBLE_INTEGRAL_CONVOLUTION   (hash md5:1facd42f358d560cb3ad0d60e4899c82)
Theorem hlt_DOUBLE_INTEGRAL_CONVOLUTION : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_absolutely_integrable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1) -> hl_integral M Q (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => hl_integral M Q (hl_UNIV (hl_ty_cart R M)) (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y))) = bop (hl_integral M N (hl_UNIV (hl_ty_cart R M)) f) (hl_integral M P (hl_UNIV (hl_ty_cart R M)) g).
Admitted.

// HOL Light: Multivariate/measure.ml:30473 / ABSOLUTELY_INTEGRABLE_CONVOLUTION_L2   (hash md5:3dcf68a26b3a7fa4b37f08f0d32530b7)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CONVOLUTION_L2 : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_measurable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_absolutely_integrable_on M 1 (fun x1 :e hl_ty_cart R M => hl_lift (hl_real_pow (hl_vector_norm N (f x1)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_absolutely_integrable_on M 1 (fun x1 :e hl_ty_cart R M => hl_lift (hl_real_pow (hl_vector_norm P (g x1)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_UNIV (hl_ty_cart R M)) = 1))) -> hl_absolutely_integrable_on M Q (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30505 / ABSOLUTELY_INTEGRABLE_CONVOLUTION_L1_LINF   (hash md5:6c73175c26eca5a862e3ce7a7ace408c)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CONVOLUTION_L1_LINF : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_measurable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_bounded P (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) g (hl_UNIV (hl_ty_cart R M))) = 1)) -> hl_absolutely_integrable_on M Q (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30536 / ABSOLUTELY_INTEGRABLE_CONVOLUTION_LINF_L1   (hash md5:fe90a99b4aa76fda60b70d4e9f95efcf)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CONVOLUTION_LINF_L1 : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_bounded N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R M))) = 1 /\ hl_absolutely_integrable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1)) -> hl_absolutely_integrable_on M Q (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y)) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30549 / CONTINUOUS_ON_CONVOLUTION_L1_LINF   (hash md5:c083a835131c001cd2a7eb3586d7033b)
Theorem hlt_CONTINUOUS_ON_CONVOLUTION_L1_LINF : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_measurable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_bounded P (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R P) g (hl_UNIV (hl_ty_cart R M))) = 1)) -> hl_continuous_on M Q (fun x :e hl_ty_cart R M => hl_integral M Q (hl_UNIV (hl_ty_cart R M)) (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y))) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30622 / CONTINUOUS_ON_CONVOLUTION_LINF_L1   (hash md5:8cd92e4b6db0f8fd2c3cf82c214eba42)
Theorem hlt_CONTINUOUS_ON_CONVOLUTION_LINF_L1 : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop :e hl_ty_cart R Q :^: hl_ty_cart R P :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, hl_bilinear N P Q bop = 1 /\ (hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ (hl_bounded N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_UNIV (hl_ty_cart R M))) = 1 /\ hl_absolutely_integrable_on M P g (hl_UNIV (hl_ty_cart R M)) = 1)) -> hl_continuous_on M Q (fun x :e hl_ty_cart R M => hl_integral M Q (hl_UNIV (hl_ty_cart R M)) (fun y :e hl_ty_cart R M => bop (f (hl_vector_sub M x y)) (g y))) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30640 / STEINHAUS_SUMS   (hash md5:1abb8e21cb103a3bec0bbe6d50790741)
Theorem hlt_STEINHAUS_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ (~ hl_negligible N s = 1 /\ (hl_lebesgue_measurable N t = 1 /\ ~ hl_negligible N t = 1)) -> ~ hl_interior N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8495 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8495 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/measure.ml:30715 / STEINHAUS_DIFFS   (hash md5:d9a08f08d18630c90a4ac751b2a17d88)
Theorem hlt_STEINHAUS_DIFFS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lebesgue_measurable N s = 1 /\ (~ hl_negligible N s = 1 /\ (hl_lebesgue_measurable N t = 1 /\ ~ hl_negligible N t = 1)) -> ~ hl_interior N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_8498 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_8498 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_sub N x y) = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/measure.ml:30733 / MIDPOINT_CONVEX_IMP_CONTINUOUS_OSTROWSKI   (hash md5:21197a95e7f43e1c7add2ad1df54c688)
Theorem hlt_MIDPOINT_CONVEX_IMP_CONTINUOUS_OSTROWSKI : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, forall B :e R, hl_convex N s = 1 /\ (hl_open N s = 1 /\ ((forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_lebesgue_measurable N t = 1 /\ (~ hl_negligible N t = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_le (f x) B = 1)))))) -> hl_continuous_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30960 / MIDPOINT_CONVEX_IMP_CONVEX_OSTROWSKI   (hash md5:cb2dd6788d09e627bc5847baf19cf5a8)
Theorem hlt_MIDPOINT_CONVEX_IMP_CONVEX_OSTROWSKI : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, forall B :e R, hl_convex N s = 1 /\ (hl_open N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_lebesgue_measurable N t = 1 /\ (~ hl_negligible N t = 1 /\ ((forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_le (f x) B = 1)))))) -> hl_convex_on N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:30973 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONTINUOUS   (hash md5:4a4dd314a4865d9e7b7eca6a66ecda34)
Theorem hlt_MEASURABLE_MIDPOINT_CONVEX_IMP_CONTINUOUS : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) s = 1 /\ (hl_open N s = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) -> hl_continuous_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31013 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_GEN   (hash md5:8b6a66cce8566e757fceec783c76dc26)
Theorem hlt_MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_GEN : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) s = 1 /\ (hl_convex N s = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) -> forall x y :e hl_ty_cart R N, forall u v :e R, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ (hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_frontier N s) = 1 -> x = y))))) -> hl_real_le (f (hl_vector_add N (hl_vmul N u x) (hl_vmul N v y))) (hl_real_add (hl_real_mul u (f x)) (hl_real_mul v (f y))) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31142 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_OPEN   (hash md5:c9004311c925470064645e5592b0ca04)
Theorem hlt_MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_OPEN : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_measurable_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) s = 1 /\ (hl_convex N s = 1 /\ (hl_open N s = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1))) -> hl_convex_on N f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31156 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_1D   (hash md5:d3c1b4f03325d43ae54eb5d879d181a8)
Theorem hlt_MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_1D : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_measurable_on 1 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) s = 1 /\ (hl_convex 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> hl_real_le (f (hl_midpoint 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) -> hl_convex_on 1 f s = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31172 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_CBALL   (hash md5:ad8d57d3e1f7c1504dc72197b15ba3d0)
Theorem hlt_MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_CBALL : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_measurable_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1 -> hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) -> hl_convex_on N f (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31196 / OSTROWSKI_THEOREM   (hash md5:a2727d6ff2d8a78caf9f95f946da3325)
Theorem hlt_OSTROWSKI_THEOREM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall B :e R, forall s :e 2 :^: hl_ty_cart R M, (forall x y :e hl_ty_cart R M, f (hl_vector_add M x y) = hl_vector_add N (f x) (f y)) /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) B = 1) /\ (hl_measurable M s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_measure M s) = 1)) -> hl_linear M N f = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31227 / MEASURABLE_ADDITIVE_IMP_LINEAR   (hash md5:22ff49fed8118d485bce1fad5f602b73)
Theorem hlt_MEASURABLE_ADDITIVE_IMP_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_measurable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ (forall x y :e hl_ty_cart R M, f (hl_vector_add M x y) = hl_vector_add N (f x) (f y)) -> hl_linear M N f = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31261 / CONTINUOUS_ADDITIVE_IMP_LINEAR   (hash md5:ea6aab2bca0609cd5566c9adfce6699b)
Theorem hlt_CONTINUOUS_ADDITIVE_IMP_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ (forall x y :e hl_ty_cart R M, f (hl_vector_add M x y) = hl_vector_add N (f x) (f y)) -> hl_linear M N f = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31273 / RADEMACHER_UNIV   (hash md5:46fab0ffa25ff0828704f8ca4d497a9a)
Theorem hlt_RADEMACHER_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (exists B :e R, forall x y :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8578 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8578 (if ~ hl_differentiable M N f (hl_at M x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31740 / RADEMACHER   (hash md5:b355d6fe16db5607202c2122c70b2bd4)
Theorem hlt_RADEMACHER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8579 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8579 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ~ hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31759 / RADEMACHER_OPEN   (hash md5:b536f311a62c054946c4e71be7b68312)
Theorem hlt_RADEMACHER_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_open M s = 1 /\ (exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8582 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8582 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ~ hl_differentiable M N f (hl_at M x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31772 / RADEMACHER_GEN   (hash md5:f91857817aba0b7b1fdbe1732c1fcbea)
Theorem hlt_RADEMACHER_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_frontier M s) = 1 /\ (exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8584 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8584 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ~ hl_differentiable M N f (hl_at M x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:31792 / STEPANOV_GEN   (hash md5:70ea35763839f719b9462cce9d9c9a2c)
Theorem hlt_STEPANOV_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_lebesgue_measurable M s = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8616 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8616 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ((exists B :e R, hl_eventually (hl_ty_cart R M) (fun y :e hl_ty_cart R M => hl_real_le (hl_real_div (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_vector_norm M (hl_vector_sub M x y))) B) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) /\ ~ hl_differentiable M N f (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:32242 / STEPANOV   (hash md5:b822cade319dfd47ab77371429b27a58)
Theorem hlt_STEPANOV : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_open M s = 1 -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8620 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8620 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ((exists B :e R, hl_eventually (hl_ty_cart R M) (fun y :e hl_ty_cart R M => hl_real_le (hl_real_div (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_vector_norm M (hl_vector_sub M x y))) B) (hl_at M x) = 1) /\ ~ hl_differentiable M N f (hl_at M x) = 1) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/measure.ml:32258 / STEPANOV_UNIV   (hash md5:f43570a020540f46d0ffa9fa758d79fe)
Theorem hlt_STEPANOV_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_8621 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_8621 (if (exists B :e R, hl_eventually (hl_ty_cart R M) (fun y :e hl_ty_cart R M => hl_real_le (hl_real_div (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_vector_norm M (hl_vector_sub M x y))) B) (hl_at M x) = 1) /\ ~ hl_differentiable M N f (hl_at M x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

