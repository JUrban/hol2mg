// hol2mg literal statements (private): shard iter of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/iter.ml:7 / ITER   (hash md5:3964f67cb302a3c00db547a3c5d6cfb8)
Theorem hlt_ITER : forall A:set, A <> Empty -> forall x :e A, (forall f :e A :^: A, hl_ITER A (hl_NUMERAL hl_zero) f x = x) /\ forall f :e A :^: A, forall n :e omega, hl_ITER A (hl_SUC n) f x = f (hl_ITER A n f x).
Admitted.

// HOL Light: Library/iter.ml:11 / ITER_POINTLESS   (hash md5:87cd6cd80cdf992f58de0579df7527a4)
Theorem hlt_ITER_POINTLESS : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e A :^: A, hl_ITER A (hl_NUMERAL hl_zero) f = hl_I A) /\ forall f :e B :^: B, forall n :e omega, hl_ITER B (hl_SUC n) f = hl_o B B B f (hl_ITER B n f).
Admitted.

// HOL Light: Library/iter.ml:16 / ITER_ALT   (hash md5:f44055ace7b3635e8c55d093cb1c1f35)
Theorem hlt_ITER_ALT : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e A :^: A, forall x :e A, hl_ITER A (hl_NUMERAL hl_zero) f x = x) /\ forall f :e B :^: B, forall n :e omega, forall x :e B, hl_ITER B (hl_SUC n) f x = hl_ITER B n f (f x).
Admitted.

// HOL Light: Library/iter.ml:22 / ITER_ALT_POINTLESS   (hash md5:29cc3e0f851d0c8a8485551c2f67e4f4)
Theorem hlt_ITER_ALT_POINTLESS : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e A :^: A, hl_ITER A (hl_NUMERAL hl_zero) f = hl_I A) /\ forall f :e B :^: B, forall n :e omega, hl_ITER B (hl_SUC n) f = hl_o B B B (hl_ITER B n f) f.
Admitted.

// HOL Light: Library/iter.ml:27 / ITER_1   (hash md5:12e971279c186ebdb3ca7a6c5188c384)
Theorem hlt_ITER_1 : forall A:set, A <> Empty -> forall f :e A :^: A, forall x :e A, hl_ITER A (hl_NUMERAL (hl_BIT1 hl_zero)) f x = f x.
Admitted.

// HOL Light: Library/iter.ml:31 / ITER_ADD   (hash md5:da469fedb64dd66ec337fc7ec9b21088)
Theorem hlt_ITER_ADD : forall A:set, A <> Empty -> forall f :e A :^: A, forall n m :e omega, forall x :e A, hl_ITER A n f (hl_ITER A m f x) = hl_ITER A (hl_add n m) f x.
Admitted.

// HOL Light: Library/iter.ml:35 / ITER_ADD_POINTLESS   (hash md5:14f533aaf63196e46faa7929ed497b1a)
Theorem hlt_ITER_ADD_POINTLESS : forall A:set, A <> Empty -> forall f :e A :^: A, forall m n :e omega, hl_ITER A (hl_add m n) f = hl_o A A A (hl_ITER A m f) (hl_ITER A n f).
Admitted.

// HOL Light: Library/iter.ml:39 / ITER_MUL   (hash md5:88bdc611438cc86b7b237b315350b1f8)
Theorem hlt_ITER_MUL : forall A:set, A <> Empty -> forall f :e A :^: A, forall n m :e omega, forall x :e A, hl_ITER A n (hl_ITER A m f) x = hl_ITER A (hl_mul n m) f x.
Admitted.

// HOL Light: Library/iter.ml:44 / ITER_FIXPOINT   (hash md5:521a235c07f96841ceb86e01168f098a)
Theorem hlt_ITER_FIXPOINT : forall A:set, A <> Empty -> forall f :e A :^: A, forall n :e omega, forall x :e A, f x = x -> hl_ITER A n f x = x.
Admitted.

// HOL Light: Library/iter.ml:52 / ORDER_EXISTENCE_GEN   (hash md5:18f40c25173f9c84b3afea41c5db67b9)
Theorem hlt_ORDER_EXISTENCE_GEN : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall f :e A :^: omega, P (f (hl_NUMERAL hl_zero)) = 1 /\ (forall m n :e omega, P (f m) = 1 /\ ~ m = hl_NUMERAL hl_zero -> (P (f (hl_add m n)) = 1 <-> P (f n) = 1)) -> exists d :e omega, forall n :e omega, P (f n) = 1 <-> hl_num_divides d n = 1.
Admitted.

// HOL Light: Library/iter.ml:75 / ORDER_EXISTENCE_ITER   (hash md5:ca24a6c945c59e82db8b3403fa801497)
Theorem hlt_ORDER_EXISTENCE_ITER : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall f :e A :^: A, forall z :e A, R1 z z = 1 /\ ((forall x y :e A, R1 x y = 1 -> R1 y x = 1) /\ ((forall x y z1 :e A, R1 x y = 1 /\ R1 y z1 = 1 -> R1 x z1 = 1) /\ (forall x y :e A, R1 x y = 1 -> R1 (f x) (f y) = 1))) -> exists d :e omega, forall n :e omega, R1 (hl_ITER A n f z) z = 1 <-> hl_num_divides d n = 1.
Admitted.

// HOL Light: Library/iter.ml:97 / ORDER_EXISTENCE_CARD   (hash md5:df3a7d765bd87e090cdfa41aef70c409)
Theorem hlt_ORDER_EXISTENCE_CARD : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall f :e A :^: A, forall z :e A, forall k :e omega, hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_707 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_707 (hl_IN omega n (hl_UNIV omega)) (R1 (hl_ITER A n f z)) = 1 then 1 else 0)) = 1 /\ (hl_le (hl_CARD (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_708 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_708 (hl_IN omega n (hl_UNIV omega)) (R1 (hl_ITER A n f z)) = 1 then 1 else 0))) k = 1 /\ (R1 z z = 1 /\ ((forall x y :e A, R1 x y = 1 -> R1 y x = 1) /\ ((forall x y z1 :e A, R1 x y = 1 /\ R1 y z1 = 1 -> R1 x z1 = 1) /\ (forall x y :e A, R1 (f x) (f y) = 1 <-> R1 x y = 1))))) -> exists d :e omega, hl_lt (hl_NUMERAL hl_zero) d = 1 /\ (hl_le d k = 1 /\ forall n :e omega, R1 (hl_ITER A n f z) z = 1 <-> hl_num_divides d n = 1).
Admitted.

// HOL Light: Library/iter.ml:146 / ORDER_EXISTENCE_FINITE   (hash md5:476dd335351f1753fd4322f8dbfdb7c3)
Theorem hlt_ORDER_EXISTENCE_FINITE : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall f :e A :^: A, forall z :e A, hl_FINITE (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_710 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_710 (hl_IN omega n (hl_UNIV omega)) (R1 (hl_ITER A n f z)) = 1 then 1 else 0)) = 1 /\ (R1 z z = 1 /\ ((forall x y :e A, R1 x y = 1 -> R1 y x = 1) /\ ((forall x y z1 :e A, R1 x y = 1 /\ R1 y z1 = 1 -> R1 x z1 = 1) /\ (forall x y :e A, R1 (f x) (f y) = 1 <-> R1 x y = 1)))) -> exists d :e omega, hl_lt (hl_NUMERAL hl_zero) d = 1 /\ forall n :e omega, R1 (hl_ITER A n f z) z = 1 <-> hl_num_divides d n = 1.
Admitted.

