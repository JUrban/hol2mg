// hol2mg literal statements (private): shard calc_int of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: calc_int.ml:66 / REAL_ADD_AC   (hash md5:a7dfbac61d36cd2920f9283264877110)
Theorem hlt_REAL_ADD_AC : forall m n p :e R, hl_real_add m n = hl_real_add n m /\ (hl_real_add (hl_real_add m n) p = hl_real_add m (hl_real_add n p) /\ hl_real_add m (hl_real_add n p) = hl_real_add n (hl_real_add m p)).
Admitted.

// HOL Light: calc_int.ml:72 / REAL_ADD_RINV   (hash md5:73346d8a152a33c6ab509f9a667fb540)
Theorem hlt_REAL_ADD_RINV : forall x :e R, hl_real_add x (hl_real_neg x) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: calc_int.ml:76 / REAL_EQ_ADD_LCANCEL   (hash md5:86bc5f725d9ce64b845a1d50e047aeb4)
Theorem hlt_REAL_EQ_ADD_LCANCEL : forall x y z :e R, hl_real_add x y = hl_real_add x z <-> y = z.
Admitted.

// HOL Light: calc_int.ml:82 / REAL_EQ_ADD_RCANCEL   (hash md5:426cab645a1d4c17efb3ef1d1d848008)
Theorem hlt_REAL_EQ_ADD_RCANCEL : forall x y z :e R, hl_real_add x z = hl_real_add y z <-> x = y.
Admitted.

// HOL Light: calc_int.ml:86 / REAL_MUL_RZERO   (hash md5:7ea0eb7bbd0309ffcf17a00c946f188f)
Theorem hlt_REAL_MUL_RZERO : forall x :e R, hl_real_mul x (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: calc_int.ml:90 / REAL_MUL_LZERO   (hash md5:73fbc71a53aae64340fb9634fb267ed8)
Theorem hlt_REAL_MUL_LZERO : forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL hl_zero)) x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: calc_int.ml:94 / REAL_NEG_NEG   (hash md5:cb8faab7f2739dfbcdbfbe9981364aaa)
Theorem hlt_REAL_NEG_NEG : forall x :e R, hl_real_neg (hl_real_neg x) = x.
Admitted.

// HOL Light: calc_int.ml:99 / REAL_MUL_RNEG   (hash md5:cf4d4c0c36409257ee0e252ecfc87058)
Theorem hlt_REAL_MUL_RNEG : forall x y :e R, hl_real_mul x (hl_real_neg y) = hl_real_neg (hl_real_mul x y).
Admitted.

// HOL Light: calc_int.ml:104 / REAL_MUL_LNEG   (hash md5:93526b113fa809e8948f559a5fb2edbb)
Theorem hlt_REAL_MUL_LNEG : forall x y :e R, hl_real_mul (hl_real_neg x) y = hl_real_neg (hl_real_mul x y).
Admitted.

// HOL Light: calc_int.ml:108 / REAL_NEG_ADD   (hash md5:93ee3274f878c0cf401e52a6c0e0e30c)
Theorem hlt_REAL_NEG_ADD : forall x y :e R, hl_real_neg (hl_real_add x y) = hl_real_add (hl_real_neg x) (hl_real_neg y).
Admitted.

// HOL Light: calc_int.ml:116 / REAL_ADD_RID   (hash md5:d0c6ae778bf72860e2d9d9e713fa9d96)
Theorem hlt_REAL_ADD_RID : forall x :e R, hl_real_add x (hl_real_of_num (hl_NUMERAL hl_zero)) = x.
Admitted.

// HOL Light: calc_int.ml:120 / REAL_NEG_0   (hash md5:09b549c26384798305571589b87f85bb)
Theorem hlt_REAL_NEG_0 : hl_real_neg (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: calc_int.ml:124 / REAL_LE_LNEG   (hash md5:7c5e5b4ed605155dae012148a5a99030)
Theorem hlt_REAL_LE_LNEG : forall x y :e R, hl_real_le (hl_real_neg x) y = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1.
Admitted.

// HOL Light: calc_int.ml:134 / REAL_LE_NEG2   (hash md5:85c3ab5d47bd2b0c864b2ca1fc5d711f)
Theorem hlt_REAL_LE_NEG2 : forall x y :e R, hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> hl_real_le y x = 1.
Admitted.

// HOL Light: calc_int.ml:141 / REAL_LE_RNEG   (hash md5:1aa11f97f16232fc1462bb09baed0e0b)
Theorem hlt_REAL_LE_RNEG : forall x y :e R, hl_real_le x (hl_real_neg y) = 1 <-> hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: calc_int.ml:152 / REAL_OF_NUM_POW   (hash md5:3f6f8954e52c4d38ffbcfa9d9984644d)
Theorem hlt_REAL_OF_NUM_POW : forall x n :e omega, hl_real_pow (hl_real_of_num x) n = hl_real_of_num (hl_EXP x n).
Admitted.

// HOL Light: calc_int.ml:157 / REAL_POW_NEG   (hash md5:b6df1bfc4c450ce11672fb5a990555bb)
Theorem hlt_REAL_POW_NEG : forall x :e R, forall n :e omega, hl_real_pow (hl_real_neg x) n = hl_COND R (hl_EVEN n) (hl_real_pow x n) (hl_real_neg (hl_real_pow x n)).
Admitted.

// HOL Light: calc_int.ml:164 / REAL_ABS_NUM   (hash md5:df75b5e6fa88a89c5bf9fba4092ddbb8)
Theorem hlt_REAL_ABS_NUM : forall n :e omega, hl_real_abs (hl_real_of_num n) = hl_real_of_num n.
Admitted.

// HOL Light: calc_int.ml:168 / REAL_ABS_NEG   (hash md5:d5f050a5931b9e3acf72455c03c199d3)
Theorem hlt_REAL_ABS_NEG : forall x :e R, hl_real_abs (hl_real_neg x) = hl_real_abs x.
Admitted.

