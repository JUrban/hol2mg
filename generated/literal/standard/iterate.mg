// hol2mg literal statements (private): shard iterate of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: iterate.ml:18 / numseg   (hash md5:f03cdf2f45e6fbe418632b3eb5ad3ffc)
Theorem hlt_numseg : forall m n :e omega, hl_numseg m n = hl_GSPEC omega (fun GEN_PVAR_231 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_231 (if hl_le m x = 1 /\ hl_le x n = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: iterate.ml:21 / FINITE_NUMSEG   (hash md5:e6b51c0e6a38a0ab18878a9dbc01b333)
Theorem hlt_FINITE_NUMSEG : forall m n :e omega, hl_FINITE omega (hl_numseg m n) = 1.
Admitted.

// HOL Light: iterate.ml:27 / NUMSEG_COMBINE_R   (hash md5:c574b0012b88d485a693594e0ed4750c)
Theorem hlt_NUMSEG_COMBINE_R : forall m p n :e omega, hl_le m (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_le p n = 1 -> hl_UNION omega (hl_numseg m p) (hl_numseg (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) n) = hl_numseg m n.
Admitted.

// HOL Light: iterate.ml:31 / NUMSEG_COMBINE_L   (hash md5:da31e2b1ac9608abe2695b938626cd8a)
Theorem hlt_NUMSEG_COMBINE_L : forall m p n :e omega, hl_le m p = 1 /\ hl_le p (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_UNION omega (hl_numseg m (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_numseg p n) = hl_numseg m n.
Admitted.

// HOL Light: iterate.ml:35 / NUMSEG_LREC   (hash md5:e085177c55b494bf9dc6049076ba234a)
Theorem hlt_NUMSEG_LREC : forall m n :e omega, hl_le m n = 1 -> hl_INSERT omega m (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) = hl_numseg m n.
Admitted.

// HOL Light: iterate.ml:39 / NUMSEG_RREC   (hash md5:4486df9fb344e2aefdbfa4b7c2a4c17a)
Theorem hlt_NUMSEG_RREC : forall m n :e omega, hl_le m n = 1 -> hl_INSERT omega n (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_numseg m n.
Admitted.

// HOL Light: iterate.ml:43 / NUMSEG_REC   (hash md5:10e5220ec6c57ef344e12769de4bcfb2)
Theorem hlt_NUMSEG_REC : forall m n :e omega, hl_le m (hl_SUC n) = 1 -> hl_numseg m (hl_SUC n) = hl_INSERT omega (hl_SUC n) (hl_numseg m n).
Admitted.

// HOL Light: iterate.ml:47 / IN_NUMSEG   (hash md5:1e87b41df6e3ca7d40b6c9d88a0a2559)
Theorem hlt_IN_NUMSEG : forall m n p :e omega, hl_IN omega p (hl_numseg m n) = 1 <-> hl_le m p = 1 /\ hl_le p n = 1.
Admitted.

// HOL Light: iterate.ml:51 / IN_NUMSEG_0   (hash md5:acb324168827d0a9abef183064cfb422)
Theorem hlt_IN_NUMSEG_0 : forall m n :e omega, hl_IN omega m (hl_numseg (hl_NUMERAL hl_zero) n) = 1 <-> hl_le m n = 1.
Admitted.

// HOL Light: iterate.ml:55 / NUMSEG_SING   (hash md5:26b52c29fbbe30281546a89185a9bbed)
Theorem hlt_NUMSEG_SING : forall n :e omega, hl_numseg n n = hl_INSERT omega n (hl_EMPTY omega).
Admitted.

// HOL Light: iterate.ml:59 / NUMSEG_EMPTY   (hash md5:0fd323cdabaf566f85ae9807cec83b6e)
Theorem hlt_NUMSEG_EMPTY : forall m n :e omega, hl_numseg m n = hl_EMPTY omega <-> hl_lt n m = 1.
Admitted.

// HOL Light: iterate.ml:64 / EMPTY_NUMSEG   (hash md5:10b528ab74ba26b38d65f5862a8f344a)
Theorem hlt_EMPTY_NUMSEG : forall m n :e omega, hl_lt n m = 1 -> hl_numseg m n = hl_EMPTY omega.
Admitted.

// HOL Light: iterate.ml:68 / FINITE_SUBSET_NUMSEG   (hash md5:e37f13ca3f9c3b13f8233b99f6447533)
Theorem hlt_FINITE_SUBSET_NUMSEG : forall s :e 2 :^: omega, hl_FINITE omega s = 1 <-> exists n :e omega, hl_SUBSET omega s (hl_numseg (hl_NUMERAL hl_zero) n) = 1.
Admitted.

// HOL Light: iterate.ml:78 / CARD_NUMSEG_LEMMA   (hash md5:daad90cf2df16142591122d20a555b20)
Theorem hlt_CARD_NUMSEG_LEMMA : forall m d :e omega, hl_CARD omega (hl_numseg m (hl_add m d)) = hl_add d (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: iterate.ml:85 / CARD_NUMSEG   (hash md5:603fc98d20552313cb229eb8c9fd1ab3)
Theorem hlt_CARD_NUMSEG : forall m n :e omega, hl_CARD omega (hl_numseg m n) = hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m.
Admitted.

// HOL Light: iterate.ml:94 / HAS_SIZE_NUMSEG   (hash md5:0a0f2d306e0cf0e7f45f96bda74bbeb5)
Theorem hlt_HAS_SIZE_NUMSEG : forall m n :e omega, hl_HAS_SIZE omega (hl_numseg m n) (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m) = 1.
Admitted.

// HOL Light: iterate.ml:98 / CARD_NUMSEG_1   (hash md5:f4c3410d70e7ea14dc745c69c12edd65)
Theorem hlt_CARD_NUMSEG_1 : forall n :e omega, hl_CARD omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = n.
Admitted.

// HOL Light: iterate.ml:102 / HAS_SIZE_NUMSEG_1   (hash md5:3964f0d6d7c3ae686e7c3f3bfad59e22)
Theorem hlt_HAS_SIZE_NUMSEG_1 : forall n :e omega, hl_HAS_SIZE omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) n = 1.
Admitted.

// HOL Light: iterate.ml:106 / NUMSEG_CLAUSES   (hash md5:aaec3d7bc1b903fbed446dba31debe52)
Theorem hlt_NUMSEG_CLAUSES : (forall m :e omega, hl_numseg m (hl_NUMERAL hl_zero) = hl_COND (2 :^: omega) (if m = hl_NUMERAL hl_zero then 1 else 0) (hl_INSERT omega (hl_NUMERAL hl_zero) (hl_EMPTY omega)) (hl_EMPTY omega)) /\ forall m n :e omega, hl_numseg m (hl_SUC n) = hl_COND (2 :^: omega) (hl_le m (hl_SUC n)) (hl_INSERT omega (hl_SUC n) (hl_numseg m n)) (hl_numseg m n).
Admitted.

// HOL Light: iterate.ml:114 / FINITE_INDEX_NUMSEG   (hash md5:f020cb633155270e9224a2aec88a616b)
Theorem hlt_FINITE_INDEX_NUMSEG : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 <-> exists f :e A :^: omega, (forall i j :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_CARD A s)) = 1 /\ (hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_CARD A s)) = 1 /\ f i = f j) -> i = j) /\ s = hl_IMAGE omega A f (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_CARD A s)).
Admitted.

// HOL Light: iterate.ml:126 / FINITE_INDEX_NUMBERS   (hash md5:32bcd7b20c7f454dae46750838aa270f)
Theorem hlt_FINITE_INDEX_NUMBERS : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 <-> exists k :e 2 :^: omega, exists f :e A :^: omega, (forall i j :e omega, hl_IN omega i k = 1 /\ (hl_IN omega j k = 1 /\ f i = f j) -> i = j) /\ (hl_FINITE omega k = 1 /\ s = hl_IMAGE omega A f k).
Admitted.

// HOL Light: iterate.ml:133 / INTER_NUMSEG   (hash md5:87e9addf55f14fd21441f7c912c8022d)
Theorem hlt_INTER_NUMSEG : forall m n p q :e omega, hl_INTER omega (hl_numseg m n) (hl_numseg p q) = hl_numseg (hl_MAX m p) (hl_MIN n q).
Admitted.

// HOL Light: iterate.ml:137 / DISJOINT_NUMSEG   (hash md5:b263e3edcf25d6c4f251e25e06b34f77)
Theorem hlt_DISJOINT_NUMSEG : forall m n p q :e omega, hl_DISJOINT omega (hl_numseg m n) (hl_numseg p q) = 1 <-> hl_lt n p = 1 \/ (hl_lt q m = 1 \/ (hl_lt n m = 1 \/ hl_lt q p = 1)).
Admitted.

// HOL Light: iterate.ml:141 / NUMSEG_ADD_SPLIT   (hash md5:548174752d4d80c504bb61697dd68483)
Theorem hlt_NUMSEG_ADD_SPLIT : forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_numseg m (hl_add n p) = hl_UNION omega (hl_numseg m n) (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add n p)).
Admitted.

// HOL Light: iterate.ml:145 / NUMSEG_OFFSET_IMAGE   (hash md5:c83cb960630f71ffab6d7586782e3472)
Theorem hlt_NUMSEG_OFFSET_IMAGE : forall m n p :e omega, hl_numseg (hl_add m p) (hl_add n p) = hl_IMAGE omega omega (fun i :e omega => hl_add i p) (hl_numseg m n).
Admitted.

// HOL Light: iterate.ml:152 / SUBSET_NUMSEG   (hash md5:573b21235d9c2675bc5d07abcf96f5da)
Theorem hlt_SUBSET_NUMSEG : forall m n p q :e omega, hl_SUBSET omega (hl_numseg m n) (hl_numseg p q) = 1 <-> hl_lt n m = 1 \/ hl_le p m = 1 /\ hl_le n q = 1.
Admitted.

// HOL Light: iterate.ml:161 / NUMSEG_LE   (hash md5:a6926698841c99950bbff41516b4c375)
Theorem hlt_NUMSEG_LE : forall n :e omega, hl_GSPEC omega (fun GEN_PVAR_233 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_233 (hl_le x n) x = 1 then 1 else 0) = hl_numseg (hl_NUMERAL hl_zero) n.
Admitted.

// HOL Light: iterate.ml:165 / NUMSEG_LT   (hash md5:d480490c5354aa8bc74a7e7081dce406)
Theorem hlt_NUMSEG_LT : forall n :e omega, hl_GSPEC omega (fun GEN_PVAR_234 :e omega => if exists x :e omega, hl_SETSPEC omega GEN_PVAR_234 (hl_lt x n) x = 1 then 1 else 0) = hl_COND (2 :^: omega) (if n = hl_NUMERAL hl_zero then 1 else 0) (hl_EMPTY omega) (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: iterate.ml:196 / TOPOLOGICAL_SORT   (hash md5:725afed5148a9d6dab323e806db0e1da)
Theorem hlt_TOPOLOGICAL_SORT : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, (forall x y :e A, lt x y = 1 /\ lt y x = 1 -> x = y) /\ (forall x y z :e A, lt x y = 1 /\ lt y z = 1 -> lt x z = 1) -> forall n :e omega, forall s :e 2 :^: A, hl_HAS_SIZE A s n = 1 -> exists f :e A :^: omega, s = hl_IMAGE omega A f (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) /\ forall j k :e omega, hl_IN omega j (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 /\ (hl_IN omega k (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 /\ hl_lt j k = 1) -> ~ lt (f k) (f j) = 1.
Admitted.

// HOL Light: iterate.ml:256 / FINITE_INT_SEG   (hash md5:df3608b948bd2c8c55e6000d6f26380e)
Theorem hlt_FINITE_INT_SEG : (forall l r :e hl_ty_int, hl_FINITE hl_ty_int (hl_GSPEC hl_ty_int (fun GEN_PVAR_235 :e hl_ty_int => if exists x :e hl_ty_int, hl_SETSPEC hl_ty_int GEN_PVAR_235 (if hl_int_le l x = 1 /\ hl_int_le x r = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall l r :e hl_ty_int, hl_FINITE hl_ty_int (hl_GSPEC hl_ty_int (fun GEN_PVAR_236 :e hl_ty_int => if exists x :e hl_ty_int, hl_SETSPEC hl_ty_int GEN_PVAR_236 (if hl_int_le l x = 1 /\ hl_int_lt x r = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ ((forall l r :e hl_ty_int, hl_FINITE hl_ty_int (hl_GSPEC hl_ty_int (fun GEN_PVAR_237 :e hl_ty_int => if exists x :e hl_ty_int, hl_SETSPEC hl_ty_int GEN_PVAR_237 (if hl_int_lt l x = 1 /\ hl_int_le x r = 1 then 1 else 0) x = 1 then 1 else 0)) = 1) /\ forall l r :e hl_ty_int, hl_FINITE hl_ty_int (hl_GSPEC hl_ty_int (fun GEN_PVAR_238 :e hl_ty_int => if exists x :e hl_ty_int, hl_SETSPEC hl_ty_int GEN_PVAR_238 (if hl_int_lt l x = 1 /\ hl_int_lt x r = 1 then 1 else 0) x = 1 then 1 else 0)) = 1)).
Admitted.

// HOL Light: iterate.ml:281 / neutral   (hash md5:a8873aaeb854cfc680774eff00267039)
Theorem hlt_neutral : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_neutral A op = hl_select A (fun x :e A => if forall y :e A, op x y = y /\ op y x = y then 1 else 0).
Admitted.

// HOL Light: iterate.ml:284 / monoidal   (hash md5:1e35c2b254c00f1756dbaa5d27dddeb9)
Theorem hlt_monoidal : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_monoidal A op = 1 <-> (forall x y :e A, op x y = op y x) /\ ((forall x y z :e A, op x (op y z) = op (op x y) z) /\ forall x :e A, op (hl_neutral A op) x = x).
Admitted.

// HOL Light: iterate.ml:289 / MONOIDAL_AC   (hash md5:f04691f7be5cd5861ed14d28792f5cd2)
Theorem hlt_MONOIDAL_AC : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> (forall a :e A, op (hl_neutral A op) a = a) /\ ((forall a :e A, op a (hl_neutral A op) = a) /\ ((forall a b :e A, op a b = op b a) /\ ((forall a b c :e A, op (op a b) c = op a (op b c)) /\ forall a b c :e A, op a (op b c) = op b (op a c)))).
Admitted.

// HOL Light: iterate.ml:298 / support   (hash md5:db57a04db49d84b327ec80e8d4024bb4)
Theorem hlt_support : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall f :e B :^: A, forall op :e B :^: B :^: B, hl_support B A op f s = hl_GSPEC A (fun GEN_PVAR_239 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_239 (if hl_IN A x s = 1 /\ ~ f x = hl_neutral B op then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: iterate.ml:301 / iterate   (hash md5:46ac078c8f4320a3e7079a32d3a1439a)
Theorem hlt_iterate : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall op :e B :^: B :^: B, hl_iterate B A op s f = hl_COND B (hl_FINITE A (hl_support B A op f s)) (hl_ITSET A B (fun x :e A => fun a :e B => op (f x) a) (hl_support B A op f s) (hl_neutral B op)) (hl_neutral B op).
Admitted.

// HOL Light: iterate.ml:307 / IN_SUPPORT   (hash md5:328b596b59f06cf91f1dc806c30ccf3e)
Theorem hlt_IN_SUPPORT : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, forall f :e B :^: A, forall x :e A, forall s :e 2 :^: A, hl_IN A x (hl_support B A op f s) = 1 <-> hl_IN A x s = 1 /\ ~ f x = hl_neutral B op.
Admitted.

// HOL Light: iterate.ml:311 / SUPPORT_SUPPORT   (hash md5:0aedb34b9d6661fba4a5b10ecedffecd)
Theorem hlt_SUPPORT_SUPPORT : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, forall f :e B :^: A, forall s :e 2 :^: A, hl_support B A op f (hl_support B A op f s) = hl_support B A op f s.
Admitted.

// HOL Light: iterate.ml:315 / SUPPORT_EMPTY   (hash md5:51a15a0f30064f51df84243d65184a37)
Theorem hlt_SUPPORT_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, forall f :e B :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_neutral B op) <-> hl_support B A op f s = hl_EMPTY A.
Admitted.

// HOL Light: iterate.ml:320 / SUPPORT_SUBSET   (hash md5:1cb492d6d2a10235f4796e2e45535a55)
Theorem hlt_SUPPORT_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, forall f :e B :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support B A op f s) s = 1.
Admitted.

// HOL Light: iterate.ml:324 / FINITE_SUPPORT   (hash md5:5f2e5868802d786d3586b28b029dac08)
Theorem hlt_FINITE_SUPPORT : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE A (hl_support B A op f s) = 1.
Admitted.

// HOL Light: iterate.ml:328 / SUPPORT_CLAUSES   (hash md5:ef461f246ce98a923ee8cada2ec1fb49)
Theorem hlt_SUPPORT_CLAUSES : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, (forall f :e C :^: A, hl_support C A op f (hl_EMPTY A) = hl_EMPTY A) /\ ((forall f :e C :^: A, forall x :e A, forall s :e 2 :^: A, hl_support C A op f (hl_INSERT A x s) = hl_COND (2 :^: A) (if f x = hl_neutral C op then 1 else 0) (hl_support C A op f s) (hl_INSERT A x (hl_support C A op f s))) /\ ((forall f :e C :^: A, forall x :e A, forall s :e 2 :^: A, hl_support C A op f (hl_DELETE A s x) = hl_DELETE A (hl_support C A op f s) x) /\ ((forall f :e C :^: A, forall s t :e 2 :^: A, hl_support C A op f (hl_UNION A s t) = hl_UNION A (hl_support C A op f s) (hl_support C A op f t)) /\ ((forall f :e C :^: A, forall s t :e 2 :^: A, hl_support C A op f (hl_INTER A s t) = hl_INTER A (hl_support C A op f s) (hl_support C A op f t)) /\ ((forall f :e C :^: A, forall s t :e 2 :^: A, hl_support C A op f (hl_DIFF A s t) = hl_DIFF A (hl_support C A op f s) (hl_support C A op f t)) /\ forall f :e B :^: A, forall g :e C :^: B, forall s :e 2 :^: A, hl_support C B op g (hl_IMAGE A B f s) = hl_IMAGE A B f (hl_support C A op (hl_o B C A g f) s)))))).
Admitted.

// HOL Light: iterate.ml:346 / SUPPORT_DELTA   (hash md5:a35d42478622c94fd25393261650c43a)
Theorem hlt_SUPPORT_DELTA : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, forall s :e 2 :^: A, forall f :e B :^: A, forall a :e A, hl_support B A op (fun x :e A => hl_COND B (if x = a then 1 else 0) (f x) (hl_neutral B op)) s = hl_COND (2 :^: A) (hl_IN A a s) (hl_support B A op f (hl_INSERT A a (hl_EMPTY A))) (hl_EMPTY A).
Admitted.

// HOL Light: iterate.ml:354 / FINITE_SUPPORT_DELTA   (hash md5:4c8a32d285f23d97bdfdf46d3535970f)
Theorem hlt_FINITE_SUPPORT_DELTA : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall op :e B :^: B :^: B, forall f :e B :^: A, forall a :e A, hl_FINITE A (hl_support B A op (fun x :e A => hl_COND B (if x = a then 1 else 0) (f x) (hl_neutral B op)) s) = 1.
Admitted.

// HOL Light: iterate.ml:364 / ITERATE_SUPPORT   (hash md5:7bbe016893acf7b63a38b08b1ad8c353)
Theorem hlt_ITERATE_SUPPORT : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, forall f :e B :^: A, forall s :e 2 :^: A, hl_iterate B A op (hl_support B A op f s) f = hl_iterate B A op s f.
Admitted.

// HOL Light: iterate.ml:368 / ITERATE_EXPAND_CASES   (hash md5:ab2f925a2f6da5a2ba0afd8fe42aa902)
Theorem hlt_ITERATE_EXPAND_CASES : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, forall f :e B :^: A, forall s :e 2 :^: A, hl_iterate B A op s f = hl_COND B (hl_FINITE A (hl_support B A op f s)) (hl_iterate B A op (hl_support B A op f s) f) (hl_neutral B op).
Admitted.

// HOL Light: iterate.ml:375 / ITERATE_CLAUSES_GEN   (hash md5:946bfdbdab4e1111deb795b10264c65e)
Theorem hlt_ITERATE_CLAUSES_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> (forall f :e B :^: A, hl_iterate B A op (hl_EMPTY A) f = hl_neutral B op) /\ forall f :e B :^: A, forall x :e A, forall s :e 2 :^: A, hl_FINITE A (hl_support B A op f s) = 1 -> hl_iterate B A op (hl_INSERT A x s) f = hl_COND B (hl_IN A x s) (hl_iterate B A op s f) (op (f x) (hl_iterate B A op s f)).
Admitted.

// HOL Light: iterate.ml:394 / ITERATE_CLAUSES   (hash md5:fa9418c5d51eff616d0781182d319b2d)
Theorem hlt_ITERATE_CLAUSES : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, hl_monoidal C op = 1 -> (forall f :e C :^: A, hl_iterate C A op (hl_EMPTY A) f = hl_neutral C op) /\ forall f :e C :^: B, forall x :e B, forall s :e 2 :^: B, hl_FINITE B s = 1 -> hl_iterate C B op (hl_INSERT B x s) f = hl_COND C (hl_IN B x s) (hl_iterate C B op s f) (op (f x) (hl_iterate C B op s f)).
Admitted.

// HOL Light: iterate.ml:404 / ITERATE_UNION   (hash md5:e5de30c805e35cd038291d05373725b6)
Theorem hlt_ITERATE_UNION : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_DISJOINT A s t = 1) -> hl_iterate B A op (hl_UNION A s t) f = op (hl_iterate B A op s f) (hl_iterate B A op t f).
Admitted.

// HOL Light: iterate.ml:421 / ITERATE_UNION_GEN   (hash md5:69a3c79ac80e47f178e5cdd106705ce7)
Theorem hlt_ITERATE_UNION_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_FINITE A (hl_support B A op f s) = 1 /\ (hl_FINITE A (hl_support B A op f t) = 1 /\ hl_DISJOINT A (hl_support B A op f s) (hl_support B A op f t) = 1) -> hl_iterate B A op (hl_UNION A s t) f = op (hl_iterate B A op s f) (hl_iterate B A op t f).
Admitted.

// HOL Light: iterate.ml:430 / ITERATE_DIFF   (hash md5:824a690673ce88905b955c422a48f423)
Theorem hlt_ITERATE_DIFF : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A t s = 1 -> op (hl_iterate B A op (hl_DIFF A s t) f) (hl_iterate B A op t f) = hl_iterate B A op s f.
Admitted.

// HOL Light: iterate.ml:441 / ITERATE_DIFF_GEN   (hash md5:e01feebcb1c504e69446d3d624e32856)
Theorem hlt_ITERATE_DIFF_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_FINITE A (hl_support B A op f s) = 1 /\ hl_SUBSET A (hl_support B A op f t) (hl_support B A op f s) = 1 -> op (hl_iterate B A op (hl_DIFF A s t) f) (hl_iterate B A op t f) = hl_iterate B A op s f.
Admitted.

// HOL Light: iterate.ml:450 / ITERATE_INCL_EXCL   (hash md5:c40465cdabc8786fd57fc1f4db5c9422)
Theorem hlt_ITERATE_INCL_EXCL : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall s t :e 2 :^: A, forall f :e B :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> op (hl_iterate B A op s f) (hl_iterate B A op t f) = op (hl_iterate B A op (hl_UNION A s t) f) (hl_iterate B A op (hl_INTER A s t) f).
Admitted.

// HOL Light: iterate.ml:471 / ITERATE_CLOSED   (hash md5:3360dabde5bd2ffa62e94d5b962b99ea)
Theorem hlt_ITERATE_CLOSED : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall P :e 2 :^: B, P (hl_neutral B op) = 1 /\ (forall x y :e B, P x = 1 /\ P y = 1 -> P (op x y) = 1) -> forall f :e B :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 /\ ~ f x = hl_neutral B op -> P (f x) = 1) -> P (hl_iterate B A op s f) = 1.
Admitted.

// HOL Light: iterate.ml:483 / ITERATE_RELATED   (hash md5:74924a56abd4860660f60db78ea5cb8d)
Theorem hlt_ITERATE_RELATED : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall R1 :e 2 :^: B :^: B, R1 (hl_neutral B op) (hl_neutral B op) = 1 /\ (forall x1 y1 x2 y2 :e B, R1 x1 x2 = 1 /\ R1 y1 y2 = 1 -> R1 (op x1 y1) (op x2 y2) = 1) -> forall f g :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> R1 (f x) (g x) = 1) -> R1 (hl_iterate B A op s f) (hl_iterate B A op s g) = 1.
Admitted.

// HOL Light: iterate.ml:496 / ITERATE_EQ_NEUTRAL   (hash md5:9eea13a1ac8e6810658c6eec17048cbf)
Theorem hlt_ITERATE_EQ_NEUTRAL : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_neutral B op) -> hl_iterate B A op s f = hl_neutral B op.
Admitted.

// HOL Light: iterate.ml:505 / ITERATE_SING   (hash md5:5114236959d591b2092cf62c0406338c)
Theorem hlt_ITERATE_SING : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall x :e A, hl_iterate B A op (hl_INSERT A x (hl_EMPTY A)) f = f x.
Admitted.

// HOL Light: iterate.ml:510 / ITERATE_CLOSED_NONEMPTY   (hash md5:a76f9e2fb1a3d6d5e63684fc808f2b96)
Theorem hlt_ITERATE_CLOSED_NONEMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall P :e 2 :^: B, (forall x y :e B, P x = 1 /\ P y = 1 -> P (op x y) = 1) -> forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> P (f x) = 1)) -> P (hl_iterate B A op s f) = 1.
Admitted.

// HOL Light: iterate.ml:523 / ITERATE_RELATED_NONEMPTY   (hash md5:ca0b6deb2c97748c6f53ec9370c7e976)
Theorem hlt_ITERATE_RELATED_NONEMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall R1 :e 2 :^: B :^: B, (forall x1 y1 x2 y2 :e B, R1 x1 x2 = 1 /\ R1 y1 y2 = 1 -> R1 (op x1 y1) (op x2 y2) = 1) -> forall f g :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> R1 (f x) (g x) = 1)) -> R1 (hl_iterate B A op s f) (hl_iterate B A op s g) = 1.
Admitted.

// HOL Light: iterate.ml:539 / ITERATE_DELETE   (hash md5:15d6d89293315e213f7688baf21984c1)
Theorem hlt_ITERATE_DELETE : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> op (f a) (hl_iterate B A op (hl_DELETE A s a) f) = hl_iterate B A op s f.
Admitted.

// HOL Light: iterate.ml:546 / ITERATE_DELTA   (hash md5:5cc29e0b6d7257bce3a1e8ab2d86940a)
Theorem hlt_ITERATE_DELTA : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall a :e A, forall s :e 2 :^: A, hl_iterate B A op s (fun x :e A => hl_COND B (if x = a then 1 else 0) (f x) (hl_neutral B op)) = hl_COND B (hl_IN A a s) (f a) (hl_neutral B op).
Admitted.

// HOL Light: iterate.ml:556 / ITERATE_IMAGE   (hash md5:7f920c2fa06f5c24caeb4edadbda815c)
Theorem hlt_ITERATE_IMAGE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, hl_monoidal C op = 1 -> forall f :e B :^: A, forall g :e C :^: B, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> hl_iterate C B op (hl_IMAGE A B f s) g = hl_iterate C A op s (hl_o B C A g f).
Admitted.

// HOL Light: iterate.ml:578 / ITERATE_BIJECTION   (hash md5:ab17afdaea02ebf42f269cd9c576a159)
Theorem hlt_ITERATE_BIJECTION : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall p :e A :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall y :e A, hl_IN A y s = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ p x = y then 1 else 0) = 1) -> hl_iterate B A op s f = hl_iterate B A op s (hl_o A B A f p).
Admitted.

// HOL Light: iterate.ml:591 / ITERATE_ITERATE_PRODUCT   (hash md5:59dafc9c087207f3a1e7cb824db397f9)
Theorem hlt_ITERATE_ITERATE_PRODUCT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, hl_monoidal C op = 1 -> forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, forall x :e C :^: B :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_FINITE B (t i) = 1) -> hl_iterate C A op s (fun i :e A => hl_iterate C B op (t i) (x i)) = hl_iterate C (A :*: B) op (hl_GSPEC (A :*: B) (fun GEN_PVAR_243 :e A :*: B => if exists i :e A, exists j :e B, hl_SETSPEC (A :*: B) GEN_PVAR_243 (if hl_IN A i s = 1 /\ hl_IN B j (t i) = 1 then 1 else 0) (hl_pair A B i j) = 1 then 1 else 0)) (hl_GABS (C :^: (A :*: B)) (fun f :e C :^: (A :*: B) => if forall i :e A, forall j :e B, hl_GEQ C (f (hl_pair A B i j)) (x i j) = 1 then 1 else 0)).
Admitted.

// HOL Light: iterate.ml:624 / ITERATE_EQ   (hash md5:6048e0792558a34ef7638f8bd4fdd9b1)
Theorem hlt_ITERATE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f g :e B :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_iterate B A op s f = hl_iterate B A op s g.
Admitted.

// HOL Light: iterate.ml:640 / ITERATE_RESTRICT_SET   (hash md5:3f50000b96272efd5fb140c402e6cd0e)
Theorem hlt_ITERATE_RESTRICT_SET : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall P s :e 2 :^: A, forall f :e B :^: A, hl_iterate B A op (hl_GSPEC A (fun GEN_PVAR_244 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_244 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_iterate B A op s (fun x :e A => hl_COND B (P x) (f x) (hl_neutral B op)).
Admitted.

// HOL Light: iterate.ml:652 / ITERATE_EQ_GENERAL   (hash md5:96cf1eea1ab56e3ca68b7210412e61ac)
Theorem hlt_ITERATE_EQ_GENERAL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, hl_monoidal C op = 1 -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e C :^: A, forall g :e C :^: B, forall h :e B :^: A, (forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ h x = y then 1 else 0) = 1) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ g (h x) = f x) -> hl_iterate C A op s f = hl_iterate C B op t g.
Admitted.

// HOL Light: iterate.ml:668 / ITERATE_EQ_GENERAL_INVERSES   (hash md5:2dd243cb0626caf09003bb1f01f5f8b2)
Theorem hlt_ITERATE_EQ_GENERAL_INVERSES : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, hl_monoidal C op = 1 -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e C :^: A, forall g :e C :^: B, forall h :e B :^: A, forall k :e A :^: B, (forall y :e B, hl_IN B y t = 1 -> hl_IN A (k y) s = 1 /\ h (k y) = y) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ (k (h x) = x /\ g (h x) = f x)) -> hl_iterate C A op s f = hl_iterate C B op t g.
Admitted.

// HOL Light: iterate.ml:678 / ITERATE_INJECTION   (hash md5:7de99d67f21c28cd68e846c57dc10aef)
Theorem hlt_ITERATE_INJECTION : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)) -> hl_iterate B A op s (hl_o A B A f p) = hl_iterate B A op s f.
Admitted.

// HOL Light: iterate.ml:690 / ITERATE_UNION_NONZERO   (hash md5:c0d5fbbc37c2ce4bb901aa312b8b912c)
Theorem hlt_ITERATE_UNION_NONZERO : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ (forall x :e A, hl_IN A x (hl_INTER A s t) = 1 -> f x = hl_neutral B op)) -> hl_iterate B A op (hl_UNION A s t) f = op (hl_iterate B A op s f) (hl_iterate B A op t f).
Admitted.

// HOL Light: iterate.ml:703 / ITERATE_OP   (hash md5:fc8ef1b06e64c744da58761198af22e4)
Theorem hlt_ITERATE_OP : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f g :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_iterate B A op s (fun x :e A => op (f x) (g x)) = op (hl_iterate B A op s f) (hl_iterate B A op s g).
Admitted.

// HOL Light: iterate.ml:713 / ITERATE_SUPERSET   (hash md5:4353d2fba6b5ffdf7fea1bd09dc31906)
Theorem hlt_ITERATE_SUPERSET : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall u v :e 2 :^: A, hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_neutral B op) -> hl_iterate B A op v f = hl_iterate B A op u f.
Admitted.

// HOL Light: iterate.ml:723 / ITERATE_UNIV   (hash md5:2e3742b984d1d4cc902b145c3083020a)
Theorem hlt_ITERATE_UNIV : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support B A op f (hl_UNIV A)) s = 1 -> hl_iterate B A op s f = hl_iterate B A op (hl_UNIV A) f.
Admitted.

// HOL Light: iterate.ml:732 / ITERATE_SWAP   (hash md5:afd27a31bc1e26b01df4db8d70c464b8)
Theorem hlt_ITERATE_SWAP : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, hl_monoidal C op = 1 -> forall f :e C :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_iterate C A op s (fun i :e A => hl_iterate C B op t (f i)) = hl_iterate C B op t (fun j :e B => hl_iterate C A op s (fun i :e A => f i j)).
Admitted.

// HOL Light: iterate.ml:744 / ITERATE_IMAGE_NONZERO   (hash md5:faec388ce7c314f55c4c29d908cff426)
Theorem hlt_ITERATE_IMAGE_NONZERO : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, hl_monoidal C op = 1 -> forall g :e C :^: B, forall f :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (~ x = y /\ f x = f y)) -> g (f x) = hl_neutral C op) -> hl_iterate C B op (hl_IMAGE A B f s) g = hl_iterate C A op s (hl_o B C A g f).
Admitted.

// HOL Light: iterate.ml:763 / ITERATE_IMAGE_GEN   (hash md5:3b60d65e165daad642e886a788fc20dd)
Theorem hlt_ITERATE_IMAGE_GEN : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall op :e C :^: C :^: C, hl_monoidal C op = 1 -> forall f :e B :^: A, forall g :e C :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_iterate C A op s g = hl_iterate C B op (hl_IMAGE A B f s) (fun y :e B => hl_iterate C A op (hl_GSPEC A (fun GEN_PVAR_247 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_247 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: iterate.ml:783 / ITERATE_CASES   (hash md5:608c400ced7c8abe9abbca5cf6cde0f8)
Theorem hlt_ITERATE_CASES : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall s P :e 2 :^: A, forall f g :e B :^: A, hl_FINITE A s = 1 -> hl_iterate B A op s (fun x :e A => hl_COND B (P x) (f x) (g x)) = op (hl_iterate B A op (hl_GSPEC A (fun GEN_PVAR_250 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_250 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_iterate B A op (hl_GSPEC A (fun GEN_PVAR_251 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_251 (if hl_IN A x s = 1 /\ ~ P x = 1 then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: iterate.ml:802 / ITERATE_OP_GEN   (hash md5:81de55c7e74b170aa688d603d70b27a3)
Theorem hlt_ITERATE_OP_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f g :e B :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_support B A op f s) = 1 /\ hl_FINITE A (hl_support B A op g s) = 1 -> hl_iterate B A op s (fun x :e A => op (f x) (g x)) = op (hl_iterate B A op s f) (hl_iterate B A op s g).
Admitted.

// HOL Light: iterate.ml:819 / ITERATE_CLAUSES_NUMSEG   (hash md5:c3fe183d340cf1dc864fcd89b844c8bf)
Theorem hlt_ITERATE_CLAUSES_NUMSEG : forall A:set, A <> Empty -> forall f :e A :^: omega, forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> (forall m :e omega, hl_iterate A omega op (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND A (if m = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_neutral A op)) /\ forall m n :e omega, hl_iterate A omega op (hl_numseg m (hl_SUC n)) f = hl_COND A (hl_le m (hl_SUC n)) (op (hl_iterate A omega op (hl_numseg m n) f) (f (hl_SUC n))) (hl_iterate A omega op (hl_numseg m n) f).
Admitted.

// HOL Light: iterate.ml:831 / ITERATE_CLAUSES_NUMSEG_LT   (hash md5:7d3ece34021fef4946b9aee68b88ef55)
Theorem hlt_ITERATE_CLAUSES_NUMSEG_LT : forall A:set, A <> Empty -> forall f :e A :^: omega, forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_256 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_256 (hl_lt i (hl_NUMERAL hl_zero)) i = 1 then 1 else 0)) f = hl_neutral A op /\ forall k :e omega, hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_257 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_257 (hl_lt i (hl_SUC k)) i = 1 then 1 else 0)) f = op (hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_258 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_258 (hl_lt i k) i = 1 then 1 else 0)) f) (f k).
Admitted.

// HOL Light: iterate.ml:839 / ITERATE_CLAUSES_NUMSEG_LE   (hash md5:f28f3143eb3e2b242eb9d30160a6040c)
Theorem hlt_ITERATE_CLAUSES_NUMSEG_LE : forall A:set, A <> Empty -> forall f :e A :^: omega, forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_259 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_259 (hl_le i (hl_NUMERAL hl_zero)) i = 1 then 1 else 0)) f = f (hl_NUMERAL hl_zero) /\ forall k :e omega, hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_260 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_260 (hl_le i (hl_SUC k)) i = 1 then 1 else 0)) f = op (hl_iterate A omega op (hl_GSPEC omega (fun GEN_PVAR_261 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_261 (hl_le i k) i = 1 then 1 else 0)) f) (f (hl_SUC k)).
Admitted.

// HOL Light: iterate.ml:849 / ITERATE_PAIR   (hash md5:899f6307e25e54eeff6e89988edca4fa)
Theorem hlt_ITERATE_PAIR : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> forall f :e A :^: omega, forall m n :e omega, hl_iterate A omega op (hl_numseg (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero)))) f = hl_iterate A omega op (hl_numseg m n) (fun i :e omega => op (f (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (f (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: iterate.ml:867 / ITERATE_REFLECT   (hash md5:5a63d5aff3d3d5ef627cc38cb423ec17)
Theorem hlt_ITERATE_REFLECT : forall A:set, A <> Empty -> forall op :e A :^: A :^: A, hl_monoidal A op = 1 -> forall x :e A :^: omega, forall m n :e omega, hl_iterate A omega op (hl_numseg m n) x = hl_COND A (hl_lt n m) (hl_neutral A op) (hl_iterate A omega op (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => x (hl_sub n i))).
Admitted.

// HOL Light: iterate.ml:896 / iterato   (hash md5:602b16f1ada6de6e7cc6d3f75dc62c37)
Theorem hlt_iterato : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, hl_iterato A K dom neut op lt k f = hl_COND A (if hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_265 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_265 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ~ hl_GSPEC K (fun GEN_PVAR_266 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_266 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0) = hl_EMPTY K then 1 else 0) (hl_LET K A (fun i :e K => hl_LET_END A (op (f i) (hl_iterato A K dom neut op lt (hl_GSPEC K (fun GEN_PVAR_267 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_267 (if hl_IN K j (hl_DELETE K k i) = 1 /\ hl_IN A (f j) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) j = 1 then 1 else 0)) f))) (hl_COND K (if exists i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 /\ forall j :e K, lt j i = 1 /\ (hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1) -> j = i) then 1 else 0) (hl_select K (fun i :e K => if hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 /\ forall j :e K, lt j i = 1 /\ (hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1) -> j = i) then 1 else 0)) (hl_select K (fun i :e K => if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0)))) neut.
Admitted.

// HOL Light: iterate.ml:933 / ITERATO_SUPPORT   (hash md5:f19ff3c10fd9eb2ead659e40c4e7415d)
Theorem hlt_ITERATO_SUPPORT : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, hl_iterato A K dom neut op lt (hl_GSPEC K (fun GEN_PVAR_270 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_270 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) f = hl_iterato A K dom neut op lt k f.
Admitted.

// HOL Light: iterate.ml:945 / ITERATO_EXPAND_CASES   (hash md5:f7d479195c5ae9168bf617db83f05492)
Theorem hlt_ITERATO_EXPAND_CASES : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, hl_iterato A K dom neut op lt k f = hl_COND A (hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_271 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_271 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0))) (hl_iterato A K dom neut op lt (hl_GSPEC K (fun GEN_PVAR_272 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_272 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) f) neut.
Admitted.

// HOL Light: iterate.ml:955 / ITERATO_CLAUSES_GEN   (hash md5:d61118c784a133d150673f518ea91085)
Theorem hlt_ITERATO_CLAUSES_GEN : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall f :e A :^: K, hl_iterato A K dom neut op lt (hl_EMPTY K) f = neut /\ forall i :e K, forall k :e 2 :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_274 :e K => if exists j :e K, hl_SETSPEC K GEN_PVAR_274 (if hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) j = 1 then 1 else 0)) = 1 /\ ((forall j :e K, hl_IN K j k = 1 -> i = j \/ (lt i j = 1 \/ lt j i = 1)) /\ (forall j :e K, lt j i = 1 /\ (hl_IN K j k = 1 /\ hl_IN A (f j) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1) -> j = i)) -> hl_iterato A K dom neut op lt (hl_INSERT K i k) f = hl_COND A (if hl_IN A (f i) dom = 1 -> f i = neut \/ hl_IN K i k = 1 then 1 else 0) (hl_iterato A K dom neut op lt k f) (op (f i) (hl_iterato A K dom neut op lt k f)).
Admitted.

// HOL Light: iterate.ml:1004 / ITERATO_CLAUSES   (hash md5:0c18fb8df22adbac0eea2b1c6ea99cd3)
Theorem hlt_ITERATO_CLAUSES : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall f :e A :^: K, hl_iterato A K dom neut op lt (hl_EMPTY K) f = neut /\ forall i :e K, forall k :e 2 :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_275 :e K => if exists i1 :e K, hl_SETSPEC K GEN_PVAR_275 (if hl_IN K i1 k = 1 /\ hl_IN A (f i1) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i1 = 1 then 1 else 0)) = 1 /\ (forall j :e K, hl_IN K j k = 1 -> lt i j = 1 /\ ~ lt j i = 1) -> hl_iterato A K dom neut op lt (hl_INSERT K i k) f = hl_COND A (if hl_IN A (f i) dom = 1 -> f i = neut \/ hl_IN K i k = 1 then 1 else 0) (hl_iterato A K dom neut op lt k f) (op (f i) (hl_iterato A K dom neut op lt k f)).
Admitted.

// HOL Light: iterate.ml:1017 / ITERATO_CLAUSES_EXISTS   (hash md5:c1b1820fad25c9b2b139b46a81019b42)
Theorem hlt_ITERATO_CLAUSES_EXISTS : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall f :e A :^: K, hl_iterato A K dom neut op lt (hl_EMPTY K) f = neut /\ forall k :e 2 :^: K, hl_FINITE K (hl_GSPEC K (fun GEN_PVAR_276 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_276 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0)) = 1 /\ ~ hl_GSPEC K (fun GEN_PVAR_277 :e K => if exists i :e K, hl_SETSPEC K GEN_PVAR_277 (if hl_IN K i k = 1 /\ hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 then 1 else 0) i = 1 then 1 else 0) = hl_EMPTY K -> exists i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) (hl_DIFF A dom (hl_INSERT A neut (hl_EMPTY A))) = 1 /\ hl_iterato A K dom neut op lt k f = op (f i) (hl_iterato A K dom neut op lt (hl_DELETE K k i) f)).
Admitted.

// HOL Light: iterate.ml:1039 / ITERATO_EQ   (hash md5:2303daeffeb59b0461f28b3e98d96e4e)
Theorem hlt_ITERATO_EQ : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f g :e A :^: K, (forall i :e K, hl_IN K i k = 1 -> f i = g i) -> hl_iterato A K dom neut op lt k f = hl_iterato A K dom neut op lt k g.
Admitted.

// HOL Light: iterate.ml:1078 / ITERATO_INDUCT   (hash md5:f7907e020f7d38c874320fb6e364a492)
Theorem hlt_ITERATO_INDUCT : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, forall P :e 2 :^: A, P neut = 1 /\ (forall i :e K, forall x :e A, hl_IN K i k = 1 /\ (hl_IN A (f i) dom = 1 /\ (~ f i = neut /\ P x = 1)) -> P (op (f i) x) = 1) -> P (hl_iterato A K dom neut op lt k f) = 1.
Admitted.

// HOL Light: iterate.ml:1119 / ITERATO_CLOSED   (hash md5:fafb056ad1680223f04c59258a7a5aef)
Theorem hlt_ITERATO_CLOSED : forall A K:set, A <> Empty -> K <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, forall k :e 2 :^: K, forall f :e A :^: K, forall P :e 2 :^: A, P neut = 1 /\ ((forall x y :e A, P x = 1 /\ P y = 1 -> P (op x y) = 1) /\ (forall i :e K, hl_IN K i k = 1 /\ (hl_IN A (f i) dom = 1 /\ ~ f i = neut) -> P (f i) = 1)) -> P (hl_iterato A K dom neut op lt k f) = 1.
Admitted.

// HOL Light: iterate.ml:1127 / ITERATO_ITERATE   (hash md5:9b0cef8a7db288e934f7c8cacf205eed)
Theorem hlt_ITERATO_ITERATE : forall A K:set, A <> Empty -> K <> Empty -> forall op :e A :^: A :^: A, forall lt :e 2 :^: K :^: K, hl_monoidal A op = 1 -> hl_iterato A K (hl_UNIV A) (hl_neutral A op) op lt = hl_iterate A K op.
Admitted.

// HOL Light: iterate.ml:1167 / ITERATO_CLAUSES_NUMSEG_LEFT   (hash md5:eff5e259fefade4ab0790ec194b3c4ef)
Theorem hlt_ITERATO_CLAUSES_NUMSEG_LEFT : forall A:set, A <> Empty -> forall dom :e 2 :^: A, forall neut :e A, forall op :e A :^: A :^: A, forall f :e A :^: omega, forall m n :e omega, hl_iterato A omega dom neut op hl_le (hl_numseg m n) f = hl_COND A (hl_le m n) (hl_COND A (if hl_IN A (f m) dom = 1 -> f m = neut then 1 else 0) (hl_iterato A omega dom neut op hl_le (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f) (op (f m) (hl_iterato A omega dom neut op hl_le (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f))) neut.
Admitted.

// HOL Light: iterate.ml:1194 / nproduct   (hash md5:fb9f9e11f1871a90aa4028a977ebca69)
Theorem hlt_nproduct : forall A:set, A <> Empty -> hl_nproduct A = hl_iterate omega A hl_mul.
Admitted.

// HOL Light: iterate.ml:1197 / NEUTRAL_MUL   (hash md5:810748ee9f5255bf9d8c183d3d4d0a1c)
Theorem hlt_NEUTRAL_MUL : hl_neutral omega hl_mul = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: iterate.ml:1202 / MONOIDAL_MUL   (hash md5:b7daf5e6de14117b12e7346fc47f02cb)
Theorem hlt_MONOIDAL_MUL : hl_monoidal omega hl_mul = 1.
Admitted.

// HOL Light: iterate.ml:1206 / NPRODUCT_CLAUSES   (hash md5:f1fa1970dcb71c0ea266b2d511ff08c9)
Theorem hlt_NPRODUCT_CLAUSES : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e omega :^: A, hl_nproduct A (hl_EMPTY A) f = hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall x :e B, forall f :e omega :^: B, forall s :e 2 :^: B, hl_FINITE B s = 1 -> hl_nproduct B (hl_INSERT B x s) f = hl_COND omega (hl_IN B x s) (hl_nproduct B s f) (hl_mul (f x) (hl_nproduct B s f)).
Admitted.

// HOL Light: iterate.ml:1216 / iproduct   (hash md5:f09e83082e21af2da7cdd219527c8842)
Theorem hlt_iproduct : forall A:set, A <> Empty -> hl_iproduct A = hl_iterate hl_ty_int A hl_int_mul.
Admitted.

// HOL Light: iterate.ml:1219 / NEUTRAL_INT_MUL   (hash md5:61f7c53ce7ec94316ac2a1a6b59a71ac)
Theorem hlt_NEUTRAL_INT_MUL : hl_neutral hl_ty_int hl_int_mul = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: iterate.ml:1224 / MONOIDAL_INT_MUL   (hash md5:5e8744703f62ab0f3fdb1e85e68450f5)
Theorem hlt_MONOIDAL_INT_MUL : hl_monoidal hl_ty_int hl_int_mul = 1.
Admitted.

// HOL Light: iterate.ml:1228 / IPRODUCT_CLAUSES   (hash md5:7a84ac9ba428d5078aedcd9bf6acf02d)
Theorem hlt_IPRODUCT_CLAUSES : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e hl_ty_int :^: A, hl_iproduct A (hl_EMPTY A) f = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall x :e B, forall f :e hl_ty_int :^: B, forall s :e 2 :^: B, hl_FINITE B s = 1 -> hl_iproduct B (hl_INSERT B x s) f = hl_COND hl_ty_int (hl_IN B x s) (hl_iproduct B s f) (hl_int_mul (f x) (hl_iproduct B s f)).
Admitted.

// HOL Light: iterate.ml:1238 / product   (hash md5:23a3ae537eb42392ca74eb07bc9f531a)
Theorem hlt_product : forall A:set, A <> Empty -> hl_product A = hl_iterate R A hl_real_mul.
Admitted.

// HOL Light: iterate.ml:1241 / NEUTRAL_REAL_MUL   (hash md5:35a5b388fe177bf7ad7f7ac5dfb7e915)
Theorem hlt_NEUTRAL_REAL_MUL : hl_neutral R hl_real_mul = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: iterate.ml:1246 / MONOIDAL_REAL_MUL   (hash md5:006f2e19ec12ee3f4dcbd4c7830721aa)
Theorem hlt_MONOIDAL_REAL_MUL : hl_monoidal R hl_real_mul = 1.
Admitted.

// HOL Light: iterate.ml:1250 / PRODUCT_CLAUSES   (hash md5:464ca9b59ba521206c4856747fb68cbe)
Theorem hlt_PRODUCT_CLAUSES : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e R :^: A, hl_product A (hl_EMPTY A) f = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall x :e B, forall f :e R :^: B, forall s :e 2 :^: B, hl_FINITE B s = 1 -> hl_product B (hl_INSERT B x s) f = hl_COND R (hl_IN B x s) (hl_product B s f) (hl_real_mul (f x) (hl_product B s f)).
Admitted.

// HOL Light: iterate.ml:1260 / isum   (hash md5:3e27a507cb41cfb3eed71f3bf6979736)
Theorem hlt_isum : forall A:set, A <> Empty -> hl_isum A = hl_iterate hl_ty_int A hl_int_add.
Admitted.

// HOL Light: iterate.ml:1263 / NEUTRAL_INT_ADD   (hash md5:0ccfd02cd45039656e3be405510c78c1)
Theorem hlt_NEUTRAL_INT_ADD : hl_neutral hl_ty_int hl_int_add = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:1268 / MONOIDAL_INT_ADD   (hash md5:00b4745143ee30bfdceaf4696bd1d02a)
Theorem hlt_MONOIDAL_INT_ADD : hl_monoidal hl_ty_int hl_int_add = 1.
Admitted.

// HOL Light: iterate.ml:1272 / ISUM_CLAUSES   (hash md5:1dde04b783c90d448930f9979cf21ae7)
Theorem hlt_ISUM_CLAUSES : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e hl_ty_int :^: A, hl_isum A (hl_EMPTY A) f = hl_int_of_num (hl_NUMERAL hl_zero)) /\ forall x :e B, forall f :e hl_ty_int :^: B, forall s :e 2 :^: B, hl_FINITE B s = 1 -> hl_isum B (hl_INSERT B x s) f = hl_COND hl_ty_int (hl_IN B x s) (hl_isum B s f) (hl_int_add (f x) (hl_isum B s f)).
Admitted.

// HOL Light: iterate.ml:1288 / nsum   (hash md5:b14e7702a17fe114bd811d49913540c0)
Theorem hlt_nsum : forall A:set, A <> Empty -> hl_nsum A = hl_iterate omega A hl_add.
Admitted.

// HOL Light: iterate.ml:1291 / NEUTRAL_ADD   (hash md5:06c9ed2e4a3b17c780a3883291e889fb)
Theorem hlt_NEUTRAL_ADD : hl_neutral omega hl_add = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: iterate.ml:1296 / MONOIDAL_ADD   (hash md5:bba9deba271dae756a54baac1be666fc)
Theorem hlt_MONOIDAL_ADD : hl_monoidal omega hl_add = 1.
Admitted.

// HOL Light: iterate.ml:1300 / NSUM_DEGENERATE   (hash md5:c1df488542489eef5bbd5fb998960ec3)
Theorem hlt_NSUM_DEGENERATE : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, ~ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_286 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_286 (if hl_IN A x s = 1 /\ ~ f x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_nsum A s f = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: iterate.ml:1305 / NSUM_CLAUSES   (hash md5:ea406f8293ce1f3be12e9bc950e8d8d6)
Theorem hlt_NSUM_CLAUSES : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e omega :^: A, hl_nsum A (hl_EMPTY A) f = hl_NUMERAL hl_zero) /\ forall x :e B, forall f :e omega :^: B, forall s :e 2 :^: B, hl_FINITE B s = 1 -> hl_nsum B (hl_INSERT B x s) f = hl_COND omega (hl_IN B x s) (hl_nsum B s f) (hl_add (f x) (hl_nsum B s f)).
Admitted.

// HOL Light: iterate.ml:1315 / NSUM_UNION   (hash md5:254da9a0342a265c00884ab83c6b0037)
Theorem hlt_NSUM_UNION : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_DISJOINT A s t = 1) -> hl_nsum A (hl_UNION A s t) f = hl_add (hl_nsum A s f) (hl_nsum A t f).
Admitted.

// HOL Light: iterate.ml:1321 / NSUM_DIFF   (hash md5:b3ca8865ceff71fcf407e53454c7a758)
Theorem hlt_NSUM_DIFF : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A t s = 1 -> hl_nsum A (hl_DIFF A s t) f = hl_sub (hl_nsum A s f) (hl_nsum A t f).
Admitted.

// HOL Light: iterate.ml:1329 / NSUM_INCL_EXCL   (hash md5:a2bd7284e601409196a89118b812c8e9)
Theorem hlt_NSUM_INCL_EXCL : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall f :e omega :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_add (hl_nsum A s f) (hl_nsum A t f) = hl_add (hl_nsum A (hl_UNION A s t) f) (hl_nsum A (hl_INTER A s t) f).
Admitted.

// HOL Light: iterate.ml:1336 / NSUM_SUPPORT   (hash md5:878f2fcb54b45c8f479a08840e977d87)
Theorem hlt_NSUM_SUPPORT : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_nsum A (hl_support omega A hl_add f s) f = hl_nsum A s f.
Admitted.

// HOL Light: iterate.ml:1340 / NSUM_ADD   (hash md5:7d4456c4f64050e05c81b0253a214728)
Theorem hlt_NSUM_ADD : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_nsum A s (fun x :e A => hl_add (f x) (g x)) = hl_add (hl_nsum A s f) (hl_nsum A s g).
Admitted.

// HOL Light: iterate.ml:1345 / NSUM_ADD_GEN   (hash md5:af071b628c8570856cae7c1702a13a72)
Theorem hlt_NSUM_ADD_GEN : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_287 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_287 (if hl_IN A x s = 1 /\ ~ f x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_288 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_288 (if hl_IN A x s = 1 /\ ~ g x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_nsum A s (fun x :e A => hl_add (f x) (g x)) = hl_add (hl_nsum A s f) (hl_nsum A s g).
Admitted.

// HOL Light: iterate.ml:1352 / NSUM_EQ_0   (hash md5:f1a6700a66d8a3487158eb5dd5583393)
Theorem hlt_NSUM_EQ_0 : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_NUMERAL hl_zero) -> hl_nsum A s f = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: iterate.ml:1357 / NSUM_0   (hash md5:993862fbecd917d2afa429ecfe1db3ba)
Theorem hlt_NSUM_0 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_nsum A s (fun n :e A => hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: iterate.ml:1361 / NSUM_LMUL   (hash md5:545f4b56962e1e028de4577cea568bd1)
Theorem hlt_NSUM_LMUL : forall A:set, A <> Empty -> forall f :e omega :^: A, forall c :e omega, forall s :e 2 :^: A, hl_nsum A s (fun x :e A => hl_mul c (f x)) = hl_mul c (hl_nsum A s f).
Admitted.

// HOL Light: iterate.ml:1374 / NSUM_RMUL   (hash md5:ce83bdd11edfed9a987479b7bb2ce4c6)
Theorem hlt_NSUM_RMUL : forall A:set, A <> Empty -> forall f :e omega :^: A, forall c :e omega, forall s :e 2 :^: A, hl_nsum A s (fun x :e A => hl_mul (f x) c) = hl_mul (hl_nsum A s f) c.
Admitted.

// HOL Light: iterate.ml:1378 / NSUM_LE   (hash md5:3fe9c3cd47532109956a2317e65aafc3)
Theorem hlt_NSUM_LE : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_le (f x) (g x) = 1) -> hl_le (hl_nsum A s f) (hl_nsum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:1386 / NSUM_LT   (hash md5:1165e5e95f5c3c94d9e5642d0535237d)
Theorem hlt_NSUM_LT : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_le (f x) (g x) = 1) /\ (exists x :e A, hl_IN A x s = 1 /\ hl_lt (f x) (g x) = 1)) -> hl_lt (hl_nsum A s f) (hl_nsum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:1399 / NSUM_LT_ALL   (hash md5:4cc2338c5c194519308a6bb54ca9c003)
Theorem hlt_NSUM_LT_ALL : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_lt (f x) (g x) = 1)) -> hl_lt (hl_nsum A s f) (hl_nsum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:1405 / NSUM_EQ   (hash md5:7b56acbfdcba2de9bb221054d9ae675c)
Theorem hlt_NSUM_EQ : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_nsum A s f = hl_nsum A s g.
Admitted.

// HOL Light: iterate.ml:1410 / NSUM_CONST   (hash md5:3627e10a75f787d52cd1e237ab6bf64e)
Theorem hlt_NSUM_CONST : forall A:set, A <> Empty -> forall c :e omega, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_nsum A s (fun n :e A => c) = hl_mul (hl_CARD A s) c.
Admitted.

// HOL Light: iterate.ml:1416 / NSUM_POS_BOUND   (hash md5:e73b93c9e252fab4127a589673ed0171)
Theorem hlt_NSUM_POS_BOUND : forall A:set, A <> Empty -> forall f :e omega :^: A, forall b :e omega, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_le (hl_nsum A s f) b = 1 -> forall x :e A, hl_IN A x s = 1 -> hl_le (f x) b = 1.
Admitted.

// HOL Light: iterate.ml:1424 / NSUM_EQ_0_IFF   (hash md5:3f2564a32f33cbfca4f3a3975e6bcea4)
Theorem hlt_NSUM_EQ_0_IFF : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_nsum A s f = hl_NUMERAL hl_zero <-> forall x :e A, hl_IN A x s = 1 -> f x = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:1429 / NSUM_POS_LT   (hash md5:f97e20cedfaddbae31c53f337d19e4c1)
Theorem hlt_NSUM_POS_LT : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (exists x :e A, hl_IN A x s = 1 /\ hl_lt (hl_NUMERAL hl_zero) (f x) = 1) -> hl_lt (hl_NUMERAL hl_zero) (hl_nsum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:1435 / NSUM_POS_LT_ALL   (hash md5:724e68b503fa15ef164b2c374aafd3ff)
Theorem hlt_NSUM_POS_LT_ALL : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e omega :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall i :e A, hl_IN A i s = 1 -> hl_lt (hl_NUMERAL hl_zero) (f i) = 1)) -> hl_lt (hl_NUMERAL hl_zero) (hl_nsum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:1441 / NSUM_DELETE   (hash md5:573a55b2359edb69c1ba7ab1cd88580d)
Theorem hlt_NSUM_DELETE : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_add (f a) (hl_nsum A (hl_DELETE A s a) f) = hl_nsum A s f.
Admitted.

// HOL Light: iterate.ml:1445 / NSUM_SING   (hash md5:ac2360492e0196f4108855de3f6639f9)
Theorem hlt_NSUM_SING : forall A:set, A <> Empty -> forall f :e omega :^: A, forall x :e A, hl_nsum A (hl_INSERT A x (hl_EMPTY A)) f = f x.
Admitted.

// HOL Light: iterate.ml:1449 / NSUM_DELTA   (hash md5:aef13638e5823a68dd8d88505629ddca)
Theorem hlt_NSUM_DELTA : forall A:set, A <> Empty -> forall b :e omega, forall s :e 2 :^: A, forall a :e A, hl_nsum A s (fun x :e A => hl_COND omega (if x = a then 1 else 0) b (hl_NUMERAL hl_zero)) = hl_COND omega (hl_IN A a s) b (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:1454 / NSUM_SWAP   (hash md5:bbf82ad215a6fe69a4be7b58478ff5fb)
Theorem hlt_NSUM_SWAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e omega :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_nsum A s (fun i :e A => hl_nsum B t (f i)) = hl_nsum B t (fun j :e B => hl_nsum A s (fun i :e A => f i j)).
Admitted.

// HOL Light: iterate.ml:1462 / NSUM_IMAGE   (hash md5:ef243858263d36ef360c0182220f4c57)
Theorem hlt_NSUM_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e omega :^: B, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> hl_nsum B (hl_IMAGE A B f s) g = hl_nsum A s (hl_o B omega A g f).
Admitted.

// HOL Light: iterate.ml:1469 / NSUM_SUPERSET   (hash md5:a12483697f2aeb8568f0f1938cb4eee7)
Theorem hlt_NSUM_SUPERSET : forall A:set, A <> Empty -> forall f :e omega :^: A, forall u v :e 2 :^: A, hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_NUMERAL hl_zero) -> hl_nsum A v f = hl_nsum A u f.
Admitted.

// HOL Light: iterate.ml:1475 / NSUM_UNIV   (hash md5:35925a523b9ef709bfeed127741691c2)
Theorem hlt_NSUM_UNIV : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support omega A hl_add f (hl_UNIV A)) s = 1 -> hl_nsum A s f = hl_nsum A (hl_UNIV A) f.
Admitted.

// HOL Light: iterate.ml:1480 / NSUM_UNION_RZERO   (hash md5:0fee949aaa70b39ee07feb0a7c1d807d)
Theorem hlt_NSUM_UNION_RZERO : forall A:set, A <> Empty -> forall f :e omega :^: A, forall u v :e 2 :^: A, hl_FINITE A u = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_NUMERAL hl_zero) -> hl_nsum A (hl_UNION A u v) f = hl_nsum A u f.
Admitted.

// HOL Light: iterate.ml:1488 / NSUM_UNION_LZERO   (hash md5:d2ef1eef37f7ed51a4c90b4878ce0a90)
Theorem hlt_NSUM_UNION_LZERO : forall A:set, A <> Empty -> forall f :e omega :^: A, forall u v :e 2 :^: A, hl_FINITE A v = 1 /\ (forall x :e A, hl_IN A x u = 1 /\ ~ hl_IN A x v = 1 -> f x = hl_NUMERAL hl_zero) -> hl_nsum A (hl_UNION A u v) f = hl_nsum A v f.
Admitted.

// HOL Light: iterate.ml:1494 / NSUM_RESTRICT   (hash md5:7356f000597afddcdc5b234fdcd9ff96)
Theorem hlt_NSUM_RESTRICT : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_nsum A s (fun x :e A => hl_COND omega (hl_IN A x s) (f x) (hl_NUMERAL hl_zero)) = hl_nsum A s f.
Admitted.

// HOL Light: iterate.ml:1499 / NSUM_BOUND   (hash md5:822f18b79cadf3f9e39fe32c88d6727e)
Theorem hlt_NSUM_BOUND : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e omega :^: A, forall b :e omega, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_le (f x) b = 1) -> hl_le (hl_nsum A s f) (hl_mul (hl_CARD A s) b) = 1.
Admitted.

// HOL Light: iterate.ml:1504 / NSUM_BOUND_GEN   (hash md5:28777469ffa6b2d9c547f0b8c6d812db)
Theorem hlt_NSUM_BOUND_GEN : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e omega :^: A, forall b :e omega, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_le (f x) (hl_DIV b (hl_CARD A s)) = 1)) -> hl_le (hl_nsum A s f) b = 1.
Admitted.

// HOL Light: iterate.ml:1512 / NSUM_BOUND_LT   (hash md5:f5f782aa5a499070bc3264aed6281f0d)
Theorem hlt_NSUM_BOUND_LT : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e omega :^: A, forall b :e omega, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_le (f x) b = 1) /\ (exists x :e A, hl_IN A x s = 1 /\ hl_lt (f x) b = 1)) -> hl_lt (hl_nsum A s f) (hl_mul (hl_CARD A s) b) = 1.
Admitted.

// HOL Light: iterate.ml:1520 / NSUM_BOUND_LT_ALL   (hash md5:893f0fc7359c673dbfae250680279866)
Theorem hlt_NSUM_BOUND_LT_ALL : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e omega :^: A, forall b :e omega, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_lt (f x) b = 1)) -> hl_lt (hl_nsum A s f) (hl_mul (hl_CARD A s) b) = 1.
Admitted.

// HOL Light: iterate.ml:1525 / NSUM_BOUND_LT_GEN   (hash md5:c7d7a90a9a68e5c60db69ce439704ec2)
Theorem hlt_NSUM_BOUND_LT_GEN : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e omega :^: A, forall b :e omega, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_lt (f x) (hl_DIV b (hl_CARD A s)) = 1)) -> hl_lt (hl_nsum A s f) b = 1.
Admitted.

// HOL Light: iterate.ml:1534 / NSUM_UNION_EQ   (hash md5:be3d8c006c3ae1c42afb601d2cdf6488)
Theorem hlt_NSUM_UNION_EQ : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s t u :e 2 :^: A, hl_FINITE A u = 1 /\ (hl_INTER A s t = hl_EMPTY A /\ hl_UNION A s t = u) -> hl_add (hl_nsum A s f) (hl_nsum A t f) = hl_nsum A u f.
Admitted.

// HOL Light: iterate.ml:1540 / NSUM_EQ_SUPERSET   (hash md5:5bb56756b89883ef5969d5f9cddb313c)
Theorem hlt_NSUM_EQ_SUPERSET : forall A:set, A <> Empty -> forall g f :e omega :^: A, forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ ((forall x :e A, hl_IN A x t = 1 -> f x = g x) /\ (forall x :e A, hl_IN A x s = 1 /\ ~ hl_IN A x t = 1 -> f x = hl_NUMERAL hl_zero))) -> hl_nsum A s f = hl_nsum A t g.
Admitted.

// HOL Light: iterate.ml:1548 / NSUM_RESTRICT_SET   (hash md5:8f89e5cbf0b353d65a09c497c609bf37)
Theorem hlt_NSUM_RESTRICT_SET : forall A:set, A <> Empty -> forall P s :e 2 :^: A, forall f :e omega :^: A, hl_nsum A (hl_GSPEC A (fun GEN_PVAR_289 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_289 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_nsum A s (fun x :e A => hl_COND omega (P x) (f x) (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: iterate.ml:1553 / NSUM_NSUM_RESTRICT   (hash md5:8d963f584931e2f667cb58fbc9a5193f)
Theorem hlt_NSUM_NSUM_RESTRICT : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall f :e omega :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_nsum A s (fun x :e A => hl_nsum B (hl_GSPEC B (fun GEN_PVAR_290 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_290 (if hl_IN B y t = 1 /\ R1 x y = 1 then 1 else 0) y = 1 then 1 else 0)) (fun y :e B => f x y)) = hl_nsum B t (fun y :e B => hl_nsum A (hl_GSPEC A (fun GEN_PVAR_291 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_291 (if hl_IN A x s = 1 /\ R1 x y = 1 then 1 else 0) x = 1 then 1 else 0)) (fun x :e A => f x y)).
Admitted.

// HOL Light: iterate.ml:1561 / CARD_EQ_NSUM   (hash md5:9d0847285acbf1c694ea3c62ab4ad637)
Theorem hlt_CARD_EQ_NSUM : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_CARD A s = hl_nsum A s (fun x :e A => hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: iterate.ml:1565 / NSUM_MULTICOUNT_GEN   (hash md5:34e59d62c7c5ad4aaf8db8e4670aab51)
Theorem hlt_NSUM_MULTICOUNT_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, forall k :e omega :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (forall j :e B, hl_IN B j t = 1 -> hl_CARD A (hl_GSPEC A (fun GEN_PVAR_293 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_293 (if hl_IN A i s = 1 /\ R1 i j = 1 then 1 else 0) i = 1 then 1 else 0)) = k j)) -> hl_nsum A s (fun i :e A => hl_CARD B (hl_GSPEC B (fun GEN_PVAR_294 :e B => if exists j :e B, hl_SETSPEC B GEN_PVAR_294 (if hl_IN B j t = 1 /\ R1 i j = 1 then 1 else 0) j = 1 then 1 else 0))) = hl_nsum B t (fun i :e B => k i).
Admitted.

// HOL Light: iterate.ml:1582 / NSUM_MULTICOUNT   (hash md5:526d70492bc0595d11f46c20af0ec9c9)
Theorem hlt_NSUM_MULTICOUNT : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, forall k :e omega, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (forall j :e B, hl_IN B j t = 1 -> hl_CARD A (hl_GSPEC A (fun GEN_PVAR_295 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_295 (if hl_IN A i s = 1 /\ R1 i j = 1 then 1 else 0) i = 1 then 1 else 0)) = k)) -> hl_nsum A s (fun i :e A => hl_CARD B (hl_GSPEC B (fun GEN_PVAR_296 :e B => if exists j :e B, hl_SETSPEC B GEN_PVAR_296 (if hl_IN B j t = 1 /\ R1 i j = 1 then 1 else 0) j = 1 then 1 else 0))) = hl_mul k (hl_CARD B t).
Admitted.

// HOL Light: iterate.ml:1592 / NSUM_IMAGE_GEN   (hash md5:89ed33008ba65912e9d5d47861259f5a)
Theorem hlt_NSUM_IMAGE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_nsum A s g = hl_nsum B (hl_IMAGE A B f s) (fun y :e B => hl_nsum A (hl_GSPEC A (fun GEN_PVAR_297 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_297 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: iterate.ml:1600 / NSUM_GROUP   (hash md5:d0ce5a493ba32703060f62fc3eaa2609)
Theorem hlt_NSUM_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e omega :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_nsum B t (fun y :e B => hl_nsum A (hl_GSPEC A (fun GEN_PVAR_298 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_298 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g) = hl_nsum A s g.
Admitted.

// HOL Light: iterate.ml:1610 / NSUM_GROUP_RELATION   (hash md5:6d32ec75a374d92d2e8fb7aa0e6b6131)
Theorem hlt_NSUM_GROUP_RELATION : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall g :e omega :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_exists_unique B (fun y :e B => if hl_IN B y t = 1 /\ R1 x y = 1 then 1 else 0) = 1) -> hl_nsum B t (fun y :e B => hl_nsum A (hl_GSPEC A (fun GEN_PVAR_299 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_299 (if hl_IN A x s = 1 /\ R1 x y = 1 then 1 else 0) x = 1 then 1 else 0)) g) = hl_nsum A s g.
Admitted.

// HOL Light: iterate.ml:1624 / NSUM_SUBSET   (hash md5:d5f3cd8f601d14ca536223624bbba208)
Theorem hlt_NSUM_SUBSET : forall A:set, A <> Empty -> forall u v :e 2 :^: A, forall f :e omega :^: A, hl_FINITE A u = 1 /\ (hl_FINITE A v = 1 /\ (forall x :e A, hl_IN A x (hl_DIFF A u v) = 1 -> f x = hl_NUMERAL hl_zero)) -> hl_le (hl_nsum A u f) (hl_nsum A v f) = 1.
Admitted.

// HOL Light: iterate.ml:1637 / NSUM_SUBSET_SIMPLE   (hash md5:22f6815df34c1dd38e7753b6506972e5)
Theorem hlt_NSUM_SUBSET_SIMPLE : forall A:set, A <> Empty -> forall u v :e 2 :^: A, forall f :e omega :^: A, hl_FINITE A v = 1 /\ hl_SUBSET A u v = 1 -> hl_le (hl_nsum A u f) (hl_nsum A v f) = 1.
Admitted.

// HOL Light: iterate.ml:1642 / NSUM_LE_GEN   (hash md5:8ab740739d55111b337dc1fad26c98c1)
Theorem hlt_NSUM_LE_GEN : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_le (f x) (g x) = 1) /\ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_301 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_301 (if hl_IN A x s = 1 /\ ~ g x = hl_NUMERAL hl_zero then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_le (hl_nsum A s f) (hl_nsum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:1657 / NSUM_MUL_BOUND   (hash md5:8ff9270b5beac2b8ced0d644f46a10cf)
Theorem hlt_NSUM_MUL_BOUND : forall A:set, A <> Empty -> forall a b :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_le (hl_nsum A s (fun i :e A => hl_mul (a i) (b i))) (hl_mul (hl_nsum A s a) (hl_nsum A s b)) = 1.
Admitted.

// HOL Light: iterate.ml:1668 / NSUM_IMAGE_NONZERO   (hash md5:f50e0d035831a31cd46daa97acae62ab)
Theorem hlt_NSUM_IMAGE_NONZERO : forall A B:set, A <> Empty -> B <> Empty -> forall d :e omega :^: B, forall i :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (~ x = y /\ i x = i y)) -> d (i x) = hl_NUMERAL hl_zero) -> hl_nsum B (hl_IMAGE A B i s) d = hl_nsum A s (hl_o B omega A d i).
Admitted.

// HOL Light: iterate.ml:1676 / NSUM_BIJECTION   (hash md5:d983fb9375871ca0b52967d75e8028f4)
Theorem hlt_NSUM_BIJECTION : forall A:set, A <> Empty -> forall f :e omega :^: A, forall p :e A :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall y :e A, hl_IN A y s = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ p x = y then 1 else 0) = 1) -> hl_nsum A s f = hl_nsum A s (hl_o A omega A f p).
Admitted.

// HOL Light: iterate.ml:1684 / NSUM_NSUM_PRODUCT   (hash md5:3e79246022b25eaa10016a9cf01a4436)
Theorem hlt_NSUM_NSUM_PRODUCT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, forall x :e omega :^: B :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_FINITE B (t i) = 1) -> hl_nsum A s (fun i :e A => hl_nsum B (t i) (x i)) = hl_nsum (A :*: B) (hl_GSPEC (A :*: B) (fun GEN_PVAR_302 :e A :*: B => if exists i :e A, exists j :e B, hl_SETSPEC (A :*: B) GEN_PVAR_302 (if hl_IN A i s = 1 /\ hl_IN B j (t i) = 1 then 1 else 0) (hl_pair A B i j) = 1 then 1 else 0)) (hl_GABS (omega :^: (A :*: B)) (fun f :e omega :^: (A :*: B) => if forall i :e A, forall j :e B, hl_GEQ omega (f (hl_pair A B i j)) (x i j) = 1 then 1 else 0)).
Admitted.

// HOL Light: iterate.ml:1692 / NSUM_EQ_GENERAL   (hash md5:05dbb148062159457a32f59f89f7a69b)
Theorem hlt_NSUM_EQ_GENERAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e omega :^: A, forall g :e omega :^: B, forall h :e B :^: A, (forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ h x = y then 1 else 0) = 1) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ g (h x) = f x) -> hl_nsum A s f = hl_nsum B t g.
Admitted.

// HOL Light: iterate.ml:1700 / NSUM_EQ_GENERAL_INVERSES   (hash md5:2465c337eed9302eccf3f7d9b1b2800e)
Theorem hlt_NSUM_EQ_GENERAL_INVERSES : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e omega :^: A, forall g :e omega :^: B, forall h :e B :^: A, forall k :e A :^: B, (forall y :e B, hl_IN B y t = 1 -> hl_IN A (k y) s = 1 /\ h (k y) = y) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ (k (h x) = x /\ g (h x) = f x)) -> hl_nsum A s f = hl_nsum B t g.
Admitted.

// HOL Light: iterate.ml:1708 / NSUM_INJECTION   (hash md5:efd80603e4abda4f64c0199c6e872d9f)
Theorem hlt_NSUM_INJECTION : forall A:set, A <> Empty -> forall f :e omega :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)) -> hl_nsum A s (hl_o A omega A f p) = hl_nsum A s f.
Admitted.

// HOL Light: iterate.ml:1717 / NSUM_UNION_NONZERO   (hash md5:1960072c334edef4eec0a4cbf51c1c00)
Theorem hlt_NSUM_UNION_NONZERO : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ (forall x :e A, hl_IN A x (hl_INTER A s t) = 1 -> f x = hl_NUMERAL hl_zero)) -> hl_nsum A (hl_UNION A s t) f = hl_add (hl_nsum A s f) (hl_nsum A t f).
Admitted.

// HOL Light: iterate.ml:1724 / NSUM_UNIONS_NONZERO   (hash md5:715ae7c1301441b3968b4f67ba787c76)
Theorem hlt_NSUM_UNIONS_NONZERO : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) s = 1 /\ ((forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> hl_FINITE A t = 1) /\ (forall t1 t2 :e 2 :^: A, forall x :e A, hl_IN (2 :^: A) t1 s = 1 /\ (hl_IN (2 :^: A) t2 s = 1 /\ (~ t1 = t2 /\ (hl_IN A x t1 = 1 /\ hl_IN A x t2 = 1))) -> f x = hl_NUMERAL hl_zero)) -> hl_nsum A (hl_UNIONS A s) f = hl_nsum (2 :^: A) s (fun t :e 2 :^: A => hl_nsum A t f).
Admitted.

// HOL Light: iterate.ml:1739 / NSUM_CASES   (hash md5:a05dba05fa03cf311ac8cb0fbc178675)
Theorem hlt_NSUM_CASES : forall A:set, A <> Empty -> forall s P :e 2 :^: A, forall f g :e omega :^: A, hl_FINITE A s = 1 -> hl_nsum A s (fun x :e A => hl_COND omega (P x) (f x) (g x)) = hl_add (hl_nsum A (hl_GSPEC A (fun GEN_PVAR_303 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_303 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_nsum A (hl_GSPEC A (fun GEN_PVAR_304 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_304 (if hl_IN A x s = 1 /\ ~ P x = 1 then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: iterate.ml:1746 / NSUM_CLOSED   (hash md5:6733f4121fac077967e398b8476aa7a8)
Theorem hlt_NSUM_CLOSED : forall A:set, A <> Empty -> forall P :e 2 :^: omega, forall f :e omega :^: A, forall s :e 2 :^: A, P (hl_NUMERAL hl_zero) = 1 /\ ((forall x y :e omega, P x = 1 /\ P y = 1 -> P (hl_add x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1)) -> P (hl_nsum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:1754 / NSUM_RELATED   (hash md5:cdfcc78c756c4dc99c017b098ce218c9)
Theorem hlt_NSUM_RELATED : forall A:set, A <> Empty -> forall R1 :e 2 :^: omega :^: omega, forall f g :e omega :^: A, forall s :e 2 :^: A, R1 (hl_NUMERAL hl_zero) (hl_NUMERAL hl_zero) = 1 /\ ((forall m n m' n' :e omega, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_add m m') (hl_add n n') = 1) /\ (hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> R1 (f x) (g x) = 1))) -> R1 (hl_nsum A s f) (hl_nsum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:1766 / NSUM_CLOSED_NONEMPTY   (hash md5:bf91ac3ae087e0e8bbbc048ac1f06a3a)
Theorem hlt_NSUM_CLOSED_NONEMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: omega, forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ ((forall x y :e omega, P x = 1 /\ P y = 1 -> P (hl_add x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1))) -> P (hl_nsum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:1776 / NSUM_RELATED_NONEMPTY   (hash md5:5b9bb521d6c4ada93dc422dac802c642)
Theorem hlt_NSUM_RELATED_NONEMPTY : forall A:set, A <> Empty -> forall R1 :e 2 :^: omega :^: omega, forall f g :e omega :^: A, forall s :e 2 :^: A, (forall m n m' n' :e omega, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_add m m') (hl_add n n') = 1) /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> R1 (f x) (g x) = 1))) -> R1 (hl_nsum A s f) (hl_nsum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:1787 / NSUM_ADD_NUMSEG   (hash md5:a55b9828c8a7c0b32333c41ca18266d7)
Theorem hlt_NSUM_ADD_NUMSEG : forall f g :e omega :^: omega, forall m n :e omega, hl_nsum omega (hl_numseg m n) (fun i :e omega => hl_add (f i) (g i)) = hl_add (hl_nsum omega (hl_numseg m n) f) (hl_nsum omega (hl_numseg m n) g).
Admitted.

// HOL Light: iterate.ml:1791 / NSUM_LE_NUMSEG   (hash md5:56029be47bd352afd9cd53f2c3adf9e1)
Theorem hlt_NSUM_LE_NUMSEG : forall f g :e omega :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> hl_le (f i) (g i) = 1) -> hl_le (hl_nsum omega (hl_numseg m n) f) (hl_nsum omega (hl_numseg m n) g) = 1.
Admitted.

// HOL Light: iterate.ml:1796 / NSUM_EQ_NUMSEG   (hash md5:4eca1bee34a99af74a1182e3e459a129)
Theorem hlt_NSUM_EQ_NUMSEG : forall f g :e omega :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = g i) -> hl_nsum omega (hl_numseg m n) f = hl_nsum omega (hl_numseg m n) g.
Admitted.

// HOL Light: iterate.ml:1801 / NSUM_CONST_NUMSEG   (hash md5:029dda167c24ca13b4ececb2b1815376)
Theorem hlt_NSUM_CONST_NUMSEG : forall c m n :e omega, hl_nsum omega (hl_numseg m n) (fun n1 :e omega => c) = hl_mul (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m) c.
Admitted.

// HOL Light: iterate.ml:1805 / NSUM_EQ_0_NUMSEG   (hash md5:4d22eaae921e3d169513e4ef14ce6d6f)
Theorem hlt_NSUM_EQ_0_NUMSEG : forall f :e omega :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = hl_NUMERAL hl_zero) -> hl_nsum omega (hl_numseg m n) f = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: iterate.ml:1809 / NSUM_EQ_0_IFF_NUMSEG   (hash md5:4c4d2ad99348caf6b36ebbf4d88f30f7)
Theorem hlt_NSUM_EQ_0_IFF_NUMSEG : forall f :e omega :^: omega, forall m n :e omega, hl_nsum omega (hl_numseg m n) f = hl_NUMERAL hl_zero <-> forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: iterate.ml:1813 / NSUM_TRIV_NUMSEG   (hash md5:2849809ec3ae57f0578c0e52b74ff0c8)
Theorem hlt_NSUM_TRIV_NUMSEG : forall f :e omega :^: omega, forall m n :e omega, hl_lt n m = 1 -> hl_nsum omega (hl_numseg m n) f = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: iterate.ml:1817 / NSUM_SING_NUMSEG   (hash md5:3b2aa5bc7206f1f097e1e1431bdef1c3)
Theorem hlt_NSUM_SING_NUMSEG : forall f :e omega :^: omega, forall n :e omega, hl_nsum omega (hl_numseg n n) f = f n.
Admitted.

// HOL Light: iterate.ml:1821 / NSUM_CLAUSES_NUMSEG   (hash md5:8f56b2d7e84fde4b0c7cdd4d2a6bc514)
Theorem hlt_NSUM_CLAUSES_NUMSEG : forall f :e omega :^: omega, (forall m :e omega, hl_nsum omega (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND omega (if m = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_NUMERAL hl_zero)) /\ forall m n :e omega, hl_nsum omega (hl_numseg m (hl_SUC n)) f = hl_COND omega (hl_le m (hl_SUC n)) (hl_add (hl_nsum omega (hl_numseg m n) f) (f (hl_SUC n))) (hl_nsum omega (hl_numseg m n) f).
Admitted.

// HOL Light: iterate.ml:1828 / NSUM_CLAUSES_NUMSEG_LT   (hash md5:826188118a7f4607566ae824186bc52a)
Theorem hlt_NSUM_CLAUSES_NUMSEG_LT : forall f :e omega :^: omega, hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_305 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_305 (hl_lt i (hl_NUMERAL hl_zero)) i = 1 then 1 else 0)) f = hl_NUMERAL hl_zero /\ forall k :e omega, hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_306 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_306 (hl_lt i (hl_SUC k)) i = 1 then 1 else 0)) f = hl_add (hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_307 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_307 (hl_lt i k) i = 1 then 1 else 0)) f) (f k).
Admitted.

// HOL Light: iterate.ml:1834 / NSUM_CLAUSES_NUMSEG_LE   (hash md5:d25bf365d744139dc5aa88b3350b68bf)
Theorem hlt_NSUM_CLAUSES_NUMSEG_LE : forall f :e omega :^: omega, hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_308 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_308 (hl_le i (hl_NUMERAL hl_zero)) i = 1 then 1 else 0)) f = f (hl_NUMERAL hl_zero) /\ forall k :e omega, hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_309 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_309 (hl_le i (hl_SUC k)) i = 1 then 1 else 0)) f = hl_add (hl_nsum omega (hl_GSPEC omega (fun GEN_PVAR_310 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_310 (hl_le i k) i = 1 then 1 else 0)) f) (f (hl_SUC k)).
Admitted.

// HOL Light: iterate.ml:1840 / NSUM_SWAP_NUMSEG   (hash md5:92168ed13fd8c7a32b73f4290a116ae0)
Theorem hlt_NSUM_SWAP_NUMSEG : forall a b c d :e omega, forall f :e omega :^: omega :^: omega, hl_nsum omega (hl_numseg a b) (fun i :e omega => hl_nsum omega (hl_numseg c d) (f i)) = hl_nsum omega (hl_numseg c d) (fun j :e omega => hl_nsum omega (hl_numseg a b) (fun i :e omega => f i j)).
Admitted.

// HOL Light: iterate.ml:1846 / NSUM_ADD_SPLIT   (hash md5:d29d60b28675d6e3d2296953c3035d15)
Theorem hlt_NSUM_ADD_SPLIT : forall f :e omega :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_nsum omega (hl_numseg m (hl_add n p)) f = hl_add (hl_nsum omega (hl_numseg m n) f) (hl_nsum omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add n p)) f).
Admitted.

// HOL Light: iterate.ml:1852 / NSUM_OFFSET   (hash md5:f5c432302f5cab438911f27eb17e7655)
Theorem hlt_NSUM_OFFSET : forall p :e omega, forall f :e omega :^: omega, forall m n :e omega, hl_nsum omega (hl_numseg (hl_add m p) (hl_add n p)) f = hl_nsum omega (hl_numseg m n) (fun i :e omega => f (hl_add i p)).
Admitted.

// HOL Light: iterate.ml:1857 / NSUM_OFFSET_0   (hash md5:44309fb952465264a9681df86e23d463)
Theorem hlt_NSUM_OFFSET_0 : forall f :e omega :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_nsum omega (hl_numseg m n) f = hl_nsum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => f (hl_add i m)).
Admitted.

// HOL Light: iterate.ml:1861 / NSUM_CLAUSES_LEFT   (hash md5:6d92e7535e8754709276c037b5098d69)
Theorem hlt_NSUM_CLAUSES_LEFT : forall f :e omega :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_nsum omega (hl_numseg m n) f = hl_add (f m) (hl_nsum omega (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f).
Admitted.

// HOL Light: iterate.ml:1866 / NSUM_CLAUSES_RIGHT   (hash md5:205790b9928237e3eacee6ae64166891)
Theorem hlt_NSUM_CLAUSES_RIGHT : forall f :e omega :^: omega, forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ hl_le m n = 1 -> hl_nsum omega (hl_numseg m n) f = hl_add (hl_nsum omega (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (f n).
Admitted.

// HOL Light: iterate.ml:1871 / NSUM_PAIR   (hash md5:aa53bb4cc0807186ac74bcecbdac339f)
Theorem hlt_NSUM_PAIR : forall f :e omega :^: omega, forall m n :e omega, hl_nsum omega (hl_numseg (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero)))) f = hl_nsum omega (hl_numseg m n) (fun i :e omega => hl_add (f (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (f (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: iterate.ml:1876 / NSUM_REFLECT   (hash md5:64551ebd98c10b5b065ce19f1d3e6e9f)
Theorem hlt_NSUM_REFLECT : forall x :e omega :^: omega, forall m n :e omega, hl_nsum omega (hl_numseg m n) x = hl_COND omega (hl_lt n m) (hl_NUMERAL hl_zero) (hl_nsum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => x (hl_sub n i))).
Admitted.

// HOL Light: iterate.ml:1882 / MOD_NSUM_MOD   (hash md5:4f42d4c566f89f5c49847f1d1e226e31)
Theorem hlt_MOD_NSUM_MOD : forall A:set, A <> Empty -> forall f :e omega :^: A, forall n :e omega, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_MOD (hl_nsum A s f) n = hl_MOD (hl_nsum A s (fun i :e A => hl_MOD (f i) n)) n.
Admitted.

// HOL Light: iterate.ml:1892 / MOD_NSUM_MOD_NUMSEG   (hash md5:6a55a41118aa479f84a57f8f0cb9c9ab)
Theorem hlt_MOD_NSUM_MOD_NUMSEG : forall f :e omega :^: omega, forall a b n :e omega, hl_MOD (hl_nsum omega (hl_numseg a b) f) n = hl_MOD (hl_nsum omega (hl_numseg a b) (fun i :e omega => hl_MOD (f i) n)) n.
Admitted.

// HOL Light: iterate.ml:1897 / CONG_NSUM   (hash md5:6dca1630a965c35bdb7639f08ad4cb94)
Theorem hlt_CONG_NSUM : forall A:set, A <> Empty -> forall n :e omega, forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_sym_3d3d omega (f x) (g x) (hl_num_mod n) = 1) -> hl_sym_3d3d omega (hl_nsum A s f) (hl_nsum A s g) (hl_num_mod n) = 1.
Admitted.

// HOL Light: iterate.ml:1923 / CARD_UNIONS_IMAGE   (hash md5:5d430c768ca9536456e51355c5591b70)
Theorem hlt_CARD_UNIONS_IMAGE : forall A K:set, A <> Empty -> K <> Empty -> forall f :e 2 :^: A :^: K, forall s :e 2 :^: K, hl_FINITE K s = 1 /\ ((forall t :e K, hl_IN K t s = 1 -> hl_FINITE A (f t) = 1) /\ (forall t u :e K, hl_IN K t s = 1 /\ (hl_IN K u s = 1 /\ ~ t = u) -> hl_INTER A (f t) (f u) = hl_EMPTY A)) -> hl_CARD A (hl_UNIONS A (hl_IMAGE K (2 :^: A) f s)) = hl_nsum K s (fun i :e K => hl_CARD A (f i)).
Admitted.

// HOL Light: iterate.ml:1939 / CARD_UNIONS   (hash md5:b4da9d18c124538b8ac870ad0cddaa2a)
Theorem hlt_CARD_UNIONS : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) s = 1 /\ ((forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> hl_FINITE A t = 1) /\ (forall t u :e 2 :^: A, hl_IN (2 :^: A) t s = 1 /\ (hl_IN (2 :^: A) u s = 1 /\ ~ t = u) -> hl_INTER A t u = hl_EMPTY A)) -> hl_CARD A (hl_UNIONS A s) = hl_nsum (2 :^: A) s (hl_CARD A).
Admitted.

// HOL Light: iterate.ml:1984 / sum   (hash md5:0d4e918739420e483788a227f7a5b020)
Theorem hlt_sum : forall A:set, A <> Empty -> hl_sum A = hl_iterate R A hl_real_add.
Admitted.

// HOL Light: iterate.ml:1987 / NEUTRAL_REAL_ADD   (hash md5:1e3accec9aefb529760ca0411db5fa95)
Theorem hlt_NEUTRAL_REAL_ADD : hl_neutral R hl_real_add = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:1992 / MONOIDAL_REAL_ADD   (hash md5:56f4a58acc8d9b328a62928ef674af6d)
Theorem hlt_MONOIDAL_REAL_ADD : hl_monoidal R hl_real_add = 1.
Admitted.

// HOL Light: iterate.ml:1996 / SUM_DEGENERATE   (hash md5:cf2bc0c49dfb27c1270078e50a73d766)
Theorem hlt_SUM_DEGENERATE : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, ~ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_313 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_313 (if hl_IN A x s = 1 /\ ~ f x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_sum A s f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2001 / SUM_CLAUSES   (hash md5:203f6a0710932fdee70420e4b7f58758)
Theorem hlt_SUM_CLAUSES : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e R :^: A, hl_sum A (hl_EMPTY A) f = hl_real_of_num (hl_NUMERAL hl_zero)) /\ forall x :e B, forall f :e R :^: B, forall s :e 2 :^: B, hl_FINITE B s = 1 -> hl_sum B (hl_INSERT B x s) f = hl_COND R (hl_IN B x s) (hl_sum B s f) (hl_real_add (f x) (hl_sum B s f)).
Admitted.

// HOL Light: iterate.ml:2011 / SUM_UNION   (hash md5:99cf8e67c562be8735bd4e8149e3b218)
Theorem hlt_SUM_UNION : forall A:set, A <> Empty -> forall f :e R :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_DISJOINT A s t = 1) -> hl_sum A (hl_UNION A s t) f = hl_real_add (hl_sum A s f) (hl_sum A t f).
Admitted.

// HOL Light: iterate.ml:2017 / SUM_DIFF   (hash md5:0f8998912661f8263d3bf700d2ca72de)
Theorem hlt_SUM_DIFF : forall A:set, A <> Empty -> forall f :e R :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A t s = 1 -> hl_sum A (hl_DIFF A s t) f = hl_real_sub (hl_sum A s f) (hl_sum A t f).
Admitted.

// HOL Light: iterate.ml:2021 / SUM_INCL_EXCL   (hash md5:28f1f5e523be405c4849e42f5973225c)
Theorem hlt_SUM_INCL_EXCL : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall f :e R :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_real_add (hl_sum A s f) (hl_sum A t f) = hl_real_add (hl_sum A (hl_UNION A s t) f) (hl_sum A (hl_INTER A s t) f).
Admitted.

// HOL Light: iterate.ml:2028 / SUM_SUPPORT   (hash md5:57b0be054e27b9f99a4b2ab72a68ad82)
Theorem hlt_SUM_SUPPORT : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_sum A (hl_support R A hl_real_add f s) f = hl_sum A s f.
Admitted.

// HOL Light: iterate.ml:2032 / SUM_ADD   (hash md5:7b4b78190b429e4506561b3032353a91)
Theorem hlt_SUM_ADD : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_sum A s (fun x :e A => hl_real_add (f x) (g x)) = hl_real_add (hl_sum A s f) (hl_sum A s g).
Admitted.

// HOL Light: iterate.ml:2036 / SUM_ADD_GEN   (hash md5:2a8f1f189d4ef574f5fc61d3c4420c16)
Theorem hlt_SUM_ADD_GEN : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_314 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_314 (if hl_IN A x s = 1 /\ ~ f x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_315 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_315 (if hl_IN A x s = 1 /\ ~ g x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_sum A s (fun x :e A => hl_real_add (f x) (g x)) = hl_real_add (hl_sum A s f) (hl_sum A s g).
Admitted.

// HOL Light: iterate.ml:2043 / SUM_EQ_0   (hash md5:5181a97f1d05a55742f2aff158ddcfb6)
Theorem hlt_SUM_EQ_0 : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_sum A s f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2048 / SUM_0   (hash md5:1c9627d57c17c4075448d905a78bd0e7)
Theorem hlt_SUM_0 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_sum A s (fun n :e A => hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2052 / SUM_LMUL   (hash md5:39ee86a2da20af0edfeadb04886f3a85)
Theorem hlt_SUM_LMUL : forall A:set, A <> Empty -> forall f :e R :^: A, forall c :e R, forall s :e 2 :^: A, hl_sum A s (fun x :e A => hl_real_mul c (f x)) = hl_real_mul c (hl_sum A s f).
Admitted.

// HOL Light: iterate.ml:2066 / SUM_RMUL   (hash md5:7d81c59e395541283794b8d3324d177e)
Theorem hlt_SUM_RMUL : forall A:set, A <> Empty -> forall f :e R :^: A, forall c :e R, forall s :e 2 :^: A, hl_sum A s (fun x :e A => hl_real_mul (f x) c) = hl_real_mul (hl_sum A s f) c.
Admitted.

// HOL Light: iterate.ml:2070 / SUM_NEG   (hash md5:c03ccc256bdf03eb6450da886a9af396)
Theorem hlt_SUM_NEG : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_sum A s (fun x :e A => hl_real_neg (f x)) = hl_real_neg (hl_sum A s f).
Admitted.

// HOL Light: iterate.ml:2075 / SUM_SUB   (hash md5:3478c87b609f0744e3e37e895a8a9952)
Theorem hlt_SUM_SUB : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_sum A s (fun x :e A => hl_real_sub (f x) (g x)) = hl_real_sub (hl_sum A s f) (hl_sum A s g).
Admitted.

// HOL Light: iterate.ml:2079 / SUM_LE   (hash md5:0e0105c0d9f40aea5912f0ccbd2a9e37)
Theorem hlt_SUM_LE : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (f x) (g x) = 1) -> hl_real_le (hl_sum A s f) (hl_sum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:2086 / SUM_LT   (hash md5:e5659f550c2b9f7233cf8432953dde8a)
Theorem hlt_SUM_LT : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_real_le (f x) (g x) = 1) /\ (exists x :e A, hl_IN A x s = 1 /\ hl_real_lt (f x) (g x) = 1)) -> hl_real_lt (hl_sum A s f) (hl_sum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:2099 / SUM_LT_ALL   (hash md5:34fc7a3d70eca3beae011b3113f2043f)
Theorem hlt_SUM_LT_ALL : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_lt (f x) (g x) = 1)) -> hl_real_lt (hl_sum A s f) (hl_sum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:2105 / SUM_POS_LT   (hash md5:d437d8641afb4163691134cb08bd9df2)
Theorem hlt_SUM_POS_LT : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) /\ (exists x :e A, hl_IN A x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1)) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_sum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:2117 / SUM_POS_LT_ALL   (hash md5:0c7facda2cf3c1dd46872dce3db836d4)
Theorem hlt_SUM_POS_LT_ALL : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall i :e A, hl_IN A i s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f i) = 1)) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_sum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:2123 / SUM_EQ   (hash md5:ee61b6a5d29103b6346f6c0cc83813d3)
Theorem hlt_SUM_EQ : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_sum A s f = hl_sum A s g.
Admitted.

// HOL Light: iterate.ml:2128 / SUM_ABS   (hash md5:eccb7a34284816ae4d7412b50285dca7)
Theorem hlt_SUM_ABS : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_real_le (hl_real_abs (hl_sum A s f)) (hl_sum A s (fun x :e A => hl_real_abs (f x))) = 1.
Admitted.

// HOL Light: iterate.ml:2134 / SUM_ABS_LE   (hash md5:5c58cf2a603e72c55aef96b24d8e2016)
Theorem hlt_SUM_ABS_LE : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_abs (f x)) (g x) = 1) -> hl_real_le (hl_real_abs (hl_sum A s f)) (hl_sum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:2143 / SUM_CONST   (hash md5:b9746343aba09f7fa0dd26b5574e0265)
Theorem hlt_SUM_CONST : forall A:set, A <> Empty -> forall c :e R, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_sum A s (fun n :e A => c) = hl_real_mul (hl_real_of_num (hl_CARD A s)) c.
Admitted.

// HOL Light: iterate.ml:2149 / SUM_POS_LE   (hash md5:b8a3d3ce2f3a1fcfe0d976d6b131485e)
Theorem hlt_SUM_POS_LE : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_sum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:2160 / SUM_POS_BOUND   (hash md5:69c42378ab519bed5017861dcd28751f)
Theorem hlt_SUM_POS_BOUND : forall A:set, A <> Empty -> forall f :e R :^: A, forall b :e R, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) /\ hl_real_le (hl_sum A s f) b = 1) -> forall x :e A, hl_IN A x s = 1 -> hl_real_le (f x) b = 1.
Admitted.

// HOL Light: iterate.ml:2170 / SUM_POS_EQ_0   (hash md5:11557ada894c285c3a3fc1ceceda82d5)
Theorem hlt_SUM_POS_EQ_0 : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) /\ hl_sum A s f = hl_real_of_num (hl_NUMERAL hl_zero)) -> forall x :e A, hl_IN A x s = 1 -> f x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2177 / SUM_ZERO_EXISTS   (hash md5:b9b7a323b3aa5f5aa00ff870949d6383)
Theorem hlt_SUM_ZERO_EXISTS : forall A:set, A <> Empty -> forall u :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_sum A s u = hl_real_of_num (hl_NUMERAL hl_zero) -> (forall i :e A, hl_IN A i s = 1 -> u i = hl_real_of_num (hl_NUMERAL hl_zero)) \/ exists j k :e A, hl_IN A j s = 1 /\ (hl_real_lt (u j) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 /\ (hl_IN A k s = 1 /\ hl_real_gt (u k) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1)).
Admitted.

// HOL Light: iterate.ml:2190 / SUM_DELETE   (hash md5:9115ff457a0bbc09a6f883efc9265e6b)
Theorem hlt_SUM_DELETE : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_sum A (hl_DELETE A s a) f = hl_real_sub (hl_sum A s f) (f a).
Admitted.

// HOL Light: iterate.ml:2195 / SUM_DELETE_CASES   (hash md5:002ac372707ee732655de7ee0657600a)
Theorem hlt_SUM_DELETE_CASES : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 -> hl_sum A (hl_DELETE A s a) f = hl_COND R (hl_IN A a s) (hl_real_sub (hl_sum A s f) (f a)) (hl_sum A s f).
Admitted.

// HOL Light: iterate.ml:2202 / SUM_SING   (hash md5:dbf2c5eb44671fdd1484486c9cfb2ed3)
Theorem hlt_SUM_SING : forall A:set, A <> Empty -> forall f :e R :^: A, forall x :e A, hl_sum A (hl_INSERT A x (hl_EMPTY A)) f = f x.
Admitted.

// HOL Light: iterate.ml:2206 / SUM_DELTA   (hash md5:aa414c33d7c431d140dff6eb4e03549d)
Theorem hlt_SUM_DELTA : forall A:set, A <> Empty -> forall b :e R, forall s :e 2 :^: A, forall a :e A, hl_sum A s (fun x :e A => hl_COND R (if x = a then 1 else 0) b (hl_real_of_num (hl_NUMERAL hl_zero))) = hl_COND R (hl_IN A a s) b (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: iterate.ml:2211 / SUM_SWAP   (hash md5:58e7fe89643cd6e38e505037691016e4)
Theorem hlt_SUM_SWAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e R :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_sum A s (fun i :e A => hl_sum B t (f i)) = hl_sum B t (fun j :e B => hl_sum A s (fun i :e A => f i j)).
Admitted.

// HOL Light: iterate.ml:2219 / SUM_IMAGE   (hash md5:ad177bf18ca1c44876fd0f53adc1ddbc)
Theorem hlt_SUM_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e R :^: B, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> hl_sum B (hl_IMAGE A B f s) g = hl_sum A s (hl_o B R A g f).
Admitted.

// HOL Light: iterate.ml:2226 / SUM_SUPERSET   (hash md5:60167fceb19f58f5d607c04bc4f12312)
Theorem hlt_SUM_SUPERSET : forall A:set, A <> Empty -> forall f :e R :^: A, forall u v :e 2 :^: A, hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_sum A v f = hl_sum A u f.
Admitted.

// HOL Light: iterate.ml:2232 / SUM_UNIV   (hash md5:44fb035f34f7ec4e8b74faf1dc401597)
Theorem hlt_SUM_UNIV : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support R A hl_real_add f (hl_UNIV A)) s = 1 -> hl_sum A s f = hl_sum A (hl_UNIV A) f.
Admitted.

// HOL Light: iterate.ml:2237 / SUM_UNION_RZERO   (hash md5:ec172d9a16f0b8604b74e1941603a05e)
Theorem hlt_SUM_UNION_RZERO : forall A:set, A <> Empty -> forall f :e R :^: A, forall u v :e 2 :^: A, hl_FINITE A u = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_sum A (hl_UNION A u v) f = hl_sum A u f.
Admitted.

// HOL Light: iterate.ml:2246 / SUM_UNION_LZERO   (hash md5:1838cb0dd3728d9cecd748dfcfd694d3)
Theorem hlt_SUM_UNION_LZERO : forall A:set, A <> Empty -> forall f :e R :^: A, forall u v :e 2 :^: A, hl_FINITE A v = 1 /\ (forall x :e A, hl_IN A x u = 1 /\ ~ hl_IN A x v = 1 -> f x = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_sum A (hl_UNION A u v) f = hl_sum A v f.
Admitted.

// HOL Light: iterate.ml:2252 / SUM_RESTRICT   (hash md5:466f7eb37166fb435670509f4e1c913f)
Theorem hlt_SUM_RESTRICT : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_sum A s (fun x :e A => hl_COND R (hl_IN A x s) (f x) (hl_real_of_num (hl_NUMERAL hl_zero))) = hl_sum A s f.
Admitted.

// HOL Light: iterate.ml:2257 / SUM_BOUND   (hash md5:66290aa4e3a38499cb4b519d4b4ff7e5)
Theorem hlt_SUM_BOUND : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, forall b :e R, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (f x) b = 1) -> hl_real_le (hl_sum A s f) (hl_real_mul (hl_real_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: iterate.ml:2262 / SUM_BOUND_GEN   (hash md5:ca404ead08668a21c1f24695606b91e3)
Theorem hlt_SUM_BOUND_GEN : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, forall b :e R, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (f x) (hl_real_div b (hl_real_of_num (hl_CARD A s))) = 1)) -> hl_real_le (hl_sum A s f) b = 1.
Admitted.

// HOL Light: iterate.ml:2268 / SUM_ABS_BOUND   (hash md5:251fdbb8b3aa8134ec647e5b86e2627d)
Theorem hlt_SUM_ABS_BOUND : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, forall b :e R, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_abs (f x)) b = 1) -> hl_real_le (hl_real_abs (hl_sum A s f)) (hl_real_mul (hl_real_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: iterate.ml:2275 / SUM_BOUND_LT   (hash md5:62601977e9a7dad52a365ec8419857a6)
Theorem hlt_SUM_BOUND_LT : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, forall b :e R, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_real_le (f x) b = 1) /\ (exists x :e A, hl_IN A x s = 1 /\ hl_real_lt (f x) b = 1)) -> hl_real_lt (hl_sum A s f) (hl_real_mul (hl_real_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: iterate.ml:2283 / SUM_BOUND_LT_ALL   (hash md5:e1d2b584d13f31cb32528a71db221122)
Theorem hlt_SUM_BOUND_LT_ALL : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, forall b :e R, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_lt (f x) b = 1)) -> hl_real_lt (hl_sum A s f) (hl_real_mul (hl_real_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: iterate.ml:2288 / SUM_BOUND_LT_GEN   (hash md5:1b2c90997554c4bad3398e0d0f69aabe)
Theorem hlt_SUM_BOUND_LT_GEN : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, forall b :e R, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_lt (f x) (hl_real_div b (hl_real_of_num (hl_CARD A s))) = 1)) -> hl_real_lt (hl_sum A s f) b = 1.
Admitted.

// HOL Light: iterate.ml:2294 / SUM_UNION_EQ   (hash md5:fc18bdad25464fe5626ab24a84391a73)
Theorem hlt_SUM_UNION_EQ : forall A:set, A <> Empty -> forall f :e R :^: A, forall s t u :e 2 :^: A, hl_FINITE A u = 1 /\ (hl_INTER A s t = hl_EMPTY A /\ hl_UNION A s t = u) -> hl_real_add (hl_sum A s f) (hl_sum A t f) = hl_sum A u f.
Admitted.

// HOL Light: iterate.ml:2300 / SUM_EQ_SUPERSET   (hash md5:0cc6c8aa386d9bb00cb239385514e157)
Theorem hlt_SUM_EQ_SUPERSET : forall A:set, A <> Empty -> forall g f :e R :^: A, forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ ((forall x :e A, hl_IN A x t = 1 -> f x = g x) /\ (forall x :e A, hl_IN A x s = 1 /\ ~ hl_IN A x t = 1 -> f x = hl_real_of_num (hl_NUMERAL hl_zero)))) -> hl_sum A s f = hl_sum A t g.
Admitted.

// HOL Light: iterate.ml:2308 / SUM_RESTRICT_SET   (hash md5:f8dbd0f079957084cd00b0d2c6f3b4af)
Theorem hlt_SUM_RESTRICT_SET : forall A:set, A <> Empty -> forall P s :e 2 :^: A, forall f :e R :^: A, hl_sum A (hl_GSPEC A (fun GEN_PVAR_318 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_318 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_sum A s (fun x :e A => hl_COND R (P x) (f x) (hl_real_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: iterate.ml:2313 / SUM_SUM_RESTRICT   (hash md5:5945aa04459515a934d2e536a5f547d5)
Theorem hlt_SUM_SUM_RESTRICT : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall f :e R :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_sum A s (fun x :e A => hl_sum B (hl_GSPEC B (fun GEN_PVAR_319 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_319 (if hl_IN B y t = 1 /\ R1 x y = 1 then 1 else 0) y = 1 then 1 else 0)) (fun y :e B => f x y)) = hl_sum B t (fun y :e B => hl_sum A (hl_GSPEC A (fun GEN_PVAR_320 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_320 (if hl_IN A x s = 1 /\ R1 x y = 1 then 1 else 0) x = 1 then 1 else 0)) (fun x :e A => f x y)).
Admitted.

// HOL Light: iterate.ml:2321 / CARD_EQ_SUM   (hash md5:3545e1cdd43a5b9cca47c000e7931ca3)
Theorem hlt_CARD_EQ_SUM : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_real_of_num (hl_CARD A s) = hl_sum A s (fun x :e A => hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: iterate.ml:2325 / SUM_MULTICOUNT_GEN   (hash md5:4f21d5476c4f49949cc34b0c3fe4f38d)
Theorem hlt_SUM_MULTICOUNT_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, forall k :e omega :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (forall j :e B, hl_IN B j t = 1 -> hl_CARD A (hl_GSPEC A (fun GEN_PVAR_322 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_322 (if hl_IN A i s = 1 /\ R1 i j = 1 then 1 else 0) i = 1 then 1 else 0)) = k j)) -> hl_sum A s (fun i :e A => hl_real_of_num (hl_CARD B (hl_GSPEC B (fun GEN_PVAR_323 :e B => if exists j :e B, hl_SETSPEC B GEN_PVAR_323 (if hl_IN B j t = 1 /\ R1 i j = 1 then 1 else 0) j = 1 then 1 else 0)))) = hl_sum B t (fun i :e B => hl_real_of_num (k i)).
Admitted.

// HOL Light: iterate.ml:2344 / SUM_MULTICOUNT   (hash md5:e60ec96027855390e454c72b8e469a51)
Theorem hlt_SUM_MULTICOUNT : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, forall k :e omega, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (forall j :e B, hl_IN B j t = 1 -> hl_CARD A (hl_GSPEC A (fun GEN_PVAR_324 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_324 (if hl_IN A i s = 1 /\ R1 i j = 1 then 1 else 0) i = 1 then 1 else 0)) = k)) -> hl_sum A s (fun i :e A => hl_real_of_num (hl_CARD B (hl_GSPEC B (fun GEN_PVAR_325 :e B => if exists j :e B, hl_SETSPEC B GEN_PVAR_325 (if hl_IN B j t = 1 /\ R1 i j = 1 then 1 else 0) j = 1 then 1 else 0)))) = hl_real_of_num (hl_mul k (hl_CARD B t)).
Admitted.

// HOL Light: iterate.ml:2354 / SUM_IMAGE_GEN   (hash md5:68df2ab834c3fdc35aaabce52f7500b5)
Theorem hlt_SUM_IMAGE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_sum A s g = hl_sum B (hl_IMAGE A B f s) (fun y :e B => hl_sum A (hl_GSPEC A (fun GEN_PVAR_326 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_326 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: iterate.ml:2362 / SUM_GROUP   (hash md5:455c6429cb2cb0bb8bb52cea2b6b9b86)
Theorem hlt_SUM_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e R :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_sum B t (fun y :e B => hl_sum A (hl_GSPEC A (fun GEN_PVAR_327 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_327 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g) = hl_sum A s g.
Admitted.

// HOL Light: iterate.ml:2372 / SUM_GROUP_RELATION   (hash md5:24a38dbcad8c4d824c9ad51111cd6310)
Theorem hlt_SUM_GROUP_RELATION : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall g :e R :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_exists_unique B (fun y :e B => if hl_IN B y t = 1 /\ R1 x y = 1 then 1 else 0) = 1) -> hl_sum B t (fun y :e B => hl_sum A (hl_GSPEC A (fun GEN_PVAR_328 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_328 (if hl_IN A x s = 1 /\ R1 x y = 1 then 1 else 0) x = 1 then 1 else 0)) g) = hl_sum A s g.
Admitted.

// HOL Light: iterate.ml:2386 / REAL_OF_NUM_SUM   (hash md5:5ddff68d965fb2efd936b7d447eefa06)
Theorem hlt_REAL_OF_NUM_SUM : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_real_of_num (hl_nsum A s f) = hl_sum A s (fun x :e A => hl_real_of_num (f x)).
Admitted.

// HOL Light: iterate.ml:2391 / SUM_SUBSET   (hash md5:9fbe449a414156cf9fc147c1e841e0e1)
Theorem hlt_SUM_SUBSET : forall A:set, A <> Empty -> forall u v :e 2 :^: A, forall f :e R :^: A, hl_FINITE A u = 1 /\ (hl_FINITE A v = 1 /\ ((forall x :e A, hl_IN A x (hl_DIFF A u v) = 1 -> hl_real_le (f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) /\ (forall x :e A, hl_IN A x (hl_DIFF A v u) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1))) -> hl_real_le (hl_sum A u f) (hl_sum A v f) = 1.
Admitted.

// HOL Light: iterate.ml:2409 / SUM_SUBSET_SIMPLE   (hash md5:94d90fab1c9061f9950d6847565174e9)
Theorem hlt_SUM_SUBSET_SIMPLE : forall A:set, A <> Empty -> forall u v :e 2 :^: A, forall f :e R :^: A, hl_FINITE A v = 1 /\ (hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x (hl_DIFF A v u) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1)) -> hl_real_le (hl_sum A u f) (hl_sum A v f) = 1.
Admitted.

// HOL Light: iterate.ml:2416 / SUM_MUL_BOUND   (hash md5:bf61fc192814a23db119d1c84dfbe5fa)
Theorem hlt_SUM_MUL_BOUND : forall A:set, A <> Empty -> forall a b :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (a i) = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (b i) = 1) -> hl_real_le (hl_sum A s (fun i :e A => hl_real_mul (a i) (b i))) (hl_real_mul (hl_sum A s a) (hl_sum A s b)) = 1.
Admitted.

// HOL Light: iterate.ml:2427 / SUM_IMAGE_NONZERO   (hash md5:707bd4dd1466ec983dbfc112fb5c3c71)
Theorem hlt_SUM_IMAGE_NONZERO : forall A B:set, A <> Empty -> B <> Empty -> forall d :e R :^: B, forall i :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (~ x = y /\ i x = i y)) -> d (i x) = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_sum B (hl_IMAGE A B i s) d = hl_sum A s (hl_o B R A d i).
Admitted.

// HOL Light: iterate.ml:2435 / SUM_BIJECTION   (hash md5:89065b05278b69f0971846666b2aa165)
Theorem hlt_SUM_BIJECTION : forall A:set, A <> Empty -> forall f :e R :^: A, forall p :e A :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall y :e A, hl_IN A y s = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ p x = y then 1 else 0) = 1) -> hl_sum A s f = hl_sum A s (hl_o A R A f p).
Admitted.

// HOL Light: iterate.ml:2443 / SUM_SUM_PRODUCT   (hash md5:e92d662b4909d3bb0ae2489d58c6920b)
Theorem hlt_SUM_SUM_PRODUCT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, forall x :e R :^: B :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_FINITE B (t i) = 1) -> hl_sum A s (fun i :e A => hl_sum B (t i) (x i)) = hl_sum (A :*: B) (hl_GSPEC (A :*: B) (fun GEN_PVAR_329 :e A :*: B => if exists i :e A, exists j :e B, hl_SETSPEC (A :*: B) GEN_PVAR_329 (if hl_IN A i s = 1 /\ hl_IN B j (t i) = 1 then 1 else 0) (hl_pair A B i j) = 1 then 1 else 0)) (hl_GABS (R :^: (A :*: B)) (fun f :e R :^: (A :*: B) => if forall i :e A, forall j :e B, hl_GEQ R (f (hl_pair A B i j)) (x i j) = 1 then 1 else 0)).
Admitted.

// HOL Light: iterate.ml:2451 / SUM_EQ_GENERAL   (hash md5:df5ba265a7a1dbcd2466ee8aee4466a6)
Theorem hlt_SUM_EQ_GENERAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e R :^: A, forall g :e R :^: B, forall h :e B :^: A, (forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ h x = y then 1 else 0) = 1) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ g (h x) = f x) -> hl_sum A s f = hl_sum B t g.
Admitted.

// HOL Light: iterate.ml:2459 / SUM_EQ_GENERAL_INVERSES   (hash md5:6023e1a0cc56764726cb9b4023c99ed5)
Theorem hlt_SUM_EQ_GENERAL_INVERSES : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e R :^: A, forall g :e R :^: B, forall h :e B :^: A, forall k :e A :^: B, (forall y :e B, hl_IN B y t = 1 -> hl_IN A (k y) s = 1 /\ h (k y) = y) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ (k (h x) = x /\ g (h x) = f x)) -> hl_sum A s f = hl_sum B t g.
Admitted.

// HOL Light: iterate.ml:2467 / SUM_INJECTION   (hash md5:28ff3c08efe38892a30c209b55e5d219)
Theorem hlt_SUM_INJECTION : forall A:set, A <> Empty -> forall f :e R :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)) -> hl_sum A s (hl_o A R A f p) = hl_sum A s f.
Admitted.

// HOL Light: iterate.ml:2476 / SUM_UNION_NONZERO   (hash md5:84f6dd2026ace33b52dd9f0a45b345dd)
Theorem hlt_SUM_UNION_NONZERO : forall A:set, A <> Empty -> forall f :e R :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ (forall x :e A, hl_IN A x (hl_INTER A s t) = 1 -> f x = hl_real_of_num (hl_NUMERAL hl_zero))) -> hl_sum A (hl_UNION A s t) f = hl_real_add (hl_sum A s f) (hl_sum A t f).
Admitted.

// HOL Light: iterate.ml:2483 / SUM_UNIONS_NONZERO   (hash md5:b54c2b4dc62e3ede0db963b081420d6d)
Theorem hlt_SUM_UNIONS_NONZERO : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) s = 1 /\ ((forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> hl_FINITE A t = 1) /\ (forall t1 t2 :e 2 :^: A, forall x :e A, hl_IN (2 :^: A) t1 s = 1 /\ (hl_IN (2 :^: A) t2 s = 1 /\ (~ t1 = t2 /\ (hl_IN A x t1 = 1 /\ hl_IN A x t2 = 1))) -> f x = hl_real_of_num (hl_NUMERAL hl_zero))) -> hl_sum A (hl_UNIONS A s) f = hl_sum (2 :^: A) s (fun t :e 2 :^: A => hl_sum A t f).
Admitted.

// HOL Light: iterate.ml:2498 / SUM_CASES   (hash md5:6c78670d1a595e06eec450ceab3bf430)
Theorem hlt_SUM_CASES : forall A:set, A <> Empty -> forall s P :e 2 :^: A, forall f g :e R :^: A, hl_FINITE A s = 1 -> hl_sum A s (fun x :e A => hl_COND R (P x) (f x) (g x)) = hl_real_add (hl_sum A (hl_GSPEC A (fun GEN_PVAR_330 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_330 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_sum A (hl_GSPEC A (fun GEN_PVAR_331 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_331 (if hl_IN A x s = 1 /\ ~ P x = 1 then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: iterate.ml:2505 / SUM_CASES_1   (hash md5:85382b31a011e76817af78ef3a3ac305)
Theorem hlt_SUM_CASES_1 : forall A:set, A <> Empty -> forall y :e R, forall f :e R :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_sum A s (fun x :e A => hl_COND R (if x = a then 1 else 0) y (f x)) = hl_real_add (hl_sum A s f) (hl_real_sub y (f a)).
Admitted.

// HOL Light: iterate.ml:2513 / SUM_LE_INCLUDED   (hash md5:ab36681ba3c1b6c0e01820654542b893)
Theorem hlt_SUM_LE_INCLUDED : forall A B:set, A <> Empty -> B <> Empty -> forall f :e R :^: A, forall g :e R :^: B, forall s :e 2 :^: A, forall t :e 2 :^: B, forall i :e A :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ ((forall y :e B, hl_IN B y t = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (g y) = 1) /\ (forall x :e A, hl_IN A x s = 1 -> exists y :e B, hl_IN B y t = 1 /\ (i y = x /\ hl_real_le (f x) (g y) = 1)))) -> hl_real_le (hl_sum A s f) (hl_sum B t g) = 1.
Admitted.

// HOL Light: iterate.ml:2539 / SUM_IMAGE_LE   (hash md5:9d96d8a1b295964a9112cd1e88774ad4)
Theorem hlt_SUM_IMAGE_LE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e R :^: B, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (g (f x)) = 1) -> hl_real_le (hl_sum B (hl_IMAGE A B f s) g) (hl_sum A s (hl_o B R A g f)) = 1.
Admitted.

// HOL Light: iterate.ml:2549 / SUM_CLOSED   (hash md5:e742371a98baddccfae53fa9cecceba7)
Theorem hlt_SUM_CLOSED : forall A:set, A <> Empty -> forall P :e 2 :^: R, forall f :e R :^: A, forall s :e 2 :^: A, P (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 /\ ((forall x y :e R, P x = 1 /\ P y = 1 -> P (hl_real_add x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1)) -> P (hl_sum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:2557 / SUM_RELATED   (hash md5:5b6ed235aff4ef771e394801213623b8)
Theorem hlt_SUM_RELATED : forall A:set, A <> Empty -> forall R1 :e 2 :^: R :^: R, forall f g :e R :^: A, forall s :e 2 :^: A, R1 (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 /\ ((forall m n m' n' :e R, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_real_add m m') (hl_real_add n n') = 1) /\ (hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> R1 (f x) (g x) = 1))) -> R1 (hl_sum A s f) (hl_sum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:2569 / SUM_CLOSED_NONEMPTY   (hash md5:70bf9e4f03f903da84587382743f730f)
Theorem hlt_SUM_CLOSED_NONEMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: R, forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ ((forall x y :e R, P x = 1 /\ P y = 1 -> P (hl_real_add x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1))) -> P (hl_sum A s f) = 1.
Admitted.

// HOL Light: iterate.ml:2579 / SUM_RELATED_NONEMPTY   (hash md5:853bf007cea4a6f5ae8f884655f49407)
Theorem hlt_SUM_RELATED_NONEMPTY : forall A:set, A <> Empty -> forall R1 :e 2 :^: R :^: R, forall f g :e R :^: A, forall s :e 2 :^: A, (forall m n m' n' :e R, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_real_add m m') (hl_real_add n n') = 1) /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> R1 (f x) (g x) = 1))) -> R1 (hl_sum A s f) (hl_sum A s g) = 1.
Admitted.

// HOL Light: iterate.ml:2590 / REAL_OF_NUM_SUM_GEN   (hash md5:d008569d378fafe41bdfabdf038831bf)
Theorem hlt_REAL_OF_NUM_SUM_GEN : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_335 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_335 (if hl_IN A i s = 1 /\ ~ f i = hl_NUMERAL hl_zero then 1 else 0) i = 1 then 1 else 0)) = 1 -> hl_real_of_num (hl_nsum A s f) = hl_sum A s (fun x :e A => hl_real_of_num (f x)).
Admitted.

// HOL Light: iterate.ml:2602 / SUM_ADD_NUMSEG   (hash md5:6b1d66a883efc7487986daea754a220e)
Theorem hlt_SUM_ADD_NUMSEG : forall f g :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg m n) (fun i :e omega => hl_real_add (f i) (g i)) = hl_real_add (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg m n) g).
Admitted.

// HOL Light: iterate.ml:2606 / SUM_SUB_NUMSEG   (hash md5:076f683ce6e699dc8e0a8f473da5d285)
Theorem hlt_SUM_SUB_NUMSEG : forall f g :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg m n) (fun i :e omega => hl_real_sub (f i) (g i)) = hl_real_sub (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg m n) g).
Admitted.

// HOL Light: iterate.ml:2610 / SUM_LE_NUMSEG   (hash md5:7aa54b85b19760e8816baf46c9d7f6c8)
Theorem hlt_SUM_LE_NUMSEG : forall f g :e R :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> hl_real_le (f i) (g i) = 1) -> hl_real_le (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg m n) g) = 1.
Admitted.

// HOL Light: iterate.ml:2615 / SUM_EQ_NUMSEG   (hash md5:f250543a1974cdb718b8542cbfe458e3)
Theorem hlt_SUM_EQ_NUMSEG : forall f g :e R :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = g i) -> hl_sum omega (hl_numseg m n) f = hl_sum omega (hl_numseg m n) g.
Admitted.

// HOL Light: iterate.ml:2620 / SUM_ABS_NUMSEG   (hash md5:7a5d22992a1baee56b59562070d38145)
Theorem hlt_SUM_ABS_NUMSEG : forall f :e R :^: omega, forall m n :e omega, hl_real_le (hl_real_abs (hl_sum omega (hl_numseg m n) f)) (hl_sum omega (hl_numseg m n) (fun i :e omega => hl_real_abs (f i))) = 1.
Admitted.

// HOL Light: iterate.ml:2624 / SUM_CONST_NUMSEG   (hash md5:7482e5f404b3f372e3111c3ed0e461fd)
Theorem hlt_SUM_CONST_NUMSEG : forall c :e R, forall m n :e omega, hl_sum omega (hl_numseg m n) (fun n1 :e omega => c) = hl_real_mul (hl_real_of_num (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m)) c.
Admitted.

// HOL Light: iterate.ml:2628 / SUM_EQ_0_NUMSEG   (hash md5:e9e610ec5129eeac64fcf12c6e240fb3)
Theorem hlt_SUM_EQ_0_NUMSEG : forall f :e R :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_sum omega (hl_numseg m n) f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2632 / SUM_TRIV_NUMSEG   (hash md5:16bb5378463e0be404a26f1bd50c7d21)
Theorem hlt_SUM_TRIV_NUMSEG : forall f :e R :^: omega, forall m n :e omega, hl_lt n m = 1 -> hl_sum omega (hl_numseg m n) f = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2636 / SUM_POS_LE_NUMSEG   (hash md5:ef38f87b7f578bc88f665628e3794fcc)
Theorem hlt_SUM_POS_LE_NUMSEG : forall m n :e omega, forall f :e R :^: omega, (forall p :e omega, hl_le m p = 1 /\ hl_le p n = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f p) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_sum omega (hl_numseg m n) f) = 1.
Admitted.

// HOL Light: iterate.ml:2640 / SUM_POS_EQ_0_NUMSEG   (hash md5:4a66b0e5fb62ff41d2cb2f2d2483fd51)
Theorem hlt_SUM_POS_EQ_0_NUMSEG : forall f :e R :^: omega, forall m n :e omega, (forall p :e omega, hl_le m p = 1 /\ hl_le p n = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f p) = 1) /\ hl_sum omega (hl_numseg m n) f = hl_real_of_num (hl_NUMERAL hl_zero) -> forall p :e omega, hl_le m p = 1 /\ hl_le p n = 1 -> f p = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2645 / SUM_SING_NUMSEG   (hash md5:3591c39f9fceb3d9f9b8086a8be92370)
Theorem hlt_SUM_SING_NUMSEG : forall f :e R :^: omega, forall n :e omega, hl_sum omega (hl_numseg n n) f = f n.
Admitted.

// HOL Light: iterate.ml:2649 / SUM_CLAUSES_NUMSEG   (hash md5:8d92351c710e979e519b92755d569d9e)
Theorem hlt_SUM_CLAUSES_NUMSEG : forall f :e R :^: omega, (forall m :e omega, hl_sum omega (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND R (if m = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL hl_zero))) /\ forall m n :e omega, hl_sum omega (hl_numseg m (hl_SUC n)) f = hl_COND R (hl_le m (hl_SUC n)) (hl_real_add (hl_sum omega (hl_numseg m n) f) (f (hl_SUC n))) (hl_sum omega (hl_numseg m n) f).
Admitted.

// HOL Light: iterate.ml:2656 / SUM_CLAUSES_NUMSEG_LT   (hash md5:941ac86619552069d02a038f6cad10ae)
Theorem hlt_SUM_CLAUSES_NUMSEG_LT : forall f :e R :^: omega, hl_sum omega (hl_GSPEC omega (fun GEN_PVAR_336 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_336 (hl_lt i (hl_NUMERAL hl_zero)) i = 1 then 1 else 0)) f = hl_real_of_num (hl_NUMERAL hl_zero) /\ forall k :e omega, hl_sum omega (hl_GSPEC omega (fun GEN_PVAR_337 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_337 (hl_lt i (hl_SUC k)) i = 1 then 1 else 0)) f = hl_real_add (hl_sum omega (hl_GSPEC omega (fun GEN_PVAR_338 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_338 (hl_lt i k) i = 1 then 1 else 0)) f) (f k).
Admitted.

// HOL Light: iterate.ml:2662 / SUM_CLAUSES_NUMSEG_LE   (hash md5:c581cd744e6f05945d3653f042d8e690)
Theorem hlt_SUM_CLAUSES_NUMSEG_LE : forall f :e R :^: omega, hl_sum omega (hl_GSPEC omega (fun GEN_PVAR_339 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_339 (hl_le i (hl_NUMERAL hl_zero)) i = 1 then 1 else 0)) f = f (hl_NUMERAL hl_zero) /\ forall k :e omega, hl_sum omega (hl_GSPEC omega (fun GEN_PVAR_340 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_340 (hl_le i (hl_SUC k)) i = 1 then 1 else 0)) f = hl_real_add (hl_sum omega (hl_GSPEC omega (fun GEN_PVAR_341 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_341 (hl_le i k) i = 1 then 1 else 0)) f) (f (hl_SUC k)).
Admitted.

// HOL Light: iterate.ml:2668 / SUM_SWAP_NUMSEG   (hash md5:f9c18b31fb82cd14605cf6938636517d)
Theorem hlt_SUM_SWAP_NUMSEG : forall a b c d :e omega, forall f :e R :^: omega :^: omega, hl_sum omega (hl_numseg a b) (fun i :e omega => hl_sum omega (hl_numseg c d) (f i)) = hl_sum omega (hl_numseg c d) (fun j :e omega => hl_sum omega (hl_numseg a b) (fun i :e omega => f i j)).
Admitted.

// HOL Light: iterate.ml:2674 / SUM_ADD_SPLIT   (hash md5:b49886ab11366701526cd6eac4d9dbf5)
Theorem hlt_SUM_ADD_SPLIT : forall f :e R :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_sum omega (hl_numseg m (hl_add n p)) f = hl_real_add (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add n p)) f).
Admitted.

// HOL Light: iterate.ml:2680 / SUM_OFFSET   (hash md5:712666eefad9a2a3f18bd5372f16a7a8)
Theorem hlt_SUM_OFFSET : forall p :e omega, forall f :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg (hl_add m p) (hl_add n p)) f = hl_sum omega (hl_numseg m n) (fun i :e omega => f (hl_add i p)).
Admitted.

// HOL Light: iterate.ml:2686 / SUM_OFFSET_0   (hash md5:1382d35b14dbb02b6e3127ff767532c0)
Theorem hlt_SUM_OFFSET_0 : forall f :e R :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_sum omega (hl_numseg m n) f = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => f (hl_add i m)).
Admitted.

// HOL Light: iterate.ml:2690 / SUM_CLAUSES_LEFT   (hash md5:44cadc6940bef4057d21ac8c916dab79)
Theorem hlt_SUM_CLAUSES_LEFT : forall f :e R :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_sum omega (hl_numseg m n) f = hl_real_add (f m) (hl_sum omega (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f).
Admitted.

// HOL Light: iterate.ml:2695 / SUM_CLAUSES_RIGHT   (hash md5:6efb6db7dd0e66dd3d526e0bfb704fa8)
Theorem hlt_SUM_CLAUSES_RIGHT : forall f :e R :^: omega, forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ hl_le m n = 1 -> hl_sum omega (hl_numseg m n) f = hl_real_add (hl_sum omega (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (f n).
Admitted.

// HOL Light: iterate.ml:2700 / SUM_PAIR   (hash md5:0c9e6d3b250530d6534a03a28b1d4c9e)
Theorem hlt_SUM_PAIR : forall f :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero)))) f = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_real_add (f (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (f (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: iterate.ml:2705 / SUM_REFLECT   (hash md5:016a1d67556409a379bcb9b85c4cb628)
Theorem hlt_SUM_REFLECT : forall x :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg m n) x = hl_COND R (hl_lt n m) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => x (hl_sub n i))).
Admitted.

// HOL Light: iterate.ml:2711 / REAL_OF_NUM_SUM_NUMSEG   (hash md5:925d3afdfe70576ecfc0d85ec647f7e1)
Theorem hlt_REAL_OF_NUM_SUM_NUMSEG : forall f :e omega :^: omega, forall m n :e omega, hl_real_of_num (hl_nsum omega (hl_numseg m n) f) = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_real_of_num (f i)).
Admitted.

// HOL Light: iterate.ml:2719 / SUM_PARTIAL_SUC   (hash md5:e6f366048c2242915ce80ddd23d6be94)
Theorem hlt_SUM_PARTIAL_SUC : forall f g :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg m n) (fun k :e omega => hl_real_mul (f k) (hl_real_sub (g (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (g k))) = hl_COND R (hl_le m n) (hl_real_sub (hl_real_sub (hl_real_mul (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (g (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_real_mul (f m) (g m))) (hl_sum omega (hl_numseg m n) (fun k :e omega => hl_real_mul (g (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_sub (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: iterate.ml:2735 / SUM_PARTIAL_PRE   (hash md5:7338a41bb1bb861e6ebe05ad7593ab82)
Theorem hlt_SUM_PARTIAL_PRE : forall f g :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg m n) (fun k :e omega => hl_real_mul (f k) (hl_real_sub (g k) (g (hl_sub k (hl_NUMERAL (hl_BIT1 hl_zero)))))) = hl_COND R (hl_le m n) (hl_real_sub (hl_real_sub (hl_real_mul (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (g n)) (hl_real_mul (f m) (g (hl_sub m (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_sum omega (hl_numseg m n) (fun k :e omega => hl_real_mul (g k) (hl_real_sub (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: iterate.ml:2747 / SUM_DIFFS   (hash md5:c39ff7f327403cde6da445d221b6b390)
Theorem hlt_SUM_DIFFS : forall f :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg m n) (fun k :e omega => hl_real_sub (f k) (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_COND R (hl_le m n) (hl_real_sub (f m) (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: iterate.ml:2755 / SUM_DIFFS_ALT   (hash md5:e5b9986a3b3fb0de007ccc30cdf11b3f)
Theorem hlt_SUM_DIFFS_ALT : forall f :e R :^: omega, forall m n :e omega, hl_sum omega (hl_numseg m n) (fun k :e omega => hl_real_sub (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k)) = hl_COND R (hl_le m n) (hl_real_sub (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (f m)) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: iterate.ml:2762 / SUM_COMBINE_R   (hash md5:bfc99397d56482466eddd5e2ef086524)
Theorem hlt_SUM_COMBINE_R : forall f :e R :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_le n p = 1 -> hl_real_add (hl_sum omega (hl_numseg m n) f) (hl_sum omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) p) f) = hl_sum omega (hl_numseg m p) f.
Admitted.

// HOL Light: iterate.ml:2770 / SUM_COMBINE_L   (hash md5:8ccee2e1bad2168c856392b2267a4cd1)
Theorem hlt_SUM_COMBINE_L : forall f :e R :^: omega, forall m n p :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ (hl_le m n = 1 /\ hl_le n (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> hl_real_add (hl_sum omega (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (hl_sum omega (hl_numseg n p) f) = hl_sum omega (hl_numseg m p) f.
Admitted.

// HOL Light: iterate.ml:2830 / REAL_SUB_POW   (hash md5:7e70492e78617c2ebcfdef9f3e641bae)
Theorem hlt_REAL_SUB_POW : forall x y :e R, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_real_sub (hl_real_pow x n) (hl_real_pow y n) = hl_real_mul (hl_real_sub x y) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun i :e omega => hl_real_mul (hl_real_pow x i) (hl_real_pow y (hl_sub (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) i)))).
Admitted.

// HOL Light: iterate.ml:2843 / REAL_SUB_POW_R1   (hash md5:da1ca0e4760a07a04662fe4e62199fab)
Theorem hlt_REAL_SUB_POW_R1 : forall x :e R, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_real_sub (hl_real_pow x n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_real_mul (hl_real_sub x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun i :e omega => hl_real_pow x i)).
Admitted.

// HOL Light: iterate.ml:2849 / REAL_SUB_POW_L1   (hash md5:88bee02ffe05b6e99518933c12c5b025)
Theorem hlt_REAL_SUB_POW_L1 : forall x :e R, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_pow x n) = hl_real_mul (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun i :e omega => hl_real_pow x i)).
Admitted.

// HOL Light: iterate.ml:2858 / REAL_SUB_POLYFUN   (hash md5:cfa85831342dafe8ed699b98a1559944)
Theorem hlt_REAL_SUB_POLYFUN : forall a :e R :^: omega, forall x y :e R, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_real_sub (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (a i) (hl_real_pow x i))) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (a i) (hl_real_pow y i))) = hl_real_mul (hl_real_sub x y) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun j :e omega => hl_real_mul (hl_sum omega (hl_numseg (hl_add j (hl_NUMERAL (hl_BIT1 hl_zero))) n) (fun i :e omega => hl_real_mul (a i) (hl_real_pow y (hl_sub (hl_sub i j) (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_real_pow x j))).
Admitted.

// HOL Light: iterate.ml:2878 / REAL_SUB_POLYFUN_ALT   (hash md5:9665e6b3d519cbd5873add74184e3b2b)
Theorem hlt_REAL_SUB_POLYFUN_ALT : forall a :e R :^: omega, forall x y :e R, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_real_sub (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (a i) (hl_real_pow x i))) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (a i) (hl_real_pow y i))) = hl_real_mul (hl_real_sub x y) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun j :e omega => hl_real_mul (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_sub n j) (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun k :e omega => hl_real_mul (a (hl_add j (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_real_pow y k))) (hl_real_pow x j))).
Admitted.

// HOL Light: iterate.ml:2893 / REAL_POLYFUN_ROOTBOUND   (hash md5:9da5a611bbb739a23cb53f8f463e31d3)
Theorem hlt_REAL_POLYFUN_ROOTBOUND : forall n :e omega, forall c :e R :^: omega, ~ (forall i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL hl_zero) n) = 1 -> c i = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_347 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_347 (if hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_le (hl_CARD R (hl_GSPEC R (fun GEN_PVAR_348 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_348 (if hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0))) n = 1.
Admitted.

// HOL Light: iterate.ml:2925 / REAL_POLYFUN_FINITE_ROOTS   (hash md5:52e97a2fb1f0625d0422b04974860bdc)
Theorem hlt_REAL_POLYFUN_FINITE_ROOTS : forall n :e omega, forall c :e R :^: omega, hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_350 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_350 (if hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 <-> exists i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL hl_zero) n) = 1 /\ ~ c i = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2935 / REAL_POLYFUN_EQ_0   (hash md5:de836d145e877f27e82a6d7edf3575d1)
Theorem hlt_REAL_POLYFUN_EQ_0 : forall n :e omega, forall c :e R :^: omega, (forall x :e R, hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) = hl_real_of_num (hl_NUMERAL hl_zero)) <-> forall i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL hl_zero) n) = 1 -> c i = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2945 / REAL_POLYFUN_EQ_CONST   (hash md5:adce8ab0ff84629d62ab9c58eb45425e)
Theorem hlt_REAL_POLYFUN_EQ_CONST : forall n :e omega, forall c :e R :^: omega, forall k :e R, (forall x :e R, hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) = k) <-> c (hl_NUMERAL hl_zero) = k /\ forall i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 -> c i = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: iterate.ml:2966 / polynomial_function   (hash md5:bd7d18621ee78d35059d0c031542e3b4)
Theorem hlt_polynomial_function_thm : forall p :e R :^: R, hl_polynomial_function p = 1 <-> exists m :e omega, exists c :e R :^: omega, forall x :e R, p x = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)).
Admitted.

// HOL Light: iterate.ml:2969 / POLYNOMIAL_FUNCTION_CONST   (hash md5:d662a538809b3047a3a87f458a520090)
Theorem hlt_POLYNOMIAL_FUNCTION_CONST : forall c :e R, hl_polynomial_function (fun x :e R => c) = 1.
Admitted.

// HOL Light: iterate.ml:2975 / POLYNOMIAL_FUNCTION_ID   (hash md5:55271e50a686f7021535c41c6e0f6776)
Theorem hlt_POLYNOMIAL_FUNCTION_ID : hl_polynomial_function (fun x :e R => x) = 1.
Admitted.

// HOL Light: iterate.ml:2981 / POLYNOMIAL_FUNCTION_I   (hash md5:0586efeec066f40d33919a16849fbddb)
Theorem hlt_POLYNOMIAL_FUNCTION_I : hl_polynomial_function (hl_I R) = 1.
Admitted.

// HOL Light: iterate.ml:2985 / POLYNOMIAL_FUNCTION_ADD   (hash md5:5ecad3f3e5d693ee11065d465825c7a6)
Theorem hlt_POLYNOMIAL_FUNCTION_ADD : forall p q :e R :^: R, hl_polynomial_function p = 1 /\ hl_polynomial_function q = 1 -> hl_polynomial_function (fun x :e R => hl_real_add (p x) (q x)) = 1.
Admitted.

// HOL Light: iterate.ml:3000 / POLYNOMIAL_FUNCTION_LMUL   (hash md5:6e55e94a3f445792e5b26664d9a5926c)
Theorem hlt_POLYNOMIAL_FUNCTION_LMUL : forall p :e R :^: R, forall c :e R, hl_polynomial_function p = 1 -> hl_polynomial_function (fun x :e R => hl_real_mul c (p x)) = 1.
Admitted.

// HOL Light: iterate.ml:3008 / POLYNOMIAL_FUNCTION_RMUL   (hash md5:44879fe241858a12b8773c893d7849cb)
Theorem hlt_POLYNOMIAL_FUNCTION_RMUL : forall p :e R :^: R, forall c :e R, hl_polynomial_function p = 1 -> hl_polynomial_function (fun x :e R => hl_real_mul (p x) c) = 1.
Admitted.

// HOL Light: iterate.ml:3012 / POLYNOMIAL_FUNCTION_NEG   (hash md5:53db2769ed3c76578bf05b2a8f254074)
Theorem hlt_POLYNOMIAL_FUNCTION_NEG : forall p :e R :^: R, hl_polynomial_function (fun x :e R => hl_real_neg (p x)) = 1 <-> hl_polynomial_function p = 1.
Admitted.

// HOL Light: iterate.ml:3018 / POLYNOMIAL_FUNCTION_SUB   (hash md5:9fd147bcc7cc9e2cc6f64350f556ce5f)
Theorem hlt_POLYNOMIAL_FUNCTION_SUB : forall p q :e R :^: R, hl_polynomial_function p = 1 /\ hl_polynomial_function q = 1 -> hl_polynomial_function (fun x :e R => hl_real_sub (p x) (q x)) = 1.
Admitted.

// HOL Light: iterate.ml:3023 / POLYNOMIAL_FUNCTION_MUL   (hash md5:1790557bd42a5f9881acfae07c011486)
Theorem hlt_POLYNOMIAL_FUNCTION_MUL : forall p q :e R :^: R, hl_polynomial_function p = 1 /\ hl_polynomial_function q = 1 -> hl_polynomial_function (fun x :e R => hl_real_mul (p x) (q x)) = 1.
Admitted.

// HOL Light: iterate.ml:3052 / POLYNOMIAL_FUNCTION_SUM   (hash md5:c0501c832fc0f4732886b8a6a7a63e65)
Theorem hlt_POLYNOMIAL_FUNCTION_SUM : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e R :^: A :^: R, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_polynomial_function (fun x :e R => p x i) = 1) -> hl_polynomial_function (fun x :e R => hl_sum A s (p x)) = 1.
Admitted.

// HOL Light: iterate.ml:3061 / POLYNOMIAL_FUNCTION_POW   (hash md5:f6632e434f1c68c60e01b61376655c6f)
Theorem hlt_POLYNOMIAL_FUNCTION_POW : forall p :e R :^: R, forall n :e omega, hl_polynomial_function p = 1 -> hl_polynomial_function (fun x :e R => hl_real_pow (p x) n) = 1.
Admitted.

// HOL Light: iterate.ml:3067 / POLYNOMIAL_FUNCTION_INDUCT   (hash md5:bf5280ea57a770d85277a5aacc7179e8)
Theorem hlt_POLYNOMIAL_FUNCTION_INDUCT : forall P :e 2 :^: (R :^: R), P (fun x :e R => x) = 1 /\ ((forall c :e R, P (fun x :e R => c) = 1) /\ ((forall p q :e R :^: R, P p = 1 /\ P q = 1 -> P (fun x :e R => hl_real_add (p x) (q x)) = 1) /\ (forall p q :e R :^: R, P p = 1 /\ P q = 1 -> P (fun x :e R => hl_real_mul (p x) (q x)) = 1))) -> forall p :e R :^: R, hl_polynomial_function p = 1 -> P p = 1.
Admitted.

// HOL Light: iterate.ml:3084 / POLYNOMIAL_FUNCTION_o   (hash md5:b5e8533e9cb3a1f961f99bcae7bc3ab8)
Theorem hlt_POLYNOMIAL_FUNCTION_o : forall p q :e R :^: R, hl_polynomial_function p = 1 /\ hl_polynomial_function q = 1 -> hl_polynomial_function (hl_o R R R p q) = 1.
Admitted.

// HOL Light: iterate.ml:3093 / POLYNOMIAL_FUNCTION_FINITE_ROOTS   (hash md5:5fadeefbd2800c9e384666810573bc7b)
Theorem hlt_POLYNOMIAL_FUNCTION_FINITE_ROOTS : forall p :e R :^: R, forall a :e R, hl_polynomial_function p = 1 -> (hl_FINITE R (hl_GSPEC R (fun GEN_PVAR_353 :e R => if exists x :e R, hl_SETSPEC R GEN_PVAR_353 (if p x = a then 1 else 0) x = 1 then 1 else 0)) = 1 <-> ~ forall x :e R, p x = a).
Admitted.

