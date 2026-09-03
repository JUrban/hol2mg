// Native proofs guided by recorded proof leaves (docs/DESIGN.md 24.3):
// rewrite-normalization to True with the leaf lemmas, one congruence step per claim.

// HOL Light: arith.ml / ADD_SUB (leaf-guided)
Theorem ADD_SUB : forall m n :e omega, minus_nat (m + n) n = m.
claim E1 : (forall m n :e omega, minus_nat (m + n) n = m) <-> (forall m n :e omega, minus_nat (n + m) n = m).
{ exact (all_in_iff_cong (omega) (fun m:set => forall n :e omega, minus_nat (m + n) n = m) (fun m:set => forall n :e omega, minus_nat (n + m) n = m) (fun m Hm => (all_in_iff_cong (omega) (fun n:set => minus_nat (m + n) n = m) (fun n:set => minus_nat (n + m) n = m) (fun n Hn => ((add_SNo_com (m) (n) ((andER (SNo m -> True) (True -> SNo m) (iff_true_intro (SNo m) (omega_SNo (m) Hm))) (fun p:prop => fun H:p => H)) ((andER (SNo n -> True) (True -> SNo n) (iff_true_intro (SNo n) (omega_SNo (n) Hn))) (fun p:prop => fun H:p => H))) (fun hl__u hl__v => (minus_nat (m + n) n = m) <-> (minus_nat hl__u n = m)) (iff_refl (minus_nat (m + n) n = m))))))). }
claim F0 : forall m n :e omega, minus_nat (n + m) n = m.
{ let m. assume Hm.
let n. assume Hn.
exact (sub_add_self_thm (n) Hn (m) Hm). }
exact (iffER (forall m n :e omega, minus_nat (m + n) n = m) (forall m n :e omega, minus_nat (n + m) n = m) E1 F0).
Qed.

// HOL Light: realax.ml / DIST_REFL (leaf-guided)
Theorem DIST_REFL : forall n :e omega, abs_SNo (n + - n) = 0.
claim E1 : (forall n :e omega, abs_SNo (n + - n) = 0) <-> (forall n :e omega, minus_nat n n + minus_nat n n = 0).
{ exact (all_in_iff_cong (omega) (fun n:set => abs_SNo (n + - n) = 0) (fun n:set => minus_nat n n + minus_nat n n = 0) (fun n Hn => ((dist_thm (n) Hn (n) Hn) (fun hl__u hl__v => (abs_SNo (n + - n) = 0) <-> (hl__u = 0)) (iff_refl (abs_SNo (n + - n) = 0))))). }
claim E2 : (forall n :e omega, minus_nat n n + minus_nat n n = 0) <-> (forall n :e omega, minus_nat n n = 0 /\ minus_nat n n = 0).
{ exact (all_in_iff_cong (omega) (fun n1:set => minus_nat n1 n1 + minus_nat n1 n1 = 0) (fun n1:set => minus_nat n1 n1 = 0 /\ minus_nat n1 n1 = 0) (fun n1 Hn1 => ((andER ((minus_nat n1 n1 + minus_nat n1 n1 = 0 <-> minus_nat n1 n1 = 0 /\ minus_nat n1 n1 = 0) -> True) (True -> (minus_nat n1 n1 + minus_nat n1 n1 = 0 <-> minus_nat n1 n1 = 0 /\ minus_nat n1 n1 = 0)) (iff_true_intro (minus_nat n1 n1 + minus_nat n1 n1 = 0 <-> minus_nat n1 n1 = 0 /\ minus_nat n1 n1 = 0) (add_eq_0_thm (minus_nat n1 n1) (minus_nat_In_omega (n1) Hn1 (n1) Hn1) (minus_nat n1 n1) (minus_nat_In_omega (n1) Hn1 (n1) Hn1)))) (fun p:prop => fun H:p => H)))). }
claim F0 : forall n :e omega, minus_nat n n = 0 /\ minus_nat n n = 0.
{ let n. assume Hn.
exact (andI (minus_nat n n = 0) (minus_nat n n = 0) ((andER (minus_nat n n = 0 -> n <= n) (n <= n -> minus_nat n n = 0) (sub_eq_0_thm (n) Hn (n) Hn)) (SNoLe_ref (n))) ((andER (minus_nat n n = 0 -> n <= n) (n <= n -> minus_nat n n = 0) (sub_eq_0_thm (n) Hn (n) Hn)) (SNoLe_ref (n)))). }
exact (iffER (forall n :e omega, abs_SNo (n + - n) = 0) (forall n :e omega, minus_nat n n + minus_nat n n = 0) E1 (iffER (forall n :e omega, minus_nat n n + minus_nat n n = 0) (forall n :e omega, minus_nat n n = 0 /\ minus_nat n n = 0) E2 F0)).
Qed.

// HOL Light: realax.ml / DIST_SYM (leaf-guided)
Theorem DIST_SYM : forall m n :e omega, abs_SNo (m + - n) = abs_SNo (n + - m).
claim E1 : (forall m n :e omega, abs_SNo (m + - n) = abs_SNo (n + - m)) <-> (forall m n :e omega, minus_nat m n + minus_nat n m = abs_SNo (n + - m)).
{ exact (all_in_iff_cong (omega) (fun m:set => forall n :e omega, abs_SNo (m + - n) = abs_SNo (n + - m)) (fun m:set => forall n :e omega, minus_nat m n + minus_nat n m = abs_SNo (n + - m)) (fun m Hm => (all_in_iff_cong (omega) (fun n:set => abs_SNo (m + - n) = abs_SNo (n + - m)) (fun n:set => minus_nat m n + minus_nat n m = abs_SNo (n + - m)) (fun n Hn => ((dist_thm (n) Hn (m) Hm) (fun hl__u hl__v => (abs_SNo (m + - n) = abs_SNo (n + - m)) <-> (hl__u = abs_SNo (n + - m))) (iff_refl (abs_SNo (m + - n) = abs_SNo (n + - m)))))))). }
claim F0 : forall m n :e omega, minus_nat m n + minus_nat n m = abs_SNo (n + - m).
{ let m. assume Hm.
let n. assume Hn.
exact (((ADD_SYM (minus_nat m n) (minus_nat_In_omega (n) Hn (m) Hm) (minus_nat n m) (minus_nat_In_omega (m) Hm (n) Hn)) (fun hl__u hl__v => hl__u = (minus_nat m n + minus_nat n m)) (fun q H => H)) (fun hl__u hl__v => hl__u = abs_SNo (n + - m)) ((dist_thm (m) Hm (n) Hn) (fun hl__u hl__v => hl__u = (abs_SNo (n + - m))) (fun q H => H))). }
exact (iffER (forall m n :e omega, abs_SNo (m + - n) = abs_SNo (n + - m)) (forall m n :e omega, minus_nat m n + minus_nat n m = abs_SNo (n + - m)) E1 F0).
Qed.

// HOL Light: arith.ml / LT_ANTISYM (leaf-guided)
Theorem LT_ANTISYM : forall m n :e omega, ~ (m < n /\ n < m).
claim E1 : (forall m n :e omega, ~ (m < n /\ n < m)) <-> (forall m n :e omega, ~ (m <= n /\ ~ m = n /\ n < m)).
{ exact (all_in_iff_cong (omega) (fun m:set => forall n :e omega, ~ (m < n /\ n < m)) (fun m:set => forall n :e omega, ~ (m <= n /\ ~ m = n /\ n < m)) (fun m Hm => (all_in_iff_cong (omega) (fun n:set => ~ (m < n /\ n < m)) (fun n:set => ~ (m <= n /\ ~ m = n /\ n < m)) (fun n Hn => (not_iff_cong (m < n /\ n < m) (m <= n /\ ~ m = n /\ n < m) (and_iff_cong (m < n) (m <= n /\ ~ m = n) (n < m) (n < m) ((andER ((m < n <-> m <= n /\ ~ m = n) -> True) (True -> (m < n <-> m <= n /\ ~ m = n)) (iff_true_intro (m < n <-> m <= n /\ ~ m = n) ((andER ((m < n <-> m <= n /\ ~ m = n) -> True) (True -> (m < n <-> m <= n /\ ~ m = n)) (iff_true_intro (m < n <-> m <= n /\ ~ m = n) (lt_le_omega_thm (m) Hm (n) Hn))) (fun p:prop => fun H:p => H)))) (fun p:prop => fun H:p => H)) (iff_refl (n < m)))))))). }
claim F0 : forall m n :e omega, ~ (m <= n /\ ~ m = n /\ n < m).
{ let m. assume Hm.
let n. assume Hn.
assume H.
exact ((andER (m <= n) (~ m = n) (andEL (m <= n /\ ~ m = n) (n < m) H)) (SNoLe_antisym (m) (n) (omega_SNo (m) Hm) (omega_SNo (n) Hn) (andEL (m <= n) (~ m = n) (andEL (m <= n /\ ~ m = n) (n < m) H)) (SNoLtLe (n) (m) (andER (m <= n /\ ~ m = n) (n < m) H)))). }
exact (iffER (forall m n :e omega, ~ (m < n /\ n < m)) (forall m n :e omega, ~ (m <= n /\ ~ m = n /\ n < m)) E1 F0).
Qed.

// HOL Light: arith.ml / LT_IMP_NE (leaf-guided)
Theorem LT_IMP_NE : forall m n :e omega, m < n -> ~ m = n.
claim E1 : (forall m n :e omega, m < n -> ~ m = n) <-> (forall m n :e omega, m <= n /\ ~ m = n -> ~ m = n).
{ exact (all_in_iff_cong (omega) (fun m:set => forall n :e omega, m < n -> ~ m = n) (fun m:set => forall n :e omega, m <= n /\ ~ m = n -> ~ m = n) (fun m Hm => (all_in_iff_cong (omega) (fun n:set => m < n -> ~ m = n) (fun n:set => m <= n /\ ~ m = n -> ~ m = n) (fun n Hn => (imp_iff_cong (m < n) (m <= n /\ ~ m = n) (~ m = n) (~ m = n) ((andER ((m < n <-> m <= n /\ ~ m = n) -> True) (True -> (m < n <-> m <= n /\ ~ m = n)) (iff_true_intro (m < n <-> m <= n /\ ~ m = n) ((andER ((m < n <-> m <= n /\ ~ m = n) -> True) (True -> (m < n <-> m <= n /\ ~ m = n)) (iff_true_intro (m < n <-> m <= n /\ ~ m = n) (lt_le_omega_thm (m) Hm (n) Hn))) (fun p:prop => fun H:p => H)))) (fun p:prop => fun H:p => H)) (iff_refl (~ m = n))))))). }
claim F0 : forall m n :e omega, m <= n /\ ~ m = n -> ~ m = n.
{ let m. assume Hm.
let n. assume Hn.
assume H.
assume H1.
exact ((andER (m <= n) (~ m = n) H) H1). }
exact (iffER (forall m n :e omega, m < n -> ~ m = n) (forall m n :e omega, m <= n /\ ~ m = n -> ~ m = n) E1 F0).
Qed.

// HOL Light: arith.ml / MOD_MULT_LMOD (leaf-guided)
Theorem MOD_MULT_LMOD : forall m n p :e omega, mod_nat (mod_nat m n * p) n = mod_nat (m * p) n.
claim E1 : (forall m n p :e omega, mod_nat (mod_nat m n * p) n = mod_nat (m * p) n) <-> (forall m n p :e omega, mod_nat (p * mod_nat m n) n = mod_nat (m * p) n).
{ exact (all_in_iff_cong (omega) (fun m:set => forall n p :e omega, mod_nat (mod_nat m n * p) n = mod_nat (m * p) n) (fun m:set => forall n p :e omega, mod_nat (p * mod_nat m n) n = mod_nat (m * p) n) (fun m Hm => (all_in_iff_cong (omega) (fun n:set => forall p :e omega, mod_nat (mod_nat m n * p) n = mod_nat (m * p) n) (fun n:set => forall p :e omega, mod_nat (p * mod_nat m n) n = mod_nat (m * p) n) (fun n Hn => (all_in_iff_cong (omega) (fun p:set => mod_nat (mod_nat m n * p) n = mod_nat (m * p) n) (fun p:set => mod_nat (p * mod_nat m n) n = mod_nat (m * p) n) (fun p Hp => ((mul_SNo_com (mod_nat m n) (p) (omega_SNo (mod_nat m n) (mod_nat_omega (m) Hm (n) Hn)) ((andER (SNo p -> True) (True -> SNo p) (iff_true_intro (SNo p) (omega_SNo (p) Hp))) (fun p:prop => fun H:p => H))) (fun hl__u hl__v => (mod_nat (mod_nat m n * p) n = mod_nat (m * p) n) <-> (mod_nat hl__u n = mod_nat (m * p) n)) (iff_refl (mod_nat (mod_nat m n * p) n = mod_nat (m * p) n))))))))). }
claim E2 : (forall m n p :e omega, mod_nat (p * mod_nat m n) n = mod_nat (m * p) n) <-> (forall m n p :e omega, mod_nat (p * m) n = mod_nat (m * p) n).
{ exact (all_in_iff_cong (omega) (fun m1:set => forall n p :e omega, mod_nat (p * mod_nat m1 n) n = mod_nat (m1 * p) n) (fun m1:set => forall n p :e omega, mod_nat (p * m1) n = mod_nat (m1 * p) n) (fun m1 Hm1 => (all_in_iff_cong (omega) (fun n1:set => forall p :e omega, mod_nat (p * mod_nat m1 n1) n1 = mod_nat (m1 * p) n1) (fun n1:set => forall p :e omega, mod_nat (p * m1) n1 = mod_nat (m1 * p) n1) (fun n1 Hn1 => (all_in_iff_cong (omega) (fun p1:set => mod_nat (p1 * mod_nat m1 n1) n1 = mod_nat (m1 * p1) n1) (fun p1:set => mod_nat (p1 * m1) n1 = mod_nat (m1 * p1) n1) (fun p1 Hp1 => ((mod_mult_rmod_thm (p1) Hp1 (n1) Hn1 (m1) Hm1) (fun hl__u hl__v => (mod_nat (p1 * mod_nat m1 n1) n1 = mod_nat (m1 * p1) n1) <-> (hl__u = mod_nat (m1 * p1) n1)) (iff_refl (mod_nat (p1 * mod_nat m1 n1) n1 = mod_nat (m1 * p1) n1))))))))). }
claim E3 : (forall m n p :e omega, mod_nat (p * m) n = mod_nat (m * p) n) <-> (forall m n p :e omega, mod_nat (m * p) n = mod_nat (m * p) n).
{ exact (all_in_iff_cong (omega) (fun m2:set => forall n p :e omega, mod_nat (p * m2) n = mod_nat (m2 * p) n) (fun m2:set => forall n p :e omega, mod_nat (m2 * p) n = mod_nat (m2 * p) n) (fun m2 Hm2 => (all_in_iff_cong (omega) (fun n2:set => forall p :e omega, mod_nat (p * m2) n2 = mod_nat (m2 * p) n2) (fun n2:set => forall p :e omega, mod_nat (m2 * p) n2 = mod_nat (m2 * p) n2) (fun n2 Hn2 => (all_in_iff_cong (omega) (fun p2:set => mod_nat (p2 * m2) n2 = mod_nat (m2 * p2) n2) (fun p2:set => mod_nat (m2 * p2) n2 = mod_nat (m2 * p2) n2) (fun p2 Hp2 => ((mul_SNo_com (p2) (m2) ((andER (SNo p2 -> True) (True -> SNo p2) (iff_true_intro (SNo p2) (omega_SNo (p2) Hp2))) (fun p:prop => fun H:p => H)) ((andER (SNo m2 -> True) (True -> SNo m2) (iff_true_intro (SNo m2) (omega_SNo (m2) Hm2))) (fun p:prop => fun H:p => H))) (fun hl__u hl__v => (mod_nat (p2 * m2) n2 = mod_nat (m2 * p2) n2) <-> (mod_nat hl__u n2 = mod_nat (m2 * p2) n2)) (iff_refl (mod_nat (p2 * m2) n2 = mod_nat (m2 * p2) n2))))))))). }
claim F0 : forall m n p :e omega, mod_nat (m * p) n = mod_nat (m * p) n.
{ let m. assume Hm.
let n. assume Hn.
let p. assume Hp.
exact (fun q H => H). }
exact (iffER (forall m n p :e omega, mod_nat (mod_nat m n * p) n = mod_nat (m * p) n) (forall m n p :e omega, mod_nat (p * mod_nat m n) n = mod_nat (m * p) n) E1 (iffER (forall m n p :e omega, mod_nat (p * mod_nat m n) n = mod_nat (m * p) n) (forall m n p :e omega, mod_nat (p * m) n = mod_nat (m * p) n) E2 (iffER (forall m n p :e omega, mod_nat (p * m) n = mod_nat (m * p) n) (forall m n p :e omega, mod_nat (m * p) n = mod_nat (m * p) n) E3 F0))).
Qed.

// HOL Light: arith.ml / MOD_MULT_MOD2 (leaf-guided)
Theorem MOD_MULT_MOD2 : forall m n p :e omega, mod_nat (mod_nat m n * mod_nat p n) n = mod_nat (m * p) n.
let m. assume Hm.
let n. assume Hn.
let p. assume Hp.
exact (((MOD_MULT_LMOD (m) Hm (n) Hn (mod_nat p n) (mod_nat_omega (p) Hp (n) Hn)) (fun hl__u hl__v => hl__u = (mod_nat (mod_nat m n * mod_nat p n) n)) (fun q H => H)) (fun hl__u hl__v => hl__u = mod_nat (m * p) n) (mod_mult_rmod_thm (m) Hm (n) Hn (p) Hp)).
Qed.

