// Native proofs guided by recorded proof leaves (docs/DESIGN.md 24.3):
// rewrite-normalization to True with the leaf lemmas, one congruence step per claim.

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

// HOL Light: int.ml / INT_SGN_0 (leaf-guided)
Theorem INT_SGN_0 : (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0.
claim E1 : ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) <-> ((if 0 < 0 then - 1 else 0) = 0).
{ exact ((If_i_0 (0 < 0) (1) (if 0 < 0 then - 1 else 0) (fun hl__H6 : 0 < 0 => ((andER (False -> False) (False -> False) (iff_false_intro (False) (fun hl__H7 : False => hl__H7))) ((SNoLt_irref (0)) hl__H6)))) (fun hl__u hl__v => ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) <-> (hl__u = 0)) (iff_refl ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0))). }
claim F0 : (if 0 < 0 then - 1 else 0) = 0.
{ exact (If_i_0 (0 < 0) (- 1) (0) (fun hl__H : 0 < 0 => ((SNoLt_irref (0)) hl__H))). }
exact (iffER ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) ((if 0 < 0 then - 1 else 0) = 0) E1 F0).
Qed.

