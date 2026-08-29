// hol2mg literal statements (private): shard cart of profile core.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: cart.ml:14 / dimindex   (hash md5:ddb3842890aa45dff1fd71f34edb013d)
Theorem hlt_dimindex_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_dimindex A s = hl_COND omega (hl_FINITE A (hl_UNIV A)) (hl_CARD A (hl_UNIV A)) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: cart.ml:17 / DIMINDEX_NONZERO   (hash md5:d3725a45e0820e3b712217990615246b)
Theorem hlt_DIMINDEX_NONZERO : forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ hl_dimindex A s = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: cart.ml:22 / DIMINDEX_GE_1   (hash md5:6330d948a4ade390789c61f4944f6861)
Theorem hlt_DIMINDEX_GE_1 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A s) = 1.
Admitted.

// HOL Light: cart.ml:26 / DIMINDEX_UNIV   (hash md5:6d36efb94145933ec1aa58b078c73e98)
Theorem hlt_DIMINDEX_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_dimindex A s = hl_dimindex A (hl_UNIV A).
Admitted.

// HOL Light: cart.ml:30 / DIMINDEX_UNIQUE   (hash md5:88a36c49579122ac8804e8363815cddd)
Theorem hlt_DIMINDEX_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, hl_HAS_SIZE A (hl_UNIV A) n = 1 -> hl_dimindex A (hl_UNIV A) = n.
Admitted.

// HOL Light: cart.ml:34 / UNIV_HAS_SIZE_DIMINDEX   (hash md5:23dd1460f611c1c44082919eb9c4ba65)
Theorem hlt_UNIV_HAS_SIZE_DIMINDEX : forall N:set, N <> Empty -> (hl_HAS_SIZE N (hl_UNIV N) (hl_dimindex N (hl_UNIV N)) = 1 <-> hl_FINITE N (hl_UNIV N) = 1).
Admitted.

// HOL Light: cart.ml:38 / HAS_SIZE_1   (hash md5:3db80a1713101542583ad1c917c7c9ae)
Theorem hlt_HAS_SIZE_1 : hl_HAS_SIZE 1 (hl_UNIV 1) (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.

// HOL Light: cart.ml:44 / NUMSEG_LT_DIMINDEX   (hash md5:ab5eb52dade02e50e59e1fda3e75b94a)
Theorem hlt_NUMSEG_LT_DIMINDEX : forall N:set, N <> Empty -> hl_GSPEC omega (fun GEN_PVAR_354 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_354 (hl_lt i (hl_dimindex N (hl_UNIV N))) i = 1 then 1 else 0) = hl_numseg (hl_NUMERAL hl_zero) (hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: cart.ml:48 / DIMINDEX_1   (hash md5:49a9d44c0dac1fb1c010affe48096fff)
Theorem hlt_DIMINDEX_1 : hl_dimindex 1 (hl_UNIV 1) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: cart.ml:389 / FINITE_1   (hash md5:90a6cd0195246fd82f4fbaf42c36e52d)
Theorem hlt_FINITE_1 : hl_FINITE 1 (hl_UNIV 1) = 1.
Admitted.

