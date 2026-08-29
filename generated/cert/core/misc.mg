// hol2mg certification module (private): shard misc of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light:  / REAL_ADD_ASSOC   (hash md5:74a76cf70ce019499736a9012b5e2bae)
Theorem hlt_REAL_ADD_ASSOC : forall x y z :e R, hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z.
Admitted.
Theorem REAL_ADD_ASSOC_bridge : (forall x y z :e R, hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z) -> (forall x y z :e R, x + y + z = (x + y) + z).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y z :e R, hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z) (fun x => forall y z :e R, x + y + z = (x + y) + z) (fun x Hx => (imp_forall_in (R) (fun y => forall z :e R, hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z) (fun y => forall z :e R, x + y + z = (x + y) + z) (fun y Hy => (imp_forall_in (R) (fun z => hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z) (fun z => x + y + z = (x + y) + z) (fun z Hz => (imp_eq (hl_real_add x (hl_real_add y z)) (x + y + z) (hl_real_add (hl_real_add x y) z) ((x + y) + z) (((hl_real_add_compat) (y) Hy (z) Hz) (fun hl__u hl__v => hl_real_add x (hl_real_add y z) = x + hl__u) ((hl_real_add_compat) (x) Hx (hl_real_add y z) (setexp_ap (R) (R) (hl_real_add y) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (y) Hy) (z) Hz))) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_add (hl_real_add x y) z = hl__u + z) ((hl_real_add_compat) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy) (z) Hz))))))))) H__top)).
Qed.
Theorem REAL_ADD_ASSOC : forall x y z :e R, x + y + z = (x + y) + z.
exact (REAL_ADD_ASSOC_bridge hlt_REAL_ADD_ASSOC).
Admitted.

// HOL Light:  / REAL_ADD_LDISTRIB   (hash md5:9504058edead67a0aafeb005184604d1)
Theorem hlt_REAL_ADD_LDISTRIB : forall x y z :e R, hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z).
Admitted.
Theorem REAL_ADD_LDISTRIB_bridge : (forall x y z :e R, hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z)) -> (forall x y z :e R, x * (y + z) = x * y + x * z).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y z :e R, hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z)) (fun x => forall y z :e R, x * (y + z) = x * y + x * z) (fun x Hx => (imp_forall_in (R) (fun y => forall z :e R, hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z)) (fun y => forall z :e R, x * (y + z) = x * y + x * z) (fun y Hy => (imp_forall_in (R) (fun z => hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z)) (fun z => x * (y + z) = x * y + x * z) (fun z Hz => (imp_eq (hl_real_mul x (hl_real_add y z)) (x * (y + z)) (hl_real_add (hl_real_mul x y) (hl_real_mul x z)) (x * y + x * z) (((hl_real_add_compat) (y) Hy (z) Hz) (fun hl__u hl__v => hl_real_mul x (hl_real_add y z) = x * hl__u) ((hl_real_mul_compat) (x) Hx (hl_real_add y z) (setexp_ap (R) (R) (hl_real_add y) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (y) Hy) (z) Hz))) (((hl_real_mul_compat) (x) Hx (z) Hz) (fun hl__u hl__v => hl_real_add (hl_real_mul x y) (hl_real_mul x z) = x * y + hl__u) (((hl_real_mul_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_add (hl_real_mul x y) (hl_real_mul x z) = hl__u + hl_real_mul x z) ((hl_real_add_compat) (hl_real_mul x y) (setexp_ap (R) (R) (hl_real_mul x) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (x) Hx) (y) Hy) (hl_real_mul x z) (setexp_ap (R) (R) (hl_real_mul x) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (x) Hx) (z) Hz))))))))))) H__top)).
Qed.
Theorem REAL_ADD_LDISTRIB : forall x y z :e R, x * (y + z) = x * y + x * z.
exact (REAL_ADD_LDISTRIB_bridge hlt_REAL_ADD_LDISTRIB).
Admitted.

// HOL Light:  / REAL_ADD_LID   (hash md5:bc28e0af8830dd84eb7843fab3060c61)
Theorem hlt_REAL_ADD_LID : forall x :e R, hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x = x.
Admitted.
Theorem REAL_ADD_LID_bridge : (forall x :e R, hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x = x) -> (forall x :e R, 0 + x = x).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x = x) (fun x => 0 + x = x) (fun x Hx => (imp_eq (hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x) (0 + x) (x) (x) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x = hl__u + x) ((hl_real_add_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (x) Hx)) (fun q H => H)))) H__top)).
Qed.
Theorem REAL_ADD_LID : forall x :e R, 0 + x = x.
exact (REAL_ADD_LID_bridge hlt_REAL_ADD_LID).
Admitted.

// HOL Light:  / REAL_ADD_LINV   (hash md5:69b62ed94b5a39a5cb6b939e9fd25fcf)
Theorem hlt_REAL_ADD_LINV : forall x :e R, hl_real_add (hl_real_neg x) x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.
Theorem REAL_ADD_LINV_bridge : (forall x :e R, hl_real_add (hl_real_neg x) x = hl_real_of_num (hl_NUMERAL hl_zero)) -> (forall x :e R, - x + x = 0).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_add (hl_real_neg x) x = hl_real_of_num (hl_NUMERAL hl_zero)) (fun x => - x + x = 0) (fun x Hx => (imp_eq (hl_real_add (hl_real_neg x) x) (- x + x) (hl_real_of_num (hl_NUMERAL hl_zero)) (0) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_add (hl_real_neg x) x = hl__u + x) ((hl_real_add_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx) (x) Hx)) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))) H__top)).
Qed.
Theorem REAL_ADD_LINV : forall x :e R, - x + x = 0.
exact (REAL_ADD_LINV_bridge hlt_REAL_ADD_LINV).
Admitted.

// HOL Light:  / REAL_ADD_SYM   (hash md5:69f4343bec6bd235a399ba23a38d19cf)
Theorem hlt_REAL_ADD_SYM : forall x y :e R, hl_real_add x y = hl_real_add y x.
Admitted.
Theorem REAL_ADD_SYM_bridge : (forall x y :e R, hl_real_add x y = hl_real_add y x) -> (forall x y :e R, x + y = y + x).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_add x y = hl_real_add y x) (fun x => forall y :e R, x + y = y + x) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_add x y = hl_real_add y x) (fun y => x + y = y + x) (fun y Hy => (imp_eq (hl_real_add x y) (x + y) (hl_real_add y x) (y + x) ((hl_real_add_compat) (x) Hx (y) Hy) ((hl_real_add_compat) (y) Hy (x) Hx)))))) H__top)).
Qed.
Theorem REAL_ADD_SYM : forall x y :e R, x + y = y + x.
exact (REAL_ADD_SYM_bridge hlt_REAL_ADD_SYM).
Admitted.

// HOL Light:  / REAL_INV_0   (hash md5:58bc73bd1864f8ac755987a82d6740f3)
Theorem hlt_REAL_INV_0 : hl_real_inv (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.
Theorem REAL_INV_0_bridge : (hl_real_inv (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero)) -> (recip_SNo 0 = 0).
exact (fun H__top => ((imp_eq (hl_real_inv (hl_real_of_num (hl_NUMERAL hl_zero))) (recip_SNo 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_inv (hl_real_of_num (hl_NUMERAL hl_zero)) = recip_SNo hl__u) ((hl_real_inv_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))) H__top)).
Qed.
Theorem REAL_INV_0 : recip_SNo 0 = 0.
exact (REAL_INV_0_bridge hlt_REAL_INV_0).
Admitted.

// HOL Light:  / REAL_LE_ANTISYM   (hash md5:2a36fae7a764e7b6f8d1470ecbd9d3be)
Theorem hlt_REAL_LE_ANTISYM : forall x y :e R, hl_real_le x y = 1 /\ hl_real_le y x = 1 <-> x = y.
Admitted.
Theorem REAL_LE_ANTISYM_bridge : (forall x y :e R, hl_real_le x y = 1 /\ hl_real_le y x = 1 <-> x = y) -> (forall x y :e R, x <= y /\ y <= x <-> x = y).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_le x y = 1 /\ hl_real_le y x = 1 <-> x = y) (fun x => forall y :e R, x <= y /\ y <= x <-> x = y) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_le x y = 1 /\ hl_real_le y x = 1 <-> x = y) (fun y => x <= y /\ y <= x <-> x = y) (fun y Hy => (imp_iff (hl_real_le x y = 1 /\ hl_real_le y x = 1) (x <= y /\ y <= x) (x = y) (x = y) (imp_and_dep (hl_real_le x y = 1) (x <= y) (hl_real_le y x = 1) (y <= x) (iffEL (hl_real_le x y = 1) (x <= y) ((hl_real_le_compat) (x) Hx (y) Hy)) (fun H__and3 : (x <= y) => (iffEL (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx)))) (imp_and_dep_bwd (hl_real_le x y = 1) (x <= y) (hl_real_le y x = 1) (y <= x) (iffER (hl_real_le x y = 1) (x <= y) ((hl_real_le_compat) (x) Hx (y) Hy)) (fun H__and2 : (x <= y) => (iffER (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx)))) (imp_eq (x) (x) (y) (y) (fun q H => H) (fun q H => H)) (imp_eq (x) (x) (y) (y) (eq_sym_i (x) (x) (fun q H => H)) (eq_sym_i (y) (y) (fun q H => H)))))))) H__top)).
Qed.
Theorem REAL_LE_ANTISYM : forall x y :e R, x <= y /\ y <= x <-> x = y.
exact (REAL_LE_ANTISYM_bridge hlt_REAL_LE_ANTISYM).
Admitted.

// HOL Light:  / REAL_LE_LADD_IMP   (hash md5:e8653e43300f16893ae7f5529f64d7cf)
Theorem hlt_REAL_LE_LADD_IMP : forall x y z :e R, hl_real_le y z = 1 -> hl_real_le (hl_real_add x y) (hl_real_add x z) = 1.
Admitted.
Theorem REAL_LE_LADD_IMP_bridge : (forall x y z :e R, hl_real_le y z = 1 -> hl_real_le (hl_real_add x y) (hl_real_add x z) = 1) -> (forall x y z :e R, y <= z -> x + y <= x + z).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y z :e R, hl_real_le y z = 1 -> hl_real_le (hl_real_add x y) (hl_real_add x z) = 1) (fun x => forall y z :e R, y <= z -> x + y <= x + z) (fun x Hx => (imp_forall_in (R) (fun y => forall z :e R, hl_real_le y z = 1 -> hl_real_le (hl_real_add x y) (hl_real_add x z) = 1) (fun y => forall z :e R, y <= z -> x + y <= x + z) (fun y Hy => (imp_forall_in (R) (fun z => hl_real_le y z = 1 -> hl_real_le (hl_real_add x y) (hl_real_add x z) = 1) (fun z => y <= z -> x + y <= x + z) (fun z Hz => (fun H__L : ((hl_real_le y z = 1) -> (hl_real_le (hl_real_add x y) (hl_real_add x z) = 1)) => fun H__hyp3 : (y <= z) => (iffEL (hl_real_le (hl_real_add x y) (hl_real_add x z) = 1) (x + y <= x + z) (((hl_real_add_compat) (x) Hx (z) Hz) (fun hl__u hl__v => hl_real_le (hl_real_add x y) (hl_real_add x z) = 1 <-> x + y <= hl__u) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_le (hl_real_add x y) (hl_real_add x z) = 1 <-> hl__u <= hl_real_add x z) ((hl_real_le_compat) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy) (hl_real_add x z) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (z) Hz))))) (H__L ((iffER (hl_real_le y z = 1) (y <= z) ((hl_real_le_compat) (y) Hy (z) Hz)) H__hyp3))))))))) H__top)).
Qed.
Theorem REAL_LE_LADD_IMP : forall x y z :e R, y <= z -> x + y <= x + z.
exact (REAL_LE_LADD_IMP_bridge hlt_REAL_LE_LADD_IMP).
Admitted.

// HOL Light:  / REAL_LE_MUL   (hash md5:c9eb15fcdfc4e3e8805ec06d0461d25f)
Theorem hlt_REAL_LE_MUL : forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1.
Admitted.
Theorem REAL_LE_MUL_bridge : (forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1) -> (forall x y :e R, 0 <= x /\ 0 <= y -> 0 <= x * y).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1) (fun x => forall y :e R, 0 <= x /\ 0 <= y -> 0 <= x * y) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1) (fun y => 0 <= x /\ 0 <= y -> 0 <= x * y) (fun y Hy => (fun H__L : ((hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1) -> (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1)) => fun H__hyp2 : (0 <= x /\ 0 <= y) => (iffEL (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1) (0 <= x * y) (((hl_real_mul_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1 <-> 0 <= hl__u) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1 <-> hl__u <= hl_real_mul x y) ((hl_real_le_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (hl_real_mul x y) (setexp_ap (R) (R) (hl_real_mul x) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (x) Hx) (y) Hy))))) (H__L ((imp_and_dep_bwd (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) (0 <= x) (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1) (0 <= y) (iffER (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) (0 <= x) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 <-> hl__u <= x) ((hl_real_le_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (x) Hx))) (fun H__and3 : (0 <= x) => (iffER (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1) (0 <= y) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 <-> hl__u <= y) ((hl_real_le_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (y) Hy))))) H__hyp2))))))) H__top)).
Qed.
Theorem REAL_LE_MUL : forall x y :e R, 0 <= x /\ 0 <= y -> 0 <= x * y.
exact (REAL_LE_MUL_bridge hlt_REAL_LE_MUL).
Admitted.

// HOL Light:  / REAL_LE_REFL   (hash md5:597f574f403c13d75887c264bf98d7ab)
Theorem hlt_REAL_LE_REFL : forall x :e R, hl_real_le x x = 1.
Admitted.
Theorem REAL_LE_REFL_bridge : (forall x :e R, hl_real_le x x = 1) -> (forall x :e R, x <= x).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_le x x = 1) (fun x => x <= x) (fun x Hx => (iffEL (hl_real_le x x = 1) (x <= x) ((hl_real_le_compat) (x) Hx (x) Hx)))) H__top)).
Qed.
Theorem REAL_LE_REFL : forall x :e R, x <= x.
exact (REAL_LE_REFL_bridge hlt_REAL_LE_REFL).
Admitted.

// HOL Light:  / REAL_LE_TOTAL   (hash md5:f100ea3864b4736d03f4488873b9fdf2)
Theorem hlt_REAL_LE_TOTAL : forall x y :e R, hl_real_le x y = 1 \/ hl_real_le y x = 1.
Admitted.
Theorem REAL_LE_TOTAL_bridge : (forall x y :e R, hl_real_le x y = 1 \/ hl_real_le y x = 1) -> (forall x y :e R, x <= y \/ y <= x).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_le x y = 1 \/ hl_real_le y x = 1) (fun x => forall y :e R, x <= y \/ y <= x) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_le x y = 1 \/ hl_real_le y x = 1) (fun y => x <= y \/ y <= x) (fun y Hy => (imp_or (hl_real_le x y = 1) (x <= y) (hl_real_le y x = 1) (y <= x) (iffEL (hl_real_le x y = 1) (x <= y) ((hl_real_le_compat) (x) Hx (y) Hy)) (iffEL (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx))))))) H__top)).
Qed.
Theorem REAL_LE_TOTAL : forall x y :e R, x <= y \/ y <= x.
exact (REAL_LE_TOTAL_bridge hlt_REAL_LE_TOTAL).
Admitted.

// HOL Light:  / REAL_LE_TRANS   (hash md5:650af3c1406ad5babc239cd1e46503bc)
Theorem hlt_REAL_LE_TRANS : forall x y z :e R, hl_real_le x y = 1 /\ hl_real_le y z = 1 -> hl_real_le x z = 1.
Admitted.
Theorem REAL_LE_TRANS_bridge : (forall x y z :e R, hl_real_le x y = 1 /\ hl_real_le y z = 1 -> hl_real_le x z = 1) -> (forall x y z :e R, x <= y /\ y <= z -> x <= z).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y z :e R, hl_real_le x y = 1 /\ hl_real_le y z = 1 -> hl_real_le x z = 1) (fun x => forall y z :e R, x <= y /\ y <= z -> x <= z) (fun x Hx => (imp_forall_in (R) (fun y => forall z :e R, hl_real_le x y = 1 /\ hl_real_le y z = 1 -> hl_real_le x z = 1) (fun y => forall z :e R, x <= y /\ y <= z -> x <= z) (fun y Hy => (imp_forall_in (R) (fun z => hl_real_le x y = 1 /\ hl_real_le y z = 1 -> hl_real_le x z = 1) (fun z => x <= y /\ y <= z -> x <= z) (fun z Hz => (fun H__L : ((hl_real_le x y = 1 /\ hl_real_le y z = 1) -> (hl_real_le x z = 1)) => fun H__hyp3 : (x <= y /\ y <= z) => (iffEL (hl_real_le x z = 1) (x <= z) ((hl_real_le_compat) (x) Hx (z) Hz)) (H__L ((imp_and_dep_bwd (hl_real_le x y = 1) (x <= y) (hl_real_le y z = 1) (y <= z) (iffER (hl_real_le x y = 1) (x <= y) ((hl_real_le_compat) (x) Hx (y) Hy)) (fun H__and4 : (x <= y) => (iffER (hl_real_le y z = 1) (y <= z) ((hl_real_le_compat) (y) Hy (z) Hz)))) H__hyp3))))))))) H__top)).
Qed.
Theorem REAL_LE_TRANS : forall x y z :e R, x <= y /\ y <= z -> x <= z.
exact (REAL_LE_TRANS_bridge hlt_REAL_LE_TRANS).
Admitted.

// HOL Light:  / REAL_MUL_ASSOC   (hash md5:9ea7c36e21183fa79ec8bfdc791ec8c6)
Theorem hlt_REAL_MUL_ASSOC : forall x y z :e R, hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z.
Admitted.
Theorem REAL_MUL_ASSOC_bridge : (forall x y z :e R, hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z) -> (forall x y z :e R, x * y * z = (x * y) * z).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y z :e R, hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z) (fun x => forall y z :e R, x * y * z = (x * y) * z) (fun x Hx => (imp_forall_in (R) (fun y => forall z :e R, hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z) (fun y => forall z :e R, x * y * z = (x * y) * z) (fun y Hy => (imp_forall_in (R) (fun z => hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z) (fun z => x * y * z = (x * y) * z) (fun z Hz => (imp_eq (hl_real_mul x (hl_real_mul y z)) (x * y * z) (hl_real_mul (hl_real_mul x y) z) ((x * y) * z) (((hl_real_mul_compat) (y) Hy (z) Hz) (fun hl__u hl__v => hl_real_mul x (hl_real_mul y z) = x * hl__u) ((hl_real_mul_compat) (x) Hx (hl_real_mul y z) (setexp_ap (R) (R) (hl_real_mul y) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (y) Hy) (z) Hz))) (((hl_real_mul_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_mul (hl_real_mul x y) z = hl__u * z) ((hl_real_mul_compat) (hl_real_mul x y) (setexp_ap (R) (R) (hl_real_mul x) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (x) Hx) (y) Hy) (z) Hz))))))))) H__top)).
Qed.
Theorem REAL_MUL_ASSOC : forall x y z :e R, x * y * z = (x * y) * z.
exact (REAL_MUL_ASSOC_bridge hlt_REAL_MUL_ASSOC).
Admitted.

// HOL Light:  / REAL_MUL_LID   (hash md5:fa6266f855ff7b740d82e448c2b4c45d)
Theorem hlt_REAL_MUL_LID : forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x.
Admitted.
Theorem REAL_MUL_LID_bridge : (forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x) -> (forall x :e R, 1 * x = x).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x) (fun x => 1 * x = x) (fun x Hx => (imp_eq (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x) (1 * x) (x) (x) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (fun hl__u hl__v => hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = hl__u * x) ((hl_real_mul_compat) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (x) Hx)) (fun q H => H)))) H__top)).
Qed.
Theorem REAL_MUL_LID : forall x :e R, 1 * x = x.
exact (REAL_MUL_LID_bridge hlt_REAL_MUL_LID).
Admitted.

// HOL Light:  / REAL_MUL_LINV   (hash md5:a9878dfb3f8f4e0493a76e9de2ddf29c)
Theorem hlt_REAL_MUL_LINV : forall x :e R, ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_mul (hl_real_inv x) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.
Theorem REAL_MUL_LINV_bridge : (forall x :e R, ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_mul (hl_real_inv x) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> (forall x :e R, ~ x = 0 -> recip_SNo x * x = 1).
exact (fun H__top => ((imp_forall_in (R) (fun x => ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_mul (hl_real_inv x) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (fun x => ~ x = 0 -> recip_SNo x * x = 1) (fun x Hx => (fun H__L : ((~ x = hl_real_of_num (hl_NUMERAL hl_zero)) -> (hl_real_mul (hl_real_inv x) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) => fun H__hyp1 : (~ x = 0) => (imp_eq (hl_real_mul (hl_real_inv x) x) (recip_SNo x * x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (1) (((hl_real_inv_compat) (x) Hx) (fun hl__u hl__v => hl_real_mul (hl_real_inv x) x = hl__u * x) ((hl_real_mul_compat) (hl_real_inv x) (setexp_ap (R) (R) (hl_real_inv) ((hl_real_inv_in)) (x) Hx) (x) Hx)) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (H__L ((imp_not (x = 0) (x = hl_real_of_num (hl_NUMERAL hl_zero)) (imp_eq (x) (x) (hl_real_of_num (hl_NUMERAL hl_zero)) (0) (fun q H => H) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))))) H__hyp1))))) H__top)).
Qed.
Theorem REAL_MUL_LINV : forall x :e R, ~ x = 0 -> recip_SNo x * x = 1.
exact (REAL_MUL_LINV_bridge hlt_REAL_MUL_LINV).
Admitted.

// HOL Light:  / REAL_MUL_SYM   (hash md5:863e7ca45d4101c0041b89d44ea64c52)
Theorem hlt_REAL_MUL_SYM : forall x y :e R, hl_real_mul x y = hl_real_mul y x.
Admitted.
Theorem REAL_MUL_SYM_bridge : (forall x y :e R, hl_real_mul x y = hl_real_mul y x) -> (forall x y :e R, x * y = y * x).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_mul x y = hl_real_mul y x) (fun x => forall y :e R, x * y = y * x) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_mul x y = hl_real_mul y x) (fun y => x * y = y * x) (fun y Hy => (imp_eq (hl_real_mul x y) (x * y) (hl_real_mul y x) (y * x) ((hl_real_mul_compat) (x) Hx (y) Hy) ((hl_real_mul_compat) (y) Hy (x) Hx)))))) H__top)).
Qed.
Theorem REAL_MUL_SYM : forall x y :e R, x * y = y * x.
exact (REAL_MUL_SYM_bridge hlt_REAL_MUL_SYM).
Admitted.

// HOL Light:  / REAL_OF_NUM_ADD   (hash md5:783dde967a79844cda42d3f3e75c41ad)
Theorem hlt_REAL_OF_NUM_ADD : forall m n :e omega, hl_real_add (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_add m n).
Admitted.
Theorem REAL_OF_NUM_ADD_bridge : (forall m n :e omega, hl_real_add (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_add m n)) -> (forall m n :e omega, m + n = m + n).
exact (fun H__top => ((imp_forall_in (omega) (fun m => forall n :e omega, hl_real_add (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_add m n)) (fun m => forall n :e omega, m + n = m + n) (fun m Hm => (imp_forall_in (omega) (fun n => hl_real_add (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_add m n)) (fun n => m + n = m + n) (fun n Hn => (imp_eq (hl_real_add (hl_real_of_num m) (hl_real_of_num n)) (m + n) (hl_real_of_num (hl_add m n)) (m + n) (((hl_real_of_num_compat) (n) Hn) (fun hl__u hl__v => hl_real_add (hl_real_of_num m) (hl_real_of_num n) = m + hl__u) (((hl_real_of_num_compat) (m) Hm) (fun hl__u hl__v => hl_real_add (hl_real_of_num m) (hl_real_of_num n) = hl__u + hl_real_of_num n) ((hl_real_add_compat) (hl_real_of_num m) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (m) Hm) (hl_real_of_num n) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (n) Hn)))) (((hl_add_compat) (m) Hm (n) Hn) (fun hl__u hl__v => hl_real_of_num (hl_add m n) = hl__u) ((hl_real_of_num_compat) (hl_add m n) (setexp_ap (omega) (omega) (hl_add m) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (m) Hm) (n) Hn)))))))) H__top)).
Qed.
Theorem REAL_OF_NUM_ADD : forall m n :e omega, m + n = m + n.
exact (REAL_OF_NUM_ADD_bridge hlt_REAL_OF_NUM_ADD).
Admitted.

// HOL Light:  / REAL_OF_NUM_EQ   (hash md5:e649467213c154968e334408a35629a3)
Theorem hlt_REAL_OF_NUM_EQ : forall m n :e omega, hl_real_of_num m = hl_real_of_num n <-> m = n.
Admitted.
Theorem REAL_OF_NUM_EQ_bridge : (forall m n :e omega, hl_real_of_num m = hl_real_of_num n <-> m = n) -> (forall m n :e omega, m = n <-> m = n).
exact (fun H__top => ((imp_forall_in (omega) (fun m => forall n :e omega, hl_real_of_num m = hl_real_of_num n <-> m = n) (fun m => forall n :e omega, m = n <-> m = n) (fun m Hm => (imp_forall_in (omega) (fun n => hl_real_of_num m = hl_real_of_num n <-> m = n) (fun n => m = n <-> m = n) (fun n Hn => (imp_iff (hl_real_of_num m = hl_real_of_num n) (m = n) (m = n) (m = n) (imp_eq (hl_real_of_num m) (m) (hl_real_of_num n) (n) ((hl_real_of_num_compat) (m) Hm) ((hl_real_of_num_compat) (n) Hn)) (imp_eq (m) (hl_real_of_num m) (n) (hl_real_of_num n) (eq_sym_i (hl_real_of_num m) (m) ((hl_real_of_num_compat) (m) Hm)) (eq_sym_i (hl_real_of_num n) (n) ((hl_real_of_num_compat) (n) Hn))) (imp_eq (m) (m) (n) (n) (fun q H => H) (fun q H => H)) (imp_eq (m) (m) (n) (n) (eq_sym_i (m) (m) (fun q H => H)) (eq_sym_i (n) (n) (fun q H => H)))))))) H__top)).
Qed.
Theorem REAL_OF_NUM_EQ : forall m n :e omega, m = n <-> m = n.
exact (REAL_OF_NUM_EQ_bridge hlt_REAL_OF_NUM_EQ).
Admitted.

// HOL Light:  / REAL_OF_NUM_LE   (hash md5:b38ea287b1a6fde1b028bc2167d47117)
Theorem hlt_REAL_OF_NUM_LE : forall m n :e omega, hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl_le m n = 1.
Admitted.
Theorem REAL_OF_NUM_LE_bridge : (forall m n :e omega, hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl_le m n = 1) -> (forall m n :e omega, m <= n <-> m <= n).
exact (fun H__top => ((imp_forall_in (omega) (fun m => forall n :e omega, hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl_le m n = 1) (fun m => forall n :e omega, m <= n <-> m <= n) (fun m Hm => (imp_forall_in (omega) (fun n => hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl_le m n = 1) (fun n => m <= n <-> m <= n) (fun n Hn => (imp_iff (hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1) (m <= n) (hl_le m n = 1) (m <= n) (iffEL (hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1) (m <= n) (((hl_real_of_num_compat) (n) Hn) (fun hl__u hl__v => hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> m <= hl__u) (((hl_real_of_num_compat) (m) Hm) (fun hl__u hl__v => hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl__u <= hl_real_of_num n) ((hl_real_le_compat) (hl_real_of_num m) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (m) Hm) (hl_real_of_num n) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (n) Hn))))) (iffER (hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1) (m <= n) (((hl_real_of_num_compat) (n) Hn) (fun hl__u hl__v => hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> m <= hl__u) (((hl_real_of_num_compat) (m) Hm) (fun hl__u hl__v => hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl__u <= hl_real_of_num n) ((hl_real_le_compat) (hl_real_of_num m) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (m) Hm) (hl_real_of_num n) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (n) Hn))))) (iffEL (hl_le m n = 1) (m <= n) ((hl_le_compat) (m) Hm (n) Hn)) (iffER (hl_le m n = 1) (m <= n) ((hl_le_compat) (m) Hm (n) Hn))))))) H__top)).
Qed.
Theorem REAL_OF_NUM_LE : forall m n :e omega, m <= n <-> m <= n.
exact (REAL_OF_NUM_LE_bridge hlt_REAL_OF_NUM_LE).
Admitted.

// HOL Light:  / REAL_OF_NUM_MUL   (hash md5:5d6f0dca606a500bcdc82080ce708462)
Theorem hlt_REAL_OF_NUM_MUL : forall m n :e omega, hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_mul m n).
Admitted.
Theorem REAL_OF_NUM_MUL_bridge : (forall m n :e omega, hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_mul m n)) -> (forall m n :e omega, m * n = m * n).
exact (fun H__top => ((imp_forall_in (omega) (fun m => forall n :e omega, hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_mul m n)) (fun m => forall n :e omega, m * n = m * n) (fun m Hm => (imp_forall_in (omega) (fun n => hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_mul m n)) (fun n => m * n = m * n) (fun n Hn => (imp_eq (hl_real_mul (hl_real_of_num m) (hl_real_of_num n)) (m * n) (hl_real_of_num (hl_mul m n)) (m * n) (((hl_real_of_num_compat) (n) Hn) (fun hl__u hl__v => hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = m * hl__u) (((hl_real_of_num_compat) (m) Hm) (fun hl__u hl__v => hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = hl__u * hl_real_of_num n) ((hl_real_mul_compat) (hl_real_of_num m) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (m) Hm) (hl_real_of_num n) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (n) Hn)))) (((hl_mul_compat) (m) Hm (n) Hn) (fun hl__u hl__v => hl_real_of_num (hl_mul m n) = hl__u) ((hl_real_of_num_compat) (hl_mul m n) (setexp_ap (omega) (omega) (hl_mul m) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (m) Hm) (n) Hn)))))))) H__top)).
Qed.
Theorem REAL_OF_NUM_MUL : forall m n :e omega, m * n = m * n.
exact (REAL_OF_NUM_MUL_bridge hlt_REAL_OF_NUM_MUL).
Admitted.

