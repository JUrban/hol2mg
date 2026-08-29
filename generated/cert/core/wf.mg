// hol2mg certification module (private): shard wf of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: wf.ml:18 / WF   (hash md5:7cfe48218a6cd8da521c969693569484)
// not bridged: 
Theorem WF : forall A:set, A <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) <-> forall P:set -> prop, (exists x :e A, P x) -> exists x :e A, P x /\ forall y :e A, lt y x -> ~ P y.
Admitted.

// HOL Light: wf.ml:25 / WF_EQ   (hash md5:7464bd2d4a32d0c80dc250b5a433d575)
// not bridged: 
Theorem WF_EQ : forall A:set, A <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) <-> forall P:set -> prop, (exists x :e A, P x) <-> exists x :e A, P x /\ forall y :e A, lt y x -> ~ P y.
Admitted.

// HOL Light: wf.ml:33 / WF_IND   (hash md5:2f8fbdae1fc99fbb0282e91e4798be47)
// not bridged: 
Theorem WF_IND : forall A:set, A <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) <-> forall P:set -> prop, (forall x :e A, (forall y :e A, lt y x -> P y) -> P x) -> forall x :e A, P x.
Admitted.

// HOL Light: wf.ml:42 / WF_DCHAIN   (hash md5:0a202e079f28a6155304a3d694551c09)
// not bridged: 
Theorem WF_DCHAIN : forall A:set, A <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) <-> ~ exists s:set -> set, (forall x :e omega, s x :e A) /\ forall n :e omega, lt (s (ordsucc n)) (s n).
Admitted.

// HOL Light: wf.ml:60 / WF_DHAIN_TRANSITIVE   (hash md5:54932fe8618837aba25cfced5b1f4ee2)
// not bridged: 
Theorem WF_DHAIN_TRANSITIVE : forall A:set, A <> Empty -> forall lt:set -> set -> prop, (forall x y z :e A, lt x y /\ lt y z -> lt x z) -> ((forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) <-> ~ exists s:set -> set, (forall x :e omega, s x :e A) /\ forall i j :e omega, i < j -> lt (s j) (s i)).
Admitted.

// HOL Light: wf.ml:73 / WF_UREC   (hash md5:b203b94e05aa7984613333a19c288f7a)
// not bridged: 
Theorem WF_UREC : forall A B:set, B <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> forall H:set -> set -> set, (forall x :e B :^: A, forall y :e A, H x y :e B) -> (forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x -> f z = g z) -> H f x = H g x) -> forall f g :e B :^: A, (forall x :e A, f x = H f x) /\ (forall x :e A, g x = H g x) -> f = g.
Admitted.

// HOL Light: wf.ml:82 / WF_UREC_WF   (hash md5:5605afc5d9e7153f0f6a7de62955bf94)
// not bridged: 
Theorem WF_UREC_WF : forall A:set, A <> Empty -> forall lt:set -> set -> prop, (forall H:set -> set -> prop, (forall f g c= A, forall x :e A, (forall z :e A, lt z x -> (z :e f <-> z :e g)) -> (H f x <-> H g x)) -> forall f g c= A, (forall x :e A, x :e f <-> H f x) /\ (forall x :e A, x :e g <-> H g x) -> f = g) -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x.
Admitted.

// HOL Light: wf.ml:98 / WF_REC_INVARIANT   (hash md5:75fea806bee6f4b5ba2489b16bc2dc30)
// not bridged: 
Theorem WF_REC_INVARIANT : forall A B:set, B <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> forall H:set -> set -> set, (forall x :e B :^: A, forall y :e A, H x y :e B) -> forall S:set -> set -> prop, (forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x -> f z = g z /\ S z (f z)) -> H f x = H g x /\ S x (H f x)) -> exists f :e B :^: A, forall x :e A, f x = H f x.
Admitted.

// HOL Light: wf.ml:116 / WF_REC   (hash md5:c2b6c542214ace7a599099af99d8943e)
// not bridged: 
Theorem WF_REC : forall A B:set, B <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> forall H:set -> set -> set, (forall x :e B :^: A, forall y :e A, H x y :e B) -> (forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x -> f z = g z) -> H f x = H g x) -> exists f :e B :^: A, forall x :e A, f x = H f x.
Admitted.

// HOL Light: wf.ml:124 / WF_REC_WF   (hash md5:6399f34196f6e78cea0781aa577c47d8)
// not bridged: 
Theorem WF_REC_WF : forall A:set, A <> Empty -> forall lt:set -> set -> prop, (forall H:set -> set -> set, (forall x :e omega :^: A, forall y :e A, H x y :e omega) -> (forall f g :e omega :^: A, forall x :e A, (forall z :e A, lt z x -> f z = g z) -> H f x = H g x) -> exists f :e omega :^: A, forall x :e A, f x = H f x) -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x.
Admitted.

// HOL Light: wf.ml:155 / WF_EREC   (hash md5:eff3dc2a17dae3a0ad607afea443190f)
// not bridged: 
Theorem WF_EREC : forall A B:set, B <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> forall H:set -> set -> set, (forall x :e B :^: A, forall y :e A, H x y :e B) -> (forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x -> f z = g z) -> H f x = H g x) -> exists f :e B :^: A, (forall x :e A, f x = H f x) /\ forall y :e B :^: A, (forall x :e A, y x = H y x) -> y = f.
Admitted.

// HOL Light: wf.ml:165 / WF_REC_EXISTS   (hash md5:42a15ca44c5a1264103bbdda0d3661ca)
// not bridged: 
Theorem WF_REC_EXISTS : forall A B:set, B <> Empty -> forall lt:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> forall P:set -> set -> set -> prop, (forall f g :e B :^: A, forall x :e A, forall y :e B, (forall z :e A, lt z x -> f z = g z) -> (P f x y <-> P g x y)) /\ (forall f :e B :^: A, forall x :e A, (forall z :e A, lt z x -> P f z (f z)) -> exists y :e B, P f x y) -> exists f :e B :^: A, forall x :e A, P f x (f x).
Admitted.

// HOL Light: wf.ml:188 / WF_SUBSET   (hash md5:814a5fe983c0a92a1e34dfcf4a54a440)
// not bridged: 
Theorem WF_SUBSET : forall A:set, forall lt lt0:set -> set -> prop, (forall x y :e A, lt x y -> lt0 x y) /\ (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt0 y x) -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x.
Admitted.

// HOL Light: wf.ml:195 / WF_RESTRICT   (hash md5:a1bfce7f08611d6dd26f696daa53ceeb)
// not bridged: 
Theorem WF_RESTRICT : forall A:set, forall lt:set -> set -> prop, forall P:set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> forall P0 c= A, P0 <> Empty -> exists x :e P0, forall y :e P0, ~ (P y /\ (P x /\ lt y x)).
Admitted.

// HOL Light: wf.ml:200 / WF_MEASURE_GEN   (hash md5:5d952f0d01a62b7470ae886270b7d3f2)
// not bridged: 
Theorem WF_MEASURE_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall lt:set -> set -> prop, forall m:set -> set, (forall x :e A, m x :e B) -> (forall P c= B, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt (m y) (m x).
Admitted.

// HOL Light: wf.ml:207 / WF_LEX_DEPENDENT   (hash md5:cfb5629a4954c6579cc3c886c0896747)
// not bridged: 
Theorem WF_LEX_DEPENDENT : forall A B:set, B <> Empty -> forall R0:set -> set -> prop, forall S:set -> set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ R0 y x) /\ (forall a :e A, forall P c= B, P <> Empty -> exists x :e P, forall y :e P, ~ S a y x) -> forall P c= A :*: B, P <> Empty -> exists x :e P, forall y :e P, ~ (R0 (y 0) (x 0) \/ y 0 = x 0 /\ S (y 0) (y 1) (x 1)).
Admitted.

// HOL Light: wf.ml:226 / WF_LEX   (hash md5:ab5a867a79f9dbbf98e3fa352b9392b0)
// not bridged: 
Theorem WF_LEX : forall A B:set, A <> Empty -> B <> Empty -> forall R0 S:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ R0 y x) /\ (forall P c= B, P <> Empty -> exists x :e P, forall y :e P, ~ S y x) -> forall P c= A :*: B, P <> Empty -> exists x :e P, forall y :e P, ~ (R0 (y 0) (x 0) \/ y 0 = x 0 /\ S (y 1) (x 1)).
Admitted.

// HOL Light: wf.ml:231 / WF_POINTWISE   (hash md5:f0ab988208aa7f06051c0b942cda2ca0)
// not bridged: 
Theorem WF_POINTWISE : forall A B:set, A <> Empty -> B <> Empty -> forall lt lt0:set -> set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) /\ (forall P c= B, P <> Empty -> exists x :e P, forall y :e P, ~ lt0 y x) -> forall P c= A :*: B, P <> Empty -> exists x :e P, forall y :e P, ~ (lt (y 0) (x 0) /\ lt0 (y 1) (x 1)).
Admitted.

// HOL Light: wf.ml:244 / WF_num   (hash md5:207314b216600b64e25f3b0fea660db9)
// not bridged: 
Theorem WF_num : forall P c= omega, P <> Empty -> exists x :e P, forall y :e P, ~ y < x.
Admitted.

// HOL Light: wf.ml:248 / WF_REC_num   (hash md5:22be6717a684453cf75c0e860b18cf55)
Theorem hlt_WF_REC_num : forall A:set, A <> Empty -> forall H :e A :^: omega :^: (A :^: omega), (forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, hl_lt m n = 1 -> f m = g m) -> H f n = H g n) -> exists f :e A :^: omega, forall n :e omega, f n = H f n.
Admitted.
Theorem WF_REC_num_bridge : (forall A:set, A <> Empty -> forall H :e A :^: omega :^: (A :^: omega), (forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, hl_lt m n = 1 -> f m = g m) -> H f n = H g n) -> exists f :e A :^: omega, forall n :e omega, f n = H f n) -> (forall A:set, A <> Empty -> forall H:set -> set -> set, (forall x :e A :^: omega, forall y :e omega, H x y :e A) -> (forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, m < n -> f m = g m) -> H f n = H g n) -> exists f :e A :^: omega, forall n :e omega, f n = H f n).
exact (fun H__top A HAne => (imp_forall_fun2 (A :^: omega) (omega) (A) (fun H => (forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, hl_lt m n = 1 -> f m = g m) -> H f n = H g n) -> exists f :e A :^: omega, forall n :e omega, f n = H f n) (fun H => (forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, m < n -> f m = g m) -> H f n = H g n) -> exists f :e A :^: omega, forall n :e omega, f n = H f n) (fun H HHc => (fun H__L : ((forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, hl_lt m n = 1 -> f m = g m) -> hl_lam2 (A :^: omega) omega H f n = hl_lam2 (A :^: omega) omega H g n) -> (exists f :e A :^: omega, forall n :e omega, f n = hl_lam2 (A :^: omega) omega H f n)) => fun H__hyp : (forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, m < n -> f m = g m) -> H f n = H g n) => (imp_exists_in (A :^: omega) (fun f => forall n :e omega, f n = hl_lam2 (A :^: omega) omega H f n) (fun f => forall n :e omega, f n = H f n) (fun f Hf => (imp_forall_in (omega) (fun n => f n = hl_lam2 (A :^: omega) omega H f n) (fun n => f n = H f n) (fun n Hn => (imp_eq (f n) (f n) (hl_lam2 (A :^: omega) omega H f n) (H f n) (fun q H => H) ((hl_lam2_ap (A :^: omega) (omega) H) (f) Hf (n) Hn)))))) (H__L ((imp_forall_in (A :^: omega) (fun f => forall g :e A :^: omega, forall n :e omega, (forall m :e omega, m < n -> f m = g m) -> H f n = H g n) (fun f => forall g :e A :^: omega, forall n :e omega, (forall m :e omega, hl_lt m n = 1 -> f m = g m) -> hl_lam2 (A :^: omega) omega H f n = hl_lam2 (A :^: omega) omega H g n) (fun f Hf => (imp_forall_in (A :^: omega) (fun g => forall n :e omega, (forall m :e omega, m < n -> f m = g m) -> H f n = H g n) (fun g => forall n :e omega, (forall m :e omega, hl_lt m n = 1 -> f m = g m) -> hl_lam2 (A :^: omega) omega H f n = hl_lam2 (A :^: omega) omega H g n) (fun g Hg => (imp_forall_in (omega) (fun n => (forall m :e omega, m < n -> f m = g m) -> H f n = H g n) (fun n => (forall m :e omega, hl_lt m n = 1 -> f m = g m) -> hl_lam2 (A :^: omega) omega H f n = hl_lam2 (A :^: omega) omega H g n) (fun n Hn => (fun H__N : ((forall m :e omega, m < n -> f m = g m) -> (H f n = H g n)) => fun H__hyp : (forall m :e omega, hl_lt m n = 1 -> f m = g m) => (imp_eq (H f n) (hl_lam2 (A :^: omega) omega H f n) (H g n) (hl_lam2 (A :^: omega) omega H g n) (eq_sym_i (hl_lam2 (A :^: omega) omega H f n) (H f n) ((hl_lam2_ap (A :^: omega) (omega) H) (f) Hf (n) Hn)) (eq_sym_i (hl_lam2 (A :^: omega) omega H g n) (H g n) ((hl_lam2_ap (A :^: omega) (omega) H) (g) Hg (n) Hn))) (H__N ((imp_forall_in (omega) (fun m => hl_lt m n = 1 -> f m = g m) (fun m => m < n -> f m = g m) (fun m Hm => (fun H__L : ((hl_lt m n = 1) -> (f m = g m)) => fun H__hyp : (m < n) => (imp_eq (f m) (f m) (g m) (g m) (fun q H => H) (fun q H => H)) (H__L ((iffER (hl_lt m n = 1) (m < n) ((hl_lt_compat) (m) Hm (n) Hn)) H__hyp))))) H__hyp))))))))) H__hyp))))) (H__top A HAne)).
Qed.
Theorem WF_REC_num : forall A:set, A <> Empty -> forall H:set -> set -> set, (forall x :e A :^: omega, forall y :e omega, H x y :e A) -> (forall f g :e A :^: omega, forall n :e omega, (forall m :e omega, m < n -> f m = g m) -> H f n = H g n) -> exists f :e A :^: omega, forall n :e omega, f n = H f n.
exact (WF_REC_num_bridge hlt_WF_REC_num).
Admitted.

// HOL Light: wf.ml:257 / MEASURE   (hash md5:abb01e8d84ce430691bf20436f40529b)
// not bridged: 
Theorem MEASURE : forall A:set, forall m:set -> set, (forall x :e A, m x :e omega) -> forall x y :e A, m x < m y <-> m x < m y.
Admitted.

// HOL Light: wf.ml:260 / WF_MEASURE   (hash md5:5d1b43ae387330061cca4c569f00754a)
// not bridged: 
Theorem WF_MEASURE : forall A:set, A <> Empty -> forall m:set -> set, (forall x :e A, m x :e omega) -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ m y < m x.
Admitted.

// HOL Light: wf.ml:266 / MEASURE_LE   (hash md5:ee7af6db0480bfcd4772b3bb79427a82)
// not bridged: 
Theorem MEASURE_LE : forall A:set, forall a b :e A, forall m:set -> set, (forall x :e A, m x :e omega) -> ((forall y :e A, m y < m a -> m y < m b) <-> m a <= m b).
Admitted.

// HOL Light: wf.ml:274 / WF_ANTISYM   (hash md5:8f382d4d707a3fd748d7af2d1d2e5381)
// not bridged: 
Theorem WF_ANTISYM : forall A:set, forall lt:set -> set -> prop, forall x y :e A, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> ~ (lt x y /\ lt y x).
Admitted.

// HOL Light: wf.ml:281 / WF_REFL   (hash md5:3ceb7770ded878a41d37259a4e61d0d1)
// not bridged: 
Theorem WF_REFL : forall A:set, forall lt:set -> set -> prop, forall x :e A, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) -> ~ lt x x.
Admitted.

// HOL Light: wf.ml:289 / WF_FALSE   (hash md5:3a0c9abd721808b47cf963c7218fab66)
// not bridged: 
Theorem WF_FALSE : forall A:set, A <> Empty -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ False.
Admitted.

// HOL Light: wf.ml:298 / MINIMAL_BAD_SEQUENCE   (hash md5:626982c0fe0f800129b51817d89ba2b9)
// not bridged: 
Theorem MINIMAL_BAD_SEQUENCE : forall A:set, forall lt:set -> set -> prop, forall bad:set -> prop, (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) /\ ((forall x :e A :^: omega, ~ bad x -> exists n :e omega, forall y :e A :^: omega, (forall k :e omega, k < n -> y k = x k) -> ~ bad y) /\ (exists x :e A :^: omega, bad x)) -> exists y :e A :^: omega, bad y /\ forall z :e A :^: omega, forall n :e omega, bad z /\ (forall k :e omega, k < n -> z k = y k) -> ~ lt (z n) (y n).
Admitted.

// HOL Light: wf.ml:324 / WF_REC_TAIL   (hash md5:5ebf42ce478fde0c9b6f81dfe2ffcf34)
// not bridged: 
Theorem WF_REC_TAIL : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall g:set -> set, (forall x :e A, g x :e A) -> forall h:set -> set, (forall x :e A, h x :e B) -> exists f:set -> set, (forall x :e A, f x :e B) /\ forall x :e A, f x = if P x then f (g x) else h x.
Admitted.

// HOL Light: wf.ml:359 / WF_REC_TAIL_GENERAL   (hash md5:72c99beb795211e51200dc3e68f5b921)
// not bridged: 
Theorem WF_REC_TAIL_GENERAL : forall A B:set, B <> Empty -> forall lt P:set -> set -> prop, forall G:set -> set -> set, (forall x :e B :^: A, forall y :e A, G x y :e A) -> forall H:set -> set -> set, (forall x :e B :^: A, forall y :e A, H x y :e B) -> (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) /\ ((forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x -> f z = g z) -> (P f x <-> P g x) /\ (G f x = G g x /\ H f x = H g x)) /\ ((forall f g :e B :^: A, forall x :e A, (forall z :e A, lt z x -> f z = g z) -> H f x = H g x) /\ (forall f :e B :^: A, forall x y :e A, P f x /\ lt y (G f x) -> lt y x))) -> exists f :e B :^: A, forall x :e A, f x = if P f x then f (G f x) else H f x.
Admitted.

