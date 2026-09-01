// hol2mg literal statements (private): shard calc_rat of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: calc_rat.ml:16 / DECIMAL   (hash md5:fa6361200beb01135fbf6c305ca1bb33)
Theorem hlt_DECIMAL : forall x y :e omega, hl_DECIMAL x y = hl_real_div (hl_real_of_num x) (hl_real_of_num y).
Admitted.

// HOL Light: calc_rat.ml:23 / RAT_LEMMA1   (hash md5:e8393a3cd1be553aa7c60366fca81f84)
Theorem hlt_RAT_LEMMA1 : forall y1 y2 x1 x2 :e R, ~ y1 = hl_real_of_num (hl_NUMERAL hl_zero) /\ ~ y2 = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_add (hl_real_div x1 y1) (hl_real_div x2 y2) = hl_real_mul (hl_real_add (hl_real_mul x1 y2) (hl_real_mul x2 y1)) (hl_real_mul (hl_real_inv y1) (hl_real_inv y2)).
Admitted.

// HOL Light: calc_rat.ml:35 / RAT_LEMMA2   (hash md5:ae5645e91695b4ed5e219b261f792998)
Theorem hlt_RAT_LEMMA2 : forall y1 y2 x1 x2 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y1 = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y2 = 1 -> hl_real_add (hl_real_div x1 y1) (hl_real_div x2 y2) = hl_real_mul (hl_real_add (hl_real_mul x1 y2) (hl_real_mul x2 y1)) (hl_real_mul (hl_real_inv y1) (hl_real_inv y2)).
Admitted.

// HOL Light: calc_rat.ml:43 / RAT_LEMMA3   (hash md5:abd3baef5b1dfea4e85b17b4e5f80764)
Theorem hlt_RAT_LEMMA3 : forall y1 y2 x1 x2 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y1 = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y2 = 1 -> hl_real_sub (hl_real_div x1 y1) (hl_real_div x2 y2) = hl_real_mul (hl_real_sub (hl_real_mul x1 y2) (hl_real_mul x2 y1)) (hl_real_mul (hl_real_inv y1) (hl_real_inv y2)).
Admitted.

// HOL Light: calc_rat.ml:50 / RAT_LEMMA4   (hash md5:3874924f8de98d947dc453edeb336a83)
Theorem hlt_RAT_LEMMA4 : forall y1 y2 x1 x2 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y1 = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y2 = 1 -> (hl_real_le (hl_real_div x1 y1) (hl_real_div x2 y2) = 1 <-> hl_real_le (hl_real_mul x1 y2) (hl_real_mul x2 y1) = 1).
Admitted.

// HOL Light: calc_rat.ml:74 / RAT_LEMMA5   (hash md5:5fee20a341c17bc393c398555d21936e)
Theorem hlt_RAT_LEMMA5 : forall y1 y2 x1 x2 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y1 = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y2 = 1 -> (hl_real_div x1 y1 = hl_real_div x2 y2 <-> hl_real_mul x1 y2 = hl_real_mul x2 y1).
Admitted.

// HOL Light: calc_rat.ml:563 / REAL_LE_TRANS_LE   (hash md5:be9a7b4b2ad6d3308531b51967e3076a)
Theorem hlt_REAL_LE_TRANS_LE : forall x y :e R, hl_real_le x y = 1 <-> forall z :e R, hl_real_le y z = 1 -> hl_real_le x z = 1.
Admitted.

// HOL Light: calc_rat.ml:567 / REAL_LE_TRANS_LTE   (hash md5:1068e1c4a588cddd354422ab876ed0f1)
Theorem hlt_REAL_LE_TRANS_LTE : forall x y :e R, hl_real_le x y = 1 <-> forall z :e R, hl_real_lt y z = 1 -> hl_real_le x z = 1.
Admitted.

// HOL Light: calc_rat.ml:572 / REAL_LE_TRANS_LT   (hash md5:02285767aa10cec142781f4b6cb1ce2f)
Theorem hlt_REAL_LE_TRANS_LT : forall x y :e R, hl_real_le x y = 1 <-> forall z :e R, hl_real_lt y z = 1 -> hl_real_lt x z = 1.
Admitted.

// HOL Light: calc_rat.ml:634 / REAL_SHRINK_RANGE   (hash md5:b6e1647f30348e82c943d41412082273)
Theorem hlt_REAL_SHRINK_RANGE : forall x :e R, hl_real_lt (hl_real_abs (hl_real_div x (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x)))) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: calc_rat.ml:641 / REAL_SHRINK_LT   (hash md5:b1832fb07cd719ce36124d0b1b61b5d6)
Theorem hlt_REAL_SHRINK_LT : forall x y :e R, hl_real_lt (hl_real_div x (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))) (hl_real_div y (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs y))) = 1 <-> hl_real_lt x y = 1.
Admitted.

// HOL Light: calc_rat.ml:657 / REAL_SHRINK_LE   (hash md5:8769b50b295831a50d32a344031b8d94)
Theorem hlt_REAL_SHRINK_LE : forall x y :e R, hl_real_le (hl_real_div x (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))) (hl_real_div y (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs y))) = 1 <-> hl_real_le x y = 1.
Admitted.

// HOL Light: calc_rat.ml:661 / REAL_SHRINK_EQ   (hash md5:8287aea4894dd8629a968062c4007a3a)
Theorem hlt_REAL_SHRINK_EQ : forall x y :e R, hl_real_div x (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x)) = hl_real_div y (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs y)) <-> x = y.
Admitted.

// HOL Light: calc_rat.ml:665 / REAL_SHRINK_GALOIS   (hash md5:c07a62e4264613a4b483e83afbe4472a)
Theorem hlt_REAL_SHRINK_GALOIS : forall x y :e R, hl_real_div x (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x)) = y <-> hl_real_lt (hl_real_abs y) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_div y (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs y)) = x.
Admitted.

// HOL Light: calc_rat.ml:677 / REAL_GROW_SHRINK   (hash md5:d12efb9947fe9a485e526f46d0085ff8)
Theorem hlt_REAL_GROW_SHRINK : forall x :e R, hl_real_div (hl_real_div x (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))) (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs (hl_real_div x (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))))) = x.
Admitted.

// HOL Light: calc_rat.ml:681 / REAL_SHRINK_GROW_EQ   (hash md5:5afb6be53ddac232b436e479fed7e8f4)
Theorem hlt_REAL_SHRINK_GROW_EQ : forall x :e R, hl_real_div (hl_real_div x (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))) (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs (hl_real_div x (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))))) = x <-> hl_real_lt (hl_real_abs x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: calc_rat.ml:685 / REAL_SHRINK_GROW   (hash md5:1af6a3481c674247db0daa77c7423bbd)
Theorem hlt_REAL_SHRINK_GROW : forall x :e R, hl_real_lt (hl_real_abs x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> hl_real_div (hl_real_div x (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))) (hl_real_add (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs (hl_real_div x (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_abs x))))) = x.
Admitted.

