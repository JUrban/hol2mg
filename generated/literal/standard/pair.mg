// hol2mg literal statements (private): shard pair of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: pair.ml:17 / LET_DEF   (hash md5:b500f0ea638d009d27d0410e5045329f)
Theorem hlt_LET_DEF : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall x :e A, hl_LET A B f x = f x.
Admitted.

// HOL Light: pair.ml:20 / LET_END_DEF   (hash md5:3540107cfa54c763381fa257e545baa3)
Theorem hlt_LET_END_DEF : forall A:set, A <> Empty -> forall t :e A, hl_LET_END A t = t.
Admitted.

// HOL Light: pair.ml:23 / GABS_DEF   (hash md5:8886898d2ce6038507d1ad6358b50777)
Theorem hlt_GABS_DEF : forall A:set, A <> Empty -> forall P :e 2 :^: A, hl_GABS A P = hl_select A P.
Admitted.

// HOL Light: pair.ml:26 / GEQ_DEF   (hash md5:63c343763b93289fcbc6a4902986b64f)
Theorem hlt_GEQ_DEF : forall A:set, A <> Empty -> forall a b :e A, hl_GEQ A a b = 1 <-> a = b.
Admitted.

// HOL Light: pair.ml:29 / _SEQPATTERN   (hash md5:b3b669326d22d0c484a1518227920436)
Theorem hlt__SEQPATTERN : forall A B:set, A <> Empty -> B <> Empty -> hl__SEQPATTERN A B = fun r :e 2 :^: B :^: A => fun s :e 2 :^: B :^: A => fun x :e A => hl_COND (2 :^: B) (if exists y :e B, r x y = 1 then 1 else 0) (r x) (s x).
Admitted.

// HOL Light: pair.ml:32 / _UNGUARDED_PATTERN   (hash md5:2e16ab36685a668362711f6593fe63bd)
Theorem hlt__UNGUARDED_PATTERN : hl__UNGUARDED_PATTERN = fun p :e 2 => fun r :e 2 => if p = 1 /\ r = 1 then 1 else 0.
Admitted.

// HOL Light: pair.ml:35 / _GUARDED_PATTERN   (hash md5:21f370a5a0b371b8153ac01cb6ecf1fa)
Theorem hlt__GUARDED_PATTERN : hl__GUARDED_PATTERN = fun p :e 2 => fun g :e 2 => fun r :e 2 => if p = 1 /\ (g = 1 /\ r = 1) then 1 else 0.
Admitted.

// HOL Light: pair.ml:38 / _MATCH   (hash md5:f2c54507accb137d79af6653bd21cacf)
Theorem hlt__MATCH : forall A B:set, A <> Empty -> B <> Empty -> hl__MATCH A B = fun e1 :e A => fun r :e 2 :^: B :^: A => hl_COND B (hl_exists_unique B (r e1)) (hl_select B (r e1)) (hl_select B (fun z :e B => if False then 1 else 0)).
Admitted.

// HOL Light: pair.ml:41 / _FUNCTION   (hash md5:772291ed615d0bb469942917848f8fb2)
Theorem hlt__FUNCTION : forall A B:set, A <> Empty -> B <> Empty -> hl__FUNCTION A B = fun r :e 2 :^: B :^: A => fun x :e A => hl_COND B (hl_exists_unique B (r x)) (hl_select B (r x)) (hl_select B (fun z :e B => if False then 1 else 0)).
Admitted.

// HOL Light: pair.ml:48 / mk_pair_def   (hash md5:922b62add08c32ff8c9f0ecadf276aee)
Theorem hlt_mk_pair_def : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, hl_mk_pair A B x y = fun a :e A => fun b :e B => if a = x /\ b = y then 1 else 0.
Admitted.

// HOL Light: pair.ml:51 / PAIR_EXISTS_THM   (hash md5:0b5592a6adaaca446015b3fb17077717)
Theorem hlt_PAIR_EXISTS_THM : forall A B:set, A <> Empty -> B <> Empty -> exists x :e 2 :^: B :^: A, exists a :e A, exists b :e B, x = hl_mk_pair A B a b.
Admitted.

// HOL Light: pair.ml:67 / FST_DEF   (hash md5:085c9267477376ef68995b88baf72064)
Theorem hlt_FST_DEF : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, hl_FST A B p = hl_select A (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0).
Admitted.

// HOL Light: pair.ml:70 / SND_DEF   (hash md5:f00cacab114b37c19aba6b06c35bb916)
Theorem hlt_SND_DEF : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, hl_SND A B p = hl_select B (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0).
Admitted.

// HOL Light: pair.ml:73 / PAIR_EQ   (hash md5:71770245f4ddd568d85751053a9e5a6e)
Theorem hlt_PAIR_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, forall a :e A, forall b :e B, hl_pair A B x y = hl_pair A B a b <-> x = a /\ y = b.
Admitted.

// HOL Light: pair.ml:82 / PAIR_SURJECTIVE   (hash md5:8a85c46beb474e1e63192937ada8908b)
Theorem hlt_PAIR_SURJECTIVE : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, exists x :e A, exists y :e B, p = hl_pair A B x y.
Admitted.

// HOL Light: pair.ml:92 / FST   (hash md5:e9c3a4a3164ca2f9e6fad2d535f8ab0f)
Theorem hlt_FST : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, hl_FST A B (hl_pair A B x y) = x.
Admitted.

// HOL Light: pair.ml:100 / SND   (hash md5:e4ac88e20ba11cb060769e77dcb122fe)
Theorem hlt_SND : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, hl_SND A B (hl_pair A B x y) = y.
Admitted.

// HOL Light: pair.ml:108 / PAIR   (hash md5:23613fb98ddd9bc0b8abe81386bec32f)
Theorem hlt_PAIR : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A :*: B, hl_pair A B (hl_FST A B x) (hl_SND A B x) = x.
Admitted.

// HOL Light: pair.ml:115 / pair_INDUCT   (hash md5:77b383354fddaa2478d8ab26c6548c60)
Theorem hlt_pair_INDUCT : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (forall x :e A, forall y :e B, P (hl_pair A B x y) = 1) -> forall p :e A :*: B, P p = 1.
Admitted.

// HOL Light: pair.ml:121 / pair_RECURSION   (hash md5:d319dfea4248978ad1e1ecfa13aee49a)
Theorem hlt_pair_RECURSION : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall PAIR' :e C :^: B :^: A, exists fn :e C :^: (A :*: B), forall a0 :e A, forall a1 :e B, fn (hl_pair A B a0 a1) = PAIR' a0 a1.
Admitted.

// HOL Light: pair.ml:187 / CURRY_DEF   (hash md5:cede113a4abd362ecff19b551d8931ed)
Theorem hlt_CURRY_DEF : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: (A :*: B), forall x :e A, forall y :e B, hl_CURRY A B C f x y = f (hl_pair A B x y).
Admitted.

// HOL Light: pair.ml:190 / UNCURRY_DEF   (hash md5:3f03a0bbd511648cd075ac39bfcfc4bb)
Theorem hlt_UNCURRY_DEF : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B :^: A, forall x :e A, forall y :e B, hl_UNCURRY A B C f (hl_pair A B x y) = f x y.
Admitted.

// HOL Light: pair.ml:193 / PASSOC_DEF   (hash md5:9c161349298da1eba1ac9e3d2bbf725f)
Theorem hlt_PASSOC_DEF : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e D :^: (A :*: B :*: C), forall x :e A, forall y :e B, forall z :e C, hl_PASSOC A B C D f (hl_pair A (B :*: C) x (hl_pair B C y z)) = f (hl_pair (A :*: B) C (hl_pair A B x y) z).
Admitted.

// HOL Light: pair.ml:295 / FORALL_PAIR_THM   (hash md5:259d29f2f6087c2bd6a11a52412f4491)
Theorem hlt_FORALL_PAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (forall p :e A :*: B, P p = 1) <-> forall p1 :e A, forall p2 :e B, P (hl_pair A B p1 p2) = 1.
Admitted.

// HOL Light: pair.ml:299 / EXISTS_PAIR_THM   (hash md5:64b789e52ff2b13a976b5610389dc69b)
Theorem hlt_EXISTS_PAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (exists p :e A :*: B, P p = 1) <-> exists p1 :e A, exists p2 :e B, P (hl_pair A B p1 p2) = 1.
Admitted.

// HOL Light: pair.ml:303 / LAMBDA_PAIR_THM   (hash md5:5cd80d8f0fe05eb8b4cf070c629deed9)
Theorem hlt_LAMBDA_PAIR_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall t :e C :^: (A :*: B), (fun p :e A :*: B => t p) = hl_GABS (C :^: (A :*: B)) (fun f :e C :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ C (f (hl_pair A B x y)) (t (hl_pair A B x y)) = 1 then 1 else 0).
Admitted.

// HOL Light: pair.ml:307 / LAMBDA_PAIR   (hash md5:586467ad9feb215fbc9e08d6caadf6c7)
Theorem hlt_LAMBDA_PAIR : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B :^: A, hl_GABS (C :^: (A :*: B)) (fun f1 :e C :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ C (f1 (hl_pair A B x y)) (f x y) = 1 then 1 else 0) = fun p :e A :*: B => f (hl_FST A B p) (hl_SND A B p).
Admitted.

// HOL Light: pair.ml:311 / LAMBDA_TRIPLE_THM   (hash md5:85e4aaa45bf38442ceebb65097fe1b7d)
Theorem hlt_LAMBDA_TRIPLE_THM : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e D :^: (A :*: (B :*: C)), (fun t :e A :*: (B :*: C) => f t) = hl_GABS (D :^: (A :*: (B :*: C))) (fun f' :e D :^: (A :*: (B :*: C)) => if forall x :e A, forall y :e B, forall z :e C, hl_GEQ D (f' (hl_pair A (B :*: C) x (hl_pair B C y z))) (f (hl_pair A (B :*: C) x (hl_pair B C y z))) = 1 then 1 else 0).
Admitted.

// HOL Light: pair.ml:315 / LAMBDA_TRIPLE   (hash md5:0cd632bb91bd111d0fb856a95916279d)
Theorem hlt_LAMBDA_TRIPLE : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e D :^: C :^: B :^: A, hl_GABS (D :^: (A :*: (B :*: C))) (fun f1 :e D :^: (A :*: (B :*: C)) => if forall x :e A, forall y :e B, forall z :e C, hl_GEQ D (f1 (hl_pair A (B :*: C) x (hl_pair B C y z))) (f x y z) = 1 then 1 else 0) = fun t :e A :*: (B :*: C) => f (hl_FST A (B :*: C) t) (hl_FST B C (hl_SND A (B :*: C) t)) (hl_SND B C (hl_SND A (B :*: C) t)).
Admitted.

// HOL Light: pair.ml:320 / PAIRED_ETA_THM   (hash md5:eabdd9bb450ee7e823a340945ab828f6)
Theorem hlt_PAIRED_ETA_THM : forall A B C D E:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> (forall f :e C :^: (A :*: B), hl_GABS (C :^: (A :*: B)) (fun f' :e C :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ C (f' (hl_pair A B x y)) (f (hl_pair A B x y)) = 1 then 1 else 0) = f) /\ ((forall f :e D :^: (A :*: (B :*: C)), hl_GABS (D :^: (A :*: (B :*: C))) (fun f' :e D :^: (A :*: (B :*: C)) => if forall x :e A, forall y :e B, forall z :e C, hl_GEQ D (f' (hl_pair A (B :*: C) x (hl_pair B C y z))) (f (hl_pair A (B :*: C) x (hl_pair B C y z))) = 1 then 1 else 0) = f) /\ forall f :e E :^: (A :*: (B :*: (C :*: D))), hl_GABS (E :^: (A :*: (B :*: (C :*: D)))) (fun f' :e E :^: (A :*: (B :*: (C :*: D))) => if forall w :e A, forall x :e B, forall y :e C, forall z :e D, hl_GEQ E (f' (hl_pair A (B :*: (C :*: D)) w (hl_pair B (C :*: D) x (hl_pair C D y z)))) (f (hl_pair A (B :*: (C :*: D)) w (hl_pair B (C :*: D) x (hl_pair C D y z)))) = 1 then 1 else 0) = f).
Admitted.

// HOL Light: pair.ml:326 / FORALL_UNCURRY   (hash md5:3474782c5e2db898cde1d87c3d0177cc)
Theorem hlt_FORALL_UNCURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: (C :^: B :^: A), (forall f :e C :^: B :^: A, P f = 1) <-> forall f :e C :^: (A :*: B), P (fun a :e A => fun b :e B => f (hl_pair A B a b)) = 1.
Admitted.

// HOL Light: pair.ml:332 / EXISTS_UNCURRY   (hash md5:506bf2c55fa053a1e1ca3b2230e04c52)
Theorem hlt_EXISTS_UNCURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: (C :^: B :^: A), (exists f :e C :^: B :^: A, P f = 1) <-> exists f :e C :^: (A :*: B), P (fun a :e A => fun b :e B => f (hl_pair A B a b)) = 1.
Admitted.

// HOL Light: pair.ml:337 / EXISTS_CURRY   (hash md5:84fdce56e74c0991a44307b28abf72bc)
Theorem hlt_EXISTS_CURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: (C :^: (A :*: B)), (exists f :e C :^: (A :*: B), P f = 1) <-> exists f :e C :^: B :^: A, P (hl_GABS (C :^: (A :*: B)) (fun f1 :e C :^: (A :*: B) => if forall a :e A, forall b :e B, hl_GEQ C (f1 (hl_pair A B a b)) (f a b) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: pair.ml:341 / FORALL_CURRY   (hash md5:f2498f4182999751facb010e3dbfe0e1)
Theorem hlt_FORALL_CURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: (C :^: (A :*: B)), (forall f :e C :^: (A :*: B), P f = 1) <-> forall f :e C :^: B :^: A, P (hl_GABS (C :^: (A :*: B)) (fun f1 :e C :^: (A :*: B) => if forall a :e A, forall b :e B, hl_GEQ C (f1 (hl_pair A B a b)) (f a b) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: pair.ml:345 / FORALL_UNPAIR_THM   (hash md5:2797620921562307b55cefd5730f67cd)
Theorem hlt_FORALL_UNPAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (forall x :e A, forall y :e B, P x y = 1) <-> forall z :e A :*: B, P (hl_FST A B z) (hl_SND A B z) = 1.
Admitted.

// HOL Light: pair.ml:349 / EXISTS_UNPAIR_THM   (hash md5:1887731dff3899ab41ca881b0c28956e)
Theorem hlt_EXISTS_UNPAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (exists x :e A, exists y :e B, P x y = 1) <-> exists z :e A :*: B, P (hl_FST A B z) (hl_SND A B z) = 1.
Admitted.

// HOL Light: pair.ml:353 / FORALL_PAIR_FUN_THM   (hash md5:3f44ed9f97562f42b653ea47012379e0)
Theorem hlt_FORALL_PAIR_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: ((B :*: C) :^: A), (forall f :e (B :*: C) :^: A, P f = 1) <-> forall g :e B :^: A, forall h :e C :^: A, P (fun a :e A => hl_pair B C (g a) (h a)) = 1.
Admitted.

// HOL Light: pair.ml:359 / EXISTS_PAIR_FUN_THM   (hash md5:5dc28a6866e08e1050ff02cae3d8934d)
Theorem hlt_EXISTS_PAIR_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: ((B :*: C) :^: A), (exists f :e (B :*: C) :^: A, P f = 1) <-> exists g :e B :^: A, exists h :e C :^: A, P (fun a :e A => hl_pair B C (g a) (h a)) = 1.
Admitted.

// HOL Light: pair.ml:364 / FORALL_UNPAIR_FUN_THM   (hash md5:1a6f72f877498c6aad1d2989bbd1132b)
Theorem hlt_FORALL_UNPAIR_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: (C :^: A) :^: (B :^: A), (forall f :e B :^: A, forall g :e C :^: A, P f g = 1) <-> forall h :e (B :*: C) :^: A, P (hl_o (B :*: C) B A (hl_FST B C) h) (hl_o (B :*: C) C A (hl_SND B C) h) = 1.
Admitted.

// HOL Light: pair.ml:368 / EXISTS_UNPAIR_FUN_THM   (hash md5:93177ccf6056b9a0f9a555699cb99488)
Theorem hlt_EXISTS_UNPAIR_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: (C :^: A) :^: (B :^: A), (exists f :e B :^: A, exists g :e C :^: A, P f g = 1) <-> exists h :e (B :*: C) :^: A, P (hl_o (B :*: C) B A (hl_FST B C) h) (hl_o (B :*: C) C A (hl_SND B C) h) = 1.
Admitted.

// HOL Light: pair.ml:372 / EXISTS_SWAP_FUN_THM   (hash md5:9888ea217761e153767f9ad2147522e0)
Theorem hlt_EXISTS_SWAP_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: (C :^: B :^: A), (exists f :e C :^: B :^: A, P f = 1) <-> exists f :e C :^: A :^: B, P (fun a :e A => fun b :e B => f b a) = 1.
Admitted.

// HOL Light: pair.ml:385 / FORALL_PAIRED_THM   (hash md5:4ec8958129e197fc37c7dc4ea0662917)
Theorem hlt_FORALL_PAIRED_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, hl_forall (A :*: B) (hl_GABS (2 :^: (A :*: B)) (fun f :e 2 :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ 2 (f (hl_pair A B x y)) (P x y) = 1 then 1 else 0)) = 1 <-> forall x :e A, forall y :e B, P x y = 1.
Admitted.

// HOL Light: pair.ml:390 / EXISTS_PAIRED_THM   (hash md5:caae08eeb9bd820ce8e2117bbd7f2278)
Theorem hlt_EXISTS_PAIRED_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, hl_exists (A :*: B) (hl_GABS (2 :^: (A :*: B)) (fun f :e 2 :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ 2 (f (hl_pair A B x y)) (P x y) = 1 then 1 else 0)) = 1 <-> exists x :e A, exists y :e B, P x y = 1.
Admitted.

// HOL Light: pair.ml:399 / FORALL_TRIPLED_THM   (hash md5:be2c51f21777a9244c328b71b60faa85)
Theorem hlt_FORALL_TRIPLED_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: C :^: B :^: A, hl_forall (A :*: (B :*: C)) (hl_GABS (2 :^: (A :*: (B :*: C))) (fun f :e 2 :^: (A :*: (B :*: C)) => if forall x :e A, forall y :e B, forall z :e C, hl_GEQ 2 (f (hl_pair A (B :*: C) x (hl_pair B C y z))) (P x y z) = 1 then 1 else 0)) = 1 <-> forall x :e A, forall y :e B, forall z :e C, P x y z = 1.
Admitted.

// HOL Light: pair.ml:404 / EXISTS_TRIPLED_THM   (hash md5:67d23f67316ca5d0139bf32a88b9fd06)
Theorem hlt_EXISTS_TRIPLED_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P :e 2 :^: C :^: B :^: A, hl_exists (A :*: (B :*: C)) (hl_GABS (2 :^: (A :*: (B :*: C))) (fun f :e 2 :^: (A :*: (B :*: C)) => if forall x :e A, forall y :e B, forall z :e C, hl_GEQ 2 (f (hl_pair A (B :*: C) x (hl_pair B C y z))) (P x y z) = 1 then 1 else 0)) = 1 <-> exists x :e A, exists y :e B, exists z :e C, P x y z = 1.
Admitted.

// HOL Light: pair.ml:413 / CHOICE_UNPAIR_THM   (hash md5:356907205f7b241cfb4829881418d86c)
Theorem hlt_CHOICE_UNPAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, hl_select (A :*: B) (hl_GABS (2 :^: (A :*: B)) (fun f :e 2 :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ 2 (f (hl_pair A B x y)) (P x y) = 1 then 1 else 0)) = hl_select (A :*: B) (fun p :e A :*: B => P (hl_FST A B p) (hl_SND A B p)).
Admitted.

// HOL Light: pair.ml:417 / CHOICE_PAIRED_THM   (hash md5:f624d3c57fe4a90f2981badf934bc650)
Theorem hlt_CHOICE_PAIRED_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall Q :e 2 :^: (A :*: B), (exists x :e A, exists y :e B, P x y = 1) /\ (forall x :e A, forall y :e B, P x y = 1 -> Q (hl_pair A B x y) = 1) -> Q (hl_select (A :*: B) (hl_GABS (2 :^: (A :*: B)) (fun f :e 2 :^: (A :*: B) => if forall x :e A, forall y :e B, hl_GEQ 2 (f (hl_pair A B x y)) (P x y) = 1 then 1 else 0))) = 1.
Admitted.

