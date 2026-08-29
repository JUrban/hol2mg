// hol2mg early hand lemmas (docs/DESIGN.md §21.4): definitional facts about generated literal
// constants that the generated typing lemmas need, in particular the nonemptiness of the
// carriers of translated type definitions (hl_ty_<T>_nonempty).  Checked after _literal.mg
// and before _literal_typing.mg; may use only definitions, model.mg and bridge.mg.
// Every theorem is Qed.

// ---- primitive constants applied ----
Theorem hl_real_of_num_ap : forall n :e omega, hl_real_of_num n = n.
let n. assume Hn. exact (beta omega (fun n => n) n Hn).
Qed.
Theorem hl_real_le_ap : forall x y :e R, hl_real_le x y = if x <= y then 1 else 0.
let x. assume Hx. let y. assume Hy.
prove (fun x :e R => fun y :e R => if x <= y then 1 else 0) x y = if x <= y then 1 else 0.
rewrite (beta R (fun x => fun y :e R => if x <= y then 1 else 0) x Hx).
exact (beta R (fun y => if x <= y then 1 else 0) y Hy).
Qed.
Theorem hl_real_le_iff : forall x y :e R, hl_real_le x y = 1 <-> x <= y.
let x. assume Hx. let y. assume Hy. rewrite (hl_real_le_ap x Hx y Hy). exact (If_1_iff (x <= y)).
Qed.
Theorem hl_real_neg_ap : forall x :e R, hl_real_neg x = - x.
let x. assume Hx. exact (beta R (fun x => - x) x Hx).
Qed.
Theorem hl_real_add_ap : forall x y :e R, hl_real_add x y = x + y.
let x. assume Hx. let y. assume Hy.
prove (fun x :e R => fun y :e R => x + y) x y = x + y.
rewrite (beta R (fun x => fun y :e R => x + y) x Hx). exact (beta R (fun y => x + y) y Hy).
Qed.
Theorem hl_real_mul_ap : forall x y :e R, hl_real_mul x y = x * y.
let x. assume Hx. let y. assume Hy.
prove (fun x :e R => fun y :e R => x * y) x y = x * y.
rewrite (beta R (fun x => fun y :e R => x * y) x Hx). exact (beta R (fun y => x * y) y Hy).
Qed.
Theorem hl_real_inv_ap : forall x :e R, hl_real_inv x = recip_SNo x.
let x. assume Hx. exact (beta R (fun x => recip_SNo x) x Hx).
Qed.
Theorem hl_SUC_ap : forall n :e omega, hl_SUC n = ordsucc n.
let n. assume Hn. exact (beta omega (fun n => ordsucc n) n Hn).
Qed.
Theorem hl_pair_ap : forall A B:set, forall x :e A, forall y :e B, hl_pair A B x y = (x, y).
let A B x. assume Hx. let y. assume Hy.
prove (fun x :e A => fun y :e B => (x, y)) x y = (x, y).
rewrite (beta A (fun x => fun y :e B => (x, y)) x Hx). exact (beta B (fun y => (x, y)) y Hy).
Qed.
Theorem hl_eq_ap : forall A:set, forall x y :e A, hl_eq A x y = if x = y then 1 else 0.
let A x. assume Hx. let y. assume Hy.
prove (fun x :e A => fun y :e A => if x = y then 1 else 0) x y = if x = y then 1 else 0.
rewrite (beta A (fun x => fun y :e A => if x = y then 1 else 0) x Hx). exact (beta A (fun y => if x = y then 1 else 0) y Hy).
Qed.

// ---- choice-defined conditional ----
Theorem hl_COND_1 : forall A:set, forall t :e 2, t = 1 -> forall t1 t2 :e A, hl_COND A t t1 t2 = t1.
let A t. assume Ht Ht1. let t1. assume H1. let t2. assume H2.
rewrite (hl_COND_unfold A t Ht t1 H1 t2 H2).
claim HP: (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) :e 2 :^: A.
{ prove (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) :e Pi_ x :e A, 2.
  apply (lam_Pi A (fun _ => 2) (fun x => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0)).
  let x. assume _. exact (If_in_2 (((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2))). }
rewrite (hl_select_eq A (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) HP).
claim Hspec: forall z :e A, (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z = 1 <-> (((t = 1 <-> True) -> z = t1) /\ ((t = 1 <-> False) -> z = t2)).
{ let z. assume Hz. rewrite (beta A (fun x => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z Hz).
  exact (If_1_iff (((t = 1 <-> True) -> z = t1) /\ ((t = 1 <-> False) -> z = t2))). }
claim Hex: exists z :e A, (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z = 1.
{ witness t1. apply andI.
  - exact H1.
  - apply (Hspec t1 H1). assume _ H. apply H. apply andI.
    + assume _. exact (fun q H => H).
    + assume Hf: t = 1 <-> False. prove False. apply Hf. assume Hf1 _. exact (Hf1 Ht1). }
apply (choose_in_spec A (fun z => (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z = 1) Hex).
assume Hc1 Hc2.
apply (Hspec (choose_in A (fun z => (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z = 1)) Hc1).
assume H H'. apply (H Hc2). assume Ha _. apply Ha. apply iffI.
- assume _. exact (fun p H => H).
- assume _. exact Ht1.
Qed.
Theorem hl_COND_0 : forall A:set, forall t :e 2, t = 0 -> forall t1 t2 :e A, hl_COND A t t1 t2 = t2.
let A t. assume Ht Ht0. let t1. assume H1. let t2. assume H2.
rewrite (hl_COND_unfold A t Ht t1 H1 t2 H2).
claim Hnt: ~ (t = 1).
{ assume Ht1. apply neq_0_1. exact (Ht0 (fun u v => u = 1) Ht1). }
claim HP: (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) :e 2 :^: A.
{ prove (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) :e Pi_ x :e A, 2.
  apply (lam_Pi A (fun _ => 2) (fun x => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0)).
  let x. assume _. exact (If_in_2 (((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2))). }
rewrite (hl_select_eq A (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) HP).
claim Hspec: forall z :e A, (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z = 1 <-> (((t = 1 <-> True) -> z = t1) /\ ((t = 1 <-> False) -> z = t2)).
{ let z. assume Hz. rewrite (beta A (fun x => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z Hz).
  exact (If_1_iff (((t = 1 <-> True) -> z = t1) /\ ((t = 1 <-> False) -> z = t2))). }
claim Hex: exists z :e A, (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z = 1.
{ witness t2. apply andI.
  - exact H2.
  - apply (Hspec t2 H2). assume _ H. apply H. apply andI.
    + assume Hf: t = 1 <-> True. prove False. apply Hf. assume _ Hf2. exact (Hnt (Hf2 (fun p H => H))).
    + assume _. exact (fun q H => H). }
apply (choose_in_spec A (fun z => (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z = 1) Hex).
assume Hc1 Hc2.
apply (Hspec (choose_in A (fun z => (fun x :e A => if ((t = 1 <-> True) -> x = t1) /\ ((t = 1 <-> False) -> x = t2) then 1 else 0) z = 1)) Hc1).
assume H H'. apply (H Hc2). assume _ Hb. apply Hb. apply iffI.
- assume Ht1. exact (Hnt Ht1).
- assume Hf. exact (FalseE Hf (t = 1)).
Qed.

Theorem hl_COND_if : forall A:set, forall t :e 2, forall p:prop, (t = 1 <-> p) -> forall x y :e A, hl_COND A t x y = if p then x else y.
let A t. assume Ht. let p. assume Hp. let x. assume Hx. let y. assume Hy.
apply (xm p).
- assume H. rewrite (If_i_1 p x y H). apply Hp. assume _ H2. exact (hl_COND_1 A t Ht (H2 H) x Hx y Hy).
- assume H. rewrite (If_i_0 p x y H).
  claim Ht0: t = 0. { apply (In_2_not_1 t Ht). assume H1. apply Hp. assume H2 _. exact (H (H2 H1)). }
  exact (hl_COND_0 A t Ht Ht0 x Hx y Hy).
Qed.
Theorem hl_subtype_rep_ap : forall A P:set, forall x :e hl_subtype A P, hl_subtype_rep A P x = x.
let A P x. assume Hx. exact (beta (hl_subtype A P) (fun x => x) x Hx).
Qed.
Theorem hl_subtype_abs_in_ap : forall A P:set, forall x :e A, x :e hl_subtype A P -> hl_subtype_abs A P x = x.
let A P x. assume Hx Hs.
prove (fun x :e A => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) x = x.
rewrite (beta A (fun x => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) x Hx).
exact (If_i_1 (x :e hl_subtype A P) x (if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) Hs).
Qed.
Theorem hl_subtype_abs_out_ap : forall A P:set, 0 :e hl_subtype A P -> forall x :e A, x /:e hl_subtype A P -> hl_subtype_abs A P x = 0.
let A P. assume H0. let x. assume Hx Hs.
prove (fun x :e A => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) x = 0.
rewrite (beta A (fun x => if x :e hl_subtype A P then x else if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) x Hx).
rewrite (If_i_0 (x :e hl_subtype A P) x (if 0 :e hl_subtype A P then 0 else choose_in (hl_subtype A P) (fun _ => True)) Hs).
exact (If_i_1 (0 :e hl_subtype A P) 0 (choose_in (hl_subtype A P) (fun _ => True)) H0).
Qed.
Theorem hl_subtype_Subq : forall A P:set, hl_subtype A P c= A.
let A P. exact (Sep_Subq A (fun x => P x = 1)).
Qed.
// ---- carrier nonemptiness of translated type definitions ----
Theorem hl_integer_0 : hl_integer 0 = 1.
rewrite (hl_integer_unfold 0 real_0).
apply (If_i_1 (exists n :e omega, hl_real_abs 0 = hl_real_of_num n) 1 0).
witness 0. apply andI.
- exact (nat_p_omega 0 nat_0).
- rewrite (hl_real_of_num_ap 0 (nat_p_omega 0 nat_0)).
  rewrite (hl_real_abs_unfold 0 real_0).
  claim Hle: hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) 0 = 1.
  { rewrite (hl_NUMERAL_unfold hl_zero (nat_p_omega 0 nat_0)).
    prove hl_real_le (hl_real_of_num 0) 0 = 1.
    rewrite (hl_real_of_num_ap 0 (nat_p_omega 0 nat_0)).
    rewrite (hl_real_le_ap 0 real_0 0 real_0).
    exact (If_i_1 (0 <= 0) 1 0 (SNoLe_ref 0)). }
  claim Ht2: hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) 0 :e 2.
  { rewrite Hle. exact In_1_2. }
  rewrite (hl_real_neg_ap 0 real_0).
  exact (hl_COND_1 R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) 0) Ht2 Hle 0 real_0 (- 0) (real_minus_SNo 0 real_0)).
Qed.
Theorem hl_ty_int_nonempty : hl_ty_int <> Empty.
prove hl_subtype R hl_integer <> Empty.
apply (hl_subtype_nonempty R hl_integer).
witness 0. exact (andI (0 :e R) (hl_integer 0 = 1) real_0 hl_integer_0).
Qed.

// ---- integers as a translated type definition: hl_ty_int = int ----
Theorem hl_real_abs_compat : forall l1 :e R, hl_real_abs l1 = abs_SNo l1.
let l1. assume H1.
rewrite (hl_real_abs_unfold l1 H1).
rewrite (hl_NUMERAL_unfold hl_zero (nat_p_omega 0 nat_0)).
prove hl_COND R (hl_real_le (hl_real_of_num 0) l1) l1 (hl_real_neg l1) = abs_SNo l1.
rewrite (hl_real_of_num_ap 0 (nat_p_omega 0 nat_0)).
rewrite (hl_real_neg_ap l1 H1).
claim Ht: hl_real_le 0 l1 :e 2.
{ rewrite (hl_real_le_ap 0 real_0 l1 H1). exact (If_in_2 (0 <= l1)). }
rewrite (hl_COND_if R (hl_real_le 0 l1) Ht (0 <= l1) (hl_real_le_iff 0 real_0 l1 H1) l1 H1 (- l1) (real_minus_SNo l1 H1)).
exact (fun q H => H).
Qed.

Theorem int_Subq_R : int c= R.
let x. assume Hx: x :e int.
apply (binunionE omega {- n | n :e omega} x Hx).
- assume H. exact (god1_natural_number_is_real x H).
- assume H. apply (ReplE_impred omega (fun n => - n) x H). let n. assume Hn Hxn.
  rewrite Hxn. exact (real_minus_SNo n (god1_natural_number_is_real n Hn)).
Qed.

Theorem hl_ty_int_native_nonempty : int <> Empty.
exact (nonempty_of_In int 0 (Subq_omega_int 0 (nat_p_omega 0 nat_0))).
Qed.

Theorem hl_integer_compat : forall l1 :e R, hl_integer l1 = 1 <-> l1 :e int.
let x. assume Hx.
rewrite (hl_integer_unfold x Hx).
apply (iff_trans ((if exists n :e omega, hl_real_abs x = hl_real_of_num n then 1 else 0) = 1) (exists n :e omega, hl_real_abs x = hl_real_of_num n) (x :e int) (If_1_iff (exists n :e omega, hl_real_abs x = hl_real_of_num n))).
rewrite (hl_real_abs_compat x Hx).
claim HxS: SNo x. { exact (real_SNo x Hx). }
apply iffI.
- assume H. apply H. let n. assume Hn0. apply Hn0. assume Hn Habs.
  claim Habs2: abs_SNo x = n. { rewrite <- (hl_real_of_num_ap n Hn). exact Habs. }
  apply (SNoLtLe_or x 0 HxS SNo_0).
  + assume Hneg: x < 0.
    claim Hx2: x = - n.
    { rewrite <- Habs2. rewrite (neg_abs_SNo x HxS Hneg). exact (eq_sym_i (- - x) x (minus_SNo_invol x HxS)). }
    rewrite Hx2. exact (int_minus_SNo_omega n Hn).
  + assume Hpos: 0 <= x.
    claim Hx2: x = n. { rewrite <- Habs2. exact (eq_sym_i (abs_SNo x) x (nonneg_abs_SNo x Hpos)). }
    rewrite Hx2. exact (Subq_omega_int n Hn).
- assume H: x :e int.
  apply (binunionE omega {- n | n :e omega} x H).
  + assume Hxo: x :e omega. witness x. apply andI.
    * exact Hxo.
    * rewrite (hl_real_of_num_ap x Hxo). exact (nonneg_abs_SNo x (omega_nonneg x Hxo)).
  + assume Hxm. apply (ReplE_impred omega (fun n => - n) x Hxm). let n. assume Hn Hxn.
    witness n. apply andI.
    * exact Hn.
    * rewrite (hl_real_of_num_ap n Hn). rewrite Hxn. rewrite (abs_SNo_minus n (omega_SNo n Hn)). exact (nonneg_abs_SNo n (omega_nonneg n Hn)).
Qed.

Theorem hl_ty_int_native : hl_ty_int = int.
prove hl_subtype R hl_integer = int.
apply set_ext.
- let x. assume Hx. apply (hl_integer_compat x (hl_subtype_Subq R hl_integer x Hx)). assume H _. apply H. exact (SepE2 R (fun x => hl_integer x = 1) x Hx).
- let x. assume Hx. claim HxR: x :e R. { exact (int_Subq_R x Hx). }
  prove x :e {x :e R | hl_integer x = 1}.
  apply (SepI R (fun x => hl_integer x = 1) x HxR). apply (hl_integer_compat x HxR). assume _ H. exact (H Hx).
Qed.

Theorem int_hl_ty : forall x :e int, x :e hl_ty_int.
let x. assume Hx. rewrite hl_ty_int_native. exact Hx.
Qed.

