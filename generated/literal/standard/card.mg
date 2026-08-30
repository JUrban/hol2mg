// hol2mg literal statements (private): shard card of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/card.ml:14 / sum_DISTINCT   (hash md5:428566e14eb3b1170ace4ae1c7ef3f9f)
Theorem hlt_sum_DISTINCT : forall A B:set, A <> Empty -> B <> Empty -> forall a :e A, forall a' :e B, ~ hl_INL A B a = hl_INR B A a'.
Admitted.

// HOL Light: Library/card.ml:16 / sum_INJECTIVE   (hash md5:4dc8691e573b0b834549aabbd47cacde)
Theorem hlt_sum_INJECTIVE : forall A B:set, A <> Empty -> B <> Empty -> (forall a a' :e A, hl_INL A B a = hl_INL A B a' <-> a = a') /\ forall a a' :e B, hl_INR B A a = hl_INR B A a' <-> a = a'.
Admitted.

// HOL Light: Library/card.ml:18 / sum_CASES   (hash md5:c8a76b084be4f7222dba46079e7cd728)
Theorem hlt_sum_CASES : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A :+: B, (exists a :e A, x = hl_INL A B a) \/ exists a :e B, x = hl_INR B A a.
Admitted.

// HOL Light: Library/card.ml:20 / FORALL_SUM_THM   (hash md5:396c2360800795498d045eb74e503e55)
Theorem hlt_FORALL_SUM_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (B :+: A), (forall z :e B :+: A, P z = 1) <-> (forall x :e B, P (hl_INL B A x) = 1) /\ forall x :e A, P (hl_INR A B x) = 1.
Admitted.

// HOL Light: Library/card.ml:24 / EXISTS_SUM_THM   (hash md5:41787fdf327aecc8b950ea287ece8c88)
Theorem hlt_EXISTS_SUM_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (B :+: A), (exists z :e B :+: A, P z = 1) <-> (exists x :e B, P (hl_INL B A x) = 1) \/ exists x :e A, P (hl_INR A B x) = 1.
Admitted.

// HOL Light: Library/card.ml:32 / FLATTEN_LEMMA   (hash md5:e7470743d2d33643525f9f0328ebf3bd)
Theorem hlt_FLATTEN_LEMMA : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall g :e A :^: B, forall f :e B :^: A, (forall x :e A, hl_IN A x s = 1 -> g (f x) = x) <-> forall y :e B, forall x :e A, hl_IN A x s = 1 /\ y = f x -> g y = x.
Admitted.

// HOL Light: Library/card.ml:40 / TARSKI_SET   (hash md5:23b816c18716c0a44b6b64a89274f1db)
Theorem hlt_TARSKI_SET : forall A:set, A <> Empty -> forall f :e 2 :^: A :^: (2 :^: A), (forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_SUBSET A (f s) (f t) = 1) -> exists s :e 2 :^: A, f s = s.
Admitted.

// HOL Light: Library/card.ml:56 / INJECTIVE_LEFT_INVERSE_NONEMPTY   (hash md5:d4d865b2e89b6332c98b99964eb29bd6)
Theorem hlt_INJECTIVE_LEFT_INVERSE_NONEMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, forall f :e A :^: B, forall t :e 2 :^: A, (exists x :e B, hl_IN B x s = 1) -> ((forall x y :e B, hl_IN B x s = 1 /\ (hl_IN B y s = 1 /\ f x = f y) -> x = y) <-> exists g :e B :^: A, (forall y :e A, hl_IN A y t = 1 -> hl_IN B (g y) s = 1) /\ forall x :e B, hl_IN B x s = 1 -> g (f x) = x).
Admitted.

// HOL Light: Library/card.ml:68 / BIJECTIVE_INJECTIVE_SURJECTIVE   (hash md5:3de32746ab64cbf492f42abc21dc846b)
Theorem hlt_BIJECTIVE_INJECTIVE_SURJECTIVE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, forall f :e A :^: B, forall t :e 2 :^: A, (forall x :e B, hl_IN B x s = 1 -> hl_IN A (f x) t = 1) /\ (forall y :e A, hl_IN A y t = 1 -> hl_exists_unique B (fun x :e B => if hl_IN B x s = 1 /\ f x = y then 1 else 0) = 1) <-> (forall x :e B, hl_IN B x s = 1 -> hl_IN A (f x) t = 1) /\ ((forall x y :e B, hl_IN B x s = 1 /\ (hl_IN B y s = 1 /\ f x = f y) -> x = y) /\ forall y :e A, hl_IN A y t = 1 -> exists x :e B, hl_IN B x s = 1 /\ f x = y).
Admitted.

// HOL Light: Library/card.ml:76 / BIJECTIVE_INVERSES   (hash md5:3882524e0122ac8a86a1d1541d1c0403)
Theorem hlt_BIJECTIVE_INVERSES : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, forall f :e A :^: B, forall t :e 2 :^: A, (forall x :e B, hl_IN B x s = 1 -> hl_IN A (f x) t = 1) /\ (forall y :e A, hl_IN A y t = 1 -> hl_exists_unique B (fun x :e B => if hl_IN B x s = 1 /\ f x = y then 1 else 0) = 1) <-> (forall x :e B, hl_IN B x s = 1 -> hl_IN A (f x) t = 1) /\ exists g :e B :^: A, (forall y :e A, hl_IN A y t = 1 -> hl_IN B (g y) s = 1) /\ ((forall y :e A, hl_IN A y t = 1 -> f (g y) = y) /\ forall x :e B, hl_IN B x s = 1 -> g (f x) = x).
Admitted.

// HOL Light: Library/card.ml:94 / EQ_C_BIJECTIONS   (hash md5:3d34d9ad20c41c47c00b970407e1d2a1)
Theorem hlt_EQ_C_BIJECTIONS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 <-> exists f :e B :^: A, exists g :e A :^: B, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y.
Admitted.

// HOL Light: Library/card.ml:105 / EQ_C   (hash md5:8e3502c0b99ad72b50b4d7bf2b5cda0d)
Theorem hlt_EQ_C : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 <-> exists R1 :e 2 :^: (A :*: B), (forall x :e A, forall y :e B, R1 (hl_pair A B x y) = 1 -> hl_IN A x s = 1 /\ hl_IN B y t = 1) /\ ((forall x :e A, hl_IN A x s = 1 -> hl_exists_unique B (fun y :e B => if hl_IN B y t = 1 /\ R1 (hl_pair A B x y) = 1 then 1 else 0) = 1) /\ forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ R1 (hl_pair A B x y) = 1 then 1 else 0) = 1).
Admitted.

// HOL Light: Library/card.ml:120 / EQ_C_ALT   (hash md5:024246a4da1a5bfbacfdd070dc666c2d)
Theorem hlt_EQ_C_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 <-> exists R1 :e 2 :^: (A :*: B), (forall x :e A, hl_IN A x s = 1 -> hl_exists_unique B (fun y :e B => if hl_IN B y t = 1 /\ R1 (hl_pair A B x y) = 1 then 1 else 0) = 1) /\ forall y :e B, hl_IN B y t = 1 -> hl_exists_unique A (fun x :e A => if hl_IN A x s = 1 /\ R1 (hl_pair A B x y) = 1 then 1 else 0) = 1.
Admitted.

// HOL Light: Library/card.ml:134 / CARD_LE_REFL   (hash md5:c92febfb0c46b22688e37e848410c12d)
Theorem hlt_CARD_LE_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_sym_3c3d5f63 A A s s = 1.
Admitted.

// HOL Light: Library/card.ml:138 / CARD_EMPTY_LE   (hash md5:5c809ecd63e8aff0aeaeed999f382c74)
Theorem hlt_CARD_EMPTY_LE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, hl_sym_3c3d5f63 A B (hl_EMPTY A) s = 1.
Admitted.

// HOL Light: Library/card.ml:142 / CARD_LE_TRANS   (hash md5:eb77b5cac2fc3a640c4c47a5a877c1e8)
Theorem hlt_CARD_LE_TRANS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3c3d5f63 A B s t = 1 /\ hl_sym_3c3d5f63 B C t u = 1 -> hl_sym_3c3d5f63 A C s u = 1.
Admitted.

// HOL Light: Library/card.ml:151 / CARD_LT_REFL   (hash md5:4f6ac9fd49cc641972e13c2ea0d9dfa2)
Theorem hlt_CARD_LT_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: A, ~ hl_sym_3c5f63 A A s s = 1.
Admitted.

// HOL Light: Library/card.ml:155 / CARD_LET_TRANS   (hash md5:29d3ae5b35f8c20371fa0e963ede9550)
Theorem hlt_CARD_LET_TRANS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3c3d5f63 A B s t = 1 /\ hl_sym_3c5f63 B C t u = 1 -> hl_sym_3c5f63 A C s u = 1.
Admitted.

// HOL Light: Library/card.ml:163 / CARD_LTE_TRANS   (hash md5:9bc71ec25f12729af7b31ed03b9ffcdd)
Theorem hlt_CARD_LTE_TRANS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3c5f63 A B s t = 1 /\ hl_sym_3c3d5f63 B C t u = 1 -> hl_sym_3c5f63 A C s u = 1.
Admitted.

// HOL Light: Library/card.ml:171 / CARD_LT_TRANS   (hash md5:2928c8463551051826e30509a8c60ecf)
Theorem hlt_CARD_LT_TRANS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3c5f63 A B s t = 1 /\ hl_sym_3c5f63 B C t u = 1 -> hl_sym_3c5f63 A C s u = 1.
Admitted.

// HOL Light: Library/card.ml:176 / CARD_EQ_REFL   (hash md5:5ef2f1bd4aca54e92bf09423da620442)
Theorem hlt_CARD_EQ_REFL : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_sym_3d5f63 A A s s = 1.
Admitted.

// HOL Light: Library/card.ml:181 / CARD_EQ_REFL_IMP   (hash md5:d2d4ab16c9bb87fe051933c3baf24fee)
Theorem hlt_CARD_EQ_REFL_IMP : forall A:set, A <> Empty -> forall s t :e 2 :^: A, s = t -> hl_sym_3d5f63 A A s t = 1.
Admitted.

// HOL Light: Library/card.ml:185 / CARD_EQ_SYM   (hash md5:2f74f88a788ad4d27b0e41772bd49ccf)
Theorem hlt_CARD_EQ_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 <-> hl_sym_3d5f63 B A t s = 1.
Admitted.

// HOL Light: Library/card.ml:192 / CARD_EQ_IMP_LE   (hash md5:9e97364a8905a1c77c45e611bfec0f9a)
Theorem hlt_CARD_EQ_IMP_LE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 -> hl_sym_3c3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:196 / CARD_LT_IMP_LE   (hash md5:c684f6694a2ba06fabeeb361d4d22c0d)
Theorem hlt_CARD_LT_IMP_LE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c5f63 A B s t = 1 -> hl_sym_3c3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:200 / CARD_LE_RELATIONAL   (hash md5:c89e1f6c9ef193a71fe6c587f3e7d81d)
Theorem hlt_CARD_LE_RELATIONAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall R1 :e 2 :^: B :^: A, (forall x :e A, forall y y' :e B, hl_IN A x s = 1 /\ (R1 x y = 1 /\ R1 x y' = 1) -> y = y') -> hl_sym_3c3d5f63 B A (hl_GSPEC B (fun GEN_PVAR_482 :e B => if exists y :e B, hl_SETSPEC B GEN_PVAR_482 (if exists x :e A, hl_IN A x s = 1 /\ R1 x y = 1 then 1 else 0) y = 1 then 1 else 0)) s = 1.
Admitted.

// HOL Light: Library/card.ml:208 / CARD_LE_RELATIONAL_FULL   (hash md5:ab5ee440bcbd1ffab51c0b6e161f5871)
Theorem hlt_CARD_LE_RELATIONAL_FULL : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, (forall y :e B, hl_IN B y t = 1 -> exists x :e A, hl_IN A x s = 1 /\ R1 x y = 1) /\ (forall x :e A, forall y y' :e B, hl_IN A x s = 1 /\ (hl_IN B y t = 1 /\ (hl_IN B y' t = 1 /\ (R1 x y = 1 /\ R1 x y' = 1))) -> y = y') -> hl_sym_3c3d5f63 B A t s = 1.
Admitted.

// HOL Light: Library/card.ml:217 / CARD_LE_EMPTY   (hash md5:bb5aad8abbb39ff65b00ea989b913644)
Theorem hlt_CARD_LE_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, hl_sym_3c3d5f63 B A s (hl_EMPTY A) = 1 <-> s = hl_EMPTY B.
Admitted.

// HOL Light: Library/card.ml:221 / CARD_EQ_EMPTY   (hash md5:8374b564c754f8343c36dcb878a2a03d)
Theorem hlt_CARD_EQ_EMPTY : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, hl_sym_3d5f63 B A s (hl_EMPTY A) = 1 <-> s = hl_EMPTY B.
Admitted.

// HOL Light: Library/card.ml:229 / CARD_LE_ANTISYM   (hash md5:ce8c5ca289a8463275ee16475d6a5742)
Theorem hlt_CARD_LE_ANTISYM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A B s t = 1 /\ hl_sym_3c3d5f63 B A t s = 1 <-> hl_sym_3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:250 / CARD_LE_TOTAL   (hash md5:f5c4c1f55f7ad223818640a2d130ab43)
Theorem hlt_CARD_LE_TOTAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A B s t = 1 \/ hl_sym_3c3d5f63 B A t s = 1.
Admitted.

// HOL Light: Library/card.ml:283 / CARD_LET_TOTAL   (hash md5:1fd7a76b447a5dd448999aee52585ab1)
Theorem hlt_CARD_LET_TOTAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A B s t = 1 \/ hl_sym_3c5f63 B A t s = 1.
Admitted.

// HOL Light: Library/card.ml:287 / CARD_LTE_TOTAL   (hash md5:c4f550ea426dba66716bc8ef11f3dd69)
Theorem hlt_CARD_LTE_TOTAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c5f63 A B s t = 1 \/ hl_sym_3c3d5f63 B A t s = 1.
Admitted.

// HOL Light: Library/card.ml:291 / CARD_LT_TOTAL   (hash md5:3f591f7b20548b50486b33d49ffd31fc)
Theorem hlt_CARD_LT_TOTAL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 \/ (hl_sym_3c5f63 A B s t = 1 \/ hl_sym_3c5f63 B A t s = 1).
Admitted.

// HOL Light: Library/card.ml:295 / CARD_NOT_LE   (hash md5:59e09cad696348bc16e107eca3fcce4b)
Theorem hlt_CARD_NOT_LE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, ~ hl_sym_3c3d5f63 A B s t = 1 <-> hl_sym_3c5f63 B A t s = 1.
Admitted.

// HOL Light: Library/card.ml:299 / CARD_NOT_LT   (hash md5:52ab8b61b3e44415d53464472683feee)
Theorem hlt_CARD_NOT_LT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, ~ hl_sym_3c5f63 A B s t = 1 <-> hl_sym_3c3d5f63 B A t s = 1.
Admitted.

// HOL Light: Library/card.ml:303 / CARD_LT_LE   (hash md5:9752e47ba9cccdc82441d3f361bb13c3)
Theorem hlt_CARD_LT_LE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c5f63 A B s t = 1 <-> hl_sym_3c3d5f63 A B s t = 1 /\ ~ hl_sym_3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:307 / CARD_LE_LT   (hash md5:2fac85f8627a7baef25cd3eb157e463e)
Theorem hlt_CARD_LE_LT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A B s t = 1 <-> hl_sym_3c5f63 A B s t = 1 \/ hl_sym_3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:313 / CARD_LE_CONG   (hash md5:ee72caaff535e0cb5efa9e25efb10a71)
Theorem hlt_CARD_LE_CONG : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: A, forall s' :e 2 :^: B, forall t :e 2 :^: C, forall t' :e 2 :^: D, hl_sym_3d5f63 A B s s' = 1 /\ hl_sym_3d5f63 C D t t' = 1 -> (hl_sym_3c3d5f63 A C s t = 1 <-> hl_sym_3c3d5f63 B D s' t' = 1).
Admitted.

// HOL Light: Library/card.ml:325 / CARD_LT_CONG   (hash md5:a4c5cb6d12e75541e8c0bfea610bc6ab)
Theorem hlt_CARD_LT_CONG : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: A, forall s' :e 2 :^: B, forall t :e 2 :^: C, forall t' :e 2 :^: D, hl_sym_3d5f63 A B s s' = 1 /\ hl_sym_3d5f63 C D t t' = 1 -> (hl_sym_3c5f63 A C s t = 1 <-> hl_sym_3c5f63 B D s' t' = 1).
Admitted.

// HOL Light: Library/card.ml:332 / CARD_EQ_TRANS   (hash md5:47017edbc429d6cc357f30bbdf70344b)
Theorem hlt_CARD_EQ_TRANS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3d5f63 A B s t = 1 /\ hl_sym_3d5f63 B C t u = 1 -> hl_sym_3d5f63 A C s u = 1.
Admitted.

// HOL Light: Library/card.ml:338 / CARD_EQ_CONG   (hash md5:dbdc42eda94652d028175691492ffb28)
Theorem hlt_CARD_EQ_CONG : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: A, forall s' :e 2 :^: B, forall t :e 2 :^: C, forall t' :e 2 :^: D, hl_sym_3d5f63 A B s s' = 1 /\ hl_sym_3d5f63 C D t t' = 1 -> (hl_sym_3d5f63 A C s t = 1 <-> hl_sym_3d5f63 B D s' t' = 1).
Admitted.

// HOL Light: Library/card.ml:350 / INFINITE_CARD_LE   (hash md5:95a3b876c3df703fe0ee7a194c6dbedb)
Theorem hlt_INFINITE_CARD_LE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INFINITE A s = 1 <-> hl_sym_3c3d5f63 omega A (hl_UNIV omega) s = 1.
Admitted.

// HOL Light: Library/card.ml:354 / FINITE_CARD_LT   (hash md5:afb746428a494c96606bad69c5e071ca)
Theorem hlt_FINITE_CARD_LT : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 <-> hl_sym_3c5f63 A omega s (hl_UNIV omega) = 1.
Admitted.

// HOL Light: Library/card.ml:359 / CARD_LE_SUBSET   (hash md5:236a90083e969be63b7e68be872a5bf5)
Theorem hlt_CARD_LE_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_SUBSET A s t = 1 -> hl_sym_3c3d5f63 A A s t = 1.
Admitted.

// HOL Light: Library/card.ml:363 / CARD_LE_UNIV   (hash md5:0b578721eaf13f2659a7d5113025a9f5)
Theorem hlt_CARD_LE_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_sym_3c3d5f63 A A s (hl_UNIV A) = 1.
Admitted.

// HOL Light: Library/card.ml:367 / CARD_LE_EQ_SUBSET   (hash md5:52f83580d7038f7c96ab8ac61faffa92)
Theorem hlt_CARD_LE_EQ_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A B s t = 1 <-> exists u :e 2 :^: B, hl_SUBSET B u t = 1 /\ hl_sym_3d5f63 A B s u = 1.
Admitted.

// HOL Light: Library/card.ml:382 / CARD_LE_EQ_SUBSET_UNIV   (hash md5:1340a1f2225a235d38f1249748dbeb55)
Theorem hlt_CARD_LE_EQ_SUBSET_UNIV : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, (exists t :e 2 :^: B, hl_sym_3d5f63 B A t s = 1) <-> hl_sym_3c3d5f63 A B s (hl_UNIV B) = 1.
Admitted.

// HOL Light: Library/card.ml:387 / CARD_INFINITE_CONG   (hash md5:c18fe82db35bdfafa32c94fe51a2c648)
Theorem hlt_CARD_INFINITE_CONG : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 -> (hl_INFINITE A s = 1 <-> hl_INFINITE B t = 1).
Admitted.

// HOL Light: Library/card.ml:392 / CARD_FINITE_CONG   (hash md5:0793f3b2a318bb29a8d612643ba0bb96)
Theorem hlt_CARD_FINITE_CONG : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 -> (hl_FINITE A s = 1 <-> hl_FINITE B t = 1).
Admitted.

// HOL Light: Library/card.ml:397 / CARD_LE_FINITE   (hash md5:5cdeaded5620bb49d773a0b7abd2c459)
Theorem hlt_CARD_LE_FINITE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE B t = 1 /\ hl_sym_3c3d5f63 A B s t = 1 -> hl_FINITE A s = 1.
Admitted.

// HOL Light: Library/card.ml:401 / CARD_EQ_FINITE   (hash md5:a8c596df897464973c9004d3608fa285)
Theorem hlt_CARD_EQ_FINITE : forall B A:set, B <> Empty -> A <> Empty -> forall s :e 2 :^: B, forall t :e 2 :^: A, hl_FINITE A t = 1 /\ hl_sym_3d5f63 B A s t = 1 -> hl_FINITE B s = 1.
Admitted.

// HOL Light: Library/card.ml:405 / CARD_EQ_INFINITE   (hash md5:84cc04dc2d8c9f44a5e6e7d0cf4cf095)
Theorem hlt_CARD_EQ_INFINITE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_INFINITE B t = 1 /\ hl_sym_3d5f63 A B s t = 1 -> hl_INFINITE A s = 1.
Admitted.

// HOL Light: Library/card.ml:410 / CARD_LE_INFINITE   (hash md5:c547694fac05fa7557621e1deb046858)
Theorem hlt_CARD_LE_INFINITE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_INFINITE A s = 1 /\ hl_sym_3c3d5f63 A B s t = 1 -> hl_INFINITE B t = 1.
Admitted.

// HOL Light: Library/card.ml:414 / CARD_LT_FINITE_INFINITE   (hash md5:f3740ff95e9560818ab55b2580eec10d)
Theorem hlt_CARD_LT_FINITE_INFINITE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_INFINITE B t = 1 -> hl_sym_3c5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:418 / CARD_LE_FINITE_INFINITE   (hash md5:d0c3b428541c080df3f465f1dcddd040)
Theorem hlt_CARD_LE_FINITE_INFINITE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_INFINITE B t = 1 -> hl_sym_3c3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:425 / CARD_LE_CARD_IMP   (hash md5:57138c8211a694457d075df37b850ba3)
Theorem hlt_CARD_LE_CARD_IMP : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE B t = 1 /\ hl_sym_3c3d5f63 A B s t = 1 -> hl_le (hl_CARD A s) (hl_CARD B t) = 1.
Admitted.

// HOL Light: Library/card.ml:439 / CARD_EQ_CARD_IMP   (hash md5:984a16c968df9556cb7f55839dc86c32)
Theorem hlt_CARD_EQ_CARD_IMP : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE B t = 1 /\ hl_sym_3d5f63 A B s t = 1 -> hl_CARD A s = hl_CARD B t.
Admitted.

// HOL Light: Library/card.ml:443 / CARD_LE_CARD   (hash md5:26b9d2fafa4d521789faf0e833c38bb5)
Theorem hlt_CARD_LE_CARD : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> (hl_sym_3c3d5f63 A B s t = 1 <-> hl_le (hl_CARD A s) (hl_CARD B t) = 1).
Admitted.

// HOL Light: Library/card.ml:458 / CARD_EQ_CARD   (hash md5:e2d20ccc84ff382676e11b6bb073a670)
Theorem hlt_CARD_EQ_CARD : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> (hl_sym_3d5f63 A B s t = 1 <-> hl_CARD A s = hl_CARD B t).
Admitted.

// HOL Light: Library/card.ml:463 / CARD_LT_CARD   (hash md5:d81f9ecd94627f7819da1f1124b8f562)
Theorem hlt_CARD_LT_CARD : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> (hl_sym_3c5f63 A B s t = 1 <-> hl_lt (hl_CARD A s) (hl_CARD B t) = 1).
Admitted.

// HOL Light: Library/card.ml:468 / CARD_HAS_SIZE_CONG   (hash md5:da948600854123b613ce2a4bfd073212)
Theorem hlt_CARD_HAS_SIZE_CONG : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall n :e omega, hl_sym_3d5f63 A B s t = 1 -> (hl_HAS_SIZE A s n = 1 <-> hl_HAS_SIZE B t n = 1).
Admitted.

// HOL Light: Library/card.ml:473 / NUMSEG_CARD_LE   (hash md5:8aeb5689f43fee67ff37856e105b5920)
Theorem hlt_NUMSEG_CARD_LE : forall A:set, A <> Empty -> forall n :e omega, forall s :e 2 :^: A, hl_sym_3c3d5f63 omega A (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n) s = 1 <-> hl_FINITE A s = 1 -> hl_le n (hl_CARD A s) = 1.
Admitted.

// HOL Light: Library/card.ml:479 / CARD_LE_IMAGE   (hash md5:904702e363f88a9038adc1b33220550d)
Theorem hlt_CARD_LE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_sym_3c3d5f63 B A (hl_IMAGE A B f s) s = 1.
Admitted.

// HOL Light: Library/card.ml:483 / CARD_LE_IMAGE_GEN   (hash md5:e820c13b98ef1bd8a88cba8eb134c482)
Theorem hlt_CARD_LE_IMAGE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> hl_sym_3c3d5f63 B A t s = 1.
Admitted.

// HOL Light: Library/card.ml:488 / CARD_EQ_IMAGE   (hash md5:fd900abbe479f2ed2f84d6e9a74c0ef9)
Theorem hlt_CARD_EQ_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> hl_sym_3d5f63 B A (hl_IMAGE A B f s) s = 1.
Admitted.

// HOL Light: Library/card.ml:495 / CARD_GE_PREIMAGE   (hash md5:c9bb08cc639cded2e2dd0821d1ef7199)
Theorem hlt_CARD_GE_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> hl_sym_3c3d5f63 B A t (hl_GSPEC A (fun GEN_PVAR_483 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_483 (if hl_IN A x s = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/card.ml:501 / CARD_LE_PREIMAGE   (hash md5:377ccfd8fa6ef50a9cea32c92797bd06)
Theorem hlt_CARD_LE_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (hl_IN B (f x) t = 1 /\ (hl_IN B (f y) t = 1 /\ f x = f y))) -> x = y) -> hl_sym_3c3d5f63 A B (hl_GSPEC A (fun GEN_PVAR_484 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_484 (if hl_IN A x s = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) t = 1.
Admitted.

// HOL Light: Library/card.ml:508 / CARD_EQ_PREIMAGE   (hash md5:8c68d8970f561533596fa8bf1c7b5919)
Theorem hlt_CARD_EQ_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ (hl_IN B (f x) t = 1 /\ (hl_IN B (f y) t = 1 /\ f x = f y))) -> x = y) /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> hl_sym_3d5f63 A B (hl_GSPEC A (fun GEN_PVAR_485 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_485 (if hl_IN A x s = 1 /\ hl_IN B (f x) t = 1 then 1 else 0) x = 1 then 1 else 0)) t = 1.
Admitted.

// HOL Light: Library/card.ml:517 / CARD_LE_IMAGES   (hash md5:d12200e4d2cfd7d9de352d2f43f46984)
Theorem hlt_CARD_LE_IMAGES : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: A, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ g x = g y) -> f x = f y) -> hl_sym_3c3d5f63 B C (hl_IMAGE A B f s) (hl_IMAGE A C g s) = 1.
Admitted.

// HOL Light: Library/card.ml:527 / CARD_EQ_IMAGES   (hash md5:104ccdece8f474c6459c5404d9402a07)
Theorem hlt_CARD_EQ_IMAGES : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: A, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ hl_IN A y s = 1 -> (f x = f y <-> g x = g y)) -> hl_sym_3d5f63 B C (hl_IMAGE A B f s) (hl_IMAGE A C g s) = 1.
Admitted.

// HOL Light: Library/card.ml:534 / LE_C_IMAGE   (hash md5:119ad1caa9146520e289d80e84a610f9)
Theorem hlt_LE_C_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A B s t = 1 <-> s = hl_EMPTY A \/ exists f :e A :^: B, hl_IMAGE B A f t = s.
Admitted.

// HOL Light: Library/card.ml:548 / LE_C_IMAGE_SUBSET   (hash md5:0afe394be6e1ae1be1831e72c34509ee)
Theorem hlt_LE_C_IMAGE_SUBSET : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A B s t = 1 <-> exists f :e A :^: B, hl_SUBSET A s (hl_IMAGE B A f t) = 1.
Admitted.

// HOL Light: Library/card.ml:556 / CARD_LE_SING   (hash md5:260a92425d935efde3397c396f020163)
Theorem hlt_CARD_LE_SING : forall A B:set, A <> Empty -> B <> Empty -> forall c :e B, forall s :e 2 :^: A, hl_sym_3c3d5f63 A B s (hl_INSERT B c (hl_EMPTY B)) = 1 <-> exists a :e A, hl_SUBSET A s (hl_INSERT A a (hl_EMPTY A)) = 1.
Admitted.

// HOL Light: Library/card.ml:562 / CARD_SING_LE   (hash md5:297ab35a7356ec4cd205c21a50d27fda)
Theorem hlt_CARD_SING_LE : forall A B:set, A <> Empty -> B <> Empty -> forall a :e A, forall s :e 2 :^: B, hl_sym_3c3d5f63 A B (hl_INSERT A a (hl_EMPTY A)) s = 1 <-> ~ s = hl_EMPTY B.
Admitted.

// HOL Light: Library/card.ml:576 / CARD_EQ_ORDINAL_EXISTS   (hash md5:8ae9d5c8460187a5d1d9a2c56ef32f95)
Theorem hlt_CARD_EQ_ORDINAL_EXISTS : forall A:set, A <> Empty -> forall s :e 2 :^: A, exists l :e 2 :^: A :^: A, hl_ordinal A l = 1 /\ hl_sym_3d5f63 A A (hl_fld A l) s = 1.
Admitted.

// HOL Light: Library/card.ml:594 / WF_CARD_LT   (hash md5:24e515903fd6cf35d714f2cccc5a81d3)
Theorem hlt_WF_CARD_LT : forall A:set, A <> Empty -> hl_WF (2 :^: A) (hl_sym_3c5f63 A A) = 1.
Admitted.

// HOL Light: Library/card.ml:629 / add_c   (hash md5:93822f8b556e6527f588f39a35fb1c08)
Theorem hlt_add_c : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, forall t :e 2 :^: A, hl_sym_2b5f63 B A s t = hl_UNION (B :+: A) (hl_GSPEC (B :+: A) (fun GEN_PVAR_486 :e B :+: A => if exists x :e B, hl_SETSPEC (B :+: A) GEN_PVAR_486 (hl_IN B x s) (hl_INL B A x) = 1 then 1 else 0)) (hl_GSPEC (B :+: A) (fun GEN_PVAR_487 :e B :+: A => if exists y :e A, hl_SETSPEC (B :+: A) GEN_PVAR_487 (hl_IN A y t) (hl_INR A B y) = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/card.ml:632 / mul_c   (hash md5:6c3f8f6b8c1f03855796d144f4fd168f)
Theorem hlt_mul_c : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: B, forall t :e 2 :^: A, hl_sym_2a5f63 B A s t = hl_GSPEC (B :*: A) (fun GEN_PVAR_488 :e B :*: A => if exists x :e B, exists y :e A, hl_SETSPEC (B :*: A) GEN_PVAR_488 (if hl_IN B x s = 1 /\ hl_IN A y t = 1 then 1 else 0) (hl_pair B A x y) = 1 then 1 else 0).
Admitted.

// HOL Light: Library/card.ml:639 / CARD_LE_ADD   (hash md5:d20ac814796065bc01acfab167223ec2)
Theorem hlt_CARD_LE_ADD : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: A, forall s' :e 2 :^: B, forall t :e 2 :^: C, forall t' :e 2 :^: D, hl_sym_3c3d5f63 A B s s' = 1 /\ hl_sym_3c3d5f63 C D t t' = 1 -> hl_sym_3c3d5f63 (A :+: C) (B :+: D) (hl_sym_2b5f63 A C s t) (hl_sym_2b5f63 B D s' t') = 1.
Admitted.

// HOL Light: Library/card.ml:657 / CARD_LE_MUL   (hash md5:b7227ab918cf953cd310b25ab69a3b4a)
Theorem hlt_CARD_LE_MUL : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: A, forall s' :e 2 :^: B, forall t :e 2 :^: C, forall t' :e 2 :^: D, hl_sym_3c3d5f63 A B s s' = 1 /\ hl_sym_3c3d5f63 C D t t' = 1 -> hl_sym_3c3d5f63 (A :*: C) (B :*: D) (hl_sym_2a5f63 A C s t) (hl_sym_2a5f63 B D s' t') = 1.
Admitted.

// HOL Light: Library/card.ml:669 / CARD_FUNSPACE_LE   (hash md5:e10573e87021755f78d7883c2091a117)
Theorem hlt_CARD_FUNSPACE_LE : forall A A_ B B_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> hl_sym_3c3d5f63 A A_ (hl_UNIV A) (hl_UNIV A_) = 1 /\ hl_sym_3c3d5f63 B B_ (hl_UNIV B) (hl_UNIV B_) = 1 -> hl_sym_3c3d5f63 (B :^: A) (B_ :^: A_) (hl_UNIV (B :^: A)) (hl_UNIV (B_ :^: A_)) = 1.
Admitted.

// HOL Light: Library/card.ml:678 / CARD_ADD_CONG   (hash md5:7c1ad1e77982656f23d13e59c680ee84)
Theorem hlt_CARD_ADD_CONG : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: A, forall s' :e 2 :^: B, forall t :e 2 :^: C, forall t' :e 2 :^: D, hl_sym_3d5f63 A B s s' = 1 /\ hl_sym_3d5f63 C D t t' = 1 -> hl_sym_3d5f63 (A :+: C) (B :+: D) (hl_sym_2b5f63 A C s t) (hl_sym_2b5f63 B D s' t') = 1.
Admitted.

// HOL Light: Library/card.ml:683 / CARD_MUL_CONG   (hash md5:a42c581ed6becfdcf6294e6ce0ec8c37)
Theorem hlt_CARD_MUL_CONG : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: A, forall s' :e 2 :^: B, forall t :e 2 :^: C, forall t' :e 2 :^: D, hl_sym_3d5f63 A B s s' = 1 /\ hl_sym_3d5f63 C D t t' = 1 -> hl_sym_3d5f63 (A :*: C) (B :*: D) (hl_sym_2a5f63 A C s t) (hl_sym_2a5f63 B D s' t') = 1.
Admitted.

// HOL Light: Library/card.ml:688 / CARD_FUNSPACE_CONG   (hash md5:60df46bf7192142cf637d80c6b9a7785)
Theorem hlt_CARD_FUNSPACE_CONG : forall A A_ B B_:set, A <> Empty -> A_ <> Empty -> B <> Empty -> B_ <> Empty -> hl_sym_3d5f63 A A_ (hl_UNIV A) (hl_UNIV A_) = 1 /\ hl_sym_3d5f63 B B_ (hl_UNIV B) (hl_UNIV B_) = 1 -> hl_sym_3d5f63 (B :^: A) (B_ :^: A_) (hl_UNIV (B :^: A)) (hl_UNIV (B_ :^: A_)) = 1.
Admitted.

// HOL Light: Library/card.ml:696 / MUL_C_UNIV   (hash md5:44bc86d30920b3e14619f6ad2647b272)
Theorem hlt_MUL_C_UNIV : forall A B:set, A <> Empty -> B <> Empty -> hl_sym_2a5f63 A B (hl_UNIV A) (hl_UNIV B) = hl_UNIV (A :*: B).
Admitted.

// HOL Light: Library/card.ml:700 / CARD_FUNSPACE_CURRY   (hash md5:54634333f2fc4c578ece61aef1602b20)
Theorem hlt_CARD_FUNSPACE_CURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> hl_sym_3d5f63 (C :^: B :^: A) (C :^: (A :*: B)) (hl_UNIV (C :^: B :^: A)) (hl_UNIV (C :^: (A :*: B))) = 1.
Admitted.

// HOL Light: Library/card.ml:708 / IN_CARD_ADD   (hash md5:cb6a692c608abe456393e4ac2fff4bf2)
Theorem hlt_IN_CARD_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, (forall x :e A, hl_IN (A :+: B) (hl_INL A B x) (hl_sym_2b5f63 A B s t) = 1 <-> hl_IN A x s = 1) /\ forall y :e B, hl_IN (A :+: B) (hl_INR B A y) (hl_sym_2b5f63 A B s t) = 1 <-> hl_IN B y t = 1.
Admitted.

// HOL Light: Library/card.ml:714 / IN_CARD_MUL   (hash md5:51ec27be80a97c0aef589f0cf8d5693a)
Theorem hlt_IN_CARD_MUL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall x :e A, forall y :e B, hl_IN (A :*: B) (hl_pair A B x y) (hl_sym_2a5f63 A B s t) = 1 <-> hl_IN A x s = 1 /\ hl_IN B y t = 1.
Admitted.

// HOL Light: Library/card.ml:718 / CARD_LE_SQUARE   (hash md5:a052816c22df5b5ff7c7fc2817d31014)
Theorem hlt_CARD_LE_SQUARE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_sym_3c3d5f63 A (A :*: A) s (hl_sym_2a5f63 A A s s) = 1.
Admitted.

// HOL Light: Library/card.ml:724 / CARD_SQUARE_NUM   (hash md5:f0a5144489bb434a2526db7637442ad5)
Theorem hlt_CARD_SQUARE_NUM : hl_sym_3d5f63 (omega :*: omega) omega (hl_sym_2a5f63 omega omega (hl_UNIV omega) (hl_UNIV omega)) (hl_UNIV omega) = 1.
Admitted.

// HOL Light: Library/card.ml:732 / UNION_LE_ADD_C   (hash md5:4bc6b07711579f1a2eed1968062fc414)
Theorem hlt_UNION_LE_ADD_C : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_sym_3c3d5f63 A (A :+: A) (hl_UNION A s t) (hl_sym_2b5f63 A A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:739 / CARD_ADD_C   (hash md5:91bc3e22699f667c1413722d9f127b1e)
Theorem hlt_CARD_ADD_C : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_CARD (A :+: B) (hl_sym_2b5f63 A B s t) = hl_add (hl_CARD A s) (hl_CARD B t).
Admitted.

// HOL Light: Library/card.ml:750 / CARD_MUL_C   (hash md5:dfec04a8bf98853f5147b4d4005d0f80)
Theorem hlt_CARD_MUL_C : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_CARD (A :*: B) (hl_sym_2a5f63 A B s t) = hl_mul (hl_CARD A s) (hl_CARD B t).
Admitted.

// HOL Light: Library/card.ml:758 / CARD_ADD_SYM   (hash md5:cacfc4cd416b38719203d02644ad2425)
Theorem hlt_CARD_ADD_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 (A :+: B) (B :+: A) (hl_sym_2b5f63 A B s t) (hl_sym_2b5f63 B A t s) = 1.
Admitted.

// HOL Light: Library/card.ml:767 / CARD_ADD_ASSOC   (hash md5:3dd4e86fe280416677e71c0c02a60830)
Theorem hlt_CARD_ADD_ASSOC : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3d5f63 (A :+: (B :+: C)) (A :+: B :+: C) (hl_sym_2b5f63 A (B :+: C) s (hl_sym_2b5f63 B C t u)) (hl_sym_2b5f63 (A :+: B) C (hl_sym_2b5f63 A B s t) u) = 1.
Admitted.

// HOL Light: Library/card.ml:781 / CARD_MUL_SYM   (hash md5:a4b55e8c1820e8984b7287d26cec5d24)
Theorem hlt_CARD_MUL_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 (A :*: B) (B :*: A) (hl_sym_2a5f63 A B s t) (hl_sym_2a5f63 B A t s) = 1.
Admitted.

// HOL Light: Library/card.ml:791 / CARD_MUL_ASSOC   (hash md5:20842cf0a3502360889f78d912589677)
Theorem hlt_CARD_MUL_ASSOC : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3d5f63 (A :*: (B :*: C)) (A :*: B :*: C) (hl_sym_2a5f63 A (B :*: C) s (hl_sym_2a5f63 B C t u)) (hl_sym_2a5f63 (A :*: B) C (hl_sym_2a5f63 A B s t) u) = 1.
Admitted.

// HOL Light: Library/card.ml:803 / CARD_LDISTRIB   (hash md5:fdfac6005a185a9b2afc49ad097c17b8)
Theorem hlt_CARD_LDISTRIB : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3d5f63 (A :*: (B :+: C)) (A :*: B :+: A :*: C) (hl_sym_2a5f63 A (B :+: C) s (hl_sym_2b5f63 B C t u)) (hl_sym_2b5f63 (A :*: B) (A :*: C) (hl_sym_2a5f63 A B s t) (hl_sym_2a5f63 A C s u)) = 1.
Admitted.

// HOL Light: Library/card.ml:818 / CARD_RDISTRIB   (hash md5:c3b96d4d8cec076cf52e984c029ed749)
Theorem hlt_CARD_RDISTRIB : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3d5f63 ((A :+: B) :*: C) (A :*: C :+: B :*: C) (hl_sym_2a5f63 (A :+: B) C (hl_sym_2b5f63 A B s t) u) (hl_sym_2b5f63 (A :*: C) (B :*: C) (hl_sym_2a5f63 A C s u) (hl_sym_2a5f63 B C t u)) = 1.
Admitted.

// HOL Light: Library/card.ml:830 / CARD_LE_ADDR   (hash md5:24a36722b336a465e6ae2ca33b509f8e)
Theorem hlt_CARD_LE_ADDR : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A (A :+: B) s (hl_sym_2b5f63 A B s t) = 1.
Admitted.

// HOL Light: Library/card.ml:835 / CARD_LE_ADDL   (hash md5:a51fc7e67aebd45b3a1458f9f16dd7ac)
Theorem hlt_CARD_LE_ADDL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 B (A :+: B) t (hl_sym_2b5f63 A B s t) = 1.
Admitted.

// HOL Light: Library/card.ml:840 / CARD_MUL_LID   (hash md5:5ad6f054bb14af491420c00757a036f6)
Theorem hlt_CARD_MUL_LID : forall A B:set, A <> Empty -> B <> Empty -> forall a :e A, forall t :e 2 :^: B, hl_sym_3d5f63 (A :*: B) B (hl_sym_2a5f63 A B (hl_INSERT A a (hl_EMPTY A)) t) t = 1.
Admitted.

// HOL Light: Library/card.ml:847 / CARD_MUL_RID   (hash md5:f8270b4f0744813f95c079038cb46705)
Theorem hlt_CARD_MUL_RID : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall b :e B, hl_sym_3d5f63 (A :*: B) A (hl_sym_2a5f63 A B s (hl_INSERT B b (hl_EMPTY B))) s = 1.
Admitted.

// HOL Light: Library/card.ml:858 / CARD_ADD_LE_MUL_INFINITE   (hash md5:f3f66676bf93dae498ba322ce90d2be7)
Theorem hlt_CARD_ADD_LE_MUL_INFINITE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INFINITE A s = 1 -> hl_sym_3c3d5f63 (A :+: A) (A :*: A) (hl_sym_2b5f63 A A s s) (hl_sym_2a5f63 A A s s) = 1.
Admitted.

// HOL Light: Library/card.ml:875 / CARD_DISJOINT_UNION   (hash md5:63bbdacd000b4e21a024fb3acd617470)
Theorem hlt_CARD_DISJOINT_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INTER A s t = hl_EMPTY A -> hl_sym_3d5f63 A (A :+: A) (hl_UNION A s t) (hl_sym_2b5f63 A A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:886 / CARD_LE_EXISTS   (hash md5:21f6644933974a0cf9d5c5e1ef1c204c)
Theorem hlt_CARD_LE_EXISTS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3c3d5f63 A B s t = 1 <-> exists u :e 2 :^: B, hl_sym_3d5f63 B (A :+: B) t (hl_sym_2b5f63 A B s u) = 1.
Admitted.

// HOL Light: Library/card.ml:907 / CARD_LT_IMP_SUC_LE   (hash md5:e4069e97e0ef12ab485d26a0e5fb2aca)
Theorem hlt_CARD_LT_IMP_SUC_LE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall a :e C, hl_sym_3c5f63 A B s t = 1 -> hl_sym_3c3d5f63 (A :+: C) B (hl_sym_2b5f63 A C s (hl_INSERT C a (hl_EMPTY C))) t = 1.
Admitted.

// HOL Light: Library/card.ml:935 / CARD_SQUARE_INFINITE   (hash md5:bc648bb93cfb595a8333992ea1f89d73)
Theorem hlt_CARD_SQUARE_INFINITE : forall A:set, A <> Empty -> forall k :e 2 :^: A, hl_INFINITE A k = 1 -> hl_sym_3d5f63 (A :*: A) A (hl_sym_2a5f63 A A k k) k = 1.
Admitted.

// HOL Light: Library/card.ml:1127 / CARD_ADD_FINITE   (hash md5:9a5c9a02c3f8b77a4e1352294edfdcf4)
Theorem hlt_CARD_ADD_FINITE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_FINITE (A :+: B) (hl_sym_2b5f63 A B s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1131 / CARD_ADD_FINITE_EQ   (hash md5:4428d0f5b5b1ee1a667ea0b25e7c318f)
Theorem hlt_CARD_ADD_FINITE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE (A :+: B) (hl_sym_2b5f63 A B s t) = 1 <-> hl_FINITE A s = 1 /\ hl_FINITE B t = 1.
Admitted.

// HOL Light: Library/card.ml:1138 / CARD_MUL_FINITE   (hash md5:353b2aa14fb7c97cd0d5f87bb851c948)
Theorem hlt_CARD_MUL_FINITE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE A s = 1 /\ hl_FINITE B t = 1 -> hl_FINITE (A :*: B) (hl_sym_2a5f63 A B s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1142 / CARD_MUL_FINITE_EQ   (hash md5:fba3314d4e2bc33f5cd2634cbd7a8a02)
Theorem hlt_CARD_MUL_FINITE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_FINITE (A :*: B) (hl_sym_2a5f63 A B s t) = 1 <-> s = hl_EMPTY A \/ (t = hl_EMPTY B \/ hl_FINITE A s = 1 /\ hl_FINITE B t = 1).
Admitted.

// HOL Light: Library/card.ml:1151 / CARD_MUL_ABSORB_LE   (hash md5:b43a34070277917b2fedfa23e5ea79fc)
Theorem hlt_CARD_MUL_ABSORB_LE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_INFINITE B t = 1 /\ hl_sym_3c3d5f63 A B s t = 1 -> hl_sym_3c3d5f63 (A :*: B) B (hl_sym_2a5f63 A B s t) t = 1.
Admitted.

// HOL Light: Library/card.ml:1158 / CARD_MUL2_ABSORB_LE   (hash md5:415a367905e5a5b4b06ec8b98229bf80)
Theorem hlt_CARD_MUL2_ABSORB_LE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_INFINITE C u = 1 /\ (hl_sym_3c3d5f63 A C s u = 1 /\ hl_sym_3c3d5f63 B C t u = 1) -> hl_sym_3c3d5f63 (A :*: B) C (hl_sym_2a5f63 A B s t) u = 1.
Admitted.

// HOL Light: Library/card.ml:1166 / CARD_MUL2_ABSORB_LE_ALT   (hash md5:ab91d9dc3604f5c959316fc49ee2e357)
Theorem hlt_CARD_MUL2_ABSORB_LE_ALT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, (hl_INFINITE A s = 1 \/ hl_INFINITE B t = 1) /\ (hl_sym_3c3d5f63 A C s u = 1 /\ hl_sym_3c3d5f63 B C t u = 1) -> hl_sym_3c3d5f63 (A :*: B) C (hl_sym_2a5f63 A B s t) u = 1.
Admitted.

// HOL Light: Library/card.ml:1172 / CARD_ADD_ABSORB_LE   (hash md5:d74bdb34a198801b9a77a3a055e8eafb)
Theorem hlt_CARD_ADD_ABSORB_LE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_INFINITE B t = 1 /\ hl_sym_3c3d5f63 A B s t = 1 -> hl_sym_3c3d5f63 (A :+: B) B (hl_sym_2b5f63 A B s t) t = 1.
Admitted.

// HOL Light: Library/card.ml:1180 / CARD_ADD2_ABSORB_LE   (hash md5:46171e2698f76438becbd901aa2eeec4)
Theorem hlt_CARD_ADD2_ABSORB_LE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_INFINITE C u = 1 /\ (hl_sym_3c3d5f63 A C s u = 1 /\ hl_sym_3c3d5f63 B C t u = 1) -> hl_sym_3c3d5f63 (A :+: B) C (hl_sym_2b5f63 A B s t) u = 1.
Admitted.

// HOL Light: Library/card.ml:1188 / CARD_MUL_ABSORB   (hash md5:1419f4d836a92cd242174e7744234144)
Theorem hlt_CARD_MUL_ABSORB : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_INFINITE B t = 1 /\ (~ s = hl_EMPTY A /\ hl_sym_3c3d5f63 A B s t = 1) -> hl_sym_3d5f63 (A :*: B) B (hl_sym_2a5f63 A B s t) t = 1.
Admitted.

// HOL Light: Library/card.ml:1197 / CARD_ADD_ABSORB_LEFT   (hash md5:a65ee728f3e0a51ebcdc7333993418f3)
Theorem hlt_CARD_ADD_ABSORB_LEFT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_INFINITE B t = 1 /\ hl_sym_3c3d5f63 A B s t = 1 -> hl_sym_3d5f63 (A :+: B) B (hl_sym_2b5f63 A B s t) t = 1.
Admitted.

// HOL Light: Library/card.ml:1201 / CARD_ADD_ABSORB_RIGHT   (hash md5:b6add4c58bb72ab02f9fcc5dd4c1584d)
Theorem hlt_CARD_ADD_ABSORB_RIGHT : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_INFINITE A s = 1 /\ hl_sym_3c3d5f63 B A t s = 1 -> hl_sym_3d5f63 (A :+: B) A (hl_sym_2b5f63 A B s t) s = 1.
Admitted.

// HOL Light: Library/card.ml:1207 / CARD_UNION_ABSORB_LEFT   (hash md5:ba24c05142a059329ee644b6c0cd665d)
Theorem hlt_CARD_UNION_ABSORB_LEFT : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INFINITE A t = 1 /\ hl_sym_3c3d5f63 A A s t = 1 -> hl_sym_3d5f63 A A (hl_UNION A s t) t = 1.
Admitted.

// HOL Light: Library/card.ml:1215 / CARD_UNION_ABSORB_RIGHT   (hash md5:676f6b0374682c73d2b43463b8815941)
Theorem hlt_CARD_UNION_ABSORB_RIGHT : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INFINITE A s = 1 /\ hl_sym_3c3d5f63 A A t s = 1 -> hl_sym_3d5f63 A A (hl_UNION A s t) s = 1.
Admitted.

// HOL Light: Library/card.ml:1219 / CARD_ADD2_ABSORB_LT   (hash md5:185dfc9e04d98a54f38dcbb7eca870a9)
Theorem hlt_CARD_ADD2_ABSORB_LT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_INFINITE C u = 1 /\ (hl_sym_3c5f63 A C s u = 1 /\ hl_sym_3c5f63 B C t u = 1) -> hl_sym_3c5f63 (A :+: B) C (hl_sym_2b5f63 A B s t) u = 1.
Admitted.

// HOL Light: Library/card.ml:1236 / CARD_DIFF_ABSORB   (hash md5:8c6e3d1e57bdc0652b187f90c2526541)
Theorem hlt_CARD_DIFF_ABSORB : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_INFINITE A s = 1 /\ hl_sym_3c5f63 A A t s = 1 -> hl_sym_3d5f63 A A (hl_DIFF A s t) s = 1.
Admitted.

// HOL Light: Library/card.ml:1246 / CARD_LT_ADD   (hash md5:73bf49d684a717e3b2964f080ca62145)
Theorem hlt_CARD_LT_ADD : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s :e 2 :^: A, forall s' :e 2 :^: B, forall t :e 2 :^: C, forall t' :e 2 :^: D, hl_sym_3c5f63 A B s s' = 1 /\ hl_sym_3c5f63 C D t t' = 1 -> hl_sym_3c5f63 (A :+: C) (B :+: D) (hl_sym_2b5f63 A C s t) (hl_sym_2b5f63 B D s' t') = 1.
Admitted.

// HOL Light: Library/card.ml:1271 / CARD_LE_ADD_LCANCEL   (hash md5:d1294fb0b03f44e15c17f9735d8ac448)
Theorem hlt_CARD_LE_ADD_LCANCEL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, (hl_FINITE A s = 1 \/ hl_sym_3c3d5f63 A C s u = 1) /\ hl_sym_3c3d5f63 (A :+: B) (A :+: C) (hl_sym_2b5f63 A B s t) (hl_sym_2b5f63 A C s u) = 1 -> hl_sym_3c3d5f63 B C t u = 1.
Admitted.

// HOL Light: Library/card.ml:1296 / CARD_LE_ADD_LCANCEL_EQ   (hash md5:a5eda835a3a2ed9eb08e75c19d81dc16)
Theorem hlt_CARD_LE_ADD_LCANCEL_EQ : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_FINITE A s = 1 \/ hl_sym_3c3d5f63 A C s u = 1 -> (hl_sym_3c3d5f63 (A :+: B) (A :+: C) (hl_sym_2b5f63 A B s t) (hl_sym_2b5f63 A C s u) = 1 <-> hl_sym_3c3d5f63 B C t u = 1).
Admitted.

// HOL Light: Library/card.ml:1305 / CARD_LE_ADD_RCANCEL   (hash md5:0b9457f0db78b402c8c0605e0a8d822c)
Theorem hlt_CARD_LE_ADD_RCANCEL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, (hl_FINITE C u = 1 \/ hl_sym_3c3d5f63 C B u t = 1) /\ hl_sym_3c3d5f63 (A :+: C) (B :+: C) (hl_sym_2b5f63 A C s u) (hl_sym_2b5f63 B C t u) = 1 -> hl_sym_3c3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:1315 / CARD_LE_ADD_RCANCEL_EQ   (hash md5:5e7bd8c530c204e64e29f4253c124b26)
Theorem hlt_CARD_LE_ADD_RCANCEL_EQ : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_FINITE C u = 1 \/ hl_sym_3c3d5f63 C B u t = 1 -> (hl_sym_3c3d5f63 (A :+: C) (B :+: C) (hl_sym_2b5f63 A C s u) (hl_sym_2b5f63 B C t u) = 1 <-> hl_sym_3c3d5f63 A B s t = 1).
Admitted.

// HOL Light: Library/card.ml:1324 / CARD_EQ_ADD_LCANCEL   (hash md5:81869bc14d125063c17a24846586c71d)
Theorem hlt_CARD_EQ_ADD_LCANCEL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, (hl_FINITE A s = 1 \/ hl_sym_3c3d5f63 A B s t = 1 /\ hl_sym_3c3d5f63 A C s u = 1) /\ hl_sym_3d5f63 (A :+: B) (A :+: C) (hl_sym_2b5f63 A B s t) (hl_sym_2b5f63 A C s u) = 1 -> hl_sym_3d5f63 B C t u = 1.
Admitted.

// HOL Light: Library/card.ml:1334 / CARD_EQ_ADD_LCANCEL_EQ   (hash md5:9093f89f344a95ea12d0325fd612e33c)
Theorem hlt_CARD_EQ_ADD_LCANCEL_EQ : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_FINITE A s = 1 \/ hl_sym_3c3d5f63 A B s t = 1 /\ hl_sym_3c3d5f63 A C s u = 1 -> (hl_sym_3d5f63 (A :+: B) (A :+: C) (hl_sym_2b5f63 A B s t) (hl_sym_2b5f63 A C s u) = 1 <-> hl_sym_3d5f63 B C t u = 1).
Admitted.

// HOL Light: Library/card.ml:1342 / CARD_EQ_ADD_RCANCEL   (hash md5:0ba6176dd7e0faa879bb00bf6db61ddb)
Theorem hlt_CARD_EQ_ADD_RCANCEL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, (hl_FINITE C u = 1 \/ hl_sym_3c3d5f63 C A u s = 1 /\ hl_sym_3c3d5f63 C B u t = 1) /\ hl_sym_3d5f63 (A :+: C) (B :+: C) (hl_sym_2b5f63 A C s u) (hl_sym_2b5f63 B C t u) = 1 -> hl_sym_3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:1352 / CARD_EQ_ADD_RCANCEL_EQ   (hash md5:c02939368bcc843f33f218f116af3a4d)
Theorem hlt_CARD_EQ_ADD_RCANCEL_EQ : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_FINITE C u = 1 \/ hl_sym_3c3d5f63 C A u s = 1 /\ hl_sym_3c3d5f63 C B u t = 1 -> (hl_sym_3d5f63 (A :+: C) (B :+: C) (hl_sym_2b5f63 A C s u) (hl_sym_2b5f63 B C t u) = 1 <-> hl_sym_3d5f63 A B s t = 1).
Admitted.

// HOL Light: Library/card.ml:1360 / CARD_LE_UNIONS2   (hash md5:1f50d70c0ae341cd64074caa06f74dae)
Theorem hlt_CARD_LE_UNIONS2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall u :e 2 :^: (2 :^: A), forall k :e 2 :^: B, forall l :e 2 :^: C, hl_sym_3c3d5f63 (2 :^: A) B u k = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_sym_3c3d5f63 A C s l = 1) -> hl_sym_3c3d5f63 A (B :*: C) (hl_UNIONS A u) (hl_sym_2a5f63 B C k l) = 1.
Admitted.

// HOL Light: Library/card.ml:1377 / CARD_LE_UNIONS   (hash md5:3b511d7078576e4a7e59ab6ba6b47c73)
Theorem hlt_CARD_LE_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall k :e 2 :^: B, forall u :e 2 :^: (2 :^: A), hl_INFINITE B k = 1 /\ (hl_sym_3c3d5f63 (2 :^: A) B u k = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_sym_3c3d5f63 A B s k = 1)) -> hl_sym_3c3d5f63 A B (hl_UNIONS A u) k = 1.
Admitted.

// HOL Light: Library/card.ml:1387 / CARD_LE_DISJOINT_UNIONS   (hash md5:b5f3b7b25fc2326184bbc9930948e1a4)
Theorem hlt_CARD_LE_DISJOINT_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: (2 :^: A), forall t :e 2 :^: B, hl_pairwise (2 :^: A) (hl_DISJOINT A) s = 1 /\ (forall u :e 2 :^: A, hl_IN (2 :^: A) u s = 1 -> hl_sym_3c3d5f63 B A t u = 1) -> hl_sym_3c3d5f63 (2 :^: A :*: B) A (hl_sym_2a5f63 (2 :^: A) B s t) (hl_UNIONS A s) = 1.
Admitted.

// HOL Light: Library/card.ml:1401 / CARD_EQ_DISJOINT_UNIONS   (hash md5:ddd76f3b0fe3a6e42a13c993bbc8ff4b)
Theorem hlt_CARD_EQ_DISJOINT_UNIONS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: (2 :^: A), forall t :e 2 :^: B, hl_pairwise (2 :^: A) (hl_DISJOINT A) s = 1 /\ (forall u :e 2 :^: A, hl_IN (2 :^: A) u s = 1 -> hl_sym_3d5f63 A B u t = 1) -> hl_sym_3d5f63 A (2 :^: A :*: B) (hl_UNIONS A s) (hl_sym_2a5f63 (2 :^: A) B s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1409 / CARD_EQ_IMAGE_MUL_FIBRES   (hash md5:3fc9424fbabf252f2e29e54e14a86968)
Theorem hlt_CARD_EQ_IMAGE_MUL_FIBRES : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: C, (forall x :e A, hl_IN A x s = 1 -> hl_sym_3d5f63 A C (hl_GSPEC A (fun GEN_PVAR_495 :e A => if exists z :e A, hl_SETSPEC A GEN_PVAR_495 (if hl_IN A z s = 1 /\ f z = f x then 1 else 0) z = 1 then 1 else 0)) t = 1) -> hl_sym_3d5f63 (B :*: C) A (hl_sym_2a5f63 B C (hl_IMAGE A B f s) t) s = 1.
Admitted.

// HOL Light: Library/card.ml:1430 / CARD_DIFF_CONG   (hash md5:8d613e0a5e16110884dd2534401f9119)
Theorem hlt_CARD_DIFF_CONG : forall A B:set, A <> Empty -> B <> Empty -> forall s s' :e 2 :^: A, forall t t' :e 2 :^: B, hl_SUBSET A s' s = 1 /\ (hl_SUBSET B t' t = 1 /\ (hl_sym_3d5f63 A B s t = 1 /\ (hl_sym_3d5f63 A B s' t' = 1 /\ (hl_INFINITE A s = 1 -> hl_sym_3c5f63 A A s' s = 1)))) -> hl_sym_3d5f63 A B (hl_DIFF A s s') (hl_DIFF B t t') = 1.
Admitted.

// HOL Light: Library/card.ml:1450 / EQ_C_BIJECTIONS_DISJOINT   (hash md5:22bad5daa028a9e99562d6541a84b0f7)
Theorem hlt_EQ_C_BIJECTIONS_DISJOINT : forall A B:set, A <> Empty -> B <> Empty -> forall s s' :e 2 :^: A, forall t t' :e 2 :^: B, hl_DISJOINT A s s' = 1 /\ hl_DISJOINT B t t' = 1 -> (hl_sym_3d5f63 A B s t = 1 /\ hl_sym_3d5f63 A B s' t' = 1 <-> exists f :e B :^: A, exists g :e A :^: B, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ ((forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y) /\ ((forall x :e A, hl_IN A x s' = 1 -> hl_IN B (f x) t' = 1 /\ g (f x) = x) /\ forall y :e B, hl_IN B y t' = 1 -> hl_IN A (g y) s' = 1 /\ f (g y) = y))).
Admitted.

// HOL Light: Library/card.ml:1469 / EQ_C_BIJECTIONS_SUBSETS   (hash md5:168edc80cf2f9d238c7c41e7261e95c9)
Theorem hlt_EQ_C_BIJECTIONS_SUBSETS : forall A B:set, A <> Empty -> B <> Empty -> forall s s' :e 2 :^: A, forall t t' :e 2 :^: B, hl_SUBSET A s' s = 1 /\ hl_SUBSET B t' t = 1 -> (hl_sym_3d5f63 A B s' t' = 1 /\ hl_sym_3d5f63 A B (hl_DIFF A s s') (hl_DIFF B t t') = 1 <-> exists f :e B :^: A, exists g :e A :^: B, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ ((forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y) /\ (hl_IMAGE A B f s' = t' /\ hl_IMAGE B A g t' = s'))).
Admitted.

// HOL Light: Library/card.ml:1482 / EQ_C_BIJECTIONS_SUBSETS_LT   (hash md5:5c3cc0a99c6a948c5373fb29c6e1e3e0)
Theorem hlt_EQ_C_BIJECTIONS_SUBSETS_LT : forall A B:set, A <> Empty -> B <> Empty -> forall s s' :e 2 :^: A, forall t t' :e 2 :^: B, hl_SUBSET A s' s = 1 /\ (hl_SUBSET B t' t = 1 /\ (hl_INFINITE A s = 1 -> hl_sym_3c5f63 A A s' s = 1)) -> (hl_sym_3d5f63 A B s t = 1 /\ hl_sym_3d5f63 A B s' t' = 1 <-> exists f :e B :^: A, exists g :e A :^: B, (forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ ((forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y) /\ (hl_IMAGE A B f s' = t' /\ hl_IMAGE B A g t' = s'))).
Admitted.

// HOL Light: Library/card.ml:1496 / EQ_C_BIJECTIONS_EXTEND   (hash md5:15c17d3626cf952034ba48d490ea392d)
Theorem hlt_EQ_C_BIJECTIONS_EXTEND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall g :e A :^: B, forall s s' :e 2 :^: A, forall t t' :e 2 :^: B, hl_SUBSET A s s' = 1 /\ (hl_SUBSET B t t' = 1 /\ (hl_sym_3d5f63 A B (hl_DIFF A s' s) (hl_DIFF B t' t) = 1 /\ ((forall x :e A, hl_IN A x s = 1 -> hl_IN B (f x) t = 1 /\ g (f x) = x) /\ (forall y :e B, hl_IN B y t = 1 -> hl_IN A (g y) s = 1 /\ f (g y) = y)))) -> exists f' :e B :^: A, exists g' :e A :^: B, (forall x :e A, hl_IN A x s' = 1 -> hl_IN B (f' x) t' = 1 /\ g' (f' x) = x) /\ ((forall y :e B, hl_IN B y t' = 1 -> hl_IN A (g' y) s' = 1 /\ f' (g' y) = y) /\ ((forall x :e A, hl_IN A x s = 1 -> f' x = f x) /\ forall y :e B, hl_IN B y t = 1 -> g' y = g y)).
Admitted.

// HOL Light: Library/card.ml:1514 / EQ_C_INVOLUTION   (hash md5:22cfe688818380b8dcdad15621502188)
Theorem hlt_EQ_C_INVOLUTION : forall A:set, A <> Empty -> forall f :e A :^: A, forall s t :e 2 :^: A, (forall x :e A, hl_IN A x s = 1 -> hl_IN A (f x) t = 1) /\ ((forall x :e A, hl_IN A x t = 1 -> hl_IN A (f x) s = 1) /\ (forall x :e A, hl_IN A x s = 1 \/ hl_IN A x t = 1 -> f (f x) = x)) -> hl_sym_3d5f63 A A s t = 1.
Admitted.

// HOL Light: Library/card.ml:1526 / CARD_MUL_LT_LEMMA   (hash md5:a4d3f5280518fe25ae1f8c8cb38ee63f)
Theorem hlt_CARD_MUL_LT_LEMMA : forall A C B:set, A <> Empty -> C <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3c3d5f63 A B s t = 1 /\ (hl_sym_3c5f63 B C t u = 1 /\ hl_INFINITE C u = 1) -> hl_sym_3c5f63 (A :*: B) C (hl_sym_2a5f63 A B s t) u = 1.
Admitted.

// HOL Light: Library/card.ml:1535 / CARD_MUL_LT_INFINITE   (hash md5:1430d6e4aa7c7fd35c9796e275972f1f)
Theorem hlt_CARD_MUL_LT_INFINITE : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, forall u :e 2 :^: C, hl_sym_3c5f63 A C s u = 1 /\ (hl_sym_3c5f63 B C t u = 1 /\ hl_INFINITE C u = 1) -> hl_sym_3c5f63 (A :*: B) C (hl_sym_2a5f63 A B s t) u = 1.
Admitted.

// HOL Light: Library/card.ml:1547 / CANTOR_THM   (hash md5:5f8cf14a554a6f0523be4a0b452186c0)
Theorem hlt_CANTOR_THM : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_sym_3c5f63 A (2 :^: A) s (hl_GSPEC (2 :^: A) (fun GEN_PVAR_496 :e 2 :^: A => if exists t :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_496 (hl_SUBSET A t s) t = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/card.ml:1557 / CANTOR_THM_UNIV   (hash md5:8e711674a0c95ac64a84ccf94f5f60a3)
Theorem hlt_CANTOR_THM_UNIV : forall A:set, A <> Empty -> hl_sym_3c5f63 A (2 :^: A) (hl_UNIV A) (hl_UNIV (2 :^: A)) = 1.
Admitted.

// HOL Light: Library/card.ml:1567 / NUM_COUNTABLE   (hash md5:d6b4a528df6cf348328608af0d1b891c)
Theorem hlt_NUM_COUNTABLE : hl_COUNTABLE omega (hl_UNIV omega) = 1.
Admitted.

// HOL Light: Library/card.ml:1571 / COUNTABLE_ALT   (hash md5:0eb39ee0319149f4cab4662527c096dd)
Theorem hlt_COUNTABLE_ALT : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_COUNTABLE A s = 1 <-> hl_sym_3c3d5f63 A omega s (hl_UNIV omega) = 1.
Admitted.

// HOL Light: Library/card.ml:1575 / COUNTABLE_CASES   (hash md5:1f1bc3fb71b5b49d58b6b147f7ff7b87)
Theorem hlt_COUNTABLE_CASES : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_COUNTABLE A s = 1 <-> hl_FINITE A s = 1 \/ hl_sym_3d5f63 A omega s (hl_UNIV omega) = 1.
Admitted.

// HOL Light: Library/card.ml:1579 / CARD_LE_COUNTABLE   (hash md5:7461bafa0d4478ef7eae084572b69b69)
Theorem hlt_CARD_LE_COUNTABLE : forall B A:set, B <> Empty -> A <> Empty -> forall s :e 2 :^: B, forall t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ hl_sym_3c3d5f63 B A s t = 1 -> hl_COUNTABLE B s = 1.
Admitted.

// HOL Light: Library/card.ml:1584 / CARD_EQ_COUNTABLE   (hash md5:6af08997585ea089d11865f75846c9f0)
Theorem hlt_CARD_EQ_COUNTABLE : forall B A:set, B <> Empty -> A <> Empty -> forall s :e 2 :^: B, forall t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ hl_sym_3d5f63 B A s t = 1 -> hl_COUNTABLE B s = 1.
Admitted.

// HOL Light: Library/card.ml:1588 / CARD_COUNTABLE_CONG   (hash md5:58fabd0bc7404d77deda7bec21203429)
Theorem hlt_CARD_COUNTABLE_CONG : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_sym_3d5f63 A B s t = 1 -> (hl_COUNTABLE A s = 1 <-> hl_COUNTABLE B t = 1).
Admitted.

// HOL Light: Library/card.ml:1592 / COUNTABLE_SUBSET   (hash md5:725967475ec0f8f249f9b1857de99481)
Theorem hlt_COUNTABLE_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ hl_SUBSET A s t = 1 -> hl_COUNTABLE A s = 1.
Admitted.

// HOL Light: Library/card.ml:1598 / COUNTABLE_RESTRICT   (hash md5:b906944ff940aca90da88440910d620c)
Theorem hlt_COUNTABLE_RESTRICT : forall A:set, A <> Empty -> forall s P :e 2 :^: A, hl_COUNTABLE A s = 1 -> hl_COUNTABLE A (hl_GSPEC A (fun GEN_PVAR_497 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_497 (if hl_IN A x s = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/card.ml:1604 / COUNTABLE_SUBSET_NUM   (hash md5:f6b8aae0ba39e6e9408cb222cb74ae06)
Theorem hlt_COUNTABLE_SUBSET_NUM : forall s :e 2 :^: omega, hl_COUNTABLE omega s = 1.
Admitted.

// HOL Light: Library/card.ml:1608 / FINITE_IMP_COUNTABLE   (hash md5:2e2a719563f01ae076c620a44bb10428)
Theorem hlt_FINITE_IMP_COUNTABLE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_FINITE A s = 1 -> hl_COUNTABLE A s = 1.
Admitted.

// HOL Light: Library/card.ml:1612 / CARD_LE_COUNTABLE_INFINITE   (hash md5:6df5de7b715474deba4e36ddf8e1c3d9)
Theorem hlt_CARD_LE_COUNTABLE_INFINITE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE A s = 1 /\ hl_INFINITE B t = 1 -> hl_sym_3c3d5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:1616 / CARD_LT_COUNTABLE_UNCOUNTABLE   (hash md5:22f81a0ebbcd2164505a5c28cb4291f8)
Theorem hlt_CARD_LT_COUNTABLE_UNCOUNTABLE : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE A s = 1 /\ ~ hl_COUNTABLE B t = 1 -> hl_sym_3c5f63 A B s t = 1.
Admitted.

// HOL Light: Library/card.ml:1621 / COUNTABLE_IMAGE   (hash md5:391ae5704402a46a5636a92a1a3ba2e5)
Theorem hlt_COUNTABLE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_COUNTABLE A s = 1 -> hl_COUNTABLE B (hl_IMAGE A B f s) = 1.
Admitted.

// HOL Light: Library/card.ml:1627 / COUNTABLE_IMAGE_INJ_GENERAL   (hash md5:e9ebc362490fb99137d2cdf876f8be50)
Theorem hlt_COUNTABLE_IMAGE_INJ_GENERAL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall A1 :e 2 :^: B, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) /\ hl_COUNTABLE B A1 = 1 -> hl_COUNTABLE A (hl_GSPEC A (fun GEN_PVAR_498 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_498 (if hl_IN A x s = 1 /\ hl_IN B (f x) A1 = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/card.ml:1638 / COUNTABLE_IMAGE_INJ_EQ   (hash md5:71650e508a7ce3661423702d584b8865)
Theorem hlt_COUNTABLE_IMAGE_INJ_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, (forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ f x = f y) -> x = y) -> (hl_COUNTABLE B (hl_IMAGE A B f s) = 1 <-> hl_COUNTABLE A s = 1).
Admitted.

// HOL Light: Library/card.ml:1647 / COUNTABLE_IMAGE_INJ   (hash md5:0797327d6a016b68632672b5c1820631)
Theorem hlt_COUNTABLE_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall A1 :e 2 :^: B, (forall x y :e A, f x = f y -> x = y) /\ hl_COUNTABLE B A1 = 1 -> hl_COUNTABLE A (hl_GSPEC A (fun GEN_PVAR_499 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_499 (hl_IN B (f x) A1) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/card.ml:1656 / COUNTABLE_EMPTY   (hash md5:b713ffebb2f75cedd3b81d908cac847a)
Theorem hlt_COUNTABLE_EMPTY : forall A:set, A <> Empty -> hl_COUNTABLE A (hl_EMPTY A) = 1.
Admitted.

// HOL Light: Library/card.ml:1660 / COUNTABLE_INTER   (hash md5:e25efdcd0450a929ce7610e682d05044)
Theorem hlt_COUNTABLE_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_COUNTABLE A s = 1 \/ hl_COUNTABLE A t = 1 -> hl_COUNTABLE A (hl_INTER A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1667 / COUNTABLE_UNION_IMP   (hash md5:c3216fa4d5c91eb6ef84c326150b0cb1)
Theorem hlt_COUNTABLE_UNION_IMP : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_COUNTABLE A s = 1 /\ hl_COUNTABLE A t = 1 -> hl_COUNTABLE A (hl_UNION A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1673 / COUNTABLE_UNION   (hash md5:c7a3cfe697c53c688a794b912a69def5)
Theorem hlt_COUNTABLE_UNION : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_COUNTABLE A (hl_UNION A s t) = 1 <-> hl_COUNTABLE A s = 1 /\ hl_COUNTABLE A t = 1.
Admitted.

// HOL Light: Library/card.ml:1680 / COUNTABLE_SING   (hash md5:229bb777240fc729e8a983582b15db55)
Theorem hlt_COUNTABLE_SING : forall A:set, A <> Empty -> forall x :e A, hl_COUNTABLE A (hl_INSERT A x (hl_EMPTY A)) = 1.
Admitted.

// HOL Light: Library/card.ml:1684 / COUNTABLE_INSERT   (hash md5:7b6deb34242143d07d0f6d878e6bc0dd)
Theorem hlt_COUNTABLE_INSERT : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_COUNTABLE A (hl_INSERT A x s) = 1 <-> hl_COUNTABLE A s = 1.
Admitted.

// HOL Light: Library/card.ml:1689 / COUNTABLE_DELETE   (hash md5:767c5c6d244e742c5fe43065528f6f4a)
Theorem hlt_COUNTABLE_DELETE : forall A:set, A <> Empty -> forall x :e A, forall s :e 2 :^: A, hl_COUNTABLE A (hl_DELETE A s x) = 1 <-> hl_COUNTABLE A s = 1.
Admitted.

// HOL Light: Library/card.ml:1697 / COUNTABLE_DIFF_FINITE   (hash md5:b0c9067319fadf345d84e3a52588ae1c)
Theorem hlt_COUNTABLE_DIFF_FINITE : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_FINITE A s = 1 -> (hl_COUNTABLE A (hl_DIFF A t s) = 1 <-> hl_COUNTABLE A t = 1).
Admitted.

// HOL Light: Library/card.ml:1704 / COUNTABLE_DIFF   (hash md5:af5fb09298a6e66163c1c85ea703605d)
Theorem hlt_COUNTABLE_DIFF : forall A:set, A <> Empty -> forall s t :e 2 :^: A, hl_COUNTABLE A s = 1 -> hl_COUNTABLE A (hl_DIFF A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1708 / COUNTABLE_CROSS   (hash md5:ffe4565373a9e4478ccf49210ea1473f)
Theorem hlt_COUNTABLE_CROSS : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE A s = 1 /\ hl_COUNTABLE B t = 1 -> hl_COUNTABLE (A :*: B) (hl_CROSS A B s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1713 / COUNTABLE_AS_IMAGE_SUBSET   (hash md5:b3c1936efebecce8bb9c6ad22f0632fc)
Theorem hlt_COUNTABLE_AS_IMAGE_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_COUNTABLE A s = 1 -> exists f :e A :^: omega, hl_SUBSET A s (hl_IMAGE omega A f (hl_UNIV omega)) = 1.
Admitted.

// HOL Light: Library/card.ml:1717 / COUNTABLE_AS_IMAGE_SUBSET_EQ   (hash md5:dc40ba9489480b5bb7157e922a1d026e)
Theorem hlt_COUNTABLE_AS_IMAGE_SUBSET_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_COUNTABLE A s = 1 <-> exists f :e A :^: omega, hl_SUBSET A s (hl_IMAGE omega A f (hl_UNIV omega)) = 1.
Admitted.

// HOL Light: Library/card.ml:1721 / COUNTABLE_AS_IMAGE   (hash md5:f3681f7f99c2f6c5a16f9b8aadfcf68f)
Theorem hlt_COUNTABLE_AS_IMAGE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_COUNTABLE A s = 1 /\ ~ s = hl_EMPTY A -> exists f :e A :^: omega, s = hl_IMAGE omega A f (hl_UNIV omega).
Admitted.

// HOL Light: Library/card.ml:1730 / FORALL_COUNTABLE_AS_IMAGE   (hash md5:0aeedbf671c22e9aa3099cdcf9b405f2)
Theorem hlt_FORALL_COUNTABLE_AS_IMAGE : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall d :e 2 :^: A, hl_COUNTABLE A d = 1 -> P d = 1) <-> P (hl_EMPTY A) = 1 /\ forall f :e A :^: omega, P (hl_IMAGE omega A f (hl_UNIV omega)) = 1.
Admitted.

// HOL Light: Library/card.ml:1735 / COUNTABLE_AS_INJECTIVE_IMAGE   (hash md5:e61e59b2a37a85ea25075060403ca368)
Theorem hlt_COUNTABLE_AS_INJECTIVE_IMAGE : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_COUNTABLE A s = 1 /\ hl_INFINITE A s = 1 -> exists f :e A :^: omega, s = hl_IMAGE omega A f (hl_UNIV omega) /\ forall m n :e omega, f m = f n -> m = n.
Admitted.

// HOL Light: Library/card.ml:1743 / COUNTABLE_AS_IMAGE_NUM_SUBSET   (hash md5:08904f83b441327b3653de32b3d0d16e)
Theorem hlt_COUNTABLE_AS_IMAGE_NUM_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_COUNTABLE A s = 1 <-> exists f :e A :^: omega, exists k :e 2 :^: omega, s = hl_IMAGE omega A f k.
Admitted.

// HOL Light: Library/card.ml:1743 / COUNTABLE_AS_INJECTIVE_IMAGE_SUBSET   (hash md5:2a185ab7b5427bd03d73b4710262f8a0)
Theorem hlt_COUNTABLE_AS_INJECTIVE_IMAGE_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_COUNTABLE A s = 1 <-> exists f :e A :^: omega, exists k :e 2 :^: omega, s = hl_IMAGE omega A f k /\ forall m n :e omega, hl_IN omega m k = 1 /\ (hl_IN omega n k = 1 /\ f m = f n) -> m = n.
Admitted.

// HOL Light: Library/card.ml:1759 / COUNTABLE_UNIONS   (hash md5:33dd9b6da21834c1e4b56b55bb62fb60)
Theorem hlt_COUNTABLE_UNIONS : forall A:set, A <> Empty -> forall A1 :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) A1 = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s A1 = 1 -> hl_COUNTABLE A s = 1) -> hl_COUNTABLE A (hl_UNIONS A A1) = 1.
Admitted.

// HOL Light: Library/card.ml:1766 / COUNTABLE_PRODUCT_DEPENDENT   (hash md5:68254c9703f2d302b0a7ea7cefb73b06)
Theorem hlt_COUNTABLE_PRODUCT_DEPENDENT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B :^: A, hl_COUNTABLE A s = 1 /\ (forall x :e A, hl_IN A x s = 1 -> hl_COUNTABLE B (t x) = 1) -> hl_COUNTABLE C (hl_GSPEC C (fun GEN_PVAR_502 :e C => if exists x :e A, exists y :e B, hl_SETSPEC C GEN_PVAR_502 (if hl_IN A x s = 1 /\ hl_IN B y (t x) = 1 then 1 else 0) (f x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/card.ml:1792 / COUNTABLE_CARD_ADD   (hash md5:f3fbc0bf86cddc7ad0e475da9148b1fc)
Theorem hlt_COUNTABLE_CARD_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE A s = 1 /\ hl_COUNTABLE B t = 1 -> hl_COUNTABLE (A :+: B) (hl_sym_2b5f63 A B s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1799 / COUNTABLE_CARD_ADD_EQ   (hash md5:7b38cfd3b029e6b8edf01b1a442a1694)
Theorem hlt_COUNTABLE_CARD_ADD_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE (A :+: B) (hl_sym_2b5f63 A B s t) = 1 <-> hl_COUNTABLE A s = 1 /\ hl_COUNTABLE B t = 1.
Admitted.

// HOL Light: Library/card.ml:1806 / COUNTABLE_CARD_MUL   (hash md5:4257c44432e5c4793f1829183c460540)
Theorem hlt_COUNTABLE_CARD_MUL : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE A s = 1 /\ hl_COUNTABLE B t = 1 -> hl_COUNTABLE (A :*: B) (hl_sym_2a5f63 A B s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1811 / COUNTABLE_CARD_MUL_EQ   (hash md5:b7ebab5afb0916a74c1e992f06ccba80)
Theorem hlt_COUNTABLE_CARD_MUL_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE (A :*: B) (hl_sym_2a5f63 A B s t) = 1 <-> s = hl_EMPTY A \/ (t = hl_EMPTY B \/ hl_COUNTABLE A s = 1 /\ hl_COUNTABLE B t = 1).
Admitted.

// HOL Light: Library/card.ml:1825 / CARD_EQ_PCROSS   (hash md5:b65cfe0e8641b2bf37390f7d6aa16cdd)
Theorem hlt_CARD_EQ_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, hl_sym_3d5f63 (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_ty_cart A M :*: hl_ty_cart A N) (hl_PCROSS A M N s t) (hl_sym_2a5f63 (hl_ty_cart A M) (hl_ty_cart A N) s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1834 / COUNTABLE_PCROSS_EQ   (hash md5:f58108e5f5fb8237f62a3fbf3ee3c6e6)
Theorem hlt_COUNTABLE_PCROSS_EQ : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, hl_COUNTABLE (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart A M) \/ (t = hl_EMPTY (hl_ty_cart A N) \/ hl_COUNTABLE (hl_ty_cart A M) s = 1 /\ hl_COUNTABLE (hl_ty_cart A N) t = 1).
Admitted.

// HOL Light: Library/card.ml:1843 / COUNTABLE_PCROSS   (hash md5:7c94a287b3ce3ad1d32d32e0ee8c7880)
Theorem hlt_COUNTABLE_PCROSS : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart A M, forall t :e 2 :^: hl_ty_cart A N, hl_COUNTABLE (hl_ty_cart A M) s = 1 /\ hl_COUNTABLE (hl_ty_cart A N) t = 1 -> hl_COUNTABLE (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_PCROSS A M N s t) = 1.
Admitted.

// HOL Light: Library/card.ml:1848 / INT_COUNTABLE   (hash md5:afd26afe0f19cc88d07e40a3cf853b70)
Theorem hlt_INT_COUNTABLE : hl_COUNTABLE hl_ty_int (hl_UNIV hl_ty_int) = 1.
Admitted.

// HOL Light: Library/card.ml:1855 / CARD_EQ_INT_NUM   (hash md5:ff575720c577c348683f7e26721ab5c4)
Theorem hlt_CARD_EQ_INT_NUM : hl_sym_3d5f63 hl_ty_int omega (hl_UNIV hl_ty_int) (hl_UNIV omega) = 1.
Admitted.

// HOL Light: Library/card.ml:1861 / int_INFINITE   (hash md5:e4853864232e91a3ff47fe270a838df5)
Theorem hlt_int_INFINITE : hl_INFINITE hl_ty_int (hl_UNIV hl_ty_int) = 1.
Admitted.

// HOL Light: Library/card.ml:1866 / COUNTABLE_CART   (hash md5:8dbcf27e524a1c74051da35034e818ae)
Theorem hlt_COUNTABLE_CART : forall A N:set, A <> Empty -> N <> Empty -> forall P :e 2 :^: A :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_COUNTABLE A (hl_GSPEC A (fun GEN_PVAR_509 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_509 (P i x) x = 1 then 1 else 0)) = 1) -> hl_COUNTABLE (hl_ty_cart A N) (hl_GSPEC (hl_ty_cart A N) (fun GEN_PVAR_510 :e hl_ty_cart A N => if exists v :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A N) GEN_PVAR_510 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> P i (hl_vindex A N v i) = 1 then 1 else 0) v = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/card.ml:1907 / EXISTS_COUNTABLE_SUBSET_IMAGE_INJ   (hash md5:e2dbbd13ba499e55b55f6cefe037f7a9)
Theorem hlt_EXISTS_COUNTABLE_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (exists t :e 2 :^: B, hl_COUNTABLE B t = 1 /\ (hl_SUBSET B t (hl_IMAGE A B f s) = 1 /\ P t = 1)) <-> exists t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ (hl_SUBSET A t s = 1 /\ ((forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y)) /\ P (hl_IMAGE A B f t) = 1)).
Admitted.

// HOL Light: Library/card.ml:1917 / FORALL_COUNTABLE_SUBSET_IMAGE_INJ   (hash md5:09dd25b9a4bc011c6c1746d04802877f)
Theorem hlt_FORALL_COUNTABLE_SUBSET_IMAGE_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (forall t :e 2 :^: B, hl_COUNTABLE B t = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> P t = 1) <-> forall t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y))) -> P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: Library/card.ml:1926 / EXISTS_COUNTABLE_SUBSET_IMAGE   (hash md5:58e7e3de5ed16a642a9ad67b19c2fd3e)
Theorem hlt_EXISTS_COUNTABLE_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (exists t :e 2 :^: B, hl_COUNTABLE B t = 1 /\ (hl_SUBSET B t (hl_IMAGE A B f s) = 1 /\ P t = 1)) <-> exists t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ (hl_SUBSET A t s = 1 /\ P (hl_IMAGE A B f t) = 1).
Admitted.

// HOL Light: Library/card.ml:1934 / FORALL_COUNTABLE_SUBSET_IMAGE   (hash md5:14a789b13ed53cf92cf626352432b988)
Theorem hlt_FORALL_COUNTABLE_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (2 :^: B), forall f :e B :^: A, forall s :e 2 :^: A, (forall t :e 2 :^: B, hl_COUNTABLE B t = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1 -> P t = 1) <-> forall t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ hl_SUBSET A t s = 1 -> P (hl_IMAGE A B f t) = 1.
Admitted.

// HOL Light: Library/card.ml:1941 / COUNTABLE_SUBSET_IMAGE   (hash md5:19e65099019ec08aa843399a1b420f61)
Theorem hlt_COUNTABLE_SUBSET_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, forall t :e 2 :^: B, hl_COUNTABLE B t = 1 /\ hl_SUBSET B t (hl_IMAGE A B f s) = 1 <-> exists s' :e 2 :^: A, hl_COUNTABLE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ t = hl_IMAGE A B f s').
Admitted.

// HOL Light: Library/card.ml:1950 / COUNTABLE_IMAGE_EQ   (hash md5:98995e3f19d7ee3aaabd8799189285ea)
Theorem hlt_COUNTABLE_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_COUNTABLE B (hl_IMAGE A B f s) = 1 <-> exists t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ (hl_SUBSET A t s = 1 /\ hl_IMAGE A B f s = hl_IMAGE A B f t).
Admitted.

// HOL Light: Library/card.ml:1955 / COUNTABLE_IMAGE_EQ_INJ   (hash md5:e1483f26b23e7094312c9ae232980a4c)
Theorem hlt_COUNTABLE_IMAGE_EQ_INJ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall s :e 2 :^: A, hl_COUNTABLE B (hl_IMAGE A B f s) = 1 <-> exists t :e 2 :^: A, hl_COUNTABLE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (hl_IMAGE A B f s = hl_IMAGE A B f t /\ forall x y :e A, hl_IN A x t = 1 /\ hl_IN A y t = 1 -> (f x = f y <-> x = y))).
Admitted.

// HOL Light: Library/card.ml:1966 / COUNTABLE_FLD   (hash md5:8b56f31ab4f97ed1b223609b8cd77145)
Theorem hlt_COUNTABLE_FLD : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_COUNTABLE A (hl_fld A l) = 1 <-> hl_COUNTABLE (A :*: A) (hl_GSPEC (A :*: A) (fun GEN_PVAR_511 :e A :*: A => if exists x y :e A, hl_SETSPEC (A :*: A) GEN_PVAR_511 (l x y) (hl_pair A A x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/card.ml:1979 / COUNTABLE_UNION_OF_EMPTY   (hash md5:0ddc84dc52c8e9607adf48f6cfbe88fd)
Theorem hlt_COUNTABLE_UNION_OF_EMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_EMPTY A) = 1.
Admitted.

// HOL Light: Library/card.ml:1983 / COUNTABLE_INTERSECTION_OF_EMPTY   (hash md5:522424f00a11642c0d1ad39d5fdae6be)
Theorem hlt_COUNTABLE_INTERSECTION_OF_EMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNIV A) = 1.
Admitted.

// HOL Light: Library/card.ml:1987 / COUNTABLE_UNION_OF_INC   (hash md5:25d9213ed722bca44f3799720dffe206)
Theorem hlt_COUNTABLE_UNION_OF_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P s = 1 -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1.
Admitted.

// HOL Light: Library/card.ml:1991 / COUNTABLE_INTERSECTION_OF_INC   (hash md5:1ce60f763708729d0bdfbab684cb5354)
Theorem hlt_COUNTABLE_INTERSECTION_OF_INC : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P s = 1 -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1.
Admitted.

// HOL Light: Library/card.ml:1995 / COUNTABLE_UNION_OF_COMPLEMENT   (hash md5:571c138f56f19b2d23d11e84eeb3e447)
Theorem hlt_COUNTABLE_UNION_OF_COMPLEMENT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (fun s1 :e 2 :^: A => P (hl_DIFF A (hl_UNIV A) s1)) (hl_DIFF A (hl_UNIV A) s) = 1.
Admitted.

// HOL Light: Library/card.ml:2007 / COUNTABLE_INTERSECTION_OF_COMPLEMENT   (hash md5:457751a5b01e6f53b4a7cb8932e843c8)
Theorem hlt_COUNTABLE_INTERSECTION_OF_COMPLEMENT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (fun s1 :e 2 :^: A => P (hl_DIFF A (hl_UNIV A) s1)) (hl_DIFF A (hl_UNIV A) s) = 1.
Admitted.

// HOL Light: Library/card.ml:2013 / COUNTABLE_UNION_OF_EXPLICIT   (hash md5:24b4d576f96ef22a0149d040e6ccbf20)
Theorem hlt_COUNTABLE_UNION_OF_EXPLICIT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P (hl_EMPTY A) = 1 -> (hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 <-> exists t :e 2 :^: A :^: omega, (forall n :e omega, P (t n) = 1) /\ hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_514 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_514 (hl_IN omega n (hl_UNIV omega)) (t n) = 1 then 1 else 0)) = s).
Admitted.

// HOL Light: Library/card.ml:2034 / COUNTABLE_UNION_OF_ASCENDING   (hash md5:838b4835a322d564db28f2e517b2877e)
Theorem hlt_COUNTABLE_UNION_OF_ASCENDING : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s :e 2 :^: A, P (hl_EMPTY A) = 1 /\ (forall t u :e 2 :^: A, P t = 1 /\ P u = 1 -> P (hl_UNION A t u) = 1) -> (hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 <-> exists t :e 2 :^: A :^: omega, (forall n :e omega, P (t n) = 1) /\ ((forall n :e omega, hl_SUBSET A (t n) (t (hl_SUC n)) = 1) /\ hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_520 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_520 (hl_IN omega n (hl_UNIV omega)) (t n) = 1 then 1 else 0)) = s)).
Admitted.

// HOL Light: Library/card.ml:2058 / COUNTABLE_UNION_OF_IDEMPOT   (hash md5:2aded87e595cfb4fc0d813d14b9bb57b)
Theorem hlt_COUNTABLE_UNION_OF_IDEMPOT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P) = hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P.
Admitted.

// HOL Light: Library/card.ml:2077 / COUNTABLE_INTERSECTION_OF_IDEMPOT   (hash md5:3a7f1f726d31eaeefa7f280014e24bb7)
Theorem hlt_COUNTABLE_INTERSECTION_OF_IDEMPOT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P) = hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P.
Admitted.

// HOL Light: Library/card.ml:2085 / COUNTABLE_UNION_OF_UNIONS   (hash md5:ffacb99b836f4310102c1cd2e6ab4b31)
Theorem hlt_COUNTABLE_UNION_OF_UNIONS : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) u = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1) -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNIONS A u) = 1.
Admitted.

// HOL Light: Library/card.ml:2093 / COUNTABLE_UNION_OF_UNION   (hash md5:73c699c538232041b9c3d8a97b393cfa)
Theorem hlt_COUNTABLE_UNION_OF_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 /\ hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P t = 1 -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:2101 / COUNTABLE_INTERSECTION_OF_INTERS   (hash md5:e79ba1c7aedbfc03857ad2f2249b3352)
Theorem hlt_COUNTABLE_INTERSECTION_OF_INTERS : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) u = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1) -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_INTERS A u) = 1.
Admitted.

// HOL Light: Library/card.ml:2110 / COUNTABLE_INTERSECTION_OF_INTER   (hash md5:60bb4895b9bf004042d500071b64d4fe)
Theorem hlt_COUNTABLE_INTERSECTION_OF_INTER : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 /\ hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P t = 1 -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:2118 / COUNTABLE_UNION_OF_INTER_EQ   (hash md5:f6f46516147d89e716588d57a7a21eab)
Theorem hlt_COUNTABLE_UNION_OF_INTER_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 /\ hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P t = 1 -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_INTER A s t) = 1) <-> forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:2134 / COUNTABLE_UNION_OF_INTER   (hash md5:9294de927b358b92fe14bdf892e04b28)
Theorem hlt_COUNTABLE_UNION_OF_INTER : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_INTER A s t) = 1) -> forall s t :e 2 :^: A, hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 /\ hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P t = 1 -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_INTER A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:2142 / COUNTABLE_INTERSECTION_OF_UNION_EQ   (hash md5:d2c425381fd2333bc18cbb52ce431858)
Theorem hlt_COUNTABLE_INTERSECTION_OF_UNION_EQ : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 /\ hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P t = 1 -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNION A s t) = 1) <-> forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:2158 / COUNTABLE_INTERSECTION_OF_UNION   (hash md5:9cf68423701fd5134fd7ad6b12d45801)
Theorem hlt_COUNTABLE_INTERSECTION_OF_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_UNION A s t) = 1) -> forall s t :e 2 :^: A, hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1 /\ hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P t = 1 -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNION A s t) = 1.
Admitted.

// HOL Light: Library/card.ml:2167 / COUNTABLE_INTERSECTION_OF_UNIONS_NONEMPTY   (hash md5:157a924a4593c3eb6125005860fb288e)
Theorem hlt_COUNTABLE_INTERSECTION_OF_UNIONS_NONEMPTY : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_UNION A s t) = 1) /\ (hl_FINITE (2 :^: A) u = 1 /\ (~ u = hl_EMPTY (2 :^: A) /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1))) -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNIONS A u) = 1.
Admitted.

// HOL Light: Library/card.ml:2185 / COUNTABLE_INTERSECTION_OF_UNIONS   (hash md5:9fc7c7687d2b8491bd1f61a7ad8e48a6)
Theorem hlt_COUNTABLE_INTERSECTION_OF_UNIONS : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_EMPTY A) = 1 /\ ((forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_UNION A s t) = 1) /\ (hl_FINITE (2 :^: A) u = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1))) -> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNIONS A u) = 1.
Admitted.

// HOL Light: Library/card.ml:2199 / COUNTABLE_UNION_OF_INTERS_NONEMPTY   (hash md5:8a50509523606bda085a61fadd124159)
Theorem hlt_COUNTABLE_UNION_OF_INTERS_NONEMPTY : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), (forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_INTER A s t) = 1) /\ (hl_FINITE (2 :^: A) u = 1 /\ (~ u = hl_EMPTY (2 :^: A) /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1))) -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_INTERS A u) = 1.
Admitted.

// HOL Light: Library/card.ml:2217 / COUNTABLE_UNION_OF_INTERS   (hash md5:effa36e914d44e70a89ce4668cce59e9)
Theorem hlt_COUNTABLE_UNION_OF_INTERS : forall A:set, A <> Empty -> forall P u :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_UNIV A) = 1 /\ ((forall s t :e 2 :^: A, P s = 1 /\ P t = 1 -> P (hl_INTER A s t) = 1) /\ (hl_FINITE (2 :^: A) u = 1 /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s u = 1 -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1))) -> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P (hl_INTERS A u) = 1.
Admitted.

// HOL Light: Library/card.ml:2231 / COUNTABLE_DISJOINT_UNION_OF_IDEMPOT   (hash md5:46a6472f8b6f81ffc3a7891a04fcc0d7)
Theorem hlt_COUNTABLE_DISJOINT_UNION_OF_IDEMPOT : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNION_OF A (hl_INTER (2 :^: (2 :^: A)) (hl_COUNTABLE (2 :^: A)) (hl_pairwise (2 :^: A) (hl_DISJOINT A))) (hl_UNION_OF A (hl_INTER (2 :^: (2 :^: A)) (hl_COUNTABLE (2 :^: A)) (hl_pairwise (2 :^: A) (hl_DISJOINT A))) P) = hl_UNION_OF A (hl_INTER (2 :^: (2 :^: A)) (hl_COUNTABLE (2 :^: A)) (hl_pairwise (2 :^: A) (hl_DISJOINT A))) P.
Admitted.

// HOL Light: Library/card.ml:2266 / COUNTABLE_ASCENDING_CHAIN   (hash md5:23cd3f3ac2c4955c489d6b95d835d369)
Theorem hlt_COUNTABLE_ASCENDING_CHAIN : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) f = 1 /\ (~ f = hl_EMPTY (2 :^: A) /\ (forall s t :e 2 :^: A, hl_IN (2 :^: A) s f = 1 /\ hl_IN (2 :^: A) t f = 1 -> hl_SUBSET A s t = 1 \/ hl_SUBSET A t s = 1)) -> exists u :e 2 :^: A :^: omega, (forall n :e omega, hl_IN (2 :^: A) (u n) f = 1) /\ ((forall n :e omega, hl_SUBSET A (u n) (u (hl_SUC n)) = 1) /\ hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_523 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_523 (hl_IN omega n (hl_UNIV omega)) (u n) = 1 then 1 else 0)) = hl_UNIONS A f).
Admitted.

// HOL Light: Library/card.ml:2293 / COUNTABLE_DESCENDING_CHAIN   (hash md5:3f4c6fc53480fd08d17216521ad1816c)
Theorem hlt_COUNTABLE_DESCENDING_CHAIN : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: A), hl_COUNTABLE (2 :^: A) f = 1 /\ (~ f = hl_EMPTY (2 :^: A) /\ (forall s t :e 2 :^: A, hl_IN (2 :^: A) s f = 1 /\ hl_IN (2 :^: A) t f = 1 -> hl_SUBSET A s t = 1 \/ hl_SUBSET A t s = 1)) -> exists u :e 2 :^: A :^: omega, (forall n :e omega, hl_IN (2 :^: A) (u n) f = 1) /\ ((forall n :e omega, hl_SUBSET A (u (hl_SUC n)) (u n) = 1) /\ hl_INTERS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_524 :e 2 :^: A => if exists n :e omega, hl_SETSPEC (2 :^: A) GEN_PVAR_524 (hl_IN omega n (hl_UNIV omega)) (u n) = 1 then 1 else 0)) = hl_INTERS A f).
Admitted.

// HOL Light: Library/card.ml:2326 / CARD_EQ_LIST_GEN   (hash md5:6872001ede71a71ee0428c5bb33116c7)
Theorem hlt_CARD_EQ_LIST_GEN : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_INFINITE A s = 1 -> hl_sym_3d5f63 (finseq A) A (hl_GSPEC (finseq A) (fun GEN_PVAR_525 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_525 (if forall x :e A, hl_MEM A x l = 1 -> hl_IN A x s = 1 then 1 else 0) l = 1 then 1 else 0)) s = 1.
Admitted.

// HOL Light: Library/card.ml:2360 / CARD_EQ_LIST   (hash md5:cbb78e7bdf6708c8dbc4cd6f1a47bd31)
Theorem hlt_CARD_EQ_LIST : forall A:set, A <> Empty -> hl_INFINITE A (hl_UNIV A) = 1 -> hl_sym_3d5f63 (finseq A) A (hl_UNIV (finseq A)) (hl_UNIV A) = 1.
Admitted.

// HOL Light: Library/card.ml:2365 / CARD_EQ_CART   (hash md5:c0c0f1a6f2601aec0718b9db8ec0debc)
Theorem hlt_CARD_EQ_CART : forall A N:set, A <> Empty -> N <> Empty -> hl_INFINITE A (hl_UNIV A) = 1 -> hl_sym_3d5f63 (hl_ty_cart A N) A (hl_UNIV (hl_ty_cart A N)) (hl_UNIV A) = 1.
Admitted.

