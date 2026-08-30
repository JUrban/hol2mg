// hol2mg certification module (private): shard define of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: define.ml:13 / CASEWISE_DEF   (hash md5:04c558398abe0b89339aa1a8f533455d)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:19 / CASEWISE   (hash md5:3bf37005a9385fa59bedd49af522468a)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:29 / CASEWISE_CASES   (hash md5:d3cec3faa29c44a9ae38789e6f5ea0aa)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:39 / CASEWISE_WORKS   (hash md5:a3cfd94ac3b1eb7949683c8770441014)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:51 / admissible   (hash md5:e94c0c82026d6a452d34410186b2e050)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:56 / tailadmissible   (hash md5:1c4b6569fbaf14b2d9943f6879c1be24)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:65 / superadmissible   (hash md5:a80e37dca25b87283e6f9eeb4e4188ce)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:73 / MATCH_SEQPATTERN   (hash md5:2719e8f75f67f2a6d564cc1938b1c3ff)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:82 / ADMISSIBLE_CONST   (hash md5:bb96cb18747abad22ab85274e4d36cdf)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:86 / ADMISSIBLE_BASE   (hash md5:f147c06a32f964f30d1a9b9b9c9fec00)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:92 / ADMISSIBLE_COMB   (hash md5:ac115267ecb12e4de5a5ed34c553a478)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:98 / ADMISSIBLE_RAND   (hash md5:fd6452976bf99771b28a13b5be85e443)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:104 / ADMISSIBLE_LAMBDA   (hash md5:5a8d26b12fc402d07f42dc5a7b7d537d)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:110 / ADMISSIBLE_NEST   (hash md5:b6ca3290ca80b3845d272118f8ba5fe8)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:117 / ADMISSIBLE_COND   (hash md5:8fb922126aee181c9a631a307c648f29)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:129 / ADMISSIBLE_MATCH   (hash md5:3d5542a1dd873098d8d18234606ebd7d)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:136 / ADMISSIBLE_SEQPATTERN   (hash md5:461f008fdef484c64584686580e7a3e7)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:146 / ADMISSIBLE_UNGUARDED_PATTERN   (hash md5:73ee35f3d49a0aa86daf8bc8906f0c2e)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:162 / ADMISSIBLE_GUARDED_PATTERN   (hash md5:b89dfe4e85509fd42f53d6022d562cd9)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:182 / ADMISSIBLE_NSUM   (hash md5:1866dc47bdc7935501119fd87336c501)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:190 / ADMISSIBLE_SUM   (hash md5:bebef8aba767be6327706131841db81d)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:198 / ADMISSIBLE_MAP   (hash md5:0257e30674f5e41799bc15b9e4c7a21b)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:211 / ADMISSIBLE_MATCH_SEQPATTERN   (hash md5:de93bd3b59575107487747566fc635db)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:233 / ADMISSIBLE_IMP_SUPERADMISSIBLE   (hash md5:01a40810fdee27aa170fbfc8febdce3f)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:244 / SUPERADMISSIBLE_CONST   (hash md5:104e67e03eaad9222f9b02b696bb72b9)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:250 / SUPERADMISSIBLE_TAIL   (hash md5:be00d9bb5423a71d66e7fff6aee87133)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:262 / SUPERADMISSIBLE_COND   (hash md5:816d0d2abb298acf751bd70dbb92519e)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:295 / SUPERADMISSIBLE_MATCH_SEQPATTERN   (hash md5:2b701b8c2ff1d9af128c5164f4fc7f77)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:306 / SUPERADMISSIBLE_MATCH_UNGUARDED_PATTERN   (hash md5:76fd75cba6fe61d4756f2cceb520ba07)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:330 / SUPERADMISSIBLE_MATCH_GUARDED_PATTERN   (hash md5:d41b8a65191e5f9d8b4a2a532ff73278)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:360 / WF_REC_TAIL_GENERAL'   (hash md5:1b21de2f7ee297f31363ddecde1cb51c)
// not bridged: 
Theorem WF_REC_TAIL_GENERAL' : forall A B:set, A <> Empty -> forall lt P:set -> set -> prop, forall G:set -> set -> set, (forall x :e A :^: B, forall y :e B, G x y :e B) -> forall H:set -> set -> set, (forall x :e A :^: B, forall y :e B, H x y :e A) -> forall H':set -> set -> set, (forall x :e A :^: B, forall y :e B, H' x y :e A) -> (forall P c= B, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) /\ ((forall f g :e A :^: B, forall x :e B, (forall z :e B, lt z x -> f z = g z) -> (P f x <-> P g x) /\ (G f x = G g x /\ H' f x = H' g x)) /\ ((forall f :e A :^: B, forall x y :e B, P f x /\ lt y (G f x) -> lt y x) /\ (forall f :e A :^: B, forall x :e B, H f x = if P f x then f (G f x) else H' f x))) -> exists f :e A :^: B, forall x :e B, f x = H f x.
Admitted.

// HOL Light: define.ml:372 / WF_REC_CASES   (hash md5:40d2fa6ce20786cbe31321bb7b22d13d)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:412 / WF_REC_CASES'   (hash md5:b345f6ab825526989f0355cb1abfe355)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:419 / RECURSION_CASEWISE   (hash md5:3f29a9a73817196ae2f56b47e99a2fd1)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:432 / RECURSION_CASEWISE_PAIRWISE   (hash md5:e3a25bb75acbc0b0626c05e53ba8e0f9)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:456 / SUPERADMISSIBLE_T   (hash md5:074ea1eb4e0af743a337e602d29ea072)
// no native statement (pending_mapping): literal fact only

// HOL Light: define.ml:460 / RECURSION_SUPERADMISSIBLE   (hash md5:54e53929dbfc82425e6420c25e264cd6)
// no native statement (pending_mapping): literal fact only

