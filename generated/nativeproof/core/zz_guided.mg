// Native proofs guided by recorded proof leaves (docs/DESIGN.md 24.3):
// rewrite-normalization to True with the leaf lemmas, one congruence step per claim.

// HOL Light: int.ml / INT_SGN_0 (leaf-guided)
Theorem INT_SGN_0 : (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0.
claim E1 : ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) <-> ((if 0 < 0 then - 1 else 0) = 0).
{ exact ((If_i_0 (0 < 0) (1) (if 0 < 0 then - 1 else 0) (fun hl__H5 : 0 < 0 => ((andER (False -> False) (False -> False) (iff_false_intro (False) (fun hl__H6 : False => hl__H6))) ((SNoLt_irref (0)) hl__H5)))) (fun hl__u hl__v => ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) <-> (hl__u = 0)) (iff_refl ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0))). }
claim F0 : (if 0 < 0 then - 1 else 0) = 0.
{ exact (If_i_0 (0 < 0) (- 1) (0) (fun hl__H : 0 < 0 => ((SNoLt_irref (0)) hl__H))). }
exact (iffER ((if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0) ((if 0 < 0 then - 1 else 0) = 0) E1 F0).
Qed.

