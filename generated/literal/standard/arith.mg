// hol2mg literal statements (private): shard arith of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: arith.ml:40 / PRE   (hash md5:3ff80b99169ffd6a4390c5531f21b50a)
Theorem hlt_PRE : hl_PRE (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero /\ forall n :e omega, hl_PRE (hl_SUC n) = n.
Admitted.

// HOL Light: arith.ml:48 / ADD   (hash md5:1f8f01fbee723861c7f85ddd9b79a210)
Theorem hlt_ADD : (forall n :e omega, hl_add (hl_NUMERAL hl_zero) n = n) /\ forall m n :e omega, hl_add (hl_SUC m) n = hl_SUC (hl_add m n).
Admitted.

// HOL Light: arith.ml:52 / ADD_0   (hash md5:16b4fd0a8548e0b4289e91620d77d9f2)
Theorem hlt_ADD_0 : forall m :e omega, hl_add m (hl_NUMERAL hl_zero) = m.
Admitted.

// HOL Light: arith.ml:56 / ADD_SUC   (hash md5:7ccc9d50841b340629a487dbe8cf4f39)
Theorem hlt_ADD_SUC : forall m n :e omega, hl_add m (hl_SUC n) = hl_SUC (hl_add m n).
Admitted.

// HOL Light: arith.ml:60 / ADD_CLAUSES   (hash md5:126d9cc9e3ac78967da56121163e2515)
Theorem hlt_ADD_CLAUSES : (forall n :e omega, hl_add (hl_NUMERAL hl_zero) n = n) /\ ((forall m :e omega, hl_add m (hl_NUMERAL hl_zero) = m) /\ ((forall m n :e omega, hl_add (hl_SUC m) n = hl_SUC (hl_add m n)) /\ forall m n :e omega, hl_add m (hl_SUC n) = hl_SUC (hl_add m n))).
Admitted.

// HOL Light: arith.ml:67 / ADD_SYM   (hash md5:7d864f1eb0ef77376b9bc72e88019c32)
Theorem hlt_ADD_SYM : forall m n :e omega, hl_add m n = hl_add n m.
Admitted.

// HOL Light: arith.ml:71 / ADD_ASSOC   (hash md5:b97e64f9ddf8b94f1c6e0e8c8b245bbd)
Theorem hlt_ADD_ASSOC : forall m n p :e omega, hl_add m (hl_add n p) = hl_add (hl_add m n) p.
Admitted.

// HOL Light: arith.ml:75 / ADD_AC   (hash md5:986342ad66e066e99f66eb58c051f208)
Theorem hlt_ADD_AC : forall m n p :e omega, hl_add m n = hl_add n m /\ (hl_add (hl_add m n) p = hl_add m (hl_add n p) /\ hl_add m (hl_add n p) = hl_add n (hl_add m p)).
Admitted.

// HOL Light: arith.ml:81 / ADD_EQ_0   (hash md5:9b78bbcaf3f196403cda0263a3970934)
Theorem hlt_ADD_EQ_0 : forall m n :e omega, hl_add m n = hl_NUMERAL hl_zero <-> m = hl_NUMERAL hl_zero /\ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:85 / EQ_ADD_LCANCEL   (hash md5:5b4fba1c352fe48a98f89b51b62bcc46)
Theorem hlt_EQ_ADD_LCANCEL : forall m n p :e omega, hl_add m n = hl_add m p <-> n = p.
Admitted.

// HOL Light: arith.ml:89 / EQ_ADD_RCANCEL   (hash md5:06430763a15d98b7a40784460fae4f1d)
Theorem hlt_EQ_ADD_RCANCEL : forall m n p :e omega, hl_add m p = hl_add n p <-> m = n.
Admitted.

// HOL Light: arith.ml:93 / EQ_ADD_LCANCEL_0   (hash md5:78d9c27522bd6ab37ab738cde3777789)
Theorem hlt_EQ_ADD_LCANCEL_0 : forall m n :e omega, hl_add m n = m <-> n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:97 / EQ_ADD_RCANCEL_0   (hash md5:2e29e6871e91a202a12f117e40301f84)
Theorem hlt_EQ_ADD_RCANCEL_0 : forall m n :e omega, hl_add m n = n <-> m = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:105 / BIT0   (hash md5:430d599f5e1293326bc126e234c8d908)
Theorem hlt_BIT0 : forall n :e omega, hl_BIT0 n = hl_add n n.
Admitted.

// HOL Light: arith.ml:109 / BIT1   (hash md5:f52a9257f8a571885f7a8e7cb5953364)
Theorem hlt_BIT1 : forall n :e omega, hl_BIT1 n = hl_SUC (hl_add n n).
Admitted.

// HOL Light: arith.ml:113 / BIT0_THM   (hash md5:559c2f7303610dd8ed299cfea6532bed)
Theorem hlt_BIT0_THM : forall n :e omega, hl_NUMERAL (hl_BIT0 n) = hl_add (hl_NUMERAL n) (hl_NUMERAL n).
Admitted.

// HOL Light: arith.ml:117 / BIT1_THM   (hash md5:5654419bb755d5c6a785a1195805b6b3)
Theorem hlt_BIT1_THM : forall n :e omega, hl_NUMERAL (hl_BIT1 n) = hl_SUC (hl_add (hl_NUMERAL n) (hl_NUMERAL n)).
Admitted.

// HOL Light: arith.ml:125 / ONE   (hash md5:8296249074f69ba4d09cec1afc913c50)
Theorem hlt_ONE : hl_NUMERAL (hl_BIT1 hl_zero) = hl_SUC (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: arith.ml:129 / TWO   (hash md5:0326ab129d5eb6c0d9f12e5b919e0e71)
Theorem hlt_TWO : hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)) = hl_SUC (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: arith.ml:137 / ADD1   (hash md5:8e785bb94d248c4825a2f2f92a968d33)
Theorem hlt_ADD1 : forall m :e omega, hl_SUC m = hl_add m (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: arith.ml:145 / MULT   (hash md5:1363aa619553a725237435daed5df58b)
Theorem hlt_MULT : (forall n :e omega, hl_mul (hl_NUMERAL hl_zero) n = hl_NUMERAL hl_zero) /\ forall m n :e omega, hl_mul (hl_SUC m) n = hl_add (hl_mul m n) n.
Admitted.

// HOL Light: arith.ml:149 / MULT_0   (hash md5:3326845f7ea3ff59c385f3b0c8ad95ca)
Theorem hlt_MULT_0 : forall m :e omega, hl_mul m (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:153 / MULT_SUC   (hash md5:31a7b833a9ea33d4468ca3acf0bc397f)
Theorem hlt_MULT_SUC : forall m n :e omega, hl_mul m (hl_SUC n) = hl_add m (hl_mul m n).
Admitted.

// HOL Light: arith.ml:157 / MULT_CLAUSES   (hash md5:feb467b9ce3d44927a3c5047681ce915)
Theorem hlt_MULT_CLAUSES : (forall n :e omega, hl_mul (hl_NUMERAL hl_zero) n = hl_NUMERAL hl_zero) /\ ((forall m :e omega, hl_mul m (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero) /\ ((forall n :e omega, hl_mul (hl_NUMERAL (hl_BIT1 hl_zero)) n = n) /\ ((forall m :e omega, hl_mul m (hl_NUMERAL (hl_BIT1 hl_zero)) = m) /\ ((forall m n :e omega, hl_mul (hl_SUC m) n = hl_add (hl_mul m n) n) /\ forall m n :e omega, hl_mul m (hl_SUC n) = hl_add m (hl_mul m n))))).
Admitted.

// HOL Light: arith.ml:166 / MULT_SYM   (hash md5:7103233ece91e4b797b0f67782824327)
Theorem hlt_MULT_SYM : forall m n :e omega, hl_mul m n = hl_mul n m.
Admitted.

// HOL Light: arith.ml:170 / LEFT_ADD_DISTRIB   (hash md5:95fb7903cf74df59ac85cd362dabe182)
Theorem hlt_LEFT_ADD_DISTRIB : forall m n p :e omega, hl_mul m (hl_add n p) = hl_add (hl_mul m n) (hl_mul m p).
Admitted.

// HOL Light: arith.ml:174 / RIGHT_ADD_DISTRIB   (hash md5:2ee7dfe27ea7de6c31efbe4fa277f1a1)
Theorem hlt_RIGHT_ADD_DISTRIB : forall m n p :e omega, hl_mul (hl_add m n) p = hl_add (hl_mul m p) (hl_mul n p).
Admitted.

// HOL Light: arith.ml:178 / MULT_ASSOC   (hash md5:94cf93020d8a503bb6e41afb0cc57313)
Theorem hlt_MULT_ASSOC : forall m n p :e omega, hl_mul m (hl_mul n p) = hl_mul (hl_mul m n) p.
Admitted.

// HOL Light: arith.ml:182 / MULT_AC   (hash md5:533f0ad0b78c23e472c2cbcad79fe15c)
Theorem hlt_MULT_AC : forall m n p :e omega, hl_mul m n = hl_mul n m /\ (hl_mul (hl_mul m n) p = hl_mul m (hl_mul n p) /\ hl_mul m (hl_mul n p) = hl_mul n (hl_mul m p)).
Admitted.

// HOL Light: arith.ml:188 / MULT_EQ_0   (hash md5:d2c8d3697871de5ec75407210bed3147)
Theorem hlt_MULT_EQ_0 : forall m n :e omega, hl_mul m n = hl_NUMERAL hl_zero <-> m = hl_NUMERAL hl_zero \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:192 / EQ_MULT_LCANCEL   (hash md5:51da4c7d79c6b1277495df6bcee7b900)
Theorem hlt_EQ_MULT_LCANCEL : forall m n p :e omega, hl_mul m n = hl_mul m p <-> m = hl_NUMERAL hl_zero \/ n = p.
Admitted.

// HOL Light: arith.ml:199 / EQ_MULT_RCANCEL   (hash md5:b0b6632633c6cc3999bb29b53a4787f9)
Theorem hlt_EQ_MULT_RCANCEL : forall m n p :e omega, hl_mul m p = hl_mul n p <-> m = n \/ p = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:203 / MULT_2   (hash md5:aefb67ed10cad5150806e529a2aa3bae)
Theorem hlt_MULT_2 : forall n :e omega, hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n = hl_add n n.
Admitted.

// HOL Light: arith.ml:207 / MULT_EQ_1   (hash md5:97b70f4fd951132f2f6772a1745544f6)
Theorem hlt_MULT_EQ_1 : forall m n :e omega, hl_mul m n = hl_NUMERAL (hl_BIT1 hl_zero) <-> m = hl_NUMERAL (hl_BIT1 hl_zero) /\ n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: arith.ml:218 / EXP   (hash md5:f0b2e89bd72b2ed4f06143255e61c5ee)
Theorem hlt_EXP : (forall m :e omega, hl_EXP m (hl_NUMERAL hl_zero) = hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall m n :e omega, hl_EXP m (hl_SUC n) = hl_mul m (hl_EXP m n).
Admitted.

// HOL Light: arith.ml:222 / EXP_EQ_0   (hash md5:200ce7eb2e9d1e4094a26e883f454e19)
Theorem hlt_EXP_EQ_0 : forall m n :e omega, hl_EXP m n = hl_NUMERAL hl_zero <-> m = hl_NUMERAL hl_zero /\ ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:227 / EXP_EQ_1   (hash md5:b056dde8dc164a58dd4be9c2bea6eac5)
Theorem hlt_EXP_EQ_1 : forall x n :e omega, hl_EXP x n = hl_NUMERAL (hl_BIT1 hl_zero) <-> x = hl_NUMERAL (hl_BIT1 hl_zero) \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:232 / EXP_ZERO   (hash md5:e41b5acfcf148c786fceee7c43efbdf6)
Theorem hlt_EXP_ZERO : forall n :e omega, hl_EXP (hl_NUMERAL hl_zero) n = hl_COND omega (if n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: arith.ml:236 / EXP_ADD   (hash md5:5354063bdd0efd0e1ad534d027f52f61)
Theorem hlt_EXP_ADD : forall m n p :e omega, hl_EXP m (hl_add n p) = hl_mul (hl_EXP m n) (hl_EXP m p).
Admitted.

// HOL Light: arith.ml:241 / EXP_ONE   (hash md5:eb2015c8843538f921a09b3810597c78)
Theorem hlt_EXP_ONE : forall n :e omega, hl_EXP (hl_NUMERAL (hl_BIT1 hl_zero)) n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: arith.ml:245 / EXP_1   (hash md5:13e12a99724092a45e7e5ba9ec0db7a5)
Theorem hlt_EXP_1 : forall n :e omega, hl_EXP n (hl_NUMERAL (hl_BIT1 hl_zero)) = n.
Admitted.

// HOL Light: arith.ml:249 / EXP_2   (hash md5:05f1dff086cab35962a1461215ab3f8f)
Theorem hlt_EXP_2 : forall n :e omega, hl_EXP n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_mul n n.
Admitted.

// HOL Light: arith.ml:253 / MULT_EXP   (hash md5:90917163fc1cdf47d2f56b2b640a09a7)
Theorem hlt_MULT_EXP : forall p m n :e omega, hl_EXP (hl_mul m n) p = hl_mul (hl_EXP m p) (hl_EXP n p).
Admitted.

// HOL Light: arith.ml:257 / EXP_MULT   (hash md5:942e645b4b8a8ecb7bee540dc39c83ea)
Theorem hlt_EXP_MULT : forall m n p :e omega, hl_EXP m (hl_mul n p) = hl_EXP (hl_EXP m n) p.
Admitted.

// HOL Light: arith.ml:265 / EXP_EXP   (hash md5:0cbc6f672beba3e26d81d4c5418d278f)
Theorem hlt_EXP_EXP : forall x m n :e omega, hl_EXP (hl_EXP x m) n = hl_EXP x (hl_mul m n).
Admitted.

// HOL Light: arith.ml:273 / LE   (hash md5:faba27e5932bc554f7f404897a05b278)
Theorem hlt_LE : (forall m :e omega, hl_le m (hl_NUMERAL hl_zero) = 1 <-> m = hl_NUMERAL hl_zero) /\ forall m n :e omega, hl_le m (hl_SUC n) = 1 <-> m = hl_SUC n \/ hl_le m n = 1.
Admitted.

// HOL Light: arith.ml:277 / LT   (hash md5:7e2059e249b42a196a46a83ca219490a)
Theorem hlt_LT : (forall m :e omega, hl_lt m (hl_NUMERAL hl_zero) = 1 <-> False) /\ forall m n :e omega, hl_lt m (hl_SUC n) = 1 <-> m = n \/ hl_lt m n = 1.
Admitted.

// HOL Light: arith.ml:281 / GE   (hash md5:eb4cce02a75248e9a4da989b61be86cf)
Theorem hlt_GE : forall n m :e omega, hl_ge m n = 1 <-> hl_le n m = 1.
Admitted.

// HOL Light: arith.ml:284 / GT   (hash md5:cf5cd2515d0dc3275295a791b645d774)
Theorem hlt_GT : forall n m :e omega, hl_gt m n = 1 <-> hl_lt n m = 1.
Admitted.

// HOL Light: arith.ml:291 / MAX   (hash md5:dec7206fd153d46948a1a7573a250572)
Theorem hlt_MAX : forall m n :e omega, hl_MAX m n = hl_COND omega (hl_le m n) n m.
Admitted.

// HOL Light: arith.ml:294 / MIN   (hash md5:cac117c9eae33edc6db6da231d420222)
Theorem hlt_MIN : forall m n :e omega, hl_MIN m n = hl_COND omega (hl_le m n) m n.
Admitted.

// HOL Light: arith.ml:301 / LE_SUC_LT   (hash md5:a059e9b50769a59dbd1b228f22a762b2)
Theorem hlt_LE_SUC_LT : forall m n :e omega, hl_le (hl_SUC m) n = 1 <-> hl_lt m n = 1.
Admitted.

// HOL Light: arith.ml:305 / LT_SUC_LE   (hash md5:d61ceddf7a050227ee90dd8409e8a238)
Theorem hlt_LT_SUC_LE : forall m n :e omega, hl_lt m (hl_SUC n) = 1 <-> hl_le m n = 1.
Admitted.

// HOL Light: arith.ml:310 / LE_SUC   (hash md5:187b9d45a918e4fc6193ef7883f75c60)
Theorem hlt_LE_SUC : forall m n :e omega, hl_le (hl_SUC m) (hl_SUC n) = 1 <-> hl_le m n = 1.
Admitted.

// HOL Light: arith.ml:314 / LT_SUC   (hash md5:0ccebf58f2904b230f897cb4a149c0d0)
Theorem hlt_LT_SUC : forall m n :e omega, hl_lt (hl_SUC m) (hl_SUC n) = 1 <-> hl_lt m n = 1.
Admitted.

// HOL Light: arith.ml:322 / LE_0   (hash md5:31dc48e876d64098aef66243629de91c)
Theorem hlt_LE_0 : forall n :e omega, hl_le (hl_NUMERAL hl_zero) n = 1.
Admitted.

// HOL Light: arith.ml:326 / LT_0   (hash md5:8f8b430afef3f06700473ea3f3647503)
Theorem hlt_LT_0 : forall n :e omega, hl_lt (hl_NUMERAL hl_zero) (hl_SUC n) = 1.
Admitted.

// HOL Light: arith.ml:334 / LE_REFL   (hash md5:1b16a90917428cf3f87995a218f16789)
Theorem hlt_LE_REFL : forall n :e omega, hl_le n n = 1.
Admitted.

// HOL Light: arith.ml:338 / LT_REFL   (hash md5:7819f1e250c885a3217b6e30017a6c3a)
Theorem hlt_LT_REFL : forall n :e omega, ~ hl_lt n n = 1.
Admitted.

// HOL Light: arith.ml:342 / LT_IMP_NE   (hash md5:a139a253e154048d708fd7993a4641bd)
Theorem hlt_LT_IMP_NE : forall m n :e omega, hl_lt m n = 1 -> ~ m = n.
Admitted.

// HOL Light: arith.ml:350 / LE_ANTISYM   (hash md5:92cfc4f4d9868c364256f8b2facfa1c3)
Theorem hlt_LE_ANTISYM : forall m n :e omega, hl_le m n = 1 /\ hl_le n m = 1 <-> m = n.
Admitted.

// HOL Light: arith.ml:355 / LT_ANTISYM   (hash md5:3099ea5ceef206eb8d09eb669f29afae)
Theorem hlt_LT_ANTISYM : forall m n :e omega, ~ (hl_lt m n = 1 /\ hl_lt n m = 1).
Admitted.

// HOL Light: arith.ml:359 / LET_ANTISYM   (hash md5:5e8d12fb5ec4377fdad2b612f422fbe1)
Theorem hlt_LET_ANTISYM : forall m n :e omega, ~ (hl_le m n = 1 /\ hl_lt n m = 1).
Admitted.

// HOL Light: arith.ml:364 / LTE_ANTISYM   (hash md5:af0f9ca6550d589f1648c2894b374069)
Theorem hlt_LTE_ANTISYM : forall m n :e omega, ~ (hl_lt m n = 1 /\ hl_le n m = 1).
Admitted.

// HOL Light: arith.ml:372 / LE_TRANS   (hash md5:b00bbaad61f29417226e4ac6eab95845)
Theorem hlt_LE_TRANS : forall m n p :e omega, hl_le m n = 1 /\ hl_le n p = 1 -> hl_le m p = 1.
Admitted.

// HOL Light: arith.ml:377 / LT_TRANS   (hash md5:b1d4795a239cf0b833ba1123d70dc41d)
Theorem hlt_LT_TRANS : forall m n p :e omega, hl_lt m n = 1 /\ hl_lt n p = 1 -> hl_lt m p = 1.
Admitted.

// HOL Light: arith.ml:382 / LET_TRANS   (hash md5:14ba2504db894f01b0234794b010713c)
Theorem hlt_LET_TRANS : forall m n p :e omega, hl_le m n = 1 /\ hl_lt n p = 1 -> hl_lt m p = 1.
Admitted.

// HOL Light: arith.ml:387 / LTE_TRANS   (hash md5:3ca846af73949857fc9f6ed7116412a9)
Theorem hlt_LTE_TRANS : forall m n p :e omega, hl_lt m n = 1 /\ hl_le n p = 1 -> hl_lt m p = 1.
Admitted.

// HOL Light: arith.ml:396 / LE_CASES   (hash md5:26689a7db69e89c438744524cb7b50c4)
Theorem hlt_LE_CASES : forall m n :e omega, hl_le m n = 1 \/ hl_le n m = 1.
Admitted.

// HOL Light: arith.ml:400 / LT_CASES   (hash md5:e26bbc5bf349bbecc826423c1773ea1f)
Theorem hlt_LT_CASES : forall m n :e omega, hl_lt m n = 1 \/ (hl_lt n m = 1 \/ m = n).
Admitted.

// HOL Light: arith.ml:407 / LET_CASES   (hash md5:67a81a3a6553e8d9a9228a2dcd4bd896)
Theorem hlt_LET_CASES : forall m n :e omega, hl_le m n = 1 \/ hl_lt n m = 1.
Admitted.

// HOL Light: arith.ml:411 / LTE_CASES   (hash md5:fd3ac78a80446b1c4612541c2b636917)
Theorem hlt_LTE_CASES : forall m n :e omega, hl_lt m n = 1 \/ hl_le n m = 1.
Admitted.

// HOL Light: arith.ml:419 / LE_LT   (hash md5:6140d6b3b95f4fd84a26710124a9d8ab)
Theorem hlt_LE_LT : forall m n :e omega, hl_le m n = 1 <-> hl_lt m n = 1 \/ m = n.
Admitted.

// HOL Light: arith.ml:425 / LT_LE   (hash md5:5815fc366cdba65f86ca1533c12dfa30)
Theorem hlt_LT_LE : forall m n :e omega, hl_lt m n = 1 <-> hl_le m n = 1 /\ ~ m = n.
Admitted.

// HOL Light: arith.ml:433 / NOT_LE   (hash md5:2b6bcbd0da941a0d69352fddce245478)
Theorem hlt_NOT_LE : forall m n :e omega, ~ hl_le m n = 1 <-> hl_lt n m = 1.
Admitted.

// HOL Light: arith.ml:440 / NOT_LT   (hash md5:7cff267ecb6a5da7fb22cc74b9054892)
Theorem hlt_NOT_LT : forall m n :e omega, ~ hl_lt m n = 1 <-> hl_le n m = 1.
Admitted.

// HOL Light: arith.ml:447 / LT_IMP_LE   (hash md5:9d37ee0a53cd1e33d7e8d532e5abe711)
Theorem hlt_LT_IMP_LE : forall m n :e omega, hl_lt m n = 1 -> hl_le m n = 1.
Admitted.

// HOL Light: arith.ml:451 / EQ_IMP_LE   (hash md5:262c4f6f42a248b8f4fa0198836befeb)
Theorem hlt_EQ_IMP_LE : forall m n :e omega, m = n -> hl_le m n = 1.
Admitted.

// HOL Light: arith.ml:459 / LT_NZ   (hash md5:44fb2896bb81711114737091050171b2)
Theorem hlt_LT_NZ : forall n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 <-> ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:464 / LE_1   (hash md5:53332fbfbd5458191f309a947caf8233)
Theorem hlt_LE_1 : (forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_lt (hl_NUMERAL hl_zero) n = 1) /\ ((forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1) /\ ((forall n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 -> ~ n = hl_NUMERAL hl_zero) /\ ((forall n :e omega, hl_lt (hl_NUMERAL hl_zero) n = 1 -> hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1) /\ ((forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> hl_lt (hl_NUMERAL hl_zero) n = 1) /\ forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 -> ~ n = hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: arith.ml:477 / LE_EXISTS   (hash md5:fc24da01a419be1c250ebb180c054ce7)
Theorem hlt_LE_EXISTS : forall m n :e omega, hl_le m n = 1 <-> exists d :e omega, n = hl_add m d.
Admitted.

// HOL Light: arith.ml:492 / LT_EXISTS   (hash md5:fceb9b438eb7a0d431cb8377b206b932)
Theorem hlt_LT_EXISTS : forall m n :e omega, hl_lt m n = 1 <-> exists d :e omega, n = hl_add m (hl_SUC d).
Admitted.

// HOL Light: arith.ml:509 / LE_ADD   (hash md5:c840eadf57a06b476726b6575f1ed37c)
Theorem hlt_LE_ADD : forall m n :e omega, hl_le m (hl_add m n) = 1.
Admitted.

// HOL Light: arith.ml:514 / LE_ADDR   (hash md5:388d6384219669f49ee02ea2d3eb0b8c)
Theorem hlt_LE_ADDR : forall m n :e omega, hl_le n (hl_add m n) = 1.
Admitted.

// HOL Light: arith.ml:518 / LT_ADD   (hash md5:2e1e52e6c3f1a6ac0ab9e2d91fa5ff5a)
Theorem hlt_LT_ADD : forall m n :e omega, hl_lt m (hl_add m n) = 1 <-> hl_lt (hl_NUMERAL hl_zero) n = 1.
Admitted.

// HOL Light: arith.ml:522 / LT_ADDR   (hash md5:32fb71504c2d65304e145e5dabaf6fd1)
Theorem hlt_LT_ADDR : forall m n :e omega, hl_lt n (hl_add m n) = 1 <-> hl_lt (hl_NUMERAL hl_zero) m = 1.
Admitted.

// HOL Light: arith.ml:526 / LE_ADD_LCANCEL   (hash md5:6949599388ac43ea08036b19ef3b235c)
Theorem hlt_LE_ADD_LCANCEL : forall m n p :e omega, hl_le (hl_add m n) (hl_add m p) = 1 <-> hl_le n p = 1.
Admitted.

// HOL Light: arith.ml:530 / LE_ADD_RCANCEL   (hash md5:fa1ba3595f41a7ff0b64db1a981cc64a)
Theorem hlt_LE_ADD_RCANCEL : forall m n p :e omega, hl_le (hl_add m p) (hl_add n p) = 1 <-> hl_le m n = 1.
Admitted.

// HOL Light: arith.ml:534 / LT_ADD_LCANCEL   (hash md5:22e15eb8f48632119400254608722b14)
Theorem hlt_LT_ADD_LCANCEL : forall m n p :e omega, hl_lt (hl_add m n) (hl_add m p) = 1 <-> hl_lt n p = 1.
Admitted.

// HOL Light: arith.ml:538 / LT_ADD_RCANCEL   (hash md5:ffcde4693946774f17e195ed51beb542)
Theorem hlt_LT_ADD_RCANCEL : forall m n p :e omega, hl_lt (hl_add m p) (hl_add n p) = 1 <-> hl_lt m n = 1.
Admitted.

// HOL Light: arith.ml:542 / LE_ADD2   (hash md5:199e7302a6920e8a106f4669706b742c)
Theorem hlt_LE_ADD2 : forall m n p q :e omega, hl_le m p = 1 /\ hl_le n q = 1 -> hl_le (hl_add m n) (hl_add p q) = 1.
Admitted.

// HOL Light: arith.ml:549 / LET_ADD2   (hash md5:ab3a628a9fdaf57ebebc8a891a9f7283)
Theorem hlt_LET_ADD2 : forall m n p q :e omega, hl_le m p = 1 /\ hl_lt n q = 1 -> hl_lt (hl_add m n) (hl_add p q) = 1.
Admitted.

// HOL Light: arith.ml:556 / LTE_ADD2   (hash md5:eca59434b3f60565d8696ea7f890e41b)
Theorem hlt_LTE_ADD2 : forall m n p q :e omega, hl_lt m p = 1 /\ hl_le n q = 1 -> hl_lt (hl_add m n) (hl_add p q) = 1.
Admitted.

// HOL Light: arith.ml:561 / LT_ADD2   (hash md5:4598367f7af7148a02f8286759aef625)
Theorem hlt_LT_ADD2 : forall m n p q :e omega, hl_lt m p = 1 /\ hl_lt n q = 1 -> hl_lt (hl_add m n) (hl_add p q) = 1.
Admitted.

// HOL Light: arith.ml:571 / LT_MULT   (hash md5:00d2cb47234fe80ebae2754a216082c5)
Theorem hlt_LT_MULT : forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) (hl_mul m n) = 1 <-> hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_lt (hl_NUMERAL hl_zero) n = 1.
Admitted.

// HOL Light: arith.ml:575 / LE_MULT2   (hash md5:61fb834e583250adccf9c6f2a434a5af)
Theorem hlt_LE_MULT2 : forall m n p q :e omega, hl_le m n = 1 /\ hl_le p q = 1 -> hl_le (hl_mul m p) (hl_mul n q) = 1.
Admitted.

// HOL Light: arith.ml:584 / LT_LMULT   (hash md5:5dcee080a2851fb186a6dd59f8b365f3)
Theorem hlt_LT_LMULT : forall m n p :e omega, ~ m = hl_NUMERAL hl_zero /\ hl_lt n p = 1 -> hl_lt (hl_mul m n) (hl_mul m p) = 1.
Admitted.

// HOL Light: arith.ml:590 / LE_MULT_LCANCEL   (hash md5:8c8353caf459eb2e8bd8beddecc8bb62)
Theorem hlt_LE_MULT_LCANCEL : forall m n p :e omega, hl_le (hl_mul m n) (hl_mul m p) = 1 <-> m = hl_NUMERAL hl_zero \/ hl_le n p = 1.
Admitted.

// HOL Light: arith.ml:598 / LE_MULT_RCANCEL   (hash md5:e879f0f88234a269219be70f19933ef4)
Theorem hlt_LE_MULT_RCANCEL : forall m n p :e omega, hl_le (hl_mul m p) (hl_mul n p) = 1 <-> hl_le m n = 1 \/ p = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:603 / LT_MULT_LCANCEL   (hash md5:13c9c14490d8af402a1f801304f274d0)
Theorem hlt_LT_MULT_LCANCEL : forall m n p :e omega, hl_lt (hl_mul m n) (hl_mul m p) = 1 <-> ~ m = hl_NUMERAL hl_zero /\ hl_lt n p = 1.
Admitted.

// HOL Light: arith.ml:611 / LT_MULT_RCANCEL   (hash md5:cfc72f0045fc06bba0b3d54f667b0ced)
Theorem hlt_LT_MULT_RCANCEL : forall m n p :e omega, hl_lt (hl_mul m p) (hl_mul n p) = 1 <-> hl_lt m n = 1 /\ ~ p = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:616 / LT_MULT2   (hash md5:081abee57d32773858c249239a70dab0)
Theorem hlt_LT_MULT2 : forall m n p q :e omega, hl_lt m n = 1 /\ hl_lt p q = 1 -> hl_lt (hl_mul m p) (hl_mul n q) = 1.
Admitted.

// HOL Light: arith.ml:623 / LE_SQUARE_REFL   (hash md5:39d69f4ed6fd8f70098b2c85f5801823)
Theorem hlt_LE_SQUARE_REFL : forall n :e omega, hl_le n (hl_mul n n) = 1.
Admitted.

// HOL Light: arith.ml:627 / LT_POW2_REFL   (hash md5:62e3e29f8fa4b8ef7383e76cf1ba436b)
Theorem hlt_LT_POW2_REFL : forall n :e omega, hl_lt n (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = 1.
Admitted.

// HOL Light: arith.ml:638 / WLOG_LE   (hash md5:22c2c6603c7056b533e4c8dd2b677170)
Theorem hlt_WLOG_LE : forall P :e 2 :^: omega :^: omega, (forall m n :e omega, P m n = 1 <-> P n m = 1) /\ (forall m n :e omega, hl_le m n = 1 -> P m n = 1) -> forall m n :e omega, P m n = 1.
Admitted.

// HOL Light: arith.ml:642 / WLOG_LT   (hash md5:aeb3f364a35f142a7c600d190963b020)
Theorem hlt_WLOG_LT : forall P :e 2 :^: omega :^: omega, (forall m :e omega, P m m = 1) /\ ((forall m n :e omega, P m n = 1 <-> P n m = 1) /\ (forall m n :e omega, hl_lt m n = 1 -> P m n = 1)) -> forall m y :e omega, P m y = 1.
Admitted.

// HOL Light: arith.ml:647 / WLOG_LE_3   (hash md5:b76bd331cefde9dcfa7d477ddf0293d3)
Theorem hlt_WLOG_LE_3 : forall P :e 2 :^: omega :^: omega :^: omega, (forall x y z :e omega, P x y z = 1 -> P y x z = 1 /\ P x z y = 1) /\ (forall x y z :e omega, hl_le x y = 1 /\ hl_le y z = 1 -> P x y z = 1) -> forall x y z :e omega, P x y z = 1.
Admitted.

// HOL Light: arith.ml:657 / num_WF   (hash md5:c8e9e8a8b44e66cefba87747759d198f)
Theorem hlt_num_WF : forall P :e 2 :^: omega, (forall n :e omega, (forall m :e omega, hl_lt m n = 1 -> P m = 1) -> P n = 1) -> forall n :e omega, P n = 1.
Admitted.

// HOL Light: arith.ml:662 / num_WOP   (hash md5:aadd83c4dc20de824ef5d48ce4fd83e4)
Theorem hlt_num_WOP : forall P :e 2 :^: omega, (exists n :e omega, P n = 1) <-> exists n :e omega, P n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ P m = 1.
Admitted.

// HOL Light: arith.ml:668 / num_MAX   (hash md5:c8685b053a9c358dd0c8097ab0840890)
Theorem hlt_num_MAX : forall P :e 2 :^: omega, (exists x :e omega, P x = 1) /\ (exists M :e omega, forall x :e omega, P x = 1 -> hl_le x M = 1) <-> exists m :e omega, P m = 1 /\ forall x :e omega, P x = 1 -> hl_le x m = 1.
Admitted.

// HOL Light: arith.ml:690 / LE_INDUCT   (hash md5:0a1da1e21b34b49815b79c9aaf3e847a)
Theorem hlt_LE_INDUCT : forall P :e 2 :^: omega :^: omega, (forall m :e omega, P m m = 1) /\ (forall m n :e omega, hl_le m n = 1 /\ P m n = 1 -> P m (hl_SUC n) = 1) -> forall m n :e omega, hl_le m n = 1 -> P m n = 1.
Admitted.

// HOL Light: arith.ml:699 / num_INDUCTION_DOWN   (hash md5:8f6733e9701d766ab5608bbd87d7b6fa)
Theorem hlt_num_INDUCTION_DOWN : forall P :e 2 :^: omega, forall m :e omega, (forall n :e omega, hl_le m n = 1 -> P n = 1) /\ (forall n :e omega, hl_lt n m = 1 /\ P (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> P n = 1) -> forall n :e omega, P n = 1.
Admitted.

// HOL Light: arith.ml:716 / EVEN   (hash md5:042754ef93062b568529b3c88d4528d5)
Theorem hlt_EVEN : (hl_EVEN (hl_NUMERAL hl_zero) = 1 <-> True) /\ forall n :e omega, hl_EVEN (hl_SUC n) = 1 <-> ~ hl_EVEN n = 1.
Admitted.

// HOL Light: arith.ml:720 / ODD   (hash md5:c105a6929490a222b6b0ce5bd1c9de43)
Theorem hlt_ODD : (hl_ODD (hl_NUMERAL hl_zero) = 1 <-> False) /\ forall n :e omega, hl_ODD (hl_SUC n) = 1 <-> ~ hl_ODD n = 1.
Admitted.

// HOL Light: arith.ml:724 / NOT_EVEN   (hash md5:81b33199298138f3effba7c6605e5fdc)
Theorem hlt_NOT_EVEN : forall n :e omega, ~ hl_EVEN n = 1 <-> hl_ODD n = 1.
Admitted.

// HOL Light: arith.ml:728 / NOT_ODD   (hash md5:c1eb2dc93bf829fc21b22bf5347d4d8b)
Theorem hlt_NOT_ODD : forall n :e omega, ~ hl_ODD n = 1 <-> hl_EVEN n = 1.
Admitted.

// HOL Light: arith.ml:732 / EVEN_OR_ODD   (hash md5:de0b9e761db913184af2149b2552baa1)
Theorem hlt_EVEN_OR_ODD : forall n :e omega, hl_EVEN n = 1 \/ hl_ODD n = 1.
Admitted.

// HOL Light: arith.ml:737 / EVEN_AND_ODD   (hash md5:61d5128a8e0035b5a8c236911efdb5bd)
Theorem hlt_EVEN_AND_ODD : forall n :e omega, ~ (hl_EVEN n = 1 /\ hl_ODD n = 1).
Admitted.

// HOL Light: arith.ml:741 / EVEN_ADD   (hash md5:b97c6e33433a1b82c867029be0bf2e57)
Theorem hlt_EVEN_ADD : forall m n :e omega, hl_EVEN (hl_add m n) = 1 <-> (hl_EVEN m = 1 <-> hl_EVEN n = 1).
Admitted.

// HOL Light: arith.ml:750 / EVEN_MULT   (hash md5:0fbaae8611372953bf1896ba201fd510)
Theorem hlt_EVEN_MULT : forall m n :e omega, hl_EVEN (hl_mul m n) = 1 <-> hl_EVEN m = 1 \/ hl_EVEN n = 1.
Admitted.

// HOL Light: arith.ml:759 / EVEN_EXP   (hash md5:b04db5ebd41c85a7b94bf0f8080a989d)
Theorem hlt_EVEN_EXP : forall m n :e omega, hl_EVEN (hl_EXP m n) = 1 <-> hl_EVEN m = 1 /\ ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:765 / ODD_ADD   (hash md5:85b50e207bff537349929a26ca720c76)
Theorem hlt_ODD_ADD : forall m n :e omega, hl_ODD (hl_add m n) = 1 <-> ~ (hl_ODD m = 1 <-> hl_ODD n = 1).
Admitted.

// HOL Light: arith.ml:770 / ODD_MULT   (hash md5:4d0b87b1b46bc6ab933f56d6ee5c130f)
Theorem hlt_ODD_MULT : forall m n :e omega, hl_ODD (hl_mul m n) = 1 <-> hl_ODD m = 1 /\ hl_ODD n = 1.
Admitted.

// HOL Light: arith.ml:775 / ODD_EXP   (hash md5:fb98ceb9019986e72bd5a691041b0598)
Theorem hlt_ODD_EXP : forall m n :e omega, hl_ODD (hl_EXP m n) = 1 <-> hl_ODD m = 1 \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:781 / EVEN_DOUBLE   (hash md5:f8bdc0efbfadf167ba7811ce8538978e)
Theorem hlt_EVEN_DOUBLE : forall n :e omega, hl_EVEN (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = 1.
Admitted.

// HOL Light: arith.ml:786 / ODD_DOUBLE   (hash md5:4fb6aed950b2d928b15ac734317b0f2c)
Theorem hlt_ODD_DOUBLE : forall n :e omega, hl_ODD (hl_SUC (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) = 1.
Admitted.

// HOL Light: arith.ml:790 / EVEN_EXISTS_LEMMA   (hash md5:f582748738f2b2aa91af89ea3d145db2)
Theorem hlt_EVEN_EXISTS_LEMMA : forall n :e omega, (hl_EVEN n = 1 -> (exists m :e omega, n = hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m)) /\ (~ hl_EVEN n = 1 -> exists m :e omega, n = hl_SUC (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m)).
Admitted.

// HOL Light: arith.ml:801 / EVEN_EXISTS   (hash md5:9cc8169477b7b3ed89a982e64dda058e)
Theorem hlt_EVEN_EXISTS : forall n :e omega, hl_EVEN n = 1 <-> exists m :e omega, n = hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m.
Admitted.

// HOL Light: arith.ml:807 / ODD_EXISTS   (hash md5:c1a418611be28e0324dca044d0aa1bb2)
Theorem hlt_ODD_EXISTS : forall n :e omega, hl_ODD n = 1 <-> exists m :e omega, n = hl_SUC (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m).
Admitted.

// HOL Light: arith.ml:814 / EVEN_ODD_DECOMPOSITION   (hash md5:b2d9d5503420a2b34e9706bc97261e82)
Theorem hlt_EVEN_ODD_DECOMPOSITION : forall n :e omega, (exists k m :e omega, hl_ODD m = 1 /\ n = hl_mul (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) k) m) <-> ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:841 / SUB   (hash md5:63dc004a637ab090e9d7756a0d7e0028)
Theorem hlt_SUB : (forall m :e omega, hl_sub m (hl_NUMERAL hl_zero) = m) /\ forall m n :e omega, hl_sub m (hl_SUC n) = hl_PRE (hl_sub m n).
Admitted.

// HOL Light: arith.ml:845 / SUB_0   (hash md5:533b88c32d6d67d4698f922841e53724)
Theorem hlt_SUB_0 : forall m :e omega, hl_sub (hl_NUMERAL hl_zero) m = hl_NUMERAL hl_zero /\ hl_sub m (hl_NUMERAL hl_zero) = m.
Admitted.

// HOL Light: arith.ml:849 / SUB_PRESUC   (hash md5:a5079a26282b7054790fd007d87d2b2e)
Theorem hlt_SUB_PRESUC : forall m n :e omega, hl_PRE (hl_sub (hl_SUC m) n) = hl_sub m n.
Admitted.

// HOL Light: arith.ml:853 / SUB_SUC   (hash md5:69260c51e4311efc1cb831f28a1f7069)
Theorem hlt_SUB_SUC : forall m n :e omega, hl_sub (hl_SUC m) (hl_SUC n) = hl_sub m n.
Admitted.

// HOL Light: arith.ml:857 / SUB_REFL   (hash md5:b82c8da4d002065b76e1b7ea3c8ae4b1)
Theorem hlt_SUB_REFL : forall n :e omega, hl_sub n n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:861 / ADD_SUB   (hash md5:6d341e49a1f1c582891836f5c89dba36)
Theorem hlt_ADD_SUB : forall m n :e omega, hl_sub (hl_add m n) n = m.
Admitted.

// HOL Light: arith.ml:865 / ADD_SUB2   (hash md5:fded8a3febfff115683ebeef0d44f517)
Theorem hlt_ADD_SUB2 : forall m n :e omega, hl_sub (hl_add m n) m = n.
Admitted.

// HOL Light: arith.ml:869 / SUB_EQ_0   (hash md5:e64d68168f7bbad2ee434f90a4ec9ed4)
Theorem hlt_SUB_EQ_0 : forall m n :e omega, hl_sub m n = hl_NUMERAL hl_zero <-> hl_le m n = 1.
Admitted.

// HOL Light: arith.ml:874 / ADD_SUBR2   (hash md5:6c9c42570f9d049e00a417c36d14e1d4)
Theorem hlt_ADD_SUBR2 : forall m n :e omega, hl_sub m (hl_add m n) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:878 / ADD_SUBR   (hash md5:0b66514f75173feaca31fb0ff9ea74cc)
Theorem hlt_ADD_SUBR : forall m n :e omega, hl_sub n (hl_add m n) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:882 / SUB_ADD   (hash md5:0a5b1061c758157ba0232b8361b301a2)
Theorem hlt_SUB_ADD : forall m n :e omega, hl_le n m = 1 -> hl_add (hl_sub m n) n = m.
Admitted.

// HOL Light: arith.ml:888 / SUB_ADD_LCANCEL   (hash md5:ff83e90d7a1fc7da870abbdb60a0f3cf)
Theorem hlt_SUB_ADD_LCANCEL : forall m n p :e omega, hl_sub (hl_add m n) (hl_add m p) = hl_sub n p.
Admitted.

// HOL Light: arith.ml:892 / SUB_ADD_RCANCEL   (hash md5:0c9e0de95ca656a0a24abcd4b4560f25)
Theorem hlt_SUB_ADD_RCANCEL : forall m n p :e omega, hl_sub (hl_add m p) (hl_add n p) = hl_sub m n.
Admitted.

// HOL Light: arith.ml:896 / LEFT_SUB_DISTRIB   (hash md5:49b856e55db126122c82af1cf054995d)
Theorem hlt_LEFT_SUB_DISTRIB : forall m n p :e omega, hl_mul m (hl_sub n p) = hl_sub (hl_mul m n) (hl_mul m p).
Admitted.

// HOL Light: arith.ml:906 / RIGHT_SUB_DISTRIB   (hash md5:ad1cb55d6a3ff598e4b02b87dcb37398)
Theorem hlt_RIGHT_SUB_DISTRIB : forall m n p :e omega, hl_mul (hl_sub m n) p = hl_sub (hl_mul m p) (hl_mul n p).
Admitted.

// HOL Light: arith.ml:910 / SUC_SUB1   (hash md5:5d55500d869088c39adcdd6b57dba95a)
Theorem hlt_SUC_SUB1 : forall n :e omega, hl_sub (hl_SUC n) (hl_NUMERAL (hl_BIT1 hl_zero)) = n.
Admitted.

// HOL Light: arith.ml:914 / EVEN_SUB   (hash md5:d225d13df4e75f319620916c9f1f4964)
Theorem hlt_EVEN_SUB : forall m n :e omega, hl_EVEN (hl_sub m n) = 1 <-> hl_le m n = 1 \/ (hl_EVEN m = 1 <-> hl_EVEN n = 1).
Admitted.

// HOL Light: arith.ml:922 / ODD_SUB   (hash md5:56a7d11a9a320d0785c16800d51adbff)
Theorem hlt_ODD_SUB : forall m n :e omega, hl_ODD (hl_sub m n) = 1 <-> hl_lt n m = 1 /\ ~ (hl_ODD m = 1 <-> hl_ODD n = 1).
Admitted.

// HOL Light: arith.ml:931 / FACT   (hash md5:38477b123ecad41d640fd5a871e22d04)
Theorem hlt_FACT : hl_FACT (hl_NUMERAL hl_zero) = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall n :e omega, hl_FACT (hl_SUC n) = hl_mul (hl_SUC n) (hl_FACT n).
Admitted.

// HOL Light: arith.ml:935 / FACT_LT   (hash md5:050e25d4c8007df2182d34ae82e12b0a)
Theorem hlt_FACT_LT : forall n :e omega, hl_lt (hl_NUMERAL hl_zero) (hl_FACT n) = 1.
Admitted.

// HOL Light: arith.ml:940 / FACT_LE   (hash md5:40e5dd987e027bbd7af507ff199921ef)
Theorem hlt_FACT_LE : forall n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_FACT n) = 1.
Admitted.

// HOL Light: arith.ml:944 / FACT_NZ   (hash md5:32780acb6415a8b42e1c483479b49a7d)
Theorem hlt_FACT_NZ : forall n :e omega, ~ hl_FACT n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:948 / FACT_MONO   (hash md5:644d0516be3256d133e1f19b06420cab)
Theorem hlt_FACT_MONO : forall m n :e omega, hl_le m n = 1 -> hl_le (hl_FACT m) (hl_FACT n) = 1.
Admitted.

// HOL Light: arith.ml:965 / EXP_LT_0   (hash md5:83fd48ee94380d69a3893937f85e52c4)
Theorem hlt_EXP_LT_0 : forall n x :e omega, hl_lt (hl_NUMERAL hl_zero) (hl_EXP x n) = 1 <-> ~ x = hl_NUMERAL hl_zero \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:969 / LT_EXP   (hash md5:f6bf4822e9ea6b851f61cecf191851c6)
Theorem hlt_LT_EXP : forall x m n :e omega, hl_lt (hl_EXP x m) (hl_EXP x n) = 1 <-> hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) x = 1 /\ hl_lt m n = 1 \/ x = hl_NUMERAL hl_zero /\ (~ m = hl_NUMERAL hl_zero /\ n = hl_NUMERAL hl_zero).
Admitted.

// HOL Light: arith.ml:1017 / LE_EXP   (hash md5:e8b7d60891c774a867e9bc2c87fe840c)
Theorem hlt_LE_EXP : forall x m n :e omega, hl_le (hl_EXP x m) (hl_EXP x n) = 1 <-> x = hl_NUMERAL hl_zero /\ (m = hl_NUMERAL hl_zero -> n = hl_NUMERAL hl_zero) \/ ~ x = hl_NUMERAL hl_zero /\ (x = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_le m n = 1).
Admitted.

// HOL Light: arith.ml:1025 / EQ_EXP   (hash md5:31cfe6c281f242a660f890b78a58547c)
Theorem hlt_EQ_EXP : forall x m n :e omega, hl_EXP x m = hl_EXP x n <-> x = hl_NUMERAL hl_zero /\ (m = hl_NUMERAL hl_zero <-> n = hl_NUMERAL hl_zero) \/ ~ x = hl_NUMERAL hl_zero /\ (x = hl_NUMERAL (hl_BIT1 hl_zero) \/ m = n).
Admitted.

// HOL Light: arith.ml:1033 / EXP_MONO_LE_IMP   (hash md5:7e1ed0a1cce702d8843cb265a32e4a77)
Theorem hlt_EXP_MONO_LE_IMP : forall x y n :e omega, hl_le x y = 1 -> hl_le (hl_EXP x n) (hl_EXP y n) = 1.
Admitted.

// HOL Light: arith.ml:1039 / EXP_MONO_LT_IMP   (hash md5:b2a145b17cd42327ed23d97761d60611)
Theorem hlt_EXP_MONO_LT_IMP : forall x y n :e omega, hl_lt x y = 1 /\ ~ n = hl_NUMERAL hl_zero -> hl_lt (hl_EXP x n) (hl_EXP y n) = 1.
Admitted.

// HOL Light: arith.ml:1047 / EXP_MONO_LE   (hash md5:4daf3d1183137a0beed7aa52e5e0f97a)
Theorem hlt_EXP_MONO_LE : forall x y n :e omega, hl_le (hl_EXP x n) (hl_EXP y n) = 1 <-> hl_le x y = 1 \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1053 / EXP_MONO_LT   (hash md5:843814ff63301a25806de636e3484b8e)
Theorem hlt_EXP_MONO_LT : forall x y n :e omega, hl_lt (hl_EXP x n) (hl_EXP y n) = 1 <-> hl_lt x y = 1 /\ ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1057 / EXP_MONO_EQ   (hash md5:59ff0fc2fc63529863d64148ebfac457)
Theorem hlt_EXP_MONO_EQ : forall x y n :e omega, hl_EXP x n = hl_EXP y n <-> x = y \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1065 / DIVMOD_EXIST   (hash md5:505d039010e6691c5d52c24fc3ac9cc6)
Theorem hlt_DIVMOD_EXIST : forall m n :e omega, ~ n = hl_NUMERAL hl_zero -> exists q r :e omega, m = hl_add (hl_mul q n) r /\ hl_lt r n = 1.
Admitted.

// HOL Light: arith.ml:1085 / DIVMOD_EXIST_0   (hash md5:5f7772a1ff424cc9936518ad8c4474f3)
Theorem hlt_DIVMOD_EXIST_0 : forall m n :e omega, exists q r :e omega, n = hl_NUMERAL hl_zero /\ (q = hl_NUMERAL hl_zero /\ r = m) \/ ~ n = hl_NUMERAL hl_zero /\ (m = hl_add (hl_mul q n) r /\ hl_lt r n = 1).
Admitted.

// HOL Light: arith.ml:1091 / DIVISION_0   (hash md5:4d62f93e321c9a6c4063524ca0db99cc)
Theorem hlt_DIVISION_0 : forall m n :e omega, n = hl_NUMERAL hl_zero /\ (hl_DIV m n = hl_NUMERAL hl_zero /\ hl_MOD m n = m) \/ ~ n = hl_NUMERAL hl_zero /\ (m = hl_add (hl_mul (hl_DIV m n) n) (hl_MOD m n) /\ hl_lt (hl_MOD m n) n = 1).
Admitted.

// HOL Light: arith.ml:1094 / DIVISION   (hash md5:b59e2104560227deeca73507054e0663)
Theorem hlt_DIVISION : forall m n :e omega, ~ n = hl_NUMERAL hl_zero -> m = hl_add (hl_mul (hl_DIV m n) n) (hl_MOD m n) /\ hl_lt (hl_MOD m n) n = 1.
Admitted.

// HOL Light: arith.ml:1098 / DIV_ZERO   (hash md5:fffca388349f8cf72b76018fd969603f)
Theorem hlt_DIV_ZERO : forall n :e omega, hl_DIV n (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1102 / MOD_ZERO   (hash md5:938d8f28a97891aabbf2c8a0abc4ff5b)
Theorem hlt_MOD_ZERO : forall n :e omega, hl_MOD n (hl_NUMERAL hl_zero) = n.
Admitted.

// HOL Light: arith.ml:1106 / DIVISION_SIMP   (hash md5:901b98beaf280ff178890c22675d5f82)
Theorem hlt_DIVISION_SIMP : (forall m n :e omega, hl_add (hl_mul (hl_DIV m n) n) (hl_MOD m n) = m) /\ forall m n :e omega, hl_add (hl_mul n (hl_DIV m n)) (hl_MOD m n) = m.
Admitted.

// HOL Light: arith.ml:1113 / EQ_DIVMOD   (hash md5:93cea4fcb42a3a08455a37ff33313dc5)
Theorem hlt_EQ_DIVMOD : forall p m n :e omega, hl_DIV m p = hl_DIV n p /\ hl_MOD m p = hl_MOD n p <-> m = n.
Admitted.

// HOL Light: arith.ml:1117 / MOD_LT_EQ   (hash md5:d3f9eaa88f8b7e835faa923fd3775622)
Theorem hlt_MOD_LT_EQ : forall m n :e omega, hl_lt (hl_MOD m n) n = 1 <-> ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1121 / MOD_LT_EQ_LT   (hash md5:0bba73e717068929738c68fef39f9109)
Theorem hlt_MOD_LT_EQ_LT : forall m n :e omega, hl_lt (hl_MOD m n) n = 1 <-> hl_lt (hl_NUMERAL hl_zero) n = 1.
Admitted.

// HOL Light: arith.ml:1125 / DIVMOD_UNIQ_LEMMA   (hash md5:47c8935d0ad689bcaeb3475178ef9faf)
Theorem hlt_DIVMOD_UNIQ_LEMMA : forall m n q1 r1 q2 r2 :e omega, m = hl_add (hl_mul q1 n) r1 /\ hl_lt r1 n = 1 /\ (m = hl_add (hl_mul q2 n) r2 /\ hl_lt r2 n = 1) -> q1 = q2 /\ r1 = r2.
Admitted.

// HOL Light: arith.ml:1149 / DIVMOD_UNIQ   (hash md5:29b11a223969eccd153f46182a0afc4f)
Theorem hlt_DIVMOD_UNIQ : forall m n q r :e omega, m = hl_add (hl_mul q n) r /\ hl_lt r n = 1 -> hl_DIV m n = q /\ hl_MOD m n = r.
Admitted.

// HOL Light: arith.ml:1158 / MOD_UNIQ   (hash md5:16ed5e1f63bbda47186e23caa2fdaab3)
Theorem hlt_MOD_UNIQ : forall m n q r :e omega, m = hl_add (hl_mul q n) r /\ hl_lt r n = 1 -> hl_MOD m n = r.
Admitted.

// HOL Light: arith.ml:1163 / DIV_UNIQ   (hash md5:03d3f8fe0608fede7fe54b37733e7d96)
Theorem hlt_DIV_UNIQ : forall m n q r :e omega, m = hl_add (hl_mul q n) r /\ hl_lt r n = 1 -> hl_DIV m n = q.
Admitted.

// HOL Light: arith.ml:1168 / DIV_0   (hash md5:21468dd00b62ee403ed635ebbcf16770)
Theorem hlt_DIV_0 : forall n :e omega, hl_DIV (hl_NUMERAL hl_zero) n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1168 / MOD_0   (hash md5:59d2eea9d1d94d71402abff29261e900)
Theorem hlt_MOD_0 : forall n :e omega, hl_MOD (hl_NUMERAL hl_zero) n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1175 / DIV_MULT   (hash md5:3a8beeb323ea04d1de30bfcba2c25ac4)
Theorem hlt_DIV_MULT : forall m n :e omega, ~ m = hl_NUMERAL hl_zero -> hl_DIV (hl_mul m n) m = n.
Admitted.

// HOL Light: arith.ml:1175 / MOD_MULT   (hash md5:5991802979c0db5f606c6d16f53103f7)
Theorem hlt_MOD_MULT : forall m n :e omega, hl_MOD (hl_mul m n) m = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1183 / MOD_LT   (hash md5:d694ca4e2590b601d1d07f67592d876b)
Theorem hlt_MOD_LT : forall m n :e omega, hl_lt m n = 1 -> hl_MOD m n = m.
Admitted.

// HOL Light: arith.ml:1188 / MOD_EQ_SELF   (hash md5:6c1801b171f5f339a5b2becc7349dd4a)
Theorem hlt_MOD_EQ_SELF : forall m n :e omega, hl_MOD m n = m <-> n = hl_NUMERAL hl_zero \/ hl_lt m n = 1.
Admitted.

// HOL Light: arith.ml:1192 / MOD_CASES   (hash md5:cf8db2698257dd21c7873312014080bb)
Theorem hlt_MOD_CASES : forall n p :e omega, hl_lt n (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) p) = 1 -> hl_MOD n p = hl_COND omega (hl_lt n p) n (hl_sub n p).
Admitted.

// HOL Light: arith.ml:1200 / MOD_ADD_CASES   (hash md5:ec1f35453b76a045b01bea2807187811)
Theorem hlt_MOD_ADD_CASES : forall m n p :e omega, hl_lt m p = 1 /\ hl_lt n p = 1 -> hl_MOD (hl_add m n) p = hl_COND omega (hl_lt (hl_add m n) p) (hl_add m n) (hl_sub (hl_add m n) p).
Admitted.

// HOL Light: arith.ml:1207 / MOD_EQ   (hash md5:5cc679121cbb2dfc6d326dfb62631dac)
Theorem hlt_MOD_EQ : forall m n p q :e omega, m = hl_add n (hl_mul q p) -> hl_MOD m p = hl_MOD n p.
Admitted.

// HOL Light: arith.ml:1220 / DIV_LE   (hash md5:ed213853e53733fccb8b2667dd52f482)
Theorem hlt_DIV_LE : forall m n :e omega, hl_le (hl_DIV m n) m = 1.
Admitted.

// HOL Light: arith.ml:1228 / DIV_MUL_LE   (hash md5:4fed25034ac18ccd018890c87a003320)
Theorem hlt_DIV_MUL_LE : forall m n :e omega, hl_le (hl_mul n (hl_DIV m n)) m = 1.
Admitted.

// HOL Light: arith.ml:1236 / MOD_LE_TWICE   (hash md5:730f9da100bafb4d4b0dc52750f97092)
Theorem hlt_MOD_LE_TWICE : forall m n :e omega, hl_lt (hl_NUMERAL hl_zero) m = 1 /\ hl_le m n = 1 -> hl_le (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_MOD n m)) n = 1.
Admitted.

// HOL Light: arith.ml:1253 / DIV_1   (hash md5:0364c7d6acc5ef4b29c10ae89c62a57d)
Theorem hlt_DIV_1 : forall n :e omega, hl_DIV n (hl_NUMERAL (hl_BIT1 hl_zero)) = n.
Admitted.

// HOL Light: arith.ml:1253 / MOD_1   (hash md5:4574a55e550a5c3d838e5f78a21b084c)
Theorem hlt_MOD_1 : forall n :e omega, hl_MOD n (hl_NUMERAL (hl_BIT1 hl_zero)) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1258 / DIV_LT   (hash md5:4a091fb00f45a151f3880d15cb96bf8e)
Theorem hlt_DIV_LT : forall m n :e omega, hl_lt m n = 1 -> hl_DIV m n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1263 / MOD_MOD   (hash md5:5d35549a814a60da8bd0106133cf0f31)
Theorem hlt_MOD_MOD : forall m n p :e omega, hl_MOD (hl_MOD m (hl_mul n p)) n = hl_MOD m n.
Admitted.

// HOL Light: arith.ml:1274 / MOD_MOD_REFL   (hash md5:59a2ab0da640b5acdd5e4b29b28b9388)
Theorem hlt_MOD_MOD_REFL : forall m n :e omega, hl_MOD (hl_MOD m n) n = hl_MOD m n.
Admitted.

// HOL Light: arith.ml:1281 / MOD_MOD_LE   (hash md5:17678102c781da9ad305c99d791e36cc)
Theorem hlt_MOD_MOD_LE : forall m n p :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_le n p = 1 -> hl_MOD (hl_MOD m n) p = hl_MOD m n.
Admitted.

// HOL Light: arith.ml:1286 / MOD_EVEN_2   (hash md5:85ee14bdd17872f3b8374623cd5bd155)
Theorem hlt_MOD_EVEN_2 : forall m n :e omega, hl_EVEN n = 1 -> hl_MOD (hl_MOD m n) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_MOD m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: arith.ml:1290 / DIV_MULT2   (hash md5:2f975930ffa0d66acdc0b55970fc24a6)
Theorem hlt_DIV_MULT2 : forall m n p :e omega, ~ m = hl_NUMERAL hl_zero -> hl_DIV (hl_mul m n) (hl_mul m p) = hl_DIV n p.
Admitted.

// HOL Light: arith.ml:1300 / MOD_MULT2   (hash md5:0ed1899caed8dbfcfab09c1b4da6551f)
Theorem hlt_MOD_MULT2 : forall m n p :e omega, hl_MOD (hl_mul m n) (hl_mul m p) = hl_mul m (hl_MOD n p).
Admitted.

// HOL Light: arith.ml:1311 / MOD_EXISTS   (hash md5:c640f5dd37f9e8824fd01d2f1d645498)
Theorem hlt_MOD_EXISTS : forall m n :e omega, (exists q :e omega, m = hl_mul n q) <-> n = hl_NUMERAL hl_zero /\ m = hl_NUMERAL hl_zero \/ ~ n = hl_NUMERAL hl_zero /\ hl_MOD m n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1320 / LE_RDIV_EQ   (hash md5:d91e3aafd6df87ba0f249930d933059d)
Theorem hlt_LE_RDIV_EQ : forall a b n :e omega, ~ a = hl_NUMERAL hl_zero -> (hl_le n (hl_DIV b a) = 1 <-> hl_le (hl_mul a n) b = 1).
Admitted.

// HOL Light: arith.ml:1332 / RDIV_LT_EQ   (hash md5:5d9fe95be245809b299d0460bbdca6ba)
Theorem hlt_RDIV_LT_EQ : forall a b n :e omega, ~ a = hl_NUMERAL hl_zero -> (hl_lt (hl_DIV b a) n = 1 <-> hl_lt b (hl_mul a n) = 1).
Admitted.

// HOL Light: arith.ml:1336 / LE_LDIV_EQ   (hash md5:14c3168b2bc01dc35421fd16e7aa28e1)
Theorem hlt_LE_LDIV_EQ : forall a b n :e omega, ~ a = hl_NUMERAL hl_zero -> (hl_le (hl_DIV b a) n = 1 <-> hl_lt b (hl_mul a (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1).
Admitted.

// HOL Light: arith.ml:1342 / LDIV_LT_EQ   (hash md5:a85ee1274ccb75b9be8df682fdb33679)
Theorem hlt_LDIV_LT_EQ : forall a b n :e omega, ~ a = hl_NUMERAL hl_zero -> (hl_lt n (hl_DIV b a) = 1 <-> hl_le (hl_mul a (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)))) b = 1).
Admitted.

// HOL Light: arith.ml:1346 / LE_LDIV   (hash md5:a17fdcbd8dbf74732098c91da7be65ed)
Theorem hlt_LE_LDIV : forall a b n :e omega, ~ a = hl_NUMERAL hl_zero /\ hl_le b (hl_mul a n) = 1 -> hl_le (hl_DIV b a) n = 1.
Admitted.

// HOL Light: arith.ml:1351 / DIV_MONO   (hash md5:9eb007956651a1ca37e4ec414ad5c6cb)
Theorem hlt_DIV_MONO : forall m n p :e omega, hl_le m n = 1 -> hl_le (hl_DIV m p) (hl_DIV n p) = 1.
Admitted.

// HOL Light: arith.ml:1358 / DIV_MONO_LT   (hash md5:10fb5b9d047bbeeed209997522d0f9ab)
Theorem hlt_DIV_MONO_LT : forall m n p :e omega, ~ p = hl_NUMERAL hl_zero /\ hl_le (hl_add m p) n = 1 -> hl_lt (hl_DIV m p) (hl_DIV n p) = 1.
Admitted.

// HOL Light: arith.ml:1365 / DIV_EQ_0   (hash md5:306a98471790220ff10092c9a0168706)
Theorem hlt_DIV_EQ_0 : forall m n :e omega, ~ n = hl_NUMERAL hl_zero -> (hl_DIV m n = hl_NUMERAL hl_zero <-> hl_lt m n = 1).
Admitted.

// HOL Light: arith.ml:1373 / MOD_DIV_EQ_0   (hash md5:748296bbc584b4d5f0103ef2aaccb108)
Theorem hlt_MOD_DIV_EQ_0 : forall m n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_DIV (hl_MOD m n) n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1378 / MOD_EQ_0   (hash md5:45a52f7e68782d889128eae64fbe3ef1)
Theorem hlt_MOD_EQ_0 : forall m n :e omega, hl_MOD m n = hl_NUMERAL hl_zero <-> exists q :e omega, m = hl_mul q n.
Admitted.

// HOL Light: arith.ml:1388 / DIV_EQ_SELF   (hash md5:6ea3d861c9d0ab53ce1841c135c76ff7)
Theorem hlt_DIV_EQ_SELF : forall m n :e omega, hl_DIV m n = m <-> m = hl_NUMERAL hl_zero \/ n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: arith.ml:1398 / MOD_REFL   (hash md5:b4cac09b69fe095854b50d5743b613f3)
Theorem hlt_MOD_REFL : forall n :e omega, hl_MOD n n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1402 / EVEN_MOD   (hash md5:d3e6ae390a320ac5b2d9397279646bdc)
Theorem hlt_EVEN_MOD : forall n :e omega, hl_EVEN n = 1 <-> hl_MOD n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: arith.ml:1406 / ODD_MOD   (hash md5:1ee917931692294cdae37b0b7ebd7673)
Theorem hlt_ODD_MOD : forall n :e omega, hl_ODD n = 1 <-> hl_MOD n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: arith.ml:1414 / MOD_2_CASES   (hash md5:dcbbe8c697e98478d718ea117fbf4e1a)
Theorem hlt_MOD_2_CASES : forall n :e omega, hl_MOD n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_COND omega (hl_EVEN n) (hl_NUMERAL hl_zero) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: arith.ml:1418 / EVEN_MOD_EVEN   (hash md5:c6a9c4756bd24fa6e1e9a0e8b199e577)
Theorem hlt_EVEN_MOD_EVEN : forall m n :e omega, hl_EVEN n = 1 -> (hl_EVEN (hl_MOD m n) = 1 <-> hl_EVEN m = 1).
Admitted.

// HOL Light: arith.ml:1423 / ODD_MOD_EVEN   (hash md5:38945393baa9c8aa0cb7f5ddfe020f66)
Theorem hlt_ODD_MOD_EVEN : forall m n :e omega, hl_EVEN n = 1 -> (hl_ODD (hl_MOD m n) = 1 <-> hl_ODD m = 1).
Admitted.

// HOL Light: arith.ml:1427 / HALF_DOUBLE   (hash md5:d9ecb44213ec8321b42e2a1934890fda)
Theorem hlt_HALF_DOUBLE : (forall n :e omega, hl_DIV (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = n) /\ forall n :e omega, hl_DIV (hl_mul n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = n.
Admitted.

// HOL Light: arith.ml:1432 / DOUBLE_HALF   (hash md5:099da6d77326c410a449082900ed57a9)
Theorem hlt_DOUBLE_HALF : (forall n :e omega, hl_EVEN n = 1 -> hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_DIV n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = n) /\ forall n :e omega, hl_EVEN n = 1 -> hl_mul (hl_DIV n (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = n.
Admitted.

// HOL Light: arith.ml:1438 / MOD_MULT_RMOD   (hash md5:e15d4fa7273b2a2eca9839b4f6ffb7b5)
Theorem hlt_MOD_MULT_RMOD : forall m n p :e omega, hl_MOD (hl_mul m (hl_MOD p n)) n = hl_MOD (hl_mul m p) n.
Admitted.

// HOL Light: arith.ml:1446 / MOD_MULT_LMOD   (hash md5:4c8570d754ae89c7e88ddec10c9f7206)
Theorem hlt_MOD_MULT_LMOD : forall m n p :e omega, hl_MOD (hl_mul (hl_MOD m n) p) n = hl_MOD (hl_mul m p) n.
Admitted.

// HOL Light: arith.ml:1450 / MOD_MULT_MOD2   (hash md5:c5a54ef5572ff00b7cd4c4d3551bcb01)
Theorem hlt_MOD_MULT_MOD2 : forall m n p :e omega, hl_MOD (hl_mul (hl_MOD m n) (hl_MOD p n)) n = hl_MOD (hl_mul m p) n.
Admitted.

// HOL Light: arith.ml:1454 / MOD_EXP_MOD   (hash md5:28b3493150202ac9277f424c385bb313)
Theorem hlt_MOD_EXP_MOD : forall m n p :e omega, hl_MOD (hl_EXP (hl_MOD m n) p) n = hl_MOD (hl_EXP m p) n.
Admitted.

// HOL Light: arith.ml:1464 / MOD_MULT_ADD   (hash md5:9851f9c31c63b1fe675d2b37190959e2)
Theorem hlt_MOD_MULT_ADD : (forall m n p :e omega, hl_MOD (hl_add (hl_mul m n) p) n = hl_MOD p n) /\ ((forall m n p :e omega, hl_MOD (hl_add (hl_mul n m) p) n = hl_MOD p n) /\ ((forall m n p :e omega, hl_MOD (hl_add p (hl_mul m n)) n = hl_MOD p n) /\ forall m n p :e omega, hl_MOD (hl_add p (hl_mul n m)) n = hl_MOD p n)).
Admitted.

// HOL Light: arith.ml:1475 / DIV_MULT_ADD   (hash md5:b1e8b791341790f15e70380e247e13f0)
Theorem hlt_DIV_MULT_ADD : (forall a b n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_DIV (hl_add (hl_mul a n) b) n = hl_add a (hl_DIV b n)) /\ ((forall a b n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_DIV (hl_add (hl_mul n a) b) n = hl_add a (hl_DIV b n)) /\ ((forall a b n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_DIV (hl_add b (hl_mul a n)) n = hl_add (hl_DIV b n) a) /\ forall a b n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_DIV (hl_add b (hl_mul n a)) n = hl_add (hl_DIV b n) a)).
Admitted.

// HOL Light: arith.ml:1486 / MOD_ADD_MOD   (hash md5:28ae29d41a5d74a927840bd61b3200e2)
Theorem hlt_MOD_ADD_MOD : forall a b n :e omega, hl_MOD (hl_add (hl_MOD a n) (hl_MOD b n)) n = hl_MOD (hl_add a b) n.
Admitted.

// HOL Light: arith.ml:1495 / DIV_ADD_MOD   (hash md5:23e85c371dd115eecdaa32f1b99bc396)
Theorem hlt_DIV_ADD_MOD : forall a b n :e omega, ~ n = hl_NUMERAL hl_zero -> (hl_MOD (hl_add a b) n = hl_add (hl_MOD a n) (hl_MOD b n) <-> hl_DIV (hl_add a b) n = hl_add (hl_DIV a n) (hl_DIV b n)).
Admitted.

// HOL Light: arith.ml:1511 / MOD_ADD_EQ_EQ   (hash md5:5d3898e2beb527872be5a465145f285c)
Theorem hlt_MOD_ADD_EQ_EQ : forall n x y :e omega, hl_MOD (hl_add x y) n = hl_add (hl_MOD x n) (hl_MOD y n) <-> n = hl_NUMERAL hl_zero \/ hl_lt (hl_add (hl_MOD x n) (hl_MOD y n)) n = 1.
Admitted.

// HOL Light: arith.ml:1516 / DIV_ADD_EQ_EQ   (hash md5:21b94ca808f65136ae1a225b248b71eb)
Theorem hlt_DIV_ADD_EQ_EQ : forall n x y :e omega, hl_DIV (hl_add x y) n = hl_add (hl_DIV x n) (hl_DIV y n) <-> n = hl_NUMERAL hl_zero \/ hl_lt (hl_add (hl_MOD x n) (hl_MOD y n)) n = 1.
Admitted.

// HOL Light: arith.ml:1521 / DIV_ADD_EQ   (hash md5:613357b77fee5782e65b9aa1dd452472)
Theorem hlt_DIV_ADD_EQ : forall n x y :e omega, hl_lt (hl_add (hl_MOD x n) (hl_MOD y n)) n = 1 -> hl_DIV (hl_add x y) n = hl_add (hl_DIV x n) (hl_DIV y n).
Admitted.

// HOL Light: arith.ml:1525 / MOD_ADD_EQ   (hash md5:145cee719d20f5e2dfff72f80ceea299)
Theorem hlt_MOD_ADD_EQ : forall n x y :e omega, hl_lt (hl_add (hl_MOD x n) (hl_MOD y n)) n = 1 -> hl_MOD (hl_add x y) n = hl_add (hl_MOD x n) (hl_MOD y n).
Admitted.

// HOL Light: arith.ml:1529 / DIV_REFL   (hash md5:ff0d4f51279ff8cc1ed6eaba570496c1)
Theorem hlt_DIV_REFL : forall n :e omega, ~ n = hl_NUMERAL hl_zero -> hl_DIV n n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: arith.ml:1536 / MOD_LE   (hash md5:29addf46cecf9afb3a5899bb2a98f27a)
Theorem hlt_MOD_LE : forall m n :e omega, hl_le (hl_MOD m n) m = 1.
Admitted.

// HOL Light: arith.ml:1544 / DIV_MONO2   (hash md5:746c6a719d398773fb5fcf4ae3aea7cf)
Theorem hlt_DIV_MONO2 : forall m n p :e omega, ~ p = hl_NUMERAL hl_zero /\ hl_le p m = 1 -> hl_le (hl_DIV n m) (hl_DIV n p) = 1.
Admitted.

// HOL Light: arith.ml:1551 / DIV_LE_EXCLUSION   (hash md5:3fbd9160c1bdf7e62d8312a2a4aeeff6)
Theorem hlt_DIV_LE_EXCLUSION : forall a b c d :e omega, ~ b = hl_NUMERAL hl_zero /\ hl_lt (hl_mul b c) (hl_mul (hl_add a (hl_NUMERAL (hl_BIT1 hl_zero))) d) = 1 -> hl_le (hl_DIV c d) (hl_DIV a b) = 1.
Admitted.

// HOL Light: arith.ml:1563 / DIV_EQ_EXCLUSION   (hash md5:f41362c09f3ad3b4a62c98569b7f9184)
Theorem hlt_DIV_EQ_EXCLUSION : forall a b c d :e omega, hl_lt (hl_mul b c) (hl_mul (hl_add a (hl_NUMERAL (hl_BIT1 hl_zero))) d) = 1 /\ hl_lt (hl_mul a d) (hl_mul (hl_add c (hl_NUMERAL (hl_BIT1 hl_zero))) b) = 1 -> hl_DIV a b = hl_DIV c d.
Admitted.

// HOL Light: arith.ml:1571 / MULT_DIV_LE   (hash md5:3ebb680fbc3ff0ccd04461a9e12870c2)
Theorem hlt_MULT_DIV_LE : forall m n p :e omega, hl_le (hl_mul m (hl_DIV n p)) (hl_DIV (hl_mul m n) p) = 1.
Admitted.

// HOL Light: arith.ml:1581 / DIV_DIV   (hash md5:6dfe9236d9139fb96c9696fc598f11b5)
Theorem hlt_DIV_DIV : forall m n p :e omega, hl_DIV (hl_DIV m n) p = hl_DIV m (hl_mul n p).
Admitted.

// HOL Light: arith.ml:1591 / DIV_MOD   (hash md5:4518bfdf2a4c972c78eec623c0ff5641)
Theorem hlt_DIV_MOD : forall m n p :e omega, hl_MOD (hl_DIV m n) p = hl_DIV (hl_MOD m (hl_mul n p)) n.
Admitted.

// HOL Light: arith.ml:1605 / MOD_MULT_MOD   (hash md5:b8d472aabcd98d55dfded78447678248)
Theorem hlt_MOD_MULT_MOD : forall m n p :e omega, hl_MOD m (hl_mul n p) = hl_add (hl_mul n (hl_MOD (hl_DIV m n) p)) (hl_MOD m n).
Admitted.

// HOL Light: arith.ml:1620 / MOD_MOD_EXP_MIN   (hash md5:785d2743a260c73c61ea8732c4008e0f)
Theorem hlt_MOD_MOD_EXP_MIN : forall x p m n :e omega, hl_MOD (hl_MOD x (hl_EXP p m)) (hl_EXP p n) = hl_MOD x (hl_EXP p (hl_MIN m n)).
Admitted.

// HOL Light: arith.ml:1637 / DIV_EXP   (hash md5:eb3021a717bdd705676b6c96588a556d)
Theorem hlt_DIV_EXP : forall m n p :e omega, ~ m = hl_NUMERAL hl_zero -> hl_DIV (hl_EXP m n) (hl_EXP m p) = hl_COND omega (hl_le p n) (hl_EXP m (hl_sub n p)) (hl_COND omega (if m = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: arith.ml:1637 / MOD_EXP   (hash md5:c9d9ab53434e15841461fb4613e56d35)
Theorem hlt_MOD_EXP : forall m n p :e omega, ~ m = hl_NUMERAL hl_zero -> hl_MOD (hl_EXP m n) (hl_EXP m p) = hl_COND omega (if hl_le p n = 1 \/ m = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) (hl_NUMERAL hl_zero) (hl_EXP m n).
Admitted.

// HOL Light: arith.ml:1655 / FORALL_LT_MOD_THM   (hash md5:478000a01ba70a5dd6ea3ca5bb491c69)
Theorem hlt_FORALL_LT_MOD_THM : forall P :e 2 :^: omega, forall n :e omega, (forall a :e omega, hl_lt a n = 1 -> P a = 1) <-> n = hl_NUMERAL hl_zero \/ forall a :e omega, P (hl_MOD a n) = 1.
Admitted.

// HOL Light: arith.ml:1659 / FORALL_MOD_THM   (hash md5:0f6979a8ce0ac4c8a65cfb58d3c6ec3f)
Theorem hlt_FORALL_MOD_THM : forall P :e 2 :^: omega, forall n :e omega, ~ n = hl_NUMERAL hl_zero -> ((forall a :e omega, P (hl_MOD a n) = 1) <-> forall a :e omega, hl_lt a n = 1 -> P a = 1).
Admitted.

// HOL Light: arith.ml:1663 / EXISTS_LT_MOD_THM   (hash md5:f35337850c43809d3d7bbeecd44440dd)
Theorem hlt_EXISTS_LT_MOD_THM : forall P :e 2 :^: omega, forall n :e omega, (exists a :e omega, hl_lt a n = 1 /\ P a = 1) <-> ~ n = hl_NUMERAL hl_zero /\ exists a :e omega, P (hl_MOD a n) = 1.
Admitted.

// HOL Light: arith.ml:1667 / EXISTS_MOD_THM   (hash md5:a82820cd7479a4e1d9d8fed33d3e0c26)
Theorem hlt_EXISTS_MOD_THM : forall P :e 2 :^: omega, forall n :e omega, ~ n = hl_NUMERAL hl_zero -> ((exists a :e omega, P (hl_MOD a n) = 1) <-> exists a :e omega, hl_lt a n = 1 /\ P a = 1).
Admitted.

// HOL Light: arith.ml:1676 / PRE_ELIM_THM   (hash md5:54ad4be8bef9fd2931b15c2c9d1fa3e1)
Theorem hlt_PRE_ELIM_THM : forall P :e 2 :^: omega, forall n :e omega, P (hl_PRE n) = 1 <-> forall m :e omega, n = hl_SUC m \/ m = hl_NUMERAL hl_zero /\ n = hl_NUMERAL hl_zero -> P m = 1.
Admitted.

// HOL Light: arith.ml:1681 / PRE_ELIM_THM'   (hash md5:dbb3c7fbd9a85480c09c4d41ee9d080f)
Theorem hlt_PRE_ELIM_THM' : forall P :e 2 :^: omega, forall n :e omega, P (hl_PRE n) = 1 <-> exists m :e omega, (n = hl_SUC m \/ m = hl_NUMERAL hl_zero /\ n = hl_NUMERAL hl_zero) /\ P m = 1.
Admitted.

// HOL Light: arith.ml:1685 / SUB_ELIM_THM   (hash md5:d0fa11fd66be88eb72f42b8fcd4537a0)
Theorem hlt_SUB_ELIM_THM : forall P :e 2 :^: omega, forall a b :e omega, P (hl_sub a b) = 1 <-> forall d :e omega, a = hl_add b d \/ hl_lt a b = 1 /\ d = hl_NUMERAL hl_zero -> P d = 1.
Admitted.

// HOL Light: arith.ml:1692 / SUB_ELIM_THM'   (hash md5:a687fb2fa9130ebc7133f1d2cc6c1841)
Theorem hlt_SUB_ELIM_THM' : forall P :e 2 :^: omega, forall a b :e omega, P (hl_sub a b) = 1 <-> exists d :e omega, (a = hl_add b d \/ hl_lt a b = 1 /\ d = hl_NUMERAL hl_zero) /\ P d = 1.
Admitted.

// HOL Light: arith.ml:1696 / DIVMOD_ELIM_THM   (hash md5:539f32f224d06c037b60e8e8c7d1c5cc)
Theorem hlt_DIVMOD_ELIM_THM : forall P :e 2 :^: omega :^: omega, forall m n :e omega, P (hl_DIV m n) (hl_MOD m n) = 1 <-> forall q r :e omega, n = hl_NUMERAL hl_zero /\ (q = hl_NUMERAL hl_zero /\ r = m) \/ m = hl_add (hl_mul q n) r /\ hl_lt r n = 1 -> P q r = 1.
Admitted.

// HOL Light: arith.ml:1703 / DIVMOD_ELIM_THM'   (hash md5:8c0514cd156891dd6934f8ed51a22ffe)
Theorem hlt_DIVMOD_ELIM_THM' : forall P :e 2 :^: omega :^: omega, forall m n :e omega, P (hl_DIV m n) (hl_MOD m n) = 1 <-> exists q r :e omega, (n = hl_NUMERAL hl_zero /\ (q = hl_NUMERAL hl_zero /\ r = m) \/ m = hl_add (hl_mul q n) r /\ hl_lt r n = 1) /\ P q r = 1.
Admitted.

// HOL Light: arith.ml:1772 / minimal   (hash md5:39b7c042a9dafffe68ba4e3c451eb36e)
Theorem hlt_minimal : forall P :e 2 :^: omega, hl_minimal P = hl_select omega (fun n :e omega => if P n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ P m = 1 then 1 else 0).
Admitted.

// HOL Light: arith.ml:1775 / MINIMAL   (hash md5:443e384aa0f6d3a39950416d1cd74f27)
Theorem hlt_MINIMAL : forall P :e 2 :^: omega, (exists n :e omega, P n = 1) <-> P (hl_minimal P) = 1 /\ forall m :e omega, hl_lt m (hl_minimal P) = 1 -> ~ P m = 1.
Admitted.

// HOL Light: arith.ml:1780 / MINIMAL_UNIQUE   (hash md5:4cba49bcdc66400e324e8d06ff4b57ba)
Theorem hlt_MINIMAL_UNIQUE : forall P :e 2 :^: omega, forall n :e omega, P n = 1 /\ (forall m :e omega, hl_lt m n = 1 -> ~ P m = 1) -> hl_minimal P = n.
Admitted.

// HOL Light: arith.ml:1785 / LE_MINIMAL   (hash md5:857592873447dcd95d14c0a7dc63810f)
Theorem hlt_LE_MINIMAL : forall P :e 2 :^: omega, forall n :e omega, (exists r :e omega, P r = 1) -> (hl_le n (hl_minimal P) = 1 <-> forall i :e omega, P i = 1 -> hl_le n i = 1).
Admitted.

// HOL Light: arith.ml:1791 / MINIMAL_LE   (hash md5:bc581b8fea242f2f051eba5656f3e2a1)
Theorem hlt_MINIMAL_LE : forall P :e 2 :^: omega, forall n :e omega, (exists r :e omega, P r = 1) -> (hl_le (hl_minimal P) n = 1 <-> exists i :e omega, hl_le i n = 1 /\ P i = 1).
Admitted.

// HOL Light: arith.ml:1796 / MINIMAL_UBOUND   (hash md5:fd602fc9c1759ce80d1e23ef3e1f694e)
Theorem hlt_MINIMAL_UBOUND : forall P :e 2 :^: omega, forall n :e omega, P n = 1 -> hl_le (hl_minimal P) n = 1.
Admitted.

// HOL Light: arith.ml:1800 / MINIMAL_LBOUND   (hash md5:b66754f9ef0fa0f22da8e7a6eea20c17)
Theorem hlt_MINIMAL_LBOUND : forall P :e 2 :^: omega, forall n :e omega, (exists r :e omega, P r = 1) /\ (forall m :e omega, hl_lt m n = 1 -> ~ P m = 1) -> hl_le n (hl_minimal P) = 1.
Admitted.

// HOL Light: arith.ml:1804 / MINIMAL_MONO   (hash md5:37a4d003aaeb8261b9bba67682d91af2)
Theorem hlt_MINIMAL_MONO : forall P Q :e 2 :^: omega, (exists n :e omega, P n = 1) /\ (forall n :e omega, P n = 1 -> Q n = 1) -> hl_le (hl_minimal Q) (hl_minimal P) = 1.
Admitted.

// HOL Light: arith.ml:1816 / TRANSITIVE_STEPWISE_LT_EQ   (hash md5:ded2819246b8c6833d275d1c7a7b0ca9)
Theorem hlt_TRANSITIVE_STEPWISE_LT_EQ : forall R1 :e 2 :^: omega :^: omega, (forall x y z :e omega, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1) -> ((forall m n :e omega, hl_lt m n = 1 -> R1 m n = 1) <-> forall n :e omega, R1 n (hl_SUC n) = 1).
Admitted.

// HOL Light: arith.ml:1825 / TRANSITIVE_STEPWISE_LT   (hash md5:86373e11f22ddba7e0f62924a5ae255e)
Theorem hlt_TRANSITIVE_STEPWISE_LT : forall R1 :e 2 :^: omega :^: omega, (forall x y z :e omega, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1) /\ (forall n :e omega, R1 n (hl_SUC n) = 1) -> forall m n :e omega, hl_lt m n = 1 -> R1 m n = 1.
Admitted.

// HOL Light: arith.ml:1832 / TRANSITIVE_STEPWISE_LE_EQ   (hash md5:01d5f67909d4fc2fa68d463065b565ca)
Theorem hlt_TRANSITIVE_STEPWISE_LE_EQ : forall R1 :e 2 :^: omega :^: omega, (forall x :e omega, R1 x x = 1) /\ (forall x y z :e omega, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1) -> ((forall m n :e omega, hl_le m n = 1 -> R1 m n = 1) <-> forall n :e omega, R1 n (hl_SUC n) = 1).
Admitted.

// HOL Light: arith.ml:1842 / TRANSITIVE_STEPWISE_LE   (hash md5:b839daa1ebc178a99eeb7516fda5e5d1)
Theorem hlt_TRANSITIVE_STEPWISE_LE : forall R1 :e 2 :^: omega :^: omega, (forall x :e omega, R1 x x = 1) /\ ((forall x y z :e omega, R1 x y = 1 /\ R1 y z = 1 -> R1 x z = 1) /\ (forall n :e omega, R1 n (hl_SUC n) = 1)) -> forall m n :e omega, hl_le m n = 1 -> R1 m n = 1.
Admitted.

// HOL Light: arith.ml:1854 / DEPENDENT_CHOICE_FIXED   (hash md5:57a7a1455b081281c9fda7ee7dc71191)
Theorem hlt_DEPENDENT_CHOICE_FIXED : forall A:set, A <> Empty -> forall P :e 2 :^: A :^: omega, forall R1 :e 2 :^: A :^: A :^: omega, forall a :e A, P (hl_NUMERAL hl_zero) a = 1 /\ (forall n :e omega, forall x :e A, P n x = 1 -> exists y :e A, P (hl_SUC n) y = 1 /\ R1 n x y = 1) -> exists f :e A :^: omega, f (hl_NUMERAL hl_zero) = a /\ ((forall n :e omega, P n (f n) = 1) /\ forall n :e omega, R1 n (f n) (f (hl_SUC n)) = 1).
Admitted.

// HOL Light: arith.ml:1866 / DEPENDENT_CHOICE   (hash md5:fe491beb38266f87210359427a13584f)
Theorem hlt_DEPENDENT_CHOICE : forall A:set, A <> Empty -> forall P :e 2 :^: A :^: omega, forall R1 :e 2 :^: A :^: A :^: omega, (exists a :e A, P (hl_NUMERAL hl_zero) a = 1) /\ (forall n :e omega, forall x :e A, P n x = 1 -> exists y :e A, P (hl_SUC n) y = 1 /\ R1 n x y = 1) -> exists f :e A :^: omega, (forall n :e omega, P n (f n) = 1) /\ forall n :e omega, R1 n (f n) (f (hl_SUC n)) = 1.
Admitted.

