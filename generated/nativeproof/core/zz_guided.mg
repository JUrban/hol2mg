// Native proofs guided by recorded proof leaves (docs/DESIGN.md 24.3):
// rewrite-normalization to True with the leaf lemmas, one congruence step per claim.

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

// HOL Light: int.ml / INT_SGN_0 (leaf-guided)
Theorem INT_SGN_0 : (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0.
claim E1 : ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) <-> ((if 0 < 0 then - 1 else 0) = 0).
{ exact ((If_i_0 (0 < 0) (1) (if 0 < 0 then - 1 else 0) (fun hl__H9 : 0 < 0 => ((andER (False -> False) (False -> False) (iff_false_intro (False) (fun hl__H10 : False => hl__H10))) ((SNoLt_irref (0)) hl__H9)))) (fun hl__u hl__v => ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) <-> (hl__u = 0)) (iff_refl ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0))). }
claim F0 : (if 0 < 0 then - 1 else 0) = 0.
{ exact (If_i_0 (0 < 0) (- 1) (0) (fun hl__H : 0 < 0 => ((SNoLt_irref (0)) hl__H))). }
exact (iffER ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) ((if 0 < 0 then - 1 else 0) = 0) E1 F0).
Qed.

// HOL Light: int.ml / REAL_ZPOW_0 (leaf-guided)
Theorem REAL_ZPOW_0 : forall x :e R, (if 0 <= 0 then x ^ 0 else recip_SNo (x ^ (- 0))) = 1.
let x. assume Hx.
exact (((REAL_ZPOW_NUM (x) Hx (0) (nat_p_omega (0) nat_0)) (fun hl__u hl__v => hl__u = (if 0 <= 0 then x ^ 0 else recip_SNo (x ^ (- 0)))) (fun q H => H)) (fun hl__u hl__v => hl__u = 1) (andEL (x ^ 0 = 1) (forall n :e omega, x ^ ordsucc n = x * x ^ n) (real_pow (x) Hx))).
Qed.

