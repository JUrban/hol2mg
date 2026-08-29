// hol2mg certification module (private): shard cart of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: cart.ml:14 / dimindex   (hash md5:ddb3842890aa45dff1fd71f34edb013d)
// not bridged: 
Theorem dimindex_thm : forall A:set, A <> Empty -> dimindex A = if finite A then finite_cardinality A else 1.
Admitted.

// HOL Light: cart.ml:17 / DIMINDEX_NONZERO   (hash md5:d3725a45e0820e3b712217990615246b)
// not bridged: 
Theorem DIMINDEX_NONZERO : forall A:set, A <> Empty -> ~ dimindex A = 0.
Admitted.

// HOL Light: cart.ml:22 / DIMINDEX_GE_1   (hash md5:6330d948a4ade390789c61f4944f6861)
// not bridged: 
Theorem DIMINDEX_GE_1 : forall A:set, A <> Empty -> 1 <= dimindex A.
Admitted.

// HOL Light: cart.ml:26 / DIMINDEX_UNIV   (hash md5:6d36efb94145933ec1aa58b078c73e98)
// not bridged: 
Theorem DIMINDEX_UNIV : forall A:set, dimindex A = dimindex A.
Admitted.

// HOL Light: cart.ml:30 / DIMINDEX_UNIQUE   (hash md5:88a36c49579122ac8804e8363815cddd)
Theorem hlt_DIMINDEX_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, hl_HAS_SIZE A (hl_UNIV A) n = 1 -> hl_dimindex A (hl_UNIV A) = n.
Admitted.
Theorem DIMINDEX_UNIQUE_bridge : (forall A:set, A <> Empty -> forall n :e omega, hl_HAS_SIZE A (hl_UNIV A) n = 1 -> hl_dimindex A (hl_UNIV A) = n) -> (forall A:set, A <> Empty -> forall n :e omega, equip A n -> dimindex A = n).
exact (fun H__top A HAne => (imp_forall_in (omega) (fun n => hl_HAS_SIZE A (hl_UNIV A) n = 1 -> hl_dimindex A (hl_UNIV A) = n) (fun n => equip A n -> dimindex A = n) (fun n Hn => (fun H__L : ((hl_HAS_SIZE A (hl_UNIV A) n = 1) -> (hl_dimindex A (hl_UNIV A) = n)) => fun H__hyp1 : (equip A n) => (imp_eq (hl_dimindex A (hl_UNIV A)) (dimindex A) (n) (n) (((hl_UNIV_compat) (A) HAne) (fun hl__u hl__v => hl_dimindex A (hl_UNIV A) = dimindex A) ((hl_dimindex_compat) (A) HAne (hl_UNIV A) ((hl_UNIV_in) (A) HAne))) (fun q H => H)) (H__L ((iffER (hl_HAS_SIZE A (hl_UNIV A) n = 1) (equip A n) (((hl_UNIV_compat) (A) HAne) (fun hl__u hl__v => hl_HAS_SIZE A (hl_UNIV A) n = 1 <-> equip hl__u n) ((hl_HAS_SIZE_compat) (A) HAne (hl_UNIV A) ((hl_UNIV_in) (A) HAne) (n) Hn))) H__hyp1))))) (H__top A HAne)).
Qed.
Theorem DIMINDEX_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, equip A n -> dimindex A = n.
exact (DIMINDEX_UNIQUE_bridge hlt_DIMINDEX_UNIQUE).
Admitted.

// HOL Light: cart.ml:34 / UNIV_HAS_SIZE_DIMINDEX   (hash md5:23dd1460f611c1c44082919eb9c4ba65)
Theorem hlt_UNIV_HAS_SIZE_DIMINDEX : forall N:set, N <> Empty -> (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> hl_FINITE N (hl_UNIV N) = 1).
Admitted.
Theorem UNIV_HAS_SIZE_DIMINDEX_bridge : (forall N:set, N <> Empty -> (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> hl_FINITE N (hl_UNIV N) = 1)) -> (forall N:set, N <> Empty -> (equip N (dimindex N) <-> finite N)).
exact (fun H__top N HNne => (imp_iff (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1) (equip N (dimindex N)) (hl_FINITE N (hl_UNIV N) = 1) (finite N) (iffEL (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1) (equip N (dimindex N)) ((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> equip N hl__u) (((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> equip hl__u (hl_dimindex N (hl_UNIV N))) ((hl_HAS_SIZE_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))))) (iffER (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1) (equip N (dimindex N)) ((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> equip N hl__u) (((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> equip hl__u (hl_dimindex N (hl_UNIV N))) ((hl_HAS_SIZE_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))))) (iffEL (hl_FINITE N (hl_UNIV N) = 1) (finite N) (((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_FINITE N (hl_UNIV N) = 1 <-> finite hl__u) ((hl_FINITE_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))) (iffER (hl_FINITE N (hl_UNIV N) = 1) (finite N) (((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_FINITE N (hl_UNIV N) = 1 <-> finite hl__u) ((hl_FINITE_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))))) (H__top N HNne)).
Qed.
Theorem UNIV_HAS_SIZE_DIMINDEX : forall N:set, N <> Empty -> (equip N (dimindex N) <-> finite N).
exact (UNIV_HAS_SIZE_DIMINDEX_bridge hlt_UNIV_HAS_SIZE_DIMINDEX).
Admitted.

// HOL Light: cart.ml:38 / HAS_SIZE_1   (hash md5:3db80a1713101542583ad1c917c7c9ae)
Theorem hlt_HAS_SIZE_1 : hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.
Theorem HAS_SIZE_1_bridge : (hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) -> (equip 1 1).
exact (fun H__top => (iffEL (hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (equip 1 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> equip 1 hl__u) (((hl_UNIV_compat) (1) one_nonempty) (fun hl__u hl__v => hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> equip hl__u (hl_NUMERAL (hl_BIT1 hl_zero))) ((hl_HAS_SIZE_compat) (1) one_nonempty (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) H__top).
Qed.
Theorem HAS_SIZE_1 : equip 1 1.
exact (HAS_SIZE_1_bridge hlt_HAS_SIZE_1).
Admitted.

// HOL Light: cart.ml:44 / NUMSEG_LT_DIMINDEX   (hash md5:ab5eb52dade02e50e59e1fda3e75b94a)
Theorem hlt_NUMSEG_LT_DIMINDEX : forall N:set, N <> Empty -> hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0) = hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.
Theorem NUMSEG_LT_DIMINDEX_bridge : (forall N:set, N <> Empty -> hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0) = hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) -> (forall N:set, N <> Empty -> {i :e omega | i < dimindex N} = {i :e omega | 0 <= i /\ i <= minus_nat (dimindex N) 1}).
exact (fun H__top N HNne => (rep_eq_fwd (omega) (hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0)) (hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) ({i :e omega | i < dimindex N}) ({i :e omega | 0 <= i /\ i <= minus_nat (dimindex N) 1}) (eq_trans_i (hl_rep (omega) (hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0))) ({v :e omega | exists i :e omega, hl_lt i (hl_dimindex N (hl_UNIV N)) = 1 /\ v = i}) ({i :e omega | i < dimindex N}) (hl_gspec_generic (omega) (omega) (fun i => hl_lt i (hl_dimindex N (hl_UNIV N))) (fun i => i) (fun i Hi => (setexp_ap (omega) (2) (hl_lt i) (setexp_ap (omega) (2 :^: omega) (hl_lt) ((hl_lt_in)) (i) Hi) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne))))) (eq_trans_i ({v :e omega | exists i :e omega, hl_lt i (hl_dimindex N (hl_UNIV N)) = 1 /\ v = i}) ({i :e omega | hl_lt i (hl_dimindex N (hl_UNIV N)) = 1}) ({i :e omega | i < dimindex N}) (gspec_sep_form (omega) (fun i => hl_lt i (hl_dimindex N (hl_UNIV N)))) (Sep_ext_iff (omega) (fun i => (hl_lt i (hl_dimindex N (hl_UNIV N))) = 1) (fun i => i < dimindex N) (fun i Hi => ((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_lt i (hl_dimindex N (hl_UNIV N)) = 1 <-> i < hl__u) ((hl_lt_compat) (i) Hi (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))))))) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) = minus_nat (dimindex N) hl__u) ((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) = minus_nat hl__u (hl_NUMERAL (hl_BIT1 hl_zero))) ((hl_sub_compat) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) = {i :e omega | 0 <= i /\ i <= hl__u}) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)))) = {i :e omega | hl__u <= i /\ i <= hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))}) ((hl_numseg_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_sub (hl_dimindex N (hl_UNIV N))) (setexp_ap (omega) (omega :^: omega) (hl_sub) ((hl_sub_in)) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) (H__top N HNne)).
Qed.
Theorem NUMSEG_LT_DIMINDEX : forall N:set, N <> Empty -> {i :e omega | i < dimindex N} = {i :e omega | 0 <= i /\ i <= minus_nat (dimindex N) 1}.
exact (NUMSEG_LT_DIMINDEX_bridge hlt_NUMSEG_LT_DIMINDEX).
Admitted.

// HOL Light: cart.ml:48 / DIMINDEX_1   (hash md5:49a9d44c0dac1fb1c010affe48096fff)
// not bridged: 
Theorem DIMINDEX_1 : 1 = 1.
Admitted.

// HOL Light: cart.ml:389 / FINITE_1   (hash md5:90a6cd0195246fd82f4fbaf42c36e52d)
Theorem hlt_FINITE_1 : hl_FINITE 1 (hl_UNIV 1) = 1.
Admitted.
Theorem FINITE_1_bridge : (hl_FINITE 1 (hl_UNIV 1) = 1) -> (finite 1).
exact (fun H__top => (iffEL (hl_FINITE 1 (hl_UNIV 1) = 1) (finite 1) (((hl_UNIV_compat) (1) one_nonempty) (fun hl__u hl__v => hl_FINITE 1 (hl_UNIV 1) = 1 <-> finite hl__u) ((hl_FINITE_compat) (1) one_nonempty (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty)))) H__top).
Qed.
Theorem FINITE_1 : finite 1.
exact (FINITE_1_bridge hlt_FINITE_1).
Admitted.

