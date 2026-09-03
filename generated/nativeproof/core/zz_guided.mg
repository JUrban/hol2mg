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

// HOL Light: realarith.ml / REAL_NOT_LT (leaf-guided)
Theorem REAL_NOT_LT : forall x y :e R, ~ x < y <-> y <= x.
claim E1 : (forall x y :e R, ~ x < y <-> y <= x) <-> (forall x y :e R, ~ (x <= y /\ ~ x = y) <-> y <= x).
{ exact (all_in_iff_cong (R) (fun x:set => forall y :e R, ~ x < y <-> y <= x) (fun x:set => forall y :e R, ~ (x <= y /\ ~ x = y) <-> y <= x) (fun x Hx => (all_in_iff_cong (R) (fun y:set => ~ x < y <-> y <= x) (fun y:set => ~ (x <= y /\ ~ x = y) <-> y <= x) (fun y Hy => (iff_iff_cong (~ x < y) (~ (x <= y /\ ~ x = y)) (y <= x) (y <= x) (not_iff_cong (x < y) (x <= y /\ ~ x = y) ((andER ((x < y <-> x <= y /\ ~ x = y) -> True) (True -> (x < y <-> x <= y /\ ~ x = y)) (iff_true_intro (x < y <-> x <= y /\ ~ x = y) ((andER ((x < y <-> x <= y /\ ~ x = y) -> True) (True -> (x < y <-> x <= y /\ ~ x = y)) (iff_true_intro (x < y <-> x <= y /\ ~ x = y) (real_lt_le_thm (x) Hx (y) Hy))) (fun p:prop => fun H:p => H)))) (fun p:prop => fun H:p => H))) (iff_refl (y <= x))))))). }
claim F0 : forall x y :e R, ~ (x <= y /\ ~ x = y) <-> y <= x.
{ let x. assume Hx.
let y. assume Hy.
apply iffI.
- assume H2.
  apply (xm (y <= x)).
  + assume H3. exact H3.
  + assume H4.
    claim L: False.
    { exact (H2 ((andEL (x < y -> x <= y /\ ~ x = y) (x <= y /\ ~ x = y -> x < y) (real_lt_le_thm (x) Hx (y) Hy)) ((andER (x < y -> ~ y <= x) (~ y <= x -> x < y) (real_lt_iff (y) Hy (x) Hx)) H4))). }
    exact (FalseE L (y <= x)).
- assume H.
  assume H1.
  exact ((andER (x <= y) (~ x = y) H1) (SNoLe_antisym (x) (y) (real_SNo (x) Hx) (real_SNo (y) Hy) (andEL (x <= y) (~ x = y) H1) H)). }
exact (iffER (forall x y :e R, ~ x < y <-> y <= x) (forall x y :e R, ~ (x <= y /\ ~ x = y) <-> y <= x) E1 F0).
Qed.

