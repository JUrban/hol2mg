// hol2mg certification module (private): shard binomial of profile standard.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Library/binomial.ml:5 / binom   (hash md5:e6ef97558259b3cb15cde8ee94aa445e)
// not bridged: 
Theorem binom : (forall n :e omega, binomial_coefficient n 0 = 1) /\ ((forall k :e omega, binomial_coefficient 0 (ordsucc k) = 0) /\ forall n k :e omega, binomial_coefficient (ordsucc n) (ordsucc k) = binomial_coefficient n (ordsucc k) + binomial_coefficient n k).
Admitted.

// HOL Light: Library/binomial.ml:10 / BINOM_0   (hash md5:00c1dfdbb5fd0e6a2ed65cd26554ea08)
// not bridged: 
Theorem BINOM_0 : forall n :e omega, binomial_coefficient 0 n = if n = 0 then 1 else 0.
Admitted.

// HOL Light: Library/binomial.ml:14 / BINOM_LT   (hash md5:36d28f13c30b20def347de17ddb8c772)
// not bridged: 
Theorem BINOM_LT : forall n k :e omega, n < k -> binomial_coefficient n k = 0.
Admitted.

// HOL Light: Library/binomial.ml:19 / BINOM_REFL   (hash md5:9f0e2c78b5f75aaa44b0ff7c1a3d29d6)
// not bridged: 
Theorem BINOM_REFL : forall n :e omega, binomial_coefficient n n = 1.
Admitted.

// HOL Light: Library/binomial.ml:23 / BINOM_1   (hash md5:0ccf273e085899ca08a1c1073bb82189)
// not bridged: 
Theorem BINOM_1 : forall n :e omega, binomial_coefficient n 1 = n.
Admitted.

// HOL Light: Library/binomial.ml:28 / BINOM_FACT   (hash md5:56de32ff68bc19bf6b6fb9da981a07a5)
// not bridged: 
Theorem BINOM_FACT : forall n k :e omega, factorial n * factorial k * binomial_coefficient (n + k) k = factorial (n + k).
Admitted.

// HOL Light: Library/binomial.ml:35 / BINOM_EQ_0   (hash md5:86ade9931814909ab94119a8641a842f)
// not bridged: 
Theorem BINOM_EQ_0 : forall n k :e omega, binomial_coefficient n k = 0 <-> n < k.
Admitted.

// HOL Light: Library/binomial.ml:44 / BINOM_PENULT   (hash md5:f44f6a1272f6dd02b935ca121fd9df0b)
// not bridged: 
Theorem BINOM_PENULT : forall n :e omega, binomial_coefficient (ordsucc n) n = ordsucc n.
Admitted.

// HOL Light: Library/binomial.ml:50 / BINOM_GE_TOP   (hash md5:7ae9564b0d3c149f4bdf3947c7aa528d)
// not bridged: 
Theorem BINOM_GE_TOP : forall m n :e omega, 1 <= m /\ m < n -> n <= binomial_coefficient n m.
Admitted.

// HOL Light: Library/binomial.ml:64 / BINOM_TOP_STEP   (hash md5:2c5fa497aca75cfa2b190f260bf7dab3)
// not bridged: 
Theorem BINOM_TOP_STEP : forall n k :e omega, minus_nat (n + 1) k * binomial_coefficient (n + 1) k = (n + 1) * binomial_coefficient n k.
Admitted.

// HOL Light: Library/binomial.ml:80 / BINOM_BOTTOM_STEP   (hash md5:b2e43c433c47a29955e1d517ca50b537)
// not bridged: 
Theorem BINOM_BOTTOM_STEP : forall n k :e omega, (k + 1) * binomial_coefficient n (k + 1) = minus_nat n k * binomial_coefficient n k.
Admitted.

// HOL Light: Library/binomial.ml:100 / HAS_SIZE_RESTRICTED_POWERSET   (hash md5:99a1a40d37836cddebb94470f0a43779)
// not bridged: 
Theorem HAS_SIZE_RESTRICTED_POWERSET : forall A:set, A <> Empty -> forall n m :e omega, forall s c= A, equip s n -> equip {t :e Power A | t c= s /\ equip t m} (binomial_coefficient n m).
Admitted.

// HOL Light: Library/binomial.ml:141 / CARD_RESTRICTED_POWERSET   (hash md5:34994c7f6a70401764baf2b7892b4d9a)
// not bridged: 
Theorem CARD_RESTRICTED_POWERSET : forall A:set, A <> Empty -> forall s c= A, forall k :e omega, finite s -> finite_cardinality {t :e Power A | t c= s /\ equip t k} = binomial_coefficient (finite_cardinality s) k.
Admitted.

// HOL Light: Library/binomial.ml:151 / BINOMIAL_THEOREM   (hash md5:8de026506c490d75d1a885ae01e754d8)
// not bridged: 
Theorem BINOMIAL_THEOREM : forall n x y :e omega, (x + y) ^ n = finsum {i :e omega | 0 <= i /\ i <= n} (fun k:set => binomial_coefficient n k * x ^ k * y ^ minus_nat n k).
Admitted.

// HOL Light: Library/binomial.ml:172 / REAL_BINOMIAL_THEOREM   (hash md5:cac58ee2a737b8842bb7673a9aa0e700)
// not bridged: 
Theorem REAL_BINOMIAL_THEOREM : forall n :e omega, forall x y :e R, (x + y) ^ n = finsum {i :e omega | 0 <= i /\ i <= n} (fun k:set => binomial_coefficient n k * x ^ k * y ^ minus_nat n k).
Admitted.

// HOL Light: Library/binomial.ml:194 / BINOM_TOP_STEP_REAL   (hash md5:4ed91c3ecf85f96fbe4c8de36a5568f9)
// not bridged: 
Theorem BINOM_TOP_STEP_REAL : forall n k :e omega, binomial_coefficient (n + 1) k = if k = n + 1 then 1 else (n + 1) :/: (n + 1 + - k) * binomial_coefficient n k.
Admitted.

// HOL Light: Library/binomial.ml:208 / BINOM_BOTTOM_STEP_REAL   (hash md5:97e120b0bdc18f2399b5c49e7e688e93)
// not bridged: 
Theorem BINOM_BOTTOM_STEP_REAL : forall n k :e omega, binomial_coefficient n (k + 1) = (n + - k) :/: (k + 1) * binomial_coefficient n k.
Admitted.

// HOL Light: Library/binomial.ml:217 / REAL_OF_NUM_BINOM   (hash md5:736e442d0ea973a31e67bcfbfa6a2aa3)
// not bridged: 
Theorem REAL_OF_NUM_BINOM : forall n k :e omega, binomial_coefficient n k = if k <= n then factorial n :/: (factorial (minus_nat n k) * factorial k) else 0.
Admitted.

// HOL Light: Library/binomial.ml:232 / BINOM_BOTH_STEP_REAL   (hash md5:7559c37560f046816e5cec538c998e46)
// not bridged: 
Theorem BINOM_BOTH_STEP_REAL : forall p k :e omega, binomial_coefficient (p + 1) (k + 1) = (p + 1) :/: (k + 1) * binomial_coefficient p k.
Admitted.

// HOL Light: Library/binomial.ml:240 / BINOM_BOTH_STEP   (hash md5:d8d025718dfcb04266b136b8e1138cbe)
// not bridged: 
Theorem BINOM_BOTH_STEP : forall p k :e omega, (k + 1) * binomial_coefficient (p + 1) (k + 1) = (p + 1) * binomial_coefficient p k.
Admitted.

// HOL Light: Library/binomial.ml:246 / BINOM_BOTH_STEP_DOWN   (hash md5:a1fd788a4fedc692bef6b61cc82e336d)
// not bridged: 
Theorem BINOM_BOTH_STEP_DOWN : forall p k :e omega, (k = 0 -> p = 0) -> k * binomial_coefficient p k = p * binomial_coefficient (minus_nat p 1) (minus_nat k 1).
Admitted.

// HOL Light: Library/binomial.ml:253 / BINOM   (hash md5:4def247e3f0d7444d32ff8e17cde5b7d)
// not bridged: 
Theorem BINOM : forall n k :e omega, binomial_coefficient n k = if k <= n then div_nat (factorial n) (factorial (minus_nat n k) * factorial k) else 0.
Admitted.

// HOL Light: Library/binomial.ml:265 / DIVIDES_GCD_BINOM   (hash md5:d4d52f5436adcccf81b5548ee154ae3c)
// not bridged: 
Theorem DIVIDES_GCD_BINOM : forall n k :e omega, divides_nat n (gcd_int n k * binomial_coefficient n k).
Admitted.

// HOL Light: Library/binomial.ml:273 / DIVIDES_COPRIME_BINOM   (hash md5:a981a287b5452c1630d369ccd5e40a83)
// not bridged: 
Theorem DIVIDES_COPRIME_BINOM : forall n k :e omega, gcd_int n k = 1 -> divides_nat n (binomial_coefficient n k).
Admitted.

// HOL Light: Library/binomial.ml:278 / DIVIDES_PRIME_BINOM   (hash md5:fff9e56abf21c2864d2ce3303e9decc3)
// not bridged: 
Theorem DIVIDES_PRIME_BINOM : forall n p :e omega, prime_nat p /\ (0 < n /\ n < p) -> divides_nat p (binomial_coefficient p n).
Admitted.

// HOL Light: Library/binomial.ml:289 / BINOM_SYM   (hash md5:1edc07968706b99d8aaa2433ca540098)
// not bridged: 
Theorem BINOM_SYM : forall n k :e omega, binomial_coefficient n (minus_nat n k) = if k <= n then binomial_coefficient n k else 1.
Admitted.

// HOL Light: Library/binomial.ml:298 / BINOM_MUL_SHIFT   (hash md5:1c4788d72b4a9697c43b02cb9e3e900a)
// not bridged: 
Theorem BINOM_MUL_SHIFT : forall m n k :e omega, k <= m -> binomial_coefficient n m * binomial_coefficient m k = binomial_coefficient n k * binomial_coefficient (minus_nat n k) (minus_nat m k).
Admitted.

// HOL Light: Library/binomial.ml:316 / APPELL_SEQUENCE   (hash md5:4b1355f4e1ca8d4d2ff24bb4e4930aaa)
// not bridged: 
Theorem APPELL_SEQUENCE : forall c:set -> set, (forall x :e omega, c x :e R) -> forall n :e omega, forall x y :e R, finsum {i :e omega | 0 <= i /\ i <= n} (fun k:set => binomial_coefficient n k * finsum {i :e omega | 0 <= i /\ i <= k} (fun l:set => binomial_coefficient k l * c l * x ^ minus_nat k l) * y ^ minus_nat n k) = finsum {i :e omega | 0 <= i /\ i <= n} (fun k:set => binomial_coefficient n k * c k * (x + y) ^ minus_nat n k).
Admitted.

