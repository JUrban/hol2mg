// Native proofs guided by recorded proof leaves (docs/DESIGN.md 24.3):
// rewrite-normalization to True with the leaf lemmas, one congruence step per claim.

// HOL Light: realarith.ml / REAL_LT_REFL (leaf-guided)
Theorem REAL_LT_REFL : forall x :e R, ~ x < x.
claim E1 : (forall x :e R, ~ x < x) <-> (forall x :e R, True).
{ exact (all_in_iff_cong (R) (fun x:set => ~ x < x) (fun x:set => True) (fun x Hx => (iff_true_intro (~ x < x) ((andER (~ x < x -> True) (True -> ~ x < x) (iff_true_intro (~ x < x) (SNoLt_irref (x)))) (fun p:prop => fun H:p => H))))). }
claim F0 : forall x :e R, True.
{ let x. assume Hx.
exact (fun p:prop => fun H:p => H). }
exact (iffER (forall x :e R, ~ x < x) (forall x :e R, True) E1 F0).
Qed.

// HOL Light: class.ml / BOOL_CASES_AX (leaf-guided)
Theorem BOOL_CASES_AX : forall t:prop, (t <-> True) \/ (t <-> False).
claim E1 : (forall t:prop, (t <-> True) \/ (t <-> False)) <-> (forall t:prop, t \/ (t <-> False)).
{ exact (allp_iff_cong (fun t:prop => (t <-> True) \/ (t <-> False)) (fun t:prop => t \/ (t <-> False)) (fun t:prop => (or_iff_cong (t <-> True) (t) (t <-> False) (t <-> False) ((andER (((t <-> True) <-> t) -> True) (True -> ((t <-> True) <-> t)) (iff_true_intro ((t <-> True) <-> t) ((andER (((t <-> True) <-> t) -> True) (True -> ((t <-> True) <-> t)) (iff_true_intro ((t <-> True) <-> t) (andEL ((t <-> True) <-> t) (((False <-> t) <-> ~ t) /\ ((t <-> False) <-> ~ t)) (andER ((True <-> t) <-> t) (((t <-> True) <-> t) /\ (((False <-> t) <-> ~ t) /\ ((t <-> False) <-> ~ t))) (EQ_CLAUSES (t)))))) TRUTH))) TRUTH) (iff_refl (t <-> False))))). }
claim E2 : (forall t:prop, t \/ (t <-> False)) <-> (forall t:prop, t \/ ~ t).
{ exact (allp_iff_cong (fun t1:prop => t1 \/ (t1 <-> False)) (fun t1:prop => t1 \/ ~ t1) (fun t1:prop => (or_iff_cong (t1) (t1) (t1 <-> False) (~ t1) (iff_refl (t1)) ((andER (((t1 <-> False) <-> ~ t1) -> True) (True -> ((t1 <-> False) <-> ~ t1)) (iff_true_intro ((t1 <-> False) <-> ~ t1) ((andER (((t1 <-> False) <-> ~ t1) -> True) (True -> ((t1 <-> False) <-> ~ t1)) (iff_true_intro ((t1 <-> False) <-> ~ t1) (andER ((False <-> t1) <-> ~ t1) ((t1 <-> False) <-> ~ t1) (andER ((t1 <-> True) <-> t1) (((False <-> t1) <-> ~ t1) /\ ((t1 <-> False) <-> ~ t1)) (andER ((True <-> t1) <-> t1) (((t1 <-> True) <-> t1) /\ (((False <-> t1) <-> ~ t1) /\ ((t1 <-> False) <-> ~ t1))) (EQ_CLAUSES (t1))))))) TRUTH))) TRUTH)))). }
claim F0 : forall t:prop, t \/ ~ t.
{ let t.
exact (xm (t)). }
exact (iffER (forall t:prop, (t <-> True) \/ (t <-> False)) (forall t:prop, t \/ (t <-> False)) E1 (iffER (forall t:prop, t \/ (t <-> False)) (forall t:prop, t \/ ~ t) E2 F0)).
Qed.

// HOL Light: int.ml / INT_LT_REFL (leaf-guided)
Theorem INT_LT_REFL : forall x :e int, ~ x < x.
claim E1 : (forall x :e int, ~ x < x) <-> (forall x :e int, True).
{ exact (all_in_iff_cong (int) (fun x:set => ~ x < x) (fun x:set => True) (fun x Hx => (iff_true_intro (~ x < x) ((andER (~ x < x -> True) (True -> ~ x < x) (iff_true_intro (~ x < x) (SNoLt_irref (x)))) TRUTH)))). }
claim F0 : forall x :e int, True.
{ let x. assume Hx.
exact TRUTH. }
exact (iffER (forall x :e int, ~ x < x) (forall x :e int, True) E1 F0).
Qed.

// HOL Light: int.ml / INT_SGN_0 (leaf-guided)
Theorem INT_SGN_0 : (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0.
claim E1 : ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) <-> ((if 0 < 0 then - 1 else 0) = 0).
{ exact ((If_i_0 (0 < 0) (1) (if 0 < 0 then - 1 else 0) ((andER (~ 0 < 0 -> True) (True -> ~ 0 < 0) (iff_true_intro (~ 0 < 0) (SNoLt_irref (0)))) TRUTH)) (fun hl__u hl__v => ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) <-> (hl__u = 0)) (iff_refl ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0))). }
claim F0 : (if 0 < 0 then - 1 else 0) = 0.
{ exact (If_i_0 (0 < 0) (- 1) (0) (SNoLt_irref (0))). }
exact (iffER ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) ((if 0 < 0 then - 1 else 0) = 0) E1 F0).
Qed.

// HOL Light: arith.ml / LT_REFL (leaf-guided)
Theorem LT_REFL : forall n :e omega, ~ n < n.
claim E1 : (forall n :e omega, ~ n < n) <-> (forall n :e omega, True).
{ exact (all_in_iff_cong (omega) (fun n:set => ~ n < n) (fun n:set => True) (fun n Hn => (iff_true_intro (~ n < n) ((andER (~ n < n -> True) (True -> ~ n < n) (iff_true_intro (~ n < n) (SNoLt_irref (n)))) TRUTH)))). }
claim F0 : forall n :e omega, True.
{ let n. assume Hn.
exact TRUTH. }
exact (iffER (forall n :e omega, ~ n < n) (forall n :e omega, True) E1 F0).
Qed.

