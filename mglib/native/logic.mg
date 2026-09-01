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
