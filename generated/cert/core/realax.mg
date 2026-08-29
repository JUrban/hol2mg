// hol2mg certification module (private): shard realax of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: realax.ml:54 / dist   (hash md5:bb7a1d14b94cbe95cb66a8c29bf49c59)
// not bridged: 
Theorem dist : forall n m :e omega, abs_SNo (m + - n) = minus_nat m n + minus_nat n m.
Admitted.

// HOL Light: realax.ml:61 / DIST_REFL   (hash md5:8a2c28376a8c6a0a12341c3797b33b4c)
// not bridged: 
Theorem DIST_REFL : forall n :e omega, abs_SNo (n + - n) = 0.
Admitted.

// HOL Light: realax.ml:65 / DIST_LZERO   (hash md5:04661d2bb3851b4d752e8a6cdab98b3f)
// not bridged: 
Theorem DIST_LZERO : forall n :e omega, abs_SNo (0 + - n) = n.
Admitted.

// HOL Light: realax.ml:69 / DIST_RZERO   (hash md5:6fbe87b28c4b5f3382719518440c5418)
// not bridged: 
Theorem DIST_RZERO : forall n :e omega, abs_SNo (n + - 0) = n.
Admitted.

// HOL Light: realax.ml:73 / DIST_SYM   (hash md5:c9d240cfb993e478117e276a473258e0)
// not bridged: 
Theorem DIST_SYM : forall m n :e omega, abs_SNo (m + - n) = abs_SNo (n + - m).
Admitted.

// HOL Light: realax.ml:77 / DIST_LADD   (hash md5:1e36b83324036d175e4172b3dac8d39d)
// not bridged: 
Theorem DIST_LADD : forall m p n :e omega, abs_SNo ((m + n) + - (m + p)) = abs_SNo (n + - p).
Admitted.

// HOL Light: realax.ml:81 / DIST_RADD   (hash md5:9c6800d939e5f71627a4519e2f5ce9fd)
// not bridged: 
Theorem DIST_RADD : forall m p n :e omega, abs_SNo ((m + p) + - (n + p)) = abs_SNo (m + - n).
Admitted.

// HOL Light: realax.ml:85 / DIST_LADD_0   (hash md5:1bc36ce203bd5401ca8151c1d92e2f3d)
// not bridged: 
Theorem DIST_LADD_0 : forall m n :e omega, abs_SNo ((m + n) + - m) = n.
Admitted.

// HOL Light: realax.ml:89 / DIST_RADD_0   (hash md5:35e6e9b188b102651488fd402c953e42)
// not bridged: 
Theorem DIST_RADD_0 : forall m n :e omega, abs_SNo (m + - (m + n)) = n.
Admitted.

// HOL Light: realax.ml:93 / DIST_LMUL   (hash md5:b29e6efd1b68ac3fd8ebbd2ac019738f)
// not bridged: 
Theorem DIST_LMUL : forall m n p :e omega, m * abs_SNo (n + - p) = abs_SNo (m * n + - m * p).
Admitted.

// HOL Light: realax.ml:97 / DIST_RMUL   (hash md5:04b3e12554cf65d70f7e24054a7fcbf1)
// not bridged: 
Theorem DIST_RMUL : forall m n p :e omega, abs_SNo (m + - n) * p = abs_SNo (m * p + - n * p).
Admitted.

// HOL Light: realax.ml:101 / DIST_EQ_0   (hash md5:1613e732562c9ecccd01bf7b3a818419)
// not bridged: 
Theorem DIST_EQ_0 : forall m n :e omega, abs_SNo (m + - n) = 0 <-> m = n.
Admitted.

// HOL Light: realax.ml:109 / DIST_ELIM_THM   (hash md5:6832c76e6a4de30364f18cbb1dfebe30)
// not bridged: 
Theorem DIST_ELIM_THM : forall P:set -> prop, forall x y :e omega, P (abs_SNo (x + - y)) <-> forall d :e omega, (x = y + d -> P d) /\ (y = x + d -> P d).
Admitted.

// HOL Light: realax.ml:125 / DIST_ADD2   (hash md5:6da136930bd01b6b36d6cfd1d4d5b25d)
// not bridged: 
Theorem DIST_ADD2 : forall m n p q :e omega, abs_SNo ((m + n) + - (p + q)) <= abs_SNo (m + - p) + abs_SNo (n + - q).
Admitted.

// HOL Light: realax.ml:125 / DIST_ADD2_REV   (hash md5:9bb675936acbadd455253ed570bd70bc)
// not bridged: 
Theorem DIST_ADD2_REV : forall m n p q :e omega, abs_SNo (m + - p) <= abs_SNo ((m + n) + - (p + q)) + abs_SNo (n + - q).
Admitted.

// HOL Light: realax.ml:125 / DIST_ADDBOUND   (hash md5:290b0b7d002de8b3e690b7e4e70c2288)
// not bridged: 
Theorem DIST_ADDBOUND : forall m n :e omega, abs_SNo (m + - n) <= m + n.
Admitted.

// HOL Light: realax.ml:125 / DIST_LE_CASES   (hash md5:2cb461bb1082d0372a4bdc4a052a0d39)
// not bridged: 
Theorem DIST_LE_CASES : forall m n p :e omega, abs_SNo (m + - n) <= p <-> m <= n + p /\ n <= m + p.
Admitted.

// HOL Light: realax.ml:125 / DIST_TRIANGLE   (hash md5:f561e021653c7cb5529d8d52f239f699)
// not bridged: 
Theorem DIST_TRIANGLE : forall m n p :e omega, abs_SNo (m + - p) <= abs_SNo (m + - n) + abs_SNo (n + - p).
Admitted.

// HOL Light: realax.ml:156 / DIST_TRIANGLE_LE   (hash md5:0d6a16da025934f533ac4a9584ff36b6)
// not bridged: 
Theorem DIST_TRIANGLE_LE : forall m n p q :e omega, abs_SNo (m + - n) + abs_SNo (n + - p) <= q -> abs_SNo (m + - p) <= q.
Admitted.

// HOL Light: realax.ml:161 / DIST_TRIANGLES_LE   (hash md5:36d4c10eb2822f3300d5487766dcf2ec)
// not bridged: 
Theorem DIST_TRIANGLES_LE : forall m n p q r s :e omega, abs_SNo (m + - n) <= r /\ abs_SNo (p + - q) <= s -> abs_SNo (m + - p) <= abs_SNo (n + - q) + r + s.
Admitted.

// HOL Light: realax.ml:176 / BOUNDS_LINEAR   (hash md5:c057c0f22cb183ad0dbcced755e63d25)
Theorem hlt_BOUNDS_LINEAR : forall A B C :e omega, (forall n :e omega, hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) <-> hl_le A B = 1.
Admitted.
Theorem BOUNDS_LINEAR_bridge : (forall A B C :e omega, (forall n :e omega, hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) <-> hl_le A B = 1) -> (forall A B C :e omega, (forall n :e omega, A * n <= B * n + C) <-> A <= B).
exact (fun HL => (imp_forall_in (omega) (fun A => forall B C :e omega, (forall n :e omega, hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) <-> hl_le A B = 1) (fun A => forall B C :e omega, (forall n :e omega, A * n <= B * n + C) <-> A <= B) (fun A HA => (imp_forall_in (omega) (fun B => forall C :e omega, (forall n :e omega, hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) <-> hl_le A B = 1) (fun B => forall C :e omega, (forall n :e omega, A * n <= B * n + C) <-> A <= B) (fun B HB => (imp_forall_in (omega) (fun C => (forall n :e omega, hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) <-> hl_le A B = 1) (fun C => (forall n :e omega, A * n <= B * n + C) <-> A <= B) (fun C HC => (imp_iff (forall n :e omega, hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) (forall n :e omega, A * n <= B * n + C) (hl_le A B = 1) (A <= B) (imp_forall_in (omega) (fun n => hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) (fun n => A * n <= B * n + C) (fun n Hn => (iffEL (hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) (A * n <= B * n + C) ((((hl_mul_compat) (B) HB (n) Hn) (fun hl__u hl__v => hl_add (hl_mul B n) C = hl__u + C) ((hl_add_compat) (hl_mul B n) (setexp_ap (omega) (omega) (hl_mul B) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (B) HB) (n) Hn) (C) HC)) (fun hl__u hl__v => hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1 <-> A * n <= hl__u) (((hl_mul_compat) (A) HA (n) Hn) (fun hl__u hl__v => hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1 <-> hl__u <= hl_add (hl_mul B n) C) ((hl_le_compat) (hl_mul A n) (setexp_ap (omega) (omega) (hl_mul A) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (A) HA) (n) Hn) (hl_add (hl_mul B n) C) (setexp_ap (omega) (omega) (hl_add (hl_mul B n)) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (hl_mul B n) (setexp_ap (omega) (omega) (hl_mul B) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (B) HB) (n) Hn)) (C) HC))))))) (imp_forall_in (omega) (fun n => A * n <= B * n + C) (fun n => hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) (fun n Hn => (iffER (hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1) (A * n <= B * n + C) ((((hl_mul_compat) (B) HB (n) Hn) (fun hl__u hl__v => hl_add (hl_mul B n) C = hl__u + C) ((hl_add_compat) (hl_mul B n) (setexp_ap (omega) (omega) (hl_mul B) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (B) HB) (n) Hn) (C) HC)) (fun hl__u hl__v => hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1 <-> A * n <= hl__u) (((hl_mul_compat) (A) HA (n) Hn) (fun hl__u hl__v => hl_le (hl_mul A n) (hl_add (hl_mul B n) C) = 1 <-> hl__u <= hl_add (hl_mul B n) C) ((hl_le_compat) (hl_mul A n) (setexp_ap (omega) (omega) (hl_mul A) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (A) HA) (n) Hn) (hl_add (hl_mul B n) C) (setexp_ap (omega) (omega) (hl_add (hl_mul B n)) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (hl_mul B n) (setexp_ap (omega) (omega) (hl_mul B) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (B) HB) (n) Hn)) (C) HC))))))) (iffEL (hl_le A B = 1) (A <= B) ((hl_le_compat) (A) HA (B) HB)) (iffER (hl_le A B = 1) (A <= B) ((hl_le_compat) (A) HA (B) HB))))))))) HL).
Qed.
Theorem BOUNDS_LINEAR : forall A B C :e omega, (forall n :e omega, A * n <= B * n + C) <-> A <= B.
exact (BOUNDS_LINEAR_bridge hlt_BOUNDS_LINEAR).
Admitted.

// HOL Light: realax.ml:188 / BOUNDS_LINEAR_0   (hash md5:5ad77f70c8d16293232ac47479307650)
Theorem hlt_BOUNDS_LINEAR_0 : forall A B :e omega, (forall n :e omega, hl_le (hl_mul A n) B = 1) <-> A = hl_NUMERAL hl_zero.
Admitted.
Theorem BOUNDS_LINEAR_0_bridge : (forall A B :e omega, (forall n :e omega, hl_le (hl_mul A n) B = 1) <-> A = hl_NUMERAL hl_zero) -> (forall A B :e omega, (forall n :e omega, A * n <= B) <-> A = 0).
exact (fun HL => (imp_forall_in (omega) (fun A => forall B :e omega, (forall n :e omega, hl_le (hl_mul A n) B = 1) <-> A = hl_NUMERAL hl_zero) (fun A => forall B :e omega, (forall n :e omega, A * n <= B) <-> A = 0) (fun A HA => (imp_forall_in (omega) (fun B => (forall n :e omega, hl_le (hl_mul A n) B = 1) <-> A = hl_NUMERAL hl_zero) (fun B => (forall n :e omega, A * n <= B) <-> A = 0) (fun B HB => (imp_iff (forall n :e omega, hl_le (hl_mul A n) B = 1) (forall n :e omega, A * n <= B) (A = hl_NUMERAL hl_zero) (A = 0) (imp_forall_in (omega) (fun n => hl_le (hl_mul A n) B = 1) (fun n => A * n <= B) (fun n Hn => (iffEL (hl_le (hl_mul A n) B = 1) (A * n <= B) (((hl_mul_compat) (A) HA (n) Hn) (fun hl__u hl__v => hl_le (hl_mul A n) B = 1 <-> hl__u <= B) ((hl_le_compat) (hl_mul A n) (setexp_ap (omega) (omega) (hl_mul A) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (A) HA) (n) Hn) (B) HB))))) (imp_forall_in (omega) (fun n => A * n <= B) (fun n => hl_le (hl_mul A n) B = 1) (fun n Hn => (iffER (hl_le (hl_mul A n) B = 1) (A * n <= B) (((hl_mul_compat) (A) HA (n) Hn) (fun hl__u hl__v => hl_le (hl_mul A n) B = 1 <-> hl__u <= B) ((hl_le_compat) (hl_mul A n) (setexp_ap (omega) (omega) (hl_mul A) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (A) HA) (n) Hn) (B) HB))))) (imp_eq (A) (A) (hl_NUMERAL hl_zero) (0) (fun q H => H) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat)) (imp_eq (A) (A) (0) (hl_NUMERAL hl_zero) (eq_sym_i (A) (A) (fun q H => H)) (eq_sym_i (hl_NUMERAL hl_zero) (0) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat)))))))) HL).
Qed.
Theorem BOUNDS_LINEAR_0 : forall A B :e omega, (forall n :e omega, A * n <= B) <-> A = 0.
exact (BOUNDS_LINEAR_0_bridge hlt_BOUNDS_LINEAR_0).
Admitted.

// HOL Light: realax.ml:193 / BOUNDS_DIVIDED   (hash md5:97deb79f6cab1005e729ef8d1e0fde97)
Theorem hlt_BOUNDS_DIVIDED : forall P :e omega :^: omega, (exists B :e omega, forall n :e omega, hl_le (P n) B = 1) <-> exists A B :e omega, forall n :e omega, hl_le (hl_mul n (P n)) (hl_add (hl_mul A n) B) = 1.
Admitted.
Theorem BOUNDS_DIVIDED_bridge : (forall P :e omega :^: omega, (exists B :e omega, forall n :e omega, hl_le (P n) B = 1) <-> exists A B :e omega, forall n :e omega, hl_le (hl_mul n (P n)) (hl_add (hl_mul A n) B) = 1) -> (forall P:set -> set, (forall x :e omega, P x :e omega) -> ((exists B :e omega, forall n :e omega, P n <= B) <-> exists A B :e omega, forall n :e omega, n * P n <= A * n + B)).
exact (fun HL => (imp_forall_fun (omega) (omega) (fun P => (exists B :e omega, forall n :e omega, hl_le (P n) B = 1) <-> exists A B :e omega, forall n :e omega, hl_le (hl_mul n (P n)) (hl_add (hl_mul A n) B) = 1) (fun P => (exists B :e omega, forall n :e omega, P n <= B) <-> exists A B :e omega, forall n :e omega, n * P n <= A * n + B) (fun P HPc => (imp_iff (exists B :e omega, forall n :e omega, hl_le (hl_lam omega P n) B = 1) (exists B :e omega, forall n :e omega, P n <= B) (exists A B :e omega, forall n :e omega, hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (exists A B :e omega, forall n :e omega, n * P n <= A * n + B) (imp_exists_in (omega) (fun B => forall n :e omega, hl_le (hl_lam omega P n) B = 1) (fun B => forall n :e omega, P n <= B) (fun B HB => (imp_forall_in (omega) (fun n => hl_le (hl_lam omega P n) B = 1) (fun n => P n <= B) (fun n Hn => (iffEL (hl_le (hl_lam omega P n) B = 1) (P n <= B) (((hl_lam_ap (omega) P) (n) Hn) (fun hl__u hl__v => hl_le (hl_lam omega P n) B = 1 <-> hl__u <= B) ((hl_le_compat) (hl_lam omega P n) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (n) Hn) (B) HB))))))) (imp_exists_in (omega) (fun B => forall n :e omega, P n <= B) (fun B => forall n :e omega, hl_le (hl_lam omega P n) B = 1) (fun B HB => (imp_forall_in (omega) (fun n => P n <= B) (fun n => hl_le (hl_lam omega P n) B = 1) (fun n Hn => (iffER (hl_le (hl_lam omega P n) B = 1) (P n <= B) (((hl_lam_ap (omega) P) (n) Hn) (fun hl__u hl__v => hl_le (hl_lam omega P n) B = 1 <-> hl__u <= B) ((hl_le_compat) (hl_lam omega P n) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (n) Hn) (B) HB))))))) (imp_exists_in (omega) (fun A => exists B :e omega, forall n :e omega, hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (fun A => exists B :e omega, forall n :e omega, n * P n <= A * n + B) (fun A HA => (imp_exists_in (omega) (fun B => forall n :e omega, hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (fun B => forall n :e omega, n * P n <= A * n + B) (fun B HB => (imp_forall_in (omega) (fun n => hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (fun n => n * P n <= A * n + B) (fun n Hn => (iffEL (hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (n * P n <= A * n + B) ((((hl_mul_compat) (A) HA (n) Hn) (fun hl__u hl__v => hl_add (hl_mul A n) B = hl__u + B) ((hl_add_compat) (hl_mul A n) (setexp_ap (omega) (omega) (hl_mul A) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (A) HA) (n) Hn) (B) HB)) (fun hl__u hl__v => hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1 <-> n * P n <= hl__u) ((((hl_lam_ap (omega) P) (n) Hn) (fun hl__u hl__v => hl_mul n (hl_lam omega P n) = n * hl__u) ((hl_mul_compat) (n) Hn (hl_lam omega P n) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (n) Hn))) (fun hl__u hl__v => hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1 <-> hl__u <= hl_add (hl_mul A n) B) ((hl_le_compat) (hl_mul n (hl_lam omega P n)) (setexp_ap (omega) (omega) (hl_mul n) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (n) Hn) (hl_lam omega P n) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (n) Hn)) (hl_add (hl_mul A n) B) (setexp_ap (omega) (omega) (hl_add (hl_mul A n)) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (hl_mul A n) (setexp_ap (omega) (omega) (hl_mul A) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (A) HA) (n) Hn)) (B) HB))))))))))) (imp_exists_in (omega) (fun A => exists B :e omega, forall n :e omega, n * P n <= A * n + B) (fun A => exists B :e omega, forall n :e omega, hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (fun A HA => (imp_exists_in (omega) (fun B => forall n :e omega, n * P n <= A * n + B) (fun B => forall n :e omega, hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (fun B HB => (imp_forall_in (omega) (fun n => n * P n <= A * n + B) (fun n => hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (fun n Hn => (iffER (hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1) (n * P n <= A * n + B) ((((hl_mul_compat) (A) HA (n) Hn) (fun hl__u hl__v => hl_add (hl_mul A n) B = hl__u + B) ((hl_add_compat) (hl_mul A n) (setexp_ap (omega) (omega) (hl_mul A) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (A) HA) (n) Hn) (B) HB)) (fun hl__u hl__v => hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1 <-> n * P n <= hl__u) ((((hl_lam_ap (omega) P) (n) Hn) (fun hl__u hl__v => hl_mul n (hl_lam omega P n) = n * hl__u) ((hl_mul_compat) (n) Hn (hl_lam omega P n) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (n) Hn))) (fun hl__u hl__v => hl_le (hl_mul n (hl_lam omega P n)) (hl_add (hl_mul A n) B) = 1 <-> hl__u <= hl_add (hl_mul A n) B) ((hl_le_compat) (hl_mul n (hl_lam omega P n)) (setexp_ap (omega) (omega) (hl_mul n) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (n) Hn) (hl_lam omega P n) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (n) Hn)) (hl_add (hl_mul A n) B) (setexp_ap (omega) (omega) (hl_add (hl_mul A n)) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (hl_mul A n) (setexp_ap (omega) (omega) (hl_mul A) (setexp_ap (omega) (omega :^: omega) (hl_mul) ((hl_mul_in)) (A) HA) (n) Hn)) (B) HB)))))))))))))) HL).
Qed.
Theorem BOUNDS_DIVIDED : forall P:set -> set, (forall x :e omega, P x :e omega) -> ((exists B :e omega, forall n :e omega, P n <= B) <-> exists A B :e omega, forall n :e omega, n * P n <= A * n + B).
exact (BOUNDS_DIVIDED_bridge hlt_BOUNDS_DIVIDED).
Admitted.

// HOL Light: realax.ml:216 / BOUNDS_NOTZERO   (hash md5:564b112172498c8cd64028b48e5452b6)
// not bridged: 
Theorem BOUNDS_NOTZERO : forall P:set -> set -> set, (forall x y :e omega, P x y :e omega) -> forall A B :e omega, P 0 0 = 0 /\ (forall m n :e omega, P m n <= A * (m + n) + B) -> exists B0 :e omega, forall m n :e omega, P m n <= B0 * (m + n).
Admitted.

// HOL Light: realax.ml:227 / BOUNDS_IGNORE   (hash md5:c72829573494699d8b8ce0be93ab42a5)
Theorem hlt_BOUNDS_IGNORE : forall P Q :e omega :^: omega, (exists B :e omega, forall i :e omega, hl_le (P i) (hl_add (Q i) B) = 1) <-> exists B N :e omega, forall i :e omega, hl_le N i = 1 -> hl_le (P i) (hl_add (Q i) B) = 1.
Admitted.
Theorem BOUNDS_IGNORE_bridge : (forall P Q :e omega :^: omega, (exists B :e omega, forall i :e omega, hl_le (P i) (hl_add (Q i) B) = 1) <-> exists B N :e omega, forall i :e omega, hl_le N i = 1 -> hl_le (P i) (hl_add (Q i) B) = 1) -> (forall P:set -> set, (forall x :e omega, P x :e omega) -> forall Q:set -> set, (forall x :e omega, Q x :e omega) -> ((exists B :e omega, forall i :e omega, P i <= Q i + B) <-> exists B N :e omega, forall i :e omega, N <= i -> P i <= Q i + B)).
exact (fun HL => (imp_forall_fun (omega) (omega) (fun P => forall Q :e omega :^: omega, (exists B :e omega, forall i :e omega, hl_le (P i) (hl_add (Q i) B) = 1) <-> exists B N :e omega, forall i :e omega, hl_le N i = 1 -> hl_le (P i) (hl_add (Q i) B) = 1) (fun P => forall Q:set -> set, (forall x :e omega, Q x :e omega) -> ((exists B :e omega, forall i :e omega, P i <= Q i + B) <-> exists B N :e omega, forall i :e omega, N <= i -> P i <= Q i + B)) (fun P HPc => (imp_forall_fun (omega) (omega) (fun Q => (exists B :e omega, forall i :e omega, hl_le (hl_lam omega P i) (hl_add (Q i) B) = 1) <-> exists B N :e omega, forall i :e omega, hl_le N i = 1 -> hl_le (hl_lam omega P i) (hl_add (Q i) B) = 1) (fun Q => (exists B :e omega, forall i :e omega, P i <= Q i + B) <-> exists B N :e omega, forall i :e omega, N <= i -> P i <= Q i + B) (fun Q HQc => (imp_iff (exists B :e omega, forall i :e omega, hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (exists B :e omega, forall i :e omega, P i <= Q i + B) (exists B N :e omega, forall i :e omega, hl_le N i = 1 -> hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (exists B N :e omega, forall i :e omega, N <= i -> P i <= Q i + B) (imp_exists_in (omega) (fun B => forall i :e omega, hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun B => forall i :e omega, P i <= Q i + B) (fun B HB => (imp_forall_in (omega) (fun i => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun i => P i <= Q i + B) (fun i Hi => (iffEL (hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (P i <= Q i + B) ((((hl_lam_ap (omega) Q) (i) Hi) (fun hl__u hl__v => hl_add (hl_lam omega Q i) B = hl__u + B) ((hl_add_compat) (hl_lam omega Q i) (setexp_ap (omega) (omega) (hl_lam omega Q) (hl_lam_Pi (omega) (omega) Q HQc) (i) Hi) (B) HB)) (fun hl__u hl__v => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1 <-> P i <= hl__u) (((hl_lam_ap (omega) P) (i) Hi) (fun hl__u hl__v => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1 <-> hl__u <= hl_add (hl_lam omega Q i) B) ((hl_le_compat) (hl_lam omega P i) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (i) Hi) (hl_add (hl_lam omega Q i) B) (setexp_ap (omega) (omega) (hl_add (hl_lam omega Q i)) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (hl_lam omega Q i) (setexp_ap (omega) (omega) (hl_lam omega Q) (hl_lam_Pi (omega) (omega) Q HQc) (i) Hi)) (B) HB))))))))) (imp_exists_in (omega) (fun B => forall i :e omega, P i <= Q i + B) (fun B => forall i :e omega, hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun B HB => (imp_forall_in (omega) (fun i => P i <= Q i + B) (fun i => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun i Hi => (iffER (hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (P i <= Q i + B) ((((hl_lam_ap (omega) Q) (i) Hi) (fun hl__u hl__v => hl_add (hl_lam omega Q i) B = hl__u + B) ((hl_add_compat) (hl_lam omega Q i) (setexp_ap (omega) (omega) (hl_lam omega Q) (hl_lam_Pi (omega) (omega) Q HQc) (i) Hi) (B) HB)) (fun hl__u hl__v => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1 <-> P i <= hl__u) (((hl_lam_ap (omega) P) (i) Hi) (fun hl__u hl__v => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1 <-> hl__u <= hl_add (hl_lam omega Q i) B) ((hl_le_compat) (hl_lam omega P i) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (i) Hi) (hl_add (hl_lam omega Q i) B) (setexp_ap (omega) (omega) (hl_add (hl_lam omega Q i)) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (hl_lam omega Q i) (setexp_ap (omega) (omega) (hl_lam omega Q) (hl_lam_Pi (omega) (omega) Q HQc) (i) Hi)) (B) HB))))))))) (imp_exists_in (omega) (fun B => exists N :e omega, forall i :e omega, hl_le N i = 1 -> hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun B => exists N :e omega, forall i :e omega, N <= i -> P i <= Q i + B) (fun B HB => (imp_exists_in (omega) (fun N => forall i :e omega, hl_le N i = 1 -> hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun N => forall i :e omega, N <= i -> P i <= Q i + B) (fun N HN => (imp_forall_in (omega) (fun i => hl_le N i = 1 -> hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun i => N <= i -> P i <= Q i + B) (fun i Hi => (imp_imp (hl_le N i = 1) (N <= i) (hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (P i <= Q i + B) (iffER (hl_le N i = 1) (N <= i) ((hl_le_compat) (N) HN (i) Hi)) (iffEL (hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (P i <= Q i + B) ((((hl_lam_ap (omega) Q) (i) Hi) (fun hl__u hl__v => hl_add (hl_lam omega Q i) B = hl__u + B) ((hl_add_compat) (hl_lam omega Q i) (setexp_ap (omega) (omega) (hl_lam omega Q) (hl_lam_Pi (omega) (omega) Q HQc) (i) Hi) (B) HB)) (fun hl__u hl__v => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1 <-> P i <= hl__u) (((hl_lam_ap (omega) P) (i) Hi) (fun hl__u hl__v => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1 <-> hl__u <= hl_add (hl_lam omega Q i) B) ((hl_le_compat) (hl_lam omega P i) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (i) Hi) (hl_add (hl_lam omega Q i) B) (setexp_ap (omega) (omega) (hl_add (hl_lam omega Q i)) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (hl_lam omega Q i) (setexp_ap (omega) (omega) (hl_lam omega Q) (hl_lam_Pi (omega) (omega) Q HQc) (i) Hi)) (B) HB)))))))))))) (imp_exists_in (omega) (fun B => exists N :e omega, forall i :e omega, N <= i -> P i <= Q i + B) (fun B => exists N :e omega, forall i :e omega, hl_le N i = 1 -> hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun B HB => (imp_exists_in (omega) (fun N => forall i :e omega, N <= i -> P i <= Q i + B) (fun N => forall i :e omega, hl_le N i = 1 -> hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun N HN => (imp_forall_in (omega) (fun i => N <= i -> P i <= Q i + B) (fun i => hl_le N i = 1 -> hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (fun i Hi => (imp_imp (N <= i) (hl_le N i = 1) (P i <= Q i + B) (hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (iffEL (hl_le N i = 1) (N <= i) ((hl_le_compat) (N) HN (i) Hi)) (iffER (hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1) (P i <= Q i + B) ((((hl_lam_ap (omega) Q) (i) Hi) (fun hl__u hl__v => hl_add (hl_lam omega Q i) B = hl__u + B) ((hl_add_compat) (hl_lam omega Q i) (setexp_ap (omega) (omega) (hl_lam omega Q) (hl_lam_Pi (omega) (omega) Q HQc) (i) Hi) (B) HB)) (fun hl__u hl__v => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1 <-> P i <= hl__u) (((hl_lam_ap (omega) P) (i) Hi) (fun hl__u hl__v => hl_le (hl_lam omega P i) (hl_add (hl_lam omega Q i) B) = 1 <-> hl__u <= hl_add (hl_lam omega Q i) B) ((hl_le_compat) (hl_lam omega P i) (setexp_ap (omega) (omega) (hl_lam omega P) (hl_lam_Pi (omega) (omega) P HPc) (i) Hi) (hl_add (hl_lam omega Q i) B) (setexp_ap (omega) (omega) (hl_add (hl_lam omega Q i)) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in)) (hl_lam omega Q i) (setexp_ap (omega) (omega) (hl_lam omega Q) (hl_lam_Pi (omega) (omega) Q HQc) (i) Hi)) (B) HB))))))))))))))))) HL).
Qed.
Theorem BOUNDS_IGNORE : forall P:set -> set, (forall x :e omega, P x :e omega) -> forall Q:set -> set, (forall x :e omega, Q x :e omega) -> ((exists B :e omega, forall i :e omega, P i <= Q i + B) <-> exists B N :e omega, forall i :e omega, N <= i -> P i <= Q i + B).
exact (BOUNDS_IGNORE_bridge hlt_BOUNDS_IGNORE).
Admitted.

// HOL Light: realax.ml:1782 / real_sub   (hash md5:4a314d6ac46d393a0829c387e4212582)
Theorem hlt_real_sub : forall x y :e R, hl_real_sub x y = hl_real_add x (hl_real_neg y).
Admitted.
Theorem real_sub_bridge : (forall x y :e R, hl_real_sub x y = hl_real_add x (hl_real_neg y)) -> (forall x y :e R, x + - y = x + - y).
exact (fun HL => (imp_forall_in (R) (fun x => forall y :e R, hl_real_sub x y = hl_real_add x (hl_real_neg y)) (fun x => forall y :e R, x + - y = x + - y) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_sub x y = hl_real_add x (hl_real_neg y)) (fun y => x + - y = x + - y) (fun y Hy => (imp_eq (hl_real_sub x y) (x + - y) (hl_real_add x (hl_real_neg y)) (x + - y) ((hl_real_sub_compat) (x) Hx (y) Hy) (((hl_real_neg_compat) (y) Hy) (fun hl__u hl__v => hl_real_add x (hl_real_neg y) = x + hl__u) ((hl_real_add_compat) (x) Hx (hl_real_neg y) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (y) Hy)))))))) HL).
Qed.
Theorem real_sub : forall x y :e R, x + - y = x + - y.
exact (real_sub_bridge hlt_real_sub).
Admitted.

// HOL Light: realax.ml:1785 / real_lt   (hash md5:93a3a1e8d142b40e99dd3655980cdbc1)
Theorem hlt_real_lt : forall y x :e R, hl_real_lt x y = 1 <-> ~ hl_real_le y x = 1.
Admitted.
Theorem real_lt_bridge : (forall y x :e R, hl_real_lt x y = 1 <-> ~ hl_real_le y x = 1) -> (forall y x :e R, x < y <-> ~ y <= x).
exact (fun HL => (imp_forall_in (R) (fun y => forall x :e R, hl_real_lt x y = 1 <-> ~ hl_real_le y x = 1) (fun y => forall x :e R, x < y <-> ~ y <= x) (fun y Hy => (imp_forall_in (R) (fun x => hl_real_lt x y = 1 <-> ~ hl_real_le y x = 1) (fun x => x < y <-> ~ y <= x) (fun x Hx => (imp_iff (hl_real_lt x y = 1) (x < y) (~ hl_real_le y x = 1) (~ y <= x) (iffEL (hl_real_lt x y = 1) (x < y) ((hl_real_lt_compat) (x) Hx (y) Hy)) (iffER (hl_real_lt x y = 1) (x < y) ((hl_real_lt_compat) (x) Hx (y) Hy)) (imp_not (hl_real_le y x = 1) (y <= x) (iffER (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx))) (imp_not (y <= x) (hl_real_le y x = 1) (iffEL (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx)))))))) HL).
Qed.
Theorem real_lt : forall y x :e R, x < y <-> ~ y <= x.
exact (real_lt_bridge hlt_real_lt).
Admitted.

// HOL Light: realax.ml:1788 / real_ge   (hash md5:6da252bdb6156ab67419ba3c8372a3d3)
Theorem hlt_real_ge : forall y x :e R, hl_real_ge x y = 1 <-> hl_real_le y x = 1.
Admitted.
Theorem real_ge_bridge : (forall y x :e R, hl_real_ge x y = 1 <-> hl_real_le y x = 1) -> (forall y x :e R, y <= x <-> y <= x).
exact (fun HL => (imp_forall_in (R) (fun y => forall x :e R, hl_real_ge x y = 1 <-> hl_real_le y x = 1) (fun y => forall x :e R, y <= x <-> y <= x) (fun y Hy => (imp_forall_in (R) (fun x => hl_real_ge x y = 1 <-> hl_real_le y x = 1) (fun x => y <= x <-> y <= x) (fun x Hx => (imp_iff (hl_real_ge x y = 1) (y <= x) (hl_real_le y x = 1) (y <= x) (iffEL (hl_real_ge x y = 1) (y <= x) ((hl_real_ge_compat) (x) Hx (y) Hy)) (iffER (hl_real_ge x y = 1) (y <= x) ((hl_real_ge_compat) (x) Hx (y) Hy)) (iffEL (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx)) (iffER (hl_real_le y x = 1) (y <= x) ((hl_real_le_compat) (y) Hy (x) Hx))))))) HL).
Qed.
Theorem real_ge : forall y x :e R, y <= x <-> y <= x.
exact (real_ge_bridge hlt_real_ge).
Admitted.

// HOL Light: realax.ml:1791 / real_gt   (hash md5:5f96069132d1c942b6fde02171b97613)
Theorem hlt_real_gt : forall y x :e R, hl_real_gt x y = 1 <-> hl_real_lt y x = 1.
Admitted.
Theorem real_gt_bridge : (forall y x :e R, hl_real_gt x y = 1 <-> hl_real_lt y x = 1) -> (forall y x :e R, y < x <-> y < x).
exact (fun HL => (imp_forall_in (R) (fun y => forall x :e R, hl_real_gt x y = 1 <-> hl_real_lt y x = 1) (fun y => forall x :e R, y < x <-> y < x) (fun y Hy => (imp_forall_in (R) (fun x => hl_real_gt x y = 1 <-> hl_real_lt y x = 1) (fun x => y < x <-> y < x) (fun x Hx => (imp_iff (hl_real_gt x y = 1) (y < x) (hl_real_lt y x = 1) (y < x) (iffEL (hl_real_gt x y = 1) (y < x) ((hl_real_gt_compat) (x) Hx (y) Hy)) (iffER (hl_real_gt x y = 1) (y < x) ((hl_real_gt_compat) (x) Hx (y) Hy)) (iffEL (hl_real_lt y x = 1) (y < x) ((hl_real_lt_compat) (y) Hy (x) Hx)) (iffER (hl_real_lt y x = 1) (y < x) ((hl_real_lt_compat) (y) Hy (x) Hx))))))) HL).
Qed.
Theorem real_gt : forall y x :e R, y < x <-> y < x.
exact (real_gt_bridge hlt_real_gt).
Admitted.

// HOL Light: realax.ml:1794 / real_abs   (hash md5:959e0be66162db5443361d9557a2d2cb)
Theorem hlt_real_abs : forall x :e R, hl_real_abs x = hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) x (hl_real_neg x).
Admitted.
Theorem real_abs_bridge : (forall x :e R, hl_real_abs x = hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) x (hl_real_neg x)) -> (forall x :e R, abs_SNo x = if 0 <= x then x else - x).
exact (fun HL => (imp_forall_in (R) (fun x => hl_real_abs x = hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) x (hl_real_neg x)) (fun x => abs_SNo x = if 0 <= x then x else - x) (fun x Hx => (imp_eq (hl_real_abs x) (abs_SNo x) (hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) x (hl_real_neg x)) (if 0 <= x then x else - x) ((hl_real_abs_compat) (x) Hx) (((hl_real_neg_compat) (x) Hx) (fun hl__u hl__v => hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) x (hl_real_neg x) = if 0 <= x then x else hl__u) (hl_COND_if (R) (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) (setexp_ap (R) (2) (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero))) (setexp_ap (R) (2 :^: R) (hl_real_le) ((hl_real_le_in)) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (x) Hx) (0 <= x) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 <-> hl__u <= x) ((hl_real_le_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (x) Hx)) (x) Hx (hl_real_neg x) (setexp_ap (R) (R) (hl_real_neg) ((hl_real_neg_in)) (x) Hx)))))) HL).
Qed.
Theorem real_abs : forall x :e R, abs_SNo x = if 0 <= x then x else - x.
exact (real_abs_bridge hlt_real_abs).
Admitted.

// HOL Light: realax.ml:1797 / real_pow   (hash md5:ea2ffbd1f3fd55a4f9075bedca1a4ab1)
Theorem hlt_real_pow : forall x :e R, hl_real_pow x (hl_NUMERAL hl_zero) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall n :e omega, hl_real_pow x (hl_SUC n) = hl_real_mul x (hl_real_pow x n).
Admitted.
Theorem real_pow_bridge : (forall x :e R, hl_real_pow x (hl_NUMERAL hl_zero) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall n :e omega, hl_real_pow x (hl_SUC n) = hl_real_mul x (hl_real_pow x n)) -> (forall x :e R, x ^ 0 = 1 /\ forall n :e omega, x ^ ordsucc n = x * x ^ n).
exact (fun HL => (imp_forall_in (R) (fun x => hl_real_pow x (hl_NUMERAL hl_zero) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall n :e omega, hl_real_pow x (hl_SUC n) = hl_real_mul x (hl_real_pow x n)) (fun x => x ^ 0 = 1 /\ forall n :e omega, x ^ ordsucc n = x * x ^ n) (fun x Hx => (imp_and (hl_real_pow x (hl_NUMERAL hl_zero) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (x ^ 0 = 1) (forall n :e omega, hl_real_pow x (hl_SUC n) = hl_real_mul x (hl_real_pow x n)) (forall n :e omega, x ^ ordsucc n = x * x ^ n) (imp_eq (hl_real_pow x (hl_NUMERAL hl_zero)) (x ^ 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (1) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_pow x (hl_NUMERAL hl_zero) = x ^ hl__u) ((hl_real_pow_compat) (x) Hx (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (imp_forall_in (omega) (fun n => hl_real_pow x (hl_SUC n) = hl_real_mul x (hl_real_pow x n)) (fun n => x ^ ordsucc n = x * x ^ n) (fun n Hn => (imp_eq (hl_real_pow x (hl_SUC n)) (x ^ ordsucc n) (hl_real_mul x (hl_real_pow x n)) (x * x ^ n) (((hl_SUC_compat) (n) Hn) (fun hl__u hl__v => hl_real_pow x (hl_SUC n) = x ^ hl__u) ((hl_real_pow_compat) (x) Hx (hl_SUC n) (setexp_ap (omega) (omega) (hl_SUC) ((hl_SUC_in)) (n) Hn))) (((hl_real_pow_compat) (x) Hx (n) Hn) (fun hl__u hl__v => hl_real_mul x (hl_real_pow x n) = x * hl__u) ((hl_real_mul_compat) (x) Hx (hl_real_pow x n) (setexp_ap (omega) (R) (hl_real_pow x) (setexp_ap (R) (R :^: omega) (hl_real_pow) ((hl_real_pow_in)) (x) Hx) (n) Hn))))))))) HL).
Qed.
Theorem real_pow : forall x :e R, x ^ 0 = 1 /\ forall n :e omega, x ^ ordsucc n = x * x ^ n.
exact (real_pow_bridge hlt_real_pow).
Admitted.

// HOL Light: realax.ml:1801 / real_div   (hash md5:ad6d79fef4b7aa275eff6be876bf8ab5)
Theorem hlt_real_div : forall x y :e R, hl_real_div x y = hl_real_mul x (hl_real_inv y).
Admitted.
Theorem real_div_bridge : (forall x y :e R, hl_real_div x y = hl_real_mul x (hl_real_inv y)) -> (forall x y :e R, x :/: y = x * recip_SNo y).
exact (fun HL => (imp_forall_in (R) (fun x => forall y :e R, hl_real_div x y = hl_real_mul x (hl_real_inv y)) (fun x => forall y :e R, x :/: y = x * recip_SNo y) (fun x Hx => (imp_forall_in (R) (fun y => hl_real_div x y = hl_real_mul x (hl_real_inv y)) (fun y => x :/: y = x * recip_SNo y) (fun y Hy => (imp_eq (hl_real_div x y) (x :/: y) (hl_real_mul x (hl_real_inv y)) (x * recip_SNo y) ((hl_real_div_compat) (x) Hx (y) Hy) (((hl_real_inv_compat) (y) Hy) (fun hl__u hl__v => hl_real_mul x (hl_real_inv y) = x * hl__u) ((hl_real_mul_compat) (x) Hx (hl_real_inv y) (setexp_ap (R) (R) (hl_real_inv) ((hl_real_inv_in)) (y) Hy)))))))) HL).
Qed.
Theorem real_div : forall x y :e R, x :/: y = x * recip_SNo y.
exact (real_div_bridge hlt_real_div).
Admitted.

// HOL Light: realax.ml:1804 / real_max   (hash md5:ff1873e78d4b7f77582ddd7455494247)
Theorem hlt_real_max : forall n m :e R, hl_real_max m n = hl_COND R (hl_real_le m n) n m.
Admitted.
Theorem real_max_bridge : (forall n m :e R, hl_real_max m n = hl_COND R (hl_real_le m n) n m) -> (forall n m :e R, (if m <= n then n else m) = if m <= n then n else m).
exact (fun HL => (imp_forall_in (R) (fun n => forall m :e R, hl_real_max m n = hl_COND R (hl_real_le m n) n m) (fun n => forall m :e R, (if m <= n then n else m) = if m <= n then n else m) (fun n Hn => (imp_forall_in (R) (fun m => hl_real_max m n = hl_COND R (hl_real_le m n) n m) (fun m => (if m <= n then n else m) = if m <= n then n else m) (fun m Hm => (imp_eq (hl_real_max m n) (if m <= n then n else m) (hl_COND R (hl_real_le m n) n m) (if m <= n then n else m) ((hl_real_max_compat) (m) Hm (n) Hn) (hl_COND_if (R) (hl_real_le m n) (setexp_ap (R) (2) (hl_real_le m) (setexp_ap (R) (2 :^: R) (hl_real_le) ((hl_real_le_in)) (m) Hm) (n) Hn) (m <= n) ((hl_real_le_compat) (m) Hm (n) Hn) (n) Hn (m) Hm)))))) HL).
Qed.
Theorem real_max : forall n m :e R, (if m <= n then n else m) = if m <= n then n else m.
exact (real_max_bridge hlt_real_max).
Admitted.

// HOL Light: realax.ml:1807 / real_min   (hash md5:0635a4e371255e7eb6948729796d63a8)
Theorem hlt_real_min : forall m n :e R, hl_real_min m n = hl_COND R (hl_real_le m n) m n.
Admitted.
Theorem real_min_bridge : (forall m n :e R, hl_real_min m n = hl_COND R (hl_real_le m n) m n) -> (forall m n :e R, (if m <= n then m else n) = if m <= n then m else n).
exact (fun HL => (imp_forall_in (R) (fun m => forall n :e R, hl_real_min m n = hl_COND R (hl_real_le m n) m n) (fun m => forall n :e R, (if m <= n then m else n) = if m <= n then m else n) (fun m Hm => (imp_forall_in (R) (fun n => hl_real_min m n = hl_COND R (hl_real_le m n) m n) (fun n => (if m <= n then m else n) = if m <= n then m else n) (fun n Hn => (imp_eq (hl_real_min m n) (if m <= n then m else n) (hl_COND R (hl_real_le m n) m n) (if m <= n then m else n) ((hl_real_min_compat) (m) Hm (n) Hn) (hl_COND_if (R) (hl_real_le m n) (setexp_ap (R) (2) (hl_real_le m) (setexp_ap (R) (2 :^: R) (hl_real_le) ((hl_real_le_in)) (m) Hm) (n) Hn) (m <= n) ((hl_real_le_compat) (m) Hm (n) Hn) (m) Hm (n) Hn)))))) HL).
Qed.
Theorem real_min : forall m n :e R, (if m <= n then m else n) = if m <= n then m else n.
exact (real_min_bridge hlt_real_min).
Admitted.

// HOL Light: realax.ml:1862 / REAL_COMPLETE_SOMEPOS   (hash md5:6c0aaa2e98058d204e2ffe9a68c78fa6)
Theorem hlt_REAL_COMPLETE_SOMEPOS : forall P :e 2 :^: R, (exists x :e R, P x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1.
Admitted.
Theorem REAL_COMPLETE_SOMEPOS_bridge : (forall P :e 2 :^: R, (exists x :e R, P x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) -> (forall P:set -> prop, (exists x :e R, P x /\ 0 <= x) /\ (exists M :e R, forall x :e R, P x -> x <= M) -> exists M :e R, (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M').
exact (fun HL => (imp_forall_pred (R) (fun P => (exists x :e R, P x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (fun P => (exists x :e R, P x /\ 0 <= x) /\ (exists M :e R, forall x :e R, P x -> x <= M) -> exists M :e R, (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M') (fun P => (imp_imp ((exists x :e R, hl_chip R P x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) /\ exists M :e R, forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) ((exists x :e R, P x /\ 0 <= x) /\ exists M :e R, forall x :e R, P x -> x <= M) (exists M :e R, (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (exists M :e R, (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M') (imp_and (exists x :e R, P x /\ 0 <= x) (exists x :e R, hl_chip R P x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) (exists M :e R, forall x :e R, P x -> x <= M) (exists M :e R, forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) (imp_exists_in (R) (fun x => P x /\ 0 <= x) (fun x => hl_chip R P x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) (fun x Hx => (imp_and (P x) (hl_chip R P x = 1) (0 <= x) (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) (iffER (hl_chip R P x = 1) (P x) ((hl_chip_iff (R) P) (x) Hx)) (iffER (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1) (0 <= x) (((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))) (fun hl__u hl__v => hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 <-> hl__u <= x) ((hl_real_le_compat) (hl_real_of_num (hl_NUMERAL hl_zero)) (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))) (x) Hx)))))) (imp_exists_in (R) (fun M => forall x :e R, P x -> x <= M) (fun M => forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) (fun M HM => (imp_forall_in (R) (fun x => P x -> x <= M) (fun x => hl_chip R P x = 1 -> hl_real_le x M = 1) (fun x Hx => (imp_imp (P x) (hl_chip R P x = 1) (x <= M) (hl_real_le x M = 1) (iffEL (hl_chip R P x = 1) (P x) ((hl_chip_iff (R) P) (x) Hx)) (iffER (hl_real_le x M = 1) (x <= M) ((hl_real_le_compat) (x) Hx (M) HM)))))))) (imp_exists_in (R) (fun M => (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (fun M => (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M') (fun M HM => (imp_and (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) (forall x :e R, P x -> x <= M) (forall M' :e R, (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M') (imp_forall_in (R) (fun x => hl_chip R P x = 1 -> hl_real_le x M = 1) (fun x => P x -> x <= M) (fun x Hx => (imp_imp (hl_chip R P x = 1) (P x) (hl_real_le x M = 1) (x <= M) (iffER (hl_chip R P x = 1) (P x) ((hl_chip_iff (R) P) (x) Hx)) (iffEL (hl_real_le x M = 1) (x <= M) ((hl_real_le_compat) (x) Hx (M) HM))))) (imp_forall_in (R) (fun M' => (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (fun M' => (forall x :e R, P x -> x <= M') -> M <= M') (fun M' HM' => (imp_imp (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) (forall x :e R, P x -> x <= M') (hl_real_le M M' = 1) (M <= M') (imp_forall_in (R) (fun x => P x -> x <= M') (fun x => hl_chip R P x = 1 -> hl_real_le x M' = 1) (fun x Hx => (imp_imp (P x) (hl_chip R P x = 1) (x <= M') (hl_real_le x M' = 1) (iffEL (hl_chip R P x = 1) (P x) ((hl_chip_iff (R) P) (x) Hx)) (iffER (hl_real_le x M' = 1) (x <= M') ((hl_real_le_compat) (x) Hx (M') HM'))))) (iffEL (hl_real_le M M' = 1) (M <= M') ((hl_real_le_compat) (M) HM (M') HM'))))))))))) HL).
Qed.
Theorem REAL_COMPLETE_SOMEPOS : forall P:set -> prop, (exists x :e R, P x /\ 0 <= x) /\ (exists M :e R, forall x :e R, P x -> x <= M) -> exists M :e R, (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M'.
exact (REAL_COMPLETE_SOMEPOS_bridge hlt_REAL_COMPLETE_SOMEPOS).
Admitted.

// HOL Light: realax.ml:1908 / REAL_COMPLETE   (hash md5:ed89d1373d628a31ea8fceb7aa11825a)
Theorem hlt_REAL_COMPLETE : forall P :e 2 :^: R, (exists x :e R, P x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1.
Admitted.
Theorem REAL_COMPLETE_bridge : (forall P :e 2 :^: R, (exists x :e R, P x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) -> (forall P:set -> prop, (exists x :e R, P x) /\ (exists M :e R, forall x :e R, P x -> x <= M) -> exists M :e R, (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M').
exact (fun HL => (imp_forall_pred (R) (fun P => (exists x :e R, P x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (fun P => (exists x :e R, P x) /\ (exists M :e R, forall x :e R, P x -> x <= M) -> exists M :e R, (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M') (fun P => (imp_imp ((exists x :e R, hl_chip R P x = 1) /\ exists M :e R, forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) ((exists x :e R, P x) /\ exists M :e R, forall x :e R, P x -> x <= M) (exists M :e R, (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (exists M :e R, (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M') (imp_and (exists x :e R, P x) (exists x :e R, hl_chip R P x = 1) (exists M :e R, forall x :e R, P x -> x <= M) (exists M :e R, forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) (imp_exists_in (R) (fun x => P x) (fun x => hl_chip R P x = 1) (fun x Hx => (iffER (hl_chip R P x = 1) (P x) ((hl_chip_iff (R) P) (x) Hx)))) (imp_exists_in (R) (fun M => forall x :e R, P x -> x <= M) (fun M => forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) (fun M HM => (imp_forall_in (R) (fun x => P x -> x <= M) (fun x => hl_chip R P x = 1 -> hl_real_le x M = 1) (fun x Hx => (imp_imp (P x) (hl_chip R P x = 1) (x <= M) (hl_real_le x M = 1) (iffEL (hl_chip R P x = 1) (P x) ((hl_chip_iff (R) P) (x) Hx)) (iffER (hl_real_le x M = 1) (x <= M) ((hl_real_le_compat) (x) Hx (M) HM)))))))) (imp_exists_in (R) (fun M => (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (fun M => (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M') (fun M HM => (imp_and (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M = 1) (forall x :e R, P x -> x <= M) (forall M' :e R, (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M') (imp_forall_in (R) (fun x => hl_chip R P x = 1 -> hl_real_le x M = 1) (fun x => P x -> x <= M) (fun x Hx => (imp_imp (hl_chip R P x = 1) (P x) (hl_real_le x M = 1) (x <= M) (iffER (hl_chip R P x = 1) (P x) ((hl_chip_iff (R) P) (x) Hx)) (iffEL (hl_real_le x M = 1) (x <= M) ((hl_real_le_compat) (x) Hx (M) HM))))) (imp_forall_in (R) (fun M' => (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1) (fun M' => (forall x :e R, P x -> x <= M') -> M <= M') (fun M' HM' => (imp_imp (forall x :e R, hl_chip R P x = 1 -> hl_real_le x M' = 1) (forall x :e R, P x -> x <= M') (hl_real_le M M' = 1) (M <= M') (imp_forall_in (R) (fun x => P x -> x <= M') (fun x => hl_chip R P x = 1 -> hl_real_le x M' = 1) (fun x Hx => (imp_imp (P x) (hl_chip R P x = 1) (x <= M') (hl_real_le x M' = 1) (iffEL (hl_chip R P x = 1) (P x) ((hl_chip_iff (R) P) (x) Hx)) (iffER (hl_real_le x M' = 1) (x <= M') ((hl_real_le_compat) (x) Hx (M') HM'))))) (iffEL (hl_real_le M M' = 1) (M <= M') ((hl_real_le_compat) (M) HM (M') HM'))))))))))) HL).
Qed.
Theorem REAL_COMPLETE : forall P:set -> prop, (exists x :e R, P x) /\ (exists M :e R, forall x :e R, P x -> x <= M) -> exists M :e R, (forall x :e R, P x -> x <= M) /\ forall M' :e R, (forall x :e R, P x -> x <= M') -> M <= M'.
exact (REAL_COMPLETE_bridge hlt_REAL_COMPLETE).
Admitted.

