// hol2mg certification module (private): shard cart of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: cart.ml:14 / dimindex   (hash md5:ddb3842890aa45dff1fd71f34edb013d)
Theorem hlt_dimindex_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_dimindex A s = hl_COND omega (hl_FINITE A (hl_UNIV A)) (hl_CARD A (hl_UNIV A)) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.
Theorem dimindex_thm_bridge : (forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_dimindex A s = hl_COND omega (hl_FINITE A (hl_UNIV A)) (hl_CARD A (hl_UNIV A)) (hl_NUMERAL (hl_BIT1 hl_zero))) -> (forall A:set, A <> Empty -> dimindex A = if finite A then finite_cardinality A else 1).
exact (fun H__top A HAne => (((imp_forall_sub (A) (fun s => hl_dimindex A s = hl_COND omega (hl_FINITE A (hl_UNIV A)) (hl_CARD A (hl_UNIV A)) (hl_NUMERAL (hl_BIT1 hl_zero))) (fun s => dimindex A = if finite A then finite_cardinality A else 1) (fun s Hss => (imp_eq (hl_dimindex A (hl_chi A s)) (dimindex A) (hl_COND omega (hl_FINITE A (hl_UNIV A)) (hl_CARD A (hl_UNIV A)) (hl_NUMERAL (hl_BIT1 hl_zero))) (if finite A then finite_cardinality A else 1) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_dimindex A (hl_chi A s) = dimindex A) ((hl_dimindex_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s))) (hl_COND_if_dep (omega) (hl_FINITE A (hl_UNIV A)) (setexp_ap (2 :^: A) (2) (hl_FINITE A) ((hl_FINITE_in) (A) HAne) (hl_UNIV A) ((hl_UNIV_in) (A) HAne)) (finite A) (((hl_UNIV_compat) (A) HAne) (fun hl__u hl__v => hl_FINITE A (hl_UNIV A) = 1 <-> finite hl__u) ((hl_FINITE_compat) (A) HAne (hl_UNIV A) ((hl_UNIV_in) (A) HAne))) (hl_CARD A (hl_UNIV A)) (setexp_ap (2 :^: A) (omega) (hl_CARD A) ((hl_CARD_in) (A) HAne) (hl_UNIV A) ((hl_UNIV_in) (A) HAne)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (finite_cardinality A) (1) (fun H__c1 : (finite A) => (((hl_UNIV_compat) (A) HAne) (fun hl__u hl__v => hl_CARD A (hl_UNIV A) = finite_cardinality hl__u) (((hl_CARD_compat) (A) HAne (hl_UNIV A) ((hl_UNIV_in) (A) HAne)) ((eq_sym_i (hl_rep A (hl_UNIV A)) (A) ((hl_UNIV_compat) (A) HAne)) (fun hl__u hl__v => finite hl__u) H__c1)))) (fun H__c1 : ~ (finite A) => (eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0))))))))) (H__top A HAne)) Empty (Subq_Empty (A)))).
Qed.
Theorem dimindex_thm : forall A:set, A <> Empty -> dimindex A = if finite A then finite_cardinality A else 1.
exact (dimindex_thm_bridge hlt_dimindex_thm).
Admitted.

// HOL Light: cart.ml:17 / DIMINDEX_NONZERO   (hash md5:d3725a45e0820e3b712217990615246b)
Theorem hlt_DIMINDEX_NONZERO : forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ hl_dimindex A s = hl_NUMERAL hl_zero.
Admitted.
Theorem DIMINDEX_NONZERO_bridge : (forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ hl_dimindex A s = hl_NUMERAL hl_zero) -> (forall A:set, A <> Empty -> ~ dimindex A = 0).
exact (fun H__top A HAne => (((imp_forall_sub (A) (fun s => ~ hl_dimindex A s = hl_NUMERAL hl_zero) (fun s => ~ dimindex A = 0) (fun s Hss => (imp_not (hl_dimindex A (hl_chi A s) = hl_NUMERAL hl_zero) (dimindex A = 0) (imp_eq (dimindex A) (hl_dimindex A (hl_chi A s)) (0) (hl_NUMERAL hl_zero) (eq_sym_i (hl_dimindex A (hl_chi A s)) (dimindex A) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_dimindex A (hl_chi A s) = dimindex A) ((hl_dimindex_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s)))) (eq_sym_i (hl_NUMERAL hl_zero) (0) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat)))))) (H__top A HAne)) Empty (Subq_Empty (A)))).
Qed.
Theorem DIMINDEX_NONZERO : forall A:set, A <> Empty -> ~ dimindex A = 0.
exact (DIMINDEX_NONZERO_bridge hlt_DIMINDEX_NONZERO).
Admitted.

// HOL Light: cart.ml:22 / DIMINDEX_GE_1   (hash md5:6330d948a4ade390789c61f4944f6861)
Theorem hlt_DIMINDEX_GE_1 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A s) = 1.
Admitted.
Theorem DIMINDEX_GE_1_bridge : (forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A s) = 1) -> (forall A:set, A <> Empty -> 1 <= dimindex A).
exact (fun H__top A HAne => (((imp_forall_sub (A) (fun s => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A s) = 1) (fun s => 1 <= dimindex A) (fun s Hss => (iffEL (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_chi A s)) = 1) (1 <= dimindex A) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_dimindex A (hl_chi A s) = dimindex A) ((hl_dimindex_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_chi A s)) = 1 <-> 1 <= hl__u) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_chi A s)) = 1 <-> hl__u <= hl_dimindex A (hl_chi A s)) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_dimindex A (hl_chi A s)) (setexp_ap (2 :^: A) (omega) (hl_dimindex A) ((hl_dimindex_in) (A) HAne) (hl_chi A s) (hl_chi_Pi (A) s)))))))) (H__top A HAne)) Empty (Subq_Empty (A)))).
Qed.
Theorem DIMINDEX_GE_1 : forall A:set, A <> Empty -> 1 <= dimindex A.
exact (DIMINDEX_GE_1_bridge hlt_DIMINDEX_GE_1).
Admitted.

// HOL Light: cart.ml:26 / DIMINDEX_UNIV   (hash md5:6d36efb94145933ec1aa58b078c73e98)
Theorem hlt_DIMINDEX_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_dimindex A s = hl_dimindex A (hl_UNIV A).
Admitted.
Theorem DIMINDEX_UNIV_bridge : (forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_dimindex A s = hl_dimindex A (hl_UNIV A)) -> (forall A:set, dimindex A = dimindex A).
exact (fun H__top A => (xm (A = Empty) (dimindex A = dimindex A) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => dimindex hl__u = dimindex hl__u) (fun q H => H))) (fun HAne => (((imp_forall_sub (A) (fun s => hl_dimindex A s = hl_dimindex A (hl_UNIV A)) (fun s => dimindex A = dimindex A) (fun s Hss => (imp_eq (hl_dimindex A (hl_chi A s)) (dimindex A) (hl_dimindex A (hl_UNIV A)) (dimindex A) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_dimindex A (hl_chi A s) = dimindex A) ((hl_dimindex_compat) (A) HAne (hl_chi A s) (hl_chi_Pi (A) s))) (((hl_UNIV_compat) (A) HAne) (fun hl__u hl__v => hl_dimindex A (hl_UNIV A) = dimindex A) ((hl_dimindex_compat) (A) HAne (hl_UNIV A) ((hl_UNIV_in) (A) HAne)))))) (H__top A HAne)) Empty (Subq_Empty (A)))))).
Qed.
Theorem DIMINDEX_UNIV : forall A:set, dimindex A = dimindex A.
exact (DIMINDEX_UNIV_bridge hlt_DIMINDEX_UNIV).
Admitted.

// HOL Light: cart.ml:30 / DIMINDEX_UNIQUE   (hash md5:88a36c49579122ac8804e8363815cddd)
Theorem hlt_DIMINDEX_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, hl_HAS_SIZE A (hl_UNIV A) n = 1 -> hl_dimindex A (hl_UNIV A) = n.
Admitted.
Theorem DIMINDEX_UNIQUE_bridge : (forall A:set, A <> Empty -> forall n :e omega, hl_HAS_SIZE A (hl_UNIV A) n = 1 -> hl_dimindex A (hl_UNIV A) = n) -> (forall A:set, A <> Empty -> forall n :e omega, equip A n -> dimindex A = n).
exact (fun H__top A HAne => ((imp_forall_in (omega) (fun n => hl_HAS_SIZE A (hl_UNIV A) n = 1 -> hl_dimindex A (hl_UNIV A) = n) (fun n => equip A n -> dimindex A = n) (fun n Hn => (fun H__L : ((hl_HAS_SIZE A (hl_UNIV A) n = 1) -> (hl_dimindex A (hl_UNIV A) = n)) => fun H__hyp1 : (equip A n) => (imp_eq (hl_dimindex A (hl_UNIV A)) (dimindex A) (n) (n) (((hl_UNIV_compat) (A) HAne) (fun hl__u hl__v => hl_dimindex A (hl_UNIV A) = dimindex A) ((hl_dimindex_compat) (A) HAne (hl_UNIV A) ((hl_UNIV_in) (A) HAne))) (fun q H => H)) (H__L ((iffER (hl_HAS_SIZE A (hl_UNIV A) n = 1) (equip A n) (((hl_UNIV_compat) (A) HAne) (fun hl__u hl__v => hl_HAS_SIZE A (hl_UNIV A) n = 1 <-> equip hl__u n) ((hl_HAS_SIZE_compat) (A) HAne (hl_UNIV A) ((hl_UNIV_in) (A) HAne) (n) Hn))) H__hyp1))))) (H__top A HAne))).
Qed.
Theorem DIMINDEX_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, equip A n -> dimindex A = n.
exact (DIMINDEX_UNIQUE_bridge hlt_DIMINDEX_UNIQUE).
Admitted.

// HOL Light: cart.ml:34 / UNIV_HAS_SIZE_DIMINDEX   (hash md5:23dd1460f611c1c44082919eb9c4ba65)
Theorem hlt_UNIV_HAS_SIZE_DIMINDEX : forall N:set, N <> Empty -> (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> hl_FINITE N (hl_UNIV N) = 1).
Admitted.
Theorem UNIV_HAS_SIZE_DIMINDEX_bridge : (forall N:set, N <> Empty -> (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> hl_FINITE N (hl_UNIV N) = 1)) -> (forall N:set, N <> Empty -> (equip N (dimindex N) <-> finite N)).
exact (fun H__top N HNne => ((imp_iff (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1) (equip N (dimindex N)) (hl_FINITE N (hl_UNIV N) = 1) (finite N) (iffEL (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1) (equip N (dimindex N)) (((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> equip hl__u (dimindex N)) ((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> equip (hl_rep N (hl_UNIV N)) hl__u) ((hl_HAS_SIZE_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))))) (iffER (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1) (equip N (dimindex N)) (((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> equip hl__u (dimindex N)) ((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> equip (hl_rep N (hl_UNIV N)) hl__u) ((hl_HAS_SIZE_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))))) (iffEL (hl_FINITE N (hl_UNIV N) = 1) (finite N) (((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_FINITE N (hl_UNIV N) = 1 <-> finite hl__u) ((hl_FINITE_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))) (iffER (hl_FINITE N (hl_UNIV N) = 1) (finite N) (((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_FINITE N (hl_UNIV N) = 1 <-> finite hl__u) ((hl_FINITE_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))))) (H__top N HNne))).
Qed.
Theorem UNIV_HAS_SIZE_DIMINDEX : forall N:set, N <> Empty -> (equip N (dimindex N) <-> finite N).
exact (UNIV_HAS_SIZE_DIMINDEX_bridge hlt_UNIV_HAS_SIZE_DIMINDEX).
Admitted.

// HOL Light: cart.ml:38 / HAS_SIZE_1   (hash md5:3db80a1713101542583ad1c917c7c9ae)
Theorem hlt_HAS_SIZE_1 : hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.
Theorem HAS_SIZE_1_bridge : (hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) -> (equip 1 1).
exact (fun H__top => ((iffEL (hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (equip 1 1) (((hl_UNIV_compat) (1) one_nonempty) (fun hl__u hl__v => hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> equip hl__u 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> equip (hl_rep 1 (hl_UNIV 1)) hl__u) ((hl_HAS_SIZE_compat) (1) one_nonempty (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) H__top)).
Qed.
Theorem HAS_SIZE_1 : equip 1 1.
exact (HAS_SIZE_1_bridge hlt_HAS_SIZE_1).
Admitted.

// HOL Light: cart.ml:44 / NUMSEG_LT_DIMINDEX   (hash md5:ab5eb52dade02e50e59e1fda3e75b94a)
Theorem hlt_NUMSEG_LT_DIMINDEX : forall N:set, N <> Empty -> hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0) = hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.
Theorem NUMSEG_LT_DIMINDEX_bridge : (forall N:set, N <> Empty -> hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0) = hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) -> (forall N:set, N <> Empty -> {i :e omega | i < dimindex N} = {i :e omega | 0 <= i /\ i <= minus_nat (dimindex N) 1}).
exact (fun H__top N HNne => ((rep_eq_fwd (omega) (hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0)) (hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) ({i :e omega | i < dimindex N}) ({i :e omega | 0 <= i /\ i <= minus_nat (dimindex N) 1}) (eq_trans_i (hl_rep (omega) (hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0))) ({v :e omega | exists i :e omega, hl_lt i (hl_dimindex N (hl_UNIV N)) = 1 /\ v = i}) ({i :e omega | i < dimindex N}) (hl_gspec_generic (omega) (omega) (fun i => hl_lt i (hl_dimindex N (hl_UNIV N))) (fun i => i) (fun i Hi => (setexp_ap (omega) (2) (hl_lt i) (setexp_ap (omega) (2 :^: omega) (hl_lt) ((hl_lt_in)) (i) Hi) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne))))) (eq_trans_i ({v :e omega | exists i :e omega, hl_lt i (hl_dimindex N (hl_UNIV N)) = 1 /\ v = i}) ({i :e omega | hl_lt i (hl_dimindex N (hl_UNIV N)) = 1}) ({i :e omega | i < dimindex N}) (gspec_sep_form (omega) (fun i => hl_lt i (hl_dimindex N (hl_UNIV N)))) (Sep_ext_iff (omega) (fun i => (hl_lt i (hl_dimindex N (hl_UNIV N))) = 1) (fun i => i < dimindex N) (fun i Hi => ((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_lt i (hl_dimindex N (hl_UNIV N)) = 1 <-> i < hl__u) ((hl_lt_compat) (i) Hi (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))))))) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) = {i :e omega | hl__u <= i /\ i <= minus_nat (dimindex N) 1}) (((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) = minus_nat hl__u 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) = minus_nat (hl_dimindex N (hl_UNIV N)) hl__u) ((hl_sub_compat) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) = {i :e omega | hl_NUMERAL hl_zero <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_sub (hl_dimindex N (hl_UNIV N))) (setexp_ap (omega) (omega :^: omega) (hl_sub) ((hl_sub_in)) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) (H__top N HNne))).
Qed.
Theorem NUMSEG_LT_DIMINDEX : forall N:set, N <> Empty -> {i :e omega | i < dimindex N} = {i :e omega | 0 <= i /\ i <= minus_nat (dimindex N) 1}.
exact (NUMSEG_LT_DIMINDEX_bridge hlt_NUMSEG_LT_DIMINDEX).
Admitted.

// HOL Light: cart.ml:48 / DIMINDEX_1   (hash md5:49a9d44c0dac1fb1c010affe48096fff)
Theorem hlt_DIMINDEX_1 : hl_dimindex 1 (hl_UNIV 1) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.
Theorem DIMINDEX_1_bridge : (hl_dimindex 1 (hl_UNIV 1) = hl_NUMERAL (hl_BIT1 hl_zero)) -> (1 = 1).
exact (fun H__top => (dimindex_one (fun hl__u hl__v => hl__u = 1) ((imp_eq (hl_dimindex 1 (hl_UNIV 1)) (dimindex 1) (hl_NUMERAL (hl_BIT1 hl_zero)) (1) (((hl_UNIV_compat) (1) one_nonempty) (fun hl__u hl__v => hl_dimindex 1 (hl_UNIV 1) = dimindex 1) ((hl_dimindex_compat) (1) one_nonempty (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty))) (eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0))))) H__top))).
Qed.
Theorem DIMINDEX_1 : 1 = 1.
exact (DIMINDEX_1_bridge hlt_DIMINDEX_1).
Admitted.

// HOL Light: cart.ml:54 / finite_image_tybij   (hash md5:f0d14a9c0235c438b189e2ac2ee50929)
// not bridged: 
Theorem finite_image_tybij : forall A:set, A <> Empty -> (forall a :e idx A, a = a) /\ forall r :e omega, r :e idx A <-> r = r.
Admitted.

// HOL Light: cart.ml:60 / FINITE_IMAGE_IMAGE   (hash md5:2f5c954f5fc2c6948e501c8f48cea905)
// not bridged: 
Theorem FINITE_IMAGE_IMAGE : forall A:set, idx A = idx A.
Admitted.

// HOL Light: cart.ml:69 / HAS_SIZE_FINITE_IMAGE   (hash md5:bd453ada18d19f4873e5fb3bed116dd0)
// not bridged: 
Theorem HAS_SIZE_FINITE_IMAGE : forall A:set, A <> Empty -> equip (idx A) (dimindex A).
Admitted.

// HOL Light: cart.ml:76 / CARD_FINITE_IMAGE   (hash md5:0c37ef1b1f81cc58e7a9bd6194e8dc16)
// not bridged: 
Theorem CARD_FINITE_IMAGE : forall A:set, A <> Empty -> finite_cardinality (idx A) = dimindex A.
Admitted.

// HOL Light: cart.ml:80 / FINITE_FINITE_IMAGE   (hash md5:1dc7a67c001b36009e2f22ba859fec70)
// not bridged: 
Theorem FINITE_FINITE_IMAGE : forall A:set, A <> Empty -> finite (idx A).
Admitted.

// HOL Light: cart.ml:84 / DIMINDEX_FINITE_IMAGE   (hash md5:4b22e9f54781a67df9b807fb7e70c2da)
// not bridged: 
Theorem DIMINDEX_FINITE_IMAGE : forall A:set, A <> Empty -> dimindex (idx A) = dimindex A.
Admitted.

// HOL Light: cart.ml:90 / FINITE_INDEX_WORKS   (hash md5:810a83eb9dfb8d6360f6ae65701e1d0a)
// not bridged: 
Theorem FINITE_INDEX_WORKS : forall A:set, A <> Empty -> forall i :e idx A, exists n :e omega, 1 <= n /\ (n <= dimindex A /\ n = i) /\ forall y :e omega, 1 <= y /\ (y <= dimindex A /\ y = i) -> y = n.
Admitted.

// HOL Light: cart.ml:95 / FINITE_INDEX_INJ   (hash md5:ed3f2b168a80aa1187743fa433a8d6e6)
// not bridged: 
Theorem FINITE_INDEX_INJ : forall A:set, A <> Empty -> forall i j :e omega, 1 <= i /\ (i <= dimindex A /\ (1 <= j /\ j <= dimindex A)) -> (i = j <-> i = j).
Admitted.

// HOL Light: cart.ml:102 / FORALL_FINITE_INDEX   (hash md5:43ac0aa393472f102dd0f56823d962d3)
// not bridged: 
Theorem FORALL_FINITE_INDEX : forall N:set, N <> Empty -> forall P:set -> prop, (forall k :e idx N, P k) <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> P i.
Admitted.

// HOL Light: cart.ml:111 / cart_tybij   (hash md5:131fcfadc4569b53594fb6d3afe4208b)
// not bridged: 
Theorem cart_tybij : forall A B:set, (forall a :e A :^: idx B, a = a) /\ forall r :e A :^: idx B, True <-> r = r.
Admitted.

// HOL Light: cart.ml:117 / finite_index   (hash md5:9217c3b619651f33cf632eea33df50fd)
// not bridged: 
Theorem finite_index : forall A N:set, forall x :e A :^: idx N, forall i :e omega, x i = x i.
Admitted.

// HOL Light: cart.ml:120 / CART_EQ   (hash md5:12d2a2739958dbd8cafb139a4bfa94c3)
// not bridged: 
Theorem CART_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall x y :e A :^: idx B, x = y <-> forall i :e omega, 1 <= i /\ i <= dimindex B -> x i = y i.
Admitted.

// HOL Light: cart.ml:128 / lambda   (hash md5:889ac2dbf8ca12a13a4d66fd3cda1b19)
// not bridged: 
Theorem lambda : forall A B:set, A <> Empty -> B <> Empty -> forall g:set -> set, (forall x :e omega, g x :e A) -> (fun i :e idx B => g i) = choose_in (A :^: idx B) (fun f:set => forall i :e omega, 1 <= i /\ i <= dimindex B -> f i = g i).
Admitted.

// HOL Light: cart.ml:132 / LAMBDA_BETA   (hash md5:a1b73e7882037b5a6a9034c65eb72d73)
// not bridged: 
Theorem LAMBDA_BETA : forall A B:set, A <> Empty -> B <> Empty -> forall g:set -> set, (forall x :e omega, g x :e A) -> forall i :e omega, 1 <= i /\ i <= dimindex B -> (fun i :e idx B => g i) i = g i.
Admitted.

// HOL Light: cart.ml:143 / LAMBDA_UNIQUE   (hash md5:98f52daf731bf32f6aa2183889e678e4)
// not bridged: 
Theorem LAMBDA_UNIQUE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: idx B, forall g:set -> set, (forall x :e omega, g x :e A) -> ((forall i :e omega, 1 <= i /\ i <= dimindex B -> f i = g i) <-> (fun i :e idx B => g i) = f).
Admitted.

// HOL Light: cart.ml:149 / LAMBDA_ETA   (hash md5:bf7a9034dc52575b2f124f169fb89276)
// not bridged: 
Theorem LAMBDA_ETA : forall A B:set, A <> Empty -> B <> Empty -> forall g :e A :^: idx B, (fun i :e idx B => g i) = g.
Admitted.

// HOL Light: cart.ml:157 / FINITE_INDEX_INRANGE   (hash md5:e4e13395427e83a1f49cafbe2f46d467)
// not bridged: 
Theorem FINITE_INDEX_INRANGE : forall A N:set, A <> Empty -> N <> Empty -> forall i :e omega, exists k :e omega, 1 <= k /\ (k <= dimindex N /\ forall x :e A :^: idx N, x i = x k).
Admitted.

// HOL Light: cart.ml:161 / FINITE_INDEX_INRANGE_2   (hash md5:36e035204485169198b7e98d40aec6bc)
// not bridged: 
Theorem FINITE_INDEX_INRANGE_2 : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall i :e omega, exists k :e omega, 1 <= k /\ (k <= dimindex N /\ ((forall x :e A :^: idx N, x i = x k) /\ forall y :e B :^: idx N, y i = y k)).
Admitted.

// HOL Light: cart.ml:166 / CART_EQ_FULL   (hash md5:955cf716b47b18c6a131edcb1725c1c6)
// not bridged: 
Theorem CART_EQ_FULL : forall A N:set, A <> Empty -> N <> Empty -> forall x y :e A :^: idx N, x = y <-> forall i :e omega, x i = y i.
Admitted.

// HOL Light: cart.ml:174 / finite_sum_tybij   (hash md5:6c76cb57384adacc9d787a28f7988e48)
// not bridged: 
Theorem finite_sum_tybij : forall A B:set, A <> Empty -> B <> Empty -> (forall a :e idx_n (dimindex A + dimindex B), a = a) /\ forall r :e omega, r :e idx_n (dimindex A + dimindex B) <-> r = r.
Admitted.

// HOL Light: cart.ml:181 / pastecart   (hash md5:970d4141355f6d6f39b68b7eb74facb6)
// not bridged: 
Theorem pastecart_thm : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e A :^: idx M, forall g :e A :^: idx N, pastecart M N f g = fun i :e idx_n (dimindex M + dimindex N) => if i <= dimindex M then f i else g (minus_nat i (dimindex M)).
Admitted.

// HOL Light: cart.ml:186 / fstcart   (hash md5:076ed5c08efac66eaf24e72ed8087ff0)
// not bridged: 
Theorem fstcart_thm : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e A :^: idx_n (dimindex M + dimindex N), fstcart M f = fun i :e idx M => f i.
Admitted.

// HOL Light: cart.ml:189 / sndcart   (hash md5:442acce9e11ba375a5854f0ad07e5d3d)
// not bridged: 
Theorem sndcart_thm : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f :e A :^: idx_n (dimindex M + dimindex N), sndcart M N f = fun i :e idx N => f (i + dimindex M).
Admitted.

// HOL Light: cart.ml:193 / FINITE_SUM_IMAGE   (hash md5:e0d0c0b3edf6d1958b0df8612704ce3f)
// not bridged: 
Theorem FINITE_SUM_IMAGE : forall A B:set, idx_n (dimindex A + dimindex B) = idx_n (dimindex A + dimindex B).
Admitted.

// HOL Light: cart.ml:199 / DIMINDEX_HAS_SIZE_FINITE_SUM   (hash md5:bf62af096e5852240b46a2bcac0c7182)
// not bridged: 
Theorem DIMINDEX_HAS_SIZE_FINITE_SUM : forall M N:set, M <> Empty -> N <> Empty -> equip (idx_n (dimindex M + dimindex N)) (dimindex M + dimindex N).
Admitted.

// HOL Light: cart.ml:206 / DIMINDEX_FINITE_SUM   (hash md5:9c92b496f688797b7d7b3bea395b3a9d)
// not bridged: 
Theorem DIMINDEX_FINITE_SUM : forall M N:set, dimindex M + dimindex N = dimindex M + dimindex N.
Admitted.

// HOL Light: cart.ml:211 / FSTCART_PASTECART   (hash md5:b2889d73733e2663083534f610fe26ec)
// not bridged: 
Theorem FSTCART_PASTECART : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e A :^: idx M, forall y :e A :^: idx N, fstcart M (pastecart M N x y) = x.
Admitted.

// HOL Light: cart.ml:216 / SNDCART_PASTECART   (hash md5:5b9d48344251d0303100de806e31cd7c)
// not bridged: 
Theorem SNDCART_PASTECART : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e A :^: idx M, forall y :e A :^: idx N, sndcart M N (pastecart M N x y) = y.
Admitted.

// HOL Light: cart.ml:227 / PASTECART_FST_SND   (hash md5:cd1c341f949d2e3cc3661e480bad612d)
// not bridged: 
Theorem PASTECART_FST_SND : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall z :e A :^: idx_n (dimindex M + dimindex N), pastecart M N (fstcart M z) (sndcart M N z) = z.
Admitted.

// HOL Light: cart.ml:236 / PASTECART_EQ   (hash md5:4acc7a40e97f7ac44ece1a7ded40cc5e)
// not bridged: 
Theorem PASTECART_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x y :e A :^: idx_n (dimindex M + dimindex N), x = y <-> fstcart M x = fstcart M y /\ sndcart M N x = sndcart M N y.
Admitted.

// HOL Light: cart.ml:241 / FORALL_PASTECART   (hash md5:24bf22d217fff4040bd926669c496c75)
// not bridged: 
Theorem FORALL_PASTECART : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall P:set -> prop, (forall p :e A :^: idx_n (dimindex M + dimindex N), P p) <-> forall x :e A :^: idx M, forall y :e A :^: idx N, P (pastecart M N x y).
Admitted.

// HOL Light: cart.ml:245 / EXISTS_PASTECART   (hash md5:a53a9dbdade76ad7d49219b1a7ed0865)
// not bridged: 
Theorem EXISTS_PASTECART : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall P:set -> prop, (exists p :e A :^: idx_n (dimindex M + dimindex N), P p) <-> exists x :e A :^: idx M, exists y :e A :^: idx N, P (pastecart M N x y).
Admitted.

// HOL Light: cart.ml:249 / PASTECART_INJ   (hash md5:870f4c2845b9ddb14f21953c1d4ea97e)
// not bridged: 
Theorem PASTECART_INJ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e A :^: idx M, forall y :e A :^: idx N, forall w :e A :^: idx M, forall z :e A :^: idx N, pastecart M N x y = pastecart M N w z <-> x = w /\ y = z.
Admitted.

// HOL Light: cart.ml:253 / FSTCART_COMPONENT   (hash md5:254b42d30d51ff285f5b66d3f841e710)
// not bridged: 
Theorem FSTCART_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e A :^: idx_n (dimindex M + dimindex N), forall i :e omega, 1 <= i /\ i <= dimindex M -> fstcart M x i = x i.
Admitted.

// HOL Light: cart.ml:258 / SNDCART_COMPONENT   (hash md5:2b6160de571744152be36a7b149e5233)
// not bridged: 
Theorem SNDCART_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e A :^: idx_n (dimindex M + dimindex N), forall i :e omega, 1 <= i /\ i <= dimindex N -> sndcart M N x i = x (i + dimindex M).
Admitted.

// HOL Light: cart.ml:263 / PASTECART_COMPONENT   (hash md5:3f9168ec3097f0cde3fbc786aea3cc91)
// not bridged: 
Theorem PASTECART_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall u :e A :^: idx M, forall v :e A :^: idx N, forall i :e omega, 1 <= i /\ i <= dimindex M -> pastecart M N u v i = u i) /\ forall u :e A :^: idx M, forall v :e A :^: idx N, forall i :e omega, dimindex M + 1 <= i /\ i <= dimindex M + dimindex N -> pastecart M N u v i = v (minus_nat i (dimindex M)).
Admitted.

// HOL Light: cart.ml:279 / finite_diff_tybij   (hash md5:f4fb2b8e55ab73d15217e1479128f438)
// not bridged: 
Theorem finite_diff_tybij : forall A B:set, A <> Empty -> B <> Empty -> (forall a :e idx_n (if dimindex B < dimindex A then minus_nat (dimindex A) (dimindex B) else 1), a = a) /\ forall r :e omega, r :e idx_n (if dimindex B < dimindex A then minus_nat (dimindex A) (dimindex B) else 1) <-> r = r.
Admitted.

// HOL Light: cart.ml:286 / FINITE_DIFF_IMAGE   (hash md5:d51e953337acbc3ea1493f1b4055c668)
// not bridged: 
Theorem FINITE_DIFF_IMAGE : forall A B:set, idx_n (if dimindex B < dimindex A then minus_nat (dimindex A) (dimindex B) else 1) = idx_n (if dimindex B < dimindex A then minus_nat (dimindex A) (dimindex B) else 1).
Admitted.

// HOL Light: cart.ml:294 / DIMINDEX_HAS_SIZE_FINITE_DIFF   (hash md5:6d6170cc672bc6cae12e288b5cec6547)
// not bridged: 
Theorem DIMINDEX_HAS_SIZE_FINITE_DIFF : forall M N:set, M <> Empty -> N <> Empty -> equip (idx_n (if dimindex N < dimindex M then minus_nat (dimindex M) (dimindex N) else 1)) (if dimindex N < dimindex M then minus_nat (dimindex M) (dimindex N) else 1).
Admitted.

// HOL Light: cart.ml:302 / DIMINDEX_FINITE_DIFF   (hash md5:28a5bc47fc80defeda10fe4b95c2cb9d)
// not bridged: 
Theorem DIMINDEX_FINITE_DIFF : forall M N:set, M <> Empty -> N <> Empty -> dimindex (idx_n (if dimindex N < dimindex M then minus_nat (dimindex M) (dimindex N) else 1)) = if dimindex N < dimindex M then minus_nat (dimindex M) (dimindex N) else 1.
Admitted.

// HOL Light: cart.ml:312 / finite_prod_tybij   (hash md5:37559532491c95f065282e2b4bfd9bc7)
// not bridged: 
Theorem finite_prod_tybij : forall A B:set, A <> Empty -> B <> Empty -> (forall a :e idx_n (dimindex A * dimindex B), a = a) /\ forall r :e omega, r :e idx_n (dimindex A * dimindex B) <-> r = r.
Admitted.

// HOL Light: cart.ml:319 / FINITE_PROD_IMAGE   (hash md5:a5ee3cdead3b443082a051624eb564f2)
// not bridged: 
Theorem FINITE_PROD_IMAGE : forall A B:set, idx_n (dimindex A * dimindex B) = idx_n (dimindex A * dimindex B).
Admitted.

// HOL Light: cart.ml:325 / DIMINDEX_HAS_SIZE_FINITE_PROD   (hash md5:90b3f294442e548ae34f01c37b5d1098)
// not bridged: 
Theorem DIMINDEX_HAS_SIZE_FINITE_PROD : forall M N:set, M <> Empty -> N <> Empty -> equip (idx_n (dimindex M * dimindex N)) (dimindex M * dimindex N).
Admitted.

// HOL Light: cart.ml:332 / DIMINDEX_FINITE_PROD   (hash md5:1149f086d1eb0f908226b89aaa56b44b)
// not bridged: 
Theorem DIMINDEX_FINITE_PROD : forall M N:set, dimindex M * dimindex N = dimindex M * dimindex N.
Admitted.

// HOL Light: cart.ml:389 / FINITE_1   (hash md5:90a6cd0195246fd82f4fbaf42c36e52d)
Theorem hlt_FINITE_1 : hl_FINITE 1 (hl_UNIV 1) = 1.
Admitted.
Theorem FINITE_1_bridge : (hl_FINITE 1 (hl_UNIV 1) = 1) -> (finite 1).
exact (fun H__top => ((iffEL (hl_FINITE 1 (hl_UNIV 1) = 1) (finite 1) (((hl_UNIV_compat) (1) one_nonempty) (fun hl__u hl__v => hl_FINITE 1 (hl_UNIV 1) = 1 <-> finite hl__u) ((hl_FINITE_compat) (1) one_nonempty (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty)))) H__top)).
Qed.
Theorem FINITE_1 : finite 1.
exact (FINITE_1_bridge hlt_FINITE_1).
Admitted.

// HOL Light: cart.ml:483 / FINITE_CART   (hash md5:a0034d785932cd5307e955f10e16d620)
// not bridged: 
Theorem FINITE_CART : forall A N:set, A <> Empty -> N <> Empty -> forall P:set -> set -> prop, (forall i :e omega, 1 <= i /\ i <= dimindex N -> finite {x :e A | P i x}) -> finite {v :e A :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> P i (v i)}.
Admitted.

// HOL Light: cart.ml:528 / HAS_SIZE_CART_UNIV   (hash md5:b0b81bcc0d6110939002f2411bd9551c)
// not bridged: 
Theorem HAS_SIZE_CART_UNIV : forall A N:set, A <> Empty -> N <> Empty -> forall m :e omega, equip A m -> equip (A :^: idx N) (m ^ dimindex N).
Admitted.

// HOL Light: cart.ml:542 / CARD_CART_UNIV   (hash md5:0f9dcb75b599efb0c1ce51ea2172f442)
// not bridged: 
Theorem CARD_CART_UNIV : forall A N:set, A <> Empty -> N <> Empty -> finite A -> finite_cardinality (A :^: idx N) = finite_cardinality A ^ dimindex N.
Admitted.

// HOL Light: cart.ml:546 / FINITE_CART_UNIV   (hash md5:dcf8ffbb9fadf298b171451ec20ea6dc)
// not bridged: 
Theorem FINITE_CART_UNIV : forall A N:set, A <> Empty -> N <> Empty -> finite A -> finite (A :^: idx N).
Admitted.

// HOL Light: cart.ml:554 / vector   (hash md5:56827346d192eb3c809c21ecac00effb)
// not bridged: 
Theorem vector_thm : forall A N:set, A <> Empty -> N <> Empty -> forall l :e finseq A, vector A N l = fun i :e idx N => seq_nth l (minus_nat i 1).
Admitted.

// HOL Light: cart.ml:561 / IN_ELIM_PASTECART_THM   (hash md5:2ad6de4e0f69d9906298f4dbf228d6e8)
// not bridged: 
Theorem IN_ELIM_PASTECART_THM : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall P:set -> set -> prop, forall a :e A :^: idx M, forall b :e A :^: idx N, pastecart M N a b :e (\/_ x :e A :^: idx M, {pastecart M N x y | y :e A :^: idx N, P x y}) <-> P a b.
Admitted.

// HOL Light: cart.ml:573 / PCROSS   (hash md5:4c3ed6c9a2b5bd49814870b71a43923b)
// not bridged: 
Theorem PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t}) = \/_ x :e A :^: idx M, {pastecart M N x y | y :e A :^: idx N, x :e s /\ y :e t}.
Admitted.

// HOL Light: cart.ml:576 / FORALL_IN_PCROSS   (hash md5:5f6f894c5b71d64c9d7a1f98b79c6e60)
// not bridged: 
Theorem FORALL_IN_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, forall P:set -> prop, (forall z :e A :^: idx_n (dimindex M + dimindex N), z :e (\/_ x :e s, {pastecart M N x y | y :e t}) -> P z) <-> forall x :e A :^: idx M, forall y :e A :^: idx N, x :e s /\ y :e t -> P (pastecart M N x y).
Admitted.

// HOL Light: cart.ml:581 / EXISTS_IN_PCROSS   (hash md5:b9d75a090fc50040b27d19413f0c2df8)
// not bridged: 
Theorem EXISTS_IN_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, forall P:set -> prop, (exists z :e A :^: idx_n (dimindex M + dimindex N), z :e (\/_ x :e s, {pastecart M N x y | y :e t}) /\ P z) <-> exists x :e A :^: idx M, exists y :e A :^: idx N, x :e s /\ (y :e t /\ P (pastecart M N x y)).
Admitted.

// HOL Light: cart.ml:586 / PASTECART_IN_PCROSS   (hash md5:5519d9a3f604fa1e01459dcf9f17cbb7)
// not bridged: 
Theorem PASTECART_IN_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, forall x :e A :^: idx M, forall y :e A :^: idx N, pastecart M N x y :e (\/_ x :e s, {pastecart M N x y | y :e t}) <-> x :e s /\ y :e t.
Admitted.

// HOL Light: cart.ml:590 / PCROSS_EQ_EMPTY   (hash md5:aec27866ecd08507b739be96df61dc0e)
// not bridged: 
Theorem PCROSS_EQ_EMPTY : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t}) = Empty <-> s = Empty \/ t = Empty.
Admitted.

// HOL Light: cart.ml:594 / PCROSS_EMPTY   (hash md5:9ac51b926d6b0e134aa418d49e786547)
// not bridged: 
Theorem PCROSS_EMPTY : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s c= A :^: idx M, (\/_ x :e s, {pastecart M N x y | y :e Empty}) = Empty) /\ forall t c= A :^: idx N, (\/_ x :e Empty, {pastecart M N x y | y :e t}) = Empty.
Admitted.

// HOL Light: cart.ml:599 / PCROSS_SING   (hash md5:5a48e2461c22736e0c34cb481388dda6)
// not bridged: 
Theorem PCROSS_SING : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall x :e A :^: idx M, forall y :e A :^: idx N, (\/_ x0 :e {x}, {pastecart M N x0 y0 | y0 :e {y}}) = {pastecart M N x y}.
Admitted.

// HOL Light: cart.ml:604 / SUBSET_PCROSS   (hash md5:7076fe873cf40994e6b8cf4f6e8fc324)
// not bridged: 
Theorem SUBSET_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, forall s' c= A :^: idx M, forall t' c= A :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t}) c= (\/_ x :e s', {pastecart M N x y | y :e t'}) <-> s = Empty \/ (t = Empty \/ s c= s' /\ t c= t').
Admitted.

// HOL Light: cart.ml:611 / PCROSS_MONO   (hash md5:26edf076c18f053a8eb2e451ae39276c)
// not bridged: 
Theorem PCROSS_MONO : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, forall s' c= A :^: idx M, forall t' c= A :^: idx N, s c= s' /\ t c= t' -> (\/_ x :e s, {pastecart M N x y | y :e t}) c= \/_ x :e s', {pastecart M N x y | y :e t'}.
Admitted.

// HOL Light: cart.ml:616 / PCROSS_EQ   (hash md5:d8f76283edf69a808cce56f4dfd78496)
// not bridged: 
Theorem PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s s' c= R :^: idx M, forall t t' c= R :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t}) = (\/_ x :e s', {pastecart M N x y | y :e t'}) <-> (s = Empty \/ t = Empty) /\ (s' = Empty \/ t' = Empty) \/ s = s' /\ t = t'.
Admitted.

// HOL Light: cart.ml:622 / UNIV_PCROSS_UNIV   (hash md5:3441e60d806d8492ac377d9acc2edc65)
// not bridged: 
Theorem UNIV_PCROSS_UNIV : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (\/_ x :e A :^: idx M, {pastecart M N x y | y :e A :^: idx N}) = A :^: idx_n (dimindex M + dimindex N).
Admitted.

// HOL Light: cart.ml:626 / HAS_SIZE_PCROSS   (hash md5:bbbbede771da97bffddfd538aeb72bab)
// not bridged: 
Theorem HAS_SIZE_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, forall m n :e omega, equip s m /\ equip t n -> equip (\/_ x :e s, {pastecart M N x y | y :e t}) (m * n).
Admitted.

// HOL Light: cart.ml:639 / FINITE_PCROSS   (hash md5:6330f1a0852138ff0ef9250236a93770)
// not bridged: 
Theorem FINITE_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, finite s /\ finite t -> finite (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: cart.ml:644 / FINITE_PCROSS_EQ   (hash md5:5e0e0f2a85a22b1a0a2c43839d5d2131)
// not bridged: 
Theorem FINITE_PCROSS_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, finite (\/_ x :e s, {pastecart M N x y | y :e t}) <-> s = Empty \/ (t = Empty \/ finite s /\ finite t).
Admitted.

// HOL Light: cart.ml:658 / IMAGE_FSTCART_PCROSS   (hash md5:b8867ec4ed95b15bde225c8621a0df81)
// not bridged: 
Theorem IMAGE_FSTCART_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, {fstcart M x | x :e \/_ x :e s, {pastecart M N x y | y :e t}} = if t = Empty then Empty else s.
Admitted.

// HOL Light: cart.ml:666 / IMAGE_SNDCART_PCROSS   (hash md5:8e879e01f0910ec0ad0c9e36ec8a72bf)
// not bridged: 
Theorem IMAGE_SNDCART_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, {sndcart M N x | x :e \/_ x :e s, {pastecart M N x y | y :e t}} = if s = Empty then Empty else t.
Admitted.

// HOL Light: cart.ml:674 / PCROSS_INTER   (hash md5:e18b66815ca8b5d95550d6d271cc2e0e)
// not bridged: 
Theorem PCROSS_INTER : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s c= A :^: idx M, forall t u c= A :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t :/\: u}) = (\/_ x :e s, {pastecart M N x y | y :e t}) :/\: \/_ x :e s, {pastecart M N x y | y :e u}) /\ forall s t c= A :^: idx M, forall u c= A :^: idx N, (\/_ x :e s :/\: t, {pastecart M N x y | y :e u}) = (\/_ x :e s, {pastecart M N x y | y :e u}) :/\: \/_ x :e t, {pastecart M N x y | y :e u}.
Admitted.

// HOL Light: cart.ml:682 / PCROSS_UNION   (hash md5:66504b072fc4aef85c50f35c8cfebe7c)
// not bridged: 
Theorem PCROSS_UNION : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s c= A :^: idx M, forall t u c= A :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t :\/: u}) = (\/_ x :e s, {pastecart M N x y | y :e t}) :\/: \/_ x :e s, {pastecart M N x y | y :e u}) /\ forall s t c= A :^: idx M, forall u c= A :^: idx N, (\/_ x :e s :\/: t, {pastecart M N x y | y :e u}) = (\/_ x :e s, {pastecart M N x y | y :e u}) :\/: \/_ x :e t, {pastecart M N x y | y :e u}.
Admitted.

// HOL Light: cart.ml:690 / PCROSS_DIFF   (hash md5:0d8964837a044408993a3f0bfcea3da8)
// not bridged: 
Theorem PCROSS_DIFF : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s c= A :^: idx M, forall t u c= A :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t :\: u}) = (\/_ x :e s, {pastecart M N x y | y :e t}) :\: \/_ x :e s, {pastecart M N x y | y :e u}) /\ forall s t c= A :^: idx M, forall u c= A :^: idx N, (\/_ x :e s :\: t, {pastecart M N x y | y :e u}) = (\/_ x :e s, {pastecart M N x y | y :e u}) :\: \/_ x :e t, {pastecart M N x y | y :e u}.
Admitted.

// HOL Light: cart.ml:698 / INTER_PCROSS   (hash md5:006b27b152528c9897c1c1f338f459a2)
// not bridged: 
Theorem INTER_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s s' c= A :^: idx M, forall t t' c= A :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t}) :/\: (\/_ x :e s', {pastecart M N x y | y :e t'}) = \/_ x :e s :/\: s', {pastecart M N x y | y :e t :/\: t'}.
Admitted.

// HOL Light: cart.ml:704 / PCROSS_UNIONS   (hash md5:e38b6d6d9f0494aca5fa5f91befcde0d)
// not bridged: 
Theorem PCROSS_UNIONS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s c= A :^: idx M, forall f c= Power (A :^: idx N), (\/_ x :e s, {pastecart M N x y | y :e Union f}) = Union {(\/_ x :e s, {pastecart M N x y | y :e t}) | t :e Power (A :^: idx N), t :e f}) /\ forall f c= Power (A :^: idx M), forall t c= A :^: idx N, (\/_ x :e Union f, {pastecart M N x y | y :e t}) = Union {(\/_ x :e s, {pastecart M N x y | y :e t}) | s :e Power (A :^: idx M), s :e f}.
Admitted.

// HOL Light: cart.ml:704 / PCROSS_UNIONS_UNIONS   (hash md5:cd0df146256ca98fd8332f1daf3a41c2)
// not bridged: 
Theorem PCROSS_UNIONS_UNIONS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f c= Power (A :^: idx M), forall g c= Power (A :^: idx N), (\/_ x :e Union f, {pastecart M N x y | y :e Union g}) = Union (\/_ s :e Power (A :^: idx M), {(\/_ x :e s, {pastecart M N x y | y :e t}) | t :e Power (A :^: idx N), s :e f /\ t :e g}).
Admitted.

// HOL Light: cart.ml:715 / PCROSS_INTERS   (hash md5:51d0542065fcefba881368f887d66280)
// not bridged: 
Theorem PCROSS_INTERS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> (forall s c= A :^: idx M, forall f c= Power (A :^: idx N), (\/_ x :e s, {pastecart M N x y | y :e {x :e A :^: idx N | forall Y :e f, x :e Y}}) = if f = Empty then \/_ x :e s, {pastecart M N x y | y :e A :^: idx N} else {x :e A :^: idx_n (dimindex M + dimindex N) | forall Y :e {(\/_ x :e s, {pastecart M N x y | y :e t}) | t :e Power (A :^: idx N), t :e f}, x :e Y}) /\ forall f c= Power (A :^: idx M), forall t c= A :^: idx N, (\/_ x :e {x :e A :^: idx M | forall Y :e f, x :e Y}, {pastecart M N x y | y :e t}) = if f = Empty then \/_ x :e A :^: idx M, {pastecart M N x y | y :e t} else {x :e A :^: idx_n (dimindex M + dimindex N) | forall Y :e {(\/_ x :e s, {pastecart M N x y | y :e t}) | s :e Power (A :^: idx M), s :e f}, x :e Y}.
Admitted.

// HOL Light: cart.ml:715 / PCROSS_INTERS_INTERS   (hash md5:26bb2ccb6eb42f3a862c424eb0825e69)
// not bridged: 
Theorem PCROSS_INTERS_INTERS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f c= Power (A :^: idx M), forall g c= Power (A :^: idx N), (\/_ x :e {x :e A :^: idx M | forall Y :e f, x :e Y}, {pastecart M N x y | y :e {x :e A :^: idx N | forall Y :e g, x :e Y}}) = if f = Empty then {x :e A :^: idx_n (dimindex M + dimindex N) | forall Y :e {(\/_ x :e A :^: idx M, {pastecart M N x y | y :e t}) | t :e Power (A :^: idx N), t :e g}, x :e Y} else if g = Empty then {x :e A :^: idx_n (dimindex M + dimindex N) | forall Y :e {(\/_ x :e s, {pastecart M N x y | y :e A :^: idx N}) | s :e Power (A :^: idx M), s :e f}, x :e Y} else {x :e A :^: idx_n (dimindex M + dimindex N) | forall Y :e (\/_ s :e Power (A :^: idx M), {(\/_ x :e s, {pastecart M N x y | y :e t}) | t :e Power (A :^: idx N), s :e f /\ t :e g}), x :e Y}.
Admitted.

// HOL Light: cart.ml:729 / DISJOINT_PCROSS   (hash md5:99147df9e75446aca97f8965affc61d9)
// not bridged: 
Theorem DISJOINT_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s c= A :^: idx M, forall t c= A :^: idx N, forall s' c= A :^: idx M, forall t' c= A :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t}) :/\: (\/_ x :e s', {pastecart M N x y | y :e t'}) = Empty <-> s :/\: s' = Empty \/ t :/\: t' = Empty.
Admitted.

