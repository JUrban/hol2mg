// Per-profile stage-2 carriers for the multivariate profile (docs/DESIGN.md 24.2):
// nonemptiness of the multivector subtype carrier (witness: the empty index set),
// needed by _literal_typing2.mg.  Uses typing lemmas of _literal_typing.mg.

Theorem hl_ty_multivector_nonempty : forall N:set, N <> Empty -> hl_ty_multivector N <> Empty.
let N. assume HN.
claim Hone: hl_NUMERAL (hl_BIT1 hl_zero) :e omega. { rewrite hl_one_numeral. exact (nat_p_omega 1 nat_1). }
claim Hdim: hl_dimindex N (hl_UNIV N) :e omega. { exact (setexp_ap (2 :^: N) omega (hl_dimindex N) (hl_dimindex_in N HN) (hl_UNIV N) (hl_UNIV_in N HN)). }
claim Hns1: hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) :e 2 :^: omega :^: omega. { exact (setexp_ap omega (2 :^: omega :^: omega) hl_numseg hl_numseg_in (hl_NUMERAL (hl_BIT1 hl_zero)) Hone). }
claim HNS: hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)) :e 2 :^: omega. { exact (setexp_ap omega (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) Hns1 (hl_dimindex N (hl_UNIV N)) Hdim). }
claim Home: omega <> Empty. { exact (nonempty_of_In omega 0 (nat_p_omega 0 nat_0)). }
claim Hchi: hl_chi omega Empty :e 2 :^: omega. { exact (hl_chi_Pi omega Empty). }
claim Hrc: hl_rep omega (hl_chi omega Empty) = Empty. { exact (hl_rep_chi omega Empty (Subq_Empty omega)). }
claim Hsubq: hl_rep omega (hl_chi omega Empty) c= hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))). { exact ((eq_sym_i (hl_rep omega (hl_chi omega Empty)) Empty Hrc) (fun hl__u hl__v => hl__u c= hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) (Subq_Empty (hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))))). }
claim Hsub: hl_SUBSET omega (hl_chi omega Empty) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1. { exact (iffER (hl_SUBSET omega (hl_chi omega Empty) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1) (hl_rep omega (hl_chi omega Empty) c= hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) (hl_SUBSET_compat omega Home (hl_chi omega Empty) Hchi (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) HNS) Hsubq). }
claim Hbeta: (fun r :e 2 :^: omega => hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) (hl_chi omega Empty) = hl_SUBSET omega (hl_chi omega Empty) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))). { exact (beta (2 :^: omega) (fun r:set => hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) (hl_chi omega Empty) Hchi). }
claim Hmem: hl_chi omega Empty :e hl_ty_multivector N.
{ prove hl_chi omega Empty :e {x :e 2 :^: omega | (fun r :e 2 :^: omega => hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) x = 1}.
  exact (SepI (2 :^: omega) (fun x:set => (fun r :e 2 :^: omega => hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) x = 1) (hl_chi omega Empty) Hchi (eq_trans_i ((fun r :e 2 :^: omega => hl_SUBSET omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) (hl_chi omega Empty)) (hl_SUBSET omega (hl_chi omega Empty) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N)))) 1 Hbeta Hsub)). }
exact (nonempty_of_In (hl_ty_multivector N) (hl_chi omega Empty) Hmem).
Qed.
