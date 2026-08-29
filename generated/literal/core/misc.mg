// hol2mg literal statements (private): shard misc of profile core.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light:  / Hashek.hashek_def   (hash md5:c9e057b71c5558b394ac2bf4f300350e)
Theorem hlt_Hashek_hashek_def : hl_hashek = 1 <-> True.
Admitted.

// HOL Light:  / Hashek.hashek_eq   (hash md5:0dae2246aacb5ce8008e3a6e41a7740c)
Theorem hlt_Hashek_hashek_eq : ~ hl_hashek = 1 <-> False.
Admitted.

// HOL Light:  / Hashek.hashek_prop   (hash md5:83afef388f469aa764df4fb491000547)
Theorem hlt_Hashek_hashek_prop : forall x y :e 2, (x = 1 /\ hl_hashek = 1 -> y = 1 /\ hl_hashek = 1) -> x = 1 -> y = 1.
Admitted.

// HOL Light:  / Hashek.hashek_thm   (hash md5:8d3769f9cc2fc973217a2aaaa8ad7398)
Theorem hlt_Hashek_hashek_thm : hl_hashek = 1.
Admitted.

// HOL Light:  / REAL_ADD_ASSOC   (hash md5:74a76cf70ce019499736a9012b5e2bae)
Theorem hlt_REAL_ADD_ASSOC : forall x y z :e R, hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z.
Admitted.

// HOL Light:  / REAL_ADD_LDISTRIB   (hash md5:9504058edead67a0aafeb005184604d1)
Theorem hlt_REAL_ADD_LDISTRIB : forall x y z :e R, hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z).
Admitted.

// HOL Light:  / REAL_ADD_LID   (hash md5:bc28e0af8830dd84eb7843fab3060c61)
Theorem hlt_REAL_ADD_LID : forall x :e R, hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x = x.
Admitted.

// HOL Light:  / REAL_ADD_LINV   (hash md5:69b62ed94b5a39a5cb6b939e9fd25fcf)
Theorem hlt_REAL_ADD_LINV : forall x :e R, hl_real_add (hl_real_neg x) x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light:  / REAL_ADD_SYM   (hash md5:69f4343bec6bd235a399ba23a38d19cf)
Theorem hlt_REAL_ADD_SYM : forall x y :e R, hl_real_add x y = hl_real_add y x.
Admitted.

// HOL Light:  / REAL_INV_0   (hash md5:58bc73bd1864f8ac755987a82d6740f3)
Theorem hlt_REAL_INV_0 : hl_real_inv (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light:  / REAL_LE_ANTISYM   (hash md5:2a36fae7a764e7b6f8d1470ecbd9d3be)
Theorem hlt_REAL_LE_ANTISYM : forall x y :e R, hl_real_le x y = 1 /\ hl_real_le y x = 1 <-> x = y.
Admitted.

// HOL Light:  / REAL_LE_LADD_IMP   (hash md5:e8653e43300f16893ae7f5529f64d7cf)
Theorem hlt_REAL_LE_LADD_IMP : forall x y z :e R, hl_real_le y z = 1 -> hl_real_le (hl_real_add x y) (hl_real_add x z) = 1.
Admitted.

// HOL Light:  / REAL_LE_MUL   (hash md5:c9eb15fcdfc4e3e8805ec06d0461d25f)
Theorem hlt_REAL_LE_MUL : forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1.
Admitted.

// HOL Light:  / REAL_LE_REFL   (hash md5:597f574f403c13d75887c264bf98d7ab)
Theorem hlt_REAL_LE_REFL : forall x :e R, hl_real_le x x = 1.
Admitted.

// HOL Light:  / REAL_LE_TOTAL   (hash md5:f100ea3864b4736d03f4488873b9fdf2)
Theorem hlt_REAL_LE_TOTAL : forall x y :e R, hl_real_le x y = 1 \/ hl_real_le y x = 1.
Admitted.

// HOL Light:  / REAL_LE_TRANS   (hash md5:650af3c1406ad5babc239cd1e46503bc)
Theorem hlt_REAL_LE_TRANS : forall x y z :e R, hl_real_le x y = 1 /\ hl_real_le y z = 1 -> hl_real_le x z = 1.
Admitted.

// HOL Light:  / REAL_MUL_ASSOC   (hash md5:9ea7c36e21183fa79ec8bfdc791ec8c6)
Theorem hlt_REAL_MUL_ASSOC : forall x y z :e R, hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z.
Admitted.

// HOL Light:  / REAL_MUL_LID   (hash md5:fa6266f855ff7b740d82e448c2b4c45d)
Theorem hlt_REAL_MUL_LID : forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x.
Admitted.

// HOL Light:  / REAL_MUL_LINV   (hash md5:a9878dfb3f8f4e0493a76e9de2ddf29c)
Theorem hlt_REAL_MUL_LINV : forall x :e R, ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_mul (hl_real_inv x) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light:  / REAL_MUL_SYM   (hash md5:863e7ca45d4101c0041b89d44ea64c52)
Theorem hlt_REAL_MUL_SYM : forall x y :e R, hl_real_mul x y = hl_real_mul y x.
Admitted.

// HOL Light:  / REAL_OF_NUM_ADD   (hash md5:783dde967a79844cda42d3f3e75c41ad)
Theorem hlt_REAL_OF_NUM_ADD : forall m n :e omega, hl_real_add (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_add m n).
Admitted.

// HOL Light:  / REAL_OF_NUM_EQ   (hash md5:e649467213c154968e334408a35629a3)
Theorem hlt_REAL_OF_NUM_EQ : forall m n :e omega, hl_real_of_num m = hl_real_of_num n <-> m = n.
Admitted.

// HOL Light:  / REAL_OF_NUM_LE   (hash md5:b38ea287b1a6fde1b028bc2167d47117)
Theorem hlt_REAL_OF_NUM_LE : forall m n :e omega, hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl_le m n = 1.
Admitted.

// HOL Light:  / REAL_OF_NUM_MUL   (hash md5:5d6f0dca606a500bcdc82080ce708462)
Theorem hlt_REAL_OF_NUM_MUL : forall m n :e omega, hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_mul m n).
Admitted.

