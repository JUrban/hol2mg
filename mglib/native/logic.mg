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

Theorem not_SNoLt_0_omega : forall m :e omega, ~ m < 0.
let m. assume Hm. assume H.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hmm: m < m. { exact (SNoLtLe_tra m 0 m Hsm SNo_0 Hsm H (omega_nonneg m Hm)). }
exact (SNoLt_irref m Hmm).
Qed.

Theorem SNoLe_0_iff_omega : forall m :e omega, m <= 0 <-> m = 0.
let m. assume Hm.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
apply iffI.
- assume H. exact (SNoLe_antisym m 0 Hsm SNo_0 H (omega_nonneg m Hm)).
- assume H. exact ((eq_sym_i m 0 H) (fun hl__u hl__v => hl__u <= 0) (SNoLe_ref 0)).
Qed.

Theorem SNoLt_ordsucc_SNoLe_omega : forall m n :e omega, m < ordsucc n <-> m <= n.
let m. assume Hm. let n. assume Hn.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hssn: SNo (ordsucc n). { exact (omega_SNo (ordsucc n) (omega_ordsucc n Hn)). }
claim Hom: ordinal m. { exact (nat_p_ordinal m (omega_nat_p m Hm)). }
claim Hon: ordinal n. { exact (nat_p_ordinal n (omega_nat_p n Hn)). }
claim Hosn: ordinal (ordsucc n). { exact (nat_p_ordinal (ordsucc n) (nat_ordsucc n (omega_nat_p n Hn))). }
apply iffI.
- assume H.
  claim Hin: m :e ordsucc n. { exact (ordinal_SNoLt_In m (ordsucc n) Hom Hosn H). }
  apply (ordsuccE n m Hin).
  + assume H1. exact (SNoLtLe m n (ordinal_In_SNoLt n Hon m H1)).
  + assume H1. exact (H1 (fun hl__u hl__v => m <= hl__u) (SNoLe_ref m)).
- assume H.
  apply (SNoLeE m n Hsm Hsn H).
  + assume H1. exact (SNoLt_tra m n (ordsucc n) Hsm Hsn Hssn H1 (ordinal_In_SNoLt (ordsucc n) Hosn n (ordsuccI2 n))).
  + assume H1. exact ((eq_sym_i m n H1) (fun hl__u hl__v => hl__u < ordsucc n) (ordinal_In_SNoLt (ordsucc n) Hosn n (ordsuccI2 n))).
Qed.

Theorem SNoLe_ordsucc_SNoLt_omega : forall m n :e omega, ordsucc m <= n <-> m < n.
let m. assume Hm. let n. assume Hn.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hssm: SNo (ordsucc m). { exact (omega_SNo (ordsucc m) (omega_ordsucc m Hm)). }
claim Hom: ordinal m. { exact (nat_p_ordinal m (omega_nat_p m Hm)). }
claim Hon: ordinal n. { exact (nat_p_ordinal n (omega_nat_p n Hn)). }
claim Hosm: ordinal (ordsucc m). { exact (nat_p_ordinal (ordsucc m) (nat_ordsucc m (omega_nat_p m Hm))). }
apply iffI.
- assume H. exact (SNoLtLe_tra m (ordsucc m) n Hsm Hssm Hsn (ordinal_In_SNoLt (ordsucc m) Hosm m (ordsuccI2 m)) H).
- assume H.
  claim Hin: m :e n. { exact (ordinal_SNoLt_In m n Hom Hon H). }
  claim Hin2: ordsucc m :e ordsucc n. { exact (ordinal_ordsucc_In n Hon m Hin). }
  apply (ordsuccE n (ordsucc m) Hin2).
  + assume H1. exact (SNoLtLe (ordsucc m) n (ordinal_In_SNoLt n Hon (ordsucc m) H1)).
  + assume H1. exact (H1 (fun hl__u hl__v => ordsucc m <= hl__u) (SNoLe_ref (ordsucc m))).
Qed.

Theorem num_recursion : forall A:set, forall e0 :e A, forall f:set -> set -> set, (forall x :e A, forall y :e omega, f x y :e A) -> exists fn:set -> set, (forall x :e omega, fn x :e A) /\ (fn 0 = e0 /\ forall n :e omega, fn (ordsucc n) = f (fn n) n).
let A. let e0. assume He0. let f. assume Hf.
witness (nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k)).
apply andI.
- claim Hbase: nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) 0 :e A.
  { exact ((eq_sym_i (nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) 0) e0 (nat_primrec_0 e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k))) (fun hl__u hl__v => hl__u :e A) He0). }
  claim Hstep: forall hl__n, nat_p hl__n -> nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) hl__n :e A -> nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) (ordsucc hl__n) :e A.
  { let hl__n. assume Hkn. assume IH.
    exact ((eq_sym_i (nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) (ordsucc hl__n)) (f (nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) hl__n) hl__n) (nat_primrec_S e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) hl__n Hkn)) (fun hl__u hl__v => hl__u :e A) (Hf (nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) hl__n) IH hl__n (nat_p_omega hl__n Hkn))). }
  let hl__x. assume Hx.
  exact (nat_ind (fun hl__w => nat_primrec e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) hl__w :e A) Hbase Hstep hl__x (omega_nat_p hl__x Hx)).
- apply andI.
  + exact (nat_primrec_0 e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k)).
  + let hl__n. assume Hn.
    exact (nat_primrec_S e0 (fun hl__k:set => fun hl__r:set => f hl__r hl__k) hl__n (omega_nat_p hl__n Hn)).
Qed.

Theorem skolem_thm : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, (forall x :e A, exists y :e B, P x y) <-> exists y:set -> set, (forall x :e A, y x :e B) /\ forall x :e A, P x (y x).
let A. let B. assume HA. assume HB. let P.
apply iffI.
- assume H.
  witness (fun hl__x:set => choose_in {hl__y :e B | P hl__x hl__y} (fun hl__w:set => True)).
  claim Hne: forall hl__x :e A, {hl__y :e B | P hl__x hl__y} <> Empty.
  { let hl__x. assume Hx. assume Heq.
    apply (H hl__x Hx). let hl__y. assume Hy0. apply Hy0. assume HyB HyP.
    exact (EmptyE hl__y (Heq (fun hl__u hl__v => hl__y :e hl__u) (SepI B (fun hl__w:set => P hl__x hl__w) hl__y HyB HyP))). }
  apply andI.
  + let hl__x. assume Hx.
    exact (SepE1 B (fun hl__w:set => P hl__x hl__w) (choose_in {hl__y :e B | P hl__x hl__y} (fun hl__w:set => True)) (choose_in_in {hl__y :e B | P hl__x hl__y} (Hne hl__x Hx) (fun hl__w:set => True))).
  + let hl__x. assume Hx.
    exact (SepE2 B (fun hl__w:set => P hl__x hl__w) (choose_in {hl__y :e B | P hl__x hl__y} (fun hl__w:set => True)) (choose_in_in {hl__y :e B | P hl__x hl__y} (Hne hl__x Hx) (fun hl__w:set => True))).
- assume H. let hl__x. assume Hx.
  apply H. let hl__g. assume Hg.
  witness (hl__g hl__x).
  apply andI.
  + exact (andEL (forall hl__x0 :e A, hl__g hl__x0 :e B) (forall hl__x0 :e A, P hl__x0 (hl__g hl__x0)) Hg hl__x Hx).
  + exact (andER (forall hl__x0 :e A, hl__g hl__x0 :e B) (forall hl__x0 :e A, P hl__x0 (hl__g hl__x0)) Hg hl__x Hx).
Qed.

Theorem list_recursion : forall A Z:set, A <> Empty -> forall NIL' :e Z, forall CONS':set -> set -> set -> set, (forall x :e A, forall y :e finseq A, forall z :e Z, CONS' x y z :e Z) -> exists fn:set -> set, (forall x :e finseq A, fn x :e Z) /\ (fn seq_nil = NIL' /\ forall a0 :e A, forall a1 :e finseq A, fn (seq_cons a0 a1) = CONS' a0 a1 (fn a1)).
let A. let Z. assume HA. let NIL'. assume He0. let CONS'. assume Hc0.
claim Linv: forall l :e finseq A, ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) = l /\ ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1) :e Z.
{ claim Lbase: ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) 0) = seq_nil /\ ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) 1) :e Z.
  { claim E0: (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) = (seq_nil, NIL').
    { exact (seq_foldr_nil (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_nil, NIL')). }
    apply andI.
    - exact (eq_trans_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) 0) ((seq_nil, NIL') 0) (seq_nil) (f_equal (fun hl__u:set => hl__u 0) (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) (seq_nil, NIL') E0) (tuple_2_0_eq seq_nil NIL')).
    - claim E1: ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) 1) = NIL'.
      { exact (eq_trans_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) 1) ((seq_nil, NIL') 1) (NIL') (f_equal (fun hl__u:set => hl__u 1) (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) (seq_nil, NIL') E0) (tuple_2_1_eq seq_nil NIL')). }
      exact ((eq_sym_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) 1) NIL' E1) (fun hl__u hl__v => hl__u :e Z) He0). }
  claim Lstep: forall a :e A, forall l :e finseq A, (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) = l /\ ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1) :e Z) -> ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 0) = (seq_cons a l) /\ ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 1) :e Z.
  { let a. assume Ha. let l. assume Hl. assume IH.
    claim EC: (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) = (seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0), CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)).
    { exact (seq_foldr_cons A (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a Ha l Hl (seq_nil, NIL')). }
    claim P0: ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 0) = (seq_cons a l).
    { claim Q0: ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 0) = (seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0)).
      { exact (eq_trans_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 0) ((seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0), CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)) 0) (seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0)) (f_equal (fun hl__u:set => hl__u 0) (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) (seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0), CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)) EC) (tuple_2_0_eq (seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0)) (CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)))). }
      exact (eq_trans_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 0) (seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0)) (seq_cons a l) Q0 (f_equal (fun hl__u:set => seq_cons a hl__u) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) (l) (andEL (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) = l) (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1) :e Z) IH))). }
    claim P1: ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 1) = (CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)).
    { exact (eq_trans_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 1) ((seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0), CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)) 1) (CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)) (f_equal (fun hl__u:set => hl__u 1) (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) (seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0), CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)) EC) (tuple_2_1_eq (seq_cons a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0)) (CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)))). }
    apply andI.
    - exact P0.
    - claim M0: ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) :e finseq A.
      { exact ((eq_sym_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) l (andEL (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) = l) (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1) :e Z) IH)) (fun hl__u hl__v => hl__u :e finseq A) Hl). }
      claim MZ: CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1) :e Z.
      { exact (Hc0 a Ha ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) M0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1) (andER (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) = l) (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1) :e Z) IH)). }
      exact ((eq_sym_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a l) (seq_nil, NIL')) 1) (CONS' a ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) l (seq_nil, NIL')) 1)) P1) (fun hl__u hl__v => hl__u :e Z) MZ). }
  exact (seq_induct A (fun hl__w:set => ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) hl__w (seq_nil, NIL')) 0) = hl__w /\ ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) hl__w (seq_nil, NIL')) 1) :e Z) Lbase Lstep). }
witness (fun hl__w:set => ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) hl__w (seq_nil, NIL')) 1)).
apply andI.
- let x. assume Hx. exact (andER (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) x (seq_nil, NIL')) 0) = x) (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) x (seq_nil, NIL')) 1) :e Z) (Linv x Hx)).
- apply andI.
  + claim E02: (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) = (seq_nil, NIL').
    { exact (seq_foldr_nil (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_nil, NIL')). }
    exact (eq_trans_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) 1) ((seq_nil, NIL') 1) (NIL') (f_equal (fun hl__u:set => hl__u 1) (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) seq_nil (seq_nil, NIL')) (seq_nil, NIL') E02) (tuple_2_1_eq seq_nil NIL')).
  + let a0. assume Ha0. let a1. assume Ha1.
    claim EC2: (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a0 a1) (seq_nil, NIL')) = (seq_cons a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0), CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)).
    { exact (seq_foldr_cons A (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a0 Ha0 a1 Ha1 (seq_nil, NIL')). }
    claim P12: ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a0 a1) (seq_nil, NIL')) 1) = (CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)).
    { exact (eq_trans_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a0 a1) (seq_nil, NIL')) 1) ((seq_cons a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0), CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)) 1) (CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)) (f_equal (fun hl__u:set => hl__u 1) (seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a0 a1) (seq_nil, NIL')) (seq_cons a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0), CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)) EC2) (tuple_2_1_eq (seq_cons a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0)) (CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)))). }
    claim R1: (CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)) = (CONS' a0 a1 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)).
    { exact ((andEL (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) = a1) (((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1) :e Z) (Linv a1 Ha1)) (fun hl__u hl__v => CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1) = CONS' a0 hl__u ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)) (fun q H => H)). }
    exact (eq_trans_i ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) (seq_cons a0 a1) (seq_nil, NIL')) 1) (CONS' a0 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 0) ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)) (CONS' a0 a1 ((seq_foldr (fun x:set => fun p:set => (seq_cons x (p 0), CONS' x (p 0) (p 1))) a1 (seq_nil, NIL')) 1)) P12 R1).
Qed.

Theorem seq_all_nil : forall P:set -> prop, seq_all P seq_nil <-> True.
let P.
claim L: seq_all P seq_nil.
{ let i. assume Hi.
  claim Hi0: i :e 0. { exact (seq_len_nil (fun hl__u hl__v => i :e hl__u) Hi). }
  exact (FalseE (EmptyE i Hi0) (P (seq_nth seq_nil i))). }
exact (iff_true_intro (seq_all P seq_nil) L).
Qed.

Theorem seq_all_cons : forall A:set, forall P:set -> prop, forall a :e A, forall l :e finseq A, seq_all P (seq_cons a l) <-> P a /\ seq_all P l.
let A. let P. let a. assume Ha. let l. assume Hl.
claim Hlen: seq_len (seq_cons a l) = ordsucc (seq_len l). { exact (seq_len_cons A a Ha l Hl). }
claim Hlom: seq_len l :e omega. { exact (seq_len_omega A l Hl). }
claim Hlnat: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) Hlom). }
apply iffI.
- assume H.
  apply andI.
  + claim H0: 0 :e seq_len (seq_cons a l).
    { exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => 0 :e hl__u) (nat_0_in_ordsucc (seq_len l) Hlnat)). }
    exact ((seq_nth_cons_0 A a Ha l Hl) (fun hl__u hl__v => P hl__u) (H 0 H0)).
  + prove forall i :e seq_len l, P (seq_nth l i).
    let i. assume Hi.
    claim Hsi: ordsucc i :e seq_len (seq_cons a l).
    { exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => ordsucc i :e hl__u) (ordinal_ordsucc_In (seq_len l) (nat_p_ordinal (seq_len l) Hlnat) i Hi)). }
    exact ((seq_nth_cons_S A a Ha l Hl i Hi) (fun hl__u hl__v => P hl__u) (H (ordsucc i) Hsi)).
- assume H.
  prove forall i :e seq_len (seq_cons a l), P (seq_nth (seq_cons a l) i).
  let i. assume Hi.
  claim Hio: i :e ordsucc (seq_len l).
  { exact (Hlen (fun hl__u hl__v => i :e hl__u) Hi). }
  claim Hinat: nat_p i.
  { exact (nat_p_trans (ordsucc (seq_len l)) (nat_ordsucc (seq_len l) Hlnat) i Hio). }
  apply (nat_inv i Hinat).
  + assume Hi0.
    claim HP0: P (seq_nth (seq_cons a l) 0).
    { exact ((eq_sym_i (seq_nth (seq_cons a l) 0) a (seq_nth_cons_0 A a Ha l Hl)) (fun hl__u hl__v => P hl__u) (andEL (P a) (seq_all P l) H)). }
    exact ((eq_sym_i i 0 Hi0) (fun hl__u hl__v => P (seq_nth (seq_cons a l) hl__u)) HP0).
  + assume Hex. apply Hex. let j. assume Hj0. apply Hj0. assume Hjn Hij.
    claim Hji: ordsucc j :e ordsucc (seq_len l).
    { exact (Hij (fun hl__u hl__v => hl__u :e ordsucc (seq_len l)) Hio). }
    claim Hjl: j :e seq_len l.
    { apply (ordsuccE (seq_len l) (ordsucc j) Hji).
      assume H1.
      exact (nat_trans (seq_len l) Hlnat (ordsucc j) H1 j (ordsuccI2 j)).
      assume H1.
      exact (H1 (fun hl__u hl__v => j :e hl__u) (ordsuccI2 j)). }
    claim HPj: P (seq_nth l j).
    { exact (andER (P a) (seq_all P l) H j Hjl). }
    claim HPsj: P (seq_nth (seq_cons a l) (ordsucc j)).
    { exact ((eq_sym_i (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (seq_nth_cons_S A a Ha l Hl j Hjl)) (fun hl__u hl__v => P hl__u) HPj). }
    exact ((eq_sym_i i (ordsucc j) Hij) (fun hl__u hl__v => P (seq_nth (seq_cons a l) hl__u)) HPsj).
Qed.

Theorem in_1_eq_0 : forall v :e 1, v = 0.
let v. assume Hv.
exact (cases_1 v Hv (fun hl__u:set => hl__u = 0) (fun q H => H)).
Qed.

Theorem real_lt_iff : forall y x :e R, x < y <-> ~ y <= x.
let y. assume Hy. let x. assume Hx.
claim Hsx: SNo x. { exact (real_SNo x Hx). }
claim Hsy: SNo y. { exact (real_SNo y Hy). }
apply iffI.
- assume H. assume H2.
  exact (SNoLt_irref x (SNoLtLe_tra x y x Hsx Hsy Hsx H H2)).
- assume H.
  apply (SNoLtLe_or x y Hsx Hsy).
  + assume H1. exact H1.
  + assume H1. exact (FalseE (H H1) (x < y)).
Qed.

Theorem bit0_eq_omega : forall n :e omega, 2 * n = n + n.
let n. assume Hn.
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim H1om: 1 :e omega. { exact (nat_p_omega 1 (nat_ordsucc 0 nat_0)). }
claim E1: 2 * n = n + 1 * n.
{ exact (mul_SNo_SL_omega 1 H1om n Hn). }
claim E2: 1 * n = n. { exact (mul_SNo_oneL n Hsn). }
exact (eq_trans_i (2 * n) (n + 1 * n) (n + n) E1 (f_equal (fun hl__u:set => n + hl__u) (1 * n) (n) E2)).
Qed.

Theorem bit1_eq_omega : forall n :e omega, 2 * n + 1 = ordsucc (n + n).
let n. assume Hn.
claim Hnn: n + n :e omega. { exact (add_SNo_In_omega n Hn n Hn). }
claim E0: 2 * n = n + n. { exact (bit0_eq_omega n Hn). }
claim E1: 2 * n + 1 = (n + n) + 1.
{ exact (f_equal (fun hl__u:set => hl__u + 1) (2 * n) (n + n) E0). }
claim E2: (n + n) + 1 = ordsucc (n + n).
{ exact (add_SNo_1_ordsucc (n + n) Hnn). }
exact (eq_trans_i (2 * n + 1) ((n + n) + 1) (ordsucc (n + n)) E1 E2).
Qed.

Theorem seq_ex_nil : forall P:set -> prop, seq_ex P seq_nil <-> False.
let P.
claim L: ~ seq_ex P seq_nil.
{ assume H.
  apply H. let i. assume Hi0. apply Hi0. assume Hi HP.
  claim Hi00: i :e 0. { exact (seq_len_nil (fun hl__u hl__v => i :e hl__u) Hi). }
  exact (EmptyE i Hi00). }
exact (iff_false_intro (seq_ex P seq_nil) L).
Qed.

Theorem seq_ex_cons : forall A:set, forall P:set -> prop, forall a :e A, forall l :e finseq A, seq_ex P (seq_cons a l) <-> P a \/ seq_ex P l.
let A. let P. let a. assume Ha. let l. assume Hl.
claim Hlen: seq_len (seq_cons a l) = ordsucc (seq_len l). { exact (seq_len_cons A a Ha l Hl). }
claim Hlom: seq_len l :e omega. { exact (seq_len_omega A l Hl). }
claim Hlnat: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) Hlom). }
apply iffI.
- assume H.
  apply H. let i. assume Hi0. apply Hi0. assume Hi HP.
  claim Hio: i :e ordsucc (seq_len l).
  { exact (Hlen (fun hl__u hl__v => i :e hl__u) Hi). }
  claim Hinat: nat_p i.
  { exact (nat_p_trans (ordsucc (seq_len l)) (nat_ordsucc (seq_len l) Hlnat) i Hio). }
  apply (nat_inv i Hinat).
  + assume Hi00.
    apply orIL.
    claim HP0: P (seq_nth (seq_cons a l) 0).
    { exact ((Hi00 (fun hl__u hl__v => P (seq_nth (seq_cons a l) hl__u))) HP). }
    exact ((seq_nth_cons_0 A a Ha l Hl) (fun hl__u hl__v => P hl__u) HP0).
  + assume Hex. apply Hex. let j. assume Hj0. apply Hj0. assume Hjn Hij.
    claim Hji: ordsucc j :e ordsucc (seq_len l).
    { exact (Hij (fun hl__u hl__v => hl__u :e ordsucc (seq_len l)) Hio). }
    claim Hjl: j :e seq_len l.
    { apply (ordsuccE (seq_len l) (ordsucc j) Hji).
      assume H1.
      exact (nat_trans (seq_len l) Hlnat (ordsucc j) H1 j (ordsuccI2 j)).
      assume H1.
      exact (H1 (fun hl__u hl__v => j :e hl__u) (ordsuccI2 j)). }
    claim HPs: P (seq_nth (seq_cons a l) (ordsucc j)).
    { exact ((Hij (fun hl__u hl__v => P (seq_nth (seq_cons a l) hl__u))) HP). }
    claim HPj: P (seq_nth l j).
    { exact ((seq_nth_cons_S A a Ha l Hl j Hjl) (fun hl__u hl__v => P hl__u) HPs). }
    apply orIR.
    prove exists hl__i :e seq_len l, P (seq_nth l hl__i).
    witness j.
    apply andI.
    * exact Hjl.
    * exact HPj.
- assume H.
  apply H.
  + assume HPa.
    prove exists hl__i :e seq_len (seq_cons a l), P (seq_nth (seq_cons a l) hl__i).
    witness 0.
    apply andI.
    * exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => 0 :e hl__u) (nat_0_in_ordsucc (seq_len l) Hlnat)).
    * exact ((eq_sym_i (seq_nth (seq_cons a l) 0) a (seq_nth_cons_0 A a Ha l Hl)) (fun hl__u hl__v => P hl__u) HPa).
  + assume Hex.
    apply Hex. let j. assume Hj0. apply Hj0. assume Hjl HPj.
    prove exists hl__i :e seq_len (seq_cons a l), P (seq_nth (seq_cons a l) hl__i).
    witness (ordsucc j).
    apply andI.
    * exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => ordsucc j :e hl__u) (ordinal_ordsucc_In (seq_len l) (nat_p_ordinal (seq_len l) Hlnat) j Hjl)).
    * exact ((eq_sym_i (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (seq_nth_cons_S A a Ha l Hl j Hjl)) (fun hl__u hl__v => P hl__u) HPj).
Qed.

Theorem pair_eta_setprod : forall A B:set, forall x :e A :*: B, (x 0,x 1) = x.
let A. let B. let x. assume Hx.
exact (tuple_Sigma_eta A (fun hl__w:set => B) x Hx).
Qed.

Theorem left_or_exists_thm : forall A:set, A <> Empty -> forall P:set -> prop, forall Q:prop, (exists x :e A, P x) \/ Q <-> exists x :e A, P x \/ Q.
let A.
assume H.
let P.
let Q.
apply iffI.
- assume H30.
  apply H30.
  + assume H55.
    apply H55. let x3. assume H57. apply H57. assume Hx3 H58.
    exact (ex_intro (fun hl__w:set => hl__w :e A /\ (P hl__w \/ Q)) (x3) (andI (x3 :e A) (P x3 \/ Q) Hx3 (orIL (P x3) (Q) H58))).
  + assume H56.
    exact (ex_intro (fun hl__w:set => hl__w :e A /\ (P hl__w \/ Q)) (choose_in A (fun hl__w:set => True)) (andI (choose_in A (fun hl__w:set => True) :e A) (P (choose_in A (fun hl__w:set => True)) \/ Q) (choose_in_in (A) H (fun hl__w:set => True)) (orIR (P (choose_in A (fun hl__w:set => True))) (Q) H56))).
- assume H1.
  apply H1. let x. assume H2. apply H2. assume Hx H3.
  apply H3.
  + assume H28.
    exact (orIL (exists x :e A, P x) (Q) (ex_intro (fun hl__w:set => hl__w :e A /\ P hl__w) (x) (andI (x :e A) (P x) Hx H28))).
  + assume H29.
    exact (orIR (exists x :e A, P x) (Q) H29).
Qed.

Theorem right_or_exists_thm : forall A:set, A <> Empty -> forall P:prop, forall Q:set -> prop, P \/ (exists x :e A, Q x) <-> exists x :e A, P \/ Q x.
let A.
assume H.
let P.
let Q.
apply iffI.
- assume H30.
  apply H30.
  + assume H57.
    exact (ex_intro (fun hl__w:set => hl__w :e A /\ (P \/ Q hl__w)) (choose_in A (fun hl__w:set => True)) (andI (choose_in A (fun hl__w:set => True) :e A) (P \/ Q (choose_in A (fun hl__w:set => True))) (choose_in_in (A) H (fun hl__w:set => True)) (orIL (P) (Q (choose_in A (fun hl__w:set => True))) H57))).
  + assume H58.
    apply H58. let x4. assume H59. apply H59. assume Hx4 H60.
    exact (ex_intro (fun hl__w:set => hl__w :e A /\ (P \/ Q hl__w)) (x4) (andI (x4 :e A) (P \/ Q x4) Hx4 (orIR (P) (Q x4) H60))).
- assume H1.
  apply H1. let x. assume H2. apply H2. assume Hx H3.
  apply H3.
  + assume H28.
    exact (orIL (P) (exists x :e A, Q x) H28).
  + assume H29.
    exact (orIR (P) (exists x :e A, Q x) (ex_intro (fun hl__w:set => hl__w :e A /\ Q hl__w) (x) (andI (x :e A) (Q x) Hx H29))).
Qed.

Theorem not_SNoLe_iff_omega : forall m n :e omega, ~ m <= n <-> n < m.
let m. assume Hm. let n. assume Hn.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
apply iffI.
- assume H.
  apply (SNoLtLe_or n m Hsn Hsm).
  + assume H1. exact H1.
  + assume H1. exact (FalseE (H H1) (n < m)).
- assume H. assume H2.
  exact (SNoLt_irref n (SNoLtLe_tra n m n Hsn Hsm Hsn H H2)).
Qed.

Theorem cond_elim_thm : forall A:set, forall P:set -> prop, forall c:prop, forall x y :e A, P (if c then x else y) <-> (c -> P x) /\ (~ c -> P y).
let A. let P. let c. let x. assume Hx. let y. assume Hy.
apply iffI.
- assume H.
  apply andI.
  + assume Hc.
    exact ((If_i_1 c x y Hc) (fun hl__u hl__v => P hl__u) H).
  + assume Hnc.
    exact ((If_i_0 c x y Hnc) (fun hl__u hl__v => P hl__u) H).
- assume H.
  apply (xm c).
  + assume Hc.
    exact ((eq_sym_i (if c then x else y) x (If_i_1 c x y Hc)) (fun hl__u hl__v => P hl__u) (andEL (c -> P x) (~ c -> P y) H Hc)).
  + assume Hnc.
    exact ((eq_sym_i (if c then x else y) y (If_i_0 c x y Hnc)) (fun hl__u hl__v => P hl__u) (andER (c -> P x) (~ c -> P y) H Hnc)).
Qed.

Theorem SNoLe_add_omega : forall m n :e omega, m <= m + n.
let m. assume Hm. let n. assume Hn.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim E: m + 0 = m. { exact (add_SNo_0R m Hsm). }
claim L: m + 0 <= m + n. { exact (add_SNo_Le2 m 0 n Hsm SNo_0 Hsn (omega_nonneg n Hn)). }
exact (E (fun hl__u hl__v => hl__u <= m + n) L).
Qed.

Theorem not_cons_nil : forall A:set, forall h :e A, forall t :e finseq A, ~ seq_cons h t = seq_nil.
let A. let h. assume Hh. let t. assume Ht. assume H.
claim E: seq_len (seq_cons h t) = seq_len seq_nil.
{ exact (f_equal (fun hl__u:set => seq_len hl__u) (seq_cons h t) (seq_nil) H). }
claim E2: ordsucc (seq_len t) = 0.
{ exact (eq_trans_i (ordsucc (seq_len t)) (seq_len (seq_cons h t)) (0) (eq_sym_i (seq_len (seq_cons h t)) (ordsucc (seq_len t)) (seq_len_cons A h Hh t Ht)) (eq_trans_i (seq_len (seq_cons h t)) (seq_len seq_nil) (0) E (seq_len_nil))). }
exact (neq_ordsucc_0 (seq_len t) E2).
Qed.

Theorem forall_pair_thm : forall A B:set, forall P:set -> prop, (forall p :e A :*: B, P p) <-> forall p1 :e A, forall p2 :e B, P (p1,p2).
let A. let B. let P.
apply iffI.
- assume H. let p1. assume Hp1. let p2. assume Hp2.
  exact (H (p1,p2) (tuple_2_Sigma A (fun hl__w:set => B) p1 Hp1 p2 Hp2)).
- assume H. let p. assume Hp.
  claim E: (p 0,p 1) = p.
  { exact (tuple_Sigma_eta A (fun hl__w:set => B) p Hp). }
  claim HP: P (p 0,p 1).
  { exact (H (p 0) (ap0_Sigma A (fun hl__w:set => B) p Hp) (p 1) (ap1_Sigma A (fun hl__w:set => B) p Hp)). }
  exact (E (fun hl__u hl__v => P hl__u) HP).
Qed.

Theorem exists_pair_thm : forall A B:set, forall P:set -> prop, (exists p :e A :*: B, P p) <-> exists p1 :e A, exists p2 :e B, P (p1,p2).
let A. let B. let P.
apply iffI.
- assume H.
  apply H. let p. assume Hp0. apply Hp0. assume Hp HP.
  witness (p 0).
  apply andI.
  + exact (ap0_Sigma A (fun hl__w:set => B) p Hp).
  + witness (p 1).
    apply andI.
    * exact (ap1_Sigma A (fun hl__w:set => B) p Hp).
    * claim E: (p 0,p 1) = p.
      { exact (tuple_Sigma_eta A (fun hl__w:set => B) p Hp). }
      exact ((eq_sym_i (p 0,p 1) p E) (fun hl__u hl__v => P hl__u) HP).
- assume H.
  apply H. let p1. assume Hp10. apply Hp10. assume Hp1 H1.
  apply H1. let p2. assume Hp20. apply Hp20. assume Hp2 HP.
  witness (p1,p2).
  apply andI.
  + exact (tuple_2_Sigma A (fun hl__w:set => B) p1 Hp1 p2 Hp2).
  + exact HP.
Qed.

Theorem right_imp_exists_thm : forall A:set, A <> Empty -> forall P:prop, forall Q:set -> prop, P -> (exists x :e A, Q x) <-> exists x :e A, P -> Q x.
let A. assume HA. let P. let Q.
apply iffI.
- assume H.
  apply (xm P).
  + assume HP.
    apply (H HP). let x. assume Hx0. apply Hx0. assume Hx HQ.
    witness x. apply andI.
    * exact Hx.
    * assume HP2. exact HQ.
  + assume HnP.
    witness (choose_in A (fun hl__w:set => True)).
    apply andI.
    * exact (choose_in_in A HA (fun hl__w:set => True)).
    * assume HP2. exact (FalseE (HnP HP2) (Q (choose_in A (fun hl__w:set => True)))).
- assume H. assume HP.
  apply H. let x. assume Hx0. apply Hx0. assume Hx HPQ.
  witness x. apply andI.
  + exact Hx.
  + exact (HPQ HP).
Qed.

Theorem sub_0_thm : forall m :e omega, minus_nat 0 m = 0 /\ minus_nat m 0 = m.
let m. assume Hm.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
apply andI.
- prove (if m <= 0 then 0 + - m else 0) = 0.
  apply (xm (m <= 0)).
  + assume H1.
    claim Hm0: m = 0. { exact (iffEL (m <= 0) (m = 0) (SNoLe_0_iff_omega m Hm) H1). }
    claim E1: (if m <= 0 then 0 + - m else 0) = 0 + - m. { exact (If_i_1 (m <= 0) (0 + - m) 0 H1). }
    claim E2: 0 + - m = 0.
    { claim E3: - m = 0.
      { exact (eq_trans_i (- m) (- 0) 0 (f_equal (fun hl__u:set => - hl__u) m 0 Hm0) minus_SNo_0). }
      exact (eq_trans_i (0 + - m) (0 + 0) 0 (f_equal (fun hl__u:set => 0 + hl__u) (- m) 0 E3) (add_SNo_0L 0 SNo_0)). }
    exact (eq_trans_i (if m <= 0 then 0 + - m else 0) (0 + - m) 0 E1 E2).
  + assume H1.
    exact (If_i_0 (m <= 0) (0 + - m) 0 H1).
- prove (if 0 <= m then m + - 0 else 0) = m.
  claim E1: (if 0 <= m then m + - 0 else 0) = m + - 0. { exact (If_i_1 (0 <= m) (m + - 0) 0 (omega_nonneg m Hm)). }
  claim E2: m + - 0 = m.
  { exact (eq_trans_i (m + - 0) (m + 0) m (f_equal (fun hl__u:set => m + hl__u) (- 0) 0 minus_SNo_0) (add_SNo_0R m Hsm)). }
  exact (eq_trans_i (if 0 <= m then m + - 0 else 0) (m + - 0) m E1 E2).
Qed.

Theorem in_cross_thm : forall A B:set, forall x :e A, forall y :e B, forall s c= A, forall t c= B, (x,y) :e s :*: t <-> x :e s /\ y :e t.
let A. let B. let x. assume Hx. let y. assume Hy. let s. assume Hs. let t. assume Ht.
apply iffI.
- assume H.
  apply andI.
  + claim H0: ((x,y) 0) :e s. { exact (ap0_Sigma s (fun hl__w:set => t) (x,y) H). }
    exact ((tuple_2_0_eq x y) (fun hl__u hl__v => hl__u :e s) H0).
  + claim H1: ((x,y) 1) :e t. { exact (ap1_Sigma s (fun hl__w:set => t) (x,y) H). }
    exact ((tuple_2_1_eq x y) (fun hl__u hl__v => hl__u :e t) H1).
- assume H.
  exact (tuple_2_Sigma s (fun hl__w:set => t) x (andEL (x :e s) (y :e t) H) y (andER (x :e s) (y :e t) H)).
Qed.

Theorem sub_suc_thm : forall m n :e omega, minus_nat (ordsucc m) (ordsucc n) = minus_nat m n.
let m. assume Hm. let n. assume Hn.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hsmn: SNo (- ordsucc n). { exact (SNo_minus_SNo (ordsucc n) (omega_SNo (ordsucc n) (omega_ordsucc n Hn))). }
claim Hmono1: n <= m -> ordsucc n <= ordsucc m.
{ assume H.
  claim L1: n + 1 <= m + 1. { exact (add_SNo_Le1 n 1 m Hsn SNo_1 Hsm H). }
  exact ((add_SNo_1_ordsucc n Hn) (fun hl__u hl__v => hl__u <= ordsucc m) ((add_SNo_1_ordsucc m Hm) (fun hl__u hl__v => n + 1 <= hl__u) L1)). }
claim Hmono2: ordsucc n <= ordsucc m -> n <= m.
{ assume H.
  claim L1: n + 1 <= m + 1.
  { exact ((eq_sym_i (n + 1) (ordsucc n) (add_SNo_1_ordsucc n Hn)) (fun hl__u hl__v => hl__u <= m + 1) ((eq_sym_i (m + 1) (ordsucc m) (add_SNo_1_ordsucc m Hm)) (fun hl__u hl__v => ordsucc n <= hl__u) H)). }
  exact (add_SNo_Le1_cancel n 1 m Hsn SNo_1 Hsm L1). }
claim Heq: ordsucc m + - ordsucc n = m + - n.
{ claim E1: ordsucc m + - ordsucc n = (m + 1) + - ordsucc n.
  { exact ((eq_sym_i (m + 1) (ordsucc m) (add_SNo_1_ordsucc m Hm)) (fun hl__u hl__v => ordsucc m + - ordsucc n = hl__u + - ordsucc n) (fun q H => H)). }
  claim E2: (m + 1) + - ordsucc n = m + (1 + - ordsucc n).
  { exact (eq_sym_i (m + (1 + - ordsucc n)) ((m + 1) + - ordsucc n) (add_SNo_assoc m 1 (- ordsucc n) Hsm SNo_1 Hsmn)). }
  claim E5: 1 + - ordsucc n = - n.
  { exact (eq_trans_i (1 + - ordsucc n) (- ordsucc n + 1) (- n) (add_SNo_com 1 (- ordsucc n) SNo_1 Hsmn) (god1_negative_successor_add_one n Hn)). }
  claim E6: m + (1 + - ordsucc n) = m + - n.
  { exact (f_equal (fun hl__u:set => m + hl__u) (1 + - ordsucc n) (- n) E5). }
  exact (eq_trans_i (ordsucc m + - ordsucc n) (m + (1 + - ordsucc n)) (m + - n) (eq_trans_i (ordsucc m + - ordsucc n) ((m + 1) + - ordsucc n) (m + (1 + - ordsucc n)) E1 E2) E6). }
prove (if ordsucc n <= ordsucc m then ordsucc m + - ordsucc n else 0) = if n <= m then m + - n else 0.
apply (xm (n <= m)).
- assume H1.
  claim F1: (if ordsucc n <= ordsucc m then ordsucc m + - ordsucc n else 0) = ordsucc m + - ordsucc n.
  { exact (If_i_1 (ordsucc n <= ordsucc m) (ordsucc m + - ordsucc n) 0 (Hmono1 H1)). }
  claim F2: (if n <= m then m + - n else 0) = m + - n.
  { exact (If_i_1 (n <= m) (m + - n) 0 H1). }
  exact (eq_trans_i (if ordsucc n <= ordsucc m then ordsucc m + - ordsucc n else 0) (m + - n) (if n <= m then m + - n else 0) (eq_trans_i (if ordsucc n <= ordsucc m then ordsucc m + - ordsucc n else 0) (ordsucc m + - ordsucc n) (m + - n) F1 Heq) (eq_sym_i (if n <= m then m + - n else 0) (m + - n) F2)).
- assume H1.
  claim F1: (if ordsucc n <= ordsucc m then ordsucc m + - ordsucc n else 0) = 0.
  { exact (If_i_0 (ordsucc n <= ordsucc m) (ordsucc m + - ordsucc n) 0 (fun hl__H : ordsucc n <= ordsucc m => H1 (Hmono2 hl__H))). }
  claim F2: (if n <= m then m + - n else 0) = 0.
  { exact (If_i_0 (n <= m) (m + - n) 0 H1). }
  exact (eq_trans_i (if ordsucc n <= ordsucc m then ordsucc m + - ordsucc n else 0) 0 (if n <= m then m + - n else 0) F1 (eq_sym_i (if n <= m then m + - n else 0) 0 F2)).
Qed.

Theorem filter_thm : forall A:set, forall P:set -> prop, forall h :e A, forall t :e finseq A, seq_filter P seq_nil = seq_nil /\ seq_filter P (seq_cons h t) = if P h then seq_cons h (seq_filter P t) else seq_filter P t.
let A. let P. let h. assume Hh. let t. assume Ht.
apply andI.
- exact (seq_foldr_nil (fun hl__x:set => fun hl__a:set => if P hl__x then seq_cons hl__x hl__a else hl__a) seq_nil).
- exact (seq_foldr_cons A (fun hl__x:set => fun hl__a:set => if P hl__x then seq_cons hl__x hl__a else hl__a) h Hh t Ht seq_nil).
Qed.

Theorem even_zero : even_nat 0.
prove exists k :e omega, 0 = k + k.
witness 0.
apply andI.
- exact (nat_p_omega 0 nat_0).
- exact (eq_sym_i (0 + 0) 0 (add_SNo_0L 0 SNo_0)).
Qed.

Theorem even_succ_odd : forall n :e omega, even_nat n -> odd_nat (ordsucc n).
let n. assume Hn. assume H.
apply H. let k. assume Hk0. apply Hk0. assume Hk HE.
prove exists j :e omega, ordsucc n = (j + j) + 1.
witness k.
apply andI.
- exact Hk.
- claim E1: ordsucc n = n + 1.
  { exact (eq_sym_i (n + 1) (ordsucc n) (add_SNo_1_ordsucc n Hn)). }
  claim E2: n + 1 = (k + k) + 1.
  { exact (f_equal (fun hl__u:set => hl__u + 1) n (k + k) HE). }
  exact (eq_trans_i (ordsucc n) (n + 1) ((k + k) + 1) E1 E2).
Qed.

Theorem odd_succ_even : forall n :e omega, odd_nat n -> even_nat (ordsucc n).
let n. assume Hn. assume H.
apply H. let k. assume Hk0. apply Hk0. assume Hk HO.
claim Hsk: SNo k. { exact (omega_SNo k Hk). }
claim Hsk1: SNo (k + 1). { exact (SNo_add_SNo k 1 Hsk SNo_1). }
prove exists j :e omega, ordsucc n = j + j.
witness (ordsucc k).
apply andI.
- exact (omega_ordsucc k Hk).
- claim E1: ordsucc n = n + 1.
  { exact (eq_sym_i (n + 1) (ordsucc n) (add_SNo_1_ordsucc n Hn)). }
  claim E2: n + 1 = ((k + k) + 1) + 1.
  { exact (f_equal (fun hl__u:set => hl__u + 1) n ((k + k) + 1) HO). }
  claim E3: ((k + k) + 1) + 1 = ((k + 1) + k) + 1.
  { exact (f_equal (fun hl__u:set => hl__u + 1) ((k + k) + 1) ((k + 1) + k) (eq_sym_i ((k + 1) + k) ((k + k) + 1) (add_SNo_com_3b_1_2 k 1 k Hsk SNo_1 Hsk))). }
  claim E4: ((k + 1) + k) + 1 = (k + 1) + (k + 1).
  { exact (eq_sym_i ((k + 1) + (k + 1)) (((k + 1) + k) + 1) (add_SNo_assoc (k + 1) k 1 Hsk1 Hsk SNo_1)). }
  claim E5: (k + 1) + (k + 1) = ordsucc k + ordsucc k.
  { exact ((add_SNo_1_ordsucc k Hk) (fun hl__u hl__v => (k + 1) + (k + 1) = hl__u + hl__u) (fun q H => H)). }
  exact (eq_trans_i (ordsucc n) (n + 1) (ordsucc k + ordsucc k) E1 (eq_trans_i (n + 1) (((k + k) + 1) + 1) (ordsucc k + ordsucc k) E2 (eq_trans_i (((k + k) + 1) + 1) (((k + 1) + k) + 1) (ordsucc k + ordsucc k) E3 (eq_trans_i (((k + 1) + k) + 1) ((k + 1) + (k + 1)) (ordsucc k + ordsucc k) E4 E5)))).
Qed.

Theorem even_or_odd : forall n :e omega, even_nat n \/ odd_nat n.
let n. assume Hn.
claim Hbase: even_nat 0 \/ odd_nat 0.
{ exact (orIL (even_nat 0) (odd_nat 0) even_zero). }
claim Hstep: forall hl__k, nat_p hl__k -> (even_nat hl__k \/ odd_nat hl__k) -> even_nat (ordsucc hl__k) \/ odd_nat (ordsucc hl__k).
{ let hl__k. assume Hk. assume IH.
  apply IH.
  assume H1. exact (orIR (even_nat (ordsucc hl__k)) (odd_nat (ordsucc hl__k)) (even_succ_odd hl__k (nat_p_omega hl__k Hk) H1)).
  assume H1. exact (orIL (even_nat (ordsucc hl__k)) (odd_nat (ordsucc hl__k)) (odd_succ_even hl__k (nat_p_omega hl__k Hk) H1)). }
exact (nat_ind (fun hl__w:set => even_nat hl__w \/ odd_nat hl__w) Hbase Hstep n (omega_nat_p n Hn)).
Qed.

Theorem not_even_and_odd : forall n :e omega, even_nat n -> odd_nat n -> False.
let n0. assume Hn0.
claim Hstep: forall hl__n, nat_p hl__n -> (forall hl__m :e hl__n, even_nat hl__m -> odd_nat hl__m -> False) -> even_nat hl__n -> odd_nat hl__n -> False.
{ let hl__n. assume Hnp. assume IH. assume HE. assume HO.
  apply HE. let k. assume Hk0. apply Hk0. assume Hk HEk.
  apply HO. let j. assume Hj0. apply Hj0. assume Hj HOj.
  claim Hsk: SNo k. { exact (omega_SNo k Hk). }
  claim Hjj: j + j :e omega. { exact (add_SNo_In_omega j Hj j Hj). }
  claim Hkj: k + k = (j + j) + 1.
  { exact (eq_trans_i (k + k) hl__n ((j + j) + 1) (eq_sym_i hl__n (k + k) HEk) HOj). }
  apply (nat_inv k (omega_nat_p k Hk)).
  assume Hk00.
  claim Z0: 0 + 0 = (j + j) + 1. { exact (Hk00 (fun hl__u hl__v => hl__u + hl__u = (j + j) + 1) Hkj). }
  claim Z1: 0 = (j + j) + 1.
  { exact (eq_trans_i 0 (0 + 0) ((j + j) + 1) (eq_sym_i (0 + 0) 0 (add_SNo_0L 0 SNo_0)) Z0). }
  claim Z2: ordsucc (j + j) = 0.
  { exact (eq_trans_i (ordsucc (j + j)) ((j + j) + 1) 0 (eq_sym_i ((j + j) + 1) (ordsucc (j + j)) (add_SNo_1_ordsucc (j + j) Hjj)) (eq_sym_i 0 ((j + j) + 1) Z1)). }
  exact (neq_ordsucc_0 (j + j) Z2).
  assume Hex. apply Hex. let k1. assume Hk10. apply Hk10. assume Hk1n Hkk1.
  claim Hk1o: k1 :e omega. { exact (nat_p_omega k1 Hk1n). }
  claim Hsk1: SNo k1. { exact (omega_SNo k1 Hk1o). }
  claim Hs1k1: SNo (k1 + 1). { exact (SNo_add_SNo k1 1 Hsk1 SNo_1). }
  claim C1: k + k = ((k1 + k1) + 1) + 1.
  { claim D1: k + k = (k1 + 1) + (k1 + 1).
    { exact ((eq_sym_i (k1 + 1) (ordsucc k1) (add_SNo_1_ordsucc k1 Hk1o)) (fun hl__u hl__v => k + k = hl__u + hl__u) (Hkk1 (fun hl__u hl__v => k + k = hl__u + hl__u) (fun q H => H))). }
    claim D2: (k1 + 1) + (k1 + 1) = ((k1 + 1) + k1) + 1.
    { exact (add_SNo_assoc (k1 + 1) k1 1 Hs1k1 Hsk1 SNo_1). }
    claim D3: ((k1 + 1) + k1) + 1 = ((k1 + k1) + 1) + 1.
    { exact (f_equal (fun hl__u:set => hl__u + 1) ((k1 + 1) + k1) ((k1 + k1) + 1) (add_SNo_com_3b_1_2 k1 1 k1 Hsk1 SNo_1 Hsk1)). }
    exact (eq_trans_i (k + k) ((k1 + 1) + (k1 + 1)) (((k1 + k1) + 1) + 1) D1 (eq_trans_i ((k1 + 1) + (k1 + 1)) (((k1 + 1) + k1) + 1) (((k1 + k1) + 1) + 1) D2 D3)). }
  claim Hk1k1: k1 + k1 :e omega. { exact (add_SNo_In_omega k1 Hk1o k1 Hk1o). }
  claim Hok1: (k1 + k1) + 1 :e omega.
  { exact ((eq_sym_i ((k1 + k1) + 1) (ordsucc (k1 + k1)) (add_SNo_1_ordsucc (k1 + k1) Hk1k1)) (fun hl__u hl__v => hl__u :e omega) (omega_ordsucc (k1 + k1) Hk1k1)). }
  claim R2b: ordsucc (j + j) = hl__n.
  { exact (eq_trans_i (ordsucc (j + j)) ((j + j) + 1) hl__n (eq_sym_i ((j + j) + 1) (ordsucc (j + j)) (add_SNo_1_ordsucc (j + j) Hjj)) (eq_sym_i hl__n ((j + j) + 1) HOj)). }
  claim C2: ordsucc ((k1 + k1) + 1) = ordsucc (j + j).
  { claim R1: ordsucc ((k1 + k1) + 1) = hl__n.
    { exact (eq_trans_i (ordsucc ((k1 + k1) + 1)) (((k1 + k1) + 1) + 1) hl__n (eq_sym_i (((k1 + k1) + 1) + 1) (ordsucc ((k1 + k1) + 1)) (add_SNo_1_ordsucc ((k1 + k1) + 1) Hok1)) (eq_trans_i (((k1 + k1) + 1) + 1) (k + k) hl__n (eq_sym_i (k + k) (((k1 + k1) + 1) + 1) C1) (eq_sym_i hl__n (k + k) HEk))). }
    exact (eq_trans_i (ordsucc ((k1 + k1) + 1)) hl__n (ordsucc (j + j)) R1 (eq_sym_i (ordsucc (j + j)) hl__n R2b)). }
  claim C3: (k1 + k1) + 1 = j + j.
  { exact (ordsucc_inj ((k1 + k1) + 1) (j + j) C2). }
  claim HjE: even_nat (j + j).
  { prove exists hl__i :e omega, j + j = hl__i + hl__i.
    witness j. apply andI.
    exact Hj.
    exact (fun q H => H). }
  claim HjO: odd_nat (j + j).
  { prove exists hl__i :e omega, j + j = (hl__i + hl__i) + 1.
    witness k1. apply andI.
    exact Hk1o.
    exact (eq_sym_i ((k1 + k1) + 1) (j + j) C3). }
  claim Hmem: j + j :e hl__n.
  { exact (R2b (fun hl__u hl__v => j + j :e hl__u) (ordsuccI2 (j + j))). }
  exact (IH (j + j) Hmem HjE HjO). }
exact (nat_complete_ind (fun hl__w:set => even_nat hl__w -> odd_nat hl__w -> False) Hstep n0 (omega_nat_p n0 Hn0)).
Qed.

Theorem even_thm : (even_nat 0 <-> True) /\ forall n :e omega, even_nat (ordsucc n) <-> ~ even_nat n.
apply andI.
- exact (iff_true_intro (even_nat 0) even_zero).
- let n. assume Hn.
  apply iffI.
  + assume H. assume H2.
    exact (not_even_and_odd (ordsucc n) (omega_ordsucc n Hn) H (even_succ_odd n Hn H2)).
  + assume H.
    apply (even_or_odd n Hn).
    assume H1. exact (FalseE (H H1) (even_nat (ordsucc n))).
    assume H1. exact (odd_succ_even n Hn H1).
Qed.

Theorem not_even_thm : forall n :e omega, ~ even_nat n <-> odd_nat n.
let n. assume Hn.
apply iffI.
- assume H.
  apply (even_or_odd n Hn).
  assume H1. exact (FalseE (H H1) (odd_nat n)).
  assume H1. exact H1.
- assume H. assume H2.
  exact (not_even_and_odd n Hn H2 H).
Qed.

Theorem minus_nat_In_omega : forall m :e omega, forall n :e omega, minus_nat n m :e omega.
let m0. assume Hm0.
claim Hbase: forall n :e omega, minus_nat n 0 :e omega.
{ let n. assume Hn.
  claim E: minus_nat n 0 = n.
  { exact (andER (minus_nat 0 n = 0) (minus_nat n 0 = n) (sub_0_thm n Hn)). }
  exact ((eq_sym_i (minus_nat n 0) n E) (fun hl__u hl__v => hl__u :e omega) Hn). }
claim Hstep: forall hl__k, nat_p hl__k -> (forall n :e omega, minus_nat n hl__k :e omega) -> forall n :e omega, minus_nat n (ordsucc hl__k) :e omega.
{ let hl__k. assume Hk. assume IH. let n. assume Hn.
  apply (nat_inv n (omega_nat_p n Hn)).
  assume Hn0.
  claim E: minus_nat 0 (ordsucc hl__k) = 0.
  { exact (andEL (minus_nat 0 (ordsucc hl__k) = 0) (minus_nat (ordsucc hl__k) 0 = ordsucc hl__k) (sub_0_thm (ordsucc hl__k) (omega_ordsucc hl__k (nat_p_omega hl__k Hk)))). }
  claim E2: minus_nat n (ordsucc hl__k) = 0.
  { exact ((eq_sym_i n 0 Hn0) (fun hl__u hl__v => minus_nat hl__u (ordsucc hl__k) = 0) E). }
  exact ((eq_sym_i (minus_nat n (ordsucc hl__k)) 0 E2) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0)).
  assume Hex. apply Hex. let n1. assume Hn10. apply Hn10. assume Hn1p Hnn1.
  claim E: minus_nat (ordsucc n1) (ordsucc hl__k) = minus_nat n1 hl__k.
  { exact (sub_suc_thm n1 (nat_p_omega n1 Hn1p) hl__k (nat_p_omega hl__k Hk)). }
  claim M: minus_nat n1 hl__k :e omega.
  { exact (IH n1 (nat_p_omega n1 Hn1p)). }
  claim E2: minus_nat n (ordsucc hl__k) = minus_nat n1 hl__k.
  { exact ((eq_sym_i n (ordsucc n1) Hnn1) (fun hl__u hl__v => minus_nat hl__u (ordsucc hl__k) = minus_nat n1 hl__k) E). }
  exact ((eq_sym_i (minus_nat n (ordsucc hl__k)) (minus_nat n1 hl__k) E2) (fun hl__u hl__v => hl__u :e omega) M). }
exact (nat_ind (fun hl__w:set => forall n :e omega, minus_nat n hl__w :e omega) Hbase Hstep m0 (omega_nat_p m0 Hm0)).
Qed.

Theorem add_minus_nat_le : forall m n :e omega, m <= n -> m + minus_nat n m = n.
let m. assume Hm. let n. assume Hn. assume H.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hsmm: SNo (- m). { exact (SNo_minus_SNo m Hsm). }
claim E1: minus_nat n m = n + - m.
{ prove (if m <= n then n + - m else 0) = n + - m.
  exact (If_i_1 (m <= n) (n + - m) 0 H). }
claim E2: m + minus_nat n m = m + (n + - m).
{ exact (f_equal (fun hl__u:set => m + hl__u) (minus_nat n m) (n + - m) E1). }
claim E3: m + (n + - m) = n + (m + - m).
{ exact (add_SNo_com_3_0_1 m n (- m) Hsm Hsn Hsmm). }
claim E4: n + (m + - m) = n.
{ exact (eq_trans_i (n + (m + - m)) (n + 0) n (f_equal (fun hl__u:set => n + hl__u) (m + - m) 0 (add_SNo_minus_SNo_rinv m Hsm)) (add_SNo_0R n Hsn)). }
exact (eq_trans_i (m + minus_nat n m) (m + (n + - m)) n E2 (eq_trans_i (m + (n + - m)) (n + (m + - m)) n E3 E4)).
Qed.

Theorem le_exists_thm : forall m n :e omega, m <= n <-> exists d :e omega, n = m + d.
let m. assume Hm. let n. assume Hn.
apply iffI.
- assume H.
  witness (minus_nat n m).
  apply andI.
  + exact (minus_nat_In_omega m Hm n Hn).
  + exact (eq_sym_i (m + minus_nat n m) n (add_minus_nat_le m Hm n Hn H)).
- assume H.
  apply H. let d. assume Hd0. apply Hd0. assume Hd HE.
  claim L: m <= m + d. { exact (SNoLe_add_omega m Hm d Hd). }
  exact ((eq_sym_i n (m + d) HE) (fun hl__u hl__v => m <= hl__u) L).
Qed.

Theorem real_le_lneg : forall x y :e R, - x <= y <-> 0 <= x + y.
let x. assume Hx. let y. assume Hy.
claim Hsx: SNo x. { exact (real_SNo x Hx). }
claim Hsy: SNo y. { exact (real_SNo y Hy). }
claim Hsmx: SNo (- x). { exact (SNo_minus_SNo x Hsx). }
apply iffI.
- assume H.
  claim L1: - x + x <= y + x. { exact (add_SNo_Le1 (- x) x y Hsmx Hsx Hsy H). }
  claim L2: 0 <= y + x.
  { exact ((add_SNo_minus_SNo_linv x Hsx) (fun hl__u hl__v => hl__u <= y + x) L1). }
  exact ((add_SNo_com y x Hsy Hsx) (fun hl__u hl__v => 0 <= hl__u) L2).
- assume H.
  claim L1: - x + 0 <= - x + (x + y). { exact (add_SNo_Le2 (- x) 0 (x + y) Hsmx SNo_0 (SNo_add_SNo x y Hsx Hsy) H). }
  claim L2: - x <= - x + (x + y).
  { exact ((add_SNo_0R (- x) Hsmx) (fun hl__u hl__v => hl__u <= - x + (x + y)) L1). }
  claim E1: - x + (x + y) = (- x + x) + y. { exact (add_SNo_assoc (- x) x y Hsmx Hsx Hsy). }
  claim E2: (- x + x) + y = 0 + y.
  { exact (f_equal (fun hl__u:set => hl__u + y) (- x + x) 0 (add_SNo_minus_SNo_linv x Hsx)). }
  claim E3: 0 + y = y. { exact (add_SNo_0L y Hsy). }
  claim E: - x + (x + y) = y.
  { exact (eq_trans_i (- x + (x + y)) ((- x + x) + y) y E1 (eq_trans_i ((- x + x) + y) (0 + y) y E2 E3)). }
  exact (E (fun hl__u hl__v => - x <= hl__u) L2).
Qed.

Theorem mod_zero_thm : forall n :e omega, mod_nat n 0 = n.
let n. assume Hn.
prove (if 0 = 0 then n else n + - div_nat n 0 * 0) = n.
exact (If_i_1 (0 = 0) n (n + - div_nat n 0 * 0) (fun q H => H)).
Qed.

Theorem div_zero_thm : forall n :e omega, div_nat n 0 = 0.
let n. assume Hn.
prove (if 0 = 0 then 0 else Eps_i (fun q => q :e omega /\ exists r :e omega, r < 0 /\ n = q * 0 + r)) = 0.
exact (If_i_1 (0 = 0) 0 (Eps_i (fun q => q :e omega /\ exists r :e omega, r < 0 /\ n = q * 0 + r)) (fun q H => H)).
Qed.

Theorem division_0_thm : forall m n :e omega, (n = 0 -> div_nat m n = 0 /\ mod_nat m n = m) /\ (~ n = 0 -> m = div_nat m n * n + mod_nat m n /\ mod_nat m n < n).
let m. assume Hm. let n. assume Hn.
apply andI.
- assume H0.
  apply andI.
  + exact ((eq_sym_i n 0 H0) (fun hl__u hl__v => div_nat m hl__u = 0) (div_zero_thm m Hm)).
  + exact ((eq_sym_i n 0 H0) (fun hl__u hl__v => mod_nat m hl__u = m) (mod_zero_thm m Hm)).
- assume H0.
  exact (div_mod_nat m Hm n Hn H0).
Qed.

Theorem division_simp_thm : (forall m n :e omega, div_nat m n * n + mod_nat m n = m) /\ forall m n :e omega, n * div_nat m n + mod_nat m n = m.
claim L1: forall m n :e omega, div_nat m n * n + mod_nat m n = m.
{ let m. assume Hm. let n. assume Hn.
  apply (xm (n = 0)).
  assume H0.
  claim Ed: div_nat m n = 0. { exact ((eq_sym_i n 0 H0) (fun hl__u hl__v => div_nat m hl__u = 0) (div_zero_thm m Hm)). }
  claim Em: mod_nat m n = m. { exact ((eq_sym_i n 0 H0) (fun hl__u hl__v => mod_nat m hl__u = m) (mod_zero_thm m Hm)). }
  claim E1: div_nat m n * n + mod_nat m n = 0 * n + m.
  { exact (f_equal2 (fun hl__u:set => fun hl__v:set => hl__u * n + hl__v) (div_nat m n) 0 (mod_nat m n) m Ed Em). }
  claim E2: 0 * n + m = m.
  { exact (eq_trans_i (0 * n + m) (0 + m) m (f_equal (fun hl__u:set => hl__u + m) (0 * n) 0 (mul_SNo_zeroL n (omega_SNo n Hn))) (add_SNo_0L m (omega_SNo m Hm))). }
  exact (eq_trans_i (div_nat m n * n + mod_nat m n) (0 * n + m) m E1 E2).
  assume H0.
  exact (eq_sym_i m (div_nat m n * n + mod_nat m n) (andEL (m = div_nat m n * n + mod_nat m n) (mod_nat m n < n) (div_mod_nat m Hm n Hn H0))). }
claim L2: forall m n :e omega, n * div_nat m n + mod_nat m n = m.
{ let m. assume Hm. let n. assume Hn.
  claim E: n * div_nat m n = div_nat m n * n.
  { exact (mul_SNo_com n (div_nat m n) (omega_SNo n Hn) (omega_SNo (div_nat m n) (div_nat_omega m Hm n Hn))). }
  claim E2: n * div_nat m n + mod_nat m n = div_nat m n * n + mod_nat m n.
  { exact (f_equal (fun hl__u:set => hl__u + mod_nat m n) (n * div_nat m n) (div_nat m n * n) E). }
  exact (eq_trans_i (n * div_nat m n + mod_nat m n) (div_nat m n * n + mod_nat m n) m E2 (L1 m Hm n Hn)). }
exact (andI (forall m n :e omega, div_nat m n * n + mod_nat m n = m) (forall m n :e omega, n * div_nat m n + mod_nat m n = m) L1 L2).
Qed.

Theorem lt_nz_thm : forall n :e omega, 0 < n <-> ~ n = 0.
let n. assume Hn.
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
apply iffI.
- assume H. assume H0.
  exact (SNoLt_irref 0 (H0 (fun hl__u hl__v => 0 < hl__u) H)).
- assume H.
  apply (SNoLeE 0 n SNo_0 Hsn (omega_nonneg n Hn)).
  assume H1. exact H1.
  assume H1. exact (FalseE (H (eq_sym_i 0 n H1)) (0 < n)).
Qed.

Theorem eq_mult_lcancel_thm : forall m n p :e omega, m * n = m * p <-> m = 0 \/ n = p.
let m. assume Hm. let n. assume Hn. let p. assume Hp.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hsp: SNo p. { exact (omega_SNo p Hp). }
apply iffI.
- assume H.
  apply (xm (m = 0)).
  assume H0. exact (orIL (m = 0) (n = p) H0).
  assume H0. exact (orIR (m = 0) (n = p) (mul_SNo_nonzero_cancel m n p Hsm H0 Hsn Hsp H)).
- assume H.
  apply H.
  assume H0.
  claim E1: m * n = 0.
  { exact (eq_trans_i (m * n) (0 * n) 0 (f_equal (fun hl__u:set => hl__u * n) m 0 H0) (mul_SNo_zeroL n Hsn)). }
  claim E2: m * p = 0.
  { exact (eq_trans_i (m * p) (0 * p) 0 (f_equal (fun hl__u:set => hl__u * p) m 0 H0) (mul_SNo_zeroL p Hsp)). }
  exact (eq_trans_i (m * n) 0 (m * p) E1 (eq_sym_i (m * p) 0 E2)).
  assume H0.
  exact (f_equal (fun hl__u:set => m * hl__u) n p H0).
Qed.

Theorem quotrem_le_aux : forall n q1 r1 q2 r2 :e omega, r1 < n -> q1 <= q2 -> q1 * n + r1 = q2 * n + r2 -> q1 = q2 /\ r1 = r2.
let n. assume Hn. let q1. assume Hq1. let r1. assume Hr1. let q2. assume Hq2. let r2. assume Hr2.
assume HR1. assume HLE. assume HEQ.
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hsq1: SNo q1. { exact (omega_SNo q1 Hq1). }
claim Hsr1: SNo r1. { exact (omega_SNo r1 Hr1). }
claim Hsr2: SNo r2. { exact (omega_SNo r2 Hr2). }
apply ((iffEL (q1 <= q2) (exists d :e omega, q2 = q1 + d) (le_exists_thm q1 Hq1 q2 Hq2)) HLE).
let d. assume Hd0. apply Hd0. assume Hd HD.
claim Hsd: SNo d. { exact (omega_SNo d Hd). }
claim Hdn: d * n :e omega. { exact (mul_SNo_In_omega d Hd n Hn). }
claim E1: q2 * n = q1 * n + d * n.
{ claim E0: q2 * n = (q1 + d) * n.
  { exact (f_equal (fun hl__u:set => hl__u * n) q2 (q1 + d) HD). }
  exact (eq_trans_i (q2 * n) ((q1 + d) * n) (q1 * n + d * n) E0 (mul_SNo_distrR q1 d n Hsq1 Hsd Hsn)). }
claim E2: q1 * n + r1 = q1 * n + (d * n + r2).
{ claim E21: q2 * n + r2 = (q1 * n + d * n) + r2.
  { exact (f_equal (fun hl__u:set => hl__u + r2) (q2 * n) (q1 * n + d * n) E1). }
  claim E22: (q1 * n + d * n) + r2 = q1 * n + (d * n + r2).
  { exact (eq_sym_i (q1 * n + (d * n + r2)) ((q1 * n + d * n) + r2) (add_SNo_assoc (q1 * n) (d * n) r2 (SNo_mul_SNo q1 n Hsq1 Hsn) (SNo_mul_SNo d n Hsd Hsn) Hsr2)). }
  exact (eq_trans_i (q1 * n + r1) (q2 * n + r2) (q1 * n + (d * n + r2)) HEQ (eq_trans_i (q2 * n + r2) ((q1 * n + d * n) + r2) (q1 * n + (d * n + r2)) E21 E22)). }
claim E3: r1 = d * n + r2.
{ exact (add_SNo_cancel_L (q1 * n) r1 (d * n + r2) (SNo_mul_SNo q1 n Hsq1 Hsn) Hsr1 (SNo_add_SNo (d * n) r2 (SNo_mul_SNo d n Hsd Hsn) Hsr2) E2). }
apply (nat_inv d (omega_nat_p d Hd)).
assume Hd00.
claim EQ1: q1 = q2.
{ claim T1: q2 = q1 + 0. { exact ((Hd00 (fun hl__u hl__v => q2 = q1 + hl__u)) HD). }
  exact (eq_sym_i q2 q1 (eq_trans_i q2 (q1 + 0) q1 T1 (add_SNo_0R q1 Hsq1))). }
claim EQ2: r1 = r2.
{ claim T2: r1 = 0 * n + r2. { exact ((Hd00 (fun hl__u hl__v => r1 = hl__u * n + r2)) E3). }
  exact (eq_trans_i r1 (0 * n + r2) r2 T2 (eq_trans_i (0 * n + r2) (0 + r2) r2 (f_equal (fun hl__u:set => hl__u + r2) (0 * n) 0 (mul_SNo_zeroL n Hsn)) (add_SNo_0L r2 Hsr2))). }
exact (andI (q1 = q2) (r1 = r2) EQ1 EQ2).
assume Hex2. apply Hex2. let d1. assume Hd10. apply Hd10. assume Hd1n Hdd1.
claim Hd1o: d1 :e omega. { exact (nat_p_omega d1 Hd1n). }
claim Hsd1: SNo d1. { exact (omega_SNo d1 Hd1o). }
claim LN: n <= d * n.
{ claim F1: d * n = d1 * n + n.
  { claim F0: d * n = (d1 + 1) * n.
    { exact ((eq_sym_i (d1 + 1) (ordsucc d1) (add_SNo_1_ordsucc d1 Hd1o)) (fun hl__u hl__v => d * n = hl__u * n) (Hdd1 (fun hl__u hl__v => d * n = hl__u * n) (fun q H => H))). }
    claim F2: (d1 + 1) * n = d1 * n + 1 * n.
    { exact (mul_SNo_distrR d1 1 n Hsd1 SNo_1 Hsn). }
    claim F3: d1 * n + 1 * n = d1 * n + n.
    { exact (f_equal (fun hl__u:set => d1 * n + hl__u) (1 * n) n (mul_SNo_oneL n Hsn)). }
    exact (eq_trans_i (d * n) ((d1 + 1) * n) (d1 * n + n) F0 (eq_trans_i ((d1 + 1) * n) (d1 * n + 1 * n) (d1 * n + n) F2 F3)). }
  claim F4: n <= n + d1 * n. { exact (SNoLe_add_omega n Hn (d1 * n) (mul_SNo_In_omega d1 Hd1o n Hn)). }
  claim F5: n <= d1 * n + n.
  { exact ((add_SNo_com n (d1 * n) Hsn (SNo_mul_SNo d1 n Hsd1 Hsn)) (fun hl__u hl__v => n <= hl__u) F4). }
  exact ((eq_sym_i (d * n) (d1 * n + n) F1) (fun hl__u hl__v => n <= hl__u) F5). }
claim LR: n <= r1.
{ claim G1: d * n <= d * n + r2. { exact (SNoLe_add_omega (d * n) Hdn r2 Hr2). }
  claim G2: d * n <= r1.
  { exact ((eq_sym_i r1 (d * n + r2) E3) (fun hl__u hl__v => d * n <= hl__u) G1). }
  exact (SNoLe_tra n (d * n) r1 Hsn (SNo_mul_SNo d n Hsd Hsn) Hsr1 LN G2). }
exact (FalseE (SNoLt_irref n (SNoLeLt_tra n r1 n Hsn Hsr1 Hsn LR HR1)) (q1 = q2 /\ r1 = r2)).
Qed.

Theorem divmod_uniq_thm : forall m n q r :e omega, m = q * n + r /\ r < n -> div_nat m n = q /\ mod_nat m n = r.
let m. assume Hm. let n. assume Hn. let q. assume Hq. let r. assume Hr. assume H.
claim HE: m = q * n + r. { exact (andEL (m = q * n + r) (r < n) H). }
claim HR: r < n. { exact (andER (m = q * n + r) (r < n) H). }
claim Hn0: ~ n = 0.
{ exact (iffEL (0 < n) (~ n = 0) (lt_nz_thm n Hn) (SNoLeLt_tra 0 r n SNo_0 (omega_SNo r Hr) (omega_SNo n Hn) (omega_nonneg r Hr) HR)). }
claim HD: m = div_nat m n * n + mod_nat m n /\ mod_nat m n < n.
{ exact (div_mod_nat m Hm n Hn Hn0). }
claim HEQ: div_nat m n * n + mod_nat m n = q * n + r.
{ exact (eq_trans_i (div_nat m n * n + mod_nat m n) m (q * n + r) (eq_sym_i m (div_nat m n * n + mod_nat m n) (andEL (m = div_nat m n * n + mod_nat m n) (mod_nat m n < n) HD)) HE). }
apply (SNoLtLe_or (div_nat m n) q (omega_SNo (div_nat m n) (div_nat_omega m Hm n Hn)) (omega_SNo q Hq)).
assume H1.
claim A: div_nat m n = q /\ mod_nat m n = r.
{ exact (quotrem_le_aux n Hn (div_nat m n) (div_nat_omega m Hm n Hn) (mod_nat m n) (mod_nat_omega m Hm n Hn) q Hq r Hr (andER (m = div_nat m n * n + mod_nat m n) (mod_nat m n < n) HD) (SNoLtLe (div_nat m n) q H1) HEQ). }
exact A.
assume H1.
claim A: q = div_nat m n /\ r = mod_nat m n.
{ exact (quotrem_le_aux n Hn q Hq r Hr (div_nat m n) (div_nat_omega m Hm n Hn) (mod_nat m n) (mod_nat_omega m Hm n Hn) HR H1 (eq_sym_i (div_nat m n * n + mod_nat m n) (q * n + r) HEQ)). }
exact (andI (div_nat m n = q) (mod_nat m n = r) (eq_sym_i q (div_nat m n) (andEL (q = div_nat m n) (r = mod_nat m n) A)) (eq_sym_i r (mod_nat m n) (andER (q = div_nat m n) (r = mod_nat m n) A))).
Qed.

Theorem div_uniq_thm : forall m n q r :e omega, m = q * n + r /\ r < n -> div_nat m n = q.
let m. assume Hm. let n. assume Hn. let q. assume Hq. let r. assume Hr. assume H.
exact (andEL (div_nat m n = q) (mod_nat m n = r) (divmod_uniq_thm m Hm n Hn q Hq r Hr H)).
Qed.

Theorem mod_uniq_thm : forall m n q r :e omega, m = q * n + r /\ r < n -> mod_nat m n = r.
let m. assume Hm. let n. assume Hn. let q. assume Hq. let r. assume Hr. assume H.
exact (andER (div_nat m n = q) (mod_nat m n = r) (divmod_uniq_thm m Hm n Hn q Hq r Hr H)).
Qed.

Theorem lt_mult_lcancel_thm : forall m n p :e omega, m * n < m * p <-> ~ m = 0 /\ n < p.
let m. assume Hm. let n. assume Hn. let p. assume Hp.
claim Hsm: SNo m. { exact (omega_SNo m Hm). }
claim Hsn: SNo n. { exact (omega_SNo n Hn). }
claim Hsp: SNo p. { exact (omega_SNo p Hp). }
claim Hsmn: SNo (m * n). { exact (SNo_mul_SNo m n Hsm Hsn). }
claim Hsmp: SNo (m * p). { exact (SNo_mul_SNo m p Hsm Hsp). }
apply iffI.
- assume H.
  claim Hm0: ~ m = 0.
  { assume H0.
    claim Z1: m * n = 0.
    { exact (eq_trans_i (m * n) (0 * n) 0 (f_equal (fun hl__u:set => hl__u * n) m 0 H0) (mul_SNo_zeroL n Hsn)). }
    claim Z2: m * p = 0.
    { exact (eq_trans_i (m * p) (0 * p) 0 (f_equal (fun hl__u:set => hl__u * p) m 0 H0) (mul_SNo_zeroL p Hsp)). }
    claim Z3: 0 < 0.
    { exact (Z2 (fun hl__u hl__v => 0 < hl__u) (Z1 (fun hl__u hl__v => hl__u < m * p) H)). }
    exact (SNoLt_irref 0 Z3). }
  claim H0m: 0 < m.
  { exact (iffER (0 < m) (~ m = 0) (lt_nz_thm m Hm) Hm0). }
  apply andI.
  + exact Hm0.
  + apply (SNoLt_trichotomy_or n p Hsn Hsp).
    assume H1.
    apply H1.
    assume H2. exact H2.
    assume H2.
    claim Z: m * n = m * p. { exact (f_equal (fun hl__u:set => m * hl__u) n p H2). }
    exact (FalseE (SNoLt_irref (m * n) ((eq_sym_i (m * n) (m * p) Z) (fun hl__u hl__v => m * n < hl__u) H)) (n < p)).
    assume H2.
    exact (FalseE (SNoLt_irref (m * n) (SNoLt_tra (m * n) (m * p) (m * n) Hsmn Hsmp Hsmn H (pos_mul_SNo_Lt m p n Hsm H0m Hsp Hsn H2))) (n < p)).
- assume H.
  claim Hm0: ~ m = 0. { exact (andEL (~ m = 0) (n < p) H). }
  claim H0m: 0 < m. { exact (iffER (0 < m) (~ m = 0) (lt_nz_thm m Hm) Hm0). }
  exact (pos_mul_SNo_Lt m n p Hsm H0m Hsn Hsp (andER (~ m = 0) (n < p) H)).
Qed.

Theorem pair_eq_thm : forall A B:set, forall a c :e A, forall b d :e B, (a,b) = (c,d) <-> a = c /\ b = d.
let A. let B. let a. assume Ha. let c. assume Hc. let b. assume Hb. let d. assume Hd.
apply iffI.
- assume H.
  apply andI.
  + claim E0: (a,b) 0 = (c,d) 0.
    { exact (f_equal (fun hl__u:set => hl__u 0) (a,b) (c,d) H). }
    exact (eq_trans_i a ((a,b) 0) c (eq_sym_i ((a,b) 0) a (tuple_2_0_eq a b)) (eq_trans_i ((a,b) 0) ((c,d) 0) c E0 (tuple_2_0_eq c d))).
  + claim E1: (a,b) 1 = (c,d) 1.
    { exact (f_equal (fun hl__u:set => hl__u 1) (a,b) (c,d) H). }
    exact (eq_trans_i b ((a,b) 1) d (eq_sym_i ((a,b) 1) b (tuple_2_1_eq a b)) (eq_trans_i ((a,b) 1) ((c,d) 1) d E1 (tuple_2_1_eq c d))).
- assume H.
  exact (f_equal2 (fun hl__u:set => fun hl__v:set => (hl__u,hl__v)) a c b d (andEL (a = c) (b = d) H) (andER (a = c) (b = d) H)).
Qed.
