// hol2mg literal statements (private): shard binary of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/binary.ml:5 / BOUNDED_FINITE   (hash md5:1a08c5f909ee128408f8ff1a0709614d)
Theorem hlt_BOUNDED_FINITE : forall n :e omega, forall s :e 2 :^: omega, (forall x :e omega, hl_IN omega x s = 1 -> hl_le x n = 1) -> hl_FINITE omega s = 1.
Admitted.

// HOL Light: Library/binary.ml:10 / EVEN_NSUM   (hash md5:9df54ef867a3cfbfe3b99808b5df8096)
Theorem hlt_EVEN_NSUM : forall A:set, A <> Empty -> forall f :e omega :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall i :e A, hl_IN A i s = 1 -> hl_EVEN (f i) = 1) -> hl_EVEN (hl_nsum A s f) = 1.
Admitted.

// HOL Light: Library/binary.ml:19 / bitset   (hash md5:dcdeffe0db53e4a8014c45daa67f6cc1)
Theorem hlt_bitset_thm : forall n :e omega, hl_bitset n = hl_GSPEC omega (fun GEN_PVAR_6095 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_6095 (hl_ODD (hl_DIV n (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i))) i = 1 then 1 else 0).
Admitted.

// HOL Light: Library/binary.ml:22 / binarysum   (hash md5:7067e62f1e6644106fee86de2122fa22)
Theorem hlt_binarysum_thm : forall s :e 2 :^: omega, hl_binarysum s = hl_nsum omega s (fun i :e omega => hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i).
Admitted.

// HOL Light: Library/binary.ml:29 / BITSET_BOUND_LEMMA   (hash md5:e707a867e4dae16ae91ccebfd84a5644)
Theorem hlt_BITSET_BOUND_LEMMA : forall n i :e omega, hl_IN omega i (hl_bitset n) = 1 -> hl_le (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) n = 1.
Admitted.

// HOL Light: Library/binary.ml:33 / BITSET_BOUND_WEAK   (hash md5:175f9180070c120dd63acce379045eb7)
Theorem hlt_BITSET_BOUND_WEAK : forall n i :e omega, hl_IN omega i (hl_bitset n) = 1 -> hl_lt i n = 1.
Admitted.

// HOL Light: Library/binary.ml:37 / FINITE_BITSET   (hash md5:c17ab6b35eecc39fb0a72f6ee91438c0)
Theorem hlt_FINITE_BITSET : forall n :e omega, hl_FINITE omega (hl_bitset n) = 1.
Admitted.

// HOL Light: Library/binary.ml:43 / BITSET_0   (hash md5:b5b85716a2ee441e3ec8dc4d6cb49326)
Theorem hlt_BITSET_0 : hl_bitset (hl_NUMERAL hl_zero) = hl_EMPTY omega.
Admitted.

// HOL Light: Library/binary.ml:48 / BITSET_STEP   (hash md5:5e37a02d8d11d20cf0d453551c4bc10a)
Theorem hlt_BITSET_STEP : (forall n :e omega, hl_bitset (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) = hl_IMAGE omega omega hl_SUC (hl_bitset n)) /\ forall n :e omega, hl_bitset (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_INSERT omega (hl_NUMERAL hl_zero) (hl_IMAGE omega omega hl_SUC (hl_bitset n)).
Admitted.

// HOL Light: Library/binary.ml:61 / BINARYSUM_BITSET   (hash md5:8335a363149275e8101d18fe89251ca8)
Theorem hlt_BINARYSUM_BITSET : forall n :e omega, hl_binarysum (hl_bitset n) = n.
Admitted.

// HOL Light: Library/binary.ml:71 / BITSET_EQ   (hash md5:006d122895a843530b3a2a811ca5f014)
Theorem hlt_BITSET_EQ : forall m n :e omega, hl_bitset m = hl_bitset n <-> m = n.
Admitted.

// HOL Light: Library/binary.ml:75 / BITSET_EQ_EMPTY   (hash md5:bd0eeacd249138d773619d1b896be7bf)
Theorem hlt_BITSET_EQ_EMPTY : forall n :e omega, hl_bitset n = hl_EMPTY omega <-> n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/binary.ml:83 / BINARYSUM_BOUND_LEMMA   (hash md5:fce7021eabf7dd457091eae5ae92be7d)
Theorem hlt_BINARYSUM_BOUND_LEMMA : forall k :e omega, forall s :e 2 :^: omega, (forall i :e omega, hl_IN omega i s = 1 -> hl_lt i k = 1) -> hl_lt (hl_nsum omega s (fun i :e omega => hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) k) = 1.
Admitted.

// HOL Light: Library/binary.ml:97 / BINARYSUM_DIV_DIVISIBLE   (hash md5:a5a0b69b91774270c1b0ebd5e0e38c0a)
Theorem hlt_BINARYSUM_DIV_DIVISIBLE : forall s :e 2 :^: omega, forall k :e omega, hl_FINITE omega s = 1 /\ (forall i :e omega, hl_IN omega i s = 1 -> hl_le k i = 1) -> hl_nsum omega s (fun i :e omega => hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) i) = hl_mul (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) k) (hl_nsum omega s (fun i :e omega => hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_sub i k))).
Admitted.

// HOL Light: Library/binary.ml:106 / BINARYSUM_DIV   (hash md5:3f2aec73c23fcec76a34add342842455)
Theorem hlt_BINARYSUM_DIV : forall k :e omega, forall s :e 2 :^: omega, hl_FINITE omega s = 1 -> hl_DIV (hl_nsum omega s (fun j :e omega => hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) j)) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) k) = hl_nsum omega s (fun j :e omega => hl_COND omega (hl_lt j k) (hl_NUMERAL hl_zero) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_sub j k))).
Admitted.

// HOL Light: Library/binary.ml:140 / BITSET_BINARYSUM   (hash md5:0623ce298b006d58df0c058ba03fcf7d)
Theorem hlt_BITSET_BINARYSUM : forall s :e 2 :^: omega, hl_FINITE omega s = 1 -> hl_bitset (hl_binarysum s) = s.
Admitted.

// HOL Light: Library/binary.ml:160 / BINARYSUM_BOUND   (hash md5:92aada5f2b993a496a6a6af1de5277c3)
Theorem hlt_BINARYSUM_BOUND : forall k :e omega, forall s :e 2 :^: omega, (forall i :e omega, hl_IN omega i s = 1 -> hl_lt i k = 1) -> hl_lt (hl_binarysum s) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) k) = 1.
Admitted.

// HOL Light: Library/binary.ml:164 / BITSET_BOUND   (hash md5:b56d5f42204cfbfe75fb1377c7446840)
Theorem hlt_BITSET_BOUND : forall n i k :e omega, hl_lt n (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) k) = 1 /\ hl_IN omega i (hl_bitset n) = 1 -> hl_lt i k = 1.
Admitted.

// HOL Light: Library/binary.ml:170 / BITSET_BOUND_EQ   (hash md5:9cf2d4f306467237d06a418518d8f734)
Theorem hlt_BITSET_BOUND_EQ : forall n k :e omega, hl_lt n (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) k) = 1 <-> forall i :e omega, hl_IN omega i (hl_bitset n) = 1 -> hl_lt i k = 1.
Admitted.

// HOL Light: Library/binary.ml:174 / BINARYSUM_BOUND_EQ   (hash md5:de2da399a8d55d9a657f9f3b7f3f723a)
Theorem hlt_BINARYSUM_BOUND_EQ : forall s :e 2 :^: omega, forall k :e omega, hl_FINITE omega s = 1 -> (hl_lt (hl_binarysum s) (hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) k) = 1 <-> forall i :e omega, hl_IN omega i s = 1 -> hl_lt i k = 1).
Admitted.

