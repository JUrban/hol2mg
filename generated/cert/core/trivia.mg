// hol2mg certification module (private): shard trivia of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: trivia.ml:18 / o_DEF   (hash md5:7072af01086ae1b09b3e67863fac76ac)
// not bridged: 
Theorem o_DEF : forall A B C:set, forall f:set -> set, (forall x :e B, f x :e C) -> forall g:set -> set, (forall x :e A, g x :e B) -> forall x :e A, f (g x) = f (g x).
Admitted.

// HOL Light: trivia.ml:21 / I_DEF   (hash md5:98f75ab7f3aecd3890689464fdb13fda)
// not bridged: 
Theorem I_DEF : forall A:set, forall x :e A, x = x.
Admitted.

// HOL Light: trivia.ml:24 / o_THM   (hash md5:5f35f2b84dbd2ff7d1a387066c77a57f)
// not bridged: 
Theorem o_THM : forall A B C:set, forall f:set -> set, (forall x :e B, f x :e C) -> forall g:set -> set, (forall x :e A, g x :e B) -> forall x :e A, f (g x) = f (g x).
Admitted.

// HOL Light: trivia.ml:30 / o_ASSOC   (hash md5:f22ad52a4382071def526afc8c38a995)
// not bridged: 
Theorem o_ASSOC : forall A B C D:set, forall f:set -> set, (forall x :e C, f x :e D) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall h:set -> set, (forall x :e A, h x :e B) -> forall x :e A, f (g (h x)) = f (g (h x)).
Admitted.

// HOL Light: trivia.ml:36 / I_THM   (hash md5:869bdf643ad8869e3e6c61189c7171c1)
// not bridged: 
Theorem I_THM : forall A:set, forall x :e A, x = x.
Admitted.

// HOL Light: trivia.ml:40 / I_O_ID   (hash md5:dc7aa55a625b9a78c1fd4104e409969c)
// not bridged: 
Theorem I_O_ID : forall A B:set, forall f:set -> set, (forall x :e A, f x :e B) -> (forall x :e A, f x = f x) /\ forall x :e A, f x = f x.
Admitted.

// HOL Light: trivia.ml:49 / EXISTS_ONE_REP   (hash md5:333141743c1f0da979ec93730a80c4d4)
Theorem hlt_EXISTS_ONE_REP : exists b :e 2, b = 1.
Admitted.
Theorem EXISTS_ONE_REP_bridge : (exists b :e 2, b = 1) -> (exists b:prop, b).
exact (fun HL => (imp_exists_bool (fun b => b = 1) (fun b => b) (fun b Hb => (iffEL (b = 1) (b = 1) (iff_refl (b = 1))))) HL).
Qed.
Theorem EXISTS_ONE_REP : exists b:prop, b.
exact (EXISTS_ONE_REP_bridge hlt_EXISTS_ONE_REP).
Admitted.

// HOL Light: trivia.ml:57 / one_DEF   (hash md5:e2591fc32bec2328753ba82d3aeb61dd)
// not bridged: 
Theorem one_DEF : 0 = choose_in 1 (fun x:set => True).
Admitted.

// HOL Light: trivia.ml:60 / one   (hash md5:8221571543fa874800f76ce863e0cf84)
// not bridged: 
Theorem one : forall v :e 1, v = 0.
Admitted.

// HOL Light: trivia.ml:67 / one_axiom   (hash md5:1d5dc2e3ae749e7020d13e448211d911)
Theorem hlt_one_axiom : forall A:set, A <> Empty -> forall f g :e 1 :^: A, f = g.
Admitted.
Theorem one_axiom_bridge : (forall A:set, A <> Empty -> forall f g :e 1 :^: A, f = g) -> (forall A:set, forall f:set -> set, (forall x :e A, f x :e 1) -> forall g:set -> set, (forall x :e A, g x :e 1) -> forall x :e A, f x = g x).
exact (fun HL A => (xm (A = Empty) (forall f:set -> set, (forall x :e A, f x :e 1) -> forall g:set -> set, (forall x :e A, g x :e 1) -> forall x :e A, f x = g x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall f:set -> set, (forall x :e hl__u, f x :e 1) -> forall g:set -> set, (forall x :e hl__u, g x :e 1) -> forall x :e hl__u, f x = g x) (fun f => (fun H : forall x :e Empty, f x :e 1 => (fun g => (fun H : forall x :e Empty, g x :e 1 => (forall_in_Empty (fun x => f x = g x)))))))) (fun HAne => (imp_forall_fun (A) (1) (fun f => forall g :e 1 :^: A, f = g) (fun f => forall g:set -> set, (forall x :e A, g x :e 1) -> forall x :e A, f x = g x) (fun f Hfc => (imp_forall_fun (A) (1) (fun g => hl_lam A f = g) (fun g => forall x :e A, f x = g x) (fun g Hgc => (imp_trans (hl_lam A f = hl_lam A g) (forall x :e A, hl_lam A f x = hl_lam A g x) (forall x :e A, f x = g x) (iffEL (hl_lam A f = hl_lam A g) (forall x :e A, hl_lam A f x = hl_lam A g x) (eq_Pi_pointwise (A) (1) (hl_lam A f) (hl_lam A g) (hl_lam_Pi (A) (1) f Hfc) (hl_lam_Pi (A) (1) g Hgc))) (imp_forall_in (A) (fun x => hl_lam A f x = hl_lam A g x) (fun x => f x = g x) (fun x Hx => (imp_eq (hl_lam A f x) (f x) (hl_lam A g x) (g x) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) g) (x) Hx))))))))) (HL A HAne)))).
Qed.
Theorem one_axiom : forall A:set, forall f:set -> set, (forall x :e A, f x :e 1) -> forall g:set -> set, (forall x :e A, g x :e 1) -> forall x :e A, f x = g x.
exact (one_axiom_bridge hlt_one_axiom).
Admitted.

// HOL Light: trivia.ml:72 / one_INDUCT   (hash md5:0e4245b52b095218ca689907aa0d46a7)
// not bridged: 
Theorem one_INDUCT : forall P:set -> prop, P 0 -> forall x :e 1, P x.
Admitted.

// HOL Light: trivia.ml:76 / one_RECURSION   (hash md5:eacc0c8048865239c11b49bfd682565d)
// not bridged: 
Theorem one_RECURSION : forall A:set, forall e0 :e A, exists fn:set -> set, (forall x :e 1, fn x :e A) /\ fn 0 = e0.
Admitted.

// HOL Light: trivia.ml:80 / one_Axiom   (hash md5:ed14c7f387dfc73cd6603c753781f4bf)
// not bridged: 
Theorem one_Axiom : forall A:set, forall e0 :e A, exists fn:set -> set, (forall x :e 1, fn x :e A) /\ (fn 0 = e0 /\ forall y:set -> set, (forall x :e 1, y x :e A) -> y 0 = e0 -> forall x :e 1, y x = fn x).
Admitted.

// HOL Light: trivia.ml:86 / FORALL_ONE_THM   (hash md5:71b389caed42f1429cd0e3335edc3b46)
// not bridged: 
Theorem FORALL_ONE_THM : forall P:set -> prop, (forall x :e 1, P x) <-> P 0.
Admitted.

// HOL Light: trivia.ml:90 / EXISTS_ONE_THM   (hash md5:daa3be611903bccb7d5aace9a4b9ba60)
// not bridged: 
Theorem EXISTS_ONE_THM : forall P:set -> prop, (exists x :e 1, P x) <-> P 0.
Admitted.

// HOL Light: trivia.ml:95 / ETA_ONE   (hash md5:6274a6897389394dd8d3a8b6deca86e1)
// not bridged: 
Theorem ETA_ONE : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e 1, f x :e A) -> forall x :e 1, f 0 = f x.
Admitted.

