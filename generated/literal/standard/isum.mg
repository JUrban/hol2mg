// hol2mg literal statements (private): shard isum of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/isum.ml:5 / ISUM_SUPPORT   (hash md5:2be7b27ce535ea40368d9637f3dfb4b0)
Theorem hlt_ISUM_SUPPORT : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_isum A (hl_support hl_ty_int A hl_int_add f s) f = hl_isum A s f.
Admitted.

// HOL Light: Library/isum.ml:9 / int_isum   (hash md5:a9f4330c5595159fbb6ce98f1e9e8440)
Theorem hlt_int_isum : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_real_of_int (hl_isum A s f) = hl_sum A s (fun x :e A => hl_real_of_int (f x)).
Admitted.

// HOL Light: Library/isum.ml:89 / CARD_EQ_ISUM   (hash md5:fc690b8e142d32b9c6aacc7f8f17ab6a)
Theorem hlt_CARD_EQ_ISUM : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_int_of_num (hl_CARD A s) = hl_isum A s (fun x :e A => hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/isum.ml:90 / INT_SUB_POW   (hash md5:140980f5eb334d0b31fd9fa84fd2e6a8)
Theorem hlt_INT_SUB_POW : forall x y :e hl_ty_int, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_int_sub (hl_int_pow x n) (hl_int_pow y n) = hl_int_mul (hl_int_sub x y) (hl_isum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun i :e omega => hl_int_mul (hl_int_pow x i) (hl_int_pow y (hl_sub (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) i)))).
Admitted.

// HOL Light: Library/isum.ml:91 / ISUM_0   (hash md5:3cb4b085cbd50899aa90de9059ff63c9)
Theorem hlt_ISUM_0 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_isum A s (fun n :e A => hl_int_of_num (hl_NUMERAL hl_zero)) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/isum.ml:92 / ISUM_ABS   (hash md5:7f122d27cefc5e1228e4b2117478f716)
Theorem hlt_ISUM_ABS : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_int_le (hl_int_abs (hl_isum A s f)) (hl_isum A s (fun x :e A => hl_int_abs (f x))) = 1.
Admitted.

// HOL Light: Library/isum.ml:93 / ISUM_ABS_BOUND   (hash md5:09ba5def75265b26ee8f1f7530837772)
Theorem hlt_ISUM_ABS_BOUND : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_int :^: A, forall b :e hl_ty_int, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_abs (f x)) b = 1) -> hl_int_le (hl_int_abs (hl_isum A s f)) (hl_int_mul (hl_int_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: Library/isum.ml:94 / ISUM_ABS_LE   (hash md5:ed16e72c5d56b8ea40d339322910ad75)
Theorem hlt_ISUM_ABS_LE : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_abs (f x)) (g x) = 1) -> hl_int_le (hl_int_abs (hl_isum A s f)) (hl_isum A s g) = 1.
Admitted.

// HOL Light: Library/isum.ml:95 / ISUM_ABS_NUMSEG   (hash md5:573f57a064ccd4b507d5901d11c28635)
Theorem hlt_ISUM_ABS_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_int_le (hl_int_abs (hl_isum omega (hl_numseg m n) f)) (hl_isum omega (hl_numseg m n) (fun i :e omega => hl_int_abs (f i))) = 1.
Admitted.

// HOL Light: Library/isum.ml:96 / ISUM_ADD   (hash md5:c6c24085020eb98ba47cf573157b9dcb)
Theorem hlt_ISUM_ADD : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_isum A s (fun x :e A => hl_int_add (f x) (g x)) = hl_int_add (hl_isum A s f) (hl_isum A s g).
Admitted.

// HOL Light: Library/isum.ml:97 / ISUM_ADD_NUMSEG   (hash md5:95f26b0d1535359e3a80206eaba010e4)
Theorem hlt_ISUM_ADD_NUMSEG : forall f g :e hl_ty_int :^: omega, forall m n :e omega, hl_isum omega (hl_numseg m n) (fun i :e omega => hl_int_add (f i) (g i)) = hl_int_add (hl_isum omega (hl_numseg m n) f) (hl_isum omega (hl_numseg m n) g).
Admitted.

// HOL Light: Library/isum.ml:98 / ISUM_ADD_SPLIT   (hash md5:94933e7186fb30f66a21e7effd68f10d)
Theorem hlt_ISUM_ADD_SPLIT : forall f :e hl_ty_int :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_isum omega (hl_numseg m (hl_add n p)) f = hl_int_add (hl_isum omega (hl_numseg m n) f) (hl_isum omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add n p)) f).
Admitted.

// HOL Light: Library/isum.ml:99 / ISUM_BIJECTION   (hash md5:6125f7df4ced3566d57205b44a979ab0)
Theorem hlt_ISUM_BIJECTION : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall p :e A :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall y :e A, hl_IN A y s = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ p x = y then 1 else 0) = 1) -> hl_isum A s f = hl_isum A s (hl_o A hl_ty_int A f p).
Admitted.

// HOL Light: Library/isum.ml:100 / ISUM_BOUND   (hash md5:4779b6fec04187f587edae29af2c68f8)
Theorem hlt_ISUM_BOUND : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_int :^: A, forall b :e hl_ty_int, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_le (f x) b = 1) -> hl_int_le (hl_isum A s f) (hl_int_mul (hl_int_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: Library/isum.ml:101 / ISUM_BOUND_LT   (hash md5:ac47d03c7475a6518435f88226c67fa6)
Theorem hlt_ISUM_BOUND_LT : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_int :^: A, forall b :e hl_ty_int, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_int_le (f x) b = 1) /\ (exists x :e A, hl_IN A x s = 1 /\ hl_int_lt (f x) b = 1)) -> hl_int_lt (hl_isum A s f) (hl_int_mul (hl_int_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: Library/isum.ml:102 / ISUM_BOUND_LT_ALL   (hash md5:33ab359ffe999530454e5d691fcd9073)
Theorem hlt_ISUM_BOUND_LT_ALL : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_int :^: A, forall b :e hl_ty_int, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_lt (f x) b = 1)) -> hl_int_lt (hl_isum A s f) (hl_int_mul (hl_int_of_num (hl_CARD A s)) b) = 1.
Admitted.

// HOL Light: Library/isum.ml:103 / ISUM_CASES   (hash md5:aaceecb0e7a02acec7e255918726c353)
Theorem hlt_ISUM_CASES : forall A:set, A <> Empty -> forall s P :e 2 :^: A, forall f g :e hl_ty_int :^: A, hl_FINITE A s = 1 -> hl_isum A s (fun x :e A => hl_COND hl_ty_int (P x) (f x) (g x)) = hl_int_add (hl_isum A (hl_GSPEC A (fun GEN_PVAR_330 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_330 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f) (hl_isum A (hl_GSPEC A (fun GEN_PVAR_331 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_331 (if hl_IN A x s = 1 /\ ~ P x = 1 then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: Library/isum.ml:104 / ISUM_CLAUSES_LEFT   (hash md5:fa9beb60da1f63c1235bcbd34148cf75)
Theorem hlt_ISUM_CLAUSES_LEFT : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_isum omega (hl_numseg m n) f = hl_int_add (f m) (hl_isum omega (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f).
Admitted.

// HOL Light: Library/isum.ml:105 / ISUM_CLAUSES_NUMSEG   (hash md5:6a2a3d9e5fd126b1c40a68525155a77c)
Theorem hlt_ISUM_CLAUSES_NUMSEG : forall f :e hl_ty_int :^: omega, (forall m :e omega, hl_isum omega (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND hl_ty_int (if m = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL hl_zero))) /\ forall m n :e omega, hl_isum omega (hl_numseg m (hl_SUC n)) f = hl_COND hl_ty_int (hl_le m (hl_SUC n)) (hl_int_add (hl_isum omega (hl_numseg m n) f) (f (hl_SUC n))) (hl_isum omega (hl_numseg m n) f).
Admitted.

// HOL Light: Library/isum.ml:106 / ISUM_CLAUSES_RIGHT   (hash md5:e26825a83239b6b6901ee9cebcb4e5aa)
Theorem hlt_ISUM_CLAUSES_RIGHT : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ hl_le m n = 1 -> hl_isum omega (hl_numseg m n) f = hl_int_add (hl_isum omega (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (f n).
Admitted.

// HOL Light: Library/isum.ml:107 / ISUM_COMBINE_L   (hash md5:9d1d04498f6bc72f1233f731faa1aa7f)
Theorem hlt_ISUM_COMBINE_L : forall f :e hl_ty_int :^: omega, forall m n p :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ (hl_le m n = 1 /\ hl_le n (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> hl_int_add (hl_isum omega (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (hl_isum omega (hl_numseg n p) f) = hl_isum omega (hl_numseg m p) f.
Admitted.

// HOL Light: Library/isum.ml:108 / ISUM_COMBINE_R   (hash md5:0185f28fe8011c918745bf84647c2db8)
Theorem hlt_ISUM_COMBINE_R : forall f :e hl_ty_int :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_le n p = 1 -> hl_int_add (hl_isum omega (hl_numseg m n) f) (hl_isum omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) p) f) = hl_isum omega (hl_numseg m p) f.
Admitted.

// HOL Light: Library/isum.ml:109 / ISUM_CONST   (hash md5:ff1bf0961196bdc5461c80e9b7bf604d)
Theorem hlt_ISUM_CONST : forall A:set, A <> Empty -> forall c :e hl_ty_int, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_isum A s (fun n :e A => c) = hl_int_mul (hl_int_of_num (hl_CARD A s)) c.
Admitted.

// HOL Light: Library/isum.ml:110 / ISUM_CONST_NUMSEG   (hash md5:8754ce861b49cd3a88224f75434167c6)
Theorem hlt_ISUM_CONST_NUMSEG : forall c :e hl_ty_int, forall m n :e omega, hl_isum omega (hl_numseg m n) (fun n1 :e omega => c) = hl_int_mul (hl_int_of_num (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m)) c.
Admitted.

// HOL Light: Library/isum.ml:111 / ISUM_DELETE   (hash md5:a754014c33598c968cf9d2be9b3f19e9)
Theorem hlt_ISUM_DELETE : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_isum A (hl_DELETE A s a) f = hl_int_sub (hl_isum A s f) (f a).
Admitted.

// HOL Light: Library/isum.ml:112 / ISUM_DELETE_CASES   (hash md5:d5451abd1f4a9b49fd97fcc6755215aa)
Theorem hlt_ISUM_DELETE_CASES : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 -> hl_isum A (hl_DELETE A s a) f = hl_COND hl_ty_int (hl_IN A a s) (hl_int_sub (hl_isum A s f) (f a)) (hl_isum A s f).
Admitted.

// HOL Light: Library/isum.ml:113 / ISUM_DELTA   (hash md5:60807a4b2e0235280461b897dd9acd27)
Theorem hlt_ISUM_DELTA : forall A:set, A <> Empty -> forall b :e hl_ty_int, forall s :e 2 :^: A, forall a :e A, hl_isum A s (fun x :e A => hl_COND hl_ty_int (if x = a then 1 else 0) b (hl_int_of_num (hl_NUMERAL hl_zero))) = hl_COND hl_ty_int (hl_IN A a s) b (hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/isum.ml:114 / ISUM_DIFF   (hash md5:2e1dcff7b8de29cbbcc300110dbe362b)
Theorem hlt_ISUM_DIFF : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A t s = 1 -> hl_isum A (hl_DIFF A s t) f = hl_int_sub (hl_isum A s f) (hl_isum A t f).
Admitted.

// HOL Light: Library/isum.ml:115 / ISUM_DIFFS   (hash md5:8dd3f5295a4caa05ec81d204e5c6e737)
Theorem hlt_ISUM_DIFFS : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_isum omega (hl_numseg m n) (fun k :e omega => hl_int_sub (f k) (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_COND hl_ty_int (hl_le m n) (hl_int_sub (f m) (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/isum.ml:116 / ISUM_EQ   (hash md5:a977e73baf9c295db884f0a162d813b2)
Theorem hlt_ISUM_EQ : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_isum A s f = hl_isum A s g.
Admitted.

// HOL Light: Library/isum.ml:117 / ISUM_EQ_0   (hash md5:5935d3cd0ca32bef3b40fa768a2c1611)
Theorem hlt_ISUM_EQ_0 : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_int_of_num (hl_NUMERAL hl_zero)) -> hl_isum A s f = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/isum.ml:118 / ISUM_EQ_0_NUMSEG   (hash md5:22c1ec56fa61f2bda496681f10f19414)
Theorem hlt_ISUM_EQ_0_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = hl_int_of_num (hl_NUMERAL hl_zero)) -> hl_isum omega (hl_numseg m n) f = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/isum.ml:119 / ISUM_EQ_GENERAL   (hash md5:b891409e65b526621893651740da5605)
Theorem hlt_ISUM_EQ_GENERAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e hl_ty_int :^: A, forall g :e hl_ty_int :^: B, forall h :e B :^: A, (forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ h x = y then 1 else 0) = 1) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ g (h x) = f x) -> hl_isum A s f = hl_isum B t g.
Admitted.

// HOL Light: Library/isum.ml:120 / ISUM_EQ_GENERAL_INVERSES   (hash md5:69d6518bc1f1cd8290c5a1e8d10cfb91)
Theorem hlt_ISUM_EQ_GENERAL_INVERSES : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall f :e hl_ty_int :^: A, forall g :e hl_ty_int :^: B, forall h :e B :^: A, forall k :e A :^: B, (forall y :e B, hl_IN B y t = 1 -> hl_IN A (k y) s = 1 /\ h (k y) = y) /\ (forall x :e A, hl_IN A x s = 1 -> hl_IN B (h x) t = 1 /\ (k (h x) = x /\ g (h x) = f x)) -> hl_isum A s f = hl_isum B t g.
Admitted.

// HOL Light: Library/isum.ml:121 / ISUM_EQ_NUMSEG   (hash md5:4059ba0021f603352f2809e2d22f082c)
Theorem hlt_ISUM_EQ_NUMSEG : forall f g :e hl_ty_int :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = g i) -> hl_isum omega (hl_numseg m n) f = hl_isum omega (hl_numseg m n) g.
Admitted.

// HOL Light: Library/isum.ml:122 / ISUM_EQ_SUPERSET   (hash md5:522939b55dc3246aa9e145c552dc457f)
Theorem hlt_ISUM_EQ_SUPERSET : forall A:set, A <> Empty -> forall g f :e hl_ty_int :^: A, forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ ((forall x :e A, hl_IN A x t = 1 -> f x = g x) /\ (forall x :e A, hl_IN A x s = 1 /\ ~ hl_IN A x t = 1 -> f x = hl_int_of_num (hl_NUMERAL hl_zero)))) -> hl_isum A s f = hl_isum A t g.
Admitted.

// HOL Light: Library/isum.ml:123 / ISUM_GROUP   (hash md5:3bea60ba0e426bd3126e890333342d57)
Theorem hlt_ISUM_GROUP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e hl_ty_int :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_SUBSET B (hl_IMAGE A B f s) t = 1 -> hl_isum B t (fun y :e B => hl_isum A (hl_GSPEC A (fun GEN_PVAR_327 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_327 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g) = hl_isum A s g.
Admitted.

// HOL Light: Library/isum.ml:124 / ISUM_IMAGE   (hash md5:d9576fc22c8c7459aeca4306e7b6ef04)
Theorem hlt_ISUM_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e hl_ty_int :^: B, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> hl_isum B (hl_IMAGE A B f s) g = hl_isum A s (hl_o B hl_ty_int A g f).
Admitted.

// HOL Light: Library/isum.ml:125 / ISUM_IMAGE_GEN   (hash md5:d8de20104833591ff91c7f39d35398c6)
Theorem hlt_ISUM_IMAGE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_isum A s g = hl_isum B (hl_IMAGE A B f s) (fun y :e B => hl_isum A (hl_GSPEC A (fun GEN_PVAR_326 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_326 (if hl_IN A x s = 1 /\ f x = y then 1 else 0) x = 1 then 1 else 0)) g).
Admitted.

// HOL Light: Library/isum.ml:126 / ISUM_IMAGE_LE   (hash md5:c2b0a1ccd9f5d1529b2246933bee52f6)
Theorem hlt_ISUM_IMAGE_LE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e hl_ty_int :^: B, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (g (f x)) = 1) -> hl_int_le (hl_isum B (hl_IMAGE A B f s) g) (hl_isum A s (hl_o B hl_ty_int A g f)) = 1.
Admitted.

// HOL Light: Library/isum.ml:127 / ISUM_IMAGE_NONZERO   (hash md5:f59130383119455c874b58f77bccdf8b)
Theorem hlt_ISUM_IMAGE_NONZERO : forall A B:set, A <> Empty -> B <> Empty -> forall d :e hl_ty_int :^: B, forall i :e B :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (~ x = y /\ i x = i y)) -> d (i x) = hl_int_of_num (hl_NUMERAL hl_zero)) -> hl_isum B (hl_IMAGE A B i s) d = hl_isum A s (hl_o B hl_ty_int A d i).
Admitted.

// HOL Light: Library/isum.ml:128 / ISUM_INCL_EXCL   (hash md5:ae8fe481d8632d73a256d012894e62f5)
Theorem hlt_ISUM_INCL_EXCL : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall f :e hl_ty_int :^: A, hl_FINITE A s = 1 /\ hl_FINITE A t = 1 -> hl_int_add (hl_isum A s f) (hl_isum A t f) = hl_int_add (hl_isum A (hl_UNION A s t) f) (hl_isum A (hl_INTER A s t) f).
Admitted.

// HOL Light: Library/isum.ml:129 / ISUM_INJECTION   (hash md5:bdfc346feeeeeab17ab1374152cf3a72)
Theorem hlt_ISUM_INJECTION : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)) -> hl_isum A s (hl_o A hl_ty_int A f p) = hl_isum A s f.
Admitted.

// HOL Light: Library/isum.ml:130 / ISUM_LE   (hash md5:878e01b88d998877e9291c984553ffad)
Theorem hlt_ISUM_LE : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_le (f x) (g x) = 1) -> hl_int_le (hl_isum A s f) (hl_isum A s g) = 1.
Admitted.

// HOL Light: Library/isum.ml:131 / ISUM_LE_INCLUDED   (hash md5:d8610b444e7bf19ca953f2c28ef07056)
Theorem hlt_ISUM_LE_INCLUDED : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_int :^: A, forall g :e hl_ty_int :^: B, forall s :e 2 :^: A, forall t :e 2 :^: B, forall i :e A :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ ((forall y :e B, hl_IN B y t = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (g y) = 1) /\ (forall x :e A, hl_IN A x s = 1 -> exists y :e B, hl_IN B y t = 1 /\ (i y = x /\ hl_int_le (f x) (g y) = 1)))) -> hl_int_le (hl_isum A s f) (hl_isum B t g) = 1.
Admitted.

// HOL Light: Library/isum.ml:132 / ISUM_LE_NUMSEG   (hash md5:873a7154af7bc6a20e17297eecb02894)
Theorem hlt_ISUM_LE_NUMSEG : forall f g :e hl_ty_int :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> hl_int_le (f i) (g i) = 1) -> hl_int_le (hl_isum omega (hl_numseg m n) f) (hl_isum omega (hl_numseg m n) g) = 1.
Admitted.

// HOL Light: Library/isum.ml:133 / ISUM_LMUL   (hash md5:c01b9a3dc0f850c41e4ae8a00733f4ad)
Theorem hlt_ISUM_LMUL : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall c :e hl_ty_int, forall s :e 2 :^: A, hl_isum A s (fun x :e A => hl_int_mul c (f x)) = hl_int_mul c (hl_isum A s f).
Admitted.

// HOL Light: Library/isum.ml:134 / ISUM_LT   (hash md5:b18150bc651ea93a9de3d771e895d801)
Theorem hlt_ISUM_LT : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_int_le (f x) (g x) = 1) /\ (exists x :e A, hl_IN A x s = 1 /\ hl_int_lt (f x) (g x) = 1)) -> hl_int_lt (hl_isum A s f) (hl_isum A s g) = 1.
Admitted.

// HOL Light: Library/isum.ml:135 / ISUM_LT_ALL   (hash md5:ec36301a67101bfcb460c479345437c6)
Theorem hlt_ISUM_LT_ALL : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_lt (f x) (g x) = 1)) -> hl_int_lt (hl_isum A s f) (hl_isum A s g) = 1.
Admitted.

// HOL Light: Library/isum.ml:136 / ISUM_MULTICOUNT   (hash md5:8bb061989d330d778ecd46a428925d72)
Theorem hlt_ISUM_MULTICOUNT : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, forall k :e omega, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (forall j :e B, hl_IN B j t = 1 -> hl_CARD A (hl_GSPEC A (fun GEN_PVAR_324 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_324 (if hl_IN A i s = 1 /\ R1 i j = 1 then 1 else 0) i = 1 then 1 else 0)) = k)) -> hl_isum A s (fun i :e A => hl_int_of_num (hl_CARD B (hl_GSPEC B (fun GEN_PVAR_325 :e B => if exists j :e B, hl_SETSPEC B GEN_PVAR_325 (if hl_IN B j t = 1 /\ R1 i j = 1 then 1 else 0) j = 1 then 1 else 0)))) = hl_int_of_num (hl_mul k (hl_CARD B t)).
Admitted.

// HOL Light: Library/isum.ml:137 / ISUM_MULTICOUNT_GEN   (hash md5:e4e7cbca0f987b329a0d3a153fc20d13)
Theorem hlt_ISUM_MULTICOUNT_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, forall k :e omega :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (forall j :e B, hl_IN B j t = 1 -> hl_CARD A (hl_GSPEC A (fun GEN_PVAR_322 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_322 (if hl_IN A i s = 1 /\ R1 i j = 1 then 1 else 0) i = 1 then 1 else 0)) = k j)) -> hl_isum A s (fun i :e A => hl_int_of_num (hl_CARD B (hl_GSPEC B (fun GEN_PVAR_323 :e B => if exists j :e B, hl_SETSPEC B GEN_PVAR_323 (if hl_IN B j t = 1 /\ R1 i j = 1 then 1 else 0) j = 1 then 1 else 0)))) = hl_isum B t (fun i :e B => hl_int_of_num (k i)).
Admitted.

// HOL Light: Library/isum.ml:138 / ISUM_NEG   (hash md5:de9a8075932eb4efde04b1fc32f6487e)
Theorem hlt_ISUM_NEG : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_isum A s (fun x :e A => hl_int_neg (f x)) = hl_int_neg (hl_isum A s f).
Admitted.

// HOL Light: Library/isum.ml:139 / ISUM_OFFSET   (hash md5:491231ae6286733f3b66bc28769211a8)
Theorem hlt_ISUM_OFFSET : forall p :e omega, forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_isum omega (hl_numseg (hl_add m p) (hl_add n p)) f = hl_isum omega (hl_numseg m n) (fun i :e omega => f (hl_add i p)).
Admitted.

// HOL Light: Library/isum.ml:140 / ISUM_OFFSET_0   (hash md5:bfeb20750bd28f1f4f8a2ea305d61006)
Theorem hlt_ISUM_OFFSET_0 : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_isum omega (hl_numseg m n) f = hl_isum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => f (hl_add i m)).
Admitted.

// HOL Light: Library/isum.ml:141 / ISUM_PARTIAL_PRE   (hash md5:1094a4b794e8ed0353c13a95b431ab7c)
Theorem hlt_ISUM_PARTIAL_PRE : forall f g :e hl_ty_int :^: omega, forall m n :e omega, hl_isum omega (hl_numseg m n) (fun k :e omega => hl_int_mul (f k) (hl_int_sub (g k) (g (hl_sub k (hl_NUMERAL (hl_BIT1 hl_zero)))))) = hl_COND hl_ty_int (hl_le m n) (hl_int_sub (hl_int_sub (hl_int_mul (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (g n)) (hl_int_mul (f m) (g (hl_sub m (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_isum omega (hl_numseg m n) (fun k :e omega => hl_int_mul (g k) (hl_int_sub (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k))))) (hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/isum.ml:142 / ISUM_PARTIAL_SUC   (hash md5:97f9854571798c0b2086d8eb317f9209)
Theorem hlt_ISUM_PARTIAL_SUC : forall f g :e hl_ty_int :^: omega, forall m n :e omega, hl_isum omega (hl_numseg m n) (fun k :e omega => hl_int_mul (f k) (hl_int_sub (g (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (g k))) = hl_COND hl_ty_int (hl_le m n) (hl_int_sub (hl_int_sub (hl_int_mul (f (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) (g (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_int_mul (f m) (g m))) (hl_isum omega (hl_numseg m n) (fun k :e omega => hl_int_mul (g (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_sub (f (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero)))) (f k))))) (hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/isum.ml:143 / ISUM_POS_BOUND   (hash md5:f53dd3b9a28b12abc83fdfc8cb7069fd)
Theorem hlt_ISUM_POS_BOUND : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall b :e hl_ty_int, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1) /\ hl_int_le (hl_isum A s f) b = 1) -> forall x :e A, hl_IN A x s = 1 -> hl_int_le (f x) b = 1.
Admitted.

// HOL Light: Library/isum.ml:144 / ISUM_POS_EQ_0   (hash md5:155aa8a25a904a56a37b64c9d8e67abf)
Theorem hlt_ISUM_POS_EQ_0 : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1) /\ hl_isum A s f = hl_int_of_num (hl_NUMERAL hl_zero)) -> forall x :e A, hl_IN A x s = 1 -> f x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/isum.ml:145 / ISUM_POS_EQ_0_NUMSEG   (hash md5:a0044379abdacd02acde70fcaf19d120)
Theorem hlt_ISUM_POS_EQ_0_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, (forall p :e omega, hl_le m p = 1 /\ hl_le p n = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f p) = 1) /\ hl_isum omega (hl_numseg m n) f = hl_int_of_num (hl_NUMERAL hl_zero) -> forall p :e omega, hl_le m p = 1 /\ hl_le p n = 1 -> f p = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/isum.ml:146 / ISUM_POS_LE   (hash md5:8a0990601933236cb9beb45deb535768)
Theorem hlt_ISUM_POS_LE : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_isum A s f) = 1.
Admitted.

// HOL Light: Library/isum.ml:147 / ISUM_POS_LE_NUMSEG   (hash md5:1c6f51ac1b0edac6dbdbcfdab4a871ae)
Theorem hlt_ISUM_POS_LE_NUMSEG : forall m n :e omega, forall f :e hl_ty_int :^: omega, (forall p :e omega, hl_le m p = 1 /\ hl_le p n = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f p) = 1) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_isum omega (hl_numseg m n) f) = 1.
Admitted.

// HOL Light: Library/isum.ml:148 / ISUM_RESTRICT   (hash md5:62024840193b002b93980d35b8d91cd7)
Theorem hlt_ISUM_RESTRICT : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_isum A s (fun x :e A => hl_COND hl_ty_int (hl_IN A x s) (f x) (hl_int_of_num (hl_NUMERAL hl_zero))) = hl_isum A s f.
Admitted.

// HOL Light: Library/isum.ml:149 / ISUM_RESTRICT_SET   (hash md5:f281ebc469e94073fa35ee8c9781a34b)
Theorem hlt_ISUM_RESTRICT_SET : forall A:set, A <> Empty -> forall P s :e 2 :^: A, forall f :e hl_ty_int :^: A, hl_isum A (hl_GSPEC A (fun GEN_PVAR_318 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_318 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_isum A s (fun x :e A => hl_COND hl_ty_int (P x) (f x) (hl_int_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Library/isum.ml:150 / ISUM_RMUL   (hash md5:7f7d415bcfa81bb492c1cef5870c6436)
Theorem hlt_ISUM_RMUL : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall c :e hl_ty_int, forall s :e 2 :^: A, hl_isum A s (fun x :e A => hl_int_mul (f x) c) = hl_int_mul (hl_isum A s f) c.
Admitted.

// HOL Light: Library/isum.ml:151 / ISUM_SING   (hash md5:b4e1f741cf8fb1d423de96766c201f77)
Theorem hlt_ISUM_SING : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall x :e A, hl_isum A (hl_INSERT A x (hl_EMPTY A)) f = f x.
Admitted.

// HOL Light: Library/isum.ml:152 / ISUM_SING_NUMSEG   (hash md5:b009dfab204ee5bb6e4960d7f698a37d)
Theorem hlt_ISUM_SING_NUMSEG : forall f :e hl_ty_int :^: omega, forall n :e omega, hl_isum omega (hl_numseg n n) f = f n.
Admitted.

// HOL Light: Library/isum.ml:153 / ISUM_SUB   (hash md5:dab92c89261c200fabfb1d97ce7b7dbc)
Theorem hlt_ISUM_SUB : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_isum A s (fun x :e A => hl_int_sub (f x) (g x)) = hl_int_sub (hl_isum A s f) (hl_isum A s g).
Admitted.

// HOL Light: Library/isum.ml:154 / ISUM_SUBSET   (hash md5:46284668ff4eaba7b7ff0283c842433d)
Theorem hlt_ISUM_SUBSET : forall A:set, A <> Empty -> forall u v :e 2 :^: A, forall f :e hl_ty_int :^: A, hl_FINITE A u = 1 /\ (hl_FINITE A v = 1 /\ ((forall x :e A, hl_IN A x (hl_DIFF A u v) = 1 -> hl_int_le (f x) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ (forall x :e A, hl_IN A x (hl_DIFF A v u) = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1))) -> hl_int_le (hl_isum A u f) (hl_isum A v f) = 1.
Admitted.

// HOL Light: Library/isum.ml:155 / ISUM_SUBSET_SIMPLE   (hash md5:1c790d329660f208967e8eb280803a6a)
Theorem hlt_ISUM_SUBSET_SIMPLE : forall A:set, A <> Empty -> forall u v :e 2 :^: A, forall f :e hl_ty_int :^: A, hl_FINITE A v = 1 /\ (hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x (hl_DIFF A v u) = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1)) -> hl_int_le (hl_isum A u f) (hl_isum A v f) = 1.
Admitted.

// HOL Light: Library/isum.ml:156 / ISUM_SUB_NUMSEG   (hash md5:cd55f9f730b5b788a54b9d075b0e296a)
Theorem hlt_ISUM_SUB_NUMSEG : forall f g :e hl_ty_int :^: omega, forall m n :e omega, hl_isum omega (hl_numseg m n) (fun i :e omega => hl_int_sub (f i) (g i)) = hl_int_sub (hl_isum omega (hl_numseg m n) f) (hl_isum omega (hl_numseg m n) g).
Admitted.

// HOL Light: Library/isum.ml:157 / ISUM_ISUM_RESTRICT   (hash md5:13cdde7e391c69db95879e9811ac3e56)
Theorem hlt_ISUM_ISUM_RESTRICT : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall f :e hl_ty_int :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_isum A s (fun x :e A => hl_isum B (hl_GSPEC B (fun GEN_PVAR_319 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_319 (if hl_IN B y t = 1 /\ R1 x y = 1 then 1 else 0) y = 1 then 1 else 0)) (f x)) = hl_isum B t (fun y :e B => hl_isum A (hl_GSPEC A (fun GEN_PVAR_320 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_320 (if hl_IN A x s = 1 /\ R1 x y = 1 then 1 else 0) x = 1 then 1 else 0)) (fun x :e A => f x y)).
Admitted.

// HOL Light: Library/isum.ml:158 / ISUM_SUPERSET   (hash md5:a06b64715fea791b373c6026ea35e70b)
Theorem hlt_ISUM_SUPERSET : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall u v :e 2 :^: A, hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_int_of_num (hl_NUMERAL hl_zero)) -> hl_isum A v f = hl_isum A u f.
Admitted.

// HOL Light: Library/isum.ml:159 / ISUM_SWAP   (hash md5:92370555052bfaae88b96878e5b64e4e)
Theorem hlt_ISUM_SWAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_int :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_isum A s (fun i :e A => hl_isum B t (f i)) = hl_isum B t (fun j :e B => hl_isum A s (fun i :e A => f i j)).
Admitted.

// HOL Light: Library/isum.ml:160 / ISUM_SWAP_NUMSEG   (hash md5:648f0d220dd1f1c3024fde0533f097dc)
Theorem hlt_ISUM_SWAP_NUMSEG : forall a b c d :e omega, forall f :e hl_ty_int :^: omega :^: omega, hl_isum omega (hl_numseg a b) (fun i :e omega => hl_isum omega (hl_numseg c d) (f i)) = hl_isum omega (hl_numseg c d) (fun j :e omega => hl_isum omega (hl_numseg a b) (fun i :e omega => f i j)).
Admitted.

// HOL Light: Library/isum.ml:161 / ISUM_TRIV_NUMSEG   (hash md5:db41b9e5240344d8acfdcd8bed42900d)
Theorem hlt_ISUM_TRIV_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_lt n m = 1 -> hl_isum omega (hl_numseg m n) f = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/isum.ml:162 / ISUM_UNION   (hash md5:717260f23a3be3a79cfe116af45a3c54)
Theorem hlt_ISUM_UNION : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_DISJOINT A s t = 1) -> hl_isum A (hl_UNION A s t) f = hl_int_add (hl_isum A s f) (hl_isum A t f).
Admitted.

// HOL Light: Library/isum.ml:163 / ISUM_UNIONS_NONZERO   (hash md5:0841d7d9ab04e2bf6bccf789840593ec)
Theorem hlt_ISUM_UNIONS_NONZERO : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) s = 1 /\ ((forall t :e 2 :^: A, hl_IN (2 :^: A) t s = 1 -> hl_FINITE A t = 1) /\ (forall t1 t2 :e 2 :^: A, forall x :e A, hl_IN (2 :^: A) t1 s = 1 /\ (hl_IN (2 :^: A) t2 s = 1 /\ (~ t1 = t2 /\ (hl_IN A x t1 = 1 /\ hl_IN A x t2 = 1))) -> f x = hl_int_of_num (hl_NUMERAL hl_zero))) -> hl_isum A (hl_UNIONS A s) f = hl_isum (2 :^: A) s (fun t :e 2 :^: A => hl_isum A t f).
Admitted.

// HOL Light: Library/isum.ml:164 / ISUM_UNION_EQ   (hash md5:a551b7a99936229b2ddee4f8abbd8577)
Theorem hlt_ISUM_UNION_EQ : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s t u :e 2 :^: A, hl_FINITE A u = 1 /\ (hl_INTER A s t = hl_EMPTY A /\ hl_UNION A s t = u) -> hl_int_add (hl_isum A s f) (hl_isum A t f) = hl_isum A u f.
Admitted.

// HOL Light: Library/isum.ml:165 / ISUM_UNION_LZERO   (hash md5:51b7d049a6b414bfbb0cc3be12c0c3c7)
Theorem hlt_ISUM_UNION_LZERO : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall u v :e 2 :^: A, hl_FINITE A v = 1 /\ (forall x :e A, hl_IN A x u = 1 /\ ~ hl_IN A x v = 1 -> f x = hl_int_of_num (hl_NUMERAL hl_zero)) -> hl_isum A (hl_UNION A u v) f = hl_isum A v f.
Admitted.

// HOL Light: Library/isum.ml:166 / ISUM_UNION_NONZERO   (hash md5:7fbb6469fbd1bbc4530900c0b75da54f)
Theorem hlt_ISUM_UNION_NONZERO : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ (forall x :e A, hl_IN A x (hl_INTER A s t) = 1 -> f x = hl_int_of_num (hl_NUMERAL hl_zero))) -> hl_isum A (hl_UNION A s t) f = hl_int_add (hl_isum A s f) (hl_isum A t f).
Admitted.

// HOL Light: Library/isum.ml:167 / ISUM_UNION_RZERO   (hash md5:671f7be30261d6a19e6f701fc29bcb8b)
Theorem hlt_ISUM_UNION_RZERO : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall u v :e 2 :^: A, hl_FINITE A u = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_int_of_num (hl_NUMERAL hl_zero)) -> hl_isum A (hl_UNION A u v) f = hl_isum A u f.
Admitted.

// HOL Light: Library/isum.ml:168 / ISUM_ZERO_EXISTS   (hash md5:15f0768f1e76ae37823243779aa696e5)
Theorem hlt_ISUM_ZERO_EXISTS : forall A:set, A <> Empty -> forall u :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_isum A s u = hl_int_of_num (hl_NUMERAL hl_zero) -> (forall i :e A, hl_IN A i s = 1 -> u i = hl_int_of_num (hl_NUMERAL hl_zero)) \/ exists j k :e A, hl_IN A j s = 1 /\ (hl_int_lt (u j) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ (hl_IN A k s = 1 /\ hl_int_gt (u k) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1)).
Admitted.

// HOL Light: Library/isum.ml:169 / REAL_OF_NUM_ISUM   (hash md5:709f5eb1e140a303d878c51fccf1bae4)
Theorem hlt_REAL_OF_NUM_ISUM : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_int_of_num (hl_nsum A s f) = hl_isum A s (fun x :e A => hl_int_of_num (f x)).
Admitted.

// HOL Light: Library/isum.ml:170 / REAL_OF_NUM_ISUM_NUMSEG   (hash md5:2e940ef246f669cc86c5f00e42fe2b0f)
Theorem hlt_REAL_OF_NUM_ISUM_NUMSEG : forall f :e omega :^: omega, forall m n :e omega, hl_int_of_num (hl_nsum omega (hl_numseg m n) f) = hl_isum omega (hl_numseg m n) (fun i :e omega => hl_int_of_num (f i)).
Admitted.

// HOL Light: Library/isum.ml:181 / ISUM_ISUM_PRODUCT   (hash md5:4350a55dc1624599c44c4673fc512ae7)
Theorem hlt_ISUM_ISUM_PRODUCT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, forall x :e hl_ty_int :^: B :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_FINITE B (t i) = 1) -> hl_isum A s (fun i :e A => hl_isum B (t i) (x i)) = hl_isum (A :*: B) (hl_GSPEC (A :*: B) (fun GEN_PVAR_530 :e A :*: B => if exists i :e A, exists j :e B, hl_SETSPEC (A :*: B) GEN_PVAR_530 (if hl_IN A i s = 1 /\ hl_IN B j (t i) = 1 then 1 else 0) (hl_pair A B i j) = 1 then 1 else 0)) (hl_GABS (hl_ty_int :^: (A :*: B)) (fun f :e hl_ty_int :^: (A :*: B) => if forall i :e A, forall j :e B, hl_GEQ hl_ty_int (f (hl_pair A B i j)) (x i j) = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/isum.ml:189 / ADMISSIBLE_ISUM   (hash md5:89dc463504e63f7c8f800a6261f1061d)
Theorem hlt_ADMISSIBLE_ISUM : forall A B C P:set, A <> Empty -> B <> Empty -> C <> Empty -> P <> Empty -> forall lt :e 2 :^: A :^: B, forall p :e 2 :^: P :^: (C :^: B), forall s :e A :^: P, forall h :e hl_ty_int :^: omega :^: P :^: (C :^: B), forall a b :e omega :^: P, hl_admissible B A C (omega :*: P) hl_ty_int lt (fun f :e C :^: B => hl_GABS (2 :^: (omega :*: P)) (fun f1 :e 2 :^: (omega :*: P) => if forall k :e omega, forall x :e P, hl_GEQ 2 (f1 (hl_pair omega P k x)) (if hl_le (a x) k = 1 /\ (hl_le k (b x) = 1 /\ p f x = 1) then 1 else 0) = 1 then 1 else 0)) (hl_GABS (A :^: (omega :*: P)) (fun f :e A :^: (omega :*: P) => if forall k :e omega, forall x :e P, hl_GEQ A (f (hl_pair omega P k x)) (s x) = 1 then 1 else 0)) (fun f :e C :^: B => hl_GABS (hl_ty_int :^: (omega :*: P)) (fun f1 :e hl_ty_int :^: (omega :*: P) => if forall k :e omega, forall x :e P, hl_GEQ hl_ty_int (f1 (hl_pair omega P k x)) (h f x k) = 1 then 1 else 0)) = 1 -> hl_admissible B A C P hl_ty_int lt p s (fun f :e C :^: B => fun x :e P => hl_isum omega (hl_numseg (a x) (b x)) (h f x)) = 1.
Admitted.

// HOL Light: Library/isum.ml:197 / INT_SUB_POW_L1   (hash md5:b26bea5f7337bd08b729fccfa638d5ca)
Theorem hlt_INT_SUB_POW_L1 : forall x :e hl_ty_int, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_int_sub (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_pow x n) = hl_int_mul (hl_int_sub (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x) (hl_isum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun i :e omega => hl_int_pow x i)).
Admitted.

// HOL Light: Library/isum.ml:201 / INT_SUB_POW_R1   (hash md5:cedc63cebc050fb0a37cec6eedde5179)
Theorem hlt_INT_SUB_POW_R1 : forall x :e hl_ty_int, forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_int_sub (hl_int_pow x n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_int_mul (hl_int_sub x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_isum omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) (fun i :e omega => hl_int_pow x i)).
Admitted.

// HOL Light: Library/isum.ml:205 / ISUM_UNIV   (hash md5:51b6882a72cf7f9658ba4d1689533011)
Theorem hlt_ISUM_UNIV : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support hl_ty_int A hl_int_add f (hl_UNIV A)) s = 1 -> hl_isum A s f = hl_isum A (hl_UNIV A) f.
Admitted.

// HOL Light: Library/isum.ml:210 / ISUM_CLOSED   (hash md5:1eb177a09032f2785eb876ea3e70df18)
Theorem hlt_ISUM_CLOSED : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_int, forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, P (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ ((forall x y :e hl_ty_int, P x = 1 /\ P y = 1 -> P (hl_int_add x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1)) -> P (hl_isum A s f) = 1.
Admitted.

// HOL Light: Library/isum.ml:218 / ISUM_RELATED   (hash md5:486e5dfb0b53e9f80bb306c1cf5825d2)
Theorem hlt_ISUM_RELATED : forall A:set, A <> Empty -> forall R1 :e 2 :^: hl_ty_int :^: hl_ty_int, forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, R1 (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ ((forall m n m' n' :e hl_ty_int, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_int_add m m') (hl_int_add n n') = 1) /\ (hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> R1 (f x) (g x) = 1))) -> R1 (hl_isum A s f) (hl_isum A s g) = 1.
Admitted.

// HOL Light: Library/isum.ml:230 / ISUM_CLOSED_NONEMPTY   (hash md5:3d2d4acebe4e720dbf186e75f1b1f2b0)
Theorem hlt_ISUM_CLOSED_NONEMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_int, forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ ((forall x y :e hl_ty_int, P x = 1 /\ P y = 1 -> P (hl_int_add x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1))) -> P (hl_isum A s f) = 1.
Admitted.

// HOL Light: Library/isum.ml:240 / ISUM_RELATED_NONEMPTY   (hash md5:65e68e3c3c65a66fdb60f01c39b7c8b3)
Theorem hlt_ISUM_RELATED_NONEMPTY : forall A:set, A <> Empty -> forall R1 :e 2 :^: hl_ty_int :^: hl_ty_int, forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, (forall m n m' n' :e hl_ty_int, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_int_add m m') (hl_int_add n n') = 1) /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall x :e A, hl_IN A x s = 1 -> R1 (f x) (g x) = 1))) -> R1 (hl_isum A s f) (hl_isum A s g) = 1.
Admitted.

