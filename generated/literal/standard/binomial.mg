// hol2mg literal statements (private): shard binomial of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/binomial.ml:5 / binom   (hash md5:e6ef97558259b3cb15cde8ee94aa445e)
Theorem hlt_binom : (forall n :e omega, hl_binom (hl_pair omega omega n (hl_NUMERAL hl_zero)) = hl_NUMERAL (hl_BIT1 hl_zero)) /\ ((forall k :e omega, hl_binom (hl_pair omega omega (hl_NUMERAL hl_zero) (hl_SUC k)) = hl_NUMERAL hl_zero) /\ forall n k :e omega, hl_binom (hl_pair omega omega (hl_SUC n) (hl_SUC k)) = hl_add (hl_binom (hl_pair omega omega n (hl_SUC k))) (hl_binom (hl_pair omega omega n k))).
Admitted.

// HOL Light: Library/binomial.ml:10 / BINOM_0   (hash md5:00c1dfdbb5fd0e6a2ed65cd26554ea08)
Theorem hlt_BINOM_0 : forall n :e omega, hl_binom (hl_pair omega omega (hl_NUMERAL hl_zero) n) = hl_COND omega (if n = hl_NUMERAL hl_zero then 1 else 0) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/binomial.ml:14 / BINOM_LT   (hash md5:36d28f13c30b20def347de17ddb8c772)
Theorem hlt_BINOM_LT : forall n k :e omega, hl_lt n k = 1 -> hl_binom (hl_pair omega omega n k) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/binomial.ml:19 / BINOM_REFL   (hash md5:9f0e2c78b5f75aaa44b0ff7c1a3d29d6)
Theorem hlt_BINOM_REFL : forall n :e omega, hl_binom (hl_pair omega omega n n) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Library/binomial.ml:23 / BINOM_1   (hash md5:0ccf273e085899ca08a1c1073bb82189)
Theorem hlt_BINOM_1 : forall n :e omega, hl_binom (hl_pair omega omega n (hl_NUMERAL (hl_BIT1 hl_zero))) = n.
Admitted.

// HOL Light: Library/binomial.ml:28 / BINOM_FACT   (hash md5:56de32ff68bc19bf6b6fb9da981a07a5)
Theorem hlt_BINOM_FACT : forall n k :e omega, hl_mul (hl_FACT n) (hl_mul (hl_FACT k) (hl_binom (hl_pair omega omega (hl_add n k) k))) = hl_FACT (hl_add n k).
Admitted.

// HOL Light: Library/binomial.ml:35 / BINOM_EQ_0   (hash md5:86ade9931814909ab94119a8641a842f)
Theorem hlt_BINOM_EQ_0 : forall n k :e omega, hl_binom (hl_pair omega omega n k) = hl_NUMERAL hl_zero <-> hl_lt n k = 1.
Admitted.

// HOL Light: Library/binomial.ml:44 / BINOM_PENULT   (hash md5:f44f6a1272f6dd02b935ca121fd9df0b)
Theorem hlt_BINOM_PENULT : forall n :e omega, hl_binom (hl_pair omega omega (hl_SUC n) n) = hl_SUC n.
Admitted.

// HOL Light: Library/binomial.ml:50 / BINOM_GE_TOP   (hash md5:7ae9564b0d3c149f4bdf3947c7aa528d)
Theorem hlt_BINOM_GE_TOP : forall m n :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) m = 1 /\ hl_lt m n = 1 -> hl_le n (hl_binom (hl_pair omega omega n m)) = 1.
Admitted.

// HOL Light: Library/binomial.ml:64 / BINOM_TOP_STEP   (hash md5:2c5fa497aca75cfa2b190f260bf7dab3)
Theorem hlt_BINOM_TOP_STEP : forall n k :e omega, hl_mul (hl_sub (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) k) (hl_binom (hl_pair omega omega (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) k)) = hl_mul (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_binom (hl_pair omega omega n k)).
Admitted.

// HOL Light: Library/binomial.ml:80 / BINOM_BOTTOM_STEP   (hash md5:b2e43c433c47a29955e1d517ca50b537)
Theorem hlt_BINOM_BOTTOM_STEP : forall n k :e omega, hl_mul (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_binom (hl_pair omega omega n (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_mul (hl_sub n k) (hl_binom (hl_pair omega omega n k)).
Admitted.

// HOL Light: Library/binomial.ml:100 / HAS_SIZE_RESTRICTED_POWERSET   (hash md5:99a1a40d37836cddebb94470f0a43779)
Theorem hlt_HAS_SIZE_RESTRICTED_POWERSET : forall A:set, A <> Empty -> forall n m :e omega, forall s :e 2 :^: A, hl_HAS_SIZE A s n = 1 -> hl_HAS_SIZE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_412 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_412 (if hl_SUBSET A t s = 1 /\ hl_HAS_SIZE A t m = 1 then 1 else 0) t = 1 then 1 else 0)) (hl_binom (hl_pair omega omega n m)) = 1.
Admitted.

// HOL Light: Library/binomial.ml:141 / CARD_RESTRICTED_POWERSET   (hash md5:34994c7f6a70401764baf2b7892b4d9a)
Theorem hlt_CARD_RESTRICTED_POWERSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall k :e omega, hl_FINITE A s = 1 -> hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_413 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_413 (if hl_SUBSET A t s = 1 /\ hl_HAS_SIZE A t k = 1 then 1 else 0) t = 1 then 1 else 0)) = hl_binom (hl_pair omega omega (hl_CARD A s) k).
Admitted.

// HOL Light: Library/binomial.ml:151 / BINOMIAL_THEOREM   (hash md5:8de026506c490d75d1a885ae01e754d8)
Theorem hlt_BINOMIAL_THEOREM : forall n x y :e omega, hl_EXP (hl_add x y) n = hl_nsum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun k :e omega => hl_mul (hl_binom (hl_pair omega omega n k)) (hl_mul (hl_EXP x k) (hl_EXP y (hl_sub n k)))).
Admitted.

// HOL Light: Library/binomial.ml:172 / REAL_BINOMIAL_THEOREM   (hash md5:cac58ee2a737b8842bb7673a9aa0e700)
Theorem hlt_REAL_BINOMIAL_THEOREM : forall n :e omega, forall x y :e R, hl_real_pow (hl_real_add x y) n = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun k :e omega => hl_real_mul (hl_real_of_num (hl_binom (hl_pair omega omega n k))) (hl_real_mul (hl_real_pow x k) (hl_real_pow y (hl_sub n k)))).
Admitted.

// HOL Light: Library/binomial.ml:194 / BINOM_TOP_STEP_REAL   (hash md5:4ed91c3ecf85f96fbe4c8de36a5568f9)
Theorem hlt_BINOM_TOP_STEP_REAL : forall n k :e omega, hl_real_of_num (hl_binom (hl_pair omega omega (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) k)) = hl_COND R (if k = hl_add n (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul (hl_real_div (hl_real_add (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_add (hl_real_of_num n) (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num k)))) (hl_real_of_num (hl_binom (hl_pair omega omega n k)))).
Admitted.

// HOL Light: Library/binomial.ml:208 / BINOM_BOTTOM_STEP_REAL   (hash md5:97e120b0bdc18f2399b5c49e7e688e93)
Theorem hlt_BINOM_BOTTOM_STEP_REAL : forall n k :e omega, hl_real_of_num (hl_binom (hl_pair omega omega n (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_real_mul (hl_real_div (hl_real_sub (hl_real_of_num n) (hl_real_of_num k)) (hl_real_add (hl_real_of_num k) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_binom (hl_pair omega omega n k))).
Admitted.

// HOL Light: Library/binomial.ml:217 / REAL_OF_NUM_BINOM   (hash md5:736e442d0ea973a31e67bcfbfa6a2aa3)
Theorem hlt_REAL_OF_NUM_BINOM : forall n k :e omega, hl_real_of_num (hl_binom (hl_pair omega omega n k)) = hl_COND R (hl_le k n) (hl_real_div (hl_real_of_num (hl_FACT n)) (hl_real_mul (hl_real_of_num (hl_FACT (hl_sub n k))) (hl_real_of_num (hl_FACT k)))) (hl_real_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/binomial.ml:232 / BINOM_BOTH_STEP_REAL   (hash md5:7559c37560f046816e5cec538c998e46)
Theorem hlt_BINOM_BOTH_STEP_REAL : forall p k :e omega, hl_real_of_num (hl_binom (hl_pair omega omega (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_real_mul (hl_real_div (hl_real_add (hl_real_of_num p) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_add (hl_real_of_num k) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_real_of_num (hl_binom (hl_pair omega omega p k))).
Admitted.

// HOL Light: Library/binomial.ml:240 / BINOM_BOTH_STEP   (hash md5:d8d025718dfcb04266b136b8e1138cbe)
Theorem hlt_BINOM_BOTH_STEP : forall p k :e omega, hl_mul (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_binom (hl_pair omega omega (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_add k (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_mul (hl_add p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_binom (hl_pair omega omega p k)).
Admitted.

// HOL Light: Library/binomial.ml:246 / BINOM_BOTH_STEP_DOWN   (hash md5:a1fd788a4fedc692bef6b61cc82e336d)
Theorem hlt_BINOM_BOTH_STEP_DOWN : forall p k :e omega, (k = hl_NUMERAL hl_zero -> p = hl_NUMERAL hl_zero) -> hl_mul k (hl_binom (hl_pair omega omega p k)) = hl_mul p (hl_binom (hl_pair omega omega (hl_sub p (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_sub k (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Library/binomial.ml:253 / BINOM   (hash md5:4def247e3f0d7444d32ff8e17cde5b7d)
Theorem hlt_BINOM : forall n k :e omega, hl_binom (hl_pair omega omega n k) = hl_COND omega (hl_le k n) (hl_DIV (hl_FACT n) (hl_mul (hl_FACT (hl_sub n k)) (hl_FACT k))) (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/binomial.ml:265 / DIVIDES_GCD_BINOM   (hash md5:d4d52f5436adcccf81b5548ee154ae3c)
Theorem hlt_DIVIDES_GCD_BINOM : forall n k :e omega, hl_num_divides n (hl_mul (hl_num_gcd (hl_pair omega omega n k)) (hl_binom (hl_pair omega omega n k))) = 1.
Admitted.

// HOL Light: Library/binomial.ml:273 / DIVIDES_COPRIME_BINOM   (hash md5:a981a287b5452c1630d369ccd5e40a83)
Theorem hlt_DIVIDES_COPRIME_BINOM : forall n k :e omega, hl_num_coprime (hl_pair omega omega n k) = 1 -> hl_num_divides n (hl_binom (hl_pair omega omega n k)) = 1.
Admitted.

// HOL Light: Library/binomial.ml:278 / DIVIDES_PRIME_BINOM   (hash md5:fff9e56abf21c2864d2ce3303e9decc3)
Theorem hlt_DIVIDES_PRIME_BINOM : forall n p :e omega, hl_prime p = 1 /\ (hl_lt (hl_NUMERAL hl_zero) n = 1 /\ hl_lt n p = 1) -> hl_num_divides p (hl_binom (hl_pair omega omega p n)) = 1.
Admitted.

// HOL Light: Library/binomial.ml:289 / BINOM_SYM   (hash md5:1edc07968706b99d8aaa2433ca540098)
Theorem hlt_BINOM_SYM : forall n k :e omega, hl_binom (hl_pair omega omega n (hl_sub n k)) = hl_COND omega (hl_le k n) (hl_binom (hl_pair omega omega n k)) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/binomial.ml:298 / BINOM_MUL_SHIFT   (hash md5:1c4788d72b4a9697c43b02cb9e3e900a)
Theorem hlt_BINOM_MUL_SHIFT : forall m n k :e omega, hl_le k m = 1 -> hl_mul (hl_binom (hl_pair omega omega n m)) (hl_binom (hl_pair omega omega m k)) = hl_mul (hl_binom (hl_pair omega omega n k)) (hl_binom (hl_pair omega omega (hl_sub n k) (hl_sub m k))).
Admitted.

// HOL Light: Library/binomial.ml:316 / APPELL_SEQUENCE   (hash md5:4b1355f4e1ca8d4d2ff24bb4e4930aaa)
Theorem hlt_APPELL_SEQUENCE : forall c :e R :^: omega, forall n :e omega, forall x y :e R, hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun k :e omega => hl_real_mul (hl_real_of_num (hl_binom (hl_pair omega omega n k))) (hl_real_mul (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) k) (fun l :e omega => hl_real_mul (hl_real_of_num (hl_binom (hl_pair omega omega k l))) (hl_real_mul (c l) (hl_real_pow x (hl_sub k l))))) (hl_real_pow y (hl_sub n k)))) = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) n) (fun k :e omega => hl_real_mul (hl_real_of_num (hl_binom (hl_pair omega omega n k))) (hl_real_mul (c k) (hl_real_pow (hl_real_add x y) (hl_sub n k)))).
Admitted.

