// hol2mg bridge library (docs/DESIGN.md §21.4–21.5): representation relations between the
// literal layer and the native layer, and compatibility theorems for the HOL logical
// constants.  Checked after mglib/native/*.mg and mglib/literal/model.mg (before _literal.mg,
// so this file may only mention constants of model.mg, the native modules and God1).
// Every theorem here is Qed; nothing is admitted.

// ---- Booleans as data: members of 2 ----
Theorem If_in_2 : forall p:prop, (if p then 1 else 0) :e 2.
let p. apply (xm p).
- assume Hp: p. rewrite (If_i_1 p 1 0 Hp). exact In_1_2.
- assume Hnp: ~ p. rewrite (If_i_0 p 1 0 Hnp). exact In_0_2.
Qed.

Theorem If_1_iff : forall p:prop, (if p then 1 else 0) = 1 <-> p.
let p. apply iffI.
- assume H: (if p then 1 else 0) = 1. apply (xm p).
  + assume Hp: p. exact Hp.
  + assume Hnp: ~ p. prove False. apply neq_0_1. rewrite <- H at 1. rewrite (If_i_0 p 1 0 Hnp). exact (fun q H => H).
- assume Hp: p. exact (If_i_1 p 1 0 Hp).
Qed.

Theorem In_2_cases : forall b :e 2, b = 1 \/ b = 0.
let b. assume Hb: b :e 2.
exact (cases_2 b Hb (fun b => b = 1 \/ b = 0) (orIR (0 = 1) (0 = 0) (fun q H => H)) (orIL (1 = 1) (1 = 0) (fun q H => H))).
Qed.

Theorem In_2_not_1 : forall b :e 2, b <> 1 -> b = 0.
let b. assume Hb: b :e 2. assume Hn: b <> 1.
apply (In_2_cases b Hb).
- assume H1: b = 1. exact (FalseE (Hn H1) (b = 0)).
- assume H0: b = 0. exact H0.
Qed.

// ---- subsets: the representation of a literal predicate F :e 2 :^: A, and the
//      characteristic function of a native subset / meta-predicate ----
Definition hl_rep : set -> set -> set := fun A F => {x :e A | F x = 1}.
Definition hl_chi : set -> set -> set := fun A s => fun x :e A => if x :e s then 1 else 0.
Definition hl_chip : set -> (set -> prop) -> set := fun A P => fun x :e A => if P x then 1 else 0.
Definition hl_lam : set -> (set -> set) -> set := fun A f => fun x :e A => f x.

Theorem hl_rep_Subq : forall A F:set, hl_rep A F c= A.
let A F. exact (Sep_Subq A (fun x => F x = 1)).
Qed.

Theorem hl_rep_iff : forall A F:set, forall x :e A, F x = 1 <-> x :e hl_rep A F.
let A F x. assume Hx: x :e A. apply iffI.
- assume H: F x = 1. exact (SepI A (fun x => F x = 1) x Hx H).
- assume H: x :e hl_rep A F. exact (SepE2 A (fun x => F x = 1) x H).
Qed.

Theorem hl_chi_Pi : forall A s:set, hl_chi A s :e 2 :^: A.
let A s. prove (fun x :e A => if x :e s then 1 else 0) :e Pi_ x :e A, 2.
apply (lam_Pi A (fun _ => 2) (fun x => if x :e s then 1 else 0)).
let x. assume _. exact (If_in_2 (x :e s)).
Qed.

Theorem hl_chi_iff : forall A s:set, forall x :e A, hl_chi A s x = 1 <-> x :e s.
let A s x. assume Hx: x :e A.
prove (fun x :e A => if x :e s then 1 else 0) x = 1 <-> x :e s.
rewrite (beta A (fun x => if x :e s then 1 else 0) x Hx).
exact (If_1_iff (x :e s)).
Qed.

Theorem hl_rep_chi : forall A s:set, s c= A -> hl_rep A (hl_chi A s) = s.
let A s. assume Hs: s c= A.
apply set_ext.
- let x. assume Hx: x :e hl_rep A (hl_chi A s).
  claim HxA: x :e A. { exact (hl_rep_Subq A (hl_chi A s) x Hx). }
  apply (hl_chi_iff A s x HxA).
  assume H1: hl_chi A s x = 1 -> x :e s. assume _.
  apply H1. apply (hl_rep_iff A (hl_chi A s) x HxA). assume _. assume H2: x :e hl_rep A (hl_chi A s) -> hl_chi A s x = 1. exact (H2 Hx).
- let x. assume Hx: x :e s.
  claim HxA: x :e A. { exact (Hs x Hx). }
  apply (hl_rep_iff A (hl_chi A s) x HxA). assume H1: hl_chi A s x = 1 -> x :e hl_rep A (hl_chi A s). assume _.
  apply H1. apply (hl_chi_iff A s x HxA). assume _. assume H2: x :e s -> hl_chi A s x = 1. exact (H2 Hx).
Qed.

Theorem hl_chip_Pi : forall A:set, forall P:set -> prop, hl_chip A P :e 2 :^: A.
let A P. prove (fun x :e A => if P x then 1 else 0) :e Pi_ x :e A, 2.
apply (lam_Pi A (fun _ => 2) (fun x => if P x then 1 else 0)).
let x. assume _. exact (If_in_2 (P x)).
Qed.

Theorem hl_chip_iff : forall A:set, forall P:set -> prop, forall x :e A, hl_chip A P x = 1 <-> P x.
let A P x. assume Hx: x :e A.
prove (fun x :e A => if P x then 1 else 0) x = 1 <-> P x.
rewrite (beta A (fun x => if P x then 1 else 0) x Hx).
exact (If_1_iff (P x)).
Qed.

Theorem hl_lam_Pi : forall A B:set, forall f:set -> set, (forall x :e A, f x :e B) -> hl_lam A f :e B :^: A.
let A B f. assume Hf: forall x :e A, f x :e B.
prove (fun x :e A => f x) :e Pi_ x :e A, B.
exact (lam_Pi A (fun _ => B) f Hf).
Qed.

Theorem hl_lam_ap : forall A:set, forall f:set -> set, forall x :e A, hl_lam A f x = f x.
let A f x. assume Hx: x :e A. exact (beta A f x Hx).
Qed.

Theorem ap_Pi_2 : forall A F:set, F :e 2 :^: A -> forall x :e A, F x :e 2.
let A F. assume HF: F :e 2 :^: A. let x. assume Hx: x :e A.
exact (ap_Pi A (fun _ => 2) F x HF Hx).
Qed.

Theorem setexp_ap : forall A B F:set, F :e B :^: A -> forall x :e A, F x :e B.
let A B F. assume HF: F :e B :^: A. let x. assume Hx: x :e A.
exact (ap_Pi A (fun _ => B) F x HF Hx).
Qed.

// ---- equality and choice ----
Theorem hl_eq_iff : forall A:set, forall x y :e A, hl_eq A x y = 1 <-> x = y.
let A x. assume Hx: x :e A. let y. assume Hy: y :e A.
prove (fun x :e A => fun y :e A => if x = y then 1 else 0) x y = 1 <-> x = y.
rewrite (beta A (fun x => fun y :e A => if x = y then 1 else 0) x Hx).
rewrite (beta A (fun y => if x = y then 1 else 0) y Hy).
exact (If_1_iff (x = y)).
Qed.

Theorem hl_select_eq : forall A P:set, P :e 2 :^: A -> hl_select A P = choose_in A (fun x => P x = 1).
let A P. assume HP: P :e 2 :^: A.
prove (fun P :e 2 :^: A => choose_in A (fun x => P x = 1)) P = choose_in A (fun x => P x = 1).
exact (beta (2 :^: A) (fun P => choose_in A (fun x => P x = 1)) P HP).
Qed.

// ---- implication congruences used by generated bridge proofs ----
Theorem imp_and : forall a a' b b':prop, (a -> a') -> (b -> b') -> a /\ b -> a' /\ b'.
let a a' b b'. assume Ha Hb H. apply H. assume H1 H2. exact (andI a' b' (Ha H1) (Hb H2)).
Qed.
Theorem imp_or : forall a a' b b':prop, (a -> a') -> (b -> b') -> a \/ b -> a' \/ b'.
let a a' b b'. assume Ha Hb H. apply H.
- assume H1. exact (orIL a' b' (Ha H1)).
- assume H2. exact (orIR a' b' (Hb H2)).
Qed.
Theorem imp_imp : forall a a' b b':prop, (a' -> a) -> (b -> b') -> (a -> b) -> a' -> b'.
let a a' b b'. assume Ha Hb H H1. exact (Hb (H (Ha H1))).
Qed.
Theorem imp_not : forall a a':prop, (a' -> a) -> ~ a -> ~ a'.
let a a'. assume Ha H H1. exact (H (Ha H1)).
Qed.
Theorem imp_iff : forall a a' b b':prop, (a -> a') -> (a' -> a) -> (b -> b') -> (b' -> b) -> (a <-> b) -> (a' <-> b').
let a a' b b'. assume Ha1 Ha2 Hb1 Hb2 H. apply H. assume H1 H2. apply iffI.
- assume H3. exact (Hb1 (H1 (Ha2 H3))).
- assume H3. exact (Ha1 (H2 (Hb2 H3))).
Qed.
Theorem imp_eq : forall a a' b b':set, a = a' -> b = b' -> a = b -> a' = b'.
let a a' b b'. assume H1 H2 H3. rewrite <- H1. rewrite <- H2. exact H3.
Qed.
Theorem imp_forall_in : forall A:set, forall P Q:set -> prop, (forall x :e A, P x -> Q x) -> (forall x :e A, P x) -> forall x :e A, Q x.
let A P Q. assume H H1. let x. assume Hx. exact (H x Hx (H1 x Hx)).
Qed.
Theorem imp_exists_in : forall A:set, forall P Q:set -> prop, (forall x :e A, P x -> Q x) -> (exists x :e A, P x) -> exists x :e A, Q x.
let A P Q. assume H H1. apply H1. let x. assume Hx0. apply Hx0. assume Hx HP. witness x. exact (andI (x :e A) (Q x) Hx (H x Hx HP)).
Qed.

// quantifier domain changes: literal functions/predicates/subsets/Booleans versus native views
Theorem imp_forall_pred : forall A:set, forall L:set -> prop, forall N:(set -> prop) -> prop,
  (forall P:set -> prop, L (hl_chip A P) -> N P) -> (forall F :e 2 :^: A, L F) -> forall P:set -> prop, N P.
let A L N. assume H H1. let P. exact (H P (H1 (hl_chip A P) (hl_chip_Pi A P))).
Qed.
Theorem imp_forall_pred_rev : forall A:set, forall L:set -> prop, forall N:(set -> prop) -> prop,
  (forall F :e 2 :^: A, N (fun x => F x = 1) -> L F) -> (forall P:set -> prop, N P) -> forall F :e 2 :^: A, L F.
let A L N. assume H H1. let F. assume HF. exact (H F HF (H1 (fun x => F x = 1))).
Qed.
Theorem imp_exists_pred : forall A:set, forall L:set -> prop, forall N:(set -> prop) -> prop,
  (forall F :e 2 :^: A, L F -> N (fun x => F x = 1)) -> (exists F :e 2 :^: A, L F) -> exists P:set -> prop, N P.
let A L N. assume H H1. apply H1. let F. assume HF0. apply HF0. assume HF HL. witness (fun x => F x = 1). exact (H F HF HL).
Qed.
Theorem imp_exists_pred_rev : forall A:set, forall L:set -> prop, forall N:(set -> prop) -> prop,
  (forall P:set -> prop, N P -> L (hl_chip A P)) -> (exists P:set -> prop, N P) -> exists F :e 2 :^: A, L F.
let A L N. assume H H1. apply H1. let P. assume HP. witness (hl_chip A P). exact (andI (hl_chip A P :e 2 :^: A) (L (hl_chip A P)) (hl_chip_Pi A P) (H P HP)).
Qed.
Theorem imp_forall_fun : forall A B:set, forall L:set -> prop, forall N:(set -> set) -> prop,
  (forall f:set -> set, (forall x :e A, f x :e B) -> L (hl_lam A f) -> N f) -> (forall F :e B :^: A, L F) -> forall f:set -> set, (forall x :e A, f x :e B) -> N f.
let A B L N. assume H H1. let f. assume Hf. exact (H f Hf (H1 (hl_lam A f) (hl_lam_Pi A B f Hf))).
Qed.
Theorem imp_forall_fun_rev : forall A B:set, forall L:set -> prop, forall N:(set -> set) -> prop,
  (forall F :e B :^: A, N (fun x => F x) -> L F) -> (forall f:set -> set, (forall x :e A, f x :e B) -> N f) -> forall F :e B :^: A, L F.
let A B L N. assume H H1. let F. assume HF. exact (H F HF (H1 (fun x => F x) (setexp_ap A B F HF))).
Qed.
Theorem imp_exists_fun : forall A B:set, forall L:set -> prop, forall N:(set -> set) -> prop,
  (forall F :e B :^: A, L F -> N (fun x => F x)) -> (exists F :e B :^: A, L F) -> exists f:set -> set, (forall x :e A, f x :e B) /\ N f.
let A B L N. assume H H1. apply H1. let F. assume HF0. apply HF0. assume HF HL. witness (fun x => F x).
exact (andI (forall x :e A, F x :e B) (N (fun x => F x)) (setexp_ap A B F HF) (H F HF HL)).
Qed.
Theorem imp_exists_fun_rev : forall A B:set, forall L:set -> prop, forall N:(set -> set) -> prop,
  (forall f:set -> set, (forall x :e A, f x :e B) -> N f -> L (hl_lam A f)) -> (exists f:set -> set, (forall x :e A, f x :e B) /\ N f) -> exists F :e B :^: A, L F.
let A B L N. assume H H1. apply H1. let f. assume Hf0. apply Hf0. assume Hf HN. witness (hl_lam A f).
exact (andI (hl_lam A f :e B :^: A) (L (hl_lam A f)) (hl_lam_Pi A B f Hf) (H f Hf HN)).
Qed.
Theorem imp_forall_sub : forall A:set, forall L N:set -> prop,
  (forall s c= A, L (hl_chi A s) -> N s) -> (forall F :e 2 :^: A, L F) -> forall s c= A, N s.
let A L N. assume H H1. let s. assume Hs. exact (H s Hs (H1 (hl_chi A s) (hl_chi_Pi A s))).
Qed.
Theorem imp_forall_sub_rev : forall A:set, forall L N:set -> prop,
  (forall F :e 2 :^: A, N (hl_rep A F) -> L F) -> (forall s c= A, N s) -> forall F :e 2 :^: A, L F.
let A L N. assume H H1. let F. assume HF. exact (H F HF (H1 (hl_rep A F) (hl_rep_Subq A F))).
Qed.
Theorem imp_exists_sub : forall A:set, forall L N:set -> prop,
  (forall F :e 2 :^: A, L F -> N (hl_rep A F)) -> (exists F :e 2 :^: A, L F) -> exists s c= A, N s.
let A L N. assume H H1. apply H1. let F. assume HF0. apply HF0. assume HF HL. witness (hl_rep A F).
exact (andI (hl_rep A F c= A) (N (hl_rep A F)) (hl_rep_Subq A F) (H F HF HL)).
Qed.
Theorem imp_exists_sub_rev : forall A:set, forall L N:set -> prop,
  (forall s c= A, N s -> L (hl_chi A s)) -> (exists s c= A, N s) -> exists F :e 2 :^: A, L F.
let A L N. assume H H1. apply H1. let s. assume Hs0. apply Hs0. assume Hs HN. witness (hl_chi A s).
exact (andI (hl_chi A s :e 2 :^: A) (L (hl_chi A s)) (hl_chi_Pi A s) (H s Hs HN)).
Qed.
Theorem imp_forall_bool : forall L:set -> prop, forall N:prop -> prop,
  (forall p:prop, L (if p then 1 else 0) -> N p) -> (forall b :e 2, L b) -> forall p:prop, N p.
let L N. assume H H1. let p. exact (H p (H1 (if p then 1 else 0) (If_in_2 p))).
Qed.
Theorem imp_forall_bool_rev : forall L:set -> prop, forall N:prop -> prop,
  (forall b :e 2, N (b = 1) -> L b) -> (forall p:prop, N p) -> forall b :e 2, L b.
let L N. assume H H1. let b. assume Hb. exact (H b Hb (H1 (b = 1))).
Qed.
Theorem imp_exists_bool : forall L:set -> prop, forall N:prop -> prop,
  (forall b :e 2, L b -> N (b = 1)) -> (exists b :e 2, L b) -> exists p:prop, N p.
let L N. assume H H1. apply H1. let b. assume Hb0. apply Hb0. assume Hb HL. witness (b = 1). exact (H b Hb HL).
Qed.
Theorem imp_exists_bool_rev : forall L:set -> prop, forall N:prop -> prop,
  (forall p:prop, N p -> L (if p then 1 else 0)) -> (exists p:prop, N p) -> exists b :e 2, L b.
let L N. assume H H1. apply H1. let p. assume Hp. witness (if p then 1 else 0). exact (andI ((if p then 1 else 0) :e 2) (L (if p then 1 else 0)) (If_in_2 p) (H p Hp)).
Qed.

// empty carriers
Theorem forall_in_Empty : forall P:set -> prop, forall x :e Empty, P x.
let P x. assume Hx. exact (FalseE (EmptyE x Hx) (P x)).
Qed.
Theorem not_exists_in_Empty : forall P:set -> prop, ~ exists x :e Empty, P x.
let P. assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx _. exact (EmptyE x Hx).
Qed.
Theorem nonempty_of_In : forall A x:set, x :e A -> A <> Empty.
let A x. assume Hx HA. apply (EmptyE x). rewrite <- HA. exact Hx.
Qed.
Theorem setexp_nonempty : forall A B:set, B <> Empty -> B :^: A <> Empty.
let A B. assume HB. assume HE: B :^: A = Empty.
claim Hex: exists y, y :e B.
{ apply (xm (exists y, y :e B)).
  - assume H. exact H.
  - assume H. prove False. apply HB. apply Empty_eq. let y. assume Hy. apply H. witness y. exact Hy. }
claim L: (fun x :e A => Eps_i (fun y => y :e B)) :e B :^: A.
{ prove (fun x :e A => Eps_i (fun y => y :e B)) :e Pi_ x :e A, B.
  apply (lam_Pi A (fun _ => B) (fun x => Eps_i (fun y => y :e B))).
  let x. assume _. exact (Eps_i_ex (fun y => y :e B) Hex). }
claim L2: (fun x :e A => Eps_i (fun y => y :e B)) :e Empty.
{ rewrite <- HE. exact L. }
exact (EmptyE (fun x :e A => Eps_i (fun y => y :e B)) L2).
Qed.
Theorem setprod_nonempty : forall A B:set, A <> Empty -> B <> Empty -> A :*: B <> Empty.
let A B. assume HA HB.
apply (xm (exists x, x :e A)).
- assume H1. apply H1. let x. assume Hx.
  apply (xm (exists y, y :e B)).
  + assume H2. apply H2. let y. assume Hy.
    apply (nonempty_of_In (A :*: B) (x, y)).
    prove (x, y) :e Sigma_ x :e A, B.
    rewrite <- (tuple_pair x y).
    exact (pair_Sigma A (fun _ => B) x Hx y Hy).
  + assume H2. prove False. apply HB. apply Empty_eq. let y. assume Hy. apply H2. witness y. exact Hy.
- assume H1. prove False. apply HA. apply Empty_eq. let x. assume Hx. apply H1. witness x. exact Hx.
Qed.
Theorem omega_nonempty : omega <> Empty.
exact (nonempty_of_In omega 0 (nat_p_omega 0 nat_0)).
Qed.
Theorem R_nonempty : R <> Empty.
exact (nonempty_of_In R 0 real_0).
Qed.
Theorem two_nonempty : 2 <> Empty.
exact (nonempty_of_In 2 0 In_0_2).
Qed.
Theorem one_nonempty : 1 <> Empty.
exact (nonempty_of_In 1 0 In_0_1).
Qed.
Theorem finseq_nonempty : forall A:set, finseq A <> Empty.
let A. exact (nonempty_of_In (finseq A) seq_nil (seq_nil_finseq A)).
Qed.

// ---- equality utilities for generated proof terms ----
Theorem eq_sym_i : forall a b:set, a = b -> b = a.
let a b. assume H. exact (H (fun u v => u = a) (fun q H => H)).
Qed.
Theorem imp_refl : forall a:prop, a -> a.
let a. assume H. exact H.
Qed.
Theorem imp_trans : forall a b c:prop, (a -> b) -> (b -> c) -> a -> c.
let a b c. assume H1 H2 H. exact (H2 (H1 H)).
Qed.
Theorem eq_to_pw : forall A F G:set, F = G -> forall x :e A, F x = G x.
let A F G. assume H. let x. assume _. exact (H (fun u v => F x = u x) (fun q H => H)).
Qed.
Theorem rep_to_pw : forall A F s:set, F :e 2 :^: A -> hl_rep A F = s -> forall x :e A, F x = 1 <-> x :e s.
let A F s. assume HF Hs. let x. assume Hx.
exact (Hs (fun u v => F x = 1 <-> x :e u) (hl_rep_iff A F x Hx)).
Qed.
Theorem pw_to_eq : forall A B F:set, forall f:set -> set, F :e B :^: A -> (forall x :e A, F x = f x) -> F = hl_lam A f.
let A B F f. assume HF H.
claim Hl: hl_lam A f :e B :^: A.
{ prove (fun x :e A => f x) :e Pi_ x :e A, B. apply (lam_Pi A (fun _ => B) f). let x. assume Hx. rewrite <- (H x Hx). exact (ap_Pi A (fun _ => B) F x HF Hx). }
apply (Pi_ext A (fun _ => B) F HF (hl_lam A f) Hl).
let x. assume Hx. rewrite (hl_lam_ap A f x Hx). exact (H x Hx).
Qed.
Theorem rep_eq_fwd : forall A F G s t:set, hl_rep A F = s -> hl_rep A G = t -> F = G -> s = t.
let A F G s t. assume HF HG H.
rewrite <- HF. rewrite <- HG. exact (H (fun u v => hl_rep A F = hl_rep A u) (fun q H => H)).
Qed.
Theorem hl_rep_inj : forall A F G:set, F :e 2 :^: A -> G :e 2 :^: A -> hl_rep A F = hl_rep A G -> F = G.
let A F G. assume HF HG H.
apply (Pi_ext A (fun _ => 2) F HF G HG).
let x. assume Hx.
claim HFx: F x :e 2. { exact (ap_Pi A (fun _ => 2) F x HF Hx). }
claim HGx: G x :e 2. { exact (ap_Pi A (fun _ => 2) G x HG Hx). }
claim L: F x = 1 <-> G x = 1.
{ apply (iff_trans (F x = 1) (x :e hl_rep A F) (G x = 1) (hl_rep_iff A F x Hx)).
  rewrite H. exact (iff_sym (G x = 1) (x :e hl_rep A G) (hl_rep_iff A G x Hx)). }
apply L. assume L1 L2.
apply (In_2_cases (F x) HFx).
- assume H1: F x = 1. rewrite H1. exact (eq_sym_i (G x) 1 (L1 H1)).
- assume H0: F x = 0. rewrite H0.
  apply (In_2_cases (G x) HGx).
  + assume H1: G x = 1. prove False. apply neq_0_1. exact (H0 (fun u v => u = 1) (L2 H1)).
  + assume H1: G x = 0. exact (eq_sym_i (G x) 0 H1).
Qed.
Theorem rep_eq_bwd : forall A F G s t:set, F :e 2 :^: A -> G :e 2 :^: A -> hl_rep A F = s -> hl_rep A G = t -> s = t -> F = G.
let A F G s t. assume HF HG Hs Ht H.
apply (hl_rep_inj A F G HF HG). rewrite Hs. rewrite Ht. exact H.
Qed.
Theorem eq_Pi_pointwise : forall A B F G:set, F :e B :^: A -> G :e B :^: A -> (F = G <-> forall x :e A, F x = G x).
let A B F G. assume HF HG. apply iffI.
- assume H. exact (eq_to_pw A F G H).
- assume H. exact (Pi_ext A (fun _ => B) F HF G HG H).
Qed.
Theorem If_i_in : forall p:prop, forall A x y:set, x :e A -> y :e A -> (if p then x else y) :e A.
let p A x y. assume Hx Hy. apply (xm p).
- assume Hp. rewrite (If_i_1 p x y Hp). exact Hx.
- assume Hnp. rewrite (If_i_0 p x y Hnp). exact Hy.
Qed.
Theorem setsum_nonempty_L : forall A B:set, A <> Empty -> A :+: B <> Empty.
let A B. assume HA. assume HE: A :+: B = Empty.
claim Hex: exists x, x :e A.
{ apply (xm (exists x, x :e A)).
  - assume H. exact H.
  - assume H. prove False. apply HA. apply Empty_eq. let x. assume Hx. apply H. witness x. exact Hx. }
apply Hex. let x. assume Hx.
claim L: Inj0 x :e A :+: B. { exact (Inj0_setsum A B x Hx). }
apply (EmptyE (Inj0 x)). rewrite <- HE. exact L.
Qed.

Theorem hl_subtype_nonempty : forall A P:set, (exists x :e A, P x = 1) -> hl_subtype A P <> Empty.
let A P. assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx HP.
exact (nonempty_of_In (hl_subtype A P) x (SepI A (fun x => P x = 1) x Hx HP)).
Qed.

// ---- HOL Light recursive definitions: c = (@f. forall tag, CLAUSES (f tag)) tag0 ----
// The chosen function satisfies the clauses at every tag, in particular at tag0.
Theorem hl_recdef : forall C T:set, forall P:set -> prop, forall tag0 :e T,
  (exists g :e C, P g) ->
  P (hl_select (C :^: T) (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) tag0)
  /\ hl_select (C :^: T) (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) tag0 :e C.
let C T P tag0. assume Ht0 Hex.
claim HF: (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) :e 2 :^: (C :^: T).
{ prove (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) :e Pi_ f :e C :^: T, 2.
  apply (lam_Pi (C :^: T) (fun _ => 2) (fun f => if forall tag :e T, P (f tag) then 1 else 0)).
  let f. assume _. exact (If_in_2 (forall tag :e T, P (f tag))). }
rewrite (hl_select_eq (C :^: T) (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) HF).
claim Hex2: exists f :e C :^: T, (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) f = 1.
{ apply Hex. let g. assume Hg0. apply Hg0. assume Hg HPg.
  claim Hconst: (fun tag :e T => g) :e C :^: T.
  { prove (fun tag :e T => g) :e Pi_ tag :e T, C. apply (lam_Pi T (fun _ => C) (fun tag => g)). let tag. assume _. exact Hg. }
  witness (fun tag :e T => g). apply andI.
  - exact Hconst.
  - rewrite (beta (C :^: T) (fun f => if forall tag :e T, P (f tag) then 1 else 0) (fun tag :e T => g) Hconst).
    apply (If_i_1 (forall tag :e T, P ((fun tag :e T => g) tag)) 1 0).
    let tag. assume Htag. rewrite (beta T (fun tag => g) tag Htag). exact HPg. }
apply (choose_in_spec (C :^: T) (fun f => (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) f = 1) Hex2).
assume Hc1 Hc2.
claim Hall: forall tag :e T, P (choose_in (C :^: T) (fun f => (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) f = 1) tag).
{ apply (If_1_iff (forall tag :e T, P (choose_in (C :^: T) (fun f => (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) f = 1) tag))).
  assume H _. apply H.
  exact ((beta (C :^: T) (fun f => if forall tag :e T, P (f tag) then 1 else 0) (choose_in (C :^: T) (fun f => (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) f = 1)) Hc1) (fun u v => u = 1) Hc2). }
apply andI.
- exact (Hall tag0 Ht0).
- exact (ap_Pi T (fun _ => C) (choose_in (C :^: T) (fun f => (fun f :e C :^: T => if forall tag :e T, P (f tag) then 1 else 0) f = 1)) tag0 Hc1 Ht0).
Qed.


// variant without a tag argument
Theorem hl_recdef0 : forall C:set, forall P:set -> prop,
  (exists g :e C, P g) ->
  P (hl_select C (fun f :e C => if P f then 1 else 0)) /\ hl_select C (fun f :e C => if P f then 1 else 0) :e C.
let C P. assume Hex.
claim HF: (fun f :e C => if P f then 1 else 0) :e 2 :^: C.
{ prove (fun f :e C => if P f then 1 else 0) :e Pi_ f :e C, 2.
  apply (lam_Pi C (fun _ => 2) (fun f => if P f then 1 else 0)). let f. assume _. exact (If_in_2 (P f)). }
rewrite (hl_select_eq C (fun f :e C => if P f then 1 else 0) HF).
claim Hex2: exists f :e C, (fun f :e C => if P f then 1 else 0) f = 1.
{ apply Hex. let g. assume Hg0. apply Hg0. assume Hg HPg. witness g. apply andI.
  - exact Hg.
  - rewrite (beta C (fun f => if P f then 1 else 0) g Hg). exact (If_i_1 (P g) 1 0 HPg). }
apply (choose_in_spec C (fun f => (fun f :e C => if P f then 1 else 0) f = 1) Hex2).
assume Hc1 Hc2. apply andI.
- apply (If_1_iff (P (choose_in C (fun f => (fun f :e C => if P f then 1 else 0) f = 1)))). assume H _. apply H.
  exact ((beta C (fun f => if P f then 1 else 0) (choose_in C (fun f => (fun f :e C => if P f then 1 else 0) f = 1)) Hc1) (fun u v => u = 1) Hc2).
- exact Hc1.
Qed.

// ---- equational reasoning by proof terms (rewrite must not be used in goals containing
//      mul_SNo/exp_SNo_nat: Megalodon's rewrite compares subterms up to unfolding) ----
Theorem eq_trans_i : forall a b c:set, a = b -> b = c -> a = c.
let a b c. assume H1 H2. exact (H2 (fun u v => a = u) H1).
Qed.
Theorem f_equal : forall f:set -> set, forall a b:set, a = b -> f a = f b.
let f a b. assume H. exact (H (fun u v => f a = f u) (fun q H => H)).
Qed.
Theorem f_equal2 : forall f:set -> set -> set, forall a a' b b':set, a = a' -> b = b' -> f a b = f a' b'.
let f a a' b b'. assume H1 H2. exact (eq_trans_i (f a b) (f a' b) (f a' b') (H1 (fun u v => f a b = f u b) (fun q H => H)) (H2 (fun u v => f a' b = f a' u) (fun q H => H))).
Qed.

// ---- iff congruences ----
Theorem or_iff_cong : forall a a' b b':prop, (a <-> a') -> (b <-> b') -> (a \/ b <-> a' \/ b').
let a a' b b'. assume Ha Hb. apply Ha. assume Ha1 Ha2. apply Hb. assume Hb1 Hb2. apply iffI.
- assume H. apply H.
  + assume H1. exact (orIL a' b' (Ha1 H1)).
  + assume H1. exact (orIR a' b' (Hb1 H1)).
- assume H. apply H.
  + assume H1. exact (orIL a b (Ha2 H1)).
  + assume H1. exact (orIR a b (Hb2 H1)).
Qed.
Theorem and_iff_cong : forall a a' b b':prop, (a <-> a') -> (b <-> b') -> (a /\ b <-> a' /\ b').
let a a' b b'. assume Ha Hb. apply Ha. assume Ha1 Ha2. apply Hb. assume Hb1 Hb2. apply iffI.
- assume H. apply H. assume H1 H2. exact (andI a' b' (Ha1 H1) (Hb1 H2)).
- assume H. apply H. assume H1 H2. exact (andI a b (Ha2 H1) (Hb2 H2)).
Qed.
Theorem not_iff_cong : forall a a':prop, (a <-> a') -> (~ a <-> ~ a').
let a a'. assume Ha. apply Ha. assume Ha1 Ha2. apply iffI.
- assume H H1. exact (H (Ha2 H1)).
- assume H H1. exact (H (Ha1 H1)).
Qed.
Theorem iff_False_of_not : forall a:prop, ~ a -> (a <-> False).
let a. assume H. apply iffI.
- assume H1. exact (H H1).
- assume H1. exact (FalseE H1 a).
Qed.

// ---- two-argument meta-functions and meta-predicates ----
Definition hl_chip2 : set -> set -> (set -> set -> prop) -> set := fun A B P => fun x :e A => fun y :e B => if P x y then 1 else 0.
Definition hl_lam2 : set -> set -> (set -> set -> set) -> set := fun A B f => fun x :e A => fun y :e B => f x y.
Theorem hl_chip2_Pi : forall A B:set, forall P:set -> set -> prop, hl_chip2 A B P :e (2 :^: B) :^: A.
let A B P. prove (fun x :e A => fun y :e B => if P x y then 1 else 0) :e Pi_ x :e A, 2 :^: B.
apply (lam_Pi A (fun _ => 2 :^: B) (fun x => fun y :e B => if P x y then 1 else 0)).
let x. assume _. prove (fun y :e B => if P x y then 1 else 0) :e Pi_ y :e B, 2.
apply (lam_Pi B (fun _ => 2) (fun y => if P x y then 1 else 0)). let y. assume _. exact (If_in_2 (P x y)).
Qed.
Theorem hl_chip2_iff : forall A B:set, forall P:set -> set -> prop, forall x :e A, forall y :e B, hl_chip2 A B P x y = 1 <-> P x y.
let A B P x. assume Hx. let y. assume Hy.
prove (fun x :e A => fun y :e B => if P x y then 1 else 0) x y = 1 <-> P x y.
rewrite (beta A (fun x => fun y :e B => if P x y then 1 else 0) x Hx).
rewrite (beta B (fun y => if P x y then 1 else 0) y Hy).
exact (If_1_iff (P x y)).
Qed.
Theorem hl_lam2_Pi : forall A B C:set, forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> hl_lam2 A B f :e (C :^: B) :^: A.
let A B C f. assume Hf. prove (fun x :e A => fun y :e B => f x y) :e Pi_ x :e A, C :^: B.
apply (lam_Pi A (fun _ => C :^: B) (fun x => fun y :e B => f x y)).
let x. assume Hx. prove (fun y :e B => f x y) :e Pi_ y :e B, C.
apply (lam_Pi B (fun _ => C) (fun y => f x y)). let y. assume Hy. exact (Hf x Hx y Hy).
Qed.
Theorem hl_lam2_ap : forall A B:set, forall f:set -> set -> set, forall x :e A, forall y :e B, hl_lam2 A B f x y = f x y.
let A B f x. assume Hx. let y. assume Hy.
prove (fun x :e A => fun y :e B => f x y) x y = f x y.
rewrite (beta A (fun x => fun y :e B => f x y) x Hx). exact (beta B (fun y => f x y) y Hy).
Qed.
Theorem setexp2_ap_closure : forall A B C F:set, F :e (C :^: B) :^: A -> forall x :e A, forall y :e B, F x y :e C.
let A B C F. assume HF. let x. assume Hx. let y. assume Hy.
exact (setexp_ap B C (F x) (setexp_ap A (C :^: B) F HF x Hx) y Hy).
Qed.
Theorem imp_forall_pred2 : forall A B:set, forall L:set -> prop, forall N:(set -> set -> prop) -> prop,
  (forall P:set -> set -> prop, L (hl_chip2 A B P) -> N P) -> (forall F :e (2 :^: B) :^: A, L F) -> forall P:set -> set -> prop, N P.
let A B L N. assume H H1. let P. exact (H P (H1 (hl_chip2 A B P) (hl_chip2_Pi A B P))).
Qed.
Theorem imp_forall_pred2_rev : forall A B:set, forall L:set -> prop, forall N:(set -> set -> prop) -> prop,
  (forall F :e (2 :^: B) :^: A, N (fun x y => F x y = 1) -> L F) -> (forall P:set -> set -> prop, N P) -> forall F :e (2 :^: B) :^: A, L F.
let A B L N. assume H H1. let F. assume HF. exact (H F HF (H1 (fun x y => F x y = 1))).
Qed.
Theorem imp_exists_pred2 : forall A B:set, forall L:set -> prop, forall N:(set -> set -> prop) -> prop,
  (forall F :e (2 :^: B) :^: A, L F -> N (fun x y => F x y = 1)) -> (exists F :e (2 :^: B) :^: A, L F) -> exists P:set -> set -> prop, N P.
let A B L N. assume H H1. apply H1. let F. assume HF0. apply HF0. assume HF HL. witness (fun x y => F x y = 1). exact (H F HF HL).
Qed.
Theorem imp_exists_pred2_rev : forall A B:set, forall L:set -> prop, forall N:(set -> set -> prop) -> prop,
  (forall P:set -> set -> prop, N P -> L (hl_chip2 A B P)) -> (exists P:set -> set -> prop, N P) -> exists F :e (2 :^: B) :^: A, L F.
let A B L N. assume H H1. apply H1. let P. assume HP. witness (hl_chip2 A B P). exact (andI (hl_chip2 A B P :e (2 :^: B) :^: A) (L (hl_chip2 A B P)) (hl_chip2_Pi A B P) (H P HP)).
Qed.
Theorem imp_forall_fun2 : forall A B C:set, forall L:set -> prop, forall N:(set -> set -> set) -> prop,
  (forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> L (hl_lam2 A B f) -> N f) -> (forall F :e (C :^: B) :^: A, L F) -> forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> N f.
let A B C L N. assume H H1. let f. assume Hf. exact (H f Hf (H1 (hl_lam2 A B f) (hl_lam2_Pi A B C f Hf))).
Qed.
Theorem imp_forall_fun2_rev : forall A B C:set, forall L:set -> prop, forall N:(set -> set -> set) -> prop,
  (forall F :e (C :^: B) :^: A, N (fun x y => F x y) -> L F) -> (forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> N f) -> forall F :e (C :^: B) :^: A, L F.
let A B C L N. assume H H1. let F. assume HF. exact (H F HF (H1 (fun x y => F x y) (setexp2_ap_closure A B C F HF))).
Qed.
Theorem imp_exists_fun2 : forall A B C:set, forall L:set -> prop, forall N:(set -> set -> set) -> prop,
  (forall F :e (C :^: B) :^: A, L F -> N (fun x y => F x y)) -> (exists F :e (C :^: B) :^: A, L F) -> exists f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) /\ N f.
let A B C L N. assume H H1. apply H1. let F. assume HF0. apply HF0. assume HF HL. witness (fun x y => F x y).
exact (andI (forall x :e A, forall y :e B, F x y :e C) (N (fun x y => F x y)) (setexp2_ap_closure A B C F HF) (H F HF HL)).
Qed.
Theorem imp_exists_fun2_rev : forall A B C:set, forall L:set -> prop, forall N:(set -> set -> set) -> prop,
  (forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> N f -> L (hl_lam2 A B f)) -> (exists f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) /\ N f) -> exists F :e (C :^: B) :^: A, L F.
let A B C L N. assume H H1. apply H1. let f. assume Hf0. apply Hf0. assume Hf HN. witness (hl_lam2 A B f).
exact (andI (hl_lam2 A B f :e (C :^: B) :^: A) (L (hl_lam2 A B f)) (hl_lam2_Pi A B C f Hf) (H f Hf HN)).
Qed.

// ---- empty-carrier identities (used by generated empty-case proofs) ----
Theorem binintersect_Empty_L : forall X:set, Empty :/\: X = Empty.
let X. apply Empty_eq. let x. assume H. exact (EmptyE x (binintersectE1 Empty X x H)).
Qed.
Theorem binintersect_Empty_R : forall X:set, X :/\: Empty = Empty.
let X. apply Empty_eq. let x. assume H. exact (EmptyE x (binintersectE2 X Empty x H)).
Qed.
Theorem setminus_Empty_L : forall X:set, Empty :\: X = Empty.
let X. apply Empty_eq. let x. assume H. exact (EmptyE x (setminusE1 Empty X x H)).
Qed.
Theorem setminus_Empty_R : forall X:set, X :\: Empty = X.
let X. apply set_ext.
- let x. assume H. exact (setminusE1 X Empty x H).
- let x. assume H. exact (setminusI X Empty x H (EmptyE x)).
Qed.
Theorem Union_Empty : Union Empty = Empty.
apply Empty_eq. let x. assume H. apply (UnionE_impred Empty x H). let Y. assume _ HY. exact (EmptyE Y HY).
Qed.
Theorem ap_Empty : forall x:set, Empty x = Empty.
let x. apply Empty_eq. let y. assume H. apply (ReplSepE_impred Empty (fun z => exists w, z = setsum x w) proj1 y H). let z. assume Hz _ _. exact (EmptyE z Hz).
Qed.
Theorem ReplSep_Empty : forall P:set -> prop, forall F:set -> set, {F x | x :e Empty, P x} = Empty.
let P F. apply Empty_eq. let y. assume H. apply (ReplSepE_impred Empty P F y H). let x. assume Hx _ _. exact (EmptyE x Hx).
Qed.
Theorem Sigma_Empty : forall Y:set -> set, (Sigma_ x :e Empty, Y x) = Empty.
let Y. prove (\/_ x :e Empty, {setsum x y | y :e Y x}) = Empty. exact (famunion_Empty (fun x => {setsum x y | y :e Y x})).
Qed.
Theorem setprod_Empty_L : forall B:set, Empty :*: B = Empty.
let B. exact (Sigma_Empty (fun _ => B)).
Qed.
Theorem setprod_Empty_R : forall A:set, A :*: Empty = Empty.
let A. prove (\/_ x :e A, {setsum x y | y :e Empty}) = Empty.
apply Empty_eq. let z. assume H. apply (famunionE_impred A (fun x => {setsum x y | y :e Empty}) z H). let x. assume _ Hz.
apply (ReplE_impred Empty (fun y => setsum x y) z Hz). let y. assume Hy _. exact (EmptyE y Hy).
Qed.
Theorem setsum_Empty : Empty :+: Empty = Empty.
prove {Inj0 x | x :e Empty} :\/: {Inj1 y | y :e Empty} = Empty.
rewrite (Repl_Empty Inj0). rewrite (Repl_Empty Inj1). exact (binunion_idl Empty).
Qed.
Theorem Pi_Empty_dom : forall Y:set -> set, (Pi_ x :e Empty, Y x) = {Empty}.
let Y. prove {f :e Power (Sigma_ x :e Empty, Union (Y x)) | forall x :e Empty, f x :e Y x} = {Empty}.
rewrite (Sigma_Empty (fun x => Union (Y x))). rewrite Power_0_Sing_0.
apply set_ext.
- let f. assume H. exact (SepE1 {0} (fun f => forall x :e Empty, f x :e Y x) f H).
- let f. assume H. apply (SepI {0} (fun f => forall x :e Empty, f x :e Y x) f H). let x. assume Hx. exact (FalseE (EmptyE x Hx) (f x :e Y x)).
Qed.
Theorem setexp_Empty_dom : forall X:set, X :^: Empty = {Empty}.
let X. exact (Pi_Empty_dom (fun _ => X)).
Qed.
Theorem setexp_Empty_cod : forall Y:set, Y <> Empty -> Empty :^: Y = Empty.
let Y. assume HY. apply Empty_eq. let f. assume Hf.
claim Hex: exists y, y :e Y.
{ apply (xm (exists y, y :e Y)).
  - assume H. exact H.
  - assume H. prove False. apply HY. apply Empty_eq. let y. assume Hy. apply H. witness y. exact Hy. }
apply Hex. let y. assume Hy. exact (EmptyE (f y) (setexp_ap Y Empty f Hf y Hy)).
Qed.
Theorem finite_cardinality_Empty : finite_cardinality Empty = 0.
exact (god1_finite_cardinality_natural 0 (nat_p_omega 0 nat_0)).
Qed.
Theorem Sing_eq_iff : forall e x:set, x :e {e} <-> x = e.
let e x. apply iffI.
- assume H. exact (SingE e x H).
- assume H. rewrite H. exact (SingI e).
Qed.
Theorem forall_Sing : forall e:set, forall P:set -> prop, P e -> forall x :e {e}, P x.
let e P. assume H. let x. assume Hx. rewrite (SingE e x Hx). exact H.
Qed.
Theorem exists_Sing : forall e:set, forall P:set -> prop, P e -> exists x :e {e}, P x.
let e P. assume H. witness e. exact (andI (e :e {e}) (P e) (SingI e) H).
Qed.
Theorem forall_Sub_Empty : forall P:set -> prop, P Empty -> forall s c= Empty, P s.
let P. assume H. let s. assume Hs. rewrite (Empty_Subq_eq s Hs). exact H.
Qed.
Theorem exists_Sub_Empty : forall P:set -> prop, P Empty -> exists s c= Empty, P s.
let P. assume H. witness Empty. exact (andI (Empty c= Empty) (P Empty) (Subq_ref Empty) H).
Qed.
Theorem nonempty_Num_succ : forall n:set, ordsucc n <> Empty.
let n. exact (neq_ordsucc_0 n).
Qed.
Theorem Empty_neq_of_In : forall X x:set, x :e X -> Empty <> X.
let X x. assume Hx H. exact (EmptyE x (H (fun hl__u hl__v => x :e hl__v) Hx)).
Qed.

// ---- comprehension extensionality ----
Theorem Sep_ext_iff : forall A:set, forall P Q:set -> prop, (forall x :e A, P x <-> Q x) -> {x :e A | P x} = {x :e A | Q x}.
let A P Q. assume H. apply set_ext.
- let x. assume Hx. apply (SepE A P x Hx). assume HxA HP. apply (SepI A Q x HxA). apply (H x HxA). assume H1 _. exact (H1 HP).
- let x. assume Hx. apply (SepE A Q x Hx). assume HxA HQ. apply (SepI A P x HxA). apply (H x HxA). assume _ H2. exact (H2 HQ).
Qed.
Theorem ReplSep_ext : forall A:set, forall P Q:set -> prop, forall F G:set -> set, (forall x :e A, P x <-> Q x) -> (forall x :e A, F x = G x) -> {F x | x :e A, P x} = {G x | x :e A, Q x}.
let A P Q F G. assume HPQ HFG. apply set_ext.
- let y. assume Hy. apply (ReplSepE_impred A P F y Hy). let x. assume Hx HP Hyx. rewrite Hyx. rewrite (HFG x Hx). apply (ReplSepI A Q G x Hx). apply (HPQ x Hx). assume H1 _. exact (H1 HP).
- let y. assume Hy. apply (ReplSepE_impred A Q G y Hy). let x. assume Hx HQ Hyx. rewrite Hyx. rewrite <- (HFG x Hx). apply (ReplSepI A P F x Hx). apply (HPQ x Hx). assume _ H2. exact (H2 HQ).
Qed.
Theorem Repl_ext_pw2 : forall A:set, forall F G:set -> set, (forall x :e A, F x = G x) -> {F x | x :e A} = {G x | x :e A}.
let A F G. assume H. apply set_ext.
- let y. assume Hy. apply (ReplE_impred A F y Hy). let x. assume Hx Hyx. rewrite Hyx. rewrite (H x Hx). exact (ReplI A G x Hx).
- let y. assume Hy. apply (ReplE_impred A G y Hy). let x. assume Hx Hyx. rewrite Hyx. rewrite <- (H x Hx). exact (ReplI A F x Hx).
Qed.

// ---- choice with a unique witness; transport of `= 1` equivalences ----
Theorem choose_in_unique : forall A:set, forall P:set -> prop, forall n :e A, P n -> (forall y :e A, P y -> y = n) -> choose_in A P = n.
let A P n. assume Hn HPn Hu.
claim Hex: exists x :e A, P x. { witness n. apply andI. - exact Hn. - exact HPn. }
apply (choose_in_spec A P Hex). assume H1 H2. exact (Hu (choose_in A P) H1 H2).
Qed.

Theorem iff_eq1_l : forall a b:set, a = b -> forall p:prop, (b = 1 <-> p) -> (a = 1 <-> p).
let a b. assume H. let p. assume Hp. exact ((eq_sym_i a b H) (fun hl__u hl__v => hl__u = 1 <-> p) Hp).
Qed.

Theorem choose_in_ext : forall A:set, forall P Q:set -> prop, (forall x :e A, P x <-> Q x) -> choose_in A P = choose_in A Q.
let A P Q. assume H.
claim Hex: (exists x :e A, P x) <-> (exists x :e A, Q x).
{ apply iffI.
  - assume H1. apply H1. let x. assume Hx0. apply Hx0. assume Hx HP. witness x. apply andI.
    + exact Hx.
    + apply (H x Hx). assume H2 _. exact (H2 HP).
  - assume H1. apply H1. let x. assume Hx0. apply Hx0. assume Hx HQ. witness x. apply andI.
    + exact Hx.
    + apply (H x Hx). assume _ H2. exact (H2 HQ). }
claim Hiff: forall x:set, (x :e A /\ P x) <-> (x :e A /\ Q x).
{ let x. apply iffI.
  - assume H1. apply H1. assume Hx HP. apply andI.
    + exact Hx.
    + apply (H x Hx). assume H2 _. exact (H2 HP).
  - assume H1. apply H1. assume Hx HQ. apply andI.
    + exact Hx.
    + apply (H x Hx). assume _ H2. exact (H2 HQ). }
claim Hpe: (fun x:set => x :e A /\ P x) = (fun x:set => x :e A /\ Q x).
{ exact (pred_ext (fun x:set => x :e A /\ P x) (fun x:set => x :e A /\ Q x) Hiff). }
prove (if (exists x :e A, P x) then Eps_i (fun x:set => x :e A /\ P x) else Eps_i (fun x:set => x :e A)) = (if (exists x :e A, Q x) then Eps_i (fun x:set => x :e A /\ Q x) else Eps_i (fun x:set => x :e A)).
apply (xm (exists x :e A, P x)).
- assume H1.
  claim H2: exists x :e A, Q x. { apply Hex. assume H3 _. exact (H3 H1). }
  rewrite (If_i_1 (exists x :e A, P x) (Eps_i (fun x:set => x :e A /\ P x)) (Eps_i (fun x:set => x :e A)) H1).
  rewrite (If_i_1 (exists x :e A, Q x) (Eps_i (fun x:set => x :e A /\ Q x)) (Eps_i (fun x:set => x :e A)) H2).
  exact (eq_sym_i (Eps_i (fun x:set => x :e A /\ Q x)) (Eps_i (fun x:set => x :e A /\ P x)) (Hpe (fun hl__u hl__v => Eps_i hl__u = Eps_i (fun x:set => x :e A /\ P x)) (fun q H => H))).
- assume H1.
  claim H2: ~ exists x :e A, Q x. { assume H3. apply H1. apply Hex. assume _ H4. exact (H4 H3). }
  rewrite (If_i_0 (exists x :e A, P x) (Eps_i (fun x:set => x :e A /\ P x)) (Eps_i (fun x:set => x :e A)) H1).
  rewrite (If_i_0 (exists x :e A, Q x) (Eps_i (fun x:set => x :e A /\ Q x)) (Eps_i (fun x:set => x :e A)) H2).
  exact (fun q H => H).
Qed.

// ---- least upper / greatest lower bounds from nonemptiness and boundedness ----
Theorem lub_of_bounds : forall S:set, S c= R -> ~ S = Empty -> (exists b :e R, forall x :e S, x <= b) -> exists x :e R, is_lub S x.
let S. assume HS Hne Hb.
claim Hnonempty: nonempty S.
{ prove exists x, x :e S. apply (xm (exists x, x :e S)).
  - assume H. exact H.
  - assume H.
    claim HE: S = Empty. { apply (Empty_eq S). let x. assume Hx. apply H. witness x. exact Hx. }
    exact (FalseE (Hne HE) (exists x, x :e S)). }
claim Hbounded: bounded_above S. { exact Hb. }
exact (lub_exists_R S HS Hnonempty Hbounded).
Qed.

Theorem glb_of_bounds : forall S:set, S c= R -> ~ S = Empty -> (exists b :e R, forall x :e S, b <= x) -> exists x :e R, is_glb S x.
let S. assume HS Hne Hb.
claim Hnonempty: nonempty S.
{ prove exists x, x :e S. apply (xm (exists x, x :e S)).
  - assume H. exact H.
  - assume H.
    claim HE: S = Empty. { apply (Empty_eq S). let x. assume Hx. apply H. witness x. exact Hx. }
    exact (FalseE (Hne HE) (exists x, x :e S)). }
claim Hbounded: bounded_below S. { exact Hb. }
exact (glb_exists_R_of_lub_exists_R R_has_lub_property S HS Hnonempty Hbounded).
Qed.

Theorem bound_above_of_guarded : forall S:set, S c= R -> (exists b :e R, forall x :e R, x :e S -> x <= b) -> exists b :e R, forall x :e S, x <= b.
let S. assume HS H. apply H. let b. assume Hb0. apply Hb0. assume HbR Hg. witness b. apply andI.
- exact HbR.
- let x. assume Hx. exact (Hg x (HS x Hx) Hx).
Qed.

Theorem bound_below_of_guarded : forall S:set, S c= R -> (exists b :e R, forall x :e R, x :e S -> b <= x) -> exists b :e R, forall x :e S, b <= x.
let S. assume HS H. apply H. let b. assume Hb0. apply Hb0. assume HbR Hg. witness b. apply andI.
- exact HbR.
- let x. assume Hx. exact (Hg x (HS x Hx) Hx).
Qed.

Theorem neq_Empty_of_mem : forall S x:set, x :e S -> ~ S = Empty.
let S x. assume Hx HE. exact (EmptyE x (HE (fun hl__u hl__v => x :e hl__u) Hx)).
Qed.

Theorem lub_of_finite : forall S:set, S c= R -> ~ S = Empty -> finite S -> exists x :e R, is_lub S x.
let S. assume HS Hne Hfin.
claim HSNo: forall x :e S, SNo x. { let x. assume Hx. exact (real_SNo x (HS x Hx)). }
apply (finite_max_exists S HSNo Hfin Hne). let m. assume Hm. apply Hm. assume Hm1 Hm2. apply Hm1. assume HmS HmSNo.
witness m. apply andI.
- exact (HS m HmS).
- prove upper_bound S m /\ forall y :e R, upper_bound S y -> m <= y. apply andI.
  + prove forall s :e S, s <= m. let y. assume Hy. exact (Hm2 y Hy (HSNo y Hy)).
  + let y. assume Hy Hub. exact (Hub m HmS).
Qed.

Theorem glb_of_finite : forall S:set, S c= R -> ~ S = Empty -> finite S -> exists x :e R, is_glb S x.
let S. assume HS Hne Hfin.
claim HSNo: forall x :e S, SNo x. { let x. assume Hx. exact (real_SNo x (HS x Hx)). }
apply (finite_min_exists S HSNo Hfin Hne). let m. assume Hm. apply Hm. assume Hm1 Hm2. apply Hm1. assume HmS HmSNo.
witness m. apply andI.
- exact (HS m HmS).
- prove lower_bound S m /\ forall y :e R, lower_bound S y -> y <= m. apply andI.
  + prove forall s :e S, m <= s. let y. assume Hy. exact (Hm2 y Hy (HSNo y Hy)).
  + let y. assume Hy Hlb. exact (Hlb m HmS).
Qed.

// ---- depth-2 representation: sets of subsets ----
// hl_rep2 A F is the native set of subsets represented by a literal predicate F on predicates;
// hl_chi2 A S is the literal predicate on predicates representing a native set S c= Power A.
Definition hl_rep2 : set -> set -> set := fun A F => {hl_rep A u | u :e hl_rep (2 :^: A) F}.
Definition hl_chi2 : set -> set -> set := fun A S => hl_chi (2 :^: A) {hl_chi A t | t :e S}.

Theorem hl_rep2_Subq : forall A F:set, hl_rep2 A F c= Power A.
let A F. let y. assume Hy. apply (ReplE_impred (hl_rep (2 :^: A) F) (fun u => hl_rep A u) y Hy). let u. assume Hu Hyu.
rewrite Hyu. exact (PowerI A (hl_rep A u) (hl_rep_Subq A u)).
Qed.

Theorem hl_chi2_Pi : forall A S:set, hl_chi2 A S :e 2 :^: (2 :^: A).
let A S. exact (hl_chi_Pi (2 :^: A) {hl_chi A t | t :e S}).
Qed.

Theorem mem_rep2_iff : forall A:set, forall t :e 2 :^: A, forall F:set, t :e hl_rep (2 :^: A) F <-> hl_rep A t :e hl_rep2 A F.
let A t. assume Ht. let F. apply iffI.
- assume H. exact (ReplI (hl_rep (2 :^: A) F) (fun u => hl_rep A u) t H).
- assume H. apply (ReplE_impred (hl_rep (2 :^: A) F) (fun u => hl_rep A u) (hl_rep A t) H). let u. assume Hu Htu.
  claim HuA: u :e 2 :^: A. { exact (hl_rep_Subq (2 :^: A) F u Hu). }
  claim Htu2: t = u. { exact (hl_rep_inj A t u Ht HuA Htu). }
  exact ((eq_sym_i t u Htu2) (fun hl__u hl__v => hl__u :e hl_rep (2 :^: A) F) Hu).
Qed.

Theorem hl_rep2_chi2 : forall A S:set, S c= Power A -> hl_rep2 A (hl_chi2 A S) = S.
let A S. assume HS.
claim Hr: hl_rep (2 :^: A) (hl_chi2 A S) = {hl_chi A t | t :e S}.
{ prove hl_rep (2 :^: A) (hl_chi (2 :^: A) {hl_chi A t | t :e S}) = {hl_chi A t | t :e S}.
  apply (hl_rep_chi (2 :^: A) {hl_chi A t | t :e S}). let y. assume Hy.
  apply (ReplE_impred S (fun t => hl_chi A t) y Hy). let t. assume Ht Hyt. rewrite Hyt. exact (hl_chi_Pi A t). }
prove {hl_rep A u | u :e hl_rep (2 :^: A) (hl_chi2 A S)} = S.
rewrite Hr. apply set_ext.
- let y. assume Hy. apply (ReplE_impred {hl_chi A t | t :e S} (fun u => hl_rep A u) y Hy). let u. assume Hu Hyu.
  apply (ReplE_impred S (fun t => hl_chi A t) u Hu). let t. assume Ht Hut.
  rewrite Hyu. rewrite Hut. rewrite (hl_rep_chi A t (PowerE A t (HS t Ht))). exact Ht.
- let t. assume Ht.
  claim H1: hl_chi A t :e {hl_chi A t | t :e S}. { exact (ReplI S (fun t => hl_chi A t) t Ht). }
  claim H2: hl_rep A (hl_chi A t) :e {hl_rep A u | u :e {hl_chi A t | t :e S}}. { exact (ReplI {hl_chi A t | t :e S} (fun u => hl_rep A u) (hl_chi A t) H1). }
  exact ((hl_rep_chi A t (PowerE A t (HS t Ht))) (fun hl__u hl__v => hl__u :e {hl_rep A u | u :e {hl_chi A t | t :e S}}) H2).
Qed.

Theorem hl_rep2_inj : forall A F G:set, F :e 2 :^: (2 :^: A) -> G :e 2 :^: (2 :^: A) -> hl_rep2 A F = hl_rep2 A G -> F = G.
let A F G. assume HF HG H.
apply (hl_rep_inj (2 :^: A) F G HF HG). apply set_ext.
- let t. assume Ht.
  claim HtA: t :e 2 :^: A. { exact (hl_rep_Subq (2 :^: A) F t Ht). }
  apply (mem_rep2_iff A t HtA G). assume _ H2. apply H2.
  claim H3: hl_rep A t :e hl_rep2 A F. { apply (mem_rep2_iff A t HtA F). assume H4 _. exact (H4 Ht). }
  exact (H (fun hl__u hl__v => hl_rep A t :e hl__u) H3).
- let t. assume Ht.
  claim HtA: t :e 2 :^: A. { exact (hl_rep_Subq (2 :^: A) G t Ht). }
  apply (mem_rep2_iff A t HtA F). assume _ H2. apply H2.
  claim H3: hl_rep A t :e hl_rep2 A G. { apply (mem_rep2_iff A t HtA G). assume H4 _. exact (H4 Ht). }
  exact ((eq_sym_i (hl_rep2 A F) (hl_rep2 A G) H) (fun hl__u hl__v => hl_rep A t :e hl__u) H3).
Qed.

Theorem imp_forall_sub2 : forall A:set, forall L N:set -> prop,
  (forall S c= Power A, L (hl_chi2 A S) -> N S) -> (forall F :e 2 :^: (2 :^: A), L F) -> forall S c= Power A, N S.
let A L N. assume H H1. let S. assume HS. exact (H S HS (H1 (hl_chi2 A S) (hl_chi2_Pi A S))).
Qed.
Theorem imp_forall_sub2_rev : forall A:set, forall L N:set -> prop,
  (forall F :e 2 :^: (2 :^: A), N (hl_rep2 A F) -> L F) -> (forall S c= Power A, N S) -> forall F :e 2 :^: (2 :^: A), L F.
let A L N. assume H H1. let F. assume HF. exact (H F HF (H1 (hl_rep2 A F) (hl_rep2_Subq A F))).
Qed.
Theorem imp_exists_sub2 : forall A:set, forall L N:set -> prop,
  (forall F :e 2 :^: (2 :^: A), L F -> N (hl_rep2 A F)) -> (exists F :e 2 :^: (2 :^: A), L F) -> exists S c= Power A, N S.
let A L N. assume H H1. apply H1. let F. assume HF0. apply HF0. assume HF HL. witness (hl_rep2 A F).
exact (andI (hl_rep2 A F c= Power A) (N (hl_rep2 A F)) (hl_rep2_Subq A F) (H F HF HL)).
Qed.
Theorem imp_exists_sub2_rev : forall A:set, forall L N:set -> prop,
  (forall S c= Power A, N S -> L (hl_chi2 A S)) -> (exists S c= Power A, N S) -> exists F :e 2 :^: (2 :^: A), L F.
let A L N. assume H H1. apply H1. let S. assume HS0. apply HS0. assume HS HN. witness (hl_chi2 A S).
exact (andI (hl_chi2 A S :e 2 :^: (2 :^: A)) (L (hl_chi2 A S)) (hl_chi2_Pi A S) (H S HS HN)).
Qed.

Theorem rep2_eq_fwd : forall A F G s t:set, hl_rep2 A F = s -> hl_rep2 A G = t -> F = G -> s = t.
let A F G s t. assume HF HG H.
rewrite <- HF. rewrite <- HG. exact (H (fun u v => hl_rep2 A F = hl_rep2 A u) (fun q H => H)).
Qed.
Theorem rep2_eq_bwd : forall A F G s t:set, F :e 2 :^: (2 :^: A) -> G :e 2 :^: (2 :^: A) -> hl_rep2 A F = s -> hl_rep2 A G = t -> s = t -> F = G.
let A F G s t. assume HF HG Hs Ht H.
apply (hl_rep2_inj A F G HF HG). rewrite Hs. rewrite Ht. exact H.
Qed.
