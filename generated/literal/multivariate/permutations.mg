// hol2mg literal statements (private): shard permutations of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/permutations.ml:7 / permutes   (hash md5:0a3d4cd8dd54ef555f794c08de58dd6b)
Theorem hlt_permutes_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e A :^: A, hl_permutes A p s = 1 <-> (forall x :e A, ~ hl_IN A x s = 1 -> p x = x) /\ forall y :e A, hl_exists_unique A (fun x :e A => if p x = y then 1 else 0) = 1.
Admitted.

// HOL Light: Library/permutations.ml:14 / inverse   (hash md5:7f03fde6e0767ee6a44fbda7bb8fcace)
Theorem hlt_inverse_thm : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, hl_inverse B A f = fun y :e A => hl_select B (fun x :e B => if f x = y then 1 else 0).
Admitted.

// HOL Light: Library/permutations.ml:17 / SURJECTIVE_INVERSE   (hash md5:9751869ee7cc9094190dcadbf65aaa13)
Theorem hlt_SURJECTIVE_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, (forall y :e A, exists x :e B, f x = y) <-> forall y :e A, f (hl_inverse B A f y) = y.
Admitted.

// HOL Light: Library/permutations.ml:21 / SURJECTIVE_INVERSE_o   (hash md5:a93f61fb35d8b98899af849b8795568e)
Theorem hlt_SURJECTIVE_INVERSE_o : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) <-> hl_o A B B f (hl_inverse A B f) = hl_I B.
Admitted.

// HOL Light: Library/permutations.ml:25 / INJECTIVE_INVERSE   (hash md5:a503cead61dc7c48bea07653ab76df0f)
Theorem hlt_INJECTIVE_INVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, (forall x x' :e B, f x = f x' -> x = x') <-> forall x :e B, hl_inverse B A f (f x) = x.
Admitted.

// HOL Light: Library/permutations.ml:29 / INJECTIVE_INVERSE_o   (hash md5:0c055f809179483998b03b4370d963dd)
Theorem hlt_INJECTIVE_INVERSE_o : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, (forall x x' :e B, f x = f x' -> x = x') <-> hl_o A B B (hl_inverse B A f) f = hl_I B.
Admitted.

// HOL Light: Library/permutations.ml:33 / INVERSE_UNIQUE_o   (hash md5:d38629d5f526dc14954b375169bfc28a)
Theorem hlt_INVERSE_UNIQUE_o : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, forall g :e B :^: A, hl_o B A A f g = hl_I A /\ hl_o A B B g f = hl_I B -> hl_inverse B A f = g.
Admitted.

// HOL Light: Library/permutations.ml:38 / INVERSE_I   (hash md5:ce6b83c23d65de040ec82170f56f99ca)
Theorem hlt_INVERSE_I : forall A:set, A <> Empty -> hl_inverse A A (hl_I A) = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:42 / INVERSE_UNIQUE_ALT   (hash md5:bcef831fc35e3626db1834b16c739fab)
Theorem hlt_INVERSE_UNIQUE_ALT : forall A:set, A <> Empty -> forall f g :e A :^: A, (forall x :e A, f (g x) = x) /\ (forall x :e A, g (f x) = x) -> hl_inverse A A f = g.
Admitted.

// HOL Light: Library/permutations.ml:53 / swap   (hash md5:23a977ed01d0cb36c071779da6b1a8e5)
Theorem hlt_swap_thm : forall A:set, A <> Empty -> forall j i k :e A, hl_swap A (hl_pair A A i j) k = hl_COND A (if k = i then 1 else 0) j (hl_COND A (if k = j then 1 else 0) i k).
Admitted.

// HOL Light: Library/permutations.ml:56 / SWAP_REFL   (hash md5:b82600aee7d2643f66f1cf433745c452)
Theorem hlt_SWAP_REFL : forall A:set, A <> Empty -> forall a :e A, hl_swap A (hl_pair A A a a) = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:60 / SWAP_SYM   (hash md5:cf24a2af7f36b36385f2812a149530ef)
Theorem hlt_SWAP_SYM : forall A:set, A <> Empty -> forall a b :e A, hl_swap A (hl_pair A A a b) = hl_swap A (hl_pair A A b a).
Admitted.

// HOL Light: Library/permutations.ml:64 / SWAP_IDEMPOTENT   (hash md5:4393b8ba92c1785f77f57330868ea74a)
Theorem hlt_SWAP_IDEMPOTENT : forall A:set, A <> Empty -> forall a b :e A, hl_o A A A (hl_swap A (hl_pair A A a b)) (hl_swap A (hl_pair A A a b)) = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:68 / INVERSE_SWAP   (hash md5:4d4bc640a8eda32d101e335f5b4e1173)
Theorem hlt_INVERSE_SWAP : forall A:set, A <> Empty -> forall a b :e A, hl_inverse A A (hl_swap A (hl_pair A A a b)) = hl_swap A (hl_pair A A a b).
Admitted.

// HOL Light: Library/permutations.ml:73 / SWAP_GALOIS   (hash md5:510cd1296690e6f0fc9c1cbbb3c0f8a5)
Theorem hlt_SWAP_GALOIS : forall A:set, A <> Empty -> forall a b x y :e A, x = hl_swap A (hl_pair A A a b) y <-> y = hl_swap A (hl_pair A A a b) x.
Admitted.

// HOL Light: Library/permutations.ml:77 / SWAP_LEFT   (hash md5:70ec55b293332dc41bc9cb7526e3e3d9)
Theorem hlt_SWAP_LEFT : forall A:set, A <> Empty -> forall a b :e A, hl_swap A (hl_pair A A a b) a = b.
Admitted.

// HOL Light: Library/permutations.ml:81 / SWAP_RIGHT   (hash md5:5e5d8085d8eae498fed39646927a69c5)
Theorem hlt_SWAP_RIGHT : forall A:set, A <> Empty -> forall a b :e A, hl_swap A (hl_pair A A a b) b = a.
Admitted.

// HOL Light: Library/permutations.ml:85 / SWAP_OTHER   (hash md5:a21bc744819b4242cde9c436e8134f96)
Theorem hlt_SWAP_OTHER : forall A:set, A <> Empty -> forall a b x :e A, ~ x = a /\ ~ x = b -> hl_swap A (hl_pair A A a b) x = x.
Admitted.

// HOL Light: Library/permutations.ml:89 / SWAP_TRIPLE   (hash md5:e8c8d5c982ee577e0f227694ee1615bb)
Theorem hlt_SWAP_TRIPLE : forall A:set, A <> Empty -> forall a b c :e A, ~ a = b /\ (~ b = c /\ ~ a = c) -> hl_o A A A (hl_swap A (hl_pair A A a b)) (hl_o A A A (hl_swap A (hl_pair A A b c)) (hl_swap A (hl_pair A A a b))) = hl_swap A (hl_pair A A a c).
Admitted.

// HOL Light: Library/permutations.ml:101 / SWAP_TRIPLE_ALT   (hash md5:2fd3411a244c7a4f6111696f6751824a)
Theorem hlt_SWAP_TRIPLE_ALT : forall A:set, A <> Empty -> forall a x y :e A, ~ a = x /\ (~ a = y /\ ~ x = y) -> hl_o A A A (hl_swap A (hl_pair A A a x)) (hl_o A A A (hl_swap A (hl_pair A A a y)) (hl_swap A (hl_pair A A a x))) = hl_swap A (hl_pair A A x y).
Admitted.

// HOL Light: Library/permutations.ml:113 / INVOLUTION_SIZE_2_IS_SWAP   (hash md5:7468faf2ffa31a8f65dbe487bbb93fa2)
Theorem hlt_INVOLUTION_SIZE_2_IS_SWAP : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e A :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ ((forall x :e A, hl_IN A x s = 1 -> p (p x) = x) /\ hl_HAS_SIZE A (hl_GSPEC A (fun GEN_PVAR_522 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_522 (if hl_IN A x s = 1 /\ ~ p x = x then 1 else 0) x = 1 then 1 else 0)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) -> exists a b :e A, hl_IN A a s = 1 /\ (hl_IN A b s = 1 /\ (~ a = b /\ forall x :e A, hl_IN A x s = 1 -> p x = hl_swap A (hl_pair A A a b) x)).
Admitted.

// HOL Light: Library/permutations.ml:126 / INVOLUTION_MOVES_2_IS_SWAP   (hash md5:10bd5e936e4e2c36a8440f1c26a62f16)
Theorem hlt_INVOLUTION_MOVES_2_IS_SWAP : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e A :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ ((forall x :e A, hl_IN A x s = 1 -> p (p x) = x) /\ hl_CARD A (hl_GSPEC A (fun GEN_PVAR_523 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_523 (if hl_IN A x s = 1 /\ ~ p x = x then 1 else 0) x = 1 then 1 else 0)) = hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) -> exists a b :e A, hl_IN A a s = 1 /\ (hl_IN A b s = 1 /\ (~ a = b /\ forall x :e A, hl_IN A x s = 1 -> p x = hl_swap A (hl_pair A A a b) x)).
Admitted.

// HOL Light: Library/permutations.ml:141 / PERMUTES_IN_IMAGE   (hash md5:2397f2b144df80bc9084a01b602ade6b)
Theorem hlt_PERMUTES_IN_IMAGE : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, forall x :e A, hl_permutes A p s = 1 -> (hl_IN A (p x) s = 1 <-> hl_IN A x s = 1).
Admitted.

// HOL Light: Library/permutations.ml:145 / PERMUTES_IMAGE   (hash md5:a0d9f8182862d9d22d8b20adfe424f5f)
Theorem hlt_PERMUTES_IMAGE : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> hl_IMAGE A A p s = s.
Admitted.

// HOL Light: Library/permutations.ml:149 / PERMUTES_INJECTIVE   (hash md5:9ec93ba0571db6c9fea98a8ed3d27e3d)
Theorem hlt_PERMUTES_INJECTIVE : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> forall x y :e A, p x = p y <-> x = y.
Admitted.

// HOL Light: Library/permutations.ml:153 / PERMUTES_SURJECTIVE   (hash md5:5321fd59e92895f2512cebc2436a2976)
Theorem hlt_PERMUTES_SURJECTIVE : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> forall y :e A, exists x :e A, p x = y.
Admitted.

// HOL Light: Library/permutations.ml:157 / PERMUTES_INVERSES_o   (hash md5:871e383369b25da65ad992bc4d16684d)
Theorem hlt_PERMUTES_INVERSES_o : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> hl_o A A A p (hl_inverse A A p) = hl_I A /\ hl_o A A A (hl_inverse A A p) p = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:162 / PERMUTES_INVERSES   (hash md5:e614f7d2a5db98755a0caf0a4f02913d)
Theorem hlt_PERMUTES_INVERSES : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> (forall x :e A, p (hl_inverse A A p x) = x) /\ forall x :e A, hl_inverse A A p (p x) = x.
Admitted.

// HOL Light: Library/permutations.ml:168 / PERMUTES_SUBSET   (hash md5:a5c119709523b1d4bf20b631905b5442)
Theorem hlt_PERMUTES_SUBSET : forall A:set, A <> Empty -> forall p :e A :^: A, forall s t :e 2 :^: A, hl_permutes A p s = 1 /\ hl_SUBSET A s t = 1 -> hl_permutes A p t = 1.
Admitted.

// HOL Light: Library/permutations.ml:172 / PERMUTES_EMPTY   (hash md5:203493f7c05b770f363fa96aa5d80f35)
Theorem hlt_PERMUTES_EMPTY : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutes A p (hl_EMPTY A) = 1 <-> p = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:176 / PERMUTES_SING   (hash md5:d224ec33ac7a3a873f32bc1c751d1bf3)
Theorem hlt_PERMUTES_SING : forall A:set, A <> Empty -> forall p :e A :^: A, forall a :e A, hl_permutes A p (hl_INSERT A a (hl_EMPTY A)) = 1 <-> p = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:180 / PERMUTES_UNIV   (hash md5:569946afad001fab075fb738e0cfe5ad)
Theorem hlt_PERMUTES_UNIV : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutes A p (hl_UNIV A) = 1 <-> forall y :e A, hl_exists_unique A (fun x :e A => if p x = y then 1 else 0) = 1.
Admitted.

// HOL Light: Library/permutations.ml:184 / PERMUTES_INVERSE_EQ   (hash md5:109ee10d3c84e59e77a56242665416a3)
Theorem hlt_PERMUTES_INVERSE_EQ : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> forall x y :e A, hl_inverse A A p y = x <-> p x = y.
Admitted.

// HOL Light: Library/permutations.ml:188 / PERMUTES_SWAP   (hash md5:b603ab5420600faa8efb33e9620260d2)
Theorem hlt_PERMUTES_SWAP : forall A:set, A <> Empty -> forall a b :e A, forall s :e 2 :^: A, hl_IN A a s = 1 /\ hl_IN A b s = 1 -> hl_permutes A (hl_swap A (hl_pair A A a b)) s = 1.
Admitted.

// HOL Light: Library/permutations.ml:192 / PERMUTES_SUPERSET   (hash md5:61136862c4b21ae71f030ce71ce6fadb)
Theorem hlt_PERMUTES_SUPERSET : forall A:set, A <> Empty -> forall p :e A :^: A, forall s t :e 2 :^: A, hl_permutes A p s = 1 /\ (forall x :e A, hl_IN A x (hl_DIFF A s t) = 1 -> p x = x) -> hl_permutes A p t = 1.
Admitted.

// HOL Light: Library/permutations.ml:197 / PERMUTES_BIJECTIONS   (hash md5:0377fe840744644cd8c87f5b12c1a5fa)
Theorem hlt_PERMUTES_BIJECTIONS : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p q :e A :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ ((forall x :e A, ~ hl_IN A x s = 1 -> p x = x) /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (q x) s = 1) /\ ((forall x :e A, ~ hl_IN A x s = 1 -> q x = x) /\ ((forall x :e A, p (q x) = x) /\ (forall x :e A, q (p x) = x))))) -> hl_permutes A p s = 1.
Admitted.

// HOL Light: Library/permutations.ml:204 / PERMUTES_INVERSE_FUNCTION   (hash md5:e959417263dc8e42fad1ee577f3055fa)
Theorem hlt_PERMUTES_INVERSE_FUNCTION : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e A :^: A, hl_permutes A p s = 1 <-> exists q :e A :^: A, (forall x :e A, ~ hl_IN A x s = 1 -> p x = x) /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ forall x :e A, hl_IN A x s = 1 -> p (q x) = x /\ q (p x) = x).
Admitted.

// HOL Light: Library/permutations.ml:219 / PERMUTES_ALT   (hash md5:05652ee01c6392eefd93bd93aa21d401)
Theorem hlt_PERMUTES_ALT : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 <-> (forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ ((forall x :e A, ~ hl_IN A x s = 1 -> p x = x) /\ forall y :e A, hl_IN A y s = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ p x = y then 1 else 0) = 1).
Admitted.

// HOL Light: Library/permutations.ml:232 / PERMUTES_RESTRICT_SET   (hash md5:20bdb52db53d9ccca3163f47c42abbb0)
Theorem hlt_PERMUTES_RESTRICT_SET : forall A:set, A <> Empty -> forall Q :e 2 :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> (Q (p x) = 1 <-> Q x = 1)) -> hl_permutes A (fun i :e A => hl_COND A (Q i) (p i) i) (hl_GSPEC A (fun GEN_PVAR_524 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_524 (if hl_IN A x s = 1 /\ Q x = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:238 / PERMUTES_RESTRICT   (hash md5:469d8c241a48ceadca9e64a2e5ca5ebd)
Theorem hlt_PERMUTES_RESTRICT : forall A:set, A <> Empty -> forall Q :e 2 :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> (Q (p x) = 1 <-> Q x = 1)) -> hl_permutes A (fun i :e A => hl_COND A (Q i) (p i) i) s = 1.
Admitted.

// HOL Light: Library/permutations.ml:244 / PERMUTES_CARTESIAN_PRODUCT   (hash md5:4ecf195bc15622bc62c25d8e4a1ac4c5)
Theorem hlt_PERMUTES_CARTESIAN_PRODUCT : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :^: A, forall q :e B :^: B, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_permutes A p s = 1 /\ hl_permutes B q t = 1 -> hl_permutes (A :*: B) (hl_GABS ((A :*: B) :^: (A :*: B)) (fun f :e (A :*: B) :^: (A :*: B) => if forall i :e A, forall j :e B, hl_GEQ (A :*: B) (f (hl_pair A B i j)) (hl_COND (A :*: B) (if hl_IN A i s = 1 /\ hl_IN B j t = 1 then 1 else 0) (hl_pair A B (p i) (q j)) (hl_pair A B i j)) = 1 then 1 else 0)) (hl_CROSS A B s t) = 1.
Admitted.

// HOL Light: Library/permutations.ml:254 / PERMUTES_TRANSFER_BIJECTIONS   (hash md5:0f5e9b3ced2e505a5d5fd91135b4801c)
Theorem hlt_PERMUTES_TRANSFER_BIJECTIONS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall f' :e A :^: B, forall p :e B :^: B, forall s :e 2 :^: A, forall t :e 2 :^: B, (forall x :e A, f' (f x) = x) /\ ((forall y :e B, f (f' y) = y) /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1) /\ (forall y :e B, hl_IN B y t = 1 -> hl_IN A (f' y) s = 1))) -> (hl_permutes A (hl_o B A A f' (hl_o B B A p f)) s = 1 <-> hl_permutes B p t = 1).
Admitted.

// HOL Light: Library/permutations.ml:262 / PERMUTES_TRANSFER   (hash md5:8e2b6b20fb1c1ccb893ba4c02e877885)
Theorem hlt_PERMUTES_TRANSFER : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall p :e A :^: A, forall q :e B :^: B, forall s :e 2 :^: A, hl_permutes A p s = 1 /\ ((forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ ((forall x :e A, hl_IN A x s = 1 -> q (f x) = f (p x)) /\ (forall y :e B, ~ hl_IN B y (hl_IMAGE A B f s) = 1 -> q y = y))) -> hl_permutes B q (hl_IMAGE A B f s) = 1.
Admitted.

// HOL Light: Library/permutations.ml:278 / SWAP_CONJUGATE   (hash md5:bd89da46e2c0fb6c42ba5741337b1529)
Theorem hlt_SWAP_CONJUGATE : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, forall a b :e A, hl_permutes A p s = 1 -> hl_o A A A p (hl_o A A A (hl_swap A (hl_pair A A a b)) (hl_inverse A A p)) = hl_swap A (hl_pair A A (p a) (p b)).
Admitted.

// HOL Light: Library/permutations.ml:312 / PERMUTES_ID   (hash md5:b8be7dbe4255d96ddc621ea94a3e2403)
Theorem hlt_PERMUTES_ID : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_permutes A (fun x :e A => x) s = 1.
Admitted.

// HOL Light: Library/permutations.ml:316 / PERMUTES_I   (hash md5:7ec7c62c85da7a961852fe406655ae50)
Theorem hlt_PERMUTES_I : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_permutes A (hl_I A) s = 1.
Admitted.

// HOL Light: Library/permutations.ml:320 / PERMUTES_COMPOSE   (hash md5:e8940ea512c879edeceed3b6757fa561)
Theorem hlt_PERMUTES_COMPOSE : forall A:set, A <> Empty -> forall p q :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 /\ hl_permutes A q s = 1 -> hl_permutes A (hl_o A A A q p) s = 1.
Admitted.

// HOL Light: Library/permutations.ml:324 / PERMUTES_INVERSE   (hash md5:7cc8b69838507b52df0342dbd74ea2e4)
Theorem hlt_PERMUTES_INVERSE : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> hl_permutes A (hl_inverse A A p) s = 1.
Admitted.

// HOL Light: Library/permutations.ml:329 / PERMUTES_INVERSE_INVERSE   (hash md5:ec7756ee3dc3761dad1094f8c2a0e234)
Theorem hlt_PERMUTES_INVERSE_INVERSE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e A :^: A, hl_permutes A p s = 1 -> hl_inverse A A (hl_inverse A A p) = p.
Admitted.

// HOL Light: Library/permutations.ml:337 / PERMUTES_INSERT_LEMMA   (hash md5:5a56e9cc8e2c6a0ec32373e84bad8eba)
Theorem hlt_PERMUTES_INSERT_LEMMA : forall A:set, A <> Empty -> forall p :e A :^: A, forall a :e A, forall s :e 2 :^: A, hl_permutes A p (hl_INSERT A a s) = 1 -> hl_permutes A (hl_o A A A (hl_swap A (hl_pair A A a (p a))) p) s = 1.
Admitted.

// HOL Light: Library/permutations.ml:345 / PERMUTES_INSERT   (hash md5:c5495fae2a7c86a0bd9fe12e96eba4f6)
Theorem hlt_PERMUTES_INSERT : forall A:set, A <> Empty -> forall a :e A, forall s :e 2 :^: A, hl_GSPEC (A :^: A) (fun GEN_PVAR_525 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_525 (hl_permutes A p (hl_INSERT A a s)) p = 1 then 1 else 0) = hl_IMAGE (A :*: A :^: A) (A :^: A) (hl_GABS (A :^: A :^: (A :*: A :^: A)) (fun f :e A :^: A :^: (A :*: A :^: A) => if forall b :e A, forall p :e A :^: A, hl_GEQ (A :^: A) (f (hl_pair A (A :^: A) b p)) (hl_o A A A (hl_swap A (hl_pair A A a b)) p) = 1 then 1 else 0)) (hl_GSPEC (A :*: A :^: A) (fun GEN_PVAR_527 :e A :*: A :^: A => if exists b :e A, exists p :e A :^: A, hl_SETSPEC (A :*: A :^: A) GEN_PVAR_527 (if hl_IN A b (hl_INSERT A a s) = 1 /\ hl_IN (A :^: A) p (hl_GSPEC (A :^: A) (fun GEN_PVAR_526 :e A :^: A => if exists p1 :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_526 (hl_permutes A p1 s) p1 = 1 then 1 else 0)) = 1 then 1 else 0) (hl_pair A (A :^: A) b p) = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/permutations.ml:364 / HAS_SIZE_PERMUTATIONS   (hash md5:3c0298d39f8465e1d59c349ef8d324ad)
Theorem hlt_HAS_SIZE_PERMUTATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall n :e omega, hl_HAS_SIZE A s n = 1 -> hl_HAS_SIZE (A :^: A) (hl_GSPEC (A :^: A) (fun GEN_PVAR_529 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_529 (hl_permutes A p s) p = 1 then 1 else 0)) (hl_FACT n) = 1.
Admitted.

// HOL Light: Library/permutations.ml:387 / FINITE_PERMUTATIONS   (hash md5:182d79a4ce55f749375680c406141fd4)
Theorem hlt_FINITE_PERMUTATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_FINITE (A :^: A) (hl_GSPEC (A :^: A) (fun GEN_PVAR_530 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_530 (hl_permutes A p s) p = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:391 / CARD_PERMUTATIONS   (hash md5:89eadc60c0ce670170c8f08e512f1af0)
Theorem hlt_CARD_PERMUTATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_CARD (A :^: A) (hl_GSPEC (A :^: A) (fun GEN_PVAR_531 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_531 (hl_permutes A p s) p = 1 then 1 else 0)) = hl_FACT (hl_CARD A s).
Admitted.

// HOL Light: Library/permutations.ml:399 / PERMUTES_FINITE_INJECTIVE   (hash md5:385661ad822c5fd1582c9f1e86f7e237)
Theorem hlt_PERMUTES_FINITE_INJECTIVE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e A :^: A, hl_FINITE A s = 1 -> (hl_permutes A p s = 1 <-> (forall x :e A, ~ hl_IN A x s = 1 -> p x = x) /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ p x = p y) -> x = y)).
Admitted.

// HOL Light: Library/permutations.ml:415 / PERMUTES_FINITE_SURJECTIVE   (hash md5:2c32a64799631e677ac02fd08a288e3e)
Theorem hlt_PERMUTES_FINITE_SURJECTIVE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e A :^: A, hl_FINITE A s = 1 -> (hl_permutes A p s = 1 <-> (forall x :e A, ~ hl_IN A x s = 1 -> p x = x) /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN A (p x) s = 1) /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x s = 1 /\ p x = y)).
Admitted.

// HOL Light: Library/permutations.ml:434 / RESTRICT_PERMUTES_SUBSET   (hash md5:724ac71afc3196275c86e36f572d5760)
Theorem hlt_RESTRICT_PERMUTES_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall f :e A :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (hl_permutes A f s = 1 /\ hl_IMAGE A A f t = t)) -> hl_permutes A (fun x :e A => hl_COND A (hl_IN A x t) (f x) x) t = 1.
Admitted.

// HOL Light: Library/permutations.ml:454 / RESTRICT_I   (hash md5:991dd3be3219898bbf70f6d8a5e8f094)
Theorem hlt_RESTRICT_I : forall A:set, A <> Empty -> forall t :e 2 :^: A, (fun x :e A => hl_COND A (hl_IN A x t) (hl_I A x) x) = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:461 / RESTRICT_COMPOSE   (hash md5:be4fc018bceaea4184c91aeea75fac42)
Theorem hlt_RESTRICT_COMPOSE : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall f g :e A :^: A, hl_SUBSET A t s = 1 /\ (hl_permutes A f s = 1 /\ (hl_permutes A g s = 1 /\ (hl_IMAGE A A f t = t /\ hl_IMAGE A A g t = t))) -> (fun x :e A => hl_COND A (hl_IN A x t) (hl_o A A A f g x) x) = hl_o A A A (fun x :e A => hl_COND A (hl_IN A x t) (f x) x) (fun x :e A => hl_COND A (hl_IN A x t) (g x) x).
Admitted.

// HOL Light: Library/permutations.ml:476 / RESTRICT_INVERSE   (hash md5:8674353a319a633331e4472f98103e90)
Theorem hlt_RESTRICT_INVERSE : forall A:set, A <> Empty -> forall s t :e 2 :^: A, forall f :e A :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (hl_permutes A f s = 1 /\ hl_IMAGE A A f t = t)) -> (fun x :e A => hl_COND A (hl_IN A x t) (hl_inverse A A f x) x) = hl_inverse A A (fun x :e A => hl_COND A (hl_IN A x t) (f x) x).
Admitted.

// HOL Light: Library/permutations.ml:527 / RESTRICT_SWAP   (hash md5:94aa868347e5b0ffd514e4b928d2ded8)
Theorem hlt_RESTRICT_SWAP : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall a b :e A, hl_IN A a s = 1 /\ hl_IN A b s = 1 -> (fun x :e A => hl_COND A (hl_IN A x s) (hl_swap A (hl_pair A A a b) x) x) = hl_swap A (hl_pair A A a b).
Admitted.

// HOL Light: Library/permutations.ml:541 / ITERATE_PERMUTE   (hash md5:f07b4a76a1acef0b41c9f07d2d6c7e48)
Theorem hlt_ITERATE_PERMUTE : forall A B:set, A <> Empty -> B <> Empty -> forall op :e B :^: B :^: B, hl_monoidal B op = 1 -> forall f :e B :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> hl_iterate B A op s f = hl_iterate B A op s (hl_o A B A f p).
Admitted.

// HOL Light: Library/permutations.ml:548 / NSUM_PERMUTE   (hash md5:e33a81fd4e8811b7f62a41457c47f998)
Theorem hlt_NSUM_PERMUTE : forall A:set, A <> Empty -> forall f :e omega :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> hl_nsum A s f = hl_nsum A s (hl_o A omega A f p).
Admitted.

// HOL Light: Library/permutations.ml:553 / NSUM_PERMUTE_NUMSEG   (hash md5:4485e420ee839a9dd414c80d7dbb646e)
Theorem hlt_NSUM_PERMUTE_NUMSEG : forall f p :e omega :^: omega, forall m n :e omega, hl_permutes omega p (hl_numseg m n) = 1 -> hl_nsum omega (hl_numseg m n) f = hl_nsum omega (hl_numseg m n) (hl_o omega omega omega f p).
Admitted.

// HOL Light: Library/permutations.ml:557 / SUM_PERMUTE   (hash md5:46a82939f5ce7d3d2488891546bcb415)
Theorem hlt_SUM_PERMUTE : forall A:set, A <> Empty -> forall f :e R :^: A, forall p :e A :^: A, forall s :e 2 :^: A, hl_permutes A p s = 1 -> hl_sum A s f = hl_sum A s (hl_o A R A f p).
Admitted.

// HOL Light: Library/permutations.ml:562 / SUM_PERMUTE_NUMSEG   (hash md5:e0eb9f0200c57379745f0b1f0ab04ab5)
Theorem hlt_SUM_PERMUTE_NUMSEG : forall f :e R :^: omega, forall p :e omega :^: omega, forall m n :e omega, hl_permutes omega p (hl_numseg m n) = 1 -> hl_sum omega (hl_numseg m n) f = hl_sum omega (hl_numseg m n) (hl_o omega R omega f p).
Admitted.

// HOL Light: Library/permutations.ml:570 / SWAP_COMMON   (hash md5:5378997716558136a567600e7ede44f8)
Theorem hlt_SWAP_COMMON : forall A:set, A <> Empty -> forall a b c :e A, ~ a = c /\ ~ b = c -> hl_o A A A (hl_swap A (hl_pair A A a b)) (hl_swap A (hl_pair A A a c)) = hl_o A A A (hl_swap A (hl_pair A A b c)) (hl_swap A (hl_pair A A a b)).
Admitted.

// HOL Light: Library/permutations.ml:579 / SWAP_COMMON'   (hash md5:acaa09c860861bc3231c0d3a485bdadf)
Theorem hlt_SWAP_COMMON' : forall A:set, A <> Empty -> forall a b c :e A, ~ a = b /\ ~ a = c -> hl_o A A A (hl_swap A (hl_pair A A a c)) (hl_swap A (hl_pair A A b c)) = hl_o A A A (hl_swap A (hl_pair A A b c)) (hl_swap A (hl_pair A A a b)).
Admitted.

// HOL Light: Library/permutations.ml:586 / SWAP_INDEPENDENT   (hash md5:2e8ab2fdab67c3e2742ec688d367b311)
Theorem hlt_SWAP_INDEPENDENT : forall A:set, A <> Empty -> forall a b c d :e A, ~ a = c /\ (~ a = d /\ (~ b = c /\ ~ b = d)) -> hl_o A A A (hl_swap A (hl_pair A A a b)) (hl_swap A (hl_pair A A c d)) = hl_o A A A (hl_swap A (hl_pair A A c d)) (hl_swap A (hl_pair A A a b)).
Admitted.

// HOL Light: Library/permutations.ml:600 / three_cycle   (hash md5:50d51eced25bb8f280648a17d0a9b189)
Theorem hlt_three_cycle_thm : forall A:set, A <> Empty -> forall b c a :e A, hl_three_cycle A a b c = fun x :e A => hl_COND A (if x = a then 1 else 0) b (hl_COND A (if x = b then 1 else 0) c (hl_COND A (if x = c then 1 else 0) a x)).
Admitted.

// HOL Light: Library/permutations.ml:604 / PERMUTES_THREE_CYCLE   (hash md5:c985bd7370c2c51dc51f1b719255d123)
Theorem hlt_PERMUTES_THREE_CYCLE : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall a b c :e A, hl_IN A a s = 1 /\ (hl_IN A b s = 1 /\ (hl_IN A c s = 1 /\ (~ a = b /\ (~ b = c /\ ~ a = c)))) -> hl_permutes A (hl_three_cycle A a b c) s = 1.
Admitted.

// HOL Light: Library/permutations.ml:612 / THREE_CYCLE_COMPOSE_REVERSE   (hash md5:0e1dec28eb19f927b59cad158c458f8d)
Theorem hlt_THREE_CYCLE_COMPOSE_REVERSE : forall A:set, A <> Empty -> forall a b c :e A, ~ a = b /\ (~ b = c /\ ~ a = c) -> hl_o A A A (hl_three_cycle A a b c) (hl_three_cycle A a c b) = hl_I A /\ hl_o A A A (hl_three_cycle A a c b) (hl_three_cycle A a b c) = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:618 / THREE_CYCLE_INVERSE   (hash md5:bc0494c16d3e51238dc878a64bbe1655)
Theorem hlt_THREE_CYCLE_INVERSE : forall A:set, A <> Empty -> forall a b c :e A, ~ a = b /\ (~ b = c /\ ~ a = c) -> hl_inverse A A (hl_three_cycle A a b c) = hl_three_cycle A a c b.
Admitted.

// HOL Light: Library/permutations.ml:631 / THREE_CYCLE_AS_COMMUTATOR   (hash md5:6e18b6f895065643bb994d15d08292f0)
Theorem hlt_THREE_CYCLE_AS_COMMUTATOR : forall A:set, A <> Empty -> forall a b c d e1 :e A, ~ a = b /\ (~ a = c /\ (~ a = d /\ (~ a = e1 /\ (~ b = c /\ (~ b = d /\ (~ b = e1 /\ (~ c = d /\ (~ c = e1 /\ ~ d = e1)))))))) -> hl_three_cycle A a b c = hl_o A A A (hl_three_cycle A d c a) (hl_o A A A (hl_three_cycle A c b e1) (hl_o A A A (hl_three_cycle A d a c) (hl_three_cycle A c e1 b))).
Admitted.

// HOL Light: Library/permutations.ml:653 / THREE_CYCLE_COMMUTATOR   (hash md5:e1ebc255c8bff3151cfc4fc8fe7e7cd0)
Theorem hlt_THREE_CYCLE_COMMUTATOR : forall A:set, A <> Empty -> forall a b c d e1 :e A, ~ a = b /\ (~ a = c /\ (~ a = d /\ (~ a = e1 /\ (~ b = c /\ (~ b = d /\ (~ b = e1 /\ (~ c = d /\ (~ c = e1 /\ ~ d = e1)))))))) -> hl_three_cycle A a b c = hl_o A A A (hl_inverse A A (hl_three_cycle A d a c)) (hl_o A A A (hl_inverse A A (hl_three_cycle A c e1 b)) (hl_o A A A (hl_three_cycle A d a c) (hl_three_cycle A c e1 b))).
Admitted.

// HOL Light: Library/permutations.ml:674 / THREE_CYCLE_NOT_I   (hash md5:eb541ac6a789870ec954e2c1359e2f79)
Theorem hlt_THREE_CYCLE_NOT_I : forall A:set, A <> Empty -> forall a b c :e A, ~ a = b /\ (~ b = c /\ ~ a = c) -> ~ hl_three_cycle A a b c = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:683 / swapseq_CASES   (hash md5:1a22039f5e43bec187621e8c728e53ef)
Theorem hlt_swapseq_CASES : forall A:set, A <> Empty -> forall a0 :e omega, forall a1 :e A :^: A, hl_swapseq A a0 a1 = 1 <-> a0 = hl_NUMERAL hl_zero /\ a1 = hl_I A \/ exists a b :e A, exists p :e A :^: A, exists n :e omega, a0 = hl_SUC n /\ (a1 = hl_o A A A (hl_swap A (hl_pair A A a b)) p /\ (hl_swapseq A n p = 1 /\ ~ a = b)).
Admitted.

// HOL Light: Library/permutations.ml:683 / swapseq_INDUCT   (hash md5:bc344b78c2300369eeaf68fdbad430a0)
Theorem hlt_swapseq_INDUCT : forall A:set, A <> Empty -> forall swapseq' :e 2 :^: (A :^: A) :^: omega, swapseq' (hl_NUMERAL hl_zero) (hl_I A) = 1 /\ (forall a b :e A, forall p :e A :^: A, forall n :e omega, swapseq' n p = 1 /\ ~ a = b -> swapseq' (hl_SUC n) (hl_o A A A (hl_swap A (hl_pair A A a b)) p) = 1) -> forall a0 :e omega, forall a1 :e A :^: A, hl_swapseq A a0 a1 = 1 -> swapseq' a0 a1 = 1.
Admitted.

// HOL Light: Library/permutations.ml:683 / swapseq_RULES   (hash md5:6521628853c95c3cf3c8c0b2e7e30d24)
Theorem hlt_swapseq_RULES : forall A:set, A <> Empty -> hl_swapseq A (hl_NUMERAL hl_zero) (hl_I A) = 1 /\ forall a b :e A, forall p :e A :^: A, forall n :e omega, hl_swapseq A n p = 1 /\ ~ a = b -> hl_swapseq A (hl_SUC n) (hl_o A A A (hl_swap A (hl_pair A A a b)) p) = 1.
Admitted.

// HOL Light: Library/permutations.ml:687 / permutation   (hash md5:3eb329ba5563e1e7d123d9decd006f90)
Theorem hlt_permutation_thm : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 <-> exists n :e omega, hl_swapseq A n p = 1.
Admitted.

// HOL Light: Library/permutations.ml:694 / SWAPSEQ_I   (hash md5:be3fcbfd9a393ae9655859f600aa9d06)
Theorem hlt_SWAPSEQ_I : forall A:set, A <> Empty -> hl_swapseq A (hl_NUMERAL hl_zero) (hl_I A) = 1.
Admitted.

// HOL Light: Library/permutations.ml:696 / PERMUTATION_I   (hash md5:0738a82f90f7f537c5fada550cb16ee4)
Theorem hlt_PERMUTATION_I : forall A:set, A <> Empty -> hl_permutation A (hl_I A) = 1.
Admitted.

// HOL Light: Library/permutations.ml:700 / SWAPSEQ_SWAP   (hash md5:deb9c355cb70552fb028910e9638e127)
Theorem hlt_SWAPSEQ_SWAP : forall A:set, A <> Empty -> forall a b :e A, hl_swapseq A (hl_COND omega (if a = b then 1 else 0) (hl_NUMERAL hl_zero) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_swap A (hl_pair A A a b)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:705 / PERMUTATION_SWAP   (hash md5:b2c6698b3e7b8f932c3440cbbf656d4a)
Theorem hlt_PERMUTATION_SWAP : forall A:set, A <> Empty -> forall a b :e A, hl_permutation A (hl_swap A (hl_pair A A a b)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:709 / SWAPSEQ_COMPOSE   (hash md5:5fcafb3bd03f49d755bd6f945047bd6f)
Theorem hlt_SWAPSEQ_COMPOSE : forall A:set, A <> Empty -> forall n :e omega, forall p :e A :^: A, forall m :e omega, forall q :e A :^: A, hl_swapseq A n p = 1 /\ hl_swapseq A m q = 1 -> hl_swapseq A (hl_add n m) (hl_o A A A p q) = 1.
Admitted.

// HOL Light: Library/permutations.ml:716 / PERMUTATION_COMPOSE   (hash md5:964fe68e37bf3381fd4594e609dad12f)
Theorem hlt_PERMUTATION_COMPOSE : forall A:set, A <> Empty -> forall p q :e A :^: A, hl_permutation A p = 1 /\ hl_permutation A q = 1 -> hl_permutation A (hl_o A A A p q) = 1.
Admitted.

// HOL Light: Library/permutations.ml:720 / SWAPSEQ_ENDSWAP   (hash md5:68f1bb3028ae9406ec51ccc5fb707ea5)
Theorem hlt_SWAPSEQ_ENDSWAP : forall A:set, A <> Empty -> forall n :e omega, forall p :e A :^: A, forall a b :e A, hl_swapseq A n p = 1 /\ ~ a = b -> hl_swapseq A (hl_SUC n) (hl_o A A A p (hl_swap A (hl_pair A A a b))) = 1.
Admitted.

// HOL Light: Library/permutations.ml:726 / SWAPSEQ_INVERSE_EXISTS   (hash md5:29b05587b0d866ff84c28342fc57a660)
Theorem hlt_SWAPSEQ_INVERSE_EXISTS : forall A:set, A <> Empty -> forall n :e omega, forall p :e A :^: A, hl_swapseq A n p = 1 -> exists q :e A :^: A, hl_swapseq A n q = 1 /\ (hl_o A A A p q = hl_I A /\ hl_o A A A q p = hl_I A).
Admitted.

// HOL Light: Library/permutations.ml:738 / SWAPSEQ_INVERSE   (hash md5:6c1f7ee3e7e907914269c48fff302d5e)
Theorem hlt_SWAPSEQ_INVERSE : forall A:set, A <> Empty -> forall n :e omega, forall p :e A :^: A, hl_swapseq A n p = 1 -> hl_swapseq A n (hl_inverse A A p) = 1.
Admitted.

// HOL Light: Library/permutations.ml:742 / PERMUTATION_INVERSE   (hash md5:7322569a0f0e8adcdf67d99ce122cf11)
Theorem hlt_PERMUTATION_INVERSE : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 -> hl_permutation A (hl_inverse A A p) = 1.
Admitted.

// HOL Light: Library/permutations.ml:761 / SWAP_GENERAL   (hash md5:97603dbcf76487110ca4791ba9080922)
Theorem hlt_SWAP_GENERAL : forall A:set, A <> Empty -> forall a b c d :e A, ~ a = b /\ ~ c = d -> hl_o A A A (hl_swap A (hl_pair A A a b)) (hl_swap A (hl_pair A A c d)) = hl_I A \/ exists x y z :e A, ~ x = a /\ (~ y = a /\ (~ z = a /\ (~ x = y /\ hl_o A A A (hl_swap A (hl_pair A A a b)) (hl_swap A (hl_pair A A c d)) = hl_o A A A (hl_swap A (hl_pair A A x y)) (hl_swap A (hl_pair A A a z))))).
Admitted.

// HOL Light: Library/permutations.ml:778 / FIXING_SWAPSEQ_DECREASE   (hash md5:02fdf73c9b4f51d1f69e094b2a8897d5)
Theorem hlt_FIXING_SWAPSEQ_DECREASE : forall A:set, A <> Empty -> forall n :e omega, forall p :e A :^: A, forall a b :e A, hl_swapseq A n p = 1 /\ (~ a = b /\ hl_o A A A (hl_swap A (hl_pair A A a b)) p a = a) -> ~ n = hl_NUMERAL hl_zero /\ hl_swapseq A (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_o A A A (hl_swap A (hl_pair A A a b)) p) = 1.
Admitted.

// HOL Light: Library/permutations.ml:813 / SWAPSEQ_IDENTITY_EVEN   (hash md5:487084b2c8e9047b83269d4a4d892c66)
Theorem hlt_SWAPSEQ_IDENTITY_EVEN : forall A:set, A <> Empty -> forall n :e omega, hl_swapseq A n (hl_I A) = 1 -> hl_EVEN n = 1.
Admitted.

// HOL Light: Library/permutations.ml:833 / evenperm   (hash md5:51441ad5f18ab92f7d3eb6e4161bd4ee)
Theorem hlt_evenperm_thm : forall A:set, A <> Empty -> forall p :e A :^: A, hl_evenperm A p = 1 <-> hl_EVEN (hl_select omega (fun n :e omega => hl_swapseq A n p)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:835 / SWAPSEQ_EVEN_EVEN   (hash md5:6e2478b7040b04a781247f289c60eb62)
Theorem hlt_SWAPSEQ_EVEN_EVEN : forall A:set, A <> Empty -> forall m n :e omega, forall p :e A :^: A, hl_swapseq A m p = 1 /\ hl_swapseq A n p = 1 -> (hl_EVEN m = 1 <-> hl_EVEN n = 1).
Admitted.

// HOL Light: Library/permutations.ml:845 / EVENPERM_UNIQUE   (hash md5:e0968d274e3f7e5364b48f98cd31861c)
Theorem hlt_EVENPERM_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, forall p :e A :^: A, forall b :e 2, hl_swapseq A n p = 1 /\ (hl_EVEN n = 1 <-> b = 1) -> (hl_evenperm A p = 1 <-> b = 1).
Admitted.

// HOL Light: Library/permutations.ml:853 / EVENPERM_I   (hash md5:82bbbb739fd1f00f5902f4ea69e1c6c1)
Theorem hlt_EVENPERM_I : forall A:set, A <> Empty -> (hl_evenperm A (hl_I A) = 1 <-> True).
Admitted.

// HOL Light: Library/permutations.ml:857 / EVENPERM_ID   (hash md5:6d0cf498d40552dcaaae4143bd506633)
Theorem hlt_EVENPERM_ID : forall A:set, A <> Empty -> hl_evenperm A (fun x :e A => x) = 1.
Admitted.

// HOL Light: Library/permutations.ml:861 / EVENPERM_SWAP   (hash md5:e3609cbd0f6e6e861e32a20eede556a1)
Theorem hlt_EVENPERM_SWAP : forall A:set, A <> Empty -> forall a b :e A, hl_evenperm A (hl_swap A (hl_pair A A a b)) = 1 <-> a = b.
Admitted.

// HOL Light: Library/permutations.ml:866 / EVENPERM_COMPOSE   (hash md5:5a1a60205f776c6d5ddeb2350b22f374)
Theorem hlt_EVENPERM_COMPOSE : forall A:set, A <> Empty -> forall p q :e A :^: A, hl_permutation A p = 1 /\ hl_permutation A q = 1 -> (hl_evenperm A (hl_o A A A p q) = 1 <-> (hl_evenperm A p = 1 <-> hl_evenperm A q = 1)).
Admitted.

// HOL Light: Library/permutations.ml:875 / EVENPERM_INVERSE   (hash md5:26e783269ee74a4152562b385443f100)
Theorem hlt_EVENPERM_INVERSE : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 -> (hl_evenperm A (hl_inverse A A p) = 1 <-> hl_evenperm A p = 1).
Admitted.

// HOL Light: Library/permutations.ml:885 / PERMUTATION_BIJECTIVE   (hash md5:08cf2c164e47cd89f01bec8a1aa42e7e)
Theorem hlt_PERMUTATION_BIJECTIVE : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 -> forall y :e A, hl_exists_unique A (fun x :e A => if p x = y then 1 else 0) = 1.
Admitted.

// HOL Light: Library/permutations.ml:892 / PERMUTATION_FINITE_SUPPORT   (hash md5:c5b4a221279f1db0d6e17085e4a5e1e7)
Theorem hlt_PERMUTATION_FINITE_SUPPORT : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 -> hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_534 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_534 (if ~ p x = x then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:903 / PERMUTATION_LEMMA   (hash md5:4a21ac5559592db6ed7ec5522b4c22fd)
Theorem hlt_PERMUTATION_LEMMA : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall p :e A :^: A, hl_FINITE A s = 1 /\ ((forall y :e A, hl_exists_unique A (fun x :e A => if p x = y then 1 else 0) = 1) /\ (forall x :e A, ~ hl_IN A x s = 1 -> p x = x)) -> hl_permutation A p = 1.
Admitted.

// HOL Light: Library/permutations.ml:933 / PERMUTATION   (hash md5:4adfa308e6f676ac7b15045804cbac75)
Theorem hlt_PERMUTATION : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 <-> (forall y :e A, hl_exists_unique A (fun x :e A => if p x = y then 1 else 0) = 1) /\ hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_536 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_536 (if ~ p x = x then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:941 / PERMUTATION_INVERSE_WORKS   (hash md5:34e09f6c2fb192796e8ab5ee713ca358)
Theorem hlt_PERMUTATION_INVERSE_WORKS : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 -> hl_o A A A (hl_inverse A A p) p = hl_I A /\ hl_o A A A p (hl_inverse A A p) = hl_I A.
Admitted.

// HOL Light: Library/permutations.ml:946 / PERMUTATION_INVERSE_COMPOSE   (hash md5:a64d1baff30788b5609cf4eab9bfa9dc)
Theorem hlt_PERMUTATION_INVERSE_COMPOSE : forall A:set, A <> Empty -> forall p q :e A :^: A, hl_permutation A p = 1 /\ hl_permutation A q = 1 -> hl_inverse A A (hl_o A A A p q) = hl_o A A A (hl_inverse A A q) (hl_inverse A A p).
Admitted.

// HOL Light: Library/permutations.ml:955 / PERMUTATION_COMPOSE_EQ   (hash md5:450bf6ac1246e46558fdd4427ebd9a85)
Theorem hlt_PERMUTATION_COMPOSE_EQ : forall A:set, A <> Empty -> (forall p q :e A :^: A, hl_permutation A p = 1 -> (hl_permutation A (hl_o A A A p q) = 1 <-> hl_permutation A q = 1)) /\ forall p q :e A :^: A, hl_permutation A q = 1 -> (hl_permutation A (hl_o A A A p q) = 1 <-> hl_permutation A p = 1).
Admitted.

// HOL Light: Library/permutations.ml:969 / PERMUTATION_COMPOSE_SWAP   (hash md5:8bb3b59cf72ff763115cc2ce8bd31088)
Theorem hlt_PERMUTATION_COMPOSE_SWAP : forall A:set, A <> Empty -> (forall p :e A :^: A, forall a b :e A, hl_permutation A (hl_o A A A (hl_swap A (hl_pair A A a b)) p) = 1 <-> hl_permutation A p = 1) /\ forall p :e A :^: A, forall a b :e A, hl_permutation A (hl_o A A A p (hl_swap A (hl_pair A A a b))) = 1 <-> hl_permutation A p = 1.
Admitted.

// HOL Light: Library/permutations.ml:978 / PERMUTATION_PERMUTES   (hash md5:c0d1674e5153076b8d7a64f6e2ea41a7)
Theorem hlt_PERMUTATION_PERMUTES : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 <-> exists s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_permutes A p s = 1.
Admitted.

// HOL Light: Library/permutations.ml:986 / PERMUTATION_RESTRICT   (hash md5:8204e9b4410cc4477cb7bda2c9e03ecc)
Theorem hlt_PERMUTATION_RESTRICT : forall A:set, A <> Empty -> forall Q :e 2 :^: A, forall p :e A :^: A, hl_permutation A p = 1 /\ (forall x :e A, Q (p x) = 1 <-> Q x = 1) -> hl_permutation A (fun i :e A => hl_COND A (Q i) (p i) i) = 1.
Admitted.

// HOL Light: Library/permutations.ml:998 / PERMUTES_INDUCT   (hash md5:c7fc6dd2cad45285081dd1486d5a8d2e)
Theorem hlt_PERMUTES_INDUCT : forall A:set, A <> Empty -> forall P :e 2 :^: (A :^: A), forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (P (hl_I A) = 1 /\ (forall a b :e A, forall p :e A :^: A, hl_IN A a s = 1 /\ (hl_IN A b s = 1 /\ (P p = 1 /\ hl_permutation A p = 1)) -> P (hl_o A A A (hl_swap A (hl_pair A A a b)) p) = 1)) -> forall p :e A :^: A, hl_permutes A p s = 1 -> P p = 1.
Admitted.

// HOL Light: Library/permutations.ml:1018 / PERMUTES_INDUCT_STRONG   (hash md5:a1c36c6b8a84f46d68bd8b5b8b0ec5c1)
Theorem hlt_PERMUTES_INDUCT_STRONG : forall A:set, A <> Empty -> forall P :e 2 :^: (A :^: A), forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (P (hl_I A) = 1 /\ (forall a b :e A, forall p :e A :^: A, hl_IN A a s = 1 /\ (hl_IN A b s = 1 /\ (~ a = b /\ (P p = 1 /\ hl_permutes A p s = 1))) -> P (hl_o A A A (hl_swap A (hl_pair A A a b)) p) = 1)) -> forall p :e A :^: A, hl_permutes A p s = 1 -> P p = 1.
Admitted.

// HOL Light: Library/permutations.ml:1036 / sign   (hash md5:7c5acd423c03ad2404ec73fa7f7b7bbe)
Theorem hlt_sign_thm : forall A:set, A <> Empty -> forall p :e A :^: A, hl_sign A p = hl_COND R (hl_evenperm A p) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/permutations.ml:1039 / SIGN_NZ   (hash md5:d9e37369d50713877b596c7e59c992a8)
Theorem hlt_SIGN_NZ : forall A:set, A <> Empty -> forall p :e A :^: A, ~ hl_sign A p = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/permutations.ml:1043 / SIGN_I   (hash md5:751f7e8ad5232b4bc22ec416ffa17d8e)
Theorem hlt_SIGN_I : forall A:set, A <> Empty -> hl_sign A (hl_I A) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/permutations.ml:1047 / SIGN_ID   (hash md5:025435aea6a845a01b7b05621f03adbb)
Theorem hlt_SIGN_ID : forall A:set, A <> Empty -> hl_sign A (fun x :e A => x) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/permutations.ml:1051 / SIGN_INVERSE   (hash md5:52aa97ed7622a7451e405b023db7aff9)
Theorem hlt_SIGN_INVERSE : forall A:set, A <> Empty -> forall p :e A :^: A, hl_permutation A p = 1 -> hl_sign A (hl_inverse A A p) = hl_sign A p.
Admitted.

// HOL Light: Library/permutations.ml:1055 / SIGN_COMPOSE   (hash md5:aa9b7ccbd226c5372546f6fbf856142b)
Theorem hlt_SIGN_COMPOSE : forall A:set, A <> Empty -> forall p q :e A :^: A, hl_permutation A p = 1 /\ hl_permutation A q = 1 -> hl_sign A (hl_o A A A p q) = hl_real_mul (hl_sign A p) (hl_sign A q).
Admitted.

// HOL Light: Library/permutations.ml:1059 / SIGN_SWAP   (hash md5:86d74d579fc098829183cf353b2beb7e)
Theorem hlt_SIGN_SWAP : forall A:set, A <> Empty -> forall a b :e A, hl_sign A (hl_swap A (hl_pair A A a b)) = hl_COND R (if a = b then 1 else 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/permutations.ml:1063 / SIGN_IDEMPOTENT   (hash md5:4a30df38d3411fb888503f4bb6ba812a)
Theorem hlt_SIGN_IDEMPOTENT : forall A:set, A <> Empty -> forall p :e A :^: A, hl_real_mul (hl_sign A p) (hl_sign A p) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/permutations.ml:1068 / REAL_ABS_SIGN   (hash md5:75aa8f31a550c90d8d6172abe2bd72d8)
Theorem hlt_REAL_ABS_SIGN : forall A:set, A <> Empty -> forall p :e A :^: A, hl_real_abs (hl_sign A p) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Library/permutations.ml:1072 / REAL_SGN_SIGN   (hash md5:1fc78112d2196a128d974d11ce4f8a43)
Theorem hlt_REAL_SGN_SIGN : forall A:set, A <> Empty -> forall p :e A :^: A, hl_real_sgn (hl_sign A p) = hl_sign A p.
Admitted.

// HOL Light: Library/permutations.ml:1078 / EVENPERM_TRANSFER   (hash md5:8ea5306c6ee9609e5cd31a8341e1cdc7)
Theorem hlt_EVENPERM_TRANSFER : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall p :e A :^: A, forall q :e B :^: B, hl_FINITE A s = 1 /\ ((forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ (hl_permutes A p s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> q (f x) = f (p x)) /\ (forall y :e B, ~ hl_IN B y (hl_IMAGE A B f s) = 1 -> q y = y)))) -> (hl_evenperm B q = 1 <-> hl_evenperm A p = 1).
Admitted.

// HOL Light: Library/permutations.ml:1130 / SIGN_TRANSFER   (hash md5:3daf5b1dd488bccfe7f21a22c2245104)
Theorem hlt_SIGN_TRANSFER : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall p :e A :^: A, forall q :e B :^: B, hl_FINITE A s = 1 /\ ((forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ (hl_permutes A p s = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> q (f x) = f (p x)) /\ (forall y :e B, ~ hl_IN B y (hl_IMAGE A B f s) = 1 -> q y = y)))) -> hl_sign B q = hl_sign A p.
Admitted.

// HOL Light: Library/permutations.ml:1142 / SIGN_CARTESIAN_PRODUCT   (hash md5:b35d81693918fa6f32f2e49f8196627c)
Theorem hlt_SIGN_CARTESIAN_PRODUCT : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :^: A, forall q :e B :^: B, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ (hl_FINITE B t = 1 /\ (hl_permutes A p s = 1 /\ hl_permutes B q t = 1)) -> hl_sign (A :*: B) (hl_GABS ((A :*: B) :^: (A :*: B)) (fun f :e (A :*: B) :^: (A :*: B) => if forall i :e A, forall j :e B, hl_GEQ (A :*: B) (f (hl_pair A B i j)) (hl_COND (A :*: B) (if hl_IN A i s = 1 /\ hl_IN B j t = 1 then 1 else 0) (hl_pair A B (p i) (q j)) (hl_pair A B i j)) = 1 then 1 else 0)) = hl_real_mul (hl_real_pow (hl_sign A p) (hl_CARD B t)) (hl_real_pow (hl_sign B q) (hl_CARD A s)).
Admitted.

// HOL Light: Library/permutations.ml:1223 / PERMUTES_NUMSET_LE   (hash md5:57ad877c875e4251660ff5c4b9f548e2)
Theorem hlt_PERMUTES_NUMSET_LE : forall p :e omega :^: omega, forall s :e 2 :^: omega, hl_permutes omega p s = 1 /\ (forall i :e omega, hl_IN omega i s = 1 -> hl_le (p i) i = 1) -> p = hl_I omega.
Admitted.

// HOL Light: Library/permutations.ml:1231 / PERMUTES_NUMSET_GE   (hash md5:5968298d69d04ce1f99fabfa912e67ab)
Theorem hlt_PERMUTES_NUMSET_GE : forall p :e omega :^: omega, forall s :e 2 :^: omega, hl_permutes omega p s = 1 /\ (forall i :e omega, hl_IN omega i s = 1 -> hl_le i (p i) = 1) -> p = hl_I omega.
Admitted.

// HOL Light: Library/permutations.ml:1239 / IMAGE_INVERSE_PERMUTATIONS   (hash md5:9c4e4536a7851c35dee42205ab75077a)
Theorem hlt_IMAGE_INVERSE_PERMUTATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_GSPEC (A :^: A) (fun GEN_PVAR_538 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_538 (hl_permutes A p s) (hl_inverse A A p) = 1 then 1 else 0) = hl_GSPEC (A :^: A) (fun GEN_PVAR_539 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_539 (hl_permutes A p s) p = 1 then 1 else 0).
Admitted.

// HOL Light: Library/permutations.ml:1244 / IMAGE_COMPOSE_PERMUTATIONS_L   (hash md5:1f68f2644ee047a1bddc09dff61e7c4d)
Theorem hlt_IMAGE_COMPOSE_PERMUTATIONS_L : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall q :e A :^: A, hl_permutes A q s = 1 -> hl_GSPEC (A :^: A) (fun GEN_PVAR_540 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_540 (hl_permutes A p s) (hl_o A A A q p) = 1 then 1 else 0) = hl_GSPEC (A :^: A) (fun GEN_PVAR_541 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_541 (hl_permutes A p s) p = 1 then 1 else 0).
Admitted.

// HOL Light: Library/permutations.ml:1253 / IMAGE_COMPOSE_PERMUTATIONS_R   (hash md5:15c8976590b731b8986a78da81484b6e)
Theorem hlt_IMAGE_COMPOSE_PERMUTATIONS_R : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall q :e A :^: A, hl_permutes A q s = 1 -> hl_GSPEC (A :^: A) (fun GEN_PVAR_542 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_542 (hl_permutes A p s) (hl_o A A A p q) = 1 then 1 else 0) = hl_GSPEC (A :^: A) (fun GEN_PVAR_543 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_543 (hl_permutes A p s) p = 1 then 1 else 0).
Admitted.

// HOL Light: Library/permutations.ml:1262 / PERMUTES_IN_NUMSEG   (hash md5:870ab476ca26a00536997c3cb1960586)
Theorem hlt_PERMUTES_IN_NUMSEG : forall p :e omega :^: omega, forall n i :e omega, hl_permutes omega p (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 /\ hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) = 1 -> hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) (p i) = 1 /\ hl_le (p i) n = 1.
Admitted.

// HOL Light: Library/permutations.ml:1266 / SUM_PERMUTATIONS_INVERSE   (hash md5:02772a0da4430f35f90fca2203aefce5)
Theorem hlt_SUM_PERMUTATIONS_INVERSE : forall f :e R :^: (omega :^: omega), forall m n :e omega, hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_546 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_546 (hl_permutes omega p (hl_numseg m n)) p = 1 then 1 else 0)) f = hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_547 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_547 (hl_permutes omega p (hl_numseg m n)) p = 1 then 1 else 0)) (fun p :e omega :^: omega => f (hl_inverse omega omega p)).
Admitted.

// HOL Light: Library/permutations.ml:1278 / SUM_PERMUTATIONS_COMPOSE_L   (hash md5:cf1aaf705c294ddab655382ca5693ea5)
Theorem hlt_SUM_PERMUTATIONS_COMPOSE_L : forall f :e R :^: (omega :^: omega), forall m n :e omega, forall q :e omega :^: omega, hl_permutes omega q (hl_numseg m n) = 1 -> hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_550 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_550 (hl_permutes omega p (hl_numseg m n)) p = 1 then 1 else 0)) f = hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_551 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_551 (hl_permutes omega p (hl_numseg m n)) p = 1 then 1 else 0)) (fun p :e omega :^: omega => f (hl_o omega omega omega q p)).
Admitted.

// HOL Light: Library/permutations.ml:1297 / SUM_PERMUTATIONS_COMPOSE_R   (hash md5:9dd0380d63e962cdede88f1e96a1e2ba)
Theorem hlt_SUM_PERMUTATIONS_COMPOSE_R : forall f :e R :^: (omega :^: omega), forall m n :e omega, forall q :e omega :^: omega, hl_permutes omega q (hl_numseg m n) = 1 -> hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_554 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_554 (hl_permutes omega p (hl_numseg m n)) p = 1 then 1 else 0)) f = hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_555 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_555 (hl_permutes omega p (hl_numseg m n)) p = 1 then 1 else 0)) (fun p :e omega :^: omega => f (hl_o omega omega omega p q)).
Admitted.

// HOL Light: Library/permutations.ml:1316 / CARD_EVEN_PERMUTATIONS   (hash md5:0120b7286dfde8a2c862da208d0af416)
Theorem hlt_CARD_EVEN_PERMUTATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_CARD A s) = 1 -> hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_CARD (A :^: A) (hl_GSPEC (A :^: A) (fun GEN_PVAR_567 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_567 (if hl_permutes A p s = 1 /\ hl_evenperm A p = 1 then 1 else 0) p = 1 then 1 else 0))) = hl_FACT (hl_CARD A s).
Admitted.

// HOL Light: Library/permutations.ml:1361 / PERMUTES_INVOLUTION   (hash md5:097ae846765c7d1aad291244fe38fe0d)
Theorem hlt_PERMUTES_INVOLUTION : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, (forall x :e A, p (p x) = x) /\ (forall x :e A, ~ hl_IN A x s = 1 -> p x = x) -> hl_permutes A p s = 1.
Admitted.

// HOL Light: Library/permutations.ml:1367 / SIGN_INVOLUTION   (hash md5:f1ad8c14627d6c37d346c46cec67586c)
Theorem hlt_SIGN_INVOLUTION : forall A:set, A <> Empty -> forall p :e A :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ((forall x :e A, p (p x) = x) /\ (forall x :e A, ~ hl_IN A x s = 1 -> p x = x)) -> hl_sign A p = hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_DIV (hl_CARD A (hl_GSPEC A (fun GEN_PVAR_571 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_571 (if ~ p x = x then 1 else 0) x = 1 then 1 else 0))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/permutations.ml:1410 / PERMUTES_CYCLIC   (hash md5:7e8b95434b322b70fb9fc2f242b070cc)
Theorem hlt_PERMUTES_CYCLIC : forall n :e omega, hl_permutes omega (fun i :e omega => hl_COND omega (hl_lt i n) (hl_MOD (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero))) n) i) (hl_GSPEC omega (fun GEN_PVAR_572 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_572 (hl_lt i n) i = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:1416 / PERMUTES_CYCLIC_N   (hash md5:e1b32139d65459120e8afe9cfe01ab92)
Theorem hlt_PERMUTES_CYCLIC_N : forall n k :e omega, hl_permutes omega (fun i :e omega => hl_COND omega (hl_lt i n) (hl_MOD (hl_add i k) n) i) (hl_GSPEC omega (fun GEN_PVAR_573 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_573 (hl_lt i n) i = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/permutations.ml:1432 / PERMUTATION_CYCLIC   (hash md5:5b023e6917da9481aeb4a768c3df3ae2)
Theorem hlt_PERMUTATION_CYCLIC : forall n :e omega, hl_permutation omega (fun i :e omega => hl_COND omega (hl_lt i n) (hl_MOD (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero))) n) i) = 1.
Admitted.

// HOL Light: Library/permutations.ml:1438 / PERMUTATION_CYCLIC_N   (hash md5:a0f8d9a473912ca8e96b07f2846acb85)
Theorem hlt_PERMUTATION_CYCLIC_N : forall n k :e omega, hl_permutation omega (fun i :e omega => hl_COND omega (hl_lt i n) (hl_MOD (hl_add i k) n) i) = 1.
Admitted.

// HOL Light: Library/permutations.ml:1444 / EVENPERM_CYCLIC   (hash md5:d00651eafed8e8fb7e2dca8beec4ff45)
Theorem hlt_EVENPERM_CYCLIC : forall n :e omega, hl_evenperm omega (fun i :e omega => hl_COND omega (hl_lt i n) (hl_MOD (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero))) n) i) = 1 <-> n = hl_NUMERAL hl_zero \/ hl_ODD n = 1.
Admitted.

// HOL Light: Library/permutations.ml:1467 / EVENPERM_CYCLIC_N   (hash md5:c43a6e53c5a4e5f19f54367a4509a6ff)
Theorem hlt_EVENPERM_CYCLIC_N : forall n k :e omega, hl_evenperm omega (fun i :e omega => hl_COND omega (hl_lt i n) (hl_MOD (hl_add i k) n) i) = 1 <-> n = hl_NUMERAL hl_zero \/ (hl_ODD n = 1 \/ hl_EVEN k = 1).
Admitted.

// HOL Light: Library/permutations.ml:1487 / SIGN_CYCLIC   (hash md5:492da8eb710d94fad5ca18e977c3fd4d)
Theorem hlt_SIGN_CYCLIC : forall n :e omega, hl_sign omega (fun i :e omega => hl_COND omega (hl_lt i n) (hl_MOD (hl_add i (hl_NUMERAL (hl_BIT1 hl_zero))) n) i) = hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/permutations.ml:1494 / SIGN_CYCLIC_N   (hash md5:8c3ece3f925ccbf7ee8a70f954f1f7ed)
Theorem hlt_SIGN_CYCLIC_N : forall n k :e omega, hl_sign omega (fun i :e omega => hl_COND omega (hl_lt i n) (hl_MOD (hl_add i k) n) i) = hl_real_pow (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_mul k (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Library/permutations.ml:1533 / SUM_OVER_PERMUTATIONS_INSERT   (hash md5:0bd594f3d44e43ed0f89e8333d7b5194)
Theorem hlt_SUM_OVER_PERMUTATIONS_INSERT : forall A:set, A <> Empty -> forall f :e R :^: (A :^: A), forall a :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ ~ hl_IN A a s = 1 -> hl_sum (A :^: A) (hl_GSPEC (A :^: A) (fun GEN_PVAR_580 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_580 (hl_permutes A p (hl_INSERT A a s)) p = 1 then 1 else 0)) f = hl_sum A (hl_INSERT A a s) (fun b :e A => hl_sum (A :^: A) (hl_GSPEC (A :^: A) (fun GEN_PVAR_581 :e A :^: A => if exists p :e A :^: A, hl_SETSPEC (A :^: A) GEN_PVAR_581 (hl_permutes A p s) p = 1 then 1 else 0)) (fun q :e A :^: A => f (hl_o A A A (hl_swap A (hl_pair A A a b)) q))).
Admitted.

// HOL Light: Library/permutations.ml:1555 / SUM_OVER_PERMUTATIONS_NUMSEG   (hash md5:d793b8a6b2af598f90455751912fbfba)
Theorem hlt_SUM_OVER_PERMUTATIONS_NUMSEG : forall f :e R :^: (omega :^: omega), forall m n :e omega, hl_le m n = 1 -> hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_582 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_582 (hl_permutes omega p (hl_numseg m n)) p = 1 then 1 else 0)) f = hl_sum omega (hl_numseg m n) (fun i :e omega => hl_sum (omega :^: omega) (hl_GSPEC (omega :^: omega) (fun GEN_PVAR_583 :e omega :^: omega => if exists p :e omega :^: omega, hl_SETSPEC (omega :^: omega) GEN_PVAR_583 (hl_permutes omega p (hl_numseg (hl_add m (hl_NUMERAL (hl_BIT1 hl_zero))) n)) p = 1 then 1 else 0)) (fun q :e omega :^: omega => f (hl_o omega omega omega (hl_swap omega (hl_pair omega omega m i)) q))).
Admitted.

