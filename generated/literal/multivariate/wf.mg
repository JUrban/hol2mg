// hol2mg literal statements (private): shard wf of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: wf.ml:18 / WF   (hash md5:7cfe48218a6cd8da521c969693569484)
Theorem hlt_WF : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 <-> forall P :e 2 :^: A, (exists x :e A, P x = 1) -> exists x :e A, P x = 1 /\ forall y :e A, lt y x = 1 -> ~ P y = 1.
Admitted.

// HOL Light: wf.ml:25 / WF_EQ   (hash md5:7464bd2d4a32d0c80dc250b5a433d575)
Theorem hlt_WF_EQ : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 <-> forall P :e 2 :^: A, (exists x :e A, P x = 1) <-> exists x :e A, P x = 1 /\ forall y :e A, lt y x = 1 -> ~ P y = 1.
Admitted.

// HOL Light: wf.ml:33 / WF_IND   (hash md5:2f8fbdae1fc99fbb0282e91e4798be47)
Theorem hlt_WF_IND : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 <-> forall P :e 2 :^: A, (forall x :e A, (forall y :e A, lt y x = 1 -> P y = 1) -> P x = 1) -> forall x :e A, P x = 1.
Admitted.

// HOL Light: wf.ml:42 / WF_DCHAIN   (hash md5:0a202e079f28a6155304a3d694551c09)
Theorem hlt_WF_DCHAIN : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 <-> ~ exists s :e A :^: omega, forall n :e omega, lt (s (hl_SUC n)) (s n) = 1.
Admitted.

// HOL Light: wf.ml:60 / WF_DHAIN_TRANSITIVE   (hash md5:54932fe8618837aba25cfced5b1f4ee2)
Theorem hlt_WF_DHAIN_TRANSITIVE : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, (forall x y z :e A, lt x y = 1 /\ lt y z = 1 -> lt x z = 1) -> (hl_WF A lt = 1 <-> ~ exists s :e A :^: omega, forall i j :e omega, hl_lt i j = 1 -> lt (s j) (s i) = 1).
Admitted.

// HOL Light: wf.ml:73 / WF_UREC   (hash md5:b203b94e05aa7984613333a19c288f7a)
Theorem hlt_WF_UREC : forall A B:set, A <> Empty -> B <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 -> forall H :e B :^: A :^: (B :^: A), (forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> f z = g z) -> H f x = H g x) -> forall f g :e B :^: A, (forall x :e A, f x = H f x) /\ (forall x :e A, g x = H g x) -> f = g.
Admitted.

// HOL Light: wf.ml:82 / WF_UREC_WF   (hash md5:5605afc5d9e7153f0f6a7de62955bf94)
Theorem hlt_WF_UREC_WF : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, (forall H :e 2 :^: A :^: (2 :^: A), (forall f g :e 2 :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> (f z = 1 <-> g z = 1)) -> (H f x = 1 <-> H g x = 1)) -> forall f g :e 2 :^: A, (forall x :e A, f x = 1 <-> H f x = 1) /\ (forall x :e A, g x = 1 <-> H g x = 1) -> f = g) -> hl_WF A lt = 1.
Admitted.

// HOL Light: wf.ml:98 / WF_REC_INVARIANT   (hash md5:75fea806bee6f4b5ba2489b16bc2dc30)
Theorem hlt_WF_REC_INVARIANT : forall A B:set, A <> Empty -> B <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 -> forall H :e B :^: A :^: (B :^: A), forall S :e 2 :^: B :^: A, (forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> f z = g z /\ S z (f z) = 1) -> H f x = H g x /\ S x (H f x) = 1) -> exists f :e B :^: A, forall x :e A, f x = H f x.
Admitted.

// HOL Light: wf.ml:116 / WF_REC   (hash md5:c2b6c542214ace7a599099af99d8943e)
Theorem hlt_WF_REC : forall A B:set, A <> Empty -> B <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 -> forall H :e B :^: A :^: (B :^: A), (forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> f z = g z) -> H f x = H g x) -> exists f :e B :^: A, forall x :e A, f x = H f x.
Admitted.

// HOL Light: wf.ml:124 / WF_REC_WF   (hash md5:6399f34196f6e78cea0781aa577c47d8)
Theorem hlt_WF_REC_WF : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, (forall H :e omega :^: A :^: (omega :^: A), (forall f g :e omega :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> f z = g z) -> H f x = H g x) -> exists f :e omega :^: A, forall x :e A, f x = H f x) -> hl_WF A lt = 1.
Admitted.

// HOL Light: wf.ml:155 / WF_EREC   (hash md5:eff3dc2a17dae3a0ad607afea443190f)
Theorem hlt_WF_EREC : forall A B:set, A <> Empty -> B <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 -> forall H :e B :^: A :^: (B :^: A), (forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> f z = g z) -> H f x = H g x) -> hl_exists_unique (B :^: A) (fun f :e B :^: A => if forall x :e A, f x = H f x then 1 else 0) = 1.
Admitted.

// HOL Light: wf.ml:165 / WF_REC_EXISTS   (hash md5:42a15ca44c5a1264103bbdda0d3661ca)
Theorem hlt_WF_REC_EXISTS : forall A B:set, A <> Empty -> B <> Empty -> forall lt :e 2 :^: A :^: A, hl_WF A lt = 1 -> forall P :e 2 :^: B :^: A :^: (B :^: A), (forall f g :e B :^: A, forall x :e A, forall y :e B, (forall z :e A, lt z x = 1 -> f z = g z) -> (P f x y = 1 <-> P g x y = 1)) /\ (forall f :e B :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> P f z (f z) = 1) -> exists y :e B, P f x y = 1) -> exists f :e B :^: A, forall x :e A, P f x (f x) = 1.
Admitted.

// HOL Light: wf.ml:188 / WF_SUBSET   (hash md5:814a5fe983c0a92a1e34dfcf4a54a440)
Theorem hlt_WF_SUBSET : forall A:set, A <> Empty -> forall lt lt1 :e 2 :^: A :^: A, (forall x y :e A, lt x y = 1 -> lt1 x y = 1) /\ hl_WF A lt1 = 1 -> hl_WF A lt = 1.
Admitted.

// HOL Light: wf.ml:195 / WF_RESTRICT   (hash md5:a1bfce7f08611d6dd26f696daa53ceeb)
Theorem hlt_WF_RESTRICT : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_WF A lt = 1 -> hl_WF A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ lt x y = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: wf.ml:200 / WF_MEASURE_GEN   (hash md5:5d952f0d01a62b7470ae886270b7d3f2)
Theorem hlt_WF_MEASURE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall lt :e 2 :^: B :^: B, forall m :e B :^: A, hl_WF B lt = 1 -> hl_WF A (fun x :e A => fun x' :e A => lt (m x) (m x')) = 1.
Admitted.

// HOL Light: wf.ml:207 / WF_LEX_DEPENDENT   (hash md5:cfb5629a4954c6579cc3c886c0896747)
Theorem hlt_WF_LEX_DEPENDENT : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: A :^: A, forall S :e 2 :^: B :^: B :^: A, hl_WF A R1 = 1 /\ (forall a :e A, hl_WF B (S a) = 1) -> hl_WF (A :*: B) (hl_GABS (2 :^: (A :*: B) :^: (A :*: B)) (fun f :e 2 :^: (A :*: B) :^: (A :*: B) => if forall r1 :e A, forall s1 :e B, hl_GEQ (2 :^: (A :*: B)) (f (hl_pair A B r1 s1)) (hl_GABS (2 :^: (A :*: B)) (fun f1 :e 2 :^: (A :*: B) => if forall r2 :e A, forall s2 :e B, hl_GEQ 2 (f1 (hl_pair A B r2 s2)) (if R1 r1 r2 = 1 \/ r1 = r2 /\ S r1 s1 s2 = 1 then 1 else 0) = 1 then 1 else 0)) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: wf.ml:226 / WF_LEX   (hash md5:ab5a867a79f9dbbf98e3fa352b9392b0)
Theorem hlt_WF_LEX : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: A :^: A, forall S :e 2 :^: B :^: B, hl_WF A R1 = 1 /\ hl_WF B S = 1 -> hl_WF (A :*: B) (hl_GABS (2 :^: (A :*: B) :^: (A :*: B)) (fun f :e 2 :^: (A :*: B) :^: (A :*: B) => if forall r1 :e A, forall s1 :e B, hl_GEQ (2 :^: (A :*: B)) (f (hl_pair A B r1 s1)) (hl_GABS (2 :^: (A :*: B)) (fun f1 :e 2 :^: (A :*: B) => if forall r2 :e A, forall s2 :e B, hl_GEQ 2 (f1 (hl_pair A B r2 s2)) (if R1 r1 r2 = 1 \/ r1 = r2 /\ S s1 s2 = 1 then 1 else 0) = 1 then 1 else 0)) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: wf.ml:231 / WF_POINTWISE   (hash md5:f0ab988208aa7f06051c0b942cda2ca0)
Theorem hlt_WF_POINTWISE : forall A B:set, A <> Empty -> B <> Empty -> forall lt :e 2 :^: A :^: A, forall lt1 :e 2 :^: B :^: B, hl_WF A lt = 1 /\ hl_WF B lt1 = 1 -> hl_WF (A :*: B) (hl_GABS (2 :^: (A :*: B) :^: (A :*: B)) (fun f :e 2 :^: (A :*: B) :^: (A :*: B) => if forall x1 :e A, forall y1 :e B, hl_GEQ (2 :^: (A :*: B)) (f (hl_pair A B x1 y1)) (hl_GABS (2 :^: (A :*: B)) (fun f1 :e 2 :^: (A :*: B) => if forall x2 :e A, forall y2 :e B, hl_GEQ 2 (f1 (hl_pair A B x2 y2)) (if lt x1 x2 = 1 /\ lt1 y1 y2 = 1 then 1 else 0) = 1 then 1 else 0)) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: wf.ml:244 / WF_num   (hash md5:207314b216600b64e25f3b0fea660db9)
Theorem hlt_WF_num : hl_WF omega hl_lt = 1.
Admitted.

// HOL Light: wf.ml:248 / WF_REC_num   (hash md5:22be6717a684453cf75c0e860b18cf55)
Theorem hlt_WF_REC_num : forall A:set, A <> Empty -> forall H :e A :^: omega :^: (A :^: omega), (forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, hl_lt m n = 1 -> f m = g m) -> H f n = H g n) -> exists f :e A :^: omega, forall n :e omega, f n = H f n.
Admitted.

// HOL Light: wf.ml:257 / MEASURE   (hash md5:abb01e8d84ce430691bf20436f40529b)
Theorem hlt_MEASURE : forall A:set, A <> Empty -> forall m :e omega :^: A, hl_MEASURE A m = fun x :e A => fun y :e A => hl_lt (m x) (m y).
Admitted.

// HOL Light: wf.ml:260 / WF_MEASURE   (hash md5:5d1b43ae387330061cca4c569f00754a)
Theorem hlt_WF_MEASURE : forall A:set, A <> Empty -> forall m :e omega :^: A, hl_WF A (hl_MEASURE A m) = 1.
Admitted.

// HOL Light: wf.ml:266 / MEASURE_LE   (hash md5:ee7af6db0480bfcd4772b3bb79427a82)
Theorem hlt_MEASURE_LE : forall A:set, A <> Empty -> forall a b :e A, forall m :e omega :^: A, (forall y :e A, hl_MEASURE A m y a = 1 -> hl_MEASURE A m y b = 1) <-> hl_le (m a) (m b) = 1.
Admitted.

// HOL Light: wf.ml:274 / WF_ANTISYM   (hash md5:8f382d4d707a3fd748d7af2d1d2e5381)
Theorem hlt_WF_ANTISYM : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, forall x y :e A, hl_WF A lt = 1 -> ~ (lt x y = 1 /\ lt y x = 1).
Admitted.

// HOL Light: wf.ml:281 / WF_REFL   (hash md5:3ceb7770ded878a41d37259a4e61d0d1)
Theorem hlt_WF_REFL : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, forall x :e A, hl_WF A lt = 1 -> ~ lt x x = 1.
Admitted.

// HOL Light: wf.ml:289 / WF_FALSE   (hash md5:3a0c9abd721808b47cf963c7218fab66)
Theorem hlt_WF_FALSE : forall A:set, A <> Empty -> hl_WF A (fun x :e A => fun y :e A => if False then 1 else 0) = 1.
Admitted.

// HOL Light: wf.ml:298 / MINIMAL_BAD_SEQUENCE   (hash md5:626982c0fe0f800129b51817d89ba2b9)
Theorem hlt_MINIMAL_BAD_SEQUENCE : forall A:set, A <> Empty -> forall lt :e 2 :^: A :^: A, forall bad :e 2 :^: (A :^: omega), hl_WF A lt = 1 /\ ((forall x :e A :^: omega, ~ bad x = 1 -> exists n :e omega, forall y :e A :^: omega, (forall k :e omega, hl_lt k n = 1 -> y k = x k) -> ~ bad y = 1) /\ (exists x :e A :^: omega, bad x = 1)) -> exists y :e A :^: omega, bad y = 1 /\ forall z :e A :^: omega, forall n :e omega, bad z = 1 /\ (forall k :e omega, hl_lt k n = 1 -> z k = y k) -> ~ lt (z n) (y n) = 1.
Admitted.

// HOL Light: wf.ml:324 / WF_REC_TAIL   (hash md5:5ebf42ce478fde0c9b6f81dfe2ffcf34)
Theorem hlt_WF_REC_TAIL : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: A, forall g :e A :^: A, forall h :e B :^: A, exists f :e B :^: A, forall x :e A, f x = hl_COND B (P x) (f (g x)) (h x).
Admitted.

// HOL Light: wf.ml:359 / WF_REC_TAIL_GENERAL   (hash md5:72c99beb795211e51200dc3e68f5b921)
Theorem hlt_WF_REC_TAIL_GENERAL : forall A B:set, A <> Empty -> B <> Empty -> forall lt :e 2 :^: A :^: A, forall P :e 2 :^: A :^: (B :^: A), forall G :e A :^: A :^: (B :^: A), forall H :e B :^: A :^: (B :^: A), hl_WF A lt = 1 /\ ((forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> f z = g z) -> (P f x = 1 <-> P g x = 1) /\ (G f x = G g x /\ H f x = H g x)) /\ ((forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x = 1 -> f z = g z) -> H f x = H g x) /\ (forall f :e B :^: A, forall x y :e A, P f x = 1 /\ lt y (G f x) = 1 -> lt y x = 1))) -> exists f :e B :^: A, forall x :e A, f x = hl_COND B (P f x) (f (G f x)) (H f x).
Admitted.

