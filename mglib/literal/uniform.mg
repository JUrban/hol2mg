// Uniform model for proof import (design 22.3): the kernel rules as lemma schemas over hl_eq, the
// characterizations of the logical constants (HOL's definitions taken literally), congruence lemmas
// for the coherence between the deep literal translation LP and the uniform translation U.

// the identity, used by the proof printer for lambda bodies that are bare variables (parser disambiguation)
Definition hl_id : set -> set := fun x => x.

// ---- kernel rules ----
Theorem u_refl : forall A:set, forall x :e A, hl_eq A x x = 1.
let A x. assume Hx. apply (hl_eq_iff A x Hx x Hx). assume _ Hb. exact (Hb (fun q H => H)).
Qed.
Theorem u_eq_elim : forall A:set, forall x y :e A, hl_eq A x y = 1 -> x = y.
let A x. assume Hx. let y. assume Hy. assume H. apply (hl_eq_iff A x Hx y Hy). assume Hf _. exact (Hf H).
Qed.
Theorem u_eq_intro : forall A:set, forall x y :e A, x = y -> hl_eq A x y = 1.
let A x. assume Hx. let y. assume Hy. assume H. apply (hl_eq_iff A x Hx y Hy). assume _ Hb. exact (Hb H).
Qed.
Theorem u_trans : forall A:set, forall x y z :e A, hl_eq A x y = 1 -> hl_eq A y z = 1 -> hl_eq A x z = 1.
let A x. assume Hx. let y. assume Hy. let z. assume Hz. assume H1 H2.
exact (u_eq_intro A x Hx z Hz (eq_trans_i x y z (u_eq_elim A x Hx y Hy H1) (u_eq_elim A y Hy z Hz H2))).
Qed.
Theorem u_sym : forall A:set, forall x y :e A, hl_eq A x y = 1 -> hl_eq A y x = 1.
let A x. assume Hx. let y. assume Hy. assume H. exact (u_eq_intro A y Hy x Hx (eq_sym_i x y (u_eq_elim A x Hx y Hy H))).
Qed.
Theorem u_mkcomb : forall A B:set, forall f g :e B :^: A, forall x y :e A, hl_eq (B :^: A) f g = 1 -> hl_eq A x y = 1 -> hl_eq B (f x) (g y) = 1.
let A B f. assume Hf. let g. assume Hg. let x. assume Hx. let y. assume Hy. assume H1 H2.
exact (u_eq_intro B (f x) (setexp_ap A B f Hf x Hx) (g y) (setexp_ap A B g Hg y Hy) (f_equal2 (fun u:set => fun v:set => u v) f g x y (u_eq_elim (B :^: A) f Hf g Hg H1) (u_eq_elim A x Hx y Hy H2))).
Qed.
Theorem u_lam_in : forall A B:set, forall F:set -> set, (forall x :e A, F x :e B) -> (fun x :e A => F x) :e B :^: A.
let A B F. assume HF. prove (fun x :e A => F x) :e Pi_ x :e A, B. exact (lam_Pi A (fun _ => B) F HF).
Qed.
Theorem u_abs : forall A B:set, forall F G:set -> set, (forall x :e A, F x :e B) -> (forall x :e A, G x :e B) -> (forall x :e A, hl_eq B (F x) (G x) = 1) -> hl_eq (B :^: A) (fun x :e A => F x) (fun x :e A => G x) = 1.
let A B F G. assume HF HG H.
exact (u_eq_intro (B :^: A) (fun x :e A => F x) (u_lam_in A B F HF) (fun x :e A => G x) (u_lam_in A B G HG) (lam_ext_in A F G (fun x Hx => u_eq_elim B (F x) (HF x Hx) (G x) (HG x Hx) (H x Hx)))).
Qed.
Theorem u_beta : forall A B:set, forall F:set -> set, (forall x :e A, F x :e B) -> forall x :e A, hl_eq B ((fun x :e A => F x) x) (F x) = 1.
let A B F. assume HF. let x. assume Hx.
claim Hb: (fun x :e A => F x) x = F x. { exact (beta A F x Hx). }
claim Ht: (fun x :e A => F x) x :e B. { exact ((eq_sym_i ((fun x :e A => F x) x) (F x) Hb) (fun hl__u hl__v => hl__u :e B) (HF x Hx)). }
exact (u_eq_intro B ((fun x :e A => F x) x) Ht (F x) (HF x Hx) Hb).
Qed.
Theorem u_eqmp : forall p q :e 2, hl_eq 2 p q = 1 -> p = 1 -> q = 1.
let p. assume Hp. let q. assume Hq. assume H Hp1.
exact ((u_eq_elim 2 p Hp q Hq H) (fun hl__u hl__v => hl__u = 1) Hp1).
Qed.
Theorem u_deduct : forall p q :e 2, (q = 1 -> p = 1) -> (p = 1 -> q = 1) -> hl_eq 2 p q = 1.
let p. assume Hp. let q. assume Hq. assume H1 H2.
claim Hpq: p = q.
{ claim C0: (q = 1 -> 0 = 1) -> (0 = 1 -> q = 1) -> 0 = q.
  { assume K1 K2.
    claim D0: (0 = 1 -> 0 = 1) -> (0 = 1 -> 0 = 1) -> 0 = 0. { assume _ _. exact (fun r H => H). }
    claim D1: (1 = 1 -> 0 = 1) -> (0 = 1 -> 1 = 1) -> 0 = 1. { assume L1 _. exact (L1 (fun r H => H)). }
    exact (cases_2 q Hq (fun v => (v = 1 -> 0 = 1) -> (0 = 1 -> v = 1) -> 0 = v) D0 D1 K1 K2). }
  claim C1: (q = 1 -> 1 = 1) -> (1 = 1 -> q = 1) -> 1 = q.
  { assume K1 K2.
    claim D0: (0 = 1 -> 1 = 1) -> (1 = 1 -> 0 = 1) -> 1 = 0. { assume _ L2. exact (FalseE (neq_0_1 (L2 (fun r H => H))) (1 = 0)). }
    claim D1: (1 = 1 -> 1 = 1) -> (1 = 1 -> 1 = 1) -> 1 = 1. { assume _ _. exact (fun r H => H). }
    exact (cases_2 q Hq (fun v => (v = 1 -> 1 = 1) -> (1 = 1 -> v = 1) -> 1 = v) D0 D1 K1 K2). }
  exact (cases_2 p Hp (fun u => (q = 1 -> u = 1) -> (u = 1 -> q = 1) -> u = q) C0 C1 H1 H2). }
exact (u_eq_intro 2 p Hp q Hq Hpq).
Qed.

// ---- the logical constants (HOL definitions, taken literally in _literal.mg) ----
Theorem hl_true_lit : (if True then 1 else 0) = 1.
exact (If_i_1 True 1 0 (fun q H => H)).
Qed.
Theorem hl_T_char : hl_T = 1.
prove (if (fun p :e 2 => p) = fun p :e 2 => p then 1 else 0) = 1.
exact (If_i_1 ((fun p :e 2 => p) = fun p :e 2 => p) 1 0 (fun q H => H)).
Qed.
Theorem hl_F_char : hl_F = 0.
prove (if forall p :e 2, p = 1 then 1 else 0) = 0.
claim Hn: ~ forall p :e 2, p = 1. { assume H. exact (neq_0_1 (H 0 (In_0_2))). }
exact (If_i_0 (forall p :e 2, p = 1) 1 0 Hn).
Qed.
Theorem hl_not_char : forall p :e 2, hl_not p = 1 <-> ~ p = 1.
let p. assume Hp.
claim Hb: hl_not p = if p = 1 -> False then 1 else 0. { exact (beta 2 (fun p => if p = 1 -> False then 1 else 0) p Hp). }
rewrite Hb. exact (If_1_iff (p = 1 -> False)).
Qed.
Theorem hl_imp_char : forall p q :e 2, hl_imp p q = 1 <-> (p = 1 -> q = 1).
let p. assume Hp. let q. assume Hq.
claim Hb: hl_imp p q = if p = 1 /\ q = 1 <-> p = 1 then 1 else 0. { exact (lam2_beta 2 2 (fun p q => if p = 1 /\ q = 1 <-> p = 1 then 1 else 0) p Hp q Hq). }
rewrite Hb.
apply (If_1_iff (p = 1 /\ q = 1 <-> p = 1)). assume Hf Hb2.
apply iffI.
- assume H Hp1. apply (Hf H). assume _ K. apply (K Hp1). assume _ Hq1. exact Hq1.
- assume H. apply Hb2. apply iffI.
  + assume K. apply K. assume Hp1 _. exact Hp1.
  + assume Hp1. apply andI. exact Hp1. exact (H Hp1).
Qed.
Theorem proj1_2 : forall p q :e 2, (fun a :e 2 => fun b :e 2 => a) p q = p.
let p. assume Hp. let q. assume Hq.
exact (eq_trans_i ((fun a :e 2 => fun b :e 2 => a) p q) ((fun b :e 2 => p) q) p (f_equal (fun u:set => u q) ((fun a :e 2 => fun b :e 2 => a) p) (fun b :e 2 => p) (beta 2 (fun a:set => fun b :e 2 => a) p Hp)) (beta 2 (fun b:set => p) q Hq)).
Qed.
Theorem proj2_2 : forall p q :e 2, (fun a :e 2 => fun b :e 2 => b) p q = q.
let p. assume Hp. let q. assume Hq.
exact (eq_trans_i ((fun a :e 2 => fun b :e 2 => b) p q) ((fun b :e 2 => b) q) q (f_equal (fun u:set => u q) ((fun a :e 2 => fun b :e 2 => b) p) (fun b :e 2 => b) (beta 2 (fun a:set => fun b :e 2 => b) p Hp)) (beta 2 (fun b:set => b) q Hq)).
Qed.
Theorem hl_and_char : forall p q :e 2, hl_and p q = 1 <-> p = 1 /\ q = 1.
let p. assume Hp. let q. assume Hq.
claim Hb: hl_and p q = if (fun f :e 2 :^: 2 :^: 2 => f p q) = fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0) then 1 else 0.
{ exact (lam2_beta 2 2 (fun p q => if (fun f :e 2 :^: 2 :^: 2 => f p q) = fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0) then 1 else 0) p Hp q Hq). }
rewrite Hb. rewrite hl_true_lit.
apply (If_1_iff ((fun f :e 2 :^: 2 :^: 2 => f p q) = fun f :e 2 :^: 2 :^: 2 => f 1 1)). assume Hf Hb2.
claim K1: (fun a :e 2 => fun b :e 2 => a) :e 2 :^: 2 :^: 2. { exact (u_lam_in 2 (2 :^: 2) (fun a => fun b :e 2 => a) (fun a Ha => u_lam_in 2 2 (fun b => a) (fun b Hb => Ha))). }
claim K2: (fun a :e 2 => fun b :e 2 => b) :e 2 :^: 2 :^: 2. { exact (u_lam_in 2 (2 :^: 2) (fun a => fun b :e 2 => b) (fun a Ha => u_lam_in 2 2 (fun b => b) (fun b Hb => Hb))). }
claim H1: 1 :e 2. { exact In_1_2. }
apply iffI.
- assume H. claim E: (fun f :e 2 :^: 2 :^: 2 => f p q) = fun f :e 2 :^: 2 :^: 2 => f 1 1. { exact (Hf H). }
  apply andI.
  + claim E1: (fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => a) = (fun f :e 2 :^: 2 :^: 2 => f 1 1) (fun a :e 2 => fun b :e 2 => a). { exact (f_equal (fun u:set => u (fun a :e 2 => fun b :e 2 => a)) (fun f :e 2 :^: 2 :^: 2 => f p q) (fun f :e 2 :^: 2 :^: 2 => f 1 1) E). }
    claim L1: (fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => a) = p. { exact (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => a)) ((fun a :e 2 => fun b :e 2 => a) p q) p (beta (2 :^: 2 :^: 2) (fun f:set => f p q) (fun a :e 2 => fun b :e 2 => a) K1) (proj1_2 p Hp q Hq)). }
    claim R1: (fun f :e 2 :^: 2 :^: 2 => f 1 1) (fun a :e 2 => fun b :e 2 => a) = 1. { exact (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f 1 1) (fun a :e 2 => fun b :e 2 => a)) ((fun a :e 2 => fun b :e 2 => a) 1 1) 1 (beta (2 :^: 2 :^: 2) (fun f:set => f 1 1) (fun a :e 2 => fun b :e 2 => a) K1) (proj1_2 1 H1 1 H1)). }
    exact (eq_trans_i p ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => a)) 1 (eq_sym_i ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => a)) p L1) (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => a)) ((fun f :e 2 :^: 2 :^: 2 => f 1 1) (fun a :e 2 => fun b :e 2 => a)) 1 E1 R1)).
  + claim E2: (fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => b) = (fun f :e 2 :^: 2 :^: 2 => f 1 1) (fun a :e 2 => fun b :e 2 => b). { exact (f_equal (fun u:set => u (fun a :e 2 => fun b :e 2 => b)) (fun f :e 2 :^: 2 :^: 2 => f p q) (fun f :e 2 :^: 2 :^: 2 => f 1 1) E). }
    claim L2: (fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => b) = q. { exact (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => b)) ((fun a :e 2 => fun b :e 2 => b) p q) q (beta (2 :^: 2 :^: 2) (fun f:set => f p q) (fun a :e 2 => fun b :e 2 => b) K2) (proj2_2 p Hp q Hq)). }
    claim R2: (fun f :e 2 :^: 2 :^: 2 => f 1 1) (fun a :e 2 => fun b :e 2 => b) = 1. { exact (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f 1 1) (fun a :e 2 => fun b :e 2 => b)) ((fun a :e 2 => fun b :e 2 => b) 1 1) 1 (beta (2 :^: 2 :^: 2) (fun f:set => f 1 1) (fun a :e 2 => fun b :e 2 => b) K2) (proj2_2 1 H1 1 H1)). }
    exact (eq_trans_i q ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => b)) 1 (eq_sym_i ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => b)) q L2) (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => b)) ((fun f :e 2 :^: 2 :^: 2 => f 1 1) (fun a :e 2 => fun b :e 2 => b)) 1 E2 R2)).
- assume H. apply H. assume Hp1 Hq1. apply Hb2.
  apply (lam_ext_in (2 :^: 2 :^: 2) (fun f:set => f p q) (fun f:set => f 1 1)). let f. assume Hf'.
  exact (f_equal2 (fun u:set => fun v:set => f u v) p 1 q 1 Hp1 Hq1).
Qed.
Theorem hl_or_char : forall p q :e 2, hl_or p q = 1 <-> p = 1 \/ q = 1.
let p. assume Hp. let q. assume Hq.
claim Hb: hl_or p q = if forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1 then 1 else 0. { exact (lam2_beta 2 2 (fun p q => if forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1 then 1 else 0) p Hp q Hq). }
rewrite Hb.
apply (If_1_iff (forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1)). assume Hf Hb2.
apply iffI.
- assume H.
  claim Hr: (if p = 1 \/ q = 1 then 1 else 0) :e 2. { exact (If_in_2 (p = 1 \/ q = 1)). }
  claim K: (if p = 1 \/ q = 1 then 1 else 0) = 1. { exact (Hf H (if p = 1 \/ q = 1 then 1 else 0) Hr (fun Hp1 => If_i_1 (p = 1 \/ q = 1) 1 0 (orIL (p = 1) (q = 1) Hp1)) (fun Hq1 => If_i_1 (p = 1 \/ q = 1) 1 0 (orIR (p = 1) (q = 1) Hq1))). }
  apply (If_1_iff (p = 1 \/ q = 1)). assume Hf2 _. exact (Hf2 K).
- assume H. apply Hb2. let r. assume Hr. assume K1 K2. apply H.
  + assume Hp1. exact (K1 Hp1).
  + assume Hq1. exact (K2 Hq1).
Qed.
Theorem hl_forall_char : forall A:set, forall P :e 2 :^: A, hl_forall A P = 1 <-> forall x :e A, P x = 1.
let A P. assume HP.
claim Hb: hl_forall A P = if P = (fun x :e A => if True then 1 else 0) then 1 else 0. { exact (beta (2 :^: A) (fun P => if P = (fun x :e A => if True then 1 else 0) then 1 else 0) P HP). }
rewrite Hb.
apply (If_1_iff (P = (fun x :e A => if True then 1 else 0))). assume Hf Hb2.
claim HK: (fun x :e A => if True then 1 else 0) :e 2 :^: A. { exact (u_lam_in A 2 (fun x => if True then 1 else 0) (fun x Hx => If_in_2 True)). }
apply iffI.
- assume H. let x. assume Hx.
  claim E: P = fun x :e A => if True then 1 else 0. { exact (Hf H). }
  exact (eq_trans_i (P x) ((fun x :e A => if True then 1 else 0) x) 1 (f_equal (fun u:set => u x) P (fun x :e A => if True then 1 else 0) E) (eq_trans_i ((fun x :e A => if True then 1 else 0) x) (if True then 1 else 0) 1 (beta A (fun x => if True then 1 else 0) x Hx) hl_true_lit)).
- assume H. apply Hb2.
  apply (Pi_ext A (fun _ => 2) P HP (fun x :e A => if True then 1 else 0) HK). let x. assume Hx.
  exact (eq_trans_i (P x) 1 ((fun x :e A => if True then 1 else 0) x) (H x Hx) (eq_sym_i ((fun x :e A => if True then 1 else 0) x) 1 (eq_trans_i ((fun x :e A => if True then 1 else 0) x) (if True then 1 else 0) 1 (beta A (fun x => if True then 1 else 0) x Hx) hl_true_lit))).
Qed.
Theorem hl_exists_char : forall A:set, forall P :e 2 :^: A, hl_exists A P = 1 <-> exists x :e A, P x = 1.
let A P. assume HP.
claim Hb: hl_exists A P = if forall q :e 2, (forall x :e A, P x = 1 -> q = 1) -> q = 1 then 1 else 0. { exact (beta (2 :^: A) (fun P => if forall q :e 2, (forall x :e A, P x = 1 -> q = 1) -> q = 1 then 1 else 0) P HP). }
rewrite Hb.
apply (If_1_iff (forall q :e 2, (forall x :e A, P x = 1 -> q = 1) -> q = 1)). assume Hf Hb2.
apply iffI.
- assume H.
  claim Hr: (if exists x :e A, P x = 1 then 1 else 0) :e 2. { exact (If_in_2 (exists x :e A, P x = 1)). }
  claim K: (if exists x :e A, P x = 1 then 1 else 0) = 1.
  { exact (Hf H (if exists x :e A, P x = 1 then 1 else 0) Hr (fun x Hx Hpx => If_i_1 (exists x :e A, P x = 1) 1 0 (fun r Hr' => Hr' x (andI (x :e A) (P x = 1) Hx Hpx)))). }
  apply (If_1_iff (exists x :e A, P x = 1)). assume Hf2 _. exact (Hf2 K).
- assume H. apply Hb2. let q. assume Hq. assume K. apply H. let x. assume Hx0. apply Hx0. assume Hx Hpx. exact (K x Hx Hpx).
Qed.
Theorem hl_exists_unique_char : forall A:set, forall P :e 2 :^: A, hl_exists_unique A P = 1 <-> (hl_exists A P = 1 /\ forall x y :e A, P x = 1 /\ P y = 1 -> x = y).
let A P. assume HP.
claim Hb: hl_exists_unique A P = if hl_exists A P = 1 /\ forall x y :e A, P x = 1 /\ P y = 1 -> x = y then 1 else 0. { exact (beta (2 :^: A) (fun P => if hl_exists A P = 1 /\ forall x y :e A, P x = 1 /\ P y = 1 -> x = y then 1 else 0) P HP). }
rewrite Hb. exact (If_1_iff (hl_exists A P = 1 /\ forall x y :e A, P x = 1 /\ P y = 1 -> x = y)).
Qed.

// ---- coherence helpers ----
Theorem eq2_iff : forall a b :e 2, a = b <-> (a = 1 <-> b = 1).
let a. assume Ha. let b. assume Hb.
apply iffI.
- assume H. exact (H (fun hl__u hl__v => a = 1 <-> hl__u = 1) (iff_refl (a = 1))).
- assume H. apply H. assume Hf Hbk. exact (u_eq_elim 2 a Ha b Hb (u_deduct a Ha b Hb Hbk Hf)).
Qed.

// ---- coherence helpers (deep LP vs uniform U) ----
Theorem If_i_iff_ext : forall P Q:prop, (P <-> Q) -> (if P then 1 else 0) = (if Q then 1 else 0).
let P Q. assume H. apply H. assume Hf Hb.
apply (xm P).
- assume HP. exact (eq_trans_i (if P then 1 else 0) 1 (if Q then 1 else 0) (If_i_1 P 1 0 HP) (eq_sym_i (if Q then 1 else 0) 1 (If_i_1 Q 1 0 (Hf HP)))).
- assume HnP. claim HnQ: ~ Q. { assume HQ. exact (HnP (Hb HQ)). }
  exact (eq_trans_i (if P then 1 else 0) 0 (if Q then 1 else 0) (If_i_0 P 1 0 HnP) (eq_sym_i (if Q then 1 else 0) 0 (If_i_0 Q 1 0 HnQ))).
Qed.
Theorem If_eq1_self : forall u :e 2, (if u = 1 then 1 else 0) = u.
let u. assume Hu.
claim C0: (if 0 = 1 then 1 else 0) = 0. { exact (If_i_0 (0 = 1) 1 0 neq_0_1). }
claim C1: (if 1 = 1 then 1 else 0) = 1. { exact (If_i_1 (1 = 1) 1 0 (fun q H => H)). }
exact (cases_2 u Hu (fun v => (if v = 1 then 1 else 0) = v) C0 C1).
Qed.
Theorem eq_iff_eq1 : forall a b:set, a = b -> (a = 1 <-> b = 1).
let a b. assume H. exact (H (fun hl__u hl__v => a = 1 <-> hl__u = 1) (iff_refl (a = 1))).
Qed.
Theorem eq_iff_of_eq : forall a a' b b':set, a = a' -> b = b' -> (a = b <-> a' = b').
let a a' b b'. assume Ha Hb.
exact (Hb (fun hl__u hl__v => a = b <-> a' = hl__u) (Ha (fun hl__u hl__v => a = b <-> hl__u = b) (iff_refl (a = b)))).
Qed.
Theorem iff_and_cong : forall P P' Q Q':prop, (P <-> P') -> (Q <-> Q') -> (P /\ Q <-> P' /\ Q').
let P P' Q Q'. assume H1 H2. apply H1. assume H1f H1b. apply H2. assume H2f H2b.
apply iffI.
- assume H. apply H. assume HP HQ. exact (andI P' Q' (H1f HP) (H2f HQ)).
- assume H. apply H. assume HP HQ. exact (andI P Q (H1b HP) (H2b HQ)).
Qed.
Theorem iff_or_cong : forall P P' Q Q':prop, (P <-> P') -> (Q <-> Q') -> (P \/ Q <-> P' \/ Q').
let P P' Q Q'. assume H1 H2. apply H1. assume H1f H1b. apply H2. assume H2f H2b.
apply iffI.
- assume H. apply H. + assume HP. exact (orIL P' Q' (H1f HP)). + assume HQ. exact (orIR P' Q' (H2f HQ)).
- assume H. apply H. + assume HP. exact (orIL P Q (H1b HP)). + assume HQ. exact (orIR P Q (H2b HQ)).
Qed.
Theorem iff_imp_cong : forall P P' Q Q':prop, (P <-> P') -> (Q <-> Q') -> ((P -> Q) <-> (P' -> Q')).
let P P' Q Q'. assume H1 H2. apply H1. assume H1f H1b. apply H2. assume H2f H2b.
apply iffI.
- assume H HP'. exact (H2f (H (H1b HP'))).
- assume H HP. exact (H2b (H (H1f HP))).
Qed.
Theorem iff_not_cong : forall P P':prop, (P <-> P') -> (~ P <-> ~ P').
let P P'. assume H1. apply H1. assume H1f H1b.
apply iffI.
- assume H HP'. exact (H (H1b HP')).
- assume H HP. exact (H (H1f HP)).
Qed.
Theorem iff_iff_cong : forall P P' Q Q':prop, (P <-> P') -> (Q <-> Q') -> ((P <-> Q) <-> (P' <-> Q')).
let P P' Q Q'. assume H1 H2. apply H1. assume H1f H1b. apply H2. assume H2f H2b.
apply iffI.
- assume H. apply H. assume Hf Hb. apply iffI. + assume HP'. exact (H2f (Hf (H1b HP'))). + assume HQ'. exact (H1f (Hb (H2b HQ'))).
- assume H. apply H. assume Hf Hb. apply iffI. + assume HP. exact (H2b (Hf (H1f HP))). + assume HQ. exact (H1b (Hb (H2f HQ))).
Qed.
Theorem iff_forall_in_cong : forall A:set, forall P Q:set -> prop, (forall x :e A, P x <-> Q x) -> ((forall x :e A, P x) <-> (forall x :e A, Q x)).
let A P Q. assume H.
apply iffI.
- assume HP. let x. assume Hx. apply (H x Hx). assume Hf _. exact (Hf (HP x Hx)).
- assume HQ. let x. assume Hx. apply (H x Hx). assume _ Hb. exact (Hb (HQ x Hx)).
Qed.
Theorem iff_exists_in_cong : forall A:set, forall P Q:set -> prop, (forall x :e A, P x <-> Q x) -> ((exists x :e A, P x) <-> (exists x :e A, Q x)).
let A P Q. assume H.
apply iffI.
- assume HP. apply HP. let x. assume Hx0. apply Hx0. assume Hx HPx. witness x. apply andI. exact Hx. apply (H x Hx). assume Hf _. exact (Hf HPx).
- assume HQ. apply HQ. let x. assume Hx0. apply Hx0. assume Hx HQx. witness x. apply andI. exact Hx. apply (H x Hx). assume _ Hb. exact (Hb HQx).
Qed.
Theorem hl_COND_char2 : forall c a b :e 2, hl_COND 2 c a b = 1 <-> (c = 1 /\ a = 1) \/ (~ c = 1 /\ b = 1).
let c. assume Hc. let a. assume Ha. let b. assume Hb.
claim Hi: hl_COND 2 c a b = if c = 1 then a else b. { exact (hl_COND_if 2 c Hc (c = 1) (iff_refl (c = 1)) a Ha b Hb). }
rewrite Hi.
apply (xm (c = 1)).
- assume H1. rewrite (If_i_1 (c = 1) a b H1). apply iffI.
  + assume Ha1. apply orIL. exact (andI (c = 1) (a = 1) H1 Ha1).
  + assume H. apply H. * assume K. apply K. assume _ Ha1. exact Ha1. * assume K. apply K. assume Hn _. exact (FalseE (Hn H1) (a = 1)).
- assume H0. rewrite (If_i_0 (c = 1) a b H0). apply iffI.
  + assume Hb1. apply orIR. exact (andI (~ c = 1) (b = 1) H0 Hb1).
  + assume H. apply H. * assume K. apply K. assume H1 _. exact (FalseE (H0 H1) (b = 1)). * assume K. apply K. assume _ Hb1. exact Hb1.
Qed.

// ---- nonemptiness of carriers (type instantiation) ----
Theorem setsum_nonempty_l : forall A B:set, A <> Empty -> A :+: B <> Empty.
let A B. assume HA.
claim Hc: choose_in A (fun y:set => True) :e A. { exact (choose_in_in A HA (fun y:set => True)). }
exact (nonempty_of_In (A :+: B) (Inj0 (choose_in A (fun y:set => True))) (Inj0_setsum A B (choose_in A (fun y:set => True)) Hc)).
Qed.

// ---- HOL axioms in uniform form ----
Theorem u_ETA_AX : forall A B:set, A <> Empty -> B <> Empty -> hl_forall (B :^: A) (fun t :e B :^: A => hl_eq (B :^: A) (fun x :e A => t x) t) = 1.
let A B. assume HA HB.
claim HP: (fun t :e B :^: A => hl_eq (B :^: A) (fun x :e A => t x) t) :e 2 :^: (B :^: A).
{ exact (u_lam_in (B :^: A) 2 (fun t => hl_eq (B :^: A) (fun x :e A => t x) t) (fun t Ht => setexp2_ap (B :^: A) (B :^: A) 2 (hl_eq (B :^: A)) (hl_eq_in (B :^: A) (setexp_nonempty A B HB)) (fun x :e A => t x) (u_lam_in A B (fun x => t x) (fun x Hx => setexp_ap A B t Ht x Hx)) t Ht)). }
apply (hl_forall_char (B :^: A) (fun t :e B :^: A => hl_eq (B :^: A) (fun x :e A => t x) t) HP). assume _ Hb. apply Hb.
let t. assume Ht.
claim Hbeta: (fun t :e B :^: A => hl_eq (B :^: A) (fun x :e A => t x) t) t = hl_eq (B :^: A) (fun x :e A => t x) t. { exact (beta (B :^: A) (fun t => hl_eq (B :^: A) (fun x :e A => t x) t) t Ht). }
rewrite Hbeta.
exact (u_eq_intro (B :^: A) (fun x :e A => t x) (u_lam_in A B (fun x => t x) (fun x Hx => setexp_ap A B t Ht x Hx)) t Ht (Pi_eta A (fun _ => B) t Ht)).
Qed.

// ---- small iff helpers and the literal forms of T/F ----
Theorem iff_tra : forall P Q R:prop, (P <-> Q) -> (Q <-> R) -> (P <-> R).
let P Q R. assume H1 H2. apply H1. assume H1f H1b. apply H2. assume H2f H2b.
apply iffI.
- assume HP. exact (H2f (H1f HP)).
- assume HR. exact (H1b (H2b HR)).
Qed.
Theorem iff_symm : forall P Q:prop, (P <-> Q) -> (Q <-> P).
let P Q. assume H. apply H. assume Hf Hb. apply iffI.
- assume HQ. exact (Hb HQ).
- assume HP. exact (Hf HP).
Qed.
Theorem hl_T_lit : True <-> hl_T = 1.
apply iffI.
- assume _. exact hl_T_char.
- assume _. exact (fun p H => H).
Qed.
Theorem hl_F_lit : False <-> hl_F = 1.
apply iffI.
- assume H. exact (FalseE H (hl_F = 1)).
- assume H. exact (neq_0_1 (eq_trans_i 0 hl_F 1 (eq_sym_i hl_F 0 hl_F_char) H)).
Qed.

// ---- the remaining HOL axioms in uniform form ----
Theorem u_SELECT_AX : forall A:set, A <> Empty -> hl_forall (2 :^: A) (fun P :e 2 :^: A => hl_forall A (fun x :e A => hl_imp (P x) (P (hl_select A P)))) = 1.
let A. assume HA.
claim Hsel: forall P :e 2 :^: A, hl_select A P :e A. { let P. assume HP. exact (setexp_ap (2 :^: A) A (hl_select A) (hl_select_in A HA) P HP). }
claim Hin: forall P :e 2 :^: A, (fun x :e A => hl_imp (P x) (P (hl_select A P))) :e 2 :^: A.
{ let P. assume HP. exact (u_lam_in A 2 (fun x => hl_imp (P x) (P (hl_select A P))) (fun x Hx => setexp2_ap 2 2 2 hl_imp hl_imp_in (P x) (setexp_ap A 2 P HP x Hx) (P (hl_select A P)) (setexp_ap A 2 P HP (hl_select A P) (Hsel P HP)))). }
claim Hout: (fun P :e 2 :^: A => hl_forall A (fun x :e A => hl_imp (P x) (P (hl_select A P)))) :e 2 :^: (2 :^: A).
{ exact (u_lam_in (2 :^: A) 2 (fun P => hl_forall A (fun x :e A => hl_imp (P x) (P (hl_select A P)))) (fun P HP => setexp_ap (2 :^: A) 2 (hl_forall A) (hl_forall_in A HA) (fun x :e A => hl_imp (P x) (P (hl_select A P))) (Hin P HP))). }
apply (hl_forall_char (2 :^: A) (fun P :e 2 :^: A => hl_forall A (fun x :e A => hl_imp (P x) (P (hl_select A P)))) Hout). assume _ Hb. apply Hb.
let P. assume HP.
rewrite (beta (2 :^: A) (fun P => hl_forall A (fun x :e A => hl_imp (P x) (P (hl_select A P)))) P HP).
apply (hl_forall_char A (fun x :e A => hl_imp (P x) (P (hl_select A P))) (Hin P HP)). assume _ Hb2. apply Hb2.
let x. assume Hx.
rewrite (beta A (fun x => hl_imp (P x) (P (hl_select A P))) x Hx).
apply (hl_imp_char (P x) (setexp_ap A 2 P HP x Hx) (P (hl_select A P)) (setexp_ap A 2 P HP (hl_select A P) (Hsel P HP))). assume _ Hb3. apply Hb3.
assume HPx.
claim Hs: hl_select A P = choose_in A (fun x => P x = 1). { exact (beta (2 :^: A) (fun P => choose_in A (fun x => P x = 1)) P HP). }
claim Hex: exists x :e A, P x = 1. { witness x. apply andI. exact Hx. exact HPx. }
rewrite Hs.
apply (choose_in_spec A (fun x => P x = 1) Hex). assume _ H. exact H.
Qed.
Theorem u_INFINITY_AX : hl_exists (omega :^: omega) (fun f :e omega :^: omega => hl_and (hl_ONE_ONE omega omega f) (hl_not (hl_ONTO omega omega f))) = 1.
claim Hf: (fun n :e omega => ordsucc n) :e omega :^: omega. { exact (u_lam_in omega omega (fun n => ordsucc n) (fun n Hn => omega_ordsucc n Hn)). }
claim Hone: forall f :e omega :^: omega, hl_ONE_ONE omega omega f :e 2. { let f. assume Hf'. exact (setexp_ap (omega :^: omega) 2 (hl_ONE_ONE omega omega) (hl_ONE_ONE_in omega omega omega_nonempty omega_nonempty) f Hf'). }
claim Honto: forall f :e omega :^: omega, hl_ONTO omega omega f :e 2. { let f. assume Hf'. exact (setexp_ap (omega :^: omega) 2 (hl_ONTO omega omega) (hl_ONTO_in omega omega omega_nonempty omega_nonempty) f Hf'). }
claim Hin: (fun f :e omega :^: omega => hl_and (hl_ONE_ONE omega omega f) (hl_not (hl_ONTO omega omega f))) :e 2 :^: (omega :^: omega).
{ exact (u_lam_in (omega :^: omega) 2 (fun f => hl_and (hl_ONE_ONE omega omega f) (hl_not (hl_ONTO omega omega f))) (fun f Hf' => setexp2_ap 2 2 2 hl_and hl_and_in (hl_ONE_ONE omega omega f) (Hone f Hf') (hl_not (hl_ONTO omega omega f)) (setexp_ap 2 2 hl_not hl_not_in (hl_ONTO omega omega f) (Honto f Hf')))). }
apply (hl_exists_char (omega :^: omega) (fun f :e omega :^: omega => hl_and (hl_ONE_ONE omega omega f) (hl_not (hl_ONTO omega omega f))) Hin). assume _ Hb. apply Hb.
witness (fun n :e omega => ordsucc n). apply andI. exact Hf.
rewrite (beta (omega :^: omega) (fun f => hl_and (hl_ONE_ONE omega omega f) (hl_not (hl_ONTO omega omega f))) (fun n :e omega => ordsucc n) Hf).
apply (hl_and_char (hl_ONE_ONE omega omega (fun n :e omega => ordsucc n)) (Hone (fun n :e omega => ordsucc n) Hf) (hl_not (hl_ONTO omega omega (fun n :e omega => ordsucc n))) (setexp_ap 2 2 hl_not hl_not_in (hl_ONTO omega omega (fun n :e omega => ordsucc n)) (Honto (fun n :e omega => ordsucc n) Hf))). assume _ Hb2. apply Hb2.
apply andI.
- rewrite (hl_ONE_ONE_unfold omega omega (fun n :e omega => ordsucc n) Hf).
  claim HP: forall x1 x2 :e omega, (fun n :e omega => ordsucc n) x1 = (fun n :e omega => ordsucc n) x2 -> x1 = x2.
  { let x1. assume H1. let x2. assume H2. assume H.
    claim H': ordsucc x1 = ordsucc x2. { exact (eq_trans_i (ordsucc x1) ((fun n :e omega => ordsucc n) x1) (ordsucc x2) (eq_sym_i ((fun n :e omega => ordsucc n) x1) (ordsucc x1) (beta omega (fun n => ordsucc n) x1 H1)) (eq_trans_i ((fun n :e omega => ordsucc n) x1) ((fun n :e omega => ordsucc n) x2) (ordsucc x2) H (beta omega (fun n => ordsucc n) x2 H2))). }
    exact (ordsucc_inj x1 x2 H'). }
  exact (If_i_1 (forall x1 x2 :e omega, (fun n :e omega => ordsucc n) x1 = (fun n :e omega => ordsucc n) x2 -> x1 = x2) 1 0 HP).
- apply (hl_not_char (hl_ONTO omega omega (fun n :e omega => ordsucc n)) (Honto (fun n :e omega => ordsucc n) Hf)). assume _ Hb3. apply Hb3.
  assume H.
  claim H1: (if forall y :e omega, exists x :e omega, y = (fun n :e omega => ordsucc n) x then 1 else 0) = 1. { exact ((hl_ONTO_unfold omega omega (fun n :e omega => ordsucc n) Hf) (fun hl__u hl__v => hl__u = 1) H). }
  claim HP: forall y :e omega, exists x :e omega, y = (fun n :e omega => ordsucc n) x. { apply (If_1_iff (forall y :e omega, exists x :e omega, y = (fun n :e omega => ordsucc n) x)). assume Hf' _. exact (Hf' H1). }
  apply (HP 0 (nat_p_omega 0 nat_0)). let x. assume Hx0. apply Hx0. assume Hx Heq.
  claim Heq': 0 = ordsucc x. { exact (eq_trans_i 0 ((fun n :e omega => ordsucc n) x) (ordsucc x) Heq (beta omega (fun n => ordsucc n) x Hx)). }
  exact (neq_ordsucc_0 x (eq_sym_i 0 (ordsucc x) Heq')).
Qed.

// ---- type definitions: the characterizing theorems of the generic subtype ----
Theorem hl_subtype_abs_rep : forall A P:set, forall a :e hl_subtype A P, hl_subtype_abs A P (hl_subtype_rep A P a) = a.
let A P a. assume Ha.
claim HaA: a :e A. { exact (SepE1 A (fun x => P x = 1) a Ha). }
claim Hr: hl_subtype_rep A P a = a. { exact (beta (hl_subtype A P) (fun x => x) a Ha). }
claim Hb: hl_subtype_abs A P a = if a :e hl_subtype A P then a else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True). { exact (beta A (fun x => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) a HaA). }
exact (eq_trans_i (hl_subtype_abs A P (hl_subtype_rep A P a)) (hl_subtype_abs A P a) a (f_equal (fun u => hl_subtype_abs A P u) (hl_subtype_rep A P a) a Hr) (eq_trans_i (hl_subtype_abs A P a) (if a :e hl_subtype A P then a else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) a Hb (If_i_1 (a :e hl_subtype A P) a (if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) Ha))).
Qed.
Theorem hl_subtype_rep_abs : forall A P:set, hl_subtype A P <> Empty -> forall r :e A, P r = 1 <-> hl_subtype_rep A P (hl_subtype_abs A P r) = r.
let A P. assume Hne. let r. assume Hr.
claim Hab: hl_subtype_abs A P r :e hl_subtype A P. { exact (setexp_ap A (hl_subtype A P) (hl_subtype_abs A P) (hl_subtype_abs_in A P Hne) r Hr). }
claim Hrep: hl_subtype_rep A P (hl_subtype_abs A P r) = hl_subtype_abs A P r. { exact (beta (hl_subtype A P) (fun x => x) (hl_subtype_abs A P r) Hab). }
claim Hb: hl_subtype_abs A P r = if r :e hl_subtype A P then r else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True). { exact (beta A (fun x => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) r Hr). }
apply iffI.
- assume HP. claim Hin: r :e hl_subtype A P. { exact (SepI A (fun x => P x = 1) r Hr HP). }
  exact (eq_trans_i (hl_subtype_rep A P (hl_subtype_abs A P r)) (hl_subtype_abs A P r) r Hrep (eq_trans_i (hl_subtype_abs A P r) (if r :e hl_subtype A P then r else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) r Hb (If_i_1 (r :e hl_subtype A P) r (if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) Hin))).
- assume H.
  claim Heq: hl_subtype_abs A P r = r. { exact (eq_trans_i (hl_subtype_abs A P r) (hl_subtype_rep A P (hl_subtype_abs A P r)) r (eq_sym_i (hl_subtype_rep A P (hl_subtype_abs A P r)) (hl_subtype_abs A P r) Hrep) H). }
  claim Hin: r :e hl_subtype A P. { exact (Heq (fun hl__u hl__v => hl__u :e hl_subtype A P) Hab). }
  exact (SepE2 A (fun x => P x = 1) r Hin).
Qed.
Theorem hl_subtype_nonempty_of : forall A P:set, forall t :e A, P t = 1 -> hl_subtype A P <> Empty.
let A P t. assume Ht HP. exact (nonempty_of_In (hl_subtype A P) t (SepI A (fun x => P x = 1) t Ht HP)).
Qed.
Theorem u_tydef_rep : forall A P:set, hl_subtype A P <> Empty -> P :e 2 :^: A -> forall r :e A, hl_eq 2 (P r) (hl_eq A (hl_subtype_rep A P (hl_subtype_abs A P r)) r) = 1.
let A P. assume Hne HP. let r. assume Hr.
claim HPr: P r :e 2. { exact (setexp_ap A 2 P HP r Hr). }
claim Hab: hl_subtype_abs A P r :e hl_subtype A P. { exact (setexp_ap A (hl_subtype A P) (hl_subtype_abs A P) (hl_subtype_abs_in A P Hne) r Hr). }
claim Hra: hl_subtype_rep A P (hl_subtype_abs A P r) :e A. { exact (setexp_ap (hl_subtype A P) A (hl_subtype_rep A P) (hl_subtype_rep_in A P) (hl_subtype_abs A P r) Hab). }
claim He: hl_eq A (hl_subtype_rep A P (hl_subtype_abs A P r)) r :e 2. { exact (setexp2_ap A A 2 (hl_eq A) (hl_eq_in A (nonempty_of_In A r Hr)) (hl_subtype_rep A P (hl_subtype_abs A P r)) Hra r Hr). }
apply (hl_subtype_rep_abs A P Hne r Hr). assume Hf Hb.
apply (u_deduct (P r) HPr (hl_eq A (hl_subtype_rep A P (hl_subtype_abs A P r)) r) He).
- assume H1. exact (Hb (u_eq_elim A (hl_subtype_rep A P (hl_subtype_abs A P r)) Hra r Hr H1)).
- assume H1. exact (u_eq_intro A (hl_subtype_rep A P (hl_subtype_abs A P r)) Hra r Hr (Hf H1)).
Qed.
