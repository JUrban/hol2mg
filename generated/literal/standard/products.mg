// hol2mg literal statements (private): shard products of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/products.ml:11 / NPRODUCT_SUPPORT   (hash md5:396d7eac32eca26694e4dd6242f13820)
Theorem hlt_NPRODUCT_SUPPORT : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_nproduct A (hl_support omega A hl_mul f s) f = hl_nproduct A s f.
Admitted.

// HOL Light: Library/products.ml:15 / NPRODUCT_UNION   (hash md5:b9a4c8e99fd81ca9e896e223bf403777)
Theorem hlt_NPRODUCT_UNION : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_DISJOINT A s t = 1) -> hl_nproduct A (hl_UNION A s t) f = hl_mul (hl_nproduct A s f) (hl_nproduct A t f).
Admitted.

// HOL Light: Library/products.ml:20 / NPRODUCT_IMAGE   (hash md5:643746c59e8d829cb7957b45ea036310)
Theorem hlt_NPRODUCT_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, forall g :e omega :^: A, forall s :e 2 :^: B, (forall x y :e B, hl_IN B x s = 1 /\ (hl_IN B y s = 1 /\ f x = f y) -> x = y) -> hl_nproduct A (hl_IMAGE B A f s) g = hl_nproduct B s (hl_o A omega B g f).
Admitted.

// HOL Light: Library/products.ml:26 / NPRODUCT_INJECTION   (hash md5:1e19b78df6b510c0e800d7d9f54fa21a)
Theorem hlt_NPRODUCT_INJECTION : forall A:set, A <> Empty -> forall f :e omega :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)) -> hl_nproduct A s (hl_o A omega A f p) = hl_nproduct A s f.
Admitted.

// HOL Light: Library/products.ml:34 / NPRODUCT_ADD_SPLIT   (hash md5:61a992bee6e9eda5f2477c8973e82db3)
Theorem hlt_NPRODUCT_ADD_SPLIT : forall f :e omega :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_nproduct omega (hl_numseg m (hl_add n p)) f = hl_mul (hl_nproduct omega (hl_numseg m n) f) (hl_nproduct omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add n p)) f).
Admitted.

// HOL Light: Library/products.ml:41 / NPRODUCT_POS_LT   (hash md5:ffe3afeba66a68926e06a29167f5923f)
Theorem hlt_NPRODUCT_POS_LT : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_lt (hl_NUMERAL hl_zero) (f x) = 1) -> hl_lt (hl_NUMERAL hl_zero) (hl_nproduct A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:47 / NPRODUCT_POS_LT_NUMSEG   (hash md5:64625e27ac400e6138f3959079942b83)
Theorem hlt_NPRODUCT_POS_LT_NUMSEG : forall f :e omega :^: omega, forall m n :e omega, (forall x :e omega, hl_le m x = 1 /\ hl_le x n = 1 -> hl_lt (hl_NUMERAL hl_zero) (f x) = 1) -> hl_lt (hl_NUMERAL hl_zero) (hl_nproduct omega (hl_numseg m n) f) = 1.
Admitted.

// HOL Light: Library/products.ml:51 / NPRODUCT_OFFSET   (hash md5:92cd208bf84e4b03d30505a759a3f699)
Theorem hlt_NPRODUCT_OFFSET : forall n :e omega, forall f :e omega :^: omega, forall m p :e omega, hl_nproduct omega (hl_numseg (hl_add m p) (hl_add n p)) f = hl_nproduct omega (hl_numseg m n) (fun i :e omega => f (hl_add i p)).
Admitted.

// HOL Light: Library/products.ml:57 / NPRODUCT_SING   (hash md5:52a6fbf417cd373cffa74117b697c7f4)
Theorem hlt_NPRODUCT_SING : forall A:set, A <> Empty -> forall f :e omega :^: A, forall x :e A, hl_nproduct A (hl_INSERT A x (hl_EMPTY A)) f = f x.
Admitted.

// HOL Light: Library/products.ml:61 / NPRODUCT_SING_NUMSEG   (hash md5:ed5997232635db025eabd79ba931aac0)
Theorem hlt_NPRODUCT_SING_NUMSEG : forall f :e omega :^: omega, forall n :e omega, hl_nproduct omega (hl_numseg n n) f = f n.
Admitted.

// HOL Light: Library/products.ml:65 / NPRODUCT_CLAUSES_NUMSEG   (hash md5:c03165aa1a78758b5e9296cc08ec8144)
Theorem hlt_NPRODUCT_CLAUSES_NUMSEG : forall f :e omega :^: omega, (forall m :e omega, hl_nproduct omega (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND omega (if m = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall m n :e omega, hl_nproduct omega (hl_numseg m (hl_SUC n)) f = hl_COND omega (hl_le m (hl_SUC n)) (hl_mul (hl_nproduct omega (hl_numseg m n) f) (f (hl_SUC n))) (hl_nproduct omega (hl_numseg m n) f).
Admitted.

// HOL Light: Library/products.ml:74 / NPRODUCT_EQ   (hash md5:d9f9896ccb6a02539b68674bc5e5d062)
Theorem hlt_NPRODUCT_EQ : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_nproduct A s f = hl_nproduct A s g.
Admitted.

// HOL Light: Library/products.ml:79 / NPRODUCT_EQ_NUMSEG   (hash md5:2be4d35373e4bf7fc79f674a8e75f0a4)
Theorem hlt_NPRODUCT_EQ_NUMSEG : forall f g :e omega :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = g i) -> hl_nproduct omega (hl_numseg m n) f = hl_nproduct omega (hl_numseg m n) g.
Admitted.

// HOL Light: Library/products.ml:84 / NPRODUCT_EQ_0   (hash md5:306361a87f8123f4e88f7c2d1ac872bd)
Theorem hlt_NPRODUCT_EQ_0 : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_nproduct A s f = hl_NUMERAL hl_zero <-> exists x :e A, hl_IN A x s = 1 /\ f x = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/products.ml:90 / NPRODUCT_EQ_0_NUMSEG   (hash md5:1cd84fa5740ba5fcd03f02c25e1057a8)
Theorem hlt_NPRODUCT_EQ_0_NUMSEG : forall f :e omega :^: omega, forall m n :e omega, hl_nproduct omega (hl_numseg m n) f = hl_NUMERAL hl_zero <-> exists x :e omega, hl_le m x = 1 /\ (hl_le x n = 1 /\ f x = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/products.ml:94 / NPRODUCT_RESTRICT   (hash md5:8c62fdcdef85b0d5311215c41b19c733)
Theorem hlt_NPRODUCT_RESTRICT : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_nproduct A s (fun i :e A => hl_COND omega (hl_IN A i s) (f i) (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_nproduct A s f.
Admitted.

// HOL Light: Library/products.ml:99 / NPRODUCT_RESTRICT_SET   (hash md5:c814a2a084d1f5f39bddc25524c22af5)
Theorem hlt_NPRODUCT_RESTRICT_SET : forall A:set, A <> Empty -> forall P s :e 2 :^: A, forall f :e omega :^: A, hl_nproduct A (hl_GSPEC A (fun GEN_PVAR_424 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_424 (if hl_IN A i s = 1 /\ P i = 1 then 1 else 0) i = 1 then 1 else 0)) f = hl_nproduct A s (fun i :e A => hl_COND omega (P i) (f i) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/products.ml:105 / NPRODUCT_LE   (hash md5:754580d26dc6f4c0b655a3bec37f1b2d)
Theorem hlt_NPRODUCT_LE : forall A:set, A <> Empty -> forall g f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_le (f x) (g x) = 1) -> hl_le (hl_nproduct A s f) (hl_nproduct A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:113 / NPRODUCT_LE_NUMSEG   (hash md5:7dee64c19cac9ca48eb4cca3686d103d)
Theorem hlt_NPRODUCT_LE_NUMSEG : forall g f :e omega :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> hl_le (f i) (g i) = 1) -> hl_le (hl_nproduct omega (hl_numseg m n) f) (hl_nproduct omega (hl_numseg m n) g) = 1.
Admitted.

// HOL Light: Library/products.ml:118 / NPRODUCT_EQ_1   (hash md5:444771151a92c2aa7387f947f71c8e5a)
Theorem hlt_NPRODUCT_EQ_1 : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_nproduct A s f = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/products.ml:123 / NPRODUCT_EQ_1_NUMSEG   (hash md5:1aff3fb163f5143b40d1accc42259f30)
Theorem hlt_NPRODUCT_EQ_1_NUMSEG : forall f :e omega :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_nproduct omega (hl_numseg m n) f = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/products.ml:127 / NPRODUCT_MUL_GEN   (hash md5:bd32ea06133c1cfa69a94ba3e4f0caaf)
Theorem hlt_NPRODUCT_MUL_GEN : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_425 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_425 (if hl_IN A x s = 1 /\ ~ f x = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_426 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_426 (if hl_IN A x s = 1 /\ ~ g x = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_nproduct A s (fun x :e A => hl_mul (f x) (g x)) = hl_mul (hl_nproduct A s f) (hl_nproduct A s g).
Admitted.

// HOL Light: Library/products.ml:134 / NPRODUCT_MUL   (hash md5:55c9e4fb53021e38e4409ac8a5b4c4a8)
Theorem hlt_NPRODUCT_MUL : forall A:set, A <> Empty -> forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_nproduct A s (fun x :e A => hl_mul (f x) (g x)) = hl_mul (hl_nproduct A s f) (hl_nproduct A s g).
Admitted.

// HOL Light: Library/products.ml:140 / NPRODUCT_MUL_NUMSEG   (hash md5:193604fc90faf1fc18506e080f5d8942)
Theorem hlt_NPRODUCT_MUL_NUMSEG : forall f g :e omega :^: omega, forall m n :e omega, hl_nproduct omega (hl_numseg m n) (fun x :e omega => hl_mul (f x) (g x)) = hl_mul (hl_nproduct omega (hl_numseg m n) f) (hl_nproduct omega (hl_numseg m n) g).
Admitted.

// HOL Light: Library/products.ml:145 / NPRODUCT_CONST   (hash md5:8cf7d2d10fe0f2ad24b83f8170538b47)
Theorem hlt_NPRODUCT_CONST : forall A:set, A <> Empty -> forall c :e omega, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_nproduct A s (fun x :e A => c) = hl_EXP c (hl_CARD A s).
Admitted.

// HOL Light: Library/products.ml:150 / NPRODUCT_CONST_NUMSEG   (hash md5:4abab6c40979a64982bb048565010252)
Theorem hlt_NPRODUCT_CONST_NUMSEG : forall c m n :e omega, hl_nproduct omega (hl_numseg m n) (fun x :e omega => c) = hl_EXP c (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m).
Admitted.

// HOL Light: Library/products.ml:154 / NPRODUCT_CONST_NUMSEG_1   (hash md5:5656daaa92f5a706dfde19d344f7a5a7)
Theorem hlt_NPRODUCT_CONST_NUMSEG_1 : forall c n :e omega, hl_nproduct omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun x :e omega => c) = hl_EXP c n.
Admitted.

// HOL Light: Library/products.ml:158 / NPRODUCT_ONE   (hash md5:35370285fccaa44350915b469094b32c)
Theorem hlt_NPRODUCT_ONE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_nproduct A s (fun n :e A => hl_NUMERAL (hl_BIT1 hl_zero)) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/products.ml:162 / NPRODUCT_CLOSED   (hash md5:1d885d704e76295798334afd6ec38dff)
Theorem hlt_NPRODUCT_CLOSED : forall A:set, A <> Empty -> forall P :e 2 :^: omega, forall f :e omega :^: A, forall s :e 2 :^: A, P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ ((forall x y :e omega, P x = 1 /\ P y = 1 -> P (hl_mul x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1)) -> P (hl_nproduct A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:170 / NPRODUCT_RELATED   (hash md5:7f93860724e8ee6380425ea451672afe)
Theorem hlt_NPRODUCT_RELATED : forall A:set, A <> Empty -> forall R1 :e 2 :^: omega :^: omega, forall f g :e omega :^: A, forall s :e 2 :^: A, R1 (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ ((forall m n m' n' :e omega, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_mul m m') (hl_mul n n') = 1) /\ (hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> R1 (f i) (g i) = 1))) -> R1 (hl_nproduct A s f) (hl_nproduct A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:182 / NPRODUCT_CLOSED_NONEMPTY   (hash md5:9e8adc269f451b5b67a867a77ccc920d)
Theorem hlt_NPRODUCT_CLOSED_NONEMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: omega, forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ ((forall x y :e omega, P x = 1 /\ P y = 1 -> P (hl_mul x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1))) -> P (hl_nproduct A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:192 / NPRODUCT_RELATED_NONEMPTY   (hash md5:55b06d0e8ef3757567427f313776b465)
Theorem hlt_NPRODUCT_RELATED_NONEMPTY : forall A:set, A <> Empty -> forall R1 :e 2 :^: omega :^: omega, forall f g :e omega :^: A, forall s :e 2 :^: A, (forall m n m' n' :e omega, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_mul m m') (hl_mul n n') = 1) /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall i :e A, hl_IN A i s = 1 -> R1 (f i) (g i) = 1))) -> R1 (hl_nproduct A s f) (hl_nproduct A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:203 / CONG_NPRODUCT   (hash md5:5089730001f618b769165ce572ee06b1)
Theorem hlt_CONG_NPRODUCT : forall A:set, A <> Empty -> forall n :e omega, forall f g :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_sym_3d3d omega (f x) (g x) (hl_num_mod n) = 1) -> hl_sym_3d3d omega (hl_nproduct A s f) (hl_nproduct A s g) (hl_num_mod n) = 1.
Admitted.

// HOL Light: Library/products.ml:213 / NPRODUCT_CLAUSES_LEFT   (hash md5:f7c4c81fefee0b186285e74c50edfe09)
Theorem hlt_NPRODUCT_CLAUSES_LEFT : forall f :e omega :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_nproduct omega (hl_numseg m n) f = hl_mul (f m) (hl_nproduct omega (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f).
Admitted.

// HOL Light: Library/products.ml:218 / NPRODUCT_CLAUSES_RIGHT   (hash md5:e1a999dd80283201937f3d15d1bf5f81)
Theorem hlt_NPRODUCT_CLAUSES_RIGHT : forall f :e omega :^: omega, forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ hl_le m n = 1 -> hl_nproduct omega (hl_numseg m n) f = hl_mul (hl_nproduct omega (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (f n).
Admitted.

// HOL Light: Library/products.ml:223 / NPRODUCT_SUPERSET   (hash md5:3bd7b360ab0e3a42bda2c54542c28aa4)
Theorem hlt_NPRODUCT_SUPERSET : forall A:set, A <> Empty -> forall f :e omega :^: A, forall u v :e 2 :^: A, hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_nproduct A v f = hl_nproduct A u f.
Admitted.

// HOL Light: Library/products.ml:229 / NPRODUCT_UNIV   (hash md5:6d5570f9ee3e7bf929eb97bfb50723f3)
Theorem hlt_NPRODUCT_UNIV : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support omega A hl_mul f (hl_UNIV A)) s = 1 -> hl_nproduct A s f = hl_nproduct A (hl_UNIV A) f.
Admitted.

// HOL Light: Library/products.ml:235 / NPRODUCT_PAIR   (hash md5:d44fd16f9e51c68eda0cb0ec27e17c62)
Theorem hlt_NPRODUCT_PAIR : forall f :e omega :^: omega, forall m n :e omega, hl_nproduct omega (hl_numseg (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero)))) f = hl_nproduct omega (hl_numseg m n) (fun i :e omega => hl_mul (f (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (f (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Library/products.ml:240 / NPRODUCT_REFLECT   (hash md5:eb52959794caca5dc9187377397fd3d4)
Theorem hlt_NPRODUCT_REFLECT : forall x :e omega :^: omega, forall m n :e omega, hl_nproduct omega (hl_numseg m n) x = hl_COND omega (hl_lt n m) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_nproduct omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => x (hl_sub n i))).
Admitted.

// HOL Light: Library/products.ml:247 / NPRODUCT_DELETE   (hash md5:e6f20df4fd69edfa09e038d4939d2b99)
Theorem hlt_NPRODUCT_DELETE : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_mul (f a) (hl_nproduct A (hl_DELETE A s a) f) = hl_nproduct A s f.
Admitted.

// HOL Light: Library/products.ml:252 / NPRODUCT_FACT   (hash md5:e29753525eca65c84c82ef6d2d7820a5)
Theorem hlt_NPRODUCT_FACT : forall n :e omega, hl_nproduct omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun m :e omega => m) = hl_FACT n.
Admitted.

// HOL Light: Library/products.ml:257 / NPRODUCT_DELTA   (hash md5:ef4295ace5437ef32c31007bcd9ea963)
Theorem hlt_NPRODUCT_DELTA : forall A:set, A <> Empty -> forall b :e omega, forall s :e 2 :^: A, forall a :e A, hl_nproduct A s (fun x :e A => hl_COND omega (if x = a then 1 else 0) b (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_COND omega (hl_IN A a s) b (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/products.ml:263 / EXP_NSUM   (hash md5:cbaef68868b2f2a3aee2688877c1dcb7)
Theorem hlt_EXP_NSUM : forall A:set, A <> Empty -> forall m :e omega, forall n :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_EXP m (hl_nsum A s n) = hl_nproduct A s (fun i :e A => hl_EXP m (n i)).
Admitted.

// HOL Light: Library/products.ml:269 / HAS_SIZE_CART   (hash md5:4ea1760e720f13018c8abd2c664d4f96)
Theorem hlt_HAS_SIZE_CART : forall A N:set, A <> Empty -> N <> Empty -> forall P :e 2 :^: A :^: omega, forall m :e omega :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_HAS_SIZE A (hl_GSPEC A (fun GEN_PVAR_432 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_432 (P i x) x = 1 then 1 else 0)) (m i) = 1) -> hl_HAS_SIZE (hl_ty_cart A N) (hl_GSPEC (hl_ty_cart A N) (fun GEN_PVAR_433 :e hl_ty_cart A N => if exists v :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A N) GEN_PVAR_433 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex A N v i) = 1 then 1 else 0) v = 1 then 1 else 0)) (hl_nproduct omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) m) = 1.
Admitted.

// HOL Light: Library/products.ml:333 / CARD_CART   (hash md5:8b10b6fb3663639114432b3699de1cba)
Theorem hlt_CARD_CART : forall A N:set, A <> Empty -> N <> Empty -> forall P :e 2 :^: A :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_434 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_434 (P i x) x = 1 then 1 else 0)) = 1) -> hl_CARD (hl_ty_cart A N) (hl_GSPEC (hl_ty_cart A N) (fun GEN_PVAR_435 :e hl_ty_cart A N => if exists v :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A N) GEN_PVAR_435 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex A N v i) = 1 then 1 else 0) v = 1 then 1 else 0)) = hl_nproduct omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_CARD A (hl_GSPEC A (fun GEN_PVAR_436 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_436 (P i x) x = 1 then 1 else 0))).
Admitted.

// HOL Light: Library/products.ml:357 / IPRODUCT_SUPPORT   (hash md5:d76e0cc6caeea52dff00968e68e78839)
Theorem hlt_IPRODUCT_SUPPORT : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_iproduct A (hl_support hl_ty_int A hl_int_mul f s) f = hl_iproduct A s f.
Admitted.

// HOL Light: Library/products.ml:361 / IPRODUCT_UNION   (hash md5:5509a731ee7325c4b001d3a083c4fe2a)
Theorem hlt_IPRODUCT_UNION : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_DISJOINT A s t = 1) -> hl_iproduct A (hl_UNION A s t) f = hl_int_mul (hl_iproduct A s f) (hl_iproduct A t f).
Admitted.

// HOL Light: Library/products.ml:366 / IPRODUCT_IMAGE   (hash md5:d42c1bc8361166a745b672b903c6b260)
Theorem hlt_IPRODUCT_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, forall g :e hl_ty_int :^: A, forall s :e 2 :^: B, (forall x y :e B, hl_IN B x s = 1 /\ (hl_IN B y s = 1 /\ f x = f y) -> x = y) -> hl_iproduct A (hl_IMAGE B A f s) g = hl_iproduct B s (hl_o A hl_ty_int B g f).
Admitted.

// HOL Light: Library/products.ml:372 / IPRODUCT_INJECTION   (hash md5:a03de52623a2408e276035250dcb9c56)
Theorem hlt_IPRODUCT_INJECTION : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)) -> hl_iproduct A s (hl_o A hl_ty_int A f p) = hl_iproduct A s f.
Admitted.

// HOL Light: Library/products.ml:380 / IPRODUCT_ADD_SPLIT   (hash md5:1a5393d64965951fbea3d6eb7d3265df)
Theorem hlt_IPRODUCT_ADD_SPLIT : forall f :e hl_ty_int :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_iproduct omega (hl_numseg m (hl_add n p)) f = hl_int_mul (hl_iproduct omega (hl_numseg m n) f) (hl_iproduct omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add n p)) f).
Admitted.

// HOL Light: Library/products.ml:387 / IPRODUCT_POS_LE   (hash md5:3d674d8efd6f5e5ac7a8a8c11fe2f4cb)
Theorem hlt_IPRODUCT_POS_LE : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_iproduct A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:393 / IPRODUCT_POS_LE_NUMSEG   (hash md5:dba65b076c139386dee1807eab2ad299)
Theorem hlt_IPRODUCT_POS_LE_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, (forall x :e omega, hl_le m x = 1 /\ hl_le x n = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_iproduct omega (hl_numseg m n) f) = 1.
Admitted.

// HOL Light: Library/products.ml:397 / IPRODUCT_POS_LT   (hash md5:6f65afee359959e05d515759f39603e7)
Theorem hlt_IPRODUCT_POS_LT : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_iproduct A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:403 / IPRODUCT_POS_LT_NUMSEG   (hash md5:561787ecb99e297ee351d6b28f37e49f)
Theorem hlt_IPRODUCT_POS_LT_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, (forall x :e omega, hl_le m x = 1 /\ hl_le x n = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_iproduct omega (hl_numseg m n) f) = 1.
Admitted.

// HOL Light: Library/products.ml:407 / IPRODUCT_OFFSET   (hash md5:d01dcc31b1e270f7c429fe0952c26132)
Theorem hlt_IPRODUCT_OFFSET : forall n :e omega, forall f :e hl_ty_int :^: omega, forall m p :e omega, hl_iproduct omega (hl_numseg (hl_add m p) (hl_add n p)) f = hl_iproduct omega (hl_numseg m n) (fun i :e omega => f (hl_add i p)).
Admitted.

// HOL Light: Library/products.ml:413 / IPRODUCT_SING   (hash md5:faf67d794ffaa6d0f6240f11dee2bbe0)
Theorem hlt_IPRODUCT_SING : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall x :e A, hl_iproduct A (hl_INSERT A x (hl_EMPTY A)) f = f x.
Admitted.

// HOL Light: Library/products.ml:417 / IPRODUCT_SING_NUMSEG   (hash md5:61963aee326b1589b22f2bfc631ba9e6)
Theorem hlt_IPRODUCT_SING_NUMSEG : forall f :e hl_ty_int :^: omega, forall n :e omega, hl_iproduct omega (hl_numseg n n) f = f n.
Admitted.

// HOL Light: Library/products.ml:421 / IPRODUCT_CLAUSES_NUMSEG   (hash md5:5d645f095597c1945354990de874d076)
Theorem hlt_IPRODUCT_CLAUSES_NUMSEG : forall f :e hl_ty_int :^: omega, (forall m :e omega, hl_iproduct omega (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND hl_ty_int (if m = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) /\ forall m n :e omega, hl_iproduct omega (hl_numseg m (hl_SUC n)) f = hl_COND hl_ty_int (hl_le m (hl_SUC n)) (hl_int_mul (hl_iproduct omega (hl_numseg m n) f) (f (hl_SUC n))) (hl_iproduct omega (hl_numseg m n) f).
Admitted.

// HOL Light: Library/products.ml:430 / IPRODUCT_EQ   (hash md5:4a453eba16a2ca3cc65f36067aa08b65)
Theorem hlt_IPRODUCT_EQ : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_iproduct A s f = hl_iproduct A s g.
Admitted.

// HOL Light: Library/products.ml:435 / IPRODUCT_EQ_NUMSEG   (hash md5:55f08d19ee84e327439c3ab0cf077d35)
Theorem hlt_IPRODUCT_EQ_NUMSEG : forall f g :e hl_ty_int :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = g i) -> hl_iproduct omega (hl_numseg m n) f = hl_iproduct omega (hl_numseg m n) g.
Admitted.

// HOL Light: Library/products.ml:440 / IPRODUCT_EQ_0   (hash md5:49c6360ab44db020a0bd1fdd5de9537f)
Theorem hlt_IPRODUCT_EQ_0 : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_iproduct A s f = hl_int_of_num (hl_NUMERAL hl_zero) <-> exists x :e A, hl_IN A x s = 1 /\ f x = hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/products.ml:447 / IPRODUCT_EQ_0_NUMSEG   (hash md5:856a58dd48fd98f94056fd9eaae06ccb)
Theorem hlt_IPRODUCT_EQ_0_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_iproduct omega (hl_numseg m n) f = hl_int_of_num (hl_NUMERAL hl_zero) <-> exists x :e omega, hl_le m x = 1 /\ (hl_le x n = 1 /\ f x = hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/products.ml:451 / IPRODUCT_RESTRICT   (hash md5:8a240d93cb24a2763e59413d4c28ea39)
Theorem hlt_IPRODUCT_RESTRICT : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_iproduct A s (fun i :e A => hl_COND hl_ty_int (hl_IN A i s) (f i) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_iproduct A s f.
Admitted.

// HOL Light: Library/products.ml:456 / IPRODUCT_RESTRICT_SET   (hash md5:2340dc8d7e656d20e884454bf1821514)
Theorem hlt_IPRODUCT_RESTRICT_SET : forall A:set, A <> Empty -> forall P s :e 2 :^: A, forall f :e hl_ty_int :^: A, hl_iproduct A (hl_GSPEC A (fun GEN_PVAR_439 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_439 (if hl_IN A i s = 1 /\ P i = 1 then 1 else 0) i = 1 then 1 else 0)) f = hl_iproduct A s (fun i :e A => hl_COND hl_ty_int (P i) (f i) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/products.ml:462 / IPRODUCT_LE   (hash md5:b5d0b3b67436010bad4b87bb124ac9df)
Theorem hlt_IPRODUCT_LE : forall A:set, A <> Empty -> forall g f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1 /\ hl_int_le (f x) (g x) = 1) -> hl_int_le (hl_iproduct A s f) (hl_iproduct A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:470 / IPRODUCT_LE_NUMSEG   (hash md5:8c070524ae7d0f42513c1a1e0192338a)
Theorem hlt_IPRODUCT_LE_NUMSEG : forall g f :e hl_ty_int :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f i) = 1 /\ hl_int_le (f i) (g i) = 1) -> hl_int_le (hl_iproduct omega (hl_numseg m n) f) (hl_iproduct omega (hl_numseg m n) g) = 1.
Admitted.

// HOL Light: Library/products.ml:475 / IPRODUCT_EQ_1   (hash md5:b4c61ff754202931caec8c99e2d32918)
Theorem hlt_IPRODUCT_EQ_1 : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_iproduct A s f = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/products.ml:480 / IPRODUCT_EQ_1_NUMSEG   (hash md5:535ccc9c2fc0d8154c0b0f81514d13cb)
Theorem hlt_IPRODUCT_EQ_1_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_iproduct omega (hl_numseg m n) f = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/products.ml:484 / IPRODUCT_MUL_GEN   (hash md5:7a7d804e11f7b79751f16518e71db8c0)
Theorem hlt_IPRODUCT_MUL_GEN : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_440 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_440 (if hl_IN A x s = 1 /\ ~ f x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_441 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_441 (if hl_IN A x s = 1 /\ ~ g x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_iproduct A s (fun x :e A => hl_int_mul (f x) (g x)) = hl_int_mul (hl_iproduct A s f) (hl_iproduct A s g).
Admitted.

// HOL Light: Library/products.ml:491 / IPRODUCT_MUL   (hash md5:2c0a7c4e1cee59dd460fc4acc3e6747c)
Theorem hlt_IPRODUCT_MUL : forall A:set, A <> Empty -> forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_iproduct A s (fun x :e A => hl_int_mul (f x) (g x)) = hl_int_mul (hl_iproduct A s f) (hl_iproduct A s g).
Admitted.

// HOL Light: Library/products.ml:497 / IPRODUCT_MUL_NUMSEG   (hash md5:a6432f6095e44de020d9cdb058c4afc1)
Theorem hlt_IPRODUCT_MUL_NUMSEG : forall f g :e hl_ty_int :^: omega, forall m n :e omega, hl_iproduct omega (hl_numseg m n) (fun x :e omega => hl_int_mul (f x) (g x)) = hl_int_mul (hl_iproduct omega (hl_numseg m n) f) (hl_iproduct omega (hl_numseg m n) g).
Admitted.

// HOL Light: Library/products.ml:502 / IPRODUCT_CONST   (hash md5:3dc0ebc31b0366f4170222aa050c1617)
Theorem hlt_IPRODUCT_CONST : forall A:set, A <> Empty -> forall c :e hl_ty_int, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_iproduct A s (fun x :e A => c) = hl_int_pow c (hl_CARD A s).
Admitted.

// HOL Light: Library/products.ml:507 / IPRODUCT_CONST_NUMSEG   (hash md5:86ff2e29f1aa3717920d85f6c94dc266)
Theorem hlt_IPRODUCT_CONST_NUMSEG : forall c :e hl_ty_int, forall m n :e omega, hl_iproduct omega (hl_numseg m n) (fun x :e omega => c) = hl_int_pow c (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m).
Admitted.

// HOL Light: Library/products.ml:511 / IPRODUCT_CONST_NUMSEG_1   (hash md5:8c4999dcf9114b8499cb5917127235e2)
Theorem hlt_IPRODUCT_CONST_NUMSEG_1 : forall c :e hl_ty_int, forall n :e omega, hl_iproduct omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun x :e omega => c) = hl_int_pow c n.
Admitted.

// HOL Light: Library/products.ml:515 / IPRODUCT_NEG   (hash md5:a0d71ef6a5c2cc569baf39a3a681ea1a)
Theorem hlt_IPRODUCT_NEG : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_iproduct A s (fun i :e A => hl_int_neg (f i)) = hl_int_mul (hl_int_pow (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD A s)) (hl_iproduct A s f).
Admitted.

// HOL Light: Library/products.ml:522 / IPRODUCT_NEG_NUMSEG   (hash md5:9909c5a9a9244ae42c86f253e04021e6)
Theorem hlt_IPRODUCT_NEG_NUMSEG : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_iproduct omega (hl_numseg m n) (fun i :e omega => hl_int_neg (f i)) = hl_int_mul (hl_int_pow (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m)) (hl_iproduct omega (hl_numseg m n) f).
Admitted.

// HOL Light: Library/products.ml:527 / IPRODUCT_NEG_NUMSEG_1   (hash md5:bc2c4de1a30c4bb9897a7981d7758b27)
Theorem hlt_IPRODUCT_NEG_NUMSEG_1 : forall f :e hl_ty_int :^: omega, forall n :e omega, hl_iproduct omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun i :e omega => hl_int_neg (f i)) = hl_int_mul (hl_int_pow (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n) (hl_iproduct omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) f).
Admitted.

// HOL Light: Library/products.ml:531 / IPRODUCT_ONE   (hash md5:2a8be89b859522e9b583262d7fa4a6d4)
Theorem hlt_IPRODUCT_ONE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_iproduct A s (fun n :e A => hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/products.ml:535 / IPRODUCT_LE_1   (hash md5:703c6480a77286c55280a8a88cf9596b)
Theorem hlt_IPRODUCT_LE_1 : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (f x) = 1 /\ hl_int_le (f x) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> hl_int_le (hl_iproduct A s f) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/products.ml:544 / IPRODUCT_ABS   (hash md5:0a3922cd56c1d3f6a14a87ceba1434b5)
Theorem hlt_IPRODUCT_ABS : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_iproduct A s (fun x :e A => hl_int_abs (f x)) = hl_int_abs (hl_iproduct A s f).
Admitted.

// HOL Light: Library/products.ml:549 / IPRODUCT_CLOSED   (hash md5:fb362fbdd2df4d343546c874cfb34cf9)
Theorem hlt_IPRODUCT_CLOSED : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_int, forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, P (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ ((forall x y :e hl_ty_int, P x = 1 /\ P y = 1 -> P (hl_int_mul x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1)) -> P (hl_iproduct A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:557 / IPRODUCT_RELATED   (hash md5:199020f3639a8715fb57253d26794480)
Theorem hlt_IPRODUCT_RELATED : forall A:set, A <> Empty -> forall R1 :e 2 :^: hl_ty_int :^: hl_ty_int, forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, R1 (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ ((forall m n m' n' :e hl_ty_int, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_int_mul m m') (hl_int_mul n n') = 1) /\ (hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> R1 (f i) (g i) = 1))) -> R1 (hl_iproduct A s f) (hl_iproduct A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:569 / IPRODUCT_CLOSED_NONEMPTY   (hash md5:dc1fadac71bb6c188e8859b6ae983375)
Theorem hlt_IPRODUCT_CLOSED_NONEMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_int, forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ ((forall x y :e hl_ty_int, P x = 1 /\ P y = 1 -> P (hl_int_mul x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1))) -> P (hl_iproduct A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:579 / IPRODUCT_RELATED_NONEMPTY   (hash md5:ce819d752a2b0de941e113f37adff799)
Theorem hlt_IPRODUCT_RELATED_NONEMPTY : forall A:set, A <> Empty -> forall R1 :e 2 :^: hl_ty_int :^: hl_ty_int, forall f g :e hl_ty_int :^: A, forall s :e 2 :^: A, (forall m n m' n' :e hl_ty_int, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_int_mul m m') (hl_int_mul n n') = 1) /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall i :e A, hl_IN A i s = 1 -> R1 (f i) (g i) = 1))) -> R1 (hl_iproduct A s f) (hl_iproduct A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:590 / IPRODUCT_CLAUSES_LEFT   (hash md5:05a1b56a69cec53a7975e6e0d20cfe5f)
Theorem hlt_IPRODUCT_CLAUSES_LEFT : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_iproduct omega (hl_numseg m n) f = hl_int_mul (f m) (hl_iproduct omega (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f).
Admitted.

// HOL Light: Library/products.ml:595 / IPRODUCT_CLAUSES_RIGHT   (hash md5:5424d462eff0a7d8b1fadce5ed1af978)
Theorem hlt_IPRODUCT_CLAUSES_RIGHT : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ hl_le m n = 1 -> hl_iproduct omega (hl_numseg m n) f = hl_int_mul (hl_iproduct omega (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (f n).
Admitted.

// HOL Light: Library/products.ml:600 / INT_OF_NUM_NPRODUCT   (hash md5:b9749c696c5515c7e8e32e0f97f658df)
Theorem hlt_INT_OF_NUM_NPRODUCT : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_int_of_num (hl_nproduct A s f) = hl_iproduct A s (fun x :e A => hl_int_of_num (f x)).
Admitted.

// HOL Light: Library/products.ml:605 / IPRODUCT_SUPERSET   (hash md5:8f94a58c03a4ddf9fcb394b95a999c95)
Theorem hlt_IPRODUCT_SUPERSET : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall u v :e 2 :^: A, hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_iproduct A v f = hl_iproduct A u f.
Admitted.

// HOL Light: Library/products.ml:612 / IPRODUCT_UNIV   (hash md5:aac3a02ca08356396426b4490ed0ef76)
Theorem hlt_IPRODUCT_UNIV : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support hl_ty_int A hl_int_mul f (hl_UNIV A)) s = 1 -> hl_iproduct A s f = hl_iproduct A (hl_UNIV A) f.
Admitted.

// HOL Light: Library/products.ml:618 / IPRODUCT_PAIR   (hash md5:1f6d246e944d61e6d8ba26ce3c620e77)
Theorem hlt_IPRODUCT_PAIR : forall f :e hl_ty_int :^: omega, forall m n :e omega, hl_iproduct omega (hl_numseg (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero)))) f = hl_iproduct omega (hl_numseg m n) (fun i :e omega => hl_int_mul (f (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (f (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Library/products.ml:623 / IPRODUCT_REFLECT   (hash md5:ee40b76504f563679eeed52b51ffb0fe)
Theorem hlt_IPRODUCT_REFLECT : forall x :e hl_ty_int :^: omega, forall m n :e omega, hl_iproduct omega (hl_numseg m n) x = hl_COND hl_ty_int (hl_lt n m) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_iproduct omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => x (hl_sub n i))).
Admitted.

// HOL Light: Library/products.ml:630 / IPRODUCT_DELETE   (hash md5:176e334b68dfaa64630ecf40567eb35b)
Theorem hlt_IPRODUCT_DELETE : forall A:set, A <> Empty -> forall f :e hl_ty_int :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_int_mul (f a) (hl_iproduct A (hl_DELETE A s a) f) = hl_iproduct A s f.
Admitted.

// HOL Light: Library/products.ml:635 / IPRODUCT_DELTA   (hash md5:09f7f3e82d8ed2abe41453bef53e05c0)
Theorem hlt_IPRODUCT_DELTA : forall A:set, A <> Empty -> forall b :e hl_ty_int, forall s :e 2 :^: A, forall a :e A, hl_iproduct A s (fun x :e A => hl_COND hl_ty_int (if x = a then 1 else 0) b (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_COND hl_ty_int (hl_IN A a s) b (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/products.ml:641 / INT_POW_NSUM   (hash md5:52e9e0659f5802e91f3c43d50ea9dd15)
Theorem hlt_INT_POW_NSUM : forall A:set, A <> Empty -> forall x :e hl_ty_int, forall n :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_int_pow x (hl_nsum A s n) = hl_iproduct A s (fun i :e A => hl_int_pow x (n i)).
Admitted.

// HOL Light: Library/products.ml:664 / PRODUCT_SUPPORT   (hash md5:20495e97075bf7c44766b4c27f4de546)
Theorem hlt_PRODUCT_SUPPORT : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_product A (hl_support R A hl_real_mul f s) f = hl_product A s f.
Admitted.

// HOL Light: Library/products.ml:668 / PRODUCT_UNION   (hash md5:46562e5a9a802c17cf2749bb2cbb8604)
Theorem hlt_PRODUCT_UNION : forall A:set, A <> Empty -> forall f :e R :^: A, forall s t :e 2 :^: A, hl_FINITE A s = 1 /\ (hl_FINITE A t = 1 /\ hl_DISJOINT A s t = 1) -> hl_product A (hl_UNION A s t) f = hl_real_mul (hl_product A s f) (hl_product A t f).
Admitted.

// HOL Light: Library/products.ml:673 / PRODUCT_IMAGE   (hash md5:5c12751fc191cf637b4b22b8e2232939)
Theorem hlt_PRODUCT_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, forall g :e R :^: A, forall s :e 2 :^: B, (forall x y :e B, hl_IN B x s = 1 /\ (hl_IN B y s = 1 /\ f x = f y) -> x = y) -> hl_product A (hl_IMAGE B A f s) g = hl_product B s (hl_o A R B g f).
Admitted.

// HOL Light: Library/products.ml:679 / PRODUCT_INJECTION   (hash md5:101dc7bb6f72de80e2dcdc70cc65f962)
Theorem hlt_PRODUCT_INJECTION : forall A:set, A <> Empty -> forall f :e R :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)) -> hl_product A s (hl_o A R A f p) = hl_product A s f.
Admitted.

// HOL Light: Library/products.ml:687 / PRODUCT_ADD_SPLIT   (hash md5:16f7c9f4947a38a51af9ecca0650af8a)
Theorem hlt_PRODUCT_ADD_SPLIT : forall f :e R :^: omega, forall m n p :e omega, hl_le m (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_product omega (hl_numseg m (hl_add n p)) f = hl_real_mul (hl_product omega (hl_numseg m n) f) (hl_product omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add n p)) f).
Admitted.

// HOL Light: Library/products.ml:694 / PRODUCT_POS_LE   (hash md5:df4e9276927f7a21eae0031521b0ecaf)
Theorem hlt_PRODUCT_POS_LE : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_product A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:700 / PRODUCT_POS_LE_NUMSEG   (hash md5:558c086899fff335b778ca68569c1874)
Theorem hlt_PRODUCT_POS_LE_NUMSEG : forall f :e R :^: omega, forall m n :e omega, (forall x :e omega, hl_le m x = 1 /\ hl_le x n = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_product omega (hl_numseg m n) f) = 1.
Admitted.

// HOL Light: Library/products.ml:704 / PRODUCT_POS_LT   (hash md5:3ac3ad517b083e9e24bfb3e1a9ec0f17)
Theorem hlt_PRODUCT_POS_LT : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_product A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:710 / PRODUCT_POS_LT_NUMSEG   (hash md5:168e8814c38f64ac29e8d811fcce60fc)
Theorem hlt_PRODUCT_POS_LT_NUMSEG : forall f :e R :^: omega, forall m n :e omega, (forall x :e omega, hl_le m x = 1 /\ hl_le x n = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1) -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_product omega (hl_numseg m n) f) = 1.
Admitted.

// HOL Light: Library/products.ml:714 / PRODUCT_OFFSET   (hash md5:9c20f7dc16a9e5735a4e771ec63108a8)
Theorem hlt_PRODUCT_OFFSET : forall n :e omega, forall f :e R :^: omega, forall m p :e omega, hl_product omega (hl_numseg (hl_add m p) (hl_add n p)) f = hl_product omega (hl_numseg m n) (fun i :e omega => f (hl_add i p)).
Admitted.

// HOL Light: Library/products.ml:720 / PRODUCT_SING   (hash md5:579d8f93b3d140ad5f56d47f99252b8f)
Theorem hlt_PRODUCT_SING : forall A:set, A <> Empty -> forall f :e R :^: A, forall x :e A, hl_product A (hl_INSERT A x (hl_EMPTY A)) f = f x.
Admitted.

// HOL Light: Library/products.ml:724 / PRODUCT_SING_NUMSEG   (hash md5:7435fd30864b0348ef610483d15263f0)
Theorem hlt_PRODUCT_SING_NUMSEG : forall f :e R :^: omega, forall n :e omega, hl_product omega (hl_numseg n n) f = f n.
Admitted.

// HOL Light: Library/products.ml:728 / PRODUCT_CLAUSES_NUMSEG   (hash md5:ae7a3129eb9e095e8e130e291cd0c461)
Theorem hlt_PRODUCT_CLAUSES_NUMSEG : forall f :e R :^: omega, (forall m :e omega, hl_product omega (hl_numseg m (hl_NUMERAL hl_zero)) f = hl_COND R (if m = hl_NUMERAL hl_zero then 1 else 0) (f (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) /\ forall m n :e omega, hl_product omega (hl_numseg m (hl_SUC n)) f = hl_COND R (hl_le m (hl_SUC n)) (hl_real_mul (hl_product omega (hl_numseg m n) f) (f (hl_SUC n))) (hl_product omega (hl_numseg m n) f).
Admitted.

// HOL Light: Library/products.ml:737 / PRODUCT_EQ   (hash md5:367b84e09afc083f2d3272fbfb274902)
Theorem hlt_PRODUCT_EQ : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = g x) -> hl_product A s f = hl_product A s g.
Admitted.

// HOL Light: Library/products.ml:742 / PRODUCT_EQ_NUMSEG   (hash md5:e0a69e87b5365dfd6580b3890e3f91bd)
Theorem hlt_PRODUCT_EQ_NUMSEG : forall f g :e R :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = g i) -> hl_product omega (hl_numseg m n) f = hl_product omega (hl_numseg m n) g.
Admitted.

// HOL Light: Library/products.ml:747 / PRODUCT_EQ_0   (hash md5:0bb2420dcbf76636f623c4f697c8afc7)
Theorem hlt_PRODUCT_EQ_0 : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_product A s f = hl_real_of_num (hl_NUMERAL hl_zero) <-> exists x :e A, hl_IN A x s = 1 /\ f x = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/products.ml:754 / PRODUCT_EQ_0_NUMSEG   (hash md5:ed9101e0016847e0caa50f734b69517d)
Theorem hlt_PRODUCT_EQ_0_NUMSEG : forall f :e R :^: omega, forall m n :e omega, hl_product omega (hl_numseg m n) f = hl_real_of_num (hl_NUMERAL hl_zero) <-> exists x :e omega, hl_le m x = 1 /\ (hl_le x n = 1 /\ f x = hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/products.ml:758 / PRODUCT_RESTRICT   (hash md5:1a7ca8c44ad54a6b249d644bb8e82f50)
Theorem hlt_PRODUCT_RESTRICT : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_product A s (fun i :e A => hl_COND R (hl_IN A i s) (f i) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_product A s f.
Admitted.

// HOL Light: Library/products.ml:763 / PRODUCT_RESTRICT_SET   (hash md5:d10decb8e08667f1d0689cfa81f58869)
Theorem hlt_PRODUCT_RESTRICT_SET : forall A:set, A <> Empty -> forall P s :e 2 :^: A, forall f :e R :^: A, hl_product A (hl_GSPEC A (fun GEN_PVAR_444 :e A => if exists i :e A, hl_SETSPEC A GEN_PVAR_444 (if hl_IN A i s = 1 /\ P i = 1 then 1 else 0) i = 1 then 1 else 0)) f = hl_product A s (fun i :e A => hl_COND R (P i) (f i) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/products.ml:769 / PRODUCT_LE   (hash md5:f3618ff994cd4617b35734da991ff16e)
Theorem hlt_PRODUCT_LE : forall A:set, A <> Empty -> forall g f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1 /\ hl_real_le (f x) (g x) = 1) -> hl_real_le (hl_product A s f) (hl_product A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:777 / PRODUCT_LE_NUMSEG   (hash md5:c999f2f97aeb05f960646dd044daad9b)
Theorem hlt_PRODUCT_LE_NUMSEG : forall g f :e R :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f i) = 1 /\ hl_real_le (f i) (g i) = 1) -> hl_real_le (hl_product omega (hl_numseg m n) f) (hl_product omega (hl_numseg m n) g) = 1.
Admitted.

// HOL Light: Library/products.ml:782 / PRODUCT_EQ_1   (hash md5:e9638c11e82dada61306fe8a97939756)
Theorem hlt_PRODUCT_EQ_1 : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> f x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_product A s f = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/products.ml:787 / PRODUCT_EQ_1_NUMSEG   (hash md5:7a6059fbed63ca26978ea111ae59c914)
Theorem hlt_PRODUCT_EQ_1_NUMSEG : forall f :e R :^: omega, forall m n :e omega, (forall i :e omega, hl_le m i = 1 /\ hl_le i n = 1 -> f i = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_product omega (hl_numseg m n) f = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/products.ml:791 / PRODUCT_MUL_GEN   (hash md5:605c96d5f1bff0021eedbf53b22c5572)
Theorem hlt_PRODUCT_MUL_GEN : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_445 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_445 (if hl_IN A x s = 1 /\ ~ f x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) x = 1 then 1 else 0)) = 1 /\ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_446 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_446 (if hl_IN A x s = 1 /\ ~ g x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) x = 1 then 1 else 0)) = 1 -> hl_product A s (fun x :e A => hl_real_mul (f x) (g x)) = hl_real_mul (hl_product A s f) (hl_product A s g).
Admitted.

// HOL Light: Library/products.ml:798 / PRODUCT_MUL   (hash md5:a1949c11836bf41309ace29719f85ed0)
Theorem hlt_PRODUCT_MUL : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_product A s (fun x :e A => hl_real_mul (f x) (g x)) = hl_real_mul (hl_product A s f) (hl_product A s g).
Admitted.

// HOL Light: Library/products.ml:803 / PRODUCT_MUL_NUMSEG   (hash md5:17caf2eb34b3d1e945b08ddc2e781e1a)
Theorem hlt_PRODUCT_MUL_NUMSEG : forall f g :e R :^: omega, forall m n :e omega, hl_product omega (hl_numseg m n) (fun x :e omega => hl_real_mul (f x) (g x)) = hl_real_mul (hl_product omega (hl_numseg m n) f) (hl_product omega (hl_numseg m n) g).
Admitted.

// HOL Light: Library/products.ml:808 / PRODUCT_CONST   (hash md5:eae077be13139a453901495494f8d513)
Theorem hlt_PRODUCT_CONST : forall A:set, A <> Empty -> forall c :e R, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_product A s (fun x :e A => c) = hl_real_pow c (hl_CARD A s).
Admitted.

// HOL Light: Library/products.ml:813 / PRODUCT_CONST_NUMSEG   (hash md5:604489948bdb56cb274b5dea6ce893d2)
Theorem hlt_PRODUCT_CONST_NUMSEG : forall c :e R, forall m n :e omega, hl_product omega (hl_numseg m n) (fun x :e omega => c) = hl_real_pow c (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m).
Admitted.

// HOL Light: Library/products.ml:817 / PRODUCT_CONST_NUMSEG_1   (hash md5:33f976fbe48073aba1f5af067f4bb35f)
Theorem hlt_PRODUCT_CONST_NUMSEG_1 : forall c :e R, forall n :e omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun x :e omega => c) = hl_real_pow c n.
Admitted.

// HOL Light: Library/products.ml:821 / PRODUCT_NEG   (hash md5:65a380ea82f41a381a54a199d265a1de)
Theorem hlt_PRODUCT_NEG : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_product A s (fun i :e A => hl_real_neg (f i)) = hl_real_mul (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_CARD A s)) (hl_product A s f).
Admitted.

// HOL Light: Library/products.ml:827 / PRODUCT_NEG_NUMSEG   (hash md5:e4b9d6a86a936f12427fc603bae9eccd)
Theorem hlt_PRODUCT_NEG_NUMSEG : forall f :e R :^: omega, forall m n :e omega, hl_product omega (hl_numseg m n) (fun i :e omega => hl_real_neg (f i)) = hl_real_mul (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) m)) (hl_product omega (hl_numseg m n) f).
Admitted.

// HOL Light: Library/products.ml:832 / PRODUCT_NEG_NUMSEG_1   (hash md5:2c9d2aa27554be5f705d17560d1b3ef8)
Theorem hlt_PRODUCT_NEG_NUMSEG_1 : forall f :e R :^: omega, forall n :e omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) (fun i :e omega => hl_real_neg (f i)) = hl_real_mul (hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n) (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) f).
Admitted.

// HOL Light: Library/products.ml:836 / PRODUCT_INV   (hash md5:8a85695f774f98e08b7e89804f836eaf)
Theorem hlt_PRODUCT_INV : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_product A s (fun x :e A => hl_real_inv (f x)) = hl_real_inv (hl_product A s f).
Admitted.

// HOL Light: Library/products.ml:841 / PRODUCT_DIV   (hash md5:b6b60788833f4a39f3aaa8ad0a25fca5)
Theorem hlt_PRODUCT_DIV : forall A:set, A <> Empty -> forall f g :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_product A s (fun x :e A => hl_real_div (f x) (g x)) = hl_real_div (hl_product A s f) (hl_product A s g).
Admitted.

// HOL Light: Library/products.ml:845 / PRODUCT_DIV_NUMSEG   (hash md5:20dd0b33a3d5ecd7c965218a270ce44f)
Theorem hlt_PRODUCT_DIV_NUMSEG : forall f g :e R :^: omega, forall m n :e omega, hl_product omega (hl_numseg m n) (fun x :e omega => hl_real_div (f x) (g x)) = hl_real_div (hl_product omega (hl_numseg m n) f) (hl_product omega (hl_numseg m n) g).
Admitted.

// HOL Light: Library/products.ml:850 / PRODUCT_ONE   (hash md5:aeaf34e450469a3ee4b125a997e01bfd)
Theorem hlt_PRODUCT_ONE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_product A s (fun n :e A => hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/products.ml:854 / PRODUCT_LE_1   (hash md5:8d19684778ec0b02895b2dbd0baf4887)
Theorem hlt_PRODUCT_LE_1 : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1 /\ hl_real_le (f x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> hl_real_le (hl_product A s f) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/products.ml:863 / PRODUCT_ABS   (hash md5:b8c46a567ad97254dbcef9ba74931111)
Theorem hlt_PRODUCT_ABS : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_product A s (fun x :e A => hl_real_abs (f x)) = hl_real_abs (hl_product A s f).
Admitted.

// HOL Light: Library/products.ml:868 / PRODUCT_CLOSED   (hash md5:1d268d744bc035fd7c82f1a61c4945af)
Theorem hlt_PRODUCT_CLOSED : forall A:set, A <> Empty -> forall P :e 2 :^: R, forall f :e R :^: A, forall s :e 2 :^: A, P (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ ((forall x y :e R, P x = 1 /\ P y = 1 -> P (hl_real_mul x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1)) -> P (hl_product A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:876 / PRODUCT_RELATED   (hash md5:5cc4b6efcac687e2a716e167a7db124d)
Theorem hlt_PRODUCT_RELATED : forall A:set, A <> Empty -> forall R1 :e 2 :^: R :^: R, forall f g :e R :^: A, forall s :e 2 :^: A, R1 (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ ((forall m n m' n' :e R, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_real_mul m m') (hl_real_mul n n') = 1) /\ (hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> R1 (f i) (g i) = 1))) -> R1 (hl_product A s f) (hl_product A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:888 / PRODUCT_CLOSED_NONEMPTY   (hash md5:7ed5a30d1f6bf06b3483fe4e64bb1a5a)
Theorem hlt_PRODUCT_CLOSED_NONEMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: R, forall f :e R :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ ((forall x y :e R, P x = 1 /\ P y = 1 -> P (hl_real_mul x y) = 1) /\ (forall a :e A, hl_IN A a s = 1 -> P (f a) = 1))) -> P (hl_product A s f) = 1.
Admitted.

// HOL Light: Library/products.ml:898 / PRODUCT_RELATED_NONEMPTY   (hash md5:1db7ef6b36522dc38ab985e11e6c6b40)
Theorem hlt_PRODUCT_RELATED_NONEMPTY : forall A:set, A <> Empty -> forall R1 :e 2 :^: R :^: R, forall f g :e R :^: A, forall s :e 2 :^: A, (forall m n m' n' :e R, R1 m n = 1 /\ R1 m' n' = 1 -> R1 (hl_real_mul m m') (hl_real_mul n n') = 1) /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ (forall i :e A, hl_IN A i s = 1 -> R1 (f i) (g i) = 1))) -> R1 (hl_product A s f) (hl_product A s g) = 1.
Admitted.

// HOL Light: Library/products.ml:909 / PRODUCT_CLAUSES_LEFT   (hash md5:c4a18be6af2461da10912fecde084689)
Theorem hlt_PRODUCT_CLAUSES_LEFT : forall f :e R :^: omega, forall m n :e omega, hl_le m n = 1 -> hl_product omega (hl_numseg m n) f = hl_real_mul (f m) (hl_product omega (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n) f).
Admitted.

// HOL Light: Library/products.ml:914 / PRODUCT_CLAUSES_RIGHT   (hash md5:3a39ca37e68f9b052256a6d75a6578fd)
Theorem hlt_PRODUCT_CLAUSES_RIGHT : forall f :e R :^: omega, forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 /\ hl_le m n = 1 -> hl_product omega (hl_numseg m n) f = hl_real_mul (hl_product omega (hl_numseg m (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))) f) (f n).
Admitted.

// HOL Light: Library/products.ml:919 / REAL_OF_NUM_NPRODUCT   (hash md5:7af83aae8ca258670ee9a8d1a4e3d3c0)
Theorem hlt_REAL_OF_NUM_NPRODUCT : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_real_of_num (hl_nproduct A s f) = hl_product A s (fun x :e A => hl_real_of_num (f x)).
Admitted.

// HOL Light: Library/products.ml:924 / PRODUCT_SUPERSET   (hash md5:5661cdebe54d5f589960012b354a3c89)
Theorem hlt_PRODUCT_SUPERSET : forall A:set, A <> Empty -> forall f :e R :^: A, forall u v :e 2 :^: A, hl_SUBSET A u v = 1 /\ (forall x :e A, hl_IN A x v = 1 /\ ~ hl_IN A x u = 1 -> f x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_product A v f = hl_product A u f.
Admitted.

// HOL Light: Library/products.ml:931 / PRODUCT_UNIV   (hash md5:1cf77860529839b9c8d9229d41c9f356)
Theorem hlt_PRODUCT_UNIV : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, hl_SUBSET A (hl_support R A hl_real_mul f (hl_UNIV A)) s = 1 -> hl_product A s f = hl_product A (hl_UNIV A) f.
Admitted.

// HOL Light: Library/products.ml:937 / PRODUCT_PAIR   (hash md5:2011dbce13e28710f2e164aed62b9445)
Theorem hlt_PRODUCT_PAIR : forall f :e R :^: omega, forall m n :e omega, hl_product omega (hl_numseg (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m) (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero)))) f = hl_product omega (hl_numseg m n) (fun i :e omega => hl_real_mul (f (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (f (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Library/products.ml:942 / PRODUCT_REFLECT   (hash md5:0499689526ef9fa924e8d24eeb39657c)
Theorem hlt_PRODUCT_REFLECT : forall x :e R :^: omega, forall m n :e omega, hl_product omega (hl_numseg m n) x = hl_COND R (hl_lt n m) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_product omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub n m)) (fun i :e omega => x (hl_sub n i))).
Admitted.

// HOL Light: Library/products.ml:949 / PRODUCT_DELETE   (hash md5:ebecbc4b835d5cd15ce27ad96c9e5f35)
Theorem hlt_PRODUCT_DELETE : forall A:set, A <> Empty -> forall f :e R :^: A, forall s :e 2 :^: A, forall a :e A, hl_FINITE A s = 1 /\ hl_IN A a s = 1 -> hl_real_mul (f a) (hl_product A (hl_DELETE A s a) f) = hl_product A s f.
Admitted.

// HOL Light: Library/products.ml:953 / PRODUCT_DELTA   (hash md5:aab8c341e24027f844a232319d9d2757)
Theorem hlt_PRODUCT_DELTA : forall A:set, A <> Empty -> forall b :e R, forall s :e 2 :^: A, forall a :e A, hl_product A s (fun x :e A => hl_COND R (if x = a then 1 else 0) b (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_COND R (hl_IN A a s) b (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/products.ml:959 / REAL_POW_NSUM   (hash md5:5fff6d57f7a38f7da96b0085ab8e1eb3)
Theorem hlt_REAL_POW_NSUM : forall A:set, A <> Empty -> forall x :e R, forall n :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_real_pow x (hl_nsum A s n) = hl_product A s (fun i :e A => hl_real_pow x (n i)).
Admitted.

// HOL Light: Library/products.ml:965 / POLYNOMIAL_FUNCTION_PRODUCT   (hash md5:b0a56b49de7237a07d437f006e1bd7b6)
Theorem hlt_POLYNOMIAL_FUNCTION_PRODUCT : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e R :^: A :^: R, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_polynomial_function (fun x :e R => p x i) = 1) -> hl_polynomial_function (fun x :e R => hl_product A s (p x)) = 1.
Admitted.

