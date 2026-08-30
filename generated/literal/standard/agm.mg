// hol2mg literal statements (private): shard agm of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/agm.ml:13 / FORALL_2   (hash md5:e5da14454c335a8fb57a62c90d3c7d19)
Theorem hlt_FORALL_2 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Library/agm.ml:17 / NUMSEG_2   (hash md5:2ded37b0bd315d9f4da010ccb9ef4b8d)
Theorem hlt_NUMSEG_2 : hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_INSERT omega (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_INSERT omega (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_EMPTY omega)).
Admitted.

// HOL Light: Library/agm.ml:21 / AGM_2   (hash md5:3d388f21cb669a28fc0b25a0a65d6491)
Theorem hlt_AGM_2 : forall x y :e R, hl_real_le (hl_real_mul x y) (hl_real_pow (hl_real_div (hl_real_add x y) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Library/agm.ml:26 / SUM_SPLIT_2   (hash md5:c0f5cc0bc49a6b1ea77f9b873c7af3a9)
Theorem hlt_SUM_SPLIT_2 : forall n :e omega, forall f :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) f = hl_real_add (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) f) (hl_sum omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) f).
Admitted.

// HOL Light: Library/agm.ml:30 / PRODUCT_SPLIT_2   (hash md5:97315ffea4ef8e2b68f8e17eb48bdbfa)
Theorem hlt_PRODUCT_SPLIT_2 : forall n :e omega, forall f :e R :^: omega, hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) f = hl_real_mul (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) f) (hl_product omega (hl_numseg (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n)) f).
Admitted.

// HOL Light: Library/agm.ml:38 / CAUCHY_INDUCT   (hash md5:3f05b27fd3327dd1b0fb1d08b451cc68)
Theorem hlt_CAUCHY_INDUCT : forall P :e 2 :^: omega, P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ ((forall n :e omega, P n = 1 -> P (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = 1) /\ (forall n :e omega, P (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> P n = 1)) -> forall n :e omega, P n = 1.
Admitted.

// HOL Light: Library/agm.ml:57 / AGM   (hash md5:be783478b358d20cf8eb0bdc62bf2d63)
Theorem hlt_AGM : forall n :e omega, forall a :e R :^: omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1 /\ (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i n = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (a i) = 1) -> hl_real_le (hl_product omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) a) (hl_real_pow (hl_real_div (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) a) (hl_real_of_num n)) n) = 1.
Admitted.

