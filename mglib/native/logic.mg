// Native logical toolkit for generated proofs (docs/DESIGN.md 24.3): congruence of the
// connectives and quantifiers under <->, and basic equality helpers.  Composed into the
// native contexts (public shards, generated native proofs) only; the literal bridge has
// its own copies of the shared names, and the two compositions never overlap.

Theorem eq_sym_i : forall a b:set, a = b -> b = a.
let a b. assume H. exact (H (fun hl__u hl__v => hl__u = a) (fun q H => H)).
Qed.

Theorem eq_trans_i : forall a b c:set, a = b -> b = c -> a = c.
let a b c. assume H1 H2. exact (H2 (fun hl__u hl__v => a = hl__u) H1).
Qed.

Theorem f_equal : forall f:set -> set, forall a b:set, a = b -> f a = f b.
let f a b. assume H. exact (H (fun hl__u hl__v => f a = f hl__u) (fun q H => H)).
Qed.

Theorem f_equal2 : forall f:set -> set -> set, forall a b c d:set, a = b -> c = d -> f a c = f b d.
let f a b c d. assume H1 H2.
exact (H2 (fun hl__u hl__v => f a c = f b hl__u) (H1 (fun hl__u hl__v => f a c = f hl__u c) (fun q H => H))).
Qed.

Theorem and_iff_cong : forall a a' b b':prop, (a <-> a') -> (b <-> b') -> (a /\ b <-> a' /\ b').
let a a' b b'. assume Ha Hb.
apply iffI.
- assume H. exact (andI a' b' (iffEL a a' Ha (andEL a b H)) (iffEL b b' Hb (andER a b H))).
- assume H. exact (andI a b (iffER a a' Ha (andEL a' b' H)) (iffER b b' Hb (andER a' b' H))).
Qed.

Theorem or_iff_cong : forall a a' b b':prop, (a <-> a') -> (b <-> b') -> (a \/ b <-> a' \/ b').
let a a' b b'. assume Ha Hb.
apply iffI.
- assume H. apply H.
  + assume H1. exact (orIL a' b' (iffEL a a' Ha H1)).
  + assume H1. exact (orIR a' b' (iffEL b b' Hb H1)).
- assume H. apply H.
  + assume H1. exact (orIL a b (iffER a a' Ha H1)).
  + assume H1. exact (orIR a b (iffER b b' Hb H1)).
Qed.

Theorem not_iff_cong : forall a a':prop, (a <-> a') -> (~ a <-> ~ a').
let a a'. assume Ha.
apply iffI.
- assume H. assume H1. exact (H (iffER a a' Ha H1)).
- assume H. assume H1. exact (H (iffEL a a' Ha H1)).
Qed.

Theorem imp_iff_cong : forall a a' b b':prop, (a <-> a') -> (b <-> b') -> ((a -> b) <-> (a' -> b')).
let a a' b b'. assume Ha Hb.
apply iffI.
- assume H. assume H1. exact (iffEL b b' Hb (H (iffER a a' Ha H1))).
- assume H. assume H1. exact (iffER b b' Hb (H (iffEL a a' Ha H1))).
Qed.

Theorem iff_iff_cong : forall a a' b b':prop, (a <-> a') -> (b <-> b') -> ((a <-> b) <-> (a' <-> b')).
let a a' b b'. assume Ha Hb.
apply iffI.
- assume H. exact (iff_trans a' a b' (iff_sym a a' Ha) (iff_trans a b b' H Hb)).
- assume H. exact (iff_trans a a' b Ha (iff_trans a' b' b H (iff_sym b b' Hb))).
Qed.

Theorem all_in_iff_cong : forall X:set, forall P Q:set -> prop, (forall x :e X, P x <-> Q x) -> ((forall x :e X, P x) <-> forall x :e X, Q x).
let X P Q. assume H.
apply iffI.
- assume H1. let x. assume Hx. exact (iffEL (P x) (Q x) (H x Hx) (H1 x Hx)).
- assume H1. let x. assume Hx. exact (iffER (P x) (Q x) (H x Hx) (H1 x Hx)).
Qed.

Theorem ex_in_iff_cong : forall X:set, forall P Q:set -> prop, (forall x :e X, P x <-> Q x) -> ((exists x :e X, P x) <-> exists x :e X, Q x).
let X P Q. assume H.
apply iffI.
- assume H1. apply H1. let x. assume H2. apply H2. assume Hx HP.
  witness x. apply andI.
  + exact Hx.
  + exact (iffEL (P x) (Q x) (H x Hx) HP).
- assume H1. apply H1. let x. assume H2. apply H2. assume Hx HQ.
  witness x. apply andI.
  + exact Hx.
  + exact (iffER (P x) (Q x) (H x Hx) HQ).
Qed.

Theorem all_iff_cong : forall P Q:set -> prop, (forall x:set, P x <-> Q x) -> ((forall x:set, P x) <-> forall x:set, Q x).
let P Q. assume H.
apply iffI.
- assume H1. let x. exact (iffEL (P x) (Q x) (H x) (H1 x)).
- assume H1. let x. exact (iffER (P x) (Q x) (H x) (H1 x)).
Qed.

Theorem ex_iff_cong : forall P Q:set -> prop, (forall x:set, P x <-> Q x) -> ((exists x:set, P x) <-> exists x:set, Q x).
let P Q. assume H.
apply iffI.
- assume H1. apply H1. let x. assume HP. witness x. exact (iffEL (P x) (Q x) (H x) HP).
- assume H1. apply H1. let x. assume HQ. witness x. exact (iffER (P x) (Q x) (H x) HQ).
Qed.

Theorem allp_iff_cong : forall P Q:prop -> prop, (forall p:prop, P p <-> Q p) -> ((forall p:prop, P p) <-> forall p:prop, Q p).
let P Q. assume H.
apply iffI.
- assume H1. let p. exact (iffEL (P p) (Q p) (H p) (H1 p)).
- assume H1. let p. exact (iffER (P p) (Q p) (H p) (H1 p)).
Qed.

Theorem iff_true_intro : forall p:prop, p -> (p <-> True).
let p. assume Hp.
apply iffI.
- assume H_. exact (fun q:prop => fun H:q => H).
- assume H_. exact Hp.
Qed.

Theorem iff_false_intro : forall p:prop, ~ p -> (p <-> False).
let p. assume Hnp.
apply iffI.
- assume Hp. exact (Hnp Hp).
- assume Hf. exact (FalseE Hf p).
Qed.

Theorem all_sub_iff_cong : forall X:set, forall P Q:set -> prop, (forall s c= X, P s <-> Q s) -> ((forall s c= X, P s) <-> forall s c= X, Q s).
let X P Q. assume H.
apply iffI.
- assume H1. let s. assume Hs. exact (iffEL (P s) (Q s) (H s Hs) (H1 s Hs)).
- assume H1. let s. assume Hs. exact (iffER (P s) (Q s) (H s Hs) (H1 s Hs)).
Qed.

Theorem ex_sub_iff_cong : forall X:set, forall P Q:set -> prop, (forall s c= X, P s <-> Q s) -> ((exists s c= X, P s) <-> exists s c= X, Q s).
let X P Q. assume H.
apply iffI.
- assume H1. apply H1. let s. assume H2. apply H2. assume Hs HP.
  witness s. apply andI.
  + exact Hs.
  + exact (iffEL (P s) (Q s) (H s Hs) HP).
- assume H1. apply H1. let s. assume H2. apply H2. assume Hs HQ.
  witness s. apply andI.
  + exact Hs.
  + exact (iffER (P s) (Q s) (H s Hs) HQ).
Qed.

Theorem mul_SNo_SR_omega : forall m n :e omega, m * ordsucc n = m + m * n.
let m. assume Hm. let n. assume Hn.
claim Hmn: mul_nat m n :e omega. { exact (nat_p_omega (mul_nat m n) (mul_nat_p m (omega_nat_p m Hm) n (omega_nat_p n Hn))). }
claim H1: m * ordsucc n = mul_nat m (ordsucc n). { exact (eq_sym_i (mul_nat m (ordsucc n)) (m * ordsucc n) (mul_nat_mul_SNo m Hm (ordsucc n) (omega_ordsucc n Hn))). }
claim H2: mul_nat m (ordsucc n) = add_nat m (mul_nat m n). { exact (mul_nat_SR m n (omega_nat_p n Hn)). }
claim H3: add_nat m (mul_nat m n) = m + mul_nat m n. { exact (add_nat_add_SNo m Hm (mul_nat m n) Hmn). }
claim H4: mul_nat m n = m * n. { exact (mul_nat_mul_SNo m Hm n Hn). }
claim H5: m + mul_nat m n = m + m * n. { exact (H4 (fun hl__u hl__v => m + mul_nat m n = m + hl__u) (fun q H => H)). }
exact (eq_trans_i (m * ordsucc n) (mul_nat m (ordsucc n)) (m + m * n) H1 (eq_trans_i (mul_nat m (ordsucc n)) (add_nat m (mul_nat m n)) (m + m * n) H2 (eq_trans_i (add_nat m (mul_nat m n)) (m + mul_nat m n) (m + m * n) H3 H5))).
Qed.

Theorem mul_SNo_SL_omega : forall m n :e omega, ordsucc m * n = n + m * n.
let m. assume Hm. let n. assume Hn.
claim Hsm: SNo (ordsucc m). { exact (omega_SNo (ordsucc m) (omega_ordsucc m Hm)). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hsm0: SNo m. { exact (omega_SNo m Hm). }
claim H1: ordsucc m * n = n * ordsucc m. { exact (mul_SNo_com (ordsucc m) n Hsm Hsn). }
claim H2: n * ordsucc m = n + n * m. { exact (mul_SNo_SR_omega n Hn m Hm). }
claim H3: n * m = m * n. { exact (mul_SNo_com n m Hsn Hsm0). }
claim H4: n + n * m = n + m * n. { exact (H3 (fun hl__u hl__v => n + n * m = n + hl__u) (fun q H => H)). }
exact (eq_trans_i (ordsucc m * n) (n * ordsucc m) (n + m * n) H1 (eq_trans_i (n * ordsucc m) (n + n * m) (n + m * n) H2 H4)).
Qed.

Theorem SNoLt_ordsucc_iff_omega : forall m n :e omega, m < ordsucc n <-> m = n \/ m < n.
let m. assume Hm. let n. assume Hn.
claim Hom: ordinal m. { exact (nat_p_ordinal m (omega_nat_p m Hm)). }
claim Hon: ordinal n. { exact (nat_p_ordinal n (omega_nat_p n Hn)). }
claim Hosn: ordinal (ordsucc n). { exact (nat_p_ordinal (ordsucc n) (omega_nat_p (ordsucc n) (omega_ordsucc n Hn))). }
apply iffI.
- assume H.
  claim Hin: m :e ordsucc n. { exact (ordinal_SNoLt_In m (ordsucc n) Hom Hosn H). }
  apply (ordsuccE n m Hin).
  + assume H1. exact (orIR (m = n) (m < n) (ordinal_In_SNoLt n Hon m H1)).
  + assume H1. exact (orIL (m = n) (m < n) H1).
- assume H. apply H.
  + assume H1. exact ((eq_sym_i m n H1) (fun hl__u hl__v => hl__u < ordsucc n) (ordinal_In_SNoLt (ordsucc n) Hosn n (ordsuccI2 n))).
  + assume H1.
    claim Hin: m :e n. { exact (ordinal_SNoLt_In m n Hom Hon H1). }
    exact (ordinal_In_SNoLt (ordsucc n) Hosn m (ordsuccI1 n m Hin)).
Qed.

Theorem SNoLe_ordsucc_iff_omega : forall m n :e omega, m <= ordsucc n <-> m = ordsucc n \/ m <= n.
let m. assume Hm. let n. assume Hn.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hssn: SNo (ordsucc n). { exact (omega_SNo (ordsucc n) (omega_ordsucc n Hn)). }
apply iffI.
- assume H.
  apply (SNoLeE m (ordsucc n) Hsm Hssn H).
  + assume H1.
    apply (iffEL (m < ordsucc n) (m = n \/ m < n) (SNoLt_ordsucc_iff_omega m Hm n Hn) H1).
    * assume H2. exact (orIR (m = ordsucc n) (m <= n) ((eq_sym_i m n H2) (fun hl__u hl__v => hl__u <= n) (SNoLe_ref n))).
    * assume H2. exact (orIR (m = ordsucc n) (m <= n) (SNoLtLe m n H2)).
  + assume H1. exact (orIL (m = ordsucc n) (m <= n) H1).
- assume H. apply H.
  + assume H1. exact ((eq_sym_i m (ordsucc n) H1) (fun hl__u hl__v => hl__u <= ordsucc n) (SNoLe_ref (ordsucc n))).
  + assume H1. exact (SNoLtLe m (ordsucc n) (SNoLeLt_tra m n (ordsucc n) Hsm Hsn Hssn H1 (ordinal_In_SNoLt (ordsucc n) (nat_p_ordinal (ordsucc n) (omega_nat_p (ordsucc n) (omega_ordsucc n Hn))) n (ordsuccI2 n)))).
Qed.
