// hol2mg literal statements (private): shard theorems of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: theorems.ml:17 / EQ_REFL   (hash md5:5fb3b368ada0da55fa9425fc34443cce)
Theorem hlt_EQ_REFL : forall A:set, A <> Empty -> forall x :e A, x = x.
Admitted.

// HOL Light: theorems.ml:21 / REFL_CLAUSE   (hash md5:2ce4c3adc3cbc009644ca0f1da20bfcf)
Theorem hlt_REFL_CLAUSE : forall A:set, A <> Empty -> forall x :e A, x = x <-> True.
Admitted.

// HOL Light: theorems.ml:25 / EQ_SYM   (hash md5:b9d6fe477bd3d7fa5366b65298ff2a45)
Theorem hlt_EQ_SYM : forall A:set, A <> Empty -> forall x y :e A, x = y -> y = x.
Admitted.

// HOL Light: theorems.ml:29 / EQ_SYM_EQ   (hash md5:2232c266541db65541247b04739eb1ad)
Theorem hlt_EQ_SYM_EQ : forall A:set, A <> Empty -> forall x y :e A, x = y <-> y = x.
Admitted.

// HOL Light: theorems.ml:33 / EQ_TRANS   (hash md5:a433f46488d631f19c0671432eca45a2)
Theorem hlt_EQ_TRANS : forall A:set, A <> Empty -> forall x y z :e A, x = y /\ y = z -> x = z.
Admitted.

// HOL Light: theorems.ml:47 / BETA_THM   (hash md5:014410de6c67ffec5a76c8993197b426)
Theorem hlt_BETA_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall y :e A, (fun x :e A => f x) y = f y.
Admitted.

// HOL Light: theorems.ml:51 / ABS_SIMP   (hash md5:60035b0f6aaa54e21e40375b2cfc2b87)
Theorem hlt_ABS_SIMP : forall A B:set, A <> Empty -> B <> Empty -> forall t1 :e A, forall t2 :e B, (fun x :e B => t1) t2 = t1.
Admitted.

// HOL Light: theorems.ml:59 / CONJ_ASSOC   (hash md5:68b444512171831dd562fcbd5b2c97dc)
Theorem hlt_CONJ_ASSOC : forall t1 t2 t3 :e 2, t1 = 1 /\ (t2 = 1 /\ t3 = 1) <-> t1 = 1 /\ t2 = 1 /\ t3 = 1.
Admitted.

// HOL Light: theorems.ml:63 / CONJ_SYM   (hash md5:cd8473c2e3bc69d3247d921266d28857)
Theorem hlt_CONJ_SYM : forall t1 t2 :e 2, t1 = 1 /\ t2 = 1 <-> t2 = 1 /\ t1 = 1.
Admitted.

// HOL Light: theorems.ml:67 / CONJ_ACI   (hash md5:9c74a16c4a4acede32b14fa26a41200a)
Theorem hlt_CONJ_ACI : forall p q r :e 2, (p = 1 /\ q = 1 <-> q = 1 /\ p = 1) /\ ((p = 1 /\ q = 1 /\ r = 1 <-> p = 1 /\ (q = 1 /\ r = 1)) /\ ((p = 1 /\ (q = 1 /\ r = 1) <-> q = 1 /\ (p = 1 /\ r = 1)) /\ ((p = 1 /\ p = 1 <-> p = 1) /\ (p = 1 /\ (p = 1 /\ q = 1) <-> p = 1 /\ q = 1)))).
Admitted.

// HOL Light: theorems.ml:75 / DISJ_ASSOC   (hash md5:94fb6e52c45be0ee495157082ccec039)
Theorem hlt_DISJ_ASSOC : forall t1 t2 t3 :e 2, t1 = 1 \/ (t2 = 1 \/ t3 = 1) <-> t1 = 1 \/ t2 = 1 \/ t3 = 1.
Admitted.

// HOL Light: theorems.ml:79 / DISJ_SYM   (hash md5:b367350478e7ae03ac7490f315c5c53d)
Theorem hlt_DISJ_SYM : forall t1 t2 :e 2, t1 = 1 \/ t2 = 1 <-> t2 = 1 \/ t1 = 1.
Admitted.

// HOL Light: theorems.ml:83 / DISJ_ACI   (hash md5:c1a1228e4cd352b332da0dca0216713c)
Theorem hlt_DISJ_ACI : forall p q r :e 2, (p = 1 \/ q = 1 <-> q = 1 \/ p = 1) /\ ((p = 1 \/ q = 1 \/ r = 1 <-> p = 1 \/ (q = 1 \/ r = 1)) /\ ((p = 1 \/ (q = 1 \/ r = 1) <-> q = 1 \/ (p = 1 \/ r = 1)) /\ ((p = 1 \/ p = 1 <-> p = 1) /\ (p = 1 \/ (p = 1 \/ q = 1) <-> p = 1 \/ q = 1)))).
Admitted.

// HOL Light: theorems.ml:91 / IMP_CONJ   (hash md5:7f69a2c0ad4dbc5a9933e79329373bd2)
Theorem hlt_IMP_CONJ : forall p q r :e 2, p = 1 /\ q = 1 -> r = 1 <-> p = 1 -> q = 1 -> r = 1.
Admitted.

// HOL Light: theorems.ml:95 / IMP_IMP   (hash md5:c2afa2acad374e8c7a067da34eebffa5)
Theorem hlt_IMP_IMP : forall p q r :e 2, p = 1 -> q = 1 -> r = 1 <-> p = 1 /\ q = 1 -> r = 1.
Admitted.

// HOL Light: theorems.ml:97 / IMP_CONJ_ALT   (hash md5:3691331c57b4197b7664f3980fcf35a2)
Theorem hlt_IMP_CONJ_ALT : forall p q r :e 2, p = 1 /\ q = 1 -> r = 1 <-> q = 1 -> p = 1 -> r = 1.
Admitted.

// HOL Light: theorems.ml:105 / LEFT_OR_DISTRIB   (hash md5:e8a5c513c28357407acf729d84e1d039)
Theorem hlt_LEFT_OR_DISTRIB : forall p q r :e 2, p = 1 /\ (q = 1 \/ r = 1) <-> p = 1 /\ q = 1 \/ p = 1 /\ r = 1.
Admitted.

// HOL Light: theorems.ml:109 / RIGHT_OR_DISTRIB   (hash md5:7e48875e210f34a9a2c22591e6b9403c)
Theorem hlt_RIGHT_OR_DISTRIB : forall p q r :e 2, (p = 1 \/ q = 1) /\ r = 1 <-> p = 1 /\ r = 1 \/ q = 1 /\ r = 1.
Admitted.

// HOL Light: theorems.ml:117 / FORALL_SIMP   (hash md5:5b2bbb121df4deed7a734bfc92ca8777)
Theorem hlt_FORALL_SIMP : forall A:set, A <> Empty -> forall t :e 2, (forall x :e A, t = 1) <-> t = 1.
Admitted.

// HOL Light: theorems.ml:121 / EXISTS_SIMP   (hash md5:b5ababf3666ca1bcaccce45441156521)
Theorem hlt_EXISTS_SIMP : forall A:set, A <> Empty -> forall t :e 2, (exists x :e A, t = 1) <-> t = 1.
Admitted.

// HOL Light: theorems.ml:129 / EQ_IMP   (hash md5:889b227d11bb9b8ec4e1b0134eb5b325)
Theorem hlt_EQ_IMP : forall a b :e 2, (a = 1 <-> b = 1) -> a = 1 -> b = 1.
Admitted.

// HOL Light: theorems.ml:135 / EQ_CLAUSES   (hash md5:a45d7c9d85285642cfa3024e621fd5c5)
Theorem hlt_EQ_CLAUSES : forall t :e 2, ((True <-> t = 1) <-> t = 1) /\ (((t = 1 <-> True) <-> t = 1) /\ (((False <-> t = 1) <-> ~ t = 1) /\ ((t = 1 <-> False) <-> ~ t = 1))).
Admitted.

// HOL Light: theorems.ml:140 / NOT_CLAUSES_WEAK   (hash md5:6b28ea76696090f22c8e96fc4ada3b7e)
Theorem hlt_NOT_CLAUSES_WEAK : (~ True <-> False) /\ (~ False <-> True).
Admitted.

// HOL Light: theorems.ml:144 / AND_CLAUSES   (hash md5:984c7e9a6a57999089ad22b53f6a110e)
Theorem hlt_AND_CLAUSES : forall t :e 2, (True /\ t = 1 <-> t = 1) /\ ((t = 1 /\ True <-> t = 1) /\ ((False /\ t = 1 <-> False) /\ ((t = 1 /\ False <-> False) /\ (t = 1 /\ t = 1 <-> t = 1)))).
Admitted.

// HOL Light: theorems.ml:149 / OR_CLAUSES   (hash md5:5dafa8d855df75672f600f99dae41d5d)
Theorem hlt_OR_CLAUSES : forall t :e 2, (True \/ t = 1 <-> True) /\ ((t = 1 \/ True <-> True) /\ ((False \/ t = 1 <-> t = 1) /\ ((t = 1 \/ False <-> t = 1) /\ (t = 1 \/ t = 1 <-> t = 1)))).
Admitted.

// HOL Light: theorems.ml:154 / IMP_CLAUSES   (hash md5:6382a4321b560df4302c6f84b6cf6558)
Theorem hlt_IMP_CLAUSES : forall t :e 2, (True -> t = 1 <-> t = 1) /\ ((t = 1 -> True <-> True) /\ ((False -> t = 1 <-> True) /\ ((t = 1 -> t = 1 <-> True) /\ (t = 1 -> False <-> ~ t = 1)))).
Admitted.

// HOL Light: theorems.ml:181 / EXISTS_UNIQUE_THM   (hash md5:60b7bbfee72d562d12f567ea88549b0b)
Theorem hlt_EXISTS_UNIQUE_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, hl_exists_unique A (fun x :e A => P x) = 1 <-> (exists x :e A, P x = 1) /\ forall x x' :e A, P x = 1 /\ P x' = 1 -> x = x'.
Admitted.

// HOL Light: theorems.ml:189 / EXISTS_REFL   (hash md5:e372b30f99349efa111d83e2f360fb61)
Theorem hlt_EXISTS_REFL : forall A:set, A <> Empty -> forall a :e A, exists x :e A, x = a.
Admitted.

// HOL Light: theorems.ml:193 / EXISTS_UNIQUE_REFL   (hash md5:073206835fb258ce74d7a2600f421fc2)
Theorem hlt_EXISTS_UNIQUE_REFL : forall A:set, A <> Empty -> forall a :e A, hl_exists_unique A (fun x :e A => if x = a then 1 else 0) = 1.
Admitted.

// HOL Light: theorems.ml:204 / UNWIND_THM1   (hash md5:e252b2b585ba192019ab0a47e91cd9f2)
Theorem hlt_UNWIND_THM1 : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall a :e A, (exists x :e A, a = x /\ P x = 1) <-> P a = 1.
Admitted.

// HOL Light: theorems.ml:212 / UNWIND_THM2   (hash md5:e8d8e93a8219ea0d4c61e00ac998b7dd)
Theorem hlt_UNWIND_THM2 : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall a :e A, (exists x :e A, x = a /\ P x = 1) <-> P a = 1.
Admitted.

// HOL Light: theorems.ml:217 / FORALL_UNWIND_THM2   (hash md5:7d11942b1403e24a33afde7223638f39)
Theorem hlt_FORALL_UNWIND_THM2 : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall a :e A, (forall x :e A, x = a -> P x = 1) <-> P a = 1.
Admitted.

// HOL Light: theorems.ml:224 / FORALL_UNWIND_THM1   (hash md5:c29e48c57e6988d9b8de51887e94c310)
Theorem hlt_FORALL_UNWIND_THM1 : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall a :e A, (forall x :e A, a = x -> P x = 1) <-> P a = 1.
Admitted.

// HOL Light: theorems.ml:233 / SWAP_FORALL_THM   (hash md5:df4989caae04c5ecc3e98a343479c369)
Theorem hlt_SWAP_FORALL_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (forall x :e A, forall y :e B, P x y = 1) <-> forall y :e B, forall x :e A, P x y = 1.
Admitted.

// HOL Light: theorems.ml:237 / SWAP_EXISTS_THM   (hash md5:68425fa12a3aa533a8d863f53ba19aa1)
Theorem hlt_SWAP_EXISTS_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (exists x :e A, exists y :e B, P x y = 1) <-> exists y :e B, exists x :e A, P x y = 1.
Admitted.

// HOL Light: theorems.ml:245 / FORALL_AND_THM   (hash md5:75e6b56a5e3738f48b8fb06a01e01c5c)
Theorem hlt_FORALL_AND_THM : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, (forall x :e A, P x = 1 /\ Q x = 1) <-> (forall x :e A, P x = 1) /\ forall x :e A, Q x = 1.
Admitted.

// HOL Light: theorems.ml:249 / AND_FORALL_THM   (hash md5:73a7c7f99a6c5d4a0d18f7ea8c96f6ac)
Theorem hlt_AND_FORALL_THM : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, (forall x :e A, P x = 1) /\ (forall x :e A, Q x = 1) <-> forall x :e A, P x = 1 /\ Q x = 1.
Admitted.

// HOL Light: theorems.ml:253 / LEFT_AND_FORALL_THM   (hash md5:1a818b23117872a17bce344ded21ccc4)
Theorem hlt_LEFT_AND_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1) /\ Q = 1 <-> forall x :e A, P x = 1 /\ Q = 1.
Admitted.

// HOL Light: theorems.ml:257 / RIGHT_AND_FORALL_THM   (hash md5:d1de553f0e426609dda135a2047295df)
Theorem hlt_RIGHT_AND_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 /\ (forall x :e A, Q x = 1) <-> forall x :e A, P = 1 /\ Q x = 1.
Admitted.

// HOL Light: theorems.ml:265 / EXISTS_OR_THM   (hash md5:4d21283ecdaa6cc6acfad8726c3265d6)
Theorem hlt_EXISTS_OR_THM : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, (exists x :e A, P x = 1 \/ Q x = 1) <-> (exists x :e A, P x = 1) \/ exists x :e A, Q x = 1.
Admitted.

// HOL Light: theorems.ml:269 / OR_EXISTS_THM   (hash md5:90eb72cc8cdc71781fd4760c248ec42c)
Theorem hlt_OR_EXISTS_THM : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, (exists x :e A, P x = 1) \/ (exists x :e A, Q x = 1) <-> exists x :e A, P x = 1 \/ Q x = 1.
Admitted.

// HOL Light: theorems.ml:273 / LEFT_OR_EXISTS_THM   (hash md5:a673b3117cfb5d8398c737191e4b922d)
Theorem hlt_LEFT_OR_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (exists x :e A, P x = 1) \/ Q = 1 <-> exists x :e A, P x = 1 \/ Q = 1.
Admitted.

// HOL Light: theorems.ml:277 / RIGHT_OR_EXISTS_THM   (hash md5:d2105ebd3af898181bee555d72947726)
Theorem hlt_RIGHT_OR_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 \/ (exists x :e A, Q x = 1) <-> exists x :e A, P = 1 \/ Q x = 1.
Admitted.

// HOL Light: theorems.ml:285 / LEFT_EXISTS_AND_THM   (hash md5:174d261bd6d0c9a4df5fae53976158d3)
Theorem hlt_LEFT_EXISTS_AND_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (exists x :e A, P x = 1 /\ Q = 1) <-> (exists x :e A, P x = 1) /\ Q = 1.
Admitted.

// HOL Light: theorems.ml:289 / RIGHT_EXISTS_AND_THM   (hash md5:5b92102c260f0a6d245defde7c3af61f)
Theorem hlt_RIGHT_EXISTS_AND_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, (exists x :e A, P = 1 /\ Q x = 1) <-> P = 1 /\ exists x :e A, Q x = 1.
Admitted.

// HOL Light: theorems.ml:293 / TRIV_EXISTS_AND_THM   (hash md5:0de49eaf0c1adf3904ba0ac67ea7bcbf)
Theorem hlt_TRIV_EXISTS_AND_THM : forall A:set, A <> Empty -> forall P Q :e 2, (exists x :e A, P = 1 /\ Q = 1) <-> (exists x :e A, P = 1) /\ exists x :e A, Q = 1.
Admitted.

// HOL Light: theorems.ml:297 / LEFT_AND_EXISTS_THM   (hash md5:65f7ae7917946d1349165a2813d15f15)
Theorem hlt_LEFT_AND_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (exists x :e A, P x = 1) /\ Q = 1 <-> exists x :e A, P x = 1 /\ Q = 1.
Admitted.

// HOL Light: theorems.ml:301 / RIGHT_AND_EXISTS_THM   (hash md5:8e95ec474ffede053f33ad8095d8a09f)
Theorem hlt_RIGHT_AND_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 /\ (exists x :e A, Q x = 1) <-> exists x :e A, P = 1 /\ Q x = 1.
Admitted.

// HOL Light: theorems.ml:305 / TRIV_AND_EXISTS_THM   (hash md5:d98a270e9b300e2cbf422699a6457f7d)
Theorem hlt_TRIV_AND_EXISTS_THM : forall A:set, A <> Empty -> forall P Q :e 2, (exists x :e A, P = 1) /\ (exists x :e A, Q = 1) <-> exists x :e A, P = 1 /\ Q = 1.
Admitted.

// HOL Light: theorems.ml:313 / TRIV_FORALL_OR_THM   (hash md5:ef955ba74e738b664b318652bd77aa21)
Theorem hlt_TRIV_FORALL_OR_THM : forall A:set, A <> Empty -> forall P Q :e 2, (forall x :e A, P = 1 \/ Q = 1) <-> (forall x :e A, P = 1) \/ forall x :e A, Q = 1.
Admitted.

// HOL Light: theorems.ml:317 / TRIV_OR_FORALL_THM   (hash md5:3b71a04d9989b858b5236191c75db2c4)
Theorem hlt_TRIV_OR_FORALL_THM : forall A:set, A <> Empty -> forall P Q :e 2, (forall x :e A, P = 1) \/ (forall x :e A, Q = 1) <-> forall x :e A, P = 1 \/ Q = 1.
Admitted.

// HOL Light: theorems.ml:325 / RIGHT_IMP_FORALL_THM   (hash md5:c00ea28ad44fb8f262759a876ced5e51)
Theorem hlt_RIGHT_IMP_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 -> (forall x :e A, Q x = 1) <-> forall x :e A, P = 1 -> Q x = 1.
Admitted.

// HOL Light: theorems.ml:329 / RIGHT_FORALL_IMP_THM   (hash md5:49dae7a1bd9dbbdf2c18e68591909be9)
Theorem hlt_RIGHT_FORALL_IMP_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, (forall x :e A, P = 1 -> Q x = 1) <-> P = 1 -> forall x :e A, Q x = 1.
Admitted.

// HOL Light: theorems.ml:333 / LEFT_IMP_EXISTS_THM   (hash md5:d793fa8a6744565ded8518fb3f09de3c)
Theorem hlt_LEFT_IMP_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (exists x :e A, P x = 1) -> Q = 1 <-> forall x :e A, P x = 1 -> Q = 1.
Admitted.

// HOL Light: theorems.ml:337 / LEFT_FORALL_IMP_THM   (hash md5:50f8d6e255e3aec22a07150b97dda695)
Theorem hlt_LEFT_FORALL_IMP_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1 -> Q = 1) <-> (exists x :e A, P x = 1) -> Q = 1.
Admitted.

// HOL Light: theorems.ml:341 / TRIV_FORALL_IMP_THM   (hash md5:fc1e6c9b012c86ee3eb169faba899404)
Theorem hlt_TRIV_FORALL_IMP_THM : forall A:set, A <> Empty -> forall P Q :e 2, (forall x :e A, P = 1 -> Q = 1) <-> (exists x :e A, P = 1) -> forall x :e A, Q = 1.
Admitted.

// HOL Light: theorems.ml:345 / TRIV_EXISTS_IMP_THM   (hash md5:128909a27b6a7b16d3f5ab2d4dc057f3)
Theorem hlt_TRIV_EXISTS_IMP_THM : forall A:set, A <> Empty -> forall P Q :e 2, (exists x :e A, P = 1 -> Q = 1) <-> (forall x :e A, P = 1) -> exists x :e A, Q = 1.
Admitted.

// HOL Light: theorems.ml:353 / MONO_AND   (hash md5:84b21299680648a101ec81f4a4edbf15)
Theorem hlt_MONO_AND : forall A B C D :e 2, (A = 1 -> B = 1) /\ (C = 1 -> D = 1) -> A = 1 /\ C = 1 -> B = 1 /\ D = 1.
Admitted.

// HOL Light: theorems.ml:355 / MONO_OR   (hash md5:9ba2497fd2426d0f601d403fe59036b3)
Theorem hlt_MONO_OR : forall A B C D :e 2, (A = 1 -> B = 1) /\ (C = 1 -> D = 1) -> A = 1 \/ C = 1 -> B = 1 \/ D = 1.
Admitted.

// HOL Light: theorems.ml:357 / MONO_IMP   (hash md5:b6b356d2e9d76083ffa88b0986af798f)
Theorem hlt_MONO_IMP : forall B A C D :e 2, (B = 1 -> A = 1) /\ (C = 1 -> D = 1) -> (A = 1 -> C = 1) -> B = 1 -> D = 1.
Admitted.

// HOL Light: theorems.ml:359 / MONO_NOT   (hash md5:f70b61870f971356e881aa6a56b2136b)
Theorem hlt_MONO_NOT : forall B A :e 2, (B = 1 -> A = 1) -> ~ A = 1 -> ~ B = 1.
Admitted.

// HOL Light: theorems.ml:361 / MONO_FORALL   (hash md5:32c8690ef1e35ecb9a776a51c3db2049)
Theorem hlt_MONO_FORALL : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, (forall x :e A, P x = 1 -> Q x = 1) -> (forall x :e A, P x = 1) -> forall x :e A, Q x = 1.
Admitted.

// HOL Light: theorems.ml:366 / MONO_EXISTS   (hash md5:4025fabd3eb4e3c1e0e82ec526e01240)
Theorem hlt_MONO_EXISTS : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, (forall x :e A, P x = 1 -> Q x = 1) -> (exists x :e A, P x = 1) -> exists x :e A, Q x = 1.
Admitted.

// HOL Light: theorems.ml:376 / WLOG_RELATION   (hash md5:3b7f91a78da7595edabc7bbf2d9ddc5e)
Theorem hlt_WLOG_RELATION : forall A:set, A <> Empty -> forall R1 P :e 2 :^: A :^: A, (forall x y :e A, P x y = 1 -> P y x = 1) /\ ((forall x y :e A, R1 x y = 1 \/ R1 y x = 1) /\ (forall x y :e A, R1 x y = 1 -> P x y = 1)) -> forall x y :e A, P x y = 1.
Admitted.

// HOL Light: theorems.ml:390 / EXISTS_UNIQUE_ALT   (hash md5:63f42046bcacdb879337e6049d3196a9)
Theorem hlt_EXISTS_UNIQUE_ALT : forall A:set, A <> Empty -> forall P :e 2 :^: A, hl_exists_unique A (fun x :e A => P x) = 1 <-> exists x :e A, forall y :e A, P y = 1 <-> x = y.
Admitted.

// HOL Light: theorems.ml:401 / EXISTS_UNIQUE   (hash md5:ad104165c45f1735d28d0c6950611def)
Theorem hlt_EXISTS_UNIQUE : forall A:set, A <> Empty -> forall P :e 2 :^: A, hl_exists_unique A (fun x :e A => P x) = 1 <-> exists x :e A, P x = 1 /\ forall y :e A, P y = 1 -> y = x.
Admitted.

