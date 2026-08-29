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
// not bridged: 
Theorem DIMINDEX_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, equip A n -> dimindex A = n.
Admitted.

// HOL Light: cart.ml:34 / UNIV_HAS_SIZE_DIMINDEX   (hash md5:23dd1460f611c1c44082919eb9c4ba65)
// not bridged: 
Theorem UNIV_HAS_SIZE_DIMINDEX : forall N:set, N <> Empty -> (equip N (dimindex N) <-> finite N).
Admitted.

// HOL Light: cart.ml:38 / HAS_SIZE_1   (hash md5:3db80a1713101542583ad1c917c7c9ae)
// not bridged: 
Theorem HAS_SIZE_1 : equip 1 1.
Admitted.

// HOL Light: cart.ml:44 / NUMSEG_LT_DIMINDEX   (hash md5:ab5eb52dade02e50e59e1fda3e75b94a)
// not bridged: 
Theorem NUMSEG_LT_DIMINDEX : forall N:set, N <> Empty -> {i :e omega | i < dimindex N} = {i :e omega | 0 <= i /\ i <= minus_nat (dimindex N) 1}.
Admitted.

// HOL Light: cart.ml:48 / DIMINDEX_1   (hash md5:49a9d44c0dac1fb1c010affe48096fff)
// not bridged: 
Theorem DIMINDEX_1 : 1 = 1.
Admitted.

// HOL Light: cart.ml:389 / FINITE_1   (hash md5:90a6cd0195246fd82f4fbaf42c36e52d)
Theorem hlt_FINITE_1 : hl_FINITE 1 (hl_UNIV 1) = 1.
Admitted.
Theorem FINITE_1_bridge : (hl_FINITE 1 (hl_UNIV 1) = 1) -> (finite 1).
exact (fun HL => (iffEL (hl_FINITE 1 (hl_UNIV 1) = 1) (finite 1) (((hl_UNIV_compat) (1) one_nonempty) (fun hl__u hl__v => hl_FINITE 1 (hl_UNIV 1) = 1 <-> finite hl__u) ((hl_FINITE_compat) (1) one_nonempty (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty)))) HL).
Qed.
Theorem FINITE_1 : finite 1.
exact (FINITE_1_bridge hlt_FINITE_1).
Admitted.

