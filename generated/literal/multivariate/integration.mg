// hol2mg literal statements (private): shard integration of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/integration.ml:17 / INTERIOR_SUBSET_UNION_INTERVALS   (hash md5:91df840401b19ff790b905dfa8d84b9e)
Theorem hlt_INTERIOR_SUBSET_UNION_INTERVALS : forall N:set, N <> Empty -> forall s i j :e 2 :^: hl_ty_cart R N, (exists a b :e hl_ty_cart R N, i = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ ((exists c d :e hl_ty_cart R N, j = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ (~ hl_interior N j = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) i (hl_UNION (hl_ty_cart R N) j s) = 1 /\ hl_INTER (hl_ty_cart R N) (hl_interior N i) (hl_interior N j) = hl_EMPTY (hl_ty_cart R N)))) -> hl_SUBSET (hl_ty_cart R N) (hl_interior N i) (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:33 / INTER_INTERIOR_UNIONS_INTERVALS   (hash md5:9223ddbd14a871ac4fe404ea78845860)
Theorem hlt_INTER_INTERIOR_UNIONS_INTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_open N s = 1 /\ ((forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t f = 1 -> exists a b :e hl_ty_cart R N, t = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ (forall t :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) t f = 1 -> hl_INTER (hl_ty_cart R N) s (hl_interior N t) = hl_EMPTY (hl_ty_cart R N)))) -> hl_INTER (hl_ty_cart R N) s (hl_interior N (hl_UNIONS (hl_ty_cart R N) f)) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/integration.ml:123 / ITERATE_NONZERO_IMAGE_LEMMA   (hash md5:dca900646e98e18993e1ba8da51e40d3)
Theorem hlt_ITERATE_NONZERO_IMAGE_LEMMA : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, forall s :e 2 :^: B, forall f :e A :^: B, forall g :e C :^: A, forall a :e A, hl_monoidal C op = 1 /\ (hl_FINITE B s = 1 /\ (g a = hl_neutral C op /\ (forall x y :e B, hl_IN B x s = 1 /\ (hl_IN B y s = 1 /\ (f x = f y /\ ~ x = y)) -> g (f x) = hl_neutral C op))) -> hl_iterate C A op (hl_GSPEC A (fun GEN_PVAR_6125 :e A => if exists x :e B, hl_SETSPEC A GEN_PVAR_6125 (if hl_IN B x s = 1 /\ ~ f x = a then 1 else 0) (f x) = 1 then 1 else 0)) g = hl_iterate C B op s (hl_o A C B g f).
Admitted.

// HOL Light: Multivariate/integration.ml:151 / interval_upperbound   (hash md5:c5e20bcaf19d4ee4fbb7b4d8cfb3a4a2)
Theorem hlt_interval_upperbound_thm : forall M:set, M <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_interval_upperbound M s = hl_lambda R M (fun i :e omega => hl_sup (hl_GSPEC R (fun GEN_PVAR_6126 :e R => if exists a :e R, hl_SETSPEC R GEN_PVAR_6126 (if exists x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_vindex R M x i = a then 1 else 0) a = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/integration.ml:155 / interval_lowerbound   (hash md5:4d5be66c7d2eae66ad88b86bfc05e70e)
Theorem hlt_interval_lowerbound_thm : forall M:set, M <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_interval_lowerbound M s = hl_lambda R M (fun i :e omega => hl_inf (hl_GSPEC R (fun GEN_PVAR_6127 :e R => if exists a :e R, hl_SETSPEC R GEN_PVAR_6127 (if exists x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_vindex R M x i = a then 1 else 0) a = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/integration.ml:159 / INTERVAL_UPPERBOUND   (hash md5:69778a159b049cfa8880f820b30d48b1)
Theorem hlt_INTERVAL_UPPERBOUND : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N b i) = 1) -> hl_interval_upperbound N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = b.
Admitted.

// HOL Light: Multivariate/integration.ml:166 / INTERVAL_LOWERBOUND   (hash md5:17cc1fa3bae5bb58db4700468ef7f76f)
Theorem hlt_INTERVAL_LOWERBOUND : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N b i) = 1) -> hl_interval_lowerbound N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = a.
Admitted.

// HOL Light: Multivariate/integration.ml:173 / INTERVAL_UPPERBOUND_1   (hash md5:7701bd4b703a3780b09b4869d6ab394f)
Theorem hlt_INTERVAL_UPPERBOUND_1 : forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 -> hl_interval_upperbound 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = b.
Admitted.

// HOL Light: Multivariate/integration.ml:177 / INTERVAL_LOWERBOUND_1   (hash md5:321c9b7ad31cb3a56ca58558bc370cf2)
Theorem hlt_INTERVAL_LOWERBOUND_1 : forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 -> hl_interval_lowerbound 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = a.
Admitted.

// HOL Light: Multivariate/integration.ml:181 / INTERVAL_LOWERBOUND_NONEMPTY   (hash md5:446ef07b262ff0fbdabb8ed22ff653dc)
Theorem hlt_INTERVAL_LOWERBOUND_NONEMPTY : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) -> hl_interval_lowerbound N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = a.
Admitted.

// HOL Light: Multivariate/integration.ml:186 / INTERVAL_UPPERBOUND_NONEMPTY   (hash md5:170c6144973ba0a373e1012632e19026)
Theorem hlt_INTERVAL_UPPERBOUND_NONEMPTY : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) -> hl_interval_upperbound N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = b.
Admitted.

// HOL Light: Multivariate/integration.ml:195 / content   (hash md5:830181b559cebe03a485e771901cb696)
Theorem hlt_content_thm : forall M:set, M <> Empty -> forall s :e 2 :^: hl_ty_cart R M, hl_content M s = hl_COND R (if s = hl_EMPTY (hl_ty_cart R M) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) (fun i :e omega => hl_real_sub (hl_vindex R M (hl_interval_upperbound M s) i) (hl_vindex R M (hl_interval_lowerbound M s) i))).
Admitted.

// HOL Light: Multivariate/integration.ml:201 / CONTENT_CLOSED_INTERVAL   (hash md5:68440920b91cd2002722c6375faccdc3)
Theorem hlt_CONTENT_CLOSED_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N b i) = 1) -> hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_sub (hl_vindex R N b i) (hl_vindex R N a i)).
Admitted.

// HOL Light: Multivariate/integration.ml:209 / CONTENT_1   (hash md5:7a7d7c946ae289a8f9e33c4495a17603)
Theorem hlt_CONTENT_1 : forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 -> hl_content 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_real_sub (hl_drop b) (hl_drop a).
Admitted.

// HOL Light: Multivariate/integration.ml:214 / CONTENT_UNIT   (hash md5:af288c80315126cc6a797d8ea1caa6e0)
Theorem hlt_CONTENT_UNIT : forall N:set, N <> Empty -> hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_vec N (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/integration.ml:223 / CONTENT_UNIT_1   (hash md5:145ee89f4a098757434809b8980ab70a)
Theorem hlt_CONTENT_UNIT_1 : hl_content 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/integration.ml:227 / CONTENT_POS_LE   (hash md5:0ce9037163cdda28c130f3944f269330)
Theorem hlt_CONTENT_POS_LE : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:235 / CONTENT_POS_LT   (hash md5:71d3bc3dd096ee328ffd0a3fe9a4521e)
Theorem hlt_CONTENT_POS_LT : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N b i) = 1) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:245 / CONTENT_POS_LT_1   (hash md5:b311d0a6bd403bf49a95504f5da81cbd)
Theorem hlt_CONTENT_POS_LT_1 : forall a b :e hl_ty_cart R 1, hl_real_lt (hl_drop a) (hl_drop b) = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_content 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:249 / CONTENT_EQ_0_GEN   (hash md5:9d1fe3bedb56d5277194add980f5fdba)
Theorem hlt_CONTENT_EQ_0_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> (hl_content N s = hl_real_of_num (hl_NUMERAL hl_zero) <-> exists i :e omega, exists a :e R, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_vindex R N x i = a)).
Admitted.

// HOL Light: Multivariate/integration.ml:271 / CONTENT_EQ_0   (hash md5:57bf08c8a8d73bd5590346fdf3245856)
Theorem hlt_CONTENT_EQ_0 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) <-> exists i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_real_le (hl_vindex R N b i) (hl_vindex R N a i) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:284 / CONTENT_0_SUBSET_GEN   (hash md5:92aa3404d7ef13d4fd32694ce4fd5388)
Theorem hlt_CONTENT_0_SUBSET_GEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_bounded N t = 1 /\ hl_content N t = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_content N s = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:293 / CONTENT_0_SUBSET   (hash md5:1cf1f4118214f220e907127637cb1fc9)
Theorem hlt_CONTENT_0_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_content N s = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:299 / CONTENT_CLOSED_INTERVAL_CASES   (hash md5:c63fa1952f8b21816b7d0cd6fefdf9d6)
Theorem hlt_CONTENT_CLOSED_INTERVAL_CASES : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_COND R (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N b i) = 1 then 1 else 0) (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_real_sub (hl_vindex R N b i) (hl_vindex R N a i))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/integration.ml:309 / CONTENT_EQ_0_INTERIOR   (hash md5:86ecdc6711e56d0e969474ee7e7ebcb3)
Theorem hlt_CONTENT_EQ_0_INTERIOR : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_interior N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/integration.ml:314 / CONTENT_EQ_0_1   (hash md5:0186429ce9d7467e120cf858b4043538)
Theorem hlt_CONTENT_EQ_0_1 : forall a b :e hl_ty_cart R 1, hl_content 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_real_le (hl_drop b) (hl_drop a) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:320 / CONTENT_POS_LT_EQ   (hash md5:bd0055e6435bab1349667e073f1e35e0)
Theorem hlt_CONTENT_POS_LT_EQ : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N b i) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:328 / CONTENT_EMPTY   (hash md5:b3697573e1946dcd52087b73596f6e45)
Theorem hlt_CONTENT_EMPTY : forall A:set, A <> Empty -> hl_content A (hl_EMPTY (hl_ty_cart R A)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:332 / CONTENT_SUBSET   (hash md5:2437c623c8b623ca71185e9e2d37e922)
Theorem hlt_CONTENT_SUBSET : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_real_le (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:353 / CONTENT_LT_NZ   (hash md5:573212028907e42d510aed37937926d5)
Theorem hlt_CONTENT_LT_NZ : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_content A (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))))) = 1 <-> ~ hl_content A (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:357 / INTERVAL_BOUNDS_NULL_1   (hash md5:8a1f778eb989c110eeac318135f42c20)
Theorem hlt_INTERVAL_BOUNDS_NULL_1 : forall a b :e hl_ty_cart R 1, hl_content 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_interval_upperbound 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_interval_lowerbound 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))).
Admitted.

// HOL Light: Multivariate/integration.ml:371 / INTERVAL_BOUNDS_EMPTY_1   (hash md5:add74ad0da36694af70f833ac0acdcda)
Theorem hlt_INTERVAL_BOUNDS_EMPTY_1 : hl_interval_upperbound 1 (hl_EMPTY (hl_ty_cart R 1)) = hl_interval_lowerbound 1 (hl_EMPTY (hl_ty_cart R 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:376 / CONTENT_PASTECART   (hash md5:da0dfc122cc67a1768aa1971fdec6909)
Theorem hlt_CONTENT_PASTECART : forall M N:set, M <> Empty -> N <> Empty -> forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, hl_content (hl_ty_finite_sum M N) (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) = hl_real_mul (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/integration.ml:419 / gauge   (hash md5:7fba3fdef55aa32f7b69ed279d06f3cf)
Theorem hlt_gauge_thm : forall A:set, A <> Empty -> forall d :e 2 :^: hl_ty_cart R A :^: hl_ty_cart R A, hl_gauge A d = 1 <-> forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (d x) = 1 /\ hl_open A (d x) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:422 / GAUGE_BALL_DEPENDENT   (hash md5:772b711a88f9223abe3bb7e335b966c5)
Theorem hlt_GAUGE_BALL_DEPENDENT : forall A:set, A <> Empty -> forall e1 :e R :^: hl_ty_cart R A, (forall x :e hl_ty_cart R A, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (e1 x) = 1) -> hl_gauge A (fun x :e hl_ty_cart R A => hl_ball A (hl_pair (hl_ty_cart R A) R x (e1 x))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:426 / GAUGE_BALL   (hash md5:2796ecd088017a7b9703ec1e3b7f6b84)
Theorem hlt_GAUGE_BALL : forall A:set, A <> Empty -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_gauge A (fun x :e hl_ty_cart R A => hl_ball A (hl_pair (hl_ty_cart R A) R x e1)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:430 / GAUGE_TRIVIAL   (hash md5:aa8601984cbb1c16e93bad04ad036dba)
Theorem hlt_GAUGE_TRIVIAL : forall A:set, A <> Empty -> hl_gauge A (fun x :e hl_ty_cart R A => hl_ball A (hl_pair (hl_ty_cart R A) R x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:434 / GAUGE_INTER   (hash md5:b2f5e576a1eb4c8a0edee114da7765fc)
Theorem hlt_GAUGE_INTER : forall A:set, A <> Empty -> forall d1 d2 :e 2 :^: hl_ty_cart R A :^: hl_ty_cart R A, hl_gauge A d1 = 1 /\ hl_gauge A d2 = 1 -> hl_gauge A (fun x :e hl_ty_cart R A => hl_INTER (hl_ty_cart R A) (d1 x) (d2 x)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:438 / GAUGE_INTERS   (hash md5:1f5a2968a15cff9301f096feff44a15f)
Theorem hlt_GAUGE_INTERS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e 2 :^: hl_ty_cart R A :^: hl_ty_cart R A :^: B, forall s :e 2 :^: B, hl_FINITE B s = 1 /\ (forall d :e B, hl_IN B d s = 1 -> hl_gauge A (f d) = 1) -> hl_gauge A (fun x :e hl_ty_cart R A => hl_INTERS (hl_ty_cart R A) (hl_GSPEC (2 :^: hl_ty_cart R A) (fun GEN_PVAR_6129 :e 2 :^: hl_ty_cart R A => if exists d :e B, hl_SETSPEC (2 :^: hl_ty_cart R A) GEN_PVAR_6129 (hl_IN B d s) (f d x) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:445 / GAUGE_EXISTENCE_LEMMA   (hash md5:8016d01c8d65077bd2bd221b26e25eb7)
Theorem hlt_GAUGE_EXISTENCE_LEMMA : forall A:set, A <> Empty -> forall p :e 2 :^: A, forall q :e 2 :^: A :^: R, (forall x :e A, exists d :e R, p x = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ q d x = 1) <-> forall x :e A, exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (p x = 1 -> q d x = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:456 / division_of   (hash md5:dbb38712784493b38aaef0a644d1fc20)
Theorem hlt_division_of_thm : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_division_of A s i = 1 <-> hl_FINITE (2 :^: hl_ty_cart R A) s = 1 /\ ((forall k :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) k s = 1 -> hl_SUBSET (hl_ty_cart R A) k i = 1 /\ (~ k = hl_EMPTY (hl_ty_cart R A) /\ exists a b :e hl_ty_cart R A, k = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))))) /\ ((forall k1 k2 :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) k1 s = 1 /\ (hl_IN (2 :^: hl_ty_cart R A) k2 s = 1 /\ ~ k1 = k2) -> hl_INTER (hl_ty_cart R A) (hl_interior A k1) (hl_interior A k2) = hl_EMPTY (hl_ty_cart R A)) /\ hl_UNIONS (hl_ty_cart R A) s = i)).
Admitted.

// HOL Light: Multivariate/integration.ml:465 / DIVISION_OF   (hash md5:3a357ea9e186c0b28e7c5f4201516e74)
Theorem hlt_DIVISION_OF : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_division_of A s i = 1 <-> hl_FINITE (2 :^: hl_ty_cart R A) s = 1 /\ ((forall k :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) k s = 1 -> ~ k = hl_EMPTY (hl_ty_cart R A) /\ exists a b :e hl_ty_cart R A, k = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) /\ ((forall k1 k2 :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) k1 s = 1 /\ (hl_IN (2 :^: hl_ty_cart R A) k2 s = 1 /\ ~ k1 = k2) -> hl_INTER (hl_ty_cart R A) (hl_interior A k1) (hl_interior A k2) = hl_EMPTY (hl_ty_cart R A)) /\ hl_UNIONS (hl_ty_cart R A) s = i)).
Admitted.

// HOL Light: Multivariate/integration.ml:474 / DIVISION_OF_FINITE   (hash md5:f237a021ec69846d79171ccb36e3e368)
Theorem hlt_DIVISION_OF_FINITE : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_division_of A s i = 1 -> hl_FINITE (2 :^: hl_ty_cart R A) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:478 / DIVISION_OF_SELF   (hash md5:8b58578a7fa18d48b0340f473052bcaf)
Theorem hlt_DIVISION_OF_SELF : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, ~ hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))) = hl_EMPTY (hl_ty_cart R A) -> hl_division_of A (hl_INSERT (2 :^: hl_ty_cart R A) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) (hl_EMPTY (2 :^: hl_ty_cart R A))) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:483 / DIVISION_OF_TRIVIAL   (hash md5:17d2aa17c143dffe4d6bb1080fdd8fe6)
Theorem hlt_DIVISION_OF_TRIVIAL : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A s (hl_EMPTY (hl_ty_cart R A)) = 1 <-> s = hl_EMPTY (2 :^: hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/integration.ml:492 / EMPTY_DIVISION_OF   (hash md5:870b92cf2a212c6684308d63391e8d6f)
Theorem hlt_EMPTY_DIVISION_OF : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_division_of A (hl_EMPTY (2 :^: hl_ty_cart R A)) s = 1 <-> s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/integration.ml:497 / DIVISION_OF_SING   (hash md5:d8b8cfd63c6a466051cf341955cc7278)
Theorem hlt_DIVISION_OF_SING : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R A), forall a :e hl_ty_cart R A, hl_division_of A s (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 <-> s = hl_INSERT (2 :^: hl_ty_cart R A) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a a) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) (hl_EMPTY (2 :^: hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/integration.ml:511 / ELEMENTARY_EMPTY   (hash md5:d4bb6fe72f65efdec5250e81e0188504)
Theorem hlt_ELEMENTARY_EMPTY : forall A:set, A <> Empty -> exists p :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A p (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:515 / ELEMENTARY_INTERVAL   (hash md5:4d911f3d18456f6d010870eca9954a7d)
Theorem hlt_ELEMENTARY_INTERVAL : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, exists p :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A p (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:519 / DIVISION_CONTAINS   (hash md5:c637bb2261e033e2f94d9ff36d104f7d)
Theorem hlt_DIVISION_CONTAINS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_division_of A s i = 1 -> forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x i = 1 -> exists k :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) x k = 1 /\ hl_IN (2 :^: hl_ty_cart R A) k s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:523 / FORALL_IN_DIVISION   (hash md5:badd75af13b967a8f5193b1b164af1b7)
Theorem hlt_FORALL_IN_DIVISION : forall A:set, A <> Empty -> forall P d :e 2 :^: (2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_division_of A d i = 1 -> ((forall x :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) x d = 1 -> P x = 1) <-> forall a b :e hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) d = 1 -> P (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:529 / FORALL_IN_DIVISION_NONEMPTY   (hash md5:3c016323b11423431bb4b3458022e0f5)
Theorem hlt_FORALL_IN_DIVISION_NONEMPTY : forall A:set, A <> Empty -> forall P d :e 2 :^: (2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_division_of A d i = 1 -> ((forall x :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) x d = 1 -> P x = 1) <-> forall a b :e hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) d = 1 /\ ~ hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))) = hl_EMPTY (hl_ty_cart R A) -> P (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:537 / DIVISION_OF_SUBSET   (hash md5:a2131c4c8a582fa4b5b3b0b07d7a94bd)
Theorem hlt_DIVISION_OF_SUBSET : forall N:set, N <> Empty -> forall p q :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p (hl_UNIONS (hl_ty_cart R N) p) = 1 /\ hl_SUBSET (2 :^: hl_ty_cart R N) q p = 1 -> hl_division_of N q (hl_UNIONS (hl_ty_cart R N) q) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:545 / DIVISION_OF_UNION_SELF   (hash md5:79ca0f286d31339564c8c49afba5b3b2)
Theorem hlt_DIVISION_OF_UNION_SELF : forall A:set, A <> Empty -> forall p :e 2 :^: (2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_division_of A p s = 1 -> hl_division_of A p (hl_UNIONS (hl_ty_cart R A) p) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:549 / DIVISION_OF_CONTENT_0   (hash md5:ded54e0255dbf422df6603d25975ae1f)
Theorem hlt_DIVISION_OF_CONTENT_0 : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, forall d :e 2 :^: (2 :^: hl_ty_cart R A), hl_content A (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_division_of A d (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 -> forall k :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) k d = 1 -> hl_content A k = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:557 / DIVISION_INTER   (hash md5:418cbff7d0cd7142cce2c49e39c82bc3)
Theorem hlt_DIVISION_INTER : forall N:set, N <> Empty -> forall s1 s2 :e 2 :^: hl_ty_cart R N, forall p1 p2 :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p1 s1 = 1 /\ hl_division_of N p2 s2 = 1 -> hl_division_of N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6133 :e 2 :^: hl_ty_cart R N => if exists k1 k2 :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6133 (if hl_IN (2 :^: hl_ty_cart R N) k1 p1 = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) k2 p2 = 1 /\ ~ hl_INTER (hl_ty_cart R N) k1 k2 = hl_EMPTY (hl_ty_cart R N)) then 1 else 0) (hl_INTER (hl_ty_cart R N) k1 k2) = 1 then 1 else 0)) (hl_INTER (hl_ty_cart R N) s1 s2) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:593 / DIVISION_INTER_1   (hash md5:8261b72ca0fd2b62397bc58226681559)
Theorem hlt_DIVISION_INTER_1 : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall i :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_division_of N d i = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) i = 1 -> hl_division_of N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6135 :e 2 :^: hl_ty_cart R N => if exists k :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6135 (if hl_IN (2 :^: hl_ty_cart R N) k d = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) k = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) k) = 1 then 1 else 0)) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:609 / ELEMENTARY_INTER   (hash md5:be8af4345f504d6a3e6e9eb7bb43eafb)
Theorem hlt_ELEMENTARY_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, (exists p :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A p s = 1) /\ (exists p :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A p t = 1) -> exists p :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A p (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:614 / ELEMENTARY_INTERS   (hash md5:1c4b27dfb1a8b5f5c4eb1a779cda3a3b)
Theorem hlt_ELEMENTARY_INTERS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (~ f = hl_EMPTY (2 :^: hl_ty_cart R N) /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> exists p :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p s = 1)) -> exists p :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p (hl_INTERS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:627 / DIVISION_DISJOINT_UNION   (hash md5:4068f580fc8aff33c97a360a60f0a0fd)
Theorem hlt_DIVISION_DISJOINT_UNION : forall N:set, N <> Empty -> forall s1 s2 :e 2 :^: hl_ty_cart R N, forall p1 p2 :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p1 s1 = 1 /\ (hl_division_of N p2 s2 = 1 /\ hl_INTER (hl_ty_cart R N) (hl_interior N s1) (hl_interior N s2) = hl_EMPTY (hl_ty_cart R N)) -> hl_division_of N (hl_UNION (2 :^: hl_ty_cart R N) p1 p2) (hl_UNION (hl_ty_cart R N) s1 s2) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:651 / PARTIAL_DIVISION_EXTEND_1   (hash md5:438c3a0cfe70d4ad5a2eb979772d6908)
Theorem hlt_PARTIAL_DIVISION_EXTEND_1 : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) -> exists p :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_IN (2 :^: hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) p = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:759 / PARTIAL_DIVISION_EXTEND_INTERVAL   (hash md5:4306669f50f74c15df49f807d38c34c3)
Theorem hlt_PARTIAL_DIVISION_EXTEND_INTERVAL : forall N:set, N <> Empty -> forall p :e 2 :^: (2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, hl_division_of N p (hl_UNIONS (hl_ty_cart R N) p) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_UNIONS (hl_ty_cart R N) p) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> exists q :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) p q = 1 /\ hl_division_of N q (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:823 / ELEMENTARY_BOUNDED   (hash md5:32607fe83a9349ac0d723e7ba4d03cb5)
Theorem hlt_ELEMENTARY_BOUNDED : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, (exists p :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A p s = 1) -> hl_bounded A s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:828 / ELEMENTARY_SUBSET_INTERVAL   (hash md5:df7d3da8fdb19afab5179d0475a0cfa6)
Theorem hlt_ELEMENTARY_SUBSET_INTERVAL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, (exists p :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A p s = 1) -> exists a b :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:832 / DIVISION_UNION_INTERVALS_EXISTS   (hash md5:4ad01ab95c083a69f86c70ae4f0c314d)
Theorem hlt_DIVISION_UNION_INTERVALS_EXISTS : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) -> exists p :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N (hl_INSERT (2 :^: hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) p) (hl_UNION (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:889 / DIVISION_OF_UNIONS   (hash md5:ac054ac384a4e90c8bb1ef6971b85cbc)
Theorem hlt_DIVISION_OF_UNIONS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: (2 :^: hl_ty_cart R A)), hl_FINITE (2 :^: (2 :^: hl_ty_cart R A)) f = 1 /\ ((forall p :e 2 :^: (2 :^: hl_ty_cart R A), hl_IN (2 :^: (2 :^: hl_ty_cart R A)) p f = 1 -> hl_division_of A p (hl_UNIONS (hl_ty_cart R A) p) = 1) /\ (forall k1 k2 :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) k1 (hl_UNIONS (2 :^: hl_ty_cart R A) f) = 1 /\ (hl_IN (2 :^: hl_ty_cart R A) k2 (hl_UNIONS (2 :^: hl_ty_cart R A) f) = 1 /\ ~ k1 = k2) -> hl_INTER (hl_ty_cart R A) (hl_interior A k1) (hl_interior A k2) = hl_EMPTY (hl_ty_cart R A))) -> hl_division_of A (hl_UNIONS (2 :^: hl_ty_cart R A) f) (hl_UNIONS (hl_ty_cart R A) (hl_UNIONS (2 :^: hl_ty_cart R A) f)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:900 / ELEMENTARY_UNION_INTERVAL_STRONG   (hash md5:96338c47c0e16eba9b2948f7ece7cdee)
Theorem hlt_ELEMENTARY_UNION_INTERVAL_STRONG : forall N:set, N <> Empty -> forall p :e 2 :^: (2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, hl_division_of N p (hl_UNIONS (hl_ty_cart R N) p) = 1 -> exists q :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) p q = 1 /\ hl_division_of N q (hl_UNION (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_UNIONS (hl_ty_cart R N) p)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1005 / ELEMENTARY_UNION_INTERVAL   (hash md5:23632a79e2ccd15224fe900d81972f54)
Theorem hlt_ELEMENTARY_UNION_INTERVAL : forall N:set, N <> Empty -> forall p :e 2 :^: (2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, hl_division_of N p (hl_UNIONS (hl_ty_cart R N) p) = 1 -> exists q :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N q (hl_UNION (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_UNIONS (hl_ty_cart R N) p)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1011 / ELEMENTARY_UNIONS_INTERVALS   (hash md5:17fe8424f329ecdf1bfefda0c4851abb)
Theorem hlt_ELEMENTARY_UNIONS_INTERVALS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> exists a b :e hl_ty_cart R N, s = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) -> exists p :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p (hl_UNIONS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1028 / ELEMENTARY_UNION   (hash md5:e9d95b429fb8f0dfac65ff933be7ba03)
Theorem hlt_ELEMENTARY_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, (exists p :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p s = 1) /\ (exists p :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p t = 1) -> exists p :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N p (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1042 / PARTIAL_DIVISION_EXTEND   (hash md5:8dcdea02752a48b05f33f288b0a463c2)
Theorem hlt_PARTIAL_DIVISION_EXTEND : forall N:set, N <> Empty -> forall p q :e 2 :^: (2 :^: hl_ty_cart R N), forall s t :e 2 :^: hl_ty_cart R N, hl_division_of N p s = 1 /\ (hl_division_of N q t = 1 /\ hl_SUBSET (hl_ty_cart R N) s t = 1) -> exists r :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) p r = 1 /\ hl_division_of N r t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1086 / INTERVAL_SUBDIVISION   (hash md5:5ecc97bd2497f9e706c8a296571e07d5)
Theorem hlt_INTERVAL_SUBDIVISION : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) c (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_division_of N (hl_IMAGE (2 :^: omega) (2 :^: hl_ty_cart R N) (fun s :e 2 :^: omega => hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_lambda R N (fun i :e omega => hl_COND R (hl_IN omega i s) (hl_vindex R N c i) (hl_vindex R N a i))) (hl_lambda R N (fun i :e omega => hl_COND R (hl_IN omega i s) (hl_vindex R N b i) (hl_vindex R N c i)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6146 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6146 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) s = 1 then 1 else 0))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1130 / DIVISION_OF_NONTRIVIAL   (hash md5:4f13f1c90c5df475763513132cb2366e)
Theorem hlt_DIVISION_OF_NONTRIVIAL : forall N:set, N <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, hl_division_of N s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ ~ hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_division_of N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6148 :e 2 :^: hl_ty_cart R N => if exists k :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6148 (if hl_IN (2 :^: hl_ty_cart R N) k s = 1 /\ ~ hl_content N k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) k = 1 then 1 else 0)) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1219 / DIVISION_OF_AFFINITY   (hash md5:b5c8f23a3dbfaaf5a09d61002f48b90d)
Theorem hlt_DIVISION_OF_AFFINITY : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_division_of N (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c)) d) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) /\ (s = hl_EMPTY (hl_ty_cart R N) /\ d = hl_EMPTY (2 :^: hl_ty_cart R N) \/ ~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ d = hl_EMPTY (2 :^: hl_ty_cart R N) /\ (forall k :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) k d = 1 -> ~ k = hl_EMPTY (hl_ty_cart R N)))) \/ ~ m = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_division_of N d s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1271 / DIVISION_OF_TRANSLATION   (hash md5:f3488b1aec99f8e8db4b3a11dd22d062)
Theorem hlt_DIVISION_OF_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_division_of N (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x)) d) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_division_of N d s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1278 / DIVISION_OF_REFLECT   (hash md5:68c9d58c7fc9f9e7dd778ca2cdeb04b6)
Theorem hlt_DIVISION_OF_REFLECT : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_division_of N (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N)) d) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) s) = 1 <-> hl_division_of N d s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1287 / ELEMENTARY_COMPACT   (hash md5:0330c1c2314699264aef39a361df21b2)
Theorem hlt_ELEMENTARY_COMPACT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, (exists d :e 2 :^: (2 :^: hl_ty_cart R A), hl_division_of A d s = 1) -> hl_compact A s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1292 / OPEN_COUNTABLE_LIMIT_ELEMENTARY   (hash md5:99a4a35252098e355a1c8398c7aa5ff0)
Theorem hlt_OPEN_COUNTABLE_LIMIT_ELEMENTARY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> exists f :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, exists d :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_of N d (f n) = 1) /\ ((forall n :e omega, hl_SUBSET (hl_ty_cart R N) (f n) (f (hl_SUC n)) = 1) /\ hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6150 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6150 (hl_IN omega n (hl_UNIV omega)) (f n) = 1 then 1 else 0)) = s).
Admitted.

// HOL Light: Multivariate/integration.ml:1324 / DIVISION_1_SORT   (hash md5:8d64397eec7d7fa79aa25a43255e5e7c)
Theorem hlt_DIVISION_1_SORT : forall d :e 2 :^: (2 :^: hl_ty_cart R 1), forall s :e 2 :^: hl_ty_cart R 1, hl_division_of 1 d s = 1 /\ (forall k :e 2 :^: hl_ty_cart R 1, hl_IN (2 :^: hl_ty_cart R 1) k d = 1 -> ~ hl_interior 1 k = hl_EMPTY (hl_ty_cart R 1)) -> exists n :e omega, exists t :e 2 :^: hl_ty_cart R 1 :^: omega, hl_IMAGE omega (2 :^: hl_ty_cart R 1) t (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = d /\ forall i j :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 /\ hl_lt i j = 1) -> ~ t i = t j /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (t i) = 1 /\ hl_IN (hl_ty_cart R 1) y (t j) = 1 -> hl_real_le (hl_drop x) (hl_drop y) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1382 / tagged_partial_division_of   (hash md5:e04a8823e0e2ed3fec4b0dcba2c6ec20)
Theorem hlt_tagged_partial_division_of_thm : forall A:set, A <> Empty -> forall i :e 2 :^: hl_ty_cart R A, forall s :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), hl_tagged_partial_division_of A s i = 1 <-> hl_FINITE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) s = 1 /\ ((forall x :e hl_ty_cart R A, forall k :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x k) s = 1 -> hl_IN (hl_ty_cart R A) x k = 1 /\ (hl_SUBSET (hl_ty_cart R A) k i = 1 /\ exists a b :e hl_ty_cart R A, k = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))))) /\ forall x1 :e hl_ty_cart R A, forall k1 :e 2 :^: hl_ty_cart R A, forall x2 :e hl_ty_cart R A, forall k2 :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x1 k1) s = 1 /\ (hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x2 k2) s = 1 /\ ~ hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x1 k1 = hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x2 k2) -> hl_INTER (hl_ty_cart R A) (hl_interior A k1) (hl_interior A k2) = hl_EMPTY (hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/integration.ml:1390 / tagged_division_of   (hash md5:af0f8111026931063c389951d289c655)
Theorem hlt_tagged_division_of_thm : forall A:set, A <> Empty -> forall s :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_tagged_division_of A s i = 1 <-> hl_tagged_partial_division_of A s i = 1 /\ hl_UNIONS (hl_ty_cart R A) (hl_GSPEC (2 :^: hl_ty_cart R A) (fun GEN_PVAR_6151 :e 2 :^: hl_ty_cart R A => if exists k :e 2 :^: hl_ty_cart R A, hl_SETSPEC (2 :^: hl_ty_cart R A) GEN_PVAR_6151 (if exists x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x k) s = 1 then 1 else 0) k = 1 then 1 else 0)) = i.
Admitted.

// HOL Light: Multivariate/integration.ml:1394 / TAGGED_DIVISION_OF_FINITE   (hash md5:9b82e841660c6808e08fe1958024a654)
Theorem hlt_TAGGED_DIVISION_OF_FINITE : forall A:set, A <> Empty -> forall s :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_tagged_division_of A s i = 1 -> hl_FINITE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1398 / TAGGED_DIVISION_OF   (hash md5:969c604819a03c19bfdda8f81a1a323f)
Theorem hlt_TAGGED_DIVISION_OF : forall A:set, A <> Empty -> forall s :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_tagged_division_of A s i = 1 <-> hl_FINITE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) s = 1 /\ ((forall x :e hl_ty_cart R A, forall k :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x k) s = 1 -> hl_IN (hl_ty_cart R A) x k = 1 /\ (hl_SUBSET (hl_ty_cart R A) k i = 1 /\ exists a b :e hl_ty_cart R A, k = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))))) /\ ((forall x1 :e hl_ty_cart R A, forall k1 :e 2 :^: hl_ty_cart R A, forall x2 :e hl_ty_cart R A, forall k2 :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x1 k1) s = 1 /\ (hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x2 k2) s = 1 /\ ~ hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x1 k1 = hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x2 k2) -> hl_INTER (hl_ty_cart R A) (hl_interior A k1) (hl_interior A k2) = hl_EMPTY (hl_ty_cart R A)) /\ hl_UNIONS (hl_ty_cart R A) (hl_GSPEC (2 :^: hl_ty_cart R A) (fun GEN_PVAR_6152 :e 2 :^: hl_ty_cart R A => if exists k :e 2 :^: hl_ty_cart R A, hl_SETSPEC (2 :^: hl_ty_cart R A) GEN_PVAR_6152 (if exists x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x k) s = 1 then 1 else 0) k = 1 then 1 else 0)) = i)).
Admitted.

// HOL Light: Multivariate/integration.ml:1408 / DIVISION_OF_TAGGED_DIVISION   (hash md5:b6fc9413458acf0c7ae7add7ce0ff66f)
Theorem hlt_DIVISION_OF_TAGGED_DIVISION : forall A:set, A <> Empty -> forall s :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_tagged_division_of A s i = 1 -> hl_division_of A (hl_IMAGE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) (hl_SND (hl_ty_cart R A) (2 :^: hl_ty_cart R A)) s) i = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1421 / PARTIAL_DIVISION_OF_TAGGED_DIVISION   (hash md5:d553bbbe124970e45c5c7b986b3560b9)
Theorem hlt_PARTIAL_DIVISION_OF_TAGGED_DIVISION : forall A:set, A <> Empty -> forall s :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_tagged_partial_division_of A s i = 1 -> hl_division_of A (hl_IMAGE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) (hl_SND (hl_ty_cart R A) (2 :^: hl_ty_cart R A)) s) (hl_UNIONS (hl_ty_cart R A) (hl_IMAGE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) (hl_SND (hl_ty_cart R A) (2 :^: hl_ty_cart R A)) s)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1437 / TAGGED_PARTIAL_DIVISION_SUBSET   (hash md5:816e26514116e2c69a97932cfc7126b2)
Theorem hlt_TAGGED_PARTIAL_DIVISION_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_tagged_partial_division_of A s i = 1 /\ hl_SUBSET (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) t s = 1 -> hl_tagged_partial_division_of A t i = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1443 / VSUM_OVER_TAGGED_PARTIAL_DIVISION_LEMMA   (hash md5:b6186aaabe29347719ed5a0aac251835)
Theorem hlt_VSUM_OVER_TAGGED_PARTIAL_DIVISION_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall d :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), forall i :e 2 :^: hl_ty_cart R M, hl_tagged_partial_division_of M p i = 1 /\ (forall u v :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_vec N (hl_NUMERAL hl_zero)) -> hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (d k) = 1 then 1 else 0)) = hl_vsum (2 :^: hl_ty_cart R M) N (hl_IMAGE (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R M) (hl_SND (hl_ty_cart R M) (2 :^: hl_ty_cart R M)) p) d.
Admitted.

// HOL Light: Multivariate/integration.ml:1465 / VSUM_OVER_TAGGED_DIVISION_LEMMA   (hash md5:23a62dd36c481ecf30224c43f9667a4e)
Theorem hlt_VSUM_OVER_TAGGED_DIVISION_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall d :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), forall i :e 2 :^: hl_ty_cart R M, hl_tagged_division_of M p i = 1 /\ (forall u v :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_vec N (hl_NUMERAL hl_zero)) -> hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (d k) = 1 then 1 else 0)) = hl_vsum (2 :^: hl_ty_cart R M) N (hl_IMAGE (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R M) (hl_SND (hl_ty_cart R M) (2 :^: hl_ty_cart R M)) p) d.
Admitted.

// HOL Light: Multivariate/integration.ml:1475 / SUM_OVER_TAGGED_PARTIAL_DIVISION_LEMMA   (hash md5:2e92822706b1b2ea8a2ca31d4da419cc)
Theorem hlt_SUM_OVER_TAGGED_PARTIAL_DIVISION_LEMMA : forall N:set, N <> Empty -> forall d :e R :^: (2 :^: hl_ty_cart R N), forall p :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall i :e 2 :^: hl_ty_cart R N, hl_tagged_partial_division_of N p i = 1 /\ (forall u v :e hl_ty_cart R N, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) /\ hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> d (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_sum (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) p (hl_GABS (R :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N)) (fun f :e R :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) => if forall x :e hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R N, hl_GEQ R (f (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k)) (d k) = 1 then 1 else 0)) = hl_sum (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_SND (hl_ty_cart R N) (2 :^: hl_ty_cart R N)) p) d.
Admitted.

// HOL Light: Multivariate/integration.ml:1489 / SUM_OVER_TAGGED_DIVISION_LEMMA   (hash md5:8c4da5f00e3ab422ab19fbac3f4b3f33)
Theorem hlt_SUM_OVER_TAGGED_DIVISION_LEMMA : forall N:set, N <> Empty -> forall d :e R :^: (2 :^: hl_ty_cart R N), forall p :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall i :e 2 :^: hl_ty_cart R N, hl_tagged_division_of N p i = 1 /\ (forall u v :e hl_ty_cart R N, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) /\ hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> d (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_sum (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) p (hl_GABS (R :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N)) (fun f :e R :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) => if forall x :e hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R N, hl_GEQ R (f (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k)) (d k) = 1 then 1 else 0)) = hl_sum (2 :^: hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_SND (hl_ty_cart R N) (2 :^: hl_ty_cart R N)) p) d.
Admitted.

// HOL Light: Multivariate/integration.ml:1499 / TAG_IN_INTERVAL   (hash md5:ab53e8ec778756a3e5d9caa8671b8a0b)
Theorem hlt_TAG_IN_INTERVAL : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall i k :e 2 :^: hl_ty_cart R A, hl_tagged_division_of A p i = 1 /\ hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x k) p = 1 -> hl_IN (hl_ty_cart R A) x i = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1503 / TAGGED_DIVISION_OF_EMPTY   (hash md5:ba4433bcc22f605997c487c195959125)
Theorem hlt_TAGGED_DIVISION_OF_EMPTY : forall A:set, A <> Empty -> hl_tagged_division_of A (hl_EMPTY (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A)) (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1508 / TAGGED_PARTIAL_DIVISION_OF_TRIVIAL   (hash md5:af599f8d1507b6508b3831f227fc1885)
Theorem hlt_TAGGED_PARTIAL_DIVISION_OF_TRIVIAL : forall A:set, A <> Empty -> forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), hl_tagged_partial_division_of A p (hl_EMPTY (hl_ty_cart R A)) = 1 <-> p = hl_EMPTY (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/integration.ml:1518 / TAGGED_DIVISION_OF_TRIVIAL   (hash md5:685407814784ee09fb3477bf9abecb89)
Theorem hlt_TAGGED_DIVISION_OF_TRIVIAL : forall A:set, A <> Empty -> forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), hl_tagged_division_of A p (hl_EMPTY (hl_ty_cart R A)) = 1 <-> p = hl_EMPTY (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/integration.ml:1524 / TAGGED_DIVISION_OF_SELF   (hash md5:2727afd9352e08c73656dc25ff06abf9)
Theorem hlt_TAGGED_DIVISION_OF_SELF : forall A:set, A <> Empty -> forall x a b :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 -> hl_tagged_division_of A (hl_INSERT (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))))) (hl_EMPTY (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A))) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1532 / TAGGED_DIVISION_UNION   (hash md5:22588ce4c971b6a3ce82787bb7695f58)
Theorem hlt_TAGGED_DIVISION_UNION : forall N:set, N <> Empty -> forall s1 s2 :e 2 :^: hl_ty_cart R N, forall p1 p2 :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), hl_tagged_division_of N p1 s1 = 1 /\ (hl_tagged_division_of N p2 s2 = 1 /\ hl_INTER (hl_ty_cart R N) (hl_interior N s1) (hl_interior N s2) = hl_EMPTY (hl_ty_cart R N)) -> hl_tagged_division_of N (hl_UNION (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) p1 p2) (hl_UNION (hl_ty_cart R N) s1 s2) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1553 / TAGGED_DIVISION_UNIONS   (hash md5:fb3802dc02a52db7f5d1acc9d6082cad)
Theorem hlt_TAGGED_DIVISION_UNIONS : forall M:set, M <> Empty -> forall iset :e 2 :^: (2 :^: hl_ty_cart R M), forall pfn :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) :^: (2 :^: hl_ty_cart R M), hl_FINITE (2 :^: hl_ty_cart R M) iset = 1 /\ ((forall i :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) i iset = 1 -> hl_tagged_division_of M (pfn i) i = 1) /\ (forall i1 i2 :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) i1 iset = 1 /\ (hl_IN (2 :^: hl_ty_cart R M) i2 iset = 1 /\ ~ i1 = i2) -> hl_INTER (hl_ty_cart R M) (hl_interior M i1) (hl_interior M i2) = hl_EMPTY (hl_ty_cart R M))) -> hl_tagged_division_of M (hl_UNIONS (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) (hl_IMAGE (2 :^: hl_ty_cart R M) (2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) pfn iset)) (hl_UNIONS (hl_ty_cart R M) iset) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1584 / TAGGED_PARTIAL_DIVISION_OF_UNION_SELF   (hash md5:bd43b6677656cf4c31d963565dc3f389)
Theorem hlt_TAGGED_PARTIAL_DIVISION_OF_UNION_SELF : forall A:set, A <> Empty -> forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_tagged_partial_division_of A p s = 1 -> hl_tagged_division_of A p (hl_UNIONS (hl_ty_cart R A) (hl_IMAGE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) (hl_SND (hl_ty_cart R A) (2 :^: hl_ty_cart R A)) p)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1596 / TAGGED_DIVISION_OF_UNION_SELF   (hash md5:14f648b519e153dc7cacd855530dc998)
Theorem hlt_TAGGED_DIVISION_OF_UNION_SELF : forall A:set, A <> Empty -> forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_tagged_division_of A p s = 1 -> hl_tagged_division_of A p (hl_UNIONS (hl_ty_cart R A) (hl_IMAGE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) (hl_SND (hl_ty_cart R A) (2 :^: hl_ty_cart R A)) p)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1606 / TAGGED_DIVISION_UNION_IMAGE_SND   (hash md5:c308a29f6c508326d0bf9e54929618d3)
Theorem hlt_TAGGED_DIVISION_UNION_IMAGE_SND : forall A:set, A <> Empty -> forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_tagged_division_of A p s = 1 -> s = hl_UNIONS (hl_ty_cart R A) (hl_IMAGE (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) (hl_SND (hl_ty_cart R A) (2 :^: hl_ty_cart R A)) p).
Admitted.

// HOL Light: Multivariate/integration.ml:1610 / TAGGED_DIVISION_OF_ALT   (hash md5:6190d4a8a498191e4ea397fa175516ea)
Theorem hlt_TAGGED_DIVISION_OF_ALT : forall A:set, A <> Empty -> forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_tagged_division_of A p s = 1 <-> hl_tagged_partial_division_of A p s = 1 /\ forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> exists t :e hl_ty_cart R A, exists k :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) t k) p = 1 /\ hl_IN (hl_ty_cart R A) x k = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1619 / TAGGED_DIVISION_OF_ANOTHER   (hash md5:56dcbdebede08de387265766e8e45537)
Theorem hlt_TAGGED_DIVISION_OF_ANOTHER : forall A:set, A <> Empty -> forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall s s' :e 2 :^: hl_ty_cart R A, hl_tagged_partial_division_of A p s' = 1 /\ ((forall t :e hl_ty_cart R A, forall k :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) t k) p = 1 -> hl_SUBSET (hl_ty_cart R A) k s = 1) /\ (forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> exists t :e hl_ty_cart R A, exists k :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) t k) p = 1 /\ hl_IN (hl_ty_cart R A) x k = 1)) -> hl_tagged_division_of A p s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1628 / TAGGED_PARTIAL_DIVISION_OF_SUBSET   (hash md5:cccdedf1d9adb910a8390bd9ea877a67)
Theorem hlt_TAGGED_PARTIAL_DIVISION_OF_SUBSET : forall A:set, A <> Empty -> forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), forall s t :e 2 :^: hl_ty_cart R A, hl_tagged_partial_division_of A p s = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_tagged_partial_division_of A p t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1633 / TAGGED_DIVISION_OF_NONTRIVIAL   (hash md5:6158778b5bf367f482f18015c47d2b40)
Theorem hlt_TAGGED_DIVISION_OF_NONTRIVIAL : forall N:set, N <> Empty -> forall s :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, hl_tagged_division_of N s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ ~ hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_tagged_division_of N (hl_GSPEC (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (fun GEN_PVAR_6157 :e hl_ty_cart R N :*: 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, exists k :e 2 :^: hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) GEN_PVAR_6157 (if hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k) s = 1 /\ ~ hl_content N k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k) = 1 then 1 else 0)) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1660 / fine   (hash md5:18a3c511079599e169dada708f7c2d0c)
Theorem hlt_fine_thm : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: (B :*: 2 :^: A), forall d :e 2 :^: A :^: B, hl_fine B A d s = 1 <-> forall x :e B, forall k :e 2 :^: A, hl_IN (B :*: 2 :^: A) (hl_pair B (2 :^: A) x k) s = 1 -> hl_SUBSET A k (d x) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1663 / FINE_INTER   (hash md5:2e91f314adae30c37e0f29806619050b)
Theorem hlt_FINE_INTER : forall A B:set, A <> Empty -> B <> Empty -> forall p :e 2 :^: (A :*: 2 :^: B), forall d1 d2 :e 2 :^: B :^: A, hl_fine A B (fun x :e A => hl_INTER B (d1 x) (d2 x)) p = 1 <-> hl_fine A B d1 p = 1 /\ hl_fine A B d2 p = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1669 / FINE_INTERS   (hash md5:c07e162e95450d1719f070abfbcc432e)
Theorem hlt_FINE_INTERS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e 2 :^: B :^: A :^: C, forall s :e 2 :^: C, forall p :e 2 :^: (A :*: 2 :^: B), hl_fine A B (fun x :e A => hl_INTERS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_6158 :e 2 :^: B => if exists d :e C, hl_SETSPEC (2 :^: B) GEN_PVAR_6158 (hl_IN C d s) (f d x) = 1 then 1 else 0))) p = 1 <-> forall d :e C, hl_IN C d s = 1 -> hl_fine A B (f d) p = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1675 / FINE_UNION   (hash md5:b9ac5a7d574026085473e09d8836939b)
Theorem hlt_FINE_UNION : forall A B:set, A <> Empty -> B <> Empty -> forall d :e 2 :^: B :^: A, forall p1 p2 :e 2 :^: (A :*: 2 :^: B), hl_fine A B d p1 = 1 /\ hl_fine A B d p2 = 1 -> hl_fine A B d (hl_UNION (A :*: 2 :^: B) p1 p2) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1679 / FINE_UNIONS   (hash md5:f4e5ac2533b3456d8126e88853269526)
Theorem hlt_FINE_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall d :e 2 :^: B :^: A, forall ps :e 2 :^: (2 :^: (A :*: 2 :^: B)), (forall p :e 2 :^: (A :*: 2 :^: B), hl_IN (2 :^: (A :*: 2 :^: B)) p ps = 1 -> hl_fine A B d p = 1) -> hl_fine A B d (hl_UNIONS (A :*: 2 :^: B) ps) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1683 / FINE_SUBSET   (hash md5:9611cffa743c87cb99b17082c509d07b)
Theorem hlt_FINE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall d :e 2 :^: B :^: A, forall p q :e 2 :^: (A :*: 2 :^: B), hl_SUBSET (A :*: 2 :^: B) p q = 1 /\ hl_fine A B d q = 1 -> hl_fine A B d p = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1695 / has_integral_compact_interval   (hash md5:401422b96c236b7fb1bd2dd914b689af)
Theorem hlt_has_integral_compact_interval_thm : forall A B:set, A <> Empty -> B <> Empty -> forall i :e 2 :^: hl_ty_cart R A, forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_has_integral_compact_interval A B f y i = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R A :^: hl_ty_cart R A, hl_gauge A d = 1 /\ forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), hl_tagged_division_of A p i = 1 /\ hl_fine (hl_ty_cart R A) (hl_ty_cart R A) d p = 1 -> hl_real_lt (hl_vector_norm B (hl_vector_sub B (hl_vsum (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) B p (hl_GABS (hl_ty_cart R B :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A)) (fun f1 :e hl_ty_cart R B :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) => if forall x :e hl_ty_cart R A, forall k :e 2 :^: hl_ty_cart R A, hl_GEQ (hl_ty_cart R B) (f1 (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x k)) (hl_vmul B (hl_content A k) (f x)) = 1 then 1 else 0))) y)) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1702 / has_integral_def   (hash md5:b839945615ffce2d6ad335ec77b3a726)
Theorem hlt_has_integral_def : forall A B:set, A <> Empty -> B <> Empty -> forall i :e 2 :^: hl_ty_cart R A, forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall y :e hl_ty_cart R B, hl_has_integral A B f y i = 1 <-> (exists a b :e hl_ty_cart R A, i = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) /\ hl_has_integral_compact_interval A B f y i = 1 \/ ~ (exists a b :e hl_ty_cart R A, i = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B1 = 1 /\ forall a b :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_ball A (hl_pair (hl_ty_cart R A) R (hl_vec A (hl_NUMERAL hl_zero)) B1)) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 -> exists z :e hl_ty_cart R B, hl_has_integral_compact_interval A B (fun x :e hl_ty_cart R A => hl_COND (hl_ty_cart R B) (hl_IN (hl_ty_cart R A) x i) (f x) (hl_vec B (hl_NUMERAL hl_zero))) z (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 /\ hl_real_lt (hl_vector_norm B (hl_vector_sub B z y)) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1713 / has_integral   (hash md5:ad0a2b35ac8f61f29de38f939b401b2f)
Theorem hlt_has_integral_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall y :e hl_ty_cart R B, forall a b :e hl_ty_cart R A, hl_has_integral A B f y (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R A :^: hl_ty_cart R A, hl_gauge A d = 1 /\ forall p :e 2 :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A), hl_tagged_division_of A p (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 /\ hl_fine (hl_ty_cart R A) (hl_ty_cart R A) d p = 1 -> hl_real_lt (hl_vector_norm B (hl_vector_sub B (hl_vsum (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) B p (hl_GABS (hl_ty_cart R B :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A)) (fun f1 :e hl_ty_cart R B :^: (hl_ty_cart R A :*: 2 :^: hl_ty_cart R A) => if forall x :e hl_ty_cart R A, forall k :e 2 :^: hl_ty_cart R A, hl_GEQ (hl_ty_cart R B) (f1 (hl_pair (hl_ty_cart R A) (2 :^: hl_ty_cart R A) x k)) (hl_vmul B (hl_content A k) (f x)) = 1 then 1 else 0))) y)) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1722 / has_integral_alt   (hash md5:be606e529f21728cd9a28365657c7227)
Theorem hlt_has_integral_alt : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall y :e hl_ty_cart R B, forall i :e 2 :^: hl_ty_cart R A, hl_has_integral A B f y i = 1 <-> (exists a b :e hl_ty_cart R A, i = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) /\ hl_has_integral A B f y i = 1 \/ ~ (exists a b :e hl_ty_cart R A, i = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B1 = 1 /\ forall a b :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_ball A (hl_pair (hl_ty_cart R A) R (hl_vec A (hl_NUMERAL hl_zero)) B1)) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 -> exists z :e hl_ty_cart R B, hl_has_integral A B (fun x :e hl_ty_cart R A => hl_COND (hl_ty_cart R B) (hl_IN (hl_ty_cart R A) x i) (f x) (hl_vec B (hl_NUMERAL hl_zero))) z (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 /\ hl_real_lt (hl_vector_norm B (hl_vector_sub B z y)) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1736 / integrable_on   (hash md5:541f7d7eab3617bba5988751d1888cf5)
Theorem hlt_integrable_on_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall i :e 2 :^: hl_ty_cart R B, hl_integrable_on B A f i = 1 <-> exists y :e hl_ty_cart R A, hl_has_integral B A f y i = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1739 / integral   (hash md5:9be7100ee02ac2a415b9cd2db60dd548)
Theorem hlt_integral_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall i :e 2 :^: hl_ty_cart R B, hl_integral B A i f = hl_select (hl_ty_cart R A) (fun y :e hl_ty_cart R A => hl_has_integral B A f y i).
Admitted.

// HOL Light: Multivariate/integration.ml:1742 / INTEGRABLE_INTEGRAL   (hash md5:d6c09c5e219a0b702cd04f811908a080)
Theorem hlt_INTEGRABLE_INTEGRAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall i :e 2 :^: hl_ty_cart R A, hl_integrable_on A B f i = 1 -> hl_has_integral A B f (hl_integral A B i f) i = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1747 / HAS_INTEGRAL_INTEGRABLE   (hash md5:9646a4853ca9a89bca05987c81a7fb33)
Theorem hlt_HAS_INTEGRAL_INTEGRABLE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall i :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R B, hl_has_integral B A f i s = 1 -> hl_integrable_on B A f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1751 / HAS_INTEGRAL_INTEGRAL   (hash md5:9becb3ba1b5011e10d4a5a2423834d3b)
Theorem hlt_HAS_INTEGRAL_INTEGRAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_integrable_on A B f s = 1 <-> hl_has_integral A B f (hl_integral A B s f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1755 / VSUM_CONTENT_NULL   (hash md5:d692f52d77b43be75d99bd8149f708b9)
Theorem hlt_VSUM_CONTENT_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0)) = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:1774 / TAGGED_DIVISION_UNIONS_EXISTS   (hash md5:136624129569831ab14f53a025e0f3ea)
Theorem hlt_TAGGED_DIVISION_UNIONS_EXISTS : forall M:set, M <> Empty -> forall d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, forall iset :e 2 :^: (2 :^: hl_ty_cart R M), forall i :e 2 :^: hl_ty_cart R M, hl_FINITE (2 :^: hl_ty_cart R M) iset = 1 /\ ((forall i1 :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) i1 iset = 1 -> exists p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_division_of M p i1 = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1) /\ ((forall i1 i2 :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) i1 iset = 1 /\ (hl_IN (2 :^: hl_ty_cart R M) i2 iset = 1 /\ ~ i1 = i2) -> hl_INTER (hl_ty_cart R M) (hl_interior M i1) (hl_interior M i2) = hl_EMPTY (hl_ty_cart R M)) /\ hl_UNIONS (hl_ty_cart R M) iset = i)) -> exists p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_division_of M p i = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1795 / DIVISION_OF_CLOSED   (hash md5:1c74e53d5fa08e4ad6e57be785c2b81f)
Theorem hlt_DIVISION_OF_CLOSED : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R A), forall i :e 2 :^: hl_ty_cart R A, hl_division_of A s i = 1 -> hl_closed A i = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:1803 / INTERVAL_BISECTION_STEP   (hash md5:13af5c47b2cdc1d9369c4fa5637b8c1e)
Theorem hlt_INTERVAL_BISECTION_STEP : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), P (hl_EMPTY (hl_ty_cart R N)) = 1 /\ (forall s t :e 2 :^: hl_ty_cart R N, P s = 1 /\ (P t = 1 /\ hl_INTER (hl_ty_cart R N) (hl_interior N s) (hl_interior N t) = hl_EMPTY (hl_ty_cart R N)) -> P (hl_UNION (hl_ty_cart R N) s t) = 1) -> forall a b :e hl_ty_cart R N, ~ P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> exists c d :e hl_ty_cart R N, ~ P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_vindex R N a i) (hl_vindex R N c i) = 1 /\ (hl_real_le (hl_vindex R N c i) (hl_vindex R N d i) = 1 /\ (hl_real_le (hl_vindex R N d i) (hl_vindex R N b i) = 1 /\ hl_real_le (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_sub (hl_vindex R N d i) (hl_vindex R N c i))) (hl_real_sub (hl_vindex R N b i) (hl_vindex R N a i)) = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:1939 / INTERVAL_BISECTION   (hash md5:4da42e786dd6e0c9ca01580391d8ed54)
Theorem hlt_INTERVAL_BISECTION : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), P (hl_EMPTY (hl_ty_cart R N)) = 1 /\ (forall s t :e 2 :^: hl_ty_cart R N, P s = 1 /\ (P t = 1 /\ hl_INTER (hl_ty_cart R N) (hl_interior N s) (hl_interior N t) = hl_EMPTY (hl_ty_cart R N)) -> P (hl_UNION (hl_ty_cart R N) s t) = 1) -> forall a b :e hl_ty_cart R N, ~ P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists c d :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ ~ P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:2056 / FINE_DIVISION_EXISTS   (hash md5:2aab1c9823275725f2758e5eb9241c2d)
Theorem hlt_FINE_DIVISION_EXISTS : forall M:set, M <> Empty -> forall g :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_gauge M g = 1 -> exists p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) g p = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2084 / HAS_INTEGRAL_UNIQUE   (hash md5:106da8efb31a2c1f77bfdd50685d03f9)
Theorem hlt_HAS_INTEGRAL_UNIQUE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e 2 :^: hl_ty_cart R M, forall k1 k2 :e hl_ty_cart R N, hl_has_integral M N f k1 i = 1 /\ hl_has_integral M N f k2 i = 1 -> k1 = k2.
Admitted.

// HOL Light: Multivariate/integration.ml:2144 / INTEGRAL_UNIQUE   (hash md5:a30d801bb7030b6d5d1cd57cf1521be0)
Theorem hlt_INTEGRAL_UNIQUE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall y :e hl_ty_cart R A, forall k :e 2 :^: hl_ty_cart R B, hl_has_integral B A f y k = 1 -> hl_integral B A k f = y.
Admitted.

// HOL Light: Multivariate/integration.ml:2150 / HAS_INTEGRAL_INTEGRABLE_INTEGRAL   (hash md5:be6cfc2400fbc93923b9e8b1647d98e6)
Theorem hlt_HAS_INTEGRAL_INTEGRABLE_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_has_integral M N f i s = 1 <-> hl_integrable_on M N f s = 1 /\ hl_integral M N s f = i.
Admitted.

// HOL Light: Multivariate/integration.ml:2155 / INTEGRAL_EQ_HAS_INTEGRAL   (hash md5:7d8aadb6c86edffcac30f787f31647cc)
Theorem hlt_INTEGRAL_EQ_HAS_INTEGRAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R B, forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall y :e hl_ty_cart R A, hl_integrable_on B A f s = 1 -> (hl_integral B A s f = y <-> hl_has_integral B A f y s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:2159 / HAS_INTEGRAL_IS_0   (hash md5:0dae60c00fa512cf35798915c8c5b120)
Theorem hlt_HAS_INTEGRAL_IS_0 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero)) -> hl_has_integral M N f (hl_vec N (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2190 / HAS_INTEGRAL_0   (hash md5:2143af7df1f03d14fb6e4e40dac1c2f6)
Theorem hlt_HAS_INTEGRAL_0 : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_has_integral A B (fun x :e hl_ty_cart R A => hl_vec B (hl_NUMERAL hl_zero)) (hl_vec B (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2194 / HAS_INTEGRAL_0_EQ   (hash md5:0049578fef715b5d2f5827b0bf916058)
Theorem hlt_HAS_INTEGRAL_0_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall i :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R A, hl_has_integral A B (fun x :e hl_ty_cart R A => hl_vec B (hl_NUMERAL hl_zero)) i s = 1 <-> i = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2198 / HAS_INTEGRAL_LINEAR   (hash md5:2fed2d5ece323875cdf42bd78a613482)
Theorem hlt_HAS_INTEGRAL_LINEAR : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall h :e hl_ty_cart R P :^: hl_ty_cart R N, hl_has_integral M N f y s = 1 /\ hl_linear N P h = 1 -> hl_has_integral M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h f) (h y) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2252 / HAS_INTEGRAL_CMUL   (hash md5:18740a74d3d523e6d87d0b077bdbdc6a)
Theorem hlt_HAS_INTEGRAL_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall c :e R, hl_has_integral M N f k s = 1 -> hl_has_integral M N (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) (hl_vmul N c k) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2260 / HAS_INTEGRAL_NEG   (hash md5:65baf257cf8fae61e20bbeb0274ca93b)
Theorem hlt_HAS_INTEGRAL_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall k :e hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R A, hl_has_integral A B f k s = 1 -> hl_has_integral A B (fun x :e hl_ty_cart R A => hl_vector_neg B (f x)) (hl_vector_neg B k) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2264 / HAS_INTEGRAL_ADD   (hash md5:f7ef0a8a31f6570da945f333ed0d9b71)
Theorem hlt_HAS_INTEGRAL_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall k l :e hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_has_integral M N f k s = 1 /\ hl_has_integral M N g l s = 1 -> hl_has_integral M N (fun x :e hl_ty_cart R M => hl_vector_add N (f x) (g x)) (hl_vector_add N k l) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2318 / HAS_INTEGRAL_SUB   (hash md5:028fdf7b1841fc00a9554d7a847c6759)
Theorem hlt_HAS_INTEGRAL_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall k l :e hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_has_integral M N f k s = 1 /\ hl_has_integral M N g l s = 1 -> hl_has_integral M N (fun x :e hl_ty_cart R M => hl_vector_sub N (f x) (g x)) (hl_vector_sub N k l) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2324 / INTEGRAL_0   (hash md5:28a19ff6edbf4a64664bb7e35071fa7a)
Theorem hlt_INTEGRAL_0 : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_integral A B s (fun x :e hl_ty_cart R A => hl_vec B (hl_NUMERAL hl_zero)) = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2328 / INTEGRAL_ADD   (hash md5:cfe06671ddf52d6e53db53fafa87c901)
Theorem hlt_INTEGRAL_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ hl_integrable_on M N g s = 1 -> hl_integral M N s (fun x :e hl_ty_cart R M => hl_vector_add N (f x) (g x)) = hl_vector_add N (hl_integral M N s f) (hl_integral M N s g).
Admitted.

// HOL Light: Multivariate/integration.ml:2335 / INTEGRAL_CMUL   (hash md5:ec3f434110e1cc75e4530e1106ca5e1e)
Theorem hlt_INTEGRAL_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e R, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 -> hl_integral M N s (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) = hl_vmul N c (hl_integral M N s f).
Admitted.

// HOL Light: Multivariate/integration.ml:2341 / INTEGRAL_NEG   (hash md5:d394e4f88e288764b67585c61ed0bc3c)
Theorem hlt_INTEGRAL_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 -> hl_integral M N s (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) = hl_vector_neg N (hl_integral M N s f).
Admitted.

// HOL Light: Multivariate/integration.ml:2347 / INTEGRAL_SUB   (hash md5:bc0804ed7dffaeadcc669a23f84cfca3)
Theorem hlt_INTEGRAL_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ hl_integrable_on M N g s = 1 -> hl_integral M N s (fun x :e hl_ty_cart R M => hl_vector_sub N (f x) (g x)) = hl_vector_sub N (hl_integral M N s f) (hl_integral M N s g).
Admitted.

// HOL Light: Multivariate/integration.ml:2354 / INTEGRABLE_0   (hash md5:1545b51087febc64839ff509875d5314)
Theorem hlt_INTEGRABLE_0 : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_integrable_on A B (fun x :e hl_ty_cart R A => hl_vec B (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2358 / INTEGRABLE_ADD   (hash md5:850fbf9323168d2c097da1de94b8c36e)
Theorem hlt_INTEGRABLE_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ hl_integrable_on M N g s = 1 -> hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vector_add N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2364 / INTEGRABLE_CMUL   (hash md5:802ad6eb77d2a7448856972adbba5ac2)
Theorem hlt_INTEGRABLE_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e R, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 -> hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2369 / INTEGRABLE_CMUL_EQ   (hash md5:bb2be4f850f72fbcc44c68eab0f5fb4d)
Theorem hlt_INTEGRABLE_CMUL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall c :e R, hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) s = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2378 / INTEGRABLE_NEG   (hash md5:cb280e64f04050a4224cc630bade7de3)
Theorem hlt_INTEGRABLE_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 -> hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2383 / INTEGRABLE_NEG_EQ   (hash md5:8ab42d336cfa8a5b80925c848a7596dd)
Theorem hlt_INTEGRABLE_NEG_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) s = 1 <-> hl_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2389 / INTEGRABLE_SUB   (hash md5:8ed8964cbb0aeefae4b4351624f2266c)
Theorem hlt_INTEGRABLE_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ hl_integrable_on M N g s = 1 -> hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vector_sub N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2395 / INTEGRABLE_LINEAR   (hash md5:229f1a6128c9313b5ff0d1bb522786ba)
Theorem hlt_INTEGRABLE_LINEAR : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall h :e hl_ty_cart R C :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R B, hl_integrable_on B A f s = 1 /\ hl_linear A C h = 1 -> hl_integrable_on B C (hl_o (hl_ty_cart R A) (hl_ty_cart R C) (hl_ty_cart R B) h f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2399 / INTEGRAL_LINEAR   (hash md5:36dae2d24521cfebc577b00032c45ffa)
Theorem hlt_INTEGRAL_LINEAR : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall h :e hl_ty_cart R P :^: hl_ty_cart R N, hl_integrable_on M N f s = 1 /\ hl_linear N P h = 1 -> hl_integral M P s (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h f) = h (hl_integral M N s f).
Admitted.

// HOL Light: Multivariate/integration.ml:2409 / HAS_INTEGRAL_VSUM   (hash md5:e07164bd6cb67ba4d340ce373b89cd6b)
Theorem hlt_HAS_INTEGRAL_VSUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall i :e hl_ty_cart R N :^: A, forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: A, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (forall a :e A, hl_IN A a t = 1 -> hl_has_integral M N (f a) (i a) s = 1) -> hl_has_integral M N (fun x :e hl_ty_cart R M => hl_vsum A N t (fun a :e A => f a x)) (hl_vsum A N t i) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2421 / INTEGRAL_VSUM   (hash md5:49532521b0188d76b9bc9c653bebcda8)
Theorem hlt_INTEGRAL_VSUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: A, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (forall a :e A, hl_IN A a t = 1 -> hl_integrable_on M N (f a) s = 1) -> hl_integral M N s (fun x :e hl_ty_cart R M => hl_vsum A N t (fun a :e A => f a x)) = hl_vsum A N t (fun a :e A => hl_integral M N s (f a)).
Admitted.

// HOL Light: Multivariate/integration.ml:2430 / INTEGRABLE_VSUM   (hash md5:16bae0bb8e1296e8d0f55e5fdede1c01)
Theorem hlt_INTEGRABLE_VSUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: A, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (forall a :e A, hl_IN A a t = 1 -> hl_integrable_on M N (f a) s = 1) -> hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_vsum A N t (fun a :e A => f a x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2437 / HAS_INTEGRAL_EQ   (hash md5:4adec37d2cfb196cc85bd2121d983ab1)
Theorem hlt_HAS_INTEGRAL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = g x) /\ hl_has_integral M N f k s = 1 -> hl_has_integral M N g k s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2447 / INTEGRABLE_EQ   (hash md5:2f24e3299f75480fe549b1de62ad6b7e)
Theorem hlt_INTEGRABLE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = g x) /\ hl_integrable_on M N f s = 1 -> hl_integrable_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2454 / HAS_INTEGRAL_EQ_EQ   (hash md5:12f9b9f236a9880413c219e6d09ec74d)
Theorem hlt_HAS_INTEGRAL_EQ_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = g x) -> (hl_has_integral M N f k s = 1 <-> hl_has_integral M N g k s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:2460 / HAS_INTEGRAL_NULL   (hash md5:648f4f08ea74db99ad336281e9bb454d)
Theorem hlt_HAS_INTEGRAL_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_has_integral M N f (hl_vec N (hl_NUMERAL hl_zero)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2470 / HAS_INTEGRAL_NULL_EQ   (hash md5:0cff26f8dc4bd95a2300532a507504b7)
Theorem hlt_HAS_INTEGRAL_NULL_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, forall i :e hl_ty_cart R A, hl_content B (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> (hl_has_integral B A f i (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1 <-> i = hl_vec A (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/integration.ml:2475 / INTEGRAL_NULL   (hash md5:d2814b179407f9c26364e4a5c188dae9)
Theorem hlt_INTEGRAL_NULL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, hl_content B (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_integral B A (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) f = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2481 / INTEGRABLE_ON_NULL   (hash md5:ee5eff04ccee16266a422198a1dab418)
Theorem hlt_INTEGRABLE_ON_NULL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, hl_content B (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_integrable_on B A f (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2486 / HAS_INTEGRAL_EMPTY   (hash md5:a68508073b12bf243cf58cd22b81fcd6)
Theorem hlt_HAS_INTEGRAL_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_has_integral A B f (hl_vec B (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2490 / HAS_INTEGRAL_EMPTY_EQ   (hash md5:51f028fdbdecfc060c68c7e6a34588b4)
Theorem hlt_HAS_INTEGRAL_EMPTY_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall i :e hl_ty_cart R B, hl_has_integral A B f i (hl_EMPTY (hl_ty_cart R A)) = 1 <-> i = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2494 / INTEGRABLE_ON_EMPTY   (hash md5:ddce92d9682c492dd164606c9617e1d7)
Theorem hlt_INTEGRABLE_ON_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, hl_integrable_on B A f (hl_EMPTY (hl_ty_cart R B)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2498 / INTEGRAL_EMPTY   (hash md5:0368c8610d26105f1625a34ef64e31fc)
Theorem hlt_INTEGRAL_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_integral A B (hl_EMPTY (hl_ty_cart R A)) f = hl_vec B (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2502 / HAS_INTEGRAL_REFL   (hash md5:7c008485af5a126a1e571692725576eb)
Theorem hlt_HAS_INTEGRAL_REFL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a :e hl_ty_cart R B, hl_has_integral B A f (hl_vec A (hl_NUMERAL hl_zero)) (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a a) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2507 / INTEGRABLE_ON_REFL   (hash md5:e34ab1166bbd7e0115647bb0ba7d1de3)
Theorem hlt_INTEGRABLE_ON_REFL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a :e hl_ty_cart R B, hl_integrable_on B A f (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a a) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2511 / INTEGRAL_REFL   (hash md5:ad5fd09aa989bc5c8653efbb6a603fc9)
Theorem hlt_INTEGRAL_REFL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a :e hl_ty_cart R B, hl_integral B A (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a a) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) f = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2519 / INTEGRABLE_CAUCHY   (hash md5:fbbf5a55e8bb85ef7c13a4e30907c674)
Theorem hlt_INTEGRABLE_CAUCHY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_gauge M d = 1 /\ forall p1 p2 :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_division_of M p1 (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p1 = 1 /\ (hl_tagged_division_of M p2 (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p2 = 1)) -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p1 (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))) (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p2 (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2596 / INTERVAL_SPLIT   (hash md5:7e9d450f099bf247dab153a1ac00024b)
Theorem hlt_INTERVAL_SPLIT : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall c :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6163 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6163 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a (hl_lambda R N (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_min (hl_vindex R N b k) c) (hl_vindex R N b i)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) /\ hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6164 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6164 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_lambda R N (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_max (hl_vindex R N a k) c) (hl_vindex R N a i))) b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/integration.ml:2613 / CONTENT_SPLIT   (hash md5:4dd76a99d13435d9b24942ea20fb2f52)
Theorem hlt_CONTENT_SPLIT : forall N:set, N <> Empty -> forall c :e R, forall a b :e hl_ty_cart R N, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_add (hl_content N (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6165 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6165 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)))) (hl_content N (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6166 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6166 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)))).
Admitted.

// HOL Light: Multivariate/integration.ml:2649 / DIVISION_SPLIT_LEFT_INJ   (hash md5:928a7e6d14e1a69578b64f3bece59cc6)
Theorem hlt_DIVISION_SPLIT_LEFT_INJ : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall i k1 k2 :e 2 :^: hl_ty_cart R N, forall k :e omega, forall c :e R, hl_division_of N d i = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) k1 d = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) k2 d = 1 /\ (~ k1 = k2 /\ hl_INTER (hl_ty_cart R N) k1 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6171 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6171 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_INTER (hl_ty_cart R N) k2 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6172 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6172 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))))))) -> hl_content N (hl_INTER (hl_ty_cart R N) k1 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6173 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6173 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2649 / DIVISION_SPLIT_RIGHT_INJ   (hash md5:181192c1b774c4b90063097c7a7be5c8)
Theorem hlt_DIVISION_SPLIT_RIGHT_INJ : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall i k1 k2 :e 2 :^: hl_ty_cart R N, forall k :e omega, forall c :e R, hl_division_of N d i = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) k1 d = 1 /\ (hl_IN (2 :^: hl_ty_cart R N) k2 d = 1 /\ (~ k1 = k2 /\ hl_INTER (hl_ty_cart R N) k1 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6174 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6174 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_INTER (hl_ty_cart R N) k2 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6175 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6175 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))))))) -> hl_content N (hl_INTER (hl_ty_cart R N) k1 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6176 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6176 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2686 / TAGGED_DIVISION_SPLIT_LEFT_INJ   (hash md5:002eaa441112d5f72b594b3064b7d465)
Theorem hlt_TAGGED_DIVISION_SPLIT_LEFT_INJ : forall N:set, N <> Empty -> forall d :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall i :e 2 :^: hl_ty_cart R N, forall x1 :e hl_ty_cart R N, forall k1 :e 2 :^: hl_ty_cart R N, forall x2 :e hl_ty_cart R N, forall k2 :e 2 :^: hl_ty_cart R N, forall k :e omega, forall c :e R, hl_tagged_division_of N d i = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x1 k1) d = 1 /\ (hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x2 k2) d = 1 /\ (~ k1 = k2 /\ hl_INTER (hl_ty_cart R N) k1 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6177 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6177 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_INTER (hl_ty_cart R N) k2 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6178 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6178 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))))))) -> hl_content N (hl_INTER (hl_ty_cart R N) k1 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6179 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6179 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2698 / TAGGED_DIVISION_SPLIT_RIGHT_INJ   (hash md5:e8f2e7ea20050ba10f038fcfb20806ff)
Theorem hlt_TAGGED_DIVISION_SPLIT_RIGHT_INJ : forall N:set, N <> Empty -> forall d :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall i :e 2 :^: hl_ty_cart R N, forall x1 :e hl_ty_cart R N, forall k1 :e 2 :^: hl_ty_cart R N, forall x2 :e hl_ty_cart R N, forall k2 :e 2 :^: hl_ty_cart R N, forall k :e omega, forall c :e R, hl_tagged_division_of N d i = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x1 k1) d = 1 /\ (hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x2 k2) d = 1 /\ (~ k1 = k2 /\ hl_INTER (hl_ty_cart R N) k1 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6180 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6180 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_INTER (hl_ty_cart R N) k2 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6181 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6181 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))))))) -> hl_content N (hl_INTER (hl_ty_cart R N) k1 (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6182 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6182 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:2710 / DIVISION_SPLIT   (hash md5:beea1c395346c4078f89c6c1bce320bb)
Theorem hlt_DIVISION_SPLIT : forall N:set, N <> Empty -> forall p :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, forall k :e omega, forall c :e R, hl_division_of N p s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> hl_division_of N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6190 :e 2 :^: hl_ty_cart R N => if exists l :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6190 (if hl_IN (2 :^: hl_ty_cart R N) l p = 1 /\ ~ hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6189 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6189 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6188 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6188 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1 then 1 else 0)) (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6191 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6191 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1 /\ hl_division_of N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6196 :e 2 :^: hl_ty_cart R N => if exists l :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6196 (if hl_IN (2 :^: hl_ty_cart R N) l p = 1 /\ ~ hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6195 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6195 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6194 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6194 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1 then 1 else 0)) (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6197 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6197 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2753 / HAS_INTEGRAL_SPLIT   (hash md5:1d3c54defb4e7418eac704b828d6bc3f)
Theorem hlt_HAS_INTEGRAL_SPLIT : forall M N:set, M <> Empty -> N <> Empty -> forall i j :e hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e omega, forall a b :e hl_ty_cart R M, forall c :e R, hl_has_integral M N f i (hl_INTER (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6215 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6215 (hl_real_le (hl_vindex R M x k) c) x = 1 then 1 else 0))) = 1 /\ (hl_has_integral M N f j (hl_INTER (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6216 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6216 (hl_real_ge (hl_vindex R M x k) c) x = 1 then 1 else 0))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1)) -> hl_has_integral M N f (hl_vector_add N i j) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2920 / TAGGED_DIVISION_UNION_INTERVAL   (hash md5:c268e9d2d6d0cc0f88a94e44b5daa810)
Theorem hlt_TAGGED_DIVISION_UNION_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall p1 p2 :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall c :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_tagged_division_of N p1 (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6219 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6219 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1 /\ hl_tagged_division_of N p2 (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6220 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6220 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1)) -> hl_tagged_division_of N (hl_UNION (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) p1 p2) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2940 / HAS_INTEGRAL_SEPARATE_SIDES   (hash md5:a325cab488292bfa493480b276dc6edd)
Theorem hlt_HAS_INTEGRAL_SEPARATE_SIDES : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall a b :e hl_ty_cart R M, forall k :e omega, hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1) -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_gauge M d = 1 /\ forall p1 p2 :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_division_of M p1 (hl_INTER (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6223 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6223 (hl_real_le (hl_vindex R M x k) c) x = 1 then 1 else 0))) = 1 /\ (hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p1 = 1 /\ (hl_tagged_division_of M p2 (hl_INTER (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6224 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6224 (hl_real_ge (hl_vindex R M x k) c) x = 1 then 1 else 0))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p2 = 1)) -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vector_add N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p1 (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k1 :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k1)) (hl_vmul N (hl_content M k1) (f x)) = 1 then 1 else 0))) (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p2 (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k1 :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k1)) (hl_vmul N (hl_content M k1) (f x)) = 1 then 1 else 0)))) i)) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:2986 / INTEGRABLE_SPLIT   (hash md5:61f9b692099cdd4eb51843ebed481979)
Theorem hlt_INTEGRABLE_SPLIT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall c :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1) -> hl_integrable_on M N f (hl_INTER (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6225 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6225 (hl_real_le (hl_vindex R M x k) c) x = 1 then 1 else 0))) = 1 /\ hl_integrable_on M N f (hl_INTER (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6226 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6226 (hl_real_ge (hl_vindex R M x k) c) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3029 / operative   (hash md5:4abbf523145139ba19f9b11bddafe84b)
Theorem hlt_operative_thm : forall A N:set, A <> Empty -> N <> Empty -> forall op :e A :^: A :^: A, forall f :e A :^: (2 :^: hl_ty_cart R N), hl_operative A N op f = 1 <-> (forall a b :e hl_ty_cart R N, hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_neutral A op) /\ forall a b :e hl_ty_cart R N, forall c :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = op (f (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6227 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6227 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)))) (f (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6228 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6228 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)))).
Admitted.

// HOL Light: Multivariate/integration.ml:3037 / OPERATIVE_TRIVIAL   (hash md5:9d5f04554bb8d1d57f0a04fef3404515)
Theorem hlt_OPERATIVE_TRIVIAL : forall A B:set, A <> Empty -> B <> Empty -> forall op :e A :^: A :^: A, forall f :e A :^: (2 :^: hl_ty_cart R B), forall a b :e hl_ty_cart R B, hl_operative A B op f = 1 /\ hl_content B (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> f (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = hl_neutral A op.
Admitted.

// HOL Light: Multivariate/integration.ml:3043 / PROPERTY_EMPTY_INTERVAL   (hash md5:aa7c96ee7b2d69480447661780bc3624)
Theorem hlt_PROPERTY_EMPTY_INTERVAL : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), (forall a b :e hl_ty_cart R N, hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) -> P (hl_EMPTY (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3048 / OPERATIVE_EMPTY   (hash md5:846fddce001374fc14f97f237f103cda)
Theorem hlt_OPERATIVE_EMPTY : forall A N:set, A <> Empty -> N <> Empty -> forall op :e A :^: A :^: A, forall f :e A :^: (2 :^: hl_ty_cart R N), hl_operative A N op f = 1 -> f (hl_EMPTY (hl_ty_cart R N)) = hl_neutral A op.
Admitted.

// HOL Light: Multivariate/integration.ml:3057 / FORALL_OPTION   (hash md5:4136a6621a89e93303e84488e3c80684)
Theorem hlt_FORALL_OPTION : forall A:set, A <> Empty -> forall P :e 2 :^: (1 :+: A), (forall x :e 1 :+: A, P x = 1) <-> P (hl_NONE A) = 1 /\ forall x :e A, P (hl_SOME A x) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3061 / EXISTS_OPTION   (hash md5:2709a43bb3359dde4846eedcfe9a5d6b)
Theorem hlt_EXISTS_OPTION : forall A:set, A <> Empty -> forall P :e 2 :^: (1 :+: A), (exists x :e 1 :+: A, P x = 1) <-> P (hl_NONE A) = 1 \/ exists x :e A, P (hl_SOME A x) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3065 / lifted   (hash md5:a602f35a956afe22cfda576cebbd3147)
Theorem hlt_lifted_thm : forall A B:set, A <> Empty -> B <> Empty -> forall op :e A :^: B :^: B, forall rel :e 1 :+: B, forall x y :e B, hl_lifted B A op (hl_NONE B) rel = hl_NONE A /\ (hl_lifted B A op rel (hl_NONE B) = hl_NONE A /\ hl_lifted B A op (hl_SOME B x) (hl_SOME B y) = hl_SOME A (op x y)).
Admitted.

// HOL Light: Multivariate/integration.ml:3070 / NEUTRAL_LIFTED   (hash md5:49075aa008b339ae2bd6c6e1f569a5f6)
Theorem hlt_NEUTRAL_LIFTED : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> hl_neutral (1 :+: A) (hl_lifted A A op) = hl_SOME A (hl_neutral A op).
Admitted.

// HOL Light: Multivariate/integration.ml:3078 / MONOIDAL_LIFTED   (hash md5:92897f2eccd3c7188f7e612bce1e165b)
Theorem hlt_MONOIDAL_LIFTED : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> hl_monoidal (1 :+: A) (hl_lifted A A op) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3085 / ITERATE_SOME   (hash md5:a22192be7b60cf64e1ef8d60c5e8c2b1)
Theorem hlt_ITERATE_SOME : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_iterate (1 :+: B) A (hl_lifted B B op) s (fun x :e A => hl_SOME B (f x)) = hl_SOME B (hl_iterate B A op s f).
Admitted.

// HOL Light: Multivariate/integration.ml:3099 / OPERATIVE_CONTENT   (hash md5:d641b44489a57285acee0220d547419b)
Theorem hlt_OPERATIVE_CONTENT : forall A:set, A <> Empty -> hl_operative R A hl_real_add (hl_content A) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3103 / OPERATIVE_INTEGRAL   (hash md5:d9752eed1536f1a3f60f69243d6bd6d2)
Theorem hlt_OPERATIVE_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_operative (1 :+: hl_ty_cart R N) M (hl_lifted (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_add N)) (fun i :e 2 :^: hl_ty_cart R M => hl_COND (1 :+: hl_ty_cart R N) (hl_integrable_on M N f i) (hl_SOME (hl_ty_cart R N) (hl_integral M N i f)) (hl_NONE (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3126 / division_points   (hash md5:994e68426512e22abc986282a01f7c09)
Theorem hlt_division_points_thm : forall N:set, N <> Empty -> forall k :e 2 :^: hl_ty_cart R N, forall d :e 2 :^: (2 :^: hl_ty_cart R N), hl_division_points N k d = hl_GSPEC (omega :*: R) (fun GEN_PVAR_6229 :e omega :*: R => if exists j :e omega, exists x :e R, hl_SETSPEC (omega :*: R) GEN_PVAR_6229 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) j = 1 /\ (hl_le j (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_lt (hl_vindex R N (hl_interval_lowerbound N k) j) x = 1 /\ (hl_real_lt x (hl_vindex R N (hl_interval_upperbound N k) j) = 1 /\ exists i :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) i d = 1 /\ (hl_vindex R N (hl_interval_lowerbound N i) j = x \/ hl_vindex R N (hl_interval_upperbound N i) j = x)))) then 1 else 0) (hl_pair omega R j x) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/integration.ml:3134 / DIVISION_POINTS_FINITE   (hash md5:3aa3ed1ce4ed629d6bc6038ea7b7c5a4)
Theorem hlt_DIVISION_POINTS_FINITE : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall i :e 2 :^: hl_ty_cart R N, hl_division_of N d i = 1 -> hl_FINITE (omega :*: R) (hl_division_points N i d) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3149 / DIVISION_POINTS_SUBSET   (hash md5:c4e1a8f09a8ef28fb93d5ab97e23d893)
Theorem hlt_DIVISION_POINTS_SUBSET : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall c :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall k :e omega, hl_division_of N d (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N b i) = 1) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_lt (hl_vindex R N a k) c = 1 /\ hl_real_lt c (hl_vindex R N b k) = 1)))) -> hl_SUBSET (omega :*: R) (hl_division_points N (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6230 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6230 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6235 :e 2 :^: hl_ty_cart R N => if exists l :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6235 (if hl_IN (2 :^: hl_ty_cart R N) l d = 1 /\ ~ hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6234 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6234 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6233 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6233 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1 then 1 else 0))) (hl_division_points N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) d) = 1 /\ hl_SUBSET (omega :*: R) (hl_division_points N (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6236 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6236 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6241 :e 2 :^: hl_ty_cart R N => if exists l :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6241 (if hl_IN (2 :^: hl_ty_cart R N) l d = 1 /\ ~ hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6240 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6240 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6239 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6239 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1 then 1 else 0))) (hl_division_points N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) d) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3199 / DIVISION_POINTS_PSUBSET   (hash md5:b0a60a1e86b53366397138a786aecb41)
Theorem hlt_DIVISION_POINTS_PSUBSET : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall c :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall k :e omega, hl_division_of N d (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ ((forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_vindex R N a i) (hl_vindex R N b i) = 1) /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_real_lt (hl_vindex R N a k) c = 1 /\ (hl_real_lt c (hl_vindex R N b k) = 1 /\ (exists l :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) l d = 1 /\ (hl_vindex R N (hl_interval_lowerbound N l) k = c \/ hl_vindex R N (hl_interval_upperbound N l) k = c))))))) -> hl_PSUBSET (omega :*: R) (hl_division_points N (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6242 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6242 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6247 :e 2 :^: hl_ty_cart R N => if exists l :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6247 (if hl_IN (2 :^: hl_ty_cart R N) l d = 1 /\ ~ hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6246 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6246 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6245 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6245 (hl_real_le (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1 then 1 else 0))) (hl_division_points N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) d) = 1 /\ hl_PSUBSET (omega :*: R) (hl_division_points N (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6248 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6248 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6253 :e 2 :^: hl_ty_cart R N => if exists l :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6253 (if hl_IN (2 :^: hl_ty_cart R N) l d = 1 /\ ~ hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6252 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6252 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6251 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6251 (hl_real_ge (hl_vindex R N x k) c) x = 1 then 1 else 0))) = 1 then 1 else 0))) (hl_division_points N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) d) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3237 / OPERATIVE_DIVISION   (hash md5:38eeae9305d47c7c213e2ce00285a089)
Theorem hlt_OPERATIVE_DIVISION : forall A N:set, A <> Empty -> N <> Empty -> forall op :e A :^: A :^: A, forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, forall f :e A :^: (2 :^: hl_ty_cart R N), hl_monoidal A op = 1 /\ (hl_operative A N op f = 1 /\ hl_division_of N d (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) -> hl_iterate A (2 :^: hl_ty_cart R N) op d f = f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/integration.ml:3418 / OPERATIVE_TAGGED_DIVISION   (hash md5:fd4697fa1e128dee22a82d3271cfb190)
Theorem hlt_OPERATIVE_TAGGED_DIVISION : forall A N:set, A <> Empty -> N <> Empty -> forall op :e A :^: A :^: A, forall d :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, forall f :e A :^: (2 :^: hl_ty_cart R N), hl_monoidal A op = 1 /\ (hl_operative A N op f = 1 /\ hl_tagged_division_of N d (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) -> hl_iterate A (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) op d (hl_GABS (A :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N)) (fun f1 :e A :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) => if forall x :e hl_ty_cart R N, forall l :e 2 :^: hl_ty_cart R N, hl_GEQ A (f1 (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x l)) (f l) = 1 then 1 else 0)) = f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/integration.ml:3447 / ADDITIVE_CONTENT_DIVISION   (hash md5:e1e94c792ed35ab059221395d7cfbda5)
Theorem hlt_ADDITIVE_CONTENT_DIVISION : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, hl_division_of N d (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_sum (2 :^: hl_ty_cart R N) d (hl_content N) = hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/integration.ml:3458 / ADDITIVE_CONTENT_TAGGED_DIVISION   (hash md5:30ffbf2ec0e5eca08b834fb800e706a8)
Theorem hlt_ADDITIVE_CONTENT_TAGGED_DIVISION : forall N:set, N <> Empty -> forall d :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, hl_tagged_division_of N d (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_sum (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) d (hl_GABS (R :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N)) (fun f :e R :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) => if forall x :e hl_ty_cart R N, forall l :e 2 :^: hl_ty_cart R N, hl_GEQ R (f (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x l)) (hl_content N l) = 1 then 1 else 0)) = hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/integration.ml:3469 / SUBADDITIVE_CONTENT_DIVISION   (hash md5:19fa35d3186791b1964a47828896996d)
Theorem hlt_SUBADDITIVE_CONTENT_DIVISION : forall M:set, M <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_division_of M d s = 1 /\ hl_SUBSET (hl_ty_cart R M) s (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (hl_content M)) (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3490 / HAS_INTEGRAL_CONST   (hash md5:69e60dab65f6e9abaf2dccc0cb8259cf)
Theorem hlt_HAS_INTEGRAL_CONST : forall M N:set, M <> Empty -> N <> Empty -> forall a b :e hl_ty_cart R M, forall c :e hl_ty_cart R N, hl_has_integral M N (fun x :e hl_ty_cart R M => c) (hl_vmul N (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) c) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3503 / INTEGRABLE_CONST   (hash md5:eac0fb8bdc71669b8b0e7d95fad2d534)
Theorem hlt_INTEGRABLE_CONST : forall M N:set, M <> Empty -> N <> Empty -> forall a b :e hl_ty_cart R M, forall c :e hl_ty_cart R N, hl_integrable_on M N (fun x :e hl_ty_cart R M => c) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3509 / INTEGRAL_CONST   (hash md5:99056bae5e630e992b53e63d19de419d)
Theorem hlt_INTEGRAL_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall a b :e hl_ty_cart R B, forall c :e hl_ty_cart R A, hl_integral B A (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) (fun x :e hl_ty_cart R B => c) = hl_vmul A (hl_content B (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B))))) c.
Admitted.

// HOL Light: Multivariate/integration.ml:3514 / INTEGRAL_PASTECART_CONST   (hash md5:1bd9e3009f9044df68320ccbe0c99903)
Theorem hlt_INTEGRAL_PASTECART_CONST : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall a b :e hl_ty_cart R M, forall c d :e hl_ty_cart R N, forall k :e hl_ty_cart R P, hl_integral (hl_ty_finite_sum M N) P (hl_closed_interval (hl_ty_finite_sum M N) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_pastecart R M N a c) (hl_pastecart R M N b d)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M N) :*: hl_ty_cart R (hl_ty_finite_sum M N))))) (fun x :e hl_ty_cart R (hl_ty_finite_sum M N) => k) = hl_integral M P (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_integral N P (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (fun y :e hl_ty_cart R N => k)).
Admitted.

// HOL Light: Multivariate/integration.ml:3525 / DSUM_BOUND   (hash md5:2e9db60383a4faa09af419def225168c)
Theorem hlt_DSUM_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall p :e 2 :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall c :e hl_ty_cart R N, forall e1 :e R, hl_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_real_le (hl_vector_norm N c) e1 = 1 -> hl_real_le (hl_vector_norm N (hl_vsum (2 :^: hl_ty_cart R M) N p (fun l :e 2 :^: hl_ty_cart R M => hl_vmul N (hl_content M l) c))) (hl_real_mul e1 (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3547 / RSUM_BOUND   (hash md5:63293bd885cc41e4e7a534512749f40c)
Theorem hlt_RSUM_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall e1 :e R, hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (f x)) e1 = 1) -> hl_real_le (hl_vector_norm N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0)))) (hl_real_mul e1 (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3574 / RSUM_DIFF_BOUND   (hash md5:648a32467270cca39b7e596199422deb)
Theorem hlt_RSUM_DIFF_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall e1 :e R, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (g x))) e1 = 1) -> hl_real_le (hl_vector_norm N (hl_vector_sub N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))) (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (g x)) = 1 then 1 else 0))))) (hl_real_mul e1 (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3592 / HAS_INTEGRAL_BOUND   (hash md5:043659aa98c6f8af8f244dbbc4a437f8)
Theorem hlt_HAS_INTEGRAL_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall i :e hl_ty_cart R N, forall B :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ (hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (f x)) B = 1)) -> hl_real_le (hl_vector_norm N i) (hl_real_mul B (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3625 / RSUM_COMPONENT_LE   (hash md5:3b72a6cdc62c5195d1ec9ce4132ebe73)
Theorem hlt_RSUM_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall i :e omega, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vindex R N (f x) i) (hl_vindex R N (g x) i) = 1))) -> hl_real_le (hl_vindex R N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))) i) (hl_vindex R N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (g x)) = 1 then 1 else 0))) i) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3639 / HAS_INTEGRAL_COMPONENT_LE   (hash md5:6221a753d58c66699d045bc94712b81c)
Theorem hlt_HAS_INTEGRAL_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i j :e hl_ty_cart R N, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_has_integral M N f i s = 1 /\ (hl_has_integral M N g j s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N (g x) k) = 1)))) -> hl_real_le (hl_vindex R N i k) (hl_vindex R N j k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3716 / INTEGRAL_COMPONENT_LE   (hash md5:f06a21add300c8dc648f18434f1da453)
Theorem hlt_INTEGRAL_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_integrable_on M N f s = 1 /\ (hl_integrable_on M N g s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N (g x) k) = 1)))) -> hl_real_le (hl_vindex R N (hl_integral M N s f) k) (hl_vindex R N (hl_integral M N s g) k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3725 / HAS_INTEGRAL_DROP_LE   (hash md5:fc707af06a742c21544ab2944ea37498)
Theorem hlt_HAS_INTEGRAL_DROP_LE : forall M:set, M <> Empty -> forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i j :e hl_ty_cart R 1, hl_has_integral M 1 f i s = 1 /\ (hl_has_integral M 1 g j s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_drop (f x)) (hl_drop (g x)) = 1)) -> hl_real_le (hl_drop i) (hl_drop j) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3734 / INTEGRAL_DROP_LE   (hash md5:f13fce8782b5991984b33a8d70abc460)
Theorem hlt_INTEGRAL_DROP_LE : forall M:set, M <> Empty -> forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M 1 f s = 1 /\ (hl_integrable_on M 1 g s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_drop (f x)) (hl_drop (g x)) = 1)) -> hl_real_le (hl_drop (hl_integral M 1 s f)) (hl_drop (hl_integral M 1 s g)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3742 / HAS_INTEGRAL_COMPONENT_POS   (hash md5:97457b9833f55106105a9554f200f983)
Theorem hlt_HAS_INTEGRAL_COMPONENT_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_has_integral M N f i s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f x) k) = 1))) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N i k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3754 / INTEGRAL_COMPONENT_POS   (hash md5:5dd6e7665b227f41983e8f095d25824f)
Theorem hlt_INTEGRAL_COMPONENT_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_integrable_on M N f s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f x) k) = 1))) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (hl_integral M N s f) k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3763 / HAS_INTEGRAL_DROP_POS   (hash md5:c9b1270cf63c5c96bca9acdd132e7582)
Theorem hlt_HAS_INTEGRAL_DROP_POS : forall M:set, M <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R 1, hl_has_integral M 1 f i s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop i) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3772 / INTEGRAL_DROP_POS   (hash md5:39e85479291ae56a1f84f7fddcfda81a)
Theorem hlt_INTEGRAL_DROP_POS : forall M:set, M <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M 1 f s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (hl_integral M 1 s f)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3780 / HAS_INTEGRAL_COMPONENT_NEG   (hash md5:9b5dc145c054ba6ccbe8c0eeb1ca412a)
Theorem hlt_HAS_INTEGRAL_COMPONENT_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_has_integral M N f i s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1))) -> hl_real_le (hl_vindex R N i k) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3792 / HAS_INTEGRAL_DROP_NEG   (hash md5:471b085fd7773925d7450b464f152172)
Theorem hlt_HAS_INTEGRAL_DROP_NEG : forall M:set, M <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R 1, hl_has_integral M 1 f i s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_drop (f x)) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) -> hl_real_le (hl_drop i) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3801 / HAS_INTEGRAL_COMPONENT_LBOUND   (hash md5:2f6cbd3d559f5f5fc53360efa203e081)
Theorem hlt_HAS_INTEGRAL_COMPONENT_LBOUND : forall M N:set, M <> Empty -> N <> Empty -> forall B :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall i :e hl_ty_cart R N, forall k :e omega, hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le B (hl_vindex R N (f x) k) = 1))) -> hl_real_le (hl_real_mul B (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_vindex R N i k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3815 / HAS_INTEGRAL_COMPONENT_UBOUND   (hash md5:70927d07fc6dabcff822f5a8f8a26960)
Theorem hlt_HAS_INTEGRAL_COMPONENT_UBOUND : forall M N:set, M <> Empty -> N <> Empty -> forall B :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall i :e hl_ty_cart R N, forall k :e omega, hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vindex R N (f x) k) B = 1))) -> hl_real_le (hl_vindex R N i k) (hl_real_mul B (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3829 / INTEGRAL_COMPONENT_LBOUND   (hash md5:b9fe449f0e4fc10546d89bb9721e91a8)
Theorem hlt_INTEGRAL_COMPONENT_LBOUND : forall M N:set, M <> Empty -> N <> Empty -> forall B :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall k :e omega, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le B (hl_vindex R N (f x) k) = 1))) -> hl_real_le (hl_real_mul B (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_vindex R N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3838 / INTEGRAL_COMPONENT_UBOUND   (hash md5:8d8967af904f5b42e0c58b80db4382fb)
Theorem hlt_INTEGRAL_COMPONENT_UBOUND : forall M N:set, M <> Empty -> N <> Empty -> forall B :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall k :e omega, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vindex R N (f x) k) B = 1))) -> hl_real_le (hl_vindex R N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) k) (hl_real_mul B (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3851 / INTEGRABLE_UNIFORM_LIMIT   (hash md5:02df032f475aea46af88e4185cbde4a6)
Theorem hlt_INTEGRABLE_UNIFORM_LIMIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (g x))) e1 = 1) /\ hl_integrable_on M N g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3964 / negligible   (hash md5:0031c4ceeff0de10403c59877d5e2d14)
Theorem hlt_negligible_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_negligible A s = 1 <-> forall a b :e hl_ty_cart R A, hl_has_integral A 1 (hl_indicator A s) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:3971 / VSUM_NONZERO_IMAGE_LEMMA   (hash md5:2f34ebdb98e75b34398529c17f59196c)
Theorem hlt_VSUM_NONZERO_IMAGE_LEMMA : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, forall g :e hl_ty_cart R N :^: B, forall a :e B, hl_FINITE A s = 1 /\ (g a = hl_vec N (hl_NUMERAL hl_zero) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (f x = f y /\ ~ x = y)) -> g (f x) = hl_vec N (hl_NUMERAL hl_zero))) -> hl_vsum B N (hl_GSPEC B (fun GEN_PVAR_6267 :e B => if exists x :e A, hl_SETSPEC B GEN_PVAR_6267 (if hl_IN A x s = 1 /\ ~ f x = a then 1 else 0) (f x) = 1 then 1 else 0)) g = hl_vsum A N s (hl_o B (hl_ty_cart R N) A g f).
Admitted.

// HOL Light: Multivariate/integration.ml:3985 / INTERVAL_DOUBLESPLIT   (hash md5:b895513787af7b018626b961418fc28c)
Theorem hlt_INTERVAL_DOUBLESPLIT : forall N:set, N <> Empty -> forall k :e omega, forall a b :e hl_ty_cart R N, forall c e1 :e R, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1 -> hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6271 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6271 (hl_real_le (hl_real_abs (hl_real_sub (hl_vindex R N x k) c)) e1) x = 1 then 1 else 0)) = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_lambda R N (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_max (hl_vindex R N a k) (hl_real_sub c e1)) (hl_vindex R N a i))) (hl_lambda R N (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_min (hl_vindex R N b k) (hl_real_add c e1)) (hl_vindex R N b i)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/integration.ml:3995 / DIVISION_DOUBLESPLIT   (hash md5:2c249a83fe65caa7a59e0eaaacb4755d)
Theorem hlt_DIVISION_DOUBLESPLIT : forall N:set, N <> Empty -> forall p :e 2 :^: (2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, forall k :e omega, forall c e1 :e R, hl_division_of N p (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> hl_division_of N (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6276 :e 2 :^: hl_ty_cart R N => if exists l :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6276 (if hl_IN (2 :^: hl_ty_cart R N) l p = 1 /\ ~ hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6275 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6275 (hl_real_le (hl_real_abs (hl_real_sub (hl_vindex R N x k) c)) e1) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INTER (hl_ty_cart R N) l (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6274 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6274 (hl_real_le (hl_real_abs (hl_real_sub (hl_vindex R N x k) c)) e1) x = 1 then 1 else 0))) = 1 then 1 else 0)) (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6277 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6277 (hl_real_le (hl_real_abs (hl_real_sub (hl_vindex R N x k) c)) e1) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4019 / CONTENT_DOUBLESPLIT   (hash md5:75aedc725fa933b122530f2d406ae269)
Theorem hlt_CONTENT_DOUBLESPLIT : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall k :e omega, forall c e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex N (hl_UNIV N)) = 1) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ hl_real_lt (hl_content N (hl_INTER (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6278 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6278 (hl_real_le (hl_real_abs (hl_real_sub (hl_vindex R N x k) c)) d) x = 1 then 1 else 0)))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4076 / NEGLIGIBLE_STANDARD_HYPERPLANE   (hash md5:99d22f9be0ef6b93f4425d305062fe3f)
Theorem hlt_NEGLIGIBLE_STANDARD_HYPERPLANE : forall N:set, N <> Empty -> forall c :e R, forall k :e omega, hl_negligible N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6285 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6285 (if hl_vindex R N x k = c then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4193 / TAGGED_DIVISION_FINER   (hash md5:5b3657a811b928b02df1413f9c4fc8be)
Theorem hlt_TAGGED_DIVISION_FINER : forall N:set, N <> Empty -> forall p :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall a b :e hl_ty_cart R N, forall d :e 2 :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_tagged_division_of N p (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_gauge N d = 1 -> exists q :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), hl_tagged_division_of N q (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_fine (hl_ty_cart R N) (hl_ty_cart R N) d q = 1 /\ forall x :e hl_ty_cart R N, forall k :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k) p = 1 /\ hl_SUBSET (hl_ty_cart R N) k (d x) = 1 -> hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k) q = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:4280 / HAS_INTEGRAL_NEGLIGIBLE   (hash md5:06cdb6e5535d9758760f406806530eea)
Theorem hlt_HAS_INTEGRAL_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero)) -> hl_has_integral M N f (hl_vec N (hl_NUMERAL hl_zero)) t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4429 / HAS_INTEGRAL_ON_NEGLIGIBLE   (hash md5:22acd3e53b16f72b4e99a383564ca526)
Theorem hlt_HAS_INTEGRAL_ON_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 -> hl_has_integral M N f (hl_vec N (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4434 / INTEGRABLE_ON_NEGLIGIBLE   (hash md5:79c6192d565ca7b92b66ce65880e0714)
Theorem hlt_INTEGRABLE_ON_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 -> hl_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4438 / INTEGRAL_ON_NEGLIGIBLE   (hash md5:333b8ffe15352d1c3d311860d2f7d488)
Theorem hlt_INTEGRAL_ON_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 -> hl_integral M N s f = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:4442 / HAS_INTEGRAL_SPIKE   (hash md5:19bddfa849573b29c987dffb8d1c9fd3)
Theorem hlt_HAS_INTEGRAL_SPIKE : forall M N:set, M <> Empty -> N <> Empty -> forall y :e hl_ty_cart R N, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) /\ hl_has_integral M N f y t = 1) -> hl_has_integral M N g y t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4481 / HAS_INTEGRAL_SPIKE_EQ   (hash md5:40947712a55e82fe37cd70c6c9e75b61)
Theorem hlt_HAS_INTEGRAL_SPIKE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> (hl_has_integral M N f y t = 1 <-> hl_has_integral M N g y t = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:4491 / INTEGRABLE_SPIKE   (hash md5:1a66872b4b37ed8ca5924ddbe73346dc)
Theorem hlt_INTEGRABLE_SPIKE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> hl_integrable_on M N f t = 1 -> hl_integrable_on M N g t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4499 / INTEGRABLE_SPIKE_EQ   (hash md5:24ca43982bd1a4f297c13b0545bda436)
Theorem hlt_INTEGRABLE_SPIKE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> (hl_integrable_on M N f t = 1 <-> hl_integrable_on M N g t = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:4505 / INTEGRAL_SPIKE   (hash md5:89b30af9f16dbbc296e194c1d7fb358c)
Theorem hlt_INTEGRAL_SPIKE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> hl_integral M N t f = hl_integral M N t g.
Admitted.

// HOL Light: Multivariate/integration.ml:4517 / NEGLIGIBLE_SUBSET   (hash md5:8ee1f0c7459bda91acbb601a58527d1f)
Theorem hlt_NEGLIGIBLE_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_negligible N t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4527 / NEGLIGIBLE_DIFF   (hash md5:7035fc9eb1baa029dca903fcf0480cb3)
Theorem hlt_NEGLIGIBLE_DIFF : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 -> hl_negligible N (hl_DIFF (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4532 / NEGLIGIBLE_INTER   (hash md5:fbf56ca243d1b6e47de4f3a56146244a)
Theorem hlt_NEGLIGIBLE_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_negligible A s = 1 \/ hl_negligible A t = 1 -> hl_negligible A (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4536 / NEGLIGIBLE_UNION   (hash md5:b5259cee9fe5d86b27a5d306c5f5abff)
Theorem hlt_NEGLIGIBLE_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 /\ hl_negligible N t = 1 -> hl_negligible N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4549 / NEGLIGIBLE_UNION_EQ   (hash md5:830a07a89feb58e11edd763bd04b2b1f)
Theorem hlt_NEGLIGIBLE_UNION_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_negligible N (hl_UNION (hl_ty_cart R N) s t) = 1 <-> hl_negligible N s = 1 /\ hl_negligible N t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4554 / NEGLIGIBLE_SING   (hash md5:a053b42cb1b13debffd05c07c5224bae)
Theorem hlt_NEGLIGIBLE_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_negligible N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4561 / NEGLIGIBLE_INSERT   (hash md5:c4b24b6312a83a3e4d4a7d9b4da9b058)
Theorem hlt_NEGLIGIBLE_INSERT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_negligible N (hl_INSERT (hl_ty_cart R N) a s) = 1 <-> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4566 / NEGLIGIBLE_EMPTY   (hash md5:bcbecd9e3508f02fabb73bd3b5be1a5b)
Theorem hlt_NEGLIGIBLE_EMPTY : forall A:set, A <> Empty -> hl_negligible A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4570 / NEGLIGIBLE_FINITE   (hash md5:31aae1098b0bc7e197b15dea3dc4d596)
Theorem hlt_NEGLIGIBLE_FINITE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) s = 1 -> hl_negligible A s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4575 / NEGLIGIBLE_UNIONS   (hash md5:206a869e2db59026b5767f1a30c77fd1)
Theorem hlt_NEGLIGIBLE_UNIONS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R A), hl_FINITE (2 :^: hl_ty_cart R A) s = 1 /\ (forall t :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) t s = 1 -> hl_negligible A t = 1) -> hl_negligible A (hl_UNIONS (hl_ty_cart R A) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4582 / NEGLIGIBLE   (hash md5:69cbf555ae57a30d140a44968773695d)
Theorem hlt_NEGLIGIBLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_has_integral N 1 (hl_indicator N s) (hl_vec 1 (hl_NUMERAL hl_zero)) t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4601 / HAS_INTEGRAL_SPIKE_FINITE   (hash md5:290036d9590f363b87b4e050bbf0be3e)
Theorem hlt_HAS_INTEGRAL_SPIKE_FINITE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R M) s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) /\ hl_has_integral M N f y t = 1) -> hl_has_integral M N g y t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4608 / HAS_INTEGRAL_SPIKE_FINITE_EQ   (hash md5:f05d7eed209bba4c38ed1e149334161d)
Theorem hlt_HAS_INTEGRAL_SPIKE_FINITE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall t :e 2 :^: hl_ty_cart R M, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R M) s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> (hl_has_integral M N f y t = 1 <-> hl_has_integral M N g y t = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:4614 / INTEGRABLE_SPIKE_FINITE   (hash md5:4e8127eb750c63384b546fe4d3662aa0)
Theorem hlt_INTEGRABLE_SPIKE_FINITE : forall M N:set, M <> Empty -> N <> Empty -> forall t :e 2 :^: hl_ty_cart R M, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_FINITE (hl_ty_cart R M) s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> hl_integrable_on M N f t = 1 -> hl_integrable_on M N g t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4623 / INTEGRAL_EQ   (hash md5:95e27c8113fa416aafd71bcd002c9c3f)
Theorem hlt_INTEGRAL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = g x) -> hl_integral M N s f = hl_integral M N s g.
Admitted.

// HOL Light: Multivariate/integration.ml:4629 / INTEGRAL_EQ_0   (hash md5:28f0ab724578e97f67942ff45f98a2d6)
Theorem hlt_INTEGRAL_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = hl_vec N (hl_NUMERAL hl_zero)) -> hl_integral M N s f = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:4641 / NEGLIGIBLE_FRONTIER_INTERVAL   (hash md5:03f44cd480d3ed4b8852bcbed9c152fc)
Theorem hlt_NEGLIGIBLE_FRONTIER_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_negligible N (hl_DIFF (hl_ty_cart R N) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4655 / HAS_INTEGRAL_SPIKE_INTERIOR   (hash md5:096e75c2c12078e5df91a93691c5c588)
Theorem hlt_HAS_INTEGRAL_SPIKE_INTERIOR : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall y :e hl_ty_cart R N, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) = 1 -> g x = f x) /\ hl_has_integral M N f y (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_has_integral M N g y (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4666 / HAS_INTEGRAL_SPIKE_INTERIOR_EQ   (hash md5:d747789cc95283e3f9b26f9b9146bc8f)
Theorem hlt_HAS_INTEGRAL_SPIKE_INTERIOR_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall y :e hl_ty_cart R N, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) = 1 -> g x = f x) -> (hl_has_integral M N f y (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> hl_has_integral M N g y (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:4673 / INTEGRABLE_SPIKE_INTERIOR   (hash md5:659de6e5604fe963728bc616cffb56a5)
Theorem hlt_INTEGRABLE_SPIKE_INTERIOR : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b)) = 1 -> g x = f x) -> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_integrable_on M N g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4686 / NEUTRAL_AND   (hash md5:c68bad4a718e7d2ce8db248ce31c5a41)
Theorem hlt_NEUTRAL_AND : hl_neutral 2 hl_and = 1 <-> True.
Admitted.

// HOL Light: Multivariate/integration.ml:4690 / MONOIDAL_AND   (hash md5:931055a66d3282fa1cbf8ea41575f5a9)
Theorem hlt_MONOIDAL_AND : hl_monoidal 2 hl_and = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4694 / ITERATE_AND   (hash md5:a6ea40db797103b562d51e55cf1a1f66)
Theorem hlt_ITERATE_AND : forall A:set, A <> Empty -> forall p s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_iterate 2 A hl_and s p = 1 <-> forall x :e A, hl_IN A x s = 1 -> p x = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:4699 / OPERATIVE_DIVISION_AND   (hash md5:d3c7372963c186a89d6d18e2a8f6df88)
Theorem hlt_OPERATIVE_DIVISION_AND : forall A:set, A <> Empty -> forall P d :e 2 :^: (2 :^: hl_ty_cart R A), forall a b :e hl_ty_cart R A, hl_operative 2 A hl_and P = 1 /\ hl_division_of A d (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1 -> ((forall i :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) i d = 1 -> P i = 1) <-> P (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:4706 / OPERATIVE_APPROXIMABLE   (hash md5:b4ec58b04c28d5dc0480e967ee7ca70c)
Theorem hlt_OPERATIVE_APPROXIMABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall e1 :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> hl_operative 2 M hl_and (fun i :e 2 :^: hl_ty_cart R M => if exists g :e hl_ty_cart R N :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x i = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (g x))) e1 = 1) /\ hl_integrable_on M N g i = 1 then 1 else 0) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4753 / APPROXIMABLE_ON_DIVISION   (hash md5:99abc91dd0405a0d6564683bfec474db)
Theorem hlt_APPROXIMABLE_ON_DIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall e1 :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall i :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) i d = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x i = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (g x))) e1 = 1) /\ hl_integrable_on M N g i = 1)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (g x))) e1 = 1) /\ hl_integrable_on M N g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4774 / INTEGRABLE_CONTINUOUS   (hash md5:aee8a3d4589db4de992860957adb4424)
Theorem hlt_INTEGRABLE_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_continuous_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:4811 / OPERATIVE_1_LT   (hash md5:318470efdde44c2bc12eec0b3e47e322)
Theorem hlt_OPERATIVE_1_LT : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> forall f :e A :^: (2 :^: hl_ty_cart R 1), hl_operative A 1 op f = 1 <-> (forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop b) (hl_drop a) = 1 -> f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_neutral A op) /\ forall a b c :e hl_ty_cart R 1, hl_real_lt (hl_drop a) (hl_drop c) = 1 /\ hl_real_lt (hl_drop c) (hl_drop b) = 1 -> op (f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))).
Admitted.

// HOL Light: Multivariate/integration.ml:4876 / OPERATIVE_1_LE   (hash md5:2c97d3eb186f06466c2f348d9189e52a)
Theorem hlt_OPERATIVE_1_LE : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> forall f :e A :^: (2 :^: hl_ty_cart R 1), hl_operative A 1 op f = 1 <-> (forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop b) (hl_drop a) = 1 -> f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_neutral A op) /\ forall a b c :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop c) = 1 /\ hl_real_le (hl_drop c) (hl_drop b) = 1 -> op (f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))).
Admitted.

// HOL Light: Multivariate/integration.ml:4902 / ADDITIVE_DIVISION_1   (hash md5:430ead85c7f73671a9ae89b4d93b13ff)
Theorem hlt_ADDITIVE_DIVISION_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall d :e 2 :^: (2 :^: hl_ty_cart R 1), forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_vsum (2 :^: hl_ty_cart R 1) N d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))) = hl_vector_sub N (f b) (f a).
Admitted.

// HOL Light: Multivariate/integration.ml:4938 / ADDITIVE_TAGGED_DIVISION_1   (hash md5:c0a8e6ab85d80989e9aaf9bb2d4eef4a)
Theorem hlt_ADDITIVE_TAGGED_DIVISION_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall p :e 2 :^: (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1), forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ hl_tagged_division_of 1 p (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_vsum (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1) => if forall x :e hl_ty_cart R 1, forall k :e 2 :^: hl_ty_cart R 1, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) x k)) (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))) = 1 then 1 else 0)) = hl_vector_sub N (f b) (f a).
Admitted.

// HOL Light: Multivariate/integration.ml:4980 / HAS_INTEGRAL_FACTOR_CONTENT   (hash md5:cf506b59940490798ebaeac71d4bd791)
Theorem hlt_HAS_INTEGRAL_FACTOR_CONTENT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall a b :e hl_ty_cart R M, hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_gauge M d = 1 /\ forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))) i)) (hl_real_mul e1 (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5010 / GAUGE_MODIFY   (hash md5:0135b3398d2beca26c41fe68065681c3)
Theorem hlt_GAUGE_MODIFY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, (forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_open M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6299 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6299 (hl_IN (hl_ty_cart R N) (f x) s) x = 1 then 1 else 0)) = 1) -> forall d :e 2 :^: hl_ty_cart R N :^: hl_ty_cart R N, hl_gauge N d = 1 -> hl_gauge M (fun x :e hl_ty_cart R M => fun y :e hl_ty_cart R M => d (f x) (f y)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5027 / OPERATIVE_INTEGRABLE   (hash md5:5de00435de8dcf69e3fb5e08b0dbc435)
Theorem hlt_OPERATIVE_INTEGRABLE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, hl_operative 2 A hl_and (fun i :e 2 :^: hl_ty_cart R A => hl_integrable_on A B f i) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5034 / INTEGRABLE_SUBINTERVAL   (hash md5:9d4475d8a46205f4fcef96e3db8166bc)
Theorem hlt_INTEGRABLE_SUBINTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c d :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5050 / HAS_INTEGRAL_COMBINE   (hash md5:3bd4738d85071f4f61be11e633fef5a2)
Theorem hlt_HAS_INTEGRAL_COMBINE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall i j :e hl_ty_cart R N, forall a b c :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop c) = 1 /\ (hl_real_le (hl_drop c) (hl_drop b) = 1 /\ (hl_has_integral 1 N f i (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_integral 1 N f j (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1)) -> hl_has_integral 1 N f (hl_vector_add N i j) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5067 / INTEGRAL_COMBINE   (hash md5:a32f4e0b67397d3512e5e33c27ae3113)
Theorem hlt_INTEGRAL_COMBINE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop c) = 1 /\ (hl_real_le (hl_drop c) (hl_drop b) = 1 /\ hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_vector_add N (hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) = hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f.
Admitted.

// HOL Light: Multivariate/integration.ml:5080 / INTEGRABLE_COMBINE   (hash md5:f0b052c6b313752752c56c5f0422035c)
Theorem hlt_INTEGRABLE_COMBINE : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop c) = 1 /\ (hl_real_le (hl_drop c) (hl_drop b) = 1 /\ (hl_integrable_on 1 A f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_integrable_on 1 A f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1)) -> hl_integrable_on 1 A f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5092 / INTEGRABLE_ON_LITTLE_SUBINTERVALS   (hash md5:b63cc0d94b49f6a4c1e5bf72d53b4270)
Theorem hlt_INTEGRABLE_ON_LITTLE_SUBINTERVALS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall u v :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_ball M (hl_pair (hl_ty_cart R M) R x d)) = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5128 / INTEGRAL_HAS_VECTOR_DERIVATIVE_POINTWISE   (hash md5:ec4a6ca3450ead2be5af463b60915649)
Theorem hlt_INTEGRAL_HAS_VECTOR_DERIVATIVE_POINTWISE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b x :e hl_ty_cart R 1, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_continuous (hl_ty_cart R 1) N f (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) -> hl_has_vector_derivative N (fun u :e hl_ty_cart R 1 => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a u) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (f x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5185 / INTEGRAL_HAS_VECTOR_DERIVATIVE   (hash md5:414af92ebb805b6e78f465b20bdfea5f)
Theorem hlt_INTEGRAL_HAS_VECTOR_DERIVATIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_vector_derivative N (fun u :e hl_ty_cart R 1 => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a u) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (f x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5195 / ANTIDERIVATIVE_CONTINUOUS   (hash md5:c16ccef1fb6b6eba077b069670db8bbc)
Theorem hlt_ANTIDERIVATIVE_CONTINUOUS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_vector_derivative N g (f x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5207 / HAS_INTEGRAL_RESTRICT_OPEN_SUBINTERVAL   (hash md5:3272d379f6b915fd8998c2848e35a3ba)
Theorem hlt_HAS_INTEGRAL_RESTRICT_OPEN_SUBINTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c d :e hl_ty_cart R M, forall i :e hl_ty_cart R N, hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_has_integral M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d))) (f x) (hl_vec N (hl_NUMERAL hl_zero))) i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5288 / HAS_INTEGRAL_RESTRICT_CLOSED_SUBINTERVAL   (hash md5:df765e004d5fcc3cb4b8f2c383d1b1ee)
Theorem hlt_HAS_INTEGRAL_RESTRICT_CLOSED_SUBINTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c d :e hl_ty_cart R M, forall i :e hl_ty_cart R N, hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_has_integral M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) (f x) (hl_vec N (hl_NUMERAL hl_zero))) i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5303 / HAS_INTEGRAL_RESTRICT_CLOSED_SUBINTERVALS_EQ   (hash md5:1b573a9d63ab1e08c2a464b45b13a9e9)
Theorem hlt_HAS_INTEGRAL_RESTRICT_CLOSED_SUBINTERVALS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c d :e hl_ty_cart R M, forall i :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> (hl_has_integral M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) (f x) (hl_vec N (hl_NUMERAL hl_zero))) i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5332 / HAS_INTEGRAL   (hash md5:466b3ef769f24ad9d13e50b7fdfe7ef8)
Theorem hlt_HAS_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_has_integral M N f i s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall a b :e hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_ball M (hl_pair (hl_ty_cart R M) R (hl_vec M (hl_NUMERAL hl_zero)) B)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> exists z :e hl_ty_cart R N, hl_has_integral M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) z (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N z i)) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5429 / HAS_INTEGRAL_RESTRICT   (hash md5:852b3496ee81de68ad52e26634f331ed)
Theorem hlt_HAS_INTEGRAL_RESTRICT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R M) s t = 1 -> (hl_has_integral M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) i t = 1 <-> hl_has_integral M N f i s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5440 / INTEGRAL_RESTRICT   (hash md5:482d17e681d0cd8905391f2db529bc4e)
Theorem hlt_INTEGRAL_RESTRICT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) s t = 1 -> hl_integral M N t (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) = hl_integral M N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:5447 / INTEGRABLE_RESTRICT   (hash md5:86344d3536b263f20b647d0f9287f052)
Theorem hlt_INTEGRABLE_RESTRICT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) s t = 1 -> (hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) t = 1 <-> hl_integrable_on M N f s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5454 / HAS_INTEGRAL_RESTRICT_UNIV   (hash md5:7757ab4a89fff6cee0292127ea7e08d3)
Theorem hlt_HAS_INTEGRAL_RESTRICT_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, hl_has_integral M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) i (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_has_integral M N f i s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5460 / INTEGRAL_RESTRICT_UNIV   (hash md5:70d4871485ad06bd030099f8854ffb0d)
Theorem hlt_INTEGRAL_RESTRICT_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integral M N (hl_UNIV (hl_ty_cart R M)) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) = hl_integral M N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:5466 / INTEGRABLE_RESTRICT_UNIV   (hash md5:f437d24869eb8fd66ab63f443ac15ecd)
Theorem hlt_INTEGRABLE_RESTRICT_UNIV : forall A M:set, A <> Empty -> M <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M A (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R A) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec A (hl_NUMERAL hl_zero))) (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_integrable_on M A f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5471 / HAS_INTEGRAL_RESTRICT_INTER   (hash md5:6558a347476e32d72192186a29f9402e)
Theorem hlt_HAS_INTEGRAL_RESTRICT_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall i :e hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_has_integral M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) i t = 1 <-> hl_has_integral M N f i (hl_INTER (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5479 / INTEGRAL_RESTRICT_INTER   (hash md5:3908317494bd6d30459b628cbaa81dc7)
Theorem hlt_INTEGRAL_RESTRICT_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integral M N t (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) = hl_integral M N (hl_INTER (hl_ty_cart R M) s t) f.
Admitted.

// HOL Light: Multivariate/integration.ml:5485 / INTEGRABLE_RESTRICT_INTER   (hash md5:8ab0fa9c0bf595152ea7c2c9b82dc434)
Theorem hlt_INTEGRABLE_RESTRICT_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) t = 1 <-> hl_integrable_on M N f (hl_INTER (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5491 / HAS_INTEGRAL_ON_SUPERSET   (hash md5:df170326484aa43ba02bd957c517d8a3)
Theorem hlt_HAS_INTEGRAL_ON_SUPERSET : forall A B:set, A <> Empty -> B <> Empty -> forall i :e hl_ty_cart R A, forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s t :e 2 :^: hl_ty_cart R B, (forall x :e hl_ty_cart R B, ~ hl_IN (hl_ty_cart R B) x s = 1 -> f x = hl_vec A (hl_NUMERAL hl_zero)) /\ (hl_SUBSET (hl_ty_cart R B) s t = 1 /\ hl_has_integral B A f i s = 1) -> hl_has_integral B A f i t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5501 / INTEGRABLE_ON_SUPERSET   (hash md5:f6caa997e08599376876eab944ae9785)
Theorem hlt_INTEGRABLE_ON_SUPERSET : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s t :e 2 :^: hl_ty_cart R B, (forall x :e hl_ty_cart R B, ~ hl_IN (hl_ty_cart R B) x s = 1 -> f x = hl_vec A (hl_NUMERAL hl_zero)) /\ (hl_SUBSET (hl_ty_cart R B) s t = 1 /\ hl_integrable_on B A f s = 1) -> hl_integrable_on B A f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5507 / NEGLIGIBLE_ON_INTERVALS   (hash md5:e8d9085aca37f392dc0ffdf3bfc83893)
Theorem hlt_NEGLIGIBLE_ON_INTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall a b :e hl_ty_cart R N, hl_negligible N (hl_INTER (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5521 / NEGLIGIBLE_BOUNDED_SUBSETS   (hash md5:b19fcde37b5eb616e88994c9bac5187b)
Theorem hlt_NEGLIGIBLE_BOUNDED_SUBSETS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, hl_bounded N t = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_negligible N t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5527 / NEGLIGIBLE_ON_COUNTABLE_INTERVALS   (hash md5:569803c1eb034cb5e7005f9936529870)
Theorem hlt_NEGLIGIBLE_ON_COUNTABLE_INTERVALS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> forall n :e omega, hl_negligible N (hl_INTER (hl_ty_cart R N) s (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N (hl_vec N n)) (hl_vec N n)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5550 / HAS_INTEGRAL_SPIKE_SET_EQ   (hash md5:b1486fdde47a40ccaa3af15fda5b74d9)
Theorem hlt_HAS_INTEGRAL_SPIKE_SET_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 -> (hl_has_integral M N f y s = 1 <-> hl_has_integral M N f y t = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5559 / HAS_INTEGRAL_SPIKE_SET   (hash md5:853f8b04499d9e42cf0a51f5b42323f7)
Theorem hlt_HAS_INTEGRAL_SPIKE_SET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 /\ hl_has_integral M N f y s = 1 -> hl_has_integral M N f y t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5566 / INTEGRABLE_SPIKE_SET   (hash md5:bd2055c4be90d4a57f251802ee29abcf)
Theorem hlt_INTEGRABLE_SPIKE_SET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 -> hl_integrable_on M N f s = 1 -> hl_integrable_on M N f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5572 / INTEGRABLE_SPIKE_SET_EQ   (hash md5:34947965745403d4a2a65bab7b3d869f)
Theorem hlt_INTEGRABLE_SPIKE_SET_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 -> (hl_integrable_on M N f s = 1 <-> hl_integrable_on M N f t = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5578 / INTEGRAL_SPIKE_SET   (hash md5:bb8f37f37ffdcbc9ada7ede69042a361)
Theorem hlt_INTEGRAL_SPIKE_SET : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e A, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 -> hl_integral M N s f = hl_integral M N t f.
Admitted.

// HOL Light: Multivariate/integration.ml:5586 / HAS_INTEGRAL_INTERIOR   (hash md5:cebbdc024e3c1ec567362c079c71e7e2)
Theorem hlt_HAS_INTEGRAL_INTERIOR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_frontier M s) = 1 -> (hl_has_integral M N f y (hl_interior M s) = 1 <-> hl_has_integral M N f y s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5598 / HAS_INTEGRAL_CLOSURE   (hash md5:3884bd3d052a399c10b2d3c3ea4dc61a)
Theorem hlt_HAS_INTEGRAL_CLOSURE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_frontier M s) = 1 -> (hl_has_integral M N f y (hl_closure M s) = 1 <-> hl_has_integral M N f y s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5610 / INTEGRABLE_CASES   (hash md5:4b1b0606d5dbd3797adaf3d49c1ddca1)
Theorem hlt_INTEGRABLE_CASES : forall M N:set, M <> Empty -> N <> Empty -> forall P :e 2 :^: hl_ty_cart R M, forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6300 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6300 (if hl_IN (hl_ty_cart R M) x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_integrable_on M N g (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6301 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6301 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ~ P x = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (P x) (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5626 / HAS_INTEGRAL_TWIDDLE   (hash md5:d4e711f189476c022c89263e83fb27c3)
Theorem hlt_HAS_INTEGRAL_TWIDDLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R M :^: hl_ty_cart R N, forall r :e R, forall i :e hl_ty_cart R P, forall a b :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ ((forall x :e hl_ty_cart R M, h (g x) = x) /\ ((forall x :e hl_ty_cart R N, g (h x) = x) /\ ((forall x :e hl_ty_cart R M, hl_continuous (hl_ty_cart R M) N g (hl_at M x) = 1) /\ ((forall u v :e hl_ty_cart R M, exists w z :e hl_ty_cart R N, hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) w z) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ ((forall u v :e hl_ty_cart R N, exists w z :e hl_ty_cart R M, hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) h (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) w z) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) /\ ((forall u v :e hl_ty_cart R M, hl_content N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = hl_real_mul r (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) /\ hl_has_integral N P f i (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1)))))) -> hl_has_integral M P (fun x :e hl_ty_cart R M => f (g x)) (hl_vmul P (hl_real_inv r) i) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) h (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5753 / HAS_INTEGRAL_TWIDDLE_GEN   (hash md5:51f39aa47edf06da0c4f5a5f604f63ce)
Theorem hlt_HAS_INTEGRAL_TWIDDLE_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R M :^: hl_ty_cart R N, forall r :e R, forall i :e hl_ty_cart R P, forall s :e 2 :^: hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ ((forall x :e hl_ty_cart R M, h (g x) = x) /\ ((forall x :e hl_ty_cart R N, g (h x) = x) /\ ((forall x :e hl_ty_cart R M, hl_continuous (hl_ty_cart R M) N g (hl_at M x) = 1) /\ ((forall b :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) b = 1 -> exists b' :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) b' = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) b)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_ball M (hl_pair (hl_ty_cart R M) R (hl_vec M (hl_NUMERAL hl_zero)) b'))) = 1) /\ ((forall u v :e hl_ty_cart R M, exists w z :e hl_ty_cart R N, hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) w z) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ ((forall u v :e hl_ty_cart R N, exists w z :e hl_ty_cart R M, hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) h (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) w z) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) /\ ((forall u v :e hl_ty_cart R M, hl_content N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = hl_real_mul r (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) u v) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) /\ hl_has_integral N P f i s = 1))))))) -> hl_has_integral M P (fun x :e hl_ty_cart R M => f (g x)) (hl_vmul P (hl_real_inv r) i) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R M) h s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5798 / HAS_INTEGRAL_TWIZZLE_INTERVAL   (hash md5:98a19d451ae2a4d11175736aab6c6d2a)
Theorem hlt_HAS_INTEGRAL_TWIZZLE_INTERVAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall y :e hl_ty_cart R P, forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall p :e omega :^: omega, forall a b :e hl_ty_cart R M, hl_has_integral N P f y (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_lambda R N (fun i :e omega => hl_vindex R M a (p i))) (hl_lambda R N (fun i :e omega => hl_vindex R M b (p i)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1) -> hl_has_integral M P (fun x :e hl_ty_cart R M => f (hl_lambda R N (fun i :e omega => hl_vindex R M x (p i)))) y (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5849 / HAS_INTEGRAL_TWIZZLE   (hash md5:6ea9b8c953922eb4d3ba2e1799e4b589)
Theorem hlt_HAS_INTEGRAL_TWIZZLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R P, forall p :e omega :^: omega, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ (hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 /\ hl_has_integral N P f y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_vindex R M x (p i))) s) = 1) -> hl_has_integral M P (fun x :e hl_ty_cart R M => f (hl_lambda R N (fun i :e omega => hl_vindex R M x (p i)))) y s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5893 / HAS_INTEGRAL_TWIZZLE_EQ   (hash md5:8464c36cbc4be2bce5fe2d2511bd7b9d)
Theorem hlt_HAS_INTEGRAL_TWIZZLE_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R P, forall p :e omega :^: omega, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> (hl_has_integral N P f y (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_vindex R M x (p i))) s) = 1 <-> hl_has_integral M P (fun x :e hl_ty_cart R M => f (hl_lambda R N (fun i :e omega => hl_vindex R M x (p i)))) y s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5917 / INTEGRABLE_TWIZZLE_EQ   (hash md5:71f1ab4cc4b54d9b5ab39f510b37e6d9)
Theorem hlt_INTEGRABLE_TWIZZLE_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall p :e omega :^: omega, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> (hl_integrable_on N P f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_vindex R M x (p i))) s) = 1 <-> hl_integrable_on M P (fun x :e hl_ty_cart R M => f (hl_lambda R N (fun i :e omega => hl_vindex R M x (p i)))) s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:5926 / INTEGRAL_TWIZZLE_EQ   (hash md5:e1867642584fe865e8986884b0abe02c)
Theorem hlt_INTEGRAL_TWIZZLE_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall p :e omega :^: omega, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> hl_integral N P (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_vindex R M x (p i))) s) f = hl_integral M P s (fun x :e hl_ty_cart R M => f (hl_lambda R N (fun i :e omega => hl_vindex R M x (p i)))).
Admitted.

// HOL Light: Multivariate/integration.ml:5935 / HAS_INTEGRAL_PASTECART_SYM_ALT   (hash md5:ac517285d4c64ac8c2e60c0060565a7c)
Theorem hlt_HAS_INTEGRAL_PASTECART_SYM_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum N M), forall y :e hl_ty_cart R P, hl_has_integral (hl_ty_finite_sum N M) P (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) y s = 1 <-> hl_has_integral (hl_ty_finite_sum M N) P f y (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum N M)) (hl_ty_cart R (hl_ty_finite_sum M N)) (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z)) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5965 / HAS_INTEGRAL_PASTECART_SYM   (hash md5:68784e841339c420825f9ce4c672169e)
Theorem hlt_HAS_INTEGRAL_PASTECART_SYM : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), forall y :e hl_ty_cart R P, hl_has_integral (hl_ty_finite_sum N M) P (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) y (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum N M)) (fun z :e hl_ty_cart R (hl_ty_finite_sum M N) => hl_pastecart R N M (hl_sndcart R M N z) (hl_fstcart R M N z)) s) = 1 <-> hl_has_integral (hl_ty_finite_sum M N) P f y s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5981 / INTEGRAL_PASTECART_SYM   (hash md5:78137b01f197016972f70d4024d0fd8a)
Theorem hlt_INTEGRAL_PASTECART_SYM : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_integral (hl_ty_finite_sum N M) P (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum N M)) (fun z :e hl_ty_cart R (hl_ty_finite_sum M N) => hl_pastecart R N M (hl_sndcart R M N z) (hl_fstcart R M N z)) s) (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) = hl_integral (hl_ty_finite_sum M N) P s f.
Admitted.

// HOL Light: Multivariate/integration.ml:5989 / INTEGRABLE_PASTECART_SYM   (hash md5:64ff70910838ad0a866222916bfd9081)
Theorem hlt_INTEGRABLE_PASTECART_SYM : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), hl_integrable_on (hl_ty_finite_sum N M) P (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum N M)) (fun z :e hl_ty_cart R (hl_ty_finite_sum M N) => hl_pastecart R N M (hl_sndcart R M N z) (hl_fstcart R M N z)) s) = 1 <-> hl_integrable_on (hl_ty_finite_sum M N) P f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:5996 / INTERVAL_IMAGE_AFFINITY_INTERVAL   (hash md5:7265cc82dddb316143238f0e64a485dd)
Theorem hlt_INTERVAL_IMAGE_AFFINITY_INTERVAL : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, forall m :e R, forall c :e hl_ty_cart R A, exists u v :e hl_ty_cart R A, hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A (hl_vmul A m x) c) (hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = hl_closed_interval A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) u v) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))).
Admitted.

// HOL Light: Multivariate/integration.ml:6001 / CONTENT_IMAGE_AFFINITY_INTERVAL   (hash md5:52546ad438fe34afe683cea96ecc42b7)
Theorem hlt_CONTENT_IMAGE_AFFINITY_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_content N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = hl_real_mul (hl_real_pow (hl_real_abs m) (hl_dimindex N (hl_UNIV N))) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/integration.ml:6025 / HAS_INTEGRAL_AFFINITY   (hash md5:c3d7b6ffee3a74f17689c3733f14ee4d)
Theorem hlt_HAS_INTEGRAL_AFFINITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall m :e R, forall c :e hl_ty_cart R M, hl_has_integral M N f i s = 1 /\ ~ m = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_has_integral M N (fun x :e hl_ty_cart R M => f (hl_vector_add M (hl_vmul M m x) c)) (hl_vmul N (hl_real_inv (hl_real_pow (hl_real_abs m) (hl_dimindex M (hl_UNIV M)))) i) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M (hl_vmul M (hl_real_inv m) x) (hl_vector_neg M (hl_vmul M (hl_real_inv m) c))) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6053 / INTEGRABLE_AFFINITY   (hash md5:e34880d1a734308f9831c3e6451290a4)
Theorem hlt_INTEGRABLE_AFFINITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall m :e R, forall c :e hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ ~ m = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_add M (hl_vmul M m x) c)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M (hl_vmul M (hl_real_inv m) x) (hl_vector_neg M (hl_vmul M (hl_real_inv m) c))) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6060 / CONTENT_IMAGE_STRETCH_INTERVAL   (hash md5:56f5271a17c3c0a6de00ca0c4012ef25)
Theorem hlt_CONTENT_IMAGE_STRETCH_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, forall m :e R :^: omega, hl_content N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_lambda R N (fun k :e omega => hl_real_mul (m k) (hl_vindex R N x k))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))) = hl_real_mul (hl_real_abs (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) m)) (hl_content N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/integration.ml:6076 / HAS_INTEGRAL_STRETCH   (hash md5:66915956c10aca2d7a6f5ab71c1e2c86)
Theorem hlt_HAS_INTEGRAL_STRETCH : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall m :e R :^: omega, forall a b :e hl_ty_cart R M, hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1 -> ~ m k = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_has_integral M N (fun x :e hl_ty_cart R M => f (hl_lambda R M (fun k :e omega => hl_real_mul (m k) (hl_vindex R M x k)))) (hl_vmul N (hl_real_inv (hl_real_abs (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) m))) i) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_lambda R M (fun k :e omega => hl_real_mul (hl_real_inv (m k)) (hl_vindex R M x k))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6094 / INTEGRABLE_STRETCH   (hash md5:3098c959a83483803046461156f7478f)
Theorem hlt_INTEGRABLE_STRETCH : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall m :e R :^: omega, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1 -> ~ m k = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_lambda R M (fun k :e omega => hl_real_mul (m k) (hl_vindex R M x k)))) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_lambda R M (fun k :e omega => hl_real_mul (hl_real_inv (m k)) (hl_vindex R M x k))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6102 / HAS_INTEGRAL_REFLECT_LEMMA   (hash md5:43a733c4589fff6ddc2b1b31b8882288)
Theorem hlt_HAS_INTEGRAL_REFLECT_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall a b :e hl_ty_cart R M, hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_has_integral M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M b) (hl_vector_neg M a)) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6123 / HAS_INTEGRAL_REFLECT   (hash md5:de13b12a232723709142e690938509d9)
Theorem hlt_HAS_INTEGRAL_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall a b :e hl_ty_cart R M, hl_has_integral M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M b) (hl_vector_neg M a)) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> hl_has_integral M N f i (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6131 / INTEGRABLE_REFLECT   (hash md5:a44fcea82b1e8a2bbbd7c0e09888e43f)
Theorem hlt_INTEGRABLE_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M b) (hl_vector_neg M a)) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6137 / INTEGRAL_REFLECT   (hash md5:28f68967179a4647be5e916d5c283f52)
Theorem hlt_INTEGRAL_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M b) (hl_vector_neg M a)) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) = hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f.
Admitted.

// HOL Light: Multivariate/integration.ml:6143 / HAS_INTEGRAL_TRANSLATION   (hash md5:cc5974b3f9eddb13780dcd39f609409d)
Theorem hlt_HAS_INTEGRAL_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_has_integral M N (fun x :e hl_ty_cart R M => f (hl_vector_add M a x)) i s = 1 <-> hl_has_integral M N f i (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6160 / INTEGRAL_TRANSLATION   (hash md5:9b07e7d862227e03d946d17b3ffa9450)
Theorem hlt_INTEGRAL_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_integral M N s (fun x :e hl_ty_cart R M => f (hl_vector_add M a x)) = hl_integral M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) s) f.
Admitted.

// HOL Light: Multivariate/integration.ml:6165 / INTEGRABLE_TRANSLATION   (hash md5:2f53949e3fdb3654c6b2cf5f42d5a547)
Theorem hlt_INTEGRABLE_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_add M a x)) s = 1 <-> hl_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6176 / DIVISION_COMMON_POINT_BOUND   (hash md5:f9693f1ef245117b8f5ac256fda98c54)
Theorem hlt_DIVISION_COMMON_POINT_BOUND : forall N:set, N <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_division_of N d s = 1 -> hl_le (hl_CARD (2 :^: hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6304 :e 2 :^: hl_ty_cart R N => if exists k :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6304 (if hl_IN (2 :^: hl_ty_cart R N) k d = 1 /\ (~ hl_content N k = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_IN (hl_ty_cart R N) x k = 1) then 1 else 0) k = 1 then 1 else 0))) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6223 / TAGGED_PARTIAL_DIVISION_COMMON_POINT_BOUND   (hash md5:d9f4cdb2c111500fb3a292eb271f0001)
Theorem hlt_TAGGED_PARTIAL_DIVISION_COMMON_POINT_BOUND : forall N:set, N <> Empty -> forall p :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, forall y :e hl_ty_cart R N, hl_tagged_partial_division_of N p s = 1 -> hl_le (hl_CARD (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (fun GEN_PVAR_6305 :e hl_ty_cart R N :*: 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, exists k :e 2 :^: hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) GEN_PVAR_6305 (if hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k) p = 1 /\ (hl_IN (hl_ty_cart R N) y k = 1 /\ ~ hl_content N k = hl_real_of_num (hl_NUMERAL hl_zero)) then 1 else 0) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k) = 1 then 1 else 0))) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6261 / TAGGED_PARTIAL_DIVISION_COMMON_TAGS   (hash md5:f725ab703a5317b936265f7244b400c7)
Theorem hlt_TAGGED_PARTIAL_DIVISION_COMMON_TAGS : forall N:set, N <> Empty -> forall p :e 2 :^: (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_tagged_partial_division_of N p s = 1 -> hl_le (hl_CARD (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (fun GEN_PVAR_6306 :e hl_ty_cart R N :*: 2 :^: hl_ty_cart R N => if exists k :e 2 :^: hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) GEN_PVAR_6306 (if hl_IN (hl_ty_cart R N :*: 2 :^: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k) p = 1 /\ ~ hl_content N k = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_pair (hl_ty_cart R N) (2 :^: hl_ty_cart R N) x k) = 1 then 1 else 0))) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6280 / HAS_INTEGRAL_DROP_POS_AE   (hash md5:8cb027d22050e60342655d63376619a2)
Theorem hlt_HAS_INTEGRAL_DROP_POS_AE : forall M:set, M <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R 1, hl_has_integral M 1 f i s = 1 /\ (hl_negligible M t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1)) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop i) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6293 / INTEGRAL_DROP_POS_AE   (hash md5:22245b8c9ca4c95990143b46724a6710)
Theorem hlt_INTEGRAL_DROP_POS_AE : forall M:set, M <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M 1 f s = 1 /\ (hl_negligible M t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1)) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (hl_integral M 1 s f)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6301 / HAS_INTEGRAL_SUBSET_COMPONENT_LE   (hash md5:a2a70350f29a4fc489e48ef37425a625)
Theorem hlt_HAS_INTEGRAL_SUBSET_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall i j :e hl_ty_cart R N, forall k :e omega, hl_SUBSET (hl_ty_cart R M) s t = 1 /\ (hl_has_integral M N f i s = 1 /\ (hl_has_integral M N f j t = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f x) k) = 1))))) -> hl_real_le (hl_vindex R N i k) (hl_vindex R N j k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6318 / INTEGRAL_SUBSET_COMPONENT_LE   (hash md5:8d06a26cf6a24ef1f570e4c158960ab5)
Theorem hlt_INTEGRAL_SUBSET_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall k :e omega, hl_SUBSET (hl_ty_cart R M) s t = 1 /\ (hl_integrable_on M N f s = 1 /\ (hl_integrable_on M N f t = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f x) k) = 1))))) -> hl_real_le (hl_vindex R N (hl_integral M N s f) k) (hl_vindex R N (hl_integral M N t f) k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6327 / HAS_INTEGRAL_SUBSET_DROP_LE   (hash md5:8172cbb09e60fd4a129e375ba2495a68)
Theorem hlt_HAS_INTEGRAL_SUBSET_DROP_LE : forall M:set, M <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, forall i j :e hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R M) s t = 1 /\ (hl_has_integral M 1 f i s = 1 /\ (hl_has_integral M 1 f j t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1))) -> hl_real_le (hl_drop i) (hl_drop j) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6336 / INTEGRAL_SUBSET_DROP_LE   (hash md5:0839ee05e0493c5c552b02e90db3098a)
Theorem hlt_INTEGRAL_SUBSET_DROP_LE : forall M:set, M <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) s t = 1 /\ (hl_integrable_on M 1 f s = 1 /\ (hl_integrable_on M 1 f t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x t = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1))) -> hl_real_le (hl_drop (hl_integral M 1 s f)) (hl_drop (hl_integral M 1 t f)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6344 / INTEGRAL_SUBSET_DROP_LE_AE   (hash md5:b7f5532dbedaa7499605a20c42d63f0f)
Theorem hlt_INTEGRAL_SUBSET_DROP_LE_AE : forall M:set, M <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t u :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) s t = 1 /\ (hl_integrable_on M 1 f s = 1 /\ (hl_integrable_on M 1 f t = 1 /\ (hl_negligible M u = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t u) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1)))) -> hl_real_le (hl_drop (hl_integral M 1 s f)) (hl_drop (hl_integral M 1 t f)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6364 / HAS_INTEGRAL_ALT   (hash md5:296882928b50b320be5a99e6121f60da)
Theorem hlt_HAS_INTEGRAL_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, hl_has_integral M N f i s = 1 <-> (forall a b :e hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall a b :e hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_ball M (hl_pair (hl_ty_cart R M) R (hl_vec M (hl_NUMERAL hl_zero)) B)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero)))) i)) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6402 / INTEGRABLE_ALT   (hash md5:5a37770a8a419c875255b993f60536b9)
Theorem hlt_INTEGRABLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 <-> (forall a b :e hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall a b c d :e hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_ball M (hl_pair (hl_ty_cart R M) R (hl_vec M (hl_NUMERAL hl_zero)) B)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_ball M (hl_pair (hl_ty_cart R M) R (hl_vec M (hl_NUMERAL hl_zero)) B)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero)))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero)))))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6471 / INTEGRABLE_ALT_SUBSET   (hash md5:805985a795ead263054c4bfb00f698db)
Theorem hlt_INTEGRABLE_ALT_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 <-> (forall a b :e hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall a b c d :e hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) (hl_ball M (hl_pair (hl_ty_cart R M) R (hl_vec M (hl_NUMERAL hl_zero)) B)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero)))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero)))))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6505 / INTEGRABLE_ON_SUBINTERVAL   (hash md5:0810ffddc18f2214ae3c39ad19daa1be)
Theorem hlt_INTEGRABLE_ON_SUBINTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6516 / INTEGRAL_SPLIT   (hash md5:8675e77140e0a2242729885b2436e8af)
Theorem hlt_INTEGRAL_SPLIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall t :e R, forall k :e omega, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1) -> hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f = hl_vector_add N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a (hl_lambda R M (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_min (hl_vindex R M b k) t) (hl_vindex R M b i)))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_lambda R M (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_max (hl_vindex R M a k) t) (hl_vindex R M a i))) b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f).
Admitted.

// HOL Light: Multivariate/integration.ml:6534 / INTEGRAL_SPLIT_SIGNED   (hash md5:679b819bcbc025053def87fa9f5ff9aa)
Theorem hlt_INTEGRAL_SPLIT_SIGNED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall t :e R, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_real_le (hl_vindex R M a k) t = 1 /\ (hl_real_le (hl_vindex R M a k) (hl_vindex R M b k) = 1 /\ hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a (hl_lambda R M (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_max (hl_vindex R M b k) t) (hl_vindex R M b i)))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1))) -> hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f = hl_vector_add N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a (hl_lambda R M (fun i :e omega => hl_COND R (if i = k then 1 else 0) t (hl_vindex R M b i)))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) (hl_vmul N (hl_COND R (hl_real_lt (hl_vindex R M b k) t) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_lambda R M (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_min (hl_vindex R M b k) t) (hl_vindex R M a i))) (hl_lambda R M (fun i :e omega => hl_COND R (if i = k then 1 else 0) (hl_real_max (hl_vindex R M b k) t) (hl_vindex R M b i)))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f)).
Admitted.

// HOL Light: Multivariate/integration.ml:6586 / INTEGRAL_INTERVALS_INCLUSION_EXCLUSION   (hash md5:795858c6b8af626fefa43304cb7afa7c)
Theorem hlt_INTEGRAL_INTERVALS_INCLUSION_EXCLUSION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c d :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R M) c (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_IN (hl_ty_cart R M) d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f = hl_vsum (2 :^: omega) N (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6318 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6318 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M)))) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vmul N (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_6319 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_6319 (if hl_IN omega i s = 1 /\ hl_real_lt (hl_vindex R M d i) (hl_vindex R M c i) = 1 then 1 else 0) i = 1 then 1 else 0)))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_lambda R M (fun i :e omega => hl_COND R (hl_IN omega i s) (hl_real_min (hl_vindex R M c i) (hl_vindex R M d i)) (hl_vindex R M a i))) (hl_lambda R M (fun i :e omega => hl_COND R (hl_IN omega i s) (hl_real_max (hl_vindex R M c i) (hl_vindex R M d i)) (hl_vindex R M c i)))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f)).
Admitted.

// HOL Light: Multivariate/integration.ml:6760 / INTEGRAL_INTERVALS_DIFF_INCLUSION_EXCLUSION   (hash md5:a5cbf1525ed282223bff5a6add980ce4)
Theorem hlt_INTEGRAL_INTERVALS_DIFF_INCLUSION_EXCLUSION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c d :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R M) c (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_IN (hl_ty_cart R M) d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_vector_sub N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a c) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) = hl_vsum (2 :^: omega) N (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6322 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6322 (if ~ s = hl_EMPTY omega /\ hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) = 1 then 1 else 0) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vmul N (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_6323 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_6323 (if hl_IN omega i s = 1 /\ hl_real_lt (hl_vindex R M d i) (hl_vindex R M c i) = 1 then 1 else 0) i = 1 then 1 else 0)))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_lambda R M (fun i :e omega => hl_COND R (hl_IN omega i s) (hl_real_min (hl_vindex R M c i) (hl_vindex R M d i)) (hl_vindex R M a i))) (hl_lambda R M (fun i :e omega => hl_COND R (hl_IN omega i s) (hl_real_max (hl_vindex R M c i) (hl_vindex R M d i)) (hl_vindex R M c i)))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f)).
Admitted.

// HOL Light: Multivariate/integration.ml:6783 / INTEGRAL_INTERVALS_INCLUSION_EXCLUSION_RIGHT   (hash md5:b14d077fd171f850ad2e1940541dbdfd)
Theorem hlt_INTEGRAL_INTERVALS_INCLUSION_EXCLUSION_RIGHT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_IN (hl_ty_cart R M) c (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a c) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f = hl_vsum (2 :^: omega) N (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6324 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6324 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M)))) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vmul N (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD omega s)) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_lambda R M (fun i :e omega => hl_COND R (hl_IN omega i s) (hl_vindex R M c i) (hl_vindex R M a i))) b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f)).
Admitted.

// HOL Light: Multivariate/integration.ml:6819 / INTEGRAL_INTERVALS_INCLUSION_EXCLUSION_LEFT   (hash md5:425bfebb6a320e23de8b2f84dcb19d7b)
Theorem hlt_INTEGRAL_INTERVALS_INCLUSION_EXCLUSION_LEFT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_IN (hl_ty_cart R M) c (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f = hl_vsum (2 :^: omega) N (hl_GSPEC (2 :^: omega) (fun GEN_PVAR_6325 :e 2 :^: omega => if exists s :e 2 :^: omega, hl_SETSPEC (2 :^: omega) GEN_PVAR_6325 (hl_SUBSET omega s (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M)))) s = 1 then 1 else 0)) (fun s :e 2 :^: omega => hl_vmul N (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD omega s)) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a (hl_lambda R M (fun i :e omega => hl_COND R (hl_IN omega i s) (hl_vindex R M c i) (hl_vindex R M b i)))) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f)).
Admitted.

// HOL Light: Multivariate/integration.ml:6847 / HAS_INTEGRAL_REFLECT_GEN   (hash md5:5d4de3f1886eb8b33ced214ef3091ac6)
Theorem hlt_HAS_INTEGRAL_REFLECT_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_has_integral M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) i s = 1 <-> hl_has_integral M N f i (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6865 / INTEGRABLE_REFLECT_GEN   (hash md5:71197eb733457be1e1e2abc9547de587)
Theorem hlt_INTEGRABLE_REFLECT_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) s = 1 <-> hl_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6870 / INTEGRAL_REFLECT_GEN   (hash md5:e865b7fa25c4111cd2d54f38e418a9cb)
Theorem hlt_INTEGRAL_REFLECT_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integral M N s (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) = hl_integral M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s) f.
Admitted.

// HOL Light: Multivariate/integration.ml:6879 / INTEGRABLE_STRADDLE_INTERVAL   (hash md5:190d18e8f345876c60ca662679bfc123)
Theorem hlt_INTEGRABLE_STRADDLE_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists g h :e hl_ty_cart R 1 :^: hl_ty_cart R N, exists i j :e hl_ty_cart R 1, hl_has_integral N 1 g i (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_has_integral N 1 h j (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_real_lt (hl_vector_norm 1 (hl_vector_sub 1 i j)) e1 = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_real_le (hl_drop (g x)) (hl_drop (f x)) = 1 /\ hl_real_le (hl_drop (f x)) (hl_drop (h x)) = 1))) -> hl_integrable_on N 1 f (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:6933 / INTEGRABLE_STRADDLE   (hash md5:eb4645b697880a556a327092504125cb)
Theorem hlt_INTEGRABLE_STRADDLE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists g h :e hl_ty_cart R 1 :^: hl_ty_cart R N, exists i j :e hl_ty_cart R 1, hl_has_integral N 1 g i s = 1 /\ (hl_has_integral N 1 h j s = 1 /\ (hl_real_lt (hl_vector_norm 1 (hl_vector_sub 1 i j)) e1 = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_drop (g x)) (hl_drop (f x)) = 1 /\ hl_real_le (hl_drop (f x)) (hl_drop (h x)) = 1))) -> hl_integrable_on N 1 f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7069 / HAS_INTEGRAL_STRADDLE_NULL   (hash md5:160ea10aec97b7dda2478c05012f4e99)
Theorem hlt_HAS_INTEGRAL_STRADDLE_NULL : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1 /\ hl_real_le (hl_drop (f x)) (hl_drop (g x)) = 1) /\ hl_has_integral N 1 g (hl_vec 1 (hl_NUMERAL hl_zero)) s = 1 -> hl_has_integral N 1 f (hl_vec 1 (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7095 / HAS_INTEGRAL_UNION   (hash md5:21718a332183ea66ac196b72d3ac26c3)
Theorem hlt_HAS_INTEGRAL_UNION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i j :e hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R M, hl_has_integral M N f i s = 1 /\ (hl_has_integral M N f j t = 1 /\ hl_negligible M (hl_INTER (hl_ty_cart R M) s t) = 1) -> hl_has_integral M N f (hl_vector_add N i j) (hl_UNION (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7114 / INTEGRAL_UNION   (hash md5:4355ef9b75981f2415bb52c976201aa3)
Theorem hlt_INTEGRAL_UNION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ (hl_integrable_on M N f t = 1 /\ hl_negligible M (hl_INTER (hl_ty_cart R M) s t) = 1) -> hl_integral M N (hl_UNION (hl_ty_cart R M) s t) f = hl_vector_add N (hl_integral M N s f) (hl_integral M N t f).
Admitted.

// HOL Light: Multivariate/integration.ml:7123 / INTEGRABLE_UNION   (hash md5:3660b7cc4651e7a70dc6006df5b56471)
Theorem hlt_INTEGRABLE_UNION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ (hl_integrable_on M N f t = 1 /\ hl_negligible M (hl_INTER (hl_ty_cart R M) s t) = 1) -> hl_integrable_on M N f (hl_UNION (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7129 / INTEGRABLE_UNION_EQ   (hash md5:d02b9dd3ea27d619838083298df6f3dd)
Theorem hlt_INTEGRABLE_UNION_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ hl_integrable_on M N f t = 1 -> (hl_integrable_on M N f (hl_UNION (hl_ty_cart R M) s t) = 1 <-> hl_integrable_on M N f (hl_INTER (hl_ty_cart R M) s t) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:7143 / HAS_INTEGRAL_UNIONS_IMAGE   (hash md5:af2a28cbb4ed886d937761f8878d5307)
Theorem hlt_HAS_INTEGRAL_UNIONS_IMAGE : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M :^: A, forall i :e hl_ty_cart R N :^: A, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ ((forall s :e A, hl_IN A s t = 1 -> hl_has_integral M N f (i s) (k s) = 1) /\ hl_pairwise A (fun i1 :e A => fun j :e A => hl_negligible M (hl_INTER (hl_ty_cart R M) (k i1) (k j))) t = 1) -> hl_has_integral M N f (hl_vsum A N t i) (hl_UNIONS (hl_ty_cart R M) (hl_IMAGE A (2 :^: hl_ty_cart R M) k t)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7163 / HAS_INTEGRAL_UNIONS   (hash md5:0794f7a9dc8498de5fb7badcb0f2c0ca)
Theorem hlt_HAS_INTEGRAL_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: (2 :^: hl_ty_cart R M), hl_FINITE (2 :^: hl_ty_cart R M) t = 1 /\ ((forall s :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) s t = 1 -> hl_has_integral M N f (i s) s = 1) /\ (forall s s' :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) s t = 1 /\ (hl_IN (2 :^: hl_ty_cart R M) s' t = 1 /\ ~ s = s') -> hl_negligible M (hl_INTER (hl_ty_cart R M) s s') = 1)) -> hl_has_integral M N f (hl_vsum (2 :^: hl_ty_cart R M) N t i) (hl_UNIONS (hl_ty_cart R M) t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7173 / INTEGRABLE_UNIONS_IMAGE   (hash md5:fface4d5c102a725c97ac719e95f9dc5)
Theorem hlt_INTEGRABLE_UNIONS_IMAGE : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M :^: A, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ ((forall s :e A, hl_IN A s t = 1 -> hl_integrable_on M N f (k s) = 1) /\ hl_pairwise A (fun i :e A => fun j :e A => hl_negligible M (hl_INTER (hl_ty_cart R M) (k i) (k j))) t = 1) -> hl_integrable_on M N f (hl_UNIONS (hl_ty_cart R M) (hl_IMAGE A (2 :^: hl_ty_cart R M) k t)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7186 / INTEGRABLE_UNIONS   (hash md5:d8c187463515035a386d8fd3180bc12b)
Theorem hlt_INTEGRABLE_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u :e 2 :^: (2 :^: hl_ty_cart R M), hl_FINITE (2 :^: hl_ty_cart R M) u = 1 /\ ((forall s :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) s u = 1 -> hl_integrable_on M N f s = 1) /\ hl_pairwise (2 :^: hl_ty_cart R M) (fun s :e 2 :^: hl_ty_cart R M => fun t :e 2 :^: hl_ty_cart R M => hl_negligible M (hl_INTER (hl_ty_cart R M) s t)) u = 1) -> hl_integrable_on M N f (hl_UNIONS (hl_ty_cart R M) u) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7196 / HAS_INTEGRAL_DIFF   (hash md5:60be51a8e66870ea5b5e910f5cc51b30)
Theorem hlt_HAS_INTEGRAL_DIFF : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall i j :e hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R M, hl_has_integral M N f i s = 1 /\ (hl_has_integral M N f j t = 1 /\ hl_negligible M (hl_DIFF (hl_ty_cart R M) t s) = 1) -> hl_has_integral M N f (hl_vector_sub N i j) (hl_DIFF (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7217 / INTEGRAL_DIFF   (hash md5:548170c03a7956166692cb34846733cf)
Theorem hlt_INTEGRAL_DIFF : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ (hl_integrable_on M N f t = 1 /\ hl_negligible M (hl_DIFF (hl_ty_cart R M) t s) = 1) -> hl_integral M N (hl_DIFF (hl_ty_cart R M) s t) f = hl_vector_sub N (hl_integral M N s f) (hl_integral M N t f).
Admitted.

// HOL Light: Multivariate/integration.ml:7226 / INTEGRABLE_DIFF   (hash md5:bd6879ca1d96ed43d796fe31e7a34459)
Theorem hlt_INTEGRABLE_DIFF : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ (hl_integrable_on M N f t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1) -> hl_integrable_on M N f (hl_DIFF (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7240 / INTEGRABLE_ON_SUBINTERVAL_GEN   (hash md5:2aa2b60a6e20f67a15c2bea9e1abdf22)
Theorem hlt_INTEGRABLE_ON_SUBINTERVAL_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_integrable_on 1 N f s = 1 /\ (hl_SUBSET (hl_ty_cart R 1) t s = 1 /\ hl_is_interval 1 t = 1) -> hl_integrable_on 1 N f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7341 / INTEGRABLE_ON_SUBSET   (hash md5:e3a348546a00fd3ad984ea48e50f851a)
Theorem hlt_INTEGRABLE_ON_SUBSET : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_integrable_on 1 N f s = 1 /\ (hl_SUBSET (hl_ty_cart R 1) t s = 1 /\ hl_FINITE (2 :^: hl_ty_cart R 1) (hl_components 1 t) = 1) -> hl_integrable_on 1 N f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7360 / HAS_INTEGRAL_COMBINE_DIVISION   (hash md5:a741e2219731371419478408d2d94390)
Theorem hlt_HAS_INTEGRAL_COMBINE_DIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall i :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1 /\ (forall k :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) k d = 1 -> hl_has_integral M N f (i k) k = 1) -> hl_has_integral M N f (hl_vsum (2 :^: hl_ty_cart R M) N d i) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7387 / INTEGRAL_COMBINE_DIVISION_BOTTOMUP   (hash md5:d08a9b6a27b4521652a82cb9f72bbbc4)
Theorem hlt_INTEGRAL_COMBINE_DIVISION_BOTTOMUP : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_division_of M d s = 1 /\ (forall k :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) k d = 1 -> hl_integrable_on M N f k = 1) -> hl_integral M N s f = hl_vsum (2 :^: hl_ty_cart R M) N d (fun i :e 2 :^: hl_ty_cart R M => hl_integral M N i f).
Admitted.

// HOL Light: Multivariate/integration.ml:7395 / HAS_INTEGRAL_COMBINE_DIVISION_TOPDOWN   (hash md5:8374d9a8c28870a789323f8afb065fa9)
Theorem hlt_HAS_INTEGRAL_COMBINE_DIVISION_TOPDOWN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall k :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ (hl_division_of M d k = 1 /\ hl_SUBSET (hl_ty_cart R M) k s = 1) -> hl_has_integral M N f (hl_vsum (2 :^: hl_ty_cart R M) N d (fun i :e 2 :^: hl_ty_cart R M => hl_integral M N i f)) k = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7407 / INTEGRAL_COMBINE_DIVISION_TOPDOWN   (hash md5:e6a042fcb9e3a4fe678a2e72f044ee3b)
Theorem hlt_INTEGRAL_COMBINE_DIVISION_TOPDOWN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ hl_division_of M d s = 1 -> hl_integral M N s f = hl_vsum (2 :^: hl_ty_cart R M) N d (fun i :e 2 :^: hl_ty_cart R M => hl_integral M N i f).
Admitted.

// HOL Light: Multivariate/integration.ml:7415 / INTEGRABLE_COMBINE_DIVISION   (hash md5:ba5c394b73e6332ef736006b4db00559)
Theorem hlt_INTEGRABLE_COMBINE_DIVISION : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall d :e 2 :^: (2 :^: hl_ty_cart R A), forall s :e 2 :^: hl_ty_cart R A, hl_division_of A d s = 1 /\ (forall i :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) i d = 1 -> hl_integrable_on A B f i = 1) -> hl_integrable_on A B f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7421 / INTEGRABLE_ON_SUBDIVISION   (hash md5:75c31a24886a4934aea40e5367b1b58c)
Theorem hlt_INTEGRABLE_ON_SUBDIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall i :e 2 :^: hl_ty_cart R M, hl_division_of M d i = 1 /\ (hl_integrable_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R M) i s = 1) -> hl_integrable_on M N f i = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7436 / HAS_INTEGRAL_COMBINE_TAGGED_DIVISION   (hash md5:f9c328e4ac5839e09f05e2aaa49a8c96)
Theorem hlt_HAS_INTEGRAL_COMBINE_TAGGED_DIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), forall i :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_tagged_division_of M p s = 1 /\ (forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k) p = 1 -> hl_has_integral M N f (i k) k = 1) -> hl_has_integral M N f (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (i k) = 1 then 1 else 0))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7466 / INTEGRAL_COMBINE_TAGGED_DIVISION_BOTTOMUP   (hash md5:fb0c7952e1b212287dae19690dadee89)
Theorem hlt_INTEGRAL_COMBINE_TAGGED_DIVISION_BOTTOMUP : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k) p = 1 -> hl_integrable_on M N f k = 1) -> hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f = hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_integral M N k f) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/integration.ml:7475 / HAS_INTEGRAL_COMBINE_TAGGED_DIVISION_TOPDOWN   (hash md5:7c0df4b9bf50d83df2eba539a403a1b5)
Theorem hlt_HAS_INTEGRAL_COMBINE_TAGGED_DIVISION_TOPDOWN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_has_integral M N f (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_integral M N k f) = 1 then 1 else 0))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7484 / INTEGRAL_COMBINE_TAGGED_DIVISION_TOPDOWN   (hash md5:bf264a717c34c56c8b549d98e6a82d53)
Theorem hlt_INTEGRAL_COMBINE_TAGGED_DIVISION_TOPDOWN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f = hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_integral M N k f) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/integration.ml:7496 / HENSTOCK_LEMMA_PART1   (hash md5:8ab55e6247c3ce845a4cec9aec60eb13)
Theorem hlt_HENSTOCK_LEMMA_PART1 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, forall e1 :e R, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_gauge M d = 1 /\ (forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f))) e1 = 1))) -> forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_partial_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1 -> hl_real_le (hl_vector_norm N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vector_sub N (hl_vmul N (hl_content M k) (f x)) (hl_integral M N k f)) = 1 then 1 else 0)))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7737 / HENSTOCK_LEMMA_PART2   (hash md5:d8f3d56cd28b79d3df1872d58b89a974)
Theorem hlt_HENSTOCK_LEMMA_PART2 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, forall e1 :e R, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_gauge M d = 1 /\ (forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f))) e1 = 1))) -> forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_partial_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1 -> hl_real_le (hl_sum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) p (hl_GABS (R :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e R :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ R (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vector_norm N (hl_vector_sub N (hl_vmul N (hl_content M k) (f x)) (hl_integral M N k f))) = 1 then 1 else 0))) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_of_num (hl_dimindex N (hl_UNIV N))) e1)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7760 / HENSTOCK_LEMMA   (hash md5:73cc72b0d0b84637f1fea4f4333c48c2)
Theorem hlt_HENSTOCK_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_gauge M d = 1 /\ forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_tagged_partial_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1 -> hl_real_lt (hl_sum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) p (hl_GABS (R :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e R :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ R (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vector_norm N (hl_vector_sub N (hl_vmul N (hl_content M k) (f x)) (hl_integral M N k f))) = 1 then 1 else 0))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:7793 / MONOTONE_CONVERGENCE_INTERVAL   (hash md5:5bb7b40513ec77f4f3d4f616bb13408f)
Theorem hlt_MONOTONE_CONVERGENCE_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_real_le (hl_drop (f k x)) (hl_drop (f (hl_SUC k) x)) = 1) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_tendsto omega 1 (fun k :e omega => f k x) (g x) hl_sequentially = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6336 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6336 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (f k)) = 1 then 1 else 0)) = 1)) -> hl_integrable_on N 1 g (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_tendsto omega 1 (fun k :e omega => hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (f k)) (hl_integral N 1 (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) g) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8023 / MONOTONE_CONVERGENCE_INCREASING   (hash md5:515c44de20b616b252b19e50187b5277)
Theorem hlt_MONOTONE_CONVERGENCE_INCREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_drop (f k x)) (hl_drop (f (hl_SUC k) x)) = 1) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_tendsto omega 1 (fun k :e omega => f k x) (g x) hl_sequentially = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6338 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6338 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1)) -> hl_integrable_on N 1 g s = 1 /\ hl_tendsto omega 1 (fun k :e omega => hl_integral N 1 s (f k)) (hl_integral N 1 s g) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8205 / MONOTONE_CONVERGENCE_DECREASING   (hash md5:4316bfb93385496082a2bce67734f976)
Theorem hlt_MONOTONE_CONVERGENCE_DECREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_drop (f (hl_SUC k) x)) (hl_drop (f k x)) = 1) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_tendsto omega 1 (fun k :e omega => f k x) (g x) hl_sequentially = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6340 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6340 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1)) -> hl_integrable_on N 1 g s = 1 /\ hl_tendsto omega 1 (fun k :e omega => hl_integral N 1 s (f k)) (hl_integral N 1 s g) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8248 / MONOTONE_CONVERGENCE_INCREASING_AE   (hash md5:7fa3e7afc71e1a6f9fb418e7a2a08d90)
Theorem hlt_MONOTONE_CONVERGENCE_INCREASING_AE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ (hl_negligible N t = 1 /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_real_le (hl_drop (f k x)) (hl_drop (f (hl_SUC k) x)) = 1) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_tendsto omega 1 (fun k :e omega => f k x) (g x) hl_sequentially = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6343 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6343 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1))) -> hl_integrable_on N 1 g s = 1 /\ hl_tendsto omega 1 (fun k :e omega => hl_integral N 1 s (f k)) (hl_integral N 1 s g) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8293 / MONOTONE_CONVERGENCE_DECREASING_AE   (hash md5:194daed89967f6251178befc3b24bd6e)
Theorem hlt_MONOTONE_CONVERGENCE_DECREASING_AE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ (hl_negligible N t = 1 /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_real_le (hl_drop (f (hl_SUC k) x)) (hl_drop (f k x)) = 1) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_tendsto omega 1 (fun k :e omega => f k x) (g x) hl_sequentially = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6346 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6346 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1))) -> hl_integrable_on N 1 g s = 1 /\ hl_tendsto omega 1 (fun k :e omega => hl_integral N 1 s (f k)) (hl_integral N 1 s g) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8342 / INTEGRAL_NORM_BOUND_INTEGRAL   (hash md5:0ff6fd13aff972ee3595ca723eee1f8d)
Theorem hlt_INTEGRAL_NORM_BOUND_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ (hl_integrable_on M 1 g s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_drop (g x)) = 1)) -> hl_real_le (hl_vector_norm N (hl_integral M N s f)) (hl_drop (hl_integral M 1 s g)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8422 / INTEGRAL_NORM_BOUND_INTEGRAL_COMPONENT   (hash md5:96e70e38eee8ddb1c1461d00d7f8c077)
Theorem hlt_INTEGRAL_NORM_BOUND_INTEGRAL_COMPONENT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex P (hl_UNIV P)) = 1 /\ (hl_integrable_on M N f s = 1 /\ (hl_integrable_on M P g s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_vindex R P (g x) k) = 1)))) -> hl_real_le (hl_vector_norm N (hl_integral M N s f)) (hl_vindex R P (hl_integral M P s g) k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8447 / HAS_INTEGRAL_NORM_BOUND_INTEGRAL_COMPONENT   (hash md5:00b7193200033448317353dbdc44908c)
Theorem hlt_HAS_INTEGRAL_NORM_BOUND_INTEGRAL_COMPONENT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i :e hl_ty_cart R N, forall j :e hl_ty_cart R P, forall k :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex P (hl_UNIV P)) = 1 /\ (hl_has_integral M N f i s = 1 /\ (hl_has_integral M P g j s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_vindex R P (g x) k) = 1)))) -> hl_real_le (hl_vector_norm N i) (hl_vindex R P j k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8460 / INTEGRABLE_ON_ALL_INTERVALS_INTEGRABLE_BOUND   (hash md5:e904a9eceff7fbbf9907e1fd366e57d5)
Theorem hlt_INTEGRABLE_ON_ALL_INTERVALS_INTEGRABLE_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_drop (g x)) = 1) /\ hl_integrable_on M 1 g s = 1) -> hl_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8505 / HAS_INTEGRAL_LIM_AT_POSINFINITY   (hash md5:aa645ce53c5bd257be4ac293275a07a8)
Theorem hlt_HAS_INTEGRAL_LIM_AT_POSINFINITY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall l :e hl_ty_cart R N, hl_has_integral 1 N f l (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6348 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6348 (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0)) = 1 <-> (forall a :e hl_ty_cart R 1, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) a) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) /\ hl_tendsto R N (fun a :e R => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_lift a)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) l hl_at_posinfinity = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8560 / HAS_INTEGRAL_LIM_AT_POSINFINITY_GEN   (hash md5:336d20d0fbf00b1bbd7c6228474a7bb2)
Theorem hlt_HAS_INTEGRAL_LIM_AT_POSINFINITY_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e R, forall l :e hl_ty_cart R N, hl_has_integral 1 N f l (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6351 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6351 (hl_real_le a (hl_drop t)) t = 1 then 1 else 0)) = 1 <-> (forall b :e R, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_lift a) (hl_lift b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) /\ hl_tendsto R N (fun b :e R => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_lift a) (hl_lift b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) l hl_at_posinfinity = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8591 / HAS_INTEGRAL_LIM_SEQUENTIALLY   (hash md5:ca005651d6ba4635f0fe217021472542)
Theorem hlt_HAS_INTEGRAL_LIM_SEQUENTIALLY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall l :e hl_ty_cart R N, hl_tendsto R N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) R f hl_lift) (hl_vec N (hl_NUMERAL hl_zero)) hl_at_posinfinity = 1 /\ ((forall n :e omega, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 n)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) /\ hl_tendsto omega N (fun n :e omega => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 n)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) l hl_sequentially = 1) -> hl_has_integral 1 N f l (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6352 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6352 (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8660 / set_variation   (hash md5:4498e8b9122e66abfd53e6da62b3c50b)
Theorem hlt_set_variation_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_set_variation M N s f = hl_sup (hl_GSPEC R (fun GEN_PVAR_6353 :e R => if exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_SETSPEC R GEN_PVAR_6353 (if exists t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 then 1 else 0) (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/integration.ml:8664 / has_bounded_setvariation_on   (hash md5:393b0076987882d5a261a487e84e4c99)
Theorem hlt_has_bounded_setvariation_on_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_has_bounded_setvariation_on M N f s = 1 <-> exists B :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8669 / SET_VARIATION_DEGENERATES   (hash md5:2a3629f42e77ca0df9dd11359faa9820)
Theorem hlt_SET_VARIATION_DEGENERATES : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R A :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, ~ hl_has_bounded_setvariation_on M N f s = 1 /\ ~ hl_has_bounded_setvariation_on M A g s = 1 -> hl_set_variation M N s f = hl_set_variation M A s g.
Admitted.

// HOL Light: Multivariate/integration.ml:8678 / HAS_BOUNDED_SETVARIATION_ON   (hash md5:6b07835e52f4fc8b1ed5c954e99e13c8)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 <-> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8686 / HAS_BOUNDED_SET_VARIATION   (hash md5:5115432f9daf4e3773ce6f71d83c386a)
Theorem hlt_HAS_BOUNDED_SET_VARIATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall c :e R, hl_has_bounded_setvariation_on M N f s = 1 /\ hl_real_le (hl_set_variation M N s f) c = 1 <-> forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) c = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8701 / HAS_BOUNDED_SETVARIATION_COMPARISON   (hash md5:36a64870bfd4e0ad5115a23b5bd5b2af)
Theorem hlt_HAS_BOUNDED_SETVARIATION_COMPARISON : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R P :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ (forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> hl_real_le (hl_vector_norm P (g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_vector_norm N (f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1) -> hl_has_bounded_setvariation_on M P g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8720 / HAS_BOUNDED_SETVARIATION_ON_EQ   (hash md5:dba7ff120d29752427b47303b24f546f)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) /\ hl_has_bounded_setvariation_on M N f s = 1 -> hl_has_bounded_setvariation_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8731 / SET_VARIATION_EQ   (hash md5:c8ca932de420b4eb276b09c3002c8a47)
Theorem hlt_SET_VARIATION_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) -> hl_set_variation M N s f = hl_set_variation M N s g.
Admitted.

// HOL Light: Multivariate/integration.ml:8747 / HAS_BOUNDED_SETVARIATION_ON_COMPONENTWISE   (hash md5:12905dd6e46662174438805c6ea33993)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_has_bounded_setvariation_on M 1 (fun k :e 2 :^: hl_ty_cart R M => hl_lift (hl_vindex R N (f k) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8777 / HAS_BOUNDED_SETVARIATION_ON_LIFT_ABS   (hash md5:3bbfea54cead4f0fea889f22c4958ba4)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_LIFT_ABS : forall N:set, N <> Empty -> forall f :e R :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_has_bounded_setvariation_on N 1 (fun x :e 2 :^: hl_ty_cart R N => hl_lift (hl_real_abs (f x))) s = 1 <-> hl_has_bounded_setvariation_on N 1 (fun x :e 2 :^: hl_ty_cart R N => hl_lift (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8784 / SETVARIATION_EQUAL_LEMMA   (hash md5:7af689c981de5729c4c8009fed2a8102)
Theorem hlt_SETVARIATION_EQUAL_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall mf :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M) :^: (hl_ty_cart R N :^: (2 :^: hl_ty_cart R M)), forall ms ms' :e 2 :^: hl_ty_cart R M :^: (2 :^: hl_ty_cart R M), (forall s :e 2 :^: hl_ty_cart R M, ms' (ms s) = s /\ ms (ms' s) = s) /\ ((forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) -> mf f (ms (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) /\ exists a' b' :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a' b') (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ ms' (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a' b') (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) /\ ((forall t u :e 2 :^: hl_ty_cart R M, hl_SUBSET (hl_ty_cart R M) t u = 1 -> hl_SUBSET (hl_ty_cart R M) (ms t) (ms u) = 1 /\ hl_SUBSET (hl_ty_cart R M) (ms' t) (ms' u) = 1) /\ (forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 -> hl_division_of M (hl_IMAGE (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R M) ms d) (ms t) = 1 /\ hl_division_of M (hl_IMAGE (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R M) ms' d) (ms' t) = 1))) -> (forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N (mf f) (ms s) = 1 <-> hl_has_bounded_setvariation_on M N f s = 1) /\ forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_set_variation M N (ms s) (mf f) = hl_set_variation M N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:8824 / HAS_BOUNDED_SETVARIATION_ON_ELEMENTARY   (hash md5:f88cbcf41713cb6b85f2a480bab5df50)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_ELEMENTARY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1) -> (hl_has_bounded_setvariation_on M N f s = 1 <-> exists B :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:8844 / HAS_BOUNDED_SETVARIATION_ON_INTERVAL   (hash md5:a073c15f50b6b01333f1a5e641b755ee)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_has_bounded_setvariation_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> exists B :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8851 / HAS_BOUNDED_SETVARIATION_ON_UNIV   (hash md5:c502285d84861ddbce928148a08321bc)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_has_bounded_setvariation_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> exists B :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d (hl_UNIONS (hl_ty_cart R M) d) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8859 / HAS_BOUNDED_SETVARIATION_ON_SUBSET   (hash md5:d25ab9718ab130f5b32164718daa9e1c)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s t :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_has_bounded_setvariation_on M N f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8868 / HAS_BOUNDED_SETVARIATION_ON_IMP_BOUNDED_ON_SUBINTERVALS   (hash md5:8d4f358d7c176143bfbeb75c58c95546)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_IMP_BOUNDED_ON_SUBINTERVALS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 -> hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6356 :e hl_ty_cart R N => if exists c d :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6356 (hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s) (f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8883 / HAS_BOUNDED_SETVARIATION_ON_NORM   (hash md5:da39d96b843d03ebaa627b2fd77d33d4)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_NORM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M 1 (fun x :e 2 :^: hl_ty_cart R M => hl_lift (hl_vector_norm N (f x))) s = 1 <-> hl_has_bounded_setvariation_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8890 / HAS_BOUNDED_SETVARIATION_ON_COMPOSE_LINEAR   (hash md5:8c1d21c2baf7eebfd2bfd4d5101104b7)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_COMPOSE_LINEAR : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ hl_linear N P g = 1 -> hl_has_bounded_setvariation_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (2 :^: hl_ty_cart R M) g f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8908 / HAS_BOUNDED_SETVARIATION_ON_0   (hash md5:2abda1e15d341820af84472a4e0bf809)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_0 : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_has_bounded_setvariation_on N A (fun x :e 2 :^: hl_ty_cart R N => hl_vec A (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8913 / SET_VARIATION_0   (hash md5:4d99aa548cb7627687d4968153fa34eb)
Theorem hlt_SET_VARIATION_0 : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_set_variation N A s (fun x :e 2 :^: hl_ty_cart R N => hl_vec A (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:8920 / HAS_BOUNDED_SETVARIATION_ON_CMUL   (hash md5:40710877c03ed56422a551440b15f635)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall c :e R, forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 -> hl_has_bounded_setvariation_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vmul N c (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8929 / HAS_BOUNDED_SETVARIATION_ON_NEG   (hash md5:ce37620d9f1314669dc99f04ab202d70)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vector_neg N (f x)) s = 1 <-> hl_has_bounded_setvariation_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8935 / HAS_BOUNDED_SETVARIATION_ON_ADD   (hash md5:2a0796d07898274cd40fd738a453ffbf)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ hl_has_bounded_setvariation_on M N g s = 1 -> hl_has_bounded_setvariation_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vector_add N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8954 / HAS_BOUNDED_SETVARIATION_ON_SUB   (hash md5:d844f00c0c20858f9f8cb70615ad40e0)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ hl_has_bounded_setvariation_on M N g s = 1 -> hl_has_bounded_setvariation_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vector_sub N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8962 / HAS_BOUNDED_SETVARIATION_ON_MUL   (hash md5:f01a33585d38c7cd6694be40c7144925)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R 1 :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M 1 f s = 1 /\ hl_has_bounded_setvariation_on M N g s = 1 -> hl_has_bounded_setvariation_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vmul N (hl_drop (f x)) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:8983 / HAS_BOUNDED_SETVARIATION_ON_NULL   (hash md5:d0da877835619a669175db2ea016f315)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ (hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 /\ hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_real_of_num (hl_NUMERAL hl_zero)) -> f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_vec N (hl_NUMERAL hl_zero)) /\ (hl_content M s = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_bounded M s = 1) -> hl_has_bounded_setvariation_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9001 / SET_VARIATION_ON_EMPTY   (hash md5:47ab68df14db6803cf95c80005739e9b)
Theorem hlt_SET_VARIATION_ON_EMPTY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_set_variation M N (hl_EMPTY (hl_ty_cart R M)) f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:9007 / SET_VARIATION_ELEMENTARY_LEMMA   (hash md5:b86228d06ce1ed31e2e44ac243274f98)
Theorem hlt_SET_VARIATION_ELEMENTARY_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall b :e R, forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1) -> ((forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) b = 1) <-> forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) b = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:9026 / SET_VARIATION_ON_ELEMENTARY   (hash md5:ae34bb2c8234d96cd1b36618358ba9be)
Theorem hlt_SET_VARIATION_ON_ELEMENTARY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1) -> hl_set_variation M N s f = hl_sup (hl_GSPEC R (fun GEN_PVAR_6358 :e R => if exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_SETSPEC R GEN_PVAR_6358 (hl_division_of M d s) (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/integration.ml:9035 / SET_VARIATION_ON_INTERVAL   (hash md5:94a7e30edb227685df5f11cef458cf0c)
Theorem hlt_SET_VARIATION_ON_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_set_variation M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f = hl_sup (hl_GSPEC R (fun GEN_PVAR_6359 :e R => if exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_SETSPEC R GEN_PVAR_6359 (hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/integration.ml:9042 / SET_VARIATION_INTERVAL_LEMMA   (hash md5:e704c0f13eab76bd87e36f99aaba1285)
Theorem hlt_SET_VARIATION_INTERVAL_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall c :e R, hl_is_interval M s = 1 -> ((forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) c = 1) <-> forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) c = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:9099 / HAS_BOUNDED_SETVARIATION_WORKS   (hash md5:208882ce5af3645c571c1f7ea1820513)
Theorem hlt_HAS_BOUNDED_SETVARIATION_WORKS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 -> (forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) (hl_set_variation M N s f) = 1) /\ forall B :e R, (forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1) -> hl_real_le (hl_set_variation M N s f) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9119 / HAS_BOUNDED_SETVARIATION_WORKS_ON_ELEMENTARY   (hash md5:a80e1ac9579e6e1e011a2483d900804c)
Theorem hlt_HAS_BOUNDED_SETVARIATION_WORKS_ON_ELEMENTARY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ (exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1) -> (forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) (hl_set_variation M N s f) = 1) /\ forall B :e R, (forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1) -> hl_real_le (hl_set_variation M N s f) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9129 / HAS_BOUNDED_SETVARIATION_WORKS_ON_INTERVAL   (hash md5:cba7faf4206d539ed5635a6c46dd5a44)
Theorem hlt_HAS_BOUNDED_SETVARIATION_WORKS_ON_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_has_bounded_setvariation_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> (forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) (hl_set_variation M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) = 1) /\ forall B :e R, (forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1) -> hl_real_le (hl_set_variation M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9139 / SET_VARIATION_UBOUND   (hash md5:e28f1097a30bbc51dfc5749fb1ef7b89)
Theorem hlt_SET_VARIATION_UBOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_has_bounded_setvariation_on M N f s = 1 /\ (forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1) -> hl_real_le (hl_set_variation M N s f) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9146 / SET_VARIATION_UBOUND_ON_INTERVAL   (hash md5:a5e128e105653a65604552e4b29a2f5f)
Theorem hlt_SET_VARIATION_UBOUND_ON_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall B :e R, hl_has_bounded_setvariation_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) B = 1) -> hl_real_le (hl_set_variation M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9154 / SET_VARIATION_LBOUND   (hash md5:52cb0493e16daa9939c6b4a6829f1813)
Theorem hlt_SET_VARIATION_LBOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_has_bounded_setvariation_on M N f s = 1 /\ (exists d :e 2 :^: (2 :^: hl_ty_cart R M), exists t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ (hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_real_le B (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) = 1)) -> hl_real_le B (hl_set_variation M N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9161 / SET_VARIATION_LBOUND_ON_INTERVAL   (hash md5:2cad201c8a99ce0b726258d6932324eb)
Theorem hlt_SET_VARIATION_LBOUND_ON_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall B :e R, hl_has_bounded_setvariation_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (exists d :e 2 :^: (2 :^: hl_ty_cart R M), hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_real_le B (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) = 1) -> hl_real_le B (hl_set_variation M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9168 / SET_VARIATION   (hash md5:c74e791ccfa0128a030ef212343c4700)
Theorem hlt_SET_VARIATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ (hl_division_of M d t = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1) -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) (hl_set_variation M N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9174 / SET_VARIATION_WORKS_ON_INTERVAL   (hash md5:3d6cb005e742b4b2ac1bc0586299d6c1)
Theorem hlt_SET_VARIATION_WORKS_ON_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_has_bounded_setvariation_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) (hl_set_variation M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9181 / SET_VARIATION_POS_LE   (hash md5:4e783a714234681d5607ff76e5409e45)
Theorem hlt_SET_VARIATION_POS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_set_variation M N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9189 / SET_VARIATION_CMUL   (hash md5:a4ec7927e10b26ed1dcf161d312f9dcb)
Theorem hlt_SET_VARIATION_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall c :e R, hl_has_bounded_setvariation_on M N f s = 1 -> hl_set_variation M N s (fun x :e 2 :^: hl_ty_cart R M => hl_vmul N c (f x)) = hl_real_mul (hl_real_abs c) (hl_set_variation M N s f).
Admitted.

// HOL Light: Multivariate/integration.ml:9209 / SET_VARIATION_COMPARISON   (hash md5:e9a397e4479c47e8751d824715da658c)
Theorem hlt_SET_VARIATION_COMPARISON : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R P :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ (forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> hl_real_le (hl_vector_norm P (g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_vector_norm N (f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1) -> hl_real_le (hl_set_variation M P s g) (hl_set_variation M N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9229 / SET_VARIATION_GE_FUNCTION   (hash md5:6dbbe86dfe0107fdc39e141ada7758fa)
Theorem hlt_SET_VARIATION_GE_FUNCTION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ (hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 /\ ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M)) -> hl_real_le (hl_vector_norm N (f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_set_variation M N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9240 / SET_VARIATION_ON_NULL   (hash md5:8bf8f7540d8d523cf972c1e77df4e889)
Theorem hlt_SET_VARIATION_ON_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_vec N (hl_NUMERAL hl_zero)) /\ (hl_content M s = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_bounded M s = 1) -> hl_set_variation M N s f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:9260 / SET_VARIATION_TRIANGLE   (hash md5:0c686dd52b81560c27ed578c2df1067a)
Theorem hlt_SET_VARIATION_TRIANGLE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ hl_has_bounded_setvariation_on M N g s = 1 -> hl_real_le (hl_set_variation M N s (fun x :e 2 :^: hl_ty_cart R M => hl_vector_add N (f x) (g x))) (hl_real_add (hl_set_variation M N s f) (hl_set_variation M N s g)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9279 / HAS_BOUNDED_SETVARIATION_ON_VSUM   (hash md5:5d0ad13f039efd49b2fb9313238ee8bf)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_VSUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M) :^: A, forall s :e 2 :^: hl_ty_cart R M, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (forall i :e A, hl_IN A i k = 1 -> hl_has_bounded_setvariation_on M N (f i) s = 1) -> hl_has_bounded_setvariation_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vsum A N k (fun i :e A => f i x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9279 / SET_VARIATION_SUM_LE   (hash md5:c7b3a77f3fdd4885d12dba9842dee03a)
Theorem hlt_SET_VARIATION_SUM_LE : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M) :^: A, forall s :e 2 :^: hl_ty_cart R M, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (forall i :e A, hl_IN A i k = 1 -> hl_has_bounded_setvariation_on M N (f i) s = 1) -> hl_real_le (hl_set_variation M N s (fun x :e 2 :^: hl_ty_cart R M => hl_vsum A N k (fun i :e A => f i x))) (hl_sum A k (fun i :e A => hl_set_variation M N s (f i))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9303 / BOUNDED_SET_VARIATION_ON_PASTECART   (hash md5:7143b3bd991a5604766b4fafd1b7cede)
Theorem hlt_BOUNDED_SET_VARIATION_ON_PASTECART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R P :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ hl_has_bounded_setvariation_on M P g s = 1 -> hl_has_bounded_setvariation_on M (hl_ty_finite_sum N P) (fun x :e 2 :^: hl_ty_cart R M => hl_pastecart R N P (f x) (g x)) s = 1 /\ hl_real_le (hl_set_variation M (hl_ty_finite_sum N P) s (fun x :e 2 :^: hl_ty_cart R M => hl_pastecart R N P (f x) (g x))) (hl_real_add (hl_set_variation M N s f) (hl_set_variation M P s g)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9321 / BOUNDED_SET_VARIATION_FROM_PASTECART   (hash md5:7b45dc544c59afbc0c3f6c959e098a81)
Theorem hlt_BOUNDED_SET_VARIATION_FROM_PASTECART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R P :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M (hl_ty_finite_sum N P) (fun x :e 2 :^: hl_ty_cart R M => hl_pastecart R N P (f x) (g x)) s = 1 -> hl_has_bounded_setvariation_on M N f s = 1 /\ hl_real_le (hl_set_variation M N s f) (hl_set_variation M (hl_ty_finite_sum N P) s (fun x :e 2 :^: hl_ty_cart R M => hl_pastecart R N P (f x) (g x))) = 1 /\ (hl_has_bounded_setvariation_on M P g s = 1 /\ hl_real_le (hl_set_variation M P s g) (hl_set_variation M (hl_ty_finite_sum N P) s (fun x :e 2 :^: hl_ty_cart R M => hl_pastecart R N P (f x) (g x))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:9337 / HAS_BOUNDED_SETVARIATION_ON_PASTECART   (hash md5:0fa991db9d0bf076bfac2baa5d38369b)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_PASTECART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R P :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M (hl_ty_finite_sum N P) (fun x :e 2 :^: hl_ty_cart R M => hl_pastecart R N P (f x) (g x)) s = 1 <-> hl_has_bounded_setvariation_on M N f s = 1 /\ hl_has_bounded_setvariation_on M P g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9346 / OPERATIVE_LIFTED_SETVARIATION   (hash md5:c8385716235b30ba0e363ff54aa8c426)
Theorem hlt_OPERATIVE_LIFTED_SETVARIATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_operative (hl_ty_cart R N) M (hl_vector_add N) f = 1 -> hl_operative (1 :+: R) M (hl_lifted R R hl_real_add) (fun i :e 2 :^: hl_ty_cart R M => hl_COND (1 :+: R) (hl_has_bounded_setvariation_on M N f i) (hl_SOME R (hl_set_variation M N i f)) (hl_NONE R)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9532 / OPERATIVE_HAS_BOUNDED_SETVARIATION_ON   (hash md5:640beed1c8316117f00b78452bfe52f2)
Theorem hlt_OPERATIVE_HAS_BOUNDED_SETVARIATION_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_operative (hl_ty_cart R N) M (hl_vector_add N) f = 1 -> hl_operative 2 M hl_and (hl_has_bounded_setvariation_on M N f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9543 / HAS_BOUNDED_SETVARIATION_ON_DIVISION   (hash md5:64cdbe91dec9085674b91761983c6019)
Theorem hlt_HAS_BOUNDED_SETVARIATION_ON_DIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_operative (hl_ty_cart R N) M (hl_vector_add N) f = 1 /\ hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> ((forall k :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) k d = 1 -> hl_has_bounded_setvariation_on M N f k = 1) <-> hl_has_bounded_setvariation_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:9558 / SET_VARIATION_ON_DIVISION   (hash md5:b4cbab8a4f7c3655759e1fb4b8510121)
Theorem hlt_SET_VARIATION_ON_DIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_operative (hl_ty_cart R N) M (hl_vector_add N) f = 1 /\ (hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_has_bounded_setvariation_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_set_variation M N k f) = hl_set_variation M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f.
Admitted.

// HOL Light: Multivariate/integration.ml:9596 / SET_VARIATION_MONOTONE   (hash md5:fad2c639ae37c5788ed0da37a05c8d6d)
Theorem hlt_SET_VARIATION_MONOTONE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s t :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_real_le (hl_set_variation M N t f) (hl_set_variation M N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9612 / HAS_BOUNDED_SETVARIATION_REFLECT2_EQ   (hash md5:d17907241e759d4b8b6abc516bb75d2f)
Theorem hlt_HAS_BOUNDED_SETVARIATION_REFLECT2_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N (fun k :e 2 :^: hl_ty_cart R M => f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) k)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s) = 1 <-> hl_has_bounded_setvariation_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9612 / SET_VARIATION_REFLECT2   (hash md5:333fe413930e43aefdab02e76887ab72)
Theorem hlt_SET_VARIATION_REFLECT2 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_set_variation M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s) (fun k :e 2 :^: hl_ty_cart R M => f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) k)) = hl_set_variation M N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:9630 / HAS_BOUNDED_SETVARIATION_TRANSLATION2_EQ   (hash md5:6dcb23acc0542dd95ea189b7d527b67a)
Theorem hlt_HAS_BOUNDED_SETVARIATION_TRANSLATION2_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall a :e hl_ty_cart R M, forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_has_bounded_setvariation_on M N (fun k :e 2 :^: hl_ty_cart R M => f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) k)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M (hl_vector_neg M a) x) s) = 1 <-> hl_has_bounded_setvariation_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9630 / SET_VARIATION_TRANSLATION2   (hash md5:5273feffd610e6ed80995447371e44ee)
Theorem hlt_SET_VARIATION_TRANSLATION2 : forall M N:set, M <> Empty -> N <> Empty -> forall a :e hl_ty_cart R M, forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_set_variation M N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M (hl_vector_neg M a) x) s) (fun k :e 2 :^: hl_ty_cart R M => f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) k)) = hl_set_variation M N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:9654 / HAS_BOUNDED_SETVARIATION_TRANSLATION   (hash md5:111f752110b0c3dca7e449622a5d8e1f)
Theorem hlt_HAS_BOUNDED_SETVARIATION_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_has_bounded_setvariation_on M N f s = 1 -> hl_has_bounded_setvariation_on M N (fun k :e 2 :^: hl_ty_cart R M => f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) k)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M (hl_vector_neg M a) x) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9667 / absolutely_integrable_on   (hash md5:746f03fcae8cc3feee315c30f637827d)
Theorem hlt_absolutely_integrable_on_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_absolutely_integrable_on B A f s = 1 <-> hl_integrable_on B A f s = 1 /\ hl_integrable_on B 1 (fun x :e hl_ty_cart R B => hl_lift (hl_vector_norm A (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9671 / ABSOLUTELY_INTEGRABLE_IMP_INTEGRABLE   (hash md5:b3c8c5565b65f03fb6bcbc9b7acf1e3c)
Theorem hlt_ABSOLUTELY_INTEGRABLE_IMP_INTEGRABLE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_absolutely_integrable_on B A f s = 1 -> hl_integrable_on B A f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9675 / ABSOLUTELY_INTEGRABLE_IMP_LIFT_NORM_INTEGRABLE   (hash md5:ca8a8349dec72932a3cd35e70e030687)
Theorem hlt_ABSOLUTELY_INTEGRABLE_IMP_LIFT_NORM_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 -> hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9680 / ABSOLUTELY_INTEGRABLE_RESTRICT_UNIV   (hash md5:7bfbfcded797345bfa7d6e31fe791a4a)
Theorem hlt_ABSOLUTELY_INTEGRABLE_RESTRICT_UNIV : forall A M:set, A <> Empty -> M <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M A (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R A) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec A (hl_NUMERAL hl_zero))) (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_absolutely_integrable_on M A f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9687 / ABSOLUTELY_INTEGRABLE_RESTRICT_INTER   (hash md5:587e0db71e56e687994f57f7306c1f6e)
Theorem hlt_ABSOLUTELY_INTEGRABLE_RESTRICT_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x s) (f x) (hl_vec N (hl_NUMERAL hl_zero))) t = 1 <-> hl_absolutely_integrable_on M N f (hl_INTER (hl_ty_cart R M) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9694 / HAS_ABSOLUTE_INTEGRAL   (hash md5:7bc32da80f97cef31e7e1c1579be9289)
Theorem hlt_HAS_ABSOLUTE_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_absolutely_integrable_on M N f s = 1 /\ hl_integral M N s f = y <-> hl_absolutely_integrable_on M N f s = 1 /\ hl_has_integral M N f y s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9701 / ABSOLUTELY_INTEGRABLE_LE   (hash md5:ce221231b6eb03f861e5e2c2a5d24914)
Theorem hlt_ABSOLUTELY_INTEGRABLE_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 -> hl_real_le (hl_vector_norm N (hl_integral M N s f)) (hl_drop (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (f x))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9709 / ABSOLUTELY_INTEGRABLE_ON_NULL   (hash md5:fdd844dacf898957d36b4dd8a0187d43)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_NULL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall a b :e hl_ty_cart R B, hl_content B (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_absolutely_integrable_on B A f (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9714 / ABSOLUTELY_INTEGRABLE_ON_EMPTY   (hash md5:4638fa703beeed0e9c8f5710a1c01896)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_EMPTY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_EMPTY (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9718 / ABSOLUTELY_INTEGRABLE_0   (hash md5:9432f460955870aac57f417adfbd98f7)
Theorem hlt_ABSOLUTELY_INTEGRABLE_0 : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_absolutely_integrable_on A B (fun x :e hl_ty_cart R A => hl_vec B (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9722 / ABSOLUTELY_INTEGRABLE_CMUL   (hash md5:ee4e204d3041d76500b682d2be5ba0d9)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, forall c :e R, hl_absolutely_integrable_on B A f s = 1 -> hl_absolutely_integrable_on B A (fun x :e hl_ty_cart R B => hl_vmul A c (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9727 / ABSOLUTELY_INTEGRABLE_CMUL_EQ   (hash md5:b7503c6bad77769de7cfc585096dd424)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CMUL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall c :e R, hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) s = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9735 / ABSOLUTELY_INTEGRABLE_NEG   (hash md5:7a20dfbcdc0c0374f5a1bfe49372a572)
Theorem hlt_ABSOLUTELY_INTEGRABLE_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_absolutely_integrable_on A B f s = 1 -> hl_absolutely_integrable_on A B (fun x :e hl_ty_cart R A => hl_vector_neg B (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9740 / ABSOLUTELY_INTEGRABLE_NEG_EQ   (hash md5:0bb25603e590a7fada65fe6ed3681fd4)
Theorem hlt_ABSOLUTELY_INTEGRABLE_NEG_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) s = 1 <-> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9746 / ABSOLUTELY_INTEGRABLE_NORM   (hash md5:ad6cc062678eb0acdc7aa31e2447d7e3)
Theorem hlt_ABSOLUTELY_INTEGRABLE_NORM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_absolutely_integrable_on B A f s = 1 -> hl_absolutely_integrable_on B 1 (fun x :e hl_ty_cart R B => hl_lift (hl_vector_norm A (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9751 / ABSOLUTELY_INTEGRABLE_ABS_1   (hash md5:b259a2cb357c0cd29ae28cffaec30cee)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABS_1 : forall A:set, A <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_absolutely_integrable_on A 1 f s = 1 -> hl_absolutely_integrable_on A 1 (fun x :e hl_ty_cart R A => hl_lift (hl_real_abs (hl_drop (f x)))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9756 / ABSOLUTELY_INTEGRABLE_ON_SUBINTERVAL   (hash md5:09997a387db3e123837df31d528e1be4)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_SUBINTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9763 / ABSOLUTELY_INTEGRABLE_COMBINE   (hash md5:324bf80851ef10a8c25a20118d6341fc)
Theorem hlt_ABSOLUTELY_INTEGRABLE_COMBINE : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop c) = 1 /\ (hl_real_le (hl_drop c) (hl_drop b) = 1 /\ (hl_absolutely_integrable_on 1 A f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_absolutely_integrable_on 1 A f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1)) -> hl_absolutely_integrable_on 1 A f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9772 / ABSOLUTELY_INTEGRABLE_ON_NEGLIGIBLE   (hash md5:3e940d0f36cc2f099958a6991f0b88ea)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ON_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 -> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9776 / ABSOLUTELY_INTEGRABLE_SPIKE   (hash md5:69ed28a62953004d87dc6decfb3c99af)
Theorem hlt_ABSOLUTELY_INTEGRABLE_SPIKE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> hl_absolutely_integrable_on M N f t = 1 -> hl_absolutely_integrable_on M N g t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9785 / ABSOLUTELY_INTEGRABLE_SPIKE_EQ   (hash md5:f350fc5ff31243f59c79d9ea2de4b8fa)
Theorem hlt_ABSOLUTELY_INTEGRABLE_SPIKE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) t s) = 1 -> g x = f x) -> (hl_absolutely_integrable_on M N f t = 1 <-> hl_absolutely_integrable_on M N g t = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:9792 / ABSOLUTELY_INTEGRABLE_SPIKE_SET_EQ   (hash md5:bb179b67226a0cbe3c9c16906e1a82c4)
Theorem hlt_ABSOLUTELY_INTEGRABLE_SPIKE_SET_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 -> (hl_absolutely_integrable_on M N f s = 1 <-> hl_absolutely_integrable_on M N f t = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:9802 / ABSOLUTELY_INTEGRABLE_SPIKE_SET   (hash md5:9561eca96465587975b03b0fa7cfcbba)
Theorem hlt_ABSOLUTELY_INTEGRABLE_SPIKE_SET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M (hl_UNION (hl_ty_cart R M) (hl_DIFF (hl_ty_cart R M) s t) (hl_DIFF (hl_ty_cart R M) t s)) = 1 -> hl_absolutely_integrable_on M N f s = 1 -> hl_absolutely_integrable_on M N f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9808 / ABSOLUTELY_INTEGRABLE_EQ   (hash md5:7fc59120359f38973ebe4adcb27cafea)
Theorem hlt_ABSOLUTELY_INTEGRABLE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = g x) /\ hl_absolutely_integrable_on M N f s = 1 -> hl_absolutely_integrable_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9818 / ABSOLUTELY_INTEGRABLE_TWIZZLE_EQ   (hash md5:04755a8f5091111102619fddd91fb19e)
Theorem hlt_ABSOLUTELY_INTEGRABLE_TWIZZLE_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, forall p :e omega :^: omega, hl_dimindex M (hl_UNIV M) = hl_dimindex N (hl_UNIV N) /\ hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 -> (hl_absolutely_integrable_on N P f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_vindex R M x (p i))) s) = 1 <-> hl_absolutely_integrable_on M P (fun x :e hl_ty_cart R M => f (hl_lambda R N (fun i :e omega => hl_vindex R M x (p i)))) s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:9829 / ABSOLUTELY_INTEGRABLE_AFFINITY   (hash md5:7dd23889d21cd37baabe1ebff2bcebf4)
Theorem hlt_ABSOLUTELY_INTEGRABLE_AFFINITY : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall m :e R, forall c :e hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ ~ m = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_add M (hl_vmul M m x) c)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M (hl_vmul M (hl_real_inv m) x) (hl_vector_neg M (hl_vmul M (hl_real_inv m) c))) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9837 / ABSOLUTELY_INTEGRABLE_TRANSLATION   (hash md5:cbd0cd4849f52a23b88897368758cae9)
Theorem hlt_ABSOLUTELY_INTEGRABLE_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_add M a x)) s = 1 <-> hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (fun x :e hl_ty_cart R M => hl_vector_add M a x) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9843 / ABSOLUTELY_INTEGRABLE_REFLECT_GEN   (hash md5:3ca02a582e1ee662ff22b2abd1bd9a91)
Theorem hlt_ABSOLUTELY_INTEGRABLE_REFLECT_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) s = 1 <-> hl_absolutely_integrable_on M N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9849 / ABSOLUTELY_INTEGRABLE_REFLECT   (hash md5:7e57c910e2226b1c01636ed930a089b4)
Theorem hlt_ABSOLUTELY_INTEGRABLE_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M b) (hl_vector_neg M a)) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9856 / ABSOLUTELY_INTEGRABLE_BOUNDED_SETVARIATION   (hash md5:b86819ce372638e3db82c1c80c65523b)
Theorem hlt_ABSOLUTELY_INTEGRABLE_BOUNDED_SETVARIATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 -> hl_has_bounded_setvariation_on M N (fun k :e 2 :^: hl_ty_cart R M => hl_integral M N k f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9904 / lemma   (hash md5:4d00c27664ea3a8fffb4eaf58df14c37)
Theorem hlt_lemma : forall A N:set, A <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: A, forall s :e 2 :^: A, forall e1 :e R, hl_real_lt (hl_sum A s (fun x :e A => hl_vector_norm N (hl_vector_sub N (f x) (g x)))) e1 = 1 -> hl_FINITE A s = 1 -> hl_real_lt (hl_real_abs (hl_real_sub (hl_sum A s (fun x :e A => hl_vector_norm N (f x))) (hl_sum A s (fun x :e A => hl_vector_norm N (g x))))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:9918 / BOUNDED_SETVARIATION_ABSOLUTELY_INTEGRABLE_INTERVAL   (hash md5:2828bf13525dc1aaca96c0fc6144baa7)
Theorem hlt_BOUNDED_SETVARIATION_ABSOLUTELY_INTEGRABLE_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_has_bounded_setvariation_on M N (fun k :e 2 :^: hl_ty_cart R M => hl_integral M N k f) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10421 / BOUNDED_SETVARIATION_ABSOLUTELY_INTEGRABLE   (hash md5:6d67ae8460e7e4075cd0665503280cec)
Theorem hlt_BOUNDED_SETVARIATION_ABSOLUTELY_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_has_bounded_setvariation_on M N (fun k :e 2 :^: hl_ty_cart R M => hl_integral M N k f) (hl_UNIV (hl_ty_cart R M)) = 1 -> hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10557 / ABSOLUTELY_INTEGRABLE_BOUNDED_SETVARIATION_UNIV_EQ   (hash md5:11ae26f28568917a855ae1dd4719621e)
Theorem hlt_ABSOLUTELY_INTEGRABLE_BOUNDED_SETVARIATION_UNIV_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 <-> hl_integrable_on M N f (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_has_bounded_setvariation_on M N (fun k :e 2 :^: hl_ty_cart R M => hl_integral M N k f) (hl_UNIV (hl_ty_cart R M)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10567 / ABSOLUTELY_INTEGRABLE_BOUNDED_SETVARIATION_EQ   (hash md5:13565aa3179ac5f8128e5a8a30783b24)
Theorem hlt_ABSOLUTELY_INTEGRABLE_BOUNDED_SETVARIATION_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_has_bounded_setvariation_on M N (fun k :e 2 :^: hl_ty_cart R M => hl_integral M N k f) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10577 / ABSOLUTELY_INTEGRABLE_SET_VARIATION   (hash md5:eac7455effcb6118163c713a93423682)
Theorem hlt_ABSOLUTELY_INTEGRABLE_SET_VARIATION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_set_variation M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun k :e 2 :^: hl_ty_cart R M => hl_integral M N k f) = hl_drop (hl_integral M 1 (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (f x)))).
Admitted.

// HOL Light: Multivariate/integration.ml:10683 / ABSOLUTELY_INTEGRABLE_CONST   (hash md5:5dffc511ee88e88e072d3bea61865b4d)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall a b :e hl_ty_cart R B, forall c :e hl_ty_cart R A, hl_absolutely_integrable_on B A (fun x :e hl_ty_cart R B => c) (hl_closed_interval B (hl_CONS (hl_ty_cart R B :*: hl_ty_cart R B) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) (hl_NIL (hl_ty_cart R B :*: hl_ty_cart R B)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10687 / ABSOLUTELY_INTEGRABLE_ADD   (hash md5:e336a096438f9e4ebefa6fd1885c354f)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M N g s = 1 -> hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vector_add N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10732 / ABSOLUTELY_INTEGRABLE_SUB   (hash md5:fe5dd9046a704fe5257c42104f44e9ce)
Theorem hlt_ABSOLUTELY_INTEGRABLE_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M N g s = 1 -> hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vector_sub N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10740 / ABSOLUTELY_INTEGRABLE_LINEAR   (hash md5:ba41f35e9d6280cdb420bd83ec30c554)
Theorem hlt_ABSOLUTELY_INTEGRABLE_LINEAR : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_linear N P h = 1 -> hl_absolutely_integrable_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (hl_ty_cart R M) h f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10780 / ABSOLUTELY_INTEGRABLE_VSUM   (hash md5:6725ee8e8611ca7f02722ff39e726e43)
Theorem hlt_ABSOLUTELY_INTEGRABLE_VSUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: A, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ (forall a :e A, hl_IN A a t = 1 -> hl_absolutely_integrable_on M N (f a) s = 1) -> hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_vsum A N t (fun a :e A => f a x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10790 / ABSOLUTELY_INTEGRABLE_ABS   (hash md5:9e49ffc3a85b4a77794109ea3a3a1b40)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 -> hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_real_abs (hl_vindex R N (f x) i))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10842 / ABSOLUTELY_INTEGRABLE_MAX   (hash md5:35f1a7a55ee91837f8e936468223379a)
Theorem hlt_ABSOLUTELY_INTEGRABLE_MAX : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M N g s = 1 -> hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_real_max (hl_vindex R N (f x) i) (hl_vindex R N (g x) i))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10861 / ABSOLUTELY_INTEGRABLE_MAX_1   (hash md5:14ed4242d8043ea0c2f0d2a2b36062fb)
Theorem hlt_ABSOLUTELY_INTEGRABLE_MAX_1 : forall M:set, M <> Empty -> forall f g :e R :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (f x)) s = 1 /\ hl_absolutely_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (g x)) s = 1 -> hl_absolutely_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_real_max (f x) (g x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10873 / ABSOLUTELY_INTEGRABLE_MIN   (hash md5:669b40066c9d5efb21d7c85f3f834fa4)
Theorem hlt_ABSOLUTELY_INTEGRABLE_MIN : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M N g s = 1 -> hl_absolutely_integrable_on M N (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_real_min (hl_vindex R N (f x) i) (hl_vindex R N (g x) i))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10892 / ABSOLUTELY_INTEGRABLE_MIN_1   (hash md5:e626100d2c4b9f57b7d7cacc930c5116)
Theorem hlt_ABSOLUTELY_INTEGRABLE_MIN_1 : forall M:set, M <> Empty -> forall f g :e R :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (f x)) s = 1 /\ hl_absolutely_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (g x)) s = 1 -> hl_absolutely_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_real_min (f x) (g x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10904 / ABSOLUTELY_INTEGRABLE_ABS_EQ   (hash md5:e12543b9d1873ced6ab39251a0b109e3)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 <-> hl_integrable_on M N f s = 1 /\ hl_integrable_on M N (fun x :e hl_ty_cart R M => hl_lambda R N (fun i :e omega => hl_real_abs (hl_vindex R N (f x) i))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10981 / NONNEGATIVE_ABSOLUTELY_INTEGRABLE   (hash md5:1dede84efe2c50f33c24ec444699ec21)
Theorem hlt_NONNEGATIVE_ABSOLUTELY_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, forall i :e omega, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f x) i) = 1) /\ hl_integrable_on M N f s = 1 -> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:10992 / ABSOLUTELY_INTEGRABLE_INTEGRABLE_BOUND   (hash md5:d604fefd84ff77ae08ca2ee2c83a8707)
Theorem hlt_ABSOLUTELY_INTEGRABLE_INTEGRABLE_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_drop (g x)) = 1) /\ (hl_integrable_on M N f s = 1 /\ hl_integrable_on M 1 g s = 1) -> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11041 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_BOUND   (hash md5:ae9a9f6034b779b66991867088920821)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_BOUND : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R P :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_vector_norm P (g x)) = 1) /\ (hl_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M P g s = 1) -> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11054 / ABSOLUTELY_INTEGRABLE_INF_1   (hash md5:95c8b3010f618f2a9c78cf0700646d45)
Theorem hlt_ABSOLUTELY_INTEGRABLE_INF_1 : forall A N:set, A <> Empty -> N <> Empty -> forall fs :e R :^: A :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (~ k = hl_EMPTY A /\ (forall i :e A, hl_IN A i k = 1 -> hl_absolutely_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (fs x i)) s = 1)) -> hl_absolutely_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_inf (hl_IMAGE A R (fs x) k))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11071 / ABSOLUTELY_INTEGRABLE_SUP_1   (hash md5:923fcb06b63fb0cb971ca329652503f1)
Theorem hlt_ABSOLUTELY_INTEGRABLE_SUP_1 : forall A N:set, A <> Empty -> N <> Empty -> forall fs :e R :^: A :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (~ k = hl_EMPTY A /\ (forall i :e A, hl_IN A i k = 1 -> hl_absolutely_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (fs x i)) s = 1)) -> hl_absolutely_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_sup (hl_IMAGE A R (fs x) k))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11088 / ABSOLUTELY_INTEGRABLE_CONTINUOUS   (hash md5:9cbce791847e5d33903e77d26ce876d8)
Theorem hlt_ABSOLUTELY_INTEGRABLE_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_continuous_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_absolutely_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11102 / INTEGRABLE_MIN_CONST_1   (hash md5:fc819ae92830de2d9a9fb0c17e119c7e)
Theorem hlt_INTEGRABLE_MIN_CONST_1 : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall t :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) /\ hl_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (f x)) s = 1) -> hl_integrable_on N 1 (fun x :e hl_ty_cart R N => hl_lift (hl_real_min (f x) t)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11135 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_COMPONENT_UBOUND   (hash md5:a4ac93bf29a46c40d98bf88fd441ac66)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_COMPONENT_UBOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, forall i :e omega, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_real_le (hl_vindex R N (f x) i) (hl_vindex R N (g x) i) = 1) /\ (hl_integrable_on M N f s = 1 /\ hl_absolutely_integrable_on M N g s = 1) -> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11150 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_COMPONENT_LBOUND   (hash md5:e45e506fea64f6a79821c713013132eb)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_COMPONENT_LBOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, forall i :e omega, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_real_le (hl_vindex R N (f x) i) (hl_vindex R N (g x) i) = 1) /\ (hl_absolutely_integrable_on M N f s = 1 /\ hl_integrable_on M N g s = 1) -> hl_absolutely_integrable_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11165 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_DROP_UBOUND   (hash md5:73ee794625b37bf01abb67f160d36020)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_DROP_UBOUND : forall M:set, M <> Empty -> forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_drop (f x)) (hl_drop (g x)) = 1) /\ (hl_integrable_on M 1 f s = 1 /\ hl_absolutely_integrable_on M 1 g s = 1) -> hl_absolutely_integrable_on M 1 f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11176 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_DROP_LBOUND   (hash md5:57d014d0c317a2788d1fa19ee15f4287)
Theorem hlt_ABSOLUTELY_INTEGRABLE_ABSOLUTELY_INTEGRABLE_DROP_LBOUND : forall M:set, M <> Empty -> forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_drop (f x)) (hl_drop (g x)) = 1) /\ (hl_absolutely_integrable_on M 1 f s = 1 /\ hl_integrable_on M 1 g s = 1) -> hl_absolutely_integrable_on M 1 g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11187 / ABSOLUTELY_INTEGRABLE_EQ_INTEGRABLE_POS   (hash md5:178ecf0940f1c26a3ee8982457f95f09)
Theorem hlt_ABSOLUTELY_INTEGRABLE_EQ_INTEGRABLE_POS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f x)) = 1) -> (hl_absolutely_integrable_on N 1 f s = 1 <-> hl_integrable_on N 1 f s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:11198 / ABSOLUTELY_INTEGRABLE_PASTECART_SYM   (hash md5:1c546c5344545b0c4e7fe8dad722e1e0)
Theorem hlt_ABSOLUTELY_INTEGRABLE_PASTECART_SYM : forall A M N P:set, A <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R (hl_ty_finite_sum M N), forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum M N), forall y :e A, hl_absolutely_integrable_on (hl_ty_finite_sum N M) P (fun z :e hl_ty_cart R (hl_ty_finite_sum N M) => f (hl_pastecart R M N (hl_sndcart R N M z) (hl_fstcart R N M z))) (hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_ty_cart R (hl_ty_finite_sum N M)) (fun z :e hl_ty_cart R (hl_ty_finite_sum M N) => hl_pastecart R N M (hl_sndcart R M N z) (hl_fstcart R M N z)) s) = 1 <-> hl_absolutely_integrable_on (hl_ty_finite_sum M N) P f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11235 / HAS_INTEGRAL_COMPONENTWISE   (hash md5:586a900823fd0bc95ba5985fa96b26e4)
Theorem hlt_HAS_INTEGRAL_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_has_integral M N f y s = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_has_integral M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) (hl_lift (hl_vindex R N y i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11257 / INTEGRABLE_COMPONENTWISE   (hash md5:59526a5b7798fa193380e5be94028765)
Theorem hlt_INTEGRABLE_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11267 / INTEGRABLE_LIFT_COMPONENT   (hash md5:f4c5ac8aabe3add2d8d4621339cdea35)
Theorem hlt_INTEGRABLE_LIFT_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall i :e omega, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11274 / LIFT_INTEGRAL_COMPONENT   (hash md5:0412bc09517a7b17923e30a436dfe53a)
Theorem hlt_LIFT_INTEGRAL_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 -> hl_lift (hl_vindex R N (hl_integral M N s f) k) = hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) k)).
Admitted.

// HOL Light: Multivariate/integration.ml:11287 / INTEGRAL_COMPONENT   (hash md5:bab055821d0653a8c2af6cab3aecf1e6)
Theorem hlt_INTEGRAL_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 -> hl_vindex R N (hl_integral M N s f) k = hl_drop (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) k))).
Admitted.

// HOL Light: Multivariate/integration.ml:11293 / ABSOLUTELY_INTEGRABLE_COMPONENTWISE   (hash md5:4c3dece2a1af769703a343e7e7f5aa09)
Theorem hlt_ABSOLUTELY_INTEGRABLE_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_absolutely_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11322 / ABSOLUTELY_INTEGRABLE_LIFT_COMPONENT   (hash md5:907de7cf906b32044b710e824dd2ad63)
Theorem hlt_ABSOLUTELY_INTEGRABLE_LIFT_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall i :e omega, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_integrable_on M N f s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_absolutely_integrable_on M 1 (fun x :e hl_ty_cart R M => hl_lift (hl_vindex R N (f x) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11333 / DOMINATED_CONVERGENCE   (hash md5:b3cfff83e298e1d4d97a665b332adf4a)
Theorem hlt_DOMINATED_CONVERGENCE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall k :e omega, hl_integrable_on M N (f k) s = 1) /\ (hl_integrable_on M 1 h s = 1 /\ ((forall k :e omega, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f k x)) (hl_drop (h x)) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_tendsto omega N (fun k :e omega => f k x) (g x) hl_sequentially = 1))) -> hl_integrable_on M N g s = 1 /\ hl_tendsto omega N (fun k :e omega => hl_integral M N s (f k)) (hl_integral M N s g) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11691 / DOMINATED_CONVERGENCE_INTEGRABLE   (hash md5:978da6054dada6d640f4659dbf784949)
Theorem hlt_DOMINATED_CONVERGENCE_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall k :e omega, hl_absolutely_integrable_on M N (f k) s = 1) /\ (hl_integrable_on M 1 h s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (g x)) (hl_drop (h x)) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_tendsto omega N (fun k :e omega => f k x) (g x) hl_sequentially = 1))) -> hl_integrable_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11755 / DOMINATED_CONVERGENCE_ABSOLUTELY_INTEGRABLE   (hash md5:2dd5a3de8f6b538291491269d2953f92)
Theorem hlt_DOMINATED_CONVERGENCE_ABSOLUTELY_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall k :e omega, hl_absolutely_integrable_on M N (f k) s = 1) /\ (hl_integrable_on M 1 h s = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (g x)) (hl_drop (h x)) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_tendsto omega N (fun k :e omega => f k x) (g x) hl_sequentially = 1))) -> hl_absolutely_integrable_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11769 / DOMINATED_CONVERGENCE_AE   (hash md5:8ed5463bb2a00da536a14fbc3b70d9b5)
Theorem hlt_DOMINATED_CONVERGENCE_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall h :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, (forall k :e omega, hl_integrable_on M N (f k) s = 1) /\ (hl_integrable_on M 1 h s = 1 /\ (hl_negligible M t = 1 /\ ((forall k :e omega, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vector_norm N (f k x)) (hl_drop (h x)) = 1) /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_tendsto omega N (fun k :e omega => f k x) (g x) hl_sequentially = 1)))) -> hl_integrable_on M N g s = 1 /\ hl_tendsto omega N (fun k :e omega => hl_integral M N s (f k)) (hl_integral M N s g) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11792 / INTEGRAL_COUNTABLE_UNIONS   (hash md5:2f13a2e9bae49370bf97b002b9dca27e)
Theorem hlt_INTEGRAL_COUNTABLE_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M :^: omega, (forall n :e omega, hl_integrable_on M N f (s n) = 1) /\ (hl_pairwise omega (fun i :e omega => fun j :e omega => hl_negligible M (hl_INTER (hl_ty_cart R M) (s i) (s j))) (hl_UNIV omega) = 1 /\ hl_absolutely_integrable_on M N f (hl_UNIONS (hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_6438 :e 2 :^: hl_ty_cart R M => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_6438 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1) -> hl_tendsto omega N (fun n :e omega => hl_vsum omega N (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_integral M N (s i) f)) (hl_integral M N (hl_UNIONS (hl_ty_cart R M) (hl_GSPEC (2 :^: hl_ty_cart R M) (fun GEN_PVAR_6439 :e 2 :^: hl_ty_cart R M => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R M) GEN_PVAR_6439 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) f) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11843 / NEGLIGIBLE_ON_UNIV   (hash md5:cff1dac843069ec1e19a38d2a2996789)
Theorem hlt_NEGLIGIBLE_ON_UNIV : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_negligible N s = 1 <-> hl_has_integral N 1 (hl_indicator N s) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11861 / NEGLIGIBLE_COUNTABLE_UNIONS   (hash md5:c12f1411f64a810d33c3f448fec22a1f)
Theorem hlt_NEGLIGIBLE_COUNTABLE_UNIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_negligible N (s n) = 1) -> hl_negligible N (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_6449 :e 2 :^: hl_ty_cart R N => if exists n :e omega, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_6449 (hl_IN omega n (hl_UNIV omega)) (s n) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:11916 / HAS_INTEGRAL_NEGLIGIBLE_EQ   (hash md5:264c4105b5afbe552a8fd95e6ede6ef0)
Theorem hlt_HAS_INTEGRAL_NEGLIGIBLE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (forall x :e hl_ty_cart R M, forall i :e omega, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f x) i) = 1) -> (hl_has_integral M N f (hl_vec N (hl_NUMERAL hl_zero)) s = 1 <-> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6458 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6458 (if hl_IN (hl_ty_cart R M) x s = 1 /\ ~ f x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:11977 / INTEGRAL_ZERO_ON_SUBINTERVALS_IMP_ZERO_AE   (hash md5:dd7f0046925104888cb6e8bf693ccf25)
Theorem hlt_INTEGRAL_ZERO_ON_SUBINTERVALS_IMP_ZERO_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_has_integral M N f (hl_vec N (hl_NUMERAL hl_zero)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a x) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1) -> hl_negligible M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6459 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6459 (if hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ ~ f x = hl_vec N (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12050 / NEGLIGIBLE_COUNTABLE   (hash md5:c4710ded65ef4f8932af1df6103c420f)
Theorem hlt_NEGLIGIBLE_COUNTABLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_COUNTABLE (hl_ty_cart R N) s = 1 -> hl_negligible N s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12068 / HAS_INTEGRAL_COMPONENT_LE_AE   (hash md5:adbecc3ad4f9849bce015137725f5154)
Theorem hlt_HAS_INTEGRAL_COMPONENT_LE_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i j :e hl_ty_cart R N, forall k :e omega, forall t :e 2 :^: hl_ty_cart R M, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_negligible M t = 1 /\ (hl_has_integral M N f i s = 1 /\ (hl_has_integral M N g j s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N (g x) k) = 1))))) -> hl_real_le (hl_vindex R N i k) (hl_vindex R N j k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12085 / INTEGRAL_COMPONENT_LE_AE   (hash md5:a97bc2f39aef714d1017b01a93be7b8f)
Theorem hlt_INTEGRAL_COMPONENT_LE_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall k :e omega, forall t :e 2 :^: hl_ty_cart R M, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_negligible M t = 1 /\ (hl_integrable_on M N f s = 1 /\ (hl_integrable_on M N g s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vindex R N (f x) k) (hl_vindex R N (g x) k) = 1))))) -> hl_real_le (hl_vindex R N (hl_integral M N s f) k) (hl_vindex R N (hl_integral M N s g) k) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12094 / HAS_INTEGRAL_DROP_LE_AE   (hash md5:14c9c2e364a0027830e123135df2755f)
Theorem hlt_HAS_INTEGRAL_DROP_LE_AE : forall M:set, M <> Empty -> forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i j :e hl_ty_cart R 1, forall t :e 2 :^: hl_ty_cart R M, hl_has_integral M 1 f i s = 1 /\ (hl_has_integral M 1 g j s = 1 /\ (hl_negligible M t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_drop (f x)) (hl_drop (g x)) = 1))) -> hl_real_le (hl_drop i) (hl_drop j) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12103 / INTEGRAL_DROP_LE_AE   (hash md5:0265d217e71d88cc25f9a4352ed80b24)
Theorem hlt_INTEGRAL_DROP_LE_AE : forall M:set, M <> Empty -> forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M 1 f s = 1 /\ (hl_integrable_on M 1 g s = 1 /\ (hl_negligible M t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_drop (f x)) (hl_drop (g x)) = 1))) -> hl_real_le (hl_drop (hl_integral M 1 s f)) (hl_drop (hl_integral M 1 s g)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12111 / NONNEGATIVE_ABSOLUTELY_INTEGRABLE_AE   (hash md5:9ed89c732e10620595464aee4a037fc5)
Theorem hlt_NONNEGATIVE_ABSOLUTELY_INTEGRABLE_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_negligible M t = 1 /\ ((forall x :e hl_ty_cart R M, forall i :e omega, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N (f x) i) = 1) /\ hl_integrable_on M N f s = 1) -> hl_absolutely_integrable_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12129 / INTEGRAL_NORM_BOUND_INTEGRAL_AE   (hash md5:448bb861c25da8fa3c6a414af55480a4)
Theorem hlt_INTEGRAL_NORM_BOUND_INTEGRAL_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, hl_integrable_on M N f s = 1 /\ (hl_integrable_on M 1 g s = 1 /\ (hl_negligible M t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_real_le (hl_vector_norm N (f x)) (hl_drop (g x)) = 1))) -> hl_real_le (hl_vector_norm N (hl_integral M N s f)) (hl_drop (hl_integral M 1 s g)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12156 / BEPPO_LEVI_INCREASING   (hash md5:8c4dedd9f16b81eebe019661e3f26007)
Theorem hlt_BEPPO_LEVI_INCREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall s :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_drop (f k x)) (hl_drop (f (hl_SUC k) x)) = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6463 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6463 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N, exists k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s k) = 1 -> hl_tendsto omega 1 (fun k1 :e omega => f k1 x) (g x) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12447 / BEPPO_LEVI_DECREASING   (hash md5:a5ba1fed3966eb4437df39212bd90160)
Theorem hlt_BEPPO_LEVI_DECREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall s :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_drop (f (hl_SUC k) x)) (hl_drop (f k x)) = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6464 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6464 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N, exists k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s k) = 1 -> hl_tendsto omega 1 (fun k1 :e omega => f k1 x) (g x) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12472 / BEPPO_LEVI_MONOTONE_CONVERGENCE_INCREASING   (hash md5:213b3a31eeaccbae2b827de4e26f88be)
Theorem hlt_BEPPO_LEVI_MONOTONE_CONVERGENCE_INCREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall s :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_drop (f k x)) (hl_drop (f (hl_SUC k) x)) = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6465 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6465 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N, exists k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s k) = 1 -> hl_tendsto omega 1 (fun k1 :e omega => f k1 x) (g x) hl_sequentially = 1) /\ (hl_integrable_on N 1 g s = 1 /\ hl_tendsto omega 1 (fun k1 :e omega => hl_integral N 1 s (f k1)) (hl_integral N 1 s g) hl_sequentially = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:12506 / BEPPO_LEVI_MONOTONE_CONVERGENCE_DECREASING   (hash md5:4f1c00daa218a2ca2fcf1a26e83f91c7)
Theorem hlt_BEPPO_LEVI_MONOTONE_CONVERGENCE_DECREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall s :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ ((forall k :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_drop (f (hl_SUC k) x)) (hl_drop (f k x)) = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6466 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6466 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N, exists k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s k) = 1 -> hl_tendsto omega 1 (fun k1 :e omega => f k1 x) (g x) hl_sequentially = 1) /\ (hl_integrable_on N 1 g s = 1 /\ hl_tendsto omega 1 (fun k1 :e omega => hl_integral N 1 s (f k1)) (hl_integral N 1 s g) hl_sequentially = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:12540 / BEPPO_LEVI_MONOTONE_CONVERGENCE_INCREASING_AE   (hash md5:a628729305366ca79c358e6732f1eb40)
Theorem hlt_BEPPO_LEVI_MONOTONE_CONVERGENCE_INCREASING_AE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall s :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ ((forall k :e omega, exists t :e 2 :^: hl_ty_cart R N, hl_negligible N t = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_real_le (hl_drop (f k x)) (hl_drop (f (hl_SUC k) x)) = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6475 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6475 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N, exists k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s k) = 1 -> hl_tendsto omega 1 (fun k1 :e omega => f k1 x) (g x) hl_sequentially = 1) /\ (hl_integrable_on N 1 g s = 1 /\ hl_tendsto omega 1 (fun k1 :e omega => hl_integral N 1 s (f k1)) (hl_integral N 1 s g) hl_sequentially = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:12596 / BEPPO_LEVI_MONOTONE_CONVERGENCE_DECREASING_AE   (hash md5:bb449ece89c24e750ead6813be05789e)
Theorem hlt_BEPPO_LEVI_MONOTONE_CONVERGENCE_DECREASING_AE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall s :e 2 :^: hl_ty_cart R N, (forall k :e omega, hl_integrable_on N 1 (f k) s = 1) /\ ((forall k :e omega, exists t :e 2 :^: hl_ty_cart R N, hl_negligible N t = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_real_le (hl_drop (f (hl_SUC k) x)) (hl_drop (f k x)) = 1) /\ hl_bounded 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6484 :e hl_ty_cart R 1 => if exists k :e omega, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6484 (hl_IN omega k (hl_UNIV omega)) (hl_integral N 1 s (f k)) = 1 then 1 else 0)) = 1) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N, exists k :e 2 :^: hl_ty_cart R N, hl_negligible N k = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s k) = 1 -> hl_tendsto omega 1 (fun k1 :e omega => f k1 x) (g x) hl_sequentially = 1) /\ (hl_integrable_on N 1 g s = 1 /\ hl_tendsto omega 1 (fun k1 :e omega => hl_integral N 1 s (f k1)) (hl_integral N 1 s g) hl_sequentially = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:12656 / FATOU   (hash md5:317a22e842d07f3a3f920f5c906b8bbb)
Theorem hlt_FATOU : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, forall B :e R, hl_negligible N t = 1 /\ ((forall n :e omega, hl_integrable_on N 1 (f n) s = 1) /\ ((forall n :e omega, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f n x)) = 1) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_tendsto omega 1 (fun n :e omega => f n x) (g x) hl_sequentially = 1) /\ (forall n :e omega, hl_real_le (hl_drop (hl_integral N 1 s (f n))) B = 1)))) -> hl_integrable_on N 1 g s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (hl_integral N 1 s g)) = 1 /\ hl_real_le (hl_drop (hl_integral N 1 s g)) B = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:12832 / LIEB   (hash md5:57ddb7d4419fa9280112d5b58dcfd570)
Theorem hlt_LIEB : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s t :e 2 :^: hl_ty_cart R M, (forall n :e omega, hl_absolutely_integrable_on M N (f n) s = 1) /\ (hl_absolutely_integrable_on M N g s = 1 /\ (hl_negligible M t = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s t) = 1 -> hl_tendsto omega N (fun n :e omega => f n x) (g x) hl_sequentially = 1))) -> hl_tendsto omega 1 (fun n :e omega => hl_vector_sub 1 (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (hl_vector_sub N (f n x) (g x))))) (hl_vector_sub 1 (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (f n x)))) (hl_integral M 1 s (fun x :e hl_ty_cart R M => hl_lift (hl_vector_norm N (g x)))))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:12861 / FATOU_STRONG   (hash md5:ece0bd6b52b36c99b7be130daf14e91e)
Theorem hlt_FATOU_STRONG : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N :^: omega, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, forall B :e R, hl_negligible N t = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_tendsto omega 1 (fun n :e omega => f n x) (g x) hl_sequentially = 1) /\ (hl_eventually omega (fun n :e omega => hl_integrable_on N 1 (f n) s) hl_sequentially = 1 /\ (hl_eventually omega (fun n :e omega => if forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) s t) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (f n x)) = 1 then 1 else 0) hl_sequentially = 1 /\ hl_eventually omega (fun n :e omega => hl_real_le (hl_drop (hl_integral N 1 s (f n))) B) hl_sequentially = 1))) -> hl_absolutely_integrable_on N 1 g s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop (hl_integral N 1 s g)) = 1 /\ hl_real_le (hl_drop (hl_integral N 1 s g)) B = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:12903 / FUNDAMENTAL_THEOREM_OF_CALCULUS_BARTLE   (hash md5:e32bedef9a7cd5b6ff5f3ed01b8f7a97)
Theorem hlt_FUNDAMENTAL_THEOREM_OF_CALCULUS_BARTLE : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_negligible 1 s = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists g :e 2 :^: hl_ty_cart R 1 :^: hl_ty_cart R 1, hl_gauge 1 g = 1 /\ forall p :e 2 :^: (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1), hl_tagged_partial_division_of 1 p (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_fine (hl_ty_cart R 1) (hl_ty_cart R 1) g p = 1 /\ hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1) (hl_ty_cart R 1) (hl_FST (hl_ty_cart R 1) (2 :^: hl_ty_cart R 1)) p) s = 1) -> hl_real_lt (hl_vector_norm N (hl_vsum (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R 1 :*: 2 :^: hl_ty_cart R 1) => if forall x :e hl_ty_cart R 1, forall k :e 2 :^: hl_ty_cart R 1, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) x k)) (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))) = 1 then 1 else 0)))) e1 = 1))) -> hl_has_integral 1 N f' (hl_vector_sub N (f b) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13079 / FUNDAMENTAL_THEOREM_OF_CALCULUS_STRONG   (hash md5:53f8bb46d41f66ab01e08a51a5bde29d)
Theorem hlt_FUNDAMENTAL_THEOREM_OF_CALCULUS_STRONG : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_COUNTABLE (hl_ty_cart R 1) s = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1))) -> hl_has_integral 1 N f' (hl_vector_sub N (f b) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13286 / FUNDAMENTAL_THEOREM_OF_CALCULUS_INTERIOR_STRONG   (hash md5:18e04bedd2fe30c0d0993ac7ce05e235)
Theorem hlt_FUNDAMENTAL_THEOREM_OF_CALCULUS_INTERIOR_STRONG : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_COUNTABLE (hl_ty_cart R 1) s = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) s) = 1 -> hl_has_vector_derivative N f (f' x) (hl_at 1 x) = 1))) -> hl_has_integral 1 N f' (hl_vector_sub N (f b) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13303 / FUNDAMENTAL_THEOREM_OF_CALCULUS   (hash md5:2359d376b47cac884b04d647e7d3d6b0)
Theorem hlt_FUNDAMENTAL_THEOREM_OF_CALCULUS : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) -> hl_has_integral 1 N f' (hl_vector_sub N (f b) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13317 / FUNDAMENTAL_THEOREM_OF_CALCULUS_INTERIOR   (hash md5:aa89a4c15acea01188e1aa998cc5ebde)
Theorem hlt_FUNDAMENTAL_THEOREM_OF_CALCULUS_INTERIOR : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 -> hl_has_vector_derivative N f (f' x) (hl_at 1 x) = 1)) -> hl_has_integral 1 N f' (hl_vector_sub N (f b) (f a)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13328 / ANTIDERIVATIVE_INTEGRAL_CONTINUOUS   (hash md5:17e7df417d281418e4dc3a5c9506433a)
Theorem hlt_ANTIDERIVATIVE_INTEGRAL_CONTINUOUS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall u v :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop u) (hl_drop v) = 1) -> hl_has_integral 1 N f (hl_vector_sub N (g v) (g u)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13348 / HAS_DERIVATIVE_ZERO_UNIQUE_STRONG_INTERVAL   (hash md5:ea04dc83efbc81dc632737559af4b95c)
Theorem hlt_HAS_DERIVATIVE_ZERO_UNIQUE_STRONG_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall k :e 2 :^: hl_ty_cart R 1, forall y :e hl_ty_cart R N, hl_COUNTABLE (hl_ty_cart R 1) k = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (f a = y /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) k) = 1 -> hl_has_derivative 1 N f (fun h :e hl_ty_cart R 1 => hl_vec N (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1))) -> forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> f x = y.
Admitted.

// HOL Light: Multivariate/integration.ml:13385 / HAS_DERIVATIVE_ZERO_UNIQUE_STRONG_CONVEX   (hash md5:e5436b3b007ecae00ccdcfc10678f624)
Theorem hlt_HAS_DERIVATIVE_ZERO_UNIQUE_STRONG_CONVEX : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s k :e 2 :^: hl_ty_cart R M, forall c :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_convex M s = 1 /\ (hl_COUNTABLE (hl_ty_cart R M) k = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_IN (hl_ty_cart R M) c s = 1 /\ (f c = y /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s k) = 1 -> hl_has_derivative M N f (fun h :e hl_ty_cart R M => hl_vec N (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1))))) -> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = y.
Admitted.

// HOL Light: Multivariate/integration.ml:13450 / HAS_DERIVATIVE_ZERO_UNIQUE_STRONG_CONNECTED   (hash md5:46b10f09866d9abd74db829ee7b2801b)
Theorem hlt_HAS_DERIVATIVE_ZERO_UNIQUE_STRONG_CONNECTED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s k :e 2 :^: hl_ty_cart R M, forall c :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_connected M s = 1 /\ (hl_open M s = 1 /\ (hl_COUNTABLE (hl_ty_cart R M) k = 1 /\ (hl_continuous_on M N f s = 1 /\ (hl_IN (hl_ty_cart R M) c s = 1 /\ (f c = y /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_DIFF (hl_ty_cart R M) s k) = 1 -> hl_has_derivative M N f (fun h :e hl_ty_cart R M => hl_vec N (hl_NUMERAL hl_zero)) (hl_within (hl_ty_cart R M) (hl_at M x) s) = 1)))))) -> forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = y.
Admitted.

// HOL Light: Multivariate/integration.ml:13482 / INTEGRATION_BY_PARTS   (hash md5:93a504ca78f2e528b67e83b7e5ad7b67)
Theorem hlt_INTEGRATION_BY_PARTS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall c :e 2 :^: hl_ty_cart R 1, forall y :e hl_ty_cart R P, hl_bilinear M N P bop = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_COUNTABLE (hl_ty_cart R 1) c = 1 /\ (hl_continuous_on 1 P (fun x :e hl_ty_cart R 1 => bop (f x) (g x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) c) = 1 -> hl_has_vector_derivative M f (f' x) (hl_at 1 x) = 1 /\ hl_has_vector_derivative N g (g' x) (hl_at 1 x) = 1) /\ hl_has_integral 1 P (fun x :e hl_ty_cart R 1 => bop (f x) (g' x)) (hl_vector_sub P (hl_vector_sub P (bop (f b) (g b)) (bop (f a) (g a))) y) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1)))) -> hl_has_integral 1 P (fun x :e hl_ty_cart R 1 => bop (f' x) (g x)) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13504 / INTEGRATION_BY_PARTS_SIMPLE   (hash md5:4a3608fe11e8fd674754634e0fe29953)
Theorem hlt_INTEGRATION_BY_PARTS_SIMPLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall y :e hl_ty_cart R P, hl_bilinear M N P bop = 1 /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_vector_derivative M f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ hl_has_vector_derivative N g (g' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) /\ hl_has_integral 1 P (fun x :e hl_ty_cart R 1 => bop (f x) (g' x)) (hl_vector_sub P (hl_vector_sub P (bop (f b) (g b)) (bop (f a) (g a))) y) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1)) -> hl_has_integral 1 P (fun x :e hl_ty_cart R 1 => bop (f' x) (g x)) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13525 / INTEGRABLE_BY_PARTS   (hash md5:cc05d5523d16507d22ad781e6379a5a4)
Theorem hlt_INTEGRABLE_BY_PARTS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall c :e 2 :^: hl_ty_cart R 1, hl_bilinear M N P bop = 1 /\ (hl_COUNTABLE (hl_ty_cart R 1) c = 1 /\ (hl_continuous_on 1 P (fun x :e hl_ty_cart R 1 => bop (f x) (g x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) c) = 1 -> hl_has_vector_derivative M f (f' x) (hl_at 1 x) = 1 /\ hl_has_vector_derivative N g (g' x) (hl_at 1 x) = 1) /\ hl_integrable_on 1 P (fun x :e hl_ty_cart R 1 => bop (f x) (g' x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1))) -> hl_integrable_on 1 P (fun x :e hl_ty_cart R 1 => bop (f' x) (g x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13547 / INTEGRABLE_BY_PARTS_EQ   (hash md5:5a539a5b22d1eef036a569d2c6ce6437)
Theorem hlt_INTEGRABLE_BY_PARTS_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall f' :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall c :e 2 :^: hl_ty_cart R 1, hl_bilinear M N P bop = 1 /\ (hl_COUNTABLE (hl_ty_cart R 1) c = 1 /\ (hl_continuous_on 1 P (fun x :e hl_ty_cart R 1 => bop (f x) (g x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) c) = 1 -> hl_has_vector_derivative M f (f' x) (hl_at 1 x) = 1 /\ hl_has_vector_derivative N g (g' x) (hl_at 1 x) = 1))) -> (hl_integrable_on 1 P (fun x :e hl_ty_cart R 1 => bop (f x) (g' x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_integrable_on 1 P (fun x :e hl_ty_cart R 1 => bop (f' x) (g x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:13572 / equiintegrable_on   (hash md5:9faf2e5b364dbcdbdd251d23ac65c30b)
Theorem hlt_equiintegrable_on_thm : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall i :e 2 :^: hl_ty_cart R M, hl_equiintegrable_on M N fs i = 1 <-> (forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 -> hl_integrable_on M N f i = 1) /\ forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_gauge M d = 1 /\ forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ (hl_tagged_division_of M p i = 1 /\ hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1) -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vsum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) N p (hl_GABS (hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e hl_ty_cart R N :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ (hl_ty_cart R N) (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vmul N (hl_content M k) (f x)) = 1 then 1 else 0))) (hl_integral M N i f))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13581 / EQUIINTEGRABLE_ON_SING   (hash md5:1ffbfa7b798d269c6344d3efdf308653)
Theorem hlt_EQUIINTEGRABLE_ON_SING : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N (hl_INSERT (hl_ty_cart R N :^: hl_ty_cart R M) f (hl_EMPTY (hl_ty_cart R N :^: hl_ty_cart R M))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13596 / EQUIINTEGRABLE_ON_NULL   (hash md5:2d7d111f55e4141960af44d25cc25289)
Theorem hlt_EQUIINTEGRABLE_ON_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13606 / EQUIINTEGRABLE_ON_SPLIT   (hash md5:b00d05315a3b95d8d98ccc17813f82d7)
Theorem hlt_EQUIINTEGRABLE_ON_SPLIT : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall k :e omega, forall a b :e hl_ty_cart R M, forall c :e R, hl_equiintegrable_on M N fs (hl_INTER (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6526 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6526 (hl_real_le (hl_vindex R M x k) c) x = 1 then 1 else 0))) = 1 /\ (hl_equiintegrable_on M N fs (hl_INTER (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6527 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6527 (hl_real_ge (hl_vindex R M x k) c) x = 1 then 1 else 0))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ hl_le k (hl_dimindex M (hl_UNIV M)) = 1)) -> hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13790 / EQUIINTEGRABLE_DIVISION   (hash md5:45e8775edfac6926b1eafcf640de0ea0)
Theorem hlt_EQUIINTEGRABLE_DIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> (hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 <-> forall i :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) i d = 1 -> hl_equiintegrable_on M N fs i = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:13848 / EQUIINTEGRABLE_LIMIT   (hash md5:4b15b00dddd17f16d742a96ed563056a)
Theorem hlt_EQUIINTEGRABLE_LIMIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6528 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists n :e omega, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6528 (hl_IN omega n (hl_UNIV omega)) (f n) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_tendsto omega N (fun n :e omega => f n x) (g x) hl_sequentially = 1) -> hl_integrable_on M N g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_tendsto omega N (fun n :e omega => hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (f n)) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) g) hl_sequentially = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13938 / EQUIINTEGRABLE_SUBSET   (hash md5:8fba5ddc967b9d27e6f2a48a64ca494d)
Theorem hlt_EQUIINTEGRABLE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall fs gs :e 2 :^: (hl_ty_cart R A :^: hl_ty_cart R B), forall s :e 2 :^: hl_ty_cart R B, hl_equiintegrable_on B A fs s = 1 /\ hl_SUBSET (hl_ty_cart R A :^: hl_ty_cart R B) gs fs = 1 -> hl_equiintegrable_on B A gs s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13943 / EQUIINTEGRABLE_UNION   (hash md5:89c2b1990b938414c0d27404dbc0db54)
Theorem hlt_EQUIINTEGRABLE_UNION : forall M N:set, M <> Empty -> N <> Empty -> forall fs gs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_equiintegrable_on M N fs s = 1 /\ hl_equiintegrable_on M N gs s = 1 -> hl_equiintegrable_on M N (hl_UNION (hl_ty_cart R N :^: hl_ty_cart R M) fs gs) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13958 / EQUIINTEGRABLE_EQ   (hash md5:23da353e16dd702028979598e662d20a)
Theorem hlt_EQUIINTEGRABLE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall fs gs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_equiintegrable_on M N fs s = 1 /\ (forall g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) g gs = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> f x = g x) -> hl_equiintegrable_on M N gs s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:13991 / EQUIINTEGRABLE_CMUL   (hash md5:6a86e7ac022e6b01cedca59c5c875056)
Theorem hlt_EQUIINTEGRABLE_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, forall k :e R, hl_equiintegrable_on M N fs s = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6529 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists c :e R, exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6529 (if hl_real_le (hl_real_abs c) k = 1 /\ hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 then 1 else 0) (fun x :e hl_ty_cart R M => hl_vmul N c (f x)) = 1 then 1 else 0)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14020 / EQUIINTEGRABLE_ADD   (hash md5:e20820c7d1fa837b42ce3701f1c65236)
Theorem hlt_EQUIINTEGRABLE_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall fs gs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_equiintegrable_on M N fs s = 1 /\ hl_equiintegrable_on M N gs s = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6530 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6530 (if hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) g gs = 1 then 1 else 0) (fun x :e hl_ty_cart R M => hl_vector_add N (f x) (g x)) = 1 then 1 else 0)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14055 / EQUIINTEGRABLE_NEG   (hash md5:05196342f748665d99781d9d0e06f2b0)
Theorem hlt_EQUIINTEGRABLE_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_equiintegrable_on M N fs s = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6531 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6531 (hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs) (fun x :e hl_ty_cart R M => hl_vector_neg N (f x)) = 1 then 1 else 0)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14067 / EQUIINTEGRABLE_SUB   (hash md5:35e4c736e58714a3671a047f04123cee)
Theorem hlt_EQUIINTEGRABLE_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall fs gs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_equiintegrable_on M N fs s = 1 /\ hl_equiintegrable_on M N gs s = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6532 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists f g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6532 (if hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) g gs = 1 then 1 else 0) (fun x :e hl_ty_cart R M => hl_vector_sub N (f x) (g x)) = 1 then 1 else 0)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14083 / EQUIINTEGRABLE_SUM   (hash md5:2a4ee350925be3f0ee507675765acc25)
Theorem hlt_EQUIINTEGRABLE_SUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6533 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists t :e 2 :^: A, exists c :e R :^: A, exists f :e hl_ty_cart R N :^: hl_ty_cart R M :^: A, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6533 (if hl_FINITE A t = 1 /\ ((forall i :e A, hl_IN A i t = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (c i) = 1 /\ hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) (f i) fs = 1) /\ hl_sum A t c = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) then 1 else 0) (fun x :e hl_ty_cart R M => hl_vsum A N t (fun i :e A => hl_vmul N (c i) (f i x))) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14158 / EQUIINTEGRABLE_UNIFORM_LIMIT   (hash md5:dce64f01301f18e35b175ca6d0290f0c)
Theorem hlt_EQUIINTEGRABLE_UNIFORM_LIMIT : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6534 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6534 (if forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (g x) (f x))) e1 = 1 then 1 else 0) g = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14240 / EQUIINTEGRABLE_REFLECT   (hash md5:cc049dcd0005aaa60aecb87ed82c362d)
Theorem hlt_EQUIINTEGRABLE_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6535 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6535 (hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs) (fun x :e hl_ty_cart R M => f (hl_vector_neg M x)) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_vector_neg M b) (hl_vector_neg M a)) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14354 / SUM_CONTENT_AREA_OVER_THIN_DIVISION   (hash md5:83d59609b69438bc9bc4d278e48dc0c5)
Theorem hlt_SUM_CONTENT_AREA_OVER_THIN_DIVISION : forall M:set, M <> Empty -> forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall i :e omega, forall c :e R, hl_division_of M d s = 1 /\ (hl_SUBSET (hl_ty_cart R M) s (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_real_le (hl_vindex R M a i) c = 1 /\ (hl_real_le c (hl_vindex R M b i) = 1 /\ (forall k :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) k d = 1 -> ~ hl_INTER (hl_ty_cart R M) k (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6580 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6580 (if hl_vindex R M x i = c then 1 else 0) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R M))))))) -> hl_real_le (hl_real_mul (hl_real_sub (hl_vindex R M b i) (hl_vindex R M a i)) (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_real_div (hl_content M k) (hl_real_sub (hl_vindex R M (hl_interval_upperbound M k) i) (hl_vindex R M (hl_interval_lowerbound M k) i))))) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14734 / BOUNDED_EQUIINTEGRAL_OVER_THIN_TAGGED_PARTIAL_DIVISION   (hash md5:79e9bbc47475bf2aab2d129eac00d6a8)
Theorem hlt_BOUNDED_EQUIINTEGRAL_OVER_THIN_TAGGED_PARTIAL_DIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall e1 :e R, hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ ((forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1 /\ hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (h x)) (hl_vector_norm N (f x)) = 1) /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1)) -> exists d :e 2 :^: hl_ty_cart R M :^: hl_ty_cart R M, hl_gauge M d = 1 /\ forall c :e hl_ty_cart R M, forall i :e omega, forall p :e 2 :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M), forall h :e hl_ty_cart R N :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M) c (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex M (hl_UNIV M)) = 1 /\ (hl_tagged_partial_division_of M p (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_fine (hl_ty_cart R M) (hl_ty_cart R M) d p = 1 /\ (hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1 /\ (forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_IN (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k) p = 1 -> ~ hl_INTER (hl_ty_cart R M) k (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_6581 :e hl_ty_cart R M => if exists x1 :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_6581 (if hl_vindex R M x1 i = hl_vindex R M c i then 1 else 0) x1 = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R M))))))) -> hl_real_lt (hl_sum (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) p (hl_GABS (R :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M)) (fun f1 :e R :^: (hl_ty_cart R M :*: 2 :^: hl_ty_cart R M) => if forall x :e hl_ty_cart R M, forall k :e 2 :^: hl_ty_cart R M, hl_GEQ R (f1 (hl_pair (hl_ty_cart R M) (2 :^: hl_ty_cart R M) x k)) (hl_vector_norm N (hl_integral M N k h)) = 1 then 1 else 0))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:14935 / EQUIINTEGRABLE_HALFSPACE_RESTRICTIONS_LE   (hash md5:e4b7dedc3683f8f3d68cf23bcb31022e)
Theorem hlt_EQUIINTEGRABLE_HALFSPACE_RESTRICTIONS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ (forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1 /\ hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (h x)) (hl_vector_norm N (f x)) = 1)) -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6598 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists i :e omega, exists c :e R, exists h :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6598 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) = 1 /\ (hl_IN R c (hl_UNIV R) = 1 /\ hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1) then 1 else 0) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_real_le (hl_vindex R M x i) c) (h x) (hl_vec N (hl_NUMERAL hl_zero))) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15366 / EQUIINTEGRABLE_HALFSPACE_RESTRICTIONS_GE   (hash md5:e0e4b6e5ffacf6260c6704bd7ea6ca9e)
Theorem hlt_EQUIINTEGRABLE_HALFSPACE_RESTRICTIONS_GE : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ (forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1 /\ hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (h x)) (hl_vector_norm N (f x)) = 1)) -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6600 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists i :e omega, exists c :e R, exists h :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6600 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) = 1 /\ (hl_IN R c (hl_UNIV R) = 1 /\ hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1) then 1 else 0) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_real_ge (hl_vindex R M x i) c) (h x) (hl_vec N (hl_NUMERAL hl_zero))) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15398 / EQUIINTEGRABLE_HALFSPACE_RESTRICTIONS_LT   (hash md5:1b7e7bddbbdaaff00dea480a03f9fc2e)
Theorem hlt_EQUIINTEGRABLE_HALFSPACE_RESTRICTIONS_LT : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ (forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1 /\ hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (h x)) (hl_vector_norm N (f x)) = 1)) -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6601 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists i :e omega, exists c :e R, exists h :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6601 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) = 1 /\ (hl_IN R c (hl_UNIV R) = 1 /\ hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1) then 1 else 0) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_real_lt (hl_vindex R M x i) c) (h x) (hl_vec N (hl_NUMERAL hl_zero))) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15426 / EQUIINTEGRABLE_HALFSPACE_RESTRICTIONS_GT   (hash md5:62f88c34bda9a67890f245847302fe1e)
Theorem hlt_EQUIINTEGRABLE_HALFSPACE_RESTRICTIONS_GT : forall M N:set, M <> Empty -> N <> Empty -> forall fs :e 2 :^: (hl_ty_cart R N :^: hl_ty_cart R M), forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_equiintegrable_on M N fs (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) f fs = 1 /\ (forall h :e hl_ty_cart R N :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1 /\ hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_real_le (hl_vector_norm N (h x)) (hl_vector_norm N (f x)) = 1)) -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6602 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists i :e omega, exists c :e R, exists h :e hl_ty_cart R N :^: hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6602 (if hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex M (hl_UNIV M))) = 1 /\ (hl_IN R c (hl_UNIV R) = 1 /\ hl_IN (hl_ty_cart R N :^: hl_ty_cart R M) h fs = 1) then 1 else 0) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_real_gt (hl_vindex R M x i) c) (h x) (hl_vec N (hl_NUMERAL hl_zero))) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15454 / EQUIINTEGRABLE_OPEN_INTERVAL_RESTRICTIONS   (hash md5:66b0f5ee1f2e2cc1260d792afd81a9e0)
Theorem hlt_EQUIINTEGRABLE_OPEN_INTERVAL_RESTRICTIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6605 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists c d :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6605 (if hl_IN (hl_ty_cart R M) c (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_IN (hl_ty_cart R M) d (hl_UNIV (hl_ty_cart R M)) = 1 then 1 else 0) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x (hl_open_interval M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d))) (f x) (hl_vec N (hl_NUMERAL hl_zero))) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15536 / EQUIINTEGRABLE_CLOSED_INTERVAL_RESTRICTIONS   (hash md5:05daa5b5dddc0bb47f98e17ec578960b)
Theorem hlt_EQUIINTEGRABLE_CLOSED_INTERVAL_RESTRICTIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_equiintegrable_on M N (hl_GSPEC (hl_ty_cart R N :^: hl_ty_cart R M) (fun GEN_PVAR_6608 :e hl_ty_cart R N :^: hl_ty_cart R M => if exists c d :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N :^: hl_ty_cart R M) GEN_PVAR_6608 (if hl_IN (hl_ty_cart R M) c (hl_UNIV (hl_ty_cart R M)) = 1 /\ hl_IN (hl_ty_cart R M) d (hl_UNIV (hl_ty_cart R M)) = 1 then 1 else 0) (fun x :e hl_ty_cart R M => hl_COND (hl_ty_cart R N) (hl_IN (hl_ty_cart R M) x (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) (f x) (hl_vec N (hl_NUMERAL hl_zero))) = 1 then 1 else 0)) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15622 / INDEFINITE_INTEGRAL_CONTINUOUS   (hash md5:15783a0afe55f25b76ae93b5053b75dd)
Theorem hlt_INDEFINITE_INTEGRAL_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b c d :e hl_ty_cart R M, forall e1 :e R, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R M) c (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R M) d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1)) -> exists k :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) k = 1 /\ forall c' d' :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) c' (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R M) d' (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_real_le (hl_vector_norm M (hl_vector_sub M c' c)) k = 1 /\ hl_real_le (hl_vector_norm M (hl_vector_sub M d' d)) k = 1)) -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c' d') (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15729 / INDEFINITE_INTEGRAL_CONTINUOUS_RIGHT   (hash md5:c5c8d08788e0dcfb0cf875eef717ff1e)
Theorem hlt_INDEFINITE_INTEGRAL_CONTINUOUS_RIGHT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_continuous_on M N (fun x :e hl_ty_cart R M => hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a x) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15746 / INDEFINITE_INTEGRAL_CONTINUOUS_LEFT   (hash md5:62ce337ef507b0fe290e9bdf1a43d0cf)
Theorem hlt_INDEFINITE_INTEGRAL_CONTINUOUS_LEFT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_continuous_on M N (fun x :e hl_ty_cart R M => hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15763 / INDEFINITE_INTEGRAL_UNIFORMLY_CONTINUOUS   (hash md5:4c2c0e63d1475e731d0464cab074f679)
Theorem hlt_INDEFINITE_INTEGRAL_UNIFORMLY_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_uniformly_continuous_on (hl_ty_finite_sum M M) N (fun y :e hl_ty_cart R (hl_ty_finite_sum M M) => hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (hl_fstcart R M M y) (hl_sndcart R M M y)) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) (hl_closed_interval (hl_ty_finite_sum M M) (hl_CONS (hl_ty_cart R (hl_ty_finite_sum M M) :*: hl_ty_cart R (hl_ty_finite_sum M M)) (hl_pair (hl_ty_cart R (hl_ty_finite_sum M M)) (hl_ty_cart R (hl_ty_finite_sum M M)) (hl_pastecart R M M a a) (hl_pastecart R M M b b)) (hl_NIL (hl_ty_cart R (hl_ty_finite_sum M M) :*: hl_ty_cart R (hl_ty_finite_sum M M))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15780 / INDEFINITE_INTEGRAL_UNIFORMLY_CONTINUOUS_EXPLICIT   (hash md5:e1b1ccc34b588039622aecdb86a13433)
Theorem hlt_INDEFINITE_INTEGRAL_UNIFORMLY_CONTINUOUS_EXPLICIT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, forall e1 :e R, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists k :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) k = 1 /\ forall c d c' d' :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) c (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R M) d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R M) c' (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_IN (hl_ty_cart R M) d' (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 /\ (hl_real_le (hl_vector_norm M (hl_vector_sub M c' c)) k = 1 /\ hl_real_le (hl_vector_norm M (hl_vector_sub M d' d)) k = 1)))) -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c' d') (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15806 / BOUNDED_INTEGRALS_OVER_SUBINTERVALS   (hash md5:df951037c5e246a729d6aeabccb7d175)
Theorem hlt_BOUNDED_INTEGRALS_OVER_SUBINTERVALS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall a b :e hl_ty_cart R M, hl_integrable_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6611 :e hl_ty_cart R N => if exists c d :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6611 (hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) (hl_integral M N (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) c d) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) f) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15827 / HAS_INTEGRAL_SUBSTITUTION_STRONG   (hash md5:2594f7e623e4a4e9ac8111bfec1e621e)
Theorem hlt_HAS_INTEGRAL_SUBSTITUTION_STRONG : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g g' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b c d :e hl_ty_cart R 1, forall k :e 2 :^: hl_ty_cart R 1, hl_COUNTABLE (hl_ty_cart R 1) k = 1 /\ (hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c d) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_continuous_on 1 1 g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_SUBSET (hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c d) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) k) = 1 -> hl_has_vector_derivative 1 g (g' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ hl_continuous (hl_ty_cart R 1) N f (hl_within (hl_ty_cart R 1) (hl_at 1 (g x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c d) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) /\ (hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_real_le (hl_drop c) (hl_drop d) = 1 /\ hl_real_le (hl_drop (g a)) (hl_drop (g b)) = 1)))))) -> hl_has_integral 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop (g' x)) (f (g x))) (hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (g a) (g b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:15891 / SECOND_MEAN_VALUE_THEOREM_FULL   (hash md5:f307f4e160b90fd773d7407b80db8d58)
Theorem hlt_SECOND_MEAN_VALUE_THEOREM_FULL : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (g x) (g y) = 1)) -> exists c :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_integral 1 1 (fun x :e hl_ty_cart R 1 => hl_vmul 1 (g x) (f x)) (hl_vector_add 1 (hl_vmul 1 (g a) (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_vmul 1 (g b) (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16276 / SECOND_MEAN_VALUE_THEOREM   (hash md5:54a47978c30b59276c6095a5647e362e)
Theorem hlt_SECOND_MEAN_VALUE_THEOREM : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (g x) (g y) = 1)) -> exists c :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_vmul 1 (g x) (f x)) = hl_vector_add 1 (hl_vmul 1 (g a) (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_vmul 1 (g b) (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)).
Admitted.

// HOL Light: Multivariate/integration.ml:16292 / SECOND_MEAN_VALUE_THEOREM_GEN_FULL   (hash md5:b6f71120db269d9b40225462d0bafb3b)
Theorem hlt_SECOND_MEAN_VALUE_THEOREM_GEN_FULL : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall u v :e R, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 -> hl_real_le u (g x) = 1 /\ hl_real_le (g x) v = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (g x) (g y) = 1))) -> exists c :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_integral 1 1 (fun x :e hl_ty_cart R 1 => hl_vmul 1 (g x) (f x)) (hl_vector_add 1 (hl_vmul 1 u (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_vmul 1 v (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16335 / SECOND_MEAN_VALUE_THEOREM_GEN   (hash md5:4fb1fa79eed2e16fc25c06eb8bd50535)
Theorem hlt_SECOND_MEAN_VALUE_THEOREM_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall u v :e R, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1 -> hl_real_le u (g x) = 1 /\ hl_real_le (g x) v = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (g x) (g y) = 1))) -> exists c :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_vmul 1 (g x) (f x)) = hl_vector_add 1 (hl_vmul 1 u (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_vmul 1 v (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)).
Admitted.

// HOL Light: Multivariate/integration.ml:16351 / SECOND_MEAN_VALUE_THEOREM_BONNET_FULL   (hash md5:2e1f21ed6cf91323c81288e710985eaf)
Theorem hlt_SECOND_MEAN_VALUE_THEOREM_BONNET_FULL : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (g x) = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (g x) (g y) = 1))) -> exists c :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_integral 1 1 (fun x :e hl_ty_cart R 1 => hl_vmul 1 (g x) (f x)) (hl_vmul 1 (g b) (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16369 / SECOND_MEAN_VALUE_THEOREM_BONNET   (hash md5:b0fca6fe7c39bbb7f489a0804a877792)
Theorem hlt_SECOND_MEAN_VALUE_THEOREM_BONNET : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (g x) = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (g x) (g y) = 1))) -> exists c :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_vmul 1 (g x) (f x)) = hl_vmul 1 (g b) (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f).
Admitted.

// HOL Light: Multivariate/integration.ml:16384 / INTEGRABLE_INCREASING_PRODUCT   (hash md5:5748dcc6ed70e1010d3ef75875105306)
Theorem hlt_INTEGRABLE_INCREASING_PRODUCT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (g x) (g y) = 1) -> hl_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (g x) (f x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16403 / INTEGRABLE_INCREASING_PRODUCT_UNIV   (hash md5:ccb703674e96b9909fd3f917861d10c0)
Theorem hlt_INTEGRABLE_INCREASING_PRODUCT_UNIV : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall B :e R, hl_integrable_on 1 N f (hl_UNIV (hl_ty_cart R 1)) = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_real_le (hl_drop x) (hl_drop y) = 1 -> hl_real_le (g x) (g y) = 1) /\ (forall x :e hl_ty_cart R 1, hl_real_le (hl_real_abs (g x)) B = 1)) -> hl_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (g x) (f x)) (hl_UNIV (hl_ty_cart R 1)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16534 / INTEGRABLE_INCREASING   (hash md5:a741d2f65a2177590318fe7fb429fcbf)
Theorem hlt_INTEGRABLE_INCREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, forall i :e omega, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_real_le (hl_drop x) (hl_drop y) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1))) -> hl_real_le (hl_vindex R N (f x) i) (hl_vindex R N (f y) i) = 1) -> hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16547 / INTEGRABLE_INCREASING_1   (hash md5:b22d2b3ba14401fc98217e6cc3b78af7)
Theorem hlt_INTEGRABLE_INCREASING_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16556 / INTEGRABLE_DECREASING_PRODUCT   (hash md5:1c9e5f0f97ba36439bbb457e85ee20f4)
Theorem hlt_INTEGRABLE_DECREASING_PRODUCT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (g y) (g x) = 1) -> hl_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (g x) (f x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16568 / INTEGRABLE_DECREASING_PRODUCT_UNIV   (hash md5:32725d4db227f210d5013d81effc48ce)
Theorem hlt_INTEGRABLE_DECREASING_PRODUCT_UNIV : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall B :e R, hl_integrable_on 1 N f (hl_UNIV (hl_ty_cart R 1)) = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_real_le (hl_drop x) (hl_drop y) = 1 -> hl_real_le (g y) (g x) = 1) /\ (forall x :e hl_ty_cart R 1, hl_real_le (hl_real_abs (g x)) B = 1)) -> hl_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (g x) (f x)) (hl_UNIV (hl_ty_cart R 1)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16580 / INTEGRABLE_DECREASING   (hash md5:cb5a0f1cc486bd4065680940de216ca9)
Theorem hlt_INTEGRABLE_DECREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, forall i :e omega, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_real_le (hl_drop x) (hl_drop y) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1))) -> hl_real_le (hl_vindex R N (f y) i) (hl_vindex R N (f x) i) = 1) -> hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16591 / INTEGRABLE_DECREASING_1   (hash md5:f980179b5fcc90df83d2d1f408006bef)
Theorem hlt_INTEGRABLE_DECREASING_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) -> hl_integrable_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16606 / has_bounded_variation_on   (hash md5:533753cd8f5eb65005c2a64bda9f1eb4)
Theorem hlt_has_bounded_variation_on_thm : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 <-> hl_has_bounded_setvariation_on 1 N (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16611 / vector_variation   (hash md5:2605e3505a5f71f899208dc754d0146c)
Theorem hlt_vector_variation_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_vector_variation N s f = hl_set_variation 1 N s (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))).
Admitted.

// HOL Light: Multivariate/integration.ml:16615 / VECTOR_VARIATION_DEGENERATES   (hash md5:a2f3c39a90195b5b1cb60b637ab813bf)
Theorem hlt_VECTOR_VARIATION_DEGENERATES : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R A :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, ~ hl_has_bounded_variation_on N f s = 1 /\ ~ hl_has_bounded_variation_on A g s = 1 -> hl_vector_variation N s f = hl_vector_variation A s g.
Admitted.

// HOL Light: Multivariate/integration.ml:16623 / HAS_BOUNDED_VARIATION_ON_INTERVAL   (hash md5:2f57b62b7a0135fcb81c435e6c5ac9ab)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> exists B :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16632 / VECTOR_VARIATION_ON_INTERVAL   (hash md5:b6516446eac9be535f7bfb88fec8359c)
Theorem hlt_VECTOR_VARIATION_ON_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f = hl_sup (hl_GSPEC R (fun GEN_PVAR_6630 :e R => if exists d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_SETSPEC R GEN_PVAR_6630 (hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/integration.ml:16643 / HAS_BOUNDED_VECTOR_VARIATION_ON_INTERVAL   (hash md5:f913db8b0c7f84d632a76e79bbe3819a)
Theorem hlt_HAS_BOUNDED_VECTOR_VARIATION_ON_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall c :e R, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) c = 1 <-> forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) c = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16660 / HAS_BOUNDED_VECTOR_VARIATION   (hash md5:4bf80e18205dba429834c63ea6372eeb)
Theorem hlt_HAS_BOUNDED_VECTOR_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall c :e R, hl_has_bounded_variation_on N f s = 1 /\ hl_real_le (hl_vector_variation N s f) c = 1 <-> forall d :e 2 :^: (2 :^: hl_ty_cart R 1), forall t :e 2 :^: hl_ty_cart R 1, hl_division_of 1 d t = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) c = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16669 / HAS_BOUNDED_VARIATION_WORKS   (hash md5:6d2fe37a5d7ebff18c8ca0ade36706b5)
Theorem hlt_HAS_BOUNDED_VARIATION_WORKS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 -> (forall d :e 2 :^: (2 :^: hl_ty_cart R 1), forall t :e 2 :^: hl_ty_cart R 1, hl_division_of 1 d t = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) (hl_vector_variation N s f) = 1) /\ forall B :e R, (forall d :e 2 :^: (2 :^: hl_ty_cart R 1), forall t :e 2 :^: hl_ty_cart R 1, hl_division_of 1 d t = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) B = 1) -> hl_real_le (hl_vector_variation N s f) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16683 / HAS_BOUNDED_VARIATION_WORKS_ON_ELEMENTARY   (hash md5:f831adc990232715e3e0ce49aa5815fe)
Theorem hlt_HAS_BOUNDED_VARIATION_WORKS_ON_ELEMENTARY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ (exists d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d s = 1) -> (forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) (hl_vector_variation N s f) = 1) /\ forall B :e R, (forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) B = 1) -> hl_real_le (hl_vector_variation N s f) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16697 / HAS_BOUNDED_VARIATION_WORKS_ON_INTERVAL   (hash md5:f1152ae77c03b8061209072196a1884c)
Theorem hlt_HAS_BOUNDED_VARIATION_WORKS_ON_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> (forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) = 1) /\ forall B :e R, (forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) B = 1) -> hl_real_le (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16712 / HAS_BOUNDED_VECTOR_VARIATION_ON_INTERVAL_GEN   (hash md5:d1ab40904c78d577aff2d4d80c06713e)
Theorem hlt_HAS_BOUNDED_VECTOR_VARIATION_ON_INTERVAL_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall c :e R, hl_is_interval 1 s = 1 -> (hl_has_bounded_variation_on N f s = 1 /\ hl_real_le (hl_vector_variation N s f) c = 1 <-> forall d :e 2 :^: (2 :^: hl_ty_cart R 1), forall a b :e hl_ty_cart R 1, hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_SUBSET (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s = 1 -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) c = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:16723 / HAS_BOUNDED_VECTOR_VARIATION_ON_SUBINTERVALS   (hash md5:56ca5672bb0a68592545658a6075b587)
Theorem hlt_HAS_BOUNDED_VECTOR_VARIATION_ON_SUBINTERVALS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall c :e R, hl_is_interval 1 s = 1 -> (hl_has_bounded_variation_on N f s = 1 /\ hl_real_le (hl_vector_variation N s f) c = 1 <-> forall a b :e hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s = 1 -> hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) c = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:16734 / HAS_BOUNDED_VARIATION_ON_EQ   (hash md5:734190cce27e0f7d1378cf6f25276a7b)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_EQ : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> f x = g x) /\ hl_has_bounded_variation_on N f s = 1 -> hl_has_bounded_variation_on N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16746 / VECTOR_VARIATION_EQ   (hash md5:b17fd733dd3679e2c44eea7fd98cdb2b)
Theorem hlt_VECTOR_VARIATION_EQ : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> f x = g x) -> hl_vector_variation N s f = hl_vector_variation N s g.
Admitted.

// HOL Light: Multivariate/integration.ml:16756 / HAS_BOUNDED_VARIATION_ISOMETRIC   (hash md5:b42cc8c1ad77d6c1b60d6017e4f2c71c)
Theorem hlt_HAS_BOUNDED_VARIATION_ISOMETRIC : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (f x) (f y)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g x) (g y))) -> (hl_has_bounded_variation_on A f s = 1 <-> hl_has_bounded_variation_on N g s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:16763 / HAS_BOUNDED_VARIATION_ISOMETRIC_COMPOSE   (hash md5:deb568d5d0586bd14706c5526c02dea1)
Theorem hlt_HAS_BOUNDED_VARIATION_ISOMETRIC_COMPOSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R M, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y)) -> (hl_has_bounded_variation_on N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) s = 1 <-> hl_has_bounded_variation_on M g s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:16771 / VECTOR_VARIATION_ISOMETRIC   (hash md5:4dea5852f0ee68fbc98849c8a6563c43)
Theorem hlt_VECTOR_VARIATION_ISOMETRIC : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (f x) (f y)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g x) (g y))) -> hl_vector_variation A s f = hl_vector_variation N s g.
Admitted.

// HOL Light: Multivariate/integration.ml:16777 / VECTOR_VARIATION_ISOMETRIC_COMPOSE   (hash md5:f2ec83b22af5fcd9b1f321e2ac8a25d5)
Theorem hlt_VECTOR_VARIATION_ISOMETRIC_COMPOSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R M, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y)) -> hl_vector_variation N s (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = hl_vector_variation M s g.
Admitted.

// HOL Light: Multivariate/integration.ml:16783 / HAS_BOUNDED_VARIATION_ON_TRANSLATION   (hash md5:b0542fd9168f5d99378c1e808f45579d)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_TRANSLATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vector_add N a (f x)) s = 1 <-> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16789 / VECTOR_VARIATION_TRANSLATION   (hash md5:27526aee02f3f1234bb69206b2ae9dee)
Theorem hlt_VECTOR_VARIATION_TRANSLATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_vector_variation N s (fun x :e hl_ty_cart R 1 => hl_vector_add N a (f x)) = hl_vector_variation N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:16795 / HAS_BOUNDED_VARIATION_ON_COMPONENTWISE   (hash md5:a401cf2c2c9493453aad09b63280d005)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_COMPONENTWISE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vindex R N (f x) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16804 / VARIATION_EQUAL_LEMMA   (hash md5:a4e1ad2714d41a7de91a40b13077d78b)
Theorem hlt_VARIATION_EQUAL_LEMMA : forall N:set, N <> Empty -> forall ms ms' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall s :e hl_ty_cart R 1, ms' (ms s) = s /\ ms (ms' s) = s) /\ ((forall d :e 2 :^: (2 :^: hl_ty_cart R 1), forall t :e 2 :^: hl_ty_cart R 1, hl_division_of 1 d t = 1 -> hl_division_of 1 (hl_IMAGE (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) ms) d) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) ms t) = 1 /\ hl_division_of 1 (hl_IMAGE (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) ms') d) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) ms' t) = 1) /\ (forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) -> hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) ms' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (ms' a) (ms' b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) \/ hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) ms' (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (ms' b) (ms' a)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) -> (forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (ms' x)) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) ms s) = 1 <-> hl_has_bounded_variation_on N f s = 1) /\ forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_vector_variation N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) ms s) (fun x :e hl_ty_cart R 1 => f (ms' x)) = hl_vector_variation N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:16861 / HAS_BOUNDED_VARIATION_COMPARISON   (hash md5:7bdf288c6a0aeca66622ad33b3d0e3af)
Theorem hlt_HAS_BOUNDED_VARIATION_COMPARISON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on M f s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g x) (g y))) (hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (f x) (f y))) = 1) -> hl_has_bounded_variation_on N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16885 / HAS_BOUNDED_VARIATION_ON_LIFT_ABS   (hash md5:8206790e66572bb986d223a5c0c0ae65)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_LIFT_ABS : forall s :e 2 :^: hl_ty_cart R 1, forall f :e R :^: hl_ty_cart R 1, hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (f x)) s = 1 -> hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_real_abs (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16894 / VECTOR_VARIATION_COMPARISON   (hash md5:de82c46452748d5026e0807ac42703fe)
Theorem hlt_VECTOR_VARIATION_COMPARISON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on M f s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g x) (g y))) (hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (f x) (f y))) = 1) -> hl_real_le (hl_vector_variation N s g) (hl_vector_variation M s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16918 / VECTOR_VARIATION_COMPONENT_LE   (hash md5:3e2d4f0d17ba5e998fc8390dac8a33db)
Theorem hlt_VECTOR_VARIATION_COMPONENT_LE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall i :e omega, hl_has_bounded_variation_on N f s = 1 -> hl_real_le (hl_vector_variation 1 s (fun x :e hl_ty_cart R 1 => hl_lift (hl_vindex R N (f x) i))) (hl_vector_variation N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16926 / VECTOR_VARIATION_LIFT_ABS   (hash md5:85c69be968bafbb3a886ee43fec76fda)
Theorem hlt_VECTOR_VARIATION_LIFT_ABS : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (f x)) s = 1 -> hl_real_le (hl_vector_variation 1 s (fun x :e hl_ty_cart R 1 => hl_lift (hl_real_abs (f x)))) (hl_vector_variation 1 s (fun x :e hl_ty_cart R 1 => hl_lift (f x))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16935 / HAS_BOUNDED_VARIATION_ON_SUBSET   (hash md5:0b134c50d327ab912bc13135069a0ccc)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_SUBSET : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1 -> hl_has_bounded_variation_on N f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16941 / HAS_BOUNDED_VARIATION_ON_CONST   (hash md5:da6bace817b6dc83b5f9cc69f27603f3)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_CONST : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R 1, forall c :e hl_ty_cart R N, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => c) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16946 / VECTOR_VARIATION_CONST   (hash md5:f2142d6aa360fa7a693d80f37cd9cea9)
Theorem hlt_VECTOR_VARIATION_CONST : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R 1, forall c :e hl_ty_cart R N, hl_vector_variation N s (fun x :e hl_ty_cart R 1 => c) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:16950 / HAS_BOUNDED_VARIATION_ON_CMUL   (hash md5:8aacd412b5fe37759ee216b3ab8a266e)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_CMUL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall c :e R, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vmul N c (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16957 / HAS_BOUNDED_VARIATION_ON_CMUL_EQ   (hash md5:a3e638d5debd575be96ceaaadede05e6)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_CMUL_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall c :e R, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vmul N c (f x)) s = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16968 / HAS_BOUNDED_VARIATION_ON_VMUL_EQ   (hash md5:abe57a3ff60474e36cb59ce677fe7265)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_VMUL_EQ : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall v :e hl_ty_cart R N, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vmul N (f x) v) s = 1 <-> v = hl_vec N (hl_NUMERAL hl_zero) \/ hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16982 / HAS_BOUNDED_VARIATION_ON_VMUL   (hash md5:f193ca81940755450f5135552122c76f)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_VMUL : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall v :e hl_ty_cart R N, hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (f x)) s = 1 -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vmul N (f x) v) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:16988 / VECTOR_VARIATION_CMUL   (hash md5:5ad840cd52adc3b4fae20b4979f7abac)
Theorem hlt_VECTOR_VARIATION_CMUL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall c :e R, hl_has_bounded_variation_on N f s = 1 -> hl_vector_variation N s (fun x :e hl_ty_cart R 1 => hl_vmul N c (f x)) = hl_real_mul (hl_real_abs c) (hl_vector_variation N s f).
Admitted.

// HOL Light: Multivariate/integration.ml:16995 / VECTOR_VARIATION_VMUL   (hash md5:fea9ec21b607a4bba2656ffb16b7317d)
Theorem hlt_VECTOR_VARIATION_VMUL : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall v :e hl_ty_cart R N, hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (f x)) s = 1 -> hl_vector_variation N s (fun x :e hl_ty_cart R 1 => hl_vmul N (f x) v) = hl_real_mul (hl_vector_norm N v) (hl_vector_variation 1 s (fun x :e hl_ty_cart R 1 => hl_lift (f x))).
Admitted.

// HOL Light: Multivariate/integration.ml:17008 / HAS_BOUNDED_VARIATION_ON_NEG   (hash md5:b268126194c22cd550a06c17cf80df15)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_NEG : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vector_neg N (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17016 / HAS_BOUNDED_VARIATION_ON_ADD   (hash md5:d8dcdd63c9c134bbfab46ecd6172f8a4)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_ADD : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_has_bounded_variation_on N g s = 1 -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vector_add N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17024 / HAS_BOUNDED_VARIATION_ON_SUB   (hash md5:a2fcf92582a250d0044c98a6d5ac2b36)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_SUB : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_has_bounded_variation_on N g s = 1 -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vector_sub N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17032 / HAS_BOUNDED_VARIATION_ON_COMPOSE_LINEAR   (hash md5:b8ce617b7d403e2436287e537cf65322)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_COMPOSE_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on M f s = 1 /\ hl_linear M N g = 1 -> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) g f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17041 / HAS_BOUNDED_VARIATION_ON_NULL   (hash md5:54c4ad716989e10aacc255b61174dcdb)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_NULL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_content 1 s = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_bounded 1 s = 1 -> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17048 / HAS_BOUNDED_VARIATION_ON_EMPTY   (hash md5:60c8803e29add4127672aa3a7da154b7)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_EMPTY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_EMPTY (hl_ty_cart R 1)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17052 / VECTOR_VARIATION_ON_NULL   (hash md5:8ea818aea859a06e005da6b84f9b1e02)
Theorem hlt_VECTOR_VARIATION_ON_NULL : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_content 1 s = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_bounded 1 s = 1 -> hl_vector_variation A s f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:17058 / VECTOR_VARIATION_ON_EMPTY   (hash md5:de24ad2e51cbc534e31df4e5efedbb19)
Theorem hlt_VECTOR_VARIATION_ON_EMPTY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_vector_variation N (hl_EMPTY (hl_ty_cart R 1)) f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:17062 / VECTOR_VARIATION_SING   (hash md5:1c9e84e291da02863c81d21ce5f23f5b)
Theorem hlt_VECTOR_VARIATION_SING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_vector_variation N (hl_INSERT (hl_ty_cart R 1) a (hl_EMPTY (hl_ty_cart R 1))) f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/integration.ml:17068 / HAS_BOUNDED_VARIATION_ON_NORM   (hash md5:0477256eb7f47e60fee50daef393040a)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_NORM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 -> hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17081 / HAS_BOUNDED_VARIATION_ON_MAX   (hash md5:e74a6bc78d4c3db980edf2ad9cd3cfdc)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_MAX : forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on 1 f s = 1 /\ hl_has_bounded_variation_on 1 g s = 1 -> hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_real_max (hl_drop (f x)) (hl_drop (g x)))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17095 / HAS_BOUNDED_VARIATION_ON_MIN   (hash md5:d195b78c1a52af475800360e9aeb1b44)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_MIN : forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on 1 f s = 1 /\ hl_has_bounded_variation_on 1 g s = 1 -> hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_real_min (hl_drop (f x)) (hl_drop (g x)))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17109 / BOUNDED_VECTOR_VARIATION_ON_PASTECART   (hash md5:612290a7cfe6111d74325730f5fe76c1)
Theorem hlt_BOUNDED_VECTOR_VARIATION_ON_PASTECART : forall N P:set, N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R P :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_has_bounded_variation_on P g s = 1 -> hl_has_bounded_variation_on (hl_ty_finite_sum N P) (fun x :e hl_ty_cart R 1 => hl_pastecart R N P (f x) (g x)) s = 1 /\ hl_real_le (hl_vector_variation (hl_ty_finite_sum N P) s (fun x :e hl_ty_cart R 1 => hl_pastecart R N P (f x) (g x))) (hl_real_add (hl_vector_variation N s f) (hl_vector_variation P s g)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17131 / BOUNDED_VARIATION_FROM_PASTECART   (hash md5:fad60634a1492f6a3cc7ee2f7e259298)
Theorem hlt_BOUNDED_VARIATION_FROM_PASTECART : forall N P:set, N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R P :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on (hl_ty_finite_sum N P) (fun x :e hl_ty_cart R 1 => hl_pastecart R N P (f x) (g x)) s = 1 -> hl_has_bounded_variation_on N f s = 1 /\ hl_real_le (hl_vector_variation N s f) (hl_vector_variation (hl_ty_finite_sum N P) s (fun x :e hl_ty_cart R 1 => hl_pastecart R N P (f x) (g x))) = 1 /\ (hl_has_bounded_variation_on P g s = 1 /\ hl_real_le (hl_vector_variation P s g) (hl_vector_variation (hl_ty_finite_sum N P) s (fun x :e hl_ty_cart R 1 => hl_pastecart R N P (f x) (g x))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:17149 / HAS_BOUNDED_VARIATION_ON_PASTECART   (hash md5:a97722e542cafb3465cbd558e998ee73)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_PASTECART : forall N P:set, N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R P :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on (hl_ty_finite_sum N P) (fun x :e hl_ty_cart R 1 => hl_pastecart R N P (f x) (g x)) s = 1 <-> hl_has_bounded_variation_on N f s = 1 /\ hl_has_bounded_variation_on P g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17158 / HAS_BOUNDED_VARIATION_ON_IMP_BOUNDED_ON_SUBINTERVALS   (hash md5:ec319a80296c84d493c3e2efb7da2168)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_IMP_BOUNDED_ON_SUBINTERVALS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 -> hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_6633 :e hl_ty_cart R N => if exists d c :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_6633 (if hl_SUBSET (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c d) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s = 1 /\ ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c d) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) then 1 else 0) (hl_vector_sub N (f d) (f c)) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17174 / HAS_BOUNDED_VARIATION_ON_IMP_BOUNDED   (hash md5:5f72e5bc4b87a798a5f3ec023c03daa6)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_IMP_BOUNDED : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_is_interval 1 s = 1 -> hl_bounded N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17198 / HAS_BOUNDED_VARIATION_ON_IMP_BOUNDED_ON_INTERVAL   (hash md5:9d64c40ab2075dce850f9c8bab115c13)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_IMP_BOUNDED_ON_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_bounded N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17204 / HAS_BOUNDED_VARIATION_ON_BILINEAR   (hash md5:144871d1d98e303e4a664a8cad6ffcd6)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_BILINEAR : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_bilinear M N P bop = 1 /\ (hl_has_bounded_variation_on M f s = 1 /\ (hl_has_bounded_variation_on N g s = 1 /\ hl_is_interval 1 s = 1)) -> hl_has_bounded_variation_on P (fun x :e hl_ty_cart R 1 => bop (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17264 / HAS_BOUNDED_VARIATION_ON_MUL   (hash md5:ce1d7b3500186ff41d206c615be18429)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_MUL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on 1 f s = 1 /\ (hl_has_bounded_variation_on N g s = 1 /\ hl_is_interval 1 s = 1) -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop (f x)) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17274 / VECTOR_VARIATION_POS_LE   (hash md5:7929f5011e08543dca2d68348e359c19)
Theorem hlt_VECTOR_VARIATION_POS_LE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vector_variation N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17280 / VECTOR_VARIATION_GE_NORM_FUNCTION   (hash md5:d7ea6c2797aa8191a3b81c844752dd29)
Theorem hlt_VECTOR_VARIATION_GE_NORM_FUNCTION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_SUBSET (hl_ty_cart R 1) (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f b) (f a))) (hl_vector_variation N s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17295 / VECTOR_VARIATION_GE_DROP_FUNCTION   (hash md5:1a8089db04d7319f691eeaf4c95a351a)
Theorem hlt_VECTOR_VARIATION_GE_DROP_FUNCTION : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on 1 f s = 1 /\ hl_SUBSET (hl_ty_cart R 1) (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s = 1 -> hl_real_le (hl_real_sub (hl_drop (f b)) (hl_drop (f a))) (hl_vector_variation 1 s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17304 / VECTOR_VARIATION_CONST_EQ   (hash md5:3f0635c8e51ce1ecb77172cfbfc13472)
Theorem hlt_VECTOR_VARIATION_CONST_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ hl_has_bounded_variation_on N f s = 1 -> (hl_vector_variation N s f = hl_real_of_num (hl_NUMERAL hl_zero) <-> exists c :e hl_ty_cart R N, forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> f x = c).
Admitted.

// HOL Light: Multivariate/integration.ml:17322 / VECTOR_VARIATION_MONOTONE   (hash md5:3409c116213a2befb17a27b0b18974d6)
Theorem hlt_VECTOR_VARIATION_MONOTONE : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on A f s = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1 -> hl_real_le (hl_vector_variation A t f) (hl_vector_variation A s f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17328 / VECTOR_VARIATION_NEG   (hash md5:c507b8629cf2e7bc8a1f7e02abd3b439)
Theorem hlt_VECTOR_VARIATION_NEG : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_vector_variation N s (fun x :e hl_ty_cart R 1 => hl_vector_neg N (f x)) = hl_vector_variation N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:17334 / VECTOR_VARIATION_TRIANGLE   (hash md5:b5e3f55c600d01a1243eaaf9381fb64b)
Theorem hlt_VECTOR_VARIATION_TRIANGLE : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_has_bounded_variation_on N g s = 1 -> hl_real_le (hl_vector_variation N s (fun x :e hl_ty_cart R 1 => hl_vector_add N (f x) (g x))) (hl_real_add (hl_vector_variation N s f) (hl_vector_variation N s g)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17344 / HAS_BOUNDED_VARIATION_ON_VSUM   (hash md5:2f59fe1d9b31a315b25c5cfd73f3697e)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_VSUM : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1 :^: A, forall s :e 2 :^: hl_ty_cart R 1, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (forall i :e A, hl_IN A i k = 1 -> hl_has_bounded_variation_on N (f i) s = 1) -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => hl_vsum A N k (fun i :e A => f i x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17344 / VECTOR_VARIATION_SUM_LE   (hash md5:e56f8dceb49931ba1a20f05de2efd579)
Theorem hlt_VECTOR_VARIATION_SUM_LE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1 :^: A, forall s :e 2 :^: hl_ty_cart R 1, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (forall i :e A, hl_IN A i k = 1 -> hl_has_bounded_variation_on N (f i) s = 1) -> hl_real_le (hl_vector_variation N s (fun x :e hl_ty_cart R 1 => hl_vsum A N k (fun i :e A => f i x))) (hl_sum A k (fun i :e A => hl_vector_variation N s (f i))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17369 / OPERATIVE_FUNCTION_ENDPOINT_DIFF   (hash md5:39041086ff12a780118b37aeb60a81be)
Theorem hlt_OPERATIVE_FUNCTION_ENDPOINT_DIFF : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_operative (hl_ty_cart R N) 1 (hl_vector_add N) (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17409 / OPERATIVE_REAL_FUNCTION_ENDPOINT_DIFF   (hash md5:dcc97146254b89e45d7b5348841dbda2)
Theorem hlt_OPERATIVE_REAL_FUNCTION_ENDPOINT_DIFF : forall f :e R :^: hl_ty_cart R 1, hl_operative R 1 hl_real_add (fun k :e 2 :^: hl_ty_cart R 1 => hl_real_sub (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17418 / OPERATIVE_HAS_BOUNDED_VARIATION_ON   (hash md5:5a242e5a69f1f291dfc894060099411c)
Theorem hlt_OPERATIVE_HAS_BOUNDED_VARIATION_ON : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_operative 2 1 hl_and (hl_has_bounded_variation_on N f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17427 / OPERATIVE_LIFTED_VECTOR_VARIATION   (hash md5:55f0211e6e4105482cde01feb546c383)
Theorem hlt_OPERATIVE_LIFTED_VECTOR_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_operative (1 :+: R) 1 (hl_lifted R R hl_real_add) (fun i :e 2 :^: hl_ty_cart R 1 => hl_COND (1 :+: R) (hl_has_bounded_variation_on N f i) (hl_SOME R (hl_vector_variation N i f)) (hl_NONE R)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17436 / HAS_BOUNDED_VARIATION_ON_DIVISION   (hash md5:40d5e3e3c9f78793af136c51ddb4c6a8)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_DIVISION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> ((forall k :e 2 :^: hl_ty_cart R 1, hl_IN (2 :^: hl_ty_cart R 1) k d = 1 -> hl_has_bounded_variation_on N f k = 1) <-> hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:17445 / VECTOR_VARIATION_ON_DIVISION   (hash md5:b75231c8bfefd56d65b834b285c9bc26)
Theorem hlt_VECTOR_VARIATION_ON_DIVISION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_variation N k f) = hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f.
Admitted.

// HOL Light: Multivariate/integration.ml:17456 / HAS_BOUNDED_VARIATION_ON_CLOSURE   (hash md5:117d8936046dcaaf2fa61cc6db27f4ba)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_CLOSURE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ hl_has_bounded_variation_on N f s = 1 -> hl_has_bounded_variation_on N f (hl_closure 1 s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17547 / HAS_BOUNDED_VARIATION_ON_CLOSURE_EQ   (hash md5:729865083a4496310a81153eb8fbc53f)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_CLOSURE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 -> (hl_has_bounded_variation_on N f (hl_closure 1 s) = 1 <-> hl_has_bounded_variation_on N f s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:17558 / HAS_BOUNDED_VARIATION_ON_SING   (hash md5:5829d40a470fb160f6646d7ab47b0edd)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_SING : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_has_bounded_variation_on A f (hl_INSERT (hl_ty_cart R 1) a (hl_EMPTY (hl_ty_cart R 1))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17564 / VECTOR_VARIATION_LE_UNION   (hash md5:1c8d0aa5b570406df872a6f1cb78c69b)
Theorem hlt_VECTOR_VARIATION_LE_UNION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_UNION (hl_ty_cart R 1) s t) = 1 /\ hl_INTER (hl_ty_cart R 1) (hl_interior 1 s) (hl_interior 1 t) = hl_EMPTY (hl_ty_cart R 1) -> hl_real_le (hl_real_add (hl_vector_variation N s f) (hl_vector_variation N t f)) (hl_vector_variation N (hl_UNION (hl_ty_cart R 1) s t) f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17615 / HAS_BOUNDED_VARIATION_ON_UNION   (hash md5:547b0bc230e94e9ebd631588f538d6f7)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_UNION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_is_interval 1 t = 1 /\ (hl_has_bounded_variation_on N f s = 1 /\ hl_has_bounded_variation_on N f t = 1)) -> hl_has_bounded_variation_on N f (hl_UNION (hl_ty_cart R 1) s t) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17615 / VECTOR_VARIATION_UNION_LE   (hash md5:9ed9bc584cab8f8888763e15257bfa59)
Theorem hlt_VECTOR_VARIATION_UNION_LE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_is_interval 1 t = 1 /\ ((hl_INTER (hl_ty_cart R 1) s t = hl_EMPTY (hl_ty_cart R 1) -> hl_INTER (hl_ty_cart R 1) s (hl_closure 1 t) = hl_EMPTY (hl_ty_cart R 1) /\ hl_INTER (hl_ty_cart R 1) t (hl_closure 1 s) = hl_EMPTY (hl_ty_cart R 1)) /\ (hl_has_bounded_variation_on N f s = 1 /\ hl_has_bounded_variation_on N f t = 1))) -> hl_real_le (hl_vector_variation N (hl_UNION (hl_ty_cart R 1) s t) f) (hl_real_add (hl_vector_variation N s f) (hl_vector_variation N t f)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17838 / HAS_BOUNDED_VARIATION_ON_SPLIT   (hash md5:e1aa02259254793720e546fa5f5280cc)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_SPLIT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e R, hl_is_interval 1 s = 1 -> (hl_has_bounded_variation_on N f s = 1 <-> hl_has_bounded_variation_on N f (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6647 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6647 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop x) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_has_bounded_variation_on N f (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6648 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6648 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le a (hl_drop x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:17859 / VECTOR_VARIATION_SPLIT   (hash md5:b8cc3c6c92bf6f80e28f86f9b7060643)
Theorem hlt_VECTOR_VARIATION_SPLIT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e R, hl_is_interval 1 s = 1 /\ hl_has_bounded_variation_on N f s = 1 -> hl_real_add (hl_vector_variation N (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6659 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6659 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop x) a = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_vector_variation N (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6660 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6660 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le a (hl_drop x) = 1 then 1 else 0) x = 1 then 1 else 0)) f) = hl_vector_variation N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:17918 / HAS_BOUNDED_VARIATION_ON_COMBINE   (hash md5:d7f3c253cb23c8366bfe7e2660d31d96)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_COMBINE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop c) = 1 /\ hl_real_le (hl_drop c) (hl_drop b) = 1 -> (hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:17932 / VECTOR_VARIATION_COMBINE   (hash md5:f9068893f10919caaaaac528342ce46a)
Theorem hlt_VECTOR_VARIATION_COMBINE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop c) = 1 /\ (hl_real_le (hl_drop c) (hl_drop b) = 1 /\ hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_real_add (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) = hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f.
Admitted.

// HOL Light: Multivariate/integration.ml:17948 / VECTOR_VARIATION_MINUS_FUNCTION_MONOTONE_LEFT   (hash md5:f25b620e4cb51e966efd7aa3809933b3)
Theorem hlt_VECTOR_VARIATION_MINUS_FUNCTION_MONOTONE_LEFT : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on 1 f s = 1 /\ (hl_is_interval 1 s = 1 /\ (hl_IN (hl_ty_cart R 1) a s = 1 /\ (hl_IN (hl_ty_cart R 1) b s = 1 /\ hl_real_le (hl_drop a) (hl_drop b) = 1))) -> hl_real_le (hl_real_sub (hl_vector_variation 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6666 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6666 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop x) (hl_drop a) = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_drop (f a))) (hl_real_sub (hl_vector_variation 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6667 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6667 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop x) (hl_drop b) = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_drop (f b))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:17983 / VECTOR_VARIATION_MINUS_FUNCTION_MONOTONE_RIGHT   (hash md5:d7b3e76db0e10f443ad95b478285daf5)
Theorem hlt_VECTOR_VARIATION_MINUS_FUNCTION_MONOTONE_RIGHT : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on 1 f s = 1 /\ (hl_is_interval 1 s = 1 /\ (hl_IN (hl_ty_cart R 1) a s = 1 /\ (hl_IN (hl_ty_cart R 1) b s = 1 /\ hl_real_le (hl_drop a) (hl_drop b) = 1))) -> hl_real_le (hl_real_sub (hl_vector_variation 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6673 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6673 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop b) (hl_drop x) = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_drop (f b))) (hl_real_sub (hl_vector_variation 1 (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6674 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6674 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop a) (hl_drop x) = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_drop (f a))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18018 / VECTOR_VARIATION_SEGMENT_TRIANGLE   (hash md5:2125b945142e5e3edcd1398ff503c5ad)
Theorem hlt_VECTOR_VARIATION_SEGMENT_TRIANGLE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ (hl_is_interval 1 s = 1 /\ (hl_IN (hl_ty_cart R 1) a s = 1 /\ (hl_IN (hl_ty_cart R 1) b s = 1 /\ hl_IN (hl_ty_cart R 1) c s = 1))) -> hl_real_le (hl_vector_variation N (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_real_add (hl_vector_variation N (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_vector_variation N (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) b c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18115 / VECTOR_VARIATION_MINUS_FUNCTION_MONOTONE   (hash md5:f17dcb7216de8d9ceeeb4a21fda806ee)
Theorem hlt_VECTOR_VARIATION_MINUS_FUNCTION_MONOTONE : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b c d :e hl_ty_cart R 1, hl_has_bounded_variation_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_SUBSET (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c d) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c d) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1)) -> hl_real_le (hl_real_sub (hl_vector_variation 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c d) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_drop (hl_vector_sub 1 (f d) (f c)))) (hl_real_sub (hl_vector_variation 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_drop (hl_vector_sub 1 (f b) (f a)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18145 / HAS_BOUNDED_VARIATION_NONTRIVIAL   (hash md5:40bd9a7de67700a94d3c2fc86d2f6952)
Theorem hlt_HAS_BOUNDED_VARIATION_NONTRIVIAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 <-> exists B :e R, forall d :e 2 :^: (2 :^: hl_ty_cart R 1), forall t :e 2 :^: hl_ty_cart R 1, hl_division_of 1 d t = 1 /\ (hl_SUBSET (hl_ty_cart R 1) t s = 1 /\ (forall k :e 2 :^: hl_ty_cart R 1, hl_IN (2 :^: hl_ty_cart R 1) k d = 1 -> ~ hl_interior 1 k = hl_EMPTY (hl_ty_cart R 1))) -> hl_real_le (hl_sum (2 :^: hl_ty_cart R 1) d (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_norm N (hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))))) B = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18182 / INCREASING_BOUNDED_VARIATION_GEN   (hash md5:f7a34825e4de68fbc119e0f40cbd0d3e)
Theorem hlt_INCREASING_BOUNDED_VARIATION_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_bounded 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> hl_has_bounded_variation_on 1 f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18253 / DECREASING_BOUNDED_VARIATION_GEN   (hash md5:7b261c46dfce03e7e9980385c659336b)
Theorem hlt_DECREASING_BOUNDED_VARIATION_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_bounded 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) -> hl_has_bounded_variation_on 1 f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18266 / INCREASING_BOUNDED_VARIATION   (hash md5:e1e382d352e491927f818bb84dcb0e12)
Theorem hlt_INCREASING_BOUNDED_VARIATION : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> hl_has_bounded_variation_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18281 / DECREASING_BOUNDED_VARIATION   (hash md5:71463587914daa863e5acfcdb2756a45)
Theorem hlt_DECREASING_BOUNDED_VARIATION : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) -> hl_has_bounded_variation_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18294 / INCREASING_VECTOR_VARIATION   (hash md5:9537a310cc7d8f663d7a174ae31a26a0)
Theorem hlt_INCREASING_VECTOR_VARIATION : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> hl_vector_variation 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f = hl_real_sub (hl_drop (f b)) (hl_drop (f a)).
Admitted.

// HOL Light: Multivariate/integration.ml:18334 / DECREASING_VECTOR_VARIATION   (hash md5:ffe97e52ebfc35648e3e5ec39afcbd17)
Theorem hlt_DECREASING_VECTOR_VARIATION : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) -> hl_vector_variation 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f = hl_real_sub (hl_drop (f a)) (hl_drop (f b)).
Admitted.

// HOL Light: Multivariate/integration.ml:18348 / VECTOR_VARIATION_ID   (hash md5:c1c9cf3179af92093b0931080ebe8b6a)
Theorem hlt_VECTOR_VARIATION_ID : forall a b :e hl_ty_cart R 1, hl_vector_variation 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => x) = hl_COND R (if hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_sub (hl_drop b) (hl_drop a)).
Admitted.

// HOL Light: Multivariate/integration.ml:18357 / HAS_BOUNDED_VARIATION_TRANSLATION2_EQ   (hash md5:84e4b009716604cf35c51075c212647c)
Theorem hlt_HAS_BOUNDED_VARIATION_TRANSLATION2_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 a x)) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 (hl_vector_neg 1 a) x) s) = 1 <-> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18357 / VECTOR_VARIATION_TRANSLATION2   (hash md5:ca6229ab28b03b943fe337c096651bb6)
Theorem hlt_VECTOR_VARIATION_TRANSLATION2 : forall N:set, N <> Empty -> forall a :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_vector_variation N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 (hl_vector_neg 1 a) x) s) (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 a x)) = hl_vector_variation N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:18370 / HAS_BOUNDED_VARIATION_AFFINITY2_EQ   (hash md5:e8f85449f7b52ab4e22dfafb98408c21)
Theorem hlt_HAS_BOUNDED_VARIATION_AFFINITY2_EQ : forall N:set, N <> Empty -> forall m :e R, forall c :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 (hl_vmul 1 m x) c)) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 (hl_vmul 1 (hl_real_inv m) x) (hl_vector_neg 1 (hl_vmul 1 (hl_real_inv m) c))) s) = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18370 / VECTOR_VARIATION_AFFINITY2   (hash md5:170a59d5de2dad93f58e3c15de84bd83)
Theorem hlt_VECTOR_VARIATION_AFFINITY2 : forall N:set, N <> Empty -> forall m :e R, forall c :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_vector_variation N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 (hl_vmul 1 (hl_real_inv m) x) (hl_vector_neg 1 (hl_vmul 1 (hl_real_inv m) c))) s) (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 (hl_vmul 1 m x) c)) = hl_COND R (if m = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vector_variation N s f).
Admitted.

// HOL Light: Multivariate/integration.ml:18391 / HAS_BOUNDED_VARIATION_AFFINITY_EQ   (hash md5:0576d30e4857e826f946318e68bf7677)
Theorem hlt_HAS_BOUNDED_VARIATION_AFFINITY_EQ : forall N:set, N <> Empty -> forall m :e R, forall c :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 (hl_vmul 1 m x) c)) s = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_has_bounded_variation_on N f (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 (hl_vmul 1 m x) c) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18391 / VECTOR_VARIATION_AFFINITY   (hash md5:39684c0337d13704de7593570fbebdb1)
Theorem hlt_VECTOR_VARIATION_AFFINITY : forall N:set, N <> Empty -> forall m :e R, forall c :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_vector_variation N s (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 (hl_vmul 1 m x) c)) = hl_COND R (if m = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vector_variation N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 (hl_vmul 1 m x) c) s) f).
Admitted.

// HOL Light: Multivariate/integration.ml:18412 / HAS_BOUNDED_VARIATION_TRANSLATION_EQ   (hash md5:321304d31a58310622b3337e2e45b423)
Theorem hlt_HAS_BOUNDED_VARIATION_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 a x)) s = 1 <-> hl_has_bounded_variation_on N f (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 a x) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18412 / VECTOR_VARIATION_TRANSLATION_ALT   (hash md5:156329b4e86295333fe8619258a8f011)
Theorem hlt_VECTOR_VARIATION_TRANSLATION_ALT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_vector_variation N s (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 a x)) = hl_vector_variation N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 a x) s) f.
Admitted.

// HOL Light: Multivariate/integration.ml:18441 / HAS_BOUNDED_VARIATION_TRANSLATION   (hash md5:d6431c31a0392dd62def8f04b48799d4)
Theorem hlt_HAS_BOUNDED_VARIATION_TRANSLATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_add 1 a x)) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_vector_add 1 (hl_vector_neg 1 a) x) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18447 / HAS_BOUNDED_VARIATION_REFLECT2_EQ   (hash md5:db754d2d6bc4474894e05b7d7660d7ab)
Theorem hlt_HAS_BOUNDED_VARIATION_REFLECT2_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_neg 1 x)) (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1) s) = 1 <-> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18447 / VECTOR_VARIATION_REFLECT2   (hash md5:40ed0d4490b79bc2302147d7cddb2276)
Theorem hlt_VECTOR_VARIATION_REFLECT2 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_vector_variation N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1) s) (fun x :e hl_ty_cart R 1 => f (hl_vector_neg 1 x)) = hl_vector_variation N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:18459 / HAS_BOUNDED_VARIATION_REFLECT_EQ   (hash md5:84d400b27f0db2833f61716a065864bc)
Theorem hlt_HAS_BOUNDED_VARIATION_REFLECT_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_neg 1 x)) s = 1 <-> hl_has_bounded_variation_on N f (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1) s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18459 / VECTOR_VARIATION_REFLECT   (hash md5:d2bfee9dcbeebcfc050b706d9449cfbf)
Theorem hlt_VECTOR_VARIATION_REFLECT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_vector_variation N s (fun x :e hl_ty_cart R 1 => f (hl_vector_neg 1 x)) = hl_vector_variation N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1) s) f.
Admitted.

// HOL Light: Multivariate/integration.ml:18487 / HAS_BOUNDED_VARIATION_DARBOUX_GEN   (hash md5:ef610e389604a5af382d72c0d19c35a8)
Theorem hlt_HAS_BOUNDED_VARIATION_DARBOUX_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ hl_has_bounded_variation_on 1 f s = 1 -> exists g h :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (g x)) (hl_drop (g y)) = 1) /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (h x)) (hl_drop (h y)) = 1) /\ forall x :e hl_ty_cart R 1, f x = hl_vector_sub 1 (g x) (h x)).
Admitted.

// HOL Light: Multivariate/integration.ml:18510 / HAS_BOUNDED_VARIATION_DARBOUX   (hash md5:2cb3fae5897b8fb1ac037dbbfe7950c3)
Theorem hlt_HAS_BOUNDED_VARIATION_DARBOUX : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> exists g h :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (g x)) (hl_drop (g y)) = 1) /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (h x)) (hl_drop (h y)) = 1) /\ forall x :e hl_ty_cart R 1, f x = hl_vector_sub 1 (g x) (h x)).
Admitted.

// HOL Light: Multivariate/integration.ml:18542 / HAS_BOUNDED_VARIATION_DARBOUX_STRICT   (hash md5:3c69805d3e3f26a90d81c47b2430cb86)
Theorem hlt_HAS_BOUNDED_VARIATION_DARBOUX_STRICT : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> exists g h :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (g x)) (hl_drop (g y)) = 1) /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (h x)) (hl_drop (h y)) = 1) /\ forall x :e hl_ty_cart R 1, f x = hl_vector_sub 1 (g x) (h x)).
Admitted.

// HOL Light: Multivariate/integration.ml:18562 / HAS_BOUNDED_VARIATION_ON_REFLECT   (hash md5:edb8a54ba695c342ae8f0ed486d9ddc7)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_REFLECT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1) s) = 1 -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_neg 1 x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18593 / HAS_BOUNDED_VARIATION_ON_REFLECT_INTERVAL   (hash md5:ea2ad2402d430b1fa2c501b49c349762)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_REFLECT_INTERVAL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vector_neg 1 b) (hl_vector_neg 1 a)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_bounded_variation_on N (fun x :e hl_ty_cart R 1 => f (hl_vector_neg 1 x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18750 / HAS_BOUNDED_VARIATION_COMPOSE_DECREASING   (hash md5:e6bed020167c52be24b4aa273f9874df)
Theorem hlt_HAS_BOUNDED_VARIATION_COMPOSE_DECREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) /\ hl_has_bounded_variation_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f b) (f a)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18768 / VECTOR_VARIATION_COMPOSE_DECREASING   (hash md5:5d0c0ee101edb670ed5438bdd89e551c)
Theorem hlt_VECTOR_VARIATION_COMPOSE_DECREASING : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) /\ hl_has_bounded_variation_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f b) (f a)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f)) (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f b) (f a)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18835 / HAS_BOUNDED_VARIATION_COMPOSE_HOMEOMORPHISM   (hash md5:b93c727d043eb138a81a7bf34defc015)
Theorem hlt_HAS_BOUNDED_VARIATION_COMPOSE_HOMEOMORPHISM : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_homeomorphism 1 1 (hl_pair (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) s t) (hl_pair (hl_ty_cart R 1 :^: hl_ty_cart R 1) (hl_ty_cart R 1 :^: hl_ty_cart R 1) f f') = 1 /\ hl_has_bounded_variation_on N g t = 1) -> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18865 / HAS_BOUNDED_VARIATION_COMPOSE_INJECTIVE   (hash md5:3ccd8127a2ebd35a4b674916af151519)
Theorem hlt_HAS_BOUNDED_VARIATION_COMPOSE_INJECTIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_continuous_on 1 1 f s = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ f x = f y) -> x = y) /\ hl_has_bounded_variation_on N g (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = 1)) -> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18878 / VECTOR_VARIATION_COMPOSE_HOMEOMORPHISM   (hash md5:926d61f25f4e4285a31588e25f5a82b6)
Theorem hlt_VECTOR_VARIATION_COMPOSE_HOMEOMORPHISM : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_homeomorphism 1 1 (hl_pair (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) s t) (hl_pair (hl_ty_cart R 1 :^: hl_ty_cart R 1) (hl_ty_cart R 1 :^: hl_ty_cart R 1) f f') = 1 /\ hl_has_bounded_variation_on N g t = 1) -> hl_vector_variation N s (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f) = hl_vector_variation N t g.
Admitted.

// HOL Light: Multivariate/integration.ml:18951 / HAS_BOUNDED_VARIATION_ON_ID   (hash md5:2a43f84c990f91a708d94728dc6f3857)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_ID : forall s :e 2 :^: hl_ty_cart R 1, hl_bounded 1 s = 1 -> hl_has_bounded_variation_on 1 (fun x :e hl_ty_cart R 1 => x) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18971 / LINEAR_IMP_HAS_BOUNDED_VARIATION   (hash md5:d5f67d49c0f4c8d13af096d7290c509c)
Theorem hlt_LINEAR_IMP_HAS_BOUNDED_VARIATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R 1, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_linear 1 N f = 1 /\ hl_bounded 1 s = 1 -> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:18980 / VECTOR_VARIATION_LINEAR   (hash md5:abd7b48a4ce52638c5f689317c8e74b1)
Theorem hlt_VECTOR_VARIATION_LINEAR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_linear 1 N f = 1 /\ hl_real_le (hl_drop a) (hl_drop b) = 1 -> hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f a) (f b)).
Admitted.

// HOL Light: Multivariate/integration.ml:18993 / HAS_BOUNDED_VARIATION_LIPSCHITZ_COMPOSE   (hash md5:d767c9b6985f48f882f1c5982b7e107c)
Theorem hlt_HAS_BOUNDED_VARIATION_LIPSCHITZ_COMPOSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall B :e R, hl_has_bounded_variation_on M g s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R M) g s) = 1 /\ hl_IN (hl_ty_cart R M) y (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R M) g s) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19012 / LIPSCHITZ_IMP_HAS_BOUNDED_VARIATION   (hash md5:4657842b9f482de57a35a8e84c3e5365)
Theorem hlt_LIPSCHITZ_IMP_HAS_BOUNDED_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall B :e R, hl_bounded 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) -> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19024 / VECTOR_VARIATION_LIPSCHITZ   (hash md5:a2b30213ad79820c7dde097964edbd3f)
Theorem hlt_VECTOR_VARIATION_LIPSCHITZ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall l :e R, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul l (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) -> hl_real_le (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_real_mul l (hl_real_sub (hl_drop b) (hl_drop a))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19051 / LIPSCHITZ_VECTOR_VARIATION   (hash md5:a8526553d7e65ee3318f8eb2614ab0bf)
Theorem hlt_LIPSCHITZ_VECTOR_VARIATION : forall N:set, N <> Empty -> forall B :e R, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_real_abs (hl_real_sub (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a y) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f))) (hl_real_mul B (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) <-> forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:19102 / HAS_BOUNDED_VECTOR_DERIVATIVE_IMP_HAS_BOUNDED_VARIATION_ON   (hash md5:28048c3182ee39116c8ce198bc3c8c89)
Theorem hlt_HAS_BOUNDED_VECTOR_DERIVATIVE_IMP_HAS_BOUNDED_VARIATION_ON : forall N:set, N <> Empty -> forall f f' :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative N f (f' x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) s) = 1) /\ (hl_convex 1 s = 1 /\ (hl_bounded 1 s = 1 /\ hl_bounded N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f' s) = 1)) -> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19113 / HAS_BOUNDED_VARIATION_ON_LINEAR_IMAGE   (hash md5:5b048e8bda323137872fe25c21b21c06)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_linear 1 1 f = 1 /\ hl_has_bounded_variation_on N g (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 -> hl_has_bounded_variation_on N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19142 / HAS_BOUNDED_VARIATION_ON_COMBINE_GEN   (hash md5:f9104be65b96b49abf2418f419401a14)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_COMBINE_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e R, hl_is_interval 1 s = 1 -> (hl_has_bounded_variation_on N f s = 1 <-> hl_has_bounded_variation_on N f (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6695 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6695 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop x) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_has_bounded_variation_on N f (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6696 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6696 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_ge (hl_drop x) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:19259 / HAS_BOUNDED_VARIATION_ON_INTERIOR   (hash md5:850bed1d1906b9b7f2eb3325e3922148)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_INTERIOR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_interior 1 s) = 1 /\ (hl_is_interval 1 s = 1 \/ hl_continuous_on 1 N f s = 1) -> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19529 / HAS_BOUNDED_VARIATION_ON_INTERIOR_EQ   (hash md5:fd1cc50d1839ba2bf6533e8370010ef0)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_INTERIOR_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 \/ hl_continuous_on 1 N f s = 1 -> (hl_has_bounded_variation_on N f (hl_interior 1 s) = 1 <-> hl_has_bounded_variation_on N f s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:19538 / CONVEX_HAS_BOUNDED_VARIATION_EQ   (hash md5:547591fdcd6059582de4f4f077637023)
Theorem hlt_CONVEX_HAS_BOUNDED_VARIATION_EQ : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_convex_on 1 (hl_o (hl_ty_cart R 1) R (hl_ty_cart R 1) hl_drop f) s = 1 /\ hl_is_interval 1 s = 1 -> (hl_has_bounded_variation_on 1 f s = 1 <-> hl_bounded 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:19561 / CONVEX_HAS_BOUNDED_VARIATION   (hash md5:6df18599e3e20174b62b233646658bbd)
Theorem hlt_CONVEX_HAS_BOUNDED_VARIATION : forall f :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_convex_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_bounded_variation_on 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19572 / HAS_BOUNDED_VECTOR_VARIATION_UNIFORM_LIM   (hash md5:87e22db7d1ec25479a3f381c6c2380f5)
Theorem hlt_HAS_BOUNDED_VECTOR_VARIATION_UNIFORM_LIM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1 :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall b :e R, (forall n :e omega, hl_has_bounded_variation_on N (f n) s = 1) /\ ((forall n :e omega, hl_real_le (hl_vector_variation N s (f n)) b = 1) /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_tendsto omega N (fun n :e omega => f n x) (g x) hl_sequentially = 1)) -> hl_has_bounded_variation_on N g s = 1 /\ hl_real_le (hl_vector_variation N s g) b = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19650 / INCREASING_LEFT_LIMIT_1   (hash md5:e6ba74c2518779a570d59e623aedb6b2)
Theorem hlt_INCREASING_LEFT_LIMIT_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists l :e hl_ty_cart R 1, hl_tendsto (hl_ty_cart R 1) 1 f l (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19692 / DECREASING_LEFT_LIMIT_1   (hash md5:524b7edf016ad6629fca1b629bf346c1)
Theorem hlt_DECREASING_LEFT_LIMIT_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists l :e hl_ty_cart R 1, hl_tendsto (hl_ty_cart R 1) 1 f l (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19706 / INCREASING_RIGHT_LIMIT_1   (hash md5:6ad3c51a306c32f10d9ba8f3d519f292)
Theorem hlt_INCREASING_RIGHT_LIMIT_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists l :e hl_ty_cart R 1, hl_tendsto (hl_ty_cart R 1) 1 f l (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19727 / DECREASING_RIGHT_LIMIT_1   (hash md5:64a0d55252a134e8a864d56d5e0b7b81)
Theorem hlt_DECREASING_RIGHT_LIMIT_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists l :e hl_ty_cart R 1, hl_tendsto (hl_ty_cart R 1) 1 f l (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19741 / HAS_BOUNDED_VECTOR_VARIATION_LEFT_LIMIT   (hash md5:337e3c89168351e18a10af61729f890b)
Theorem hlt_HAS_BOUNDED_VECTOR_VARIATION_LEFT_LIMIT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists l :e hl_ty_cart R N, hl_tendsto (hl_ty_cart R 1) N f l (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19767 / HAS_BOUNDED_VECTOR_VARIATION_RIGHT_LIMIT   (hash md5:1c52e1e300ffc10f57c9d7030df796c4)
Theorem hlt_HAS_BOUNDED_VECTOR_VARIATION_RIGHT_LIMIT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists l :e hl_ty_cart R N, hl_tendsto (hl_ty_cart R 1) N f l (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19793 / HAS_BOUNDED_VARIATION_RIGHT_LIMIT_GEN   (hash md5:bb7f59c5904cbeb43b51ada4897612b4)
Theorem hlt_HAS_BOUNDED_VARIATION_RIGHT_LIMIT_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_is_interval 1 s = 1 -> exists l :e hl_ty_cart R N, hl_tendsto (hl_ty_cart R 1) N f l (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6707 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6707 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop a) (hl_drop x) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19836 / HAS_BOUNDED_VARIATION_LEFT_LIMIT_GEN   (hash md5:c353ad5f3b0398b2d3da5d298935cb57)
Theorem hlt_HAS_BOUNDED_VARIATION_LEFT_LIMIT_GEN : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_is_interval 1 s = 1 -> exists l :e hl_ty_cart R N, hl_tendsto (hl_ty_cart R 1) N f l (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6708 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6708 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop x) (hl_drop a) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19878 / INCREASING_LEFT_LIMIT_1_GEN   (hash md5:5a15fd8cd4508dba6436942eb1089838)
Theorem hlt_INCREASING_LEFT_LIMIT_1_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, forall B :e R, hl_is_interval 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le (hl_drop (f x)) B = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1)) -> exists l :e hl_ty_cart R 1, hl_tendsto (hl_ty_cart R 1) 1 f l (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6711 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6711 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop x) (hl_drop a) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19914 / DECREASING_LEFT_LIMIT_1_GEN   (hash md5:b5eec4d0e721b3305fb8e6ee3ae29779)
Theorem hlt_DECREASING_LEFT_LIMIT_1_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, forall B :e R, hl_is_interval 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le B (hl_drop (f x)) = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1)) -> exists l :e hl_ty_cart R 1, hl_tendsto (hl_ty_cart R 1) 1 f l (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6712 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6712 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop x) (hl_drop a) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19928 / INCREASING_RIGHT_LIMIT_1_GEN   (hash md5:dc37c0bca66ef59d109a82d0865c0fc5)
Theorem hlt_INCREASING_RIGHT_LIMIT_1_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, forall B :e R, hl_is_interval 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le B (hl_drop (f x)) = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1)) -> exists l :e hl_ty_cart R 1, hl_tendsto (hl_ty_cart R 1) 1 f l (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6713 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6713 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop a) (hl_drop x) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19950 / DECREASING_RIGHT_LIMIT_1_GEN   (hash md5:923a9559f3f14cfaedb3a83cfd105709)
Theorem hlt_DECREASING_RIGHT_LIMIT_1_GEN : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, forall B :e R, hl_is_interval 1 s = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le (hl_drop (f x)) B = 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1)) -> exists l :e hl_ty_cart R 1, hl_tendsto (hl_ty_cart R 1) 1 f l (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6714 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6714 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_real_le (hl_drop a) (hl_drop x) = 1 then 1 else 0) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:19964 / VECTOR_VARIATION_CONTINUOUS_LEFT   (hash md5:df8dc5597047d9167dc454e358133e84)
Theorem hlt_VECTOR_VARIATION_CONTINUOUS_LEFT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> (hl_continuous (hl_ty_cart R 1) 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 <-> hl_continuous (hl_ty_cart R 1) N f (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:20248 / VECTOR_VARIATION_CONTINUOUS_RIGHT   (hash md5:2c99e9cace08489a063081398cbc8d71)
Theorem hlt_VECTOR_VARIATION_CONTINUOUS_RIGHT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> (hl_continuous (hl_ty_cart R 1) 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 <-> hl_continuous (hl_ty_cart R 1) N f (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:20532 / VECTOR_VARIATION_CONTINUOUS   (hash md5:74e2386aad51c1a6508e0104e37c4262)
Theorem hlt_VECTOR_VARIATION_CONTINUOUS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) c (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> (hl_continuous (hl_ty_cart R 1) 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 <-> hl_continuous (hl_ty_cart R 1) N f (hl_within (hl_ty_cart R 1) (hl_at 1 c) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:20557 / CONTINUOUS_ON_VECTOR_VARIATION   (hash md5:8048d21f98e267c80ae5beef4ab1c673)
Theorem hlt_CONTINUOUS_ON_VECTOR_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_continuous_on 1 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:20565 / HAS_BOUNDED_VARIATION_DARBOUX_STRONG   (hash md5:91640f66cf8c4e4590ac8ef49d34319c)
Theorem hlt_HAS_BOUNDED_VARIATION_DARBOUX_STRONG : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists g h :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, f x = hl_vector_sub 1 (g x) (h x)) /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (g x)) (hl_drop (g y)) = 1) /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (h x)) (hl_drop (h y)) = 1) /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (g x)) (hl_drop (g y)) = 1) /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (h x)) (hl_drop (h y)) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_continuous (hl_ty_cart R 1) 1 f (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 -> hl_continuous (hl_ty_cart R 1) 1 g (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ hl_continuous (hl_ty_cart R 1) 1 h (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_continuous (hl_ty_cart R 1) 1 f (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 -> hl_continuous (hl_ty_cart R 1) 1 g (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ hl_continuous (hl_ty_cart R 1) 1 h (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_continuous (hl_ty_cart R 1) 1 f (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 -> hl_continuous (hl_ty_cart R 1) 1 g (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1 /\ hl_continuous (hl_ty_cart R 1) 1 h (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1)))))).
Admitted.

// HOL Light: Multivariate/integration.ml:20656 / INCREASING_COUNTABLE_DISCONTINUITIES   (hash md5:73f18f4afb292304875dc5cea111717e)
Theorem hlt_INCREASING_COUNTABLE_DISCONTINUITIES : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> hl_COUNTABLE (hl_ty_cart R 1) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6722 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6722 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_continuous (hl_ty_cart R 1) 1 f (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:20830 / DECREASING_COUNTABLE_DISCONTINUITIES   (hash md5:34ed0fc23fc0752978c830ab70e87295)
Theorem hlt_DECREASING_COUNTABLE_DISCONTINUITIES : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) -> hl_COUNTABLE (hl_ty_cart R 1) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6723 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6723 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_continuous (hl_ty_cart R 1) 1 f (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:20845 / HAS_BOUNDED_VARIATION_COUNTABLE_DISCONTINUITIES   (hash md5:75ae068ff57e08430622b6136a2a4829)
Theorem hlt_HAS_BOUNDED_VARIATION_COUNTABLE_DISCONTINUITIES : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_is_interval 1 s = 1 -> hl_COUNTABLE (hl_ty_cart R 1) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6727 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6727 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_continuous (hl_ty_cart R 1) N f (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:20885 / HAS_BOUNDED_VARIATION_ABSOLUTELY_INTEGRABLE_DERIVATIVE   (hash md5:132e23d4ad0c951b782fe6991420026e)
Theorem hlt_HAS_BOUNDED_VARIATION_ABSOLUTELY_INTEGRABLE_DERIVATIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_COUNTABLE (hl_ty_cart R 1) s = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_differentiable 1 N f (hl_at 1 x) = 1)) -> (hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_absolutely_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vector_derivative N f (hl_at 1 x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:20924 / HAS_BOUNDED_VARIATION_INTEGRABLE_NORM_DERIVATIVE   (hash md5:2dd0fc9e7c65f7737e4b975648c14ecb)
Theorem hlt_HAS_BOUNDED_VARIATION_INTEGRABLE_NORM_DERIVATIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_COUNTABLE (hl_ty_cart R 1) s = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_differentiable 1 N f (hl_at 1 x) = 1)) -> (hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_integrable_on 1 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (hl_vector_derivative N f (hl_at 1 x)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:20947 / VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE   (hash md5:446b80c580c332ea9992a1d0f7cbf878)
Theorem hlt_VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_COUNTABLE (hl_ty_cart R 1) s = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_differentiable 1 N f (hl_at 1 x) = 1) /\ hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1)) -> hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f = hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (hl_vector_derivative N f (hl_at 1 x))))).
Admitted.

// HOL Light: Multivariate/integration.ml:20972 / INTEGRABLE_BOUNDED_VARIATION_PRODUCT   (hash md5:2ebd53b0997a60d0c2ecac84ab64fe92)
Theorem hlt_INTEGRABLE_BOUNDED_VARIATION_PRODUCT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_bounded_variation_on 1 g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop (g x)) (f x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:20986 / INTEGRABLE_BOUNDED_VARIATION_PRODUCT_ALT   (hash md5:dc899a8b570d6e9bc4901819882fd6ea)
Theorem hlt_INTEGRABLE_BOUNDED_VARIATION_PRODUCT_ALT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_bounded_variation_on 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift g) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_integrable_on 1 N (fun x :e hl_ty_cart R 1 => hl_vmul N (g x) (f x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:20995 / INTEGRABLE_BOUNDED_VARIATION_BILINEAR_LMUL   (hash md5:cde49b0c3bf7c15f833ef01938456343)
Theorem hlt_INTEGRABLE_BOUNDED_VARIATION_BILINEAR_LMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall op :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_bilinear M N P op = 1 /\ (hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_bounded_variation_on M g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_integrable_on 1 P (fun x :e hl_ty_cart R 1 => op (g x) (f x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21021 / INTEGRABLE_BOUNDED_VARIATION_BILINEAR_RMUL   (hash md5:ee8b0b83d6548a1f96f7bfe4313f27f7)
Theorem hlt_INTEGRABLE_BOUNDED_VARIATION_BILINEAR_RMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall op :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_bilinear M N P op = 1 /\ (hl_integrable_on 1 M f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_has_bounded_variation_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_integrable_on 1 P (fun x :e hl_ty_cart R 1 => op (f x) (g x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21033 / INTEGRABLE_BOUNDED_VARIATION   (hash md5:c14a967675adef2ec22b83b8fd803127)
Theorem hlt_INTEGRABLE_BOUNDED_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21046 / HAS_BOUNDED_VARIATION_ON_INDEFINITE_INTEGRAL_RIGHT   (hash md5:96dc841173b4df67f3acb3711e201b53)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_INDEFINITE_INTEGRAL_RIGHT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_bounded_variation_on N (fun c :e hl_ty_cart R 1 => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21065 / HAS_BOUNDED_VARIATION_ON_INDEFINITE_INTEGRAL_LEFT   (hash md5:b72f772dfc64606c93eb9beab02a471a)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_INDEFINITE_INTEGRAL_LEFT : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_absolutely_integrable_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_bounded_variation_on N (fun c :e hl_ty_cart R 1 => hl_integral 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21086 / CONTINUOUS_BV_IMP_UNIFORMLY_CONTINUOUS   (hash md5:95dc1146d8bc0bfb4201de4b58b8b9ba)
Theorem hlt_CONTINUOUS_BV_IMP_UNIFORMLY_CONTINUOUS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_continuous_on 1 N f s = 1 /\ hl_has_bounded_variation_on N f s = 1) -> hl_uniformly_continuous_on 1 N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21271 / HAS_BOUNDED_VARIATION_ON_DARBOUX_IMP_CONTINUOUS   (hash md5:e351cc35edc56145cc04e441e99a9a17)
Theorem hlt_HAS_BOUNDED_VARIATION_ON_DARBOUX_IMP_CONTINUOUS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_has_bounded_variation_on N f s = 1 /\ (forall c :e 2 :^: hl_ty_cart R 1, hl_SUBSET (hl_ty_cart R 1) c s = 1 /\ hl_connected 1 c = 1 -> hl_connected N (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f c) = 1)) -> hl_continuous_on 1 N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21281 / VECTOR_VARIATION_ON_INTERIOR   (hash md5:719ba4f05ab9f13ce6462b77e7d7f7a8)
Theorem hlt_VECTOR_VARIATION_ON_INTERIOR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_has_bounded_variation_on N f (hl_interior 1 s) = 1 /\ hl_continuous_on 1 N f s = 1) -> hl_vector_variation N (hl_interior 1 s) f = hl_vector_variation N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:21422 / VECTOR_VARIATION_ON_CLOSURE   (hash md5:67582ee55599dfceb89646ceccd80c5c)
Theorem hlt_VECTOR_VARIATION_ON_CLOSURE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_has_bounded_variation_on N f s = 1 /\ hl_continuous_on 1 N f (hl_closure 1 s) = 1) -> hl_vector_variation N (hl_closure 1 s) f = hl_vector_variation N s f.
Admitted.

// HOL Light: Multivariate/integration.ml:21439 / HAS_BOUNDED_VARIATION_IMP_BAIRE1   (hash md5:8900172713df51c12d9aea22bea34949)
Theorem hlt_HAS_BOUNDED_VARIATION_IMP_BAIRE1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_has_bounded_variation_on N f s = 1 /\ hl_is_interval 1 s = 1 -> hl_baire 1 N (hl_NUMERAL (hl_BIT1 hl_zero)) s f = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21451 / INCREASING_IMP_BAIRE1   (hash md5:6610f3649792249d58aecc84525e1736)
Theorem hlt_INCREASING_IMP_BAIRE1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> hl_baire 1 1 (hl_NUMERAL (hl_BIT1 hl_zero)) s f = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21464 / DECREASING_IMP_BAIRE1   (hash md5:9849b784d4173747f458d84e8b80312f)
Theorem hlt_DECREASING_IMP_BAIRE1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1) -> hl_baire 1 1 (hl_NUMERAL (hl_BIT1 hl_zero)) s f = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:21483 / FACTOR_THROUGH_VARIATION   (hash md5:20c698e19831c3dfe8403953f9c097d8)
Theorem hlt_FACTOR_THROUGH_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> f x = g (hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f))) /\ (hl_continuous_on 1 N g (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6737 :e hl_ty_cart R 1 => if exists u :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6737 (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a u) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) = 1 then 1 else 0)) = 1 /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6738 :e hl_ty_cart R 1 => if exists u :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6738 (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a u) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) = 1 then 1 else 0)) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6739 :e hl_ty_cart R 1 => if exists u :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6739 (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a u) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) = 1 then 1 else 0)) = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g x) (g y))) (hl_distance 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x y)) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:21554 / FACTOR_CONTINUOUS_THROUGH_VARIATION   (hash md5:6f5d19ddce9a1d1c4fc1f13f0f8a5fde)
Theorem hlt_FACTOR_CONTINUOUS_THROUGH_VARIATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b l :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_has_bounded_variation_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f = hl_drop l)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> f x = g (hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f))) /\ (hl_continuous_on 1 N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) l) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ ((forall u v :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) l) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) l) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g u) (g v))) (hl_distance 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) u v)) = 1) /\ (hl_has_bounded_variation_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) l) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) l) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) /\ (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) l) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R N) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) l) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) g = hl_drop x))))).
Admitted.

// HOL Light: Multivariate/integration.ml:21665 / HELLY_SELECTION_INCREASING   (hash md5:dd3383e36811afd62efd4c0e4c0e6770)
Theorem hlt_HELLY_SELECTION_INCREASING : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1 :^: omega, forall s :e 2 :^: hl_ty_cart R 1, forall k :e R, hl_is_interval 1 s = 1 /\ ((forall n :e omega, forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le (hl_vector_norm 1 (f n x)) k = 1) /\ (forall n :e omega, forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f n x)) (hl_drop (f n y)) = 1)) -> exists r :e omega :^: omega, exists g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_tendsto omega 1 (fun n :e omega => f (r n) x) (g x) hl_sequentially = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le (hl_vector_norm 1 (g x)) k = 1) /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (g x)) (hl_drop (g y)) = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:21863 / HELLY_SELECTION_THEOREM   (hash md5:c899dc9d8a628853430f98c488c9f3ec)
Theorem hlt_HELLY_SELECTION_THEOREM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1 :^: omega, forall s :e 2 :^: hl_ty_cart R 1, forall c d :e R, hl_is_interval 1 s = 1 /\ ((forall n :e omega, hl_has_bounded_variation_on N (f n) s = 1) /\ ((forall n :e omega, hl_real_le (hl_vector_variation N s (f n)) c = 1) /\ (forall n :e omega, forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le (hl_vector_norm N (f n x)) d = 1))) -> exists r :e omega :^: omega, exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_tendsto omega N (fun n :e omega => f (r n) x) (g x) hl_sequentially = 1) /\ (hl_has_bounded_variation_on N g s = 1 /\ hl_real_le (hl_vector_variation N s g) c = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:22017 / CONVEX_ON_RIGHT_DIFFERENTIABLE   (hash md5:9deea7c45c8c3ebe9d92c777e4475316)
Theorem hlt_CONVEX_ON_RIGHT_DIFFERENTIABLE : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_convex_on 1 f s = 1 /\ hl_IN (hl_ty_cart R 1) a (hl_interior 1 s) = 1 -> hl_differentiable 1 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6750 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6750 (hl_real_le (hl_drop a) (hl_drop x)) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22067 / CONVEX_ON_LEFT_DIFFERENTIABLE   (hash md5:a3152347b224463221f153a464830f50)
Theorem hlt_CONVEX_ON_LEFT_DIFFERENTIABLE : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_convex_on 1 f s = 1 /\ hl_IN (hl_ty_cart R 1) a (hl_interior 1 s) = 1 -> hl_differentiable 1 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6754 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6754 (hl_real_le (hl_drop x) (hl_drop a)) x = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22120 / CONVEX_ON_DIRECTIONAL_DERIVATIVES   (hash md5:33d984031391da1319bf0f2ef3e80cf2)
Theorem hlt_CONVEX_ON_DIRECTIONAL_DERIVATIVES : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_convex_on 1 f s = 1 /\ hl_IN (hl_ty_cart R 1) a (hl_interior 1 s) = 1 -> exists l r :e hl_ty_cart R 1, hl_has_vector_derivative 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) l (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6755 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6755 (hl_real_le (hl_drop x) (hl_drop a)) x = 1 then 1 else 0))) = 1 /\ (hl_has_vector_derivative 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) r (hl_within (hl_ty_cart R 1) (hl_at 1 a) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6756 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6756 (hl_real_le (hl_drop a) (hl_drop x)) x = 1 then 1 else 0))) = 1 /\ hl_real_le (hl_drop l) (hl_drop r) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:22176 / CONVEX_ON_DIRECTIONAL_DERIVATIVE_FUNCTIONS   (hash md5:b4a42ba9a26690e050fa9ea5e67d83a3)
Theorem hlt_CONVEX_ON_DIRECTIONAL_DERIVATIVE_FUNCTIONS : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_convex_on 1 f s = 1 /\ (hl_is_interval 1 s = 1 /\ hl_open 1 s = 1) -> exists l r :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) (l x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6757 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6757 (hl_real_le (hl_drop t) (hl_drop x)) t = 1 then 1 else 0))) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_has_vector_derivative 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) (r x) (hl_within (hl_ty_cart R 1) (hl_at 1 x) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6758 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6758 (hl_real_le (hl_drop x) (hl_drop t)) t = 1 then 1 else 0))) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> hl_real_le (hl_drop (l x)) (hl_drop (r x)) = 1) /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (r x)) (hl_drop (l y)) = 1)).
Admitted.

// HOL Light: Multivariate/integration.ml:22238 / CONVEX_ON_COUNTABLE_NONDIFFERENTIABLE   (hash md5:39527a4f87e2a79fbc4a0001a33cbc85)
Theorem hlt_CONVEX_ON_COUNTABLE_NONDIFFERENTIABLE : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_convex_on 1 f s = 1 /\ hl_COUNTABLE (2 :^: hl_ty_cart R 1) (hl_components 1 s) = 1 -> hl_COUNTABLE (hl_ty_cart R 1) (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_6765 :e hl_ty_cart R 1 => if exists x :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_6765 (if hl_IN (hl_ty_cart R 1) x s = 1 /\ ~ hl_differentiable 1 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R 1) hl_lift f) (hl_at 1 x) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22319 / CONVEX_ON_INDEFINITE_INTEGRAL_INCREASING   (hash md5:d29b3611880fbfd977a73ed39b4c9984)
Theorem hlt_CONVEX_ON_INDEFINITE_INTEGRAL_INCREASING : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> hl_convex_on 1 (fun x :e hl_ty_cart R 1 => hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a x) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) f)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22381 / CONVEX_ON_IS_INDEFINITE_INTEGRAL   (hash md5:6fdd7553da7a61fcfe25c5f8e088448d)
Theorem hlt_CONVEX_ON_IS_INDEFINITE_INTEGRAL : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_convex_on 1 (hl_o (hl_ty_cart R 1) R (hl_ty_cart R 1) hl_drop f) s = 1 /\ (hl_is_interval 1 s = 1 /\ hl_open 1 s = 1) -> exists f' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f' x)) (hl_drop (f' y)) = 1) /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_has_integral 1 1 f' (hl_vector_sub 1 (f y) (f x)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x y) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22442 / absolutely_setcontinuous_on   (hash md5:6a182a2a15b100ab0938c37c4e9870a2)
Theorem hlt_absolutely_setcontinuous_on_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_absolutely_setcontinuous_on M N f s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ (hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_real_lt (hl_sum (2 :^: hl_ty_cart R M) d (hl_content M)) r = 1) -> hl_real_lt (hl_sum (2 :^: hl_ty_cart R M) d (fun k :e 2 :^: hl_ty_cart R M => hl_vector_norm N (f k))) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22449 / ABSOLUTELY_SETCONTINUOUS_COMPARISON   (hash md5:28afb661d5e3f3c72397b1448942abb1)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_COMPARISON : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R P :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N f s = 1 /\ (forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> hl_real_le (hl_vector_norm P (g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) (hl_vector_norm N (f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))))) = 1) -> hl_absolutely_setcontinuous_on M P g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22471 / ABSOLUTELY_SETCONTINUOUS_ON_EQ   (hash md5:15bd05fd6d7284aba6137b6ea78bc5b2)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 -> f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = g (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))))) /\ hl_absolutely_setcontinuous_on M N f s = 1 -> hl_absolutely_setcontinuous_on M N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22482 / ABSOLUTELY_SETCONTINUOUS_ON_COMPONENTWISE   (hash md5:08aad357341637ad59d4b50dd41dc1da)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N f s = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_absolutely_setcontinuous_on M 1 (fun k :e 2 :^: hl_ty_cart R M => hl_lift (hl_vindex R N (f k) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22526 / ABSOLUTELY_SETCONTINUOUS_ON_ALT   (hash md5:d4e16fc7f71b3b658fb5f692eec1250e)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N f s = 1 <-> forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ forall d :e 2 :^: (2 :^: hl_ty_cart R M), forall t :e 2 :^: hl_ty_cart R M, hl_division_of M d t = 1 /\ (hl_SUBSET (hl_ty_cart R M) t s = 1 /\ hl_real_lt (hl_sum (2 :^: hl_ty_cart R M) d (hl_content M)) r = 1) -> hl_real_lt (hl_vector_norm N (hl_vsum (2 :^: hl_ty_cart R M) N d f)) e1 = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22592 / ABSOLUTELY_SETCONTINUOUS_ON_LIFT_ABS   (hash md5:336d4575ae1e0ab4cc1dcf2bbba202d3)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_LIFT_ABS : forall N:set, N <> Empty -> forall f :e R :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_absolutely_setcontinuous_on N 1 (fun x :e 2 :^: hl_ty_cart R N => hl_lift (hl_real_abs (f x))) s = 1 <-> hl_absolutely_setcontinuous_on N 1 (fun x :e 2 :^: hl_ty_cart R N => hl_lift (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22599 / ABSOLUTELY_SETCONTINUOUS_ON_SUBSET   (hash md5:cb18478854d4ae70776ac897f4a8fafc)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s t :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R M) t s = 1 -> hl_absolutely_setcontinuous_on M N f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22608 / ABSOLUTELY_SETCONTINUOUS_ON_NORM   (hash md5:bab17b7aeacef061a0f087ee1be12797)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_NORM : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M 1 (fun x :e 2 :^: hl_ty_cart R M => hl_lift (hl_vector_norm N (f x))) s = 1 <-> hl_absolutely_setcontinuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22615 / ABSOLUTELY_SETCONTINUOUS_ON_COMPOSE_LINEAR   (hash md5:e13e94e1af9118d21d4143b115382496)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_COMPOSE_LINEAR : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R P :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N f s = 1 /\ hl_linear N P g = 1 -> hl_absolutely_setcontinuous_on M P (hl_o (hl_ty_cart R N) (hl_ty_cart R P) (2 :^: hl_ty_cart R M) g f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22634 / ABSOLUTELY_SETCONTINUOUS_ON_0   (hash md5:5ab0c39f8e063442ef9ad22f0368e4c0)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_0 : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_absolutely_setcontinuous_on N A (fun x :e 2 :^: hl_ty_cart R N => hl_vec A (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22639 / ABSOLUTELY_SETCONTINUOUS_ON_CMUL   (hash md5:b47affcc00dc369f99ff3b8acfe698be)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall c :e R, forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N f s = 1 -> hl_absolutely_setcontinuous_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vmul N c (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22648 / ABSOLUTELY_SETCONTINUOUS_ON_NEG   (hash md5:6ee7bafa4d975474f4a90a10d0495810)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vector_neg N (f x)) s = 1 <-> hl_absolutely_setcontinuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22654 / ABSOLUTELY_SETCONTINUOUS_ON_ADD   (hash md5:c6d3fe4cb3dbf8d064c72e612382b279)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N f s = 1 /\ hl_absolutely_setcontinuous_on M N g s = 1 -> hl_absolutely_setcontinuous_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vector_add N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22676 / ABSOLUTELY_SETCONTINUOUS_ON_SUB   (hash md5:fb2b10a866cec00520f62c2cda8d9bfb)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M N f s = 1 /\ hl_absolutely_setcontinuous_on M N g s = 1 -> hl_absolutely_setcontinuous_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vector_sub N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22684 / ABSOLUTELY_SETCONTINUOUS_ON_NULL   (hash md5:935ebae6667e1dad7daadc7a823cf260)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_NULL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, (forall a b :e hl_ty_cart R M, ~ hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M))) = hl_EMPTY (hl_ty_cart R M) /\ (hl_SUBSET (hl_ty_cart R M) (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) s = 1 /\ hl_content M (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_real_of_num (hl_NUMERAL hl_zero)) -> f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = hl_vec N (hl_NUMERAL hl_zero)) /\ (hl_content M s = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_bounded M s = 1) -> hl_absolutely_setcontinuous_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22702 / ABSOLUTELY_SETCONTINUOUS_ON_VSUM   (hash md5:9168f07074828f165c1097b50315fcd8)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_VSUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M) :^: A, forall s :e 2 :^: hl_ty_cart R M, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (forall i :e A, hl_IN A i k = 1 -> hl_absolutely_setcontinuous_on M N (f i) s = 1) -> hl_absolutely_setcontinuous_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vsum A N k (fun i :e A => f i x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22719 / ABSOLUTELY_SETCONTINUOUS_ON_MUL   (hash md5:c61662596f169aa08d6aaed8f2f65da6)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R 1 :^: (2 :^: hl_ty_cart R M), forall g :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_absolutely_setcontinuous_on M 1 f s = 1 /\ hl_absolutely_setcontinuous_on M N g s = 1 -> hl_absolutely_setcontinuous_on M N (fun x :e 2 :^: hl_ty_cart R M => hl_vmul N (hl_drop (f x)) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22744 / OPERATIVE_ABSOLUTELY_SETCONTINUOUS_ON   (hash md5:ea5dac2301ebd89d60e0d992e663afc1)
Theorem hlt_OPERATIVE_ABSOLUTELY_SETCONTINUOUS_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), hl_operative (hl_ty_cart R N) M (hl_vector_add N) f = 1 -> hl_operative 2 M hl_and (hl_absolutely_setcontinuous_on M N f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:22854 / ABSOLUTELY_SETCONTINUOUS_ON_DIVISION   (hash md5:8a75758bf4de4c34062debccbc081d13)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_DIVISION : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall a b :e hl_ty_cart R M, forall d :e 2 :^: (2 :^: hl_ty_cart R M), hl_operative (hl_ty_cart R N) M (hl_vector_add N) f = 1 /\ hl_division_of M d (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1 -> ((forall k :e 2 :^: hl_ty_cart R M, hl_IN (2 :^: hl_ty_cart R M) k d = 1 -> hl_absolutely_setcontinuous_on M N f k = 1) <-> hl_absolutely_setcontinuous_on M N f (hl_closed_interval M (hl_CONS (hl_ty_cart R M :*: hl_ty_cart R M) (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) a b) (hl_NIL (hl_ty_cart R M :*: hl_ty_cart R M)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:22862 / ABSOLUTELY_SETCONTINUOUS_ON_IMP_HAS_BOUNDED_SETVARIATION_ON   (hash md5:b316582f2cc07c936d7ed7b32e57dd93)
Theorem hlt_ABSOLUTELY_SETCONTINUOUS_ON_IMP_HAS_BOUNDED_SETVARIATION_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: (2 :^: hl_ty_cart R M), forall s :e 2 :^: hl_ty_cart R M, hl_operative (hl_ty_cart R N) M (hl_vector_add N) f = 1 /\ (hl_absolutely_setcontinuous_on M N f s = 1 /\ hl_bounded M s = 1) -> hl_has_bounded_setvariation_on M N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23057 / absolutely_continuous_on   (hash md5:00a2a37425646bea629f384fea5a0383)
Theorem hlt_absolutely_continuous_on_thm : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 <-> hl_absolutely_setcontinuous_on 1 N (fun k :e 2 :^: hl_ty_cart R 1 => hl_vector_sub N (f (hl_interval_upperbound 1 k)) (f (hl_interval_lowerbound 1 k))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23062 / ABSOLUTELY_CONTINUOUS_ON_EQ   (hash md5:ca4e8c0450d4de91b640d13480e0976e)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_EQ : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> f x = g x) /\ hl_absolutely_continuous_on N f s = 1 -> hl_absolutely_continuous_on N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23074 / ABSOLUTELY_CONTINUOUS_ISOMETRIC   (hash md5:2a44c8b985af48c2dd5a94573f4e7a59)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ISOMETRIC : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (f x) (f y)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g x) (g y))) -> (hl_absolutely_continuous_on A f s = 1 <-> hl_absolutely_continuous_on N g s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:23081 / ABSOLUTELY_CONTINUOUS_ISOMETRIC_COMPOSE   (hash md5:c3ad6bdab603448a9aa4e19d01da0e8c)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ISOMETRIC_COMPOSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R M, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y)) -> (hl_absolutely_continuous_on N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) s = 1 <-> hl_absolutely_continuous_on M g s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:23089 / ABSOLUTELY_CONTINUOUS_ON_TRANSLATION   (hash md5:0c3e6a010d71fa0d730d359e5abc0fe6)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_TRANSLATION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a :e hl_ty_cart R N, hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vector_add N a (f x)) s = 1 <-> hl_absolutely_continuous_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23095 / ABSOLUTELY_CONTINUOUS_ON_COMPONENTWISE   (hash md5:076b11831972ce64df0464e8ed4ce340)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_COMPONENTWISE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 <-> forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vindex R N (f x) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23104 / ABSOLUTELY_CONTINUOUS_ON_LIFT_COMPONENT   (hash md5:53263740aad9ff6f8f1e5fab8a4717e8)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_LIFT_COMPONENT : forall N:set, N <> Empty -> forall i :e omega, forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1) -> hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vindex R N (f x) i)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23111 / ABSOLUTELY_CONTINUOUS_COMPARISON   (hash md5:6a64d35066341bab790a40119a2a7d36)
Theorem hlt_ABSOLUTELY_CONTINUOUS_COMPARISON : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on M f s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g x) (g y))) (hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (f x) (f y))) = 1) -> hl_absolutely_continuous_on N g s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23135 / ABSOLUTELY_CONTINUOUS_ON_LIFT_ABS   (hash md5:fe77394542aa6732ea02f3fad34b665a)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_LIFT_ABS : forall s :e 2 :^: hl_ty_cart R 1, forall f :e R :^: hl_ty_cart R 1, hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (f x)) s = 1 -> hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_real_abs (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23144 / ABSOLUTELY_CONTINUOUS_ON_SUBSET   (hash md5:bcd3952320413c0992679b244e51a127)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_SUBSET : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ hl_SUBSET (hl_ty_cart R 1) t s = 1 -> hl_absolutely_continuous_on N f t = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23150 / ABSOLUTELY_CONTINUOUS_ON_CONST   (hash md5:ad0c0d7a2694308b0bf91df6cd7ed0aa)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_CONST : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R 1, forall c :e hl_ty_cart R N, hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => c) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23155 / ABSOLUTELY_CONTINUOUS_ON_CMUL   (hash md5:a772791b1c01b424539117370de55d3d)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_CMUL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall c :e R, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vmul N c (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23162 / ABSOLUTELY_CONTINUOUS_ON_CMUL_EQ   (hash md5:ecc188ee45ebfd05d16504403948c5fe)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_CMUL_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall c :e R, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vmul N c (f x)) s = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_absolutely_continuous_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23173 / ABSOLUTELY_CONTINUOUS_ON_VMUL_EQ   (hash md5:50a56bec74fa7965bff4e22f2644b043)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_VMUL_EQ : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall v :e hl_ty_cart R N, hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vmul N (f x) v) s = 1 <-> v = hl_vec N (hl_NUMERAL hl_zero) \/ hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23187 / ABSOLUTELY_CONTINUOUS_ON_VMUL   (hash md5:35876666058738e596f8d5593cb01473)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_VMUL : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall v :e hl_ty_cart R N, hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (f x)) s = 1 -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vmul N (f x) v) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23193 / ABSOLUTELY_CONTINUOUS_ON_NEG   (hash md5:c061638a88a1a048321481efe736cee3)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_NEG : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vector_neg N (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23201 / ABSOLUTELY_CONTINUOUS_ON_ADD   (hash md5:7b3704124bcbfddc1293710c72a2febd)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_ADD : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ hl_absolutely_continuous_on N g s = 1 -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vector_add N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23209 / ABSOLUTELY_CONTINUOUS_ON_SUB   (hash md5:16c44429f949a566e8936abd912b55fa)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_SUB : forall N:set, N <> Empty -> forall f g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ hl_absolutely_continuous_on N g s = 1 -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vector_sub N (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23217 / ABSOLUTELY_CONTINUOUS_ON_COMPOSE_LINEAR   (hash md5:8c1f072178834a629351a9f033220325)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_COMPOSE_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on M f s = 1 /\ hl_linear M N g = 1 -> hl_absolutely_continuous_on N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) g f) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23226 / ABSOLUTELY_CONTINUOUS_ON_NULL   (hash md5:08b4d925d22e7107f9030609b01852bc)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_NULL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_content 1 s = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_bounded 1 s = 1 -> hl_absolutely_continuous_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23233 / ABSOLUTELY_CONTINUOUS_ON_EMPTY   (hash md5:c65120488c2a45e60795c47e7131cc45)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_EMPTY : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f (hl_EMPTY (hl_ty_cart R 1)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23237 / ABSOLUTELY_CONTINUOUS_ON_NORM   (hash md5:dd85f527d39641abef0bc5de30dc2393)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_NORM : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 -> hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (f x))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23247 / ABSOLUTELY_CONTINUOUS_ON_MAX   (hash md5:2ef6240d964dafb3376d4b02d6d624ef)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_MAX : forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on 1 f s = 1 /\ hl_absolutely_continuous_on 1 g s = 1 -> hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_real_max (hl_drop (f x)) (hl_drop (g x)))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23261 / ABSOLUTELY_CONTINUOUS_ON_MIN   (hash md5:e20eb3d6453c1de8481932c813d6154c)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_MIN : forall f g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on 1 f s = 1 /\ hl_absolutely_continuous_on 1 g s = 1 -> hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_real_min (hl_drop (f x)) (hl_drop (g x)))) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23275 / ABSOLUTELY_CONTINUOUS_LIPSCHITZ_COMPOSE   (hash md5:4e4ee3182d94a8a87699cecab151aec0)
Theorem hlt_ABSOLUTELY_CONTINUOUS_LIPSCHITZ_COMPOSE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall B :e R, hl_absolutely_continuous_on M g s = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R M) g s) = 1 /\ hl_IN (hl_ty_cart R M) y (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R M) g s) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> hl_absolutely_continuous_on N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23294 / ABSOLUTELY_CONTINUOUS_ON_ID   (hash md5:7bff70da91d73030e012bdabacf9cbbd)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_ID : forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on 1 (fun x :e hl_ty_cart R 1 => x) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23310 / LIPSCHITZ_IMP_ABSOLUTELY_CONTINUOUS   (hash md5:e390786029c744b888c6d29b5969a663)
Theorem hlt_LIPSCHITZ_IMP_ABSOLUTELY_CONTINUOUS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall B :e R, hl_bounded 1 s = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ hl_IN (hl_ty_cart R 1) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) -> hl_absolutely_continuous_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23322 / ABSOLUTELY_CONTINUOUS_ON_IMP_UNIFORMLY_CONTINUOUS   (hash md5:177c8550069a66d0709baeaa23820363)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_IMP_UNIFORMLY_CONTINUOUS : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ hl_is_interval 1 s = 1 -> hl_uniformly_continuous_on 1 N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23346 / ABSOLUTELY_CONTINUOUS_ON_IMP_CONTINUOUS   (hash md5:1c6a63a2f32fd67bb5237102a1f8e601)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_IMP_CONTINUOUS : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on A f s = 1 /\ hl_is_interval 1 s = 1 -> hl_continuous_on 1 A f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23352 / ABSOLUTELY_CONTINUOUS_ON_IMP_HAS_BOUNDED_VARIATION_ON   (hash md5:d0a2c45e61c02727eda93ec30581f7c1)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_IMP_HAS_BOUNDED_VARIATION_ON : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ hl_bounded 1 s = 1 -> hl_has_bounded_variation_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23362 / ABSOLUTELY_CONTINUOUS_ON_BILINEAR   (hash md5:c20cab6d882946cd7012a524380c030b)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_BILINEAR : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall f :e hl_ty_cart R M :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_bilinear M N P bop = 1 /\ (hl_absolutely_continuous_on M f s = 1 /\ (hl_absolutely_continuous_on N g s = 1 /\ (hl_is_interval 1 s = 1 /\ hl_bounded 1 s = 1))) -> hl_absolutely_continuous_on P (fun x :e hl_ty_cart R 1 => bop (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23437 / ABSOLUTELY_CONTINUOUS_ON_MUL   (hash md5:8a5f09cb51eb539ffbb1c6aee2aeed36)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_MUL : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on 1 f s = 1 /\ (hl_absolutely_continuous_on N g s = 1 /\ (hl_is_interval 1 s = 1 /\ hl_bounded 1 s = 1)) -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vmul N (hl_drop (f x)) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23447 / ABSOLUTELY_CONTINUOUS_ON_VSUM   (hash md5:c7072c10b54d522a6382e53ca3df9889)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_VSUM : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1 :^: A, forall s :e 2 :^: hl_ty_cart R 1, forall k :e 2 :^: A, hl_FINITE A k = 1 /\ (forall i :e A, hl_IN A i k = 1 -> hl_absolutely_continuous_on N (f i) s = 1) -> hl_absolutely_continuous_on N (fun x :e hl_ty_cart R 1 => hl_vsum A N k (fun i :e A => f i x)) s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23459 / OPERATIVE_ABSOLUTELY_CONTINUOUS_ON   (hash md5:49eda5806fe5c1aa04ea834103359de3)
Theorem hlt_OPERATIVE_ABSOLUTELY_CONTINUOUS_ON : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_operative 2 1 hl_and (hl_absolutely_continuous_on N f) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23468 / ABSOLUTELY_CONTINUOUS_ON_DIVISION   (hash md5:90d9e84106b18a5af47580b8a9a31a18)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_DIVISION : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall d :e 2 :^: (2 :^: hl_ty_cart R 1), hl_division_of 1 d (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> ((forall k :e 2 :^: hl_ty_cart R 1, hl_IN (2 :^: hl_ty_cart R 1) k d = 1 -> hl_absolutely_continuous_on N f k = 1) <-> hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:23477 / ABSOLUTELY_CONTINUOUS_ON_COMBINE   (hash md5:45cdb01c46bbce46614c8f7a52c8bc5a)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_COMBINE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b c :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop c) = 1 /\ hl_real_le (hl_drop c) (hl_drop b) = 1 -> (hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 <-> hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a c) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_absolutely_continuous_on N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) c b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:23492 / ABSOLUTELY_CONTINUOUS_ON_SING   (hash md5:bd7396b9505accfe8f40a8df183e4709)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_SING : forall A:set, A <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_absolutely_continuous_on A f (hl_INSERT (hl_ty_cart R 1) a (hl_EMPTY (hl_ty_cart R 1))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23498 / ABSOLUTELY_CONTINUOUS_ON_INTERIOR   (hash md5:fdbdd387fa544e24c2f9fde4643bbd07)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_INTERIOR : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f (hl_interior 1 s) = 1 /\ hl_continuous_on 1 N f s = 1 -> hl_absolutely_continuous_on N f s = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23778 / ABSOLUTELY_CONTINUOUS_ON_INTERIOR_EQ   (hash md5:fd5d616c8897d170d44ae5ec99630d21)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_INTERIOR_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_continuous_on 1 N f s = 1 -> (hl_absolutely_continuous_on N f (hl_interior 1 s) = 1 <-> hl_absolutely_continuous_on N f s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:23786 / ABSOLUTELY_CONTINUOUS_ON_CLOSURE   (hash md5:8a4d844f36ffd767d48857bcfeea5ecd)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_CLOSURE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ (hl_continuous_on 1 N f (hl_closure 1 s) = 1 /\ hl_absolutely_continuous_on N f (hl_interior 1 s) = 1) -> hl_absolutely_continuous_on N f (hl_closure 1 s) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23795 / ABSOLUTELY_CONTINUOUS_ON_CLOSURE_EQ   (hash md5:c4983e81ce9f6a46f9eac35800f9ff28)
Theorem hlt_ABSOLUTELY_CONTINUOUS_ON_CLOSURE_EQ : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 /\ hl_continuous_on 1 N f (hl_closure 1 s) = 1 -> (hl_absolutely_continuous_on N f (hl_closure 1 s) = 1 <-> hl_absolutely_continuous_on N f s = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:23803 / ABSOLUTELY_CONTINUOUS_EXTENDS_TO_CLOSURE   (hash md5:00146cbc42e0149f1275e5611d83de79)
Theorem hlt_ABSOLUTELY_CONTINUOUS_EXTENDS_TO_CLOSURE : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_absolutely_continuous_on N f s = 1 /\ hl_is_interval 1 s = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_absolutely_continuous_on N g (hl_closure 1 s) = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> g x = f x.
Admitted.

// HOL Light: Multivariate/integration.ml:23827 / rectifiable_path   (hash md5:ec7116bcd74e76d1c1993644208fcb5f)
Theorem hlt_rectifiable_path_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 <-> hl_path N g = 1 /\ hl_has_bounded_variation_on N g (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23831 / path_length   (hash md5:ad7e2876f5e0ffbb6d23aae9b01675f2)
Theorem hlt_path_length_thm : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path_length N g = hl_vector_variation N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) g.
Admitted.

// HOL Light: Multivariate/integration.ml:23835 / RECTIFIABLE_PATH_LIPSCHITZ_IMAGE   (hash md5:9b188c431e71b0bca594cfee2015d5b6)
Theorem hlt_RECTIFIABLE_PATH_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_rectifiable_path M g = 1 /\ (exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_path_image M g) = 1 /\ hl_IN (hl_ty_cart R M) y (hl_path_image M g) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> hl_rectifiable_path N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23847 / RECTIFIABLE_PATH_TRANSLATION_EQ   (hash md5:48f1c002e6db0d0c65581b81c563d7a5)
Theorem hlt_RECTIFIABLE_PATH_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) g) = 1 <-> hl_rectifiable_path N g = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23855 / RECTIFIABLE_PATH_LINEAR_IMAGE_EQ   (hash md5:328824c0c9e169f97ea3f6fe2a6d9cab)
Theorem hlt_RECTIFIABLE_PATH_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_rectifiable_path N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = 1 <-> hl_rectifiable_path M g = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:23873 / PATH_LENGTH_TRANSLATION   (hash md5:ae977cd6abc1834fbb63e121579f91ed)
Theorem hlt_PATH_LENGTH_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path_length N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vector_add N a x) g) = hl_path_length N g.
Admitted.

// HOL Light: Multivariate/integration.ml:23880 / PATH_LENGTH_ISOMETRIC_IMAGE   (hash md5:0affa2cb9e556c741e7163dc07d235ee)
Theorem hlt_PATH_LENGTH_ISOMETRIC_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R M, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y)) -> hl_path_length N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = hl_path_length M g.
Admitted.

// HOL Light: Multivariate/integration.ml:23885 / PATH_LENGTH_LINEAR_IMAGE   (hash md5:113dfa35b9bb95d8fbed7a585c5f0ca7)
Theorem hlt_PATH_LENGTH_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall g :e hl_ty_cart R M :^: hl_ty_cart R 1, hl_linear M N f = 1 /\ (forall x :e hl_ty_cart R M, hl_vector_norm N (f x) = hl_vector_norm M x) -> hl_path_length N (hl_o (hl_ty_cart R M) (hl_ty_cart R N) (hl_ty_cart R 1) f g) = hl_path_length M g.
Admitted.

// HOL Light: Multivariate/integration.ml:23894 / RECTIFIABLE_PATH_EQ   (hash md5:668d38cade37a7c066d98dd19979a3a5)
Theorem hlt_RECTIFIABLE_PATH_EQ : forall N:set, N <> Empty -> forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p t = q t) /\ hl_rectifiable_path N p = 1 -> hl_rectifiable_path N q = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23902 / PATH_LENGTH_EQ   (hash md5:48cfec4d6a5338e01909a93ff63e762b)
Theorem hlt_PATH_LENGTH_EQ : forall N:set, N <> Empty -> forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> p t = q t) -> hl_path_length N p = hl_path_length N q.
Admitted.

// HOL Light: Multivariate/integration.ml:23908 / PATH_LENGTH_SCALING   (hash md5:2d99248fadb4fa3b93140ca56e3d9155)
Theorem hlt_PATH_LENGTH_SCALING : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall c :e R, hl_rectifiable_path N g = 1 -> hl_path_length N (hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R 1) (fun x :e hl_ty_cart R N => hl_vmul N c x) g) = hl_real_mul (hl_real_abs c) (hl_path_length N g).
Admitted.

// HOL Light: Multivariate/integration.ml:23915 / BOUNDED_RECTIFIABLE_PATH_IMAGE   (hash md5:70e3c56cbf405a05dba7b6c143e8c394)
Theorem hlt_BOUNDED_RECTIFIABLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 -> hl_bounded N (hl_path_image N g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23919 / RECTIFIABLE_PATH_IMP_PATH   (hash md5:804d427a56cae6efa0e9f981ed45db29)
Theorem hlt_RECTIFIABLE_PATH_IMP_PATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 -> hl_path N g = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23923 / RECTIFIABLE_PATH_LINEPATH   (hash md5:56c78844cdb23a5a2471d1f09687e77c)
Theorem hlt_RECTIFIABLE_PATH_LINEPATH : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_rectifiable_path N (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23937 / RECTIFIABLE_PATH_REVERSEPATH   (hash md5:9579a0d58ac0adb2449148056bf253e0)
Theorem hlt_RECTIFIABLE_PATH_REVERSEPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N (hl_reversepath N g) = 1 <-> hl_rectifiable_path N g = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23950 / PATH_LENGTH_REVERSEPATH   (hash md5:f9bf3a10157299ac6b7089eb6a727462)
Theorem hlt_PATH_LENGTH_REVERSEPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_path_length N (hl_reversepath N g) = hl_path_length N g.
Admitted.

// HOL Light: Multivariate/integration.ml:23958 / RECTIFIABLE_PATH_SUBPATH_EQ   (hash md5:dc52cc1b45a1b44b027779b69cace813)
Theorem hlt_RECTIFIABLE_PATH_SUBPATH_EQ : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e hl_ty_cart R 1, hl_rectifiable_path N (hl_subpath (hl_ty_cart R N) s t g) = 1 <-> hl_path N (hl_subpath (hl_ty_cart R N) s t g) = 1 /\ hl_has_bounded_variation_on N g (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) s t) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:23976 / PATH_LENGTH_SUBPATH   (hash md5:37d68782e5fd62665d1226c89272d218)
Theorem hlt_PATH_LENGTH_SUBPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e hl_ty_cart R 1, hl_path_length N (hl_subpath (hl_ty_cart R N) s t g) = hl_vector_variation N (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) s t) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) g.
Admitted.

// HOL Light: Multivariate/integration.ml:23994 / RECTIFIABLE_PATH_SUBPATH   (hash md5:265556f88677c4e501d9e07038d53de1)
Theorem hlt_RECTIFIABLE_PATH_SUBPATH : forall N:set, N <> Empty -> forall u v :e hl_ty_cart R 1, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_IN (hl_ty_cart R 1) u (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) v (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_rectifiable_path N (hl_subpath (hl_ty_cart R N) u v g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24013 / RECTIFIABLE_PATH_JOIN   (hash md5:83539000ce6256fc2fa9dca9f1cba45c)
Theorem hlt_RECTIFIABLE_PATH_JOIN : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N g1 = hl_pathstart N g2 -> (hl_rectifiable_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 <-> hl_rectifiable_path N g1 = 1 /\ hl_rectifiable_path N g2 = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:24056 / RECTIFIABLE_PATH_JOIN_IMP   (hash md5:63b97a06e739d39c7a0e51de13df1260)
Theorem hlt_RECTIFIABLE_PATH_JOIN_IMP : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g1 = 1 /\ (hl_rectifiable_path N g2 = 1 /\ hl_pathfinish N g1 = hl_pathstart N g2) -> hl_rectifiable_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24063 / RECTIFIABLE_PATH_JOIN_EQ   (hash md5:1b39fa4c4f734ccbce7774699a8da55f)
Theorem hlt_RECTIFIABLE_PATH_JOIN_EQ : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g1 = 1 /\ hl_rectifiable_path N g2 = 1 -> (hl_rectifiable_path N (hl_poly_add (hl_ty_cart R N) g1 g2) = 1 <-> hl_pathfinish N g1 = hl_pathstart N g2).
Admitted.

// HOL Light: Multivariate/integration.ml:24072 / RECTIFIABLE_PATH_SYM   (hash md5:f6de80b084133a8ff3db60abfc5fc7fd)
Theorem hlt_RECTIFIABLE_PATH_SYM : forall N:set, N <> Empty -> forall p q :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_pathfinish N p = hl_pathstart N q /\ hl_pathfinish N q = hl_pathstart N p -> (hl_rectifiable_path N (hl_poly_add (hl_ty_cart R N) p q) = 1 <-> hl_rectifiable_path N (hl_poly_add (hl_ty_cart R N) q p) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:24078 / RECTIFIABLE_PATH_SHIFTPATH   (hash md5:710b8d7a977f1a60679a9c4c677258c3)
Theorem hlt_RECTIFIABLE_PATH_SHIFTPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_rectifiable_path N (hl_shiftpath N a g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24114 / PATH_LENGTH_SHIFTPATH   (hash md5:d332839664422af58a88f4f85ed55fad)
Theorem hlt_PATH_LENGTH_SHIFTPATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_pathfinish N g = hl_pathstart N g /\ hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_path_length N (hl_shiftpath N a g) = hl_path_length N g.
Admitted.

// HOL Light: Multivariate/integration.ml:24161 / PATH_LENGTH_POS_LE   (hash md5:bca0307b4f21618124aefc6b466430ee)
Theorem hlt_PATH_LENGTH_POS_LE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_path_length N g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24166 / PATH_LENGTH_EQ_0   (hash md5:994ef3589548b244f5f519651e404890)
Theorem hlt_PATH_LENGTH_EQ_0 : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 -> (hl_path_length N g = hl_real_of_num (hl_NUMERAL hl_zero) <-> exists c :e hl_ty_cart R N, forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> g t = c).
Admitted.

// HOL Light: Multivariate/integration.ml:24174 / SIMPLE_PATH_LENGTH_POS_LT   (hash md5:8bf9aeb8246a92d76fe68fd10277464e)
Theorem hlt_SIMPLE_PATH_LENGTH_POS_LT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ hl_simple_path N g = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_path_length N g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24185 / PATH_LENGTH_JOIN   (hash md5:34052419ef56bb002b8ea4dba8ba17f3)
Theorem hlt_PATH_LENGTH_JOIN : forall N:set, N <> Empty -> forall g1 g2 :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g1 = 1 /\ (hl_rectifiable_path N g2 = 1 /\ hl_pathfinish N g1 = hl_pathstart N g2) -> hl_path_length N (hl_poly_add (hl_ty_cart R N) g1 g2) = hl_real_add (hl_path_length N g1) (hl_path_length N g2).
Admitted.

// HOL Light: Multivariate/integration.ml:24225 / PATH_LENGTH_COMBINE   (hash md5:84eb15204196556ca48350171569e0bc)
Theorem hlt_PATH_LENGTH_COMBINE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall t :e hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_add (hl_path_length N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) t g)) (hl_path_length N (hl_subpath (hl_ty_cart R N) t (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) g)) = hl_path_length N g.
Admitted.

// HOL Light: Multivariate/integration.ml:24235 / RECTIFIABLE_PATH_COMBINE   (hash md5:28513694c75c2ae4ed705f0cb9557fb6)
Theorem hlt_RECTIFIABLE_PATH_COMBINE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> (hl_rectifiable_path N g = 1 <-> hl_rectifiable_path N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) t g) = 1 /\ hl_rectifiable_path N (hl_subpath (hl_ty_cart R N) t (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))) g) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:24253 / LIPSCHITZ_IMP_RECTIFIABLE_PATH   (hash md5:5eac2a4cbcb1bfbf599a294343f617f9)
Theorem hlt_LIPSCHITZ_IMP_RECTIFIABLE_PATH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall b :e R, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (g x) (g y))) (hl_real_mul b (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) -> hl_rectifiable_path N g = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24262 / PATH_LENGTH_LIPSCHITZ   (hash md5:1c60306ebb0df08847c582fb59a6750f)
Theorem hlt_PATH_LENGTH_LIPSCHITZ : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall b :e R, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (g x) (g y))) (hl_real_mul b (hl_vector_norm 1 (hl_vector_sub 1 x y))) = 1) -> hl_real_le (hl_path_length N g) b = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24272 / DIST_POINTS_LE_PATH_LENGTH   (hash md5:b81c84d92797f72f04b9e72aad6ba92d)
Theorem hlt_DIST_POINTS_LE_PATH_LENGTH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) b (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (g a) (g b))) (hl_path_length N g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24285 / DIST_ENDPOINTS_LE_PATH_LENGTH   (hash md5:3bdaffc1734d7260ed0d82127017213e)
Theorem hlt_DIST_ENDPOINTS_LE_PATH_LENGTH : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathstart N g) (hl_pathfinish N g))) (hl_path_length N g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24292 / PATH_LENGTH_EQ_LINE_SEGMENT   (hash md5:d4df9b9b590faf3df01cea546ecf5676)
Theorem hlt_PATH_LENGTH_EQ_LINE_SEGMENT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ hl_path_length N g = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathstart N g) (hl_pathfinish N g)) -> hl_path_image N g = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_pathstart N g) (hl_pathfinish N g)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/integration.ml:24330 / PATH_LENGTH_SUBPATH_LE   (hash md5:2f0a085fea37d91e73396cc4be9caf81)
Theorem hlt_PATH_LENGTH_SUBPATH_LE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s t :e hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_IN (hl_ty_cart R 1) s (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1) -> hl_real_le (hl_path_length N (hl_subpath (hl_ty_cart R N) s t g)) (hl_path_length N g) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24359 / RECTIFIABLE_PATH_IMAGE_SUBSET_CBALL   (hash md5:05a0fa7ddf244f3c54fcf375f3e83edc)
Theorem hlt_RECTIFIABLE_PATH_IMAGE_SUBSET_CBALL : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) (hl_cball N (hl_pair (hl_ty_cart R N) R (hl_pathstart N g) (hl_path_length N g))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24381 / PATH_LENGTH_LINEPATH   (hash md5:3a75729d7642ad239ae54ad8bfd198d6)
Theorem hlt_PATH_LENGTH_LINEPATH : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_path_length N (hl_linepath N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b).
Admitted.

// HOL Light: Multivariate/integration.ml:24391 / RECTIFIABLE_PATH_REPARAMETRIZATION   (hash md5:8603a9ee373ff2e0db1d6c017388466a)
Theorem hlt_RECTIFIABLE_PATH_REPARAMETRIZATION : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall h h' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ hl_homeomorphism 1 1 (hl_pair (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_pair (hl_ty_cart R 1 :^: hl_ty_cart R 1) (hl_ty_cart R 1 :^: hl_ty_cart R 1) h h') = 1 -> hl_rectifiable_path N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g h) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24404 / PATH_LENGTH_REPARAMETRIZATION   (hash md5:ea811abd5ad56ec071fb8b4c8fc36c37)
Theorem hlt_PATH_LENGTH_REPARAMETRIZATION : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall h h' :e hl_ty_cart R 1 :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ hl_homeomorphism 1 1 (hl_pair (2 :^: hl_ty_cart R 1) (2 :^: hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) (hl_pair (hl_ty_cart R 1 :^: hl_ty_cart R 1) (hl_ty_cart R 1 :^: hl_ty_cart R 1) h h') = 1 -> hl_path_length N (hl_o (hl_ty_cart R 1) (hl_ty_cart R N) (hl_ty_cart R 1) g h) = hl_path_length N g.
Admitted.

// HOL Light: Multivariate/integration.ml:24414 / ARC_LENGTH_UNIQUE   (hash md5:235fec70895208d6bf1d84bd8d8c3bbf)
Theorem hlt_ARC_LENGTH_UNIQUE : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_arc N g = 1 /\ (hl_rectifiable_path N h = 1 /\ (hl_arc N h = 1 /\ hl_path_image N g = hl_path_image N h))) -> hl_path_length N g = hl_path_length N h.
Admitted.

// HOL Light: Multivariate/integration.ml:24438 / CONTINUOUS_ON_PATH_LENGTH_SUBPATH_RIGHT   (hash md5:990fd837e5d600ba4049bbf11f0fd757)
Theorem hlt_CONTINUOUS_ON_PATH_LENGTH_SUBPATH_RIGHT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_continuous_on 1 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_path_length N (hl_subpath (hl_ty_cart R N) a x g))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24477 / CONTINUOUS_ON_PATH_LENGTH_SUBPATH_LEFT   (hash md5:f31ce469ca307ef622143e914299af97)
Theorem hlt_CONTINUOUS_ON_PATH_LENGTH_SUBPATH_LEFT : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a :e hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ hl_IN (hl_ty_cart R 1) a (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_continuous_on 1 1 (fun x :e hl_ty_cart R 1 => hl_lift (hl_path_length N (hl_subpath (hl_ty_cart R N) x a g))) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24491 / ARC_LENGTH_REPARAMETRIZATION   (hash md5:5c8ff9f3189447475d1ece3fb536d1fd)
Theorem hlt_ARC_LENGTH_REPARAMETRIZATION : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 -> exists h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N h = 1 /\ (hl_path_image N h = hl_path_image N g /\ (hl_pathstart N h = hl_pathstart N g /\ (hl_pathfinish N h = hl_pathfinish N g /\ (hl_path_length N h = hl_path_length N g /\ ((hl_arc N g = 1 -> hl_arc N h = 1) /\ ((hl_simple_path N g = 1 -> hl_simple_path N h = 1) /\ ((forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_path_length N (hl_subpath (hl_ty_cart R N) (hl_vec 1 (hl_NUMERAL hl_zero)) t h) = hl_real_mul (hl_path_length N g) (hl_drop t)) /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (h x) (h y))) (hl_real_mul (hl_path_length N g) (hl_distance 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) x y))) = 1))))))).
Admitted.

// HOL Light: Multivariate/integration.ml:24625 / SHORTEST_PATH_EXISTS_GEN   (hash md5:9f34216afab4f3674482c9220a7ab80a)
Theorem hlt_SHORTEST_PATH_EXISTS_GEN : forall N:set, N <> Empty -> forall P :e 2 :^: hl_ty_cart R N :^: hl_ty_cart R N :^: (2 :^: hl_ty_cart R N), (forall h :e hl_ty_cart R N :^: hl_ty_cart R 1 :^: omega, forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, (forall n :e omega, hl_rectifiable_path N (h n) = 1 /\ P (hl_path_image N (h n)) (hl_pathstart N (h n)) (hl_pathfinish N (h n)) = 1) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall n :e omega, forall x :e hl_ty_cart R 1, hl_ge n N1 = 1 /\ hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (h n x) (g x))) e1 = 1) -> P (hl_path_image N g) (hl_pathstart N g) (hl_pathfinish N g) = 1) /\ ((exists t :e 2 :^: hl_ty_cart R N, hl_bounded N t = 1 /\ forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ P (hl_path_image N g) (hl_pathstart N g) (hl_pathfinish N g) = 1 -> ~ hl_DISJOINT (hl_ty_cart R N) t (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_path_image N g)) = 1) /\ (exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ P (hl_path_image N g) (hl_pathstart N g) (hl_pathfinish N g) = 1)) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (P (hl_path_image N g) (hl_pathstart N g) (hl_pathfinish N g) = 1 /\ forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N h = 1 /\ P (hl_path_image N h) (hl_pathstart N h) (hl_pathfinish N h) = 1 -> hl_real_le (hl_path_length N g) (hl_path_length N h) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:24774 / SHORTEST_PATH_EXISTS_STRADDLE   (hash md5:28b828537bd254760021fb14f8682657)
Theorem hlt_SHORTEST_PATH_EXISTS_STRADDLE : forall N:set, N <> Empty -> forall s t a b :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_compact N a = 1 /\ (hl_compact N b = 1 /\ (exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_path_image N g) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) a = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) b = 1)))))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_path_image N g) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) a = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathfinish N g) b = 1 /\ forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N h = 1 /\ (hl_SUBSET (hl_ty_cart R N) t (hl_path_image N h) = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N h) a = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N h) b = 1))) -> hl_real_le (hl_path_length N g) (hl_path_length N h) = 1)))).
Admitted.

// HOL Light: Multivariate/integration.ml:24871 / SHORTEST_PATH_EXISTS   (hash md5:26c46c3cdc9c86e47cbcbd2896002aac)
Theorem hlt_SHORTEST_PATH_EXISTS : forall N:set, N <> Empty -> forall s a b :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_compact N a = 1 /\ (hl_compact N b = 1 /\ (exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) a = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N g) b = 1))))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N g) a = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathfinish N g) b = 1 /\ forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N h = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_pathstart N h) a = 1 /\ hl_IN (hl_ty_cart R N) (hl_pathfinish N h) b = 1)) -> hl_real_le (hl_path_length N g) (hl_path_length N h) = 1))).
Admitted.

// HOL Light: Multivariate/integration.ml:24885 / SHORTEST_ARC_EXISTS   (hash md5:e7cbd093d7fc9c7c968582e6194af3e6)
Theorem hlt_SHORTEST_ARC_EXISTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_closed N s = 1 /\ (~ a = b /\ (exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_pathstart N g = a /\ hl_pathfinish N g = b)))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_arc N g = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N g) s = 1 /\ (hl_pathstart N g = a /\ (hl_pathfinish N g = b /\ forall h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N h = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_path_image N h) s = 1 /\ (hl_pathstart N h = a /\ hl_pathfinish N h = b)) -> hl_real_le (hl_path_length N g) (hl_path_length N h) = 1)))).
Admitted.

// HOL Light: Multivariate/integration.ml:24940 / ARC_LENGTH_MINIMAL   (hash md5:1cca3a8e1ebd5efd13579221deeb8bf3)
Theorem hlt_ARC_LENGTH_MINIMAL : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_arc N g = 1 /\ (hl_rectifiable_path N h = 1 /\ hl_path_image N g = hl_path_image N h)) -> hl_real_le (hl_path_length N g) (hl_path_length N h) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:24981 / SIMPLE_PATH_LENGTH_MINIMAL   (hash md5:e962aec7d5e61bccf43004fc6a34423d)
Theorem hlt_SIMPLE_PATH_LENGTH_MINIMAL : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_simple_path N g = 1 /\ (hl_rectifiable_path N h = 1 /\ hl_path_image N g = hl_path_image N h)) -> hl_real_le (hl_path_length N g) (hl_path_length N h) = 1.
Admitted.

// HOL Light: Multivariate/integration.ml:25712 / SIMPLE_PATH_LENGTH_UNIQUE   (hash md5:245a4626c5152bf4a38da41371ed1ca6)
Theorem hlt_SIMPLE_PATH_LENGTH_UNIQUE : forall N:set, N <> Empty -> forall g h :e hl_ty_cart R N :^: hl_ty_cart R 1, hl_rectifiable_path N g = 1 /\ (hl_simple_path N g = 1 /\ (hl_rectifiable_path N h = 1 /\ (hl_simple_path N h = 1 /\ hl_path_image N g = hl_path_image N h))) -> hl_path_length N g = hl_path_length N h.
Admitted.

// HOL Light: Multivariate/integration.ml:25726 / RECTIFIABLE_PATH_DIFFERENTIABLE   (hash md5:d2b63a9fe9d03af01ce171e9f90e12d0)
Theorem hlt_RECTIFIABLE_PATH_DIFFERENTIABLE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_COUNTABLE (hl_ty_cart R 1) s = 1 /\ (hl_path N g = 1 /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_differentiable 1 N g (hl_at 1 t) = 1)) -> (hl_rectifiable_path N g = 1 <-> hl_absolutely_integrable_on 1 N (fun t :e hl_ty_cart R 1 => hl_vector_derivative N g (hl_at 1 t)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/integration.ml:25738 / PATH_LENGTH_DIFFERENTIABLE   (hash md5:0abc12730dabec9c8669315018e33537)
Theorem hlt_PATH_LENGTH_DIFFERENTIABLE : forall N:set, N <> Empty -> forall g :e hl_ty_cart R N :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_COUNTABLE (hl_ty_cart R 1) s = 1 /\ (hl_rectifiable_path N g = 1 /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_DIFF (hl_ty_cart R 1) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) s) = 1 -> hl_differentiable 1 N g (hl_at 1 t) = 1)) -> hl_path_length N g = hl_drop (hl_integral 1 1 (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (fun t :e hl_ty_cart R 1 => hl_lift (hl_vector_norm N (hl_vector_derivative N g (hl_at 1 t))))).
Admitted.

// HOL Light: Multivariate/integration.ml:25753 / PICARD_LINDELOF_RIGHT   (hash md5:76aabbcbf8c22d2ddd828a24263c0367)
Theorem hlt_PICARD_LINDELOF_RIGHT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R (hl_ty_finite_sum 1 N), forall f :e hl_ty_cart R N :^: hl_ty_cart R (hl_ty_finite_sum 1 N), forall t0 :e hl_ty_cart R 1, forall u0 :e hl_ty_cart R N, forall r0 r1 B c :e R, hl_open (hl_ty_finite_sum 1 N) s = 1 /\ (hl_continuous_on (hl_ty_finite_sum 1 N) N f s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r0 = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r1 = 1 /\ (hl_real_lt (hl_real_mul B r0) r1 = 1 /\ (hl_real_lt (hl_real_mul c r0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_SUBSET (hl_ty_cart R (hl_ty_finite_sum 1 N)) (hl_PCROSS R 1 N (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) t0 (hl_vector_add 1 t0 (hl_lift r0))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) (hl_cball N (hl_pair (hl_ty_cart R N) R u0 r1))) s = 1 /\ ((forall x :e hl_ty_cart R (hl_ty_finite_sum 1 N), hl_IN (hl_ty_cart R (hl_ty_finite_sum 1 N)) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) B = 1) /\ (forall t :e hl_ty_cart R 1, forall v w :e hl_ty_cart R N, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) t0 (hl_vector_add 1 t0 (hl_lift r0))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R N) v (hl_cball N (hl_pair (hl_ty_cart R N) R u0 r1)) = 1 /\ hl_IN (hl_ty_cart R N) w (hl_cball N (hl_pair (hl_ty_cart R N) R u0 r1)) = 1) -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f (hl_pastecart R 1 N t v)) (f (hl_pastecart R 1 N t w)))) (hl_real_mul c (hl_vector_norm N (hl_vector_sub N v w))) = 1)))))))) -> exists u :e hl_ty_cart R N :^: hl_ty_cart R 1, u t0 = u0 /\ ((forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) t0 (hl_vector_add 1 t0 (hl_lift r0))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_vector_derivative N u (f (hl_pastecart R 1 N t (u t))) (hl_within (hl_ty_cart R 1) (hl_at 1 t) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) t0 (hl_vector_add 1 t0 (hl_lift r0))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1) /\ forall v :e hl_ty_cart R N :^: hl_ty_cart R 1, (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) t0 (hl_vector_add 1 t0 (hl_lift r0))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_IN (hl_ty_cart R (hl_ty_finite_sum 1 N)) (hl_pastecart R 1 N t (v t)) s = 1) /\ (v t0 = u0 /\ (forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) t0 (hl_vector_add 1 t0 (hl_lift r0))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_has_vector_derivative N v (f (hl_pastecart R 1 N t (v t))) (hl_within (hl_ty_cart R 1) (hl_at 1 t) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) t0 (hl_vector_add 1 t0 (hl_lift r0))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) = 1)) -> forall t :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) t (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) t0 (hl_vector_add 1 t0 (hl_lift r0))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> v t = u t).
Admitted.

