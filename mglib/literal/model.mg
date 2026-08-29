// hol2mg literal model (docs/DESIGN.md §21.4): the primitive interface of the literal
// semantic layer and its model-soundness theorems.  Checked after mglib/native/*.mg.
// Everything else in the literal layer is generated from HOL Light kernel definitions.

// ---- generic subtype machinery for translated type definitions ----
// A HOL type definition with representing carrier A and predicate P (a set function into 2)
// is the subtype {x :e A | P x = 1}; rep is the inclusion, abs maps representatives back and
// sends everything else to some member of the subtype.
Definition hl_subtype : set -> set -> set := fun A P => {x :e A | P x = 1}.
Definition hl_subtype_rep : set -> set -> set := fun A P => fun x :e hl_subtype A P => x.
// Outside the subtype HOL leaves abs unspecified; the model sends such points to 0 when 0 is
// in the subtype (so that the native default of e.g. int_of_real agrees) and otherwise to an
// arbitrary member.
Definition hl_subtype_abs : set -> set -> set :=
  fun A P => fun x :e A => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True).

// ---- equality and choice ----
Definition hl_eq : set -> set := fun A => fun x :e A => fun y :e A => if x = y then 1 else 0.
Definition hl_select : set -> set := fun A => fun P :e 2 :^: A => choose_in A (fun x => P x = 1).

// ---- naturals: num = omega ----
Definition hl_zero : set := 0.
Definition hl_SUC : set := fun n :e omega => ordsucc n.

// ---- pairs: prod = setprod ----
Definition hl_pair : set -> set -> set := fun A B => fun x :e A => fun y :e B => (x, y).

// ---- unit type 1 = {0} ----
Definition hl_one : set := 0.

// ---- lists: list A = finseq A ----
Definition hl_NIL : set -> set := fun A => seq_nil.
Definition hl_CONS : set -> set := fun A => fun x :e A => fun l :e finseq A => seq_cons x l.

// ---- options and sums: option A = 1 :+: A, sum A B = A :+: B ----
Definition hl_NONE : set -> set := fun A => Inj0 0.
Definition hl_SOME : set -> set := fun A => fun x :e A => Inj1 x.
Definition hl_INL : set -> set -> set := fun A B => fun x :e A => Inj0 x.
// carrier parameters in the order of first occurrence in INR : B -> (A,B)sum (design 21.2)
Definition hl_INR : set -> set -> set := fun B A => fun y :e B => Inj1 y.

// ---- reals: real = R ----
Definition hl_real_of_num : set := fun n :e omega => n.
Definition hl_real_neg : set := fun x :e R => - x.
Definition hl_real_add : set := fun x :e R => fun y :e R => x + y.
Definition hl_real_mul : set := fun x :e R => fun y :e R => x * y.
Definition hl_real_le : set := fun x :e R => fun y :e R => if x <= y then 1 else 0.
Definition hl_real_inv : set := fun x :e R => recip_SNo x.

// ---- typing lemmas of the primitive interface (used by generated typing proofs) ----
Theorem hl_eq_in : forall A:set, A <> Empty -> hl_eq A :e (2 :^: A) :^: A.
let A. assume _. prove (fun x :e A => fun y :e A => if x = y then 1 else 0) :e Pi_ x :e A, 2 :^: A.
apply (lam_Pi A (fun _ => 2 :^: A) (fun x => fun y :e A => if x = y then 1 else 0)).
let x. assume Hx. prove (fun y :e A => if x = y then 1 else 0) :e Pi_ y :e A, 2.
apply (lam_Pi A (fun _ => 2) (fun y => if x = y then 1 else 0)).
let y. assume Hy. prove (if x = y then 1 else 0) :e 2. apply (xm (x = y)).
- assume H. rewrite (If_i_1 (x = y) 1 0 H). exact In_1_2.
- assume H. rewrite (If_i_0 (x = y) 1 0 H). exact In_0_2.
Qed.
Theorem hl_select_in : forall A:set, A <> Empty -> hl_select A :e A :^: (2 :^: A).
let A. assume HA. prove (fun P :e 2 :^: A => choose_in A (fun x => P x = 1)) :e Pi_ P :e 2 :^: A, A.
apply (lam_Pi (2 :^: A) (fun _ => A) (fun P => choose_in A (fun x => P x = 1))).
let P. assume _. exact (choose_in_in A HA (fun x => P x = 1)).
Qed.
Theorem hl_zero_in : hl_zero :e omega.
exact (nat_p_omega 0 nat_0).
Qed.
Theorem hl_SUC_in : hl_SUC :e omega :^: omega.
prove (fun n :e omega => ordsucc n) :e Pi_ n :e omega, omega.
apply (lam_Pi omega (fun _ => omega) (fun n => ordsucc n)). let n. assume Hn. exact (omega_ordsucc n Hn).
Qed.
Theorem hl_pair_in : forall A B:set, A <> Empty -> B <> Empty -> hl_pair A B :e ((A :*: B) :^: B) :^: A.
let A B. assume _ _. prove (fun x :e A => fun y :e B => (x, y)) :e Pi_ x :e A, (A :*: B) :^: B.
apply (lam_Pi A (fun _ => (A :*: B) :^: B) (fun x => fun y :e B => (x, y))).
let x. assume Hx. prove (fun y :e B => (x, y)) :e Pi_ y :e B, A :*: B.
apply (lam_Pi B (fun _ => A :*: B) (fun y => (x, y))).
let y. assume Hy. prove (x, y) :e Sigma_ x :e A, B. rewrite <- (tuple_pair x y). exact (pair_Sigma A (fun _ => B) x Hx y Hy).
Qed.
Theorem hl_one_in : hl_one :e 1.
exact In_0_1.
Qed.
Theorem hl_NIL_in : forall A:set, A <> Empty -> hl_NIL A :e finseq A.
let A. assume _. exact (seq_nil_finseq A).
Qed.
Theorem hl_CONS_in : forall A:set, A <> Empty -> hl_CONS A :e (finseq A :^: finseq A) :^: A.
let A. assume _. prove (fun x :e A => fun l :e finseq A => seq_cons x l) :e Pi_ x :e A, finseq A :^: finseq A.
apply (lam_Pi A (fun _ => finseq A :^: finseq A) (fun x => fun l :e finseq A => seq_cons x l)).
let x. assume Hx. prove (fun l :e finseq A => seq_cons x l) :e Pi_ l :e finseq A, finseq A.
apply (lam_Pi (finseq A) (fun _ => finseq A) (fun l => seq_cons x l)).
let l. assume Hl. exact (seq_cons_finseq A x Hx l Hl).
Qed.
Theorem hl_NONE_in : forall A:set, A <> Empty -> hl_NONE A :e 1 :+: A.
let A. assume _. exact (Inj0_setsum 1 A 0 In_0_1).
Qed.
Theorem hl_SOME_in : forall A:set, A <> Empty -> hl_SOME A :e (1 :+: A) :^: A.
let A. assume _. prove (fun x :e A => Inj1 x) :e Pi_ x :e A, 1 :+: A.
apply (lam_Pi A (fun _ => 1 :+: A) (fun x => Inj1 x)). let x. assume Hx. exact (Inj1_setsum 1 A x Hx).
Qed.
Theorem hl_INL_in : forall A B:set, A <> Empty -> B <> Empty -> hl_INL A B :e (A :+: B) :^: A.
let A B. assume _ _. prove (fun x :e A => Inj0 x) :e Pi_ x :e A, A :+: B.
apply (lam_Pi A (fun _ => A :+: B) (fun x => Inj0 x)). let x. assume Hx. exact (Inj0_setsum A B x Hx).
Qed.
Theorem hl_INR_in : forall B A:set, B <> Empty -> A <> Empty -> hl_INR B A :e (A :+: B) :^: B.
let B A. assume _ _. prove (fun y :e B => Inj1 y) :e Pi_ y :e B, A :+: B.
apply (lam_Pi B (fun _ => A :+: B) (fun y => Inj1 y)). let y. assume Hy. exact (Inj1_setsum A B y Hy).
Qed.
Theorem hl_real_of_num_in : hl_real_of_num :e R :^: omega.
prove (fun n :e omega => n) :e Pi_ n :e omega, R.
apply (lam_Pi omega (fun _ => R) (fun n => n)). let n. assume Hn. exact (god1_natural_number_is_real n Hn).
Qed.
Theorem hl_real_neg_in : hl_real_neg :e R :^: R.
prove (fun x :e R => - x) :e Pi_ x :e R, R.
apply (lam_Pi R (fun _ => R) (fun x => - x)). let x. assume Hx. exact (real_minus_SNo x Hx).
Qed.
Theorem hl_real_add_in : hl_real_add :e (R :^: R) :^: R.
prove (fun x :e R => fun y :e R => x + y) :e Pi_ x :e R, R :^: R.
apply (lam_Pi R (fun _ => R :^: R) (fun x => fun y :e R => x + y)).
let x. assume Hx. prove (fun y :e R => x + y) :e Pi_ y :e R, R.
apply (lam_Pi R (fun _ => R) (fun y => x + y)). let y. assume Hy. exact (real_add_SNo x Hx y Hy).
Qed.
Theorem hl_real_mul_in : hl_real_mul :e (R :^: R) :^: R.
prove (fun x :e R => fun y :e R => x * y) :e Pi_ x :e R, R :^: R.
apply (lam_Pi R (fun _ => R :^: R) (fun x => fun y :e R => x * y)).
let x. assume Hx. prove (fun y :e R => x * y) :e Pi_ y :e R, R.
apply (lam_Pi R (fun _ => R) (fun y => x * y)). let y. assume Hy. exact (real_mul_SNo x Hx y Hy).
Qed.
Theorem hl_real_le_in : hl_real_le :e (2 :^: R) :^: R.
prove (fun x :e R => fun y :e R => if x <= y then 1 else 0) :e Pi_ x :e R, 2 :^: R.
apply (lam_Pi R (fun _ => 2 :^: R) (fun x => fun y :e R => if x <= y then 1 else 0)).
let x. assume Hx. prove (fun y :e R => if x <= y then 1 else 0) :e Pi_ y :e R, 2.
apply (lam_Pi R (fun _ => 2) (fun y => if x <= y then 1 else 0)).
let y. assume Hy. prove (if x <= y then 1 else 0) :e 2. apply (xm (x <= y)).
- assume H. rewrite (If_i_1 (x <= y) 1 0 H). exact In_1_2.
- assume H. rewrite (If_i_0 (x <= y) 1 0 H). exact In_0_2.
Qed.
Theorem hl_real_inv_in : hl_real_inv :e R :^: R.
prove (fun x :e R => recip_SNo x) :e Pi_ x :e R, R.
apply (lam_Pi R (fun _ => R) (fun x => recip_SNo x)). let x. assume Hx. exact (real_recip_SNo x Hx).
Qed.
Theorem hl_subtype_rep_in : forall A P:set, hl_subtype_rep A P :e A :^: hl_subtype A P.
let A P. prove (fun x :e hl_subtype A P => x) :e Pi_ x :e hl_subtype A P, A.
apply (lam_Pi (hl_subtype A P) (fun _ => A) (fun x => x)). let x. assume Hx. exact (SepE1 A (fun x => P x = 1) x Hx).
Qed.
Theorem hl_subtype_abs_in : forall A P:set, hl_subtype A P <> Empty -> hl_subtype_abs A P :e hl_subtype A P :^: A.
let A P. assume Hne.
prove (fun x :e A => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) :e Pi_ x :e A, hl_subtype A P.
apply (lam_Pi A (fun _ => hl_subtype A P) (fun x => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True))).
let x. assume Hx. prove (if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) :e hl_subtype A P.
apply (xm (x :e hl_subtype A P)).
- assume H. rewrite (If_i_1 (x :e hl_subtype A P) x (if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) H). exact H.
- assume H. rewrite (If_i_0 (x :e hl_subtype A P) x (if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) H).
  apply (xm (0 :e hl_subtype A P)).
  + assume H0. rewrite (If_i_1 (0 :e hl_subtype A P) 0 (choose_in (hl_subtype A P) (fun _ => True)) H0). exact H0.
  + assume H0. rewrite (If_i_0 (0 :e hl_subtype A P) 0 (choose_in (hl_subtype A P) (fun _ => True)) H0).
    exact (choose_in_in (hl_subtype A P) Hne (fun _ => True)).
Qed.
