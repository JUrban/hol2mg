// hol2mg certification module (private): shard calc_int of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: calc_int.ml:66 / REAL_ADD_AC   (hash md5:a7dfbac61d36cd2920f9283264877110)
Theorem hlt_REAL_ADD_AC : forall m n p :e R, hl_real_add m n = hl_real_add n m /\ (hl_real_add (hl_real_add m n) p = hl_real_add m (hl_real_add n p) /\ hl_real_add m (hl_real_add n p) = hl_real_add n (hl_real_add m p)).
Admitted.
Theorem REAL_ADD_AC_bridge : (forall m n p :e R, hl_real_add m n = hl_real_add n m /\ (hl_real_add (hl_real_add m n) p = hl_real_add m (hl_real_add n p) /\ hl_real_add m (hl_real_add n p) = hl_real_add n (hl_real_add m p))) -> (forall m n p :e R, m + n = n + m /\ ((m + n) + p = m + n + p /\ m + n + p = n + m + p)).
exact (fun H__top => ((imp_forall_in (R) (fun m => forall n p :e R, hl_real_add m n = hl_real_add n m /\ (hl_real_add (hl_real_add m n) p = hl_real_add m (hl_real_add n p) /\ hl_real_add m (hl_real_add n p) = hl_real_add n (hl_real_add m p))) (fun m => forall n p :e R, m + n = n + m /\ ((m + n) + p = m + n + p /\ m + n + p = n + m + p)) (fun m Hm => (imp_forall_in (R) (fun n => forall p :e R, hl_real_add m n = hl_real_add n m /\ (hl_real_add (hl_real_add m n) p = hl_real_add m (hl_real_add n p) /\ hl_real_add m (hl_real_add n p) = hl_real_add n (hl_real_add m p))) (fun n => forall p :e R, m + n = n + m /\ ((m + n) + p = m + n + p /\ m + n + p = n + m + p)) (fun n Hn => (imp_forall_in (R) (fun p => hl_real_add m n = hl_real_add n m /\ (hl_real_add (hl_real_add m n) p = hl_real_add m (hl_real_add n p) /\ hl_real_add m (hl_real_add n p) = hl_real_add n (hl_real_add m p))) (fun p => m + n = n + m /\ ((m + n) + p = m + n + p /\ m + n + p = n + m + p)) (fun p Hp => (imp_and_dep (hl_real_add m n = hl_real_add n m) (m + n = n + m) (hl_real_add (hl_real_add m n) p = hl_real_add m (hl_real_add n p) /\ hl_real_add m (hl_real_add n p) = hl_real_add n (hl_real_add m p)) ((m + n) + p = m + n + p /\ m + n + p = n + m + p) (imp_eq (hl_real_add m n) (m + n) (hl_real_add n m) (n + m) ((hl_real_add_compat) (m) Hm (n) Hn) ((hl_real_add_compat) (n) Hn (m) Hm)) (fun H__and3 : (m + n = n + m) => (imp_and_dep (hl_real_add (hl_real_add m n) p = hl_real_add m (hl_real_add n p)) ((m + n) + p = m + n + p) (hl_real_add m (hl_real_add n p) = hl_real_add n (hl_real_add m p)) (m + n + p = n + m + p) (imp_eq (hl_real_add (hl_real_add m n) p) ((m + n) + p) (hl_real_add m (hl_real_add n p)) (m + n + p) (((hl_real_add_compat) (m) Hm (n) Hn) (fun hl__u hl__v => hl_real_add (hl_real_add m n) p = hl__u + p) ((hl_real_add_compat) (hl_real_add m n) (setexp_ap (R) (R) (hl_real_add m) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (m) Hm) (n) Hn) (p) Hp)) (((hl_real_add_compat) (n) Hn (p) Hp) (fun hl__u hl__v => hl_real_add m (hl_real_add n p) = m + hl__u) ((hl_real_add_compat) (m) Hm (hl_real_add n p) (setexp_ap (R) (R) (hl_real_add n) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (n) Hn) (p) Hp)))) (fun H__and4 : ((m + n) + p = m + n + p) => (imp_eq (hl_real_add m (hl_real_add n p)) (m + n + p) (hl_real_add n (hl_real_add m p)) (n + m + p) (((hl_real_add_compat) (n) Hn (p) Hp) (fun hl__u hl__v => hl_real_add m (hl_real_add n p) = m + hl__u) ((hl_real_add_compat) (m) Hm (hl_real_add n p) (setexp_ap (R) (R) (hl_real_add n) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (n) Hn) (p) Hp))) (((hl_real_add_compat) (m) Hm (p) Hp) (fun hl__u hl__v => hl_real_add n (hl_real_add m p) = n + hl__u) ((hl_real_add_compat) (n) Hn (hl_real_add m p) (setexp_ap (R) (R) (hl_real_add m) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (m) Hm) (p) Hp)))))))))))))) H__top)).
Qed.
Theorem REAL_ADD_AC : forall m n p :e R, m + n = n + m /\ ((m + n) + p = m + n + p /\ m + n + p = n + m + p).
exact (REAL_ADD_AC_bridge hlt_REAL_ADD_AC).
Admitted.

// HOL Light: calc_int.ml:72 / REAL_ADD_RINV   (hash md5:73346d8a152a33c6ab509f9a667fb540)
Theorem hlt_REAL_ADD_RINV : forall x :e R, hl_real_add x (hl_real_neg x) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.
Theorem REAL_ADD_RINV_bridge : (forall x :e R, hl_real_add x (hl_real_neg x) = hl_real_of_num (hl_NUMERAL hl_zero)) -> (forall x :e R, x + - x = 0).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_add x (hl_real_neg x) = hl_real_of_num (hl_NUMERAL hl_zero)) (fun x => x + - x = 0) (fun x Hx => (imp_eq (hl_real_add x (hl_real_neg x)) (x + - x) (hl_real_of_num (hl_NUMERAL hl_zero)) (0) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_add x (hl_real_neg x) = x + hl__u) ((hl_real_add_compat) (x) Hx (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx))) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))) H__top)).
Qed.
Theorem REAL_ADD_RINV : forall x :e R, x + - x = 0.
exact (REAL_ADD_RINV_bridge hlt_REAL_ADD_RINV).
Admitted.

// HOL Light: calc_int.ml:76 / REAL_EQ_ADD_LCANCEL   (hash md5:86bc5f725d9ce64b845a1d50e047aeb4)
Theorem hlt_REAL_EQ_ADD_LCANCEL : forall x y z :e R, hl_real_add x y = hl_real_add x z <-> y = z.
Admitted.
Theorem REAL_EQ_ADD_LCANCEL_bridge : (forall x y z :e R, hl_real_add x y = hl_real_add x z <-> y = z) -> (forall x y z :e R, x + y = x + z <-> y = z).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y z :e R, hl_real_add x y = hl_real_add x z <-> y = z) (fun x => forall y z :e R, x + y = x + z <-> y = z) (fun x Hx => (imp_forall_in (R) (fun y => forall z :e R, hl_real_add x y = hl_real_add x z <-> y = z) (fun y => forall z :e R, x + y = x + z <-> y = z) (fun y Hy => (imp_forall_in (R) (fun z => hl_real_add x y = hl_real_add x z <-> y = z) (fun z => x + y = x + z <-> y = z) (fun z Hz => (imp_iff (hl_real_add x y = hl_real_add x z) (x + y = x + z) (y = z) (y = z) (imp_eq (hl_real_add x y) (x + y) (hl_real_add x z) (x + z) ((hl_real_add_compat) (x) Hx (y) Hy) ((hl_real_add_compat) (x) Hx (z) Hz)) (imp_eq (x + y) (hl_real_add x y) (x + z) (hl_real_add x z) (eq_sym_i (hl_real_add x y) (x + y) ((hl_real_add_compat) (x) Hx (y) Hy)) (eq_sym_i (hl_real_add x z) (x + z) ((hl_real_add_compat) (x) Hx (z) Hz))) (imp_eq (y) (y) (z) (z) (fun q H => H) (fun q H => H)) (imp_eq (y) (y) (z) (z) (eq_sym_i (y) (y) (fun q H => H)) (eq_sym_i (z) (z) (fun q H => H)))))))))) H__top)).
Qed.
Theorem REAL_EQ_ADD_LCANCEL : forall x y z :e R, x + y = x + z <-> y = z.
exact (REAL_EQ_ADD_LCANCEL_bridge hlt_REAL_EQ_ADD_LCANCEL).
Admitted.

// HOL Light: calc_int.ml:82 / REAL_EQ_ADD_RCANCEL   (hash md5:426cab645a1d4c17efb3ef1d1d848008)
Theorem hlt_REAL_EQ_ADD_RCANCEL : forall x y z :e R, hl_real_add x z = hl_real_add y z <-> x = y.
Admitted.
Theorem REAL_EQ_ADD_RCANCEL_bridge : (forall x y z :e R, hl_real_add x z = hl_real_add y z <-> x = y) -> (forall x y z :e R, x + z = y + z <-> x = y).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y z :e R, hl_real_add x z = hl_real_add y z <-> x = y) (fun x => forall y z :e R, x + z = y + z <-> x = y) (fun x Hx => (imp_forall_in (R) (fun y => forall z :e R, hl_real_add x z = hl_real_add y z <-> x = y) (fun y => forall z :e R, x + z = y + z <-> x = y) (fun y Hy => (imp_forall_in (R) (fun z => hl_real_add x z = hl_real_add y z <-> x = y) (fun z => x + z = y + z <-> x = y) (fun z Hz => (imp_iff (hl_real_add x z = hl_real_add y z) (x + z = y + z) (x = y) (x = y) (imp_eq (hl_real_add x z) (x + z) (hl_real_add y z) (y + z) ((hl_real_add_compat) (x) Hx (z) Hz) ((hl_real_add_compat) (y) Hy (z) Hz)) (imp_eq (x + z) (hl_real_add x z) (y + z) (hl_real_add y z) (eq_sym_i (hl_real_add x z) (x + z) ((hl_real_add_compat) (x) Hx (z) Hz)) (eq_sym_i (hl_real_add y z) (y + z) ((hl_real_add_compat) (y) Hy (z) Hz))) (imp_eq (x) (x) (y) (y) (fun q H => H) (fun q H => H)) (imp_eq (x) (x) (y) (y) (eq_sym_i (x) (x) (fun q H => H)) (eq_sym_i (y) (y) (fun q H => H)))))))))) H__top)).
Qed.
Theorem REAL_EQ_ADD_RCANCEL : forall x y z :e R, x + z = y + z <-> x = y.
exact (REAL_EQ_ADD_RCANCEL_bridge hlt_REAL_EQ_ADD_RCANCEL).
Admitted.

// HOL Light: calc_int.ml:86 / REAL_MUL_RZERO   (hash md5:7ea0eb7bbd0309ffcf17a00c946f188f)
Theorem hlt_REAL_MUL_RZERO : forall x :e R, hl_real_mul x (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.
Theorem REAL_MUL_RZERO_bridge : (forall x :e R, hl_real_mul x (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero)) -> (forall x :e R, x * 0 = 0).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_mul x (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero)) (fun x => x * 0 = 0) (fun x Hx => (imp_eq (hl_real_mul x (hl_real_of_num (hl_NUMERAL hl_zero))) (x * 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_mul x (hl_real_of_num (hl_NUMERAL hl_zero)) = x * hl__u) ((hl_real_mul_compat) (x) Hx (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))) H__top)).
Qed.
Theorem REAL_MUL_RZERO : forall x :e R, x * 0 = 0.
exact (REAL_MUL_RZERO_bridge hlt_REAL_MUL_RZERO).
Admitted.

// HOL Light: calc_int.ml:90 / REAL_MUL_LZERO   (hash md5:73fbc71a53aae64340fb9634fb267ed8)
Theorem hlt_REAL_MUL_LZERO : forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL hl_zero)) x = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.
Theorem REAL_MUL_LZERO_bridge : (forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL hl_zero)) x = hl_real_of_num (hl_NUMERAL hl_zero)) -> (forall x :e R, 0 * x = 0).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_mul (hl_real_of_num (hl_NUMERAL hl_zero)) x = hl_real_of_num (hl_NUMERAL hl_zero)) (fun x => 0 * x = 0) (fun x Hx => (imp_eq (hl_real_mul (hl_real_of_num (hl_NUMERAL hl_zero)) x) (0 * x) (hl_real_of_num (hl_NUMERAL hl_zero)) (0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_mul (hl_real_of_num (hl_NUMERAL hl_zero)) x = hl__u * x) ((hl_real_mul_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (x) Hx)) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))) H__top)).
Qed.
Theorem REAL_MUL_LZERO : forall x :e R, 0 * x = 0.
exact (REAL_MUL_LZERO_bridge hlt_REAL_MUL_LZERO).
Admitted.

// HOL Light: calc_int.ml:94 / REAL_NEG_NEG   (hash md5:cb8faab7f2739dfbcdbfbe9981364aaa)
Theorem hlt_REAL_NEG_NEG : forall x :e R, hl_real_neg (hl_real_neg x) = x.
Admitted.
Theorem REAL_NEG_NEG_bridge : (forall x :e R, hl_real_neg (hl_real_neg x) = x) -> (forall x :e R, - - x = x).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_neg (hl_real_neg x) = x) (fun x => - - x = x) (fun x Hx => (imp_eq (hl_real_neg (hl_real_neg x)) (- - x) (x) (x) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_neg (hl_real_neg x) = - hl__u) ((hl_real_neg_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx))) (fun q H => H)))) H__top)).
Qed.
Theorem REAL_NEG_NEG : forall x :e R, - - x = x.
exact (REAL_NEG_NEG_bridge hlt_REAL_NEG_NEG).
Admitted.

// HOL Light: calc_int.ml:99 / REAL_MUL_RNEG   (hash md5:cf4d4c0c36409257ee0e252ecfc87058)
Theorem hlt_REAL_MUL_RNEG : forall x y :e R, hl_real_mul x (hl_real_neg y) = hl_real_neg (hl_real_mul x y).
Admitted.
Theorem REAL_MUL_RNEG_bridge : (forall x y :e R, hl_real_mul x (hl_real_neg y) = hl_real_neg (hl_real_mul x y)) -> (forall x y :e R, x * (- y) = - x * y).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_mul x (hl_real_neg y) = hl_real_neg (hl_real_mul x y)) (fun x => forall y :e R, x * (- y) = - x * y) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_mul x (hl_real_neg y) = hl_real_neg (hl_real_mul x y)) (fun y => x * (- y) = - x * y) (fun y Hy => (imp_eq (hl_real_mul x (hl_real_neg y)) (x * (- y)) (hl_real_neg (hl_real_mul x y)) (- x * y) (((hl_real_neg_compat) (y) Hy) (fun hl__u hl__v => hl_real_mul x (hl_real_neg y) = x * hl__u) ((hl_real_mul_compat) (x) Hx (hl_real_neg y) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (y) Hy))) (((hl_real_mul_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_neg (hl_real_mul x y) = - hl__u) ((hl_real_neg_compat) (hl_real_mul x y) (setexp_ap (R) (R) (hl_real_mul x) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (x) Hx) (y) Hy)))))))) H__top)).
Qed.
Theorem REAL_MUL_RNEG : forall x y :e R, x * (- y) = - x * y.
exact (REAL_MUL_RNEG_bridge hlt_REAL_MUL_RNEG).
Admitted.

// HOL Light: calc_int.ml:104 / REAL_MUL_LNEG   (hash md5:93526b113fa809e8948f559a5fb2edbb)
Theorem hlt_REAL_MUL_LNEG : forall x y :e R, hl_real_mul (hl_real_neg x) y = hl_real_neg (hl_real_mul x y).
Admitted.
Theorem REAL_MUL_LNEG_bridge : (forall x y :e R, hl_real_mul (hl_real_neg x) y = hl_real_neg (hl_real_mul x y)) -> (forall x y :e R, (- x) * y = - x * y).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_mul (hl_real_neg x) y = hl_real_neg (hl_real_mul x y)) (fun x => forall y :e R, (- x) * y = - x * y) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_mul (hl_real_neg x) y = hl_real_neg (hl_real_mul x y)) (fun y => (- x) * y = - x * y) (fun y Hy => (imp_eq (hl_real_mul (hl_real_neg x) y) ((- x) * y) (hl_real_neg (hl_real_mul x y)) (- x * y) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_mul (hl_real_neg x) y = hl__u * y) ((hl_real_mul_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx) (y) Hy)) (((hl_real_mul_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_neg (hl_real_mul x y) = - hl__u) ((hl_real_neg_compat) (hl_real_mul x y) (setexp_ap (R) (R) (hl_real_mul x) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (x) Hx) (y) Hy)))))))) H__top)).
Qed.
Theorem REAL_MUL_LNEG : forall x y :e R, (- x) * y = - x * y.
exact (REAL_MUL_LNEG_bridge hlt_REAL_MUL_LNEG).
Admitted.

// HOL Light: calc_int.ml:108 / REAL_NEG_ADD   (hash md5:93ee3274f878c0cf401e52a6c0e0e30c)
Theorem hlt_REAL_NEG_ADD : forall x y :e R, hl_real_neg (hl_real_add x y) = hl_real_add (hl_real_neg x) (hl_real_neg y).
Admitted.
Theorem REAL_NEG_ADD_bridge : (forall x y :e R, hl_real_neg (hl_real_add x y) = hl_real_add (hl_real_neg x) (hl_real_neg y)) -> (forall x y :e R, - (x + y) = - x + - y).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_neg (hl_real_add x y) = hl_real_add (hl_real_neg x) (hl_real_neg y)) (fun x => forall y :e R, - (x + y) = - x + - y) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_neg (hl_real_add x y) = hl_real_add (hl_real_neg x) (hl_real_neg y)) (fun y => - (x + y) = - x + - y) (fun y Hy => (imp_eq (hl_real_neg (hl_real_add x y)) (- (x + y)) (hl_real_add (hl_real_neg x) (hl_real_neg y)) (- x + - y) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_neg (hl_real_add x y) = - hl__u) ((hl_real_neg_compat) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy))) (((hl_real_neg_compat) (y) Hy) (fun hl__u hl__v => hl_real_add (hl_real_neg x) (hl_real_neg y) = - x + hl__u) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_add (hl_real_neg x) (hl_real_neg y) = hl__u + hl_real_neg y) ((hl_real_add_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx) (hl_real_neg y) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (y) Hy))))))))) H__top)).
Qed.
Theorem REAL_NEG_ADD : forall x y :e R, - (x + y) = - x + - y.
exact (REAL_NEG_ADD_bridge hlt_REAL_NEG_ADD).
Admitted.

// HOL Light: calc_int.ml:116 / REAL_ADD_RID   (hash md5:d0c6ae778bf72860e2d9d9e713fa9d96)
Theorem hlt_REAL_ADD_RID : forall x :e R, hl_real_add x (hl_real_of_num (hl_NUMERAL hl_zero)) = x.
Admitted.
Theorem REAL_ADD_RID_bridge : (forall x :e R, hl_real_add x (hl_real_of_num (hl_NUMERAL hl_zero)) = x) -> (forall x :e R, x + 0 = x).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_add x (hl_real_of_num (hl_NUMERAL hl_zero)) = x) (fun x => x + 0 = x) (fun x Hx => (imp_eq (hl_real_add x (hl_real_of_num (hl_NUMERAL hl_zero))) (x + 0) (x) (x) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_add x (hl_real_of_num (hl_NUMERAL hl_zero)) = x + hl__u) ((hl_real_add_compat) (x) Hx (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))) (fun q H => H)))) H__top)).
Qed.
Theorem REAL_ADD_RID : forall x :e R, x + 0 = x.
exact (REAL_ADD_RID_bridge hlt_REAL_ADD_RID).
Admitted.

// HOL Light: calc_int.ml:120 / REAL_NEG_0   (hash md5:09b549c26384798305571589b87f85bb)
Theorem hlt_REAL_NEG_0 : hl_real_neg (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.
Theorem REAL_NEG_0_bridge : (hl_real_neg (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero)) -> (- 0 = 0).
exact (fun H__top => ((imp_eq (hl_real_neg (hl_real_of_num (hl_NUMERAL hl_zero))) (- 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_neg (hl_real_of_num (hl_NUMERAL hl_zero)) = - hl__u) ((hl_real_neg_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))) H__top)).
Qed.
Theorem REAL_NEG_0 : - 0 = 0.
exact (REAL_NEG_0_bridge hlt_REAL_NEG_0).
Admitted.

// HOL Light: calc_int.ml:124 / REAL_LE_LNEG   (hash md5:7c5e5b4ed605155dae012148a5a99030)
Theorem hlt_REAL_LE_LNEG : forall x y :e R, hl_real_le (hl_real_neg x) y = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1.
Admitted.
Theorem REAL_LE_LNEG_bridge : (forall x y :e R, hl_real_le (hl_real_neg x) y = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1) -> (forall x y :e R, - x <= y <-> 0 <= x + y).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_le (hl_real_neg x) y = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1) (fun x => forall y :e R, - x <= y <-> 0 <= x + y) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_le (hl_real_neg x) y = 1 <-> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1) (fun y => - x <= y <-> 0 <= x + y) (fun y Hy => (imp_iff (hl_real_le (hl_real_neg x) y = 1) (- x <= y) (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1) (0 <= x + y) (iffEL (hl_real_le (hl_real_neg x) y = 1) (- x <= y) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_le (hl_real_neg x) y = 1 <-> hl__u <= y) ((hl_real_le_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx) (y) Hy))) (iffER (hl_real_le (hl_real_neg x) y = 1) (- x <= y) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_le (hl_real_neg x) y = 1 <-> hl__u <= y) ((hl_real_le_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx) (y) Hy))) (iffEL (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1) (0 <= x + y) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1 <-> 0 <= hl__u) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1 <-> hl__u <= hl_real_add x y) ((hl_real_le_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy))))) (iffER (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1) (0 <= x + y) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1 <-> 0 <= hl__u) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_add x y) = 1 <-> hl__u <= hl_real_add x y) ((hl_real_le_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy)))))))))) H__top)).
Qed.
Theorem REAL_LE_LNEG : forall x y :e R, - x <= y <-> 0 <= x + y.
exact (REAL_LE_LNEG_bridge hlt_REAL_LE_LNEG).
Admitted.

// HOL Light: calc_int.ml:134 / REAL_LE_NEG2   (hash md5:85c3ab5d47bd2b0c864b2ca1fc5d711f)
Theorem hlt_REAL_LE_NEG2 : forall x y :e R, hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> hl_real_le y x = 1.
Admitted.
Theorem REAL_LE_NEG2_bridge : (forall x y :e R, hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> hl_real_le y x = 1) -> (forall x y :e R, - x <= - y <-> y <= x).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> hl_real_le y x = 1) (fun x => forall y :e R, - x <= - y <-> y <= x) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> hl_real_le y x = 1) (fun y => - x <= - y <-> y <= x) (fun y Hy => (imp_iff (hl_real_le (hl_real_neg x) (hl_real_neg y) = 1) (- x <= - y) (hl_real_le y x = 1) (y <= x) (iffEL (hl_real_le (hl_real_neg x) (hl_real_neg y) = 1) (- x <= - y) (((hl_real_neg_compat) (y) Hy) (fun hl__u hl__v => hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> - x <= hl__u) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> hl__u <= hl_real_neg y) ((hl_real_le_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx) (hl_real_neg y) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (y) Hy))))) (iffER (hl_real_le (hl_real_neg x) (hl_real_neg y) = 1) (- x <= - y) (((hl_real_neg_compat) (y) Hy) (fun hl__u hl__v => hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> - x <= hl__u) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_le (hl_real_neg x) (hl_real_neg y) = 1 <-> hl__u <= hl_real_neg y) ((hl_real_le_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx) (hl_real_neg y) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (y) Hy))))) (iffEL (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx)) (iffER (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx))))))) H__top)).
Qed.
Theorem REAL_LE_NEG2 : forall x y :e R, - x <= - y <-> y <= x.
exact (REAL_LE_NEG2_bridge hlt_REAL_LE_NEG2).
Admitted.

// HOL Light: calc_int.ml:141 / REAL_LE_RNEG   (hash md5:1aa11f97f16232fc1462bb09baed0e0b)
Theorem hlt_REAL_LE_RNEG : forall x y :e R, hl_real_le x (hl_real_neg y) = 1 <-> hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.
Theorem REAL_LE_RNEG_bridge : (forall x y :e R, hl_real_le x (hl_real_neg y) = 1 <-> hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) -> (forall x y :e R, x <= - y <-> x + y <= 0).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall y :e R, hl_real_le x (hl_real_neg y) = 1 <-> hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (fun x => forall y :e R, x <= - y <-> x + y <= 0) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_le x (hl_real_neg y) = 1 <-> hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (fun y => x <= - y <-> x + y <= 0) (fun y Hy => (imp_iff (hl_real_le x (hl_real_neg y) = 1) (x <= - y) (hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (x + y <= 0) (iffEL (hl_real_le x (hl_real_neg y) = 1) (x <= - y) (((hl_real_neg_compat) (y) Hy) (fun hl__u hl__v => hl_real_le x (hl_real_neg y) = 1 <-> x <= hl__u) ((hl_real_le_compat) (x) Hx (hl_real_neg y) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (y) Hy)))) (iffER (hl_real_le x (hl_real_neg y) = 1) (x <= - y) (((hl_real_neg_compat) (y) Hy) (fun hl__u hl__v => hl_real_le x (hl_real_neg y) = 1 <-> x <= hl__u) ((hl_real_le_compat) (x) Hx (hl_real_neg y) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (y) Hy)))) (iffEL (hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (x + y <= 0) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl__u <= 0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_real_add x y <= hl__u) ((hl_real_le_compat) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))) (iffER (hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1) (x + y <= 0) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl__u <= 0) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_add x y) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 <-> hl_real_add x y <= hl__u) ((hl_real_le_compat) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))))))))))) H__top)).
Qed.
Theorem REAL_LE_RNEG : forall x y :e R, x <= - y <-> x + y <= 0.
exact (REAL_LE_RNEG_bridge hlt_REAL_LE_RNEG).
Admitted.

// HOL Light: calc_int.ml:152 / REAL_OF_NUM_POW   (hash md5:3f6f8954e52c4d38ffbcfa9d9984644d)
Theorem hlt_REAL_OF_NUM_POW : forall x n :e omega, hl_real_pow (hl_real_of_num x) n = hl_real_of_num (hl_EXP x n).
Admitted.
Theorem REAL_OF_NUM_POW_bridge : (forall x n :e omega, hl_real_pow (hl_real_of_num x) n = hl_real_of_num (hl_EXP x n)) -> (forall x n :e omega, x ^ n = x ^ n).
exact (fun H__top => ((imp_forall_in (omega) (fun x => forall n :e omega, hl_real_pow (hl_real_of_num x) n = hl_real_of_num (hl_EXP x n)) (fun x => forall n :e omega, x ^ n = x ^ n) (fun x Hx => (imp_forall_in (omega) (fun n => hl_real_pow (hl_real_of_num x) n = hl_real_of_num (hl_EXP x n)) (fun n => x ^ n = x ^ n) (fun n Hn => (imp_eq (hl_real_pow (hl_real_of_num x) n) (x ^ n) (hl_real_of_num (hl_EXP x n)) (x ^ n) (((hl_real_of_num_compat) (x) Hx) (fun hl__u hl__v => hl_real_pow (hl_real_of_num x) n = hl__u ^ n) ((hl_real_pow_compat) (hl_real_of_num x) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (x) Hx) (n) Hn)) (((hl_EXP_compat) (x) Hx (n) Hn) (fun hl__u hl__v => hl_real_of_num (hl_EXP x n) = hl__u) ((hl_real_of_num_compat) (hl_EXP x n) (setexp_ap (omega) (omega) (hl_EXP x) (setexp_ap (omega) (omega :^: omega) (hl_EXP) ((hl_EXP_in)) (x) Hx) (n) Hn)))))))) H__top)).
Qed.
Theorem REAL_OF_NUM_POW : forall x n :e omega, x ^ n = x ^ n.
exact (REAL_OF_NUM_POW_bridge hlt_REAL_OF_NUM_POW).
Admitted.

// HOL Light: calc_int.ml:157 / REAL_POW_NEG   (hash md5:b6df1bfc4c450ce11672fb5a990555bb)
Theorem hlt_REAL_POW_NEG : forall x :e R, forall n :e omega, hl_real_pow (hl_real_neg x) n = hl_COND R (hl_EVEN n) (hl_real_pow x n) (hl_real_neg (hl_real_pow x n)).
Admitted.
Theorem REAL_POW_NEG_bridge : (forall x :e R, forall n :e omega, hl_real_pow (hl_real_neg x) n = hl_COND R (hl_EVEN n) (hl_real_pow x n) (hl_real_neg (hl_real_pow x n))) -> (forall x :e R, forall n :e omega, (- x) ^ n = if even_nat n then x ^ n else - x ^ n).
exact (fun H__top => ((imp_forall_in (R) (fun x => forall n :e omega, hl_real_pow (hl_real_neg x) n = hl_COND R (hl_EVEN n) (hl_real_pow x n) (hl_real_neg (hl_real_pow x n))) (fun x => forall n :e omega, (- x) ^ n = if even_nat n then x ^ n else - x ^ n) (fun x Hx => (imp_forall_in (omega) (fun n => hl_real_pow (hl_real_neg x) n = hl_COND R (hl_EVEN n) (hl_real_pow x n) (hl_real_neg (hl_real_pow x n))) (fun n => (- x) ^ n = if even_nat n then x ^ n else - x ^ n) (fun n Hn => (imp_eq (hl_real_pow (hl_real_neg x) n) ((- x) ^ n) (hl_COND R (hl_EVEN n) (hl_real_pow x n) (hl_real_neg (hl_real_pow x n))) (if even_nat n then x ^ n else - x ^ n) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_pow (hl_real_neg x) n = hl__u ^ n) ((hl_real_pow_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx) (n) Hn)) (hl_COND_if_dep (R) (hl_EVEN n) (setexp_ap (omega) (2) (hl_EVEN) ((hl_EVEN_in)) (n) Hn) (even_nat n) ((hl_EVEN_compat) (n) Hn) (hl_real_pow x n) (setexp_ap (omega) (R) (hl_real_pow x) (setexp_ap (R) (R :^: omega) (hl_real_pow) ((hl_real_pow_in)) (x) Hx) (n) Hn) (hl_real_neg (hl_real_pow x n)) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (hl_real_pow x n) (setexp_ap (omega) (R) (hl_real_pow x) (setexp_ap (R) (R :^: omega) (hl_real_pow) ((hl_real_pow_in)) (x) Hx) (n) Hn)) (x ^ n) (- x ^ n) (fun H__c2 : (even_nat n) => ((hl_real_pow_compat) (x) Hx (n) Hn)) (fun H__c2 : ~ (even_nat n) => (((hl_real_pow_compat) (x) Hx (n) Hn) (fun hl__u hl__v => hl_real_neg (hl_real_pow x n) = - hl__u) ((hl_real_neg_compat) (hl_real_pow x n) (setexp_ap (omega) (R) (hl_real_pow x) (setexp_ap (R) (R :^: omega) (hl_real_pow) ((hl_real_pow_in)) (x) Hx) (n) Hn)))))))))) H__top)).
Qed.
Theorem REAL_POW_NEG : forall x :e R, forall n :e omega, (- x) ^ n = if even_nat n then x ^ n else - x ^ n.
exact (REAL_POW_NEG_bridge hlt_REAL_POW_NEG).
Admitted.

// HOL Light: calc_int.ml:164 / REAL_ABS_NUM   (hash md5:df75b5e6fa88a89c5bf9fba4092ddbb8)
Theorem hlt_REAL_ABS_NUM : forall n :e omega, hl_real_abs (hl_real_of_num n) = hl_real_of_num n.
Admitted.
Theorem REAL_ABS_NUM_bridge : (forall n :e omega, hl_real_abs (hl_real_of_num n) = hl_real_of_num n) -> (forall n :e omega, abs_SNo n = n).
exact (fun H__top => ((imp_forall_in (omega) (fun n => hl_real_abs (hl_real_of_num n) = hl_real_of_num n) (fun n => abs_SNo n = n) (fun n Hn => (imp_eq (hl_real_abs (hl_real_of_num n)) (abs_SNo n) (hl_real_of_num n) (n) (((hl_real_of_num_compat) (n) Hn) (fun hl__u hl__v => hl_real_abs (hl_real_of_num n) = abs_SNo hl__u) ((hl_real_abs_compat) (hl_real_of_num n) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (n) Hn))) ((hl_real_of_num_compat) (n) Hn)))) H__top)).
Qed.
Theorem REAL_ABS_NUM : forall n :e omega, abs_SNo n = n.
exact (REAL_ABS_NUM_bridge hlt_REAL_ABS_NUM).
Admitted.

// HOL Light: calc_int.ml:168 / REAL_ABS_NEG   (hash md5:d5f050a5931b9e3acf72455c03c199d3)
Theorem hlt_REAL_ABS_NEG : forall x :e R, hl_real_abs (hl_real_neg x) = hl_real_abs x.
Admitted.
Theorem REAL_ABS_NEG_bridge : (forall x :e R, hl_real_abs (hl_real_neg x) = hl_real_abs x) -> (forall x :e R, abs_SNo (- x) = abs_SNo x).
exact (fun H__top => ((imp_forall_in (R) (fun x => hl_real_abs (hl_real_neg x) = hl_real_abs x) (fun x => abs_SNo (- x) = abs_SNo x) (fun x Hx => (imp_eq (hl_real_abs (hl_real_neg x)) (abs_SNo (- x)) (hl_real_abs x) (abs_SNo x) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_real_abs (hl_real_neg x) = abs_SNo hl__u) ((hl_real_abs_compat) (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx))) ((hl_real_abs_compat) (x) Hx)))) H__top)).
Qed.
Theorem REAL_ABS_NEG : forall x :e R, abs_SNo (- x) = abs_SNo x.
exact (REAL_ABS_NEG_bridge hlt_REAL_ABS_NEG).
Admitted.

