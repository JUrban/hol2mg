// hol2mg literal statements (private): shard trivia of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: trivia.ml:18 / o_DEF   (hash md5:7072af01086ae1b09b3e67863fac76ac)
Theorem hlt_o_DEF : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B, forall g :e B :^: A, hl_o B C A f g = fun x :e A => f (g x).
Admitted.

// HOL Light: trivia.ml:21 / I_DEF   (hash md5:98f75ab7f3aecd3890689464fdb13fda)
Theorem hlt_I_DEF : forall A:set, A <> Empty -> hl_I A = fun x :e A => x.
Admitted.

// HOL Light: trivia.ml:24 / o_THM   (hash md5:5f35f2b84dbd2ff7d1a387066c77a57f)
Theorem hlt_o_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B, forall g :e B :^: A, forall x :e A, hl_o B C A f g x = f (g x).
Admitted.

// HOL Light: trivia.ml:30 / o_ASSOC   (hash md5:f22ad52a4382071def526afc8c38a995)
Theorem hlt_o_ASSOC : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall f :e D :^: C, forall g :e C :^: B, forall h :e B :^: A, hl_o C D A f (hl_o B C A g h) = hl_o B D A (hl_o C D B f g) h.
Admitted.

// HOL Light: trivia.ml:36 / I_THM   (hash md5:869bdf643ad8869e3e6c61189c7171c1)
Theorem hlt_I_THM : forall A:set, A <> Empty -> forall x :e A, hl_I A x = x.
Admitted.

// HOL Light: trivia.ml:40 / I_O_ID   (hash md5:dc7aa55a625b9a78c1fd4104e409969c)
Theorem hlt_I_O_ID : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, hl_o B B A (hl_I B) f = f /\ hl_o A B A f (hl_I A) = f.
Admitted.

// HOL Light: trivia.ml:49 / EXISTS_ONE_REP   (hash md5:333141743c1f0da979ec93730a80c4d4)
Theorem hlt_EXISTS_ONE_REP : exists b :e 2, b = 1.
Admitted.

// HOL Light: trivia.ml:57 / one_DEF   (hash md5:e2591fc32bec2328753ba82d3aeb61dd)
Theorem hlt_one_DEF : hl_one = hl_select 1 (fun x :e 1 => if True then 1 else 0).
Admitted.

// HOL Light: trivia.ml:60 / one   (hash md5:8221571543fa874800f76ce863e0cf84)
Theorem hlt_one : forall v :e 1, v = hl_one.
Admitted.

// HOL Light: trivia.ml:67 / one_axiom   (hash md5:1d5dc2e3ae749e7020d13e448211d911)
Theorem hlt_one_axiom : forall A:set, A <> Empty -> forall f g :e 1 :^: A, f = g.
Admitted.

// HOL Light: trivia.ml:72 / one_INDUCT   (hash md5:0e4245b52b095218ca689907aa0d46a7)
Theorem hlt_one_INDUCT : forall P :e 2 :^: 1, P hl_one = 1 -> forall x :e 1, P x = 1.
Admitted.

// HOL Light: trivia.ml:76 / one_RECURSION   (hash md5:eacc0c8048865239c11b49bfd682565d)
Theorem hlt_one_RECURSION : forall A:set, A <> Empty -> forall e1 :e A, exists fn :e A :^: 1, fn hl_one = e1.
Admitted.

// HOL Light: trivia.ml:80 / one_Axiom   (hash md5:ed14c7f387dfc73cd6603c753781f4bf)
Theorem hlt_one_Axiom : forall A:set, A <> Empty -> forall e1 :e A, hl_exists_unique (A :^: 1) (fun fn :e A :^: 1 => if fn hl_one = e1 then 1 else 0) = 1.
Admitted.

// HOL Light: trivia.ml:86 / FORALL_ONE_THM   (hash md5:71b389caed42f1429cd0e3335edc3b46)
Theorem hlt_FORALL_ONE_THM : forall P :e 2 :^: 1, (forall x :e 1, P x = 1) <-> P hl_one = 1.
Admitted.

// HOL Light: trivia.ml:90 / EXISTS_ONE_THM   (hash md5:daa3be611903bccb7d5aace9a4b9ba60)
Theorem hlt_EXISTS_ONE_THM : forall P :e 2 :^: 1, (exists x :e 1, P x = 1) <-> P hl_one = 1.
Admitted.

// HOL Light: trivia.ml:95 / ETA_ONE   (hash md5:6274a6897389394dd8d3a8b6deca86e1)
Theorem hlt_ETA_ONE : forall A:set, A <> Empty -> forall f :e A :^: 1, (fun x :e 1 => f hl_one) = f.
Admitted.

