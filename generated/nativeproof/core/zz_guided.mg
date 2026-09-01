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

