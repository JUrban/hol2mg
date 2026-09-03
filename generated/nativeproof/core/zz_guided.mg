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

// HOL Light: arith.ml / LE_ADDR (leaf-guided)
Theorem LE_ADDR : forall m n :e omega, n <= m + n.
let m. assume Hm.
let n. assume Hn.
exact ((andER (n <= m + n -> exists hl__d :e omega, m + n = n + hl__d) ((exists hl__d :e omega, m + n = n + hl__d) -> n <= m + n) (le_exists_thm (n) Hn (m + n) (add_SNo_In_omega (m) Hm (n) Hn))) (ex_intro (fun hl__w:set => hl__w :e omega /\ m + n = n + hl__w) (m) (andI (m :e omega) (m + n = n + m) Hm (ADD_SYM (m) Hm (n) Hn)))).
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

// HOL Light: arith.ml / ADD_SUBR (leaf-guided)
Theorem ADD_SUBR : forall m n :e omega, minus_nat n (m + n) = 0.
claim E1 : (forall m n :e omega, minus_nat n (m + n) = 0) <-> (forall m n :e omega, n <= m + n).
{ exact (all_in_iff_cong (omega) (fun m:set => forall n :e omega, minus_nat n (m + n) = 0) (fun m:set => forall n :e omega, n <= m + n) (fun m Hm => (all_in_iff_cong (omega) (fun n:set => minus_nat n (m + n) = 0) (fun n:set => n <= m + n) (fun n Hn => ((andER ((minus_nat n (m + n) = 0 <-> n <= m + n) -> True) (True -> (minus_nat n (m + n) = 0 <-> n <= m + n)) (iff_true_intro (minus_nat n (m + n) = 0 <-> n <= m + n) (sub_eq_0_thm (n) Hn (m + n) (add_SNo_In_omega (m) Hm (n) Hn)))) TRUTH))))). }
claim F0 : forall m n :e omega, n <= m + n.
{ let m. assume Hm.
let n. assume Hn.
exact ((andER (n <= m + n -> exists hl__d :e omega, m + n = n + hl__d) ((exists hl__d :e omega, m + n = n + hl__d) -> n <= m + n) (le_exists_thm (n) Hn (m + n) (add_SNo_In_omega (m) Hm (n) Hn))) (ex_intro (fun hl__w:set => hl__w :e omega /\ m + n = n + hl__w) (m) (andI (m :e omega) (m + n = n + m) Hm (ADD_SYM (m) Hm (n) Hn)))). }
exact (iffER (forall m n :e omega, minus_nat n (m + n) = 0) (forall m n :e omega, n <= m + n) E1 F0).
Qed.

