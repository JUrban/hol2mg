// hol2mg literal statements (private): shard integer of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/integer.ml:13 / INT_DIVIDES_REFL   (hash md5:748f25ba07c43b35fc0001e9555fdc36)
Theorem hlt_INT_DIVIDES_REFL : forall d :e hl_ty_int, hl_int_divides d d = 1.
Admitted.

// HOL Light: Library/integer.ml:16 / INT_DIVIDES_TRANS   (hash md5:502c68da98fe968af6563c141f0de1db)
Theorem hlt_INT_DIVIDES_TRANS : forall x y z :e hl_ty_int, hl_int_divides x y = 1 /\ hl_int_divides y z = 1 -> hl_int_divides x z = 1.
Admitted.

// HOL Light: Library/integer.ml:19 / INT_DIVIDES_ADD   (hash md5:a974a5749a1cbbcd89437f97d07bcd29)
Theorem hlt_INT_DIVIDES_ADD : forall d a b :e hl_ty_int, hl_int_divides d a = 1 /\ hl_int_divides d b = 1 -> hl_int_divides d (hl_int_add a b) = 1.
Admitted.

// HOL Light: Library/integer.ml:22 / INT_DIVIDES_SUB   (hash md5:db0b932976c13baca890945b699d48b3)
Theorem hlt_INT_DIVIDES_SUB : forall d a b :e hl_ty_int, hl_int_divides d a = 1 /\ hl_int_divides d b = 1 -> hl_int_divides d (hl_int_sub a b) = 1.
Admitted.

// HOL Light: Library/integer.ml:25 / INT_DIVIDES_0   (hash md5:72debbfade2e961e0b6d9521e3b9aa7a)
Theorem hlt_INT_DIVIDES_0 : forall d :e hl_ty_int, hl_int_divides d (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Library/integer.ml:28 / INT_DIVIDES_ZERO   (hash md5:a71955b0bee95e87f99795710a82e32f)
Theorem hlt_INT_DIVIDES_ZERO : forall x :e hl_ty_int, hl_int_divides (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 <-> x = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/integer.ml:31 / INT_DIVIDES_LNEG   (hash md5:8043bc919bb45ae68a04875766a0183a)
Theorem hlt_INT_DIVIDES_LNEG : forall d x :e hl_ty_int, hl_int_divides (hl_int_neg d) x = 1 <-> hl_int_divides d x = 1.
Admitted.

// HOL Light: Library/integer.ml:34 / INT_DIVIDES_RNEG   (hash md5:54019e323de61ee2f6bb9df5805946e2)
Theorem hlt_INT_DIVIDES_RNEG : forall d x :e hl_ty_int, hl_int_divides d (hl_int_neg x) = 1 <-> hl_int_divides d x = 1.
Admitted.

// HOL Light: Library/integer.ml:37 / INT_DIVIDES_RMUL   (hash md5:b62c779befcf39d545d67627f3cfc3c8)
Theorem hlt_INT_DIVIDES_RMUL : forall d x y :e hl_ty_int, hl_int_divides d x = 1 -> hl_int_divides d (hl_int_mul x y) = 1.
Admitted.

// HOL Light: Library/integer.ml:40 / INT_DIVIDES_LMUL   (hash md5:e9ec5b380b73e7fb0fbd2b8f72212a44)
Theorem hlt_INT_DIVIDES_LMUL : forall d x y :e hl_ty_int, hl_int_divides d y = 1 -> hl_int_divides d (hl_int_mul x y) = 1.
Admitted.

// HOL Light: Library/integer.ml:43 / INT_DIVIDES_1   (hash md5:780552d6097941cc38d9398d9798622c)
Theorem hlt_INT_DIVIDES_1 : forall x :e hl_ty_int, hl_int_divides (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = 1.
Admitted.

// HOL Light: Library/integer.ml:46 / INT_DIVIDES_ADD_REVR   (hash md5:0f9217119bf3516824edc4fc0912f7fd)
Theorem hlt_INT_DIVIDES_ADD_REVR : forall d a b :e hl_ty_int, hl_int_divides d a = 1 /\ hl_int_divides d (hl_int_add a b) = 1 -> hl_int_divides d b = 1.
Admitted.

// HOL Light: Library/integer.ml:49 / INT_DIVIDES_ADD_REVL   (hash md5:86d4fd945703f7134dbef19c3b587c2e)
Theorem hlt_INT_DIVIDES_ADD_REVL : forall d a b :e hl_ty_int, hl_int_divides d b = 1 /\ hl_int_divides d (hl_int_add a b) = 1 -> hl_int_divides d a = 1.
Admitted.

// HOL Light: Library/integer.ml:52 / INT_DIVIDES_MUL_L   (hash md5:f6e2b698836302db6988085d50c55db2)
Theorem hlt_INT_DIVIDES_MUL_L : forall a b c :e hl_ty_int, hl_int_divides a b = 1 -> hl_int_divides (hl_int_mul c a) (hl_int_mul c b) = 1.
Admitted.

// HOL Light: Library/integer.ml:55 / INT_DIVIDES_MUL_R   (hash md5:5a0ef843135f500a9d0679c0e985d274)
Theorem hlt_INT_DIVIDES_MUL_R : forall a b c :e hl_ty_int, hl_int_divides a b = 1 -> hl_int_divides (hl_int_mul a c) (hl_int_mul b c) = 1.
Admitted.

// HOL Light: Library/integer.ml:58 / INT_DIVIDES_LMUL2   (hash md5:49fbeb076e22507100d640c6f2f3dc29)
Theorem hlt_INT_DIVIDES_LMUL2 : forall d a x :e hl_ty_int, hl_int_divides (hl_int_mul x d) a = 1 -> hl_int_divides d a = 1.
Admitted.

// HOL Light: Library/integer.ml:61 / INT_DIVIDES_RMUL2   (hash md5:51c30f5d0846080da901dcb04016cf3a)
Theorem hlt_INT_DIVIDES_RMUL2 : forall d a x :e hl_ty_int, hl_int_divides (hl_int_mul d x) a = 1 -> hl_int_divides d a = 1.
Admitted.

// HOL Light: Library/integer.ml:64 / INT_DIVIDES_CMUL2   (hash md5:13b47cd1d33b4388ea54a79f36fcfe34)
Theorem hlt_INT_DIVIDES_CMUL2 : forall a b c :e hl_ty_int, hl_int_divides (hl_int_mul c a) (hl_int_mul c b) = 1 /\ ~ c = hl_int_of_num (hl_NUMERAL hl_zero) -> hl_int_divides a b = 1.
Admitted.

// HOL Light: Library/integer.ml:67 / INT_DIVIDES_LMUL2_EQ   (hash md5:c7394167b48cf263f0f95bdda302d603)
Theorem hlt_INT_DIVIDES_LMUL2_EQ : forall a b c :e hl_ty_int, ~ c = hl_int_of_num (hl_NUMERAL hl_zero) -> (hl_int_divides (hl_int_mul c a) (hl_int_mul c b) = 1 <-> hl_int_divides a b = 1).
Admitted.

// HOL Light: Library/integer.ml:70 / INT_DIVIDES_RMUL2_EQ   (hash md5:a1b3ab5cffe79da58e6822b784abc9d1)
Theorem hlt_INT_DIVIDES_RMUL2_EQ : forall a b c :e hl_ty_int, ~ c = hl_int_of_num (hl_NUMERAL hl_zero) -> (hl_int_divides (hl_int_mul a c) (hl_int_mul b c) = 1 <-> hl_int_divides a b = 1).
Admitted.

// HOL Light: Library/integer.ml:73 / INT_DIVIDES_MUL2   (hash md5:c74db5e5863bca6cc846415e22a3ec42)
Theorem hlt_INT_DIVIDES_MUL2 : forall a b c d :e hl_ty_int, hl_int_divides a b = 1 /\ hl_int_divides c d = 1 -> hl_int_divides (hl_int_mul a c) (hl_int_mul b d) = 1.
Admitted.

// HOL Light: Library/integer.ml:76 / INT_DIVIDES_POW   (hash md5:b27c859a543a14a271916cb6c6ac3b1e)
Theorem hlt_INT_DIVIDES_POW : forall x y :e hl_ty_int, forall n :e omega, hl_int_divides x y = 1 -> hl_int_divides (hl_int_pow x n) (hl_int_pow y n) = 1.
Admitted.

// HOL Light: Library/integer.ml:80 / INT_DIVIDES_POW2   (hash md5:be36d18724580bddfa2d4cab589f095b)
Theorem hlt_INT_DIVIDES_POW2 : forall n :e omega, forall x y :e hl_ty_int, ~ n = hl_NUMERAL hl_zero /\ hl_int_divides (hl_int_pow x n) y = 1 -> hl_int_divides x y = 1.
Admitted.

// HOL Light: Library/integer.ml:84 / INT_DIVIDES_RPOW   (hash md5:fa28ec5300e8a97280ad7f02127a8fc2)
Theorem hlt_INT_DIVIDES_RPOW : forall x y :e hl_ty_int, forall n :e omega, hl_int_divides x y = 1 /\ ~ n = hl_NUMERAL hl_zero -> hl_int_divides x (hl_int_pow y n) = 1.
Admitted.

// HOL Light: Library/integer.ml:89 / INT_DIVIDES_RPOW_SUC   (hash md5:e6166567f3d8827b01a97f12f0f801e1)
Theorem hlt_INT_DIVIDES_RPOW_SUC : forall x y :e hl_ty_int, forall n :e omega, hl_int_divides x y = 1 -> hl_int_divides x (hl_int_pow y (hl_SUC n)) = 1.
Admitted.

// HOL Light: Library/integer.ml:93 / INT_DIVIDES_POW_LE_IMP   (hash md5:8067664dac10a8018861752176d1ac0d)
Theorem hlt_INT_DIVIDES_POW_LE_IMP : forall p :e hl_ty_int, forall m n :e omega, hl_le m n = 1 -> hl_int_divides (hl_int_pow p m) (hl_int_pow p n) = 1.
Admitted.

// HOL Light: Library/integer.ml:98 / INT_DIVIDES_ANTISYM_DIVISORS   (hash md5:8a1cd6caee6efb7689e22186947f2f80)
Theorem hlt_INT_DIVIDES_ANTISYM_DIVISORS : forall a b :e hl_ty_int, hl_int_divides a b = 1 /\ hl_int_divides b a = 1 <-> forall d :e hl_ty_int, hl_int_divides d a = 1 <-> hl_int_divides d b = 1.
Admitted.

// HOL Light: Library/integer.ml:102 / INT_DIVIDES_ANTISYM_MULTIPLES   (hash md5:b489a84e76af9338d10fab291e24fd59)
Theorem hlt_INT_DIVIDES_ANTISYM_MULTIPLES : forall a b :e hl_ty_int, hl_int_divides a b = 1 /\ hl_int_divides b a = 1 <-> forall d :e hl_ty_int, hl_int_divides a d = 1 <-> hl_int_divides b d = 1.
Admitted.

// HOL Light: Library/integer.ml:110 / INT_DIVIDES_ONE_POS   (hash md5:3b53c7643098f9b7f13aa90c8eacac9d)
Theorem hlt_INT_DIVIDES_ONE_POS : forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 -> (hl_int_divides x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 <-> x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/integer.ml:117 / INT_DIVIDES_ONE_ABS   (hash md5:df1e768d05181fa77bb3ec93e4f49713)
Theorem hlt_INT_DIVIDES_ONE_ABS : forall d :e hl_ty_int, hl_int_divides d (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 <-> hl_int_abs d = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/integer.ml:121 / INT_DIVIDES_ONE   (hash md5:727ef49290708c0cfb5f2cfb47df054b)
Theorem hlt_INT_DIVIDES_ONE : forall d :e hl_ty_int, hl_int_divides d (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 <-> d = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ d = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/integer.ml:125 / INT_DIVIDES_ANTISYM_ASSOCIATED   (hash md5:4905f81ce40eed1bf9b84a9e99c91a3d)
Theorem hlt_INT_DIVIDES_ANTISYM_ASSOCIATED : forall x y :e hl_ty_int, hl_int_divides x y = 1 /\ hl_int_divides y x = 1 <-> exists u :e hl_ty_int, hl_int_divides u (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ x = hl_int_mul y u.
Admitted.

// HOL Light: Library/integer.ml:132 / INT_DIVIDES_ANTISYM   (hash md5:66015ed01792707e836914c9a67d4dd5)
Theorem hlt_INT_DIVIDES_ANTISYM : forall x y :e hl_ty_int, hl_int_divides x y = 1 /\ hl_int_divides y x = 1 <-> x = y \/ x = hl_int_neg y.
Admitted.

// HOL Light: Library/integer.ml:138 / INT_DIVIDES_ANTISYM_ABS   (hash md5:28ba5e5c4bcd735892ae3bb238cbd0b5)
Theorem hlt_INT_DIVIDES_ANTISYM_ABS : forall x y :e hl_ty_int, hl_int_divides x y = 1 /\ hl_int_divides y x = 1 <-> hl_int_abs x = hl_int_abs y.
Admitted.

// HOL Light: Library/integer.ml:142 / INT_DIVIDES_ANTISYM_POS   (hash md5:1f15611dc04d007e5d1a68a9e93d985f)
Theorem hlt_INT_DIVIDES_ANTISYM_POS : forall x y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 -> (hl_int_divides x y = 1 /\ hl_int_divides y x = 1 <-> x = y).
Admitted.

// HOL Light: Library/integer.ml:150 / INT_GCD_POS   (hash md5:c041340ceb7148ca42e78b438653aabe)
Theorem hlt_INT_GCD_POS : forall a b :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) = 1.
Admitted.

// HOL Light: Library/integer.ml:154 / INT_ABS_GCD   (hash md5:2a23011fdbd76bea8fff9e38570c6a31)
Theorem hlt_INT_ABS_GCD : forall a b :e hl_ty_int, hl_int_abs (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:158 / INT_GCD_DIVIDES   (hash md5:d3224e4c7d06e7fe14f3c99f106f3e01)
Theorem hlt_INT_GCD_DIVIDES : forall a b :e hl_ty_int, hl_int_divides (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) a = 1 /\ hl_int_divides (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) b = 1.
Admitted.

// HOL Light: Library/integer.ml:162 / INT_COPRIME_GCD   (hash md5:60ce1d465c214ba48f747c87aeb91320)
Theorem hlt_INT_COPRIME_GCD : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 <-> hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/integer.ml:166 / INT_GCD_BEZOUT   (hash md5:3f6681643c50ff838d1b41e551046801)
Theorem hlt_INT_GCD_BEZOUT : forall a b :e hl_ty_int, exists x y :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b) = hl_int_add (hl_int_mul a x) (hl_int_mul b y).
Admitted.

// HOL Light: Library/integer.ml:170 / INT_DIVIDES_GCD   (hash md5:5e492b958368aae57ef38fc955be2aca)
Theorem hlt_INT_DIVIDES_GCD : forall a b d :e hl_ty_int, hl_int_divides d (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) = 1 <-> hl_int_divides d a = 1 /\ hl_int_divides d b = 1.
Admitted.

// HOL Light: Library/integer.ml:174 / INT_GCD   (hash md5:694e991fa46fc6cdd967b4d1069f04c3)
Theorem hlt_INT_GCD : forall a b :e hl_ty_int, hl_int_divides (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) a = 1 /\ hl_int_divides (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) b = 1 /\ forall e1 :e hl_ty_int, hl_int_divides e1 a = 1 /\ hl_int_divides e1 b = 1 -> hl_int_divides e1 (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) = 1.
Admitted.

// HOL Light: Library/integer.ml:178 / INT_GCD_UNIQUE   (hash md5:f329e10af86f282e682a0580c33e6487)
Theorem hlt_INT_GCD_UNIQUE : forall a b d :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b) = d <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_int_divides d a = 1 /\ (hl_int_divides d b = 1 /\ forall e1 :e hl_ty_int, hl_int_divides e1 a = 1 /\ hl_int_divides e1 b = 1 -> hl_int_divides e1 d = 1)).
Admitted.

// HOL Light: Library/integer.ml:186 / INT_GCD_UNIQUE_ABS   (hash md5:b5ef77cd7e5023510ad78f4b435aa99f)
Theorem hlt_INT_GCD_UNIQUE_ABS : forall a b d :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b) = hl_int_abs d <-> hl_int_divides d a = 1 /\ (hl_int_divides d b = 1 /\ forall e1 :e hl_ty_int, hl_int_divides e1 a = 1 /\ hl_int_divides e1 b = 1 -> hl_int_divides e1 d = 1).
Admitted.

// HOL Light: Library/integer.ml:192 / INT_GCD_REFL   (hash md5:aab103a9eda7e332f5ee45394fff04a9)
Theorem hlt_INT_GCD_REFL : forall a :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a a) = hl_int_abs a.
Admitted.

// HOL Light: Library/integer.ml:196 / INT_GCD_SYM   (hash md5:ca1d142f49a5060bd766ca9bda99b1f1)
Theorem hlt_INT_GCD_SYM : forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int b a).
Admitted.

// HOL Light: Library/integer.ml:200 / INT_GCD_ASSOC   (hash md5:31f7a9385a0d3f087966012fcbe1e067)
Theorem hlt_INT_GCD_ASSOC : forall a b c :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_gcd (hl_pair hl_ty_int hl_ty_int b c))) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) c).
Admitted.

// HOL Light: Library/integer.ml:204 / INT_GCD_1   (hash md5:8c05a2814d89ae44c86f72264d391655)
Theorem hlt_INT_GCD_1 : forall a :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) a) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/integer.ml:208 / INT_GCD_0   (hash md5:d732ec6774a1271da9ad8d42973ce783)
Theorem hlt_INT_GCD_0 : forall a :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_of_num (hl_NUMERAL hl_zero))) = hl_int_abs a /\ hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_NUMERAL hl_zero)) a) = hl_int_abs a.
Admitted.

// HOL Light: Library/integer.ml:212 / INT_GCD_EQ_0   (hash md5:77c963a4562e6d6bb10302c3d044ff85)
Theorem hlt_INT_GCD_EQ_0 : forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b) = hl_int_of_num (hl_NUMERAL hl_zero) <-> a = hl_int_of_num (hl_NUMERAL hl_zero) /\ b = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/integer.ml:224 / INT_GCD_ADD   (hash md5:e7151b9cd2281a0ef3b416535375f861)
Theorem hlt_INT_GCD_ADD : (forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_add a b) b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ ((forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_add b a) b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ ((forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_add a b)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_add b a)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b))).
Admitted.

// HOL Light: Library/integer.ml:231 / INT_GCD_SUB   (hash md5:f03889eaa47ae61da6597cb98f9df2e2)
Theorem hlt_INT_GCD_SUB : (forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_sub a b) b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ ((forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_sub b a) b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ ((forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_sub a b)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_sub b a)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b))).
Admitted.

// HOL Light: Library/integer.ml:238 / INT_DIVIDES_GCD_LEFT   (hash md5:6fb1e662bbcbc4ba99b60a05d2f36750)
Theorem hlt_INT_DIVIDES_GCD_LEFT : forall m n :e hl_ty_int, hl_int_divides m n = 1 <-> hl_int_gcd (hl_pair hl_ty_int hl_ty_int m n) = hl_int_abs m.
Admitted.

// HOL Light: Library/integer.ml:243 / INT_DIVIDES_GCD_RIGHT   (hash md5:0fd20a8f58e451833e80eaa8c43d8fd1)
Theorem hlt_INT_DIVIDES_GCD_RIGHT : forall m n :e hl_ty_int, hl_int_divides n m = 1 <-> hl_int_gcd (hl_pair hl_ty_int hl_ty_int m n) = hl_int_abs n.
Admitted.

// HOL Light: Library/integer.ml:248 / INT_GCD_EQ   (hash md5:d70f32f7759bfabc9b752aa7387c89cf)
Theorem hlt_INT_GCD_EQ : forall x y u v :e hl_ty_int, (forall d :e hl_ty_int, hl_int_divides d x = 1 /\ hl_int_divides d y = 1 <-> hl_int_divides d u = 1 /\ hl_int_divides d v = 1) -> hl_int_gcd (hl_pair hl_ty_int hl_ty_int x y) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int u v).
Admitted.

// HOL Light: Library/integer.ml:258 / INT_GCD_LNEG   (hash md5:03bf827fd4f02deb8fef4dfdc8f24ddd)
Theorem hlt_INT_GCD_LNEG : forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_neg a) b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:262 / INT_GCD_RNEG   (hash md5:481d711b7d438a29874a99ecd8c4f576)
Theorem hlt_INT_GCD_RNEG : forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_neg b)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:266 / INT_GCD_NEG   (hash md5:c85fad943e926fae5d4226f6c04e7385)
Theorem hlt_INT_GCD_NEG : (forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_neg a) b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_neg b)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:271 / INT_GCD_LABS   (hash md5:3a71a3e179126b284874bb4037d20f3e)
Theorem hlt_INT_GCD_LABS : forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_abs a) b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:275 / INT_GCD_RABS   (hash md5:77177f221b705f92aabf2c97adf2843f)
Theorem hlt_INT_GCD_RABS : forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_abs b)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:279 / INT_GCD_ABS   (hash md5:830ca3579ee75633ac169e014712489f)
Theorem hlt_INT_GCD_ABS : (forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_abs a) b) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ forall a b :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_abs b)) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:284 / INT_GCD_LMUL   (hash md5:7a218b4e08e7b09d58e1df3d564ef2d9)
Theorem hlt_INT_GCD_LMUL : forall a b c :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_mul c a) (hl_int_mul c b)) = hl_int_mul (hl_int_abs c) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)).
Admitted.

// HOL Light: Library/integer.ml:289 / INT_GCD_RMUL   (hash md5:400501b6d10e66f042234c407ee19b0c)
Theorem hlt_INT_GCD_RMUL : forall a b c :e hl_ty_int, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_mul a c) (hl_int_mul b c)) = hl_int_mul (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) (hl_int_abs c).
Admitted.

// HOL Light: Library/integer.ml:293 / INT_GCD_COPRIME_LMUL   (hash md5:7ec9bcba0064f7c864b5766b262ad45e)
Theorem hlt_INT_GCD_COPRIME_LMUL : forall a b c :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 -> hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_mul a b) c) = hl_int_mul (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a c)) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int b c)).
Admitted.

// HOL Light: Library/integer.ml:298 / INT_GCD_COPRIME_RMUL   (hash md5:cb9a261d073f77df5a9ab888cc167dd3)
Theorem hlt_INT_GCD_COPRIME_RMUL : forall a b c :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int b c) = 1 -> hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_mul b c)) = hl_int_mul (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a c)).
Admitted.

// HOL Light: Library/integer.ml:302 / INT_GCD_COPRIME_DIVIDES_LMUL   (hash md5:e85c1fafecbb84241f6aa2d4929606a9)
Theorem hlt_INT_GCD_COPRIME_DIVIDES_LMUL : forall a b c :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 /\ hl_int_divides a c = 1 -> hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_mul a b) c) = hl_int_mul (hl_int_abs a) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int b c)).
Admitted.

// HOL Light: Library/integer.ml:308 / INT_GCD_COPRIME_DIVIDES_RMUL   (hash md5:73a9e0d2857f75d9f05209f302a691f2)
Theorem hlt_INT_GCD_COPRIME_DIVIDES_RMUL : forall a b c :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int b c) = 1 /\ hl_int_divides b a = 1 -> hl_int_gcd (hl_pair hl_ty_int hl_ty_int a (hl_int_mul b c)) = hl_int_mul (hl_int_abs b) (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a c)).
Admitted.

// HOL Light: Library/integer.ml:314 / INT_GCD_COPRIME_EXISTS   (hash md5:c228e42d24b94d165497d28b85521f19)
Theorem hlt_INT_GCD_COPRIME_EXISTS : forall a b :e hl_ty_int, exists a' b' :e hl_ty_int, a = hl_int_mul a' (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ (b = hl_int_mul b' (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int a' b') = 1).
Admitted.

// HOL Light: Library/integer.ml:326 / INT_ABS_LCM   (hash md5:3441839bcbf1d0faafdf925d58c6ae58)
Theorem hlt_INT_ABS_LCM : forall a b :e hl_ty_int, hl_int_abs (hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b)) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:330 / INT_LCM_EQ_0   (hash md5:027d2313c13992ccda3f15397bdf5b3d)
Theorem hlt_INT_LCM_EQ_0 : forall m n :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n) = hl_int_of_num (hl_NUMERAL hl_zero) <-> m = hl_int_of_num (hl_NUMERAL hl_zero) \/ n = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/integer.ml:335 / INT_DIVIDES_LCM   (hash md5:2d4061c02b0cae2ba266edc8bdcecc8c)
Theorem hlt_INT_DIVIDES_LCM : forall m n r :e hl_ty_int, hl_int_divides r m = 1 \/ hl_int_divides r n = 1 -> hl_int_divides r (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) = 1.
Admitted.

// HOL Light: Library/integer.ml:339 / INT_LCM_0   (hash md5:5bb00c475ac3297232babdf412afa826)
Theorem hlt_INT_LCM_0 : (forall n :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_NUMERAL hl_zero)) n) = hl_int_of_num (hl_NUMERAL hl_zero)) /\ forall n :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int n (hl_int_of_num (hl_NUMERAL hl_zero))) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/integer.ml:343 / INT_LCM_1   (hash md5:d9d00a73d8351ec549fc3aa2116f0284)
Theorem hlt_INT_LCM_1 : (forall n :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) n) = hl_int_abs n) /\ forall n :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = hl_int_abs n.
Admitted.

// HOL Light: Library/integer.ml:349 / INT_LCM_UNIQUE_ABS   (hash md5:eacdf83913c2479d6fc7d7b15ea1c2ca)
Theorem hlt_INT_LCM_UNIQUE_ABS : forall a b m :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b) = hl_int_abs m <-> hl_int_divides a m = 1 /\ (hl_int_divides b m = 1 /\ forall n :e hl_ty_int, hl_int_divides a n = 1 /\ hl_int_divides b n = 1 -> hl_int_divides m n = 1).
Admitted.

// HOL Light: Library/integer.ml:360 / INT_LCM_UNIQUE   (hash md5:70055e9fc350abf76cd74fe334d5c40f)
Theorem hlt_INT_LCM_UNIQUE : forall a b m :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b) = m <-> hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) m = 1 /\ (hl_int_divides a m = 1 /\ (hl_int_divides b m = 1 /\ forall n :e hl_ty_int, hl_int_divides a n = 1 /\ hl_int_divides b n = 1 -> hl_int_divides m n = 1)).
Admitted.

// HOL Light: Library/integer.ml:370 / INT_LCM_EQ   (hash md5:c316180952361e0cb4ee7f03e59335ed)
Theorem hlt_INT_LCM_EQ : forall x y u v :e hl_ty_int, (forall m :e hl_ty_int, hl_int_divides x m = 1 /\ hl_int_divides y m = 1 <-> hl_int_divides u m = 1 /\ hl_int_divides v m = 1) -> hl_int_lcm (hl_pair hl_ty_int hl_ty_int x y) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int u v).
Admitted.

// HOL Light: Library/integer.ml:378 / INT_LCM_REFL   (hash md5:dd7785460c48c6056a2515675e9bfe6c)
Theorem hlt_INT_LCM_REFL : forall n :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int n n) = hl_int_abs n.
Admitted.

// HOL Light: Library/integer.ml:385 / INT_LCM_SYM   (hash md5:5790e75ce251c6f803f90d8e9330a58e)
Theorem hlt_INT_LCM_SYM : forall m n :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int n m).
Admitted.

// HOL Light: Library/integer.ml:389 / INT_LCM_ASSOC   (hash md5:4d895e00c9c36a5f48a193cdec4a4fe5)
Theorem hlt_INT_LCM_ASSOC : forall m n p :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int m (hl_int_lcm (hl_pair hl_ty_int hl_ty_int n p))) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_lcm (hl_pair hl_ty_int hl_ty_int m n)) p).
Admitted.

// HOL Light: Library/integer.ml:395 / INT_LCM_LNEG   (hash md5:6ea814f1dbf3beaf7087b928095701dc)
Theorem hlt_INT_LCM_LNEG : forall a b :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_neg a) b) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:399 / INT_LCM_RNEG   (hash md5:3a7edf15e83405913747f36f27c76057)
Theorem hlt_INT_LCM_RNEG : forall a b :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int a (hl_int_neg b)) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:403 / INT_LCM_NEG   (hash md5:e9dc4b742b461c2e524db4cfcaa149af)
Theorem hlt_INT_LCM_NEG : (forall a b :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_neg a) b) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b)) /\ forall a b :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int a (hl_int_neg b)) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:408 / INT_LCM_LABS   (hash md5:d3cc2f60e8122f59a36e2bcaa55f0e51)
Theorem hlt_INT_LCM_LABS : forall a b :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_abs a) b) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:412 / INT_LCM_RABS   (hash md5:c299bf0c53931c4ea93f927020732915)
Theorem hlt_INT_LCM_RABS : forall a b :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int a (hl_int_abs b)) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:416 / INT_LCM_ABS   (hash md5:73a34483b282108f0d0d03efcaa72567)
Theorem hlt_INT_LCM_ABS : (forall a b :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_abs a) b) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b)) /\ forall a b :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int a (hl_int_abs b)) = hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b).
Admitted.

// HOL Light: Library/integer.ml:421 / INT_LCM_LMUL   (hash md5:15b4e4e8d99193d45ef939db7aea9144)
Theorem hlt_INT_LCM_LMUL : forall a b c :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_mul c a) (hl_int_mul c b)) = hl_int_mul (hl_int_abs c) (hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b)).
Admitted.

// HOL Light: Library/integer.ml:433 / INT_LCM_RMUL   (hash md5:13edd6e4e1ff627c4ea7ece24d4eebeb)
Theorem hlt_INT_LCM_RMUL : forall a b c :e hl_ty_int, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_mul a c) (hl_int_mul b c)) = hl_int_mul (hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b)) (hl_int_abs c).
Admitted.

// HOL Light: Library/integer.ml:441 / INT_COPRIME   (hash md5:4a2c22bcd9b934b85020426fdd6ca92d)
Theorem hlt_INT_COPRIME : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 <-> forall d :e hl_ty_int, hl_int_divides d a = 1 /\ hl_int_divides d b = 1 -> hl_int_divides d (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/integer.ml:445 / INT_COPRIME_ALT   (hash md5:324c0f0909310c02f2e6ad350422948d)
Theorem hlt_INT_COPRIME_ALT : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 <-> forall d :e hl_ty_int, hl_int_divides d a = 1 /\ hl_int_divides d b = 1 <-> hl_int_divides d (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/integer.ml:449 / INT_COPRIME_SYM   (hash md5:bafff77ab9bad960936d65099ba96d14)
Theorem hlt_INT_COPRIME_SYM : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int b a) = 1.
Admitted.

// HOL Light: Library/integer.ml:453 / INT_COPRIME_DIVPROD   (hash md5:e5721444d20792220735799bdd7273af)
Theorem hlt_INT_COPRIME_DIVPROD : forall d a b :e hl_ty_int, hl_int_divides d (hl_int_mul a b) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int d a) = 1 -> hl_int_divides d b = 1.
Admitted.

// HOL Light: Library/integer.ml:457 / INT_COPRIME_1   (hash md5:d1610f3d4d4124d3ae1cf04236fb4560)
Theorem hlt_INT_COPRIME_1 : forall a :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) a) = 1.
Admitted.

// HOL Light: Library/integer.ml:461 / INT_GCD_COPRIME   (hash md5:a7cb2ae0056a0978097c59a42b72de5d)
Theorem hlt_INT_GCD_COPRIME : forall a b a' b' :e hl_ty_int, ~ hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b) = hl_int_of_num (hl_NUMERAL hl_zero) /\ (a = hl_int_mul a' (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) /\ b = hl_int_mul b' (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b))) -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a' b') = 1.
Admitted.

// HOL Light: Library/integer.ml:466 / INT_COPRIME_0   (hash md5:eab2e787408eb824d81a57f9b7e14e28)
Theorem hlt_INT_COPRIME_0 : (forall a :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a (hl_int_of_num (hl_NUMERAL hl_zero))) = 1 <-> hl_int_divides a (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ forall a :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_of_num (hl_NUMERAL hl_zero)) a) = 1 <-> hl_int_divides a (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/integer.ml:471 / INT_COPRIME_MUL   (hash md5:ae9a8662965dca69400084cfb37eb6f9)
Theorem hlt_INT_COPRIME_MUL : forall d a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int d a) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int d b) = 1 -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int d (hl_int_mul a b)) = 1.
Admitted.

// HOL Light: Library/integer.ml:475 / INT_COPRIME_LMUL2   (hash md5:228ffdc45f0e15d1b022e181759a77e2)
Theorem hlt_INT_COPRIME_LMUL2 : forall d a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int d (hl_int_mul a b)) = 1 -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int d b) = 1.
Admitted.

// HOL Light: Library/integer.ml:479 / INT_COPRIME_RMUL2   (hash md5:c0f2d466c0a2caffbaf38386cdba6270)
Theorem hlt_INT_COPRIME_RMUL2 : forall d a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int d (hl_int_mul a b)) = 1 -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int d a) = 1.
Admitted.

// HOL Light: Library/integer.ml:483 / INT_COPRIME_LMUL   (hash md5:57f56f82c22b6ce61d0ad194c968d9c2)
Theorem hlt_INT_COPRIME_LMUL : forall d a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_mul a b) d) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a d) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int b d) = 1.
Admitted.

// HOL Light: Library/integer.ml:487 / INT_COPRIME_RMUL   (hash md5:4f6cf478fe0c10c0b53abc21a0b9a368)
Theorem hlt_INT_COPRIME_RMUL : forall d a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int d (hl_int_mul a b)) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int d a) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int d b) = 1.
Admitted.

// HOL Light: Library/integer.ml:491 / INT_COPRIME_REFL   (hash md5:cc9e235e3146167e05a452db5566d171)
Theorem hlt_INT_COPRIME_REFL : forall n :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int n n) = 1 <-> hl_int_divides n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/integer.ml:495 / INT_COPRIME_PLUS1   (hash md5:e3da05be0d46962ad2c4a59d7244a79a)
Theorem hlt_INT_COPRIME_PLUS1 : forall n :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int n (hl_int_add n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Library/integer.ml:499 / INT_COPRIME_MINUS1   (hash md5:e1c631a328185eac134f7be6fa146979)
Theorem hlt_INT_COPRIME_MINUS1 : forall n :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int n (hl_int_sub n (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Library/integer.ml:503 / INT_COPRIME_RPOW   (hash md5:f8a2e23f770036270931706e2703f8d6)
Theorem hlt_INT_COPRIME_RPOW : forall m n :e hl_ty_int, forall k :e omega, hl_int_coprime (hl_pair hl_ty_int hl_ty_int m (hl_int_pow n k)) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int m n) = 1 \/ k = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/integer.ml:509 / INT_COPRIME_LPOW   (hash md5:827995b9b223ed66962337ef07d683d7)
Theorem hlt_INT_COPRIME_LPOW : forall m n :e hl_ty_int, forall k :e omega, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_pow m k) n) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int m n) = 1 \/ k = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/integer.ml:513 / INT_COPRIME_POW2   (hash md5:f6c9d20fb4daddef0d7704397e7ea74d)
Theorem hlt_INT_COPRIME_POW2 : forall m n :e hl_ty_int, forall k :e omega, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_pow m k) (hl_int_pow n k)) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int m n) = 1 \/ k = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/integer.ml:517 / INT_COPRIME_POW   (hash md5:8a701d400da612e46ee802044a4ecf46)
Theorem hlt_INT_COPRIME_POW : forall n :e omega, forall a d :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int d a) = 1 -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int d (hl_int_pow a n)) = 1.
Admitted.

// HOL Light: Library/integer.ml:521 / INT_COPRIME_POW_IMP   (hash md5:ed176d412fefa25f7a8c0fb5fad90cf1)
Theorem hlt_INT_COPRIME_POW_IMP : forall n :e omega, forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_pow a n) (hl_int_pow b n)) = 1.
Admitted.

// HOL Light: Library/integer.ml:525 / INT_GCD_POW   (hash md5:22178de44f798053ae1879e379eabfc6)
Theorem hlt_INT_GCD_POW : forall a b :e hl_ty_int, forall n :e omega, hl_int_gcd (hl_pair hl_ty_int hl_ty_int (hl_int_pow a n) (hl_int_pow b n)) = hl_int_pow (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a b)) n.
Admitted.

// HOL Light: Library/integer.ml:536 / INT_LCM_POW   (hash md5:533d206a77e14bc78fa4964cd9ddb02a)
Theorem hlt_INT_LCM_POW : forall a b :e hl_ty_int, forall n :e omega, hl_int_lcm (hl_pair hl_ty_int hl_ty_int (hl_int_pow a n) (hl_int_pow b n)) = hl_int_pow (hl_int_lcm (hl_pair hl_ty_int hl_ty_int a b)) n.
Admitted.

// HOL Light: Library/integer.ml:548 / INT_DIVISION_DECOMP   (hash md5:659399574afa8c23fbde868ac1cf5504)
Theorem hlt_INT_DIVISION_DECOMP : forall a b c :e hl_ty_int, hl_int_divides a (hl_int_mul b c) = 1 -> exists b' c' :e hl_ty_int, a = hl_int_mul b' c' /\ (hl_int_divides b' b = 1 /\ hl_int_divides c' c = 1).
Admitted.

// HOL Light: Library/integer.ml:556 / INT_DIVIDES_MUL   (hash md5:bdd1a067cbedafd9906be2813a2db305)
Theorem hlt_INT_DIVIDES_MUL : forall m n r :e hl_ty_int, hl_int_divides m r = 1 /\ (hl_int_divides n r = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int m n) = 1) -> hl_int_divides (hl_int_mul m n) r = 1.
Admitted.

// HOL Light: Library/integer.ml:560 / INT_CHINESE_REMAINDER   (hash md5:04f732e03ea309159795aa4a7337796f)
Theorem hlt_INT_CHINESE_REMAINDER : forall a b u v :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 /\ (~ a = hl_int_of_num (hl_NUMERAL hl_zero) /\ ~ b = hl_int_of_num (hl_NUMERAL hl_zero)) -> exists x q1 q2 :e hl_ty_int, x = hl_int_add u (hl_int_mul q1 a) /\ x = hl_int_add v (hl_int_mul q2 b).
Admitted.

// HOL Light: Library/integer.ml:565 / INT_CHINESE_REMAINDER_USUAL   (hash md5:2393866f6499990d8807101e2475550b)
Theorem hlt_INT_CHINESE_REMAINDER_USUAL : forall a b u v :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 -> exists x :e hl_ty_int, hl_sym_3d3d hl_ty_int x u (hl_int_mod a) = 1 /\ hl_sym_3d3d hl_ty_int x v (hl_int_mod b) = 1.
Admitted.

// HOL Light: Library/integer.ml:569 / INT_COPRIME_DIVISORS   (hash md5:eca9712d6a0fd6a2592cb0a1d0c252ee)
Theorem hlt_INT_COPRIME_DIVISORS : forall a b d e1 :e hl_ty_int, hl_int_divides d a = 1 /\ (hl_int_divides e1 b = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1) -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int d e1) = 1.
Admitted.

// HOL Light: Library/integer.ml:573 / INT_COPRIME_LNEG   (hash md5:705c04b3b9f0714f225b72f3619c9086)
Theorem hlt_INT_COPRIME_LNEG : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_neg a) b) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1.
Admitted.

// HOL Light: Library/integer.ml:577 / INT_COPRIME_RNEG   (hash md5:ba24641aeee354b5a23f3f812ae34837)
Theorem hlt_INT_COPRIME_RNEG : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a (hl_int_neg b)) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1.
Admitted.

// HOL Light: Library/integer.ml:581 / INT_COPRIME_NEG   (hash md5:5ca0a096041d4fbcb8ff0373ab38bc5d)
Theorem hlt_INT_COPRIME_NEG : (forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_neg a) b) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1) /\ forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a (hl_int_neg b)) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1.
Admitted.

// HOL Light: Library/integer.ml:586 / INT_COPRIME_LABS   (hash md5:f852b2401b80e7a7550ff4845bfc1b5f)
Theorem hlt_INT_COPRIME_LABS : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_abs a) b) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1.
Admitted.

// HOL Light: Library/integer.ml:590 / INT_COPRIME_RABS   (hash md5:4d9b665d1933a4978afe2eaa4c0a07ba)
Theorem hlt_INT_COPRIME_RABS : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a (hl_int_abs b)) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1.
Admitted.

// HOL Light: Library/integer.ml:594 / INT_COPRIME_ABS   (hash md5:5aee5a70a22530afa621c5c4bc0847a4)
Theorem hlt_INT_COPRIME_ABS : (forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_abs a) b) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1) /\ forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a (hl_int_abs b)) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1.
Admitted.

// HOL Light: Library/integer.ml:603 / INT_CONG_MOD_0   (hash md5:faddcef91c06c5972b9db1441b972be0)
Theorem hlt_INT_CONG_MOD_0 : forall x y :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod (hl_int_of_num (hl_NUMERAL hl_zero))) = 1 <-> x = y.
Admitted.

// HOL Light: Library/integer.ml:607 / INT_CONG_MOD_1   (hash md5:ae89c10817abc808386d4b0556fdfe75)
Theorem hlt_INT_CONG_MOD_1 : forall x y :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/integer.ml:611 / INT_CONG   (hash md5:11195ba0485a02153aab067db3baabb7)
Theorem hlt_INT_CONG : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 <-> hl_int_divides n (hl_int_sub x y) = 1.
Admitted.

// HOL Light: Library/integer.ml:615 / INT_CONG_MOD_ABS   (hash md5:53d47c90ebf8907dabd4f75fed3faef1)
Theorem hlt_INT_CONG_MOD_ABS : forall a b n :e hl_ty_int, hl_sym_3d3d hl_ty_int a b (hl_int_mod (hl_int_abs n)) = 1 <-> hl_sym_3d3d hl_ty_int a b (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:619 / INT_CONG_MUL_LCANCEL   (hash md5:499c441603cac116a204032c5dee4e36)
Theorem hlt_INT_CONG_MUL_LCANCEL : forall a n x y :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a n) = 1 /\ hl_sym_3d3d hl_ty_int (hl_int_mul a x) (hl_int_mul a y) (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:623 / INT_CONG_MUL_RCANCEL   (hash md5:d243968b9ebe48cc2bd084cc32f50e90)
Theorem hlt_INT_CONG_MUL_RCANCEL : forall a n x y :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a n) = 1 /\ hl_sym_3d3d hl_ty_int (hl_int_mul x a) (hl_int_mul y a) (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:627 / INT_CONG_MULT_LCANCEL_ALL   (hash md5:0e5daba49536a04c7a9fe519798cf031)
Theorem hlt_INT_CONG_MULT_LCANCEL_ALL : forall a x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_mul a x) (hl_int_mul a y) (hl_int_mod (hl_int_mul a n)) = 1 <-> a = hl_int_of_num (hl_NUMERAL hl_zero) \/ hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:631 / INT_CONG_LMUL   (hash md5:90b7cf065866b8962cddd97d596bd863)
Theorem hlt_INT_CONG_LMUL : forall a x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int (hl_int_mul a x) (hl_int_mul a y) (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:634 / INT_CONG_RMUL   (hash md5:7dfcaf1b360758e21eb02cb98484d859)
Theorem hlt_INT_CONG_RMUL : forall x y a n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int (hl_int_mul x a) (hl_int_mul y a) (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:637 / INT_CONG_REFL   (hash md5:42750e369c3933a213379831588f083c)
Theorem hlt_INT_CONG_REFL : forall x n :e hl_ty_int, hl_sym_3d3d hl_ty_int x x (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:641 / INT_EQ_IMP_CONG   (hash md5:1f2dcd224901fc15f5121b2da1f6e446)
Theorem hlt_INT_EQ_IMP_CONG : forall a b n :e hl_ty_int, a = b -> hl_sym_3d3d hl_ty_int a b (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:645 / INT_CONG_SYM   (hash md5:af9c032622a1781e8c0a599179232cd8)
Theorem hlt_INT_CONG_SYM : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int y x (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:649 / INT_CONG_TRANS   (hash md5:f6e2f8443eb990213abd511f2ac69acb)
Theorem hlt_INT_CONG_TRANS : forall x y z n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 /\ hl_sym_3d3d hl_ty_int y z (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int x z (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:653 / INT_CONG_ADD   (hash md5:680065167681d0ab03147270f6b09074)
Theorem hlt_INT_CONG_ADD : forall n x x' y y' :e hl_ty_int, hl_sym_3d3d hl_ty_int x x' (hl_int_mod n) = 1 /\ hl_sym_3d3d hl_ty_int y y' (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int (hl_int_add x y) (hl_int_add x' y') (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:658 / INT_CONG_SUB   (hash md5:020faaebd5a80523a48eea7c42f19a06)
Theorem hlt_INT_CONG_SUB : forall n x x' y y' :e hl_ty_int, hl_sym_3d3d hl_ty_int x x' (hl_int_mod n) = 1 /\ hl_sym_3d3d hl_ty_int y y' (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int (hl_int_sub x y) (hl_int_sub x' y') (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:663 / INT_CONG_MUL   (hash md5:4fa2ed55a2043fc50b32bd8d15924721)
Theorem hlt_INT_CONG_MUL : forall n x x' y y' :e hl_ty_int, hl_sym_3d3d hl_ty_int x x' (hl_int_mod n) = 1 /\ hl_sym_3d3d hl_ty_int y y' (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int (hl_int_mul x y) (hl_int_mul x' y') (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:668 / INT_CONG_POW   (hash md5:1dbdf3c64103410f7a9d75ca90c34ab1)
Theorem hlt_INT_CONG_POW : forall n :e hl_ty_int, forall k :e omega, forall x y :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int (hl_int_pow x k) (hl_int_pow y k) (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:673 / INT_CONG_MUL_1   (hash md5:a80e0347301c9dc5038b2927190103cf)
Theorem hlt_INT_CONG_MUL_1 : forall n x y :e hl_ty_int, hl_sym_3d3d hl_ty_int x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mod n) = 1 /\ hl_sym_3d3d hl_ty_int y (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int (hl_int_mul x y) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:679 / INT_CONG_POW_1   (hash md5:2b778cce06215b13a6737331f26e7056)
Theorem hlt_INT_CONG_POW_1 : forall a :e hl_ty_int, forall k :e omega, forall n :e hl_ty_int, hl_sym_3d3d hl_ty_int a (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int (hl_int_pow a k) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:683 / INT_CONG_MUL_LCANCEL_EQ   (hash md5:a565945345e854035e4494d68cfaf620)
Theorem hlt_INT_CONG_MUL_LCANCEL_EQ : forall a n x y :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a n) = 1 -> (hl_sym_3d3d hl_ty_int (hl_int_mul a x) (hl_int_mul a y) (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1).
Admitted.

// HOL Light: Library/integer.ml:687 / INT_CONG_MUL_RCANCEL_EQ   (hash md5:eba7c06d92c75d7ee6978fb38e7e1fcb)
Theorem hlt_INT_CONG_MUL_RCANCEL_EQ : forall a n x y :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a n) = 1 -> (hl_sym_3d3d hl_ty_int (hl_int_mul x a) (hl_int_mul y a) (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1).
Admitted.

// HOL Light: Library/integer.ml:691 / INT_CONG_ADD_LCANCEL_EQ   (hash md5:43bb14ccf0a3f23f579522d81108a02b)
Theorem hlt_INT_CONG_ADD_LCANCEL_EQ : forall a n x y :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_add a x) (hl_int_add a y) (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:695 / INT_CONG_ADD_RCANCEL_EQ   (hash md5:7e88bcbc01afca0f5cb9261003eab1f9)
Theorem hlt_INT_CONG_ADD_RCANCEL_EQ : forall a n x y :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_add x a) (hl_int_add y a) (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:699 / INT_CONG_ADD_RCANCEL   (hash md5:46ff7b55162a0f8647015832935a2136)
Theorem hlt_INT_CONG_ADD_RCANCEL : forall a n x y :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_add x a) (hl_int_add y a) (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:703 / INT_CONG_ADD_LCANCEL   (hash md5:124934bf1515fd98da6b62e04550ecd1)
Theorem hlt_INT_CONG_ADD_LCANCEL : forall a n x y :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_add a x) (hl_int_add a y) (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:707 / INT_CONG_ADD_LCANCEL_EQ_0   (hash md5:5890e244dcefceb32ae094acdc37564f)
Theorem hlt_INT_CONG_ADD_LCANCEL_EQ_0 : forall A:set, A <> Empty -> forall a n x :e hl_ty_int, forall y :e A, hl_sym_3d3d hl_ty_int (hl_int_add a x) a (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int x (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:711 / INT_CONG_ADD_RCANCEL_EQ_0   (hash md5:ce18ed318faa61e36330d4970a40d7d4)
Theorem hlt_INT_CONG_ADD_RCANCEL_EQ_0 : forall A:set, A <> Empty -> forall a n x :e hl_ty_int, forall y :e A, hl_sym_3d3d hl_ty_int (hl_int_add x a) a (hl_int_mod n) = 1 <-> hl_sym_3d3d hl_ty_int x (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:715 / INT_CONG_INT_DIVIDES_MODULUS   (hash md5:3a9e2a138ba46d73ee91a5dd6ce46ed4)
Theorem hlt_INT_CONG_INT_DIVIDES_MODULUS : forall x y m n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod m) = 1 /\ hl_int_divides n m = 1 -> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:719 / INT_CONG_0_DIVIDES   (hash md5:4e1d9f77aca070aba57f2022ab274844)
Theorem hlt_INT_CONG_0_DIVIDES : forall n x :e hl_ty_int, hl_sym_3d3d hl_ty_int x (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mod n) = 1 <-> hl_int_divides n x = 1.
Admitted.

// HOL Light: Library/integer.ml:723 / INT_CONG_1_DIVIDES   (hash md5:eb4b92d3055e6897dd3c23c204507428)
Theorem hlt_INT_CONG_1_DIVIDES : forall n x :e hl_ty_int, hl_sym_3d3d hl_ty_int x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mod n) = 1 -> hl_int_divides n (hl_int_sub x (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/integer.ml:727 / INT_CONG_DIVIDES   (hash md5:2f8ab7b9c3bc2d9591e948328a472d85)
Theorem hlt_INT_CONG_DIVIDES : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> (hl_int_divides n x = 1 <-> hl_int_divides n y = 1).
Admitted.

// HOL Light: Library/integer.ml:731 / INT_CONG_COPRIME   (hash md5:3188d1e0dc2549a4dc968df911689282)
Theorem hlt_INT_CONG_COPRIME : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> (hl_int_coprime (hl_pair hl_ty_int hl_ty_int n x) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int n y) = 1).
Admitted.

// HOL Light: Library/integer.ml:735 / INT_COPRIME_RREM   (hash md5:cb9d3b9686f397ceed1375a2d25a9950)
Theorem hlt_INT_COPRIME_RREM : forall m n :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int m (hl_rem n m)) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int m n) = 1.
Admitted.

// HOL Light: Library/integer.ml:739 / INT_COPRIME_LREM   (hash md5:d4ba1781e86439a15a67338ecb149a44)
Theorem hlt_INT_COPRIME_LREM : forall A:set, A <> Empty -> forall n a :e hl_ty_int, forall b :e A, hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_rem a n) n) = 1 <-> hl_int_coprime (hl_pair hl_ty_int hl_ty_int a n) = 1.
Admitted.

// HOL Light: Library/integer.ml:743 / INT_CONG_GCD_RIGHT   (hash md5:94288c344c7a0c0c1bcfce9399799a79)
Theorem hlt_INT_CONG_GCD_RIGHT : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> hl_int_gcd (hl_pair hl_ty_int hl_ty_int n x) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int n y).
Admitted.

// HOL Light: Library/integer.ml:747 / INT_CONG_GCD_LEFT   (hash md5:d4909a3cb8f589c27732d55ef02a55d8)
Theorem hlt_INT_CONG_GCD_LEFT : forall x y n :e hl_ty_int, hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> hl_int_gcd (hl_pair hl_ty_int hl_ty_int x n) = hl_int_gcd (hl_pair hl_ty_int hl_ty_int y n).
Admitted.

// HOL Light: Library/integer.ml:751 / INT_CONG_TO_1   (hash md5:01a5499820571efa3fdf804faa91d0b7)
Theorem hlt_INT_CONG_TO_1 : forall a n :e hl_ty_int, hl_sym_3d3d hl_ty_int a (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mod n) = 1 <-> exists m :e hl_ty_int, a = hl_int_add (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mul m n).
Admitted.

// HOL Light: Library/integer.ml:755 / INT_CONG_SOLVE   (hash md5:890ac1c314850531845bf18d173dcb38)
Theorem hlt_INT_CONG_SOLVE : forall a b n :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a n) = 1 -> exists x :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_mul a x) b (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:759 / INT_CONG_SOLVE_EQ   (hash md5:533450fbd9686cabe10dac2632b6b355)
Theorem hlt_INT_CONG_SOLVE_EQ : forall n a b :e hl_ty_int, (exists x :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_mul a x) b (hl_int_mod n) = 1) <-> hl_int_divides (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a n)) b = 1.
Admitted.

// HOL Light: Library/integer.ml:763 / INT_CONG_SOLVE_UNIQUE   (hash md5:64645164ac2da06b4de79e6704ba30a3)
Theorem hlt_INT_CONG_SOLVE_UNIQUE : forall a b n :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a n) = 1 -> forall x y :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_mul a x) b (hl_int_mod n) = 1 /\ hl_sym_3d3d hl_ty_int (hl_int_mul a y) b (hl_int_mod n) = 1 -> hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:769 / INT_CONG_CHINESE   (hash md5:1340a10e3ac5139ccec028e02f47e04c)
Theorem hlt_INT_CONG_CHINESE : forall a b x y :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 /\ (hl_sym_3d3d hl_ty_int x y (hl_int_mod a) = 1 /\ hl_sym_3d3d hl_ty_int x y (hl_int_mod b) = 1) -> hl_sym_3d3d hl_ty_int x y (hl_int_mod (hl_int_mul a b)) = 1.
Admitted.

// HOL Light: Library/integer.ml:774 / INT_CHINESE_REMAINDER_COPRIME   (hash md5:352be3399abccab628974064a89a2799)
Theorem hlt_INT_CHINESE_REMAINDER_COPRIME : forall a b m n :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 /\ (~ a = hl_int_of_num (hl_NUMERAL hl_zero) /\ (~ b = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_int_coprime (hl_pair hl_ty_int hl_ty_int m a) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int n b) = 1))) -> exists x :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int x (hl_int_mul a b)) = 1 /\ (hl_sym_3d3d hl_ty_int x m (hl_int_mod a) = 1 /\ hl_sym_3d3d hl_ty_int x n (hl_int_mod b) = 1).
Admitted.

// HOL Light: Library/integer.ml:781 / INT_CHINESE_REMAINDER_COPRIME_UNIQUE   (hash md5:b8ded85b630e926430c5074530626c36)
Theorem hlt_INT_CHINESE_REMAINDER_COPRIME_UNIQUE : forall a b m n x y :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 /\ (hl_sym_3d3d hl_ty_int x m (hl_int_mod a) = 1 /\ (hl_sym_3d3d hl_ty_int x n (hl_int_mod b) = 1 /\ (hl_sym_3d3d hl_ty_int y m (hl_int_mod a) = 1 /\ hl_sym_3d3d hl_ty_int y n (hl_int_mod b) = 1))) -> hl_sym_3d3d hl_ty_int x y (hl_int_mod (hl_int_mul a b)) = 1.
Admitted.

// HOL Light: Library/integer.ml:789 / SOLVABLE_GCD   (hash md5:8929ee982a2a66eec83bf779d6dc44d3)
Theorem hlt_SOLVABLE_GCD : forall a b n :e hl_ty_int, hl_int_divides (hl_int_gcd (hl_pair hl_ty_int hl_ty_int a n)) b = 1 -> exists x :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_mul a x) b (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:793 / INT_LINEAR_CONG_POS   (hash md5:adcf6363d6cf6e27cc5d50926cdc8862)
Theorem hlt_INT_LINEAR_CONG_POS : forall n a x :e hl_ty_int, ~ n = hl_int_of_num (hl_NUMERAL hl_zero) -> exists y :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) y = 1 /\ hl_sym_3d3d hl_ty_int (hl_int_mul a x) (hl_int_mul a y) (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:803 / INT_CONG_SOLVE_POS   (hash md5:3a2433ba1ae4515a1795297e8563d812)
Theorem hlt_INT_CONG_SOLVE_POS : forall a b n :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a n) = 1 /\ ~ (n = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_int_abs a = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> exists x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_sym_3d3d hl_ty_int (hl_int_mul a x) b (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:813 / INT_CONG_IMP_EQ   (hash md5:64ca351c1c549d45b6d4c9d074b3bde6)
Theorem hlt_INT_CONG_IMP_EQ : forall x y n :e hl_ty_int, hl_int_lt (hl_int_abs (hl_int_sub x y)) n = 1 /\ hl_sym_3d3d hl_ty_int x y (hl_int_mod n) = 1 -> x = y.
Admitted.

// HOL Light: Library/integer.ml:827 / INT_CONG_DIV   (hash md5:677f3c7c2513e2eb0914fd72e749ebf1)
Theorem hlt_INT_CONG_DIV : forall m n a b :e hl_ty_int, ~ m = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_sym_3d3d hl_ty_int a (hl_int_mul m b) (hl_int_mod (hl_int_mul m n)) = 1 -> hl_sym_3d3d hl_ty_int (hl_div a m) b (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:832 / INT_CONG_DIV_COPRIME   (hash md5:6c5f6ee31a1b3a7ec917432a096b4184)
Theorem hlt_INT_CONG_DIV_COPRIME : forall m n a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int m n) = 1 /\ (hl_int_divides m a = 1 /\ hl_sym_3d3d hl_ty_int a (hl_int_mul m b) (hl_int_mod n) = 1) -> hl_sym_3d3d hl_ty_int (hl_div a m) b (hl_int_mod n) = 1.
Admitted.

// HOL Light: Library/integer.ml:846 / INT_CRT_STRONG   (hash md5:11dcb4b2ebe2c61fb6ae3e8913eee872)
Theorem hlt_INT_CRT_STRONG : forall a1 a2 n1 n2 :e hl_ty_int, hl_sym_3d3d hl_ty_int a1 a2 (hl_int_mod (hl_int_gcd (hl_pair hl_ty_int hl_ty_int n1 n2))) = 1 -> exists x :e hl_ty_int, hl_sym_3d3d hl_ty_int x a1 (hl_int_mod n1) = 1 /\ hl_sym_3d3d hl_ty_int x a2 (hl_int_mod n2) = 1.
Admitted.

// HOL Light: Library/integer.ml:852 / INT_CRT_STRONG_IFF   (hash md5:0c972f6999b597f504f3f26663b7fea7)
Theorem hlt_INT_CRT_STRONG_IFF : forall a1 a2 n1 n2 :e hl_ty_int, (exists x :e hl_ty_int, hl_sym_3d3d hl_ty_int x a1 (hl_int_mod n1) = 1 /\ hl_sym_3d3d hl_ty_int x a2 (hl_int_mod n2) = 1) <-> hl_sym_3d3d hl_ty_int a1 a2 (hl_int_mod (hl_int_gcd (hl_pair hl_ty_int hl_ty_int n1 n2))) = 1.
Admitted.

// HOL Light: Library/integer.ml:862 / EVEN_SQUARE_MOD4   (hash md5:2d8355a193bbef27949981de012d3766)
Theorem hlt_EVEN_SQUARE_MOD4 : forall n :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_pow (hl_int_mul (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_mod (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) = 1.
Admitted.

// HOL Light: Library/integer.ml:866 / ODD_SQUARE_MOD4   (hash md5:f3513cc18716952917d2602012a8aa3e)
Theorem hlt_ODD_SQUARE_MOD4 : forall n :e hl_ty_int, hl_sym_3d3d hl_ty_int (hl_int_pow (hl_int_add (hl_int_mul (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_mod (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) = 1.
Admitted.

// HOL Light: Library/integer.ml:870 / INT_DIVIDES_LE   (hash md5:de0fd0f15bc993b761f13a9e7d21fa95)
Theorem hlt_INT_DIVIDES_LE : forall x y :e hl_ty_int, hl_int_divides x y = 1 -> hl_int_le (hl_int_abs x) (hl_int_abs y) = 1 \/ y = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/integer.ml:880 / INT_DIVIDES_POW_LE   (hash md5:3082061750aea7f8566c1fd7f0fe4962)
Theorem hlt_INT_DIVIDES_POW_LE : forall p :e hl_ty_int, forall m n :e omega, hl_int_le (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_abs p) = 1 -> (hl_int_divides (hl_int_pow p m) (hl_int_pow p n) = 1 <-> hl_le m n = 1).
Admitted.

// HOL Light: Library/integer.ml:894 / int_prime   (hash md5:9bfe25278cdbfeaa796fd0c14c91216a)
Theorem hlt_int_prime : forall p :e hl_ty_int, hl_int_prime p = 1 <-> hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p.
Admitted.

// HOL Light: Library/integer.ml:898 / INT_PRIME_NEG   (hash md5:c74ebb3a5251a25ce576c008b5a10d4e)
Theorem hlt_INT_PRIME_NEG : forall p :e hl_ty_int, hl_int_prime (hl_int_neg p) = 1 <-> hl_int_prime p = 1.
Admitted.

// HOL Light: Library/integer.ml:902 / INT_PRIME_ABS   (hash md5:e30b3670847d3b439142c5205a56b417)
Theorem hlt_INT_PRIME_ABS : forall p :e hl_ty_int, hl_int_prime (hl_int_abs p) = 1 <-> hl_int_prime p = 1.
Admitted.

// HOL Light: Library/integer.ml:907 / INT_PRIME_GE_2   (hash md5:1e8c48905f84a46e089c014e085b83db)
Theorem hlt_INT_PRIME_GE_2 : forall p :e hl_ty_int, hl_int_prime p = 1 -> hl_int_le (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_abs p) = 1.
Admitted.

// HOL Light: Library/integer.ml:911 / INT_PRIME_0   (hash md5:debeb6653e486c13db7aee4f51d4fff8)
Theorem hlt_INT_PRIME_0 : ~ hl_int_prime (hl_int_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Library/integer.ml:915 / INT_PRIME_1   (hash md5:54a12a3744a53eff1654f7b8a569c28c)
Theorem hlt_INT_PRIME_1 : ~ hl_int_prime (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/integer.ml:919 / INT_PRIME_2   (hash md5:bca4c61fae57648f02a2e7f909690a8e)
Theorem hlt_INT_PRIME_2 : hl_int_prime (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/integer.ml:927 / INT_PRIME_FACTOR   (hash md5:4d9ec1701bc3db105916e252c9c1e510)
Theorem hlt_INT_PRIME_FACTOR : forall x :e hl_ty_int, ~ hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> exists p :e hl_ty_int, hl_int_prime p = 1 /\ hl_int_divides p x = 1.
Admitted.

// HOL Light: Library/integer.ml:948 / INT_PRIME_FACTOR_LT   (hash md5:474524a46d3c1645a9667fd97da76e39)
Theorem hlt_INT_PRIME_FACTOR_LT : forall n m p :e hl_ty_int, hl_int_prime p = 1 /\ (~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ n = hl_int_mul p m) -> hl_int_lt (hl_int_abs m) (hl_int_abs n) = 1.
Admitted.

// HOL Light: Library/integer.ml:958 / INT_PRIME_FACTOR_INDUCT   (hash md5:ad4e628364d671c10a2dedecaaad2712)
Theorem hlt_INT_PRIME_FACTOR_INDUCT : forall P :e 2 :^: hl_ty_int, P (hl_int_of_num (hl_NUMERAL hl_zero)) = 1 /\ (P (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (P (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ (forall p n :e hl_ty_int, hl_int_prime p = 1 /\ (~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ P n = 1) -> P (hl_int_mul p n) = 1))) -> forall n :e hl_ty_int, P n = 1.
Admitted.

// HOL Light: Library/integer.ml:983 / INT_DIVIDES_FACT   (hash md5:4fa7543f10494239f1062fe5cd409e5c)
Theorem hlt_INT_DIVIDES_FACT : forall n :e omega, forall x :e hl_ty_int, hl_int_le (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_abs x) = 1 /\ hl_int_le (hl_int_abs x) (hl_int_of_num n) = 1 -> hl_int_divides x (hl_int_of_num (hl_FACT n)) = 1.
Admitted.

// HOL Light: Library/integer.ml:993 / INT_EUCLID_BOUND   (hash md5:05f72312ed9f78b23933401f1ec0169e)
Theorem hlt_INT_EUCLID_BOUND : forall n :e omega, exists p :e hl_ty_int, hl_int_prime p = 1 /\ (hl_int_lt (hl_int_of_num n) p = 1 /\ hl_int_le p (hl_int_add (hl_int_of_num (hl_FACT n)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1).
Admitted.

// HOL Light: Library/integer.ml:1012 / INT_EUCLID   (hash md5:d26d3cae3a50ee649e743e1630491a6c)
Theorem hlt_INT_EUCLID : forall n :e hl_ty_int, exists p :e hl_ty_int, hl_int_prime p = 1 /\ hl_int_gt p n = 1.
Admitted.

// HOL Light: Library/integer.ml:1022 / INT_PRIMES_INFINITE   (hash md5:0a92d954329a52acbc6a11c644dec64b)
Theorem hlt_INT_PRIMES_INFINITE : hl_INFINITE hl_ty_int (hl_GSPEC hl_ty_int (fun GEN_PVAR_451 :e hl_ty_int => if exists p :e hl_ty_int, hl_SETSPEC hl_ty_int GEN_PVAR_451 (hl_int_prime p) p = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/integer.ml:1036 / INT_COPRIME_PRIME   (hash md5:f8ed9cba1d47357c0f904be5c310136b)
Theorem hlt_INT_COPRIME_PRIME : forall p a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 -> ~ (hl_int_prime p = 1 /\ (hl_int_divides p a = 1 /\ hl_int_divides p b = 1)).
Admitted.

// HOL Light: Library/integer.ml:1041 / INT_COPRIME_PRIME_EQ   (hash md5:886dd7704f84525e2198d3eba3cc9e24)
Theorem hlt_INT_COPRIME_PRIME_EQ : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 <-> forall p :e hl_ty_int, ~ (hl_int_prime p = 1 /\ (hl_int_divides p a = 1 /\ hl_int_divides p b = 1)).
Admitted.

// HOL Light: Library/integer.ml:1051 / INT_PRIME_COPRIME   (hash md5:ac991c549fe28425f698657dad3c5843)
Theorem hlt_INT_PRIME_COPRIME : forall x p :e hl_ty_int, hl_int_prime p = 1 -> hl_int_divides p x = 1 \/ hl_int_coprime (hl_pair hl_ty_int hl_ty_int p x) = 1.
Admitted.

// HOL Light: Library/integer.ml:1061 / INT_PRIME_COPRIME_EQ   (hash md5:d4eeaafdcd21eb4c493a343412b37f1d)
Theorem hlt_INT_PRIME_COPRIME_EQ : forall p n :e hl_ty_int, hl_int_prime p = 1 -> (hl_int_coprime (hl_pair hl_ty_int hl_ty_int p n) = 1 <-> ~ hl_int_divides p n = 1).
Admitted.

// HOL Light: Library/integer.ml:1068 / INT_COPRIME_PRIMEPOW   (hash md5:c2866a957d899112322521820ce7aff0)
Theorem hlt_INT_COPRIME_PRIMEPOW : forall p :e hl_ty_int, forall k :e omega, forall m :e hl_ty_int, hl_int_prime p = 1 /\ ~ k = hl_NUMERAL hl_zero -> (hl_int_coprime (hl_pair hl_ty_int hl_ty_int m (hl_int_pow p k)) = 1 <-> ~ hl_int_divides p m = 1).
Admitted.

// HOL Light: Library/integer.ml:1074 / INT_COPRIME_BEZOUT   (hash md5:5d645fcc824ab4748c8fe7b17cd497df)
Theorem hlt_INT_COPRIME_BEZOUT : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 <-> exists x y :e hl_ty_int, hl_int_add (hl_int_mul a x) (hl_int_mul b y) = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/integer.ml:1078 / INT_COPRIME_BEZOUT_ALT   (hash md5:bfbf1d190942bd386703994359eb020d)
Theorem hlt_INT_COPRIME_BEZOUT_ALT : forall a b :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 -> exists x y :e hl_ty_int, hl_int_mul a x = hl_int_add (hl_int_mul b y) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/integer.ml:1082 / INT_BEZOUT_PRIME   (hash md5:6801bde1bf7b0e6b2c61d8ce2cc9b7c7)
Theorem hlt_INT_BEZOUT_PRIME : forall a p :e hl_ty_int, hl_int_prime p = 1 /\ ~ hl_int_divides p a = 1 -> exists x y :e hl_ty_int, hl_int_mul a x = hl_int_add (hl_int_mul p y) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/integer.ml:1086 / INT_PRIME_DIVPROD   (hash md5:00ee9dcd6071f06ecfa1e709193bdf90)
Theorem hlt_INT_PRIME_DIVPROD : forall p a b :e hl_ty_int, hl_int_prime p = 1 /\ hl_int_divides p (hl_int_mul a b) = 1 -> hl_int_divides p a = 1 \/ hl_int_divides p b = 1.
Admitted.

// HOL Light: Library/integer.ml:1091 / INT_PRIME_DIVPROD_EQ   (hash md5:96d841ca34d5b7106a00a40212e2a228)
Theorem hlt_INT_PRIME_DIVPROD_EQ : forall p a b :e hl_ty_int, hl_int_prime p = 1 -> (hl_int_divides p (hl_int_mul a b) = 1 <-> hl_int_divides p a = 1 \/ hl_int_divides p b = 1).
Admitted.

// HOL Light: Library/integer.ml:1096 / INT_PRIME_DIVPOW   (hash md5:d023c9bb97dd7bc69cb73d3a692162ea)
Theorem hlt_INT_PRIME_DIVPOW : forall n :e omega, forall p x :e hl_ty_int, hl_int_prime p = 1 /\ hl_int_divides p (hl_int_pow x n) = 1 -> hl_int_divides p x = 1.
Admitted.

// HOL Light: Library/integer.ml:1102 / INT_PRIME_DIVPOW_N   (hash md5:2ac9cd5bb63fbada497017240ae20e56)
Theorem hlt_INT_PRIME_DIVPOW_N : forall n :e omega, forall p x :e hl_ty_int, hl_int_prime p = 1 /\ hl_int_divides p (hl_int_pow x n) = 1 -> hl_int_divides (hl_int_pow p n) (hl_int_pow x n) = 1.
Admitted.

// HOL Light: Library/integer.ml:1106 / INT_COPRIME_SOS   (hash md5:884d43e0ae1fabe66a12eb024ad53a28)
Theorem hlt_INT_COPRIME_SOS : forall x y :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int x y) = 1 -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int (hl_int_mul x y) (hl_int_add (hl_int_pow x (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_int_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))) = 1.
Admitted.

// HOL Light: Library/integer.ml:1110 / INT_PRIME_IMP_NZ   (hash md5:3ce338dd347bfeb4ad2113549b65f006)
Theorem hlt_INT_PRIME_IMP_NZ : forall p :e hl_ty_int, hl_int_prime p = 1 -> ~ p = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/integer.ml:1115 / INT_DISTINCT_PRIME_COPRIME   (hash md5:d9338737e45df0a84fd0cda8cdc33b51)
Theorem hlt_INT_DISTINCT_PRIME_COPRIME : forall p q :e hl_ty_int, hl_int_prime p = 1 /\ (hl_int_prime q = 1 /\ ~ hl_int_abs p = hl_int_abs q) -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int p q) = 1.
Admitted.

// HOL Light: Library/integer.ml:1120 / INT_PRIME_COPRIME_LT   (hash md5:d926f1c3422002416dcae9f1ae7797cf)
Theorem hlt_INT_PRIME_COPRIME_LT : forall x p :e hl_ty_int, hl_int_prime p = 1 /\ (hl_int_lt (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_abs x) = 1 /\ hl_int_lt (hl_int_abs x) (hl_int_abs p) = 1) -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int x p) = 1.
Admitted.

// HOL Light: Library/integer.ml:1126 / INT_DIVIDES_PRIME_PRIME   (hash md5:c49e6c40fa76d101eabe033bae969afa)
Theorem hlt_INT_DIVIDES_PRIME_PRIME : forall p q :e hl_ty_int, hl_int_prime p = 1 /\ hl_int_prime q = 1 -> (hl_int_divides p q = 1 <-> hl_int_abs p = hl_int_abs q).
Admitted.

// HOL Light: Library/integer.ml:1133 / INT_COPRIME_POW_DIVPROD   (hash md5:54c8ad6d154db9fe1cef907fe7b516fd)
Theorem hlt_INT_COPRIME_POW_DIVPROD : forall n :e omega, forall d a b :e hl_ty_int, hl_int_divides (hl_int_pow d n) (hl_int_mul a b) = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int d a) = 1 -> hl_int_divides (hl_int_pow d n) b = 1.
Admitted.

// HOL Light: Library/integer.ml:1137 / INT_PRIME_COPRIME_CASES   (hash md5:77e87a9b37d0ff824b1d6df3b037ef90)
Theorem hlt_INT_PRIME_COPRIME_CASES : forall p a b :e hl_ty_int, hl_int_prime p = 1 /\ hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 -> hl_int_coprime (hl_pair hl_ty_int hl_ty_int p a) = 1 \/ hl_int_coprime (hl_pair hl_ty_int hl_ty_int p b) = 1.
Admitted.

// HOL Light: Library/integer.ml:1141 / INT_PRIME_DIVPROD_POW   (hash md5:46339fbae831ad348c618f922097ef1f)
Theorem hlt_INT_PRIME_DIVPROD_POW : forall n :e omega, forall p a b :e hl_ty_int, hl_int_prime p = 1 /\ (hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 /\ hl_int_divides (hl_int_pow p n) (hl_int_mul a b) = 1) -> hl_int_divides (hl_int_pow p n) a = 1 \/ hl_int_divides (hl_int_pow p n) b = 1.
Admitted.

// HOL Light: Library/integer.ml:1146 / INT_DIVIDES_POW2_REV   (hash md5:fb741b36d9c2508bfa74fbf59ef23eb8)
Theorem hlt_INT_DIVIDES_POW2_REV : forall n :e omega, forall a b :e hl_ty_int, hl_int_divides (hl_int_pow a n) (hl_int_pow b n) = 1 /\ ~ n = hl_NUMERAL hl_zero -> hl_int_divides a b = 1.
Admitted.

// HOL Light: Library/integer.ml:1159 / INT_DIVIDES_POW2_EQ   (hash md5:0ced9ad1e78a5665f0d9f4c26d795e15)
Theorem hlt_INT_DIVIDES_POW2_EQ : forall n :e omega, forall a b :e hl_ty_int, ~ n = hl_NUMERAL hl_zero -> (hl_int_divides (hl_int_pow a n) (hl_int_pow b n) = 1 <-> hl_int_divides a b = 1).
Admitted.

// HOL Light: Library/integer.ml:1163 / INT_POW_MUL_EXISTS   (hash md5:82aba582893ebfdc4bc5283b7e8af82d)
Theorem hlt_INT_POW_MUL_EXISTS : forall m n p :e hl_ty_int, forall k :e omega, ~ m = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_int_mul (hl_int_pow m k) n = hl_int_pow p k -> exists q :e hl_ty_int, n = hl_int_pow q k.
Admitted.

// HOL Light: Library/integer.ml:1175 / INT_COPRIME_POW_ABS   (hash md5:4d52b4b5b7bb601b33c5452a66321986)
Theorem hlt_INT_COPRIME_POW_ABS : forall n :e omega, forall a b c :e hl_ty_int, hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 /\ hl_int_mul a b = hl_int_pow c n -> exists r s :e hl_ty_int, hl_int_abs a = hl_int_pow r n /\ hl_int_abs b = hl_int_pow s n.
Admitted.

// HOL Light: Library/integer.ml:1214 / INT_COPRIME_POW_ODD   (hash md5:6b7d1e0f50a18941cf50058c9ece1a8a)
Theorem hlt_INT_COPRIME_POW_ODD : forall n :e omega, forall a b c :e hl_ty_int, hl_ODD n = 1 /\ (hl_int_coprime (hl_pair hl_ty_int hl_ty_int a b) = 1 /\ hl_int_mul a b = hl_int_pow c n) -> exists r s :e hl_ty_int, a = hl_int_pow r n /\ b = hl_int_pow s n.
Admitted.

// HOL Light: Library/integer.ml:1224 / INT_DIVIDES_PRIME_POW_LE   (hash md5:c419ddc08d9297a05a16536c1bd45b43)
Theorem hlt_INT_DIVIDES_PRIME_POW_LE : forall p q :e hl_ty_int, forall m n :e omega, hl_int_prime p = 1 /\ hl_int_prime q = 1 -> (hl_int_divides (hl_int_pow p m) (hl_int_pow q n) = 1 <-> m = hl_NUMERAL hl_zero \/ hl_int_abs p = hl_int_abs q /\ hl_le m n = 1).
Admitted.

// HOL Light: Library/integer.ml:1238 / INT_EQ_PRIME_POW_ABS   (hash md5:1bc3ace309c2afeedd2ed0f9499a588c)
Theorem hlt_INT_EQ_PRIME_POW_ABS : forall p q :e hl_ty_int, forall m n :e omega, hl_int_prime p = 1 /\ hl_int_prime q = 1 -> (hl_int_pow (hl_int_abs p) m = hl_int_pow (hl_int_abs q) n <-> m = hl_NUMERAL hl_zero /\ n = hl_NUMERAL hl_zero \/ hl_int_abs p = hl_int_abs q /\ m = n).
Admitted.

// HOL Light: Library/integer.ml:1247 / INT_EQ_PRIME_POW_POS   (hash md5:d0f84cd9a9e191b5f3930e4731ca287d)
Theorem hlt_INT_EQ_PRIME_POW_POS : forall p q :e hl_ty_int, forall m n :e omega, hl_int_prime p = 1 /\ (hl_int_prime q = 1 /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) p = 1 /\ hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) q = 1)) -> (hl_int_pow p m = hl_int_pow q n <-> m = hl_NUMERAL hl_zero /\ n = hl_NUMERAL hl_zero \/ p = q /\ m = n).
Admitted.

// HOL Light: Library/integer.ml:1255 / INT_DIVIDES_FACT_PRIME   (hash md5:12e73ea0c4d080ecd52290539bf52f05)
Theorem hlt_INT_DIVIDES_FACT_PRIME : forall p :e hl_ty_int, hl_int_prime p = 1 -> forall n :e omega, hl_int_divides p (hl_int_of_num (hl_FACT n)) = 1 <-> hl_int_le (hl_int_abs p) (hl_int_of_num n) = 1.
Admitted.

