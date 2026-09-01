// hol2mg certification module (private): shard measure of profile multivariate.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Multivariate/measure.ml:21 / has_measure   (hash md5:3a97ee1b609dbe192353288586cf15e4)
// not bridged: 
Theorem has_measure_thm : forall A:set, A <> Empty -> forall m :e R, forall s c= R :^: idx A, has_measure A s m <-> has_integral A 1 (fun x:set => vec 1 1) (lift m) s.
Admitted.

// HOL Light: Multivariate/measure.ml:24 / measurable   (hash md5:3a0d7a7fa848a2026f38e3919f3e59b8)
// not bridged: 
Theorem measurable_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s <-> exists m :e R, has_measure A s m.
Admitted.

// HOL Light: Multivariate/measure.ml:27 / measure   (hash md5:b669e44af267e2756b9373f9bdb2f76b)
// not bridged: 
Theorem measure_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, measure A s = choose_in R (has_measure A s).
Admitted.

// HOL Light: Multivariate/measure.ml:30 / HAS_MEASURE_MEASURE   (hash md5:30b2be25bb17ba1141e2c6bc5313b16d)
// not bridged: 
Theorem HAS_MEASURE_MEASURE : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s <-> has_measure A s (measure A s).
Admitted.

// HOL Light: Multivariate/measure.ml:34 / HAS_MEASURE_UNIQUE   (hash md5:f11d204a61fe83f7e29ce4b704720990)
// not bridged: 
Theorem HAS_MEASURE_UNIQUE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall m1 m2 :e R, has_measure A s m1 /\ has_measure A s m2 -> m1 = m2.
Admitted.

// HOL Light: Multivariate/measure.ml:38 / MEASURE_UNIQUE   (hash md5:940b1b6ee7e7fd5837d72d93fdaff175)
// not bridged: 
Theorem MEASURE_UNIQUE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall m :e R, has_measure A s m -> measure A s = m.
Admitted.

// HOL Light: Multivariate/measure.ml:42 / HAS_MEASURE_MEASURABLE_MEASURE   (hash md5:fdad3b0b2cecace7ad826e25ae1002f2)
// not bridged: 
Theorem HAS_MEASURE_MEASURABLE_MEASURE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall m :e R, has_measure A s m <-> measurable A s /\ measure A s = m.
Admitted.

// HOL Light: Multivariate/measure.ml:46 / HAS_MEASURE_IMP_MEASURABLE   (hash md5:80299835be793ed2dc9f56b03cdbc3d6)
// not bridged: 
Theorem HAS_MEASURE_IMP_MEASURABLE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall m :e R, has_measure A s m -> measurable A s.
Admitted.

// HOL Light: Multivariate/measure.ml:50 / HAS_MEASURE   (hash md5:8416b350b4990f52339480a02dd081f8)
// not bridged: 
Theorem HAS_MEASURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, has_measure N s m <-> has_integral N 1 (fun x:set => if x :e s then vec 1 1 else vec 1 0) (lift m) (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:56 / MEASURABLE   (hash md5:6a95ef9b4a2a30e695e0f7631d9dbc58)
// not bridged: 
Theorem MEASURABLE : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s <-> integrable_on 1 A (fun x:set => vec 1 1) s.
Admitted.

// HOL Light: Multivariate/measure.ml:61 / MEASURABLE_INTEGRABLE   (hash md5:9f2b603c0b3dc5332932c955dfd1aa86)
// not bridged: 
Theorem MEASURABLE_INTEGRABLE : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s <-> integrable_on 1 A (fun x:set => if x :e s then vec 1 1 else vec 1 0) (R :^: idx A).
Admitted.

// HOL Light: Multivariate/measure.ml:67 / MEASURE_INTEGRAL   (hash md5:710f7502851b68afcb4c655afaad7743)
// not bridged: 
Theorem MEASURE_INTEGRAL : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s -> measure A s = drop (integral 1 A s (fun x:set => vec 1 1)).
Admitted.

// HOL Light: Multivariate/measure.ml:74 / MEASURE_INTEGRAL_UNIV   (hash md5:2c592c2155f91d792726ca4bb943a1f1)
// not bridged: 
Theorem MEASURE_INTEGRAL_UNIV : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s -> measure A s = drop (integral 1 A (R :^: idx A) (fun x:set => if x :e s then vec 1 1 else vec 1 0)).
Admitted.

// HOL Light: Multivariate/measure.ml:83 / INTEGRAL_MEASURE   (hash md5:0302a7697073cef6c5dffc2c00205159)
// not bridged: 
Theorem INTEGRAL_MEASURE : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s -> integral 1 A s (fun x:set => vec 1 1) = lift (measure A s).
Admitted.

// HOL Light: Multivariate/measure.ml:87 / INTEGRAL_MEASURE_UNIV   (hash md5:5b8db148ccc97d7a9b4ec2586bf84f3b)
// not bridged: 
Theorem INTEGRAL_MEASURE_UNIV : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s -> integral 1 A (R :^: idx A) (fun x:set => if x :e s then vec 1 1 else vec 1 0) = lift (measure A s).
Admitted.

// HOL Light: Multivariate/measure.ml:93 / INTEGRABLE_ON_INDICATOR   (hash md5:05c81b6509c3cdfc20b3bf8ad08ef179)
// not bridged: 
Theorem INTEGRABLE_ON_INDICATOR : forall N:set, N <> Empty -> forall s t c= R :^: idx N, integrable_on 1 N (indicator N s) t <-> measurable N (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:101 / ABSOLUTELY_INTEGRABLE_ON_INDICATOR   (hash md5:87ba4a94d59fe0185608e18c88e883c7)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ON_INDICATOR : forall N:set, N <> Empty -> forall s t c= R :^: idx N, absolutely_integrable_on 1 N (indicator N s) t <-> measurable N (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:108 / INTEGRAL_INDICATOR   (hash md5:41eda5d1e0a74b99cfd5a8b70acac2a6)
// not bridged: 
Theorem INTEGRAL_INDICATOR : forall M:set, M <> Empty -> forall s t c= R :^: idx M, measurable M (s :/\: t) -> integral 1 M t (indicator M s) = lift (measure M (s :/\: t)).
Admitted.

// HOL Light: Multivariate/measure.ml:114 / HAS_MEASURE_INTERVAL   (hash md5:56fff681f0eee7d6cba4b126b0b9c5d7)
// not bridged: 
Theorem HAS_MEASURE_INTERVAL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, has_measure N (closed_interval N (seq_cons (a,b) seq_nil)) (content N (closed_interval N (seq_cons (a,b) seq_nil)))) /\ forall a b :e R :^: idx N, has_measure N (open_interval N (a,b)) (content N (closed_interval N (seq_cons (a,b) seq_nil))).
Admitted.

// HOL Light: Multivariate/measure.ml:129 / MEASURABLE_INTERVAL   (hash md5:54f8a0b944abae11c41b192fc3543224)
// not bridged: 
Theorem MEASURABLE_INTERVAL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, measurable N (closed_interval N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, measurable N (open_interval N (a,b)).
Admitted.

// HOL Light: Multivariate/measure.ml:134 / MEASURE_INTERVAL   (hash md5:bbaf122c51b916e15ec539553c42a389)
// not bridged: 
Theorem MEASURE_INTERVAL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, measure N (closed_interval N (seq_cons (a,b) seq_nil)) = content N (closed_interval N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, measure N (open_interval N (a,b)) = content N (closed_interval N (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:140 / MEASURE_INTERVAL_1   (hash md5:250b41c1d3147f453a30517257139c77)
// not bridged: 
Theorem MEASURE_INTERVAL_1 : (forall a b :e R :^: idx 1, measure 1 (closed_interval 1 (seq_cons (a,b) seq_nil)) = if drop a <= drop b then drop b + - drop a else 0) /\ forall a b :e R :^: idx 1, measure 1 (open_interval 1 (a,b)) = if drop a <= drop b then drop b + - drop a else 0.
Admitted.

// HOL Light: Multivariate/measure.ml:148 / MEASURE_INTERVAL_1_ALT   (hash md5:63beff9096f7c0a89d3d67a589ac165d)
// not bridged: 
Theorem MEASURE_INTERVAL_1_ALT : (forall a b :e R :^: idx 1, measure 1 (closed_interval 1 (seq_cons (a,b) seq_nil)) = if drop a < drop b then drop b + - drop a else 0) /\ forall a b :e R :^: idx 1, measure 1 (open_interval 1 (a,b)) = if drop a < drop b then drop b + - drop a else 0.
Admitted.

// HOL Light: Multivariate/measure.ml:155 / MEASURE_INTERVAL_2   (hash md5:1f2d1065433625b547f5831c2dc95370)
// not bridged: 
Theorem MEASURE_INTERVAL_2 : (forall a b :e R :^: idx_n 2, measure (idx_n 2) (closed_interval (idx_n 2) (seq_cons (a,b) seq_nil)) = if a 1 <= b 1 /\ a 2 <= b 2 then (b 1 + - a 1) * (b 2 + - a 2) else 0) /\ forall a b :e R :^: idx_n 2, measure (idx_n 2) (open_interval (idx_n 2) (a,b)) = if a 1 <= b 1 /\ a 2 <= b 2 then (b 1 + - a 1) * (b 2 + - a 2) else 0.
Admitted.

// HOL Light: Multivariate/measure.ml:167 / MEASURE_INTERVAL_2_ALT   (hash md5:374e47fba0d4a4154988668b4a8ca3a5)
// not bridged: 
Theorem MEASURE_INTERVAL_2_ALT : (forall a b :e R :^: idx_n 2, measure (idx_n 2) (closed_interval (idx_n 2) (seq_cons (a,b) seq_nil)) = if a 1 < b 1 /\ a 2 < b 2 then (b 1 + - a 1) * (b 2 + - a 2) else 0) /\ forall a b :e R :^: idx_n 2, measure (idx_n 2) (open_interval (idx_n 2) (a,b)) = if a 1 < b 1 /\ a 2 < b 2 then (b 1 + - a 1) * (b 2 + - a 2) else 0.
Admitted.

// HOL Light: Multivariate/measure.ml:183 / MEASURE_INTERVAL_3   (hash md5:b640f25286d45d98fae7745b0f81cbe4)
// not bridged: 
Theorem MEASURE_INTERVAL_3 : (forall a b :e R :^: idx_n 3, measure (idx_n 3) (closed_interval (idx_n 3) (seq_cons (a,b) seq_nil)) = if a 1 <= b 1 /\ (a 2 <= b 2 /\ a 3 <= b 3) then (b 1 + - a 1) * (b 2 + - a 2) * (b 3 + - a 3) else 0) /\ forall a b :e R :^: idx_n 3, measure (idx_n 3) (open_interval (idx_n 3) (a,b)) = if a 1 <= b 1 /\ (a 2 <= b 2 /\ a 3 <= b 3) then (b 1 + - a 1) * (b 2 + - a 2) * (b 3 + - a 3) else 0.
Admitted.

// HOL Light: Multivariate/measure.ml:195 / MEASURE_INTERVAL_3_ALT   (hash md5:e7f3352174144fb85e1640d365bf1fa7)
// not bridged: 
Theorem MEASURE_INTERVAL_3_ALT : (forall a b :e R :^: idx_n 3, measure (idx_n 3) (closed_interval (idx_n 3) (seq_cons (a,b) seq_nil)) = if a 1 < b 1 /\ (a 2 < b 2 /\ a 3 < b 3) then (b 1 + - a 1) * (b 2 + - a 2) * (b 3 + - a 3) else 0) /\ forall a b :e R :^: idx_n 3, measure (idx_n 3) (open_interval (idx_n 3) (a,b)) = if a 1 < b 1 /\ (a 2 < b 2 /\ a 3 < b 3) then (b 1 + - a 1) * (b 2 + - a 2) * (b 3 + - a 3) else 0.
Admitted.

// HOL Light: Multivariate/measure.ml:213 / MEASURE_INTERVAL_4   (hash md5:235e7a13dea33403b1d53e615885630d)
// not bridged: 
Theorem MEASURE_INTERVAL_4 : (forall a b :e R :^: idx_n 4, measure (idx_n 4) (closed_interval (idx_n 4) (seq_cons (a,b) seq_nil)) = if a 1 <= b 1 /\ (a 2 <= b 2 /\ (a 3 <= b 3 /\ a 4 <= b 4)) then (b 1 + - a 1) * (b 2 + - a 2) * (b 3 + - a 3) * (b 4 + - a 4) else 0) /\ forall a b :e R :^: idx_n 4, measure (idx_n 4) (open_interval (idx_n 4) (a,b)) = if a 1 <= b 1 /\ (a 2 <= b 2 /\ (a 3 <= b 3 /\ a 4 <= b 4)) then (b 1 + - a 1) * (b 2 + - a 2) * (b 3 + - a 3) * (b 4 + - a 4) else 0.
Admitted.

// HOL Light: Multivariate/measure.ml:225 / MEASURE_INTERVAL_4_ALT   (hash md5:393d7899681e28ca374b9d7e766a2c6c)
// not bridged: 
Theorem MEASURE_INTERVAL_4_ALT : (forall a b :e R :^: idx_n 4, measure (idx_n 4) (closed_interval (idx_n 4) (seq_cons (a,b) seq_nil)) = if a 1 < b 1 /\ (a 2 < b 2 /\ (a 3 < b 3 /\ a 4 < b 4)) then (b 1 + - a 1) * (b 2 + - a 2) * (b 3 + - a 3) * (b 4 + - a 4) else 0) /\ forall a b :e R :^: idx_n 4, measure (idx_n 4) (open_interval (idx_n 4) (a,b)) = if a 1 < b 1 /\ (a 2 < b 2 /\ (a 3 < b 3 /\ a 4 < b 4)) then (b 1 + - a 1) * (b 2 + - a 2) * (b 3 + - a 3) * (b 4 + - a 4) else 0.
Admitted.

// HOL Light: Multivariate/measure.ml:244 / MEASURABLE_INTER   (hash md5:3c7cc3e4456e589176284a299e067036)
// not bridged: 
Theorem MEASURABLE_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ measurable N t -> measurable N (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:263 / MEASURABLE_UNION   (hash md5:e78c8476763467b82cd470bac2f56de5)
// not bridged: 
Theorem MEASURABLE_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ measurable N t -> measurable N (s :\/: t).
Admitted.

// HOL Light: Multivariate/measure.ml:282 / HAS_MEASURE_DISJOINT_UNION   (hash md5:55316b4817d061e83d848cd068e28e85)
// not bridged: 
Theorem HAS_MEASURE_DISJOINT_UNION : forall A:set, A <> Empty -> forall s1 s2 c= R :^: idx A, forall m1 m2 :e R, has_measure A s1 m1 /\ (has_measure A s2 m2 /\ s1 :/\: s2 = Empty) -> has_measure A (s1 :\/: s2) (m1 + m2).
Admitted.

// HOL Light: Multivariate/measure.ml:294 / MEASURE_DISJOINT_UNION   (hash md5:997bdfac16b328c2466ecf95a2b4c29d)
// not bridged: 
Theorem MEASURE_DISJOINT_UNION : forall A:set, A <> Empty -> forall s t c= R :^: idx A, measurable A s /\ (measurable A t /\ s :/\: t = Empty) -> measure A (s :\/: t) = measure A s + measure A t.
Admitted.

// HOL Light: Multivariate/measure.ml:300 / MEASURE_DISJOINT_UNION_EQ   (hash md5:dfc23c9b6893c407c063c175672c3592)
// not bridged: 
Theorem MEASURE_DISJOINT_UNION_EQ : forall A:set, A <> Empty -> forall s t u c= R :^: idx A, measurable A s /\ (measurable A t /\ (s :\/: t = u /\ s :/\: t = Empty)) -> measure A s + measure A t = measure A u.
Admitted.

// HOL Light: Multivariate/measure.ml:306 / HAS_MEASURE_POS_LE   (hash md5:e134f8089be8e06c63a08c4f3858e4f9)
// not bridged: 
Theorem HAS_MEASURE_POS_LE : forall N:set, N <> Empty -> forall m :e R, forall s c= R :^: idx N, has_measure N s m -> 0 <= m.
Admitted.

// HOL Light: Multivariate/measure.ml:317 / MEASURE_POS_LE   (hash md5:6074a87b9971409c4ae0ea60b1658d0c)
// not bridged: 
Theorem MEASURE_POS_LE : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s -> 0 <= measure A s.
Admitted.

// HOL Light: Multivariate/measure.ml:321 / HAS_MEASURE_SUBSET   (hash md5:f29c6c11a4583802c9c5a965b6179fc7)
// not bridged: 
Theorem HAS_MEASURE_SUBSET : forall N:set, N <> Empty -> forall s1 s2 c= R :^: idx N, forall m1 m2 :e R, has_measure N s1 m1 /\ (has_measure N s2 m2 /\ s1 c= s2) -> m1 <= m2.
Admitted.

// HOL Light: Multivariate/measure.ml:332 / MEASURE_SUBSET   (hash md5:641fcc7b0489ea4764e2463ef736e446)
// not bridged: 
Theorem MEASURE_SUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, measurable A s /\ (measurable A t /\ s c= t) -> measure A s <= measure A t.
Admitted.

// HOL Light: Multivariate/measure.ml:337 / HAS_MEASURE_0   (hash md5:cdddf47ff23aaea59256d64987067e7f)
// not bridged: 
Theorem HAS_MEASURE_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, has_measure N s 0 <-> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:369 / MEASURE_EQ_0   (hash md5:59f4086c0f435452520aafd5227b1692)
// not bridged: 
Theorem MEASURE_EQ_0 : forall A:set, A <> Empty -> forall s c= R :^: idx A, negligible A s -> measure A s = 0.
Admitted.

// HOL Light: Multivariate/measure.ml:373 / NEGLIGIBLE_IMP_MEASURABLE   (hash md5:7456917e4fa2a38c738df4e3c88e8b0d)
// not bridged: 
Theorem NEGLIGIBLE_IMP_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s -> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:377 / HAS_MEASURE_EMPTY   (hash md5:e74f17add4c5507d2a72efad63c4e132)
// not bridged: 
Theorem HAS_MEASURE_EMPTY : forall A:set, A <> Empty -> has_measure A Empty 0.
Admitted.

// HOL Light: Multivariate/measure.ml:381 / MEASURE_EMPTY   (hash md5:8a4c67c950cc3c9817d2b688c22c34fd)
// not bridged: 
Theorem MEASURE_EMPTY : forall A:set, A <> Empty -> measure A Empty = 0.
Admitted.

// HOL Light: Multivariate/measure.ml:385 / MEASURABLE_EMPTY   (hash md5:92ec9cbbf1ac2f5572d3e644edb29bdb)
// not bridged: 
Theorem MEASURABLE_EMPTY : forall A:set, A <> Empty -> measurable A Empty.
Admitted.

// HOL Light: Multivariate/measure.ml:389 / MEASURABLE_SING   (hash md5:2b7757c35dbdc9ea5307b0b50b06aed1)
// not bridged: 
Theorem MEASURABLE_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, measurable N {a}.
Admitted.

// HOL Light: Multivariate/measure.ml:393 / MEASURABLE_MEASURE_EQ_0   (hash md5:1e1403a17fac5710b3c5658eb63acaa4)
// not bridged: 
Theorem MEASURABLE_MEASURE_EQ_0 : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s -> (measure A s = 0 <-> negligible A s).
Admitted.

// HOL Light: Multivariate/measure.ml:398 / NEGLIGIBLE_EQ_MEASURE_0   (hash md5:bf9827f331c51b31d81825566757428e)
// not bridged: 
Theorem NEGLIGIBLE_EQ_MEASURE_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s <-> measurable N s /\ measure N s = 0.
Admitted.

// HOL Light: Multivariate/measure.ml:403 / MEASURE_SING   (hash md5:94d5be56a5564f005a2be010c12cfbf4)
// not bridged: 
Theorem MEASURE_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, measure N {a} = 0.
Admitted.

// HOL Light: Multivariate/measure.ml:407 / MEASURABLE_MEASURE_POS_LT   (hash md5:fbab05d223e2d787889889a0faaa72da)
// not bridged: 
Theorem MEASURABLE_MEASURE_POS_LT : forall A:set, A <> Empty -> forall s c= R :^: idx A, measurable A s -> (0 < measure A s <-> ~ negligible A s).
Admitted.

// HOL Light: Multivariate/measure.ml:412 / NEGLIGIBLE_INTERVAL   (hash md5:0c5978000ceda88b9293de101031d5b6)
// not bridged: 
Theorem NEGLIGIBLE_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> (forall a b :e R :^: idx A, negligible A (closed_interval A (seq_cons (a,b) seq_nil)) <-> open_interval A (a,b) = Empty) /\ forall a b :e R :^: idx B, negligible B (open_interval B (a,b)) <-> open_interval B (a,b) = Empty.
Admitted.

// HOL Light: Multivariate/measure.ml:419 / MEASURABLE_UNIONS   (hash md5:d47d6838ceec1c44e7a12b9762f1bf7f)
// not bridged: 
Theorem MEASURABLE_UNIONS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f /\ (forall s c= R :^: idx N, s :e f -> measurable N s) -> measurable N (Union f).
Admitted.

// HOL Light: Multivariate/measure.ml:429 / HAS_MEASURE_DIFF_SUBSET   (hash md5:269648f3d850d9544d554a68980cfd95)
// not bridged: 
Theorem HAS_MEASURE_DIFF_SUBSET : forall A:set, A <> Empty -> forall s1 s2 c= R :^: idx A, forall m1 m2 :e R, has_measure A s1 m1 /\ (has_measure A s2 m2 /\ s2 c= s1) -> has_measure A (s1 :\: s2) (m1 + - m2).
Admitted.

// HOL Light: Multivariate/measure.ml:442 / MEASURABLE_DIFF   (hash md5:459a3084f7b67f404f7c7cd3bdc97126)
// not bridged: 
Theorem MEASURABLE_DIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ measurable N t -> measurable N (s :\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:454 / MEASURE_DIFF_SUBSET   (hash md5:411845328f104ba4b7ccabadb24c6489)
// not bridged: 
Theorem MEASURE_DIFF_SUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, measurable A s /\ (measurable A t /\ t c= s) -> measure A (s :\: t) = measure A s + - measure A t.
Admitted.

// HOL Light: Multivariate/measure.ml:460 / HAS_MEASURE_UNION_NEGLIGIBLE   (hash md5:760d0f4bcb8d5888ce56b7ae10c40264)
// not bridged: 
Theorem HAS_MEASURE_UNION_NEGLIGIBLE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall m :e R, has_measure N s m /\ negligible N t -> has_measure N (s :\/: t) m.
Admitted.

// HOL Light: Multivariate/measure.ml:470 / HAS_MEASURE_DIFF_NEGLIGIBLE   (hash md5:d34779eb358885b63665f2cd4c26ea72)
// not bridged: 
Theorem HAS_MEASURE_DIFF_NEGLIGIBLE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall m :e R, has_measure N s m /\ negligible N t -> has_measure N (s :\: t) m.
Admitted.

// HOL Light: Multivariate/measure.ml:480 / HAS_MEASURE_UNION_NEGLIGIBLE_EQ   (hash md5:8ad8ce531f40805a016a496c3334932f)
// not bridged: 
Theorem HAS_MEASURE_UNION_NEGLIGIBLE_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall m :e R, negligible N t -> (has_measure N (s :\/: t) m <-> has_measure N s m).
Admitted.

// HOL Light: Multivariate/measure.ml:489 / HAS_MEASURE_DIFF_NEGLIGIBLE_EQ   (hash md5:9fe86ed8d3e36a16ad1b167b5eac9597)
// not bridged: 
Theorem HAS_MEASURE_DIFF_NEGLIGIBLE_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall m :e R, negligible N t -> (has_measure N (s :\: t) m <-> has_measure N s m).
Admitted.

// HOL Light: Multivariate/measure.ml:498 / HAS_MEASURE_ALMOST   (hash md5:9d62111e61d8b1d4b5c01d86c8823024)
// not bridged: 
Theorem HAS_MEASURE_ALMOST : forall A:set, A <> Empty -> forall s s' t c= R :^: idx A, forall m :e R, has_measure A s m /\ (negligible A t /\ s :\/: t = s' :\/: t) -> has_measure A s' m.
Admitted.

// HOL Light: Multivariate/measure.ml:506 / HAS_MEASURE_ALMOST_EQ   (hash md5:d3da64e253b739dcd20661e16d35f152)
// not bridged: 
Theorem HAS_MEASURE_ALMOST_EQ : forall A:set, A <> Empty -> forall m :e R, forall s s' t c= R :^: idx A, negligible A t /\ s :\/: t = s' :\/: t -> (has_measure A s m <-> has_measure A s' m).
Admitted.

// HOL Light: Multivariate/measure.ml:511 / MEASURABLE_ALMOST   (hash md5:26dfed834ae814045069f5df36ecae01)
// not bridged: 
Theorem MEASURABLE_ALMOST : forall A:set, A <> Empty -> forall s s' t c= R :^: idx A, measurable A s /\ (negligible A t /\ s :\/: t = s' :\/: t) -> measurable A s'.
Admitted.

// HOL Light: Multivariate/measure.ml:516 / HAS_MEASURE_NEGLIGIBLE_UNION   (hash md5:c75496743e35854e4da2788d733e9e49)
// not bridged: 
Theorem HAS_MEASURE_NEGLIGIBLE_UNION : forall N:set, N <> Empty -> forall s1 s2 c= R :^: idx N, forall m1 m2 :e R, has_measure N s1 m1 /\ (has_measure N s2 m2 /\ negligible N (s1 :/\: s2)) -> has_measure N (s1 :\/: s2) (m1 + m2).
Admitted.

// HOL Light: Multivariate/measure.ml:533 / MEASURE_NEGLIGIBLE_UNION   (hash md5:d13b100b02d143ffe9251a2892f6830b)
// not bridged: 
Theorem MEASURE_NEGLIGIBLE_UNION : forall A:set, A <> Empty -> forall s t c= R :^: idx A, measurable A s /\ (measurable A t /\ negligible A (s :/\: t)) -> measure A (s :\/: t) = measure A s + measure A t.
Admitted.

// HOL Light: Multivariate/measure.ml:539 / MEASURE_NEGLIGIBLE_UNION_EQ   (hash md5:03cd676b28c0c215784da1ff38bffb4d)
// not bridged: 
Theorem MEASURE_NEGLIGIBLE_UNION_EQ : forall A:set, A <> Empty -> forall s t u c= R :^: idx A, measurable A s /\ (measurable A t /\ (s :\/: t = u /\ negligible A (s :/\: t))) -> measure A s + measure A t = measure A u.
Admitted.

// HOL Light: Multivariate/measure.ml:545 / HAS_MEASURE_NEGLIGIBLE_SYMDIFF   (hash md5:9117b5417c05ab648f45b3320fd03d9e)
// not bridged: 
Theorem HAS_MEASURE_NEGLIGIBLE_SYMDIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall m :e R, has_measure N s m /\ negligible N ((s :\: t) :\/: (t :\: s)) -> has_measure N t m.
Admitted.

// HOL Light: Multivariate/measure.ml:555 / MEASURABLE_NEGLIGIBLE_SYMDIFF   (hash md5:6db9fba5b96d7615ed9ed4364380ffa9)
// not bridged: 
Theorem MEASURABLE_NEGLIGIBLE_SYMDIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ negligible N ((s :\: t) :\/: (t :\: s)) -> measurable N t.
Admitted.

// HOL Light: Multivariate/measure.ml:562 / MEASURABLE_NEGLIGIBLE_SYMDIFF_EQ   (hash md5:ca39ebb2010fd5007afa5981083fbee1)
// not bridged: 
Theorem MEASURABLE_NEGLIGIBLE_SYMDIFF_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, negligible N ((s :\: t) :\/: (t :\: s)) -> (measurable N s <-> measurable N t).
Admitted.

// HOL Light: Multivariate/measure.ml:568 / MEASURE_NEGLIGIBLE_SYMDIFF   (hash md5:fd559404b6190fae070e7e974773638f)
// not bridged: 
Theorem MEASURE_NEGLIGIBLE_SYMDIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, negligible N ((s :\: t) :\/: (t :\: s)) -> measure N s = measure N t.
Admitted.

// HOL Light: Multivariate/measure.ml:581 / NEGLIGIBLE_SYMDIFF_EQ   (hash md5:e95a9cbf9e9a76a9f7b283741beeefe7)
// not bridged: 
Theorem NEGLIGIBLE_SYMDIFF_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, negligible N ((s :\: t) :\/: (t :\: s)) -> (negligible N s <-> negligible N t).
Admitted.

// HOL Light: Multivariate/measure.ml:590 / NEGLIGIBLE_DELETE   (hash md5:d601cbc212ed81e5a546518c6423a1cd)
// not bridged: 
Theorem NEGLIGIBLE_DELETE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, negligible N (s :\: {a}) <-> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:596 / HAS_MEASURE_NEGLIGIBLE_UNIONS   (hash md5:97dbff36ce8de6ee6f3ac7fa1f7ec452)
// not bridged: 
Theorem HAS_MEASURE_NEGLIGIBLE_UNIONS : forall N:set, N <> Empty -> forall m:set -> set, (forall x :e Power (R :^: idx N), m x :e R) -> forall f c= Power (R :^: idx N), finite f /\ ((forall s c= R :^: idx N, s :e f -> has_measure N s (m s)) /\ (forall s t c= R :^: idx N, s :e f /\ (t :e f /\ ~ s = t) -> negligible N (s :/\: t))) -> has_measure N (Union f) (finsum f m).
Admitted.

// HOL Light: Multivariate/measure.ml:614 / MEASURE_NEGLIGIBLE_UNIONS   (hash md5:39fe694de07692b4ffbc1630b729d52a)
// not bridged: 
Theorem MEASURE_NEGLIGIBLE_UNIONS : forall N:set, N <> Empty -> forall m:set -> set, (forall x :e Power (R :^: idx N), m x :e R) -> forall f c= Power (R :^: idx N), finite f /\ ((forall s c= R :^: idx N, s :e f -> has_measure N s (m s)) /\ (forall s t c= R :^: idx N, s :e f /\ (t :e f /\ ~ s = t) -> negligible N (s :/\: t))) -> measure N (Union f) = finsum f m.
Admitted.

// HOL Light: Multivariate/measure.ml:623 / HAS_MEASURE_DISJOINT_UNIONS   (hash md5:30168baa42d99ebebef5c1dafef8bd1c)
// not bridged: 
Theorem HAS_MEASURE_DISJOINT_UNIONS : forall N:set, N <> Empty -> forall m:set -> set, (forall x :e Power (R :^: idx N), m x :e R) -> forall f c= Power (R :^: idx N), finite f /\ ((forall s c= R :^: idx N, s :e f -> has_measure N s (m s)) /\ (forall s t c= R :^: idx N, s :e f /\ (t :e f /\ ~ s = t) -> s :/\: t = Empty)) -> has_measure N (Union f) (finsum f m).
Admitted.

// HOL Light: Multivariate/measure.ml:633 / MEASURE_DISJOINT_UNIONS   (hash md5:d16ab38884ea9442d1674826ee02a079)
// not bridged: 
Theorem MEASURE_DISJOINT_UNIONS : forall N:set, N <> Empty -> forall m:set -> set, (forall x :e Power (R :^: idx N), m x :e R) -> forall f c= Power (R :^: idx N), finite f /\ ((forall s c= R :^: idx N, s :e f -> has_measure N s (m s)) /\ (forall s t c= R :^: idx N, s :e f /\ (t :e f /\ ~ s = t) -> s :/\: t = Empty)) -> measure N (Union f) = finsum f m.
Admitted.

// HOL Light: Multivariate/measure.ml:642 / HAS_MEASURE_NEGLIGIBLE_UNIONS_IMAGE   (hash md5:580d8fbeb98f07d01ab1bcb373641fea)
// not bridged: 
Theorem HAS_MEASURE_NEGLIGIBLE_UNIONS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e Power (R :^: idx N) :^: A, forall s c= A, finite s /\ ((forall x :e A, x :e s -> measurable N (f x)) /\ (forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> negligible N (f x :/\: f y))) -> has_measure N (Union {f x | x :e s}) (finsum s (fun x:set => measure N (f x))).
Admitted.

// HOL Light: Multivariate/measure.ml:661 / MEASURE_NEGLIGIBLE_UNIONS_IMAGE   (hash md5:3ce363f1bfd84d71e90476ed929c5cc2)
// not bridged: 
Theorem MEASURE_NEGLIGIBLE_UNIONS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e Power (R :^: idx N) :^: A, forall s c= A, finite s /\ ((forall x :e A, x :e s -> measurable N (f x)) /\ (forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> negligible N (f x :/\: f y))) -> measure N (Union {f x | x :e s}) = finsum s (fun x:set => measure N (f x)).
Admitted.

// HOL Light: Multivariate/measure.ml:670 / HAS_MEASURE_DISJOINT_UNIONS_IMAGE   (hash md5:81a44f190ab3b5c87d62e6357dd90304)
// not bridged: 
Theorem HAS_MEASURE_DISJOINT_UNIONS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e Power (R :^: idx N) :^: A, forall s c= A, finite s /\ ((forall x :e A, x :e s -> measurable N (f x)) /\ (forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> f x :/\: f y = Empty)) -> has_measure N (Union {f x | x :e s}) (finsum s (fun x:set => measure N (f x))).
Admitted.

// HOL Light: Multivariate/measure.ml:680 / MEASURE_DISJOINT_UNIONS_IMAGE   (hash md5:2b592389e46d556d33d718f3986679d7)
// not bridged: 
Theorem MEASURE_DISJOINT_UNIONS_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e Power (R :^: idx N) :^: A, forall s c= A, finite s /\ ((forall x :e A, x :e s -> measurable N (f x)) /\ (forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> f x :/\: f y = Empty)) -> measure N (Union {f x | x :e s}) = finsum s (fun x:set => measure N (f x)).
Admitted.

// HOL Light: Multivariate/measure.ml:689 / HAS_MEASURE_NEGLIGIBLE_UNIONS_IMAGE_STRONG   (hash md5:dd015c5217fef2b194fb32e1a12ee672)
// not bridged: 
Theorem HAS_MEASURE_NEGLIGIBLE_UNIONS_IMAGE_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall f :e Power (R :^: idx N) :^: A, forall s c= A, finite {x :e A | x :e s /\ ~ f x = Empty} /\ ((forall x :e A, x :e s -> measurable N (f x)) /\ (forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> negligible N (f x :/\: f y))) -> has_measure N (Union {f x | x :e s}) (finsum s (fun x:set => measure N (f x))).
Admitted.

// HOL Light: Multivariate/measure.ml:708 / MEASURE_NEGLIGIBLE_UNIONS_IMAGE_STRONG   (hash md5:4cab12f46074e81d4b4365d1b8bec2e7)
// not bridged: 
Theorem MEASURE_NEGLIGIBLE_UNIONS_IMAGE_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall f :e Power (R :^: idx N) :^: A, forall s c= A, finite {x :e A | x :e s /\ ~ f x = Empty} /\ ((forall x :e A, x :e s -> measurable N (f x)) /\ (forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> negligible N (f x :/\: f y))) -> measure N (Union {f x | x :e s}) = finsum s (fun x:set => measure N (f x)).
Admitted.

// HOL Light: Multivariate/measure.ml:717 / HAS_MEASURE_DISJOINT_UNIONS_IMAGE_STRONG   (hash md5:73aa98bd494c19b2020b623e03b7cbe4)
// not bridged: 
Theorem HAS_MEASURE_DISJOINT_UNIONS_IMAGE_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall f :e Power (R :^: idx N) :^: A, forall s c= A, finite {x :e A | x :e s /\ ~ f x = Empty} /\ ((forall x :e A, x :e s -> measurable N (f x)) /\ (forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> f x :/\: f y = Empty)) -> has_measure N (Union {f x | x :e s}) (finsum s (fun x:set => measure N (f x))).
Admitted.

// HOL Light: Multivariate/measure.ml:727 / MEASURE_DISJOINT_UNIONS_IMAGE_STRONG   (hash md5:44ec9b254090a774bd707d3721c8d205)
// not bridged: 
Theorem MEASURE_DISJOINT_UNIONS_IMAGE_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall f :e Power (R :^: idx N) :^: A, forall s c= A, finite {x :e A | x :e s /\ ~ f x = Empty} /\ ((forall x :e A, x :e s -> measurable N (f x)) /\ (forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> f x :/\: f y = Empty)) -> measure N (Union {f x | x :e s}) = finsum s (fun x:set => measure N (f x)).
Admitted.

// HOL Light: Multivariate/measure.ml:736 / MEASURE_UNION   (hash md5:743e9874cf194b7a0713d5053fdd4d8c)
// not bridged: 
Theorem MEASURE_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ measurable N t -> measure N (s :\/: t) = measure N s + measure N t + - measure N (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:763 / MEASURE_UNION_LE   (hash md5:eb5ecd78dc258bd252846444f6652a96)
// not bridged: 
Theorem MEASURE_UNION_LE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ measurable N t -> measure N (s :\/: t) <= measure N s + measure N t.
Admitted.

// HOL Light: Multivariate/measure.ml:771 / MEASURE_UNIONS_LE   (hash md5:14534a641995869c8725edc6f80f28e9)
// not bridged: 
Theorem MEASURE_UNIONS_LE : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f /\ (forall s c= R :^: idx N, s :e f -> measurable N s) -> measure N (Union f) <= finsum f (measure N).
Admitted.

// HOL Light: Multivariate/measure.ml:787 / MEASURABLE_INSERT   (hash md5:b38b96235d7c6f2597753cc771472a2a)
// not bridged: 
Theorem MEASURABLE_INSERT : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, measurable N (SetAdjoin s x) <-> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:793 / MEASURABLE_DELETE   (hash md5:103318658bfc5ba1b149904fb76c27ed)
// not bridged: 
Theorem MEASURABLE_DELETE : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, measurable N (s :\: {x}) <-> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:799 / MEASURE_INSERT   (hash md5:b3ecf4b4e083bb29cb757b292efc1ed3)
// not bridged: 
Theorem MEASURE_INSERT : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, measure N (SetAdjoin s x) = measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:805 / MEASURE_DELETE   (hash md5:082ff5fc89c07bcf46962820ffe00104)
// not bridged: 
Theorem MEASURE_DELETE : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, measure N (s :\: {x}) = measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:811 / MEASURE_UNIONS_LE_IMAGE   (hash md5:ca5012fca4d941cb3f5e432ae985933f)
// not bridged: 
Theorem MEASURE_UNIONS_LE_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f c= A, forall s :e Power (R :^: idx N) :^: A, finite f /\ (forall a :e A, a :e f -> measurable N (s a)) -> measure N (Union {s x | x :e f}) <= finsum f (fun a:set => measure N (s a)).
Admitted.

// HOL Light: Multivariate/measure.ml:822 / MEASURE_SUB_LE_MEASURE_DIFF   (hash md5:a808e9370bc51e951c3ea98e6db4ddf3)
// not bridged: 
Theorem MEASURE_SUB_LE_MEASURE_DIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ measurable N t -> measure N s + - measure N t <= measure N (s :\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:832 / MEASURE_SUB_LE_MEASURE_SYMDIFF   (hash md5:12576e32382340043e8e01ca06e59acd)
// not bridged: 
Theorem MEASURE_SUB_LE_MEASURE_SYMDIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ measurable N t -> abs_SNo (measure N s + - measure N t) <= measure N ((s :\: t) :\/: (t :\: s)).
Admitted.

// HOL Light: Multivariate/measure.ml:845 / MEASURABLE_INNER_OUTER   (hash md5:a5ad66844e5cda6c1d0361842219460f)
// not bridged: 
Theorem MEASURABLE_INNER_OUTER : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s <-> forall e0 :e R, 0 < e0 -> exists t u c= R :^: idx N, t c= s /\ (s c= u /\ (measurable N t /\ (measurable N u /\ abs_SNo (measure N t + - measure N u) < e0))).
Admitted.

// HOL Light: Multivariate/measure.ml:872 / HAS_MEASURE_INNER_OUTER   (hash md5:887c6edd41330bdbd19d884ee76f46b8)
// not bridged: 
Theorem HAS_MEASURE_INNER_OUTER : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, has_measure N s m <-> (forall e0 :e R, 0 < e0 -> exists t c= R :^: idx N, t c= s /\ (measurable N t /\ m + - e0 < measure N t)) /\ forall e0 :e R, 0 < e0 -> exists u c= R :^: idx N, s c= u /\ (measurable N u /\ measure N u < m + e0).
Admitted.

// HOL Light: Multivariate/measure.ml:908 / HAS_MEASURE_INNER_OUTER_LE   (hash md5:304dd97f9b404704684cbad2b850b159)
// not bridged: 
Theorem HAS_MEASURE_INNER_OUTER_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, has_measure N s m <-> (forall e0 :e R, 0 < e0 -> exists t c= R :^: idx N, t c= s /\ (measurable N t /\ m + - e0 <= measure N t)) /\ forall e0 :e R, 0 < e0 -> exists u c= R :^: idx N, s c= u /\ (measurable N u /\ measure N u <= m + e0).
Admitted.

// HOL Light: Multivariate/measure.ml:920 / NEGLIGIBLE_OUTER   (hash md5:800ad9de98edac8291eb042f334ad584)
// not bridged: 
Theorem NEGLIGIBLE_OUTER : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s <-> forall e0 :e R, 0 < e0 -> exists t c= R :^: idx N, s c= t /\ (measurable N t /\ measure N t < e0).
Admitted.

// HOL Light: Multivariate/measure.ml:930 / NEGLIGIBLE_OUTER_LE   (hash md5:93390efdb2f060a1999a3506fa3abc43)
// not bridged: 
Theorem NEGLIGIBLE_OUTER_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s <-> forall e0 :e R, 0 < e0 -> exists t c= R :^: idx N, s c= t /\ (measurable N t /\ measure N t <= e0).
Admitted.

// HOL Light: Multivariate/measure.ml:938 / HAS_MEASURE_LIMIT   (hash md5:8554efcc5ffb6abfc8c7ceaadc8d98e5)
// not bridged: 
Theorem HAS_MEASURE_LIMIT : forall A:set, A <> Empty -> forall m :e R, forall s c= R :^: idx A, has_measure A s m <-> forall e0 :e R, 0 < e0 -> exists B :e R, 0 < B /\ forall a b :e R :^: idx A, ball A (vec A 0,B) c= closed_interval A (seq_cons (a,b) seq_nil) -> exists z :e R, has_measure A (s :/\: closed_interval A (seq_cons (a,b) seq_nil)) z /\ abs_SNo (z + - m) < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:955 / MEASURE_LIMIT   (hash md5:6866dd4e4a4596e0622b25a0689950f5)
// not bridged: 
Theorem MEASURE_LIMIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, measurable N s /\ 0 < e0 -> exists B :e R, 0 < B /\ forall a b :e R :^: idx N, ball N (vec N 0,B) c= closed_interval N (seq_cons (a,b) seq_nil) -> abs_SNo (measure N (s :/\: closed_interval N (seq_cons (a,b) seq_nil)) + - measure N s) < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:968 / INTEGRABLE_ON_CONST   (hash md5:ec0ea536235fac276b0119f13a402295)
// not bridged: 
Theorem INTEGRABLE_ON_CONST : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall c :e R :^: idx N, integrable_on N M (fun x:set => c) s <-> c = vec N 0 \/ measurable M s.
Admitted.

// HOL Light: Multivariate/measure.ml:991 / ABSOLUTELY_INTEGRABLE_ON_CONST   (hash md5:b3b6d2902b07649a4f53f8dbda4b585a)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ON_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall s c= R :^: idx A, forall c :e R :^: idx B, absolutely_integrable_on B A (fun x:set => c) s <-> c = vec B 0 \/ measurable A s.
Admitted.

// HOL Light: Multivariate/measure.ml:996 / HAS_INTEGRAL_CONST_GEN   (hash md5:98de71c6a9e58a484c3aee3921af976e)
// not bridged: 
Theorem HAS_INTEGRAL_CONST_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall c :e R :^: idx N, measurable M s -> has_integral M N (fun x:set => c) (vector_mul N (measure M s) c) s.
Admitted.

// HOL Light: Multivariate/measure.ml:1007 / INTEGRAL_CONST_GEN   (hash md5:5aa3c7471150610e08134b238a11b3ab)
// not bridged: 
Theorem INTEGRAL_CONST_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall c :e R :^: idx N, measurable M s -> integral N M s (fun x:set => c) = vector_mul N (measure M s) c.
Admitted.

// HOL Light: Multivariate/measure.ml:1013 / OPEN_NOT_NEGLIGIBLE   (hash md5:fe364f60ab8f6de81fa50b8f7371015e)
// not bridged: 
Theorem OPEN_NOT_NEGLIGIBLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s /\ ~ s = Empty -> ~ negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1044 / NOT_NEGLIGIBLE_UNIV   (hash md5:c1091b90afbb97ec1a9c24b4d7224f5f)
// not bridged: 
Theorem NOT_NEGLIGIBLE_UNIV : forall N:set, N <> Empty -> ~ negligible N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:1048 / NEGLIGIBLE_EMPTY_INTERIOR   (hash md5:66be64b1b4b92814cb11b681c94c73f3)
// not bridged: 
Theorem NEGLIGIBLE_EMPTY_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s -> interior N s = Empty.
Admitted.

// HOL Light: Multivariate/measure.ml:1053 / HAS_INTEGRAL_NEGLIGIBLE_EQ_AE   (hash md5:31b952422617ee04425037502e0b3a06)
// not bridged: 
Theorem HAS_INTEGRAL_NEGLIGIBLE_EQ_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, negligible M t /\ (forall x :e R :^: idx M, forall i :e omega, x :e s :\: t /\ (1 <= i /\ i <= dimindex N) -> 0 <= f x i) -> (has_integral M N f (vec N 0) s <-> negligible M {x :e R :^: idx M | x :e s /\ ~ f x = vec N 0}).
Admitted.

// HOL Light: Multivariate/measure.ml:1075 / HAS_MEASURE_AFFINITY   (hash md5:abd4214f5eb01a425d60dc54da633bc9)
// not bridged: 
Theorem HAS_MEASURE_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, forall y :e R, has_measure N s y -> has_measure N {vector_add N (vector_mul N m x) c | x :e s} (abs_SNo m ^ dimindex N * y).
Admitted.

// HOL Light: Multivariate/measure.ml:1151 / STRETCH_GALOIS   (hash md5:68bd183b3106217d01e048d16cfdb963)
// not bridged: 
Theorem STRETCH_GALOIS : forall N:set, N <> Empty -> forall x y :e R :^: idx N, forall m:set -> set, (forall x0 :e omega, m x0 :e R) -> (forall k :e omega, 1 <= k /\ k <= dimindex N -> ~ m k = 0) -> (y = (fun k :e idx N => m k * x k) <-> (fun k :e idx N => recip_SNo (m k) * y k) = x).
Admitted.

// HOL Light: Multivariate/measure.ml:1162 / HAS_MEASURE_STRETCH   (hash md5:205cb8d9039158d992318c6d92358a1a)
// not bridged: 
Theorem HAS_MEASURE_STRETCH : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m:set -> set, (forall x :e omega, m x :e R) -> forall y :e R, has_measure N s y -> has_measure N {(fun k :e idx N => m k * x k) | x :e s} (abs_SNo (finprod (idx N) m) * y).
Admitted.

// HOL Light: Multivariate/measure.ml:1281 / HAS_MEASURE_TRANSLATION   (hash md5:e12c4f6de51d093c642affe720f92fc1)
// not bridged: 
Theorem HAS_MEASURE_TRANSLATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall a :e R :^: idx N, has_measure N s m -> has_measure N {vector_add N a x | x :e s} m.
Admitted.

// HOL Light: Multivariate/measure.ml:1289 / NEGLIGIBLE_TRANSLATION   (hash md5:fbf7fd9be25574f2a93c2badea359ddf)
// not bridged: 
Theorem NEGLIGIBLE_TRANSLATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, negligible N s -> negligible N {vector_add N a x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:1293 / HAS_MEASURE_TRANSLATION_EQ   (hash md5:bbea37161801555bce0c137c2245a9e6)
// not bridged: 
Theorem HAS_MEASURE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, forall m :e R, has_measure N {vector_add N a x | x :e s} m <-> has_measure N s m.
Admitted.

// HOL Light: Multivariate/measure.ml:1304 / MEASURE_TRANSLATION   (hash md5:119cd87dab4290548d3cd20286b5617a)
// not bridged: 
Theorem MEASURE_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, measure N {vector_add N a x | x :e s} = measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1310 / NEGLIGIBLE_TRANSLATION_REV   (hash md5:5f44b0ee8e7fc88960c309f9d95048e1)
// not bridged: 
Theorem NEGLIGIBLE_TRANSLATION_REV : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, negligible N {vector_add N a x | x :e s} -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1314 / NEGLIGIBLE_TRANSLATION_EQ   (hash md5:3e148cd5c2d865853c7f4d821d10357e)
// not bridged: 
Theorem NEGLIGIBLE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, negligible N {vector_add N a x | x :e s} <-> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1320 / MEASURABLE_TRANSLATION_EQ   (hash md5:baaf8f9a5e65200b09976fe64c1f9ff4)
// not bridged: 
Theorem MEASURABLE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, measurable N {vector_add N a x | x :e s} <-> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1326 / MEASURABLE_TRANSLATION   (hash md5:ebc9a5291560118381ba310051dfa2cc)
// not bridged: 
Theorem MEASURABLE_TRANSLATION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, measurable N s -> measurable N {vector_add N a x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:1330 / HAS_MEASURE_SCALING   (hash md5:d95ce1f44ab9ec445f8e70753d268bbd)
// not bridged: 
Theorem HAS_MEASURE_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m c :e R, has_measure N s m -> has_measure N {vector_mul N c x | x :e s} (abs_SNo c ^ dimindex N * m).
Admitted.

// HOL Light: Multivariate/measure.ml:1339 / HAS_MEASURE_SCALING_EQ   (hash md5:934543bfccafaec945073f2293f2ca84)
// not bridged: 
Theorem HAS_MEASURE_SCALING_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m c :e R, ~ c = 0 -> (has_measure N {vector_mul N c x | x :e s} (abs_SNo c ^ dimindex N * m) <-> has_measure N s m).
Admitted.

// HOL Light: Multivariate/measure.ml:1352 / MEASURABLE_SCALING   (hash md5:c20bddd5e6a11737ac914fe2a0cb0800)
// not bridged: 
Theorem MEASURABLE_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, measurable N s -> measurable N {vector_mul N c x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:1356 / MEASURABLE_SCALING_EQ   (hash md5:930399a380d95e10eb77af59e46adf54)
// not bridged: 
Theorem MEASURABLE_SCALING_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, measurable N {vector_mul N c x | x :e s} <-> c = 0 \/ measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1367 / MEASURABLE_AFFINITY_EQ   (hash md5:84beb4e5f7ee470b6daa5eab1e379eff)
// not bridged: 
Theorem MEASURABLE_AFFINITY_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, measurable N {vector_add N (vector_mul N m x) c | x :e s} <-> m = 0 \/ measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1373 / MEASURABLE_AFFINITY   (hash md5:0fc742b686d6dca4d63e982e4bfcd3aa)
// not bridged: 
Theorem MEASURABLE_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, measurable N s -> measurable N {vector_add N (vector_mul N m x) c | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:1377 / MEASURE_SCALING   (hash md5:c7053a5574779c7361231aa14a8779c7)
// not bridged: 
Theorem MEASURE_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, measurable N s -> measure N {vector_mul N c x | x :e s} = abs_SNo c ^ dimindex N * measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1384 / MEASURE_AFFINITY   (hash md5:c701dea6c8941b8ff634fd5ecab69cfb)
// not bridged: 
Theorem MEASURE_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, measurable N s -> measure N {vector_add N (vector_mul N m x) c | x :e s} = abs_SNo m ^ dimindex N * measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1393 / NEGLIGIBLE_SCALING   (hash md5:e1080fad114771f419ff0aee7b92fb12)
// not bridged: 
Theorem NEGLIGIBLE_SCALING : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, negligible N s -> negligible N {vector_mul N c x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:1399 / NEGLIGIBLE_SCALING_EQ   (hash md5:ba10af83dbfdb605ac2844e44abe86ee)
// not bridged: 
Theorem NEGLIGIBLE_SCALING_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, negligible N {vector_mul N c x | x :e s} <-> c = 0 \/ negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1411 / NEGLIGIBLE_AFFINITY_EQ   (hash md5:a87c8a5787d16d27c828dd47c84c10f0)
// not bridged: 
Theorem NEGLIGIBLE_AFFINITY_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, negligible N {vector_add N (vector_mul N m x) c | x :e s} <-> m = 0 \/ negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:1418 / NEGLIGIBLE_AFFINITY   (hash md5:e2fe07fbec8736026ed519008d8b5b15)
// not bridged: 
Theorem NEGLIGIBLE_AFFINITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, forall c :e R :^: idx N, negligible N s -> negligible N {vector_add N (vector_mul N m x) c | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:1423 / NOT_MEASURABLE_UNIV   (hash md5:e096de67198931db4f8b78899a6987cb)
// not bridged: 
Theorem NOT_MEASURABLE_UNIV : forall N:set, N <> Empty -> ~ measurable N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:1441 / HAS_MEASURE_NESTED_UNIONS   (hash md5:9ec6fc82c85b7e4cd25dd9e967eb924f)
// not bridged: 
Theorem HAS_MEASURE_NESTED_UNIONS : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, forall B :e R, (forall n :e omega, measurable N (s n)) /\ ((forall n :e omega, measure N (s n) <= B) /\ (forall n :e omega, s n c= s (ordsucc n))) -> measurable N (Union {s n | n :e omega, n :e omega}) /\ tendsto 1 omega (fun n:set => lift (measure N (s n))) (lift (measure N (Union {s n | n :e omega, n :e omega}))) sequentially.
Admitted.

// HOL Light: Multivariate/measure.ml:1478 / MEASURABLE_NESTED_UNIONS   (hash md5:54944f10c9dcdb9bfbd27823732eeba5)
// not bridged: 
Theorem MEASURABLE_NESTED_UNIONS : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, forall B :e R, (forall n :e omega, measurable N (s n)) /\ ((forall n :e omega, measure N (s n) <= B) /\ (forall n :e omega, s n c= s (ordsucc n))) -> measurable N (Union {s n | n :e omega, n :e omega}).
Admitted.

// HOL Light: Multivariate/measure.ml:1488 / HAS_MEASURE_COUNTABLE_NEGLIGIBLE_UNIONS   (hash md5:a321fdad49167ede2711edf66241ae8c)
// not bridged: 
Theorem HAS_MEASURE_COUNTABLE_NEGLIGIBLE_UNIONS : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, forall B :e R, (forall n :e omega, measurable N (s n)) /\ ((forall m n :e omega, ~ m = n -> negligible N (s m :/\: s n)) /\ (forall n :e omega, finsum {i :e omega | 0 <= i /\ i <= n} (fun k:set => measure N (s k)) <= B)) -> measurable N (Union {s n | n :e omega, n :e omega}) /\ sums 1 (fun n:set => lift (measure N (s n))) (lift (measure N (Union {s n | n :e omega, n :e omega}))) (from 0).
Admitted.

// HOL Light: Multivariate/measure.ml:1527 / NEGLIGIBLE_COUNTABLE_UNIONS_GEN   (hash md5:67cb71123a83f490d71d4620ffd76e5e)
// not bridged: 
Theorem NEGLIGIBLE_COUNTABLE_UNIONS_GEN : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), countable f /\ (forall s c= R :^: idx N, s :e f -> negligible N s) -> negligible N (Union f).
Admitted.

// HOL Light: Multivariate/measure.ml:1538 / HAS_MEASURE_COUNTABLE_NEGLIGIBLE_UNIONS_BOUNDED   (hash md5:36f7036d659df063ab1891d1e647d1b6)
// not bridged: 
Theorem HAS_MEASURE_COUNTABLE_NEGLIGIBLE_UNIONS_BOUNDED : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, (forall n :e omega, measurable N (s n)) /\ ((forall m n :e omega, ~ m = n -> negligible N (s m :/\: s n)) /\ bounded_hl N (Union {s n | n :e omega, n :e omega})) -> measurable N (Union {s n | n :e omega, n :e omega}) /\ sums 1 (fun n:set => lift (measure N (s n))) (lift (measure N (Union {s n | n :e omega, n :e omega}))) (from 0).
Admitted.

// HOL Light: Multivariate/measure.ml:1564 / MEASURABLE_COUNTABLE_UNIONS_BOUNDED   (hash md5:9a9a09e12fcd448ccf97d775082a6590)
// not bridged: 
Theorem MEASURABLE_COUNTABLE_UNIONS_BOUNDED : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, (forall n :e omega, measurable N (s n)) /\ bounded_hl N (Union {s n | n :e omega, n :e omega}) -> measurable N (Union {s n | n :e omega, n :e omega}).
Admitted.

// HOL Light: Multivariate/measure.ml:1595 / MEASURE_COUNTABLE_UNIONS_LE_STRONG   (hash md5:6dc41818f6adc97e89204f8c34139bef)
// not bridged: 
Theorem MEASURE_COUNTABLE_UNIONS_LE_STRONG : forall N:set, N <> Empty -> forall d :e Power (R :^: idx N) :^: omega, forall B :e R, (forall n :e omega, measurable N (d n)) /\ (forall n :e omega, measure N (Union {d k | k :e omega, k <= n}) <= B) -> measurable N (Union {d n | n :e omega, n :e omega}) /\ measure N (Union {d n | n :e omega, n :e omega}) <= B.
Admitted.

// HOL Light: Multivariate/measure.ml:1629 / MEASURE_COUNTABLE_UNIONS_LE   (hash md5:e3d7a6aeb24f33a6e58893420f4e7e07)
// not bridged: 
Theorem MEASURE_COUNTABLE_UNIONS_LE : forall N:set, N <> Empty -> forall d :e Power (R :^: idx N) :^: omega, forall B :e R, (forall n :e omega, measurable N (d n)) /\ (forall n :e omega, finsum {i :e omega | 0 <= i /\ i <= n} (fun k:set => measure N (d k)) <= B) -> measurable N (Union {d n | n :e omega, n :e omega}) /\ measure N (Union {d n | n :e omega, n :e omega}) <= B.
Admitted.

// HOL Light: Multivariate/measure.ml:1644 / MEASURABLE_COUNTABLE_UNIONS_STRONG   (hash md5:60f693ec0a2bab30a7611d6d8b288779)
// not bridged: 
Theorem MEASURABLE_COUNTABLE_UNIONS_STRONG : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, forall B :e R, (forall n :e omega, measurable N (s n)) /\ (forall n :e omega, measure N (Union {s k | k :e omega, k <= n}) <= B) -> measurable N (Union {s n | n :e omega, n :e omega}).
Admitted.

// HOL Light: Multivariate/measure.ml:1651 / MEASURABLE_COUNTABLE_UNIONS   (hash md5:713840d91ff5d091d30d1c99fc9e83ae)
// not bridged: 
Theorem MEASURABLE_COUNTABLE_UNIONS : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, forall B :e R, (forall n :e omega, measurable N (s n)) /\ (forall n :e omega, finsum {i :e omega | 0 <= i /\ i <= n} (fun k:set => measure N (s k)) <= B) -> measurable N (Union {s n | n :e omega, n :e omega}).
Admitted.

// HOL Light: Multivariate/measure.ml:1658 / MEASURE_COUNTABLE_UNIONS_LE_STRONG_GEN   (hash md5:bb4b2adf8ae9eaf0bdb369c905af5280)
// not bridged: 
Theorem MEASURE_COUNTABLE_UNIONS_LE_STRONG_GEN : forall N:set, N <> Empty -> forall D c= Power (R :^: idx N), forall B :e R, countable D /\ ((forall d c= R :^: idx N, d :e D -> measurable N d) /\ (forall D' c= Power (R :^: idx N), D' c= D /\ finite D' -> measure N (Union D') <= B)) -> measurable N (Union D) /\ measure N (Union D) <= B.
Admitted.

// HOL Light: Multivariate/measure.ml:1681 / MEASURE_COUNTABLE_UNIONS_LE_GEN   (hash md5:00551a9cf8656f38bb8e74268ee16521)
// not bridged: 
Theorem MEASURE_COUNTABLE_UNIONS_LE_GEN : forall N:set, N <> Empty -> forall D c= Power (R :^: idx N), forall B :e R, countable D /\ ((forall d c= R :^: idx N, d :e D -> measurable N d) /\ (forall D' c= Power (R :^: idx N), D' c= D /\ finite D' -> finsum D' (measure N) <= B)) -> measurable N (Union D) /\ measure N (Union D) <= B.
Admitted.

// HOL Light: Multivariate/measure.ml:1694 / MEASURABLE_COUNTABLE_INTERS   (hash md5:404d8f18f0b0fbc6c1190e1203862dcb)
// not bridged: 
Theorem MEASURABLE_COUNTABLE_INTERS : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, (forall n :e omega, measurable N (s n)) -> measurable N {x :e R :^: idx N | forall Y :e {s n | n :e omega, n :e omega}, x :e Y}.
Admitted.

// HOL Light: Multivariate/measure.ml:1721 / MEASURABLE_COUNTABLE_INTERS_GEN   (hash md5:298c49dfecf9a82758bcd1ae812ebc96)
// not bridged: 
Theorem MEASURABLE_COUNTABLE_INTERS_GEN : forall N:set, N <> Empty -> forall D c= Power (R :^: idx N), countable D /\ (~ D = Empty /\ (forall d c= R :^: idx N, d :e D -> measurable N d)) -> measurable N {x :e R :^: idx N | forall Y :e D, x :e Y}.
Admitted.

// HOL Light: Multivariate/measure.ml:1732 / MEASURE_COUNTABLE_UNIONS_APPROACHABLE   (hash md5:7f5c49007586c7100d8eb85b252d4cbb)
// not bridged: 
Theorem MEASURE_COUNTABLE_UNIONS_APPROACHABLE : forall N:set, N <> Empty -> forall D c= Power (R :^: idx N), forall B e0 :e R, countable D /\ ((forall d c= R :^: idx N, d :e D -> measurable N d) /\ ((forall D' c= Power (R :^: idx N), D' c= D /\ finite D' -> measure N (Union D') <= B) /\ 0 < e0)) -> exists D' c= Power (R :^: idx N), D' c= D /\ (finite D' /\ measure N (Union D) + - e0 < measure N (Union D')).
Admitted.

// HOL Light: Multivariate/measure.ml:1779 / HAS_MEASURE_NESTED_INTERS   (hash md5:79b1ee4e35004a8b14b545938d0f5810)
// not bridged: 
Theorem HAS_MEASURE_NESTED_INTERS : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, (forall n :e omega, measurable N (s n)) /\ (forall n :e omega, s (ordsucc n) c= s n) -> measurable N {x :e R :^: idx N | forall Y :e {s n | n :e omega, n :e omega}, x :e Y} /\ tendsto 1 omega (fun n:set => lift (measure N (s n))) (lift (measure N {x :e R :^: idx N | forall Y :e {s n | n :e omega, n :e omega}, x :e Y})) sequentially.
Admitted.

// HOL Light: Multivariate/measure.ml:1825 / INTEGRAL_ZERO_ON_SUBINTERVALS_IMP_ZERO_AE_ALT   (hash md5:1b190c1afcf0c4e63a2e13508f9766d7)
// not bridged: 
Theorem INTEGRAL_ZERO_ON_SUBINTERVALS_IMP_ZERO_AE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (forall a b :e R :^: idx M, has_integral M N f (vec N 0) (closed_interval M (seq_cons (a,b) seq_nil))) -> negligible M {x :e R :^: idx M | ~ f x = vec N 0}.
Admitted.

// HOL Light: Multivariate/measure.ml:1850 / MEASURABLE_COMPACT   (hash md5:b3ae5410af4d02cbd3cee02705702d9d)
// not bridged: 
Theorem MEASURABLE_COMPACT : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s -> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2011 / MEASURABLE_OPEN   (hash md5:dcdfc5e653d579dcc7f9bc686615ffa1)
// not bridged: 
Theorem MEASURABLE_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ open N s -> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2025 / MEASURE_OPEN_POS_LT   (hash md5:dc3118cdb340f0ba201a9763e61901d1)
// not bridged: 
Theorem MEASURE_OPEN_POS_LT : forall A:set, A <> Empty -> forall s c= R :^: idx A, open A s /\ (bounded_hl A s /\ ~ s = Empty) -> 0 < measure A s.
Admitted.

// HOL Light: Multivariate/measure.ml:2029 / MEASURE_OPEN_POS_LT_EQ   (hash md5:16b0732628bd82903ddae3f35657c31b)
// not bridged: 
Theorem MEASURE_OPEN_POS_LT_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, open A s /\ bounded_hl A s -> (0 < measure A s <-> ~ s = Empty).
Admitted.

// HOL Light: Multivariate/measure.ml:2033 / MEASURABLE_CLOSURE   (hash md5:53ff4fe5b85922edfeaa07c6ddbe684e)
// not bridged: 
Theorem MEASURABLE_CLOSURE : forall A:set, A <> Empty -> forall s c= R :^: idx A, bounded_hl A s -> measurable A (closure A s).
Admitted.

// HOL Light: Multivariate/measure.ml:2038 / MEASURABLE_INTERIOR   (hash md5:23cae47d79ab74dc0e0e8d06f9c2120e)
// not bridged: 
Theorem MEASURABLE_INTERIOR : forall A:set, A <> Empty -> forall s c= R :^: idx A, bounded_hl A s -> measurable A (interior A s).
Admitted.

// HOL Light: Multivariate/measure.ml:2042 / MEASURABLE_FRONTIER   (hash md5:c849a477039e088a553c40d3bc9a26f7)
// not bridged: 
Theorem MEASURABLE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> measurable N (frontier N s).
Admitted.

// HOL Light: Multivariate/measure.ml:2050 / MEASURE_FRONTIER   (hash md5:5f5090a63f2454789758103c37aec6f8)
// not bridged: 
Theorem MEASURE_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> measure N (frontier N s) = measure N (closure N s) + - measure N (interior N s).
Admitted.

// HOL Light: Multivariate/measure.ml:2060 / MEASURE_CLOSURE   (hash md5:3d12b544f7ca4ba3205e5248820836cf)
// not bridged: 
Theorem MEASURE_CLOSURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ negligible N (frontier N s) -> measure N (closure N s) = measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2072 / MEASURE_INTERIOR   (hash md5:d75c60b56632992f56840f0c3e58a374)
// not bridged: 
Theorem MEASURE_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ negligible N (frontier N s) -> measure N (interior N s) = measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2084 / MEASURABLE_JORDAN   (hash md5:72e493bfd856c3f51a3c187a777dc5bb)
// not bridged: 
Theorem MEASURABLE_JORDAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s /\ negligible N (frontier N s) -> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2095 / HAS_MEASURE_ELEMENTARY   (hash md5:8b850c3338cb6f682077a7d39d8218bd)
// not bridged: 
Theorem HAS_MEASURE_ELEMENTARY : forall A:set, A <> Empty -> forall d c= Power (R :^: idx A), forall s c= R :^: idx A, division_of A d s -> has_measure A s (finsum d (content A)).
Admitted.

// HOL Light: Multivariate/measure.ml:2104 / MEASURABLE_ELEMENTARY   (hash md5:0ea1777f26ee0a89af3108f63c50fb6b)
// not bridged: 
Theorem MEASURABLE_ELEMENTARY : forall A:set, A <> Empty -> forall d c= Power (R :^: idx A), forall s c= R :^: idx A, division_of A d s -> measurable A s.
Admitted.

// HOL Light: Multivariate/measure.ml:2108 / MEASURE_ELEMENTARY   (hash md5:7764254f501d6c4019cdf27dea418b87)
// not bridged: 
Theorem MEASURE_ELEMENTARY : forall A:set, A <> Empty -> forall d c= Power (R :^: idx A), forall s c= R :^: idx A, division_of A d s -> measure A s = finsum d (content A).
Admitted.

// HOL Light: Multivariate/measure.ml:2112 / MEASURABLE_INTER_INTERVAL   (hash md5:0181fb6d019dd49fc614e6e50d8236de)
// not bridged: 
Theorem MEASURABLE_INTER_INTERVAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, measurable N s -> measurable N (s :/\: closed_interval N (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:2116 / MEASURABLE_INSIDE   (hash md5:bdd11d987842ef34967fd1901e8d1aec)
// not bridged: 
Theorem MEASURABLE_INSIDE : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s -> measurable N (inside N s).
Admitted.

// HOL Light: Multivariate/measure.ml:2125 / PART_MEASURES   (hash md5:a6b30e264ccf2080b2c5a819af815d61)
// not bridged: 
Theorem PART_MEASURES : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall m :e R, measurable N s /\ (0 <= m /\ m <= measure N s) -> exists t u c= R :^: idx N, t :/\: u = Empty /\ (t :\/: u = s /\ (measurable N t /\ (measure N t = m /\ (measurable N u /\ measure N u = measure N s + - m)))).
Admitted.

// HOL Light: Multivariate/measure.ml:2215 / HALF_MEASURES   (hash md5:b8492299fa2814fca7844128ed6114a1)
// not bridged: 
Theorem HALF_MEASURES : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s -> exists t u c= R :^: idx N, t :/\: u = Empty /\ (t :\/: u = s /\ (measurable N t /\ (measure N t = measure N s :/: 2 /\ (measurable N u /\ measure N u = measure N s :/: 2)))).
Admitted.

// HOL Light: Multivariate/measure.ml:2229 / MULTIPART_MEASURES   (hash md5:2a71719e7eb06fbd94efb7cf49d7433c)
// not bridged: 
Theorem MULTIPART_MEASURES : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e omega, measurable N s /\ ~ n = 0 -> exists f c= Power (R :^: idx N), finite f /\ (finite_cardinality f <= n /\ ((forall x y :e f, x <> y -> x :/\: y = Empty) /\ (Union f = s /\ forall t c= R :^: idx N, t :e f -> t c= s /\ (measurable N t /\ measure N t = measure N s :/: n)))).
Admitted.

// HOL Light: Multivariate/measure.ml:2365 / STARLIKE_NEGLIGIBLE_BOUNDED_MEASURABLE   (hash md5:9ada8520a945dc75da3df035d99c4f2f)
// not bridged: 
Theorem STARLIKE_NEGLIGIBLE_BOUNDED_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s /\ (bounded_hl N s /\ (forall c :e R, forall x :e R :^: idx N, 0 <= c /\ (x :e s /\ vector_mul N c x :e s) -> c = 1)) -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2517 / STARLIKE_NEGLIGIBLE_LEMMA   (hash md5:943129c54c3e9088ef136689ef3c3147)
// not bridged: 
Theorem STARLIKE_NEGLIGIBLE_LEMMA : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s /\ (forall c :e R, forall x :e R :^: idx N, 0 <= c /\ (x :e s /\ vector_mul N c x :e s) -> c = 1) -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2525 / STARLIKE_NEGLIGIBLE   (hash md5:fc3292f88d5f6b80d449f3f2026bfed1)
// not bridged: 
Theorem STARLIKE_NEGLIGIBLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, closed N s /\ (forall c :e R, forall x :e R :^: idx N, 0 <= c /\ (vector_add N a x :e s /\ vector_add N a (vector_mul N c x) :e s) -> c = 1) -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2539 / STARLIKE_NEGLIGIBLE_STRONG   (hash md5:91d3af9643bf58c69749834106b199af)
// not bridged: 
Theorem STARLIKE_NEGLIGIBLE_STRONG : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, closed N s /\ (forall c :e R, forall x :e R :^: idx N, 0 <= c /\ (c < 1 /\ vector_add N a x :e s) -> ~ vector_add N a (vector_mul N c x) :e s) -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2560 / NEGLIGIBLE_HYPERPLANE   (hash md5:ee304bedd76a0e345fd2019c1e06d348)
// not bridged: 
Theorem NEGLIGIBLE_HYPERPLANE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, ~ (a = vec N 0 /\ b = 0) -> negligible N {x :e R :^: idx N | dot N a x = b}.
Admitted.

// HOL Light: Multivariate/measure.ml:2579 / NEGLIGIBLE_LOWDIM   (hash md5:e595862743dfba891c4da12242b5379b)
// not bridged: 
Theorem NEGLIGIBLE_LOWDIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s < dimindex N -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2589 / NEGLIGIBLE_AFFINE_HULL   (hash md5:c5aabdd6cf50639516a1983fb8134968)
// not bridged: 
Theorem NEGLIGIBLE_AFFINE_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ finite_cardinality s <= dimindex N -> negligible N (hull (R :^: idx N) {x :e Power (R :^: idx N) | affine N x} s).
Admitted.

// HOL Light: Multivariate/measure.ml:2607 / NEGLIGIBLE_AFFINE_HULL_1   (hash md5:2eb440da7dde006945eda616f62e3fe1)
// not bridged: 
Theorem NEGLIGIBLE_AFFINE_HULL_1 : forall a :e R :^: idx 1, negligible 1 (hull (R :^: idx 1) {x :e Power (R :^: idx 1) | affine 1 x} {a}).
Admitted.

// HOL Light: Multivariate/measure.ml:2613 / NEGLIGIBLE_AFFINE_HULL_2   (hash md5:dfbf059aacbd56f4b9d82ee5f37bf81b)
// not bridged: 
Theorem NEGLIGIBLE_AFFINE_HULL_2 : forall a b :e R :^: idx_n 2, negligible (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | affine (idx_n 2) x} {a,b}).
Admitted.

// HOL Light: Multivariate/measure.ml:2619 / NEGLIGIBLE_AFFINE_HULL_3   (hash md5:d261c68db44dd00cdc7e9484067a187f)
// not bridged: 
Theorem NEGLIGIBLE_AFFINE_HULL_3 : forall a b c :e R :^: idx_n 3, negligible (idx_n 3) (hull (R :^: idx_n 3) {x :e Power (R :^: idx_n 3) | affine (idx_n 3) x} {a,b,c}).
Admitted.

// HOL Light: Multivariate/measure.ml:2625 / NEGLIGIBLE_CONVEX_HULL   (hash md5:74004c8677b49088ef4e3760e3fa5b63)
// not bridged: 
Theorem NEGLIGIBLE_CONVEX_HULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s /\ finite_cardinality s <= dimindex N -> negligible N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} s).
Admitted.

// HOL Light: Multivariate/measure.ml:2633 / NEGLIGIBLE_CONVEX_HULL_1   (hash md5:b2d94414e9530b512f29a859da871df2)
// not bridged: 
Theorem NEGLIGIBLE_CONVEX_HULL_1 : forall a :e R :^: idx 1, negligible 1 (hull (R :^: idx 1) {x :e Power (R :^: idx 1) | convex 1 x} {a}).
Admitted.

// HOL Light: Multivariate/measure.ml:2639 / NEGLIGIBLE_CONVEX_HULL_2   (hash md5:3931a30cdfb768bccad56a5624827eaa)
// not bridged: 
Theorem NEGLIGIBLE_CONVEX_HULL_2 : forall a b :e R :^: idx_n 2, negligible (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b}).
Admitted.

// HOL Light: Multivariate/measure.ml:2645 / NEGLIGIBLE_CONVEX_HULL_3   (hash md5:f4b550348216c8f16af5e1ceddcc8850)
// not bridged: 
Theorem NEGLIGIBLE_CONVEX_HULL_3 : forall a b c :e R :^: idx_n 3, negligible (idx_n 3) (hull (R :^: idx_n 3) {x :e Power (R :^: idx_n 3) | convex (idx_n 3) x} {a,b,c}).
Admitted.

// HOL Light: Multivariate/measure.ml:2655 / NEGLIGIBLE_CONVEX_FRONTIER   (hash md5:617f488ceb95d0a23ef8b5f5a543db4d)
// not bridged: 
Theorem NEGLIGIBLE_CONVEX_FRONTIER : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> negligible N (frontier N s).
Admitted.

// HOL Light: Multivariate/measure.ml:2698 / MEASURABLE_CONVEX   (hash md5:5b297d01987be0593a212564ec0575c1)
// not bridged: 
Theorem MEASURABLE_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s /\ bounded_hl N s -> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:2703 / NEGLIGIBLE_CONVEX_INTERIOR   (hash md5:346d6dccbcbd11699582f70ef7252f52)
// not bridged: 
Theorem NEGLIGIBLE_CONVEX_INTERIOR : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> (negligible N s <-> interior N s = Empty).
Admitted.

// HOL Light: Multivariate/measure.ml:2717 / NEGLIGIBLE_SPHERE   (hash md5:bbd1845f9cd8771cb9ebc562640c8297)
// not bridged: 
Theorem NEGLIGIBLE_SPHERE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, negligible N (sphere N (a,r)).
Admitted.

// HOL Light: Multivariate/measure.ml:2722 / MEASURABLE_BALL   (hash md5:a2db271fcdaf579a3d1fe57604c4252e)
// not bridged: 
Theorem MEASURABLE_BALL : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall r :e R, measurable A (ball A (a,r)).
Admitted.

// HOL Light: Multivariate/measure.ml:2726 / MEASURABLE_CBALL   (hash md5:118102d6fc8ea38bd98b73d69dc64f07)
// not bridged: 
Theorem MEASURABLE_CBALL : forall A:set, A <> Empty -> forall a :e R :^: idx A, forall r :e R, measurable A (cball A (a,r)).
Admitted.

// HOL Light: Multivariate/measure.ml:2730 / MEASURE_BALL_POS   (hash md5:bb01cb9d8297d9ae75ba2e7cdbb2e51c)
// not bridged: 
Theorem MEASURE_BALL_POS : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, 0 < measure N (ball N (x,e0)) <-> 0 < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:2735 / MEASURE_CBALL_POS   (hash md5:2779710e1948882a164e98c236509f61)
// not bridged: 
Theorem MEASURE_CBALL_POS : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, 0 < measure N (cball N (x,e0)) <-> 0 < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:2742 / HAS_INTEGRAL_OPEN_INTERVAL   (hash md5:63765a223e84270e174a88c842fe8186)
// not bridged: 
Theorem HAS_INTEGRAL_OPEN_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall a b :e R :^: idx B, forall y :e R :^: idx A, has_integral B A f y (open_interval B (a,b)) <-> has_integral B A f y (closed_interval B (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:2750 / INTEGRABLE_ON_OPEN_INTERVAL   (hash md5:0354f2e3a9557f57bbfa0edbc05c8226)
// not bridged: 
Theorem INTEGRABLE_ON_OPEN_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall a b :e R :^: idx B, integrable_on A B f (open_interval B (a,b)) <-> integrable_on A B f (closed_interval B (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:2755 / INTEGRAL_OPEN_INTERVAL   (hash md5:2afd18c508e7c33a74014c6a979c7b80)
// not bridged: 
Theorem INTEGRAL_OPEN_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall a b :e R :^: idx B, integral A B (open_interval B (a,b)) f = integral A B (closed_interval B (seq_cons (a,b) seq_nil)) f.
Admitted.

// HOL Light: Multivariate/measure.ml:2759 / ABSOLUTELY_INTEGRABLE_ON_OPEN_INTERVAL   (hash md5:db71046a7b0f85a5c8e6dc9103d6c99f)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ON_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall a b :e R :^: idx M, absolutely_integrable_on N M f (open_interval M (a,b)) <-> absolutely_integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:2765 / MEASURABLE_SEGMENT   (hash md5:5e2e1617000b921b737cbcfd42669d25)
// not bridged: 
Theorem MEASURABLE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, measurable N (closed_segment N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, measurable N (open_segment N (a,b)).
Admitted.

// HOL Light: Multivariate/measure.ml:2770 / MEASURE_SEGMENT_1   (hash md5:c1f60f6bafad4697c4cd47b323f07e2f)
// not bridged: 
Theorem MEASURE_SEGMENT_1 : (forall a b :e R :^: idx 1, measure 1 (closed_segment 1 (seq_cons (a,b) seq_nil)) = vector_norm 1 (vector_sub 1 b a)) /\ forall a b :e R :^: idx 1, measure 1 (open_segment 1 (a,b)) = vector_norm 1 (vector_sub 1 b a).
Admitted.

// HOL Light: Multivariate/measure.ml:2777 / NEGLIGIBLE_SEGMENT   (hash md5:78f7e0f88020f4b2c299de76c8c5efe5)
// not bridged: 
Theorem NEGLIGIBLE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, negligible N (closed_segment N (seq_cons (a,b) seq_nil)) <-> 2 <= dimindex N \/ a = b) /\ forall a b :e R :^: idx N, negligible N (open_segment N (a,b)) <-> 2 <= dimindex N \/ a = b.
Admitted.

// HOL Light: Multivariate/measure.ml:2784 / MEASURE_BALL_SCALING   (hash md5:dd040499a35849d99f88b974c2e3bcd9)
// not bridged: 
Theorem MEASURE_BALL_SCALING : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall c r :e R, 0 <= c -> measure N (ball N (a,c * r)) = c ^ dimindex N * measure N (ball N (a,r)).
Admitted.

// HOL Light: Multivariate/measure.ml:2797 / MEASURE_CBALL_SCALING   (hash md5:c5516e8509c44456938246db7b4f72cc)
// not bridged: 
Theorem MEASURE_CBALL_SCALING : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall c r :e R, 0 <= c -> measure N (cball N (a,c * r)) = c ^ dimindex N * measure N (cball N (a,r)).
Admitted.

// HOL Light: Multivariate/measure.ml:2814 / MEASURE_CBALL_BOUND   (hash md5:4739f10fb68bc4eed9266f4e8212d675)
// not bridged: 
Theorem MEASURE_CBALL_BOUND : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall d :e R, 0 <= d -> measure N (cball N (x,d)) <= (2 * d) ^ dimindex N.
Admitted.

// HOL Light: Multivariate/measure.ml:2837 / MEASURE_BALL_BOUND   (hash md5:9b1e007298395ddd72d72a64bff18650)
// not bridged: 
Theorem MEASURE_BALL_BOUND : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall d :e R, 0 <= d -> measure N (ball N (x,d)) <= (2 * d) ^ dimindex N.
Admitted.

// HOL Light: Multivariate/measure.ml:2849 / NEGLIGIBLE_LINEAR_SINGULAR_IMAGE   (hash md5:ba318a2022cc70d8516df5eee3cc2801)
// not bridged: 
Theorem NEGLIGIBLE_LINEAR_SINGULAR_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ ~ (forall x y :e R :^: idx N, f x = f y -> x = y) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:2866 / COVERING_LEMMA   (hash md5:a720af4559b3c2c9ecfad9a880ee9b22)
// not bridged: 
Theorem COVERING_LEMMA : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall s c= R :^: idx N, forall g :e Power (R :^: idx N) :^: (R :^: idx N), s c= closed_interval N (seq_cons (a,b) seq_nil) /\ (~ open_interval N (a,b) = Empty /\ gauge N (fun x:set => fun x0:set => x0 :e g x)) -> exists d c= Power (R :^: idx N), countable d /\ ((forall k c= R :^: idx N, k :e d -> k c= closed_interval N (seq_cons (a,b) seq_nil) /\ (~ interior N k = Empty /\ exists c d0 :e R :^: idx N, k = closed_interval N (seq_cons (c,d0) seq_nil))) /\ ((forall k1 k2 c= R :^: idx N, k1 :e d /\ (k2 :e d /\ ~ k1 = k2) -> interior N k1 :/\: interior N k2 = Empty) /\ ((forall k c= R :^: idx N, k :e d -> exists x :e R :^: idx N, x :e s :/\: k /\ k c= g x) /\ ((forall u v :e R :^: idx N, closed_interval N (seq_cons (u,v) seq_nil) :e d -> exists n :e omega, forall i :e omega, 1 <= i /\ i <= dimindex N -> v i + - u i = (b i + - a i) :/: 2 ^ n) /\ s c= Union d)))).
Admitted.

// HOL Light: Multivariate/measure.ml:3176 / COUNTABLE_ELEMENTARY_DIVISION   (hash md5:cf3465e61d634c1f6a069c385f94c300)
// not bridged: 
Theorem COUNTABLE_ELEMENTARY_DIVISION : forall N:set, N <> Empty -> forall d c= Power (R :^: idx N), countable d /\ (forall k c= R :^: idx N, k :e d -> exists a b :e R :^: idx N, k = closed_interval N (seq_cons (a,b) seq_nil)) -> exists d' c= Power (R :^: idx N), countable d' /\ ((forall k c= R :^: idx N, k :e d' -> ~ k = Empty /\ exists a b :e R :^: idx N, k = closed_interval N (seq_cons (a,b) seq_nil)) /\ ((forall k l c= R :^: idx N, k :e d' /\ (l :e d' /\ ~ k = l) -> interior N k :/\: interior N l = Empty) /\ Union d' = Union d)).
Admitted.

// HOL Light: Multivariate/measure.ml:3265 / EXPAND_CLOSED_OPEN_INTERVAL   (hash md5:cd2ae74d87df44a812c55a31ee4087f1)
// not bridged: 
Theorem EXPAND_CLOSED_OPEN_INTERVAL : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall e0 :e R, 0 < e0 -> exists c d :e R :^: idx N, closed_interval N (seq_cons (a,b) seq_nil) c= open_interval N (c,d) /\ measure N (open_interval N (c,d)) <= measure N (closed_interval N (seq_cons (a,b) seq_nil)) + e0.
Admitted.

// HOL Light: Multivariate/measure.ml:3316 / MEASURABLE_OUTER_INTERVALS_BOUNDED   (hash md5:8f7a1bdff19500821fb5b6a10934196b)
// not bridged: 
Theorem MEASURABLE_OUTER_INTERVALS_BOUNDED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, forall e0 :e R, measurable N s /\ (s c= closed_interval N (seq_cons (a,b) seq_nil) /\ 0 < e0) -> exists d c= Power (R :^: idx N), countable d /\ ((forall k c= R :^: idx N, k :e d -> k c= closed_interval N (seq_cons (a,b) seq_nil) /\ (~ k = Empty /\ exists c d0 :e R :^: idx N, k = closed_interval N (seq_cons (c,d0) seq_nil))) /\ ((forall k1 k2 c= R :^: idx N, k1 :e d /\ (k2 :e d /\ ~ k1 = k2) -> interior N k1 :/\: interior N k2 = Empty) /\ ((forall u v :e R :^: idx N, closed_interval N (seq_cons (u,v) seq_nil) :e d -> exists n :e omega, forall i :e omega, 1 <= i /\ i <= dimindex N -> v i + - u i = (b i + - a i) :/: 2 ^ n) /\ ((forall k c= R :^: idx N, k :e d /\ ~ open_interval N (a,b) = Empty -> ~ interior N k = Empty) /\ (s c= Union d /\ (measurable N (Union d) /\ measure N (Union d) <= measure N s + e0)))))).
Admitted.

// HOL Light: Multivariate/measure.ml:3515 / MEASURABLE_OUTER_CLOSED_INTERVALS   (hash md5:d16488da7da8bbc4592ed2ec89b7eea8)
// not bridged: 
Theorem MEASURABLE_OUTER_CLOSED_INTERVALS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, measurable N s /\ 0 < e0 -> exists d c= Power (R :^: idx N), countable d /\ ((forall k c= R :^: idx N, k :e d -> ~ k = Empty /\ exists a b :e R :^: idx N, k = closed_interval N (seq_cons (a,b) seq_nil)) /\ ((forall k l c= R :^: idx N, k :e d /\ (l :e d /\ ~ k = l) -> interior N k :/\: interior N l = Empty) /\ (s c= Union d /\ (measurable N (Union d) /\ measure N (Union d) <= measure N s + e0)))).
Admitted.

// HOL Light: Multivariate/measure.ml:3647 / MEASURABLE_OUTER_OPEN_INTERVALS   (hash md5:c7a883d3a83500fe621c8634eced1415)
// not bridged: 
Theorem MEASURABLE_OUTER_OPEN_INTERVALS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, measurable N s /\ 0 < e0 -> exists d c= Power (R :^: idx N), countable d /\ ((forall k c= R :^: idx N, k :e d -> ~ k = Empty /\ exists a b :e R :^: idx N, k = open_interval N (a,b)) /\ (s c= Union d /\ (measurable N (Union d) /\ measure N (Union d) <= measure N s + e0))).
Admitted.

// HOL Light: Multivariate/measure.ml:3787 / MEASURABLE_OUTER_OPEN   (hash md5:830cf9ed316d2f46750d026d9ae81464)
// not bridged: 
Theorem MEASURABLE_OUTER_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, measurable N s /\ 0 < e0 -> exists t c= R :^: idx N, open N t /\ (s c= t /\ (measurable N t /\ measure N t < measure N s + e0)).
Admitted.

// HOL Light: Multivariate/measure.ml:3801 / MEASURABLE_INNER_COMPACT   (hash md5:3b5763f37129ccf360479b8796a02076)
// not bridged: 
Theorem MEASURABLE_INNER_COMPACT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, measurable N s /\ 0 < e0 -> exists t c= R :^: idx N, compact N t /\ (t c= s /\ (measurable N t /\ measure N s < measure N t + e0)).
Admitted.

// HOL Light: Multivariate/measure.ml:3847 / OPEN_MEASURABLE_INNER_DIVISION   (hash md5:6e32268b784eea49a1072ad1c57d87b6)
// not bridged: 
Theorem OPEN_MEASURABLE_INNER_DIVISION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, open N s /\ (measurable N s /\ 0 < e0) -> exists D c= Power (R :^: idx N), division_of N D (Union D) /\ (Union D c= s /\ measure N s < measure N (Union D) + e0).
Admitted.

// HOL Light: Multivariate/measure.ml:3903 / OUTER_MEASURE   (hash md5:a5c72fbd76af6f5bd5b274dd44a6f7f8)
// not bridged: 
Theorem OUTER_MEASURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> exists t c= R :^: idx N, s c= t /\ (measurable N t /\ forall t' c= R :^: idx N, s c= t' /\ measurable N t' -> negligible N (t :\: t')).
Admitted.

// HOL Light: Multivariate/measure.ml:3968 / MEASURABLE_LINEAR_IMAGE_INTERVAL   (hash md5:f98725ce56fa61907a7b753fd1e6f85d)
// not bridged: 
Theorem MEASURABLE_LINEAR_IMAGE_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall a b :e R :^: idx B, linear B A f -> measurable A {f x | x :e closed_interval B (seq_cons (a,b) seq_nil)}.
Admitted.

// HOL Light: Multivariate/measure.ml:3976 / HAS_MEASURE_LINEAR_SUFFICIENT   (hash md5:15e638f6f15b1aae0465974e6fd5fcdf)
// not bridged: 
Theorem HAS_MEASURE_LINEAR_SUFFICIENT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall m :e R, linear N N f /\ (forall a b :e R :^: idx N, has_measure N {f x | x :e closed_interval N (seq_cons (a,b) seq_nil)} (m * measure N (closed_interval N (seq_cons (a,b) seq_nil)))) -> forall s c= R :^: idx N, measurable N s -> has_measure N {f x | x :e s} (m * measure N s).
Admitted.

// HOL Light: Multivariate/measure.ml:4256 / INDUCT_MATRIX_ROW_OPERATIONS   (hash md5:b5bafffd77451410b3305bea942e6caf)
// not bridged: 
Theorem INDUCT_MATRIX_ROW_OPERATIONS : forall N:set, N <> Empty -> forall P:set -> prop, (forall A :e R :^: idx N :^: idx N, forall i :e omega, 1 <= i /\ (i <= dimindex N /\ row N N i A = vec N 0) -> P A) /\ ((forall A :e R :^: idx N :^: idx N, (forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ ~ i = j))) -> A i j = 0) -> P A) /\ ((forall A :e R :^: idx N :^: idx N, forall m n :e omega, P A /\ (1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n)))) -> P (fun i :e idx N => fun j :e idx N => A i (swap omega (m,n) j))) /\ (forall A :e R :^: idx N :^: idx N, forall m n :e omega, forall c :e R, P A /\ (1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n)))) -> P (fun i :e idx N => if i = m then vector_add N (row N N m A) (vector_mul N c (row N N n A)) else row N N i A)))) -> forall A :e R :^: idx N :^: idx N, P A.
Admitted.

// HOL Light: Multivariate/measure.ml:4400 / INDUCT_MATRIX_ELEMENTARY   (hash md5:3f0970bd4caf8c9a2ae289c5f947b9eb)
// not bridged: 
Theorem INDUCT_MATRIX_ELEMENTARY : forall N:set, N <> Empty -> forall P:set -> prop, (forall A B :e R :^: idx N :^: idx N, P A /\ P B -> P (matrix_mul N N N A B)) /\ ((forall A :e R :^: idx N :^: idx N, forall i :e omega, 1 <= i /\ (i <= dimindex N /\ row N N i A = vec N 0) -> P A) /\ ((forall A :e R :^: idx N :^: idx N, (forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ ~ i = j))) -> A i j = 0) -> P A) /\ ((forall m n :e omega, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n))) -> P (fun i :e idx N => fun j :e idx N => mat N N 1 i (swap omega (m,n) j))) /\ (forall m n :e omega, forall c :e R, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n))) -> P (fun i :e idx N => fun j :e idx N => if i = m /\ j = n then c else if i = j then 1 else 0))))) -> forall A :e R :^: idx N :^: idx N, P A.
Admitted.

// HOL Light: Multivariate/measure.ml:4455 / INDUCT_MATRIX_ELEMENTARY_ALT   (hash md5:139841084dddbb562ffb78022cdd24ad)
// not bridged: 
Theorem INDUCT_MATRIX_ELEMENTARY_ALT : forall N:set, N <> Empty -> forall P:set -> prop, (forall A B :e R :^: idx N :^: idx N, P A /\ P B -> P (matrix_mul N N N A B)) /\ ((forall A :e R :^: idx N :^: idx N, forall i :e omega, 1 <= i /\ (i <= dimindex N /\ row N N i A = vec N 0) -> P A) /\ ((forall A :e R :^: idx N :^: idx N, (forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ ~ i = j))) -> A i j = 0) -> P A) /\ ((forall m n :e omega, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n))) -> P (fun i :e idx N => fun j :e idx N => mat N N 1 i (swap omega (m,n) j))) /\ (forall m n :e omega, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n))) -> P (fun i :e idx N => fun j :e idx N => if i = m /\ j = n \/ i = j then 1 else 0))))) -> forall A :e R :^: idx N :^: idx N, P A.
Admitted.

// HOL Light: Multivariate/measure.ml:4503 / INDUCT_LINEAR_ELEMENTARY   (hash md5:fdb344f3d81965104e6320d75bcace84)
// not bridged: 
Theorem INDUCT_LINEAR_ELEMENTARY : forall N:set, N <> Empty -> forall P:set -> prop, (forall f g :e R :^: idx N :^: (R :^: idx N), linear N N (fun x:set => f x) /\ (linear N N (fun x:set => g x) /\ (P f /\ P g)) -> P (fun x :e R :^: idx N => f (g x))) /\ ((forall f :e R :^: idx N :^: (R :^: idx N), forall i :e omega, linear N N (fun x:set => f x) /\ (1 <= i /\ (i <= dimindex N /\ (forall x :e R :^: idx N, f x i = 0))) -> P f) /\ ((forall c:set -> set, (forall x :e omega, c x :e R) -> P (fun x :e R :^: idx N => fun i :e idx N => c i * x i)) /\ ((forall m n :e omega, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n))) -> P (fun x :e R :^: idx N => fun i :e idx N => x (swap omega (m,n) i))) /\ (forall m n :e omega, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n))) -> P (fun x :e R :^: idx N => fun i :e idx N => if i = m then x m + x n else x i))))) -> forall f :e R :^: idx N :^: (R :^: idx N), linear N N (fun x:set => f x) -> P f.
Admitted.

// HOL Light: Multivariate/measure.ml:4581 / LAMBDA_SWAP_GALOIS   (hash md5:07a72cd15299ac4541776d0d3180f409)
// not bridged: 
Theorem LAMBDA_SWAP_GALOIS : forall N:set, N <> Empty -> forall m n :e omega, forall x y :e R :^: idx N, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ n <= dimindex N)) -> (x = (fun i :e idx N => y (swap omega (m,n) i)) <-> (fun i :e idx N => x (swap omega (m,n) i)) = y).
Admitted.

// HOL Light: Multivariate/measure.ml:4593 / LAMBDA_ADD_GALOIS   (hash md5:211139613da5e82a54cc8ad0caf97d50)
// not bridged: 
Theorem LAMBDA_ADD_GALOIS : forall N:set, N <> Empty -> forall m n :e omega, forall x y :e R :^: idx N, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ ~ m = n))) -> (x = (fun i :e idx N => if i = m then y m + y n else y i) <-> (fun i :e idx N => if i = m then x m + - x n else x i) = y).
Admitted.

// HOL Light: Multivariate/measure.ml:4607 / HAS_MEASURE_SHEAR_INTERVAL   (hash md5:319558bb411035307f5bfea3624b0040)
// not bridged: 
Theorem HAS_MEASURE_SHEAR_INTERVAL : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall m n :e omega, 1 <= m /\ (m <= dimindex N /\ (1 <= n /\ (n <= dimindex N /\ (~ m = n /\ (~ closed_interval N (seq_cons (a,b) seq_nil) = Empty /\ 0 <= a n))))) -> has_measure N {(fun i :e idx N => if i = m then x m + x n else x i) | x :e closed_interval N (seq_cons (a,b) seq_nil)} (measure N (closed_interval N (seq_cons (a,b) seq_nil))).
Admitted.

// HOL Light: Multivariate/measure.ml:4781 / HAS_MEASURE_LINEAR_IMAGE   (hash md5:21b559f1349a3677e02a94d007693bdf)
// not bridged: 
Theorem HAS_MEASURE_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ measurable N s -> has_measure N {f x | x :e s} (abs_SNo (det N (matrix N N f)) * measure N s).
Admitted.

// HOL Light: Multivariate/measure.ml:4934 / MEASURABLE_LINEAR_IMAGE   (hash md5:68b95775b3d8b9f910cc98b165c94908)
// not bridged: 
Theorem MEASURABLE_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ measurable N s -> measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:4941 / MEASURE_LINEAR_IMAGE   (hash md5:601ae53fb2caff94a8219eafcc2cae29)
// not bridged: 
Theorem MEASURE_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ measurable N s -> measure N {f x | x :e s} = abs_SNo (det N (matrix N N f)) * measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:4949 / HAS_MEASURE_LINEAR_IMAGE_ALT   (hash md5:1a8f87724af953b9a51e5fb66dc24fe9)
// not bridged: 
Theorem HAS_MEASURE_LINEAR_IMAGE_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, forall m :e R, linear N N f /\ has_measure N s m -> has_measure N {f x | x :e s} (abs_SNo (det N (matrix N N f)) * m).
Admitted.

// HOL Light: Multivariate/measure.ml:4955 / HAS_MEASURE_LINEAR_IMAGE_SAME   (hash md5:c07b522fbd9981078def1f3ca4a88311)
// not bridged: 
Theorem HAS_MEASURE_LINEAR_IMAGE_SAME : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx A) -> forall s c= R :^: idx A, linear A A f /\ (measurable A s /\ abs_SNo (det A (matrix A A f)) = 1) -> has_measure A {f x | x :e s} (measure A s).
Admitted.

// HOL Light: Multivariate/measure.ml:4960 / MEASURE_LINEAR_IMAGE_SAME   (hash md5:1499891a22eb391130f5e474c2d081cb)
// not bridged: 
Theorem MEASURE_LINEAR_IMAGE_SAME : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ (measurable N s /\ abs_SNo (det N (matrix N N f)) = 1) -> measure N {f x | x :e s} = measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:4968 / MEASURABLE_LINEAR_IMAGE_EQ   (hash md5:eb4fe4f46a64a8fc3fa9ca9f909e71b2)
// not bridged: 
Theorem MEASURABLE_LINEAR_IMAGE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ (forall x y :e R :^: idx N, f x = f y -> x = y) -> (measurable N {f x | x :e s} <-> measurable N s).
Admitted.

// HOL Light: Multivariate/measure.ml:4976 / NEGLIGIBLE_LINEAR_IMAGE   (hash md5:f4b13af9d3562cdf92c747f2e1a3b97b)
// not bridged: 
Theorem NEGLIGIBLE_LINEAR_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ negligible N s -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:4982 / NEGLIGIBLE_LINEAR_IMAGE_EQ   (hash md5:fb7ff373a5809cc25f27f30eee5295e6)
// not bridged: 
Theorem NEGLIGIBLE_LINEAR_IMAGE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ (forall x y :e R :^: idx N, f x = f y -> x = y) -> (negligible N {f x | x :e s} <-> negligible N s).
Admitted.

// HOL Light: Multivariate/measure.ml:4990 / MEASURABLE_NEGATIONS   (hash md5:f22532cd8e12f5a0c9565a577759e226)
// not bridged: 
Theorem MEASURABLE_NEGATIONS : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N {vector_neg N x | x :e s} <-> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:4995 / HAS_MEASURE_ORTHOGONAL_IMAGE   (hash md5:ab00961462ae45b72e783685ff700e4e)
// not bridged: 
Theorem HAS_MEASURE_ORTHOGONAL_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, forall m :e R, orthogonal_transformation N f /\ has_measure N s m -> has_measure N {f x | x :e s} m.
Admitted.

// HOL Light: Multivariate/measure.ml:5010 / HAS_MEASURE_ORTHOGONAL_IMAGE_EQ   (hash md5:b560ac7a18d4c55cc9d3630f62ab4f60)
// not bridged: 
Theorem HAS_MEASURE_ORTHOGONAL_IMAGE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, forall m :e R, orthogonal_transformation N f -> (has_measure N {f x | x :e s} m <-> has_measure N s m).
Admitted.

// HOL Light: Multivariate/measure.ml:5026 / MEASURE_ORTHOGONAL_IMAGE_EQ   (hash md5:ffec282419d5048a33d94a25c6668b51)
// not bridged: 
Theorem MEASURE_ORTHOGONAL_IMAGE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, orthogonal_transformation N f -> measure N {f x | x :e s} = measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:5035 / MEASURE_NEGATIONS   (hash md5:ae605c97ed8095bb51fc6dba49b89115)
// not bridged: 
Theorem MEASURE_NEGATIONS : forall N:set, N <> Empty -> forall s c= R :^: idx N, measure N {vector_neg N x | x :e s} = measure N s.
Admitted.

// HOL Light: Multivariate/measure.ml:5039 / HAS_MEASURE_ISOMETRY   (hash md5:70c79de0ce1fccd7e9d91e21fa94ba76)
// not bridged: 
Theorem HAS_MEASURE_ISOMETRY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall m :e R, dimindex M = dimindex N /\ (linear M N f /\ (forall x :e R :^: idx M, vector_norm N (f x) = vector_norm M x)) -> (has_measure N {f x | x :e s} m <-> has_measure M s m).
Admitted.

// HOL Light: Multivariate/measure.ml:5067 / MEASURABLE_LINEAR_IMAGE_EQ_GEN   (hash md5:ee374afda179336c0e925790bfe57e11)
// not bridged: 
Theorem MEASURABLE_LINEAR_IMAGE_EQ_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M = dimindex N /\ (linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y)) -> (measurable N {f x | x :e s} <-> measurable M s).
Admitted.

// HOL Light: Multivariate/measure.ml:5090 / MEASURE_ISOMETRY   (hash md5:1d880c7631fab4fb7738cb8fa99c8055)
// not bridged: 
Theorem MEASURE_ISOMETRY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M = dimindex N /\ (linear M N f /\ (forall x :e R :^: idx M, vector_norm N (f x) = vector_norm M x)) -> measure N {f x | x :e s} = measure M s.
Admitted.

// HOL Light: Multivariate/measure.ml:5097 / MEASURABLE_CONVEX_EQ   (hash md5:50c9802c0ed9f3ad8009b125ebcf82c5)
// not bridged: 
Theorem MEASURABLE_CONVEX_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> (measurable N s <-> bounded_hl N s \/ interior N s = Empty).
Admitted.

// HOL Light: Multivariate/measure.ml:5186 / CONGRUENT_IMAGE_STD_SIMPLEX   (hash md5:6a4125901b2d284f86536a998a3c7fa5)
// not bridged: 
Theorem CONGRUENT_IMAGE_STD_SIMPLEX : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e omega, p x :e omega) -> permutes omega p (idx N) -> {x :e R :^: idx N | 0 <= x (p 1) /\ (x (p (dimindex N)) <= 1 /\ forall i :e omega, 1 <= i /\ i < dimindex N -> x (p i) <= x (p (i + 1)))} = {(fun i :e idx N => finsum (idx_n (inverse omega omega p i)) (fun j:set => x j)) | x :e {x :e R :^: idx N | (forall i :e omega, 1 <= i /\ i <= dimindex N -> 0 <= x i) /\ finsum (idx N) (fun i:set => x i) <= 1}}.
Admitted.

// HOL Light: Multivariate/measure.ml:5250 / HAS_MEASURE_IMAGE_STD_SIMPLEX   (hash md5:4a2497f6581158faf1ea2a47d85989c6)
// not bridged: 
Theorem HAS_MEASURE_IMAGE_STD_SIMPLEX : forall N:set, N <> Empty -> forall p:set -> set, (forall x :e omega, p x :e omega) -> permutes omega p (idx N) -> has_measure N {x :e R :^: idx N | 0 <= x (p 1) /\ (x (p (dimindex N)) <= 1 /\ forall i :e omega, 1 <= i /\ i < dimindex N -> x (p i) <= x (p (i + 1)))} (measure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin {basis N i | i :e omega, 1 <= i /\ i <= dimindex N} (vec N 0)))).
Admitted.

// HOL Light: Multivariate/measure.ml:5299 / HAS_MEASURE_STD_SIMPLEX   (hash md5:665f4418b254f20609e505ad5d16a914)
// not bridged: 
Theorem HAS_MEASURE_STD_SIMPLEX : forall N:set, N <> Empty -> has_measure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin {basis N i | i :e omega, 1 <= i /\ i <= dimindex N} (vec N 0))) (recip_SNo (factorial (dimindex N))).
Admitted.

// HOL Light: Multivariate/measure.ml:5414 / HAS_MEASURE_SIMPLEX_0   (hash md5:74d5dc819f625c48a5d2f0510fa58d11)
// not bridged: 
Theorem HAS_MEASURE_SIMPLEX_0 : forall N:set, N <> Empty -> forall l :e finseq (R :^: idx N), seq_len l = dimindex N -> has_measure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (SetAdjoin (seq_set l) (vec N 0))) (abs_SNo (det N (vector (R :^: idx N) N l)) :/: factorial (dimindex N)).
Admitted.

// HOL Light: Multivariate/measure.ml:5457 / HAS_MEASURE_SIMPLEX   (hash md5:b559df270c6f897959dfc464f76d8e53)
// not bridged: 
Theorem HAS_MEASURE_SIMPLEX : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall l :e finseq (R :^: idx N), seq_len l = dimindex N -> has_measure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (seq_set (seq_cons a l))) (abs_SNo (det N (vector (R :^: idx N) N (seq_map (fun x:set => vector_sub N x a) l))) :/: factorial (dimindex N)).
Admitted.

// HOL Light: Multivariate/measure.ml:5472 / MEASURABLE_CONVEX_HULL   (hash md5:699bef07ccb13176dce3490321b0ae88)
// not bridged: 
Theorem MEASURABLE_CONVEX_HULL : forall A:set, A <> Empty -> forall s c= R :^: idx A, bounded_hl A s -> measurable A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} s).
Admitted.

// HOL Light: Multivariate/measure.ml:5477 / MEASURABLE_SIMPLEX   (hash md5:18071436f8a5ff23e7c243286a38336c)
// not bridged: 
Theorem MEASURABLE_SIMPLEX : forall A:set, A <> Empty -> forall l :e finseq (R :^: idx A), measurable A (hull (R :^: idx A) {x :e Power (R :^: idx A) | convex A x} (seq_set l)).
Admitted.

// HOL Light: Multivariate/measure.ml:5482 / MEASURE_SIMPLEX   (hash md5:72bfe5d3c0ec3e666313d77a4a527e8c)
// not bridged: 
Theorem MEASURE_SIMPLEX : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall l :e finseq (R :^: idx N), seq_len l = dimindex N -> measure N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} (seq_set (seq_cons a l))) = abs_SNo (det N (vector (R :^: idx N) N (seq_map (fun x:set => vector_sub N x a) l))) :/: factorial (dimindex N).
Admitted.

// HOL Light: Multivariate/measure.ml:5493 / HAS_MEASURE_TRIANGLE   (hash md5:15d876e4d26d8120bb4296b3e109d5a1)
// not bridged: 
Theorem HAS_MEASURE_TRIANGLE : forall a b c :e R :^: idx_n 2, has_measure (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b,c}) (abs_SNo ((b 1 + - a 1) * (c 2 + - a 2) + - (b 2 + - a 2) * (c 1 + - a 1)) :/: 2).
Admitted.

// HOL Light: Multivariate/measure.ml:5503 / MEASURABLE_TRIANGLE   (hash md5:1568174b3f84c8a9855076d581ad6657)
// not bridged: 
Theorem MEASURABLE_TRIANGLE : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, measurable N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {a,b,c}).
Admitted.

// HOL Light: Multivariate/measure.ml:5510 / MEASURE_TRIANGLE   (hash md5:f578a9d1e1e4efaa5e1757a7565b6f3e)
// not bridged: 
Theorem MEASURE_TRIANGLE : forall a b c :e R :^: idx_n 2, measure (idx_n 2) (hull (R :^: idx_n 2) {x :e Power (R :^: idx_n 2) | convex (idx_n 2) x} {a,b,c}) = abs_SNo ((b 1 + - a 1) * (c 2 + - a 2) + - (b 2 + - a 2) * (c 1 + - a 1)) :/: 2.
Admitted.

// HOL Light: Multivariate/measure.ml:5521 / HAS_MEASURE_TETRAHEDRON   (hash md5:4298191592049dc1598a977adddb0799)
// not bridged: 
Theorem HAS_MEASURE_TETRAHEDRON : forall a b c d :e R :^: idx_n 3, has_measure (idx_n 3) (hull (R :^: idx_n 3) {x :e Power (R :^: idx_n 3) | convex (idx_n 3) x} {a,b,c,d}) (abs_SNo ((b 1 + - a 1) * (c 2 + - a 2) * (d 3 + - a 3) + (b 2 + - a 2) * (c 3 + - a 3) * (d 1 + - a 1) + (((b 3 + - a 3) * (c 1 + - a 1) * (d 2 + - a 2) + - (b 1 + - a 1) * (c 3 + - a 3) * (d 2 + - a 2)) + - (b 2 + - a 2) * (c 1 + - a 1) * (d 3 + - a 3)) + - (b 3 + - a 3) * (c 2 + - a 2) * (d 1 + - a 1)) :/: 6).
Admitted.

// HOL Light: Multivariate/measure.ml:5537 / MEASURABLE_TETRAHEDRON   (hash md5:8b9cb34005ff2a7dc92315c7c1679d61)
// not bridged: 
Theorem MEASURABLE_TETRAHEDRON : forall N:set, N <> Empty -> forall a b c d :e R :^: idx N, measurable N (hull (R :^: idx N) {x :e Power (R :^: idx N) | convex N x} {a,b,c,d}).
Admitted.

// HOL Light: Multivariate/measure.ml:5544 / MEASURE_TETRAHEDRON   (hash md5:9971ef3d1a7dfd2bc64a82b2591cded0)
// not bridged: 
Theorem MEASURE_TETRAHEDRON : forall a b c d :e R :^: idx_n 3, measure (idx_n 3) (hull (R :^: idx_n 3) {x :e Power (R :^: idx_n 3) | convex (idx_n 3) x} {a,b,c,d}) = abs_SNo ((b 1 + - a 1) * (c 2 + - a 2) * (d 3 + - a 3) + (b 2 + - a 2) * (c 3 + - a 3) * (d 1 + - a 1) + (((b 3 + - a 3) * (c 1 + - a 1) * (d 2 + - a 2) + - (b 1 + - a 1) * (c 3 + - a 3) * (d 2 + - a 2)) + - (b 2 + - a 2) * (c 1 + - a 1) * (d 3 + - a 3)) + - (b 3 + - a 3) * (c 2 + - a 2) * (d 1 + - a 1)) :/: 6.
Admitted.

// HOL Light: Multivariate/measure.ml:5560 / MEASURE_CONTINUOUS_WITH_HAUSDIST   (hash md5:a11a6f71dada18fdc2995873de80b7c5)
// not bridged: 
Theorem MEASURE_CONTINUOUS_WITH_HAUSDIST : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, bounded_hl N s /\ (convex N s /\ (~ s = Empty /\ 0 < e0)) -> exists d :e R, 0 < d /\ forall t c= R :^: idx N, bounded_hl N t /\ (convex N t /\ (~ t = Empty /\ hausdist N (s,t) < d)) -> abs_SNo (measure N t + - measure N s) < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:5602 / MEASURE_CONTINUOUS_WITH_HAUSDIST_EXPLICIT   (hash md5:1cab7df2dc209bf298a2b99f3c31e64c)
// not bridged: 
Theorem MEASURE_CONTINUOUS_WITH_HAUSDIST_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, bounded_hl N s /\ (convex N s /\ 0 < e0) -> exists d :e R, 0 < d /\ forall t c= R :^: idx N, convex N t /\ ((forall y :e R :^: idx N, y :e s -> exists x :e R :^: idx N, x :e t /\ distance N (x,y) < d) /\ (forall y :e R :^: idx N, y :e t -> exists x :e R :^: idx N, x :e s /\ distance N (x,y) < d)) -> abs_SNo (measure N t + - measure N s) < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:5641 / MEASURE_SEMICONTINUOUS_WITH_HAUSDIST_EXPLICIT   (hash md5:3837e799b0dc0d4064ed784130dd3826)
// not bridged: 
Theorem MEASURE_SEMICONTINUOUS_WITH_HAUSDIST_EXPLICIT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, bounded_hl N s /\ (negligible N (frontier N s) /\ 0 < e0) -> exists d :e R, 0 < d /\ forall s' c= R :^: idx N, measurable N s' /\ (forall y :e R :^: idx N, y :e s' -> exists x :e R :^: idx N, x :e s /\ distance N (x,y) < d) -> measure N s' < measure N s + e0.
Admitted.

// HOL Light: Multivariate/measure.ml:5690 / MEASURE_SEMICONTINUOUS_WITH_HAUSDIST_BOUND   (hash md5:14ba276d9074508d23d783fb1a00593e)
// not bridged: 
Theorem MEASURE_SEMICONTINUOUS_WITH_HAUSDIST_BOUND : forall N:set, N <> Empty -> forall s s' c= R :^: idx N, forall r e0 :e R, forall a :e R :^: idx N, bounded_hl N s /\ (convex N s /\ (ball N (a,r) c= s /\ (0 < r /\ (bounded_hl N s' /\ (measurable N s' /\ (hausdist N (s,s') <= e0 * r /\ 0 < e0)))))) -> measure N s' <= measure N s * (1 + e0) ^ dimindex N.
Admitted.

// HOL Light: Multivariate/measure.ml:5739 / STEINHAUS   (hash md5:d08506d49af522119f8f53230b9217c3)
// not bridged: 
Theorem STEINHAUS : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s /\ 0 < measure N s -> exists d :e R, 0 < d /\ ball N (vec N 0,d) c= \/_ x :e R :^: idx N, {vector_sub N x y | y :e R :^: idx N, x :e s /\ y :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:5789 / MEASURABLE_NONNEGLIGIBLE_IMP_LARGE   (hash md5:bff94e2ffddd3b65739747fdf4e9d73c)
// not bridged: 
Theorem MEASURABLE_NONNEGLIGIBLE_IMP_LARGE : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s /\ 0 < measure N s -> equip s R.
Admitted.

// HOL Light: Multivariate/measure.ml:5834 / MEASURABLE_SMALL_IMP_NEGLIGIBLE   (hash md5:cb04432a83c939f4e5b8fe058b578828)
// not bridged: 
Theorem MEASURABLE_SMALL_IMP_NEGLIGIBLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s /\ (atleastp s R /\ ~ equip s R) -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:5845 / AUSTIN_LEMMA   (hash md5:87d98a1e7fd204e29946a464cc340ce2)
// not bridged: 
Theorem AUSTIN_LEMMA : forall N:set, N <> Empty -> forall D c= Power (R :^: idx N), finite D /\ (forall d c= R :^: idx N, d :e D -> exists k :e R, exists a b :e R :^: idx N, d = closed_interval N (seq_cons (a,b) seq_nil) /\ forall i :e omega, 1 <= i /\ i <= dimindex N -> b i + - a i = k) -> exists D' c= Power (R :^: idx N), D' c= D /\ ((forall x y :e D', x <> y -> x :/\: y = Empty) /\ measure N (Union D) :/: 3 ^ dimindex N <= measure N (Union D')).
Admitted.

// HOL Light: Multivariate/measure.ml:5975 / INTEGRABLE_CCONTINUOUS_EXPLICIT   (hash md5:db955f4079c5723b0e6f614e270598fc)
// not bridged: 
Theorem INTEGRABLE_CCONTINUOUS_EXPLICIT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (forall a b :e R :^: idx M, integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil))) -> exists k c= R :^: idx M, negligible M k /\ forall x :e R :^: idx M, forall e0 :e R, ~ x :e k /\ 0 < e0 -> exists d :e R, 0 < d /\ forall h :e R, 0 < h /\ h < d -> vector_norm N (vector_sub N (vector_mul N (recip_SNo (content M (closed_interval M (seq_cons (x,vector_add M x (vector_mul M h (vec M 1))) seq_nil)))) (integral N M (closed_interval M (seq_cons (x,vector_add M x (vector_mul M h (vec M 1))) seq_nil)) f)) (f x)) < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:6405 / INTEGRABLE_CCONTINUOUS_EXPLICIT_SYMMETRIC   (hash md5:d7ed0980a361d0505c311aaa7d3d1c64)
// not bridged: 
Theorem INTEGRABLE_CCONTINUOUS_EXPLICIT_SYMMETRIC : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (forall a b :e R :^: idx M, integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil))) -> exists k c= R :^: idx M, negligible M k /\ forall x :e R :^: idx M, forall e0 :e R, ~ x :e k /\ 0 < e0 -> exists d :e R, 0 < d /\ forall h :e R, 0 < h /\ h < d -> vector_norm N (vector_sub N (vector_mul N (recip_SNo (content M (closed_interval M (seq_cons (vector_sub M x (vector_mul M h (vec M 1)),vector_add M x (vector_mul M h (vec M 1))) seq_nil)))) (integral N M (closed_interval M (seq_cons (vector_sub M x (vector_mul M h (vec M 1)),vector_add M x (vector_mul M h (vec M 1))) seq_nil)) f)) (f x)) < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:6739 / HAS_VECTOR_DERIVATIVE_INDEFINITE_INTEGRAL   (hash md5:15407db48de06250e2212d7e352f4b72)
// not bridged: 
Theorem HAS_VECTOR_DERIVATIVE_INDEFINITE_INTEGRAL : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, integrable_on N 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) -> exists k c= R :^: idx 1, negligible 1 k /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: k -> has_vector_derivative N (fun x0:set => integral N 1 (closed_interval 1 (seq_cons (a,x0) seq_nil)) f) (f x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil))).
Admitted.

// HOL Light: Multivariate/measure.ml:6863 / ABSOLUTELY_INTEGRABLE_LEBESGUE_POINTS   (hash md5:2827dae274ad169ebef7ecd519fb7a30)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_LEBESGUE_POINTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (forall a b :e R :^: idx M, absolutely_integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil))) -> exists k c= R :^: idx M, negligible M k /\ forall x :e R :^: idx M, forall e0 :e R, ~ x :e k /\ 0 < e0 -> exists d :e R, 0 < d /\ forall h :e R, 0 < h /\ h < d -> vector_norm 1 (vector_mul 1 (recip_SNo (content M (closed_interval M (seq_cons (vector_sub M x (vector_mul M h (vec M 1)),vector_add M x (vector_mul M h (vec M 1))) seq_nil)))) (integral 1 M (closed_interval M (seq_cons (vector_sub M x (vector_mul M h (vec M 1)),vector_add M x (vector_mul M h (vec M 1))) seq_nil)) (fun t:set => lift (vector_norm N (vector_sub N (f t) (f x)))))) < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:6959 / measurable_on   (hash md5:2f766a4ed44b210463db6dde43367ca0)
// not bridged: 
Theorem measurable_on_thm : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f s <-> exists k c= R :^: idx M, exists g:set -> set -> set, (forall x :e omega, forall y :e R :^: idx M, g x y :e R :^: idx N) /\ (negligible M k /\ ((forall n :e omega, continuous_on_hl M N (g n) (R :^: idx M)) /\ forall x :e R :^: idx M, ~ x :e k -> tendsto N omega (fun n:set => g n x) (if x :e s then f x else vec N 0) sequentially))).
Admitted.

// HOL Light: Multivariate/measure.ml:6967 / MEASURABLE_ON_UNIV   (hash md5:e88e898b946ae9272fea466927700e35)
// not bridged: 
Theorem MEASURABLE_ON_UNIV : forall A M:set, A <> Empty -> M <> Empty -> forall s c= R :^: idx M, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx A) -> (measurable_on M A (fun x:set => if x :e s then f x else vec A 0) (R :^: idx M) <-> measurable_on M A f s).
Admitted.

// HOL Light: Multivariate/measure.ml:6976 / lebesgue_measurable   (hash md5:4ce41e870010172672837f990649b4c9)
// not bridged: 
Theorem lebesgue_measurable_thm : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s <-> measurable_on N 1 (indicator N s) (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:6983 / MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_INTEGRABLE   (hash md5:bc9ebfe18a4292d5b20110925367a928)
// not bridged: 
Theorem MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx 1) -> forall s c= R :^: idx M, measurable_on M N f s /\ (integrable_on 1 M g s /\ (forall x :e R :^: idx M, x :e s -> vector_norm N (f x) <= drop (g x))) -> integrable_on N M f s.
Admitted.

// HOL Light: Multivariate/measure.ml:7030 / MEASURABLE_BOUNDED_AE_BY_INTEGRABLE_IMP_INTEGRABLE   (hash md5:d49f788675ded748e6617f693745e6c5)
// not bridged: 
Theorem MEASURABLE_BOUNDED_AE_BY_INTEGRABLE_IMP_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx 1) -> forall s k c= R :^: idx M, measurable_on M N f s /\ (integrable_on 1 M g s /\ (negligible M k /\ (forall x :e R :^: idx M, x :e s :\: k -> vector_norm N (f x) <= drop (g x)))) -> integrable_on N M f s.
Admitted.

// HOL Light: Multivariate/measure.ml:7043 / MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_ABSOLUTELY_INTEGRABLE   (hash md5:ccc9d9919c9578655bba8665e223d762)
// not bridged: 
Theorem MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_ABSOLUTELY_INTEGRABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx 1) -> forall s c= R :^: idx M, measurable_on M N f s /\ (integrable_on 1 M g s /\ (forall x :e R :^: idx M, x :e s -> vector_norm N (f x) <= drop (g x))) -> absolutely_integrable_on N M f s.
Admitted.

// HOL Light: Multivariate/measure.ml:7061 / INTEGRAL_DROP_LE_MEASURABLE   (hash md5:9464cbc6ed311e0e24d5622d0cb326a6)
// not bridged: 
Theorem INTEGRAL_DROP_LE_MEASURABLE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx 1) -> forall s c= R :^: idx N, measurable_on N 1 f s /\ (integrable_on 1 N g s /\ (forall x :e R :^: idx N, x :e s -> 0 <= drop (f x) /\ drop (f x) <= drop (g x))) -> drop (integral 1 N s f) <= drop (integral 1 N s g).
Admitted.

// HOL Light: Multivariate/measure.ml:7072 / INTEGRABLE_SUBINTERVALS_IMP_MEASURABLE   (hash md5:7e2f7e3fa693c4d9aece1f2b12e3a9cd)
// not bridged: 
Theorem INTEGRABLE_SUBINTERVALS_IMP_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (forall a b :e R :^: idx M, integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil))) -> measurable_on M N f (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:7162 / INTEGRABLE_IMP_MEASURABLE   (hash md5:1d7da0ccd193c7ef72e7ecc399da1a2d)
// not bridged: 
Theorem INTEGRABLE_IMP_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, integrable_on N M f s -> measurable_on M N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:7174 / ABSOLUTELY_INTEGRABLE_MEASURABLE   (hash md5:1b498428bec7ebc10ed42d88b3c4dbbd)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, absolutely_integrable_on N M f s <-> measurable_on M N f s /\ integrable_on 1 M (fun x:set => lift (vector_norm N (f x))) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7189 / MEASURABLE_ON_COMPOSE_CONTINUOUS   (hash md5:cd8fdd9cfcd29a9895cea3921abfa393)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_CONTINUOUS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> measurable_on M N f (R :^: idx M) /\ continuous_on_hl N P g (R :^: idx N) -> measurable_on M P (fun x:set => g (f x)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:7208 / MEASURABLE_ON_COMPOSE_CONTINUOUS_0   (hash md5:62944eeaf09c0d4232a623f2ef31f748)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_CONTINUOUS_0 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall s c= R :^: idx M, measurable_on M N f s /\ (continuous_on_hl N P g (R :^: idx N) /\ g (vec N 0) = vec P 0) -> measurable_on M P (fun x:set => g (f x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7219 / MEASURABLE_ON_COMPOSE_CONTINUOUS_OPEN_INTERVAL   (hash md5:58dd152e3deb2cc53c87fe757c790b8c)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_CONTINUOUS_OPEN_INTERVAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall a b :e R :^: idx N, measurable_on M N f (R :^: idx M) /\ ((forall x :e R :^: idx M, f x :e open_interval N (a,b)) /\ continuous_on_hl N P g (open_interval N (a,b))) -> measurable_on M P (fun x:set => g (f x)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:7315 / MEASURABLE_ON_COMPOSE_CONTINUOUS_CLOSED_SET   (hash md5:195871b7db8c42c2afc90b5deb43e1d0)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_CONTINUOUS_CLOSED_SET : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall s c= R :^: idx N, closed N s /\ (measurable_on M N f (R :^: idx M) /\ ((forall x :e R :^: idx M, f x :e s) /\ continuous_on_hl N P g s)) -> measurable_on M P (fun x:set => g (f x)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:7332 / MEASURABLE_ON_COMPOSE_CONTINUOUS_CLOSED_SET_0   (hash md5:e06616c9ba1c1df3825c54c0909e75e3)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_CONTINUOUS_CLOSED_SET_0 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall s c= R :^: idx N, forall t c= R :^: idx M, closed N s /\ (measurable_on M N f t /\ ((forall x :e R :^: idx M, f x :e s) /\ (continuous_on_hl N P g s /\ (vec N 0 :e s /\ g (vec N 0) = vec P 0)))) -> measurable_on M P (fun x:set => g (f x)) t.
Admitted.

// HOL Light: Multivariate/measure.ml:7354 / CONTINUOUS_IMP_MEASURABLE_ON   (hash md5:ab43feb5e6860bf6fc0e629d7eb22fe9)
// not bridged: 
Theorem CONTINUOUS_IMP_MEASURABLE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> continuous_on_hl M N f (R :^: idx M) -> measurable_on M N f (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:7361 / MEASURABLE_ON_CONST   (hash md5:dd21aed80d330f57b012a31e114c22b5)
// not bridged: 
Theorem MEASURABLE_ON_CONST : forall M N:set, M <> Empty -> N <> Empty -> forall k :e R :^: idx N, measurable_on M N (fun x:set => k) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:7365 / MEASURABLE_ON_0   (hash md5:bb2c96e21af90fc398a72b6cf2cb1c2d)
// not bridged: 
Theorem MEASURABLE_ON_0 : forall A B:set, A <> Empty -> B <> Empty -> forall s c= R :^: idx A, measurable_on A B (fun x:set => vec B 0) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7370 / MEASURABLE_ON_CMUL   (hash md5:88b16da030bfba1ec7947ff83489940d)
// not bridged: 
Theorem MEASURABLE_ON_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s -> measurable_on M N (fun x:set => vector_mul N c (f x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7379 / MEASURABLE_ON_CMUL_EQ   (hash md5:1ba3be284dcf16351d105610eda4f648)
// not bridged: 
Theorem MEASURABLE_ON_CMUL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall c :e R, measurable_on M N (fun x:set => vector_mul N c (f x)) s <-> c = 0 \/ measurable_on M N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:7389 / MEASURABLE_ON_NEG   (hash md5:14377d9dc078d8a0be4b501d4693cb66)
// not bridged: 
Theorem MEASURABLE_ON_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s -> measurable_on M N (fun x:set => vector_neg N (f x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7395 / MEASURABLE_ON_NEG_EQ   (hash md5:0ff052197f0cb31706254aabfd9a0d20)
// not bridged: 
Theorem MEASURABLE_ON_NEG_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N (fun x:set => vector_neg N (f x)) s <-> measurable_on M N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:7401 / MEASURABLE_ON_NORM   (hash md5:526c5064c5c0bb70bc7129336be05a37)
// not bridged: 
Theorem MEASURABLE_ON_NORM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s -> measurable_on M 1 (fun x:set => lift (vector_norm N (f x))) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7412 / MEASURABLE_ON_LIFT_ABS   (hash md5:8141230d5c6c4d596ed034603eb4a4ec)
// not bridged: 
Theorem MEASURABLE_ON_LIFT_ABS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, measurable_on N 1 (fun x:set => lift (f x)) s -> measurable_on N 1 (fun x:set => lift (abs_SNo (f x))) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7418 / MEASURABLE_ON_PASTECART   (hash md5:f4fc97eaf0c10dfb7468aad07b8f287a)
// not bridged: 
Theorem MEASURABLE_ON_PASTECART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall s c= R :^: idx M, measurable_on M N f s /\ measurable_on M P g s -> measurable_on M (idx_n (dimindex N + dimindex P)) (fun x:set => pastecart N P (f x) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7438 / MEASURABLE_ON_COMBINE   (hash md5:d66dd8f5241654427b37dc4e7ffae9e9)
// not bridged: 
Theorem MEASURABLE_ON_COMBINE : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, h x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall s c= R :^: idx M, measurable_on M N f s /\ (measurable_on M P g s /\ (continuous_on_hl (idx_n (dimindex N + dimindex P)) Q (fun x:set => h (fstcart N x) (sndcart N P x)) (R :^: idx_n (dimindex N + dimindex P)) /\ h (vec N 0) (vec P 0) = vec Q 0)) -> measurable_on M Q (fun x:set => h (f x) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7453 / MEASURABLE_ON_ADD   (hash md5:5d15151f3363ee3cdd380365c7eeaaca)
// not bridged: 
Theorem MEASURABLE_ON_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ measurable_on M N g s -> measurable_on M N (fun x:set => vector_add N (f x) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7462 / MEASURABLE_ON_SUB   (hash md5:a36c8a7f93dbb42c85acffd688cf0871)
// not bridged: 
Theorem MEASURABLE_ON_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ measurable_on M N g s -> measurable_on M N (fun x:set => vector_sub N (f x) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7471 / MEASURABLE_ON_MAX   (hash md5:e1c72f4e626242ea5aca24b8756ce324)
// not bridged: 
Theorem MEASURABLE_ON_MAX : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ measurable_on M N g s -> measurable_on M N (fun x:set => fun i :e idx N => if f x i <= g x i then g x i else f x i) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7496 / MEASURABLE_ON_MIN   (hash md5:7608a482ff1554f95b3292c14eb0f2a4)
// not bridged: 
Theorem MEASURABLE_ON_MIN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ measurable_on M N g s -> measurable_on M N (fun x:set => fun i :e idx N => if f x i <= g x i then f x i else g x i) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7510 / MEASURABLE_ON_DROP_MUL   (hash md5:7e218e8fe2e7a4fea2af3e02340f0b26)
// not bridged: 
Theorem MEASURABLE_ON_DROP_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx 1) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M 1 f s /\ measurable_on M N g s -> measurable_on M N (fun x:set => vector_mul N (drop (f x)) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7522 / MEASURABLE_ON_LIFT_MUL   (hash md5:952eda8694e732d42b4b0ce8c0dbbeca)
// not bridged: 
Theorem MEASURABLE_ON_LIFT_MUL : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R) -> forall s c= R :^: idx A, measurable_on A 1 (fun x:set => lift (f x)) s /\ measurable_on A 1 (fun x:set => lift (g x)) s -> measurable_on A 1 (fun x:set => lift (f x * g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7530 / MEASURABLE_ON_MUL   (hash md5:017ffc6682e7f1636308dda048bfee0a)
// not bridged: 
Theorem MEASURABLE_ON_MUL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R) -> forall g:set -> set, (forall x :e R :^: idx B, g x :e R :^: idx A) -> forall s c= R :^: idx B, measurable_on B 1 (fun x:set => lift (f x)) s /\ measurable_on B A g s -> measurable_on B A (fun x:set => vector_mul A (f x) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7537 / MEASURABLE_ON_VSUM   (hash md5:565b8e237b6dccf65c0c771536fd7625)
// not bridged: 
Theorem MEASURABLE_ON_VSUM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f:set -> set -> set, (forall x :e A, forall y :e R :^: idx M, f x y :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= A, finite t /\ (forall i :e A, i :e t -> measurable_on M N (f i) s) -> measurable_on M N (fun x:set => vsum A N t (fun i:set => f i x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7546 / MEASURABLE_ON_COMPONENTWISE   (hash md5:7f01d47c379a6c85bce6d11f8a0064a9)
// not bridged: 
Theorem MEASURABLE_ON_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> measurable_on M 1 (fun x:set => lift (f x i)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7584 / MEASURABLE_ON_CONST_EQ   (hash md5:cb06500851d2725b8c718f39d64dc36b)
// not bridged: 
Theorem MEASURABLE_ON_CONST_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall c :e R :^: idx N, measurable_on M N (fun x:set => c) s <-> c = vec N 0 \/ lebesgue_measurable M s.
Admitted.

// HOL Light: Multivariate/measure.ml:7605 / MEASURABLE_ON_LIFT_POW   (hash md5:05901df8f2d5e2d628aadec32185db0b)
// not bridged: 
Theorem MEASURABLE_ON_LIFT_POW : forall M:set, M <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R) -> forall s c= R :^: idx M, forall n :e omega, measurable_on M 1 (fun x:set => lift (f x)) s /\ (n = 0 -> lebesgue_measurable M s) -> measurable_on M 1 (fun x:set => lift (f x ^ n)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7618 / MEASURABLE_ON_LIFT_PRODUCT   (hash md5:53d0ed8ee56864be6b8f75f43009a6a5)
// not bridged: 
Theorem MEASURABLE_ON_LIFT_PRODUCT : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set -> set, (forall x :e A, forall y :e R :^: idx N, f x y :e R) -> forall s c= R :^: idx N, forall t c= A, finite t /\ ((t = Empty -> lebesgue_measurable N s) /\ (forall i :e A, i :e t -> measurable_on N 1 (fun x:set => lift (f i x)) s)) -> measurable_on N 1 (fun x:set => lift (finprod t (fun i:set => f i x))) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7634 / MEASURABLE_ON_SPIKE   (hash md5:be85748005bb8a194fb6f9b5cdab6f54)
// not bridged: 
Theorem MEASURABLE_ON_SPIKE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s t c= R :^: idx M, negligible M s /\ (forall x :e R :^: idx M, x :e t :\: s -> g x = f x) -> measurable_on M N f t -> measurable_on M N g t.
Admitted.

// HOL Light: Multivariate/measure.ml:7645 / MEASURABLE_ON_SPIKE_SET   (hash md5:5c74e387cd48cf2fbc961e9b3a4c893d)
// not bridged: 
Theorem MEASURABLE_ON_SPIKE_SET : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, negligible M ((s :\: t) :\/: (t :\: s)) -> measurable_on M N f s -> measurable_on M N f t.
Admitted.

// HOL Light: Multivariate/measure.ml:7661 / MEASURABLE_ON_SPIKE_SET_EQ   (hash md5:00e89c64d4a80b8b4bb67bcaec153410)
// not bridged: 
Theorem MEASURABLE_ON_SPIKE_SET_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, negligible M ((s :\: t) :\/: (t :\: s)) -> (measurable_on M N f s <-> measurable_on M N f t).
Admitted.

// HOL Light: Multivariate/measure.ml:7668 / MEASURABLE_ON_EQ   (hash md5:ad316f0b2f99313ea73c16317eb39559)
// not bridged: 
Theorem MEASURABLE_ON_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, (forall x :e R :^: idx M, x :e s -> f x = g x) /\ measurable_on M N f s -> measurable_on M N g s.
Admitted.

// HOL Light: Multivariate/measure.ml:7678 / MEASURABLE_ON_RESTRICT   (hash md5:79eecaa9fdbadda4ee21851a0f75bfdc)
// not bridged: 
Theorem MEASURABLE_ON_RESTRICT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f (R :^: idx M) /\ lebesgue_measurable M s -> measurable_on M N (fun x:set => if x :e s then f x else vec N 0) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:7689 / MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET   (hash md5:05603b7d9572329f0eb50ee354517e0f)
// not bridged: 
Theorem MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s t c= R :^: idx B, s c= t /\ (measurable_on B A f t /\ lebesgue_measurable B s) -> measurable_on B A f s.
Admitted.

// HOL Light: Multivariate/measure.ml:7701 / MEASURABLE_ON_OPEN_INTERVAL   (hash md5:2532552a2e39184d1cefa1827229a92c)
// not bridged: 
Theorem MEASURABLE_ON_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall a b :e R :^: idx M, measurable_on M N f (open_interval M (a,b)) <-> measurable_on M N f (closed_interval M (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:7711 / MEASURABLE_ON_CASES   (hash md5:e01ca1700c2dacf51a574f64ee4b49c9)
// not bridged: 
Theorem MEASURABLE_ON_CASES : forall M N:set, M <> Empty -> N <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M {x :e R :^: idx M | P x} /\ (measurable_on M N f s /\ measurable_on M N g s) -> measurable_on M N (fun x:set => if P x then f x else g x) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7741 / MEASURABLE_ON_LIMIT   (hash md5:fe84f55fc8a59c9640af3071cd1f5087)
// not bridged: 
Theorem MEASURABLE_ON_LIMIT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set -> set, (forall x :e omega, forall y :e R :^: idx M, f x y :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s k c= R :^: idx M, (forall n :e omega, measurable_on M N (f n) s) /\ (negligible M k /\ (forall x :e R :^: idx M, x :e s :\: k -> tendsto N omega (fun n:set => f n x) (g x) sequentially)) -> measurable_on M N g s.
Admitted.

// HOL Light: Multivariate/measure.ml:7825 / MEASURABLE_ON_BILINEAR   (hash md5:e1ed8c8d5ed4d2ebbc39272a9ad79558)
// not bridged: 
Theorem MEASURABLE_ON_BILINEAR : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall op:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, op x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall s c= R :^: idx M, bilinear P Q N op /\ (measurable_on M N f s /\ measurable_on M P g s) -> measurable_on M Q (fun x:set => op (f x) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7860 / ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT   (hash md5:3881353a8e8250239b4e28d39df25d67)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall op:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, op x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall s c= R :^: idx M, bilinear P Q N op /\ (measurable_on M N f s /\ (bounded_hl N {f x | x :e s} /\ absolutely_integrable_on P M g s)) -> absolutely_integrable_on Q M (fun x:set => op (f x) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7889 / MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_ABSOLUTELY_INTEGRABLE_AE   (hash md5:81f5d40a8e3c1b4fcb8e3c2f5b35832a)
// not bridged: 
Theorem MEASURABLE_BOUNDED_BY_INTEGRABLE_IMP_ABSOLUTELY_INTEGRABLE_AE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx 1) -> forall s t c= R :^: idx M, measurable_on M N f s /\ (integrable_on 1 M g s /\ (negligible M t /\ (forall x :e R :^: idx M, x :e s :\: t -> vector_norm N (f x) <= drop (g x)))) -> absolutely_integrable_on N M f s.
Admitted.

// HOL Light: Multivariate/measure.ml:7917 / ABSOLUTELY_INTEGRABLE_SQUARE_INTEGRABLE_PRODUCT   (hash md5:2e28c82c87f8d57e66149cc6d281e6eb)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_SQUARE_INTEGRABLE_PRODUCT : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall s c= R :^: idx M, bilinear P Q N bop /\ (measurable_on M N f s /\ (integrable_on 1 M (fun x:set => lift (vector_norm N (f x) ^ 2)) s /\ (measurable_on M P g s /\ integrable_on 1 M (fun x:set => lift (vector_norm P (g x) ^ 2)) s))) -> absolutely_integrable_on Q M (fun x:set => bop (f x) (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:7939 / SQUARE_INTEGRAL_SQUARE_INTEGRABLE_PRODUCT_LE   (hash md5:cf9f0337d25ef836edef2a723248f607)
// not bridged: 
Theorem SQUARE_INTEGRAL_SQUARE_INTEGRABLE_PRODUCT_LE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall s c= R :^: idx M, measurable_on M N f s /\ (integrable_on 1 M (fun x:set => lift (vector_norm N (f x) ^ 2)) s /\ (measurable_on M P g s /\ integrable_on 1 M (fun x:set => lift (vector_norm P (g x) ^ 2)) s)) -> drop (integral 1 M s (fun x:set => lift (vector_norm N (f x) * vector_norm P (g x)))) ^ 2 <= drop (integral 1 M s (fun x:set => lift (vector_norm N (f x) ^ 2))) * drop (integral 1 M s (fun x:set => lift (vector_norm P (g x) ^ 2))).
Admitted.

// HOL Light: Multivariate/measure.ml:8043 / MEASURABLE_ON_EMPTY   (hash md5:9e687f59cd63356fadd64b6c03b6b04f)
// not bridged: 
Theorem MEASURABLE_ON_EMPTY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> measurable_on M N f Empty.
Admitted.

// HOL Light: Multivariate/measure.ml:8048 / MEASURABLE_ON_INTER   (hash md5:e4b1227e6e4f5f34bf3a3c9edf0b97c9)
// not bridged: 
Theorem MEASURABLE_ON_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, measurable_on M N f s /\ measurable_on M N f t -> measurable_on M N f (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:8113 / MEASURABLE_ON_DIFF   (hash md5:61ff97ea51f12ddbc9dd3e1611050e0f)
// not bridged: 
Theorem MEASURABLE_ON_DIFF : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, measurable_on M N f s /\ measurable_on M N f t -> measurable_on M N f (s :\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:8127 / MEASURABLE_ON_UNION   (hash md5:cf31978df47086e5d6681dc5af069769)
// not bridged: 
Theorem MEASURABLE_ON_UNION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, measurable_on M N f s /\ measurable_on M N f t -> measurable_on M N f (s :\/: t).
Admitted.

// HOL Light: Multivariate/measure.ml:8142 / MEASURABLE_ON_UNIONS   (hash md5:4231fed9522097a901a6bf121e0bf3bb)
// not bridged: 
Theorem MEASURABLE_ON_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall k c= Power (R :^: idx M), finite k /\ (forall s c= R :^: idx M, s :e k -> measurable_on M N f s) -> measurable_on M N f (Union k).
Admitted.

// HOL Light: Multivariate/measure.ml:8151 / MEASURABLE_ON_COUNTABLE_UNIONS   (hash md5:978654b2c12ff47236c3e3c000f1f189)
// not bridged: 
Theorem MEASURABLE_ON_COUNTABLE_UNIONS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall k c= Power (R :^: idx M), countable k /\ (forall s c= R :^: idx M, s :e k -> measurable_on M N f s) -> measurable_on M N f (Union k).
Admitted.

// HOL Light: Multivariate/measure.ml:8191 / ABSOLUTELY_INTEGRABLE_IMPROPER_SIMPLE   (hash md5:abfeab6b9b4da4ae2909dac8145d5fc5)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_IMPROPER_SIMPLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall a b :e R :^: idx M, (forall c d :e R :^: idx M, closed_interval M (seq_cons (c,d) seq_nil) c= open_interval M (a,b) -> absolutely_integrable_on N M f (closed_interval M (seq_cons (c,d) seq_nil))) /\ bounded_hl 1 (\/_ c :e R :^: idx M, {integral 1 M (closed_interval M (seq_cons (c,d) seq_nil)) (fun x:set => lift (vector_norm N (f x))) | d :e R :^: idx M, closed_interval M (seq_cons (c,d) seq_nil) c= open_interval M (a,b)}) -> absolutely_integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:8283 / ABSOLUTELY_INTEGRABLE_IMPROPER   (hash md5:28229e54de5eb6309cdfb448001ba76b)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_IMPROPER : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall a b :e R :^: idx M, (forall c d :e R :^: idx M, closed_interval M (seq_cons (c,d) seq_nil) c= open_interval M (a,b) -> integrable_on N M f (closed_interval M (seq_cons (c,d) seq_nil))) /\ (bounded_hl N (\/_ c :e R :^: idx M, {integral N M (closed_interval M (seq_cons (c,d) seq_nil)) f | d :e R :^: idx M, closed_interval M (seq_cons (c,d) seq_nil) c= open_interval M (a,b)}) /\ (forall i :e omega, 1 <= i /\ i <= dimindex N -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx 1) /\ (absolutely_integrable_on 1 M g (closed_interval M (seq_cons (a,b) seq_nil)) /\ ((forall x :e R :^: idx M, x :e closed_interval M (seq_cons (a,b) seq_nil) -> f x i <= drop (g x)) \/ forall x :e R :^: idx M, x :e closed_interval M (seq_cons (a,b) seq_nil) -> drop (g x) <= f x i)))) -> absolutely_integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:8449 / NEGLIGIBLE_LOCALLY_LIPSCHITZ_IMAGE   (hash md5:9e8baebcb595caba603c753fa4ca5bb5)
// not bridged: 
Theorem NEGLIGIBLE_LOCALLY_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M <= dimindex N /\ (negligible M s /\ (forall x :e R :^: idx M, x :e s -> exists t c= R :^: idx M, exists b :e R, open M t /\ (x :e t /\ forall y :e R :^: idx M, y :e s :/\: t -> vector_norm N (vector_sub N (f y) (f x)) <= b * vector_norm M (vector_sub M y x)))) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:8741 / NEGLIGIBLE_LOCALLY_LIPSCHITZ_IMAGE_LOWDIM   (hash md5:33964fdd6b5e37adcb5a2fc415a4cc66)
// not bridged: 
Theorem NEGLIGIBLE_LOCALLY_LIPSCHITZ_IMAGE_LOWDIM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M < dimindex N /\ (forall x :e R :^: idx M, x :e s -> exists t c= R :^: idx M, exists b :e R, open M t /\ (x :e t /\ forall y :e R :^: idx M, y :e s :/\: t -> vector_norm N (vector_sub N (f y) (f x)) <= b * vector_norm M (vector_sub M y x))) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:8774 / NEGLIGIBLE_LIPSCHITZ_IMAGE_UNIV   (hash md5:d63b48100ac8d309dfe53eead6d37741)
// not bridged: 
Theorem NEGLIGIBLE_LIPSCHITZ_IMAGE_UNIV : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, forall B :e R, negligible N s /\ (forall x y :e R :^: idx N, vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm N (vector_sub N x y)) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:8785 / NEGLIGIBLE_DIFFERENTIABLE_IMAGE_NEGLIGIBLE   (hash md5:1055c8ae66b98a43a368fdf362307e11)
// not bridged: 
Theorem NEGLIGIBLE_DIFFERENTIABLE_IMAGE_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M <= dimindex N /\ (negligible M s /\ differentiable_on_hl N M f s) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:8810 / NEGLIGIBLE_DIFFERENTIABLE_IMAGE_LOWDIM   (hash md5:7eef91fdab9d70535e2edc572a42e0ce)
// not bridged: 
Theorem NEGLIGIBLE_DIFFERENTIABLE_IMAGE_LOWDIM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M < dimindex N /\ differentiable_on_hl N M f s -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:8850 / BABY_SARD   (hash md5:d18e6c0458e7f775a5f1eae6b69f9065)
// not bridged: 
Theorem BABY_SARD : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx M, f' x y :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M <= dimindex N /\ (forall x :e R :^: idx M, x :e s -> has_derivative N M f (f' x) (within (R :^: idx M) (at_hl M x) s) /\ rank M N (matrix M N (f' x)) < dimindex N) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:9168 / BABY_SARD_ALT   (hash md5:1acf07298c7645a5a0e36aac477432e2)
// not bridged: 
Theorem BABY_SARD_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M <= dimindex N /\ (forall x :e R :^: idx M, x :e s -> exists f':set -> set, (forall x0 :e R :^: idx M, f' x0 :e R :^: idx N) /\ (has_derivative N M f f' (within (R :^: idx M) (at_hl M x) s) /\ rank M N (matrix M N f') < dimindex N)) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:9178 / NEGLIGIBLE_INFINITE_PREIMAGES_MOSTLY_DIFFERENTIABLE_GEN   (hash md5:d8681d0fdad9aae594f87f899a8ea9da)
// not bridged: 
Theorem NEGLIGIBLE_INFINITE_PREIMAGES_MOSTLY_DIFFERENTIABLE_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, (forall y :e R :^: idx N, compact N {x :e R :^: idx N | x :e s /\ f x = y}) /\ negligible N {f x | x :e {x :e R :^: idx N | x :e s /\ ~ differentiable N N f (within (R :^: idx N) (at_hl N x) s)}} -> negligible N {y :e R :^: idx N | infinite {x :e R :^: idx N | x :e s /\ f x = y}}.
Admitted.

// HOL Light: Multivariate/measure.ml:9219 / NEGLIGIBLE_INFINITE_PREIMAGES_MOSTLY_DIFFERENTIABLE   (hash md5:ed8a80ce217aeb63c444ec9583f1376f)
// not bridged: 
Theorem NEGLIGIBLE_INFINITE_PREIMAGES_MOSTLY_DIFFERENTIABLE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, continuous_on_hl N N f s /\ (compact N s /\ negligible N {f x | x :e {x :e R :^: idx N | x :e s /\ ~ differentiable N N f (within (R :^: idx N) (at_hl N x) s)}}) -> negligible N {y :e R :^: idx N | infinite {x :e R :^: idx N | x :e s /\ f x = y}}.
Admitted.

// HOL Light: Multivariate/measure.ml:9233 / NEGLIGIBLE_INFINITE_PREIMAGES_DIFFERENTIABLE   (hash md5:145618722a537ac4f35d3a0db4dc1e47)
// not bridged: 
Theorem NEGLIGIBLE_INFINITE_PREIMAGES_DIFFERENTIABLE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, compact N s /\ differentiable_on_hl N N f s -> negligible N {y :e R :^: idx N | infinite {x :e R :^: idx N | x :e s /\ f x = y}}.
Admitted.

// HOL Light: Multivariate/measure.ml:9248 / NEGLIGIBLE_IMAGE_BOUNDED_VARIATION_INTERVAL   (hash md5:816edf667aac33d014702fb05a2cfe93)
// not bridged: 
Theorem NEGLIGIBLE_IMAGE_BOUNDED_VARIATION_INTERVAL : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s c= R :^: idx 1, 2 <= dimindex N /\ (has_bounded_variation_on N f s /\ is_interval 1 s) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:9298 / NEGLIGIBLE_ABSOLUTELY_CONTINUOUS_IMAGE_LOWDIM   (hash md5:9d1600e6c54e843a219f5393cfa825d4)
// not bridged: 
Theorem NEGLIGIBLE_ABSOLUTELY_CONTINUOUS_IMAGE_LOWDIM : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s c= R :^: idx 1, 2 <= dimindex N /\ (absolutely_continuous_on N f s /\ is_interval 1 s) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:9338 / NEGLIGIBLE_RECTIFIABLE_PATH_IMAGE   (hash md5:55835b1a6e91010354f1f953f97069d5)
// not bridged: 
Theorem NEGLIGIBLE_RECTIFIABLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> 2 <= dimindex N /\ rectifiable_path N g -> negligible N (path_image N g).
Admitted.

// HOL Light: Multivariate/measure.ml:9345 / INTERIOR_RECTIFIABLE_PATH_IMAGE   (hash md5:1584d8cb75c7dba7429a53c5ce12f671)
// not bridged: 
Theorem INTERIOR_RECTIFIABLE_PATH_IMAGE : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> 2 <= dimindex N /\ rectifiable_path N g -> interior N (path_image N g) = Empty.
Admitted.

// HOL Light: Multivariate/measure.ml:9355 / MEASURABLE_ON_INDICATOR   (hash md5:ae2bc87abb8806c874da6f873dbfa98b)
// not bridged: 
Theorem MEASURABLE_ON_INDICATOR : forall A:set, A <> Empty -> forall s t c= R :^: idx A, measurable_on A 1 (indicator A t) s <-> lebesgue_measurable A (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:9362 / MEASURABLE_ON_INDICATOR_SUBSET   (hash md5:f1202d3e521a0123ae2731ed77e6264d)
// not bridged: 
Theorem MEASURABLE_ON_INDICATOR_SUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, t c= s -> (measurable_on N 1 (indicator N t) s <-> lebesgue_measurable N t).
Admitted.

// HOL Light: Multivariate/measure.ml:9368 / MEASURABLE_IMP_LEBESGUE_MEASURABLE   (hash md5:b0071b5e0354b930145919bef863db2a)
// not bridged: 
Theorem MEASURABLE_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9374 / NEGLIGIBLE_IMP_LEBESGUE_MEASURABLE   (hash md5:ace35137621fc77e957177bb5600584e)
// not bridged: 
Theorem NEGLIGIBLE_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9378 / LEBESGUE_MEASURABLE_EMPTY   (hash md5:c5e6af1121e83ea38a828b17b83adc7c)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_EMPTY : forall A:set, A <> Empty -> lebesgue_measurable A Empty.
Admitted.

// HOL Light: Multivariate/measure.ml:9382 / LEBESGUE_MEASURABLE_UNIV   (hash md5:50fd5eb84fafb897bdd019f9718e1c63)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_UNIV : forall N:set, N <> Empty -> lebesgue_measurable N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:9386 / LEBESGUE_MEASURABLE_COMPACT   (hash md5:8d757328c521fa5a5c9c8cc16564bcd9)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_COMPACT : forall N:set, N <> Empty -> forall s c= R :^: idx N, compact N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9390 / LEBESGUE_MEASURABLE_BALL   (hash md5:45950543b5e847bd2b5f4c8a446f0ad3)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_BALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, lebesgue_measurable N (ball N (a,r)).
Admitted.

// HOL Light: Multivariate/measure.ml:9395 / LEBESGUE_MEASURABLE_CBALL   (hash md5:e7195f897fbf46269e8cc5e5edfebb2f)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_CBALL : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall r :e R, lebesgue_measurable N (cball N (a,r)).
Admitted.

// HOL Light: Multivariate/measure.ml:9399 / LEBESGUE_MEASURABLE_INTERVAL   (hash md5:63ccf261e6268b1effd63e0b773d7fa4)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_INTERVAL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, lebesgue_measurable N (closed_interval N (seq_cons (a,b) seq_nil))) /\ forall a b :e R :^: idx N, lebesgue_measurable N (open_interval N (a,b)).
Admitted.

// HOL Light: Multivariate/measure.ml:9404 / LEBESGUE_MEASURABLE_INTER   (hash md5:c080cc57f09384807a08dc42af41ecae)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, lebesgue_measurable N s /\ lebesgue_measurable N t -> lebesgue_measurable N (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:9411 / LEBESGUE_MEASURABLE_UNION   (hash md5:f77afb9321332a10cd3e202fb1a42139)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, lebesgue_measurable N s /\ lebesgue_measurable N t -> lebesgue_measurable N (s :\/: t).
Admitted.

// HOL Light: Multivariate/measure.ml:9418 / LEBESGUE_MEASURABLE_DIFF   (hash md5:7867df35bd093eac215c3071ad08b9aa)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_DIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, lebesgue_measurable N s /\ lebesgue_measurable N t -> lebesgue_measurable N (s :\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:9425 / LEBESGUE_MEASURABLE_COMPL   (hash md5:752d5b302f740ee9f28280909f2bb33c)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_COMPL : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N ((R :^: idx N) :\: s) <-> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9430 / LEBESGUE_MEASURABLE_ON_SUBINTERVALS   (hash md5:568810814a218db4a9ce6e7694cadb15)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_ON_SUBINTERVALS : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s <-> forall a b :e R :^: idx N, lebesgue_measurable N (s :/\: closed_interval N (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:9449 / LEBESGUE_MEASURABLE_CLOSED   (hash md5:cde111b03ff12ee2ef5607ddc85bd152)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_CLOSED : forall N:set, N <> Empty -> forall s c= R :^: idx N, closed N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9456 / LEBESGUE_MEASURABLE_OPEN   (hash md5:c25983935f43a0c8a780e6096d365eab)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, open N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9462 / LEBESGUE_MEASURABLE_OPEN_IN   (hash md5:64bce0950b0ae5470e0a4a6b9b801067)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_OPEN_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, t :e subtopology (R :^: idx N) (euclidean N) s /\ lebesgue_measurable N s -> lebesgue_measurable N t.
Admitted.

// HOL Light: Multivariate/measure.ml:9469 / LEBESGUE_MEASURABLE_CLOSED_IN   (hash md5:6ad8906b2a3dc566417afd6cfd675361)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_CLOSED_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) t /\ lebesgue_measurable N s -> lebesgue_measurable N t.
Admitted.

// HOL Light: Multivariate/measure.ml:9476 / LEBESGUE_MEASURABLE_UNIONS   (hash md5:43b41f96b0e2d6e05558e622938422a9)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_UNIONS : forall A:set, A <> Empty -> forall f c= Power (R :^: idx A), finite f /\ (forall s c= R :^: idx A, s :e f -> lebesgue_measurable A s) -> lebesgue_measurable A (Union f).
Admitted.

// HOL Light: Multivariate/measure.ml:9482 / LEBESGUE_MEASURABLE_COUNTABLE_UNIONS   (hash md5:2677680ef1f2276ba5427d4621cf6edc)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_COUNTABLE_UNIONS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), countable f /\ (forall s c= R :^: idx N, s :e f -> lebesgue_measurable N s) -> lebesgue_measurable N (Union f).
Admitted.

// HOL Light: Multivariate/measure.ml:9489 / LEBESGUE_MEASURABLE_COUNTABLE_UNIONS_EXPLICIT   (hash md5:562572ed8045b84d68ed2044c5de058a)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_COUNTABLE_UNIONS_EXPLICIT : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, (forall n :e omega, lebesgue_measurable N (s n)) -> lebesgue_measurable N (Union {s n | n :e omega, n :e omega}).
Admitted.

// HOL Light: Multivariate/measure.ml:9497 / LEBESGUE_MEASURABLE_COUNTABLE_INTERS   (hash md5:e9e3d50f37258a967c2c420b14e9f169)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_COUNTABLE_INTERS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), countable f /\ (forall s c= R :^: idx N, s :e f -> lebesgue_measurable N s) -> lebesgue_measurable N {x :e R :^: idx N | forall Y :e f, x :e Y}.
Admitted.

// HOL Light: Multivariate/measure.ml:9507 / LEBESGUE_MEASURABLE_COUNTABLE_INTERS_EXPLICIT   (hash md5:9a7a754ca01576de540b6b9b5273c0a0)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_COUNTABLE_INTERS_EXPLICIT : forall N:set, N <> Empty -> forall s :e Power (R :^: idx N) :^: omega, (forall n :e omega, lebesgue_measurable N (s n)) -> lebesgue_measurable N {x :e R :^: idx N | forall Y :e {s n | n :e omega, n :e omega}, x :e Y}.
Admitted.

// HOL Light: Multivariate/measure.ml:9515 / LEBESGUE_MEASURABLE_INTERS   (hash md5:d1aba00bd0661ae428419a2ef8b58073)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_INTERS : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), finite f /\ (forall s c= R :^: idx N, s :e f -> lebesgue_measurable N s) -> lebesgue_measurable N {x :e R :^: idx N | forall Y :e f, x :e Y}.
Admitted.

// HOL Light: Multivariate/measure.ml:9521 / GDELTA_IMP_LEBESGUE_MEASURABLE   (hash md5:7a14f6874ff7728cb5b1f2cb6155afed)
// not bridged: 
Theorem GDELTA_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, gdelta N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9528 / FSIGMA_IMP_LEBESGUE_MEASURABLE   (hash md5:4dfb7012d2321f271e770e53af86f158)
// not bridged: 
Theorem FSIGMA_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, fsigma N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9535 / BOREL_IMP_LEBESGUE_MEASURABLE   (hash md5:6f11950b701da78cbfb8d5e58f999e98)
// not bridged: 
Theorem BOREL_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, borel N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9541 / LEBESGUE_MEASURABLE_IFF_MEASURABLE   (hash md5:319ec59969a67bf8521a2bc1905b40eb)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_IFF_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, bounded_hl N s -> (lebesgue_measurable N s <-> measurable N s).
Admitted.

// HOL Light: Multivariate/measure.ml:9561 / LEBESGUE_MEASURABLE_MEASURABLE_ON_SUBINTERVALS   (hash md5:13ea13d3e870557fa9be93a2ebec26e7)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_MEASURABLE_ON_SUBINTERVALS : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s <-> forall a b :e R :^: idx N, measurable N (s :/\: closed_interval N (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:9569 / LEBESGUE_MEASURABLE_MEASURABLE_ON_COUNTABLE_SUBINTERVALS   (hash md5:ee6321ae33bb287355633a56160fd965)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_MEASURABLE_ON_COUNTABLE_SUBINTERVALS : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s <-> forall n :e omega, measurable N (s :/\: closed_interval N (seq_cons (vector_neg N (vec N n),vec N n) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:9593 / MEASURABLE_ON_MEASURABLE_SUBSET   (hash md5:f99ac0a65dfa2895238ec0c42fab5b9a)
// not bridged: 
Theorem MEASURABLE_ON_MEASURABLE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s t c= R :^: idx B, s c= t /\ (measurable_on B A f t /\ measurable B s) -> measurable_on B A f s.
Admitted.

// HOL Light: Multivariate/measure.ml:9599 / LEBESGUE_MEASURABLE_JORDAN   (hash md5:04f3ffb58d9df1416a4bf28cc6503003)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_JORDAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N (frontier N s) -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9612 / LEBESGUE_MEASURABLE_CONVEX   (hash md5:1884ff098a4675356afe3d104dbd798e)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_CONVEX : forall N:set, N <> Empty -> forall s c= R :^: idx N, convex N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9616 / LEBESGUE_MEASURABLE_NEGLIGIBLE_SYMDIFF   (hash md5:1695a2d4a480793a30c4bf382d8aba15)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_NEGLIGIBLE_SYMDIFF : forall N:set, N <> Empty -> forall s t c= R :^: idx N, lebesgue_measurable N s /\ negligible N ((s :\: t) :\/: (t :\: s)) -> lebesgue_measurable N t.
Admitted.

// HOL Light: Multivariate/measure.ml:9629 / LEBESGUE_MEASURABLE_NEGLIGIBLE_SYMDIFF_EQ   (hash md5:ee4b9eb4e8fc09a80f1f14e484c78b38)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_NEGLIGIBLE_SYMDIFF_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, negligible N ((s :\: t) :\/: (t :\: s)) -> (lebesgue_measurable N s <-> lebesgue_measurable N t).
Admitted.

// HOL Light: Multivariate/measure.ml:9635 / LEBESGUE_MEASURABLE_INSERT   (hash md5:095d9aa88d47179e0df2cf33162328ab)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, lebesgue_measurable N (SetAdjoin s a) <-> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9643 / LEBESGUE_MEASURABLE_DELETE   (hash md5:dbfeb3f32ca583ac4db49c849375381e)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_DELETE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, lebesgue_measurable N (s :\: {a}) <-> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9651 / LEBESGUE_MEASURABLE_SING   (hash md5:5806921bfe16df03f0bef65e56feaf09)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_SING : forall N:set, N <> Empty -> forall a :e R :^: idx N, lebesgue_measurable N {a}.
Admitted.

// HOL Light: Multivariate/measure.ml:9656 / ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_INTER   (hash md5:352b83323d58c32d507722fa2247df2c)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, absolutely_integrable_on N M f s /\ lebesgue_measurable M t -> absolutely_integrable_on N M f (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:9679 / ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET   (hash md5:246e24f69efa11fc601d481b59c40ec5)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, absolutely_integrable_on N M f s /\ (t c= s /\ lebesgue_measurable M t) -> absolutely_integrable_on N M f t.
Admitted.

// HOL Light: Multivariate/measure.ml:9690 / MEASURABLE_ON_TRANSLATION   (hash md5:4456d99744020149a85b8f276ca21315)
// not bridged: 
Theorem MEASURABLE_ON_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall a :e R :^: idx M, measurable_on M N f {vector_add M a x | x :e s} -> measurable_on M N (fun x:set => f (vector_add M a x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:9708 / MEASURABLE_ON_TRANSLATION_EQ   (hash md5:4f757e38ac7efaa3c14da61c0a9cc8a8)
// not bridged: 
Theorem MEASURABLE_ON_TRANSLATION_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall a :e R :^: idx M, measurable_on M N (fun x:set => f (vector_add M a x)) s <-> measurable_on M N f {vector_add M a x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:9719 / NEGLIGIBLE_LINEAR_IMAGE_GEN   (hash md5:d98398296e39f28cc394a2aaf76ed251)
// not bridged: 
Theorem NEGLIGIBLE_LINEAR_IMAGE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (negligible M s /\ dimindex M <= dimindex N) -> negligible N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:9727 / MEASURABLE_ON_LINEAR_IMAGE_EQ_GEN   (hash md5:75cd8e43ff1963086aac47ceaabf0859)
// not bridged: 
Theorem MEASURABLE_ON_LINEAR_IMAGE_EQ_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx N, h x :e R :^: idx P) -> forall s c= R :^: idx M, dimindex M = dimindex N /\ (linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y)) -> (measurable_on M P (fun x:set => h (f x)) s <-> measurable_on N P h {f x | x :e s}).
Admitted.

// HOL Light: Multivariate/measure.ml:9771 / MEASURABLE_ON_LINEAR_IMAGE_EQ   (hash md5:e91954e51d231d3c8804ee5009d855d2)
// not bridged: 
Theorem MEASURABLE_ON_LINEAR_IMAGE_EQ : forall N P:set, N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx N, h x :e R :^: idx P) -> forall s c= R :^: idx N, linear N N f /\ (forall x y :e R :^: idx N, f x = f y -> x = y) -> (measurable_on N P (fun x:set => h (f x)) s <-> measurable_on N P h {f x | x :e s}).
Admitted.

// HOL Light: Multivariate/measure.ml:9778 / LEBESGUE_MEASURABLE_TRANSLATION   (hash md5:2ecba9d2ac890cf0fd1b6d501dbeb821)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_TRANSLATION : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, lebesgue_measurable N {vector_add N a x | x :e s} <-> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:9789 / LEBESGUE_MEASURABLE_LINEAR_IMAGE_EQ   (hash md5:7dd84c180f588f466fe788f7f691e3da)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LINEAR_IMAGE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, linear N N f /\ (forall x y :e R :^: idx N, f x = f y -> x = y) -> (lebesgue_measurable N {f x | x :e s} <-> lebesgue_measurable N s).
Admitted.

// HOL Light: Multivariate/measure.ml:9812 / MEASURABLE_ON_REFLECT   (hash md5:f0b46cf3af59b3af158f33f7da9691fb)
// not bridged: 
Theorem MEASURABLE_ON_REFLECT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N (fun x:set => f (vector_neg M x)) s <-> measurable_on M N f {vector_neg M x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:10046 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GE   (hash md5:5b2abee524732aa965470673da5618cc)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall a :e R, forall k :e omega, 1 <= k /\ k <= dimindex N -> lebesgue_measurable M {x :e R :^: idx M | a <= f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:10056 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GT   (hash md5:aa9a633d5d9e3d141745c273a1995799)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall a :e R, forall k :e omega, 1 <= k /\ k <= dimindex N -> lebesgue_measurable M {x :e R :^: idx M | a < f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:10067 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LE   (hash md5:e029ba37a023c6dd4d664f9b7956f8b2)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall a :e R, forall k :e omega, 1 <= k /\ k <= dimindex N -> lebesgue_measurable M {x :e R :^: idx M | f x k <= a}).
Admitted.

// HOL Light: Multivariate/measure.ml:10127 / MEASURABLE_ON_PREIMAGE_CLOSED   (hash md5:9c6d3e302aed8f910c59368dbfcb711c)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall t c= R :^: idx N, closed N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:10138 / MEASURABLE_ON_PREIMAGE_CLOSED_INTERVAL   (hash md5:9607410f686e5c4176290195b2635253)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_CLOSED_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall a b :e R :^: idx N, lebesgue_measurable M {x :e R :^: idx M | f x :e closed_interval N (seq_cons (a,b) seq_nil)}).
Admitted.

// HOL Light: Multivariate/measure.ml:10158 / MEASURABLE_ON_PREIMAGE_BOREL   (hash md5:321661fc4c0b9ef3e0390834b5721514)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_BOREL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall t c= R :^: idx N, borel N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:10174 / LEBESGUE_MEASURABLE_PREIMAGE_OPEN   (hash md5:cb55eb46636aa68cdda1b7b30f9e8c7f)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, measurable_on M N f (R :^: idx M) /\ open N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:10180 / LEBESGUE_MEASURABLE_PREIMAGE_CLOSED   (hash md5:a085012d8e415a4035f8add89734fce7)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, measurable_on M N f (R :^: idx M) /\ closed N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:10186 / LEBESGUE_MEASURABLE_PREIMAGE_BOREL   (hash md5:695214a03e2c7c4db5efc449f9ed720d)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PREIMAGE_BOREL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, measurable_on M N f (R :^: idx M) /\ borel N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:10192 / MEASURABLE_ON_PREIMAGE_ORTHANT_LE   (hash md5:e00d6537105733a63cbf8acdcb221581)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ORTHANT_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall a :e R :^: idx N, lebesgue_measurable M {x :e R :^: idx M | forall k :e omega, 1 <= k /\ k <= dimindex N -> f x k <= a k}).
Admitted.

// HOL Light: Multivariate/measure.ml:10228 / MEASURABLE_ON_PREIMAGE_ORTHANT_GE   (hash md5:a452e53b8b3cd6d303390fe3c7d90004)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ORTHANT_GE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall a :e R :^: idx N, lebesgue_measurable M {x :e R :^: idx M | forall k :e omega, 1 <= k /\ k <= dimindex N -> a k <= f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:10239 / MEASURABLE_ON_PREIMAGE_ORTHANT_LT   (hash md5:400e9b6c6991c759dd260edce383b253)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ORTHANT_LT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall a :e R :^: idx N, lebesgue_measurable M {x :e R :^: idx M | forall k :e omega, 1 <= k /\ k <= dimindex N -> f x k < a k}).
Admitted.

// HOL Light: Multivariate/measure.ml:10277 / MEASURABLE_ON_PREIMAGE_ORTHANT_GT   (hash md5:da9457e293b5ce6eab656dcb4ef50b94)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ORTHANT_GT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall a :e R :^: idx N, lebesgue_measurable M {x :e R :^: idx M | forall k :e omega, 1 <= k /\ k <= dimindex N -> a k < f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:10288 / MEASURABLE_ON_SIMPLE_FUNCTION_LIMIT_INCREASING   (hash md5:f64c9d3a0eafcb0cb5920dae0e58ed18)
// not bridged: 
Theorem MEASURABLE_ON_SIMPLE_FUNCTION_LIMIT_INCREASING : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> (measurable_on N 1 f (R :^: idx N) /\ (forall x :e R :^: idx N, 0 <= drop (f x)) <-> exists g:set -> set -> set, (forall x :e omega, forall y :e R :^: idx N, g x y :e R :^: idx 1) /\ ((forall n :e omega, forall x :e R :^: idx N, 0 <= drop (g n x) /\ drop (g n x) <= drop (f x)) /\ ((forall n :e omega, forall x :e R :^: idx N, drop (g n x) <= drop (g (ordsucc n) x)) /\ ((forall n :e omega, measurable_on N 1 (g n) (R :^: idx N)) /\ ((forall n :e omega, finite {g n x | x :e R :^: idx N}) /\ forall x :e R :^: idx N, tendsto 1 omega (fun n:set => g n x) (f x) sequentially))))).
Admitted.

// HOL Light: Multivariate/measure.ml:10637 / ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT_EQ_ALT   (hash md5:f4ed45accf0c76505c4bce838a753dbc)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_BOUNDED_MEASURABLE_PRODUCT_EQ_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s -> (absolutely_integrable_on N M f s <-> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx 1) -> measurable_on M 1 g s /\ bounded_hl 1 {g x | x :e s} -> integrable_on N M (fun x:set => vector_mul N (drop (g x)) (f x)) s).
Admitted.

// HOL Light: Multivariate/measure.ml:10653 / ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET_EQ_ALT   (hash md5:c1f4682109a64f388fa8e51bbc4af350)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ON_LEBESGUE_MEASURABLE_SUBSET_EQ_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s -> (absolutely_integrable_on N M f s <-> forall t c= R :^: idx M, t c= s /\ lebesgue_measurable M t -> integrable_on N M f t).
Admitted.

// HOL Light: Multivariate/measure.ml:10666 / MEASURABLE_LEBESGUE_MEASURABLE_SUBSET   (hash md5:5b2f87666538a836b8c19058ecc3afaf)
// not bridged: 
Theorem MEASURABLE_LEBESGUE_MEASURABLE_SUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, lebesgue_measurable N s /\ (measurable N t /\ s c= t) -> measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:10679 / MEASURABLE_LEBESGUE_MEASURABLE_INTER_MEASURABLE   (hash md5:ddf036edc6a6f9e0227ff97749c18e86)
// not bridged: 
Theorem MEASURABLE_LEBESGUE_MEASURABLE_INTER_MEASURABLE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, lebesgue_measurable N s /\ measurable N t -> measurable N (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:10687 / MEASURABLE_MEASURABLE_INTER_LEBESGUE_MEASURABLE   (hash md5:d26e379f9534dfa2ac4364708f521772)
// not bridged: 
Theorem MEASURABLE_MEASURABLE_INTER_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, measurable N s /\ lebesgue_measurable N t -> measurable N (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:10692 / LEBESGUE_MEASURABLE_MEASURABLE_INTER_EQ   (hash md5:2f645e3375905b54d8c19fdb3599a910)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_MEASURABLE_INTER_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s <-> forall t c= R :^: idx N, measurable N t -> measurable N (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:10700 / MEASURABLE_INTER_HALFSPACE_LE   (hash md5:315603aeb535dcba44466a96298329ff)
// not bridged: 
Theorem MEASURABLE_INTER_HALFSPACE_LE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R, forall i :e omega, measurable N s -> measurable N (s :/\: {x :e R :^: idx N | x i <= a}).
Admitted.

// HOL Light: Multivariate/measure.ml:10709 / MEASURABLE_INTER_HALFSPACE_GE   (hash md5:55f0c83c16812d92a1b6df70e68044ac)
// not bridged: 
Theorem MEASURABLE_INTER_HALFSPACE_GE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R, forall i :e omega, measurable N s -> measurable N (s :/\: {x :e R :^: idx N | a <= x i}).
Admitted.

// HOL Light: Multivariate/measure.ml:10718 / MEASURABLE_MEASURABLE_DIFF_LEBESGUE_MEASURABLE   (hash md5:1fa0ca9863f3480ceef8925125baaea1)
// not bridged: 
Theorem MEASURABLE_MEASURABLE_DIFF_LEBESGUE_MEASURABLE : forall A:set, A <> Empty -> forall s t c= R :^: idx A, measurable A s /\ lebesgue_measurable A t -> measurable A (s :\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:10725 / MEASURABLE_OPEN_IN   (hash md5:ba249369316ce7ed6763409b9aaa1ed3)
// not bridged: 
Theorem MEASURABLE_OPEN_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, t :e subtopology (R :^: idx N) (euclidean N) s /\ measurable N s -> measurable N t.
Admitted.

// HOL Light: Multivariate/measure.ml:10732 / MEASURABLE_CLOSED_IN   (hash md5:200df81327f8b069107fdd00184976f7)
// not bridged: 
Theorem MEASURABLE_CLOSED_IN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, closed_in (R :^: idx N) (subtopology (R :^: idx N) (euclidean N) s) t /\ measurable N s -> measurable N t.
Admitted.

// HOL Light: Multivariate/measure.ml:10739 / MEASURABLE_ON_REAL_SGN   (hash md5:57c2792c3039881f3994a920230e2263)
// not bridged: 
Theorem MEASURABLE_ON_REAL_SGN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, measurable_on N 1 (fun x:set => lift (f x)) s -> measurable_on N 1 (fun x:set => lift (if 0 < f x then 1 else if f x < 0 then - 1 else 0)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:10764 / LEBESGUE_MEASURABLE_INNER_COMPACT   (hash md5:7ef6d8d5dc483ad8fd212ed0f8119c85)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_INNER_COMPACT : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s /\ ~ negligible N s -> exists k c= R :^: idx N, k c= s /\ (compact N k /\ 0 < measure N k).
Admitted.

// HOL Light: Multivariate/measure.ml:10779 / CHOOSE_LARGE_MEASURABLE_SUBSET   (hash md5:a9ce5304856c8a0178ed66a343364c13)
// not bridged: 
Theorem CHOOSE_LARGE_MEASURABLE_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall B :e R, lebesgue_measurable N s /\ ~ measurable N s -> exists t c= R :^: idx N, t c= s /\ (measurable N t /\ B <= measure N t).
Admitted.

// HOL Light: Multivariate/measure.ml:10814 / CHOOSE_LARGE_COMPACT_SUBSET   (hash md5:f8a9923b74e81834aa80df24517c4e99)
// not bridged: 
Theorem CHOOSE_LARGE_COMPACT_SUBSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall B :e R, lebesgue_measurable N s /\ ~ measurable N s -> exists t c= R :^: idx N, t c= s /\ (compact N t /\ B <= measure N t).
Admitted.

// HOL Light: Multivariate/measure.ml:10828 / CHOOSE_LARGE_COMPACT_SUBSET_ALT   (hash md5:5bd21d71228be4a16d06dfc51da0bb83)
// not bridged: 
Theorem CHOOSE_LARGE_COMPACT_SUBSET_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall B :e R, lebesgue_measurable N s /\ B < measure N s -> exists t c= R :^: idx N, compact N t /\ (t c= s /\ B < measure N t).
Admitted.

// HOL Light: Multivariate/measure.ml:10840 / OUTER_LEBESGUE_MEASURE   (hash md5:1f4a70b000274599373d20c8e1b43366)
// not bridged: 
Theorem OUTER_LEBESGUE_MEASURE : forall N:set, N <> Empty -> forall s c= R :^: idx N, exists t c= R :^: idx N, s c= t /\ (lebesgue_measurable N t /\ forall t' c= R :^: idx N, s c= t' /\ lebesgue_measurable N t' -> negligible N (t :\: t')).
Admitted.

// HOL Light: Multivariate/measure.ml:10867 / OUTER_MEASURE_GEN   (hash md5:f95249945803aa62ab98fd258f9c0b1c)
// not bridged: 
Theorem OUTER_MEASURE_GEN : forall N:set, N <> Empty -> forall s u c= R :^: idx N, s c= u /\ measurable N u -> exists t c= R :^: idx N, s c= t /\ (measurable N t /\ forall t' c= R :^: idx N, s c= t' /\ lebesgue_measurable N t' -> negligible N (t :\: t')).
Admitted.

// HOL Light: Multivariate/measure.ml:10886 / OUTER_MEASURE_EQ   (hash md5:86a1a10ef0ca9d5a70dd665eb916cff8)
// not bridged: 
Theorem OUTER_MEASURE_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, (exists t c= R :^: idx N, s c= t /\ measurable N t) <-> exists t c= R :^: idx N, s c= t /\ (measurable N t /\ forall t' c= R :^: idx N, s c= t' /\ lebesgue_measurable N t' -> negligible N (t :\: t')).
Admitted.

// HOL Light: Multivariate/measure.ml:10899 / CONTINUOUS_ON_MEASURE_IN_PORTION   (hash md5:0801b299df4f7e107f5319a37f246c7c)
// not bridged: 
Theorem CONTINUOUS_ON_MEASURE_IN_PORTION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, f x y :e R) -> forall s c= R :^: idx N, forall t c= R :^: idx M, measurable N s /\ ((forall a :e R :^: idx M, a :e t -> lebesgue_measurable N {x :e R :^: idx N | f a x <= 0}) /\ ((forall a :e R :^: idx M, a :e t -> negligible N {x :e R :^: idx N | f a x = 0}) /\ (forall x :e R :^: idx N, x :e s -> continuous_on_hl M 1 (fun a:set => lift (f a x)) t))) -> continuous_on_hl M 1 (fun a:set => lift (measure N {x :e R :^: idx N | x :e s /\ f a x <= 0})) t.
Admitted.

// HOL Light: Multivariate/measure.ml:10940 / CONTINUOUS_ON_MEASURE_IN_HALFSPACE   (hash md5:6881ce9cff7c4f2f8d9bd4027f0ab6eb)
// not bridged: 
Theorem CONTINUOUS_ON_MEASURE_IN_HALFSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall b :e R, measurable N s -> continuous_on_hl N 1 (fun a:set => lift (measure N {x :e R :^: idx N | x :e s /\ dot N a x <= b})) ((R :^: idx N) :\: {vec N 0}).
Admitted.

// HOL Light: Multivariate/measure.ml:10957 / NEGLIGIBLE_DISJOINT_TRANSLATES   (hash md5:fd0b71c8665047c70d4b5f5109a2dc6f)
// not bridged: 
Theorem NEGLIGIBLE_DISJOINT_TRANSLATES : forall N:set, N <> Empty -> forall s k c= R :^: idx N, forall z :e R :^: idx N, lebesgue_measurable N s /\ (limit_point_of N z k /\ (forall x y :e k, x <> y -> {vector_add N x x0 | x0 :e s} :/\: {vector_add N y x0 | x0 :e s} = Empty)) -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:11029 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LE_DENSE   (hash md5:f47e7147eadb65a1e4d3b5aaa73d3e4c)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LE_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall r c= R, closure 1 {lift x | x :e r} = R :^: idx 1 -> (measurable_on M N f (R :^: idx M) <-> forall a :e R, forall k :e omega, 1 <= k /\ (k <= dimindex N /\ a :e r) -> lebesgue_measurable M {x :e R :^: idx M | f x k <= a}).
Admitted.

// HOL Light: Multivariate/measure.ml:11074 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GE_DENSE   (hash md5:4313c822479ff18814c0cc18b5a56767)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GE_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall r c= R, closure 1 {lift x | x :e r} = R :^: idx 1 -> (measurable_on M N f (R :^: idx M) <-> forall a :e R, forall k :e omega, 1 <= k /\ (k <= dimindex N /\ a :e r) -> lebesgue_measurable M {x :e R :^: idx M | a <= f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:11094 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LT_DENSE   (hash md5:9ab3dfb52544636bfe4b1b8f113689c3)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_LT_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall r c= R, closure 1 {lift x | x :e r} = R :^: idx 1 -> (measurable_on M N f (R :^: idx M) <-> forall a :e R, forall k :e omega, 1 <= k /\ (k <= dimindex N /\ a :e r) -> lebesgue_measurable M {x :e R :^: idx M | f x k < a}).
Admitted.

// HOL Light: Multivariate/measure.ml:11105 / MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GT_DENSE   (hash md5:9e9b1c7ee4c20da6270069419916e597)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_HALFSPACE_COMPONENT_GT_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall r c= R, closure 1 {lift x | x :e r} = R :^: idx 1 -> (measurable_on M N f (R :^: idx M) <-> forall a :e R, forall k :e omega, 1 <= k /\ (k <= dimindex N /\ a :e r) -> lebesgue_measurable M {x :e R :^: idx M | a < f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:11116 / MEASURABLE_ON_PREIMAGE_CLOSED_INTERVAL_DENSE   (hash md5:de7e484d2878bd688eb3eeda568e3d7a)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_CLOSED_INTERVAL_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, closure N t = R :^: idx N -> (measurable_on M N f (R :^: idx M) <-> forall a b :e R :^: idx N, a :e t /\ b :e t -> lebesgue_measurable M {x :e R :^: idx M | f x :e closed_interval N (seq_cons (a,b) seq_nil)}).
Admitted.

// HOL Light: Multivariate/measure.ml:11180 / MEASURABLE_ON_PREIMAGE_OPEN_INTERVAL_DENSE   (hash md5:481365933313ece5ef8eb98c7bcd122d)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_OPEN_INTERVAL_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, closure N t = R :^: idx N -> (measurable_on M N f (R :^: idx M) <-> forall a b :e R :^: idx N, a :e t /\ b :e t -> lebesgue_measurable M {x :e R :^: idx M | f x :e open_interval N (a,b)}).
Admitted.

// HOL Light: Multivariate/measure.ml:11250 / MEASURABLE_ON_PREIMAGE_ORTHANT_LE_DENSE   (hash md5:906311e2059d4859a45a7a6e48593fe4)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ORTHANT_LE_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, closure N t = R :^: idx N -> (measurable_on M N f (R :^: idx M) <-> forall a :e R :^: idx N, a :e t -> lebesgue_measurable M {x :e R :^: idx M | forall k :e omega, 1 <= k /\ k <= dimindex N -> f x k <= a k}).
Admitted.

// HOL Light: Multivariate/measure.ml:11309 / MEASURABLE_ON_PREIMAGE_ORTHANT_GE_DENSE   (hash md5:182159fd4d6bcd62e064b74e8f668d72)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ORTHANT_GE_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, closure N t = R :^: idx N -> (measurable_on M N f (R :^: idx M) <-> forall a :e R :^: idx N, a :e t -> lebesgue_measurable M {x :e R :^: idx M | forall k :e omega, 1 <= k /\ k <= dimindex N -> a k <= f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:11326 / MEASURABLE_ON_PREIMAGE_ORTHANT_LT_DENSE   (hash md5:b7e7911f778e18d3728b02852022c4d6)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ORTHANT_LT_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, closure N t = R :^: idx N -> (measurable_on M N f (R :^: idx M) <-> forall a :e R :^: idx N, a :e t -> lebesgue_measurable M {x :e R :^: idx M | forall k :e omega, 1 <= k /\ k <= dimindex N -> f x k < a k}).
Admitted.

// HOL Light: Multivariate/measure.ml:11396 / MEASURABLE_ON_PREIMAGE_ORTHANT_GT_DENSE   (hash md5:3b8858d40273a3d20a563ce06888acea)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ORTHANT_GT_DENSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, closure N t = R :^: idx N -> (measurable_on M N f (R :^: idx M) <-> forall a :e R :^: idx N, a :e t -> lebesgue_measurable M {x :e R :^: idx M | forall k :e omega, 1 <= k /\ k <= dimindex N -> a k < f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:11496 / LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_OPEN   (hash md5:821fd37ad1b5b3ddedcffca06b0cedef)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, measurable_on M N f s /\ (lebesgue_measurable M s /\ open N t) -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11502 / LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED   (hash md5:59f003a10c6da33ced957ffb240037e7)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, measurable_on M N f s /\ (lebesgue_measurable M s /\ closed N t) -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11508 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_OPEN_EQ   (hash md5:17c9958f7cadf15127ac8e69ca47bd8d)
// not bridged: 
Theorem MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_OPEN_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ lebesgue_measurable M s <-> forall t c= R :^: idx N, open N t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11518 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED_EQ   (hash md5:dee018f4f9a2839adf98b132e290d936)
// not bridged: 
Theorem MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_CLOSED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ lebesgue_measurable M s <-> forall t c= R :^: idx N, closed N t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11592 / MEASURABLE_MEASURABLE_PREIMAGE_OPEN   (hash md5:edc92e1119666b318f31ac58871073e5)
// not bridged: 
Theorem MEASURABLE_MEASURABLE_PREIMAGE_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, measurable_on M N f s /\ (measurable M s /\ open N t) -> measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11598 / MEASURABLE_MEASURABLE_PREIMAGE_CLOSED   (hash md5:136ef4248d89701f12a5a0708070fff8)
// not bridged: 
Theorem MEASURABLE_MEASURABLE_PREIMAGE_CLOSED : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, measurable_on M N f s /\ (measurable M s /\ closed N t) -> measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11604 / MEASURABLE_ON_MEASURABLE_PREIMAGE_OPEN_EQ   (hash md5:a9d96967adb8e307bc190ceaded304e5)
// not bridged: 
Theorem MEASURABLE_ON_MEASURABLE_PREIMAGE_OPEN_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ measurable M s <-> forall t c= R :^: idx N, open N t -> measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11614 / MEASURABLE_ON_MEASURABLE_PREIMAGE_CLOSED_EQ   (hash md5:b6f8a8bad7456d4fd3b1ead24b256485)
// not bridged: 
Theorem MEASURABLE_ON_MEASURABLE_PREIMAGE_CLOSED_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ measurable M s <-> forall t c= R :^: idx N, closed N t -> measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11624 / LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_BOREL   (hash md5:fce5954aae4ced0439619b96085909f6)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_BOREL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, measurable_on M N f s /\ (lebesgue_measurable M s /\ borel N t) -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11630 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_BOREL_EQ   (hash md5:6dac4d679ec201cc4bcef84419988f6b)
// not bridged: 
Theorem MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_BOREL_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ lebesgue_measurable M s <-> forall t c= R :^: idx N, borel N t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11644 / SUSLIN_LEBESGUE_MEASURABLE   (hash md5:f9b48c4f4b05e1527992578b151d5e61)
// not bridged: 
Theorem SUSLIN_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall x c= R :^: idx N, x :e suslin (R :^: idx N) {x0 :e Power (R :^: idx N) | lebesgue_measurable N x0} <-> lebesgue_measurable N x.
Admitted.

// HOL Light: Multivariate/measure.ml:11779 / ANALYTIC_IMP_LEBESGUE_MEASURABLE   (hash md5:da9727e8020f2eb8aa918407fdcf7ae3)
// not bridged: 
Theorem ANALYTIC_IMP_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, analytic N s -> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:11786 / LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC   (hash md5:593836b8f41a22633e0f528e51192f2b)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, measurable_on M N f s /\ (lebesgue_measurable M s /\ analytic N t) -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11805 / LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC   (hash md5:468f47c2e070e4944932e8c458c70203)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall t c= R :^: idx N, measurable_on M N f (R :^: idx M) /\ analytic N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11814 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC_EQ   (hash md5:cada0a327f88f10a8a6afb255d2ccfb8)
// not bridged: 
Theorem MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ lebesgue_measurable M s <-> forall t c= R :^: idx N, analytic N t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:11823 / MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC   (hash md5:dc0f69ae36cc49e8413f052c7f6a810b)
// not bridged: 
Theorem MEASURABLE_ON_LEBESGUE_MEASURABLE_PREIMAGE_ANALYTIC : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s -> (measurable_on M N f s <-> forall t c= R :^: idx N, analytic N t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:11830 / MEASURABLE_ON_PREIMAGE_ANALYTIC   (hash md5:f83a8e2fde3abf5d5f3eba22658925aa)
// not bridged: 
Theorem MEASURABLE_ON_PREIMAGE_ANALYTIC : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> forall t c= R :^: idx N, analytic N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:11841 / MEASURABLE_ON_LIFT_INV   (hash md5:48e71e288e30df16e31e3b01c1386024)
// not bridged: 
Theorem MEASURABLE_ON_LIFT_INV : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, measurable_on N 1 (fun x:set => lift (f x)) s /\ negligible N {x :e R :^: idx N | x :e s /\ f x = 0} -> measurable_on N 1 (fun x:set => lift (recip_SNo (f x))) s.
Admitted.

// HOL Light: Multivariate/measure.ml:11898 / MEASURABLE_ON_LIFT_DIV   (hash md5:389a10f629713d513bbc4dbfac3934bb)
// not bridged: 
Theorem MEASURABLE_ON_LIFT_DIV : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R) -> forall s c= R :^: idx N, measurable_on N 1 (fun x:set => lift (f x)) s /\ (measurable_on N 1 (fun x:set => lift (g x)) s /\ negligible N {x :e R :^: idx N | x :e s /\ g x = 0}) -> measurable_on N 1 (fun x:set => lift (f x :/: g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:11907 / ABSOLUTELY_INTEGRABLE_UNION   (hash md5:39e39c2e114aac556800876e70016142)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_UNION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, absolutely_integrable_on N M f s /\ absolutely_integrable_on N M f t -> absolutely_integrable_on N M f (s :\/: t).
Admitted.

// HOL Light: Multivariate/measure.ml:11945 / ABSOLUTELY_INTEGRABLE_DIFF   (hash md5:81edf8f59d61ef1c385f1875eb68cd71)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_DIFF : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, absolutely_integrable_on N M f s /\ absolutely_integrable_on N M f t -> absolutely_integrable_on N M f (s :\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:11961 / ABSOLUTELY_INTEGRABLE_INTER   (hash md5:d236d291fc22d79f9a21281c5b106880)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_INTER : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, absolutely_integrable_on N M f s /\ absolutely_integrable_on N M f t -> absolutely_integrable_on N M f (s :/\: t).
Admitted.

// HOL Light: Multivariate/measure.ml:11978 / INTEGRAL_COUNTABLE_UNIONS_ALT   (hash md5:299f8eb41a0025f50aea6302b641afbe)
// not bridged: 
Theorem INTEGRAL_COUNTABLE_UNIONS_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s :e Power (R :^: idx M) :^: omega, absolutely_integrable_on N M f (Union {s m | m :e omega, m :e omega}) /\ (forall m :e omega, lebesgue_measurable M (s m)) -> (forall n :e omega, absolutely_integrable_on N M f (Union {s m | m :e omega, m :e {i :e omega | 0 <= i /\ i <= n}})) /\ tendsto N omega (fun n:set => integral N M (Union {s m | m :e omega, m :e {i :e omega | 0 <= i /\ i <= n}}) f) (integral N M (Union {s m | m :e omega, m :e omega}) f) sequentially.
Admitted.

// HOL Light: Multivariate/measure.ml:12025 / LEBESGUE_MEASURABLE_OUTER_OPEN   (hash md5:ca7164dcc7f7bf3774a1a8797d3febd8)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_OUTER_OPEN : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, lebesgue_measurable N s /\ 0 < e0 -> exists t c= R :^: idx N, open N t /\ (s c= t /\ (measurable N (t :\: s) /\ measure N (t :\: s) < e0)).
Admitted.

// HOL Light: Multivariate/measure.ml:12076 / LEBESGUE_MEASURABLE_INNER_CLOSED   (hash md5:22ee912ed28e9cd6f0e0124037899590)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_INNER_CLOSED : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall e0 :e R, lebesgue_measurable N s /\ 0 < e0 -> exists t c= R :^: idx N, closed N t /\ (t c= s /\ (measurable N (s :\: t) /\ measure N (s :\: t) < e0)).
Admitted.

// HOL Light: Multivariate/measure.ml:12094 / STEINHAUS_LEBESGUE   (hash md5:647aeb6cd906b122948b479327598a91)
// not bridged: 
Theorem STEINHAUS_LEBESGUE : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s /\ ~ negligible N s -> exists d :e R, 0 < d /\ ball N (vec N 0,d) c= \/_ x :e R :^: idx N, {vector_sub N x y | y :e R :^: idx N, x :e s /\ y :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:12107 / LEBESGUE_MEASURABLE_REGULAR_OUTER   (hash md5:98738c2fb90c4617369e0f5e3ec354ac)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_REGULAR_OUTER : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s -> exists k c= R :^: idx N, exists c :e Power (R :^: idx N) :^: omega, negligible N k /\ ((forall n :e omega, open N (c n)) /\ s = {x :e R :^: idx N | forall Y :e {c n | n :e omega, n :e omega}, x :e Y} :\: k).
Admitted.

// HOL Light: Multivariate/measure.ml:12131 / LEBESGUE_MEASURABLE_REGULAR_INNER   (hash md5:d4e08df78fcb87fff91c407a34197998)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_REGULAR_INNER : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s -> exists k c= R :^: idx N, exists c :e Power (R :^: idx N) :^: omega, negligible N k /\ ((forall n :e omega, compact N (c n)) /\ s = Union {c n | n :e omega, n :e omega} :\/: k).
Admitted.

// HOL Light: Multivariate/measure.ml:12174 / LEBESGUE_MEASURABLE_SMALL_IMP_NEGLIGIBLE   (hash md5:9fd5bab133208ba6b2fe166520bad76a)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_SMALL_IMP_NEGLIGIBLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s /\ (atleastp s R /\ ~ equip s R) -> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:12198 / LEBESGUE_MEASURABLE_ALMOST_FSIGMA   (hash md5:89ba02077fccc0cef23fe1b87890efde)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_ALMOST_FSIGMA : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s -> exists c t c= R :^: idx N, fsigma N c /\ (negligible N t /\ (c :\/: t = s /\ c :/\: t = Empty)).
Admitted.

// HOL Light: Multivariate/measure.ml:12229 / LEBESGUE_MEASURABLE_ALMOST_GDELTA   (hash md5:62275568473255dce0973b284639e310)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_ALMOST_GDELTA : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s -> exists c t c= R :^: idx N, gdelta N c /\ (negligible N t /\ (s :\/: t = c /\ t :/\: s = Empty)).
Admitted.

// HOL Light: Multivariate/measure.ml:12245 / NEGLIGIBLE_IFF_LEBESGUE_MEASURABLE_SUBSETS   (hash md5:9209ec62e092e0452255926312d82386)
// not bridged: 
Theorem NEGLIGIBLE_IFF_LEBESGUE_MEASURABLE_SUBSETS : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s <-> forall t c= R :^: idx N, t c= s -> lebesgue_measurable N t.
Admitted.

// HOL Light: Multivariate/measure.ml:12314 / NEGLIGIBLE_IFF_MEASURABLE_SUBSETS   (hash md5:75a5120fc371e3bcc5087cba2de6be21)
// not bridged: 
Theorem NEGLIGIBLE_IFF_MEASURABLE_SUBSETS : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s <-> forall t c= R :^: idx N, t c= s -> measurable N t.
Admitted.

// HOL Light: Multivariate/measure.ml:12320 / NON_MEASURABLE_SET   (hash md5:5a62d48e5c69a83e30f58e6e3d2d1c77)
// not bridged: 
Theorem NON_MEASURABLE_SET : forall N:set, N <> Empty -> exists s c= R :^: idx N, ~ lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:12329 / PRESERVES_LEBESGUE_MEASURABLE_IMP_PRESERVES_NEGLIGIBLE   (hash md5:e70c2b634fa14a27431ab496aa89725c)
// not bridged: 
Theorem PRESERVES_LEBESGUE_MEASURABLE_IMP_PRESERVES_NEGLIGIBLE : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx A) -> forall s c= R :^: idx N, (forall t c= R :^: idx N, negligible N t /\ t c= s -> lebesgue_measurable A {f x | x :e t}) -> forall t c= R :^: idx N, negligible N t /\ t c= s -> negligible A {f x | x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:12338 / PRESERVES_NEGLIGIBLE_IMAGE   (hash md5:a007d26498f39f3791a3cfd90d024336)
// not bridged: 
Theorem PRESERVES_NEGLIGIBLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) <-> forall t c= R :^: idx M, negligible M t /\ t c= s -> lebesgue_measurable N {f x | x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:12346 / PRESERVES_NEGLIGIBLE_IMAGE_UNIV   (hash md5:a0fb0d663de8818e19aa76df262304bc)
// not bridged: 
Theorem PRESERVES_NEGLIGIBLE_IMAGE_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> ((forall t c= R :^: idx M, negligible M t -> negligible N {f x | x :e t}) <-> forall t c= R :^: idx M, negligible M t -> lebesgue_measurable N {f x | x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:12352 / LEBESGUE_MEASURABLE_CONTINUOUS_IMAGE   (hash md5:09e7efcb931a90ce14685c61f06efde8)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_CONTINUOUS_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ (forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) -> forall t c= R :^: idx M, lebesgue_measurable M t /\ t c= s -> lebesgue_measurable N {f x | x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:12372 / PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE   (hash md5:0d7114395b643a13b79f427ce17acc6d)
// not bridged: 
Theorem PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s -> ((forall t c= R :^: idx M, lebesgue_measurable M t /\ t c= s -> lebesgue_measurable N {f x | x :e t}) <-> forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:12382 / PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE_ALT   (hash md5:f7b5432c4a3c4402c6317c786af3fd0b)
// not bridged: 
Theorem PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> continuous_on_hl M N f s -> ((forall t c= R :^: idx M, lebesgue_measurable M t /\ t c= s -> lebesgue_measurable N {f x | x :e t}) <-> forall t c= R :^: idx M, negligible M t /\ t c= s -> lebesgue_measurable N {f x | x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:12393 / LEBESGUE_MEASURABLE_DIFFERENTIABLE_IMAGE   (hash md5:94616f8b51cd23718e55c6ecb153624b)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_DIFFERENTIABLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M <= dimindex N /\ (differentiable_on_hl N M f s /\ lebesgue_measurable M s) -> lebesgue_measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:12407 / LEBESGUE_MEASURABLE_LINEAR_IMAGE_GEN   (hash md5:d0b29318d1927c7d5834e29992809f0c)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LINEAR_IMAGE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (lebesgue_measurable M s /\ dimindex M <= dimindex N) -> lebesgue_measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:12415 / MEASURABLE_LINEAR_IMAGE_GEN   (hash md5:dbb8f520c2193dca04a4827161dbc36f)
// not bridged: 
Theorem MEASURABLE_LINEAR_IMAGE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (measurable M s /\ dimindex M <= dimindex N) -> measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:12439 / LEBESGUE_MEASURABLE_LINEAR_IMAGE_EQ_GEN   (hash md5:19205079787826b2c8ca09580a241cb7)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LINEAR_IMAGE_EQ_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M = dimindex N /\ (linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y)) -> (lebesgue_measurable N {f x | x :e s} <-> lebesgue_measurable M s).
Admitted.

// HOL Light: Multivariate/measure.ml:12463 / DOUBLE_LEBESGUE_MEASURABLE   (hash md5:1518d8f6889a8fbd2c4d2c266a554751)
// not bridged: 
Theorem DOUBLE_LEBESGUE_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> ((forall t c= R :^: idx N, lebesgue_measurable N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}) <-> measurable_on M N f (R :^: idx M) /\ forall t c= R :^: idx N, negligible N t -> lebesgue_measurable M {x :e R :^: idx M | f x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:12482 / DOUBLE_LEBESGUE_MEASURABLE_ON   (hash md5:a03878ba184f8d08b0beb0b2ad446edb)
// not bridged: 
Theorem DOUBLE_LEBESGUE_MEASURABLE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, lebesgue_measurable M s /\ (lebesgue_measurable N t /\ {f x | x :e s} c= t) -> ((forall u c= R :^: idx N, lebesgue_measurable N u /\ u c= t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e u}) <-> measurable_on M N f s /\ forall u c= R :^: idx N, negligible N u /\ u c= t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ f x :e u}).
Admitted.

// HOL Light: Multivariate/measure.ml:12516 / CONTINUOUS_IMP_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET   (hash md5:42c47f9259fcc0b9394f31d45227ab2e)
// not bridged: 
Theorem CONTINUOUS_IMP_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ lebesgue_measurable M s -> measurable_on M N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:12619 / CONTINUOUS_IMP_MEASURABLE_ON_CLOSED_SUBSET   (hash md5:560bb17bdb33ba7c86b235d89132c5a8)
// not bridged: 
Theorem CONTINUOUS_IMP_MEASURABLE_ON_CLOSED_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, continuous_on_hl M N f s /\ closed M s -> measurable_on M N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:12625 / CONTINUOUS_AE_IMP_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET   (hash md5:16e082e8ae42925e27ae30707a857344)
// not bridged: 
Theorem CONTINUOUS_AE_IMP_MEASURABLE_ON_LEBESGUE_MEASURABLE_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s m c= R :^: idx M, continuous_on_hl M N f (s :\: m) /\ (lebesgue_measurable M s /\ negligible M m) -> measurable_on M N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:12638 / MEASURABLE_CONTINUOUS_COMPOSE   (hash md5:463efdc09e20a672be8f1d1f94ddfbf2)
// not bridged: 
Theorem MEASURABLE_CONTINUOUS_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> measurable_on N P f (R :^: idx N) /\ (continuous_on_hl M N g (R :^: idx M) /\ (forall k c= R :^: idx N, negligible N k -> negligible M {x :e R :^: idx M | g x :e k})) -> measurable_on M P (fun x:set => f (g x)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:12656 / MEASURABLE_ON_COMPOSE_REV   (hash md5:9883af969e665ad5187cefc8690cf48f)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_REV : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, lebesgue_measurable M s /\ ({g x | x :e s} = t /\ ((forall k c= R :^: idx M, lebesgue_measurable M k /\ k c= s -> lebesgue_measurable N {g x | x :e k}) /\ measurable_on M P (fun x:set => f (g x)) s)) -> measurable_on N P f t.
Admitted.

// HOL Light: Multivariate/measure.ml:12676 / MEASURABLE_ON_CONTINUOUS_COMPOSE_REV   (hash md5:4cdafc5cac6cb9875a52382219e55e5f)
// not bridged: 
Theorem MEASURABLE_ON_CONTINUOUS_COMPOSE_REV : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, lebesgue_measurable M s /\ ({g x | x :e s} = t /\ ((forall k c= R :^: idx M, negligible M k /\ k c= s -> lebesgue_measurable N {g x | x :e k}) /\ (continuous_on_hl M N g s /\ measurable_on M P (fun x:set => f (g x)) s))) -> measurable_on N P f t.
Admitted.

// HOL Light: Multivariate/measure.ml:12690 / MEASURABLE_ON_COMPOSE_GEN   (hash md5:56430de079146286daa45f24cb6ae565)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_GEN : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, lebesgue_measurable N t /\ ({g x | x :e s} c= t /\ ((forall k c= R :^: idx N, lebesgue_measurable N k /\ k c= t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ g x :e k}) /\ measurable_on N P f t)) -> measurable_on M P (fun x:set => f (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:12713 / MEASURABLE_ON_COMPOSE_ALT   (hash md5:9bbd0141e7a0c734f4c77024de648152)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, lebesgue_measurable M s /\ (lebesgue_measurable N t /\ ({g x | x :e s} c= t /\ ((forall k c= R :^: idx N, negligible N k /\ k c= t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ g x :e k}) /\ (measurable_on M N g s /\ measurable_on N P f t)))) -> measurable_on M P (fun x:set => f (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:12725 / MEASURABLE_ON_CONTINUOUS_COMPOSE   (hash md5:eb3363f2196e75f3721a1a6858994749)
// not bridged: 
Theorem MEASURABLE_ON_CONTINUOUS_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, lebesgue_measurable M s /\ (lebesgue_measurable N t /\ ({g x | x :e s} c= t /\ (measurable_on N P f t /\ (continuous_on_hl M N g s /\ (forall k c= R :^: idx N, negligible N k /\ k c= t -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ g x :e k}))))) -> measurable_on M P (fun x:set => f (g x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:12736 / MEASURABLE_ON_DIFFERENTIABLE_IMAGE   (hash md5:11e4bec86020a3f55c3f98ef8a9042c1)
// not bridged: 
Theorem MEASURABLE_ON_DIFFERENTIABLE_IMAGE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M <= dimindex N /\ (lebesgue_measurable M s /\ (differentiable_on_hl N M g s /\ measurable_on M P (fun x:set => f (g x)) s)) -> measurable_on N P f {g x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:12752 / BOREL_MEASURABLE_IMP_MEASURABLE_ON   (hash md5:b5e7ec640dbe84468a37aeada7f65bb3)
// not bridged: 
Theorem BOREL_MEASURABLE_IMP_MEASURABLE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, borel_measurable_on M N f s /\ lebesgue_measurable M s -> measurable_on M N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:12769 / BAIRE_IMP_MEASURABLE_ON   (hash md5:c4cb832f1c73af1747db18411701cf6a)
// not bridged: 
Theorem BAIRE_IMP_MEASURABLE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall n :e omega, forall f :e R :^: idx N :^: (R :^: idx M), forall s c= R :^: idx M, f :e baire M N n s /\ lebesgue_measurable M s -> measurable_on M N (fun x:set => f x) s.
Admitted.

// HOL Light: Multivariate/measure.ml:12774 / BAIRE_IMP_MEASURABLE_ON_UNIV   (hash md5:ed4b9b5796ddc70734b19a9a9bce1add)
// not bridged: 
Theorem BAIRE_IMP_MEASURABLE_ON_UNIV : forall A M N:set, M <> Empty -> N <> Empty -> forall n :e omega, forall f :e R :^: idx N :^: (R :^: idx M), forall s :e A, f :e baire M N n (R :^: idx M) -> measurable_on M N (fun x:set => f x) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:12779 / MEASURABLE_EQ_ALMOST_BAIRE1   (hash md5:2876646b02f016863edd27f9584f5eae)
// not bridged: 
Theorem MEASURABLE_EQ_ALMOST_BAIRE1 : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: idx N :^: (R :^: idx M), measurable_on M N (fun x:set => f x) (R :^: idx M) <-> exists s c= R :^: idx M, negligible M ((R :^: idx M) :\: s) /\ f :e baire M N 1 s.
Admitted.

// HOL Light: Multivariate/measure.ml:12802 / MEASURABLE_EQ_ALMOST_BAIRE2   (hash md5:aff84def63162aa7a8d4697070335bfa)
// not bridged: 
Theorem MEASURABLE_EQ_ALMOST_BAIRE2 : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (measurable_on M N f (R :^: idx M) <-> exists g :e R :^: idx N :^: (R :^: idx M), g :e baire M N 2 (R :^: idx M) /\ negligible M {x :e R :^: idx M | ~ g x = f x}).
Admitted.

// HOL Light: Multivariate/measure.ml:12886 / LEBESGUE_DENSITY_THEOREM_INTEGRAL_NORM_CBALL   (hash md5:93c12028873f50fdc6857abdcf963c11)
// not bridged: 
Theorem LEBESGUE_DENSITY_THEOREM_INTEGRAL_NORM_CBALL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (forall a b :e R :^: idx M, absolutely_integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil))) -> exists k c= R :^: idx M, negligible M k /\ forall x :e R :^: idx M, ~ x :e k -> tendsto 1 (R :^: idx 1) (fun e0:set => vector_mul 1 (recip_SNo (measure M (cball M (x,drop e0)))) (integral 1 M (cball M (x,drop e0)) (fun y:set => lift (vector_norm N (vector_sub N (f y) (f x)))))) (vec 1 0) (within (R :^: idx 1) (at_hl 1 (vec 1 0)) {t :e R :^: idx 1 | 0 < drop t}).
Admitted.

// HOL Light: Multivariate/measure.ml:12986 / LEBESGUE_DENSITY_THEOREM_INTEGRAL_NORM_BALL   (hash md5:7c854c3443b277c26cadadfce25c6247)
// not bridged: 
Theorem LEBESGUE_DENSITY_THEOREM_INTEGRAL_NORM_BALL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (forall a b :e R :^: idx M, absolutely_integrable_on N M f (closed_interval M (seq_cons (a,b) seq_nil))) -> exists k c= R :^: idx M, negligible M k /\ forall x :e R :^: idx M, ~ x :e k -> tendsto 1 (R :^: idx 1) (fun e0:set => vector_mul 1 (recip_SNo (measure M (ball M (x,drop e0)))) (integral 1 M (ball M (x,drop e0)) (fun y:set => lift (vector_norm N (vector_sub N (f y) (f x)))))) (vec 1 0) (within (R :^: idx 1) (at_hl 1 (vec 1 0)) {t :e R :^: idx 1 | 0 < drop t}).
Admitted.

// HOL Light: Multivariate/measure.ml:13013 / LEBESGUE_DENSITY_THEOREM_INTEGRAL_CBALL   (hash md5:5377f9a7870acdf7a89aa20883b489c7)
// not bridged: 
Theorem LEBESGUE_DENSITY_THEOREM_INTEGRAL_CBALL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall a b :e R :^: idx M, absolutely_integrable_on N M f (s :/\: closed_interval M (seq_cons (a,b) seq_nil))) -> exists k c= R :^: idx M, negligible M k /\ forall x :e R :^: idx M, ~ x :e k -> tendsto N (R :^: idx 1) (fun e0:set => vector_mul N (recip_SNo (measure M (cball M (x,drop e0)))) (integral N M (s :/\: cball M (x,drop e0)) f)) (if x :e s then f x else vec N 0) (within (R :^: idx 1) (at_hl 1 (vec 1 0)) {t :e R :^: idx 1 | 0 < drop t}).
Admitted.

// HOL Light: Multivariate/measure.ml:13067 / LEBESGUE_DENSITY_THEOREM_INTEGRAL_BALL   (hash md5:678c9f6f06333e3de57461bcc40555ae)
// not bridged: 
Theorem LEBESGUE_DENSITY_THEOREM_INTEGRAL_BALL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall a b :e R :^: idx M, absolutely_integrable_on N M f (s :/\: closed_interval M (seq_cons (a,b) seq_nil))) -> exists k c= R :^: idx M, negligible M k /\ forall x :e R :^: idx M, ~ x :e k -> tendsto N (R :^: idx 1) (fun e0:set => vector_mul N (recip_SNo (measure M (ball M (x,drop e0)))) (integral N M (s :/\: ball M (x,drop e0)) f)) (if x :e s then f x else vec N 0) (within (R :^: idx 1) (at_hl 1 (vec 1 0)) {t :e R :^: idx 1 | 0 < drop t}).
Admitted.

// HOL Light: Multivariate/measure.ml:13093 / LEBESGUE_DENSITY_THEOREM_LIFT_CBALL   (hash md5:0e0e63b68e1e7baa85668b4744291cf0)
// not bridged: 
Theorem LEBESGUE_DENSITY_THEOREM_LIFT_CBALL : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s -> exists k c= R :^: idx N, negligible N k /\ forall x :e R :^: idx N, ~ x :e k -> tendsto 1 (R :^: idx 1) (fun e0:set => lift (measure N (s :/\: cball N (x,drop e0)) :/: measure N (cball N (x,drop e0)))) (if x :e s then vec 1 1 else vec 1 0) (within (R :^: idx 1) (at_hl 1 (vec 1 0)) {t :e R :^: idx 1 | 0 < drop t}).
Admitted.

// HOL Light: Multivariate/measure.ml:13115 / LEBESGUE_DENSITY_THEOREM_LIFT_BALL   (hash md5:d312b9a9d85575a800f781d6a20bc9a0)
// not bridged: 
Theorem LEBESGUE_DENSITY_THEOREM_LIFT_BALL : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s -> exists k c= R :^: idx N, negligible N k /\ forall x :e R :^: idx N, ~ x :e k -> tendsto 1 (R :^: idx 1) (fun e0:set => lift (measure N (s :/\: ball N (x,drop e0)) :/: measure N (ball N (x,drop e0)))) (if x :e s then vec 1 1 else vec 1 0) (within (R :^: idx 1) (at_hl 1 (vec 1 0)) {t :e R :^: idx 1 | 0 < drop t}).
Admitted.

// HOL Light: Multivariate/measure.ml:13144 / DIFFERENTIAL_ZERO_MAXMIN_DENSITY   (hash md5:de53dc89a8b967dd030b513ef03bb613)
// not bridged: 
Theorem DIFFERENTIAL_ZERO_MAXMIN_DENSITY : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx N, f' x :e R :^: idx 1) -> forall s c= R :^: idx N, forall a :e R :^: idx N, has_derivative 1 N f f' (within (R :^: idx N) (at_hl N a) s) /\ ((eventually (R :^: idx N) {x :e R :^: idx N | drop (f a) <= drop (f x)} (within (R :^: idx N) (at_hl N a) s) \/ eventually (R :^: idx N) {x :e R :^: idx N | drop (f x) <= drop (f a)} (within (R :^: idx N) (at_hl N a) s)) /\ (lebesgue_measurable N s /\ tendsto 1 (R :^: idx 1) (fun e0:set => lift (measure N (s :/\: ball N (a,drop e0)) :/: measure N (ball N (a,drop e0)))) (vec 1 1) (within (R :^: idx 1) (at_hl 1 (vec 1 0)) {t :e R :^: idx 1 | 0 < drop t}))) -> forall v :e R :^: idx N, f' v = vec 1 0.
Admitted.

// HOL Light: Multivariate/measure.ml:13321 / DIFFERENTIAL_ZERO_LEVELSET_DENSITY   (hash md5:afbb2e2766451f9beef13d7f993a3006)
// not bridged: 
Theorem DIFFERENTIAL_ZERO_LEVELSET_DENSITY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx M, f' x :e R :^: idx N) -> forall s c= R :^: idx M, forall a :e R :^: idx M, forall c :e R :^: idx N, has_derivative N M f f' (within (R :^: idx M) (at_hl M a) s) /\ (eventually (R :^: idx M) {x :e R :^: idx M | f x = c} (within (R :^: idx M) (at_hl M a) s) /\ (lebesgue_measurable M s /\ tendsto 1 (R :^: idx 1) (fun e0:set => lift (measure M (s :/\: ball M (a,drop e0)) :/: measure M (ball M (a,drop e0)))) (vec 1 1) (within (R :^: idx 1) (at_hl 1 (vec 1 0)) {t :e R :^: idx 1 | 0 < drop t}))) -> forall h :e R :^: idx M, f' h = vec N 0.
Admitted.

// HOL Light: Multivariate/measure.ml:13351 / NEGLIGIBLE_POINTS_OF_AMBIGUOUS_DERIVATIVE   (hash md5:9633038204fddafd7df15a9d1685b582)
// not bridged: 
Theorem NEGLIGIBLE_POINTS_OF_AMBIGUOUS_DERIVATIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s -> negligible M {x :e R :^: idx M | x :e s /\ exists y:set -> set, (forall x0 :e R :^: idx M, y x0 :e R :^: idx N) /\ exists z:set -> set, (forall x0 :e R :^: idx M, z x0 :e R :^: idx N) /\ (has_derivative N M f y (within (R :^: idx M) (at_hl M x) s) /\ (has_derivative N M f z (within (R :^: idx M) (at_hl M x) s) /\ ~ forall x0 :e R :^: idx M, y x0 = z x0))}.
Admitted.

// HOL Light: Multivariate/measure.ml:13392 / PAIRWISE_DISJOINT_LEBESGUE_MEASURABLE_IMP_COUNTABLE   (hash md5:d13810c293a95f91b9e1fc6efc19aef4)
// not bridged: 
Theorem PAIRWISE_DISJOINT_LEBESGUE_MEASURABLE_IMP_COUNTABLE : forall N:set, N <> Empty -> forall f c= Power (R :^: idx N), (forall x y :e f, x <> y -> negligible N (x :/\: y)) /\ (forall s c= R :^: idx N, s :e f -> lebesgue_measurable N s /\ ~ negligible N s) -> countable f.
Admitted.

// HOL Light: Multivariate/measure.ml:13472 / WIENER_COVERING_LEMMA_BALLS   (hash md5:4182e54ee0fbcfabdc75be808fd401e2)
// not bridged: 
Theorem WIENER_COVERING_LEMMA_BALLS : forall A N:set, A <> Empty -> N <> Empty -> forall k c= A, forall a:set -> set, (forall x :e A, a x :e R :^: idx N) -> forall r:set -> set, (forall x :e A, r x :e R) -> forall s c= R :^: idx N, finite k /\ s c= Union {{x0 :e R :^: idx N | x0 :e ball N (a x,r x)} | x :e k} -> exists c c= A, c c= k /\ ((forall x y :e c, x <> y -> ball N (a x,r x) :/\: ball N (a y,r y) = Empty) /\ s c= Union {{x0 :e R :^: idx N | x0 :e ball N (a x,3 * r x)} | x :e c}).
Admitted.

// HOL Light: Multivariate/measure.ml:13522 / WIENER_COVERING_LEMMA_CBALLS   (hash md5:a1b66e87209c7aa6db8c53e5f1d5f598)
// not bridged: 
Theorem WIENER_COVERING_LEMMA_CBALLS : forall A N:set, A <> Empty -> N <> Empty -> forall k c= A, forall a:set -> set, (forall x :e A, a x :e R :^: idx N) -> forall r:set -> set, (forall x :e A, r x :e R) -> forall s c= R :^: idx N, finite k /\ s c= Union {{x0 :e R :^: idx N | x0 :e cball N (a x,r x)} | x :e k} -> exists c c= A, c c= k /\ ((forall x y :e c, x <> y -> cball N (a x,r x) :/\: cball N (a y,r y) = Empty) /\ s c= Union {{x0 :e R :^: idx N | x0 :e cball N (a x,3 * r x)} | x :e c}).
Admitted.

// HOL Light: Multivariate/measure.ml:13574 / VITALI_COVERING_LEMMA_CBALLS_BALLS   (hash md5:b2a191b7e61c332d2e9fa7ab56b92e0c)
// not bridged: 
Theorem VITALI_COVERING_LEMMA_CBALLS_BALLS : forall A N:set, A <> Empty -> N <> Empty -> forall a:set -> set, (forall x :e A, a x :e R :^: idx N) -> forall r:set -> set, (forall x :e A, r x :e R) -> forall k c= A, forall B :e R, (forall i :e A, i :e k -> 0 < r i /\ r i <= B) -> exists c c= A, countable c /\ (c c= k /\ ((forall x y :e c, x <> y -> cball N (a x,r x) :/\: cball N (a y,r y) = Empty) /\ forall i :e A, i :e k -> exists j :e A, j :e c /\ (~ cball N (a i,r i) :/\: cball N (a j,r j) = Empty /\ cball N (a i,r i) c= ball N (a j,5 * r j)))).
Admitted.

// HOL Light: Multivariate/measure.ml:13706 / VITALI_COVERING_LEMMA_CBALLS   (hash md5:460af37b4261670c92cd384ad253923d)
// not bridged: 
Theorem VITALI_COVERING_LEMMA_CBALLS : forall A N:set, A <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall a:set -> set, (forall x :e A, a x :e R :^: idx N) -> forall r:set -> set, (forall x :e A, r x :e R) -> forall k c= A, forall B :e R, s c= Union {{x0 :e R :^: idx N | x0 :e cball N (a x,r x)} | x :e k} /\ (forall i :e A, i :e k -> 0 < r i /\ r i <= B) -> exists c c= A, countable c /\ (c c= k /\ ((forall x y :e c, x <> y -> cball N (a x,r x) :/\: cball N (a y,r y) = Empty) /\ s c= Union {{x0 :e R :^: idx N | x0 :e cball N (a x,5 * r x)} | x :e c})).
Admitted.

// HOL Light: Multivariate/measure.ml:13727 / VITALI_COVERING_LEMMA_BALLS   (hash md5:4c7c76ce45cf702a0706720e2ba64660)
// not bridged: 
Theorem VITALI_COVERING_LEMMA_BALLS : forall A N:set, A <> Empty -> N <> Empty -> forall s c= R :^: idx N, forall a:set -> set, (forall x :e A, a x :e R :^: idx N) -> forall r:set -> set, (forall x :e A, r x :e R) -> forall k c= A, forall B :e R, s c= Union {{x0 :e R :^: idx N | x0 :e ball N (a x,r x)} | x :e k} /\ (forall i :e A, i :e k -> 0 < r i /\ r i <= B) -> exists c c= A, countable c /\ (c c= k /\ ((forall x y :e c, x <> y -> ball N (a x,r x) :/\: ball N (a y,r y) = Empty) /\ s c= Union {{x0 :e R :^: idx N | x0 :e ball N (a x,5 * r x)} | x :e c})).
Admitted.

// HOL Light: Multivariate/measure.ml:13753 / VITALI_COVERING_THEOREM_CBALLS   (hash md5:eee527089cd6ad0b5470599528fd5218)
// not bridged: 
Theorem VITALI_COVERING_THEOREM_CBALLS : forall A N:set, A <> Empty -> N <> Empty -> forall k c= A, forall a:set -> set, (forall x :e A, a x :e R :^: idx N) -> forall r:set -> set, (forall x :e A, r x :e R) -> forall s c= R :^: idx N, (forall i :e A, i :e k -> 0 < r i) /\ (forall x :e R :^: idx N, forall d :e R, x :e s /\ 0 < d -> exists i :e A, i :e k /\ (x :e cball N (a i,r i) /\ r i < d)) -> exists c c= A, countable c /\ (c c= k /\ ((forall x y :e c, x <> y -> cball N (a x,r x) :/\: cball N (a y,r y) = Empty) /\ negligible N (s :\: Union {cball N (a i,r i) | i :e A, i :e c}))).
Admitted.

// HOL Light: Multivariate/measure.ml:13921 / VITALI_COVERING_THEOREM_BALLS   (hash md5:98cd147d756aa57aa08878c50e957cc8)
// not bridged: 
Theorem VITALI_COVERING_THEOREM_BALLS : forall A N:set, A <> Empty -> N <> Empty -> forall k c= A, forall a:set -> set, (forall x :e A, a x :e R :^: idx N) -> forall r:set -> set, (forall x :e A, r x :e R) -> forall s c= R :^: idx N, (forall x :e R :^: idx N, forall d :e R, x :e s /\ 0 < d -> exists i :e A, i :e k /\ (x :e ball N (a i,r i) /\ r i < d)) -> exists c c= A, countable c /\ (c c= k /\ ((forall x y :e c, x <> y -> ball N (a x,r x) :/\: ball N (a y,r y) = Empty) /\ negligible N (s :\: Union {ball N (a i,r i) | i :e A, i :e c}))).
Admitted.

// HOL Light: Multivariate/measure.ml:13963 / LOCALLY_NEGLIGIBLE_ALT   (hash md5:1006b293f87ba1836fc15e3990e2b0fe)
// not bridged: 
Theorem LOCALLY_NEGLIGIBLE_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s <-> forall x :e R :^: idx N, x :e s -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (x :e u /\ negligible N u).
Admitted.

// HOL Light: Multivariate/measure.ml:13983 / LOCALLY_NEGLIGIBLE   (hash md5:90d50aaa4b21e6eee3ff51cd854b2ef2)
// not bridged: 
Theorem LOCALLY_NEGLIGIBLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | negligible N x} s <-> negligible N s.
Admitted.

// HOL Light: Multivariate/measure.ml:13993 / LOCALLY_LEBESGUE_MEASURABLE_ALT   (hash md5:bfef920ced604171b8f0d75f5e78401a)
// not bridged: 
Theorem LOCALLY_LEBESGUE_MEASURABLE_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, lebesgue_measurable N s <-> forall x :e R :^: idx N, x :e s -> exists u c= R :^: idx N, u :e subtopology (R :^: idx N) (euclidean N) s /\ (x :e u /\ lebesgue_measurable N u).
Admitted.

// HOL Light: Multivariate/measure.ml:14013 / LOCALLY_LEBESGUE_MEASURABLE   (hash md5:c7e9da0cbd6aaaa6a43b84e4ea5433ff)
// not bridged: 
Theorem LOCALLY_LEBESGUE_MEASURABLE : forall N:set, N <> Empty -> forall s c= R :^: idx N, locally N {x :e Power (R :^: idx N) | lebesgue_measurable N x} s <-> lebesgue_measurable N s.
Admitted.

// HOL Light: Multivariate/measure.ml:14027 / NEGLIGIBLE_EQ_ZERO_DENSITY_ALT   (hash md5:de2fcf42cda7d208f00ef6daa36afbbc)
// not bridged: 
Theorem NEGLIGIBLE_EQ_ZERO_DENSITY_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s <-> forall x :e R :^: idx N, forall e0 :e R, x :e s /\ 0 < e0 -> exists d :e R, exists u c= R :^: idx N, 0 < d /\ (d <= e0 /\ (s :/\: ball N (x,d) c= u /\ (measurable N u /\ measure N u < e0 * measure N (ball N (x,d))))).
Admitted.

// HOL Light: Multivariate/measure.ml:14148 / NEGLIGIBLE_EQ_ZERO_DENSITY   (hash md5:45be5962dfe67a912c446259a5b48dc3)
// not bridged: 
Theorem NEGLIGIBLE_EQ_ZERO_DENSITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, negligible N s <-> forall x :e R :^: idx N, forall r e0 :e R, x :e s /\ (0 < e0 /\ 0 < r) -> exists d :e R, exists u c= R :^: idx N, 0 < d /\ (d <= r /\ (s :/\: ball N (x,d) c= u /\ (measurable N u /\ measure N u < e0 * measure N (ball N (x,d))))).
Admitted.

// HOL Light: Multivariate/measure.ml:14174 / LEBESGUE_MEASURABLE_POINTS_OF_CONVERGENCE   (hash md5:a9715b3171342f7c06f2fbaa3b56ec50)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_POINTS_OF_CONVERGENCE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, f x y :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s /\ ((forall y :e R :^: idx N, continuous_on_hl M P (fun x:set => f x y) s) /\ continuous_on_hl M N g s) -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ exists l :e R :^: idx P, tendsto P (R :^: idx N) (f x) l (at_hl N (g x))}.
Admitted.

// HOL Light: Multivariate/measure.ml:14272 / BOREL_POINTS_OF_DIFFERENTIABILITY   (hash md5:1c4ba97545c206561ef5bb473c02efaf)
// not bridged: 
Theorem BOREL_POINTS_OF_DIFFERENTIABILITY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> borel M {x :e R :^: idx M | differentiable N M f (at_hl M x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:14505 / LEBESGUE_MEASURABLE_POINTS_OF_DIFFERENTIABILITY_WITHIN   (hash md5:44b57a7ce6dd67b158289536c37724ce)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_POINTS_OF_DIFFERENTIABILITY_WITHIN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s -> lebesgue_measurable M {x :e R :^: idx M | x :e s /\ differentiable N M f (within (R :^: idx M) (at_hl M x) s)}.
Admitted.

// HOL Light: Multivariate/measure.ml:15044 / LEBESGUE_MEASURABLE_POINTS_OF_DIFFERENTIABILITY_AT   (hash md5:bce66d2e8c7571f0cfbc5fcce4feeca9)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_POINTS_OF_DIFFERENTIABILITY_AT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> lebesgue_measurable M {x :e R :^: idx M | differentiable N M f (at_hl M x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:15052 / MEASURABLE_ON_PARTIAL_DERIVATIVES   (hash md5:6d7ec198e991baccb0678a9c9fac9d44)
// not bridged: 
Theorem MEASURABLE_ON_PARTIAL_DERIVATIVES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx M, f' x y :e R :^: idx N) -> forall s c= R :^: idx M, forall i j :e omega, lebesgue_measurable M s /\ ((forall x :e R :^: idx M, x :e s -> has_derivative N M f (f' x) (within (R :^: idx M) (at_hl M x) s)) /\ (1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex M)))) -> measurable_on M 1 (fun x:set => lift (matrix M N (f' x) i j)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:15726 / MEASURABLE_ON_VECTOR_DERIVATIVE_GEN   (hash md5:65375903d9887e910205d89ad877f675)
// not bridged: 
Theorem MEASURABLE_ON_VECTOR_DERIVATIVE_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall s c= R :^: idx 1, lebesgue_measurable 1 s /\ (forall x :e R :^: idx 1, x :e s -> has_vector_derivative N f (f' x) (within (R :^: idx 1) (at_hl 1 x) s)) -> measurable_on 1 N f' s.
Admitted.

// HOL Light: Multivariate/measure.ml:15747 / MEASURABLE_ON_VECTOR_DERIVATIVE   (hash md5:a82bfc968869764eb0f8ce0b747ceee0)
// not bridged: 
Theorem MEASURABLE_ON_VECTOR_DERIVATIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall s k c= R :^: idx 1, negligible 1 k /\ (lebesgue_measurable 1 s /\ (forall x :e R :^: idx 1, x :e s :\: k -> has_vector_derivative N f (f' x) (at_hl 1 x))) -> measurable_on 1 N f' s.
Admitted.

// HOL Light: Multivariate/measure.ml:15763 / MEASURABLE_ON_DET_JACOBIAN   (hash md5:ec29a2c18ec77878fbac828eed57585c)
// not bridged: 
Theorem MEASURABLE_ON_DET_JACOBIAN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, lebesgue_measurable N s /\ (forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (within (R :^: idx N) (at_hl N x) s)) -> measurable_on N 1 (fun x:set => lift (det N (matrix N N (f' x)))) s.
Admitted.

// HOL Light: Multivariate/measure.ml:15784 / LUZIN   (hash md5:8bc82590a958e196827d435c19ff3187)
// not bridged: 
Theorem LUZIN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall e0 :e R, measurable M s /\ (measurable_on M N f s /\ 0 < e0) -> exists k c= R :^: idx M, compact M k /\ (k c= s /\ (measure M (s :\: k) < e0 /\ continuous_on_hl M N f k)).
Admitted.

// HOL Light: Multivariate/measure.ml:15869 / LUZIN_EQ   (hash md5:f168384d34b06f661c16177911d86413)
// not bridged: 
Theorem LUZIN_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable M s -> (measurable_on M N f s <-> forall e0 :e R, 0 < e0 -> exists k c= R :^: idx M, compact M k /\ (k c= s /\ (measure M (s :\: k) < e0 /\ continuous_on_hl M N f k))).
Admitted.

// HOL Light: Multivariate/measure.ml:15869 / LUZIN_EQ_ALT   (hash md5:fa0340d411366ddfe8134a49291d8d05)
// not bridged: 
Theorem LUZIN_EQ_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable M s -> (measurable_on M N f s <-> forall e0 :e R, 0 < e0 -> exists k c= R :^: idx M, exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (compact M k /\ (k c= s /\ (measure M (s :\: k) < e0 /\ (continuous_on_hl M N g (R :^: idx M) /\ forall x :e R :^: idx M, x :e k -> g x = f x))))).
Admitted.

// HOL Light: Multivariate/measure.ml:15972 / LUZIN_SIGMA   (hash md5:4d9873c763a33b20475626be81587d07)
// not bridged: 
Theorem LUZIN_SIGMA : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s /\ measurable_on M N f s -> exists u c= Power (R :^: idx M), countable u /\ ((forall x y :e u, x <> y -> x :/\: y = Empty) /\ ((forall k c= R :^: idx M, k :e u -> compact M k /\ (k c= s /\ continuous_on_hl M N f k)) /\ negligible M (s :\: Union u))).
Admitted.

// HOL Light: Multivariate/measure.ml:16129 / LUZIN_SIGMA_EXPLICIT   (hash md5:1ed1859ebc281971556a4962ca02bdbf)
// not bridged: 
Theorem LUZIN_SIGMA_EXPLICIT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s /\ measurable_on M N f s -> exists k :e Power (R :^: idx M) :^: omega, (forall n :e omega, compact M (k n)) /\ ((forall n :e omega, k n c= s) /\ ((forall n :e omega, continuous_on_hl M N f (k n)) /\ ((forall x y :e omega, x <> y -> k x :/\: k y = Empty) /\ negligible M (s :\: Union {k n | n :e omega, n :e omega})))).
Admitted.

// HOL Light: Multivariate/measure.ml:16164 / LUZIN_SIGMA_NESTED   (hash md5:5d45ee8a31aa9559898987ca1e920222)
// not bridged: 
Theorem LUZIN_SIGMA_NESTED : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s /\ measurable_on M N f s -> exists k :e Power (R :^: idx M) :^: omega, (forall n :e omega, compact M (k n)) /\ ((forall n :e omega, k n c= s) /\ ((forall n :e omega, continuous_on_hl M N f (k n)) /\ ((forall n :e omega, k n c= k (ordsucc n)) /\ negligible M (s :\: Union {k n | n :e omega, n :e omega})))).
Admitted.

// HOL Light: Multivariate/measure.ml:16212 / PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE_GEN   (hash md5:8583204abebd35796130374d43697d8a)
// not bridged: 
Theorem PRESERVES_LEBESGUE_MEASURABLE_IFF_PRESERVES_NEGLIGIBLE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s -> ((forall t c= R :^: idx M, lebesgue_measurable M t /\ t c= s -> lebesgue_measurable N {f x | x :e t}) <-> forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:16243 / LEBESGUE_MEASURABLE_PREIMAGE_CARD_LE   (hash md5:1cd055b6fdb46702cc0af48f28fdffe6)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PREIMAGE_CARD_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall n :e omega, measurable_on M N f s /\ (lebesgue_measurable M s /\ (forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t})) -> lebesgue_measurable N {y :e R :^: idx N | finite {x :e R :^: idx M | x :e s /\ f x = y} /\ finite_cardinality {x :e R :^: idx M | x :e s /\ f x = y} <= n}.
Admitted.

// HOL Light: Multivariate/measure.ml:16298 / LEBESGUE_MEASURABLE_PREIMAGE_HAS_SIZE   (hash md5:41e638ceae84392309c818fd2da430d0)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PREIMAGE_HAS_SIZE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall n :e omega, measurable_on M N f s /\ (lebesgue_measurable M s /\ (forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t})) -> lebesgue_measurable N {y :e R :^: idx N | equip {x :e R :^: idx M | x :e s /\ f x = y} n}.
Admitted.

// HOL Light: Multivariate/measure.ml:16318 / LEBESGUE_MEASURABLE_PREIMAGE_FINITE   (hash md5:382cf37b33b123e278099c7cf1d980ed)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PREIMAGE_FINITE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ (lebesgue_measurable M s /\ (forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t})) -> lebesgue_measurable N {y :e R :^: idx N | finite {x :e R :^: idx M | x :e s /\ f x = y}}.
Admitted.

// HOL Light: Multivariate/measure.ml:16332 / LEBESGUE_MEASURABLE_PREIMAGE_INFINITE   (hash md5:10694fe0a926bb2040ccab5a9a8c65e6)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PREIMAGE_INFINITE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ (lebesgue_measurable M s /\ (forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t})) -> lebesgue_measurable N {y :e R :^: idx N | infinite {x :e R :^: idx M | x :e s /\ f x = y}}.
Admitted.

// HOL Light: Multivariate/measure.ml:16341 / MEASURABLE_ON_BANACH_INDICATRIX   (hash md5:4bc5179322284ccf745a78fe90c066ad)
// not bridged: 
Theorem MEASURABLE_ON_BANACH_INDICATRIX : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall c :e R :^: idx 1, measurable_on M N f s /\ (lebesgue_measurable M s /\ (forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t})) -> measurable_on N 1 (fun y:set => if finite {x :e R :^: idx M | x :e s /\ f x = y} then lift (finite_cardinality {x :e R :^: idx M | x :e s /\ f x = y}) else c) (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:16382 / LEBESGUE_MEASURABLE_DOMAIN_OF_INJECTIVITY   (hash md5:ea813512595d0902c04261e1b8e15b6c)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_DOMAIN_OF_INJECTIVITY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s -> exists t c= R :^: idx M, lebesgue_measurable M t /\ (t c= s /\ ({f x | x :e t} = {f x | x :e s} /\ forall x y :e R :^: idx M, x :e t /\ (y :e t /\ f x = f y) -> x = y)).
Admitted.

// HOL Light: Multivariate/measure.ml:16449 / BOREL_DOMAIN_OF_INJECTIVITY   (hash md5:0a3d11afc67d0dadef46ba01003aaa6c)
// not bridged: 
Theorem BOREL_DOMAIN_OF_INJECTIVITY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ (lebesgue_measurable M s /\ (forall n c= R :^: idx M, n c= s /\ negligible M n -> negligible N {f x | x :e n})) -> exists t c= R :^: idx M, borel M t /\ (t c= s /\ (negligible N ({f x | x :e s} :\: {f x | x :e t}) /\ forall x y :e R :^: idx M, x :e t /\ (y :e t /\ f x = f y) -> x = y)).
Admitted.

// HOL Light: Multivariate/measure.ml:16470 / GDELTA_DOMAIN_OF_INJECTIVITY_MEASURABLE   (hash md5:8233f4dfd76b96e3586a2517210535aa)
// not bridged: 
Theorem GDELTA_DOMAIN_OF_INJECTIVITY_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall u c= R :^: idx N, forall e0 :e R, measurable_on M N f s /\ (lebesgue_measurable M s /\ (0 < e0 /\ ({f x | x :e s} c= u /\ (measurable N u /\ (forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t}))))) -> exists t c= R :^: idx M, t c= s /\ (gdelta M t /\ (bounded_hl M t /\ (measurable M t /\ (measurable N {f x | x :e t} /\ (measure N ({f x | x :e s} :\: {f x | x :e t}) < e0 /\ forall x y :e R :^: idx M, x :e t /\ (y :e t /\ f x = f y) -> x = y))))).
Admitted.

// HOL Light: Multivariate/measure.ml:16532 / LUZIN_NPROPERTY_IMP_COUNTABLE_PREIMAGES   (hash md5:c0fad3719f990cd8d5c3951a0fe6b699)
// not bridged: 
Theorem LUZIN_NPROPERTY_IMP_COUNTABLE_PREIMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s /\ (measurable_on M N f s /\ (forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t})) -> negligible N {y :e R :^: idx N | ~ countable {x :e R :^: idx M | x :e s /\ f x = y}}.
Admitted.

// HOL Light: Multivariate/measure.ml:16731 / BANACH_SPROPERTY_IMP_LUZIN_NPROPERTY_OUTER   (hash md5:5f395f335aadf1cb0def6cb46358bfca)
// not bridged: 
Theorem BANACH_SPROPERTY_IMP_LUZIN_NPROPERTY_OUTER : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx M, t c= s /\ (measurable M t /\ measure M t < d) -> exists u c= R :^: idx N, {f x | x :e t} c= u /\ (measurable N u /\ measure N u < e0)) -> forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:16747 / BANACH_SPROPERTY_IMP_LUZIN_NPROPERTY   (hash md5:0d0f1b4e857e6c2079f050a4ba7d4df0)
// not bridged: 
Theorem BANACH_SPROPERTY_IMP_LUZIN_NPROPERTY : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx M, t c= s /\ (measurable M t /\ measure M t < d) -> measurable N {f x | x :e t} /\ measure N {f x | x :e t} < e0) -> forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:16758 / BANACH_SPROPERTY_OUTER   (hash md5:8e29681662d40b9546cd3859cd6a8af8)
// not bridged: 
Theorem BANACH_SPROPERTY_OUTER : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ (forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx M, t c= s /\ (measurable M t /\ measure M t < d) -> exists u c= R :^: idx N, {f x | x :e t} c= u /\ (measurable N u /\ measure N u < e0)) -> forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx M, t c= s /\ (measurable M t /\ measure M t < d) -> measurable N {f x | x :e t} /\ measure N {f x | x :e t} < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:16791 / BANACH_SPROPERTY_IMP_PRESERVES_MEASURABLE   (hash md5:e081f10be7a3f61795b2953fe3e3afee)
// not bridged: 
Theorem BANACH_SPROPERTY_IMP_PRESERVES_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx M, t c= s /\ (measurable M t /\ measure M t < d) -> measurable N {f x | x :e t} /\ measure N {f x | x :e t} < e0) -> forall t c= R :^: idx M, t c= s /\ measurable M t -> measurable N {f x | x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:16824 / BANACH_SPROPERTY_IMP_FINITE_PREIMAGES   (hash md5:fb3469169c2fd3233bf4247ee251d37c)
// not bridged: 
Theorem BANACH_SPROPERTY_IMP_FINITE_PREIMAGES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ (measurable M s /\ (forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx M, t c= s /\ (measurable M t /\ measure M t < d) -> measurable N {f x | x :e t} /\ measure N {f x | x :e t} < e0)) -> negligible N {y :e R :^: idx N | infinite {x :e R :^: idx M | x :e s /\ f x = y}}.
Admitted.

// HOL Light: Multivariate/measure.ml:16968 / ABSOLUTELY_CONTINUOUS_MEASURE_IMAGE   (hash md5:3cd9130f957bec6a9f081ff7518cf32d)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_MEASURE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall u c= R :^: idx N, measurable_on M N f s /\ ({f x | x :e s} c= u /\ (measurable N u /\ ((forall t c= R :^: idx M, t c= s /\ negligible M t -> negligible N {f x | x :e t}) /\ negligible N {y :e R :^: idx N | infinite {x :e R :^: idx M | x :e s /\ f x = y}}))) -> forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx M, t c= s /\ (measurable M t /\ measure M t < d) -> measurable N {f x | x :e t} /\ measure N {f x | x :e t} < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:17114 / ABSOLUTELY_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE_GEN   (hash md5:f1f84031852b1edee676f7c61465b157)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, compact N s /\ (continuous_on_hl N N f s /\ negligible N {f x | x :e {x :e R :^: idx N | x :e s /\ ~ differentiable N N f (within (R :^: idx N) (at_hl N x) s)}}) -> forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx N, t c= s /\ (measurable N t /\ measure N t < d) -> measurable N {f x | x :e t} /\ measure N {f x | x :e t} < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:17151 / ABSOLUTELY_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE   (hash md5:5b4a98523574b517b4a765ea2517dcac)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, compact N s /\ differentiable_on_hl N N f s -> forall e0 :e R, 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx N, t c= s /\ (measurable N t /\ measure N t < d) -> measurable N {f x | x :e t} /\ measure N {f x | x :e t} < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:17170 / LEBESGUE_MEASURABLE_LOCALLY_LIPSCHITZ_IMAGE   (hash md5:f548a9054c433bfdb4933c1e015050aa)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LOCALLY_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M <= dimindex N /\ (lebesgue_measurable M s /\ (forall x :e R :^: idx M, x :e s -> exists t c= R :^: idx M, exists b :e R, open M t /\ (x :e t /\ forall y :e R :^: idx M, y :e s :/\: t -> vector_norm N (vector_sub N (f y) (f x)) <= b * vector_norm M (vector_sub M y x)))) -> lebesgue_measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:17207 / MEASURABLE_LOCALLY_LIPSCHITZ_IMAGE   (hash md5:c824ac362310a99c21f26370302e4318)
// not bridged: 
Theorem MEASURABLE_LOCALLY_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall B :e R, dimindex M <= dimindex N /\ (measurable M s /\ (forall x :e R :^: idx M, x :e s -> exists t c= R :^: idx M, open M t /\ (x :e t /\ forall y :e R :^: idx M, y :e s :/\: t -> vector_norm N (vector_sub N (f y) (f x)) <= B * vector_norm M (vector_sub M y x)))) -> measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:17207 / MEASURE_LOCALLY_LIPSCHITZ_IMAGE   (hash md5:ea61f2c83bd69eb8615a82bacc81a7f3)
// not bridged: 
Theorem MEASURE_LOCALLY_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall B :e R, dimindex M <= dimindex N /\ (measurable M s /\ (forall x :e R :^: idx M, x :e s -> exists t c= R :^: idx M, open M t /\ (x :e t /\ forall y :e R :^: idx M, y :e s :/\: t -> vector_norm N (vector_sub N (f y) (f x)) <= B * vector_norm M (vector_sub M y x)))) -> measure N {f x | x :e s} <= B ^ dimindex N * measure M s.
Admitted.

// HOL Light: Multivariate/measure.ml:17460 / LEBESGUE_MEASURABLE_LIPSCHITZ_IMAGE   (hash md5:ca384798cc969f93a3742d44c2bdb6c9)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall B :e R, dimindex M <= dimindex N /\ (lebesgue_measurable M s /\ (forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y))) -> lebesgue_measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:17471 / MEASURABLE_LIPSCHITZ_IMAGE   (hash md5:b90d5860eb2a27326f878003ffad79bb)
// not bridged: 
Theorem MEASURABLE_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall B :e R, dimindex M <= dimindex N /\ (measurable M s /\ (forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y))) -> measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:17482 / MEASURE_LIPSCHITZ_IMAGE   (hash md5:2e2cb925ce86b641f2bba67834ea7940)
// not bridged: 
Theorem MEASURE_LIPSCHITZ_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall B :e R, dimindex M <= dimindex N /\ (measurable M s /\ (forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y))) -> measure N {f x | x :e s} <= B ^ dimindex N * measure M s.
Admitted.

// HOL Light: Multivariate/measure.ml:17756 / MEASURABLE_DIFFERENTIABLE_IMAGE   (hash md5:e11623bf631249a36303eb6482fecac1)
// not bridged: 
Theorem MEASURABLE_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, lebesgue_measurable N s /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (within (R :^: idx N) (at_hl N x) s)) /\ integrable_on 1 N (fun x:set => lift (abs_SNo (det N (matrix N N (f' x))))) s) -> measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:17756 / MEASURE_DIFFERENTIABLE_IMAGE   (hash md5:d7ad5377b48db748de5dcb1cafa4d073)
// not bridged: 
Theorem MEASURE_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, forall b :e R, lebesgue_measurable N s /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (within (R :^: idx N) (at_hl N x) s)) /\ (integrable_on 1 N (fun x:set => lift (abs_SNo (det N (matrix N N (f' x))))) s /\ drop (integral 1 N s (fun x:set => lift (abs_SNo (det N (matrix N N (f' x)))))) <= b)) -> measure N {f x | x :e s} <= b.
Admitted.

// HOL Light: Multivariate/measure.ml:18042 / NEGLIGIBLE_DIFFERENTIABLE_PREIMAGE   (hash md5:2de6cceca1a521aeeee3c7ccc12fd98f)
// not bridged: 
Theorem NEGLIGIBLE_DIFFERENTIABLE_PREIMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx M, f' x y :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, dimindex M = dimindex N /\ ((forall x :e R :^: idx M, x :e s -> has_derivative N M f (f' x) (within (R :^: idx M) (at_hl M x) s) /\ rank M N (matrix M N (f' x)) = dimindex N) /\ negligible N t) -> negligible M {x :e R :^: idx M | x :e s /\ f x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:18149 / ABSOLUTELY_INTEGRABLE_ON_IMAGE   (hash md5:24fb3d5bf0133f3b2bff91c5914e86b4)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ON_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall g':set -> set -> set, (forall x y :e R :^: idx M, g' x y :e R :^: idx M) -> forall s c= R :^: idx M, (forall x :e R :^: idx M, x :e s -> has_derivative M M g (g' x) (within (R :^: idx M) (at_hl M x) s)) /\ absolutely_integrable_on N M (fun x:set => vector_mul N (abs_SNo (det M (matrix M M (g' x)))) (f (g x))) s -> absolutely_integrable_on N M f {g x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:18149 / INTEGRAL_ON_IMAGE_DROP_UBOUND_LE   (hash md5:3bc2238374b6ea7ba7b3b7215b911cd2)
// not bridged: 
Theorem INTEGRAL_ON_IMAGE_DROP_UBOUND_LE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> forall g':set -> set -> set, (forall x y :e R :^: idx N, g' x y :e R :^: idx N) -> forall s c= R :^: idx N, forall b :e R, (forall x :e R :^: idx N, x :e s -> 0 <= drop (f (g x))) /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N g (g' x) (within (R :^: idx N) (at_hl N x) s)) /\ (integrable_on 1 N (fun x:set => vector_mul 1 (abs_SNo (det N (matrix N N (g' x)))) (f (g x))) s /\ drop (integral 1 N s (fun x:set => vector_mul 1 (abs_SNo (det N (matrix N N (g' x)))) (f (g x)))) <= b)) -> drop (integral 1 N {g x | x :e s} f) <= b.
Admitted.

// HOL Light: Multivariate/measure.ml:18699 / HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_INVERTIBLE   (hash md5:3659e4a7c8c6d5e2fee485a27dbfe6ac)
// not bridged: 
Theorem HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_INVERTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx M) -> forall g':set -> set -> set, (forall x y :e R :^: idx M, g' x y :e R :^: idx M) -> forall s c= R :^: idx M, forall b :e R :^: idx N, (forall x :e R :^: idx M, x :e s -> has_derivative M M g (g' x) (within (R :^: idx M) (at_hl M x) s)) /\ ((forall x :e R :^: idx M, x :e s -> h (g x) = x) /\ continuous_on_hl M M h {g x | x :e s}) -> (absolutely_integrable_on N M (fun x:set => vector_mul N (abs_SNo (det M (matrix M M (g' x)))) (f (g x))) s /\ integral N M s (fun x:set => vector_mul N (abs_SNo (det M (matrix M M (g' x)))) (f (g x))) = b <-> absolutely_integrable_on N M f {g x | x :e s} /\ integral N M {g x | x :e s} f = b).
Admitted.

// HOL Light: Multivariate/measure.ml:19113 / HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES   (hash md5:2aa009018a7087a16d32b10208fb55f4)
// not bridged: 
Theorem HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall g':set -> set -> set, (forall x y :e R :^: idx M, g' x y :e R :^: idx M) -> forall s c= R :^: idx M, forall b :e R :^: idx N, lebesgue_measurable M s /\ ((forall x :e R :^: idx M, x :e s -> has_derivative M M g (g' x) (within (R :^: idx M) (at_hl M x) s)) /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ g x = g y) -> x = y)) -> (absolutely_integrable_on N M (fun x:set => vector_mul N (abs_SNo (det M (matrix M M (g' x)))) (f (g x))) s /\ integral N M s (fun x:set => vector_mul N (abs_SNo (det M (matrix M M (g' x)))) (f (g x))) = b <-> absolutely_integrable_on N M f {g x | x :e s} /\ integral N M {g x | x :e s} f = b).
Admitted.

// HOL Light: Multivariate/measure.ml:19509 / ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES   (hash md5:f7c455e1c511d9bd08665a1e06e7a653)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall g':set -> set -> set, (forall x y :e R :^: idx M, g' x y :e R :^: idx M) -> forall s c= R :^: idx M, lebesgue_measurable M s /\ ((forall x :e R :^: idx M, x :e s -> has_derivative M M g (g' x) (within (R :^: idx M) (at_hl M x) s)) /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ g x = g y) -> x = y)) -> (absolutely_integrable_on N M f {g x | x :e s} <-> absolutely_integrable_on N M (fun x:set => vector_mul N (abs_SNo (det M (matrix M M (g' x)))) (f (g x))) s).
Admitted.

// HOL Light: Multivariate/measure.ml:19520 / INTEGRAL_CHANGE_OF_VARIABLES   (hash md5:585c8cff674767d385e0c23c581097a7)
// not bridged: 
Theorem INTEGRAL_CHANGE_OF_VARIABLES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall g':set -> set -> set, (forall x y :e R :^: idx M, g' x y :e R :^: idx M) -> forall s c= R :^: idx M, lebesgue_measurable M s /\ ((forall x :e R :^: idx M, x :e s -> has_derivative M M g (g' x) (within (R :^: idx M) (at_hl M x) s)) /\ ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ g x = g y) -> x = y) /\ (absolutely_integrable_on N M f {g x | x :e s} \/ absolutely_integrable_on N M (fun x:set => vector_mul N (abs_SNo (det M (matrix M M (g' x)))) (f (g x))) s))) -> integral N M {g x | x :e s} f = integral N M s (fun x:set => vector_mul N (abs_SNo (det M (matrix M M (g' x)))) (f (g x))).
Admitted.

// HOL Light: Multivariate/measure.ml:19535 / HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_1   (hash md5:fee66c83f853881ee47193a9fabe088e)
// not bridged: 
Theorem HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) -> forall g':set -> set, (forall x :e R, g' x :e R) -> forall s c= R :^: idx 1, forall b :e R :^: idx N, lebesgue_measurable 1 s /\ ((forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ g x = g y) -> x = y) /\ (forall x :e R :^: idx 1, x :e s -> has_vector_derivative 1 g (lift (g' (drop x))) (within (R :^: idx 1) (at_hl 1 x) s))) -> (absolutely_integrable_on N 1 (fun x:set => vector_mul N (abs_SNo (g' (drop x))) (f (g x))) s /\ integral N 1 s (fun x:set => vector_mul N (abs_SNo (g' (drop x))) (f (g x))) = b <-> absolutely_integrable_on N 1 f {g x | x :e s} /\ integral N 1 {g x | x :e s} f = b).
Admitted.

// HOL Light: Multivariate/measure.ml:19578 / ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES_1   (hash md5:8ed9472079b149f96dc63e749431fe20)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) -> forall g':set -> set, (forall x :e R, g' x :e R) -> forall s c= R :^: idx 1, lebesgue_measurable 1 s /\ ((forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ g x = g y) -> x = y) /\ (forall x :e R :^: idx 1, x :e s -> has_vector_derivative 1 g (lift (g' (drop x))) (within (R :^: idx 1) (at_hl 1 x) s))) -> (absolutely_integrable_on N 1 f {g x | x :e s} <-> absolutely_integrable_on N 1 (fun x:set => vector_mul N (abs_SNo (g' (drop x))) (f (g x))) s).
Admitted.

// HOL Light: Multivariate/measure.ml:19595 / HAS_MEASURE_DIFFERENTIABLE_IMAGE   (hash md5:bd5289269923bbb6c64add1972ec329c)
// not bridged: 
Theorem HAS_MEASURE_DIFFERENTIABLE_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, forall m :e R, lebesgue_measurable N s /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (within (R :^: idx N) (at_hl N x) s)) /\ (forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> (has_measure N {f x | x :e s} m <-> has_integral N 1 (fun x:set => lift (abs_SNo (det N (matrix N N (f' x))))) (lift m) s).
Admitted.

// HOL Light: Multivariate/measure.ml:19614 / MEASURABLE_DIFFERENTIABLE_IMAGE_EQ   (hash md5:dc8233c8ba0b0e41106c59db3c7cca64)
// not bridged: 
Theorem MEASURABLE_DIFFERENTIABLE_IMAGE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, lebesgue_measurable N s /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (within (R :^: idx N) (at_hl N x) s)) /\ (forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> (measurable N {f x | x :e s} <-> integrable_on 1 N (fun x:set => lift (abs_SNo (det N (matrix N N (f' x))))) s).
Admitted.

// HOL Light: Multivariate/measure.ml:19625 / MEASURABLE_DIFFERENTIABLE_IMAGE_ALT   (hash md5:bce80c098d6ebb7703b3edade7a1c74e)
// not bridged: 
Theorem MEASURABLE_DIFFERENTIABLE_IMAGE_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, lebesgue_measurable N s /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (within (R :^: idx N) (at_hl N x) s)) /\ (forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> (measurable N {f x | x :e s} <-> absolutely_integrable_on 1 N (fun x:set => lift (abs_SNo (det N (matrix N N (f' x))))) s).
Admitted.

// HOL Light: Multivariate/measure.ml:19639 / MEASURE_DIFFERENTIABLE_IMAGE_EQ   (hash md5:b755cb5c3a2633a4e07fc0dcdafea7c2)
// not bridged: 
Theorem MEASURE_DIFFERENTIABLE_IMAGE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, lebesgue_measurable N s /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (within (R :^: idx N) (at_hl N x) s)) /\ ((forall x y :e R :^: idx N, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ integrable_on 1 N (fun x:set => lift (abs_SNo (det N (matrix N N (f' x))))) s)) -> measure N {f x | x :e s} = drop (integral 1 N s (fun x:set => lift (abs_SNo (det N (matrix N N (f' x)))))).
Admitted.

// HOL Light: Multivariate/measure.ml:19662 / HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_LINEAR   (hash md5:3aa78b699056cc02ff8bc7cbe6e913d2)
// not bridged: 
Theorem HAS_ABSOLUTE_INTEGRAL_CHANGE_OF_VARIABLES_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall s c= R :^: idx M, forall b :e R :^: idx N, linear M M g -> (absolutely_integrable_on N M (fun x:set => vector_mul N (abs_SNo (det M (matrix M M g))) (f (g x))) s /\ integral N M s (fun x:set => vector_mul N (abs_SNo (det M (matrix M M g))) (f (g x))) = b <-> absolutely_integrable_on N M f {g x | x :e s} /\ integral N M {g x | x :e s} f = b).
Admitted.

// HOL Light: Multivariate/measure.ml:19690 / ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES_LINEAR   (hash md5:1662a3e088134da53aa2f7320fc7ce02)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_CHANGE_OF_VARIABLES_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall s c= R :^: idx M, linear M M g -> (absolutely_integrable_on N M (fun x:set => vector_mul N (abs_SNo (det M (matrix M M g))) (f (g x))) s <-> absolutely_integrable_on N M f {g x | x :e s}).
Admitted.

// HOL Light: Multivariate/measure.ml:19697 / ABSOLUTELY_INTEGRABLE_ON_LINEAR_IMAGE   (hash md5:edaf06e90d53c28e91ae99fa0fdb2403)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ON_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall s c= R :^: idx M, linear M M g -> (absolutely_integrable_on N M f {g x | x :e s} <-> absolutely_integrable_on N M (fun x:set => f (g x)) s \/ det M (matrix M M g) = 0).
Admitted.

// HOL Light: Multivariate/measure.ml:19706 / INTEGRAL_CHANGE_OF_VARIABLES_LINEAR   (hash md5:1455f66eb5c42373404be3d7e3ac8ed7)
// not bridged: 
Theorem INTEGRAL_CHANGE_OF_VARIABLES_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx M) -> forall s c= R :^: idx M, linear M M g /\ (absolutely_integrable_on N M f {g x | x :e s} \/ absolutely_integrable_on N M (fun x:set => f (g x)) s) -> integral N M {g x | x :e s} f = vector_mul N (abs_SNo (det M (matrix M M g))) (integral N M s (fun x:set => f (g x))).
Admitted.

// HOL Light: Multivariate/measure.ml:19734 / ABSOLUTELY_INTEGRABLE_APPROXIMATE_CONTINUOUS   (hash md5:7ffe477689d688619a81fd28da452012)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_APPROXIMATE_CONTINUOUS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall e0 :e R, lebesgue_measurable M s /\ (absolutely_integrable_on N M f s /\ 0 < e0) -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (absolutely_integrable_on N M g s /\ (continuous_on_hl M N g (R :^: idx M) /\ (bounded_hl N {g x | x :e R :^: idx M} /\ vector_norm 1 (integral 1 M s (fun x:set => lift (vector_norm N (vector_sub N (f x) (g x))))) < e0))).
Admitted.

// HOL Light: Multivariate/measure.ml:20116 / CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_NORM   (hash md5:a072c9f91fcae97699e6be0fb3def480)
// not bridged: 
Theorem CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_NORM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> absolutely_integrable_on N M f (R :^: idx M) -> tendsto 1 (R :^: idx M) (fun a:set => integral 1 M (R :^: idx M) (fun x:set => lift (vector_norm N (vector_sub N (f (vector_add M a x)) (f x))))) (vec 1 0) (at_hl M (vec M 0)).
Admitted.

// HOL Light: Multivariate/measure.ml:20355 / CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_NORM_GEN   (hash md5:c1d3e5e4c3e3a9a0abb95120845c1e40)
// not bridged: 
Theorem CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_NORM_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, absolutely_integrable_on N M f s /\ (lebesgue_measurable M t /\ t c= s) -> tendsto 1 (R :^: idx M) (fun a:set => integral 1 M t (fun x:set => lift (vector_norm N (vector_sub N (f (vector_add M a x)) (f x))))) (vec 1 0) (within (R :^: idx M) (at_hl M (vec M 0)) {a :e R :^: idx M | {vector_add M a x | x :e t} c= s}).
Admitted.

// HOL Light: Multivariate/measure.ml:20399 / CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_GEN   (hash md5:62084e39a4852dc1ee4882cf529d6c6f)
// not bridged: 
Theorem CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s t c= R :^: idx M, absolutely_integrable_on N M f s /\ lebesgue_measurable M t -> continuous_on_hl M N (fun a:set => integral N M t (fun x:set => f (vector_add M a x))) {a :e R :^: idx M | {vector_add M a x | x :e t} c= s}.
Admitted.

// HOL Light: Multivariate/measure.ml:20446 / CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION   (hash md5:d0a014b6e2c2962e8b8fc7e66fddb881)
// not bridged: 
Theorem CONTINUOUS_ON_ABSOLUTELY_INTEGRABLE_TRANSLATION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> absolutely_integrable_on N M f (R :^: idx M) -> continuous_on_hl M N (fun a:set => integral N M (R :^: idx M) (fun x:set => f (vector_add M a x))) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:20455 / CONTINUOUS_MEASURE_TRANSLATION_SYMDIFF   (hash md5:a1d718298527b08a62fb4bdb0d751239)
// not bridged: 
Theorem CONTINUOUS_MEASURE_TRANSLATION_SYMDIFF : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s -> tendsto 1 (R :^: idx N) (fun a:set => lift (measure N (({vector_add N a x | x :e s} :\: s) :\/: (s :\: {vector_add N a x | x :e s})))) (vec 1 0) (at_hl N (vec N 0)).
Admitted.

// HOL Light: Multivariate/measure.ml:20480 / CONTINUOUS_MEASURE_TRANSLATION_DIFF   (hash md5:a1b51c65e7c4811c6e4600716b5f97d1)
// not bridged: 
Theorem CONTINUOUS_MEASURE_TRANSLATION_DIFF : forall N:set, N <> Empty -> forall s c= R :^: idx N, measurable N s -> tendsto 1 (R :^: idx N) (fun a:set => lift (measure N ({vector_add N a x | x :e s} :\: s))) (vec 1 0) (at_hl N (vec N 0)).
Admitted.

// HOL Light: Multivariate/measure.ml:20496 / CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE_TRANSLATION   (hash md5:e954d8845a7b816aa0615d767e0a83a1)
// not bridged: 
Theorem CONTINUOUS_MEASURE_DIFFERENTIABLE_IMAGE_TRANSLATION : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s k c= R :^: idx N, open N s /\ (differentiable_on_hl N N f s /\ compact N k) -> continuous_on_hl N 1 (fun a:set => lift (measure N {f x | x :e {vector_add N a x | x :e k}})) {a :e R :^: idx N | {vector_add N a x | x :e k} c= s}.
Admitted.

// HOL Light: Multivariate/measure.ml:20612 / SUBINTERVAL_MEAN_VALUE_THEOREM   (hash md5:7d1aa9676995e1ca48518d006ee0ec7a)
// not bridged: 
Theorem SUBINTERVAL_MEAN_VALUE_THEOREM : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall a b :e R :^: idx N, forall n :e omega, ~ closed_interval N (seq_cons (a,b) seq_nil) = Empty /\ (~ n = 0 /\ absolutely_integrable_on 1 N f (closed_interval N (seq_cons (a,b) seq_nil))) -> exists c d :e R :^: idx N, vector_add N c (vector_mul N (recip_SNo n) (vector_sub N b a)) = d /\ (closed_interval N (seq_cons (c,d) seq_nil) c= closed_interval N (seq_cons (a,b) seq_nil) /\ vector_mul 1 (measure N (closed_interval N (seq_cons (a,b) seq_nil))) (integral 1 N (closed_interval N (seq_cons (c,d) seq_nil)) f) = vector_mul 1 (measure N (closed_interval N (seq_cons (c,d) seq_nil))) (integral 1 N (closed_interval N (seq_cons (a,b) seq_nil)) f)).
Admitted.

// HOL Light: Multivariate/measure.ml:20856 / SUBINTERVAL_MEAN_VALUE_THEOREM_SEQ   (hash md5:bc17fa8f6608288424827e7ed6848ce4)
// not bridged: 
Theorem SUBINTERVAL_MEAN_VALUE_THEOREM_SEQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall a b :e R :^: idx N, ~ closed_interval N (seq_cons (a,b) seq_nil) = Empty /\ absolutely_integrable_on 1 N f (closed_interval N (seq_cons (a,b) seq_nil)) -> exists c:set -> set, (forall x :e omega, c x :e R :^: idx N) /\ exists d:set -> set, (forall x :e omega, d x :e R :^: idx N) /\ ((forall n :e omega, exists m :e omega, ~ m = 0 /\ vector_add N (c n) (vector_mul N (recip_SNo m) (vector_sub N b a)) = d n) /\ ((forall n :e omega, ~ closed_interval N (seq_cons (c n,d n) seq_nil) = Empty) /\ (tendsto N omega (fun n:set => vector_sub N (d n) (c n)) (vec N 0) sequentially /\ ((forall n :e omega, closed_interval N (seq_cons (c n,d n) seq_nil) c= closed_interval N (seq_cons (a,b) seq_nil)) /\ ((forall n :e omega, closed_interval N (seq_cons (c (ordsucc n),d (ordsucc n)) seq_nil) c= closed_interval N (seq_cons (c n,d n) seq_nil)) /\ forall n :e omega, vector_mul 1 (measure N (closed_interval N (seq_cons (a,b) seq_nil))) (integral 1 N (closed_interval N (seq_cons (c n,d n) seq_nil)) f) = vector_mul 1 (measure N (closed_interval N (seq_cons (c n,d n) seq_nil))) (integral 1 N (closed_interval N (seq_cons (a,b) seq_nil)) f)))))).
Admitted.

// HOL Light: Multivariate/measure.ml:20970 / SUBINTERVAL_MEAN_VALUE_THEOREM_ALT   (hash md5:fbbb48dcf6eac755c0586c85da706a4e)
// not bridged: 
Theorem SUBINTERVAL_MEAN_VALUE_THEOREM_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall a b :e R :^: idx N, ~ closed_interval N (seq_cons (a,b) seq_nil) = Empty /\ absolutely_integrable_on 1 N f (closed_interval N (seq_cons (a,b) seq_nil)) -> exists x :e R :^: idx N, x :e closed_interval N (seq_cons (a,b) seq_nil) /\ forall e0 :e R, 0 < e0 -> exists c d :e R :^: idx N, exists n :e omega, ~ n = 0 /\ (vector_add N c (vector_mul N (recip_SNo n) (vector_sub N b a)) = d /\ (x :e closed_interval N (seq_cons (c,d) seq_nil) /\ (closed_interval N (seq_cons (c,d) seq_nil) c= closed_interval N (seq_cons (a,b) seq_nil) /\ (diameter N (closed_interval N (seq_cons (c,d) seq_nil)) < e0 /\ vector_mul 1 (measure N (closed_interval N (seq_cons (a,b) seq_nil))) (integral 1 N (closed_interval N (seq_cons (c,d) seq_nil)) f) = vector_mul 1 (measure N (closed_interval N (seq_cons (c,d) seq_nil))) (integral 1 N (closed_interval N (seq_cons (a,b) seq_nil)) f))))).
Admitted.

// HOL Light: Multivariate/measure.ml:21012 / WEAK_LEBESGUE_POINTS_IMP_IVT   (hash md5:771ca8429156a16d9e966513db9802ce)
// not bridged: 
Theorem WEAK_LEBESGUE_POINTS_IMP_IVT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall a b :e R :^: idx N, forall s c= R :^: idx N, open N s /\ (connected N s /\ (~ open_interval N (a,b) = Empty /\ (locally N {x :e Power (R :^: idx N) | absolutely_integrable_on 1 N f x} s /\ (forall c :e Power (R :^: idx N) :^: omega, forall x :e R :^: idx N, x :e s /\ ((forall n :e omega, exists u :e R, exists v :e R :^: idx N, 0 < u /\ c n = {vector_add N (vector_mul N u x0) v | x0 :e closed_interval N (seq_cons (a,b) seq_nil)}) /\ (eventually omega {n :e omega | x :e c n} sequentially /\ tendsto 1 omega (fun n:set => lift (diameter N (c n))) (vec 1 0) sequentially)) -> tendsto 1 omega (fun n:set => vector_mul 1 (recip_SNo (measure N (c n))) (integral 1 N (c n) f)) (f x) sequentially)))) -> connected 1 {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:21318 / MEASURE_DIFFERENTIABLE_IMAGE_APPROX_GEN   (hash md5:1d5187a241451c2b6a2626ae32eddfb6)
// not bridged: 
Theorem MEASURE_DIFFERENTIABLE_IMAGE_APPROX_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, forall c :e Power (R :^: idx N) :^: omega, forall a :e R :^: idx N, open N s /\ (differentiable_on_hl N N f s /\ ((forall v c= R :^: idx N, v c= s /\ open N v -> open N {f x | x :e v}) /\ (a :e s /\ (~ det N (jacobian N N f (at_hl N a)) = 0 /\ (tendsto 1 omega (fun n:set => lift (diameter N (c n))) (vec 1 0) sequentially /\ ((forall n :e omega, a :e closure N (c n)) /\ (exists A c= R :^: idx N, convex N A /\ (bounded_hl N A /\ (~ interior N A = Empty /\ forall n :e omega, exists t :e R, exists z :e R :^: idx N, 0 < t /\ {vector_add N (vector_mul N t x) z | x :e A} = c n))))))))) -> eventually omega {n :e omega | measurable N {f x | x :e c n}} sequentially /\ tendsto 1 omega (fun n:set => lift (measure N {f x | x :e c n} :/: measure N (c n))) (lift (abs_SNo (det N (jacobian N N f (at_hl N a))))) sequentially.
Admitted.

// HOL Light: Multivariate/measure.ml:21956 / MEASURE_DIFFERENTIABLE_IMAGE_APPROX   (hash md5:73d568690b1f63bb07c79a0d338488de)
// not bridged: 
Theorem MEASURE_DIFFERENTIABLE_IMAGE_APPROX : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, forall c :e Power (R :^: idx N) :^: omega, forall a :e R :^: idx N, open N s /\ (a :e s /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (at_hl N x) /\ ~ det N (matrix N N (f' x)) = 0) /\ (tendsto 1 omega (fun n:set => lift (diameter N (c n))) (vec 1 0) sequentially /\ ((forall n :e omega, a :e closure N (c n)) /\ (exists A c= R :^: idx N, convex N A /\ (bounded_hl N A /\ (~ interior N A = Empty /\ forall n :e omega, exists t :e R, exists z :e R :^: idx N, 0 < t /\ {vector_add N (vector_mul N t x) z | x :e A} = c n))))))) -> eventually omega {n :e omega | measurable N {f x | x :e c n}} sequentially /\ tendsto 1 omega (fun n:set => lift (measure N {f x | x :e c n} :/: measure N (c n))) (lift (abs_SNo (det N (matrix N N (f' a))))) sequentially.
Admitted.

// HOL Light: Multivariate/measure.ml:21983 / CONNECTED_JACOBIAN_RANGE   (hash md5:84bdc6e9194854bdcd1e54139252ce94)
// not bridged: 
Theorem CONNECTED_JACOBIAN_RANGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, open N s /\ (connected N s /\ (forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (at_hl N x) /\ ~ det N (matrix N N (f' x)) = 0)) -> connected 1 {lift (det N (matrix N N (f' x))) | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:22160 / CONNECTED_JACOBIAN_RANGE_ALT   (hash md5:77762c1a1d04267b39002fb77e4539cc)
// not bridged: 
Theorem CONNECTED_JACOBIAN_RANGE_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s t c= R :^: idx N, forall a b :e R :^: idx N, open N s /\ (connected N s /\ (convex N t /\ (t c= s /\ (~ interior N t = Empty /\ ((forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (at_hl N x) /\ ~ det N (matrix N N (f' x)) = 0) /\ (a :e t /\ b :e t)))))) -> open_segment 1 (lift (det N (matrix N N (f' a))),lift (det N (matrix N N (f' b)))) c= {lift (det N (matrix N N (f' x))) | x :e interior N t}.
Admitted.

// HOL Light: Multivariate/measure.ml:22417 / CONNECTED_JACOBIAN_RANGE_SUBSET   (hash md5:74ead90d0b62b3fa2c527e23bfa5439f)
// not bridged: 
Theorem CONNECTED_JACOBIAN_RANGE_SUBSET : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s t c= R :^: idx N, open N s /\ (connected N s /\ (convex N t /\ (t c= s /\ (~ interior N t = Empty /\ (forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (at_hl N x) /\ ~ det N (matrix N N (f' x)) = 0))))) -> connected 1 {lift (det N (matrix N N (f' x))) | x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:22446 / CONNECTED_JACOBIAN_GRAPH   (hash md5:abf2337f32f0dd7800d587ba88265c68)
// not bridged: 
Theorem CONNECTED_JACOBIAN_GRAPH : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx N, f' x y :e R :^: idx N) -> forall s c= R :^: idx N, open N s /\ (connected N s /\ (forall x :e R :^: idx N, x :e s -> has_derivative N N f (f' x) (at_hl N x) /\ ~ det N (matrix N N (f' x)) = 0)) -> connected (idx_n (dimindex N + 1)) {pastecart N 1 x (lift (det N (matrix N N (f' x)))) | x :e R :^: idx N, x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:22827 / ABSOLUTE_INTEGRATION_BY_PARTS   (hash md5:1c8f50a3a87220f6b38fd7aab967e452)
// not bridged: 
Theorem ABSOLUTE_INTEGRATION_BY_PARTS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, bop x y :e R :^: idx P) -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx M) -> forall g':set -> set, (forall x :e R :^: idx 1, g' x :e R :^: idx N) -> forall a b :e R :^: idx 1, bilinear N P M bop /\ (drop a <= drop b /\ (absolutely_integrable_on M 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (absolutely_integrable_on N 1 g' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> has_integral 1 M f' (f x) (closed_interval 1 (seq_cons (a,x) seq_nil))) /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> has_integral 1 N g' (g x) (closed_interval 1 (seq_cons (a,x) seq_nil))))))) -> absolutely_integrable_on P 1 (fun x:set => bop (f x) (g' x)) (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (absolutely_integrable_on P 1 (fun x:set => bop (f' x) (g x)) (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ vector_add P (integral P 1 (closed_interval 1 (seq_cons (a,b) seq_nil)) (fun x:set => bop (f x) (g' x))) (integral P 1 (closed_interval 1 (seq_cons (a,b) seq_nil)) (fun x:set => bop (f' x) (g x))) = vector_sub P (bop (f b) (g b)) (bop (f a) (g a))).
Admitted.

// HOL Light: Multivariate/measure.ml:23178 / DOUBLE_LEBESGUE_MEASURABLE_INVERSE_FUNCTION_GEN   (hash md5:0593268d65b5edc7c953eb2811c10489)
// not bridged: 
Theorem DOUBLE_LEBESGUE_MEASURABLE_INVERSE_FUNCTION_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ (forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) -> forall t c= R :^: idx M, lebesgue_measurable M t -> lebesgue_measurable N {f x | x :e s :/\: t}.
Admitted.

// HOL Light: Multivariate/measure.ml:23202 / DOUBLE_LEBESGUE_MEASURABLE_INVERSE_FUNCTION   (hash md5:761b9cb2bbaae7d4b6cb8bad266c559e)
// not bridged: 
Theorem DOUBLE_LEBESGUE_MEASURABLE_INVERSE_FUNCTION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, measurable_on M N f s /\ ((forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) /\ (forall x :e R :^: idx M, x :e s -> g (f x) = x)) -> forall t c= R :^: idx M, lebesgue_measurable M t -> lebesgue_measurable N {y :e R :^: idx N | y :e {f x | x :e s} /\ g y :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:23216 / LEBESGUE_MEASURABLE_MEASURABLE_IMAGE   (hash md5:988927208dda83dc93e76143c46a4597)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_MEASURABLE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ ((forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> lebesgue_measurable N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:23216 / MEASURABLE_ON_INVERSE_FUNCTION   (hash md5:c5f36f95d322c67cc530fac7af69405f)
// not bridged: 
Theorem MEASURABLE_ON_INVERSE_FUNCTION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall s c= R :^: idx M, measurable_on M N f s /\ ((forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) /\ (forall x :e R :^: idx M, x :e s -> g (f x) = x)) -> measurable_on N M g {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:23242 / DOUBLE_LEBESGUE_MEASURABLE_LEFT_INVERSE   (hash md5:1bf371a30829c4ef06abfbc315e8d332)
// not bridged: 
Theorem DOUBLE_LEBESGUE_MEASURABLE_LEFT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ ((forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ ((forall x :e R :^: idx M, x :e s -> g (f x) = x) /\ forall t c= R :^: idx M, lebesgue_measurable M t -> lebesgue_measurable N {y :e R :^: idx N | y :e {f x | x :e s} /\ g y :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:23258 / MEASURABLE_ON_LEFT_INVERSE   (hash md5:923163d48ec9118f97c4d383165f1b7a)
// not bridged: 
Theorem MEASURABLE_ON_LEFT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ ((forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ ((forall x :e R :^: idx M, x :e s -> g (f x) = x) /\ measurable_on N M g {f x | x :e s}).
Admitted.

// HOL Light: Multivariate/measure.ml:23272 / DOUBLE_LEBESGUE_MEASURABLE_RIGHT_INVERSE   (hash md5:d40108996439c2cccee1985f93241722)
// not bridged: 
Theorem DOUBLE_LEBESGUE_MEASURABLE_RIGHT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ (forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ ((forall y :e R :^: idx N, y :e {f x | x :e s} -> g y :e s /\ f (g y) = y) /\ forall t c= R :^: idx M, lebesgue_measurable M t -> lebesgue_measurable N {y :e R :^: idx N | y :e {f x | x :e s} /\ g y :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:23291 / MEASURABLE_ON_RIGHT_INVERSE   (hash md5:9deb63f3bf961b642fc152c41bda775c)
// not bridged: 
Theorem MEASURABLE_ON_RIGHT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, measurable_on M N f s /\ (forall t c= R :^: idx M, negligible M t /\ t c= s -> negligible N {f x | x :e t}) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ ((forall y :e R :^: idx N, y :e {f x | x :e s} -> g y :e s /\ f (g y) = y) /\ measurable_on N M g {f x | x :e s}).
Admitted.

// HOL Light: Multivariate/measure.ml:23313 / EGOROV   (hash md5:26f95481a9255c4da00f9ac811cb442f)
// not bridged: 
Theorem EGOROV : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set -> set, (forall x :e omega, forall y :e R :^: idx M, f x y :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s t c= R :^: idx M, measurable M s /\ (negligible M t /\ ((forall n :e omega, measurable_on M N (f n) s) /\ (forall x :e R :^: idx M, x :e s :\: t -> tendsto N omega (fun n:set => f n x) (g x) sequentially))) -> forall d :e R, 0 < d -> exists k c= R :^: idx M, k c= s /\ (measurable M k /\ (measure M k < d /\ forall e0 :e R, 0 < e0 -> exists N0 :e omega, forall n :e omega, forall x :e R :^: idx M, N0 <= n /\ x :e s :\: k -> distance N (f n x,g x) < e0)).
Admitted.

// HOL Light: Multivariate/measure.ml:23426 / LEBESGUE_DIFFERENTIATION_THEOREM_COMPACT   (hash md5:e06088548a991b377227bf6c94e6dbb7)
// not bridged: 
Theorem LEBESGUE_DIFFERENTIATION_THEOREM_COMPACT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, has_bounded_variation_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) -> negligible 1 {x :e R :^: idx 1 | x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ ~ differentiable N 1 f (at_hl 1 x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:24634 / LEBESGUE_DIFFERENTIATION_THEOREM   (hash md5:a5daded4ec450511126796c39820ef8b)
// not bridged: 
Theorem LEBESGUE_DIFFERENTIATION_THEOREM : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s c= R :^: idx 1, is_interval 1 s /\ has_bounded_variation_on N f s -> negligible 1 {x :e R :^: idx 1 | x :e s /\ ~ differentiable N 1 f (at_hl 1 x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:24674 / LEBESGUE_DIFFERENTIATION_THEOREM_ALT   (hash md5:1a854a453a6191ada7c56fdcc710dc06)
// not bridged: 
Theorem LEBESGUE_DIFFERENTIATION_THEOREM_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s c= R :^: idx 1, is_interval 1 s /\ has_bounded_variation_on N f s -> exists t c= R :^: idx 1, t c= s /\ (negligible 1 t /\ forall x :e R :^: idx 1, x :e s :\: t -> differentiable N 1 f (at_hl 1 x)).
Admitted.

// HOL Light: Multivariate/measure.ml:24684 / LEBESGUE_DIFFERENTIATION_THEOREM_GEN   (hash md5:ae3666e1057fe01064f113d8e9608be3)
// not bridged: 
Theorem LEBESGUE_DIFFERENTIATION_THEOREM_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s c= R :^: idx 1, countable (components 1 s) /\ has_bounded_variation_on N f s -> negligible 1 {x :e R :^: idx 1 | x :e s /\ ~ differentiable N 1 f (at_hl 1 x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:24701 / LEBESGUE_DIFFERENTIATION_THEOREM_INCREASING   (hash md5:ec8359a943d5dda318ac5a9ab0fced76)
// not bridged: 
Theorem LEBESGUE_DIFFERENTIATION_THEOREM_INCREASING : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, is_interval 1 s /\ (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f x) <= drop (f y)) -> negligible 1 {x :e R :^: idx 1 | x :e s /\ ~ differentiable 1 1 f (at_hl 1 x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:24728 / LEBESGUE_DIFFERENTIATION_THEOREM_DECREASING   (hash md5:0b087b08d846e493228cf91c7e0afa1f)
// not bridged: 
Theorem LEBESGUE_DIFFERENTIATION_THEOREM_DECREASING : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, is_interval 1 s /\ (forall x y :e R :^: idx 1, x :e s /\ (y :e s /\ drop x <= drop y) -> drop (f y) <= drop (f x)) -> negligible 1 {x :e R :^: idx 1 | x :e s /\ ~ differentiable 1 1 f (at_hl 1 x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:24747 / ABSOLUTELY_CONTINUOUS_INTEGRAL   (hash md5:c7a3e5e82f6415b66fbe791cb2ef8d51)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall e0 :e R, absolutely_integrable_on N M f s /\ 0 < e0 -> exists d :e R, 0 < d /\ forall t c= R :^: idx M, t c= s /\ (measurable M t /\ measure M t < d) -> vector_norm N (integral N M t f) < e0.
Admitted.

// HOL Light: Multivariate/measure.ml:24818 / ABSOLUTELY_SETCONTINUOUS_INDEFINITE_INTEGRAL   (hash md5:b1107956a93fc8d5addd295f2312efde)
// not bridged: 
Theorem ABSOLUTELY_SETCONTINUOUS_INDEFINITE_INTEGRAL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, absolutely_integrable_on N M f s /\ lebesgue_measurable M s -> absolutely_setcontinuous_on M N (fun k:set => integral N M k f) s.
Admitted.

// HOL Light: Multivariate/measure.ml:24843 / ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_RIGHT   (hash md5:af12edab3c3dc3a73513b9e70b29e277)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_RIGHT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, absolutely_integrable_on N 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) -> absolutely_continuous_on N (fun x:set => integral N 1 (closed_interval 1 (seq_cons (a,x) seq_nil)) f) (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:24865 / ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_LEFT   (hash md5:05b525483a272fd69c51eb45bace3d65)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_LEFT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, absolutely_integrable_on N 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) -> absolutely_continuous_on N (fun x:set => integral N 1 (closed_interval 1 (seq_cons (x,b) seq_nil)) f) (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:24887 / FUNDAMENTAL_THEOREM_OF_CALCULUS_ABSOLUTELY_CONTINUOUS   (hash md5:3a6fc7f6bdb1933fcd0821149fc45b37)
// not bridged: 
Theorem FUNDAMENTAL_THEOREM_OF_CALCULUS_ABSOLUTELY_CONTINUOUS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall s c= R :^: idx 1, forall a b :e R :^: idx 1, negligible 1 s /\ (drop a <= drop b /\ (absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil)))))) -> has_integral 1 N f' (vector_sub N (f b) (f a)) (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:24991 / ABSOLUTELY_INTEGRABLE_BOUNDED_VARIATION_EQ   (hash md5:c36198bc193b606684a5d8506f949348)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_BOUNDED_VARIATION_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, absolutely_integrable_on N 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) <-> integrable_on N 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ has_bounded_variation_on N (fun t:set => integral N 1 (closed_interval 1 (seq_cons (a,t) seq_nil)) f) (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:25012 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE   (hash md5:4fb32c71b33f474e2148ec4b5e3e2f00)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall s c= R :^: idx 1, forall a b :e R :^: idx 1, absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil))))) -> absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:25051 / ABSOLUTE_INTEGRAL_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ   (hash md5:b7a9f1caaf222dcbf6e4c490419c5964)
// not bridged: 
Theorem ABSOLUTE_INTEGRAL_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall a b :e R :^: idx 1, absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> has_integral 1 N f' (vector_sub N (f x) (f a)) (closed_interval 1 (seq_cons (a,x) seq_nil))) <-> absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ exists s c= R :^: idx 1, negligible 1 s /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil))).
Admitted.

// HOL Light: Multivariate/measure.ml:25106 / ABSOLUTE_INTEGRAL_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ_ALT   (hash md5:9876ff36e3c2ba83178878274f7472ef)
// not bridged: 
Theorem ABSOLUTE_INTEGRAL_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall a b :e R :^: idx 1, absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> has_integral 1 N f' (vector_sub N (f x) (f a)) (closed_interval 1 (seq_cons (a,x) seq_nil))) <-> absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ exists s c= R :^: idx 1, negligible 1 s /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (at_hl 1 x).
Admitted.

// HOL Light: Multivariate/measure.ml:25134 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ   (hash md5:613ad248276e46f3185723e49bd2a025)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ : forall N:set, N <> Empty -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall a b :e R :^: idx 1, absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) <-> exists f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) /\ exists s c= R :^: idx 1, absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil)))).
Admitted.

// HOL Light: Multivariate/measure.ml:25154 / ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ_ALT   (hash md5:c310a472a2539c8135271c85d1314199)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_ABSOLUTELY_CONTINUOUS_DERIVATIVE_EQ_ALT : forall N:set, N <> Empty -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall a b :e R :^: idx 1, absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) <-> exists f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) /\ exists s c= R :^: idx 1, absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (at_hl 1 x)).
Admitted.

// HOL Light: Multivariate/measure.ml:25180 / ABSOLUTE_INTEGRATION_BY_PARTS_SUM   (hash md5:2d94b38ced30c83ca71a1a8e2690e940)
// not bridged: 
Theorem ABSOLUTE_INTEGRATION_BY_PARTS_SUM : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, bop x y :e R :^: idx P) -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx M) -> forall g':set -> set, (forall x :e R :^: idx 1, g' x :e R :^: idx N) -> forall a b :e R :^: idx 1, bilinear N P M bop /\ (drop a <= drop b /\ (absolutely_integrable_on M 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> has_integral 1 M f' (vector_sub M (f x) (f a)) (closed_interval 1 (seq_cons (a,x) seq_nil))) /\ (absolutely_integrable_on N 1 g' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> has_integral 1 N g' (vector_sub N (g x) (g a)) (closed_interval 1 (seq_cons (a,x) seq_nil)))))) -> absolutely_integrable_on P 1 (fun x:set => vector_add P (bop (f x) (g' x)) (bop (f' x) (g x))) (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> has_integral 1 P (fun x0:set => vector_add P (bop (f x0) (g' x0)) (bop (f' x0) (g x0))) (vector_sub P (bop (f x) (g x)) (bop (f a) (g a))) (closed_interval 1 (seq_cons (a,x) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:25210 / ABSOLUTELY_INTEGRABLE_INCREASING_DERIVATIVE   (hash md5:28cea90a9feacfd897ea1cc0f557db8d)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_INCREASING_DERIVATIVE : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall a b :e R :^: idx 1, (forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (f x) <= drop (f y)) -> exists s c= R :^: idx 1, exists f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) /\ (negligible 1 s /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (f' x) (at_hl 1 x)) /\ (absolutely_integrable_on 1 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> drop (integral 1 1 (closed_interval 1 (seq_cons (a,x) seq_nil)) f') <= drop (f x) + - drop (f a)))).
Admitted.

// HOL Light: Multivariate/measure.ml:25445 / ABSOLUTELY_INTEGRABLE_INCREASING_DERIVATIVE_ALT   (hash md5:f82eea4a28ade3f1c97645bfeb027c91)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_INCREASING_DERIVATIVE_ALT : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, (forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (f x) <= drop (f y)) /\ (negligible 1 s /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (f' x) (at_hl 1 x))) -> absolutely_integrable_on 1 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> drop (integral 1 1 (closed_interval 1 (seq_cons (a,x) seq_nil)) f') <= drop (f x) + - drop (f a).
Admitted.

// HOL Light: Multivariate/measure.ml:25486 / ABSOLUTELY_INTEGRABLE_BOUNDED_VARIATION_DERIVATIVE   (hash md5:fcba854c1c07f879783666115d62b40f)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_BOUNDED_VARIATION_DERIVATIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, has_bounded_variation_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) -> exists f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) /\ exists s c= R :^: idx 1, negligible 1 s /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (at_hl 1 x)) /\ absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil))).
Admitted.

// HOL Light: Multivariate/measure.ml:25554 / ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_EQ   (hash md5:3c05fb13025e4b0b7a5003ebc1bd743e)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_INDEFINITE_INTEGRAL_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) <-> exists f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) /\ (absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> has_integral 1 N f' (vector_sub N (f x) (f a)) (closed_interval 1 (seq_cons (a,x) seq_nil))).
Admitted.

// HOL Light: Multivariate/measure.ml:25595 / ABSOLUTE_INTEGRAL_NORM_DERIVATIVE_LE_VARIATION   (hash md5:2218e90a6e866d141c84f2248b513754)
// not bridged: 
Theorem ABSOLUTE_INTEGRAL_NORM_DERIVATIVE_LE_VARIATION : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, has_bounded_variation_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) -> exists s c= R :^: idx 1, exists f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) /\ (negligible 1 s /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (at_hl 1 x)) /\ (absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ forall c :e R :^: idx 1, c :e closed_interval 1 (seq_cons (a,b) seq_nil) -> drop (integral 1 1 (closed_interval 1 (seq_cons (a,c) seq_nil)) (fun x:set => lift (vector_norm N (f' x)))) <= vector_variation N (closed_interval 1 (seq_cons (a,c) seq_nil)) f))).
Admitted.

// HOL Light: Multivariate/measure.ml:25720 / ABSOLUTE_INTEGRAL_NORM_DERIVATIVE_LE_VARIATION_ALT   (hash md5:11d53f15c2b55de14fbe7ec1b7d3fbf1)
// not bridged: 
Theorem ABSOLUTE_INTEGRAL_NORM_DERIVATIVE_LE_VARIATION_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, has_bounded_variation_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil))))) -> absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ forall c :e R :^: idx 1, c :e closed_interval 1 (seq_cons (a,b) seq_nil) -> drop (integral 1 1 (closed_interval 1 (seq_cons (a,c) seq_nil)) (fun x:set => lift (vector_norm N (f' x)))) <= vector_variation N (closed_interval 1 (seq_cons (a,c) seq_nil)) f.
Admitted.

// HOL Light: Multivariate/measure.ml:25769 / VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE_GEN   (hash md5:970392dd3c7cc012412ce2b8fab2e15b)
// not bridged: 
Theorem VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil))))) -> absolutely_integrable_on N 1 f' (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ vector_variation N (closed_interval 1 (seq_cons (a,b) seq_nil)) f = drop (integral 1 1 (closed_interval 1 (seq_cons (a,b) seq_nil)) (fun x:set => lift (vector_norm N (f' x)))).
Admitted.

// HOL Light: Multivariate/measure.ml:25793 / ABSOLUTELY_CONTINUOUS_VECTOR_VARIATION   (hash md5:aa0d3de206169c3c9bb005c4544ef8b0)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_VECTOR_VARIATION : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, has_bounded_variation_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ absolutely_continuous_on 1 (fun x:set => lift (vector_variation N (closed_interval 1 (seq_cons (a,x) seq_nil)) f)) (closed_interval 1 (seq_cons (a,b) seq_nil)) <-> absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:25857 / INCREASING_FTC_AE_IMP_ABSOLUTELY_CONTINUOUS   (hash md5:6d6d3e8560af2bbf6023ee58e018e191)
// not bridged: 
Theorem INCREASING_FTC_AE_IMP_ABSOLUTELY_CONTINUOUS : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, (forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (f x) <= drop (f y)) /\ (negligible 1 s /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (f' x) (at_hl 1 x)) /\ integral 1 1 (closed_interval 1 (seq_cons (a,b) seq_nil)) f' = vector_sub 1 (f b) (f a))) -> absolutely_continuous_on 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:25905 / VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE_REV   (hash md5:c692f6a0dda4c3618eb12ad37e107f9e)
// not bridged: 
Theorem VECTOR_VARIATION_INTEGRAL_NORM_DERIVATIVE_REV : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx N) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, has_bounded_variation_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative N f (f' x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil)))) /\ vector_variation N (closed_interval 1 (seq_cons (a,b) seq_nil)) f = drop (integral 1 1 (closed_interval 1 (seq_cons (a,b) seq_nil)) (fun x:set => lift (vector_norm N (f' x)))))) -> absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:26266 / MEASURABLE_ABSOLUTELY_CONTINUOUS_IMAGE   (hash md5:6356436d398decf6e25af15e47665943)
// not bridged: 
Theorem MEASURABLE_ABSOLUTELY_CONTINUOUS_IMAGE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s t c= R :^: idx 1, absolutely_continuous_on N f s /\ (is_interval 1 s /\ (measurable 1 t /\ t c= s)) -> measurable N {f x | x :e t}.
Admitted.

// HOL Light: Multivariate/measure.ml:26301 / BANACH_ZARECKI   (hash md5:62ba41810b3d8bf48d2d776f48e62b72)
// not bridged: 
Theorem BANACH_ZARECKI : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall a b :e R :^: idx 1, absolutely_continuous_on 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) <-> continuous_on_hl 1 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (has_bounded_variation_on 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ forall t c= R :^: idx 1, t c= closed_interval 1 (seq_cons (a,b) seq_nil) /\ negligible 1 t -> negligible 1 {f x | x :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:26407 / BANACH_ZARECKI_GEN   (hash md5:186fdf6b2fd2095ccab8c90adc737488)
// not bridged: 
Theorem BANACH_ZARECKI_GEN : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, is_interval 1 s /\ bounded_hl 1 s -> (absolutely_continuous_on 1 f s <-> continuous_on_hl 1 1 f s /\ (has_bounded_variation_on 1 f s /\ forall t c= R :^: idx 1, t c= s /\ negligible 1 t -> negligible 1 {f x | x :e t})).
Admitted.

// HOL Light: Multivariate/measure.ml:26469 / ABSOLUTELY_CONTINUOUS_DIFFERENTIABLE_BV_GEN   (hash md5:61f5bcd5c3594d9210ce473b61c87cf6)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_DIFFERENTIABLE_BV_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall s t c= R :^: idx 1, is_interval 1 s /\ (bounded_hl 1 s /\ (continuous_on_hl 1 N f s /\ (has_bounded_variation_on N f s /\ (countable t /\ (forall x :e R :^: idx 1, x :e s :\: t -> differentiable N 1 f (within (R :^: idx 1) (at_hl 1 x) s)))))) -> absolutely_continuous_on N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:26506 / ABSOLUTELY_CONTINUOUS_DIFFERENTIABLE_BV   (hash md5:9351e644c9eebb183093bba6d7c5accd)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_DIFFERENTIABLE_BV : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall a b :e R :^: idx 1, differentiable_on_hl N 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ has_bounded_variation_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)) -> absolutely_continuous_on N f (closed_interval 1 (seq_cons (a,b) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:26518 / ABSOLUTELY_CONTINUOUS_ON_COMPOSE   (hash md5:633d019e222fbfcd00d5444687d2f542)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_ON_COMPOSE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) -> forall s t c= R :^: idx 1, is_interval 1 s /\ (bounded_hl 1 s /\ (is_interval 1 t /\ (bounded_hl 1 t /\ (absolutely_continuous_on N f t /\ (absolutely_continuous_on 1 g s /\ {g x | x :e s} c= t))))) -> (absolutely_continuous_on N (fun x:set => f (g x)) s <-> has_bounded_variation_on N (fun x:set => f (g x)) s).
Admitted.

// HOL Light: Multivariate/measure.ml:26556 / CONVERSE_SARD   (hash md5:aef957fb69abc23da248429d7c99e3f1)
// not bridged: 
Theorem CONVERSE_SARD : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall f':set -> set -> set, (forall x y :e R :^: idx M, f' x y :e R :^: idx N) -> forall s c= R :^: idx M, dimindex M = dimindex N /\ ((forall x :e R :^: idx M, x :e s -> has_derivative N M f (f' x) (within (R :^: idx M) (at_hl M x) s)) /\ negligible N {f x | x :e s}) -> negligible M {x :e R :^: idx M | x :e s /\ rank M N (matrix M N (f' x)) = dimindex N}.
Admitted.

// HOL Light: Multivariate/measure.ml:26575 / CONVERSE_SARD_1   (hash md5:1898453db7dedc6f226291041aa860c0)
// not bridged: 
Theorem CONVERSE_SARD_1 : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall s c= R :^: idx 1, (forall x :e R :^: idx 1, x :e s -> has_vector_derivative 1 f (f' x) (within (R :^: idx 1) (at_hl 1 x) s)) /\ negligible 1 {f x | x :e s} -> negligible 1 {x :e R :^: idx 1 | x :e s /\ ~ f' x = vec 1 0}.
Admitted.

// HOL Light: Multivariate/measure.ml:26590 / DIFF_CHAIN_WITHIN_EQUAL_AE   (hash md5:1fb47cc518f65897bc113e84bd2735d8)
// not bridged: 
Theorem DIFF_CHAIN_WITHIN_EQUAL_AE : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall g':set -> set, (forall x :e R :^: idx 1, g' x :e R :^: idx 1) -> forall h':set -> set, (forall x :e R :^: idx 1, h' x :e R :^: idx 1) -> forall s t u v w c= R :^: idx 1, {f x | x :e s} c= t /\ (negligible 1 u /\ (negligible 1 v /\ (negligible 1 w /\ ((forall n c= R :^: idx 1, n c= t /\ negligible 1 n -> negligible 1 {g x | x :e n}) /\ ((forall x :e R :^: idx 1, x :e s :\: u -> has_vector_derivative 1 f (f' x) (within (R :^: idx 1) (at_hl 1 x) s)) /\ ((forall y :e R :^: idx 1, y :e t :\: v -> has_vector_derivative 1 g (g' y) (within (R :^: idx 1) (at_hl 1 y) t)) /\ (forall x :e R :^: idx 1, x :e s :\: w -> has_vector_derivative 1 (fun x:set => g (f x)) (h' x) (within (R :^: idx 1) (at_hl 1 x) s)))))))) -> negligible 1 {x :e R :^: idx 1 | x :e s /\ ~ h' x = vector_mul 1 (drop (f' x)) (g' (f x))}.
Admitted.

// HOL Light: Multivariate/measure.ml:26661 / DIFF_CHAIN_AT_EQUAL_AE   (hash md5:22b3937d4a85788e9a6c81f3fb0ab816)
// not bridged: 
Theorem DIFF_CHAIN_AT_EQUAL_AE : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall g':set -> set, (forall x :e R :^: idx 1, g' x :e R :^: idx 1) -> forall h':set -> set, (forall x :e R :^: idx 1, h' x :e R :^: idx 1) -> forall s t u v w c= R :^: idx 1, {f x | x :e s} c= t /\ (negligible 1 u /\ (negligible 1 v /\ (negligible 1 w /\ ((forall n c= R :^: idx 1, n c= t /\ negligible 1 n -> negligible 1 {g x | x :e n}) /\ ((forall x :e R :^: idx 1, x :e s :\: u -> has_vector_derivative 1 f (f' x) (at_hl 1 x)) /\ ((forall y :e R :^: idx 1, y :e t :\: v -> has_vector_derivative 1 g (g' y) (at_hl 1 y)) /\ (forall x :e R :^: idx 1, x :e s :\: w -> has_vector_derivative 1 (fun x:set => g (f x)) (h' x) (at_hl 1 x)))))))) -> negligible 1 {x :e R :^: idx 1 | x :e s /\ ~ h' x = vector_mul 1 (drop (f' x)) (g' (f x))}.
Admitted.

// HOL Light: Multivariate/measure.ml:26675 / DIFF_CHAIN_WITHIN_AE   (hash md5:9ac70036beea27c72ae68e9c4c46a9fa)
// not bridged: 
Theorem DIFF_CHAIN_WITHIN_AE : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall g':set -> set, (forall x :e R :^: idx 1, g' x :e R :^: idx 1) -> forall s t u v c= R :^: idx 1, {f x | x :e s} c= t /\ (negligible 1 u /\ (negligible 1 v /\ ((forall x :e R :^: idx 1, x :e s :\: u -> has_vector_derivative 1 f (f' x) (within (R :^: idx 1) (at_hl 1 x) s)) /\ ((forall y :e R :^: idx 1, y :e t :\: v -> has_vector_derivative 1 g (g' y) (within (R :^: idx 1) (at_hl 1 y) t)) /\ negligible 1 {x :e R :^: idx 1 | x :e s /\ f' x = vec 1 0})))) -> negligible 1 {x :e R :^: idx 1 | x :e s /\ ~ has_vector_derivative 1 (fun x:set => g (f x)) (vector_mul 1 (drop (f' x)) (g' (f x))) (within (R :^: idx 1) (at_hl 1 x) s)}.
Admitted.

// HOL Light: Multivariate/measure.ml:26727 / ABSOLUTE_INTEGRAL_SUBSTITUTION   (hash md5:de10fd21a38036299ad6f6194797ee20)
// not bridged: 
Theorem ABSOLUTE_INTEGRAL_SUBSTITUTION : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx 1) -> forall g':set -> set, (forall x :e R :^: idx 1, g' x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, drop a <= drop b /\ (absolutely_integrable_on N 1 f (closed_interval 1 (seq_cons (g a,g b) seq_nil)) /\ (absolutely_continuous_on 1 g (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ ((forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 g (g' x) (within (R :^: idx 1) (at_hl 1 x) (closed_interval 1 (seq_cons (a,b) seq_nil)))) /\ (forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (g x) <= drop (g y)))))) -> absolutely_integrable_on N 1 (fun x:set => vector_mul N (drop (g' x)) (f (g x))) (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ integral N 1 (closed_interval 1 (seq_cons (a,b) seq_nil)) (fun x:set => vector_mul N (drop (g' x)) (f (g x))) = integral N 1 (closed_interval 1 (seq_cons (g a,g b) seq_nil)) f.
Admitted.

// HOL Light: Multivariate/measure.ml:26825 / NEGLIGIBLE_IMAGE_INDEFINITE_INTEGRAL   (hash md5:1458fff83dbcc3d650f41f4a72d7ee90)
// not bridged: 
Theorem NEGLIGIBLE_IMAGE_INDEFINITE_INTEGRAL : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall s c= R :^: idx 1, forall a b :e R :^: idx 1, integrable_on 1 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ s c= closed_interval 1 (seq_cons (a,b) seq_nil)) -> negligible 1 {integral 1 1 (closed_interval 1 (seq_cons (a,c) seq_nil)) f | c :e s}.
Admitted.

// HOL Light: Multivariate/measure.ml:27205 / POSITIVE_AE_DERIVATIVE_IMP_NONDECREASING   (hash md5:21c7503960e2d5f2365ace314a3db1fd)
// not bridged: 
Theorem POSITIVE_AE_DERIVATIVE_IMP_NONDECREASING : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, continuous_on_hl 1 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (interior 1 {f x | x :e s} = Empty /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (f' x) (at_hl 1 x) /\ 0 < drop (f' x))) -> forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (f x) <= drop (f y).
Admitted.

// HOL Light: Multivariate/measure.ml:27309 / POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LT_GEN   (hash md5:08c3b39f0f3afe08628744b9503d5a35)
// not bridged: 
Theorem POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LT_GEN : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, continuous_on_hl 1 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (interior 1 s = Empty /\ (interior 1 {f x | x :e s} = Empty /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (f' x) (at_hl 1 x) /\ 0 < drop (f' x)))) -> forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x < drop y) -> drop (f x) < drop (f y).
Admitted.

// HOL Light: Multivariate/measure.ml:27358 / POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LT   (hash md5:d9b370741a2a4b739567ad4344fab550)
// not bridged: 
Theorem POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LT : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, absolutely_continuous_on 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (f' x) (at_hl 1 x) /\ 0 < drop (f' x))) -> forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x < drop y) -> drop (f x) < drop (f y).
Admitted.

// HOL Light: Multivariate/measure.ml:27379 / POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LE_GEN   (hash md5:a2250bbbfb9530350da8eaa7d37c804b)
// not bridged: 
Theorem POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LE_GEN : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, continuous_on_hl 1 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 {f x | x :e s} /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (f' x) (at_hl 1 x) /\ 0 <= drop (f' x))) -> forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (f x) <= drop (f y).
Admitted.

// HOL Light: Multivariate/measure.ml:27408 / POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LE   (hash md5:8e91a493c590b1de5ed767dbcfbd9bf7)
// not bridged: 
Theorem POSITIVE_AE_DERIVATIVE_IMP_INCREASING_LE : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall f':set -> set, (forall x :e R :^: idx 1, f' x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, absolutely_continuous_on 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (f' x) (at_hl 1 x) /\ 0 <= drop (f' x))) -> forall x y :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ (y :e closed_interval 1 (seq_cons (a,b) seq_nil) /\ drop x <= drop y) -> drop (f x) <= drop (f y).
Admitted.

// HOL Light: Multivariate/measure.ml:27427 / ZERO_AE_DERIVATIVE_IMP_CONSTANT_GEN   (hash md5:79aea86371f9f01660ea1038d6097df7)
// not bridged: 
Theorem ZERO_AE_DERIVATIVE_IMP_CONSTANT_GEN : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, continuous_on_hl 1 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 {f x | x :e s} /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (vec 1 0) (at_hl 1 x))) -> forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> f x = f a.
Admitted.

// HOL Light: Multivariate/measure.ml:27453 / ZERO_AE_DERIVATIVE_IMP_CONSTANT   (hash md5:c04ea55f5c0934609f9ba8a60a47e91a)
// not bridged: 
Theorem ZERO_AE_DERIVATIVE_IMP_CONSTANT : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> forall a b :e R :^: idx 1, forall s c= R :^: idx 1, absolutely_continuous_on 1 f (closed_interval 1 (seq_cons (a,b) seq_nil)) /\ (negligible 1 s /\ (forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) :\: s -> has_vector_derivative 1 f (vec 1 0) (at_hl 1 x))) -> forall x :e R :^: idx 1, x :e closed_interval 1 (seq_cons (a,b) seq_nil) -> f x = f a.
Admitted.

// HOL Light: Multivariate/measure.ml:27474 / CONVERGENCE_IN_MEASURE   (hash md5:cf21803cc293bcff4b54d246394fe22f)
// not bridged: 
Theorem CONVERGENCE_IN_MEASURE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set -> set, (forall x :e omega, forall y :e R :^: idx M, f x y :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall s c= R :^: idx M, (forall n :e omega, measurable_on M N (f n) s) /\ (forall e0 :e R, 0 < e0 -> eventually omega {n :e omega | exists t c= R :^: idx M, {x :e R :^: idx M | x :e s /\ e0 <= distance N (f n x,g x)} c= t /\ (measurable M t /\ measure M t < e0)} sequentially) -> exists r:set -> set, (forall x :e omega, r x :e omega) /\ exists t c= R :^: idx M, (forall m n :e omega, m < n -> r m < r n) /\ (negligible M t /\ (t c= s /\ forall x :e R :^: idx M, x :e s :\: t -> tendsto N omega (fun n:set => f (r n) x) (g x) sequentially)).
Admitted.

// HOL Light: Multivariate/measure.ml:27563 / CONVERGENCE_IN_MEASURE_UNIQUE   (hash md5:a8776a82ac525fd0a33887df59e4dbb4)
// not bridged: 
Theorem CONVERGENCE_IN_MEASURE_UNIQUE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set -> set, (forall x :e omega, forall y :e R :^: idx M, f x y :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e R :^: idx M, h x :e R :^: idx N) -> forall s c= R :^: idx M, (forall n :e omega, measurable_on M N (f n) s) /\ ((forall e0 :e R, 0 < e0 -> eventually omega {n :e omega | exists t c= R :^: idx M, {x :e R :^: idx M | x :e s /\ e0 <= distance N (f n x,g x)} c= t /\ (measurable M t /\ measure M t < e0)} sequentially) /\ (forall e0 :e R, 0 < e0 -> eventually omega {n :e omega | exists t c= R :^: idx M, {x :e R :^: idx M | x :e s /\ e0 <= distance N (f n x,h x)} c= t /\ (measurable M t /\ measure M t < e0)} sequentially)) -> negligible M {x :e R :^: idx M | x :e s /\ ~ g x = h x}.
Admitted.

// HOL Light: Multivariate/measure.ml:27614 / ABSOLUTELY_CONTINUOUS_IMP_PATH   (hash md5:ab757aa3017a58807f45abc029e6ce79)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_IMP_PATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> absolutely_continuous_on N g (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> path N g.
Admitted.

// HOL Light: Multivariate/measure.ml:27620 / ABSOLUTELY_CONTINUOUS_IMP_RECTIFIABLE_PATH   (hash md5:779ec9eb9cde334a95f8b04982eb4035)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_IMP_RECTIFIABLE_PATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> absolutely_continuous_on N g (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> rectifiable_path N g.
Admitted.

// HOL Light: Multivariate/measure.ml:27628 / ABSOLUTELY_INTEGRABLE_VECTOR_DERIVATIVE_ABSOLUTELY_CONTINUOUS   (hash md5:822550ba63c37da975ae6f9f40f5a364)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_VECTOR_DERIVATIVE_ABSOLUTELY_CONTINUOUS : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> absolutely_continuous_on N g (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> absolutely_integrable_on N 1 (fun t:set => vector_derivative N g (at_hl 1 t)) (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:27673 / ABSOLUTELY_CONTINUOUS_REVERSEPATH   (hash md5:f89335f7a57bb21599ddf9a3619adac4)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_REVERSEPATH : forall N:set, N <> Empty -> forall g:set -> set, (forall x :e R :^: idx 1, g x :e R :^: idx N) -> absolutely_continuous_on N g (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) -> absolutely_continuous_on N (reversepath N g) (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:27721 / ABSOLUTELY_CONTINUOUS_JOINPATHS   (hash md5:8c23e8c54f63adb751b43c92c1c33928)
// not bridged: 
Theorem ABSOLUTELY_CONTINUOUS_JOINPATHS : forall N:set, N <> Empty -> forall g1:set -> set, (forall x :e R :^: idx 1, g1 x :e R :^: idx N) -> forall g2:set -> set, (forall x :e R :^: idx 1, g2 x :e R :^: idx N) -> pathfinish N g1 = pathstart N g2 /\ (absolutely_continuous_on N g1 (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)) /\ absolutely_continuous_on N g2 (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil))) -> absolutely_continuous_on N (poly_add (R :^: idx N) g1 g2) (closed_interval 1 (seq_cons (vec 1 0,vec 1 1) seq_nil)).
Admitted.

// HOL Light: Multivariate/measure.ml:27868 / FUBINI_MEASURE   (hash md5:1d2779a4c19c451e4363aaf44b8d2b12)
// not bridged: 
Theorem FUBINI_MEASURE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), measurable (idx_n (dimindex M + dimindex N)) s -> negligible M {x :e R :^: idx M | ~ measurable N {y :e R :^: idx N | pastecart M N x y :e s}} /\ has_integral M 1 (fun x:set => lift (measure N {y :e R :^: idx N | pastecart M N x y :e s})) (lift (measure (idx_n (dimindex M + dimindex N)) s)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:28335 / FUBINI_MEASURE_ALT   (hash md5:bf19a151909153cca0f389c02402d447)
// not bridged: 
Theorem FUBINI_MEASURE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), measurable (idx_n (dimindex M + dimindex N)) s -> negligible N {y :e R :^: idx N | ~ measurable M {x :e R :^: idx M | pastecart M N x y :e s}} /\ has_integral N 1 (fun y:set => lift (measure M {x :e R :^: idx M | pastecart M N x y :e s})) (lift (measure (idx_n (dimindex M + dimindex N)) s)) (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:28359 / FUBINI_LEBESGUE_MEASURABLE   (hash md5:eb5bbd4eb5b05537267d4056bab48fae)
// not bridged: 
Theorem FUBINI_LEBESGUE_MEASURABLE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), lebesgue_measurable (idx_n (dimindex M + dimindex N)) s -> negligible M {x :e R :^: idx M | ~ lebesgue_measurable N {y :e R :^: idx N | pastecart M N x y :e s}}.
Admitted.

// HOL Light: Multivariate/measure.ml:28387 / FUBINI_LEBESGUE_MEASURABLE_ALT   (hash md5:789d6e5bcd49baefc22458878107aaa1)
// not bridged: 
Theorem FUBINI_LEBESGUE_MEASURABLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), lebesgue_measurable (idx_n (dimindex M + dimindex N)) s -> negligible N {y :e R :^: idx N | ~ lebesgue_measurable M {x :e R :^: idx M | pastecart M N x y :e s}}.
Admitted.

// HOL Light: Multivariate/measure.ml:28415 / FUBINI_NEGLIGIBLE   (hash md5:d7b7a86558303c977efd648756fc54e4)
// not bridged: 
Theorem FUBINI_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), negligible (idx_n (dimindex M + dimindex N)) s -> negligible M {x :e R :^: idx M | ~ negligible N {y :e R :^: idx N | pastecart M N x y :e s}}.
Admitted.

// HOL Light: Multivariate/measure.ml:28440 / FUBINI_NEGLIGIBLE_ALT   (hash md5:e477517a08fd46a901ac63cac17bd441)
// not bridged: 
Theorem FUBINI_NEGLIGIBLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), negligible (idx_n (dimindex M + dimindex N)) s -> negligible N {y :e R :^: idx N | ~ negligible M {x :e R :^: idx M | pastecart M N x y :e s}}.
Admitted.

// HOL Light: Multivariate/measure.ml:28462 / NEGLIGIBLE_PCROSS   (hash md5:1e70bd72ff88142a596920083b183c19)
// not bridged: 
Theorem NEGLIGIBLE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, negligible (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> negligible M s \/ negligible N t.
Admitted.

// HOL Light: Multivariate/measure.ml:28590 / FUBINI_TONELLI_MEASURE   (hash md5:e6b1a82f8019ccfe0e893396d829da01)
// not bridged: 
Theorem FUBINI_TONELLI_MEASURE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), lebesgue_measurable (idx_n (dimindex M + dimindex N)) s -> (measurable (idx_n (dimindex M + dimindex N)) s <-> negligible M {x :e R :^: idx M | ~ measurable N {y :e R :^: idx N | pastecart M N x y :e s}} /\ integrable_on 1 M (fun x:set => lift (measure N {y :e R :^: idx N | pastecart M N x y :e s})) (R :^: idx M)).
Admitted.

// HOL Light: Multivariate/measure.ml:28627 / FUBINI_TONELLI_MEASURE_ALT   (hash md5:77f81da6962b12793f13829d7668acff)
// not bridged: 
Theorem FUBINI_TONELLI_MEASURE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), lebesgue_measurable (idx_n (dimindex M + dimindex N)) s -> (measurable (idx_n (dimindex M + dimindex N)) s <-> negligible N {y :e R :^: idx N | ~ measurable M {x :e R :^: idx M | pastecart M N x y :e s}} /\ integrable_on 1 N (fun y:set => lift (measure M {x :e R :^: idx M | pastecart M N x y :e s})) (R :^: idx N)).
Admitted.

// HOL Light: Multivariate/measure.ml:28654 / FUBINI_TONELLI_NEGLIGIBLE   (hash md5:15d2fcefe984e14fb4257f265b9f669e)
// not bridged: 
Theorem FUBINI_TONELLI_NEGLIGIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), lebesgue_measurable (idx_n (dimindex M + dimindex N)) s -> (negligible (idx_n (dimindex M + dimindex N)) s <-> negligible M {x :e R :^: idx M | ~ negligible N {y :e R :^: idx N | pastecart M N x y :e s}}).
Admitted.

// HOL Light: Multivariate/measure.ml:28681 / FUBINI_TONELLI_NEGLIGIBLE_ALT   (hash md5:3a0474252be5ac3047fa2c2e4beeaf74)
// not bridged: 
Theorem FUBINI_TONELLI_NEGLIGIBLE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx_n (dimindex M + dimindex N), lebesgue_measurable (idx_n (dimindex M + dimindex N)) s -> (negligible (idx_n (dimindex M + dimindex N)) s <-> negligible N {y :e R :^: idx N | ~ negligible M {x :e R :^: idx M | pastecart M N x y :e s}}).
Admitted.

// HOL Light: Multivariate/measure.ml:28707 / LEBESGUE_MEASURABLE_PCROSS   (hash md5:68340ac9b7f7c0bee31b1943a5158d52)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, lebesgue_measurable (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> negligible M s \/ (negligible N t \/ lebesgue_measurable M s /\ lebesgue_measurable N t).
Admitted.

// HOL Light: Multivariate/measure.ml:28788 / MEASURABLE_PCROSS   (hash md5:2928702b2926fa8f87f651e582d3c500)
// not bridged: 
Theorem MEASURABLE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, measurable (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> negligible M s \/ (negligible N t \/ measurable M s /\ measurable N t).
Admitted.

// HOL Light: Multivariate/measure.ml:28818 / HAS_MEASURE_PCROSS   (hash md5:aa3e3f76f122d7b741e2833ce04a0e1e)
// not bridged: 
Theorem HAS_MEASURE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, forall a b :e R, has_measure M s a /\ has_measure N t b -> has_measure (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) (a * b).
Admitted.

// HOL Light: Multivariate/measure.ml:28847 / MEASURE_PCROSS   (hash md5:7c5f4519913f60ad311d0f77ce72377e)
// not bridged: 
Theorem MEASURE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, measurable M s /\ measurable N t -> measure (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) = measure M s * measure N t.
Admitted.

// HOL Light: Multivariate/measure.ml:28857 / LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LE   (hash md5:904999af3c3babca218c43c8814ec37c)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall k :e omega, measurable_on M N f (R :^: idx M) -> lebesgue_measurable (idx_n (dimindex M + dimindex N)) (\/_ x :e R :^: idx M, {pastecart M N x y | y :e R :^: idx N, y k <= f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:28895 / LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LT   (hash md5:8b984f309231354970ec0f6990022e7a)
// not bridged: 
Theorem LEBESGUE_MEASURABLE_FUNCTION_ORDINATE_SET_LT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall k :e omega, measurable_on M N f (R :^: idx M) -> lebesgue_measurable (idx_n (dimindex M + dimindex N)) (\/_ x :e R :^: idx M, {pastecart M N x y | y :e R :^: idx N, y k < f x k}).
Admitted.

// HOL Light: Multivariate/measure.ml:29012 / NEGLIGIBLE_MEASURABLE_FUNCTION_GRAPH   (hash md5:db3ac2ab8d74e20fc8f9a00130718b2a)
// not bridged: 
Theorem NEGLIGIBLE_MEASURABLE_FUNCTION_GRAPH : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> measurable_on M N f (R :^: idx M) -> negligible (idx_n (dimindex M + dimindex N)) (\/_ x :e R :^: idx M, {pastecart M N x y | y :e R :^: idx N, f x = y}).
Admitted.

// HOL Light: Multivariate/measure.ml:29065 / MEASURABLE_IFF_LEBESGUE_MEASURABLE_UNDER_CURVE   (hash md5:904c6f798b828305135a16113c54edb3)
// not bridged: 
Theorem MEASURABLE_IFF_LEBESGUE_MEASURABLE_UNDER_CURVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> (forall x :e R :^: idx N, 0 <= drop (f x)) -> (measurable_on N 1 f (R :^: idx N) <-> lebesgue_measurable (idx_n (dimindex N + 1)) (\/_ x :e R :^: idx N, {pastecart N 1 x y | y :e R :^: idx 1, y :e closed_interval 1 (seq_cons (vec 1 0,f x) seq_nil)})).
Admitted.

// HOL Light: Multivariate/measure.ml:29100 / INTEGRABLE_IFF_MEASURABLE_UNDER_CURVE   (hash md5:25a95dd74074b35d95cfd90b265379d1)
// not bridged: 
Theorem INTEGRABLE_IFF_MEASURABLE_UNDER_CURVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> (forall x :e R :^: idx N, 0 <= drop (f x)) -> (integrable_on 1 N f (R :^: idx N) <-> measurable (idx_n (dimindex N + 1)) (\/_ x :e R :^: idx N, {pastecart N 1 x y | y :e R :^: idx 1, y :e closed_interval 1 (seq_cons (vec 1 0,f x) seq_nil)})).
Admitted.

// HOL Light: Multivariate/measure.ml:29130 / HAS_INTEGRAL_MEASURE_UNDER_CURVE   (hash md5:1584523c723a3a8e556f025c9de9501b)
// not bridged: 
Theorem HAS_INTEGRAL_MEASURE_UNDER_CURVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> forall m :e R, (forall x :e R :^: idx N, 0 <= drop (f x)) -> (has_integral N 1 f (lift m) (R :^: idx N) <-> has_measure (idx_n (dimindex N + 1)) (\/_ x :e R :^: idx N, {pastecart N 1 x y | y :e R :^: idx 1, y :e closed_interval 1 (seq_cons (vec 1 0,f x) seq_nil)}) m).
Admitted.

// HOL Light: Multivariate/measure.ml:29152 / MEASURABLE_ON_COMPOSE_FSTCART   (hash md5:dce371b429253adcb8e6320cd0db15d1)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_FSTCART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx P) -> measurable_on M P f (R :^: idx M) -> measurable_on (idx_n (dimindex M + dimindex N)) P (fun z:set => f (fstcart M z)) (R :^: idx_n (dimindex M + dimindex N)).
Admitted.

// HOL Light: Multivariate/measure.ml:29169 / MEASURABLE_ON_COMPOSE_SNDCART   (hash md5:870246c6f87d9a4309c74bff63e61201)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_SNDCART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx P) -> measurable_on N P f (R :^: idx N) -> measurable_on (idx_n (dimindex M + dimindex N)) P (fun z:set => f (sndcart M N z)) (R :^: idx_n (dimindex M + dimindex N)).
Admitted.

// HOL Light: Multivariate/measure.ml:29186 / MEASURABLE_ON_COMPOSE_SUB   (hash md5:8cd057f10f2b56a0b9de63edab6938c7)
// not bridged: 
Theorem MEASURABLE_ON_COMPOSE_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> measurable_on M N f (R :^: idx M) -> measurable_on (idx_n (dimindex M + dimindex M)) N (fun z:set => f (vector_sub M (fstcart M z) (sndcart M M z))) (R :^: idx_n (dimindex M + dimindex M)).
Admitted.

// HOL Light: Multivariate/measure.ml:29219 / FUBINI_ABSOLUTELY_INTEGRABLE   (hash md5:1ed7c0ea75376bc0be81977c39e1b67b)
// not bridged: 
Theorem FUBINI_ABSOLUTELY_INTEGRABLE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> negligible M {x :e R :^: idx M | ~ absolutely_integrable_on P N (fun y:set => f (pastecart M N x y)) (R :^: idx N)} /\ has_integral M P (fun x:set => integral P N (R :^: idx N) (fun y:set => f (pastecart M N x y))) (integral P (idx_n (dimindex M + dimindex N)) (R :^: idx_n (dimindex M + dimindex N)) f) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:29384 / FUBINI_ABSOLUTELY_INTEGRABLE_ALT   (hash md5:7de5f9bb9803156ab05d42e7f678a461)
// not bridged: 
Theorem FUBINI_ABSOLUTELY_INTEGRABLE_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> negligible N {y :e R :^: idx N | ~ absolutely_integrable_on P M (fun x:set => f (pastecart M N x y)) (R :^: idx M)} /\ has_integral N P (fun y:set => integral P M (R :^: idx M) (fun x:set => f (pastecart M N x y))) (integral P (idx_n (dimindex M + dimindex N)) (R :^: idx_n (dimindex M + dimindex N)) f) (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:29399 / FUBINI_INTEGRAL   (hash md5:59eb46bda64cabbf42bdfe7dc9da4487)
// not bridged: 
Theorem FUBINI_INTEGRAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> integral P (idx_n (dimindex M + dimindex N)) (R :^: idx_n (dimindex M + dimindex N)) f = integral P M (R :^: idx M) (fun x:set => integral P N (R :^: idx N) (fun y:set => f (pastecart M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29408 / FUBINI_INTEGRAL_ALT   (hash md5:791ea42ebc3607b1d9db185bad4e3ea8)
// not bridged: 
Theorem FUBINI_INTEGRAL_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> integral P (idx_n (dimindex M + dimindex N)) (R :^: idx_n (dimindex M + dimindex N)) f = integral P N (R :^: idx N) (fun y:set => integral P M (R :^: idx M) (fun x:set => f (pastecart M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29417 / FUBINI_HAS_ABSOLUTE_INTEGRAL   (hash md5:dbb65fdf4c61f4716ab104ebe6946e50)
// not bridged: 
Theorem FUBINI_HAS_ABSOLUTE_INTEGRAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> negligible M {x :e R :^: idx M | ~ absolutely_integrable_on P N (fun y:set => f (pastecart M N x y)) (R :^: idx N)} /\ (absolutely_integrable_on P M (fun x:set => integral P N (R :^: idx N) (fun y:set => f (pastecart M N x y))) (R :^: idx M) /\ integral P M (R :^: idx M) (fun x:set => integral P N (R :^: idx N) (fun y:set => f (pastecart M N x y))) = integral P (idx_n (dimindex M + dimindex N)) (R :^: idx_n (dimindex M + dimindex N)) f).
Admitted.

// HOL Light: Multivariate/measure.ml:29470 / FUBINI_HAS_ABSOLUTE_INTEGRAL_ALT   (hash md5:370b94b695919dec95b64b91e9c7c6cd)
// not bridged: 
Theorem FUBINI_HAS_ABSOLUTE_INTEGRAL_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> negligible N {y :e R :^: idx N | ~ absolutely_integrable_on P M (fun x:set => f (pastecart M N x y)) (R :^: idx M)} /\ (absolutely_integrable_on P N (fun y:set => integral P M (R :^: idx M) (fun x:set => f (pastecart M N x y))) (R :^: idx N) /\ integral P N (R :^: idx N) (fun y:set => integral P M (R :^: idx M) (fun x:set => f (pastecart M N x y))) = integral P (idx_n (dimindex M + dimindex N)) (R :^: idx_n (dimindex M + dimindex N)) f).
Admitted.

// HOL Light: Multivariate/measure.ml:29523 / FUBINI_INTEGRAL_SWAP   (hash md5:757e7d66a5e8e5ec2f04a893a3c337d0)
// not bridged: 
Theorem FUBINI_INTEGRAL_SWAP : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> integral P M (R :^: idx M) (fun x:set => integral P N (R :^: idx N) (fun y:set => f (pastecart M N x y))) = integral P N (R :^: idx N) (fun y:set => integral P M (R :^: idx M) (fun x:set => f (pastecart M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29531 / FUBINI_HAS_INTEGRAL_SWAP   (hash md5:410d439541bea4efe94ee2415199d99d)
// not bridged: 
Theorem FUBINI_HAS_INTEGRAL_SWAP : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> has_integral M P (fun x:set => integral P N (R :^: idx N) (fun y:set => f (pastecart M N x y))) (integral P N (R :^: idx N) (fun y:set => integral P M (R :^: idx M) (fun x:set => f (pastecart M N x y)))) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:29542 / FUBINI_HAS_INTEGRAL_SWAP_ALT   (hash md5:c791a7744d7d90e4a7a5edd3c3066bed)
// not bridged: 
Theorem FUBINI_HAS_INTEGRAL_SWAP_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) -> has_integral N P (fun y:set => integral P M (R :^: idx M) (fun x:set => f (pastecart M N x y))) (integral P M (R :^: idx M) (fun x:set => integral P N (R :^: idx N) (fun y:set => f (pastecart M N x y)))) (R :^: idx N).
Admitted.

// HOL Light: Multivariate/measure.ml:29553 / FUBINI_INTEGRAL_INTERVAL   (hash md5:69850ffda45c6ed728e045fa015a2c76)
// not bridged: 
Theorem FUBINI_INTEGRAL_INTERVAL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> forall a b :e R :^: idx M, forall c d :e R :^: idx N, absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (closed_interval (idx_n (dimindex M + dimindex N)) (seq_cons (pastecart M N a c,pastecart M N b d) seq_nil)) -> integral P (idx_n (dimindex M + dimindex N)) (closed_interval (idx_n (dimindex M + dimindex N)) (seq_cons (pastecart M N a c,pastecart M N b d) seq_nil)) f = integral P M (closed_interval M (seq_cons (a,b) seq_nil)) (fun x:set => integral P N (closed_interval N (seq_cons (c,d) seq_nil)) (fun y:set => f (pastecart M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29570 / FUBINI_INTEGRAL_INTERVAL_ALT   (hash md5:3270e0ee47f7e415a3e8097ff99eeebb)
// not bridged: 
Theorem FUBINI_INTEGRAL_INTERVAL_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> forall a b :e R :^: idx M, forall c d :e R :^: idx N, absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (closed_interval (idx_n (dimindex M + dimindex N)) (seq_cons (pastecart M N a c,pastecart M N b d) seq_nil)) -> integral P (idx_n (dimindex M + dimindex N)) (closed_interval (idx_n (dimindex M + dimindex N)) (seq_cons (pastecart M N a c,pastecart M N b d) seq_nil)) f = integral P N (closed_interval N (seq_cons (c,d) seq_nil)) (fun y:set => integral P M (closed_interval M (seq_cons (a,b) seq_nil)) (fun x:set => f (pastecart M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29587 / INTEGRAL_PASTECART_CONTINUOUS   (hash md5:f010b64977930dc246833cb89a326c1a)
// not bridged: 
Theorem INTEGRAL_PASTECART_CONTINUOUS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> forall a b :e R :^: idx M, forall c d :e R :^: idx N, continuous_on_hl (idx_n (dimindex M + dimindex N)) P f (closed_interval (idx_n (dimindex M + dimindex N)) (seq_cons (pastecart M N a c,pastecart M N b d) seq_nil)) -> integral P (idx_n (dimindex M + dimindex N)) (closed_interval (idx_n (dimindex M + dimindex N)) (seq_cons (pastecart M N a c,pastecart M N b d) seq_nil)) f = integral P M (closed_interval M (seq_cons (a,b) seq_nil)) (fun x:set => integral P N (closed_interval N (seq_cons (c,d) seq_nil)) (fun y:set => f (pastecart M N x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:29596 / INTEGRAL_SWAP_CONTINUOUS   (hash md5:fc11a136671fb764917cbfbf1abb05b1)
// not bridged: 
Theorem INTEGRAL_SWAP_CONTINUOUS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, f x y :e R :^: idx P) -> forall a b :e R :^: idx M, forall c d :e R :^: idx N, continuous_on_hl (idx_n (dimindex M + dimindex N)) P (fun z:set => f (fstcart M z) (sndcart M N z)) (closed_interval (idx_n (dimindex M + dimindex N)) (seq_cons (pastecart M N a c,pastecart M N b d) seq_nil)) -> integral P M (closed_interval M (seq_cons (a,b) seq_nil)) (fun x:set => integral P N (closed_interval N (seq_cons (c,d) seq_nil)) (f x)) = integral P N (closed_interval N (seq_cons (c,d) seq_nil)) (fun y:set => integral P M (closed_interval M (seq_cons (a,b) seq_nil)) (fun x:set => f x y)).
Admitted.

// HOL Light: Multivariate/measure.ml:29611 / FUBINI_TONELLI   (hash md5:24744f8e5f4804d48d850a8269f2b465)
// not bridged: 
Theorem FUBINI_TONELLI : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> measurable_on (idx_n (dimindex M + dimindex N)) P f (R :^: idx_n (dimindex M + dimindex N)) -> (absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) <-> negligible M {x :e R :^: idx M | ~ absolutely_integrable_on P N (fun y:set => f (pastecart M N x y)) (R :^: idx N)} /\ integrable_on 1 M (fun x:set => integral 1 N (R :^: idx N) (fun y:set => lift (vector_norm P (f (pastecart M N x y))))) (R :^: idx M)).
Admitted.

// HOL Light: Multivariate/measure.ml:29737 / FUBINI_TONELLI_ALT   (hash md5:602dae363ba54c964b8bec5d286e0ea4)
// not bridged: 
Theorem FUBINI_TONELLI_ALT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx_n (dimindex M + dimindex N), f x :e R :^: idx P) -> measurable_on (idx_n (dimindex M + dimindex N)) P f (R :^: idx_n (dimindex M + dimindex N)) -> (absolutely_integrable_on P (idx_n (dimindex M + dimindex N)) f (R :^: idx_n (dimindex M + dimindex N)) <-> negligible N {y :e R :^: idx N | ~ absolutely_integrable_on P M (fun x:set => f (pastecart M N x y)) (R :^: idx M)} /\ integrable_on 1 N (fun y:set => integral 1 M (R :^: idx M) (fun x:set => lift (vector_norm P (f (pastecart M N x y))))) (R :^: idx N)).
Admitted.

// HOL Light: Multivariate/measure.ml:29765 / HAS_DOUBLE_INTEGRAL_PCROSS   (hash md5:3ca9e712a8591d0f66f59f5e611640b2)
// not bridged: 
Theorem HAS_DOUBLE_INTEGRAL_PCROSS : forall M N P Q R:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> R <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx P, forall y :e R :^: idx Q, bop x y :e R :^: idx R) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx P) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx Q) -> forall s c= R :^: idx M, forall t c= R :^: idx N, bilinear Q R P bop /\ (absolutely_integrable_on P M f s /\ absolutely_integrable_on Q N g t) -> has_integral (idx_n (dimindex M + dimindex N)) R (fun z:set => bop (f (fstcart M z)) (g (sndcart M N z))) (bop (integral P M s f) (integral Q N t g)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/measure.ml:29890 / FUBINI_NEGLIGIBLE_REPLACEMENTS   (hash md5:901f0166824485cf654dea007dece6ec)
// not bridged: 
Theorem FUBINI_NEGLIGIBLE_REPLACEMENTS : forall N:set, N <> Empty -> forall k :e omega, forall s c= R :^: idx N, lebesgue_measurable N s -> (negligible N s <-> negligible 1 {lift a | a :e R, ~ negligible N {x :e R :^: idx N | (fun i :e idx N => if i = k then a else x i) :e s}}).
Admitted.

// HOL Light: Multivariate/measure.ml:30025 / FUBINI_NEGLIGIBLE_REPLACEMENTS_ALT   (hash md5:f90ea56961c45912867f4052bb24f109)
// not bridged: 
Theorem FUBINI_NEGLIGIBLE_REPLACEMENTS_ALT : forall N:set, N <> Empty -> forall k :e omega, forall s c= R :^: idx N, lebesgue_measurable N s -> (negligible N s <-> negligible N {x :e R :^: idx N | ~ negligible 1 {lift a | a :e R, (fun i :e idx N => if i = k then a else x i) :e s}}).
Admitted.

// HOL Light: Multivariate/measure.ml:30158 / FUBINI_NEGLIGIBLE_OFFSET   (hash md5:1a2d4584241ac65d89f03d7d456c539a)
// not bridged: 
Theorem FUBINI_NEGLIGIBLE_OFFSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall v :e R :^: idx N, lebesgue_measurable N s -> (negligible N s <-> negligible N {x :e R :^: idx N | ~ negligible 1 {t :e R :^: idx 1 | vector_add N x (vector_mul N (drop t) v) :e s}}).
Admitted.

// HOL Light: Multivariate/measure.ml:30250 / HAS_INTEGRAL_CONVOLUTION_SYM   (hash md5:6805630cdda570633e35e392f91abab6)
// not bridged: 
Theorem HAS_INTEGRAL_CONVOLUTION_SYM : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall i :e R :^: idx Q, forall x :e R :^: idx M, has_integral M Q (fun y:set => bop (f (vector_sub M x y)) (g y)) i (R :^: idx M) <-> has_integral M Q (fun y:set => bop (f y) (g (vector_sub M x y))) i (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30263 / INTEGRABLE_CONVOLUTION_SYM   (hash md5:b208cc051c43bd40bdf22e1c24ca3405)
// not bridged: 
Theorem INTEGRABLE_CONVOLUTION_SYM : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall x :e R :^: idx M, integrable_on Q M (fun y:set => bop (f (vector_sub M x y)) (g y)) (R :^: idx M) <-> integrable_on Q M (fun y:set => bop (f y) (g (vector_sub M x y))) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30269 / INTEGRAL_CONVOLUTION_SYM   (hash md5:367256922fd8bd02ccfb0c1d3dedde59)
// not bridged: 
Theorem INTEGRAL_CONVOLUTION_SYM : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall x :e R :^: idx M, integral Q M (R :^: idx M) (fun y:set => bop (f (vector_sub M x y)) (g y)) = integral Q M (R :^: idx M) (fun y:set => bop (f y) (g (vector_sub M x y))).
Admitted.

// HOL Light: Multivariate/measure.ml:30275 / ABSOLUTELY_INTEGRABLE_CONVOLUTION_SYM   (hash md5:55d6fe4590f50cc4bd0894f7b740bc61)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_CONVOLUTION_SYM : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall x :e R :^: idx M, absolutely_integrable_on Q M (fun y:set => bop (f (vector_sub M x y)) (g y)) (R :^: idx M) <-> absolutely_integrable_on Q M (fun y:set => bop (f y) (g (vector_sub M x y))) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30287 / MEASURABLE_ON_CONVOLUTION   (hash md5:8c120b07e3aff3f6faf0ef604ecd9768)
// not bridged: 
Theorem MEASURABLE_ON_CONVOLUTION : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall x :e R :^: idx M, bilinear P Q N bop /\ (measurable_on M N f (R :^: idx M) /\ measurable_on M P g (R :^: idx M)) -> measurable_on M Q (fun y:set => bop (f (vector_sub M x y)) (g y)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30451 / DOUBLE_INTEGRABLE_CONVOLUTION   (hash md5:90e8e96301eb02e1c543fa6e624449d4)
// not bridged: 
Theorem DOUBLE_INTEGRABLE_CONVOLUTION : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> bilinear P Q N bop /\ (absolutely_integrable_on N M f (R :^: idx M) /\ absolutely_integrable_on P M g (R :^: idx M)) -> integrable_on Q M (fun x:set => integral Q M (R :^: idx M) (fun y:set => bop (f (vector_sub M x y)) (g y))) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30462 / DOUBLE_INTEGRAL_CONVOLUTION   (hash md5:1facd42f358d560cb3ad0d60e4899c82)
// not bridged: 
Theorem DOUBLE_INTEGRAL_CONVOLUTION : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> bilinear P Q N bop /\ (absolutely_integrable_on N M f (R :^: idx M) /\ absolutely_integrable_on P M g (R :^: idx M)) -> integral Q M (R :^: idx M) (fun x:set => integral Q M (R :^: idx M) (fun y:set => bop (f (vector_sub M x y)) (g y))) = bop (integral N M (R :^: idx M) f) (integral P M (R :^: idx M) g).
Admitted.

// HOL Light: Multivariate/measure.ml:30473 / ABSOLUTELY_INTEGRABLE_CONVOLUTION_L2   (hash md5:3dcf68a26b3a7fa4b37f08f0d32530b7)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_CONVOLUTION_L2 : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall x :e R :^: idx M, bilinear P Q N bop /\ (measurable_on M N f (R :^: idx M) /\ (measurable_on M P g (R :^: idx M) /\ (absolutely_integrable_on 1 M (fun x0:set => lift (vector_norm N (f x0) ^ 2)) (R :^: idx M) /\ absolutely_integrable_on 1 M (fun x0:set => lift (vector_norm P (g x0) ^ 2)) (R :^: idx M)))) -> absolutely_integrable_on Q M (fun y:set => bop (f (vector_sub M x y)) (g y)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30505 / ABSOLUTELY_INTEGRABLE_CONVOLUTION_L1_LINF   (hash md5:6c73175c26eca5a862e3ce7a7ace408c)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_CONVOLUTION_L1_LINF : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall x :e R :^: idx M, bilinear P Q N bop /\ (absolutely_integrable_on N M f (R :^: idx M) /\ (measurable_on M P g (R :^: idx M) /\ bounded_hl P {g x | x :e R :^: idx M})) -> absolutely_integrable_on Q M (fun y:set => bop (f (vector_sub M x y)) (g y)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30536 / ABSOLUTELY_INTEGRABLE_CONVOLUTION_LINF_L1   (hash md5:fe90a99b4aa76fda60b70d4e9f95efcf)
// not bridged: 
Theorem ABSOLUTELY_INTEGRABLE_CONVOLUTION_LINF_L1 : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall x :e R :^: idx M, bilinear P Q N bop /\ (measurable_on M N f (R :^: idx M) /\ (bounded_hl N {f x | x :e R :^: idx M} /\ absolutely_integrable_on P M g (R :^: idx M))) -> absolutely_integrable_on Q M (fun y:set => bop (f (vector_sub M x y)) (g y)) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30549 / CONTINUOUS_ON_CONVOLUTION_L1_LINF   (hash md5:c083a835131c001cd2a7eb3586d7033b)
// not bridged: 
Theorem CONTINUOUS_ON_CONVOLUTION_L1_LINF : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> bilinear P Q N bop /\ (absolutely_integrable_on N M f (R :^: idx M) /\ (measurable_on M P g (R :^: idx M) /\ bounded_hl P {g x | x :e R :^: idx M})) -> continuous_on_hl M Q (fun x:set => integral Q M (R :^: idx M) (fun y:set => bop (f (vector_sub M x y)) (g y))) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30622 / CONTINUOUS_ON_CONVOLUTION_LINF_L1   (hash md5:8cd92e4b6db0f8fd2c3cf82c214eba42)
// not bridged: 
Theorem CONTINUOUS_ON_CONVOLUTION_LINF_L1 : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx N, forall y :e R :^: idx P, bop x y :e R :^: idx Q) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> bilinear P Q N bop /\ (measurable_on M N f (R :^: idx M) /\ (bounded_hl N {f x | x :e R :^: idx M} /\ absolutely_integrable_on P M g (R :^: idx M))) -> continuous_on_hl M Q (fun x:set => integral Q M (R :^: idx M) (fun y:set => bop (f (vector_sub M x y)) (g y))) (R :^: idx M).
Admitted.

// HOL Light: Multivariate/measure.ml:30640 / STEINHAUS_SUMS   (hash md5:1abb8e21cb103a3bec0bbe6d50790741)
// not bridged: 
Theorem STEINHAUS_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, lebesgue_measurable N s /\ (~ negligible N s /\ (lebesgue_measurable N t /\ ~ negligible N t)) -> ~ interior N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) = Empty.
Admitted.

// HOL Light: Multivariate/measure.ml:30715 / STEINHAUS_DIFFS   (hash md5:d9a08f08d18630c90a4ac751b2a17d88)
// not bridged: 
Theorem STEINHAUS_DIFFS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, lebesgue_measurable N s /\ (~ negligible N s /\ (lebesgue_measurable N t /\ ~ negligible N t)) -> ~ interior N (\/_ x :e R :^: idx N, {vector_sub N x y | y :e R :^: idx N, x :e s /\ y :e t}) = Empty.
Admitted.

// HOL Light: Multivariate/measure.ml:30733 / MIDPOINT_CONVEX_IMP_CONTINUOUS_OSTROWSKI   (hash md5:21197a95e7f43e1c7add2ad1df54c688)
// not bridged: 
Theorem MIDPOINT_CONVEX_IMP_CONTINUOUS_OSTROWSKI : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s t c= R :^: idx N, forall B :e R, convex N s /\ (open N s /\ ((forall x y :e R :^: idx N, x :e s /\ y :e s -> f (midpoint N (x,y)) <= (f x + f y) :/: 2) /\ (t c= s /\ (lebesgue_measurable N t /\ (~ negligible N t /\ (forall x :e R :^: idx N, x :e t -> f x <= B)))))) -> continuous_on_hl N 1 (fun x:set => lift (f x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:30960 / MIDPOINT_CONVEX_IMP_CONVEX_OSTROWSKI   (hash md5:cb2dd6788d09e627bc5847baf19cf5a8)
// not bridged: 
Theorem MIDPOINT_CONVEX_IMP_CONVEX_OSTROWSKI : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s t c= R :^: idx N, forall B :e R, convex N s /\ (open N s /\ (t c= s /\ (lebesgue_measurable N t /\ (~ negligible N t /\ ((forall x y :e R :^: idx N, x :e s /\ y :e s -> f (midpoint N (x,y)) <= (f x + f y) :/: 2) /\ (forall x :e R :^: idx N, x :e t -> f x <= B)))))) -> convex_on N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:30973 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONTINUOUS   (hash md5:4a4dd314a4865d9e7b7eca6a66ecda34)
// not bridged: 
Theorem MEASURABLE_MIDPOINT_CONVEX_IMP_CONTINUOUS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, measurable_on N 1 (fun x:set => lift (f x)) s /\ (open N s /\ (forall x y :e R :^: idx N, x :e s /\ y :e s -> f (midpoint N (x,y)) <= (f x + f y) :/: 2)) -> continuous_on_hl N 1 (fun x:set => lift (f x)) s.
Admitted.

// HOL Light: Multivariate/measure.ml:31013 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_GEN   (hash md5:8b6a66cce8566e757fceec783c76dc26)
// not bridged: 
Theorem MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, measurable_on N 1 (fun x:set => lift (f x)) s /\ (convex N s /\ (forall x y :e R :^: idx N, x :e s /\ y :e s -> f (midpoint N (x,y)) <= (f x + f y) :/: 2)) -> forall x y :e R :^: idx N, forall u v :e R, x :e s /\ (y :e s /\ (0 <= u /\ (0 <= v /\ (u + v = 1 /\ (closed_segment N (seq_cons (x,y) seq_nil) c= frontier N s -> x = y))))) -> f (vector_add N (vector_mul N u x) (vector_mul N v y)) <= u * f x + v * f y.
Admitted.

// HOL Light: Multivariate/measure.ml:31142 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_OPEN   (hash md5:c9004311c925470064645e5592b0ca04)
// not bridged: 
Theorem MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_OPEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall s c= R :^: idx N, measurable_on N 1 (fun x:set => lift (f x)) s /\ (convex N s /\ (open N s /\ (forall x y :e R :^: idx N, x :e s /\ y :e s -> f (midpoint N (x,y)) <= (f x + f y) :/: 2))) -> convex_on N f s.
Admitted.

// HOL Light: Multivariate/measure.ml:31156 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_1D   (hash md5:d3c1b4f03325d43ae54eb5d879d181a8)
// not bridged: 
Theorem MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_1D : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R) -> forall s c= R :^: idx 1, measurable_on 1 1 (fun x:set => lift (f x)) s /\ (convex 1 s /\ (forall x y :e R :^: idx 1, x :e s /\ y :e s -> f (midpoint 1 (x,y)) <= (f x + f y) :/: 2)) -> convex_on 1 f s.
Admitted.

// HOL Light: Multivariate/measure.ml:31172 / MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_CBALL   (hash md5:ad8d57d3e1f7c1504dc72197b15ba3d0)
// not bridged: 
Theorem MEASURABLE_MIDPOINT_CONVEX_IMP_CONVEX_CBALL : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R) -> forall a :e R :^: idx N, forall r :e R, measurable_on N 1 (fun x:set => lift (f x)) (cball N (a,r)) /\ (forall x y :e R :^: idx N, x :e cball N (a,r) /\ y :e cball N (a,r) -> f (midpoint N (x,y)) <= (f x + f y) :/: 2) -> convex_on N f (cball N (a,r)).
Admitted.

// HOL Light: Multivariate/measure.ml:31196 / OSTROWSKI_THEOREM   (hash md5:a2727d6ff2d8a78caf9f95f946da3325)
// not bridged: 
Theorem OSTROWSKI_THEOREM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall B :e R, forall s c= R :^: idx M, (forall x y :e R :^: idx M, f (vector_add M x y) = vector_add N (f x) (f y)) /\ ((forall x :e R :^: idx M, x :e s -> vector_norm N (f x) <= B) /\ (measurable M s /\ 0 < measure M s)) -> linear M N f.
Admitted.

// HOL Light: Multivariate/measure.ml:31227 / MEASURABLE_ADDITIVE_IMP_LINEAR   (hash md5:22ff49fed8118d485bce1fad5f602b73)
// not bridged: 
Theorem MEASURABLE_ADDITIVE_IMP_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> measurable_on M N f (R :^: idx M) /\ (forall x y :e R :^: idx M, f (vector_add M x y) = vector_add N (f x) (f y)) -> linear M N f.
Admitted.

// HOL Light: Multivariate/measure.ml:31261 / CONTINUOUS_ADDITIVE_IMP_LINEAR   (hash md5:ea6aab2bca0609cd5566c9adfce6699b)
// not bridged: 
Theorem CONTINUOUS_ADDITIVE_IMP_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> continuous_on_hl M N f (R :^: idx M) /\ (forall x y :e R :^: idx M, f (vector_add M x y) = vector_add N (f x) (f y)) -> linear M N f.
Admitted.

// HOL Light: Multivariate/measure.ml:31273 / RADEMACHER_UNIV   (hash md5:46fab0ffa25ff0828704f8ca4d497a9a)
// not bridged: 
Theorem RADEMACHER_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (exists B :e R, forall x y :e R :^: idx M, vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) -> negligible M {x :e R :^: idx M | ~ differentiable N M f (at_hl M x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:31740 / RADEMACHER   (hash md5:b355d6fe16db5607202c2122c70b2bd4)
// not bridged: 
Theorem RADEMACHER : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) -> negligible M {x :e R :^: idx M | x :e s /\ ~ differentiable N M f (within (R :^: idx M) (at_hl M x) s)}.
Admitted.

// HOL Light: Multivariate/measure.ml:31759 / RADEMACHER_OPEN   (hash md5:b536f311a62c054946c4e71be7b68312)
// not bridged: 
Theorem RADEMACHER_OPEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, open M s /\ (exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) -> negligible M {x :e R :^: idx M | x :e s /\ ~ differentiable N M f (at_hl M x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:31772 / RADEMACHER_GEN   (hash md5:f91857817aba0b7b1fdbe1732c1fcbea)
// not bridged: 
Theorem RADEMACHER_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, negligible M (frontier M s) /\ (exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) -> negligible M {x :e R :^: idx M | x :e s /\ ~ differentiable N M f (at_hl M x)}.
Admitted.

// HOL Light: Multivariate/measure.ml:31792 / STEPANOV_GEN   (hash md5:70ea35763839f719b9462cce9d9c9a2c)
// not bridged: 
Theorem STEPANOV_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, lebesgue_measurable M s -> negligible M {x :e R :^: idx M | x :e s /\ ((exists B :e R, eventually (R :^: idx M) {y :e R :^: idx M | vector_norm N (vector_sub N (f x) (f y)) :/: vector_norm M (vector_sub M x y) <= B} (within (R :^: idx M) (at_hl M x) s)) /\ ~ differentiable N M f (within (R :^: idx M) (at_hl M x) s))}.
Admitted.

// HOL Light: Multivariate/measure.ml:32242 / STEPANOV   (hash md5:b822cade319dfd47ab77371429b27a58)
// not bridged: 
Theorem STEPANOV : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, open M s -> negligible M {x :e R :^: idx M | x :e s /\ ((exists B :e R, eventually (R :^: idx M) {y :e R :^: idx M | vector_norm N (vector_sub N (f x) (f y)) :/: vector_norm M (vector_sub M x y) <= B} (at_hl M x)) /\ ~ differentiable N M f (at_hl M x))}.
Admitted.

// HOL Light: Multivariate/measure.ml:32258 / STEPANOV_UNIV   (hash md5:f43570a020540f46d0ffa9fa758d79fe)
// not bridged: 
Theorem STEPANOV_UNIV : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> negligible M {x :e R :^: idx M | (exists B :e R, eventually (R :^: idx M) {y :e R :^: idx M | vector_norm N (vector_sub N (f x) (f y)) :/: vector_norm M (vector_sub M x y) <= B} (at_hl M x)) /\ ~ differentiable N M f (at_hl M x)}.
Admitted.

