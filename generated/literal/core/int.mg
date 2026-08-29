// hol2mg literal statements (private): shard int of profile core.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: int.ml:20 / integer   (hash md5:db1bbae63316848e640a0c0d902d93c1)
Theorem hlt_integer : forall x :e R, hl_integer x = 1 <-> exists n :e omega, hl_real_abs x = hl_real_of_num n.
Admitted.

// HOL Light: int.ml:23 / is_int   (hash md5:525eb688cbd4423a5f45509ef427b678)
Theorem hlt_is_int : forall x :e R, hl_integer x = 1 <-> exists n :e omega, x = hl_real_of_num n \/ x = hl_real_neg (hl_real_of_num n).
Admitted.

// HOL Light: int.ml:31 / int_tybij   (hash md5:3046e4c5f8eb4701b59127b6d816a01b)
Theorem hlt_int_tybij : (forall a :e hl_ty_int, hl_int_of_real (hl_real_of_int a) = a) /\ forall r :e R, hl_integer r = 1 <-> hl_real_of_int (hl_int_of_real r) = r.
Admitted.

// HOL Light: int.ml:36 / int_abstr   (hash md5:5e62030b8cb4e642efde5ca482a7495d)
Theorem hlt_int_abstr : forall a :e hl_ty_int, hl_int_of_real (hl_real_of_int a) = a.
Admitted.

// HOL Light: int.ml:36 / int_rep   (hash md5:6de190fa190911804f434ec111c53f52)
Theorem hlt_int_rep : forall r :e R, hl_integer r = 1 <-> hl_real_of_int (hl_int_of_real r) = r.
Admitted.

// HOL Light: int.ml:39 / dest_int_rep   (hash md5:4f116cb419758b02da7fe41cdd1c38af)
Theorem hlt_dest_int_rep : forall i :e hl_ty_int, exists n :e omega, hl_real_of_int i = hl_real_of_num n \/ hl_real_of_int i = hl_real_neg (hl_real_of_num n).
Admitted.

// HOL Light: int.ml:43 / INTEGER_REAL_OF_INT   (hash md5:fd2f6c28a41c04c5ff22528384474bc8)
Theorem hlt_INTEGER_REAL_OF_INT : forall x :e hl_ty_int, hl_integer (hl_real_of_int x) = 1.
Admitted.

// HOL Light: int.ml:51 / int_eq   (hash md5:46113566031fb84ffc62c9a77bf47d91)
Theorem hlt_int_eq : forall x y :e hl_ty_int, x = y <-> hl_real_of_int x = hl_real_of_int y.
Admitted.

// HOL Light: int.ml:76 / int_le   (hash md5:de5ef357afac93cc21ebb312eb6ee2f5)
Theorem hlt_int_le : forall x y :e hl_ty_int, hl_int_le x y = 1 <-> hl_real_le (hl_real_of_int x) (hl_real_of_int y) = 1.
Admitted.

// HOL Light: int.ml:79 / int_lt   (hash md5:e120c5df36564347bd92f4a0fdd90d63)
Theorem hlt_int_lt : forall x y :e hl_ty_int, hl_int_lt x y = 1 <-> hl_real_lt (hl_real_of_int x) (hl_real_of_int y) = 1.
Admitted.

// HOL Light: int.ml:82 / int_ge   (hash md5:b4c39bb8f6566b51ddc8294bfa353ea5)
Theorem hlt_int_ge : forall x y :e hl_ty_int, hl_int_ge x y = 1 <-> hl_real_ge (hl_real_of_int x) (hl_real_of_int y) = 1.
Admitted.

// HOL Light: int.ml:85 / int_gt   (hash md5:671447e0e4c03145ccdd6dae44981bba)
Theorem hlt_int_gt : forall x y :e hl_ty_int, hl_int_gt x y = 1 <-> hl_real_gt (hl_real_of_int x) (hl_real_of_int y) = 1.
Admitted.

// HOL Light: int.ml:88 / int_of_num   (hash md5:988ee0a1ee8fbc1cc8ee2a39e110cf83)
Theorem hlt_int_of_num : forall n :e omega, hl_int_of_num n = hl_int_of_real (hl_real_of_num n).
Admitted.

// HOL Light: int.ml:91 / int_of_num_th   (hash md5:35261390244301170f26ee50449b494b)
Theorem hlt_int_of_num_th : forall n :e omega, hl_real_of_int (hl_int_of_num n) = hl_real_of_num n.
Admitted.

// HOL Light: int.ml:96 / int_neg   (hash md5:10fd991057cc4493daa239eac7a378c7)
Theorem hlt_int_neg : forall i :e hl_ty_int, hl_int_neg i = hl_int_of_real (hl_real_neg (hl_real_of_int i)).
Admitted.

// HOL Light: int.ml:99 / int_neg_th   (hash md5:0e6ea77f7aef87db9e256366e757337f)
Theorem hlt_int_neg_th : forall x :e hl_ty_int, hl_real_of_int (hl_int_neg x) = hl_real_neg (hl_real_of_int x).
Admitted.

// HOL Light: int.ml:106 / int_add   (hash md5:452ea8afad01dc3e00abecf4bfb405b7)
Theorem hlt_int_add : forall x y :e hl_ty_int, hl_int_add x y = hl_int_of_real (hl_real_add (hl_real_of_int x) (hl_real_of_int y)).
Admitted.

// HOL Light: int.ml:109 / int_add_th   (hash md5:dd9f80506f6d99ceaf3f0d9bb1319597)
Theorem hlt_int_add_th : forall x y :e hl_ty_int, hl_real_of_int (hl_int_add x y) = hl_real_add (hl_real_of_int x) (hl_real_of_int y).
Admitted.

// HOL Light: int.ml:123 / int_sub   (hash md5:da9658dcf1adb65471b3df2d7a5508a8)
Theorem hlt_int_sub : forall x y :e hl_ty_int, hl_int_sub x y = hl_int_of_real (hl_real_sub (hl_real_of_int x) (hl_real_of_int y)).
Admitted.

// HOL Light: int.ml:126 / int_sub_th   (hash md5:51c4bd357f334aa376dfd10187f92210)
Theorem hlt_int_sub_th : forall x y :e hl_ty_int, hl_real_of_int (hl_int_sub x y) = hl_real_sub (hl_real_of_int x) (hl_real_of_int y).
Admitted.

// HOL Light: int.ml:131 / int_mul   (hash md5:0ee164d776cf3bfe7b2c2fb604061cc9)
Theorem hlt_int_mul : forall x y :e hl_ty_int, hl_int_mul x y = hl_int_of_real (hl_real_mul (hl_real_of_int x) (hl_real_of_int y)).
Admitted.

// HOL Light: int.ml:134 / int_mul_th   (hash md5:b83b17b818c1f7162261a657aaa93495)
Theorem hlt_int_mul_th : forall x y :e hl_ty_int, hl_real_of_int (hl_int_mul x y) = hl_real_mul (hl_real_of_int x) (hl_real_of_int y).
Admitted.

// HOL Light: int.ml:143 / int_abs   (hash md5:71eaa84cc4df60cef62cde4868205e2e)
Theorem hlt_int_abs : forall x :e hl_ty_int, hl_int_abs x = hl_int_of_real (hl_real_abs (hl_real_of_int x)).
Admitted.

// HOL Light: int.ml:146 / int_abs_th   (hash md5:a9976c1ab23add8bc895ffeea6543c61)
Theorem hlt_int_abs_th : forall x :e hl_ty_int, hl_real_of_int (hl_int_abs x) = hl_real_abs (hl_real_of_int x).
Admitted.

// HOL Light: int.ml:151 / int_sgn   (hash md5:e8703bd63d689c63e0255e2e03bba69c)
Theorem hlt_int_sgn : forall x :e hl_ty_int, hl_int_sgn x = hl_int_of_real (hl_real_sgn (hl_real_of_int x)).
Admitted.

// HOL Light: int.ml:154 / int_sgn_th   (hash md5:b6c4c1d56066eb2f173bcd00597562bf)
Theorem hlt_int_sgn_th : forall x :e hl_ty_int, hl_real_of_int (hl_int_sgn x) = hl_real_sgn (hl_real_of_int x).
Admitted.

// HOL Light: int.ml:160 / int_max   (hash md5:27b81a3591ba69db6f036db60e5e9b3a)
Theorem hlt_int_max : forall x y :e hl_ty_int, hl_int_max x y = hl_int_of_real (hl_real_max (hl_real_of_int x) (hl_real_of_int y)).
Admitted.

// HOL Light: int.ml:163 / int_max_th   (hash md5:390313eb8b350c97d5e579bffe6d908c)
Theorem hlt_int_max_th : forall x y :e hl_ty_int, hl_real_of_int (hl_int_max x y) = hl_real_max (hl_real_of_int x) (hl_real_of_int y).
Admitted.

// HOL Light: int.ml:168 / int_min   (hash md5:1f287113561b3b6b2727a82204d4c51b)
Theorem hlt_int_min : forall x y :e hl_ty_int, hl_int_min x y = hl_int_of_real (hl_real_min (hl_real_of_int x) (hl_real_of_int y)).
Admitted.

// HOL Light: int.ml:171 / int_min_th   (hash md5:32a75428ddb4e7a53b604c2d95cb3a3b)
Theorem hlt_int_min_th : forall x y :e hl_ty_int, hl_real_of_int (hl_int_min x y) = hl_real_min (hl_real_of_int x) (hl_real_of_int y).
Admitted.

// HOL Light: int.ml:176 / int_pow   (hash md5:9a1afde4bd0a4bfd52629c819bd94038)
Theorem hlt_int_pow : forall x :e hl_ty_int, forall n :e omega, hl_int_pow x n = hl_int_of_real (hl_real_pow (hl_real_of_int x) n).
Admitted.

// HOL Light: int.ml:179 / int_pow_th   (hash md5:cf684b2503467aef2a5269df4f2ea181)
Theorem hlt_int_pow_th : forall x :e hl_ty_int, forall n :e omega, hl_real_of_int (hl_int_pow x n) = hl_real_pow (hl_real_of_int x) n.
Admitted.

// HOL Light: int.ml:191 / REAL_OF_INT_CLAUSES   (hash md5:35e75d9d55eee1ca382038fbab169cd4)
Theorem hlt_REAL_OF_INT_CLAUSES : (forall x y :e hl_ty_int, hl_real_of_int x = hl_real_of_int y <-> x = y) /\ ((forall x y :e hl_ty_int, hl_real_ge (hl_real_of_int x) (hl_real_of_int y) = 1 <-> hl_int_ge x y = 1) /\ ((forall x y :e hl_ty_int, hl_real_gt (hl_real_of_int x) (hl_real_of_int y) = 1 <-> hl_int_gt x y = 1) /\ ((forall x y :e hl_ty_int, hl_real_le (hl_real_of_int x) (hl_real_of_int y) = 1 <-> hl_int_le x y = 1) /\ ((forall x y :e hl_ty_int, hl_real_lt (hl_real_of_int x) (hl_real_of_int y) = 1 <-> hl_int_lt x y = 1) /\ ((forall x y :e hl_ty_int, hl_real_max (hl_real_of_int x) (hl_real_of_int y) = hl_real_of_int (hl_int_max x y)) /\ ((forall x y :e hl_ty_int, hl_real_min (hl_real_of_int x) (hl_real_of_int y) = hl_real_of_int (hl_int_min x y)) /\ ((forall n :e omega, hl_real_of_num n = hl_real_of_int (hl_int_of_num n)) /\ ((forall x :e hl_ty_int, hl_real_neg (hl_real_of_int x) = hl_real_of_int (hl_int_neg x)) /\ ((forall x :e hl_ty_int, hl_real_abs (hl_real_of_int x) = hl_real_of_int (hl_int_abs x)) /\ ((forall x y :e hl_ty_int, hl_real_max (hl_real_of_int x) (hl_real_of_int y) = hl_real_of_int (hl_int_max x y)) /\ ((forall x y :e hl_ty_int, hl_real_min (hl_real_of_int x) (hl_real_of_int y) = hl_real_of_int (hl_int_min x y)) /\ ((forall x :e hl_ty_int, hl_real_sgn (hl_real_of_int x) = hl_real_of_int (hl_int_sgn x)) /\ ((forall x y :e hl_ty_int, hl_real_add (hl_real_of_int x) (hl_real_of_int y) = hl_real_of_int (hl_int_add x y)) /\ ((forall x y :e hl_ty_int, hl_real_sub (hl_real_of_int x) (hl_real_of_int y) = hl_real_of_int (hl_int_sub x y)) /\ ((forall x y :e hl_ty_int, hl_real_mul (hl_real_of_int x) (hl_real_of_int y) = hl_real_of_int (hl_int_mul x y)) /\ forall x :e hl_ty_int, forall n :e omega, hl_real_pow (hl_real_of_int x) n = hl_real_of_int (hl_int_pow x n)))))))))))))))).
Admitted.

// HOL Light: int.ml:217 / INT_IMAGE   (hash md5:0bd47f16227bd2c8d3e8927e838606ef)
Theorem hlt_INT_IMAGE : forall x :e hl_ty_int, (exists n :e omega, x = hl_int_of_num n) \/ exists n :e omega, x = hl_int_neg (hl_int_of_num n).
Admitted.

// HOL Light: int.ml:227 / FORALL_INT_CASES   (hash md5:769399c293e0c911f8379503acfb6084)
Theorem hlt_FORALL_INT_CASES : forall P :e 2 :^: hl_ty_int, (forall x :e hl_ty_int, P x = 1) <-> (forall n :e omega, P (hl_int_of_num n) = 1) /\ forall n :e omega, P (hl_int_neg (hl_int_of_num n)) = 1.
Admitted.

// HOL Light: int.ml:231 / EXISTS_INT_CASES   (hash md5:1ccb0a41b2528ea8aaa0a9647cd0ff2a)
Theorem hlt_EXISTS_INT_CASES : forall P :e 2 :^: hl_ty_int, (exists x :e hl_ty_int, P x = 1) <-> (exists n :e omega, P (hl_int_of_num n) = 1) \/ exists n :e omega, P (hl_int_neg (hl_int_of_num n)) = 1.
Admitted.

// HOL Light: int.ml:235 / INT_LT_DISCRETE   (hash md5:94eb5077a7433465572e7e275940ad36)
Theorem hlt_INT_LT_DISCRETE : forall x y :e hl_ty_int, hl_int_lt x y = 1 <-> hl_int_le (hl_int_add x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) y = 1.
Admitted.

// HOL Light: int.ml:254 / INT_GT_DISCRETE   (hash md5:51f6e5e558c9f7230ce4022124b64772)
Theorem hlt_INT_GT_DISCRETE : forall x y :e hl_ty_int, hl_int_gt x y = 1 <-> hl_int_ge x (hl_int_add y (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: int.ml:326 / INT_ABS_0   (hash md5:6595e1adb11c780f6770e97d7474ab78)
Theorem hlt_INT_ABS_0 : hl_int_abs (hl_int_of_num (hl_NUMERAL hl_zero)) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:327 / INT_ABS_1   (hash md5:633359adb78766e4cbbc64bcb4c81f76)
Theorem hlt_INT_ABS_1 : hl_int_abs (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: int.ml:328 / INT_ABS_ABS   (hash md5:964c3f581b3d88c1141a393d42460e1f)
Theorem hlt_INT_ABS_ABS : forall x :e hl_ty_int, hl_int_abs (hl_int_abs x) = hl_int_abs x.
Admitted.

// HOL Light: int.ml:329 / INT_ABS_BETWEEN   (hash md5:4be2a3116cb556f8cad7a3a8367c26a4)
Theorem hlt_INT_ABS_BETWEEN : forall x y d :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_int_lt (hl_int_sub x d) y = 1 /\ hl_int_lt y (hl_int_add x d) = 1) <-> hl_int_lt (hl_int_abs (hl_int_sub y x)) d = 1.
Admitted.

// HOL Light: int.ml:330 / INT_ABS_BETWEEN1   (hash md5:05e407c91229c22730ec1a0d7d8bcffb)
Theorem hlt_INT_ABS_BETWEEN1 : forall x y z :e hl_ty_int, hl_int_lt x z = 1 /\ hl_int_lt (hl_int_abs (hl_int_sub y x)) (hl_int_sub z x) = 1 -> hl_int_lt y z = 1.
Admitted.

// HOL Light: int.ml:331 / INT_ABS_BETWEEN2   (hash md5:03d927e68eca045767777f57d4157a71)
Theorem hlt_INT_ABS_BETWEEN2 : forall x0 x y0 y :e hl_ty_int, hl_int_lt x0 y0 = 1 /\ (hl_int_lt (hl_int_mul (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_abs (hl_int_sub x x0))) (hl_int_sub y0 x0) = 1 /\ hl_int_lt (hl_int_mul (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_abs (hl_int_sub y y0))) (hl_int_sub y0 x0) = 1) -> hl_int_lt x y = 1.
Admitted.

// HOL Light: int.ml:332 / INT_ABS_BOUND   (hash md5:a8de3fd039715ee03ccf999d916140bf)
Theorem hlt_INT_ABS_BOUND : forall x y d :e hl_ty_int, hl_int_lt (hl_int_abs (hl_int_sub x y)) d = 1 -> hl_int_lt y (hl_int_add x d) = 1.
Admitted.

// HOL Light: int.ml:333 / INT_ABS_BOUNDS   (hash md5:46a33be18764437565ea5b0bb44ea971)
Theorem hlt_INT_ABS_BOUNDS : forall x k :e hl_ty_int, hl_int_le (hl_int_abs x) k = 1 <-> hl_int_le (hl_int_neg k) x = 1 /\ hl_int_le x k = 1.
Admitted.

// HOL Light: int.ml:334 / INT_ABS_CASES   (hash md5:1382859db7e42c1f5666c9e661c95064)
Theorem hlt_INT_ABS_CASES : forall x :e hl_ty_int, x = hl_int_of_num (hl_NUMERAL hl_zero) \/ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_abs x) = 1.
Admitted.

// HOL Light: int.ml:335 / INT_ABS_CIRCLE   (hash md5:a6243c1ba3e491a883125b9b7188f3d4)
Theorem hlt_INT_ABS_CIRCLE : forall x y h :e hl_ty_int, hl_int_lt (hl_int_abs h) (hl_int_sub (hl_int_abs y) (hl_int_abs x)) = 1 -> hl_int_lt (hl_int_abs (hl_int_add x h)) (hl_int_abs y) = 1.
Admitted.

// HOL Light: int.ml:336 / INT_ABS_LE   (hash md5:33aa3a49ad10a763deba8f2cecadb29f)
Theorem hlt_INT_ABS_LE : forall x :e hl_ty_int, hl_int_le x (hl_int_abs x) = 1.
Admitted.

// HOL Light: int.ml:337 / INT_ABS_MUL   (hash md5:830c4d4bce8705fa086b96516a87cbe6)
Theorem hlt_INT_ABS_MUL : forall x y :e hl_ty_int, hl_int_abs (hl_int_mul x y) = hl_int_mul (hl_int_abs x) (hl_int_abs y).
Admitted.

// HOL Light: int.ml:338 / INT_ABS_NEG   (hash md5:82eca5945fa9c3df0fd61b6a7a50468b)
Theorem hlt_INT_ABS_NEG : forall x :e hl_ty_int, hl_int_abs (hl_int_neg x) = hl_int_abs x.
Admitted.

// HOL Light: int.ml:339 / INT_ABS_NUM   (hash md5:4d12e0c98dcb0f6b6c43399dd3300d7c)
Theorem hlt_INT_ABS_NUM : forall n :e omega, hl_int_abs (hl_int_of_num n) = hl_int_of_num n.
Admitted.

// HOL Light: int.ml:340 / INT_ABS_NZ   (hash md5:06ef8a62e67ecfc3fa1b6d712b0157b0)
Theorem hlt_INT_ABS_NZ : forall x :e hl_ty_int, ~ x = hl_int_of_num (hl_NUMERAL hl_zero) <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_abs x) = 1.
Admitted.

// HOL Light: int.ml:341 / INT_ABS_POS   (hash md5:52755ebb3b6de706dd592efa6b16d25d)
Theorem hlt_INT_ABS_POS : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_abs x) = 1.
Admitted.

// HOL Light: int.ml:342 / INT_ABS_POW   (hash md5:e37aae1077f7e875df3519f445e8a186)
Theorem hlt_INT_ABS_POW : forall x :e hl_ty_int, forall n :e omega, hl_int_abs (hl_int_pow x n) = hl_int_pow (hl_int_abs x) n.
Admitted.

// HOL Light: int.ml:343 / INT_ABS_REFL   (hash md5:4a51ed89907d6971f0e406598a46c443)
Theorem hlt_INT_ABS_REFL : forall x :e hl_ty_int, hl_int_abs x = x <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:344 / INT_ABS_SGN   (hash md5:93b97b18ca2fa30694cf0aa686ac1d85)
Theorem hlt_INT_ABS_SGN : forall x :e hl_ty_int, hl_int_abs (hl_int_sgn x) = hl_int_sgn (hl_int_abs x).
Admitted.

// HOL Light: int.ml:345 / INT_ABS_SIGN   (hash md5:5b2fcd294e47e933feb6ad3e629ff5d6)
Theorem hlt_INT_ABS_SIGN : forall x y :e hl_ty_int, hl_int_lt (hl_int_abs (hl_int_sub x y)) y = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:346 / INT_ABS_SIGN2   (hash md5:c05f340aed7a104e9e98a032c8376151)
Theorem hlt_INT_ABS_SIGN2 : forall x y :e hl_ty_int, hl_int_lt (hl_int_abs (hl_int_sub x y)) (hl_int_neg y) = 1 -> hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: int.ml:347 / INT_ABS_STILLNZ   (hash md5:88e719a24579d8edb26573bded96dfa4)
Theorem hlt_INT_ABS_STILLNZ : forall x y :e hl_ty_int, hl_int_lt (hl_int_abs (hl_int_sub x y)) (hl_int_abs y) = 1 -> ~ x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:348 / INT_ABS_SUB   (hash md5:d14e6512208c0521f0a34941b64bc537)
Theorem hlt_INT_ABS_SUB : forall x y :e hl_ty_int, hl_int_abs (hl_int_sub x y) = hl_int_abs (hl_int_sub y x).
Admitted.

// HOL Light: int.ml:349 / INT_ABS_SUB_ABS   (hash md5:e8625f7d9ba843f9aa9ee6217db15676)
Theorem hlt_INT_ABS_SUB_ABS : forall x y :e hl_ty_int, hl_int_le (hl_int_abs (hl_int_sub (hl_int_abs x) (hl_int_abs y))) (hl_int_abs (hl_int_sub x y)) = 1.
Admitted.

// HOL Light: int.ml:350 / INT_ABS_TRIANGLE   (hash md5:5b60947f0679c34bd5c49a9be6e1b899)
Theorem hlt_INT_ABS_TRIANGLE : forall x y :e hl_ty_int, hl_int_le (hl_int_abs (hl_int_add x y)) (hl_int_add (hl_int_abs x) (hl_int_abs y)) = 1.
Admitted.

// HOL Light: int.ml:351 / INT_ABS_ZERO   (hash md5:668ce0f954cded8010d20290beaca3b3)
Theorem hlt_INT_ABS_ZERO : forall x :e hl_ty_int, hl_int_abs x = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:352 / INT_ADD2_SUB2   (hash md5:9550e48f9029c88c8a94342062776ef6)
Theorem hlt_INT_ADD2_SUB2 : forall a b c d :e hl_ty_int, hl_int_sub (hl_int_add a b) (hl_int_add c d) = hl_int_add (hl_int_sub a c) (hl_int_sub b d).
Admitted.

// HOL Light: int.ml:353 / INT_ADD_AC   (hash md5:b4baead74aa9a9eb159f9f51f7cfaf1c)
Theorem hlt_INT_ADD_AC : forall m n p :e hl_ty_int, hl_int_add m n = hl_int_add n m /\ (hl_int_add (hl_int_add m n) p = hl_int_add m (hl_int_add n p) /\ hl_int_add m (hl_int_add n p) = hl_int_add n (hl_int_add m p)).
Admitted.

// HOL Light: int.ml:354 / INT_ADD_ASSOC   (hash md5:fb48818dcf64b90f67477eb9b5eb50c3)
Theorem hlt_INT_ADD_ASSOC : forall x y z :e hl_ty_int, hl_int_add x (hl_int_add y z) = hl_int_add (hl_int_add x y) z.
Admitted.

// HOL Light: int.ml:355 / INT_ADD_LDISTRIB   (hash md5:4460728e1199946d7df5e205349aff2b)
Theorem hlt_INT_ADD_LDISTRIB : forall x y z :e hl_ty_int, hl_int_mul x (hl_int_add y z) = hl_int_add (hl_int_mul x y) (hl_int_mul x z).
Admitted.

// HOL Light: int.ml:356 / INT_ADD_LID   (hash md5:597646d3eaf211d84b55b662f4739446)
Theorem hlt_INT_ADD_LID : forall x :e hl_ty_int, hl_int_add (hl_int_of_num (hl_NUMERAL hl_zero)) x = x.
Admitted.

// HOL Light: int.ml:357 / INT_ADD_LINV   (hash md5:2a000aee38136418a71080c0b4839ac8)
Theorem hlt_INT_ADD_LINV : forall x :e hl_ty_int, hl_int_add (hl_int_neg x) x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:358 / INT_ADD_RDISTRIB   (hash md5:5e3dc21b90a54846a754cc0f5a18babd)
Theorem hlt_INT_ADD_RDISTRIB : forall x y z :e hl_ty_int, hl_int_mul (hl_int_add x y) z = hl_int_add (hl_int_mul x z) (hl_int_mul y z).
Admitted.

// HOL Light: int.ml:359 / INT_ADD_RID   (hash md5:da2074ef501dbdf1f3be7349a1bc04a5)
Theorem hlt_INT_ADD_RID : forall x :e hl_ty_int, hl_int_add x (hl_int_of_num (hl_NUMERAL hl_zero)) = x.
Admitted.

// HOL Light: int.ml:360 / INT_ADD_RINV   (hash md5:d2f83bffa1212c887676517e60434788)
Theorem hlt_INT_ADD_RINV : forall x :e hl_ty_int, hl_int_add x (hl_int_neg x) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:361 / INT_ADD_SUB   (hash md5:68b19e5477b54fa36ae3b8739d905456)
Theorem hlt_INT_ADD_SUB : forall x y :e hl_ty_int, hl_int_sub (hl_int_add x y) x = y.
Admitted.

// HOL Light: int.ml:362 / INT_ADD_SUB2   (hash md5:df3c434ccbc1cfa343ce9e06e4e7ab40)
Theorem hlt_INT_ADD_SUB2 : forall x y :e hl_ty_int, hl_int_sub x (hl_int_add x y) = hl_int_neg y.
Admitted.

// HOL Light: int.ml:363 / INT_ADD_SYM   (hash md5:823efccaab8f8c65707f8d2a529cd7e1)
Theorem hlt_INT_ADD_SYM : forall x y :e hl_ty_int, hl_int_add x y = hl_int_add y x.
Admitted.

// HOL Light: int.ml:364 / INT_BOUNDS_LE   (hash md5:dc3f4a0d6ee35119048a9e541830bd4e)
Theorem hlt_INT_BOUNDS_LE : forall x k :e hl_ty_int, hl_int_le (hl_int_neg k) x = 1 /\ hl_int_le x k = 1 <-> hl_int_le (hl_int_abs x) k = 1.
Admitted.

// HOL Light: int.ml:365 / INT_BOUNDS_LT   (hash md5:733f0ee81e91f7b32df514f5e75184f4)
Theorem hlt_INT_BOUNDS_LT : forall x k :e hl_ty_int, hl_int_lt (hl_int_neg k) x = 1 /\ hl_int_lt x k = 1 <-> hl_int_lt (hl_int_abs x) k = 1.
Admitted.

// HOL Light: int.ml:366 / INT_DIFFSQ   (hash md5:b851d37a1c2eae4d761e6d37ee73598e)
Theorem hlt_INT_DIFFSQ : forall x y :e hl_ty_int, hl_int_mul (hl_int_add x y) (hl_int_sub x y) = hl_int_sub (hl_int_mul x x) (hl_int_mul y y).
Admitted.

// HOL Light: int.ml:367 / INT_ENTIRE   (hash md5:9af295f1888c2a200b83845c8bd452cd)
Theorem hlt_INT_ENTIRE : forall x y :e hl_ty_int, hl_int_mul x y = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = hl_int_of_num (hl_NUMERAL hl_zero) \/ y = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:368 / INT_EQ_ADD_LCANCEL   (hash md5:9a7ca14c1f30237cbe451545383c360f)
Theorem hlt_INT_EQ_ADD_LCANCEL : forall x y z :e hl_ty_int, hl_int_add x y = hl_int_add x z <-> y = z.
Admitted.

// HOL Light: int.ml:369 / INT_EQ_ADD_LCANCEL_0   (hash md5:94bbd579c53eda18f9f870d3f3eb5937)
Theorem hlt_INT_EQ_ADD_LCANCEL_0 : forall x y :e hl_ty_int, hl_int_add x y = x <-> y = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:370 / INT_EQ_ADD_RCANCEL   (hash md5:258ec3eaf617735b5d57f78d76c243c1)
Theorem hlt_INT_EQ_ADD_RCANCEL : forall x y z :e hl_ty_int, hl_int_add x z = hl_int_add y z <-> x = y.
Admitted.

// HOL Light: int.ml:371 / INT_EQ_ADD_RCANCEL_0   (hash md5:66ec406ecd301392a43bc993bd224239)
Theorem hlt_INT_EQ_ADD_RCANCEL_0 : forall x y :e hl_ty_int, hl_int_add x y = y <-> x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:372 / INT_EQ_IMP_LE   (hash md5:5ce1c379fbca6ad7da6d754ab44d6fb9)
Theorem hlt_INT_EQ_IMP_LE : forall x y :e hl_ty_int, x = y -> hl_int_le x y = 1.
Admitted.

// HOL Light: int.ml:373 / INT_EQ_LCANCEL_IMP   (hash md5:f4f2aa8dedfc1491637581a2ee577cef)
Theorem hlt_INT_EQ_LCANCEL_IMP : forall x y z :e hl_ty_int, ~ z = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_int_mul z x = hl_int_mul z y -> x = y.
Admitted.

// HOL Light: int.ml:374 / INT_EQ_MUL_LCANCEL   (hash md5:371194b7920e88b1ddc0b4d9ffbddd0d)
Theorem hlt_INT_EQ_MUL_LCANCEL : forall x y z :e hl_ty_int, hl_int_mul x y = hl_int_mul x z <-> x = hl_int_of_num (hl_NUMERAL hl_zero) \/ y = z.
Admitted.

// HOL Light: int.ml:375 / INT_EQ_MUL_RCANCEL   (hash md5:5cf02d0ad69d5787a671e09f146a7087)
Theorem hlt_INT_EQ_MUL_RCANCEL : forall x y z :e hl_ty_int, hl_int_mul x z = hl_int_mul y z <-> x = y \/ z = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:376 / INT_EQ_NEG2   (hash md5:8be573b3bc0b57f1efc8ccf2353fee32)
Theorem hlt_INT_EQ_NEG2 : forall x y :e hl_ty_int, hl_int_neg x = hl_int_neg y <-> x = y.
Admitted.

// HOL Light: int.ml:377 / INT_EQ_RCANCEL_IMP   (hash md5:693e1dc1f89a71aa6c6b2cd0ac6af399)
Theorem hlt_INT_EQ_RCANCEL_IMP : forall x y z :e hl_ty_int, ~ z = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_int_mul x z = hl_int_mul y z -> x = y.
Admitted.

// HOL Light: int.ml:378 / INT_EQ_SGN_ABS   (hash md5:6fb036f942992f6a7b9da44fa14b1fce)
Theorem hlt_INT_EQ_SGN_ABS : forall x y :e hl_ty_int, x = y <-> hl_int_sgn x = hl_int_sgn y /\ hl_int_abs x = hl_int_abs y.
Admitted.

// HOL Light: int.ml:379 / INT_EQ_SQUARE_ABS   (hash md5:ac1cc047d145102632abac96c71c462c)
Theorem hlt_INT_EQ_SQUARE_ABS : forall x y :e hl_ty_int, hl_int_abs x = hl_int_abs y <-> hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_int_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: int.ml:380 / INT_EQ_SUB_LADD   (hash md5:679da5775420d64965c27c8711cc8dcb)
Theorem hlt_INT_EQ_SUB_LADD : forall x y z :e hl_ty_int, x = hl_int_sub y z <-> hl_int_add x z = y.
Admitted.

// HOL Light: int.ml:381 / INT_EQ_SUB_RADD   (hash md5:ed49c17ca64ce88e4459859cde07a4d7)
Theorem hlt_INT_EQ_SUB_RADD : forall x y z :e hl_ty_int, hl_int_sub x y = z <-> x = hl_int_add z y.
Admitted.

// HOL Light: int.ml:382 / INT_EVENPOW_ABS   (hash md5:88d1a825423d2b5165547dc27251fc7e)
Theorem hlt_INT_EVENPOW_ABS : forall x :e hl_ty_int, forall n :e omega, hl_EVEN n = 1 -> hl_int_pow (hl_int_abs x) n = hl_int_pow x n.
Admitted.

// HOL Light: int.ml:383 / INT_LET_ADD   (hash md5:8479cb6d0a6b77cb2d2e9288e6bd0779)
Theorem hlt_INT_LET_ADD : forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_add x y) = 1.
Admitted.

// HOL Light: int.ml:384 / INT_LET_ADD2   (hash md5:257a8ff98c6c774c85d46e18a1a17c35)
Theorem hlt_INT_LET_ADD2 : forall w x y z :e hl_ty_int, hl_int_le w x = 1 /\ hl_int_lt y z = 1 -> hl_int_lt (hl_int_add w y) (hl_int_add x z) = 1.
Admitted.

// HOL Light: int.ml:385 / INT_LET_ANTISYM   (hash md5:1e1a6a627816d5d35e580eb591f02906)
Theorem hlt_INT_LET_ANTISYM : forall x y :e hl_ty_int, ~ (hl_int_le x y = 1 /\ hl_int_lt y x = 1).
Admitted.

// HOL Light: int.ml:386 / INT_LET_TOTAL   (hash md5:be92c8c915617e013b4d14e7d40a4d20)
Theorem hlt_INT_LET_TOTAL : forall x y :e hl_ty_int, hl_int_le x y = 1 \/ hl_int_lt y x = 1.
Admitted.

// HOL Light: int.ml:387 / INT_LET_TRANS   (hash md5:60734f74f7370173052d72d22103e2aa)
Theorem hlt_INT_LET_TRANS : forall x y z :e hl_ty_int, hl_int_le x y = 1 /\ hl_int_lt y z = 1 -> hl_int_lt x z = 1.
Admitted.

// HOL Light: int.ml:388 / INT_LE_01   (hash md5:813902ac692ac708fe1f4721c3df2e13)
Theorem hlt_INT_LE_01 : hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: int.ml:389 / INT_LE_ADD   (hash md5:1564670369463531ce40d33d3b9d01db)
Theorem hlt_INT_LE_ADD : forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_add x y) = 1.
Admitted.

// HOL Light: int.ml:390 / INT_LE_ADD2   (hash md5:8ea0efdfe35f127804b937bd4d4a0a22)
Theorem hlt_INT_LE_ADD2 : forall w x y z :e hl_ty_int, hl_int_le w x = 1 /\ hl_int_le y z = 1 -> hl_int_le (hl_int_add w y) (hl_int_add x z) = 1.
Admitted.

// HOL Light: int.ml:391 / INT_LE_ADDL   (hash md5:28adbc12c29ef0c28f6987573614f45c)
Theorem hlt_INT_LE_ADDL : forall x y :e hl_ty_int, hl_int_le y (hl_int_add x y) = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:392 / INT_LE_ADDR   (hash md5:2d339de927ee01bfd19b72dc210c4d52)
Theorem hlt_INT_LE_ADDR : forall x y :e hl_ty_int, hl_int_le x (hl_int_add x y) = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1.
Admitted.

// HOL Light: int.ml:393 / INT_LE_ANTISYM   (hash md5:cda28cfeafa07b2d257482adc67eba81)
Theorem hlt_INT_LE_ANTISYM : forall x y :e hl_ty_int, hl_int_le x y = 1 /\ hl_int_le y x = 1 <-> x = y.
Admitted.

// HOL Light: int.ml:394 / INT_LE_DOUBLE   (hash md5:ba866f84322dbdd2368ebc1515896182)
Theorem hlt_INT_LE_DOUBLE : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_add x x) = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:395 / INT_LE_LADD   (hash md5:581a00da2466566ca6dac4df35aa71f8)
Theorem hlt_INT_LE_LADD : forall x y z :e hl_ty_int, hl_int_le (hl_int_add x y) (hl_int_add x z) = 1 <-> hl_int_le y z = 1.
Admitted.

// HOL Light: int.ml:396 / INT_LE_LADD_IMP   (hash md5:16e2db64e8e434c61a03d64db67e1bf9)
Theorem hlt_INT_LE_LADD_IMP : forall x y z :e hl_ty_int, hl_int_le y z = 1 -> hl_int_le (hl_int_add x y) (hl_int_add x z) = 1.
Admitted.

// HOL Light: int.ml:397 / INT_LE_LCANCEL_IMP   (hash md5:28e4d5c2dd6fa2e50e4a91379cee2f45)
Theorem hlt_INT_LE_LCANCEL_IMP : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le (hl_int_mul x y) (hl_int_mul x z) = 1 -> hl_int_le y z = 1.
Admitted.

// HOL Light: int.ml:398 / INT_LE_LMUL   (hash md5:4d7248804a7012e608333740d376e44d)
Theorem hlt_INT_LE_LMUL : forall x y z :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le y z = 1 -> hl_int_le (hl_int_mul x y) (hl_int_mul x z) = 1.
Admitted.

// HOL Light: int.ml:399 / INT_LE_LMUL_EQ   (hash md5:303d7e5b4c27065c7ca5e1ab7a8a0382)
Theorem hlt_INT_LE_LMUL_EQ : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) z = 1 -> (hl_int_le (hl_int_mul z x) (hl_int_mul z y) = 1 <-> hl_int_le x y = 1).
Admitted.

// HOL Light: int.ml:400 / INT_LE_LNEG   (hash md5:eedcc7ddef7d5ca80902a5e792f26db2)
Theorem hlt_INT_LE_LNEG : forall x y :e hl_ty_int, hl_int_le (hl_int_neg x) y = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_add x y) = 1.
Admitted.

// HOL Light: int.ml:401 / INT_LE_LT   (hash md5:546bd090f660678de4e849e4f1f31d22)
Theorem hlt_INT_LE_LT : forall x y :e hl_ty_int, hl_int_le x y = 1 <-> hl_int_lt x y = 1 \/ x = y.
Admitted.

// HOL Light: int.ml:402 / INT_LE_MAX   (hash md5:257daee4839fee1e29c4f08888077452)
Theorem hlt_INT_LE_MAX : forall x y z :e hl_ty_int, hl_int_le z (hl_int_max x y) = 1 <-> hl_int_le z x = 1 \/ hl_int_le z y = 1.
Admitted.

// HOL Light: int.ml:403 / INT_LE_MIN   (hash md5:2fe8b68d5001ddec23c1890672f0d7c1)
Theorem hlt_INT_LE_MIN : forall x y z :e hl_ty_int, hl_int_le z (hl_int_min x y) = 1 <-> hl_int_le z x = 1 /\ hl_int_le z y = 1.
Admitted.

// HOL Light: int.ml:404 / INT_LE_MUL   (hash md5:948b6363ec7fc4f81758edde88a0ab53)
Theorem hlt_INT_LE_MUL : forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x y) = 1.
Admitted.

// HOL Light: int.ml:405 / INT_LE_MUL2   (hash md5:196a2fc8eca15dfe504f98d467c833dc)
Theorem hlt_INT_LE_MUL2 : forall w x y z :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) w = 1 /\ (hl_int_le w x = 1 /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 /\ hl_int_le y z = 1)) -> hl_int_le (hl_int_mul w y) (hl_int_mul x z) = 1.
Admitted.

// HOL Light: int.ml:406 / INT_LE_MUL_EQ   (hash md5:7046bf368a565a40ab86e782fc8e8983)
Theorem hlt_INT_LE_MUL_EQ : (forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x y) = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1)) /\ forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x y) = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1).
Admitted.

// HOL Light: int.ml:407 / INT_LE_NEG2   (hash md5:008f253c372b904bf563858407ef9271)
Theorem hlt_INT_LE_NEG2 : forall x y :e hl_ty_int, hl_int_le (hl_int_neg x) (hl_int_neg y) = 1 <-> hl_int_le y x = 1.
Admitted.

// HOL Light: int.ml:408 / INT_LE_NEGL   (hash md5:f8fc348f437279a75aa2ff4cd698e44a)
Theorem hlt_INT_LE_NEGL : forall x :e hl_ty_int, hl_int_le (hl_int_neg x) x = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:409 / INT_LE_NEGR   (hash md5:a6b3fa9c9cf40caa1c7ac9e723eb22f2)
Theorem hlt_INT_LE_NEGR : forall x :e hl_ty_int, hl_int_le x (hl_int_neg x) = 1 <-> hl_int_le x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: int.ml:410 / INT_LE_NEGTOTAL   (hash md5:40b09d57d8b6020abd42db7dace25a48)
Theorem hlt_INT_LE_NEGTOTAL : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 \/ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_neg x) = 1.
Admitted.

// HOL Light: int.ml:411 / INT_LE_POW2   (hash md5:0c011cfcb4a0c18631bca00d73569f0d)
Theorem hlt_INT_LE_POW2 : forall n :e omega, hl_int_le (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_pow (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n) = 1.
Admitted.

// HOL Light: int.ml:412 / INT_LE_POW_2   (hash md5:d448fe7e7dab3d37e62538e09c7cc6a5)
Theorem hlt_INT_LE_POW_2 : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: int.ml:413 / INT_LE_RADD   (hash md5:8d7dd1e913d538e7a21dc4867c7bbd2d)
Theorem hlt_INT_LE_RADD : forall x y z :e hl_ty_int, hl_int_le (hl_int_add x z) (hl_int_add y z) = 1 <-> hl_int_le x y = 1.
Admitted.

// HOL Light: int.ml:414 / INT_LE_RCANCEL_IMP   (hash md5:1a1d0f07cb5f7aeebb502b5d66f9d55d)
Theorem hlt_INT_LE_RCANCEL_IMP : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) z = 1 /\ hl_int_le (hl_int_mul x z) (hl_int_mul y z) = 1 -> hl_int_le x y = 1.
Admitted.

// HOL Light: int.ml:415 / INT_LE_REFL   (hash md5:e851b7726a596e1a6f90779efc99df7f)
Theorem hlt_INT_LE_REFL : forall x :e hl_ty_int, hl_int_le x x = 1.
Admitted.

// HOL Light: int.ml:416 / INT_LE_RMUL   (hash md5:eb445a42902dfa187b9742ecf668d309)
Theorem hlt_INT_LE_RMUL : forall x y z :e hl_ty_int, hl_int_le x y = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) z = 1 -> hl_int_le (hl_int_mul x z) (hl_int_mul y z) = 1.
Admitted.

// HOL Light: int.ml:417 / INT_LE_RMUL_EQ   (hash md5:e06bed39cd2bbad82e649ba33ca83f13)
Theorem hlt_INT_LE_RMUL_EQ : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) z = 1 -> (hl_int_le (hl_int_mul x z) (hl_int_mul y z) = 1 <-> hl_int_le x y = 1).
Admitted.

// HOL Light: int.ml:418 / INT_LE_RNEG   (hash md5:116d5a6ae7b22644e9c6ce61cd1cc7a2)
Theorem hlt_INT_LE_RNEG : forall x y :e hl_ty_int, hl_int_le x (hl_int_neg y) = 1 <-> hl_int_le (hl_int_add x y) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: int.ml:419 / INT_LE_SQUARE   (hash md5:5bce146692fd4a0999086b34b07fbc99)
Theorem hlt_INT_LE_SQUARE : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x x) = 1.
Admitted.

// HOL Light: int.ml:420 / INT_LE_SQUARE_ABS   (hash md5:9fb859f5c286cc8bd9a2e1f764f61570)
Theorem hlt_INT_LE_SQUARE_ABS : forall x y :e hl_ty_int, hl_int_le (hl_int_abs x) (hl_int_abs y) = 1 <-> hl_int_le (hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: int.ml:421 / INT_LE_SUB_LADD   (hash md5:65b87267574c573b6005f95f48b01e62)
Theorem hlt_INT_LE_SUB_LADD : forall x y z :e hl_ty_int, hl_int_le x (hl_int_sub y z) = 1 <-> hl_int_le (hl_int_add x z) y = 1.
Admitted.

// HOL Light: int.ml:422 / INT_LE_SUB_RADD   (hash md5:62ca89b59fb24b19394adbff71241709)
Theorem hlt_INT_LE_SUB_RADD : forall x y z :e hl_ty_int, hl_int_le (hl_int_sub x y) z = 1 <-> hl_int_le x (hl_int_add z y) = 1.
Admitted.

// HOL Light: int.ml:423 / INT_LE_TOTAL   (hash md5:3f5c47d9e9f123bddee9d01069749df8)
Theorem hlt_INT_LE_TOTAL : forall x y :e hl_ty_int, hl_int_le x y = 1 \/ hl_int_le y x = 1.
Admitted.

// HOL Light: int.ml:424 / INT_LE_TRANS   (hash md5:ab3a6aadc863a3552c806ad6a6f29b78)
Theorem hlt_INT_LE_TRANS : forall x y z :e hl_ty_int, hl_int_le x y = 1 /\ hl_int_le y z = 1 -> hl_int_le x z = 1.
Admitted.

// HOL Light: int.ml:425 / INT_LNEG_UNIQ   (hash md5:1b76dd1a35c357e6b5b4705d34cfe824)
Theorem hlt_INT_LNEG_UNIQ : forall x y :e hl_ty_int, hl_int_add x y = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = hl_int_neg y.
Admitted.

// HOL Light: int.ml:426 / INT_LTE_ADD   (hash md5:979186005e1c50b28164e6412cf015a1)
Theorem hlt_INT_LTE_ADD : forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_add x y) = 1.
Admitted.

// HOL Light: int.ml:427 / INT_LTE_ADD2   (hash md5:6fa659ac6e727674377ee7314c1d35a3)
Theorem hlt_INT_LTE_ADD2 : forall w x y z :e hl_ty_int, hl_int_lt w x = 1 /\ hl_int_le y z = 1 -> hl_int_lt (hl_int_add w y) (hl_int_add x z) = 1.
Admitted.

// HOL Light: int.ml:428 / INT_LTE_ANTISYM   (hash md5:78693b5a8c034c9597c6f56e25ad15d6)
Theorem hlt_INT_LTE_ANTISYM : forall x y :e hl_ty_int, ~ (hl_int_lt x y = 1 /\ hl_int_le y x = 1).
Admitted.

// HOL Light: int.ml:429 / INT_LTE_TOTAL   (hash md5:0bbac54e89c2a63e120beffe990c0393)
Theorem hlt_INT_LTE_TOTAL : forall x y :e hl_ty_int, hl_int_lt x y = 1 \/ hl_int_le y x = 1.
Admitted.

// HOL Light: int.ml:430 / INT_LTE_TRANS   (hash md5:bdd130464319fb62e396114fae0a1f8c)
Theorem hlt_INT_LTE_TRANS : forall x y z :e hl_ty_int, hl_int_lt x y = 1 /\ hl_int_le y z = 1 -> hl_int_lt x z = 1.
Admitted.

// HOL Light: int.ml:431 / INT_LT_01   (hash md5:497d72e7729d5c4ea49d37b04827d1ac)
Theorem hlt_INT_LT_01 : hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: int.ml:432 / INT_LT_ADD   (hash md5:8b6456d2cf8006f621132d9047ca2a89)
Theorem hlt_INT_LT_ADD : forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_add x y) = 1.
Admitted.

// HOL Light: int.ml:433 / INT_LT_ADD1   (hash md5:829caf08a8163dcd4192e1df404771e1)
Theorem hlt_INT_LT_ADD1 : forall x y :e hl_ty_int, hl_int_le x y = 1 -> hl_int_lt x (hl_int_add y (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: int.ml:434 / INT_LT_ADD2   (hash md5:ec029aebc15d387a8aec814c8945e2d7)
Theorem hlt_INT_LT_ADD2 : forall w x y z :e hl_ty_int, hl_int_lt w x = 1 /\ hl_int_lt y z = 1 -> hl_int_lt (hl_int_add w y) (hl_int_add x z) = 1.
Admitted.

// HOL Light: int.ml:435 / INT_LT_ADDL   (hash md5:8f6832551f56c75d98f6f1469b3da365)
Theorem hlt_INT_LT_ADDL : forall x y :e hl_ty_int, hl_int_lt y (hl_int_add x y) = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:436 / INT_LT_ADDNEG   (hash md5:0354b95647e6558356d80fa460577fc2)
Theorem hlt_INT_LT_ADDNEG : forall x y z :e hl_ty_int, hl_int_lt y (hl_int_add x (hl_int_neg z)) = 1 <-> hl_int_lt (hl_int_add y z) x = 1.
Admitted.

// HOL Light: int.ml:437 / INT_LT_ADDNEG2   (hash md5:8a5f01247d25efcd5d13b2db182361e9)
Theorem hlt_INT_LT_ADDNEG2 : forall x y z :e hl_ty_int, hl_int_lt (hl_int_add x (hl_int_neg y)) z = 1 <-> hl_int_lt x (hl_int_add z y) = 1.
Admitted.

// HOL Light: int.ml:438 / INT_LT_ADDR   (hash md5:0bb829e731affe83c3eb154c3afb0b31)
Theorem hlt_INT_LT_ADDR : forall x y :e hl_ty_int, hl_int_lt x (hl_int_add x y) = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1.
Admitted.

// HOL Light: int.ml:439 / INT_LT_ADD_SUB   (hash md5:17a87d0203d15978865fbde211fb24d9)
Theorem hlt_INT_LT_ADD_SUB : forall x y z :e hl_ty_int, hl_int_lt (hl_int_add x y) z = 1 <-> hl_int_lt x (hl_int_sub z y) = 1.
Admitted.

// HOL Light: int.ml:440 / INT_LT_ANTISYM   (hash md5:1e3c3a4dbc34a976805daa7a31f28f21)
Theorem hlt_INT_LT_ANTISYM : forall x y :e hl_ty_int, ~ (hl_int_lt x y = 1 /\ hl_int_lt y x = 1).
Admitted.

// HOL Light: int.ml:441 / INT_LT_GT   (hash md5:1624bea499401e6e6f02355efd5374d9)
Theorem hlt_INT_LT_GT : forall x y :e hl_ty_int, hl_int_lt x y = 1 -> ~ hl_int_lt y x = 1.
Admitted.

// HOL Light: int.ml:442 / INT_LT_IMP_LE   (hash md5:41037c46f2332bfd0fcd7764bbd856f6)
Theorem hlt_INT_LT_IMP_LE : forall x y :e hl_ty_int, hl_int_lt x y = 1 -> hl_int_le x y = 1.
Admitted.

// HOL Light: int.ml:443 / INT_LT_IMP_NE   (hash md5:4425abf78b4e7be9e2eef5ee8de3fc99)
Theorem hlt_INT_LT_IMP_NE : forall x y :e hl_ty_int, hl_int_lt x y = 1 -> ~ x = y.
Admitted.

// HOL Light: int.ml:444 / INT_LT_LADD   (hash md5:6cfdd6680e286181266c97986424c700)
Theorem hlt_INT_LT_LADD : forall x y z :e hl_ty_int, hl_int_lt (hl_int_add x y) (hl_int_add x z) = 1 <-> hl_int_lt y z = 1.
Admitted.

// HOL Light: int.ml:445 / INT_LT_LADD_IMP   (hash md5:85da88fae07d067416e0375cdb2c06a6)
Theorem hlt_INT_LT_LADD_IMP : forall x y z :e hl_ty_int, hl_int_lt y z = 1 -> hl_int_lt (hl_int_add x y) (hl_int_add x z) = 1.
Admitted.

// HOL Light: int.ml:446 / INT_LT_LCANCEL_IMP   (hash md5:36ee315b4532f35b9e9f2af0fafd214c)
Theorem hlt_INT_LT_LCANCEL_IMP : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt (hl_int_mul x y) (hl_int_mul x z) = 1 -> hl_int_lt y z = 1.
Admitted.

// HOL Light: int.ml:447 / INT_LT_LE   (hash md5:af1a8a735823de3d13c96b7fbbd92327)
Theorem hlt_INT_LT_LE : forall x y :e hl_ty_int, hl_int_lt x y = 1 <-> hl_int_le x y = 1 /\ ~ x = y.
Admitted.

// HOL Light: int.ml:448 / INT_LT_LMUL   (hash md5:0b8dbe56c520eb65d74f060df28198ab)
Theorem hlt_INT_LT_LMUL : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt y z = 1 -> hl_int_lt (hl_int_mul x y) (hl_int_mul x z) = 1.
Admitted.

// HOL Light: int.ml:449 / INT_LT_LMUL_EQ   (hash md5:8225910f03ed2ddf5eaa7021f08f8020)
Theorem hlt_INT_LT_LMUL_EQ : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) z = 1 -> (hl_int_lt (hl_int_mul z x) (hl_int_mul z y) = 1 <-> hl_int_lt x y = 1).
Admitted.

// HOL Light: int.ml:450 / INT_LT_LNEG   (hash md5:aaf8874bd4174f906d28656471bfa405)
Theorem hlt_INT_LT_LNEG : forall x y :e hl_ty_int, hl_int_lt (hl_int_neg x) y = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_add x y) = 1.
Admitted.

// HOL Light: int.ml:451 / INT_LT_MAX   (hash md5:849e097b0289171ce609e2398533f263)
Theorem hlt_INT_LT_MAX : forall x y z :e hl_ty_int, hl_int_lt z (hl_int_max x y) = 1 <-> hl_int_lt z x = 1 \/ hl_int_lt z y = 1.
Admitted.

// HOL Light: int.ml:452 / INT_LT_MIN   (hash md5:c171af12a54ec1c5a10d42ded42a8fe6)
Theorem hlt_INT_LT_MIN : forall x y z :e hl_ty_int, hl_int_lt z (hl_int_min x y) = 1 <-> hl_int_lt z x = 1 /\ hl_int_lt z y = 1.
Admitted.

// HOL Light: int.ml:453 / INT_LT_MUL   (hash md5:60ee6ad5be35518adbc2aae24fb40e4a)
Theorem hlt_INT_LT_MUL : forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x y) = 1.
Admitted.

// HOL Light: int.ml:454 / INT_LT_MUL2   (hash md5:c977de959f4eab2b4e6e5197d6ee5763)
Theorem hlt_INT_LT_MUL2 : forall w x y z :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) w = 1 /\ (hl_int_lt w x = 1 /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 /\ hl_int_lt y z = 1)) -> hl_int_lt (hl_int_mul w y) (hl_int_mul x z) = 1.
Admitted.

// HOL Light: int.ml:455 / INT_LT_MUL_EQ   (hash md5:c6a129579c94c516df6274c4da6ffe0d)
Theorem hlt_INT_LT_MUL_EQ : (forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> (hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x y) = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1)) /\ forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> (hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x y) = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1).
Admitted.

// HOL Light: int.ml:456 / INT_LT_NEG2   (hash md5:6e55c15e5b402b831f44309811f48d1d)
Theorem hlt_INT_LT_NEG2 : forall x y :e hl_ty_int, hl_int_lt (hl_int_neg x) (hl_int_neg y) = 1 <-> hl_int_lt y x = 1.
Admitted.

// HOL Light: int.ml:457 / INT_LT_NEGTOTAL   (hash md5:cb16328f1aba6d69ab1db4a21faf4790)
Theorem hlt_INT_LT_NEGTOTAL : forall x :e hl_ty_int, x = hl_int_of_num (hl_NUMERAL hl_zero) \/ (hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 \/ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_neg x) = 1).
Admitted.

// HOL Light: int.ml:458 / INT_LT_POW2   (hash md5:42c4b20e5546df5dd98ada641346b44e)
Theorem hlt_INT_LT_POW2 : forall n :e omega, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_pow (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n) = 1.
Admitted.

// HOL Light: int.ml:459 / INT_LT_POW_2   (hash md5:a11dc28f62fe29ef8f5eb9588d29500f)
Theorem hlt_INT_LT_POW_2 : forall x :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 <-> ~ x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:460 / INT_LT_RADD   (hash md5:cfda903905210a0e18fd425b8a526024)
Theorem hlt_INT_LT_RADD : forall x y z :e hl_ty_int, hl_int_lt (hl_int_add x z) (hl_int_add y z) = 1 <-> hl_int_lt x y = 1.
Admitted.

// HOL Light: int.ml:461 / INT_LT_RCANCEL_IMP   (hash md5:4e684f547e27308c5e253f91f8d710da)
Theorem hlt_INT_LT_RCANCEL_IMP : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) z = 1 /\ hl_int_lt (hl_int_mul x z) (hl_int_mul y z) = 1 -> hl_int_lt x y = 1.
Admitted.

// HOL Light: int.ml:462 / INT_LT_REFL   (hash md5:d903866d2c80a41d56ac686e49a4c122)
Theorem hlt_INT_LT_REFL : forall x :e hl_ty_int, ~ hl_int_lt x x = 1.
Admitted.

// HOL Light: int.ml:463 / INT_LT_RMUL   (hash md5:e68a88bfda44fa2a76b9415ec8c68581)
Theorem hlt_INT_LT_RMUL : forall x y z :e hl_ty_int, hl_int_lt x y = 1 /\ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) z = 1 -> hl_int_lt (hl_int_mul x z) (hl_int_mul y z) = 1.
Admitted.

// HOL Light: int.ml:464 / INT_LT_RMUL_EQ   (hash md5:db10b4213c1adb24e60b5e39c1c2a7b8)
Theorem hlt_INT_LT_RMUL_EQ : forall x y z :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) z = 1 -> (hl_int_lt (hl_int_mul x z) (hl_int_mul y z) = 1 <-> hl_int_lt x y = 1).
Admitted.

// HOL Light: int.ml:465 / INT_LT_RNEG   (hash md5:3b8c69aa4602ad8428c158f8deeeecec)
Theorem hlt_INT_LT_RNEG : forall x y :e hl_ty_int, hl_int_lt x (hl_int_neg y) = 1 <-> hl_int_lt (hl_int_add x y) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: int.ml:466 / INT_LT_SQUARE   (hash md5:7e7a2be208cdd2133367de23720d5d7b)
Theorem hlt_INT_LT_SQUARE : forall x :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x x) = 1 <-> ~ x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:467 / INT_LT_SQUARE_ABS   (hash md5:0126ebffab22b2567e7f3c7d83031f6b)
Theorem hlt_INT_LT_SQUARE_ABS : forall x y :e hl_ty_int, hl_int_lt (hl_int_abs x) (hl_int_abs y) = 1 <-> hl_int_lt (hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: int.ml:468 / INT_LT_SUB_LADD   (hash md5:7dfd46a7a2451a9564c950f1dc266d45)
Theorem hlt_INT_LT_SUB_LADD : forall x y z :e hl_ty_int, hl_int_lt x (hl_int_sub y z) = 1 <-> hl_int_lt (hl_int_add x z) y = 1.
Admitted.

// HOL Light: int.ml:469 / INT_LT_SUB_RADD   (hash md5:e376eddf451fdfae4516e2191eb8e455)
Theorem hlt_INT_LT_SUB_RADD : forall x y z :e hl_ty_int, hl_int_lt (hl_int_sub x y) z = 1 <-> hl_int_lt x (hl_int_add z y) = 1.
Admitted.

// HOL Light: int.ml:470 / INT_LT_TOTAL   (hash md5:2592f9f6afccf104f6c39dd0da684bd6)
Theorem hlt_INT_LT_TOTAL : forall x y :e hl_ty_int, x = y \/ (hl_int_lt x y = 1 \/ hl_int_lt y x = 1).
Admitted.

// HOL Light: int.ml:471 / INT_LT_TRANS   (hash md5:d90c4ad73fc8ecd6762412abdfc525ef)
Theorem hlt_INT_LT_TRANS : forall x y z :e hl_ty_int, hl_int_lt x y = 1 /\ hl_int_lt y z = 1 -> hl_int_lt x z = 1.
Admitted.

// HOL Light: int.ml:472 / INT_MAX_ACI   (hash md5:ac09e9ce2b26920e2b51ec9d19cd0956)
Theorem hlt_INT_MAX_ACI : forall x y z :e hl_ty_int, hl_int_max x y = hl_int_max y x /\ (hl_int_max (hl_int_max x y) z = hl_int_max x (hl_int_max y z) /\ (hl_int_max x (hl_int_max y z) = hl_int_max y (hl_int_max x z) /\ (hl_int_max x x = x /\ hl_int_max x (hl_int_max x y) = hl_int_max x y))).
Admitted.

// HOL Light: int.ml:473 / INT_MAX_ASSOC   (hash md5:b2dc7dd41bc70efd5223324f4f763800)
Theorem hlt_INT_MAX_ASSOC : forall x y z :e hl_ty_int, hl_int_max x (hl_int_max y z) = hl_int_max (hl_int_max x y) z.
Admitted.

// HOL Light: int.ml:474 / INT_MAX_LE   (hash md5:10049c67629f5b8b2199d80eac09fe79)
Theorem hlt_INT_MAX_LE : forall x y z :e hl_ty_int, hl_int_le (hl_int_max x y) z = 1 <-> hl_int_le x z = 1 /\ hl_int_le y z = 1.
Admitted.

// HOL Light: int.ml:475 / INT_MAX_LT   (hash md5:2d78a497f6b51fb7028bde212ef20c6b)
Theorem hlt_INT_MAX_LT : forall x y z :e hl_ty_int, hl_int_lt (hl_int_max x y) z = 1 <-> hl_int_lt x z = 1 /\ hl_int_lt y z = 1.
Admitted.

// HOL Light: int.ml:476 / INT_MAX_MAX   (hash md5:d813816ddbacfddde8491e6d208e297e)
Theorem hlt_INT_MAX_MAX : forall x y :e hl_ty_int, hl_int_le x (hl_int_max x y) = 1 /\ hl_int_le y (hl_int_max x y) = 1.
Admitted.

// HOL Light: int.ml:477 / INT_MAX_MIN   (hash md5:f85602534a39bf5bf6136ea0bb9b13ba)
Theorem hlt_INT_MAX_MIN : forall x y :e hl_ty_int, hl_int_max x y = hl_int_neg (hl_int_min (hl_int_neg x) (hl_int_neg y)).
Admitted.

// HOL Light: int.ml:478 / INT_MAX_SYM   (hash md5:9f8bc06ae8159fe0f8d398dbe2f14bb8)
Theorem hlt_INT_MAX_SYM : forall x y :e hl_ty_int, hl_int_max x y = hl_int_max y x.
Admitted.

// HOL Light: int.ml:479 / INT_MIN_ACI   (hash md5:06cadad3227493c526ebb945e8286686)
Theorem hlt_INT_MIN_ACI : forall x y z :e hl_ty_int, hl_int_min x y = hl_int_min y x /\ (hl_int_min (hl_int_min x y) z = hl_int_min x (hl_int_min y z) /\ (hl_int_min x (hl_int_min y z) = hl_int_min y (hl_int_min x z) /\ (hl_int_min x x = x /\ hl_int_min x (hl_int_min x y) = hl_int_min x y))).
Admitted.

// HOL Light: int.ml:480 / INT_MIN_ASSOC   (hash md5:37cec33daf42751d88439d0f7e6a79e3)
Theorem hlt_INT_MIN_ASSOC : forall x y z :e hl_ty_int, hl_int_min x (hl_int_min y z) = hl_int_min (hl_int_min x y) z.
Admitted.

// HOL Light: int.ml:481 / INT_MIN_LE   (hash md5:53e4defd9f0ce4b6a90b8d8423c0dada)
Theorem hlt_INT_MIN_LE : forall x y z :e hl_ty_int, hl_int_le (hl_int_min x y) z = 1 <-> hl_int_le x z = 1 \/ hl_int_le y z = 1.
Admitted.

// HOL Light: int.ml:482 / INT_MIN_LT   (hash md5:c6e3640c1641971a6fe06492a02113c4)
Theorem hlt_INT_MIN_LT : forall x y z :e hl_ty_int, hl_int_lt (hl_int_min x y) z = 1 <-> hl_int_lt x z = 1 \/ hl_int_lt y z = 1.
Admitted.

// HOL Light: int.ml:483 / INT_MIN_MAX   (hash md5:f85a0022641765a6e2ad9a3ff6c1a0e6)
Theorem hlt_INT_MIN_MAX : forall x y :e hl_ty_int, hl_int_min x y = hl_int_neg (hl_int_max (hl_int_neg x) (hl_int_neg y)).
Admitted.

// HOL Light: int.ml:484 / INT_MIN_MIN   (hash md5:c1d8291218bab9a7fae71ae1ddbbdfe2)
Theorem hlt_INT_MIN_MIN : forall x y :e hl_ty_int, hl_int_le (hl_int_min x y) x = 1 /\ hl_int_le (hl_int_min x y) y = 1.
Admitted.

// HOL Light: int.ml:485 / INT_MIN_SYM   (hash md5:54ce3e098127a349e23446317d6db74f)
Theorem hlt_INT_MIN_SYM : forall x y :e hl_ty_int, hl_int_min x y = hl_int_min y x.
Admitted.

// HOL Light: int.ml:486 / INT_MUL_2   (hash md5:0abf2c9db31a4d1efcf925bba46a3c41)
Theorem hlt_INT_MUL_2 : forall x :e hl_ty_int, hl_int_mul (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) x = hl_int_add x x.
Admitted.

// HOL Light: int.ml:487 / INT_MUL_AC   (hash md5:fbcb7a0a8a024d966b84c7c2a6e391de)
Theorem hlt_INT_MUL_AC : forall m n p :e hl_ty_int, hl_int_mul m n = hl_int_mul n m /\ (hl_int_mul (hl_int_mul m n) p = hl_int_mul m (hl_int_mul n p) /\ hl_int_mul m (hl_int_mul n p) = hl_int_mul n (hl_int_mul m p)).
Admitted.

// HOL Light: int.ml:488 / INT_MUL_ASSOC   (hash md5:2a0ee5e5e85951d6280c1d7c46aa5417)
Theorem hlt_INT_MUL_ASSOC : forall x y z :e hl_ty_int, hl_int_mul x (hl_int_mul y z) = hl_int_mul (hl_int_mul x y) z.
Admitted.

// HOL Light: int.ml:489 / INT_MUL_LID   (hash md5:a5613346985e02255805f5dc0bc46923)
Theorem hlt_INT_MUL_LID : forall x :e hl_ty_int, hl_int_mul (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x.
Admitted.

// HOL Light: int.ml:490 / INT_MUL_LNEG   (hash md5:e9921a96a58d022df625d5445fb85b09)
Theorem hlt_INT_MUL_LNEG : forall x y :e hl_ty_int, hl_int_mul (hl_int_neg x) y = hl_int_neg (hl_int_mul x y).
Admitted.

// HOL Light: int.ml:491 / INT_MUL_LZERO   (hash md5:5ef2f05bc1c16083ae092289a2eadd41)
Theorem hlt_INT_MUL_LZERO : forall x :e hl_ty_int, hl_int_mul (hl_int_of_num (hl_NUMERAL hl_zero)) x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:492 / INT_MUL_POS_LE   (hash md5:767ebe5c480711a7b21676ff62556a13)
Theorem hlt_INT_MUL_POS_LE : forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x y) = 1 <-> x = hl_int_of_num (hl_NUMERAL hl_zero) \/ (y = hl_int_of_num (hl_NUMERAL hl_zero) \/ (hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 \/ hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ hl_int_lt y (hl_int_of_num (hl_NUMERAL hl_zero)) = 1)).
Admitted.

// HOL Light: int.ml:493 / INT_MUL_POS_LT   (hash md5:95f5ea6c366785f0d7d148e5e330d2de)
Theorem hlt_INT_MUL_POS_LT : forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mul x y) = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 \/ hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ hl_int_lt y (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: int.ml:494 / INT_MUL_RID   (hash md5:12966b68c470ba0a7a6d28f35ac87f56)
Theorem hlt_INT_MUL_RID : forall x :e hl_ty_int, hl_int_mul x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = x.
Admitted.

// HOL Light: int.ml:495 / INT_MUL_RNEG   (hash md5:bf804bac2ddaec17a006ecaf1c832df2)
Theorem hlt_INT_MUL_RNEG : forall x y :e hl_ty_int, hl_int_mul x (hl_int_neg y) = hl_int_neg (hl_int_mul x y).
Admitted.

// HOL Light: int.ml:496 / INT_MUL_RZERO   (hash md5:2e115b704c2668dda0acfc814aac7bec)
Theorem hlt_INT_MUL_RZERO : forall x :e hl_ty_int, hl_int_mul x (hl_int_of_num (hl_NUMERAL hl_zero)) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:497 / INT_MUL_SYM   (hash md5:b3512d0c545db2352d0b081b984a47d4)
Theorem hlt_INT_MUL_SYM : forall x y :e hl_ty_int, hl_int_mul x y = hl_int_mul y x.
Admitted.

// HOL Light: int.ml:498 / INT_NEG_0   (hash md5:f1f5d00aebedc3af1018837c82fce628)
Theorem hlt_INT_NEG_0 : hl_int_neg (hl_int_of_num (hl_NUMERAL hl_zero)) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:499 / INT_NEG_ADD   (hash md5:ef8377f1d35cc5e057e02d00cc42e6c2)
Theorem hlt_INT_NEG_ADD : forall x y :e hl_ty_int, hl_int_neg (hl_int_add x y) = hl_int_add (hl_int_neg x) (hl_int_neg y).
Admitted.

// HOL Light: int.ml:500 / INT_NEG_EQ   (hash md5:98893c9dd249dafb631068a381b62e0a)
Theorem hlt_INT_NEG_EQ : forall x y :e hl_ty_int, hl_int_neg x = y <-> x = hl_int_neg y.
Admitted.

// HOL Light: int.ml:501 / INT_NEG_EQ_0   (hash md5:82508799741e571e53b3895d444b3125)
Theorem hlt_INT_NEG_EQ_0 : forall x :e hl_ty_int, hl_int_neg x = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:502 / INT_NEG_GE0   (hash md5:72b0bc10e88771f8915caa335678c4b9)
Theorem hlt_INT_NEG_GE0 : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_neg x) = 1 <-> hl_int_le x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: int.ml:503 / INT_NEG_GT0   (hash md5:72242ce7c9da97f8523a1de6d853cf70)
Theorem hlt_INT_NEG_GT0 : forall x :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_neg x) = 1 <-> hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: int.ml:504 / INT_NEG_LE0   (hash md5:3d87f8965e98e01bbe12b4a0a22c152d)
Theorem hlt_INT_NEG_LE0 : forall x :e hl_ty_int, hl_int_le (hl_int_neg x) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:505 / INT_NEG_LMUL   (hash md5:dc0d04dd547a1f337cfae9e6213ebc82)
Theorem hlt_INT_NEG_LMUL : forall x y :e hl_ty_int, hl_int_neg (hl_int_mul x y) = hl_int_mul (hl_int_neg x) y.
Admitted.

// HOL Light: int.ml:506 / INT_NEG_LT0   (hash md5:c08eda8cb099ccdcddbffbd8db4b3d4c)
Theorem hlt_INT_NEG_LT0 : forall x :e hl_ty_int, hl_int_lt (hl_int_neg x) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:507 / INT_NEG_MINUS1   (hash md5:98b9836dfb99d125e57acc5a045a3b2e)
Theorem hlt_INT_NEG_MINUS1 : forall x :e hl_ty_int, hl_int_neg x = hl_int_mul (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) x.
Admitted.

// HOL Light: int.ml:508 / INT_NEG_MUL2   (hash md5:1f7861597f6573ac62471b244c235be5)
Theorem hlt_INT_NEG_MUL2 : forall x y :e hl_ty_int, hl_int_mul (hl_int_neg x) (hl_int_neg y) = hl_int_mul x y.
Admitted.

// HOL Light: int.ml:509 / INT_NEG_NEG   (hash md5:77a255f791d5fe45f2a620fba026219b)
Theorem hlt_INT_NEG_NEG : forall x :e hl_ty_int, hl_int_neg (hl_int_neg x) = x.
Admitted.

// HOL Light: int.ml:510 / INT_NEG_RMUL   (hash md5:4313a9e9ffb10f327d98bbd14a24f883)
Theorem hlt_INT_NEG_RMUL : forall x y :e hl_ty_int, hl_int_neg (hl_int_mul x y) = hl_int_mul x (hl_int_neg y).
Admitted.

// HOL Light: int.ml:511 / INT_NEG_SUB   (hash md5:d8bb57e11684086b54b34e93d77d70c0)
Theorem hlt_INT_NEG_SUB : forall x y :e hl_ty_int, hl_int_neg (hl_int_sub x y) = hl_int_sub y x.
Admitted.

// HOL Light: int.ml:512 / INT_NOT_EQ   (hash md5:608385a7a4695f5da717e1c7c8d83991)
Theorem hlt_INT_NOT_EQ : forall x y :e hl_ty_int, ~ x = y <-> hl_int_lt x y = 1 \/ hl_int_lt y x = 1.
Admitted.

// HOL Light: int.ml:513 / INT_NOT_LE   (hash md5:f073dd1c5cf319278c3dd491f8852043)
Theorem hlt_INT_NOT_LE : forall x y :e hl_ty_int, ~ hl_int_le x y = 1 <-> hl_int_lt y x = 1.
Admitted.

// HOL Light: int.ml:514 / INT_NOT_LT   (hash md5:91f700d907ea95f5b0e72347d180b648)
Theorem hlt_INT_NOT_LT : forall x y :e hl_ty_int, ~ hl_int_lt x y = 1 <-> hl_int_le y x = 1.
Admitted.

// HOL Light: int.ml:515 / INT_OF_NUM_ADD   (hash md5:51a2e415bbd755081b9c29ecbf28821f)
Theorem hlt_INT_OF_NUM_ADD : forall m n :e omega, hl_int_add (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_add m n).
Admitted.

// HOL Light: int.ml:516 / INT_OF_NUM_CLAUSES   (hash md5:e2166bce1be5ab5d7e88b86f155103bc)
Theorem hlt_INT_OF_NUM_CLAUSES : (forall m n :e omega, hl_int_of_num m = hl_int_of_num n <-> m = n) /\ ((forall m n :e omega, hl_int_ge (hl_int_of_num m) (hl_int_of_num n) = 1 <-> hl_ge m n = 1) /\ ((forall m n :e omega, hl_int_gt (hl_int_of_num m) (hl_int_of_num n) = 1 <-> hl_gt m n = 1) /\ ((forall m n :e omega, hl_int_le (hl_int_of_num m) (hl_int_of_num n) = 1 <-> hl_le m n = 1) /\ ((forall m n :e omega, hl_int_lt (hl_int_of_num m) (hl_int_of_num n) = 1 <-> hl_lt m n = 1) /\ ((forall m n :e omega, hl_int_max (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_MAX m n)) /\ ((forall m n :e omega, hl_int_min (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_MIN m n)) /\ ((forall m n :e omega, hl_int_add (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_add m n)) /\ ((forall m n :e omega, hl_int_mul (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_mul m n)) /\ forall x n :e omega, hl_int_pow (hl_int_of_num x) n = hl_int_of_num (hl_EXP x n))))))))).
Admitted.

// HOL Light: int.ml:517 / INT_OF_NUM_EQ   (hash md5:2578eace0c8cdf688dd12c778a481b3d)
Theorem hlt_INT_OF_NUM_EQ : forall m n :e omega, hl_int_of_num m = hl_int_of_num n <-> m = n.
Admitted.

// HOL Light: int.ml:518 / INT_OF_NUM_GE   (hash md5:ecc684c514b31030595f699a5de6a5ec)
Theorem hlt_INT_OF_NUM_GE : forall m n :e omega, hl_int_ge (hl_int_of_num m) (hl_int_of_num n) = 1 <-> hl_ge m n = 1.
Admitted.

// HOL Light: int.ml:519 / INT_OF_NUM_GT   (hash md5:c31b1004b074ab75f75ac7fc1429b0aa)
Theorem hlt_INT_OF_NUM_GT : forall m n :e omega, hl_int_gt (hl_int_of_num m) (hl_int_of_num n) = 1 <-> hl_gt m n = 1.
Admitted.

// HOL Light: int.ml:520 / INT_OF_NUM_LE   (hash md5:53690ea40fece03b586674a186a39288)
Theorem hlt_INT_OF_NUM_LE : forall m n :e omega, hl_int_le (hl_int_of_num m) (hl_int_of_num n) = 1 <-> hl_le m n = 1.
Admitted.

// HOL Light: int.ml:521 / INT_OF_NUM_LT   (hash md5:11cd1ab0cfebd244f4e56700a4f8d111)
Theorem hlt_INT_OF_NUM_LT : forall m n :e omega, hl_int_lt (hl_int_of_num m) (hl_int_of_num n) = 1 <-> hl_lt m n = 1.
Admitted.

// HOL Light: int.ml:522 / INT_OF_NUM_MAX   (hash md5:389ea67e647b0276d6e88fc56043475a)
Theorem hlt_INT_OF_NUM_MAX : forall m n :e omega, hl_int_max (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_MAX m n).
Admitted.

// HOL Light: int.ml:523 / INT_OF_NUM_MIN   (hash md5:c5f328eea9ddd9225ff9ef5c7d758b17)
Theorem hlt_INT_OF_NUM_MIN : forall m n :e omega, hl_int_min (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_MIN m n).
Admitted.

// HOL Light: int.ml:524 / INT_OF_NUM_MOD   (hash md5:99de5085f6ae3185d8f283e39d9d93b3)
Theorem hlt_INT_OF_NUM_MOD : forall m n :e omega, hl_int_of_num (hl_MOD m n) = hl_int_sub (hl_int_of_num m) (hl_int_mul (hl_int_of_num (hl_DIV m n)) (hl_int_of_num n)).
Admitted.

// HOL Light: int.ml:525 / INT_OF_NUM_MUL   (hash md5:074ef7f7775777b088df541e705b5e23)
Theorem hlt_INT_OF_NUM_MUL : forall m n :e omega, hl_int_mul (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_mul m n).
Admitted.

// HOL Light: int.ml:526 / INT_OF_NUM_POW   (hash md5:6f9e29b75231871a8ee4b931ab67b1cb)
Theorem hlt_INT_OF_NUM_POW : forall x n :e omega, hl_int_pow (hl_int_of_num x) n = hl_int_of_num (hl_EXP x n).
Admitted.

// HOL Light: int.ml:527 / INT_OF_NUM_SUB   (hash md5:2fee42fd10e6e989d0259ae8725e48e8)
Theorem hlt_INT_OF_NUM_SUB : forall m n :e omega, hl_le m n = 1 -> hl_int_sub (hl_int_of_num n) (hl_int_of_num m) = hl_int_of_num (hl_sub n m).
Admitted.

// HOL Light: int.ml:528 / INT_OF_NUM_SUB_CASES   (hash md5:6a21b975a8f6379b04c81de790e2dad1)
Theorem hlt_INT_OF_NUM_SUB_CASES : forall m n :e omega, hl_int_sub (hl_int_of_num m) (hl_int_of_num n) = hl_COND hl_ty_int (hl_le n m) (hl_int_of_num (hl_sub m n)) (hl_int_neg (hl_int_of_num (hl_sub n m))).
Admitted.

// HOL Light: int.ml:529 / INT_OF_NUM_SUC   (hash md5:97ae1d2133bd1e3fcb96eec95c1f37cd)
Theorem hlt_INT_OF_NUM_SUC : forall n :e omega, hl_int_add (hl_int_of_num n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_int_of_num (hl_SUC n).
Admitted.

// HOL Light: int.ml:530 / INT_POS   (hash md5:98964a3ff0f5b863a58d239a4e1da89c)
Theorem hlt_INT_POS : forall n :e omega, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num n) = 1.
Admitted.

// HOL Light: int.ml:531 / INT_POS_EQ_SQUARE   (hash md5:a4fa86348e52a1273f3f397cd8b9229b)
Theorem hlt_INT_POS_EQ_SQUARE : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 <-> exists y :e R, hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_of_int x.
Admitted.

// HOL Light: int.ml:532 / INT_POS_NZ   (hash md5:d97a566d1182ed9c5604e06c0e57b12d)
Theorem hlt_INT_POS_NZ : forall x :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> ~ x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:533 / INT_POW2_ABS   (hash md5:1a692c75c6ed4a0387edf83f422f3178)
Theorem hlt_INT_POW2_ABS : forall x :e hl_ty_int, hl_int_pow (hl_int_abs x) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: int.ml:534 / INT_POW_1   (hash md5:615fd6576509bb861aef16d6f11e9cae)
Theorem hlt_INT_POW_1 : forall x :e hl_ty_int, hl_int_pow x (hl_NUMERAL (hl_BIT1 hl_zero)) = x.
Admitted.

// HOL Light: int.ml:535 / INT_POW_1_LE   (hash md5:b5db7aaf9f0a0e71d1aecd59ed15848f)
Theorem hlt_INT_POW_1_LE : forall n :e omega, forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_int_le (hl_int_pow x n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: int.ml:536 / INT_POW_1_LT   (hash md5:7003a321d92f7c519b7f2b8cc6b6eb71)
Theorem hlt_INT_POW_1_LT : forall n :e omega, forall x :e hl_ty_int, ~ n = hl_NUMERAL hl_zero /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> hl_int_lt (hl_int_pow x n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: int.ml:537 / INT_POW_2   (hash md5:243c7463140a6a53cfbe70f65394ae03)
Theorem hlt_INT_POW_2 : forall x :e hl_ty_int, hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_int_mul x x.
Admitted.

// HOL Light: int.ml:538 / INT_POW_ADD   (hash md5:9fd0e6e0611a65097f4817e3221bc72b)
Theorem hlt_INT_POW_ADD : forall x :e hl_ty_int, forall m n :e omega, hl_int_pow x (hl_add m n) = hl_int_mul (hl_int_pow x m) (hl_int_pow x n).
Admitted.

// HOL Light: int.ml:539 / INT_POW_EQ   (hash md5:d4fa9759781752f748e514ebe2265523)
Theorem hlt_INT_POW_EQ : forall n :e omega, forall x y :e hl_ty_int, ~ n = hl_NUMERAL hl_zero /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 /\ hl_int_pow x n = hl_int_pow y n)) -> x = y.
Admitted.

// HOL Light: int.ml:540 / INT_POW_EQ_0   (hash md5:807a30978311daf24f59f609f65f00d3)
Theorem hlt_INT_POW_EQ_0 : forall x :e hl_ty_int, forall n :e omega, hl_int_pow x n = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = hl_int_of_num (hl_NUMERAL hl_zero) /\ ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: int.ml:541 / INT_POW_EQ_1   (hash md5:7bb865c1459f796877c362558b78cb57)
Theorem hlt_INT_POW_EQ_1 : forall x :e hl_ty_int, forall n :e omega, hl_int_pow x n = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hl_EVEN n = 1) \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: int.ml:542 / INT_POW_EQ_1_IMP   (hash md5:cdc7eb973501647b860aa8beeb505970)
Theorem hlt_INT_POW_EQ_1_IMP : forall x :e hl_ty_int, forall n :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_int_pow x n = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: int.ml:543 / INT_POW_EQ_ABS   (hash md5:d2ddbd81b98282e183ba62406012f475)
Theorem hlt_INT_POW_EQ_ABS : forall n :e omega, forall x y :e hl_ty_int, ~ n = hl_NUMERAL hl_zero /\ hl_int_pow x n = hl_int_pow y n -> hl_int_abs x = hl_int_abs y.
Admitted.

// HOL Light: int.ml:544 / INT_POW_EQ_EQ   (hash md5:4b22a17909b4a3b65a708bb12a8c7bb0)
Theorem hlt_INT_POW_EQ_EQ : forall n :e omega, forall x y :e hl_ty_int, hl_int_pow x n = hl_int_pow y n <-> hl_EVEN n = 1 /\ (n = hl_NUMERAL hl_zero \/ hl_int_abs x = hl_int_abs y) \/ ~ hl_EVEN n = 1 /\ x = y.
Admitted.

// HOL Light: int.ml:545 / INT_POW_EQ_ODD   (hash md5:114f0e34213b600ee2f2097ed7c92680)
Theorem hlt_INT_POW_EQ_ODD : forall n :e omega, forall x y :e hl_ty_int, hl_ODD n = 1 /\ hl_int_pow x n = hl_int_pow y n -> x = y.
Admitted.

// HOL Light: int.ml:546 / INT_POW_EQ_ODD_EQ   (hash md5:552856876feac71877aa9d68dea63414)
Theorem hlt_INT_POW_EQ_ODD_EQ : forall n :e omega, forall x y :e hl_ty_int, hl_ODD n = 1 -> (hl_int_pow x n = hl_int_pow y n <-> x = y).
Admitted.

// HOL Light: int.ml:547 / INT_POW_LBOUND   (hash md5:84ea3350f53eba473a47a9471019c0c2)
Theorem hlt_INT_POW_LBOUND : forall x :e hl_ty_int, forall n :e omega, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> hl_int_le (hl_int_add (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mul (hl_int_of_num n) x)) (hl_int_pow (hl_int_add (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x) n) = 1.
Admitted.

// HOL Light: int.ml:548 / INT_POW_LE   (hash md5:9abed49715b355b84281f9c2d68f4425)
Theorem hlt_INT_POW_LE : forall x :e hl_ty_int, forall n :e omega, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_pow x n) = 1.
Admitted.

// HOL Light: int.ml:549 / INT_POW_LE2   (hash md5:d18035cf7605d5f7ff0494c0a505852f)
Theorem hlt_INT_POW_LE2 : forall n :e omega, forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le x y = 1 -> hl_int_le (hl_int_pow x n) (hl_int_pow y n) = 1.
Admitted.

// HOL Light: int.ml:550 / INT_POW_LE2_ODD   (hash md5:13c9fea26bbf55d4e0992ba44db58f48)
Theorem hlt_INT_POW_LE2_ODD : forall n :e omega, forall x y :e hl_ty_int, hl_int_le x y = 1 /\ hl_ODD n = 1 -> hl_int_le (hl_int_pow x n) (hl_int_pow y n) = 1.
Admitted.

// HOL Light: int.ml:551 / INT_POW_LE2_ODD_EQ   (hash md5:64b78c6f5832cf05e8f0e92b467c4429)
Theorem hlt_INT_POW_LE2_ODD_EQ : forall n :e omega, forall x y :e hl_ty_int, hl_ODD n = 1 -> (hl_int_le (hl_int_pow x n) (hl_int_pow y n) = 1 <-> hl_int_le x y = 1).
Admitted.

// HOL Light: int.ml:552 / INT_POW_LE2_REV   (hash md5:4e3d9ab968a38be1fd178f6d871ed115)
Theorem hlt_INT_POW_LE2_REV : forall n :e omega, forall x y :e hl_ty_int, ~ n = hl_NUMERAL hl_zero /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 /\ hl_int_le (hl_int_pow x n) (hl_int_pow y n) = 1) -> hl_int_le x y = 1.
Admitted.

// HOL Light: int.ml:553 / INT_POW_LE_1   (hash md5:657d845d5e2ffd6d03bb12bf4ec5afe1)
Theorem hlt_INT_POW_LE_1 : forall n :e omega, forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_pow x n) = 1.
Admitted.

// HOL Light: int.ml:554 / INT_POW_LT   (hash md5:ff97b719d8288b0a0081c1ebf1f0df4b)
Theorem hlt_INT_POW_LT : forall x :e hl_ty_int, forall n :e omega, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_pow x n) = 1.
Admitted.

// HOL Light: int.ml:555 / INT_POW_LT2   (hash md5:bff8608205d086c37f5ba915f8bda62b)
Theorem hlt_INT_POW_LT2 : forall n :e omega, forall x y :e hl_ty_int, ~ n = hl_NUMERAL hl_zero /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_lt x y = 1) -> hl_int_lt (hl_int_pow x n) (hl_int_pow y n) = 1.
Admitted.

// HOL Light: int.ml:556 / INT_POW_LT2_ODD   (hash md5:d5a3f4cef3f8e123ef2d5c14a80c86f1)
Theorem hlt_INT_POW_LT2_ODD : forall n :e omega, forall x y :e hl_ty_int, hl_int_lt x y = 1 /\ hl_ODD n = 1 -> hl_int_lt (hl_int_pow x n) (hl_int_pow y n) = 1.
Admitted.

// HOL Light: int.ml:557 / INT_POW_LT2_ODD_EQ   (hash md5:e2483d2ec7e54cee9e27c6365079c041)
Theorem hlt_INT_POW_LT2_ODD_EQ : forall n :e omega, forall x y :e hl_ty_int, hl_ODD n = 1 -> (hl_int_lt (hl_int_pow x n) (hl_int_pow y n) = 1 <-> hl_int_lt x y = 1).
Admitted.

// HOL Light: int.ml:558 / INT_POW_LT2_REV   (hash md5:d0996581f09e7cae25388a6338d56fa6)
Theorem hlt_INT_POW_LT2_REV : forall n :e omega, forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 /\ hl_int_lt (hl_int_pow x n) (hl_int_pow y n) = 1 -> hl_int_lt x y = 1.
Admitted.

// HOL Light: int.ml:559 / INT_POW_LT_1   (hash md5:f220d4d9535cb551610f994de23b795b)
Theorem hlt_INT_POW_LT_1 : forall n :e omega, forall x :e hl_ty_int, ~ n = hl_NUMERAL hl_zero /\ hl_int_lt (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_pow x n) = 1.
Admitted.

// HOL Light: int.ml:560 / INT_POW_MONO   (hash md5:17739e2c0e25fc98b252ad5b1bba4227)
Theorem hlt_INT_POW_MONO : forall m n :e omega, forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = 1 /\ hl_le m n = 1 -> hl_int_le (hl_int_pow x m) (hl_int_pow x n) = 1.
Admitted.

// HOL Light: int.ml:561 / INT_POW_MONO_LT   (hash md5:13ead10831722ca9d369a6c5a7bac563)
Theorem hlt_INT_POW_MONO_LT : forall m n :e omega, forall x :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = 1 /\ hl_lt m n = 1 -> hl_int_lt (hl_int_pow x m) (hl_int_pow x n) = 1.
Admitted.

// HOL Light: int.ml:562 / INT_POW_MUL   (hash md5:b4b9dd259c34d1f8b452b9bc651e67c0)
Theorem hlt_INT_POW_MUL : forall x y :e hl_ty_int, forall n :e omega, hl_int_pow (hl_int_mul x y) n = hl_int_mul (hl_int_pow x n) (hl_int_pow y n).
Admitted.

// HOL Light: int.ml:563 / INT_POW_NEG   (hash md5:0bfee38513cc34c04af2caa8858282fc)
Theorem hlt_INT_POW_NEG : forall x :e hl_ty_int, forall n :e omega, hl_int_pow (hl_int_neg x) n = hl_COND hl_ty_int (hl_EVEN n) (hl_int_pow x n) (hl_int_neg (hl_int_pow x n)).
Admitted.

// HOL Light: int.ml:564 / INT_POW_NZ   (hash md5:ae7096eb80ee40961e059509a5ac8113)
Theorem hlt_INT_POW_NZ : forall x :e hl_ty_int, forall n :e omega, ~ x = hl_int_of_num (hl_NUMERAL hl_zero) -> ~ hl_int_pow x n = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:565 / INT_POW_ONE   (hash md5:48dbef478d6976b4978ccb3376e17b62)
Theorem hlt_INT_POW_ONE : forall n :e omega, hl_int_pow (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) n = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: int.ml:566 / INT_POW_POW   (hash md5:fd2a6dcf87c6339e90ccd73269073659)
Theorem hlt_INT_POW_POW : forall x :e hl_ty_int, forall m n :e omega, hl_int_pow (hl_int_pow x m) n = hl_int_pow x (hl_mul m n).
Admitted.

// HOL Light: int.ml:567 / INT_POW_ZERO   (hash md5:8f975e85a39288d5206cf7bfcbf91361)
Theorem hlt_INT_POW_ZERO : forall n :e omega, hl_int_pow (hl_int_of_num (hl_NUMERAL hl_zero)) n = hl_COND hl_ty_int (if n = hl_NUMERAL hl_zero then 1 else 0) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: int.ml:568 / INT_RNEG_UNIQ   (hash md5:f99ce8d5e4b703908c74fc2b42d6f264)
Theorem hlt_INT_RNEG_UNIQ : forall x y :e hl_ty_int, hl_int_add x y = hl_int_of_num (hl_NUMERAL hl_zero) <-> y = hl_int_neg x.
Admitted.

// HOL Light: int.ml:569 / INT_SGN   (hash md5:8125c06f3f21f21d1fb3f75026ee7511)
Theorem hlt_INT_SGN : forall x :e hl_ty_int, hl_int_sgn x = hl_COND hl_ty_int (hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_COND hl_ty_int (hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero))) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: int.ml:570 / INT_SGNS_EQ   (hash md5:acbb6321282e6b76ec56d3bc7fae24f5)
Theorem hlt_INT_SGNS_EQ : forall x y :e hl_ty_int, hl_int_sgn x = hl_int_sgn y <-> (x = hl_int_of_num (hl_NUMERAL hl_zero) <-> y = hl_int_of_num (hl_NUMERAL hl_zero)) /\ ((hl_int_gt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_int_gt y (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ (hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_int_lt y (hl_int_of_num (hl_NUMERAL hl_zero)) = 1)).
Admitted.

// HOL Light: int.ml:571 / INT_SGNS_EQ_ALT   (hash md5:6208abb82dbbd2ff2ab30cc2f410393a)
Theorem hlt_INT_SGNS_EQ_ALT : forall x y :e hl_ty_int, hl_int_sgn x = hl_int_sgn y <-> (x = hl_int_of_num (hl_NUMERAL hl_zero) -> y = hl_int_of_num (hl_NUMERAL hl_zero)) /\ ((hl_int_gt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hl_int_gt y (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ (hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 -> hl_int_lt y (hl_int_of_num (hl_NUMERAL hl_zero)) = 1)).
Admitted.

// HOL Light: int.ml:572 / INT_SGN_0   (hash md5:7f7251417bbcd9f3edf0d1f4f0f39c5e)
Theorem hlt_INT_SGN_0 : hl_int_sgn (hl_int_of_num (hl_NUMERAL hl_zero)) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:573 / INT_SGN_ABS   (hash md5:3ac799572e9d56333c6059ef833ed74e)
Theorem hlt_INT_SGN_ABS : forall x :e hl_ty_int, hl_int_mul (hl_int_sgn x) (hl_int_abs x) = x.
Admitted.

// HOL Light: int.ml:574 / INT_SGN_ABS_ALT   (hash md5:3cb44c46293eea29b95f88a1515f8bf0)
Theorem hlt_INT_SGN_ABS_ALT : forall x :e hl_ty_int, hl_int_mul (hl_int_sgn x) x = hl_int_abs x.
Admitted.

// HOL Light: int.ml:575 / INT_SGN_CASES   (hash md5:8d30654c5e2ee8b7130300ef59d8ee03)
Theorem hlt_INT_SGN_CASES : forall x :e hl_ty_int, hl_int_sgn x = hl_int_of_num (hl_NUMERAL hl_zero) \/ (hl_int_sgn x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_sgn x = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: int.ml:576 / INT_SGN_EQ   (hash md5:b4f71524b0c475d1efe46a85fce00344)
Theorem hlt_INT_SGN_EQ : (forall x :e hl_ty_int, hl_int_sgn x = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = hl_int_of_num (hl_NUMERAL hl_zero)) /\ ((forall x :e hl_ty_int, hl_int_sgn x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_int_gt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ forall x :e hl_ty_int, hl_int_sgn x = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) <-> hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1).
Admitted.

// HOL Light: int.ml:577 / INT_SGN_EQ_INEQ   (hash md5:f7319de0c9b97e4493102bb7b7f9656c)
Theorem hlt_INT_SGN_EQ_INEQ : forall x y :e hl_ty_int, hl_int_sgn x = hl_int_sgn y <-> x = y \/ hl_int_lt (hl_int_abs (hl_int_sub x y)) (hl_int_max (hl_int_abs x) (hl_int_abs y)) = 1.
Admitted.

// HOL Light: int.ml:578 / INT_SGN_INEQS   (hash md5:ae7df0ec5d6d1adaa77d7102bb26fd39)
Theorem hlt_INT_SGN_INEQS : (forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_sgn x) = 1 <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1) /\ ((forall x :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_sgn x) = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1) /\ ((forall x :e hl_ty_int, hl_int_ge (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_sgn x) = 1 <-> hl_int_ge (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1) /\ ((forall x :e hl_ty_int, hl_int_gt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_sgn x) = 1 <-> hl_int_gt (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1) /\ ((forall x :e hl_ty_int, hl_int_of_num (hl_NUMERAL hl_zero) = hl_int_sgn x <-> hl_int_of_num (hl_NUMERAL hl_zero) = x) /\ ((forall x :e hl_ty_int, hl_int_le (hl_int_sgn x) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_int_le x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ ((forall x :e hl_ty_int, hl_int_lt (hl_int_sgn x) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_int_lt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ ((forall x :e hl_ty_int, hl_int_ge (hl_int_sgn x) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_int_ge x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ ((forall x :e hl_ty_int, hl_int_gt (hl_int_sgn x) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_int_gt x (hl_int_of_num (hl_NUMERAL hl_zero)) = 1) /\ forall x :e hl_ty_int, hl_int_sgn x = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = hl_int_of_num (hl_NUMERAL hl_zero))))))))).
Admitted.

// HOL Light: int.ml:579 / INT_SGN_INT_SGN   (hash md5:96609c197911e5e1194d9172c81b66b1)
Theorem hlt_INT_SGN_INT_SGN : forall x :e hl_ty_int, hl_int_sgn (hl_int_sgn x) = hl_int_sgn x.
Admitted.

// HOL Light: int.ml:580 / INT_SGN_MUL   (hash md5:e61c4464f5cbd863747aa2b613e38c48)
Theorem hlt_INT_SGN_MUL : forall x y :e hl_ty_int, hl_int_sgn (hl_int_mul x y) = hl_int_mul (hl_int_sgn x) (hl_int_sgn y).
Admitted.

// HOL Light: int.ml:581 / INT_SGN_NEG   (hash md5:d3975b926b9306c5b9e885f5dd431cfd)
Theorem hlt_INT_SGN_NEG : forall x :e hl_ty_int, hl_int_sgn (hl_int_neg x) = hl_int_neg (hl_int_sgn x).
Admitted.

// HOL Light: int.ml:582 / INT_SGN_POW   (hash md5:1ce5f6946e0e16d54ca7ef44e0f43901)
Theorem hlt_INT_SGN_POW : forall x :e hl_ty_int, forall n :e omega, hl_int_sgn (hl_int_pow x n) = hl_int_pow (hl_int_sgn x) n.
Admitted.

// HOL Light: int.ml:583 / INT_SGN_POW_2   (hash md5:a2cd2594721e7cea8503bd5c3a30db3c)
Theorem hlt_INT_SGN_POW_2 : forall x :e hl_ty_int, hl_int_sgn (hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_sgn (hl_int_abs x).
Admitted.

// HOL Light: int.ml:584 / INT_SOS_EQ_0   (hash md5:9b402f91ecadc44cf2e22dfb672d597c)
Theorem hlt_INT_SOS_EQ_0 : forall x y :e hl_ty_int, hl_int_add (hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = hl_int_of_num (hl_NUMERAL hl_zero) /\ y = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:585 / INT_SUB_0   (hash md5:d97799b5b632ef690436d4e15314a817)
Theorem hlt_INT_SUB_0 : forall x y :e hl_ty_int, hl_int_sub x y = hl_int_of_num (hl_NUMERAL hl_zero) <-> x = y.
Admitted.

// HOL Light: int.ml:586 / INT_SUB_ABS   (hash md5:5295e3b0bd63839cc7e6d81d07272e1e)
Theorem hlt_INT_SUB_ABS : forall x y :e hl_ty_int, hl_int_le (hl_int_sub (hl_int_abs x) (hl_int_abs y)) (hl_int_abs (hl_int_sub x y)) = 1.
Admitted.

// HOL Light: int.ml:587 / INT_SUB_ADD   (hash md5:f4cdddb1eddba9e32362132d2b4bd64c)
Theorem hlt_INT_SUB_ADD : forall x y :e hl_ty_int, hl_int_add (hl_int_sub x y) y = x.
Admitted.

// HOL Light: int.ml:588 / INT_SUB_ADD2   (hash md5:6c20ea78ebcfb6b9cd3f839e8b0afc01)
Theorem hlt_INT_SUB_ADD2 : forall x y :e hl_ty_int, hl_int_add y (hl_int_sub x y) = x.
Admitted.

// HOL Light: int.ml:589 / INT_SUB_LDISTRIB   (hash md5:e6c0339a0cec50ff3c31d10ea97a512a)
Theorem hlt_INT_SUB_LDISTRIB : forall x y z :e hl_ty_int, hl_int_mul x (hl_int_sub y z) = hl_int_sub (hl_int_mul x y) (hl_int_mul x z).
Admitted.

// HOL Light: int.ml:590 / INT_SUB_LE   (hash md5:620c0a5721577a2024d9c43f496d1a57)
Theorem hlt_INT_SUB_LE : forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_sub x y) = 1 <-> hl_int_le y x = 1.
Admitted.

// HOL Light: int.ml:591 / INT_SUB_LNEG   (hash md5:5670b2352561c595be4ff4aa4f2187b7)
Theorem hlt_INT_SUB_LNEG : forall x y :e hl_ty_int, hl_int_sub (hl_int_neg x) y = hl_int_neg (hl_int_add x y).
Admitted.

// HOL Light: int.ml:592 / INT_SUB_LT   (hash md5:8eb8b276dc290de631125265613204fd)
Theorem hlt_INT_SUB_LT : forall x y :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_sub x y) = 1 <-> hl_int_lt y x = 1.
Admitted.

// HOL Light: int.ml:593 / INT_SUB_LZERO   (hash md5:25f9204ff5b0878c5192959b7eddae19)
Theorem hlt_INT_SUB_LZERO : forall x :e hl_ty_int, hl_int_sub (hl_int_of_num (hl_NUMERAL hl_zero)) x = hl_int_neg x.
Admitted.

// HOL Light: int.ml:594 / INT_SUB_NEG2   (hash md5:7f6da4a579636e76212d8d83b849995e)
Theorem hlt_INT_SUB_NEG2 : forall x y :e hl_ty_int, hl_int_sub (hl_int_neg x) (hl_int_neg y) = hl_int_sub y x.
Admitted.

// HOL Light: int.ml:595 / INT_SUB_RDISTRIB   (hash md5:f2fe41040f81b37975340c6c08e60c3f)
Theorem hlt_INT_SUB_RDISTRIB : forall x y z :e hl_ty_int, hl_int_mul (hl_int_sub x y) z = hl_int_sub (hl_int_mul x z) (hl_int_mul y z).
Admitted.

// HOL Light: int.ml:596 / INT_SUB_REFL   (hash md5:2af58559b3615d8c421715d986619866)
Theorem hlt_INT_SUB_REFL : forall x :e hl_ty_int, hl_int_sub x x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:597 / INT_SUB_RNEG   (hash md5:bedfa50186ef274208e8e8425619de57)
Theorem hlt_INT_SUB_RNEG : forall x y :e hl_ty_int, hl_int_sub x (hl_int_neg y) = hl_int_add x y.
Admitted.

// HOL Light: int.ml:598 / INT_SUB_RZERO   (hash md5:d5c8ac7434a5e405de95455997cebe34)
Theorem hlt_INT_SUB_RZERO : forall x :e hl_ty_int, hl_int_sub x (hl_int_of_num (hl_NUMERAL hl_zero)) = x.
Admitted.

// HOL Light: int.ml:599 / INT_SUB_SUB   (hash md5:620c7dbf28f523f515aef4f5b4bc6de6)
Theorem hlt_INT_SUB_SUB : forall x y :e hl_ty_int, hl_int_sub (hl_int_sub x y) x = hl_int_neg y.
Admitted.

// HOL Light: int.ml:600 / INT_SUB_SUB2   (hash md5:33e5da7145a639e37c840e99009a7fe3)
Theorem hlt_INT_SUB_SUB2 : forall x y :e hl_ty_int, hl_int_sub x (hl_int_sub x y) = y.
Admitted.

// HOL Light: int.ml:601 / INT_SUB_TRIANGLE   (hash md5:bb26e97d7e7b04869bf9ccf6f75b384f)
Theorem hlt_INT_SUB_TRIANGLE : forall a b c :e hl_ty_int, hl_int_add (hl_int_sub a b) (hl_int_sub b c) = hl_int_sub a c.
Admitted.

// HOL Light: int.ml:603 / INT_WLOG_LE   (hash md5:63096c81a6d7574be40ac98bf99b1706)
Theorem hlt_INT_WLOG_LE : forall P :e 2 :^: hl_ty_int :^: hl_ty_int, (forall x y :e hl_ty_int, P x y = 1 <-> P y x = 1) /\ (forall x y :e hl_ty_int, hl_int_le x y = 1 -> P x y = 1) -> forall x y :e hl_ty_int, P x y = 1.
Admitted.

// HOL Light: int.ml:607 / INT_WLOG_LT   (hash md5:5e0191a814a95e7906422a550df8b10b)
Theorem hlt_INT_WLOG_LT : forall P :e 2 :^: hl_ty_int :^: hl_ty_int, (forall x :e hl_ty_int, P x x = 1) /\ ((forall x y :e hl_ty_int, P x y = 1 <-> P y x = 1) /\ (forall x y :e hl_ty_int, hl_int_lt x y = 1 -> P x y = 1)) -> forall x y :e hl_ty_int, P x y = 1.
Admitted.

// HOL Light: int.ml:612 / INT_WLOG_LE_3   (hash md5:91d2955dba0044b255a56a4de4f09061)
Theorem hlt_INT_WLOG_LE_3 : forall P :e 2 :^: hl_ty_int :^: hl_ty_int :^: hl_ty_int, (forall x y z :e hl_ty_int, P x y z = 1 -> P y x z = 1 /\ P x z y = 1) /\ (forall x y z :e hl_ty_int, hl_int_le x y = 1 /\ hl_int_le y z = 1 -> P x y z = 1) -> forall x y z :e hl_ty_int, P x y z = 1.
Admitted.

// HOL Light: int.ml:622 / INT_FORALL_POS   (hash md5:85a59e4ef2440743785ab04d2db8ad7b)
Theorem hlt_INT_FORALL_POS : forall P :e 2 :^: hl_ty_int, (forall n :e omega, P (hl_int_of_num n) = 1) <-> forall i :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) i = 1 -> P i = 1.
Admitted.

// HOL Light: int.ml:630 / INT_EXISTS_POS   (hash md5:33b8060ca21d591df783c1b3bdacd01a)
Theorem hlt_INT_EXISTS_POS : forall P :e 2 :^: hl_ty_int, (exists n :e omega, P (hl_int_of_num n) = 1) <-> exists i :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) i = 1 /\ P i = 1.
Admitted.

// HOL Light: int.ml:635 / INT_FORALL_ABS   (hash md5:68a0a58c6f73703b40fc07405dc1536e)
Theorem hlt_INT_FORALL_ABS : forall P :e 2 :^: hl_ty_int, (forall n :e omega, P (hl_int_of_num n) = 1) <-> forall x :e hl_ty_int, P (hl_int_abs x) = 1.
Admitted.

// HOL Light: int.ml:639 / INT_EXISTS_ABS   (hash md5:acefd419a39d58f0d78e72da16f0e0f2)
Theorem hlt_INT_EXISTS_ABS : forall P :e 2 :^: hl_ty_int, (exists n :e omega, P (hl_int_of_num n) = 1) <-> exists x :e hl_ty_int, P (hl_int_abs x) = 1.
Admitted.

// HOL Light: int.ml:648 / INT_POW   (hash md5:f4c205ad73d7464411d37522514eef6d)
Theorem hlt_INT_POW : forall x :e hl_ty_int, hl_int_pow x (hl_NUMERAL hl_zero) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall n :e omega, hl_int_pow x (hl_SUC n) = hl_int_mul x (hl_int_pow x n).
Admitted.

// HOL Light: int.ml:653 / INT_ABS   (hash md5:ded1a02871aadb609b9a98c8172f7300)
Theorem hlt_INT_ABS : forall x :e hl_ty_int, hl_int_abs x = hl_COND hl_ty_int (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x) x (hl_int_neg x).
Admitted.

// HOL Light: int.ml:658 / INT_GE   (hash md5:21fd94d6d5bf4ed5f82206866508dece)
Theorem hlt_INT_GE : forall x y :e hl_ty_int, hl_int_ge x y = 1 <-> hl_int_le y x = 1.
Admitted.

// HOL Light: int.ml:662 / INT_GT   (hash md5:210f1a8f40f04907eb1ff4ede4ade97e)
Theorem hlt_INT_GT : forall x y :e hl_ty_int, hl_int_gt x y = 1 <-> hl_int_lt y x = 1.
Admitted.

// HOL Light: int.ml:666 / INT_LT   (hash md5:68a146ef016b6b7b0ba14603c5c22c4a)
Theorem hlt_INT_LT : forall x y :e hl_ty_int, hl_int_lt x y = 1 <-> ~ hl_int_le y x = 1.
Admitted.

// HOL Light: int.ml:715 / INT_SUB   (hash md5:84797b55cfb18771c7a0b0f6b45861de)
Theorem hlt_INT_SUB : forall x y :e hl_ty_int, hl_int_sub x y = hl_int_add x (hl_int_neg y).
Admitted.

// HOL Light: int.ml:717 / INT_MAX   (hash md5:137b46cca035b261ad44244bcfc009b7)
Theorem hlt_INT_MAX : forall x y :e hl_ty_int, hl_int_max x y = hl_COND hl_ty_int (hl_int_le x y) y x.
Admitted.

// HOL Light: int.ml:719 / INT_MIN   (hash md5:f418eb61bef787b420491a2976be0304)
Theorem hlt_INT_MIN : forall x y :e hl_ty_int, hl_int_min x y = hl_COND hl_ty_int (hl_int_le x y) x y.
Admitted.

// HOL Light: int.ml:725 / INT_OF_NUM_EXISTS   (hash md5:2649dc915583d6fad07e349593bf781a)
Theorem hlt_INT_OF_NUM_EXISTS : forall x :e hl_ty_int, (exists n :e omega, x = hl_int_of_num n) <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1.
Admitted.

// HOL Light: int.ml:732 / INT_LE_DISCRETE   (hash md5:81e0a2fc725c8925c31e798d79646e73)
Theorem hlt_INT_LE_DISCRETE : forall x y :e hl_ty_int, hl_int_le x y = 1 <-> hl_int_lt x (hl_int_add y (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: int.ml:734 / INT_LE_TRANS_LE   (hash md5:ba3da576077f7dd44cd97957b5af92f5)
Theorem hlt_INT_LE_TRANS_LE : forall x y :e hl_ty_int, hl_int_le x y = 1 <-> forall z :e hl_ty_int, hl_int_le y z = 1 -> hl_int_le x z = 1.
Admitted.

// HOL Light: int.ml:738 / INT_LE_TRANS_LT   (hash md5:c73870b6d218a18afc6bab7ae414dda6)
Theorem hlt_INT_LE_TRANS_LT : forall x y :e hl_ty_int, hl_int_le x y = 1 <-> forall z :e hl_ty_int, hl_int_lt y z = 1 -> hl_int_lt x z = 1.
Admitted.

// HOL Light: int.ml:743 / INT_MUL_EQ_1   (hash md5:7768be81d8d3f2dd79c9012c657aeee7)
Theorem hlt_INT_MUL_EQ_1 : forall x y :e hl_ty_int, hl_int_mul x y = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ y = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ x = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ y = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: int.ml:754 / INT_ABS_MUL_1   (hash md5:ccbf268f9147bd80507e02586c039cd9)
Theorem hlt_INT_ABS_MUL_1 : forall x y :e hl_ty_int, hl_int_abs (hl_int_mul x y) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_int_abs y = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: int.ml:761 / INT_WOP   (hash md5:792dcd133ad9a3db00eb175300f4db71)
Theorem hlt_INT_WOP : forall P :e 2 :^: hl_ty_int, (exists x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ P x = 1) <-> exists x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ (P x = 1 /\ forall y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 /\ P y = 1 -> hl_int_le x y = 1).
Admitted.

// HOL Light: int.ml:773 / INT_ARCH   (hash md5:351ee14a8335eb82d4a884a47e45ad53)
Theorem hlt_INT_ARCH : forall x d :e hl_ty_int, ~ d = hl_int_of_num (hl_NUMERAL hl_zero) -> exists c :e hl_ty_int, hl_int_lt x (hl_int_mul c d) = 1.
Admitted.

// HOL Light: int.ml:796 / INT_DIVMOD_EXIST_0   (hash md5:8d1afde03d98fb2c4270737b1d533380)
Theorem hlt_INT_DIVMOD_EXIST_0 : forall m n :e hl_ty_int, exists q r :e hl_ty_int, n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (q = hl_int_of_num (hl_NUMERAL hl_zero) /\ r = m) \/ ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_int_lt r (hl_int_abs n) = 1 /\ m = hl_int_add (hl_int_mul q n) r)).
Admitted.

// HOL Light: int.ml:819 / INT_DIVISION_0   (hash md5:20f62b21b9620245e3c52e17fc922d1a)
Theorem hlt_INT_DIVISION_0 : forall m n :e hl_ty_int, n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_div m n = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_rem m n = m) \/ ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_rem m n) = 1 /\ (hl_int_lt (hl_rem m n) (hl_int_abs n) = 1 /\ m = hl_int_add (hl_int_mul (hl_div m n) n) (hl_rem m n))).
Admitted.

// HOL Light: int.ml:822 / INT_DIVISION   (hash md5:f0a1be36963cfff364e042a398f6c10d)
Theorem hlt_INT_DIVISION : forall m n :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> m = hl_int_add (hl_int_mul (hl_div m n) n) (hl_rem m n) /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_rem m n) = 1 /\ hl_int_lt (hl_rem m n) (hl_int_abs n) = 1).
Admitted.

// HOL Light: int.ml:827 / INT_DIVISION_SIMP   (hash md5:2907755fc49a1ef830240acdaa828cb6)
Theorem hlt_INT_DIVISION_SIMP : forall m n :e hl_ty_int, hl_int_add (hl_int_mul (hl_div m n) n) (hl_rem m n) = m.
Admitted.

// HOL Light: int.ml:832 / INT_REM_POS   (hash md5:ca0bdca0c7540e132afbbcdcde4a0d2e)
Theorem hlt_INT_REM_POS : forall a b :e hl_ty_int, ~ b = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_rem a b) = 1.
Admitted.

// HOL Light: int.ml:836 / INT_DIV_0   (hash md5:e7676c12bcd0a6695ab1271c6fd9506e)
Theorem hlt_INT_DIV_0 : forall m :e hl_ty_int, hl_div m (hl_int_of_num (hl_NUMERAL hl_zero)) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:840 / INT_REM_0   (hash md5:6007d2bec008f4b39abee744d1b874c6)
Theorem hlt_INT_REM_0 : forall m :e hl_ty_int, hl_rem m (hl_int_of_num (hl_NUMERAL hl_zero)) = m.
Admitted.

// HOL Light: int.ml:844 / INT_REM_POS_EQ   (hash md5:2afd302660436ad0198572f1efb9f742)
Theorem hlt_INT_REM_POS_EQ : forall m n :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_rem m n) = 1 <-> n = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1.
Admitted.

// HOL Light: int.ml:849 / INT_REM_DIV   (hash md5:8e3001d790de22a18a198653b20bb00e)
Theorem hlt_INT_REM_DIV : forall m n :e hl_ty_int, hl_rem m n = hl_int_sub m (hl_int_mul (hl_div m n) n).
Admitted.

// HOL Light: int.ml:854 / INT_LT_REM   (hash md5:3e6105385a2f9aebf5d5d5d23daadfe5)
Theorem hlt_INT_LT_REM : forall x n :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 -> hl_int_lt (hl_rem x n) n = 1.
Admitted.

// HOL Light: int.ml:858 / INT_LT_REM_EQ   (hash md5:5a7e29166cdcf04818d68ffdcc671eb4)
Theorem hlt_INT_LT_REM_EQ : forall m n :e hl_ty_int, hl_int_lt (hl_rem m n) n = 1 <-> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 \/ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_int_lt m (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: int.ml:1163 / cong   (hash md5:d0373dc2bc02e675cdb61c053cc647b6)
Theorem hlt_cong : forall A:set, A <> Empty -> forall rel :e 2 :^: A :^: A, forall x y :e A, hl_sym_3d3d A x y rel = 1 <-> rel x y = 1.
Admitted.

// HOL Light: int.ml:1170 / real_mod   (hash md5:66e08ca96f3f09be49b9be03c590342a)
Theorem hlt_real_mod_thm : forall x y n :e R, hl_real_mod n x y = 1 <-> exists q :e R, hl_integer q = 1 /\ hl_real_sub x y = hl_real_mul q n.
Admitted.

// HOL Light: int.ml:1182 / int_divides   (hash md5:0dff4dff15f6e11d7fe6ecc0cf30f0ed)
Theorem hlt_int_divides : forall b a :e hl_ty_int, hl_int_divides a b = 1 <-> exists x :e hl_ty_int, b = hl_int_mul a x.
Admitted.

// HOL Light: int.ml:1185 / INT_DIVIDES_LE   (hash md5:de0fd0f15bc993b761f13a9e7d21fa95)
Theorem hlt_INT_DIVIDES_LE : forall x y :e hl_ty_int, hl_int_divides x y = 1 -> hl_int_le (hl_int_abs x) (hl_int_abs y) = 1 \/ y = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:1199 / int_mod   (hash md5:17852779413c6e485a026b4cf6b38fb6)
Theorem hlt_int_mod : forall n x y :e hl_ty_int, hl_int_mod n x y = 1 <-> hl_int_divides n (hl_int_sub x y) = 1.
Admitted.

// HOL Light: int.ml:1202 / int_congruent   (hash md5:0740c3eb73e17b56c164104cffc9d0d4)
Theorem hlt_int_congruent : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 <-> exists d :e hl_ty_int, hl_int_sub x y = hl_int_mul n d.
Admitted.

// HOL Light: int.ml:1206 / INT_CONG_IMP_EQ   (hash md5:64ca351c1c549d45b6d4c9d074b3bde6)
Theorem hlt_INT_CONG_IMP_EQ : forall x y n :e hl_ty_int, hl_int_lt (hl_int_abs (hl_int_sub x y)) n = 1 /\ hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> x = y.
Admitted.

// HOL Light: int.ml:1218 / int_coprime   (hash md5:5d645fcc824ab4748c8fe7b17cd497df)
Theorem hlt_int_coprime : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 <-> exists x y :e hl_ty_int, hl_int_add (hl_int_mul a x) (hl_int_mul b y) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: int.ml:1331 / INT_DIVMOD_UNIQ   (hash md5:a59cba60f1a515ec1b3002d354da584b)
Theorem hlt_INT_DIVMOD_UNIQ : forall m n q r :e hl_ty_int, m = hl_int_add (hl_int_mul q n) r /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_int_lt r (hl_int_abs n) = 1) -> hl_div m n = q /\ hl_rem m n = r.
Admitted.

// HOL Light: int.ml:1349 / INT_DIV_UNIQ   (hash md5:27677f9841fd4194adfa11871248b1ed)
Theorem hlt_INT_DIV_UNIQ : forall m n q r :e hl_ty_int, m = hl_int_add (hl_int_mul q n) r /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_int_lt r (hl_int_abs n) = 1) -> hl_div m n = q.
Admitted.

// HOL Light: int.ml:1354 / INT_REM_UNIQ   (hash md5:0c02ed0e179175da9b2126fcf329b8a4)
Theorem hlt_INT_REM_UNIQ : forall m n q r :e hl_ty_int, m = hl_int_add (hl_int_mul q n) r /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_int_lt r (hl_int_abs n) = 1) -> hl_rem m n = r.
Admitted.

// HOL Light: int.ml:1359 / INT_DIV_LT   (hash md5:8641e56fb5630c2347753d980e042c1b)
Theorem hlt_INT_DIV_LT : forall m n :e hl_ty_int, (~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1) /\ hl_int_lt m n = 1 -> hl_div m n = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:1359 / INT_REM_LT   (hash md5:1684b54143f1a079e05d65fc46b67aef)
Theorem hlt_INT_REM_LT : forall m n :e hl_ty_int, (~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1) /\ hl_int_lt m n = 1 -> hl_rem m n = m.
Admitted.

// HOL Light: int.ml:1367 / INT_DIV_RNEG   (hash md5:d60bc29aff2a3072cb5e31936a0afc08)
Theorem hlt_INT_DIV_RNEG : forall m n :e hl_ty_int, hl_div m (hl_int_neg n) = hl_int_neg (hl_div m n).
Admitted.

// HOL Light: int.ml:1367 / INT_REM_RNEG   (hash md5:09372e3eca0330a88d4da16515801cc1)
Theorem hlt_INT_REM_RNEG : forall m n :e hl_ty_int, hl_rem m (hl_int_neg n) = hl_rem m n.
Admitted.

// HOL Light: int.ml:1377 / INT_REM_RABS   (hash md5:8e1e5d23a4047fa4aa74a9b2531f673f)
Theorem hlt_INT_REM_RABS : forall x y :e hl_ty_int, hl_rem x (hl_int_abs y) = hl_rem x y.
Admitted.

// HOL Light: int.ml:1381 / INT_REM_REM   (hash md5:e4ccfc29234ffbe798136cc15dddb818)
Theorem hlt_INT_REM_REM : forall m n :e hl_ty_int, hl_rem (hl_rem m n) n = hl_rem m n.
Admitted.

// HOL Light: int.ml:1389 / INT_REM_EQ   (hash md5:c10c47c26992aaf42dda2fa34c0787dd)
Theorem hlt_INT_REM_EQ : forall m n p :e hl_ty_int, hl_rem m p = hl_rem n p <-> hl_sym_3d3d hl_ty_int m n (hl_int_mod p) = 1.
Admitted.

// HOL Light: int.ml:1405 / INT_DIV_ZERO   (hash md5:3864521e3676525ec6cc992cf167648e)
Theorem hlt_INT_DIV_ZERO : forall n :e hl_ty_int, hl_div (hl_int_of_num (hl_NUMERAL hl_zero)) n = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:1405 / INT_REM_ZERO   (hash md5:97bc8cd09df1bc6a20b100eac99ff886)
Theorem hlt_INT_REM_ZERO : forall n :e hl_ty_int, hl_rem (hl_int_of_num (hl_NUMERAL hl_zero)) n = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:1412 / INT_REM_EQ_0   (hash md5:9b94813f64bd28755d2bd0f534d48fa6)
Theorem hlt_INT_REM_EQ_0 : forall m n :e hl_ty_int, hl_rem m n = hl_int_of_num (hl_NUMERAL hl_zero) <-> hl_int_divides n m = 1.
Admitted.

// HOL Light: int.ml:1418 / INT_MUL_DIV_EQ   (hash md5:2b9ba78f64813cb2bc27b5f57a85d39f)
Theorem hlt_INT_MUL_DIV_EQ : (forall m n :e hl_ty_int, hl_int_mul n (hl_div m n) = m <-> hl_int_divides n m = 1) /\ forall m n :e hl_ty_int, hl_int_mul (hl_div m n) n = m <-> hl_int_divides n m = 1.
Admitted.

// HOL Light: int.ml:1425 / INT_CONG_LREM   (hash md5:99b0456b86d382a0336c0334dda4479c)
Theorem hlt_INT_CONG_LREM : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_rem x n) y (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: int.ml:1429 / INT_CONG_RREM   (hash md5:ea889a3ffa5c35ebd25bdffeb137dd3d)
Theorem hlt_INT_CONG_RREM : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x (hl_rem y n) (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: int.ml:1433 / INT_REM_MOD_SELF   (hash md5:15b03f53f2cbb253353353c73f420084)
Theorem hlt_INT_REM_MOD_SELF : forall m n :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_rem m n) m (hl_int_mod n) = 1.
Admitted.

// HOL Light: int.ml:1437 / INT_REM_REM_MUL   (hash md5:71c463e3ec501efb1c84d7f9bf28620a)
Theorem hlt_INT_REM_REM_MUL : (forall m n p :e hl_ty_int, hl_rem (hl_rem m (hl_int_mul n p)) n = hl_rem m n) /\ forall m n p :e hl_ty_int, hl_rem (hl_rem m (hl_int_mul n p)) p = hl_rem m p.
Admitted.

// HOL Light: int.ml:1445 / INT_CONG_SOLVE_BOUNDS   (hash md5:97a8ac64126bd5ed89b340fe309a11d5)
Theorem hlt_INT_CONG_SOLVE_BOUNDS : forall a n :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> exists x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ (hl_int_lt x (hl_int_abs n) = 1 /\ hl_sym_3d3d hl_ty_int x a (hl_int_mod n) = 1).
Admitted.

// HOL Light: int.ml:1449 / INT_NEG_REM   (hash md5:e350590210d641328c5453eff00d0cb0)
Theorem hlt_INT_NEG_REM : forall n p :e hl_ty_int, hl_rem (hl_int_neg (hl_rem n p)) p = hl_rem (hl_int_neg n) p.
Admitted.

// HOL Light: int.ml:1456 / INT_ADD_REM   (hash md5:4ef3b9739eda9f3309ada6d4dd54f238)
Theorem hlt_INT_ADD_REM : forall m n p :e hl_ty_int, hl_rem (hl_int_add (hl_rem m p) (hl_rem n p)) p = hl_rem (hl_int_add m n) p.
Admitted.

// HOL Light: int.ml:1463 / INT_SUB_REM   (hash md5:292a73186f7a19c8f9241d6fde6be6ee)
Theorem hlt_INT_SUB_REM : forall m n p :e hl_ty_int, hl_rem (hl_int_sub (hl_rem m p) (hl_rem n p)) p = hl_rem (hl_int_sub m n) p.
Admitted.

// HOL Light: int.ml:1470 / INT_MUL_REM   (hash md5:691aa7123918a993a6bdda397a3b3982)
Theorem hlt_INT_MUL_REM : forall m n p :e hl_ty_int, hl_rem (hl_int_mul (hl_rem m p) (hl_rem n p)) p = hl_rem (hl_int_mul m n) p.
Admitted.

// HOL Light: int.ml:1477 / INT_POW_REM   (hash md5:e51a06d3768e5a5309b42f64151b026d)
Theorem hlt_INT_POW_REM : forall m :e hl_ty_int, forall n :e omega, forall p :e hl_ty_int, hl_rem (hl_int_pow (hl_rem m p) n) p = hl_rem (hl_int_pow m n) p.
Admitted.

// HOL Light: int.ml:1484 / INT_OF_NUM_DIV   (hash md5:afa6dbafc0c61c3727218dc9251317d1)
Theorem hlt_INT_OF_NUM_DIV : forall m n :e omega, hl_div (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_DIV m n).
Admitted.

// HOL Light: int.ml:1484 / INT_OF_NUM_REM   (hash md5:981dbd704bfc4d0258da127edf6411fc)
Theorem hlt_INT_OF_NUM_REM : forall m n :e omega, hl_rem (hl_int_of_num m) (hl_int_of_num n) = hl_int_of_num (hl_MOD m n).
Admitted.

// HOL Light: int.ml:1495 / INT_DIV_REFL   (hash md5:82c9b61ea00f3e93ce31851260f82eb4)
Theorem hlt_INT_DIV_REFL : forall n :e hl_ty_int, hl_div n n = hl_COND hl_ty_int (if n = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: int.ml:1495 / INT_REM_REFL   (hash md5:7bf82da492866bcfef49b0a07c5e3458)
Theorem hlt_INT_REM_REFL : forall n :e hl_ty_int, hl_rem n n = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:1502 / INT_DIV_LNEG   (hash md5:ad915497b635e216ebcd59fb4b8e90b1)
Theorem hlt_INT_DIV_LNEG : forall m n :e hl_ty_int, hl_div (hl_int_neg m) n = hl_COND hl_ty_int (if hl_rem m n = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_int_neg (hl_div m n)) (hl_int_sub (hl_int_neg (hl_div m n)) (hl_int_sgn n)).
Admitted.

// HOL Light: int.ml:1502 / INT_REM_LNEG   (hash md5:2114a4bcff605e46b7943d2179866478)
Theorem hlt_INT_REM_LNEG : forall m n :e hl_ty_int, hl_rem (hl_int_neg m) n = hl_COND hl_ty_int (if hl_rem m n = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_sub (hl_int_abs n) (hl_rem m n)).
Admitted.

// HOL Light: int.ml:1517 / INT_DIV_NEG2   (hash md5:a018f12df59758683b06ef2284a74a96)
Theorem hlt_INT_DIV_NEG2 : forall m n :e hl_ty_int, hl_div (hl_int_neg m) (hl_int_neg n) = hl_COND hl_ty_int (if hl_rem m n = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_div m n) (hl_int_add (hl_div m n) (hl_int_sgn n)).
Admitted.

// HOL Light: int.ml:1522 / INT_REM_NEG2   (hash md5:43433abe146b5b596861acae872064eb)
Theorem hlt_INT_REM_NEG2 : forall m n :e hl_ty_int, hl_rem (hl_int_neg m) (hl_int_neg n) = hl_COND hl_ty_int (if hl_rem m n = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_sub (hl_int_abs n) (hl_rem m n)).
Admitted.

// HOL Light: int.ml:1526 / INT_DIV_1   (hash md5:851fa91594fac6cde2e5f73e087cd095)
Theorem hlt_INT_DIV_1 : forall n :e hl_ty_int, hl_div n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = n.
Admitted.

// HOL Light: int.ml:1526 / INT_REM_1   (hash md5:894d10d5ef5637822488d5baa19cec22)
Theorem hlt_INT_REM_1 : forall n :e hl_ty_int, hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:1532 / INT_DIV_MUL   (hash md5:6ecab7333ab666c3beb5beb18a3c78f6)
Theorem hlt_INT_DIV_MUL : (forall m n :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_div (hl_int_mul m n) n = m) /\ forall m n :e hl_ty_int, ~ m = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_div (hl_int_mul m n) m = n.
Admitted.

// HOL Light: int.ml:1532 / INT_REM_MUL   (hash md5:31bd60c34ce2e33a35e0e5d1a8875453)
Theorem hlt_INT_REM_MUL : (forall m n :e hl_ty_int, hl_rem (hl_int_mul m n) n = hl_int_of_num (hl_NUMERAL hl_zero)) /\ forall m n :e hl_ty_int, hl_rem (hl_int_mul m n) m = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:1544 / INT_DIV_LT_EQ   (hash md5:91f728624e2a5879d8e2f054801bd237)
Theorem hlt_INT_DIV_LT_EQ : forall a b c :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) a = 1 -> (hl_int_lt (hl_div b a) c = 1 <-> hl_int_lt b (hl_int_mul a c) = 1).
Admitted.

// HOL Light: int.ml:1571 / INT_LE_DIV_EQ   (hash md5:813cd818f91bf818a8f908452834bdbf)
Theorem hlt_INT_LE_DIV_EQ : forall a b c :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) a = 1 -> (hl_int_le c (hl_div b a) = 1 <-> hl_int_le (hl_int_mul a c) b = 1).
Admitted.

// HOL Light: int.ml:1575 / INT_DIV_LE_EQ   (hash md5:4524af45cc1bfad38923817afd6cece3)
Theorem hlt_INT_DIV_LE_EQ : forall a b c :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) a = 1 -> (hl_int_le (hl_div b a) c = 1 <-> hl_int_lt b (hl_int_mul a (hl_int_add c (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1).
Admitted.

// HOL Light: int.ml:1579 / INT_LT_DIV_EQ   (hash md5:50d91c5e09b1ba9c172c4a8a2777e808)
Theorem hlt_INT_LT_DIV_EQ : forall a b c :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) a = 1 -> (hl_int_lt c (hl_div b a) = 1 <-> hl_int_le (hl_int_mul a (hl_int_add c (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) b = 1).
Admitted.

// HOL Light: int.ml:1583 / INT_DIV_LE   (hash md5:ba2fa2f05bbae4aab8cf45fbdc40881d)
Theorem hlt_INT_DIV_LE : forall m n :e hl_ty_int, hl_int_le (hl_int_abs (hl_div m n)) (hl_int_abs m) = 1.
Admitted.

// HOL Light: int.ml:1599 / INT_DIV_DIV   (hash md5:2886d711d133d111904ce73a8db00c4c)
Theorem hlt_INT_DIV_DIV : forall m n p :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 -> hl_div (hl_div m n) p = hl_div m (hl_int_mul n p).
Admitted.

// HOL Light: int.ml:1599 / INT_REM_MUL_REM   (hash md5:5d390ae94358f559d1bc6858d4c3db03)
Theorem hlt_INT_REM_MUL_REM : forall m n p :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 -> hl_rem m (hl_int_mul n p) = hl_int_add (hl_int_mul n (hl_rem (hl_div m n) p)) (hl_rem m n).
Admitted.

// HOL Light: int.ml:1621 / INT_DIV_EQ_0   (hash md5:fdb1ad44fd082c2b3330f2d0b4258dc4)
Theorem hlt_INT_DIV_EQ_0 : forall m n :e hl_ty_int, hl_div m n = hl_int_of_num (hl_NUMERAL hl_zero) <-> n = hl_int_of_num (hl_NUMERAL hl_zero) \/ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1 /\ hl_int_lt m (hl_int_abs n) = 1.
Admitted.

// HOL Light: int.ml:1630 / INT_REM_EQ_SELF   (hash md5:da5776074fdebe761a0549f20df678c1)
Theorem hlt_INT_REM_EQ_SELF : forall m n :e hl_ty_int, hl_rem m n = m <-> n = hl_int_of_num (hl_NUMERAL hl_zero) \/ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1 /\ hl_int_lt m (hl_int_abs n) = 1.
Admitted.

// HOL Light: int.ml:1635 / INT_REM_UNIQUE   (hash md5:6a5602e283ed842fa6b0c4b5cec42b18)
Theorem hlt_INT_REM_UNIQUE : forall m n p :e hl_ty_int, hl_rem m n = p <-> (n = hl_int_of_num (hl_NUMERAL hl_zero) /\ m = p \/ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) p = 1 /\ hl_int_lt p (hl_int_abs n) = 1) /\ hl_sym_3d3d hl_ty_int m p (hl_int_mod n) = 1.
Admitted.

// HOL Light: int.ml:1646 / INT_DIV_REM   (hash md5:62a02b240b8bdb126f0fd1ca92b69d5b)
Theorem hlt_INT_DIV_REM : forall m n p :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 -> hl_rem (hl_div m n) p = hl_div (hl_rem m (hl_int_mul n p)) n.
Admitted.

// HOL Light: int.ml:1655 / INT_REM_REM_LE   (hash md5:cc9d8bf2ce7b0d778a084b3d3527fb88)
Theorem hlt_INT_REM_REM_LE : forall m n p :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_int_le (hl_int_abs n) (hl_int_abs p) = 1 -> hl_rem (hl_rem m n) p = hl_rem m n.
Admitted.

// HOL Light: int.ml:1661 / INT_LE_DIV   (hash md5:403c0b9b52dade41d1547151e2817013)
Theorem hlt_INT_LE_DIV : forall m n :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_div m n) = 1.
Admitted.

// HOL Light: int.ml:1666 / INT_LT_DIV   (hash md5:500d03ca4542b368dbd4a0071fd7b28f)
Theorem hlt_INT_LT_DIV : forall m n :e hl_ty_int, hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 /\ hl_int_le n m = 1 -> hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_div m n) = 1.
Admitted.

// HOL Light: int.ml:1674 / INT_REM_LE_EQ   (hash md5:d719498c202ec89b7e31fa6cdfde899e)
Theorem hlt_INT_REM_LE_EQ : forall m n :e hl_ty_int, hl_int_le (hl_rem m n) m = 1 <-> n = hl_int_of_num (hl_NUMERAL hl_zero) \/ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1.
Admitted.

// HOL Light: int.ml:1684 / INT_REM_LE   (hash md5:12663155a8d717f667bd3f1c21b3040e)
Theorem hlt_INT_REM_LE : forall m n p :e hl_ty_int, (n = hl_int_of_num (hl_NUMERAL hl_zero) \/ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1) /\ hl_int_le m p = 1 -> hl_int_le (hl_rem m n) p = 1.
Admitted.

// HOL Light: int.ml:1688 / INT_REM_MUL_ADD   (hash md5:e95d1d0d687f384504c894a137f7f0a6)
Theorem hlt_INT_REM_MUL_ADD : (forall m n p :e hl_ty_int, hl_rem (hl_int_add (hl_int_mul m n) p) n = hl_rem p n) /\ ((forall m n p :e hl_ty_int, hl_rem (hl_int_add (hl_int_mul n m) p) n = hl_rem p n) /\ ((forall m n p :e hl_ty_int, hl_rem (hl_int_add p (hl_int_mul m n)) n = hl_rem p n) /\ forall m n p :e hl_ty_int, hl_rem (hl_int_add p (hl_int_mul n m)) n = hl_rem p n)).
Admitted.

// HOL Light: int.ml:1696 / INT_DIV_MUL_ADD   (hash md5:4d226f5a369b381b3bce5547ee9a5753)
Theorem hlt_INT_DIV_MUL_ADD : (forall m n p :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_div (hl_int_add (hl_int_mul m n) p) n = hl_int_add m (hl_div p n)) /\ ((forall m n p :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_div (hl_int_add (hl_int_mul n m) p) n = hl_int_add m (hl_div p n)) /\ ((forall m n p :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_div (hl_int_add p (hl_int_mul m n)) n = hl_int_add (hl_div p n) m) /\ forall m n p :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_div (hl_int_add p (hl_int_mul n m)) n = hl_int_add (hl_div p n) m)).
Admitted.

// HOL Light: int.ml:1706 / INT_CONG_DIV2   (hash md5:8817ef9c4ec367e1afc32aa782b0df29)
Theorem hlt_INT_CONG_DIV2 : forall a b m n :e hl_ty_int, hl_sym_3d3d hl_ty_int a b (hl_int_mod (hl_int_mul m n)) = 1 -> hl_sym_3d3d hl_ty_int (hl_div a m) (hl_div b m) (hl_int_mod n) = 1.
Admitted.

// HOL Light: int.ml:1715 / INT_REM_2_CASES   (hash md5:9d6abd76fa38a1c6fc83562134ee3c13)
Theorem hlt_INT_REM_2_CASES : forall n :e hl_ty_int, hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL hl_zero) \/ hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: int.ml:1720 / NOT_INT_REM_2   (hash md5:bfe6d500e500cc7248439387eab427ab)
Theorem hlt_NOT_INT_REM_2 : (forall n :e hl_ty_int, ~ hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL hl_zero) <-> hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall n :e hl_ty_int, ~ hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:1726 / INT_REM_2_DIVIDES   (hash md5:e759679501e1cb3fb211beb780b81fdd)
Theorem hlt_INT_REM_2_DIVIDES : (forall n :e hl_ty_int, hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL hl_zero) <-> hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1) /\ forall n :e hl_ty_int, hl_rem n (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) <-> ~ hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1.
Admitted.

// HOL Light: int.ml:1732 / INT_REM_2_EXPAND   (hash md5:227c3d95485932c2595b4f53245bfce6)
Theorem hlt_INT_REM_2_EXPAND : forall x :e hl_ty_int, hl_rem x (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_COND hl_ty_int (hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) x) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: int.ml:1736 / INT_REM_2_NEG   (hash md5:fa00a12450829633716f50cc538bdbca)
Theorem hlt_INT_REM_2_NEG : forall x :e hl_ty_int, hl_rem (hl_int_neg x) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_rem x (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: int.ml:1741 / INT_DIVIDES_DIV_SELF   (hash md5:d55e37d50a990d58983cc418805a9d9f)
Theorem hlt_INT_DIVIDES_DIV_SELF : forall n d :e hl_ty_int, hl_int_divides d n = 1 -> hl_int_divides (hl_div n d) n = 1.
Admitted.

// HOL Light: int.ml:1745 / INT_DIV_BY_DIV   (hash md5:d77906779dfd8b5fca0f3e0872c98470)
Theorem hlt_INT_DIV_BY_DIV : forall m n :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_int_divides m n = 1 -> hl_div n (hl_div n m) = m.
Admitted.

// HOL Light: int.ml:1750 / INT_DIVIDES_DIV_DIVIDES   (hash md5:63b24f702f44d4f45ac6e86d5c7e5906)
Theorem hlt_INT_DIVIDES_DIV_DIVIDES : forall n d e1 :e hl_ty_int, hl_int_divides d n = 1 /\ (n = hl_int_of_num (hl_NUMERAL hl_zero) -> e1 = hl_int_of_num (hl_NUMERAL hl_zero)) -> (hl_int_divides (hl_div n d) e1 = 1 <-> hl_int_divides n (hl_int_mul d e1) = 1).
Admitted.

// HOL Light: int.ml:1757 / INT_DIVIDES_DIVIDES_DIV   (hash md5:824ef3be36b74a2558e14a554cd0d1d2)
Theorem hlt_INT_DIVIDES_DIVIDES_DIV : forall n d e1 :e hl_ty_int, hl_int_divides d n = 1 -> (hl_int_divides e1 (hl_div n d) = 1 <-> hl_int_divides (hl_int_mul d e1) n = 1).
Admitted.

// HOL Light: int.ml:1764 / INT_DIVIDES_DIVIDES_DIV_EQ   (hash md5:287a94b357c7685843c3bd2bd9613fee)
Theorem hlt_INT_DIVIDES_DIVIDES_DIV_EQ : forall n d e1 :e hl_ty_int, hl_int_divides d n = 1 /\ hl_int_divides e1 (hl_div n d) = 1 <-> hl_int_divides (hl_int_mul d e1) n = 1.
Admitted.

// HOL Light: int.ml:1845 / INT_2_DIVIDES_ADD   (hash md5:134bbf0f092ab5f6e64e462121df0e0f)
Theorem hlt_INT_2_DIVIDES_ADD : forall m n :e hl_ty_int, hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_add m n) = 1 <-> (hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) m = 1 <-> hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1).
Admitted.

// HOL Light: int.ml:1853 / INT_2_DIVIDES_SUB   (hash md5:b5070a770db1ad0f6c3f4ec83bbbf104)
Theorem hlt_INT_2_DIVIDES_SUB : forall m n :e hl_ty_int, hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_sub m n) = 1 <-> (hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) m = 1 <-> hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1).
Admitted.

// HOL Light: int.ml:1861 / INT_2_DIVIDES_MUL   (hash md5:a74f6150b460844bc8563400aa831fa8)
Theorem hlt_INT_2_DIVIDES_MUL : forall m n :e hl_ty_int, hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_mul m n) = 1 <-> hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) m = 1 \/ hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1.
Admitted.

// HOL Light: int.ml:1869 / INT_2_DIVIDES_POW   (hash md5:20a2d98e233c66629aca58e154a320a0)
Theorem hlt_INT_2_DIVIDES_POW : forall n :e hl_ty_int, forall k :e omega, hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_pow n k) = 1 <-> hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1 /\ ~ k = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: int.ml:1932 / WF_INT_MEASURE   (hash md5:d175c8a507c83d306dca6b28aa2ef3bc)
Theorem hlt_WF_INT_MEASURE : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall m :e hl_ty_int :^: A, (forall x :e A, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (m x) = 1) /\ (forall x :e A, (forall y :e A, hl_int_lt (m y) (m x) = 1 -> P y = 1) -> P x = 1) -> forall x :e A, P x = 1.
Admitted.

// HOL Light: int.ml:1939 / WF_INT_MEASURE_2   (hash md5:fae54c5bd47e76c11b3c61f389ee17d4)
Theorem hlt_WF_INT_MEASURE_2 : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall m :e hl_ty_int :^: B :^: A, (forall x :e A, forall y :e B, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (m x y) = 1) /\ (forall x :e A, forall y :e B, (forall x' :e A, forall y' :e B, hl_int_lt (m x' y') (m x y) = 1 -> P x' y' = 1) -> P x y = 1) -> forall x :e A, forall y :e B, P x y = 1.
Admitted.

// HOL Light: int.ml:1945 / INT_GCD_EXISTS   (hash md5:1fd3791a36b29532c3099944ac467d39)
Theorem hlt_INT_GCD_EXISTS : forall a b :e hl_ty_int, exists d :e hl_ty_int, hl_int_divides d a = 1 /\ (hl_int_divides d b = 1 /\ exists x y :e hl_ty_int, d = hl_int_add (hl_int_mul a x) (hl_int_mul b y)).
Admitted.

// HOL Light: int.ml:1960 / INT_GCD_EXISTS_POS   (hash md5:1b3900d7b6feb6eef3efbcc605f4765d)
Theorem hlt_INT_GCD_EXISTS_POS : forall a b :e hl_ty_int, exists d :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_int_divides d a = 1 /\ (hl_int_divides d b = 1 /\ exists x y :e hl_ty_int, d = hl_int_add (hl_int_mul a x) (hl_int_mul b y))).
Admitted.

// HOL Light: int.ml:1976 / int_gcd   (hash md5:cc4dc0393e98852218de48c840ac1a04)
Theorem hlt_int_gcd : forall a b :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) = 1 /\ (hl_int_divides (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) a = 1 /\ (hl_int_divides (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) b = 1 /\ exists x y :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b) = hl_int_add (hl_int_mul a x) (hl_int_mul b y))).
Admitted.

// HOL Light: int.ml:1979 / int_lcm   (hash md5:3e2f81e18192fa729407cfda1c9cd015)
Theorem hlt_int_lcm : forall m n :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n) = hl_COND hl_ty_int (if hl_int_mul m n = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_div (hl_int_abs (hl_int_mul m n)) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int m n))).
Admitted.

// HOL Light: int.ml:1982 / INT_DIVIDES_LABS   (hash md5:d0405fc666157042fe61e8e6934de0eb)
Theorem hlt_INT_DIVIDES_LABS : forall d n :e hl_ty_int, hl_int_divides (hl_int_abs d) n = 1 <-> hl_int_divides d n = 1.
Admitted.

// HOL Light: int.ml:1986 / INT_DIVIDES_RABS   (hash md5:54a183ff77262d86e8880285db5b390e)
Theorem hlt_INT_DIVIDES_RABS : forall d n :e hl_ty_int, hl_int_divides d (hl_int_abs n) = 1 <-> hl_int_divides d n = 1.
Admitted.

// HOL Light: int.ml:1990 / INT_DIVIDES_ABS   (hash md5:5b524740441d5ab663e44177f1def421)
Theorem hlt_INT_DIVIDES_ABS : (forall d n :e hl_ty_int, hl_int_divides (hl_int_abs d) n = 1 <-> hl_int_divides d n = 1) /\ forall d n :e hl_ty_int, hl_int_divides d (hl_int_abs n) = 1 <-> hl_int_divides d n = 1.
Admitted.

// HOL Light: int.ml:1995 / INT_LCM_POS   (hash md5:b5e8a2fcb73512ef97b6f4e4dc197849)
Theorem hlt_INT_LCM_POS : forall m n :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) = 1.
Admitted.

// HOL Light: int.ml:2000 / INT_MUL_GCD_LCM   (hash md5:9e7edc44bf404cc3c0b1329673ba9a49)
Theorem hlt_INT_MUL_GCD_LCM : forall m n :e hl_ty_int, hl_int_mul (hl_int_gcd (hl_pair hl_ty_int hl_ty_int m n)) (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) = hl_int_abs (hl_int_mul m n).
Admitted.

// HOL Light: int.ml:2008 / INT_MUL_LCM_GCD   (hash md5:47847ad93bb9ed424129f834c06f1cfd)
Theorem hlt_INT_MUL_LCM_GCD : forall m n :e hl_ty_int, hl_int_mul (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int m n)) = hl_int_abs (hl_int_mul m n).
Admitted.

// HOL Light: int.ml:2012 / INT_DIVIDES_LCM_GCD   (hash md5:957694396f7356ea6e0ea0d772dadff6)
Theorem hlt_INT_DIVIDES_LCM_GCD : forall m n d :e hl_ty_int, hl_int_divides d (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) = 1 <-> hl_int_divides (hl_int_mul d (hl_int_gcd (hl_pair hl_ty_int hl_ty_int m n))) (hl_int_mul m n) = 1.
Admitted.

// HOL Light: int.ml:2022 / INT_LCM_DIVIDES   (hash md5:05c1c5d88fea8771868273b3083b47df)
Theorem hlt_INT_LCM_DIVIDES : forall m n d :e hl_ty_int, hl_int_divides (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) d = 1 <-> hl_int_divides m d = 1 /\ hl_int_divides n d = 1.
Admitted.

// HOL Light: int.ml:2033 / INT_LCM   (hash md5:c054e7e768e8302cd09d9c229140e065)
Theorem hlt_INT_LCM : forall m n :e hl_ty_int, hl_int_divides m (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) = 1 /\ (hl_int_divides n (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) = 1 /\ forall d :e hl_ty_int, hl_int_divides m d = 1 /\ hl_int_divides n d = 1 -> hl_int_divides (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) d = 1).
Admitted.

// HOL Light: int.ml:2071 / num_of_int   (hash md5:050bca84fac48047cdafe51481d3708c)
Theorem hlt_num_of_int : forall x :e hl_ty_int, hl_num_of_int x = hl_select omega (fun n :e omega => if hl_int_of_num n = x then 1 else 0).
Admitted.

// HOL Light: int.ml:2074 / NUM_OF_INT_OF_NUM   (hash md5:c009afb9d7386914218b003872a341e8)
Theorem hlt_NUM_OF_INT_OF_NUM : forall n :e omega, hl_num_of_int (hl_int_of_num n) = n.
Admitted.

// HOL Light: int.ml:2078 / INT_OF_NUM_OF_INT   (hash md5:9dd43ce894f2017692e90eededc92bb8)
Theorem hlt_INT_OF_NUM_OF_INT : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> hl_int_of_num (hl_num_of_int x) = x.
Admitted.

// HOL Light: int.ml:2083 / NUM_OF_INT   (hash md5:695dcc6218781ccdc6c65fb7edfe5eff)
Theorem hlt_NUM_OF_INT : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 <-> hl_int_of_num (hl_num_of_int x) = x.
Admitted.

// HOL Light: int.ml:2087 / NUM_OF_INT_ADD   (hash md5:ebd21729756b5f5b6a17dd9d6e14e1d8)
Theorem hlt_NUM_OF_INT_ADD : forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_num_of_int (hl_int_add x y) = hl_add (hl_num_of_int x) (hl_num_of_int y).
Admitted.

// HOL Light: int.ml:2093 / NUM_OF_INT_MUL   (hash md5:9502893ed777cd8ae23a877d105cb100)
Theorem hlt_NUM_OF_INT_MUL : forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_num_of_int (hl_int_mul x y) = hl_mul (hl_num_of_int x) (hl_num_of_int y).
Admitted.

// HOL Light: int.ml:2099 / NUM_OF_INT_POW   (hash md5:64a0561c1f8b4c6dbd9af7310d8f5a74)
Theorem hlt_NUM_OF_INT_POW : forall x :e hl_ty_int, forall n :e omega, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> hl_num_of_int (hl_int_pow x n) = hl_EXP (hl_num_of_int x) n.
Admitted.

// HOL Light: int.ml:2114 / num_divides   (hash md5:c56d7381d5153af98b96af09f7a0ea7c)
Theorem hlt_num_divides : forall a b :e omega, hl_num_divides a b = 1 <-> hl_int_divides (hl_int_of_num a) (hl_int_of_num b) = 1.
Admitted.

// HOL Light: int.ml:2117 / num_mod   (hash md5:e4335a2cd1f189968a27e39cf7c9bec0)
Theorem hlt_num_mod : forall n x y :e omega, hl_num_mod n x y = 1 <-> hl_int_mod (hl_int_of_num n) (hl_int_of_num x) (hl_int_of_num y) = 1.
Admitted.

// HOL Light: int.ml:2120 / num_congruent   (hash md5:0716c1ffb97b6bcb237d37b6dcbacfa2)
Theorem hlt_num_congruent : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 <-> hl_sym_3d3d hl_ty_int (hl_int_of_num x) (hl_int_of_num y) (hl_int_mod (hl_int_of_num n)) = 1.
Admitted.

// HOL Light: int.ml:2124 / num_coprime   (hash md5:a033603383a8113f0137bd5bbb618384)
Theorem hlt_num_coprime : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_of_num a) (hl_int_of_num b)) = 1.
Admitted.

// HOL Light: int.ml:2127 / num_gcd   (hash md5:88962877646a99de9617e2dde9640448)
Theorem hlt_num_gcd : forall a b :e omega, hl_num_gcd (hl_pair omega omega a b) = hl_num_of_int (hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_of_num a) (hl_int_of_num b))).
Admitted.

// HOL Light: int.ml:2130 / num_lcm   (hash md5:4d6f47880c271e3f113de43e43caa935)
Theorem hlt_num_lcm : forall a b :e omega, hl_num_lcm (hl_pair omega omega a b) = hl_num_of_int (hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_of_num a) (hl_int_of_num b))).
Admitted.

// HOL Light: int.ml:2327 / BINARY_INDUCT   (hash md5:869363624c7db47ab915a1432494e610)
Theorem hlt_BINARY_INDUCT : forall P :e 2 :^: omega, P (hl_NUMERAL hl_zero) = 1 /\ (forall n :e omega, P n = 1 -> P (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = 1 /\ P (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> forall n :e omega, P n = 1.
Admitted.

// HOL Light: int.ml:2334 / NUM_CASES_BINARY   (hash md5:6e98df0214775661103107b2b7381920)
Theorem hlt_NUM_CASES_BINARY : forall P :e 2 :^: omega, (forall n :e omega, P n = 1) <-> (forall n :e omega, P (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = 1) /\ forall n :e omega, P (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: int.ml:2338 / num_WF_DOWN   (hash md5:e78ae369138c3b7c17c51f610c71c228)
Theorem hlt_num_WF_DOWN : forall P :e 2 :^: omega, forall m :e omega, (forall n :e omega, hl_le m n = 1 -> P n = 1) /\ (forall n :e omega, hl_lt n m = 1 /\ (forall p :e omega, hl_lt n p = 1 -> P p = 1) -> P n = 1) -> forall n :e omega, P n = 1.
Admitted.

// HOL Light: int.ml:2357 / INT_REM_REM_POW_MIN   (hash md5:d334b8fa849849d2b4d889aa9fe0c20c)
Theorem hlt_INT_REM_REM_POW_MIN : forall x p :e hl_ty_int, forall m n :e omega, hl_rem (hl_rem x (hl_int_pow p m)) (hl_int_pow p n) = hl_rem x (hl_int_pow p (hl_MIN m n)).
Admitted.

// HOL Light: int.ml:2379 / NUM_GCD   (hash md5:71b969f4ff9cc7292e8e593f142bdcc9)
Theorem hlt_NUM_GCD : forall a b :e omega, hl_int_of_num (hl_num_gcd (hl_pair omega omega a b)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_of_num a) (hl_int_of_num b)).
Admitted.

// HOL Light: int.ml:2383 / NUM_LCM   (hash md5:5835913443b97f15ffa6ce8be615afcb)
Theorem hlt_NUM_LCM : forall a b :e omega, hl_int_of_num (hl_num_lcm (hl_pair omega omega a b)) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_of_num a) (hl_int_of_num b)).
Admitted.

// HOL Light: int.ml:2387 / CONG   (hash md5:724c7646174213ceafea3e62084f528f)
Theorem hlt_CONG : forall x y n :e omega, hl_sym_3d3d omega x y (hl_num_mod n) = 1 <-> hl_MOD x n = hl_MOD y n.
Admitted.

// HOL Light: int.ml:2391 / CONG_LMOD   (hash md5:cc8435758d69c43777026b9c6e3a2d76)
Theorem hlt_CONG_LMOD : forall x y n :e omega, hl_sym_3d3d omega (hl_MOD x n) y (hl_num_mod n) = 1 <-> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: int.ml:2395 / CONG_RMOD   (hash md5:9b5e1121e3c5b8f81a52b0737b342961)
Theorem hlt_CONG_RMOD : forall x y n :e omega, hl_sym_3d3d omega x (hl_MOD y n) (hl_num_mod n) = 1 <-> hl_sym_3d3d omega x y (hl_num_mod n) = 1.
Admitted.

// HOL Light: int.ml:2399 / CONG_DIV2   (hash md5:887eb65183d44b09dda623c33ddb6a8d)
Theorem hlt_CONG_DIV2 : forall a b m n :e omega, hl_sym_3d3d omega a b (hl_num_mod (hl_mul m n)) = 1 -> hl_sym_3d3d omega (hl_DIV a m) (hl_DIV b m) (hl_num_mod n) = 1.
Admitted.

// HOL Light: int.ml:2403 / divides   (hash md5:d3642b2b1aea1bc3246730597a27cd9d)
Theorem hlt_divides : forall a b :e omega, hl_num_divides a b = 1 <-> exists x :e omega, b = hl_mul a x.
Admitted.

// HOL Light: int.ml:2413 / DIVIDES_LE   (hash md5:93602e824a3effbaf8a6bca87922e929)
Theorem hlt_DIVIDES_LE : forall m n :e omega, hl_num_divides m n = 1 -> hl_le m n = 1 \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: int.ml:2421 / DIVIDES_LE_STRONG   (hash md5:ebfb4a09440c014fe8d4ebd40da7694e)
Theorem hlt_DIVIDES_LE_STRONG : forall m n :e omega, hl_num_divides m n = 1 -> hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ hl_le m n = 1 \/ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: int.ml:2427 / DIVIDES_LE_IMP   (hash md5:cb062223bb4a5669c6a359f894e8892e)
Theorem hlt_DIVIDES_LE_IMP : forall m n :e omega, hl_num_divides m n = 1 /\ (n = hl_NUMERAL hl_zero -> m = hl_NUMERAL hl_zero) -> hl_le m n = 1.
Admitted.

// HOL Light: int.ml:2431 / PROPERLY_DIVIDES_LE_IMP   (hash md5:cc745e0727346b2341fbe7898629bd1d)
Theorem hlt_PROPERLY_DIVIDES_LE_IMP : forall m n :e omega, hl_num_divides m n = 1 /\ (~ n = hl_NUMERAL hl_zero /\ ~ m = n) -> hl_le (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) m) n = 1.
Admitted.

// HOL Light: int.ml:2438 / DIVIDES_ANTISYM   (hash md5:673b7fb9f2ef7a41b45c5d9866e1be5f)
Theorem hlt_DIVIDES_ANTISYM : forall m n :e omega, hl_num_divides m n = 1 /\ hl_num_divides n m = 1 <-> m = n.
Admitted.

// HOL Light: int.ml:2445 / DIVIDES_ONE   (hash md5:fd64b6d3d2b7d667e6ba8ff9c3405dc0)
Theorem hlt_DIVIDES_ONE : forall n :e omega, hl_num_divides n (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> n = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: int.ml:2449 / DIV_ADD   (hash md5:970c15ab9dad65b89cf1c08d3bc327f1)
Theorem hlt_DIV_ADD : forall d a b :e omega, hl_num_divides d a = 1 \/ hl_num_divides d b = 1 -> hl_DIV (hl_add a b) d = hl_add (hl_DIV a d) (hl_DIV b d).
Admitted.

// HOL Light: int.ml:2457 / DIVIDES_MOD   (hash md5:28b3eb0982533ced3cbc2dc962a28e84)
Theorem hlt_DIVIDES_MOD : forall m n :e omega, hl_num_divides m n = 1 <-> hl_MOD n m = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: int.ml:2461 / DIVIDES_DIV_MULT   (hash md5:b8be1c8833ae7d467f442c698d4b0140)
Theorem hlt_DIVIDES_DIV_MULT : forall m n :e omega, hl_num_divides m n = 1 <-> hl_mul (hl_DIV n m) m = n.
Admitted.

// HOL Light: int.ml:2466 / DIV_BY_DIV   (hash md5:6158977836d11c193b73e7a5137c2ab3)
Theorem hlt_DIV_BY_DIV : forall m n :e omega, ~ n = hl_NUMERAL hl_zero /\ hl_num_divides m n = 1 -> hl_DIV n (hl_DIV n m) = m.
Admitted.

// HOL Light: int.ml:2471 / DIVIDES_DIV_DIVIDES   (hash md5:4f9ed4a25fb883a29f709aa8e2632d83)
Theorem hlt_DIVIDES_DIV_DIVIDES : forall n d e1 :e omega, hl_num_divides d n = 1 /\ (n = hl_NUMERAL hl_zero -> e1 = hl_NUMERAL hl_zero) -> (hl_num_divides (hl_DIV n d) e1 = 1 <-> hl_num_divides n (hl_mul d e1) = 1).
Admitted.

// HOL Light: int.ml:2477 / DIVIDES_DIV_SELF   (hash md5:60881d0c0adad94cda8fa69d8e6dfea3)
Theorem hlt_DIVIDES_DIV_SELF : forall n d :e omega, hl_num_divides d n = 1 -> hl_num_divides (hl_DIV n d) n = 1.
Admitted.

// HOL Light: int.ml:2481 / DIVIDES_DIVIDES_DIV   (hash md5:0ae2bdd990680c6a1d514dc9980dc566)
Theorem hlt_DIVIDES_DIVIDES_DIV : forall n d e1 :e omega, hl_num_divides d n = 1 -> (hl_num_divides e1 (hl_DIV n d) = 1 <-> hl_num_divides (hl_mul d e1) n = 1).
Admitted.

// HOL Light: int.ml:2486 / DIVIDES_DIVIDES_DIV_EQ   (hash md5:874302f2fba8510d781fd850e7d2d744)
Theorem hlt_DIVIDES_DIVIDES_DIV_EQ : forall n d e1 :e omega, hl_num_divides d n = 1 /\ hl_num_divides e1 (hl_DIV n d) = 1 <-> hl_num_divides (hl_mul d e1) n = 1.
Admitted.

// HOL Light: int.ml:2491 / DIVIDES_DIVIDES_DIV_IMP   (hash md5:f301ef94119ceb9bb1f737d2cce3fa2f)
Theorem hlt_DIVIDES_DIVIDES_DIV_IMP : forall n d e1 :e omega, hl_num_divides (hl_mul d e1) n = 1 -> hl_num_divides e1 (hl_DIV n d) = 1.
Admitted.

// HOL Light: int.ml:2495 / MULT_DIV   (hash md5:601fc17ada0ecb6f5c2f5a82f26fd3e9)
Theorem hlt_MULT_DIV : (forall m n p :e omega, hl_num_divides p m = 1 -> hl_DIV (hl_mul m n) p = hl_mul (hl_DIV m p) n) /\ forall m n p :e omega, hl_num_divides p n = 1 -> hl_DIV (hl_mul m n) p = hl_mul m (hl_DIV n p).
Admitted.

// HOL Light: int.ml:2529 / COPRIME_LMOD   (hash md5:82edd8f721fd49d9fdb847f1107441b6)
Theorem hlt_COPRIME_LMOD : forall a n :e omega, hl_num_coprime (hl_pair omega omega (hl_MOD a n) n) = 1 <-> hl_num_coprime (hl_pair omega omega a n) = 1.
Admitted.

// HOL Light: int.ml:2534 / COPRIME_RMOD   (hash md5:eba4352f0a84489e096c6c3df75885dc)
Theorem hlt_COPRIME_RMOD : forall a n :e omega, hl_num_coprime (hl_pair omega omega n (hl_MOD a n)) = 1 <-> hl_num_coprime (hl_pair omega omega n a) = 1.
Admitted.

// HOL Light: int.ml:2539 / INT_CONG_NUM_EXISTS   (hash md5:0792d2d3dc96cffba17b67f4642f41f3)
Theorem hlt_INT_CONG_NUM_EXISTS : forall x y :e hl_ty_int, (y = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1) -> exists n :e omega, hl_sym_3d3d hl_ty_int (hl_int_of_num n) x (hl_int_mod y) = 1.
Admitted.

// HOL Light: int.ml:2557 / GCD   (hash md5:7d4d9f7b3f042d6254fdf4aee87b9ac7)
Theorem hlt_GCD : forall a b :e omega, hl_num_divides (hl_num_gcd (hl_pair omega omega a b)) a = 1 /\ hl_num_divides (hl_num_gcd (hl_pair omega omega a b)) b = 1 /\ forall e1 :e omega, hl_num_divides e1 a = 1 /\ hl_num_divides e1 b = 1 -> hl_num_divides e1 (hl_num_gcd (hl_pair omega omega a b)) = 1.
Admitted.

// HOL Light: int.ml:2562 / coprime   (hash md5:c83526bbeb567461aea27548ec97d34b)
Theorem hlt_coprime : forall a b :e omega, hl_num_coprime (hl_pair omega omega a b) = 1 <-> forall d :e omega, hl_num_divides d a = 1 /\ hl_num_divides d b = 1 -> d = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: int.ml:2572 / prime   (hash md5:621cbb38fa09f55474fec032bc5c4c7f)
Theorem hlt_prime : forall p :e omega, hl_prime p = 1 <-> ~ p = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall x :e omega, hl_num_divides x p = 1 -> x = hl_NUMERAL (hl_BIT1 hl_zero) \/ x = p.
Admitted.

// HOL Light: int.ml:2575 / ONE_OR_PRIME   (hash md5:e305a145288b12549d90d601211f5121)
Theorem hlt_ONE_OR_PRIME : forall p :e omega, p = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime p = 1 <-> forall n :e omega, hl_num_divides n p = 1 -> n = hl_NUMERAL (hl_BIT1 hl_zero) \/ n = p.
Admitted.

// HOL Light: int.ml:2580 / ONE_OR_PRIME_DIVIDES_OR_COPRIME   (hash md5:cc8e9910188809abd793245177c1584e)
Theorem hlt_ONE_OR_PRIME_DIVIDES_OR_COPRIME : forall p :e omega, p = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime p = 1 <-> forall n :e omega, hl_num_divides p n = 1 \/ hl_num_coprime (hl_pair omega omega p n) = 1.
Admitted.

// HOL Light: int.ml:2590 / PRIME_COPRIME_EQ_NONDIVISIBLE   (hash md5:e8790d3239800c3d419eda004423072f)
Theorem hlt_PRIME_COPRIME_EQ_NONDIVISIBLE : forall p :e omega, hl_prime p = 1 <-> forall n :e omega, hl_num_coprime (hl_pair omega omega p n) = 1 <-> ~ hl_num_divides p n = 1.
Admitted.

// HOL Light: int.ml:2602 / ZERO_ONE_OR_PRIME_DIVPROD   (hash md5:b4800c03eb4dab79e0bc3709404d8b61)
Theorem hlt_ZERO_ONE_OR_PRIME_DIVPROD : forall p a b :e omega, p = hl_NUMERAL hl_zero \/ (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime p = 1) -> (hl_num_divides p (hl_mul a b) = 1 <-> hl_num_divides p a = 1 \/ hl_num_divides p b = 1).
Admitted.

// HOL Light: int.ml:2612 / ZERO_ONE_OR_PRIME   (hash md5:ad4b1a187c11358e9cc31d13334fa380)
Theorem hlt_ZERO_ONE_OR_PRIME : forall p :e omega, p = hl_NUMERAL hl_zero \/ (p = hl_NUMERAL (hl_BIT1 hl_zero) \/ hl_prime p = 1) <-> forall a b :e omega, hl_num_divides p (hl_mul a b) = 1 -> hl_num_divides p a = 1 \/ hl_num_divides p b = 1.
Admitted.

// HOL Light: int.ml:2638 / real_zpow   (hash md5:b33faf5f4bcbc728505e85cf918c12a8)
Theorem hlt_real_zpow : forall z :e R, forall i :e hl_ty_int, hl_real_zpow z i = hl_COND R (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) i) (hl_real_pow z (hl_num_of_int i)) (hl_real_inv (hl_real_pow z (hl_num_of_int (hl_int_neg i)))).
Admitted.

// HOL Light: int.ml:2642 / REAL_POW_ZPOW   (hash md5:2c8d138e360d550e693ef1f3cf1b679d)
Theorem hlt_REAL_POW_ZPOW : forall x :e R, forall n :e omega, hl_real_pow x n = hl_real_zpow x (hl_int_of_num n).
Admitted.

// HOL Light: int.ml:2646 / REAL_ZPOW_NUM   (hash md5:2fde84e34605fdc86b0dbc1168d69d93)
Theorem hlt_REAL_ZPOW_NUM : forall x :e R, forall n :e omega, hl_real_zpow x (hl_int_of_num n) = hl_real_pow x n.
Admitted.

// HOL Light: int.ml:2650 / REAL_ZPOW_0   (hash md5:90483bad4d23245d9f65f0717469c8bf)
Theorem hlt_REAL_ZPOW_0 : forall x :e R, hl_real_zpow x (hl_int_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: int.ml:2654 / REAL_ZPOW_1   (hash md5:6531b16427f4a368c486dd84f34f5963)
Theorem hlt_REAL_ZPOW_1 : forall x :e R, hl_real_zpow x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = x.
Admitted.

// HOL Light: int.ml:2658 / REAL_ZPOW_2   (hash md5:fa7808b41ff4729b71b1d78701bd3234)
Theorem hlt_REAL_ZPOW_2 : forall x :e R, hl_real_zpow x (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_real_mul x x.
Admitted.

// HOL Light: int.ml:2662 / REAL_ZPOW_ONE   (hash md5:df344ae95bbc42daa0d5d9c707117d11)
Theorem hlt_REAL_ZPOW_ONE : forall n :e hl_ty_int, hl_real_zpow (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) n = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: int.ml:2666 / REAL_ZPOW_NEG   (hash md5:4def477b5d813b22fe71b03d1821bd6e)
Theorem hlt_REAL_ZPOW_NEG : forall x :e R, forall n :e hl_ty_int, hl_real_zpow x (hl_int_neg n) = hl_real_inv (hl_real_zpow x n).
Admitted.

// HOL Light: int.ml:2674 / REAL_ZPOW_MINUS1   (hash md5:c765a3fe26460ea177cb5d45f866cd81)
Theorem hlt_REAL_ZPOW_MINUS1 : forall x :e R, hl_real_zpow x (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_real_inv x.
Admitted.

// HOL Light: int.ml:2678 / REAL_ZPOW_ZERO   (hash md5:36618778d7600bd5a69c83d027989040)
Theorem hlt_REAL_ZPOW_ZERO : forall n :e hl_ty_int, hl_real_zpow (hl_real_of_num (hl_NUMERAL hl_zero)) n = hl_COND R (if n = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: int.ml:2684 / REAL_ZPOW_POW   (hash md5:889568b4f1ecc0d8f349de8cd44955ad)
Theorem hlt_REAL_ZPOW_POW : (forall x :e R, forall n :e omega, hl_real_zpow x (hl_int_of_num n) = hl_real_pow x n) /\ forall x :e R, forall n :e omega, hl_real_zpow x (hl_int_neg (hl_int_of_num n)) = hl_real_inv (hl_real_pow x n).
Admitted.

// HOL Light: int.ml:2689 / REAL_INV_ZPOW   (hash md5:1da55970f152af7a41cbf73e5b7800e1)
Theorem hlt_REAL_INV_ZPOW : forall x :e R, forall n :e hl_ty_int, hl_real_inv (hl_real_zpow x n) = hl_real_zpow (hl_real_inv x) n.
Admitted.

// HOL Light: int.ml:2694 / REAL_ZPOW_INV   (hash md5:ca3c204f9dd61c984732d2d066c97782)
Theorem hlt_REAL_ZPOW_INV : forall x :e R, forall n :e hl_ty_int, hl_real_zpow (hl_real_inv x) n = hl_real_inv (hl_real_zpow x n).
Admitted.

// HOL Light: int.ml:2698 / REAL_ZPOW_ZPOW   (hash md5:2b88b701320e2ee8201a3329bff38ee0)
Theorem hlt_REAL_ZPOW_ZPOW : forall x :e R, forall m n :e hl_ty_int, hl_real_zpow (hl_real_zpow x m) n = hl_real_zpow x (hl_int_mul m n).
Admitted.

// HOL Light: int.ml:2704 / REAL_ZPOW_MUL   (hash md5:c2181ede698e970d3ad450de52443d15)
Theorem hlt_REAL_ZPOW_MUL : forall x y :e R, forall n :e hl_ty_int, hl_real_zpow (hl_real_mul x y) n = hl_real_mul (hl_real_zpow x n) (hl_real_zpow y n).
Admitted.

// HOL Light: int.ml:2708 / REAL_ZPOW_DIV   (hash md5:030b0b8fb50defaad67a963cf972b8a3)
Theorem hlt_REAL_ZPOW_DIV : forall x y :e R, forall n :e hl_ty_int, hl_real_zpow (hl_real_div x y) n = hl_real_div (hl_real_zpow x n) (hl_real_zpow y n).
Admitted.

// HOL Light: int.ml:2712 / REAL_ZPOW_ADD   (hash md5:807036becae3adb5c8411741bf45d2ba)
Theorem hlt_REAL_ZPOW_ADD : forall x :e R, forall m n :e hl_ty_int, ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_zpow x (hl_int_add m n) = hl_real_mul (hl_real_zpow x m) (hl_real_zpow x n).
Admitted.

// HOL Light: int.ml:2733 / REAL_ZPOW_SUB   (hash md5:65438ed4571260051c64b0635e680b52)
Theorem hlt_REAL_ZPOW_SUB : forall x :e R, forall m n :e hl_ty_int, ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_zpow x (hl_int_sub m n) = hl_real_div (hl_real_zpow x m) (hl_real_zpow x n).
Admitted.

// HOL Light: int.ml:2738 / REAL_ZPOW_LE   (hash md5:e5222c5aa208984c1a66bfea888d3582)
Theorem hlt_REAL_ZPOW_LE : forall x :e R, forall n :e hl_ty_int, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_zpow x n) = 1.
Admitted.

// HOL Light: int.ml:2742 / REAL_ZPOW_LT   (hash md5:3063aacc9e676ae1ce3ca1eb33f07e44)
Theorem hlt_REAL_ZPOW_LT : forall x :e R, forall n :e hl_ty_int, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_zpow x n) = 1.
Admitted.

// HOL Light: int.ml:2746 / REAL_ZPOW_EQ_0   (hash md5:cf900b043db93b9db4a01b5dff2ba557)
Theorem hlt_REAL_ZPOW_EQ_0 : forall x :e R, forall n :e hl_ty_int, hl_real_zpow x n = hl_real_of_num (hl_NUMERAL hl_zero) <-> x = hl_real_of_num (hl_NUMERAL hl_zero) /\ ~ n = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: int.ml:2751 / REAL_ABS_ZPOW   (hash md5:ca5a1da96d961f15d24f9cf6dc27539e)
Theorem hlt_REAL_ABS_ZPOW : forall x :e R, forall n :e hl_ty_int, hl_real_abs (hl_real_zpow x n) = hl_real_zpow (hl_real_abs x) n.
Admitted.

// HOL Light: int.ml:2755 / REAL_SGN_ZPOW   (hash md5:1600598a3fb9852e14a7edbc546a9162)
Theorem hlt_REAL_SGN_ZPOW : forall x :e R, forall n :e hl_ty_int, hl_real_sgn (hl_real_zpow x n) = hl_real_zpow (hl_real_sgn x) n.
Admitted.

