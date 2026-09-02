// Native proofs guided by recorded proof leaves (docs/DESIGN.md 24.3):
// rewrite-normalization to True with the leaf lemmas, one congruence step per claim.

// HOL Light: arith.ml / EQ_ADD_RCANCEL (leaf-guided)
Theorem EQ_ADD_RCANCEL : forall m n p :e omega, m + p = n + p <-> m = n.
claim E1 : (forall m n p :e omega, m + p = n + p <-> m = n) <-> (forall m n p :e omega, p + m = n + p <-> m = n).
{ exact (all_in_iff_cong (omega) (fun m:set => forall n p :e omega, m + p = n + p <-> m = n) (fun m:set => forall n p :e omega, p + m = n + p <-> m = n) (fun m Hm => (all_in_iff_cong (omega) (fun n:set => forall p :e omega, m + p = n + p <-> m = n) (fun n:set => forall p :e omega, p + m = n + p <-> m = n) (fun n Hn => (all_in_iff_cong (omega) (fun p:set => m + p = n + p <-> m = n) (fun p:set => p + m = n + p <-> m = n) (fun p Hp => (iff_iff_cong (m + p = n + p) (p + m = n + p) (m = n) (m = n) ((add_SNo_com (m) (p) ((andER (SNo m -> True) (True -> SNo m) (iff_true_intro (SNo m) (omega_SNo (m) Hm))) (fun p:prop => fun H:p => H)) ((andER (SNo p -> True) (True -> SNo p) (iff_true_intro (SNo p) (omega_SNo (p) Hp))) (fun p:prop => fun H:p => H))) (fun hl__u hl__v => (m + p = n + p) <-> (hl__u = n + p)) (iff_refl (m + p = n + p))) (iff_refl (m = n))))))))). }
claim F0 : forall m n p :e omega, p + m = n + p <-> m = n.
{ let m. assume Hm.
let n. assume Hn.
let p. assume Hp.
apply iffI.
- assume H1.
  exact ((andEL (p + m = p + n -> m = n) (m = n -> p + m = p + n) (EQ_ADD_LCANCEL (p) Hp (m) Hm (n) Hn)) ((H1 (fun hl__u hl__v => hl__u = (p + m)) (fun q H => H)) (fun hl__u hl__v => hl__u = p + n) (ADD_SYM (n) Hn (p) Hp))).
- assume H.
  exact (((ADD_SYM (p) Hp (m) Hm) (fun hl__u hl__v => hl__u = (p + m)) (fun q H => H)) (fun hl__u hl__v => hl__u = n + p) (H (fun hl__u hl__v => (m + p) = (hl__u + p)) (fun q H => H))). }
exact (iffER (forall m n p :e omega, m + p = n + p <-> m = n) (forall m n p :e omega, p + m = n + p <-> m = n) E1 F0).
Qed.

// HOL Light: arith.ml / LE_ADDR (leaf-guided)
Theorem LE_ADDR : forall m n :e omega, n <= m + n.
let m. assume Hm.
let n. assume Hn.
exact ((andER (n <= m + n -> exists hl__d :e omega, m + n = n + hl__d) ((exists hl__d :e omega, m + n = n + hl__d) -> n <= m + n) (le_exists_thm (n) Hn (m + n) (add_SNo_In_omega (m) Hm (n) Hn))) (ex_intro (fun hl__w:set => hl__w :e omega /\ m + n = n + hl__w) (m) (andI (m :e omega) (m + n = n + m) Hm (ADD_SYM (m) Hm (n) Hn)))).
Qed.

// HOL Light: calc_int.ml / REAL_EQ_ADD_RCANCEL (leaf-guided)
Theorem REAL_EQ_ADD_RCANCEL : forall x y z :e R, x + z = y + z <-> x = y.
claim E1 : (forall x y z :e R, x + z = y + z <-> x = y) <-> (forall x y z :e R, z + x = y + z <-> x = y).
{ exact (all_in_iff_cong (R) (fun x:set => forall y z :e R, x + z = y + z <-> x = y) (fun x:set => forall y z :e R, z + x = y + z <-> x = y) (fun x Hx => (all_in_iff_cong (R) (fun y:set => forall z :e R, x + z = y + z <-> x = y) (fun y:set => forall z :e R, z + x = y + z <-> x = y) (fun y Hy => (all_in_iff_cong (R) (fun z:set => x + z = y + z <-> x = y) (fun z:set => z + x = y + z <-> x = y) (fun z Hz => (iff_iff_cong (x + z = y + z) (z + x = y + z) (x = y) (x = y) ((add_SNo_com (x) (z) ((andER (SNo x -> True) (True -> SNo x) (iff_true_intro (SNo x) (real_SNo (x) Hx))) (fun p:prop => fun H:p => H)) ((andER (SNo z -> True) (True -> SNo z) (iff_true_intro (SNo z) (real_SNo (z) Hz))) (fun p:prop => fun H:p => H))) (fun hl__u hl__v => (x + z = y + z) <-> (hl__u = y + z)) (iff_refl (x + z = y + z))) (iff_refl (x = y))))))))). }
claim F0 : forall x y z :e R, z + x = y + z <-> x = y.
{ let x. assume Hx.
let y. assume Hy.
let z. assume Hz.
apply iffI.
- assume H1.
  exact ((andEL (z + x = z + y -> x = y) (x = y -> z + x = z + y) (REAL_EQ_ADD_LCANCEL (z) Hz (x) Hx (y) Hy)) ((H1 (fun hl__u hl__v => hl__u = (z + x)) (fun q H => H)) (fun hl__u hl__v => hl__u = z + y) (REAL_ADD_SYM (y) Hy (z) Hz))).
- assume H.
  exact (((REAL_ADD_SYM (z) Hz (x) Hx) (fun hl__u hl__v => hl__u = (z + x)) (fun q H => H)) (fun hl__u hl__v => hl__u = y + z) (H (fun hl__u hl__v => (x + z) = (hl__u + z)) (fun q H => H))). }
exact (iffER (forall x y z :e R, x + z = y + z <-> x = y) (forall x y z :e R, z + x = y + z <-> x = y) E1 F0).
Qed.

// HOL Light: realarith.ml / REAL_LT_LE (leaf-guided)
Theorem REAL_LT_LE : forall x y :e R, x < y <-> x <= y /\ ~ x = y.
claim E1 : (forall x y :e R, x < y <-> x <= y /\ ~ x = y) <-> (forall x y :e R, ~ y <= x <-> x <= y /\ ~ x = y).
{ exact (all_in_iff_cong (R) (fun x:set => forall y :e R, x < y <-> x <= y /\ ~ x = y) (fun x:set => forall y :e R, ~ y <= x <-> x <= y /\ ~ x = y) (fun x Hx => (all_in_iff_cong (R) (fun y:set => x < y <-> x <= y /\ ~ x = y) (fun y:set => ~ y <= x <-> x <= y /\ ~ x = y) (fun y Hy => (iff_iff_cong (x < y) (~ y <= x) (x <= y /\ ~ x = y) (x <= y /\ ~ x = y) ((andER ((x < y <-> ~ y <= x) -> True) (True -> (x < y <-> ~ y <= x)) (iff_true_intro (x < y <-> ~ y <= x) ((andER ((x < y <-> ~ y <= x) -> True) (True -> (x < y <-> ~ y <= x)) (iff_true_intro (x < y <-> ~ y <= x) (real_lt_iff (y) Hy (x) Hx))) (fun p:prop => fun H:p => H)))) (fun p:prop => fun H:p => H)) (iff_refl (x <= y /\ ~ x = y))))))). }
claim F0 : forall x y :e R, ~ y <= x <-> x <= y /\ ~ x = y.
{ let x. assume Hx.
let y. assume Hy.
apply iffI.
- assume H2.
  apply andI.
  + exact (SNoLtLe (x) (y) ((andER (x < y -> ~ y <= x) (~ y <= x -> x < y) (real_lt_iff (y) Hy (x) Hx)) H2)).
  + assume H3.
    exact (H2 (H3 (fun hl__u hl__v => hl__u <= x) (SNoLe_ref (x)))).
- assume H.
  assume H1.
  exact ((andER (x <= y) (~ x = y) H) ((andEL (x <= y /\ y <= x -> x = y) (x = y -> x <= y /\ y <= x) (REAL_LE_ANTISYM (x) Hx (y) Hy)) (andI (x <= y) (y <= x) (andEL (x <= y) (~ x = y) H) H1))). }
exact (iffER (forall x y :e R, x < y <-> x <= y /\ ~ x = y) (forall x y :e R, ~ y <= x <-> x <= y /\ ~ x = y) E1 F0).
Qed.

// HOL Light: realarith.ml / REAL_LT_NZ (leaf-guided)
Theorem REAL_LT_NZ : forall n :e omega, ~ n = 0 <-> 0 < n.
claim E1 : (forall n :e omega, ~ n = 0 <-> 0 < n) <-> (forall n :e omega, ~ n = 0 <-> ~ n = 0).
{ exact (all_in_iff_cong (omega) (fun n:set => ~ n = 0 <-> 0 < n) (fun n:set => ~ n = 0 <-> ~ n = 0) (fun n Hn => (iff_iff_cong (~ n = 0) (~ n = 0) (0 < n) (~ n = 0) (iff_refl (~ n = 0)) (minus_SNo_0 (fun hl__u hl__v => hl__u < n <-> ~ n = hl__u) ((minus_SNo_0 (fun hl__u hl__v => hl__u = (- 0)) (fun q H => H)) (fun hl__u hl__v => hl__u < n <-> ~ n = hl__u) (lt_nz_thm (n) Hn)))))). }
claim F0 : forall n :e omega, ~ n = 0 <-> ~ n = 0.
{ let n. assume Hn.
apply iffI.
- assume H2.
  assume H3.
  exact (H2 H3).
- assume H.
  assume H1.
  exact (H H1). }
exact (iffER (forall n :e omega, ~ n = 0 <-> 0 < n) (forall n :e omega, ~ n = 0 <-> ~ n = 0) E1 F0).
Qed.

// HOL Light: realarith.ml / REAL_NOT_LT (leaf-guided)
Theorem REAL_NOT_LT : forall x y :e R, ~ x < y <-> y <= x.
claim E1 : (forall x y :e R, ~ x < y <-> y <= x) <-> (forall x y :e R, ~ ~ y <= x <-> y <= x).
{ exact (all_in_iff_cong (R) (fun x:set => forall y :e R, ~ x < y <-> y <= x) (fun x:set => forall y :e R, ~ ~ y <= x <-> y <= x) (fun x Hx => (all_in_iff_cong (R) (fun y:set => ~ x < y <-> y <= x) (fun y:set => ~ ~ y <= x <-> y <= x) (fun y Hy => (iff_iff_cong (~ x < y) (~ ~ y <= x) (y <= x) (y <= x) (not_iff_cong (x < y) (~ y <= x) ((andER ((x < y <-> ~ y <= x) -> True) (True -> (x < y <-> ~ y <= x)) (iff_true_intro (x < y <-> ~ y <= x) ((andER ((x < y <-> ~ y <= x) -> True) (True -> (x < y <-> ~ y <= x)) (iff_true_intro (x < y <-> ~ y <= x) (real_lt_iff (y) Hy (x) Hx))) (fun p:prop => fun H:p => H)))) (fun p:prop => fun H:p => H))) (iff_refl (y <= x))))))). }
claim F0 : forall x y :e R, ~ ~ y <= x <-> y <= x.
{ let x. assume Hx.
let y. assume Hy.
apply iffI.
- assume H2.
  apply (xm (y <= x)).
  + assume H3. exact H3.
  + assume H3. exact (FalseE (H2 H3) (y <= x)).
- assume H.
  assume H1.
  exact (H1 H). }
exact (iffER (forall x y :e R, ~ x < y <-> y <= x) (forall x y :e R, ~ ~ y <= x <-> y <= x) E1 F0).
Qed.

