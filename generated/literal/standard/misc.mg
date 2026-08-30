// hol2mg literal statements (private): shard misc of profile standard.  Each theorem is the literal
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

// HOL Light:  / PADIC_RATIONAL_APPROXIMATION_STRADDLE_POS   (hash md5:be4953ae10665c28394dff7a58551f1f)
Theorem hlt_PADIC_RATIONAL_APPROXIMATION_STRADDLE_POS : forall p x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) p = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) -> exists n q r :e omega, hl_real_lt (hl_real_div (hl_real_of_num q) (hl_real_pow p n)) x = 1 /\ (hl_real_lt x (hl_real_div (hl_real_of_num r) (hl_real_pow p n)) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub (hl_real_div (hl_real_of_num q) (hl_real_pow p n)) (hl_real_div (hl_real_of_num r) (hl_real_pow p n)))) e1 = 1).
Admitted.

// HOL Light:  / PADIC_RATIONAL_APPROXIMATION_STRADDLE_POS_LE   (hash md5:05e169fddd37acc5bf474144db13e462)
Theorem hlt_PADIC_RATIONAL_APPROXIMATION_STRADDLE_POS_LE : forall p x e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) p = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) -> exists n q r :e omega, hl_real_le (hl_real_div (hl_real_of_num q) (hl_real_pow p n)) x = 1 /\ (hl_real_lt x (hl_real_div (hl_real_of_num r) (hl_real_pow p n)) = 1 /\ hl_real_lt (hl_real_abs (hl_real_sub (hl_real_div (hl_real_of_num q) (hl_real_pow p n)) (hl_real_div (hl_real_of_num r) (hl_real_pow p n)))) e1 = 1).
Admitted.

// HOL Light:  / POSET_ANTISYM   (hash md5:ba13202582f948e2591fea30c6186b30)
Theorem hlt_POSET_ANTISYM : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y.
Admitted.

// HOL Light:  / POSET_REFL   (hash md5:8dad76bdce58b79642205a8ab04ab9b6)
Theorem hlt_POSET_REFL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> forall x :e A, hl_fld A l x = 1 -> l x x = 1.
Admitted.

// HOL Light:  / POSET_TRANS   (hash md5:b29c36449f93ca446a3c710c5b86b04d)
Theorem hlt_POSET_TRANS : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1.
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

// HOL Light:  / WOSET_ANTISYM   (hash md5:b7edb5ebaa5295a5ab47facef321cb1e)
Theorem hlt_WOSET_ANTISYM : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y.
Admitted.

// HOL Light:  / WOSET_REFL   (hash md5:2657e9808b0eab43787cca78dd9d1087)
Theorem hlt_WOSET_REFL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x :e A, hl_fld A l x = 1 -> l x x = 1.
Admitted.

// HOL Light:  / WOSET_TOTAL   (hash md5:e4e85261ff7babcf95145df8b9803d8e)
Theorem hlt_WOSET_TOTAL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y :e A, hl_fld A l x = 1 /\ hl_fld A l y = 1 -> l x y = 1 \/ l y x = 1.
Admitted.

// HOL Light:  / WOSET_TRANS   (hash md5:2f6108c0be40e22372e36f256a09f219)
Theorem hlt_WOSET_TRANS : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1.
Admitted.

// HOL Light:  / WOSET_WELL   (hash md5:21ee058a10356d881f0fb0745d5a7181)
Theorem hlt_WOSET_WELL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall s :e 2 :^: A, (forall x :e A, s x = 1 -> hl_fld A l x = 1) /\ (exists x :e A, s x = 1) -> exists x :e A, s x = 1 /\ forall y :e A, s y = 1 -> l x y = 1.
Admitted.

// HOL Light:  / WQOSET_ANTICHAIN   (hash md5:677ba4f78023c861e1bd1422705472f0)
Theorem hlt_WQOSET_ANTICHAIN : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> hl_qoset A l = 1 /\ (hl_WF A (hl_strictly A l) = 1 /\ forall s :e 2 :^: A, hl_antichain A l s = 1 -> hl_FINITE A s = 1).
Admitted.

// HOL Light:  / WQOSET_NOBAD   (hash md5:2335184538662ee9cce85cc928a9851d)
Theorem hlt_WQOSET_NOBAD : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> hl_qoset A l = 1 /\ forall x :e A :^: omega, (forall n :e omega, hl_IN A (x n) (hl_fld A l) = 1) -> exists i j :e omega, hl_lt i j = 1 /\ l (x i) (x j) = 1.
Admitted.

// HOL Light:  / WQOSET_NOBAD_SUBSEQ   (hash md5:50d5416656b450467dc4740b717acb55)
Theorem hlt_WQOSET_NOBAD_SUBSEQ : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> hl_qoset A l = 1 /\ forall x :e A :^: omega, (forall n :e omega, hl_IN A (x n) (hl_fld A l) = 1) -> exists r :e omega :^: omega, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ forall i j :e omega, hl_le i j = 1 -> l (x (r i)) (x (r j)) = 1.
Admitted.

