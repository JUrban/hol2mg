// hol2mg compatibility theorems (docs/DESIGN.md §21.4): for each mapped HOL constant, the
// literal interpretation (generated from the HOL kernel definition, see _literal.mg) agrees
// with the native template under the representation relations.  Statements are generated
// (generated/cert/<profile>/_compat_required.mg) and must be copied verbatim; proofs are by
// hand from the literal definitions only (no admitted fact is used).  Checked after
// _literal_typing.mg.  Every theorem is Qed.

// ---- order on the surreals: < versus ~<= ----
Theorem SNoLt_iff_not_Le : forall x y:set, SNo x -> SNo y -> (x < y <-> ~ (y <= x)).
let x y. assume Hx Hy. apply iffI.
- assume H1 H2. exact (SNoLt_irref x (SNoLtLe_tra x y x Hx Hy Hx H1 H2)).
- assume H. apply (SNoLtLe_or x y Hx Hy).
  + assume H1. exact H1.
  + assume H1. exact (FalseE (H H1) (x < y)).
Qed.

// ---- reals (primitive interface) ----
Theorem hl_real_le_compat : forall l1 l2 :e R, hl_real_le l1 l2 = 1 <-> l1 <= l2.
let l1. assume H1. let l2. assume H2. exact (hl_real_le_iff l1 H1 l2 H2).
Qed.
Theorem hl_real_lt_compat : forall l1 l2 :e R, hl_real_lt l1 l2 = 1 <-> l1 < l2.
let l1. assume H1. let l2. assume H2.
rewrite (hl_real_lt_unfold l1 H1 l2 H2).
apply (iff_trans ((if ~ hl_real_le l2 l1 = 1 then 1 else 0) = 1) (~ hl_real_le l2 l1 = 1) (l1 < l2) (If_1_iff (~ hl_real_le l2 l1 = 1))).
rewrite (hl_real_le_ap l2 H2 l1 H1).
apply (iff_trans (~ (if l2 <= l1 then 1 else 0) = 1) (~ l2 <= l1) (l1 < l2)).
- apply iffI.
  + assume H H'. apply H. exact (If_i_1 (l2 <= l1) 1 0 H').
  + assume H H'. apply H. apply (If_1_iff (l2 <= l1)). assume H3 _. exact (H3 H').
- exact (iff_sym (l1 < l2) (~ l2 <= l1) (SNoLt_iff_not_Le l1 l2 (real_SNo l1 H1) (real_SNo l2 H2))).
Qed.
Theorem hl_real_add_compat : forall l1 l2 :e R, hl_real_add l1 l2 = l1 + l2.
let l1. assume H1. let l2. assume H2. exact (hl_real_add_ap l1 H1 l2 H2).
Qed.
Theorem hl_real_mul_compat : forall l1 l2 :e R, hl_real_mul l1 l2 = l1 * l2.
let l1. assume H1. let l2. assume H2. exact (hl_real_mul_ap l1 H1 l2 H2).
Qed.
Theorem hl_real_neg_compat : forall l1 :e R, hl_real_neg l1 = - l1.
let l1. assume H1. exact (hl_real_neg_ap l1 H1).
Qed.
Theorem hl_real_inv_compat : forall l1 :e R, hl_real_inv l1 = recip_SNo l1.
let l1. assume H1. exact (hl_real_inv_ap l1 H1).
Qed.
Theorem hl_real_of_num_compat : forall l1 :e omega, hl_real_of_num l1 = l1.
let l1. assume H1. exact (hl_real_of_num_ap l1 H1).
Qed.
Theorem hl_real_sub_compat : forall l1 l2 :e R, hl_real_sub l1 l2 = l1 + - l2.
let l1. assume H1. let l2. assume H2.
rewrite (hl_real_sub_unfold l1 H1 l2 H2). rewrite (hl_real_neg_ap l2 H2).
exact (hl_real_add_ap l1 H1 (- l2) (real_minus_SNo l2 H2)).
Qed.
Theorem hl_real_div_compat : forall l1 l2 :e R, hl_real_div l1 l2 = l1 :/: l2.
let l1. assume H1. let l2. assume H2.
rewrite (hl_real_div_unfold l1 H1 l2 H2). rewrite (hl_real_inv_ap l2 H2).
exact (hl_real_mul_ap l1 H1 (recip_SNo l2) (real_recip_SNo l2 H2)).
Qed.
Theorem hl_real_gt_compat : forall l1 l2 :e R, hl_real_gt l1 l2 = 1 <-> l2 < l1.
let l1. assume H1. let l2. assume H2.
rewrite (hl_real_gt_unfold l1 H1 l2 H2). exact (hl_real_lt_compat l2 H2 l1 H1).
Qed.
Theorem hl_real_ge_compat : forall l1 l2 :e R, hl_real_ge l1 l2 = 1 <-> l2 <= l1.
let l1. assume H1. let l2. assume H2.
rewrite (hl_real_ge_unfold l1 H1 l2 H2). exact (hl_real_le_iff l2 H2 l1 H1).
Qed.
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
Theorem hl_real_max_compat : forall l1 l2 :e R, hl_real_max l1 l2 = if l1 <= l2 then l2 else l1.
let l1. assume H1. let l2. assume H2.
rewrite (hl_real_max_unfold l1 H1 l2 H2).
claim Ht: hl_real_le l1 l2 :e 2.
{ rewrite (hl_real_le_ap l1 H1 l2 H2). exact (If_in_2 (l1 <= l2)). }
exact (hl_COND_if R (hl_real_le l1 l2) Ht (l1 <= l2) (hl_real_le_iff l1 H1 l2 H2) l2 H2 l1 H1).
Qed.
Theorem hl_real_min_compat : forall l1 l2 :e R, hl_real_min l1 l2 = if l1 <= l2 then l1 else l2.
let l1. assume H1. let l2. assume H2.
rewrite (hl_real_min_unfold l1 H1 l2 H2).
claim Ht: hl_real_le l1 l2 :e 2.
{ rewrite (hl_real_le_ap l1 H1 l2 H2). exact (If_in_2 (l1 <= l2)). }
exact (hl_COND_if R (hl_real_le l1 l2) Ht (l1 <= l2) (hl_real_le_iff l1 H1 l2 H2) l1 H1 l2 H2).
Qed.

// ---- naturals: primitive constructors and numerals ----
Theorem hl_zero_compat : hl_zero = 0.
exact (fun q H => H).
Qed.
Theorem hl_SUC_compat : forall l1 :e omega, hl_SUC l1 = ordsucc l1.
let l1. assume H1. exact (hl_SUC_ap l1 H1).
Qed.
Theorem hl_NUMERAL_compat : forall l1 :e omega, hl_NUMERAL l1 = l1.
let l1. assume H1. exact (hl_NUMERAL_unfold l1 H1).
Qed.

// ---- sets as predicates ----
Theorem hl_IN_compat : forall A:set, A <> Empty -> forall l1 :e A, forall l2 :e 2 :^: A, hl_IN A l1 l2 = 1 <-> l1 :e hl_rep A l2.
let A. assume _. let l1. assume H1. let l2. assume H2.
rewrite (hl_IN_unfold A l1 H1 l2 H2). exact (hl_rep_iff A l2 l1 H1).
Qed.
Theorem hl_SUBSET_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_SUBSET A l1 l2 = 1 <-> hl_rep A l1 c= hl_rep A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
rewrite (hl_SUBSET_unfold A l1 H1 l2 H2).
apply (iff_trans ((if forall x :e A, hl_IN A x l1 = 1 -> hl_IN A x l2 = 1 then 1 else 0) = 1) (forall x :e A, hl_IN A x l1 = 1 -> hl_IN A x l2 = 1) (hl_rep A l1 c= hl_rep A l2) (If_1_iff (forall x :e A, hl_IN A x l1 = 1 -> hl_IN A x l2 = 1))).
apply iffI.
- assume H. let x. assume Hx: x :e hl_rep A l1.
  claim HxA: x :e A. { exact (hl_rep_Subq A l1 x Hx). }
  apply (hl_IN_compat A HA x HxA l2 H2). assume H3 _. apply H3. apply (H x HxA).
  apply (hl_IN_compat A HA x HxA l1 H1). assume _ H4. exact (H4 Hx).
- assume H. let x. assume HxA. assume Hx1.
  apply (hl_IN_compat A HA x HxA l2 H2). assume _ H3. apply H3. apply H.
  apply (hl_IN_compat A HA x HxA l1 H1). assume H4 _. exact (H4 Hx1).
Qed.
Theorem hl_EMPTY_compat : forall A:set, A <> Empty -> hl_rep A (hl_EMPTY A) = Empty.
let A. assume _.
apply Empty_eq. let x. assume Hx: x :e hl_rep A (hl_EMPTY A).
claim HxA: x :e A. { exact (hl_rep_Subq A (hl_EMPTY A) x Hx). }
claim H1: hl_EMPTY A x = 1. { apply (hl_rep_iff A (hl_EMPTY A) x HxA). assume _ H. exact (H Hx). }
apply (If_1_iff False). assume H2 _. apply H2.
rewrite <- (hl_EMPTY_unfold A x HxA). exact H1.
Qed.
Theorem hl_UNIV_compat : forall A:set, A <> Empty -> hl_rep A (hl_UNIV A) = A.
let A. assume _.
apply set_ext.
- exact (hl_rep_Subq A (hl_UNIV A)).
- let x. assume Hx. apply (hl_rep_iff A (hl_UNIV A) x Hx). assume H _. apply H.
  rewrite (hl_UNIV_unfold A x Hx). exact (If_i_1 True 1 0 (fun p H => H)).
Qed.
Theorem hl_INSERT_compat : forall A:set, A <> Empty -> forall l1 :e A, forall l2 :e 2 :^: A, hl_rep A (hl_INSERT A l1 l2) = SetAdjoin (hl_rep A l2) l1.
let A. assume HA. let l1. assume H1. let l2. assume H2.
apply set_ext.
- let x. assume Hx: x :e hl_rep A (hl_INSERT A l1 l2).
  claim HxA: x :e A. { exact (hl_rep_Subq A (hl_INSERT A l1 l2) x Hx). }
  claim Hv: hl_INSERT A l1 l2 x = 1. { apply (hl_rep_iff A (hl_INSERT A l1 l2) x HxA). assume _ H. exact (H Hx). }
  claim Hv2: (if hl_IN A x l2 = 1 \/ x = l1 then 1 else 0) = 1.
  { exact ((hl_INSERT_unfold A l1 H1 l2 H2 x HxA) (fun u v => u = 1) Hv). }
  apply (If_1_iff (hl_IN A x l2 = 1 \/ x = l1)). assume H3 _.
  apply (H3 Hv2).
  + assume H4: hl_IN A x l2 = 1.
    prove x :e hl_rep A l2 :\/: {l1}.
    apply (binunionI1 (hl_rep A l2) {l1} x).
    apply (hl_IN_compat A HA x HxA l2 H2). assume H5 _. exact (H5 H4).
  + assume H4: x = l1.
    prove x :e hl_rep A l2 :\/: {l1}.
    apply (binunionI2 (hl_rep A l2) {l1} x). rewrite H4. exact (SingI l1).
- let x. assume Hx: x :e SetAdjoin (hl_rep A l2) l1.
  apply (binunionE (hl_rep A l2) {l1} x Hx).
  + assume H3: x :e hl_rep A l2.
    claim HxA: x :e A. { exact (hl_rep_Subq A l2 x H3). }
    apply (hl_rep_iff A (hl_INSERT A l1 l2) x HxA). assume H4 _. apply H4.
    rewrite (hl_INSERT_unfold A l1 H1 l2 H2 x HxA).
    apply (If_i_1 (hl_IN A x l2 = 1 \/ x = l1) 1 0).
    apply orIL. apply (hl_IN_compat A HA x HxA l2 H2). assume _ H5. exact (H5 H3).
  + assume H3: x :e {l1}.
    claim Hxl: x = l1. { exact (SingE l1 x H3). }
    claim HxA: x :e A. { rewrite Hxl. exact H1. }
    apply (hl_rep_iff A (hl_INSERT A l1 l2) x HxA). assume H4 _. apply H4.
    rewrite (hl_INSERT_unfold A l1 H1 l2 H2 x HxA).
    apply (If_i_1 (hl_IN A x l2 = 1 \/ x = l1) 1 0).
    apply orIR. exact Hxl.
Qed.

// ---- injectivity and surjectivity of functions ----
Theorem hl_ONE_ONE_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> (hl_ONE_ONE A B l1 = 1 <-> forall x y :e A, f1 x = f1 y -> x = y).
let A B. assume _ _. let l1. assume H1. let f1. assume Hf.
rewrite (hl_ONE_ONE_unfold A B l1 H1).
apply (iff_trans ((if forall x1 x2 :e A, l1 x1 = l1 x2 -> x1 = x2 then 1 else 0) = 1) (forall x1 x2 :e A, l1 x1 = l1 x2 -> x1 = x2) (forall x y :e A, f1 x = f1 y -> x = y) (If_1_iff (forall x1 x2 :e A, l1 x1 = l1 x2 -> x1 = x2))).
apply iffI.
- assume H. let x. assume Hx. let y. assume Hy. rewrite <- (Hf x Hx). rewrite <- (Hf y Hy). exact (H x Hx y Hy).
- assume H. let x. assume Hx. let y. assume Hy. rewrite (Hf x Hx). rewrite (Hf y Hy). exact (H x Hx y Hy).
Qed.
Theorem hl_ONTO_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> (hl_ONTO A B l1 = 1 <-> forall y :e B, exists x :e A, f1 x = y).
let A B. assume _ _. let l1. assume H1. let f1. assume Hf.
rewrite (hl_ONTO_unfold A B l1 H1).
apply (iff_trans ((if forall y :e B, exists x :e A, y = l1 x then 1 else 0) = 1) (forall y :e B, exists x :e A, y = l1 x) (forall y :e B, exists x :e A, f1 x = y) (If_1_iff (forall y :e B, exists x :e A, y = l1 x))).
apply iffI.
- assume H. let y. assume Hy. apply (H y Hy). let x. assume Hx0. apply Hx0. assume Hx Hyx.
  witness x. apply andI.
  + exact Hx.
  + rewrite <- (Hf x Hx). exact (eq_sym_i y (l1 x) Hyx).
- assume H. let y. assume Hy. apply (H y Hy). let x. assume Hx0. apply Hx0. assume Hx Hyx.
  witness x. apply andI.
  + exact Hx.
  + rewrite (Hf x Hx). exact (eq_sym_i (f1 x) y Hyx).
Qed.
