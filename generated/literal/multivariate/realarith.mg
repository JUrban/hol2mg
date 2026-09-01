// hol2mg literal statements (private): shard realarith of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: realarith.ml:16 / REAL_LTE_TOTAL   (hash md5:962c6f85fbd1a782aef441fdb7c2533b)
Theorem hlt_REAL_LTE_TOTAL : forall x y :e R, hl_real_lt x y = 1 \/ hl_real_le y x = 1.
Admitted.

// HOL Light: realarith.ml:20 / REAL_LET_TOTAL   (hash md5:f5337cfba69814163e62d84d2edb0b70)
Theorem hlt_REAL_LET_TOTAL : forall x y :e R, hl_real_le x y = 1 \/ hl_real_lt y x = 1.
Admitted.

// HOL Light: realarith.ml:24 / REAL_LT_IMP_LE   (hash md5:4c202fa7d61c106c213f2810888bd888)
Theorem hlt_REAL_LT_IMP_LE : forall x y :e R, hl_real_lt x y = 1 -> hl_real_le x y = 1.
Admitted.

// HOL Light: realarith.ml:28 / REAL_LTE_TRANS   (hash md5:c921ccf444148b46976c5017ed5b646f)
Theorem hlt_REAL_LTE_TRANS : forall x y z :e R, hl_real_lt x y = 1 /\ hl_real_le y z = 1 -> hl_real_lt x z = 1.
Admitted.

// HOL Light: realarith.ml:32 / REAL_LET_TRANS   (hash md5:ad65eaea606e042d9e7992dfb990442f)
Theorem hlt_REAL_LET_TRANS : forall x y z :e R, hl_real_le x y = 1 /\ hl_real_lt y z = 1 -> hl_real_lt x z = 1.
Admitted.

// HOL Light: realarith.ml:36 / REAL_LT_TRANS   (hash md5:a1b7a03cd022da5e093bd662c35356c3)
Theorem hlt_REAL_LT_TRANS : forall x y z :e R, hl_real_lt x y = 1 /\ hl_real_lt y z = 1 -> hl_real_lt x z = 1.
Admitted.

// HOL Light: realarith.ml:40 / REAL_LE_ADD   (hash md5:f0703fb540092b12d091de7d7f6926c9)
Theorem hlt_REAL_LE_ADD : forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1.
Admitted.

// HOL Light: realarith.ml:44 / REAL_LTE_ANTISYM   (hash md5:d960ad34de94a8ba05e849b7d1123aa8)
Theorem hlt_REAL_LTE_ANTISYM : forall x y :e R, ~ (hl_real_lt x y = 1 /\ hl_real_le y x = 1).
Admitted.

// HOL Light: realarith.ml:48 / REAL_SUB_LE   (hash md5:82e6e51b7d92dcb9f49ebba7b7564ea1)
Theorem hlt_REAL_SUB_LE : forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_sub x y) = 1 <-> hl_real_le y x = 1.
Admitted.

// HOL Light: realarith.ml:52 / REAL_NEG_SUB   (hash md5:71f0e85dbb5cc3f47767ea5b89a5de99)
Theorem hlt_REAL_NEG_SUB : forall x y :e R, hl_real_neg (hl_real_sub x y) = hl_real_sub y x.
Admitted.

// HOL Light: realarith.ml:57 / REAL_LE_LT   (hash md5:8e0089780695ef5e810e804680df89d9)
Theorem hlt_REAL_LE_LT : forall x y :e R, hl_real_le x y = 1 <-> hl_real_lt x y = 1 \/ x = y.
Admitted.

// HOL Light: realarith.ml:61 / REAL_SUB_LT   (hash md5:61487e4dca4462e49e36c954d6891ad8)
Theorem hlt_REAL_SUB_LT : forall x y :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_sub x y) = 1 <-> hl_real_lt y x = 1.
Admitted.

// HOL Light: realarith.ml:66 / REAL_NOT_LT   (hash md5:9f9aa22e7fc28bbd0573eab5b4b96e79)
Theorem hlt_REAL_NOT_LT : forall x y :e R, ~ hl_real_lt x y = 1 <-> hl_real_le y x = 1.
Admitted.

// HOL Light: realarith.ml:70 / REAL_SUB_0   (hash md5:a4cfeb828e762f2ddbfbd7e1603adda3)
Theorem hlt_REAL_SUB_0 : forall x y :e R, hl_real_sub x y = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = y.
Admitted.

// HOL Light: realarith.ml:76 / REAL_LT_LE   (hash md5:9510a08cce604f85797f2316f36822ad)
Theorem hlt_REAL_LT_LE : forall x y :e R, hl_real_lt x y = 1 <-> hl_real_le x y = 1 /\ ~ x = y.
Admitted.

// HOL Light: realarith.ml:80 / REAL_LT_REFL   (hash md5:2aafb55745197a56ff930d9170ecc6da)
Theorem hlt_REAL_LT_REFL : forall x :e R, ~ hl_real_lt x x = 1.
Admitted.

// HOL Light: realarith.ml:84 / REAL_LTE_ADD   (hash md5:d56ca94b60a9febdcbf26cad23b0c384)
Theorem hlt_REAL_LTE_ADD : forall x y :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1.
Admitted.

// HOL Light: realarith.ml:88 / REAL_LET_ADD   (hash md5:cc3c4447b4d74506e849437a11e05448)
Theorem hlt_REAL_LET_ADD : forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1.
Admitted.

// HOL Light: realarith.ml:92 / REAL_LT_ADD   (hash md5:a5bd0aa663c0d6cfcf74554e8bb49090)
Theorem hlt_REAL_LT_ADD : forall x y :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1.
Admitted.

// HOL Light: realarith.ml:96 / REAL_ENTIRE   (hash md5:c73ec8d4b697cc457d33e442909ab1bb)
Theorem hlt_REAL_ENTIRE : forall x y :e R, hl_real_mul x y = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = hl_real_of_num (hl_NUMERAL hl_zero) \/ y = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: realarith.ml:106 / REAL_LE_NEGTOTAL   (hash md5:a4d82fde70726c79802821676edc4ed6)
Theorem hlt_REAL_LE_NEGTOTAL : forall x :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 \/ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_neg x) = 1.
Admitted.

// HOL Light: realarith.ml:110 / REAL_LE_SQUARE   (hash md5:dc0d07c4fc09a788c2ef40abf97ab583)
Theorem hlt_REAL_LE_SQUARE : forall x :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x x) = 1.
Admitted.

// HOL Light: realarith.ml:116 / REAL_MUL_RID   (hash md5:008b00c859df3f26559ae3884ad35c57)
Theorem hlt_REAL_MUL_RID : forall x :e R, hl_real_mul x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = x.
Admitted.

// HOL Light: realarith.ml:120 / REAL_POW_2   (hash md5:6a96774983d9221fa9d194a897100854)
Theorem hlt_REAL_POW_2 : forall x :e R, hl_real_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_mul x x.
Admitted.

// HOL Light: realarith.ml:125 / REAL_POLY_CLAUSES   (hash md5:8805a5055d09547a059a645b79963ed4)
Theorem hlt_REAL_POLY_CLAUSES : (forall x y z :e R, hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z) /\ ((forall x y :e R, hl_real_add x y = hl_real_add y x) /\ ((forall x :e R, hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x = x) /\ ((forall x y z :e R, hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z) /\ ((forall x y :e R, hl_real_mul x y = hl_real_mul y x) /\ ((forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x) /\ ((forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL hl_zero)) x = hl_real_of_num (hl_NUMERAL hl_zero)) /\ ((forall x y z :e R, hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z)) /\ ((forall x :e R, hl_real_pow x (hl_NUMERAL hl_zero) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall x :e R, forall n :e omega, hl_real_pow x (hl_SUC n) = hl_real_mul x (hl_real_pow x n))))))))).
Admitted.

// HOL Light: realarith.ml:140 / REAL_POLY_NEG_CLAUSES   (hash md5:3a3c5a49fecf07e48f9bba5684dee548)
Theorem hlt_REAL_POLY_NEG_CLAUSES : (forall x :e R, hl_real_neg x = hl_real_mul (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) x) /\ forall x y :e R, hl_real_sub x y = hl_real_add x (hl_real_mul (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) y).
Admitted.

// HOL Light: realarith.ml:145 / REAL_POS   (hash md5:c44c7f782ae05e05f8bd631540fe8820)
Theorem hlt_REAL_POS : forall n :e omega, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num n) = 1.
Admitted.

// HOL Light: realarith.ml:149 / REAL_LT_NZ   (hash md5:a30a85766a8dbbc964242396cfce7cc1)
Theorem hlt_REAL_LT_NZ : forall n :e omega, ~ hl_real_of_num n = hl_real_of_num (hl_NUMERAL hl_zero) <-> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num n) = 1.
Admitted.

// HOL Light: realarith.ml:156 / REAL_POS_LT   (hash md5:14450394b10aeb942300184b9ecd85b2)
Theorem hlt_REAL_POS_LT : forall n :e omega, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_SUC n)) = 1.
Admitted.

