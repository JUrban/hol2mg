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

// ---- natural-number arithmetic (HOL Light recursive definitions via choice) ----
Theorem hl_numeral_omega : forall n :e omega, hl_NUMERAL n :e omega.
let n. assume Hn. exact (setexp_ap omega omega hl_NUMERAL hl_NUMERAL_in n Hn).
Qed.
Theorem hl_BIT0_omega : forall n :e omega, hl_BIT0 n :e omega.
let n. assume Hn. exact (setexp_ap omega omega hl_BIT0 hl_BIT0_in n Hn).
Qed.
Theorem hl_BIT1_omega : forall n :e omega, hl_BIT1 n :e omega.
let n. assume Hn. exact (setexp_ap omega omega hl_BIT1 hl_BIT1_in n Hn).
Qed.
Theorem hl_SUC_omega : forall n :e omega, hl_SUC n :e omega.
let n. assume Hn. rewrite (hl_SUC_ap n Hn). exact (omega_ordsucc n Hn).
Qed.
Theorem hl_zero_omega : hl_zero :e omega.
exact (nat_p_omega 0 nat_0).
Qed.
Theorem hl_NUMERAL_zero : hl_NUMERAL hl_zero = 0.
exact (hl_NUMERAL_unfold hl_zero hl_zero_omega).
Qed.
Theorem add_SNo_ordsucc_L : forall m n :e omega, ordsucc m + n = ordsucc (m + n).
let m. assume Hm. let n. assume Hn.
rewrite <- (add_nat_add_SNo (ordsucc m) (omega_ordsucc m Hm) n Hn).
rewrite <- (add_nat_add_SNo m Hm n Hn).
exact (add_nat_SL m (omega_nat_p m Hm) n (omega_nat_p n Hn)).
Qed.
Theorem hl_add_unique : forall g:set, g :e omega :^: omega :^: omega ->
  (forall n :e omega, g (hl_NUMERAL hl_zero) n = n) /\ (forall m n :e omega, g (hl_SUC m) n = hl_SUC (g m n)) ->
  forall m n :e omega, g m n = m + n.
let g. assume Hg HP. apply HP. assume H0 HS.
claim Hind: forall m, nat_p m -> forall n :e omega, g m n = m + n.
{ apply (nat_ind (fun m => forall n :e omega, g m n = m + n)).
  - let n. assume Hn. rewrite (add_SNo_0L n (omega_SNo n Hn)). rewrite <- hl_NUMERAL_zero at 1. exact (H0 n Hn).
  - let m. assume Hm IH. let n. assume Hn.
    claim Hmo: m :e omega. { exact (nat_p_omega m Hm). }
    rewrite (add_SNo_ordsucc_L m Hmo n Hn). rewrite <- (IH n Hn).
    rewrite <- (hl_SUC_ap m Hmo). rewrite <- (hl_SUC_ap (g m n) (setexp_ap omega omega (g m) (setexp_ap omega (omega :^: omega) g Hg m Hmo) n Hn)).
    exact (HS m Hmo n Hn). }
let m. assume Hm. exact (Hind m (omega_nat_p m Hm)).
Qed.
Theorem hl_add_compat : forall l1 l2 :e omega, hl_add l1 l2 = l1 + l2.
let l1. assume H1. let l2. assume H2.
rewrite hl_add_unfold.
claim Htag: hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero)))))) :e omega.
{ apply hl_numeral_omega. apply hl_BIT1_omega. apply hl_BIT1_omega. apply hl_BIT0_omega. apply hl_BIT1_omega. apply hl_BIT0_omega. apply hl_BIT1_omega. exact hl_zero_omega. }
claim Hex: exists g :e omega :^: omega :^: omega, (forall n :e omega, g (hl_NUMERAL hl_zero) n = n) /\ forall m n :e omega, g (hl_SUC m) n = hl_SUC (g m n).
{ witness (fun m :e omega => fun n :e omega => m + n).
  claim Hw: (fun m :e omega => fun n :e omega => m + n) :e omega :^: omega :^: omega.
  { prove (fun m :e omega => fun n :e omega => m + n) :e Pi_ m :e omega, omega :^: omega.
    apply (lam_Pi omega (fun _ => omega :^: omega) (fun m => fun n :e omega => m + n)).
    let m. assume Hm. prove (fun n :e omega => m + n) :e Pi_ n :e omega, omega.
    apply (lam_Pi omega (fun _ => omega) (fun n => m + n)). let n. assume Hn. exact (add_SNo_In_omega m Hm n Hn). }
  apply andI.
  - exact Hw.
  - apply andI.
    + let n. assume Hn. rewrite hl_NUMERAL_zero.
      rewrite (beta omega (fun m => fun n :e omega => m + n) 0 (nat_p_omega 0 nat_0)).
      rewrite (beta omega (fun n => 0 + n) n Hn). exact (add_SNo_0L n (omega_SNo n Hn)).
    + let m. assume Hm. let n. assume Hn.
      rewrite (hl_SUC_ap m Hm).
      rewrite (beta omega (fun m => fun n :e omega => m + n) (ordsucc m) (omega_ordsucc m Hm)).
      rewrite (beta omega (fun n => ordsucc m + n) n Hn).
      rewrite (beta omega (fun m => fun n :e omega => m + n) m Hm).
      rewrite (beta omega (fun n => m + n) n Hn).
      rewrite (hl_SUC_ap (m + n) (add_SNo_In_omega m Hm n Hn)).
      exact (add_SNo_ordsucc_L m Hm n Hn). }
apply (hl_recdef (omega :^: omega :^: omega) omega (fun g => (forall n :e omega, g (hl_NUMERAL hl_zero) n = n) /\ forall m n :e omega, g (hl_SUC m) n = hl_SUC (g m n)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 (hl_BIT0 (hl_BIT1 (hl_BIT0 (hl_BIT1 hl_zero))))))) Htag Hex).
assume HP Hg.
apply hl_add_unique.
- exact Hg.
- exact HP.
- exact H1.
- exact H2.
Qed.

// ---- integers (carrier equation hl_ty_int = int is in carriers.mg) ----
Theorem hl_real_of_int_compat : forall l1 :e int, hl_real_of_int l1 = l1.
let x. assume Hx. prove hl_subtype_rep R hl_integer x = x. exact (hl_subtype_rep_ap R hl_integer x (int_hl_ty x Hx)).
Qed.
Theorem hl_int_of_real_compat : forall l1 :e R, hl_int_of_real l1 = if l1 :e int then l1 else 0.
let x. assume Hx. prove hl_subtype_abs R hl_integer x = if x :e int then x else 0.
apply (xm (x :e int)).
- assume H. rewrite (If_i_1 (x :e int) x 0 H). exact (hl_subtype_abs_in_ap R hl_integer x Hx (int_hl_ty x H)).
- assume H. rewrite (If_i_0 (x :e int) x 0 H).
  claim H0: 0 :e hl_subtype R hl_integer. { exact (int_hl_ty 0 (Subq_omega_int 0 (nat_p_omega 0 nat_0))). }
  claim Hn: x /:e hl_subtype R hl_integer. { assume H2. apply H. rewrite <- hl_ty_int_native. exact H2. }
  exact (hl_subtype_abs_out_ap R hl_integer H0 x Hx Hn).
Qed.
Theorem hl_int_of_real_int : forall x :e int, hl_int_of_real x = x.
let x. assume Hx. rewrite (hl_int_of_real_compat x (int_Subq_R x Hx)). exact (If_i_1 (x :e int) x 0 Hx).
Qed.
Theorem hl_int_of_num_compat : forall l1 :e omega, hl_int_of_num l1 = l1.
let n. assume Hn. rewrite (hl_int_of_num_unfold n Hn). rewrite (hl_real_of_num_ap n Hn). exact (hl_int_of_real_int n (Subq_omega_int n Hn)).
Qed.
Theorem hl_int_le_compat : forall l1 l2 :e int, hl_int_le l1 l2 = 1 <-> l1 <= l2.
let x. assume Hx. let y. assume Hy.
rewrite (hl_int_le_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)).
rewrite (hl_real_of_int_compat x Hx). rewrite (hl_real_of_int_compat y Hy).
exact (hl_real_le_iff x (int_Subq_R x Hx) y (int_Subq_R y Hy)).
Qed.
Theorem hl_int_lt_compat : forall l1 l2 :e int, hl_int_lt l1 l2 = 1 <-> l1 < l2.
let x. assume Hx. let y. assume Hy.
rewrite (hl_int_lt_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)).
rewrite (hl_real_of_int_compat x Hx). rewrite (hl_real_of_int_compat y Hy).
exact (hl_real_lt_compat x (int_Subq_R x Hx) y (int_Subq_R y Hy)).
Qed.
Theorem hl_int_neg_compat : forall l1 :e int, hl_int_neg l1 = - l1.
let x. assume Hx.
rewrite (hl_int_neg_unfold x (int_hl_ty x Hx)). rewrite (hl_real_of_int_compat x Hx).
rewrite (hl_real_neg_ap x (int_Subq_R x Hx)). exact (hl_int_of_real_int (- x) (int_minus_SNo x Hx)).
Qed.
Theorem hl_int_add_compat : forall l1 l2 :e int, hl_int_add l1 l2 = l1 + l2.
let x. assume Hx. let y. assume Hy.
rewrite (hl_int_add_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)).
rewrite (hl_real_of_int_compat x Hx). rewrite (hl_real_of_int_compat y Hy).
rewrite (hl_real_add_ap x (int_Subq_R x Hx) y (int_Subq_R y Hy)). exact (hl_int_of_real_int (x + y) (int_add_SNo x Hx y Hy)).
Qed.
Theorem hl_int_mul_compat : forall l1 l2 :e int, hl_int_mul l1 l2 = l1 * l2.
let x. assume Hx. let y. assume Hy.
rewrite (hl_int_mul_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)).
rewrite (hl_real_of_int_compat x Hx). rewrite (hl_real_of_int_compat y Hy).
rewrite (hl_real_mul_ap x (int_Subq_R x Hx) y (int_Subq_R y Hy)). exact (hl_int_of_real_int (x * y) (int_mul_SNo x Hx y Hy)).
Qed.
Theorem hl_int_sub_compat : forall l1 l2 :e int, hl_int_sub l1 l2 = l1 + - l2.
let x. assume Hx. let y. assume Hy.
rewrite (hl_int_sub_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)).
rewrite (hl_real_of_int_compat x Hx). rewrite (hl_real_of_int_compat y Hy).
rewrite (hl_real_sub_compat x (int_Subq_R x Hx) y (int_Subq_R y Hy)).
exact (hl_int_of_real_int (x + - y) (int_add_SNo x Hx (- y) (int_minus_SNo y Hy))).
Qed.
Theorem hl_int_abs_compat : forall l1 :e int, hl_int_abs l1 = abs_SNo l1.
let x. assume Hx.
rewrite (hl_int_abs_unfold x (int_hl_ty x Hx)). rewrite (hl_real_of_int_compat x Hx).
rewrite (hl_real_abs_compat x (int_Subq_R x Hx)).
claim HxS: SNo x. { exact (int_SNo x Hx). }
apply (SNoLtLe_or x 0 HxS SNo_0).
- assume H. rewrite (neg_abs_SNo x HxS H). exact (hl_int_of_real_int (- x) (int_minus_SNo x Hx)).
- assume H. rewrite (nonneg_abs_SNo x H). exact (hl_int_of_real_int x Hx).
Qed.

// ---- helpers for two-argument set functions ----
Theorem lam2_Pi : forall A B C:set, forall F:set -> set -> set, (forall x :e A, forall y :e B, F x y :e C) -> (fun x :e A => fun y :e B => F x y) :e C :^: B :^: A.
let A B C F. assume H.
prove (fun x :e A => fun y :e B => F x y) :e Pi_ x :e A, C :^: B.
apply (lam_Pi A (fun _ => C :^: B) (fun x => fun y :e B => F x y)).
let x. assume Hx. prove (fun y :e B => F x y) :e Pi_ y :e B, C.
apply (lam_Pi B (fun _ => C) (fun y => F x y)). let y. assume Hy. exact (H x Hx y Hy).
Qed.
Theorem lam2_beta : forall A B:set, forall F:set -> set -> set, forall x :e A, forall y :e B, (fun x :e A => fun y :e B => F x y) x y = F x y.
let A B F x. assume Hx. let y. assume Hy.
rewrite (beta A (fun x => fun y :e B => F x y) x Hx). exact (beta B (fun y => F x y) y Hy).
Qed.
Theorem setexp2_ap : forall A B C g:set, g :e C :^: B :^: A -> forall x :e A, forall y :e B, g x y :e C.
let A B C g. assume Hg. let x. assume Hx. let y. assume Hy.
exact (setexp_ap B C (g x) (setexp_ap A (C :^: B) g Hg x Hx) y Hy).
Qed.
Theorem omega_ordinal_p : forall n :e omega, ordinal n.
let n. assume Hn. exact (nat_p_ordinal n (omega_nat_p n Hn)).
Qed.

// ---- BIT0 / BIT1 ----
Theorem two_mul_ordsucc : forall n :e omega, 2 * ordsucc n = ordsucc (ordsucc (2 * n)).
let n. assume Hn.
claim HnS: SNo n. { exact (omega_SNo n Hn). }
claim Hn2: 2 * n :e omega. { exact (mul_SNo_In_omega 2 (nat_p_omega 2 nat_2) n Hn). }
claim H2nS: SNo (2 * n). { exact (omega_SNo (2 * n) Hn2). }
exact (eq_trans_i (2 * ordsucc n) (2 * (n + 1)) (ordsucc (ordsucc (2 * n)))
  (f_equal (fun x => 2 * x) (ordsucc n) (n + 1) (eq_sym_i (n + 1) (ordsucc n) (add_SNo_1_ordsucc n Hn)))
  (eq_trans_i (2 * (n + 1)) (2 * n + 2 * 1) (ordsucc (ordsucc (2 * n)))
    (mul_SNo_distrL 2 n 1 SNo_2 HnS SNo_1)
    (eq_trans_i (2 * n + 2 * 1) (2 * n + (1 + 1)) (ordsucc (ordsucc (2 * n)))
      (f_equal (fun x => 2 * n + x) (2 * 1) (1 + 1) (eq_trans_i (2 * 1) 2 (1 + 1) (mul_SNo_oneR 2 SNo_2) (eq_sym_i (1 + 1) 2 add_SNo_1_1_2)))
      (eq_trans_i (2 * n + (1 + 1)) ((2 * n + 1) + 1) (ordsucc (ordsucc (2 * n)))
        (add_SNo_assoc (2 * n) 1 1 H2nS SNo_1 SNo_1)
        (eq_trans_i ((2 * n + 1) + 1) (ordsucc (2 * n) + 1) (ordsucc (ordsucc (2 * n)))
          (f_equal (fun x => x + 1) (2 * n + 1) (ordsucc (2 * n)) (add_SNo_1_ordsucc (2 * n) Hn2))
          (add_SNo_1_ordsucc (ordsucc (2 * n)) (omega_ordsucc (2 * n) Hn2))))))).
Qed.
Theorem hl_BIT0_compat : forall l1 :e omega, hl_BIT0 l1 = 2 * l1.
claim Hex: exists g :e omega :^: omega, g (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero /\ forall n :e omega, g (hl_SUC n) = hl_SUC (hl_SUC (g n)).
{ witness (fun n :e omega => 2 * n).
  claim Hw: (fun n :e omega => 2 * n) :e omega :^: omega.
  { exact (hl_lam_Pi omega omega (fun n => 2 * n) (fun n Hn => mul_SNo_In_omega 2 (nat_p_omega 2 nat_2) n Hn)). }
  apply andI.
  - exact Hw.
  - apply andI.
    + exact (eq_trans_i ((fun n :e omega => 2 * n) (hl_NUMERAL hl_zero)) (2 * 0) (hl_NUMERAL hl_zero)
        (eq_trans_i ((fun n :e omega => 2 * n) (hl_NUMERAL hl_zero)) ((fun n :e omega => 2 * n) 0) (2 * 0)
          (f_equal (fun x => (fun n :e omega => 2 * n) x) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)
          (beta omega (fun n => 2 * n) 0 (nat_p_omega 0 nat_0)))
        (eq_trans_i (2 * 0) 0 (hl_NUMERAL hl_zero) (mul_SNo_zeroR 2 SNo_2) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero))).
    + let n. assume Hn.
      claim Hn2: 2 * n :e omega. { exact (mul_SNo_In_omega 2 (nat_p_omega 2 nat_2) n Hn). }
      exact (eq_trans_i ((fun n :e omega => 2 * n) (hl_SUC n)) (2 * ordsucc n) (hl_SUC (hl_SUC ((fun n :e omega => 2 * n) n)))
        (eq_trans_i ((fun n :e omega => 2 * n) (hl_SUC n)) ((fun n :e omega => 2 * n) (ordsucc n)) (2 * ordsucc n)
          (f_equal (fun x => (fun n :e omega => 2 * n) x) (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hn))
          (beta omega (fun n => 2 * n) (ordsucc n) (omega_ordsucc n Hn)))
        (eq_trans_i (2 * ordsucc n) (ordsucc (ordsucc (2 * n))) (hl_SUC (hl_SUC ((fun n :e omega => 2 * n) n)))
          (two_mul_ordsucc n Hn)
          (eq_sym_i (hl_SUC (hl_SUC ((fun n :e omega => 2 * n) n))) (ordsucc (ordsucc (2 * n)))
            (eq_trans_i (hl_SUC (hl_SUC ((fun n :e omega => 2 * n) n))) (hl_SUC (hl_SUC (2 * n))) (ordsucc (ordsucc (2 * n)))
              (f_equal (fun x => hl_SUC (hl_SUC x)) ((fun n :e omega => 2 * n) n) (2 * n) (beta omega (fun n => 2 * n) n Hn))
              (eq_trans_i (hl_SUC (hl_SUC (2 * n))) (hl_SUC (ordsucc (2 * n))) (ordsucc (ordsucc (2 * n)))
                (f_equal (fun x => hl_SUC x) (hl_SUC (2 * n)) (ordsucc (2 * n)) (hl_SUC_ap (2 * n) Hn2))
                (hl_SUC_ap (ordsucc (2 * n)) (omega_ordsucc (2 * n) Hn2))))))). }
apply (hl_BIT0_spec Hex). assume HP Hg. apply HP. assume H0 HS.
claim Hbase: hl_BIT0 0 = 2 * 0.
{ exact (eq_trans_i (hl_BIT0 0) (hl_BIT0 (hl_NUMERAL hl_zero)) (2 * 0)
      (f_equal (fun x => hl_BIT0 x) 0 (hl_NUMERAL hl_zero) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero))
      (eq_trans_i (hl_BIT0 (hl_NUMERAL hl_zero)) (hl_NUMERAL hl_zero) (2 * 0) H0
        (eq_trans_i (hl_NUMERAL hl_zero) 0 (2 * 0) hl_NUMERAL_zero (eq_sym_i (2 * 0) 0 (mul_SNo_zeroR 2 SNo_2))))). }
claim Hstep: forall n, nat_p n -> (hl_BIT0 n = 2 * n) -> hl_BIT0 (ordsucc n) = 2 * (ordsucc n).
{ let n. assume Hn IH.
    claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
    claim Hb: hl_BIT0 n :e omega. { exact (setexp_ap omega omega hl_BIT0 Hg n Hno). }
    exact (eq_trans_i (hl_BIT0 (ordsucc n)) (hl_BIT0 (hl_SUC n)) (2 * ordsucc n)
      (f_equal (fun x => hl_BIT0 x) (ordsucc n) (hl_SUC n) (eq_sym_i (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hno)))
      (eq_trans_i (hl_BIT0 (hl_SUC n)) (hl_SUC (hl_SUC (hl_BIT0 n))) (2 * ordsucc n) (HS n Hno)
        (eq_trans_i (hl_SUC (hl_SUC (hl_BIT0 n))) (ordsucc (ordsucc (2 * n))) (2 * ordsucc n)
          (eq_trans_i (hl_SUC (hl_SUC (hl_BIT0 n))) (hl_SUC (ordsucc (hl_BIT0 n))) (ordsucc (ordsucc (2 * n)))
            (f_equal (fun x => hl_SUC x) (hl_SUC (hl_BIT0 n)) (ordsucc (hl_BIT0 n)) (hl_SUC_ap (hl_BIT0 n) Hb))
            (eq_trans_i (hl_SUC (ordsucc (hl_BIT0 n))) (ordsucc (ordsucc (hl_BIT0 n))) (ordsucc (ordsucc (2 * n)))
              (hl_SUC_ap (ordsucc (hl_BIT0 n)) (omega_ordsucc (hl_BIT0 n) Hb))
              (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 n) (2 * n) IH)))
          (eq_sym_i (2 * ordsucc n) (ordsucc (ordsucc (2 * n))) (two_mul_ordsucc n Hno))))). }
claim Hind: forall n, nat_p n -> hl_BIT0 n = 2 * n.
{ exact (nat_ind (fun n => hl_BIT0 n = 2 * n) Hbase Hstep). }
let n. assume Hn. exact (Hind n (omega_nat_p n Hn)).
Qed.
Theorem hl_BIT1_compat : forall l1 :e omega, hl_BIT1 l1 = 2 * l1 + 1.
let n. assume Hn.
claim Hn2: 2 * n :e omega. { exact (mul_SNo_In_omega 2 (nat_p_omega 2 nat_2) n Hn). }
exact (eq_trans_i (hl_BIT1 n) (hl_SUC (hl_BIT0 n)) (2 * n + 1) (hl_BIT1_unfold n Hn)
  (eq_trans_i (hl_SUC (hl_BIT0 n)) (hl_SUC (2 * n)) (2 * n + 1)
    (f_equal (fun x => hl_SUC x) (hl_BIT0 n) (2 * n) (hl_BIT0_compat n Hn))
    (eq_trans_i (hl_SUC (2 * n)) (ordsucc (2 * n)) (2 * n + 1) (hl_SUC_ap (2 * n) Hn2)
      (eq_sym_i (2 * n + 1) (ordsucc (2 * n)) (add_SNo_1_ordsucc (2 * n) Hn2))))).
Qed.
Theorem hl_one_numeral : hl_NUMERAL (hl_BIT1 hl_zero) = 1.
exact (eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1
  (hl_NUMERAL_unfold (hl_BIT1 hl_zero) (hl_BIT1_omega hl_zero hl_zero_omega))
  (eq_trans_i (hl_BIT1 hl_zero) (2 * 0 + 1) 1 (hl_BIT1_compat hl_zero hl_zero_omega)
    (eq_trans_i (2 * 0 + 1) (0 + 1) 1 (f_equal (fun x => x + 1) (2 * 0) 0 (mul_SNo_zeroR 2 SNo_2)) (add_SNo_0L 1 SNo_1)))).
Qed.

// ---- closure of natural and real exponentiation ----
Theorem exp_SNo_nat_In_omega : forall m n :e omega, m ^ n :e omega.
let m. assume Hm. let n. assume Hn. exact (nat_p_omega (m ^ n) (nat_exp_SNo_nat m (omega_nat_p m Hm) n (omega_nat_p n Hn))).
Qed.
Theorem real_exp_SNo_nat : forall x :e R, forall n :e omega, x ^ n :e R.
let x. assume Hx.
claim Hbase: x ^ 0 :e R. { exact ((exp_SNo_nat_0 x (real_SNo x Hx)) (fun u v => v :e R) real_1). }
claim Hstep: forall n, nat_p n -> x ^ n :e R -> x ^ ordsucc n :e R.
{ let n. assume Hn IH. exact ((exp_SNo_nat_S x (real_SNo x Hx) n Hn) (fun u v => v :e R) (real_mul_SNo x Hx (x ^ n) IH)). }
let n. assume Hn. exact (nat_ind (fun n => x ^ n :e R) Hbase Hstep n (omega_nat_p n Hn)).
Qed.

// ---- multiplication, exponentiation, predecessor, factorial ----
Theorem mul_SNo_ordsucc_L : forall m n :e omega, ordsucc m * n = m * n + n.
let m. assume Hm. let n. assume Hn.
exact (eq_trans_i (ordsucc m * n) (mul_nat (ordsucc m) n) (m * n + n)
  (eq_sym_i (mul_nat (ordsucc m) n) (ordsucc m * n) (mul_nat_mul_SNo (ordsucc m) (omega_ordsucc m Hm) n Hn))
  (eq_trans_i (mul_nat (ordsucc m) n) (add_nat (mul_nat m n) n) (m * n + n)
    (mul_nat_SL m (omega_nat_p m Hm) n (omega_nat_p n Hn))
    (eq_trans_i (add_nat (mul_nat m n) n) (add_nat (m * n) n) (m * n + n)
      (f_equal (fun x => add_nat x n) (mul_nat m n) (m * n) (mul_nat_mul_SNo m Hm n Hn))
      (add_nat_add_SNo (m * n) (mul_SNo_In_omega m Hm n Hn) n Hn)))).
Qed.
Theorem hl_mul_compat : forall l1 l2 :e omega, hl_mul l1 l2 = l1 * l2.
claim Hex: exists g :e omega :^: omega :^: omega, (forall n :e omega, g (hl_NUMERAL hl_zero) n = hl_NUMERAL hl_zero) /\ forall m n :e omega, g (hl_SUC m) n = hl_add (g m n) n.
{ witness (fun m :e omega => fun n :e omega => m * n).
  claim Hw: (fun m :e omega => fun n :e omega => m * n) :e omega :^: omega :^: omega.
  { exact (lam2_Pi omega omega omega (fun m n => m * n) (fun m Hm n Hn => mul_SNo_In_omega m Hm n Hn)). }
  apply andI.
  - exact Hw.
  - apply andI.
    + let n. assume Hn.
      exact (eq_trans_i ((fun m :e omega => fun n :e omega => m * n) (hl_NUMERAL hl_zero) n) ((fun m :e omega => fun n :e omega => m * n) 0 n) (hl_NUMERAL hl_zero)
        (f_equal (fun x => (fun m :e omega => fun n :e omega => m * n) x n) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)
        (eq_trans_i ((fun m :e omega => fun n :e omega => m * n) 0 n) (0 * n) (hl_NUMERAL hl_zero)
          (lam2_beta omega omega (fun m n => m * n) 0 (nat_p_omega 0 nat_0) n Hn)
          (eq_trans_i (0 * n) 0 (hl_NUMERAL hl_zero) (mul_SNo_zeroL n (omega_SNo n Hn)) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)))).
    + let m. assume Hm. let n. assume Hn.
      claim Hmn: m * n :e omega. { exact (mul_SNo_In_omega m Hm n Hn). }
      exact (eq_trans_i ((fun m :e omega => fun n :e omega => m * n) (hl_SUC m) n) (ordsucc m * n) (hl_add ((fun m :e omega => fun n :e omega => m * n) m n) n)
        (eq_trans_i ((fun m :e omega => fun n :e omega => m * n) (hl_SUC m) n) ((fun m :e omega => fun n :e omega => m * n) (ordsucc m) n) (ordsucc m * n)
          (f_equal (fun x => (fun m :e omega => fun n :e omega => m * n) x n) (hl_SUC m) (ordsucc m) (hl_SUC_ap m Hm))
          (lam2_beta omega omega (fun m n => m * n) (ordsucc m) (omega_ordsucc m Hm) n Hn))
        (eq_trans_i (ordsucc m * n) (m * n + n) (hl_add ((fun m :e omega => fun n :e omega => m * n) m n) n)
          (mul_SNo_ordsucc_L m Hm n Hn)
          (eq_sym_i (hl_add ((fun m :e omega => fun n :e omega => m * n) m n) n) (m * n + n)
            (eq_trans_i (hl_add ((fun m :e omega => fun n :e omega => m * n) m n) n) (hl_add (m * n) n) (m * n + n)
              (f_equal (fun x => hl_add x n) ((fun m :e omega => fun n :e omega => m * n) m n) (m * n) (lam2_beta omega omega (fun m n => m * n) m Hm n Hn))
              (hl_add_compat (m * n) Hmn n Hn))))). }
apply (hl_mul_spec Hex). assume HP Hg. apply HP. assume H0 HS.
claim Hind: forall m, nat_p m -> forall n :e omega, hl_mul m n = m * n.
{ apply (nat_ind (fun m => forall n :e omega, hl_mul m n = m * n)).
  - let n. assume Hn.
    exact (eq_trans_i (hl_mul 0 n) (hl_mul (hl_NUMERAL hl_zero) n) (0 * n)
      (f_equal (fun x => hl_mul x n) 0 (hl_NUMERAL hl_zero) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero))
      (eq_trans_i (hl_mul (hl_NUMERAL hl_zero) n) (hl_NUMERAL hl_zero) (0 * n) (H0 n Hn)
        (eq_trans_i (hl_NUMERAL hl_zero) 0 (0 * n) hl_NUMERAL_zero (eq_sym_i (0 * n) 0 (mul_SNo_zeroL n (omega_SNo n Hn)))))).
  - let m. assume Hm IH. let n. assume Hn.
    claim Hmo: m :e omega. { exact (nat_p_omega m Hm). }
    claim Hg2: hl_mul m n :e omega. { exact (setexp2_ap omega omega omega hl_mul Hg m Hmo n Hn). }
    exact (eq_trans_i (hl_mul (ordsucc m) n) (hl_mul (hl_SUC m) n) (ordsucc m * n)
      (f_equal (fun x => hl_mul x n) (ordsucc m) (hl_SUC m) (eq_sym_i (hl_SUC m) (ordsucc m) (hl_SUC_ap m Hmo)))
      (eq_trans_i (hl_mul (hl_SUC m) n) (hl_add (hl_mul m n) n) (ordsucc m * n) (HS m Hmo n Hn)
        (eq_trans_i (hl_add (hl_mul m n) n) (hl_mul m n + n) (ordsucc m * n) (hl_add_compat (hl_mul m n) Hg2 n Hn)
          (eq_trans_i (hl_mul m n + n) (m * n + n) (ordsucc m * n)
            (f_equal (fun x => x + n) (hl_mul m n) (m * n) (IH n Hn))
            (eq_sym_i (ordsucc m * n) (m * n + n) (mul_SNo_ordsucc_L m Hmo n Hn)))))). }
let m. assume Hm. exact (Hind m (omega_nat_p m Hm)).
Qed.
Theorem hl_EXP_compat : forall l1 l2 :e omega, hl_EXP l1 l2 = l1 ^ l2.
claim Hex: exists g :e omega :^: omega :^: omega, (forall m :e omega, g m (hl_NUMERAL hl_zero) = hl_NUMERAL (hl_BIT1 hl_zero)) /\ forall m n :e omega, g m (hl_SUC n) = hl_mul m (g m n).
{ witness (fun m :e omega => fun n :e omega => m ^ n).
  claim Hw: (fun m :e omega => fun n :e omega => m ^ n) :e omega :^: omega :^: omega.
  { exact (lam2_Pi omega omega omega (fun m n => m ^ n) (fun m Hm n Hn => exp_SNo_nat_In_omega m Hm n Hn)). }
  apply andI.
  - exact Hw.
  - apply andI.
    + let m. assume Hm.
      exact (eq_trans_i ((fun m :e omega => fun n :e omega => m ^ n) m (hl_NUMERAL hl_zero)) ((fun m :e omega => fun n :e omega => m ^ n) m 0) (hl_NUMERAL (hl_BIT1 hl_zero))
        (f_equal (fun x => (fun m :e omega => fun n :e omega => m ^ n) m x) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)
        (eq_trans_i ((fun m :e omega => fun n :e omega => m ^ n) m 0) (m ^ 0) (hl_NUMERAL (hl_BIT1 hl_zero))
          (lam2_beta omega omega (fun m n => m ^ n) m Hm 0 (nat_p_omega 0 nat_0))
          (eq_trans_i (m ^ 0) 1 (hl_NUMERAL (hl_BIT1 hl_zero)) (exp_SNo_nat_0 m (omega_SNo m Hm)) (eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral)))).
    + let m. assume Hm. let n. assume Hn.
      claim Hmn: m ^ n :e omega. { exact (exp_SNo_nat_In_omega m Hm n Hn). }
      exact (eq_trans_i ((fun m :e omega => fun n :e omega => m ^ n) m (hl_SUC n)) (m ^ ordsucc n) (hl_mul m ((fun m :e omega => fun n :e omega => m ^ n) m n))
        (eq_trans_i ((fun m :e omega => fun n :e omega => m ^ n) m (hl_SUC n)) ((fun m :e omega => fun n :e omega => m ^ n) m (ordsucc n)) (m ^ ordsucc n)
          (f_equal (fun x => (fun m :e omega => fun n :e omega => m ^ n) m x) (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hn))
          (lam2_beta omega omega (fun m n => m ^ n) m Hm (ordsucc n) (omega_ordsucc n Hn)))
        (eq_trans_i (m ^ ordsucc n) (m * m ^ n) (hl_mul m ((fun m :e omega => fun n :e omega => m ^ n) m n))
          (exp_SNo_nat_S m (omega_SNo m Hm) n (omega_nat_p n Hn))
          (eq_sym_i (hl_mul m ((fun m :e omega => fun n :e omega => m ^ n) m n)) (m * m ^ n)
            (eq_trans_i (hl_mul m ((fun m :e omega => fun n :e omega => m ^ n) m n)) (hl_mul m (m ^ n)) (m * m ^ n)
              (f_equal (fun x => hl_mul m x) ((fun m :e omega => fun n :e omega => m ^ n) m n) (m ^ n) (lam2_beta omega omega (fun m n => m ^ n) m Hm n Hn))
              (hl_mul_compat m Hm (m ^ n) Hmn))))). }
apply (hl_EXP_spec Hex). assume HP Hg. apply HP. assume H0 HS.
let m. assume Hm.
claim Hbase: hl_EXP m 0 = m ^ 0.
{ exact (eq_trans_i (hl_EXP m 0) (hl_EXP m (hl_NUMERAL hl_zero)) (m ^ 0)
      (f_equal (fun x => hl_EXP m x) 0 (hl_NUMERAL hl_zero) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero))
      (eq_trans_i (hl_EXP m (hl_NUMERAL hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero)) (m ^ 0) (H0 m Hm)
        (eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 (m ^ 0) hl_one_numeral (eq_sym_i (m ^ 0) 1 (exp_SNo_nat_0 m (omega_SNo m Hm)))))). }
claim Hstep: forall n, nat_p n -> (hl_EXP m n = m ^ n) -> hl_EXP m (ordsucc n) = m ^ (ordsucc n).
{ let n. assume Hn IH.
    claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
    claim Hg2: hl_EXP m n :e omega. { exact (setexp2_ap omega omega omega hl_EXP Hg m Hm n Hno). }
    exact (eq_trans_i (hl_EXP m (ordsucc n)) (hl_EXP m (hl_SUC n)) (m ^ ordsucc n)
      (f_equal (fun x => hl_EXP m x) (ordsucc n) (hl_SUC n) (eq_sym_i (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hno)))
      (eq_trans_i (hl_EXP m (hl_SUC n)) (hl_mul m (hl_EXP m n)) (m ^ ordsucc n) (HS m Hm n Hno)
        (eq_trans_i (hl_mul m (hl_EXP m n)) (m * hl_EXP m n) (m ^ ordsucc n) (hl_mul_compat m Hm (hl_EXP m n) Hg2)
          (eq_trans_i (m * hl_EXP m n) (m * m ^ n) (m ^ ordsucc n)
            (f_equal (fun x => m * x) (hl_EXP m n) (m ^ n) IH)
            (eq_sym_i (m ^ ordsucc n) (m * m ^ n) (exp_SNo_nat_S m (omega_SNo m Hm) n Hn)))))). }
claim Hind: forall n, nat_p n -> hl_EXP m n = m ^ n.
{ exact (nat_ind (fun n => hl_EXP m n = m ^ n) Hbase Hstep). }
let n. assume Hn. exact (Hind n (omega_nat_p n Hn)).
Qed.
Theorem nat_pred_0 : nat_pred 0 = 0.
prove (if 0 = 0 then 0 else 0 + - 1) = 0. exact (If_i_1 (0 = 0) 0 (0 + - 1) (fun q H => H)).
Qed.
Theorem nat_pred_ordsucc : forall n :e omega, nat_pred (ordsucc n) = n.
let n. assume Hn.
prove (if ordsucc n = 0 then 0 else ordsucc n + - 1) = n.
exact (eq_trans_i (if ordsucc n = 0 then 0 else ordsucc n + - 1) (ordsucc n + - 1) n
  (If_i_0 (ordsucc n = 0) 0 (ordsucc n + - 1) (neq_ordsucc_0 n))
  (eq_trans_i (ordsucc n + - 1) ((n + 1) + - 1) n
    (f_equal (fun x => x + - 1) (ordsucc n) (n + 1) (eq_sym_i (n + 1) (ordsucc n) (add_SNo_1_ordsucc n Hn)))
    (add_SNo_minus_R2 n 1 (omega_SNo n Hn) SNo_1))).
Qed.
Theorem hl_PRE_compat : forall l1 :e omega, hl_PRE l1 = nat_pred l1.
claim Hex: exists g :e omega :^: omega, g (hl_NUMERAL hl_zero) = hl_NUMERAL hl_zero /\ forall n :e omega, g (hl_SUC n) = n.
{ witness (fun n :e omega => nat_pred n).
  claim Hw: (fun n :e omega => nat_pred n) :e omega :^: omega.
  { exact (hl_lam_Pi omega omega (fun n => nat_pred n) (fun n Hn => nat_pred_omega n Hn)). }
  apply andI.
  - exact Hw.
  - apply andI.
    + rewrite hl_NUMERAL_zero. rewrite (beta omega (fun n => nat_pred n) 0 (nat_p_omega 0 nat_0)). exact nat_pred_0.
    + let n. assume Hn. rewrite (hl_SUC_ap n Hn). rewrite (beta omega (fun n => nat_pred n) (ordsucc n) (omega_ordsucc n Hn)). exact (nat_pred_ordsucc n Hn). }
apply (hl_PRE_spec Hex). assume HP Hg. apply HP. assume H0 HS.
let n. assume Hn.
apply (nat_inv n (omega_nat_p n Hn)).
- assume H: n = 0. rewrite H. rewrite nat_pred_0. rewrite <- hl_NUMERAL_zero at 1. rewrite <- hl_NUMERAL_zero at 2. exact H0.
- assume H: exists k, nat_p k /\ n = ordsucc k. apply (exandE_i nat_p (fun k => n = ordsucc k) H). let k. assume Hk Hnk.
  claim Hko: k :e omega. { exact (nat_p_omega k Hk). }
  rewrite Hnk. rewrite (nat_pred_ordsucc k Hko). rewrite <- (hl_SUC_ap k Hko). exact (HS k Hko).
Qed.
Theorem hl_FACT_compat : forall l1 :e omega, hl_FACT l1 = factorial l1.
claim Hf0: factorial 0 = 1. { prove nat_primrec 1 (fun i r => r * ordsucc i) 0 = 1. exact (nat_primrec_0 1 (fun i r => r * ordsucc i)). }
claim HfS: forall n :e omega, factorial (ordsucc n) = factorial n * ordsucc n.
{ let n. assume Hn. prove nat_primrec 1 (fun i r => r * ordsucc i) (ordsucc n) = nat_primrec 1 (fun i r => r * ordsucc i) n * ordsucc n.
  exact (nat_primrec_S 1 (fun i r => r * ordsucc i) n (omega_nat_p n Hn)). }
claim Hfo0: factorial 0 :e omega. { exact (Hf0 (fun u v => v :e omega) (nat_p_omega 1 nat_1)). }
claim HfoS: forall n, nat_p n -> factorial n :e omega -> factorial (ordsucc n) :e omega.
{ let n. assume Hn IH. exact ((HfS n (nat_p_omega n Hn)) (fun u v => v :e omega) (mul_SNo_In_omega (factorial n) IH (ordsucc n) (omega_ordsucc n (nat_p_omega n Hn)))). }
claim Hfo: forall n, nat_p n -> factorial n :e omega.
{ exact (nat_ind (fun n => factorial n :e omega) Hfo0 HfoS). }
claim Hex: exists g :e omega :^: omega, g (hl_NUMERAL hl_zero) = hl_NUMERAL (hl_BIT1 hl_zero) /\ forall n :e omega, g (hl_SUC n) = hl_mul (hl_SUC n) (g n).
{ witness (fun n :e omega => factorial n).
  claim Hw: (fun n :e omega => factorial n) :e omega :^: omega.
  { exact (hl_lam_Pi omega omega (fun n => factorial n) (fun n Hn => Hfo n (omega_nat_p n Hn))). }
  apply andI.
  - exact Hw.
  - apply andI.
    + exact (eq_trans_i ((fun n :e omega => factorial n) (hl_NUMERAL hl_zero)) ((fun n :e omega => factorial n) 0) (hl_NUMERAL (hl_BIT1 hl_zero))
        (f_equal (fun x => (fun n :e omega => factorial n) x) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)
        (eq_trans_i ((fun n :e omega => factorial n) 0) (factorial 0) (hl_NUMERAL (hl_BIT1 hl_zero))
          (beta omega (fun n => factorial n) 0 (nat_p_omega 0 nat_0))
          (eq_trans_i (factorial 0) 1 (hl_NUMERAL (hl_BIT1 hl_zero)) Hf0 (eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral)))).
    + let n. assume Hn.
      claim Hfn: factorial n :e omega. { exact (Hfo n (omega_nat_p n Hn)). }
      claim HSn: ordsucc n :e omega. { exact (omega_ordsucc n Hn). }
      exact (eq_trans_i ((fun n :e omega => factorial n) (hl_SUC n)) (factorial (ordsucc n)) (hl_mul (hl_SUC n) ((fun n :e omega => factorial n) n))
        (eq_trans_i ((fun n :e omega => factorial n) (hl_SUC n)) ((fun n :e omega => factorial n) (ordsucc n)) (factorial (ordsucc n))
          (f_equal (fun x => (fun n :e omega => factorial n) x) (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hn))
          (beta omega (fun n => factorial n) (ordsucc n) HSn))
        (eq_trans_i (factorial (ordsucc n)) (factorial n * ordsucc n) (hl_mul (hl_SUC n) ((fun n :e omega => factorial n) n)) (HfS n Hn)
          (eq_trans_i (factorial n * ordsucc n) (ordsucc n * factorial n) (hl_mul (hl_SUC n) ((fun n :e omega => factorial n) n))
            (mul_SNo_com (factorial n) (ordsucc n) (omega_SNo (factorial n) Hfn) (omega_SNo (ordsucc n) HSn))
            (eq_sym_i (hl_mul (hl_SUC n) ((fun n :e omega => factorial n) n)) (ordsucc n * factorial n)
              (eq_trans_i (hl_mul (hl_SUC n) ((fun n :e omega => factorial n) n)) (hl_mul (ordsucc n) (factorial n)) (ordsucc n * factorial n)
                (f_equal2 (fun x y => hl_mul x y) (hl_SUC n) (ordsucc n) ((fun n :e omega => factorial n) n) (factorial n) (hl_SUC_ap n Hn) (beta omega (fun n => factorial n) n Hn))
                (hl_mul_compat (ordsucc n) HSn (factorial n) Hfn)))))). }
apply (hl_FACT_spec Hex). assume HP Hg. apply HP. assume H0 HS.
claim Hbase: hl_FACT 0 = factorial 0.
{ exact (eq_trans_i (hl_FACT 0) (hl_FACT (hl_NUMERAL hl_zero)) (factorial 0)
      (f_equal (fun x => hl_FACT x) 0 (hl_NUMERAL hl_zero) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero))
      (eq_trans_i (hl_FACT (hl_NUMERAL hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero)) (factorial 0) H0
        (eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 (factorial 0) hl_one_numeral (eq_sym_i (factorial 0) 1 Hf0)))). }
claim Hstep: forall n, nat_p n -> (hl_FACT n = factorial n) -> hl_FACT (ordsucc n) = factorial (ordsucc n).
{ let n. assume Hn IH.
    claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
    claim HSn: ordsucc n :e omega. { exact (omega_ordsucc n Hno). }
    claim Hgn: hl_FACT n :e omega. { exact (setexp_ap omega omega hl_FACT Hg n Hno). }
    exact (eq_trans_i (hl_FACT (ordsucc n)) (hl_FACT (hl_SUC n)) (factorial (ordsucc n))
      (f_equal (fun x => hl_FACT x) (ordsucc n) (hl_SUC n) (eq_sym_i (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hno)))
      (eq_trans_i (hl_FACT (hl_SUC n)) (hl_mul (hl_SUC n) (hl_FACT n)) (factorial (ordsucc n)) (HS n Hno)
        (eq_trans_i (hl_mul (hl_SUC n) (hl_FACT n)) (hl_mul (ordsucc n) (factorial n)) (factorial (ordsucc n))
          (f_equal2 (fun x y => hl_mul x y) (hl_SUC n) (ordsucc n) (hl_FACT n) (factorial n) (hl_SUC_ap n Hno) IH)
          (eq_trans_i (hl_mul (ordsucc n) (factorial n)) (ordsucc n * factorial n) (factorial (ordsucc n))
            (hl_mul_compat (ordsucc n) HSn (factorial n) (Hfo n Hn))
            (eq_trans_i (ordsucc n * factorial n) (factorial n * ordsucc n) (factorial (ordsucc n))
              (mul_SNo_com (ordsucc n) (factorial n) (omega_SNo (ordsucc n) HSn) (omega_SNo (factorial n) (Hfo n Hn)))
              (eq_sym_i (factorial (ordsucc n)) (factorial n * ordsucc n) (HfS n Hno))))))). }
claim Hind: forall n, nat_p n -> hl_FACT n = factorial n.
{ exact (nat_ind (fun n => hl_FACT n = factorial n) Hbase Hstep). }
let n. assume Hn. exact (Hind n (omega_nat_p n Hn)).
Qed.
Theorem hl_real_pow_compat : forall l1 :e R, forall l2 :e omega, hl_real_pow l1 l2 = l1 ^ l2.
claim Hex: exists g :e R :^: omega :^: R, (forall x :e R, g x (hl_NUMERAL hl_zero) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) /\ forall x :e R, forall n :e omega, g x (hl_SUC n) = hl_real_mul x (g x n).
{ witness (fun x :e R => fun n :e omega => x ^ n).
  claim Hw: (fun x :e R => fun n :e omega => x ^ n) :e R :^: omega :^: R.
  { exact (lam2_Pi R omega R (fun x n => x ^ n) (fun x Hx n Hn => real_exp_SNo_nat x Hx n Hn)). }
  apply andI.
  - exact Hw.
  - apply andI.
    + let x. assume Hx.
      exact (eq_trans_i ((fun x :e R => fun n :e omega => x ^ n) x (hl_NUMERAL hl_zero)) ((fun x :e R => fun n :e omega => x ^ n) x 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))
        (f_equal (fun y => (fun x :e R => fun n :e omega => x ^ n) x y) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)
        (eq_trans_i ((fun x :e R => fun n :e omega => x ^ n) x 0) (x ^ 0) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))
          (lam2_beta R omega (fun x n => x ^ n) x Hx 0 (nat_p_omega 0 nat_0))
          (eq_trans_i (x ^ 0) 1 (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (exp_SNo_nat_0 x (real_SNo x Hx))
            (eq_sym_i (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) 1
              (eq_trans_i (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num 1) 1
                (f_equal (fun y => hl_real_of_num y) (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral)
                (hl_real_of_num_ap 1 (nat_p_omega 1 nat_1))))))).
    + let x. assume Hx. let n. assume Hn.
      claim Hxn: x ^ n :e R. { exact (real_exp_SNo_nat x Hx n Hn). }
      exact (eq_trans_i ((fun x :e R => fun n :e omega => x ^ n) x (hl_SUC n)) (x ^ ordsucc n) (hl_real_mul x ((fun x :e R => fun n :e omega => x ^ n) x n))
        (eq_trans_i ((fun x :e R => fun n :e omega => x ^ n) x (hl_SUC n)) ((fun x :e R => fun n :e omega => x ^ n) x (ordsucc n)) (x ^ ordsucc n)
          (f_equal (fun y => (fun x :e R => fun n :e omega => x ^ n) x y) (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hn))
          (lam2_beta R omega (fun x n => x ^ n) x Hx (ordsucc n) (omega_ordsucc n Hn)))
        (eq_trans_i (x ^ ordsucc n) (x * x ^ n) (hl_real_mul x ((fun x :e R => fun n :e omega => x ^ n) x n))
          (exp_SNo_nat_S x (real_SNo x Hx) n (omega_nat_p n Hn))
          (eq_sym_i (hl_real_mul x ((fun x :e R => fun n :e omega => x ^ n) x n)) (x * x ^ n)
            (eq_trans_i (hl_real_mul x ((fun x :e R => fun n :e omega => x ^ n) x n)) (hl_real_mul x (x ^ n)) (x * x ^ n)
              (f_equal (fun y => hl_real_mul x y) ((fun x :e R => fun n :e omega => x ^ n) x n) (x ^ n) (lam2_beta R omega (fun x n => x ^ n) x Hx n Hn))
              (hl_real_mul_ap x Hx (x ^ n) Hxn))))). }
apply (hl_real_pow_spec Hex). assume HP Hg. apply HP. assume H0 HS.
let x. assume Hx.
claim Hbase: hl_real_pow x 0 = x ^ 0.
{ exact (eq_trans_i (hl_real_pow x 0) (hl_real_pow x (hl_NUMERAL hl_zero)) (x ^ 0)
      (f_equal (fun y => hl_real_pow x y) 0 (hl_NUMERAL hl_zero) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero))
      (eq_trans_i (hl_real_pow x (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (x ^ 0) (H0 x Hx)
        (eq_trans_i (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) 1 (x ^ 0)
          (eq_trans_i (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num 1) 1
            (f_equal (fun y => hl_real_of_num y) (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral)
            (hl_real_of_num_ap 1 (nat_p_omega 1 nat_1)))
          (eq_sym_i (x ^ 0) 1 (exp_SNo_nat_0 x (real_SNo x Hx)))))). }
claim Hstep: forall n, nat_p n -> (hl_real_pow x n = x ^ n) -> hl_real_pow x (ordsucc n) = x ^ (ordsucc n).
{ let n. assume Hn IH.
    claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
    claim Hg2: hl_real_pow x n :e R. { exact (setexp2_ap R omega R hl_real_pow Hg x Hx n Hno). }
    exact (eq_trans_i (hl_real_pow x (ordsucc n)) (hl_real_pow x (hl_SUC n)) (x ^ ordsucc n)
      (f_equal (fun y => hl_real_pow x y) (ordsucc n) (hl_SUC n) (eq_sym_i (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hno)))
      (eq_trans_i (hl_real_pow x (hl_SUC n)) (hl_real_mul x (hl_real_pow x n)) (x ^ ordsucc n) (HS x Hx n Hno)
        (eq_trans_i (hl_real_mul x (hl_real_pow x n)) (x * hl_real_pow x n) (x ^ ordsucc n) (hl_real_mul_ap x Hx (hl_real_pow x n) Hg2)
          (eq_trans_i (x * hl_real_pow x n) (x * x ^ n) (x ^ ordsucc n)
            (f_equal (fun y => x * y) (hl_real_pow x n) (x ^ n) IH)
            (eq_sym_i (x ^ ordsucc n) (x * x ^ n) (exp_SNo_nat_S x (real_SNo x Hx) n Hn)))))). }
claim Hind: forall n, nat_p n -> hl_real_pow x n = x ^ n.
{ exact (nat_ind (fun n => hl_real_pow x n = x ^ n) Hbase Hstep). }
let n. assume Hn. exact (Hind n (omega_nat_p n Hn)).
Qed.

// ---- order on the naturals ----
Theorem omega_not_lt_0 : forall m :e omega, ~ (m < 0).
let m. assume Hm H. exact (SNoLt_irref m (SNoLtLe_tra m 0 m (omega_SNo m Hm) SNo_0 (omega_SNo m Hm) H (omega_nonneg m Hm))).
Qed.
Theorem omega_SNoLt_ordsucc : forall m n :e omega, m < ordsucc n <-> m = n \/ m < n.
let m. assume Hm. let n. assume Hn.
claim Hom: ordinal m. { exact (omega_ordinal_p m Hm). }
claim Hon: ordinal n. { exact (omega_ordinal_p n Hn). }
claim HoSn: ordinal (ordsucc n). { exact (ordinal_ordsucc n Hon). }
apply iffI.
- assume H.
  apply (ordsuccE n m (ordinal_SNoLt_In m (ordsucc n) Hom HoSn H)).
  + assume H1. exact (orIR (m = n) (m < n) (ordinal_In_SNoLt n Hon m H1)).
  + assume H1. exact (orIL (m = n) (m < n) H1).
- assume H. apply H.
  + assume H1. rewrite H1. exact (ordinal_In_SNoLt (ordsucc n) HoSn n (ordsuccI2 n)).
  + assume H1. exact (ordinal_In_SNoLt (ordsucc n) HoSn m (ordsuccI1 n m (ordinal_SNoLt_In m n Hom Hon H1))).
Qed.
Theorem omega_SNoLe_0 : forall m :e omega, m <= 0 <-> m = 0.
let m. assume Hm. apply iffI.
- assume H. exact (SNoLe_antisym m 0 (omega_SNo m Hm) SNo_0 H (omega_nonneg m Hm)).
- assume H. rewrite H. exact (SNoLe_ref 0).
Qed.
Theorem omega_SNoLe_ordsucc : forall m n :e omega, m <= ordsucc n <-> m = ordsucc n \/ m <= n.
let m. assume Hm. let n. assume Hn.
claim HmS: SNo m. { exact (omega_SNo m Hm). }
claim HnS: SNo n. { exact (omega_SNo n Hn). }
claim HSnS: SNo (ordsucc n). { exact (omega_SNo (ordsucc n) (omega_ordsucc n Hn)). }
apply iffI.
- assume H. apply (SNoLeE m (ordsucc n) HmS HSnS H).
  + assume H1. apply (omega_SNoLt_ordsucc m Hm n Hn). assume H2 _. apply (H2 H1).
    * assume H3. apply orIR. rewrite H3. exact (SNoLe_ref n).
    * assume H3. exact (orIR (m = ordsucc n) (m <= n) (SNoLtLe m n H3)).
  + assume H1. exact (orIL (m = ordsucc n) (m <= n) H1).
- assume H. apply H.
  + assume H1. rewrite H1. exact (SNoLe_ref (ordsucc n)).
  + assume H1. apply SNoLtLe. apply (SNoLeLt_tra m n (ordsucc n) HmS HnS HSnS H1).
    exact (ordinal_In_SNoLt (ordsucc n) (ordinal_ordsucc n (omega_ordinal_p n Hn)) n (ordsuccI2 n)).
Qed.
Theorem hl_lt_compat : forall l1 l2 :e omega, hl_lt l1 l2 = 1 <-> l1 < l2.
claim Hex: exists g :e 2 :^: omega :^: omega, (forall m :e omega, g m (hl_NUMERAL hl_zero) = 1 <-> False) /\ forall m n :e omega, g m (hl_SUC n) = 1 <-> m = n \/ g m n = 1.
{ witness (fun m :e omega => fun n :e omega => if m < n then 1 else 0).
  claim Hw: (fun m :e omega => fun n :e omega => if m < n then 1 else 0) :e 2 :^: omega :^: omega.
  { exact (lam2_Pi omega omega 2 (fun m n => if m < n then 1 else 0) (fun m Hm n Hn => If_in_2 (m < n))). }
  apply andI.
  - exact Hw.
  - apply andI.
    + let m. assume Hm. rewrite hl_NUMERAL_zero.
      rewrite (lam2_beta omega omega (fun m n => if m < n then 1 else 0) m Hm 0 (nat_p_omega 0 nat_0)).
      exact (iff_trans ((if m < 0 then 1 else 0) = 1) (m < 0) False (If_1_iff (m < 0)) (iff_False_of_not (m < 0) (omega_not_lt_0 m Hm))).
    + let m. assume Hm. let n. assume Hn. rewrite (hl_SUC_ap n Hn).
      rewrite (lam2_beta omega omega (fun m n => if m < n then 1 else 0) m Hm (ordsucc n) (omega_ordsucc n Hn)).
      rewrite (lam2_beta omega omega (fun m n => if m < n then 1 else 0) m Hm n Hn).
      apply (iff_trans ((if m < ordsucc n then 1 else 0) = 1) (m < ordsucc n) (m = n \/ (if m < n then 1 else 0) = 1) (If_1_iff (m < ordsucc n))).
      apply (iff_trans (m < ordsucc n) (m = n \/ m < n) (m = n \/ (if m < n then 1 else 0) = 1) (omega_SNoLt_ordsucc m Hm n Hn)).
      exact (or_iff_cong (m = n) (m = n) (m < n) ((if m < n then 1 else 0) = 1) (iff_refl (m = n)) (iff_sym ((if m < n then 1 else 0) = 1) (m < n) (If_1_iff (m < n)))). }
apply (hl_lt_spec Hex). assume HP Hg. apply HP. assume H0 HS.
claim Hbase: forall m :e omega, hl_lt m 0 = 1 <-> m < 0.
{ let m. assume Hm.
  exact (iff_trans (hl_lt m 0 = 1) False (m < 0)
    (hl_NUMERAL_zero (fun u v => hl_lt m u = 1 <-> False) (H0 m Hm))
    (iff_sym (m < 0) False (iff_False_of_not (m < 0) (omega_not_lt_0 m Hm)))). }
claim Hstep: forall n, nat_p n -> (forall m :e omega, hl_lt m n = 1 <-> m < n) -> forall m :e omega, hl_lt m (ordsucc n) = 1 <-> m < ordsucc n.
{ let n. assume Hn IH. let m. assume Hm.
  claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
  exact (iff_trans (hl_lt m (ordsucc n) = 1) (m = n \/ hl_lt m n = 1) (m < ordsucc n)
    ((hl_SUC_ap n Hno) (fun u v => hl_lt m u = 1 <-> m = n \/ hl_lt m n = 1) (HS m Hm n Hno))
    (iff_trans (m = n \/ hl_lt m n = 1) (m = n \/ m < n) (m < ordsucc n)
      (or_iff_cong (m = n) (m = n) (hl_lt m n = 1) (m < n) (iff_refl (m = n)) (IH m Hm))
      (iff_sym (m < ordsucc n) (m = n \/ m < n) (omega_SNoLt_ordsucc m Hm n Hno)))). }
let m. assume Hm. let n. assume Hn.
exact (nat_ind (fun n => forall m :e omega, hl_lt m n = 1 <-> m < n) Hbase Hstep n (omega_nat_p n Hn) m Hm).
Qed.
Theorem hl_le_compat : forall l1 l2 :e omega, hl_le l1 l2 = 1 <-> l1 <= l2.
claim Hex: exists g :e 2 :^: omega :^: omega, (forall m :e omega, g m (hl_NUMERAL hl_zero) = 1 <-> m = hl_NUMERAL hl_zero) /\ forall m n :e omega, g m (hl_SUC n) = 1 <-> m = hl_SUC n \/ g m n = 1.
{ witness (fun m :e omega => fun n :e omega => if m <= n then 1 else 0).
  claim Hw: (fun m :e omega => fun n :e omega => if m <= n then 1 else 0) :e 2 :^: omega :^: omega.
  { exact (lam2_Pi omega omega 2 (fun m n => if m <= n then 1 else 0) (fun m Hm n Hn => If_in_2 (m <= n))). }
  apply andI.
  - exact Hw.
  - apply andI.
    + let m. assume Hm. rewrite hl_NUMERAL_zero.
      rewrite (lam2_beta omega omega (fun m n => if m <= n then 1 else 0) m Hm 0 (nat_p_omega 0 nat_0)).
      exact (iff_trans ((if m <= 0 then 1 else 0) = 1) (m <= 0) (m = 0) (If_1_iff (m <= 0)) (omega_SNoLe_0 m Hm)).
    + let m. assume Hm. let n. assume Hn. rewrite (hl_SUC_ap n Hn).
      rewrite (lam2_beta omega omega (fun m n => if m <= n then 1 else 0) m Hm (ordsucc n) (omega_ordsucc n Hn)).
      rewrite (lam2_beta omega omega (fun m n => if m <= n then 1 else 0) m Hm n Hn).
      apply (iff_trans ((if m <= ordsucc n then 1 else 0) = 1) (m <= ordsucc n) (m = ordsucc n \/ (if m <= n then 1 else 0) = 1) (If_1_iff (m <= ordsucc n))).
      apply (iff_trans (m <= ordsucc n) (m = ordsucc n \/ m <= n) (m = ordsucc n \/ (if m <= n then 1 else 0) = 1) (omega_SNoLe_ordsucc m Hm n Hn)).
      exact (or_iff_cong (m = ordsucc n) (m = ordsucc n) (m <= n) ((if m <= n then 1 else 0) = 1) (iff_refl (m = ordsucc n)) (iff_sym ((if m <= n then 1 else 0) = 1) (m <= n) (If_1_iff (m <= n)))). }
apply (hl_le_spec Hex). assume HP Hg. apply HP. assume H0 HS.
claim Hbase: forall m :e omega, hl_le m 0 = 1 <-> m <= 0.
{ let m. assume Hm.
  exact (iff_trans (hl_le m 0 = 1) (m = 0) (m <= 0)
    (hl_NUMERAL_zero (fun u v => hl_le m u = 1 <-> m = u) (H0 m Hm))
    (iff_sym (m <= 0) (m = 0) (omega_SNoLe_0 m Hm))). }
claim Hstep: forall n, nat_p n -> (forall m :e omega, hl_le m n = 1 <-> m <= n) -> forall m :e omega, hl_le m (ordsucc n) = 1 <-> m <= ordsucc n.
{ let n. assume Hn IH. let m. assume Hm.
  claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
  exact (iff_trans (hl_le m (ordsucc n) = 1) (m = ordsucc n \/ hl_le m n = 1) (m <= ordsucc n)
    ((hl_SUC_ap n Hno) (fun u v => hl_le m u = 1 <-> m = u \/ hl_le m n = 1) (HS m Hm n Hno))
    (iff_trans (m = ordsucc n \/ hl_le m n = 1) (m = ordsucc n \/ m <= n) (m <= ordsucc n)
      (or_iff_cong (m = ordsucc n) (m = ordsucc n) (hl_le m n = 1) (m <= n) (iff_refl (m = ordsucc n)) (IH m Hm))
      (iff_sym (m <= ordsucc n) (m = ordsucc n \/ m <= n) (omega_SNoLe_ordsucc m Hm n Hno)))). }
let m. assume Hm. let n. assume Hn.
exact (nat_ind (fun n => forall m :e omega, hl_le m n = 1 <-> m <= n) Hbase Hstep n (omega_nat_p n Hn) m Hm).
Qed.
Theorem hl_gt_compat : forall l1 l2 :e omega, hl_gt l1 l2 = 1 <-> l2 < l1.
let m. assume Hm. let n. assume Hn. rewrite (hl_gt_unfold m Hm n Hn). exact (hl_lt_compat n Hn m Hm).
Qed.
Theorem hl_ge_compat : forall l1 l2 :e omega, hl_ge l1 l2 = 1 <-> l2 <= l1.
let m. assume Hm. let n. assume Hn. rewrite (hl_ge_unfold m Hm n Hn). exact (hl_le_compat n Hn m Hm).
Qed.
Theorem hl_le_2 : forall m n :e omega, hl_le m n :e 2.
let m. assume Hm. let n. assume Hn. apply (xm (m <= n)).
- assume H. apply (hl_le_compat m Hm n Hn). assume _ H2. rewrite (H2 H). exact In_1_2.
- assume H.
  claim H0: hl_le m n = 0.
  { apply (In_2_not_1 (hl_le m n) (setexp2_ap omega omega 2 hl_le hl_le_in m Hm n Hn)). assume H1. apply H. apply (hl_le_compat m Hm n Hn). assume H2 _. exact (H2 H1). }
  rewrite H0. exact In_0_2.
Qed.
Theorem hl_MAX_compat : forall l1 l2 :e omega, hl_MAX l1 l2 = if l1 <= l2 then l2 else l1.
let m. assume Hm. let n. assume Hn. rewrite (hl_MAX_unfold m Hm n Hn).
exact (hl_COND_if omega (hl_le m n) (hl_le_2 m Hm n Hn) (m <= n) (hl_le_compat m Hm n Hn) n Hn m Hm).
Qed.
Theorem hl_MIN_compat : forall l1 l2 :e omega, hl_MIN l1 l2 = if l1 <= l2 then l1 else l2.
let m. assume Hm. let n. assume Hn. rewrite (hl_MIN_unfold m Hm n Hn).
exact (hl_COND_if omega (hl_le m n) (hl_le_2 m Hm n Hn) (m <= n) (hl_le_compat m Hm n Hn) m Hm n Hn).
Qed.

// ---- subtraction (truncated) ----
Theorem minus_nat_0R : forall m :e omega, minus_nat m 0 = m.
let m. assume Hm.
prove (if 0 <= m then m + - 0 else 0) = m.
exact (eq_trans_i (if 0 <= m then m + - 0 else 0) (m + - 0) m
  (If_i_1 (0 <= m) (m + - 0) 0 (omega_nonneg m Hm))
  (eq_trans_i (m + - 0) (m + 0) m (f_equal (fun x => m + x) (- 0) 0 minus_SNo_0) (add_SNo_0R m (omega_SNo m Hm)))).
Qed.
Theorem omega_minus_omega : forall m n :e omega, n <= m -> m + - n :e omega.
let m. assume Hm. let n. assume Hn. assume H.
apply (int_nonneg_omega (m + - n)).
- exact (int_add_SNo m (Subq_omega_int m Hm) (- n) (int_minus_SNo_omega n Hn)).
- claim L: 0 + n <= m. { rewrite (add_SNo_0L n (omega_SNo n Hn)). exact H. }
  exact (add_SNo_minus_Le2b m n 0 (omega_SNo m Hm) (omega_SNo n Hn) SNo_0 L).
Qed.
Theorem minus_nat_ordsucc : forall m n :e omega, minus_nat m (ordsucc n) = nat_pred (minus_nat m n).
let m. assume Hm. let n. assume Hn.
claim HmS: SNo m. { exact (omega_SNo m Hm). }
claim HnS: SNo n. { exact (omega_SNo n Hn). }
claim HSn: ordsucc n :e omega. { exact (omega_ordsucc n Hn). }
claim HSnS: SNo (ordsucc n). { exact (omega_SNo (ordsucc n) HSn). }
claim HnSn: n < ordsucc n. { exact (ordinal_In_SNoLt (ordsucc n) (ordinal_ordsucc n (omega_ordinal_p n Hn)) n (ordsuccI2 n)). }
prove (if ordsucc n <= m then m + - ordsucc n else 0) = nat_pred (if n <= m then m + - n else 0).
apply (xm (ordsucc n <= m)).
- assume H1: ordsucc n <= m.
  claim H2: n <= m. { exact (SNoLtLe n m (SNoLtLe_tra n (ordsucc n) m HnS HSnS HmS HnSn H1)). }
  claim Hd0: m + - n <> 0.
  { assume H0: m + - n = 0.
    claim Hmn: m = n.
    { claim Hrl: (m + - n) + n = m.
      { exact (eq_trans_i ((m + - n) + n) (m + (- n + n)) m (eq_sym_i (m + (- n + n)) ((m + - n) + n) (add_SNo_assoc m (- n) n HmS (SNo_minus_SNo n HnS) HnS))
          (eq_trans_i (m + (- n + n)) (m + 0) m (f_equal (fun x => m + x) (- n + n) 0 (add_SNo_minus_SNo_linv n HnS)) (add_SNo_0R m HmS))). }
      exact (eq_trans_i m ((m + - n) + n) n (eq_sym_i ((m + - n) + n) m Hrl)
        (eq_trans_i ((m + - n) + n) (0 + n) n (f_equal (fun x => x + n) (m + - n) 0 H0) (add_SNo_0L n HnS))). }
    apply (SNoLt_irref n). apply (SNoLtLe_tra n (ordsucc n) n HnS HSnS HnS HnSn). rewrite <- Hmn at 2. exact H1. }
  rewrite (If_i_1 (ordsucc n <= m) (m + - ordsucc n) 0 H1). rewrite (If_i_1 (n <= m) (m + - n) 0 H2).
  prove m + - ordsucc n = (if m + - n = 0 then 0 else (m + - n) + - 1).
  rewrite (If_i_0 (m + - n = 0) 0 ((m + - n) + - 1) Hd0).
  exact (eq_trans_i (m + - ordsucc n) (m + - (n + 1)) ((m + - n) + - 1)
    (f_equal (fun x => m + - x) (ordsucc n) (n + 1) (eq_sym_i (n + 1) (ordsucc n) (add_SNo_1_ordsucc n Hn)))
    (eq_trans_i (m + - (n + 1)) (m + (- n + - 1)) ((m + - n) + - 1)
      (f_equal (fun x => m + x) (- (n + 1)) (- n + - 1) (minus_add_SNo_distr n 1 HnS SNo_1))
      (add_SNo_assoc m (- n) (- 1) HmS (SNo_minus_SNo n HnS) (SNo_minus_SNo 1 SNo_1)))).
- assume H1: ~ (ordsucc n <= m).
  rewrite (If_i_0 (ordsucc n <= m) (m + - ordsucc n) 0 H1).
  apply (xm (n <= m)).
  + assume H2: n <= m. rewrite (If_i_1 (n <= m) (m + - n) 0 H2).
    claim Hlt: m < ordsucc n. { apply (SNoLtLe_or m (ordsucc n) HmS HSnS). - assume H3. exact H3. - assume H3. exact (FalseE (H1 H3) (m < ordsucc n)). }
    claim Hmn: m = n.
    { apply (omega_SNoLt_ordsucc m Hm n Hn). assume H3 _. apply (H3 Hlt).
      - assume H4. exact H4.
      - assume H4. prove False. exact (SNoLt_irref m (SNoLtLe_tra m n m HmS HnS HmS H4 H2)). }
    claim Hz: m + - n = 0. { rewrite Hmn. exact (add_SNo_minus_SNo_rinv n HnS). }
    rewrite Hz. exact (eq_sym_i (nat_pred 0) 0 nat_pred_0).
  + assume H2. rewrite (If_i_0 (n <= m) (m + - n) 0 H2). exact (eq_sym_i (nat_pred 0) 0 nat_pred_0).
Qed.
Theorem hl_sub_compat : forall l1 l2 :e omega, hl_sub l1 l2 = minus_nat l1 l2.
claim Hex: exists g :e omega :^: omega :^: omega, (forall m :e omega, g m (hl_NUMERAL hl_zero) = m) /\ forall m n :e omega, g m (hl_SUC n) = hl_PRE (g m n).
{ witness (fun m :e omega => fun n :e omega => minus_nat m n).
  claim Hw: (fun m :e omega => fun n :e omega => minus_nat m n) :e omega :^: omega :^: omega.
  { exact (lam2_Pi omega omega omega (fun m n => minus_nat m n) (fun m Hm n Hn => minus_nat_omega m Hm n Hn)). }
  apply andI.
  - exact Hw.
  - apply andI.
    + let m. assume Hm. rewrite hl_NUMERAL_zero. rewrite (lam2_beta omega omega (fun m n => minus_nat m n) m Hm 0 (nat_p_omega 0 nat_0)). exact (minus_nat_0R m Hm).
    + let m. assume Hm. let n. assume Hn. rewrite (hl_SUC_ap n Hn).
      rewrite (lam2_beta omega omega (fun m n => minus_nat m n) m Hm (ordsucc n) (omega_ordsucc n Hn)).
      rewrite (lam2_beta omega omega (fun m n => minus_nat m n) m Hm n Hn).
      rewrite (hl_PRE_compat (minus_nat m n) (minus_nat_omega m Hm n Hn)). exact (minus_nat_ordsucc m Hm n Hn). }
apply (hl_sub_spec Hex). assume HP Hg. apply HP. assume H0 HS.
claim Hbase: forall m :e omega, hl_sub m 0 = minus_nat m 0.
{ let m. assume Hm. rewrite (minus_nat_0R m Hm). rewrite <- hl_NUMERAL_zero at 1. exact (H0 m Hm). }
claim Hstep: forall n, nat_p n -> (forall m :e omega, hl_sub m n = minus_nat m n) -> forall m :e omega, hl_sub m (ordsucc n) = minus_nat m (ordsucc n).
{ let n. assume Hn IH. let m. assume Hm.
  claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
  rewrite (minus_nat_ordsucc m Hm n Hno). rewrite <- (IH m Hm).
  rewrite <- (hl_PRE_compat (hl_sub m n) (setexp2_ap omega omega omega hl_sub Hg m Hm n Hno)).
  rewrite <- (hl_SUC_ap n Hno). exact (HS m Hm n Hno). }
let m. assume Hm. let n. assume Hn.
exact (nat_ind (fun n => forall m :e omega, hl_sub m n = minus_nat m n) Hbase Hstep n (omega_nat_p n Hn) m Hm).
Qed.

// ---- numeral evaluation lemmas (used by generated bridges for NUMERAL/BIT0/BIT1) ----
Theorem hl_BIT0_0 : hl_BIT0 0 = 0.
exact (eq_trans_i (hl_BIT0 0) (2 * 0) 0 (hl_BIT0_compat 0 (nat_p_omega 0 nat_0)) (mul_SNo_zeroR 2 SNo_2)).
Qed.
Theorem hl_BIT0_S : forall n :e omega, hl_BIT0 (ordsucc n) = ordsucc (ordsucc (hl_BIT0 n)).
let n. assume Hn.
exact (eq_trans_i (hl_BIT0 (ordsucc n)) (2 * ordsucc n) (ordsucc (ordsucc (hl_BIT0 n)))
  (hl_BIT0_compat (ordsucc n) (omega_ordsucc n Hn))
  (eq_trans_i (2 * ordsucc n) (ordsucc (ordsucc (2 * n))) (ordsucc (ordsucc (hl_BIT0 n)))
    (two_mul_ordsucc n Hn)
    (f_equal (fun x => ordsucc (ordsucc x)) (2 * n) (hl_BIT0 n) (eq_sym_i (hl_BIT0 n) (2 * n) (hl_BIT0_compat n Hn))))).
Qed.
Theorem hl_BIT1_S : forall n :e omega, hl_BIT1 n = ordsucc (hl_BIT0 n).
let n. assume Hn.
exact (eq_trans_i (hl_BIT1 n) (hl_SUC (hl_BIT0 n)) (ordsucc (hl_BIT0 n)) (hl_BIT1_unfold n Hn) (hl_SUC_ap (hl_BIT0 n) (hl_BIT0_omega n Hn))).
Qed.

// ---- parity (even_nat n := exists k :e omega, n = k + k; odd_nat n := exists k :e omega, n = (k + k) + 1) ----
Theorem add_SNo_ordsucc_R : forall m n :e omega, m + ordsucc n = ordsucc (m + n).
let m. assume Hm. let n. assume Hn.
exact (eq_trans_i (m + ordsucc n) (add_nat m (ordsucc n)) (ordsucc (m + n))
  (eq_sym_i (add_nat m (ordsucc n)) (m + ordsucc n) (add_nat_add_SNo m Hm (ordsucc n) (omega_ordsucc n Hn)))
  (eq_trans_i (add_nat m (ordsucc n)) (ordsucc (add_nat m n)) (ordsucc (m + n))
    (add_nat_SR m n (omega_nat_p n Hn))
    (f_equal (fun x => ordsucc x) (add_nat m n) (m + n) (add_nat_add_SNo m Hm n Hn)))).
Qed.
Theorem even_nat_0 : even_nat 0.
prove exists k :e omega, 0 = k + k. witness 0. apply andI.
- exact (nat_p_omega 0 nat_0).
- exact (eq_sym_i (0 + 0) 0 (add_SNo_0L 0 SNo_0)).
Qed.
Theorem add_self_omega : forall k :e omega, k + k :e omega.
let k. assume Hk. exact (add_SNo_In_omega k Hk k Hk).
Qed.
Theorem add_self_ordsucc : forall k :e omega, ordsucc k + ordsucc k = ordsucc (ordsucc (k + k)).
let k. assume Hk.
exact (eq_trans_i (ordsucc k + ordsucc k) (ordsucc (k + ordsucc k)) (ordsucc (ordsucc (k + k)))
  (add_SNo_ordsucc_L k Hk (ordsucc k) (omega_ordsucc k Hk))
  (f_equal (fun x => ordsucc x) (k + ordsucc k) (ordsucc (k + k)) (add_SNo_ordsucc_R k Hk k Hk))).
Qed.
Theorem even_S_odd : forall n :e omega, even_nat n -> odd_nat (ordsucc n).
let n. assume Hn H. apply H. let k. assume Hk0. apply Hk0. assume Hk Hnk.
prove exists k :e omega, ordsucc n = (k + k) + 1. witness k. apply andI.
- exact Hk.
- exact (eq_trans_i (ordsucc n) (n + 1) ((k + k) + 1) (eq_sym_i (n + 1) (ordsucc n) (add_SNo_1_ordsucc n Hn)) (f_equal (fun x => x + 1) n (k + k) Hnk)).
Qed.
Theorem odd_S_even : forall n :e omega, odd_nat n -> even_nat (ordsucc n).
let n. assume Hn H. apply H. let k. assume Hk0. apply Hk0. assume Hk Hnk.
prove exists k :e omega, ordsucc n = k + k. witness (ordsucc k). apply andI.
- exact (omega_ordsucc k Hk).
- exact (eq_trans_i (ordsucc n) (ordsucc ((k + k) + 1)) (ordsucc k + ordsucc k)
    (f_equal (fun x => ordsucc x) n ((k + k) + 1) Hnk)
    (eq_trans_i (ordsucc ((k + k) + 1)) (ordsucc (ordsucc (k + k))) (ordsucc k + ordsucc k)
      (f_equal (fun x => ordsucc x) ((k + k) + 1) (ordsucc (k + k)) (add_SNo_1_ordsucc (k + k) (add_self_omega k Hk)))
      (eq_sym_i (ordsucc k + ordsucc k) (ordsucc (ordsucc (k + k))) (add_self_ordsucc k Hk)))).
Qed.
Theorem even_or_odd : forall n, nat_p n -> even_nat n \/ odd_nat n.
claim Hbase: even_nat 0 \/ odd_nat 0. { exact (orIL (even_nat 0) (odd_nat 0) even_nat_0). }
claim Hstep: forall n, nat_p n -> even_nat n \/ odd_nat n -> even_nat (ordsucc n) \/ odd_nat (ordsucc n).
{ let n. assume Hn IH. apply IH.
  - assume H. exact (orIR (even_nat (ordsucc n)) (odd_nat (ordsucc n)) (even_S_odd n (nat_p_omega n Hn) H)).
  - assume H. exact (orIL (even_nat (ordsucc n)) (odd_nat (ordsucc n)) (odd_S_even n (nat_p_omega n Hn) H)). }
exact (nat_ind (fun n => even_nat n \/ odd_nat n) Hbase Hstep).
Qed.
Theorem odd_ne_even : forall k, nat_p k -> forall j :e omega, (k + k) + 1 <> j + j.
claim Hbase: forall j :e omega, (0 + 0) + 1 <> j + j.
{ let j. assume Hj H.
  claim H1: 1 = j + j.
  { exact (eq_trans_i 1 ((0 + 0) + 1) (j + j) (eq_sym_i ((0 + 0) + 1) 1 (eq_trans_i ((0 + 0) + 1) (0 + 1) 1 (f_equal (fun x => x + 1) (0 + 0) 0 (add_SNo_0L 0 SNo_0)) (add_SNo_0L 1 SNo_1))) H). }
  apply (nat_inv j (omega_nat_p j Hj)).
  - assume Hj0: j = 0. apply neq_1_0.
    exact (eq_trans_i 1 (j + j) 0 H1 (eq_trans_i (j + j) (0 + 0) 0 (f_equal2 (fun x y => x + y) j 0 j 0 Hj0 Hj0) (add_SNo_0L 0 SNo_0))).
  - assume Hj1: exists j', nat_p j' /\ j = ordsucc j'. apply (exandE_i nat_p (fun j' => j = ordsucc j') Hj1). let j'. assume Hj' Hjj'.
    claim H2: ordsucc 0 = ordsucc (ordsucc (j' + j')).
    { exact (eq_trans_i (ordsucc 0) (j + j) (ordsucc (ordsucc (j' + j'))) H1
        (eq_trans_i (j + j) (ordsucc j' + ordsucc j') (ordsucc (ordsucc (j' + j'))) (f_equal2 (fun x y => x + y) j (ordsucc j') j (ordsucc j') Hjj' Hjj') (add_self_ordsucc j' (nat_p_omega j' Hj')))). }
    exact (neq_ordsucc_0 (j' + j') (eq_sym_i 0 (ordsucc (j' + j')) (ordsucc_inj 0 (ordsucc (j' + j')) H2))). }
claim Hstep: forall k, nat_p k -> (forall j :e omega, (k + k) + 1 <> j + j) -> forall j :e omega, (ordsucc k + ordsucc k) + 1 <> j + j.
{ let k. assume Hk IH. let j. assume Hj H.
  claim Hko: k :e omega. { exact (nat_p_omega k Hk). }
  claim Hkk: k + k :e omega. { exact (add_self_omega k Hko). }
  claim H1: ordsucc (ordsucc (ordsucc (k + k))) = j + j.
  { exact (eq_trans_i (ordsucc (ordsucc (ordsucc (k + k)))) ((ordsucc k + ordsucc k) + 1) (j + j)
      (eq_trans_i (ordsucc (ordsucc (ordsucc (k + k)))) (ordsucc (ordsucc k + ordsucc k)) ((ordsucc k + ordsucc k) + 1)
        (f_equal (fun x => ordsucc x) (ordsucc (ordsucc (k + k))) (ordsucc k + ordsucc k) (eq_sym_i (ordsucc k + ordsucc k) (ordsucc (ordsucc (k + k))) (add_self_ordsucc k Hko)))
        (eq_sym_i ((ordsucc k + ordsucc k) + 1) (ordsucc (ordsucc k + ordsucc k)) (add_SNo_1_ordsucc (ordsucc k + ordsucc k) (add_self_omega (ordsucc k) (omega_ordsucc k Hko)))))
      H). }
  apply (nat_inv j (omega_nat_p j Hj)).
  - assume Hj0: j = 0. apply (neq_ordsucc_0 (ordsucc (ordsucc (k + k)))).
    exact (eq_trans_i (ordsucc (ordsucc (ordsucc (k + k)))) (j + j) 0 H1 (eq_trans_i (j + j) (0 + 0) 0 (f_equal2 (fun x y => x + y) j 0 j 0 Hj0 Hj0) (add_SNo_0L 0 SNo_0))).
  - assume Hj1: exists j', nat_p j' /\ j = ordsucc j'. apply (exandE_i nat_p (fun j' => j = ordsucc j') Hj1). let j'. assume Hj' Hjj'.
    claim H2: ordsucc (ordsucc (ordsucc (k + k))) = ordsucc (ordsucc (j' + j')).
    { exact (eq_trans_i (ordsucc (ordsucc (ordsucc (k + k)))) (j + j) (ordsucc (ordsucc (j' + j'))) H1
        (eq_trans_i (j + j) (ordsucc j' + ordsucc j') (ordsucc (ordsucc (j' + j'))) (f_equal2 (fun x y => x + y) j (ordsucc j') j (ordsucc j') Hjj' Hjj') (add_self_ordsucc j' (nat_p_omega j' Hj')))). }
    claim H3: ordsucc (k + k) = j' + j'. { exact (ordsucc_inj (ordsucc (k + k)) (j' + j') (ordsucc_inj (ordsucc (ordsucc (k + k))) (ordsucc (j' + j')) H2)). }
    apply (IH j' (nat_p_omega j' Hj')).
    exact (eq_trans_i ((k + k) + 1) (ordsucc (k + k)) (j' + j') (add_SNo_1_ordsucc (k + k) Hkk) H3). }
exact (nat_ind (fun k => forall j :e omega, (k + k) + 1 <> j + j) Hbase Hstep).
Qed.
Theorem not_even_odd : forall n :e omega, even_nat n -> odd_nat n -> False.
let n. assume Hn He Ho. apply He. let k. assume Hk0. apply Hk0. assume Hk Hnk. apply Ho. let j. assume Hj0. apply Hj0. assume Hj Hnj.
exact (odd_ne_even j (omega_nat_p j Hj) k Hk (eq_trans_i ((j + j) + 1) n (k + k) (eq_sym_i n ((j + j) + 1) Hnj) Hnk)).
Qed.
Theorem even_S_iff : forall n :e omega, even_nat (ordsucc n) <-> ~ even_nat n.
let n. assume Hn. apply iffI.
- assume H1 H2. exact (not_even_odd (ordsucc n) (omega_ordsucc n Hn) H1 (even_S_odd n Hn H2)).
- assume H1. apply (even_or_odd n (omega_nat_p n Hn)).
  + assume H2. exact (FalseE (H1 H2) (even_nat (ordsucc n))).
  + assume H2. exact (odd_S_even n Hn H2).
Qed.
Theorem not_odd_0 : ~ odd_nat 0.
assume H. apply H. let k. assume Hk0. apply Hk0. assume Hk H0.
apply (neq_ordsucc_0 (k + k)).
exact (eq_trans_i (ordsucc (k + k)) ((k + k) + 1) 0 (eq_sym_i ((k + k) + 1) (ordsucc (k + k)) (add_SNo_1_ordsucc (k + k) (add_self_omega k Hk))) (eq_sym_i 0 ((k + k) + 1) H0)).
Qed.
Theorem odd_S_iff : forall n :e omega, odd_nat (ordsucc n) <-> ~ odd_nat n.
let n. assume Hn. apply iffI.
- assume H1 H2. exact (not_even_odd (ordsucc n) (omega_ordsucc n Hn) (odd_S_even n Hn H2) H1).
- assume H1. apply (even_or_odd n (omega_nat_p n Hn)).
  + assume H2. exact (even_S_odd n Hn H2).
  + assume H2. exact (FalseE (H1 H2) (odd_nat (ordsucc n))).
Qed.
Theorem hl_EVEN_compat : forall l1 :e omega, hl_EVEN l1 = 1 <-> even_nat l1.
claim Hex: exists g :e 2 :^: omega, (g (hl_NUMERAL hl_zero) = 1 <-> True) /\ forall n :e omega, g (hl_SUC n) = 1 <-> ~ g n = 1.
{ witness (fun n :e omega => if even_nat n then 1 else 0).
  claim Hw: (fun n :e omega => if even_nat n then 1 else 0) :e 2 :^: omega.
  { exact (hl_lam_Pi omega 2 (fun n => if even_nat n then 1 else 0) (fun n Hn => If_in_2 (even_nat n))). }
  claim H0o: 0 :e omega. { exact (nat_p_omega 0 nat_0). }
  claim Hc0: (if even_nat 0 then 1 else 0) = 1 <-> True.
  { apply (iff_trans ((if even_nat 0 then 1 else 0) = 1) (even_nat 0) True (If_1_iff (even_nat 0))).
    apply iffI.
    - assume _. exact (fun p H => H).
    - assume _. exact even_nat_0. }
  claim Hc0': (fun n :e omega => if even_nat n then 1 else 0) 0 = 1 <-> True.
  { exact ((eq_sym_i ((fun n :e omega => if even_nat n then 1 else 0) 0) (if even_nat 0 then 1 else 0) (beta omega (fun n => if even_nat n then 1 else 0) 0 H0o)) (fun hl__u hl__v => hl__u = 1 <-> True) Hc0). }
  apply andI.
  - exact Hw.
  - apply andI.
    + exact ((eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (fun hl__u hl__v => (fun n :e omega => if even_nat n then 1 else 0) hl__u = 1 <-> True) Hc0').
    + let n. assume Hn.
      claim HSn: ordsucc n :e omega. { exact (omega_ordsucc n Hn). }
      claim Hc1: (if even_nat (ordsucc n) then 1 else 0) = 1 <-> ~ (if even_nat n then 1 else 0) = 1.
      { apply (iff_trans ((if even_nat (ordsucc n) then 1 else 0) = 1) (even_nat (ordsucc n)) (~ (if even_nat n then 1 else 0) = 1) (If_1_iff (even_nat (ordsucc n)))).
        apply (iff_trans (even_nat (ordsucc n)) (~ even_nat n) (~ (if even_nat n then 1 else 0) = 1) (even_S_iff n Hn)).
        exact (not_iff_cong (even_nat n) ((if even_nat n then 1 else 0) = 1) (iff_sym ((if even_nat n then 1 else 0) = 1) (even_nat n) (If_1_iff (even_nat n)))). }
      claim Hc2: (if even_nat (ordsucc n) then 1 else 0) = 1 <-> ~ (fun n :e omega => if even_nat n then 1 else 0) n = 1.
      { exact ((eq_sym_i ((fun n :e omega => if even_nat n then 1 else 0) n) (if even_nat n then 1 else 0) (beta omega (fun n => if even_nat n then 1 else 0) n Hn)) (fun hl__u hl__v => (if even_nat (ordsucc n) then 1 else 0) = 1 <-> ~ hl__u = 1) Hc1). }
      claim Hc3: (fun n :e omega => if even_nat n then 1 else 0) (ordsucc n) = 1 <-> ~ (fun n :e omega => if even_nat n then 1 else 0) n = 1.
      { exact ((eq_sym_i ((fun n :e omega => if even_nat n then 1 else 0) (ordsucc n)) (if even_nat (ordsucc n) then 1 else 0) (beta omega (fun n => if even_nat n then 1 else 0) (ordsucc n) HSn)) (fun hl__u hl__v => hl__u = 1 <-> ~ (fun n :e omega => if even_nat n then 1 else 0) n = 1) Hc2). }
      exact ((eq_sym_i (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hn)) (fun hl__u hl__v => (fun n :e omega => if even_nat n then 1 else 0) hl__u = 1 <-> ~ (fun n :e omega => if even_nat n then 1 else 0) n = 1) Hc3). }
apply (hl_EVEN_spec Hex). assume HP Hg. apply HP. assume H0 HS.
claim Hbase: hl_EVEN 0 = 1 <-> even_nat 0.
{ apply iffI.
  - assume _. exact even_nat_0.
  - assume _. apply (hl_NUMERAL_zero (fun hl__u hl__v => hl_EVEN hl__u = 1 <-> True) H0). assume _ H2. exact (H2 (fun p H => H)). }
claim Hstep: forall n, nat_p n -> (hl_EVEN n = 1 <-> even_nat n) -> (hl_EVEN (ordsucc n) = 1 <-> even_nat (ordsucc n)).
{ let n. assume Hn IH.
  claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
  exact (iff_trans (hl_EVEN (ordsucc n) = 1) (~ hl_EVEN n = 1) (even_nat (ordsucc n))
    ((hl_SUC_ap n Hno) (fun hl__u hl__v => hl_EVEN hl__u = 1 <-> ~ hl_EVEN n = 1) (HS n Hno))
    (iff_trans (~ hl_EVEN n = 1) (~ even_nat n) (even_nat (ordsucc n)) (not_iff_cong (hl_EVEN n = 1) (even_nat n) IH) (iff_sym (even_nat (ordsucc n)) (~ even_nat n) (even_S_iff n Hno)))). }
let n. assume Hn. exact (nat_ind (fun n => hl_EVEN n = 1 <-> even_nat n) Hbase Hstep n (omega_nat_p n Hn)).
Qed.
Theorem hl_ODD_compat : forall l1 :e omega, hl_ODD l1 = 1 <-> odd_nat l1.
claim Hex: exists g :e 2 :^: omega, (g (hl_NUMERAL hl_zero) = 1 <-> False) /\ forall n :e omega, g (hl_SUC n) = 1 <-> ~ g n = 1.
{ witness (fun n :e omega => if odd_nat n then 1 else 0).
  claim Hw: (fun n :e omega => if odd_nat n then 1 else 0) :e 2 :^: omega.
  { exact (hl_lam_Pi omega 2 (fun n => if odd_nat n then 1 else 0) (fun n Hn => If_in_2 (odd_nat n))). }
  claim H0o: 0 :e omega. { exact (nat_p_omega 0 nat_0). }
  claim Hc0: (if odd_nat 0 then 1 else 0) = 1 <-> False.
  { exact (iff_trans ((if odd_nat 0 then 1 else 0) = 1) (odd_nat 0) False (If_1_iff (odd_nat 0)) (iff_False_of_not (odd_nat 0) not_odd_0)). }
  claim Hc0': (fun n :e omega => if odd_nat n then 1 else 0) 0 = 1 <-> False.
  { exact ((eq_sym_i ((fun n :e omega => if odd_nat n then 1 else 0) 0) (if odd_nat 0 then 1 else 0) (beta omega (fun n => if odd_nat n then 1 else 0) 0 H0o)) (fun hl__u hl__v => hl__u = 1 <-> False) Hc0). }
  apply andI.
  - exact Hw.
  - apply andI.
    + exact ((eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (fun hl__u hl__v => (fun n :e omega => if odd_nat n then 1 else 0) hl__u = 1 <-> False) Hc0').
    + let n. assume Hn.
      claim HSn: ordsucc n :e omega. { exact (omega_ordsucc n Hn). }
      claim Hc1: (if odd_nat (ordsucc n) then 1 else 0) = 1 <-> ~ (if odd_nat n then 1 else 0) = 1.
      { apply (iff_trans ((if odd_nat (ordsucc n) then 1 else 0) = 1) (odd_nat (ordsucc n)) (~ (if odd_nat n then 1 else 0) = 1) (If_1_iff (odd_nat (ordsucc n)))).
        apply (iff_trans (odd_nat (ordsucc n)) (~ odd_nat n) (~ (if odd_nat n then 1 else 0) = 1) (odd_S_iff n Hn)).
        exact (not_iff_cong (odd_nat n) ((if odd_nat n then 1 else 0) = 1) (iff_sym ((if odd_nat n then 1 else 0) = 1) (odd_nat n) (If_1_iff (odd_nat n)))). }
      claim Hc2: (if odd_nat (ordsucc n) then 1 else 0) = 1 <-> ~ (fun n :e omega => if odd_nat n then 1 else 0) n = 1.
      { exact ((eq_sym_i ((fun n :e omega => if odd_nat n then 1 else 0) n) (if odd_nat n then 1 else 0) (beta omega (fun n => if odd_nat n then 1 else 0) n Hn)) (fun hl__u hl__v => (if odd_nat (ordsucc n) then 1 else 0) = 1 <-> ~ hl__u = 1) Hc1). }
      claim Hc3: (fun n :e omega => if odd_nat n then 1 else 0) (ordsucc n) = 1 <-> ~ (fun n :e omega => if odd_nat n then 1 else 0) n = 1.
      { exact ((eq_sym_i ((fun n :e omega => if odd_nat n then 1 else 0) (ordsucc n)) (if odd_nat (ordsucc n) then 1 else 0) (beta omega (fun n => if odd_nat n then 1 else 0) (ordsucc n) HSn)) (fun hl__u hl__v => hl__u = 1 <-> ~ (fun n :e omega => if odd_nat n then 1 else 0) n = 1) Hc2). }
      exact ((eq_sym_i (hl_SUC n) (ordsucc n) (hl_SUC_ap n Hn)) (fun hl__u hl__v => (fun n :e omega => if odd_nat n then 1 else 0) hl__u = 1 <-> ~ (fun n :e omega => if odd_nat n then 1 else 0) n = 1) Hc3). }
apply (hl_ODD_spec Hex). assume HP Hg. apply HP. assume H0 HS.
claim Hbase: hl_ODD 0 = 1 <-> odd_nat 0.
{ exact (iff_trans (hl_ODD 0 = 1) False (odd_nat 0) (hl_NUMERAL_zero (fun hl__u hl__v => hl_ODD hl__u = 1 <-> False) H0) (iff_sym (odd_nat 0) False (iff_False_of_not (odd_nat 0) not_odd_0))). }
claim Hstep: forall n, nat_p n -> (hl_ODD n = 1 <-> odd_nat n) -> (hl_ODD (ordsucc n) = 1 <-> odd_nat (ordsucc n)).
{ let n. assume Hn IH.
  claim Hno: n :e omega. { exact (nat_p_omega n Hn). }
  exact (iff_trans (hl_ODD (ordsucc n) = 1) (~ hl_ODD n = 1) (odd_nat (ordsucc n))
    ((hl_SUC_ap n Hno) (fun hl__u hl__v => hl_ODD hl__u = 1 <-> ~ hl_ODD n = 1) (HS n Hno))
    (iff_trans (~ hl_ODD n = 1) (~ odd_nat n) (odd_nat (ordsucc n)) (not_iff_cong (hl_ODD n = 1) (odd_nat n) IH) (iff_sym (odd_nat (ordsucc n)) (~ odd_nat n) (odd_S_iff n Hno)))). }
let n. assume Hn. exact (nat_ind (fun n => hl_ODD n = 1 <-> odd_nat n) Hbase Hstep n (omega_nat_p n Hn)).
Qed.

// ---- set comprehensions (GSPEC / SETSPEC) ----
Theorem hl_gspec_sep : forall A:set, forall P:set -> prop,
  hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0)) = {v :e A | P v}.
let A P.
claim HF: (fun v :e A => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) :e 2 :^: A.
{ prove (fun v :e A => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) :e Pi_ v :e A, 2.
  apply (lam_Pi A (fun _ => 2) (fun v => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0)).
  let v. assume _. exact (If_in_2 (exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1)). }
rewrite (hl_GSPEC_unfold A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) HF).
claim Hmem: forall v :e A, (fun v :e A => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) v = 1 <-> P v.
{ let v. assume Hv.
  rewrite (beta A (fun v => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) v Hv).
  apply (iff_trans ((if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) = 1) (exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1) (P v) (If_1_iff (exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1))).
  apply iffI.
  - assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx Hs.
    claim Hs2: (if (if P x then 1 else 0) = 1 /\ v = x then 1 else 0) = 1.
    { exact ((hl_SETSPEC_unfold A v Hv (if P x then 1 else 0) (If_in_2 (P x)) x Hx) (fun hl__u hl__v => hl__u = 1) Hs). }
    apply (If_1_iff ((if P x then 1 else 0) = 1 /\ v = x)). assume H2 _. apply (H2 Hs2). assume H3 H4.
    rewrite H4. apply (If_1_iff (P x)). assume H5 _. exact (H5 H3).
  - assume H. witness v. apply andI.
    + exact Hv.
    + rewrite (hl_SETSPEC_unfold A v Hv (if P v then 1 else 0) (If_in_2 (P v)) v Hv).
      apply (If_i_1 ((if P v then 1 else 0) = 1 /\ v = v) 1 0). apply andI.
      * exact (If_i_1 (P v) 1 0 H).
      * exact (fun q H => H). }
apply set_ext.
- let v. assume Hv.
  claim HvA: v :e A. { exact (hl_rep_Subq A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) v Hv). }
  apply (SepI A P v HvA). apply (Hmem v HvA). assume H1 _. apply H1.
  apply (hl_rep_iff A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) v HvA). assume _ H2. exact (H2 Hv).
- let v. assume Hv.
  claim HvA: v :e A. { exact (SepE1 A P v Hv). }
  apply (hl_rep_iff A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if P x then 1 else 0) x = 1 then 1 else 0) v HvA). assume H1 _. apply H1.
  apply (Hmem v HvA). assume _ H2. exact (H2 (SepE2 A P v Hv)).
Qed.
Theorem hl_gspec_repl : forall A B:set, forall F S:set, F :e B :^: A -> S :e 2 :^: A ->
  hl_rep B (hl_GSPEC B (fun v :e B => if exists y :e B, hl_SETSPEC B v (if exists x :e A, hl_IN A x S = 1 /\ y = F x then 1 else 0) y = 1 then 1 else 0)) = {F x | x :e hl_rep A S}.
let A B F S. assume HF HS.
apply (eq_trans_i (hl_rep B (hl_GSPEC B (fun v :e B => if exists y :e B, hl_SETSPEC B v (if exists x :e A, hl_IN A x S = 1 /\ y = F x then 1 else 0) y = 1 then 1 else 0))) ({v :e B | exists x :e A, hl_IN A x S = 1 /\ v = F x}) ({F x | x :e hl_rep A S}) (hl_gspec_sep B (fun y => exists x :e A, hl_IN A x S = 1 /\ y = F x))).
apply set_ext.
- let v. assume Hv. apply (SepE B (fun y => exists x :e A, hl_IN A x S = 1 /\ y = F x) v Hv). assume HvB H.
  apply H. let x. assume Hx0. apply Hx0. assume Hx H2. apply H2. assume H3 H4.
  rewrite H4. apply (ReplI (hl_rep A S) (fun z => F z) x).
  claim H3': S x = 1. { exact ((hl_IN_unfold A x Hx S HS) (fun hl__u hl__v => hl__u = 1) H3). }
  apply (hl_rep_iff A S x Hx). assume H5 _. exact (H5 H3').
- let v. assume Hv. apply (ReplE_impred (hl_rep A S) (fun z => F z) v Hv). let x. assume Hx Hvx.
  claim HxA: x :e A. { exact (hl_rep_Subq A S x Hx). }
  apply (SepI B (fun y => exists x :e A, hl_IN A x S = 1 /\ y = F x) v).
  + rewrite Hvx. exact (setexp_ap A B F HF x HxA).
  + witness x. apply andI.
    * exact HxA.
    * apply andI.
      { claim H6: S x = 1. { apply (hl_rep_iff A S x HxA). assume _ H5. exact (H5 Hx). }
        exact ((eq_sym_i (hl_IN A x S) (S x) (hl_IN_unfold A x HxA S HS)) (fun hl__u hl__v => hl__u = 1) H6). }
      { exact Hvx. }
Qed.
Theorem Repl_ext_pw : forall X:set, forall F G:set -> set, (forall x :e X, F x = G x) -> {F x | x :e X} = {G x | x :e X}.
let X F G. assume H. apply set_ext.
- let y. assume Hy. apply (ReplE_impred X F y Hy). let x. assume Hx Hyx. rewrite Hyx. rewrite (H x Hx). exact (ReplI X G x Hx).
- let y. assume Hy. apply (ReplE_impred X G y Hy). let x. assume Hx Hyx. rewrite Hyx. rewrite <- (H x Hx). exact (ReplI X F x Hx).
Qed.
Theorem hl_IMAGE_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e 2 :^: A, hl_rep B (hl_IMAGE A B l1 l2) = {f1 x | x :e hl_rep A l2}.
let A B. assume _ _. let l1. assume H1. let f1. assume Hf. let l2. assume H2.
rewrite (hl_IMAGE_unfold A B l1 H1 l2 H2).
rewrite (hl_gspec_repl A B l1 l2 H1 H2).
apply (Repl_ext_pw (hl_rep A l2) (fun x => l1 x) f1).
let x. assume Hx. exact (Hf x (hl_rep_Subq A l2 x Hx)).
Qed.
Theorem hl_UNION_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_rep A (hl_UNION A l1 l2) = hl_rep A l1 :\/: hl_rep A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
rewrite (hl_UNION_unfold A l1 H1 l2 H2).
apply (eq_trans_i (hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if hl_IN A x l1 = 1 \/ hl_IN A x l2 = 1 then 1 else 0) x = 1 then 1 else 0))) ({v :e A | hl_IN A v l1 = 1 \/ hl_IN A v l2 = 1}) (hl_rep A l1 :\/: hl_rep A l2) (hl_gspec_sep A (fun x => hl_IN A x l1 = 1 \/ hl_IN A x l2 = 1))).
apply set_ext.
- let v. assume Hv. apply (SepE A (fun x => hl_IN A x l1 = 1 \/ hl_IN A x l2 = 1) v Hv). assume HvA H. apply H.
  + assume H3. apply (binunionI1 (hl_rep A l1) (hl_rep A l2) v). apply (hl_IN_compat A HA v HvA l1 H1). assume H4 _. exact (H4 H3).
  + assume H3. apply (binunionI2 (hl_rep A l1) (hl_rep A l2) v). apply (hl_IN_compat A HA v HvA l2 H2). assume H4 _. exact (H4 H3).
- let v. assume Hv. apply (binunionE (hl_rep A l1) (hl_rep A l2) v Hv).
  + assume H3. claim HvA: v :e A. { exact (hl_rep_Subq A l1 v H3). }
    apply (SepI A (fun x => hl_IN A x l1 = 1 \/ hl_IN A x l2 = 1) v HvA). apply orIL. apply (hl_IN_compat A HA v HvA l1 H1). assume _ H4. exact (H4 H3).
  + assume H3. claim HvA: v :e A. { exact (hl_rep_Subq A l2 v H3). }
    apply (SepI A (fun x => hl_IN A x l1 = 1 \/ hl_IN A x l2 = 1) v HvA). apply orIR. apply (hl_IN_compat A HA v HvA l2 H2). assume _ H4. exact (H4 H3).
Qed.
Theorem hl_INTER_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_rep A (hl_INTER A l1 l2) = hl_rep A l1 :/\: hl_rep A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
rewrite (hl_INTER_unfold A l1 H1 l2 H2).
apply (eq_trans_i (hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if hl_IN A x l1 = 1 /\ hl_IN A x l2 = 1 then 1 else 0) x = 1 then 1 else 0))) ({v :e A | hl_IN A v l1 = 1 /\ hl_IN A v l2 = 1}) (hl_rep A l1 :/\: hl_rep A l2) (hl_gspec_sep A (fun x => hl_IN A x l1 = 1 /\ hl_IN A x l2 = 1))).
apply set_ext.
- let v. assume Hv. apply (SepE A (fun x => hl_IN A x l1 = 1 /\ hl_IN A x l2 = 1) v Hv). assume HvA H. apply H. assume H3 H4.
  apply (binintersectI (hl_rep A l1) (hl_rep A l2) v).
  + apply (hl_IN_compat A HA v HvA l1 H1). assume H5 _. exact (H5 H3).
  + apply (hl_IN_compat A HA v HvA l2 H2). assume H5 _. exact (H5 H4).
- let v. assume Hv. apply (binintersectE (hl_rep A l1) (hl_rep A l2) v Hv). assume H3 H4.
  claim HvA: v :e A. { exact (hl_rep_Subq A l1 v H3). }
  apply (SepI A (fun x => hl_IN A x l1 = 1 /\ hl_IN A x l2 = 1) v HvA). apply andI.
  + apply (hl_IN_compat A HA v HvA l1 H1). assume _ H5. exact (H5 H3).
  + apply (hl_IN_compat A HA v HvA l2 H2). assume _ H5. exact (H5 H4).
Qed.
Theorem hl_DIFF_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_rep A (hl_DIFF A l1 l2) = hl_rep A l1 :\: hl_rep A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
rewrite (hl_DIFF_unfold A l1 H1 l2 H2).
apply (eq_trans_i (hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if hl_IN A x l1 = 1 /\ ~ hl_IN A x l2 = 1 then 1 else 0) x = 1 then 1 else 0))) ({v :e A | hl_IN A v l1 = 1 /\ ~ hl_IN A v l2 = 1}) (hl_rep A l1 :\: hl_rep A l2) (hl_gspec_sep A (fun x => hl_IN A x l1 = 1 /\ ~ hl_IN A x l2 = 1))).
apply set_ext.
- let v. assume Hv. apply (SepE A (fun x => hl_IN A x l1 = 1 /\ ~ hl_IN A x l2 = 1) v Hv). assume HvA H. apply H. assume H3 H4.
  apply (setminusI (hl_rep A l1) (hl_rep A l2) v).
  + apply (hl_IN_compat A HA v HvA l1 H1). assume H5 _. exact (H5 H3).
  + assume H6. apply H4. apply (hl_IN_compat A HA v HvA l2 H2). assume _ H5. exact (H5 H6).
- let v. assume Hv. apply (setminusE (hl_rep A l1) (hl_rep A l2) v Hv). assume H3 H4.
  claim HvA: v :e A. { exact (hl_rep_Subq A l1 v H3). }
  apply (SepI A (fun x => hl_IN A x l1 = 1 /\ ~ hl_IN A x l2 = 1) v HvA). apply andI.
  + apply (hl_IN_compat A HA v HvA l1 H1). assume _ H5. exact (H5 H3).
  + assume H6. apply H4. apply (hl_IN_compat A HA v HvA l2 H2). assume H5 _. exact (H5 H6).
Qed.
Theorem hl_DELETE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e A, hl_rep A (hl_DELETE A l1 l2) = hl_rep A l1 :\: {l2}.
let A. assume HA. let l1. assume H1. let l2. assume H2.
rewrite (hl_DELETE_unfold A l1 H1 l2 H2).
apply (eq_trans_i (hl_rep A (hl_GSPEC A (fun v :e A => if exists y :e A, hl_SETSPEC A v (if hl_IN A y l1 = 1 /\ ~ y = l2 then 1 else 0) y = 1 then 1 else 0))) ({v :e A | hl_IN A v l1 = 1 /\ ~ v = l2}) (hl_rep A l1 :\: {l2}) (hl_gspec_sep A (fun y => hl_IN A y l1 = 1 /\ ~ y = l2))).
apply set_ext.
- let v. assume Hv. apply (SepE A (fun y => hl_IN A y l1 = 1 /\ ~ y = l2) v Hv). assume HvA H. apply H. assume H3 H4.
  apply (setminusI (hl_rep A l1) {l2} v).
  + apply (hl_IN_compat A HA v HvA l1 H1). assume H5 _. exact (H5 H3).
  + assume H6. exact (H4 (SingE l2 v H6)).
- let v. assume Hv. apply (setminusE (hl_rep A l1) {l2} v Hv). assume H3 H4.
  claim HvA: v :e A. { exact (hl_rep_Subq A l1 v H3). }
  apply (SepI A (fun y => hl_IN A y l1 = 1 /\ ~ y = l2) v HvA). apply andI.
  + apply (hl_IN_compat A HA v HvA l1 H1). assume _ H5. exact (H5 H3).
  + assume H6. apply H4. rewrite H6. exact (SingI l2).
Qed.
Theorem hl_DISJOINT_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_DISJOINT A l1 l2 = 1 <-> hl_rep A l1 :/\: hl_rep A l2 = Empty.
let A. assume HA. let l1. assume H1. let l2. assume H2.
rewrite (hl_DISJOINT_unfold A l1 H1 l2 H2).
apply (iff_trans ((if hl_INTER A l1 l2 = hl_EMPTY A then 1 else 0) = 1) (hl_INTER A l1 l2 = hl_EMPTY A) (hl_rep A l1 :/\: hl_rep A l2 = Empty) (If_1_iff (hl_INTER A l1 l2 = hl_EMPTY A))).
claim HI: hl_INTER A l1 l2 :e 2 :^: A. { exact (setexp2_ap (2 :^: A) (2 :^: A) (2 :^: A) (hl_INTER A) (hl_INTER_in A HA) l1 H1 l2 H2). }
claim HE: hl_EMPTY A :e 2 :^: A. { exact (hl_EMPTY_in A HA). }
apply iffI.
- assume H. rewrite <- (hl_INTER_compat A HA l1 H1 l2 H2). rewrite <- (hl_EMPTY_compat A HA). exact (f_equal (fun x => hl_rep A x) (hl_INTER A l1 l2) (hl_EMPTY A) H).
- assume H. apply (hl_rep_inj A (hl_INTER A l1 l2) (hl_EMPTY A) HI HE).
  rewrite (hl_INTER_compat A HA l1 H1 l2 H2). rewrite (hl_EMPTY_compat A HA). exact H.
Qed.

// ---- pairs ----
Theorem hl_FST_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A :*: B, hl_FST A B l1 = l1 0.
let A B. assume _ _. let p. assume Hp.
rewrite (hl_FST_unfold A B p Hp).
claim HP: (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) :e 2 :^: A.
{ prove (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) :e Pi_ x :e A, 2.
  apply (lam_Pi A (fun _ => 2) (fun x => if exists y :e B, p = hl_pair A B x y then 1 else 0)). let x. assume _. exact (If_in_2 (exists y :e B, p = hl_pair A B x y)). }
rewrite (hl_select_eq A (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) HP).
claim Hspec: forall z :e A, (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1 <-> exists y :e B, p = hl_pair A B z y.
{ let z. assume Hz. rewrite (beta A (fun x => if exists y :e B, p = hl_pair A B x y then 1 else 0) z Hz). exact (If_1_iff (exists y :e B, p = hl_pair A B z y)). }
claim Hp0: p 0 :e A. { exact (ap0_Sigma A (fun _ => B) p Hp). }
claim Hp1: p 1 :e B. { exact (ap1_Sigma A (fun _ => B) p Hp). }
claim Hpeta: p = hl_pair A B (p 0) (p 1).
{ rewrite (hl_pair_ap A B (p 0) Hp0 (p 1) Hp1). exact (eq_sym_i (p 0, p 1) p (tuple_Sigma_eta A (fun _ => B) p Hp)). }
claim Hex: exists z :e A, (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1.
{ witness (p 0). apply andI.
  - exact Hp0.
  - apply (Hspec (p 0) Hp0). assume _ H. apply H. witness (p 1). apply andI.
    + exact Hp1.
    + exact Hpeta. }
apply (choose_in_spec A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1) Hex). assume Hc1 Hc2.
apply (Hspec (choose_in A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1)) Hc1). assume H _. apply (H Hc2). let y. assume Hy0. apply Hy0. assume Hy Hpy.
claim Hpy2: p = (choose_in A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1), y).
{ exact ((hl_pair_ap A B (choose_in A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1)) Hc1 y Hy) (fun hl__u hl__v => p = hl__u) Hpy). }
exact (eq_sym_i (p 0) (choose_in A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1))
  (eq_trans_i (p 0) ((choose_in A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1), y) 0) (choose_in A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1))
    (f_equal (fun q => q 0) p (choose_in A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1), y) Hpy2)
    (tuple_2_0_eq (choose_in A (fun z => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) z = 1)) y))).
Qed.
Theorem hl_SND_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A :*: B, hl_SND A B l1 = l1 1.
let A B. assume _ _. let p. assume Hp.
rewrite (hl_SND_unfold A B p Hp).
claim HP: (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) :e 2 :^: B.
{ prove (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) :e Pi_ y :e B, 2.
  apply (lam_Pi B (fun _ => 2) (fun y => if exists x :e A, p = hl_pair A B x y then 1 else 0)). let y. assume _. exact (If_in_2 (exists x :e A, p = hl_pair A B x y)). }
rewrite (hl_select_eq B (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) HP).
claim Hspec: forall z :e B, (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1 <-> exists x :e A, p = hl_pair A B x z.
{ let z. assume Hz. rewrite (beta B (fun y => if exists x :e A, p = hl_pair A B x y then 1 else 0) z Hz). exact (If_1_iff (exists x :e A, p = hl_pair A B x z)). }
claim Hp0: p 0 :e A. { exact (ap0_Sigma A (fun _ => B) p Hp). }
claim Hp1: p 1 :e B. { exact (ap1_Sigma A (fun _ => B) p Hp). }
claim Hpeta: p = hl_pair A B (p 0) (p 1).
{ rewrite (hl_pair_ap A B (p 0) Hp0 (p 1) Hp1). exact (eq_sym_i (p 0, p 1) p (tuple_Sigma_eta A (fun _ => B) p Hp)). }
claim Hex: exists z :e B, (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1.
{ witness (p 1). apply andI.
  - exact Hp1.
  - apply (Hspec (p 1) Hp1). assume _ H. apply H. witness (p 0). apply andI.
    + exact Hp0.
    + exact Hpeta. }
apply (choose_in_spec B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1) Hex). assume Hc1 Hc2.
apply (Hspec (choose_in B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1)) Hc1). assume H _. apply (H Hc2). let x. assume Hx0. apply Hx0. assume Hx Hpx.
claim Hpx2: p = (x, choose_in B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1)).
{ exact ((hl_pair_ap A B x Hx (choose_in B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1)) Hc1) (fun hl__u hl__v => p = hl__u) Hpx). }
exact (eq_sym_i (p 1) (choose_in B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1))
  (eq_trans_i (p 1) ((x, choose_in B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1)) 1) (choose_in B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1))
    (f_equal (fun q => q 1) p (x, choose_in B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1)) Hpx2)
    (tuple_2_1_eq x (choose_in B (fun z => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) z = 1))))).
Qed.

// ---- finiteness ----
Theorem hl_FINITE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_FINITE A l1 = 1 <-> finite (hl_rep A l1).
let A. assume HA. let a. assume Ha.
rewrite (hl_FINITE_unfold A a Ha).
apply (iff_trans ((if forall FINITE' :e 2 :^: (2 :^: A), (forall a1 :e 2 :^: A, a1 = hl_EMPTY A \/ (exists x :e A, exists s :e 2 :^: A, a1 = hl_INSERT A x s /\ FINITE' s = 1) -> FINITE' a1 = 1) -> FINITE' a = 1 then 1 else 0) = 1)
  (forall FINITE' :e 2 :^: (2 :^: A), (forall a1 :e 2 :^: A, a1 = hl_EMPTY A \/ (exists x :e A, exists s :e 2 :^: A, a1 = hl_INSERT A x s /\ FINITE' s = 1) -> FINITE' a1 = 1) -> FINITE' a = 1)
  (finite (hl_rep A a))
  (If_1_iff (forall FINITE' :e 2 :^: (2 :^: A), (forall a1 :e 2 :^: A, a1 = hl_EMPTY A \/ (exists x :e A, exists s :e 2 :^: A, a1 = hl_INSERT A x s /\ FINITE' s = 1) -> FINITE' a1 = 1) -> FINITE' a = 1))).
apply iffI.
- assume H.
  claim HF: hl_chip (2 :^: A) (fun s => finite (hl_rep A s)) :e 2 :^: (2 :^: A). { exact (hl_chip_Pi (2 :^: A) (fun s => finite (hl_rep A s))). }
  claim Hclosed: forall a1 :e 2 :^: A, a1 = hl_EMPTY A \/ (exists x :e A, exists s :e 2 :^: A, a1 = hl_INSERT A x s /\ hl_chip (2 :^: A) (fun s => finite (hl_rep A s)) s = 1) -> hl_chip (2 :^: A) (fun s => finite (hl_rep A s)) a1 = 1.
  { let a1. assume Ha1 H1. apply (hl_chip_iff (2 :^: A) (fun s => finite (hl_rep A s)) a1 Ha1). assume _ H2. apply H2.
    prove finite (hl_rep A a1).
    apply H1.
    - assume H3: a1 = hl_EMPTY A. rewrite H3. rewrite (hl_EMPTY_compat A HA). exact finite_Empty.
    - assume H3. apply H3. let x. assume Hx0. apply Hx0. assume Hx H4. apply H4. let s. assume Hs0. apply Hs0. assume Hs H5. apply H5. assume H6 H7.
      claim Hfs: finite (hl_rep A s). { apply (hl_chip_iff (2 :^: A) (fun s => finite (hl_rep A s)) s Hs). assume H8 _. exact (H8 H7). }
      rewrite H6. rewrite (hl_INSERT_compat A HA x Hx s Hs).
      prove finite (hl_rep A s :\/: {x}). exact (adjoin_finite (hl_rep A s) x Hfs). }
  claim Hres: hl_chip (2 :^: A) (fun s => finite (hl_rep A s)) a = 1. { exact (H (hl_chip (2 :^: A) (fun s => finite (hl_rep A s))) HF Hclosed). }
  apply (hl_chip_iff (2 :^: A) (fun s => finite (hl_rep A s)) a Ha). assume H8 _. exact (H8 Hres).
- assume Hfin. let F. assume HF Hclosed.
  claim Hind: forall X, finite X -> forall b :e 2 :^: A, hl_rep A b = X -> F b = 1.
  { apply (finite_ind (fun X => forall b :e 2 :^: A, hl_rep A b = X -> F b = 1)).
    - let b. assume Hb Hrb. apply (Hclosed b Hb). apply orIL.
      apply (hl_rep_inj A b (hl_EMPTY A) Hb (hl_EMPTY_in A HA)). rewrite Hrb. exact (eq_sym_i (hl_rep A (hl_EMPTY A)) Empty (hl_EMPTY_compat A HA)).
    - let X y. assume HX Hy IH. let b. assume Hb Hrb. apply (Hclosed b Hb). apply orIR.
      claim HrbA: X :\/: {y} c= A. { rewrite <- Hrb. exact (hl_rep_Subq A b). }
      claim HXA: X c= A. { let z. assume Hz. exact (HrbA z (binunionI1 X {y} z Hz)). }
      claim HyA: y :e A. { exact (HrbA y (binunionI2 X {y} y (SingI y))). }
      claim Hchi: hl_chi A X :e 2 :^: A. { exact (hl_chi_Pi A X). }
      witness y. apply andI.
      + exact HyA.
      + witness (hl_chi A X). apply andI.
        * exact Hchi.
        * apply andI.
          { apply (hl_rep_inj A b (hl_INSERT A y (hl_chi A X)) Hb (setexp2_ap A (2 :^: A) (2 :^: A) (hl_INSERT A) (hl_INSERT_in A HA) y HyA (hl_chi A X) Hchi)).
            rewrite (hl_INSERT_compat A HA y HyA (hl_chi A X) Hchi). rewrite (hl_rep_chi A X HXA).
            prove hl_rep A b = X :\/: {y}. exact Hrb. }
          { exact (IH (hl_chi A X) Hchi (hl_rep_chi A X HXA)). } }
  exact (Hind (hl_rep A a) Hfin a Ha (fun q H => H)).
Qed.

// ---- cardinality (CARD is underspecified on infinite sets: conditional compatibility) ----
Theorem adjoin_In_eq : forall X x:set, x :e X -> X :\/: {x} = X.
let X x. assume Hx. apply set_ext.
- let z. assume Hz. apply (binunionE X {x} z Hz).
  + assume H. exact H.
  + assume H. rewrite (SingE x z H). exact Hx.
- let z. assume Hz. exact (binunionI1 X {x} z Hz).
Qed.
Theorem finite_cardinality_omega : forall X:set, finite X -> finite_cardinality X :e omega.
let X. assume H. apply (god1_finite_cardinality_specification X H). assume H1 _. exact H1.
Qed.
Theorem hl_CARD_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, finite (hl_rep A l1) -> hl_CARD A l1 = finite_cardinality (hl_rep A l1).
let A. assume HA. let a. assume Ha Hfin.
rewrite (hl_CARD_unfold A a Ha).
claim HFin: (fun x :e A => fun n :e omega => hl_SUC n) :e omega :^: omega :^: A.
{ exact (lam2_Pi A omega omega (fun x n => hl_SUC n) (fun x Hx n Hn => hl_SUC_omega n Hn)). }
rewrite (hl_ITSET_unfold A omega (fun x :e A => fun n :e omega => hl_SUC n) HFin a Ha (hl_NUMERAL hl_zero) (hl_numeral_omega hl_zero hl_zero_omega)).
claim Hcard0: forall s :e 2 :^: A, (if finite (hl_rep A s) then finite_cardinality (hl_rep A s) else 0) :e omega.
{ let s. assume Hs. apply (xm (finite (hl_rep A s))).
  - assume H. rewrite (If_i_1 (finite (hl_rep A s)) (finite_cardinality (hl_rep A s)) 0 H). exact (finite_cardinality_omega (hl_rep A s) H).
  - assume H. rewrite (If_i_0 (finite (hl_rep A s)) (finite_cardinality (hl_rep A s)) 0 H). exact (nat_p_omega 0 nat_0). }
claim Hex: exists g :e omega :^: (2 :^: A), g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)).
{ witness (fun s :e 2 :^: A => if finite (hl_rep A s) then finite_cardinality (hl_rep A s) else 0).
  claim Hw: (fun s :e 2 :^: A => if finite (hl_rep A s) then finite_cardinality (hl_rep A s) else 0) :e omega :^: (2 :^: A).
  { exact (hl_lam_Pi (2 :^: A) omega (fun s => if finite (hl_rep A s) then finite_cardinality (hl_rep A s) else 0) Hcard0). }
  apply andI.
  - exact Hw.
  - apply andI.
    + rewrite (beta (2 :^: A) (fun s => if finite (hl_rep A s) then finite_cardinality (hl_rep A s) else 0) (hl_EMPTY A) (hl_EMPTY_in A HA)).
      rewrite (hl_EMPTY_compat A HA). rewrite (If_i_1 (finite Empty) (finite_cardinality Empty) 0 finite_Empty).
      rewrite finite_cardinality_Empty. exact (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero).
    + let x. assume Hx. let s. assume Hs. assume HFs.
      claim Hfs: finite (hl_rep A s). { apply (hl_FINITE_compat A HA s Hs). assume H _. exact (H HFs). }
      claim HIs: hl_INSERT A x s :e 2 :^: A. { exact (setexp2_ap A (2 :^: A) (2 :^: A) (hl_INSERT A) (hl_INSERT_in A HA) x Hx s Hs). }
      claim Hfi: finite (hl_rep A (hl_INSERT A x s)).
      { rewrite (hl_INSERT_compat A HA x Hx s Hs). prove finite (hl_rep A s :\/: {x}). exact (adjoin_finite (hl_rep A s) x Hfs). }
      rewrite (beta (2 :^: A) (fun s => if finite (hl_rep A s) then finite_cardinality (hl_rep A s) else 0) (hl_INSERT A x s) HIs).
      rewrite (beta (2 :^: A) (fun s => if finite (hl_rep A s) then finite_cardinality (hl_rep A s) else 0) s Hs).
      rewrite (If_i_1 (finite (hl_rep A (hl_INSERT A x s))) (finite_cardinality (hl_rep A (hl_INSERT A x s))) 0 Hfi).
      rewrite (If_i_1 (finite (hl_rep A s)) (finite_cardinality (hl_rep A s)) 0 Hfs).
      claim Hc: finite_cardinality (hl_rep A s) :e omega. { exact (finite_cardinality_omega (hl_rep A s) Hfs). }
      claim HF: (fun x :e A => fun n :e omega => hl_SUC n) x (finite_cardinality (hl_rep A s)) = ordsucc (finite_cardinality (hl_rep A s)).
      { exact (eq_trans_i ((fun x :e A => fun n :e omega => hl_SUC n) x (finite_cardinality (hl_rep A s))) (hl_SUC (finite_cardinality (hl_rep A s))) (ordsucc (finite_cardinality (hl_rep A s)))
          (lam2_beta A omega (fun x n => hl_SUC n) x Hx (finite_cardinality (hl_rep A s)) Hc) (hl_SUC_ap (finite_cardinality (hl_rep A s)) Hc)). }
      rewrite HF.
      claim HI2: hl_IN A x s :e 2. { exact (ap_Pi_2 (2 :^: A) (hl_IN A x) (setexp_ap A (2 :^: (2 :^: A)) (hl_IN A) (hl_IN_in A HA) x Hx) s Hs). }
      rewrite (hl_COND_if omega (hl_IN A x s) HI2 (x :e hl_rep A s) (hl_IN_compat A HA x Hx s Hs) (finite_cardinality (hl_rep A s)) Hc (ordsucc (finite_cardinality (hl_rep A s))) (omega_ordsucc (finite_cardinality (hl_rep A s)) Hc)).
      rewrite (hl_INSERT_compat A HA x Hx s Hs).
      apply (xm (x :e hl_rep A s)).
      * assume H. rewrite (If_i_1 (x :e hl_rep A s) (finite_cardinality (hl_rep A s)) (ordsucc (finite_cardinality (hl_rep A s))) H).
        prove finite_cardinality (hl_rep A s :\/: {x}) = finite_cardinality (hl_rep A s).
        rewrite (adjoin_In_eq (hl_rep A s) x H). exact (fun q H => H).
      * assume H. rewrite (If_i_0 (x :e hl_rep A s) (finite_cardinality (hl_rep A s)) (ordsucc (finite_cardinality (hl_rep A s))) H).
        prove finite_cardinality (hl_rep A s :\/: {x}) = ordsucc (finite_cardinality (hl_rep A s)).
        exact (god1_finite_cardinality_adjoin (hl_rep A s) x Hfs H). }
apply (hl_recdef0 (omega :^: (2 :^: A)) (fun g => g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s))) Hex).
assume HP Hg. apply HP. assume H0 HS.
claim Hind: forall X, finite X -> forall b :e 2 :^: A, hl_rep A b = X -> hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0) b = finite_cardinality X.
{ apply (finite_ind (fun X => forall b :e 2 :^: A, hl_rep A b = X -> hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0) b = finite_cardinality X)).
  - let b. assume Hb Hrb.
    claim HbE: b = hl_EMPTY A.
    { apply (hl_rep_inj A b (hl_EMPTY A) Hb (hl_EMPTY_in A HA)). rewrite Hrb. exact (eq_sym_i (hl_rep A (hl_EMPTY A)) Empty (hl_EMPTY_compat A HA)). }
    rewrite HbE. rewrite finite_cardinality_Empty. rewrite H0. exact hl_NUMERAL_zero.
  - let X y. assume HX Hy IH. let b. assume Hb Hrb.
    claim HrbA: X :\/: {y} c= A. { rewrite <- Hrb. exact (hl_rep_Subq A b). }
    claim HXA: X c= A. { let z. assume Hz. exact (HrbA z (binunionI1 X {y} z Hz)). }
    claim HyA: y :e A. { exact (HrbA y (binunionI2 X {y} y (SingI y))). }
    claim Hchi: hl_chi A X :e 2 :^: A. { exact (hl_chi_Pi A X). }
    claim Hbi: b = hl_INSERT A y (hl_chi A X).
    { apply (hl_rep_inj A b (hl_INSERT A y (hl_chi A X)) Hb (setexp2_ap A (2 :^: A) (2 :^: A) (hl_INSERT A) (hl_INSERT_in A HA) y HyA (hl_chi A X) Hchi)).
      rewrite (hl_INSERT_compat A HA y HyA (hl_chi A X) Hchi). rewrite (hl_rep_chi A X HXA). prove hl_rep A b = X :\/: {y}. exact Hrb. }
    claim HFchi: hl_FINITE A (hl_chi A X) = 1. { apply (hl_FINITE_compat A HA (hl_chi A X) Hchi). assume _ H. apply H. rewrite (hl_rep_chi A X HXA). exact HX. }
    claim HIH: hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0) (hl_chi A X) = finite_cardinality X.
    { exact (IH (hl_chi A X) Hchi (hl_rep_chi A X HXA)). }
    claim Hgc: finite_cardinality X :e omega. { exact (finite_cardinality_omega X HX). }
    rewrite Hbi. rewrite (HS y HyA (hl_chi A X) Hchi HFchi).
    claim HF: (fun x :e A => fun n :e omega => hl_SUC n) y (finite_cardinality X) = ordsucc (finite_cardinality X).
    { exact (eq_trans_i ((fun x :e A => fun n :e omega => hl_SUC n) y (finite_cardinality X)) (hl_SUC (finite_cardinality X)) (ordsucc (finite_cardinality X))
        (lam2_beta A omega (fun x n => hl_SUC n) y HyA (finite_cardinality X) Hgc) (hl_SUC_ap (finite_cardinality X) Hgc)). }
    claim HI2: hl_IN A y (hl_chi A X) :e 2. { exact (ap_Pi_2 (2 :^: A) (hl_IN A y) (setexp_ap A (2 :^: (2 :^: A)) (hl_IN A) (hl_IN_in A HA) y HyA) (hl_chi A X) Hchi). }
    claim HnotIn: ~ (y :e hl_rep A (hl_chi A X)). { rewrite (hl_rep_chi A X HXA). exact Hy. }
    exact (eq_trans_i (hl_COND omega (hl_IN A y (hl_chi A X)) ((hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0)) (hl_chi A X)) ((fun x :e A => fun n :e omega => hl_SUC n) y ((hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0)) (hl_chi A X)))) (hl_COND omega (hl_IN A y (hl_chi A X)) (finite_cardinality X) (ordsucc (finite_cardinality X))) (finite_cardinality (X :\/: {y}))
      (f_equal2 (fun p q => hl_COND omega (hl_IN A y (hl_chi A X)) p q) ((hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0)) (hl_chi A X)) (finite_cardinality X) ((fun x :e A => fun n :e omega => hl_SUC n) y ((hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0)) (hl_chi A X))) (ordsucc (finite_cardinality X)) HIH
         (eq_trans_i ((fun x :e A => fun n :e omega => hl_SUC n) y ((hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0)) (hl_chi A X))) ((fun x :e A => fun n :e omega => hl_SUC n) y (finite_cardinality X)) (ordsucc (finite_cardinality X)) (f_equal (fun z => (fun x :e A => fun n :e omega => hl_SUC n) y z) ((hl_select (omega :^: (2 :^: A)) (fun g :e omega :^: (2 :^: A) => if g (hl_EMPTY A) = hl_NUMERAL hl_zero /\ forall x :e A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> g (hl_INSERT A x s) = hl_COND omega (hl_IN A x s) (g s) ((fun x :e A => fun n :e omega => hl_SUC n) x (g s)) then 1 else 0)) (hl_chi A X)) (finite_cardinality X) HIH) HF))
      (eq_trans_i (hl_COND omega (hl_IN A y (hl_chi A X)) (finite_cardinality X) (ordsucc (finite_cardinality X))) (if y :e hl_rep A (hl_chi A X) then finite_cardinality X else ordsucc (finite_cardinality X)) (finite_cardinality (X :\/: {y}))
         (hl_COND_if omega (hl_IN A y (hl_chi A X)) HI2 (y :e hl_rep A (hl_chi A X)) (hl_IN_compat A HA y HyA (hl_chi A X) Hchi) (finite_cardinality X) Hgc (ordsucc (finite_cardinality X)) (omega_ordsucc (finite_cardinality X) Hgc))
         (eq_trans_i (if y :e hl_rep A (hl_chi A X) then finite_cardinality X else ordsucc (finite_cardinality X)) (ordsucc (finite_cardinality X)) (finite_cardinality (X :\/: {y}))
            (If_i_0 (y :e hl_rep A (hl_chi A X)) (finite_cardinality X) (ordsucc (finite_cardinality X)) HnotIn)
            (eq_sym_i (finite_cardinality (X :\/: {y})) (ordsucc (finite_cardinality X)) (god1_finite_cardinality_adjoin X y HX Hy))))). }
exact (Hind (hl_rep A a) Hfin a Ha (fun q H => H)).
Qed.
Theorem hl_HAS_SIZE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e omega, hl_HAS_SIZE A l1 l2 = 1 <-> equip (hl_rep A l1) l2.
let A. assume HA. let s. assume Hs. let n. assume Hn.
rewrite (hl_HAS_SIZE_unfold A s Hs n Hn).
apply (iff_trans ((if hl_FINITE A s = 1 /\ hl_CARD A s = n then 1 else 0) = 1) (hl_FINITE A s = 1 /\ hl_CARD A s = n) (equip (hl_rep A s) n) (If_1_iff (hl_FINITE A s = 1 /\ hl_CARD A s = n))).
apply iffI.
- assume H. apply H. assume H1 H2.
  claim Hfin: finite (hl_rep A s). { apply (hl_FINITE_compat A HA s Hs). assume H3 _. exact (H3 H1). }
  claim Hc: finite_cardinality (hl_rep A s) = n. { rewrite <- (hl_CARD_compat A HA s Hs Hfin). exact H2. }
  apply (god1_finite_cardinality_specification (hl_rep A s) Hfin). assume _ H4. rewrite <- Hc. exact H4.
- assume H.
  claim Hfin: finite (hl_rep A s). { prove exists m :e omega, equip (hl_rep A s) m. witness n. exact (andI (n :e omega) (equip (hl_rep A s) n) Hn H). }
  apply andI.
  + apply (hl_FINITE_compat A HA s Hs). assume _ H3. exact (H3 Hfin).
  + rewrite (hl_CARD_compat A HA s Hs Hfin).
    rewrite (god1_finite_cardinality_equip_eq (hl_rep A s) n Hfin (nat_finite n (omega_nat_p n Hn)) H).
    exact (god1_finite_cardinality_natural n Hn).
Qed.

// ---- generic comprehension forms for GSPEC terms in theorem statements ----
// hl_rep B (GSPEC (fun v => if exists x :e A, SETSPEC v (q x) (F x) = 1 ..)) = {v :e B | exists x :e A, q x = 1 /\ v = F x}
Theorem hl_gspec_generic : forall A B:set, forall q F:set -> set, (forall x :e A, q x :e 2) ->
  hl_rep B (hl_GSPEC B (fun v :e B => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0)) = {v :e B | exists x :e A, q x = 1 /\ v = F x}.
let A B q F. assume Hq.
claim HG: (fun v :e B => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) :e 2 :^: B.
{ prove (fun v :e B => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) :e Pi_ v :e B, 2.
  apply (lam_Pi B (fun _ => 2) (fun v => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0)). let v. assume _. exact (If_in_2 (exists x :e A, hl_SETSPEC B v (q x) (F x) = 1)). }
rewrite (hl_GSPEC_unfold B (fun v :e B => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) HG).
apply set_ext.
- let v. assume Hv.
  claim HvB: v :e B. { exact (hl_rep_Subq B (fun v :e B => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) v Hv). }
  claim H1: (fun v :e B => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) v = 1.
  { apply (hl_rep_iff B (fun v :e B => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) v HvB). assume _ H. exact (H Hv). }
  claim H2: (if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) = 1.
  { exact ((beta B (fun v => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) v HvB) (fun hl__u hl__v => hl__u = 1) H1). }
  apply (SepI B (fun v => exists x :e A, q x = 1 /\ v = F x) v HvB).
  apply (If_1_iff (exists x :e A, hl_SETSPEC B v (q x) (F x) = 1)). assume H3 _. apply (H3 H2). let x. assume Hx0. apply Hx0. assume Hx Hs.
  claim HFx: F x :e B.
  { apply (xm (F x :e B)).
    - assume H. exact H.
    - assume H. prove False.
      claim Hs2: hl_SETSPEC B v (q x) (F x) = 0.
      { prove (fun v_32420 :e B => fun v_32421 :e 2 => fun v_32422 :e B => if v_32421 = 1 /\ v_32420 = v_32422 then 1 else 0) v (q x) (F x) = 0.
        rewrite (beta B (fun v_32420 => fun v_32421 :e 2 => fun v_32422 :e B => if v_32421 = 1 /\ v_32420 = v_32422 then 1 else 0) v HvB).
        rewrite (beta 2 (fun v_32421 => fun v_32422 :e B => if v_32421 = 1 /\ v = v_32422 then 1 else 0) (q x) (Hq x Hx)).
        exact (beta0 B (fun v_32422 => if q x = 1 /\ v = v_32422 then 1 else 0) (F x) H). }
      apply neq_0_1. rewrite <- Hs2 at 1. exact Hs. }
  claim Hs3: (if q x = 1 /\ v = F x then 1 else 0) = 1.
  { exact ((hl_SETSPEC_unfold B v HvB (q x) (Hq x Hx) (F x) HFx) (fun hl__u hl__v => hl__u = 1) Hs). }
  witness x. apply andI.
  + exact Hx.
  + apply (If_1_iff (q x = 1 /\ v = F x)). assume H4 _. exact (H4 Hs3).
- let v. assume Hv. apply (SepE B (fun v => exists x :e A, q x = 1 /\ v = F x) v Hv). assume HvB H.
  apply (hl_rep_iff B (fun v :e B => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) v HvB). assume H1 _. apply H1.
  rewrite (beta B (fun v => if exists x :e A, hl_SETSPEC B v (q x) (F x) = 1 then 1 else 0) v HvB).
  apply (If_i_1 (exists x :e A, hl_SETSPEC B v (q x) (F x) = 1) 1 0).
  apply H. let x. assume Hx0. apply Hx0. assume Hx H2. apply H2. assume Hqx Hvx.
  claim HFx: F x :e B. { rewrite <- Hvx. exact HvB. }
  witness x. apply andI.
  + exact Hx.
  + rewrite (hl_SETSPEC_unfold B v HvB (q x) (Hq x Hx) (F x) HFx). apply (If_i_1 (q x = 1 /\ v = F x) 1 0). exact (andI (q x = 1) (v = F x) Hqx Hvx).
Qed.
Theorem gspec_sep_form : forall A:set, forall q:set -> set, {v :e A | exists x :e A, q x = 1 /\ v = x} = {v :e A | q v = 1}.
let A q. apply (Sep_ext_iff A (fun v => exists x :e A, q x = 1 /\ v = x) (fun v => q v = 1)). let v. assume Hv. apply iffI.
- assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx H2. apply H2. assume Hq Hvx. rewrite Hvx. exact Hq.
- assume H. witness v. apply andI.
  + exact Hv.
  + exact (andI (q v = 1) (v = v) H (fun p H => H)).
Qed.
Theorem gspec_replsep_form : forall A B:set, forall q F:set -> set, (forall x :e A, F x :e B) -> {v :e B | exists x :e A, q x = 1 /\ v = F x} = {F x | x :e A, q x = 1}.
let A B q F. assume HF. apply set_ext.
- let v. assume Hv. apply (SepE B (fun v => exists x :e A, q x = 1 /\ v = F x) v Hv). assume HvB H. apply H. let x. assume Hx0. apply Hx0. assume Hx H2. apply H2. assume Hq Hvx.
  rewrite Hvx. exact (ReplSepI A (fun x => q x = 1) F x Hx Hq).
- let v. assume Hv. apply (ReplSepE_impred A (fun x => q x = 1) F v Hv). let x. assume Hx Hq Hvx.
  claim HvB: v :e B. { rewrite Hvx. exact (HF x Hx). }
  apply (SepI B (fun v => exists x :e A, q x = 1 /\ v = F x) v HvB). witness x. apply andI.
  + exact Hx.
  + exact (andI (q x = 1) (v = F x) Hq Hvx).
Qed.
Theorem gspec_repl_form : forall A B:set, forall F:set -> set, (forall x :e A, F x :e B) -> {v :e B | exists x :e A, (if True then 1 else 0) = 1 /\ v = F x} = {F x | x :e A}.
let A B F. assume HF. apply set_ext.
- let v. assume Hv. apply (SepE B (fun v => exists x :e A, (if True then 1 else 0) = 1 /\ v = F x) v Hv). assume HvB H. apply H. let x. assume Hx0. apply Hx0. assume Hx H2. apply H2. assume _ Hvx.
  rewrite Hvx. exact (ReplI A F x Hx).
- let v. assume Hv. apply (ReplE_impred A F v Hv). let x. assume Hx Hvx.
  claim HvB: v :e B. { rewrite Hvx. exact (HF x Hx). }
  apply (SepI B (fun v => exists x :e A, (if True then 1 else 0) = 1 /\ v = F x) v HvB). witness x. apply andI.
  + exact Hx.
  + exact (andI ((if True then 1 else 0) = 1) (v = F x) (If_i_1 True 1 0 (fun p H => H)) Hvx).
Qed.

// ---- quotient and remainder ----
Theorem omega_Lt_ordsucc_Le : forall a b :e omega, a < b -> ordsucc a <= b.
let a. assume Ha. let b. assume Hb. assume H.
claim Hab: a :e b. { exact (ordinal_SNoLt_In a b (omega_ordinal_p a Ha) (omega_ordinal_p b Hb) H). }
apply (ordinal_Subq_SNoLe (ordsucc a) b (ordinal_ordsucc a (omega_ordinal_p a Ha)) (omega_ordinal_p b Hb)).
let z. assume Hz. apply (ordsuccE a z Hz).
- assume H1. exact (nat_trans b (omega_nat_p b Hb) a Hab z H1).
- assume H1. rewrite H1. exact Hab.
Qed.
Theorem div_mod_lt_absurd : forall n q1 r1 q2 r2 :e omega, r1 < n -> q1 < q2 -> q1 * n + r1 = q2 * n + r2 -> False.
let n. assume Hn. let q1. assume Hq1. let r1. assume Hr1. let q2. assume Hq2. let r2. assume Hr2. assume Hr1n Hq H.
claim HnS: SNo n. { exact (omega_SNo n Hn). }
claim Hq1S: SNo q1. { exact (omega_SNo q1 Hq1). }
claim Hq2S: SNo q2. { exact (omega_SNo q2 Hq2). }
claim Hr1S: SNo r1. { exact (omega_SNo r1 Hr1). }
claim Hr2S: SNo r2. { exact (omega_SNo r2 Hr2). }
claim Hq1n: SNo (q1 * n). { exact (omega_SNo (q1 * n) (mul_SNo_In_omega q1 Hq1 n Hn)). }
claim Hq2n: SNo (q2 * n). { exact (omega_SNo (q2 * n) (mul_SNo_In_omega q2 Hq2 n Hn)). }
claim HSq1: SNo (ordsucc q1). { exact (omega_SNo (ordsucc q1) (omega_ordsucc q1 Hq1)). }
claim H1: q1 * n + r1 < q1 * n + n. { exact (add_SNo_Lt2 (q1 * n) r1 n Hq1n Hr1S HnS Hr1n). }
claim H2: q1 * n + n = ordsucc q1 * n.
{ exact (eq_trans_i (q1 * n + n) ((q1 + 1) * n) (ordsucc q1 * n)
    (eq_sym_i ((q1 + 1) * n) (q1 * n + n) (eq_trans_i ((q1 + 1) * n) (q1 * n + 1 * n) (q1 * n + n) (mul_SNo_distrR q1 1 n Hq1S SNo_1 HnS) (f_equal (fun x => q1 * n + x) (1 * n) n (mul_SNo_oneL n HnS))))
    (f_equal (fun x => x * n) (q1 + 1) (ordsucc q1) (add_SNo_1_ordsucc q1 Hq1))). }
claim H3: ordsucc q1 * n <= q2 * n.
{ exact (nonneg_mul_SNo_Le2 (ordsucc q1) n q2 n HSq1 HnS Hq2S HnS (omega_nonneg (ordsucc q1) (omega_ordsucc q1 Hq1)) (omega_nonneg n Hn) (omega_Lt_ordsucc_Le q1 Hq1 q2 Hq2 Hq) (SNoLe_ref n)). }
claim H4: q2 * n <= q2 * n + r2.
{ exact ((add_SNo_0R (q2 * n) Hq2n) (fun hl__u hl__v => hl__u <= q2 * n + r2) (add_SNo_Le2 (q2 * n) 0 r2 Hq2n SNo_0 Hr2S (omega_nonneg r2 Hr2))). }
claim H5: q1 * n + r1 < q2 * n + r2.
{ exact (SNoLtLe_tra (q1 * n + r1) (q1 * n + n) (q2 * n + r2) (SNo_add_SNo (q1 * n) r1 Hq1n Hr1S) (SNo_add_SNo (q1 * n) n Hq1n HnS) (SNo_add_SNo (q2 * n) r2 Hq2n Hr2S) H1
    (SNoLe_tra (q1 * n + n) (q2 * n) (q2 * n + r2) (SNo_add_SNo (q1 * n) n Hq1n HnS) Hq2n (SNo_add_SNo (q2 * n) r2 Hq2n Hr2S) ((eq_sym_i (q1 * n + n) (ordsucc q1 * n) H2) (fun hl__u hl__v => hl__u <= q2 * n) H3) H4)). }
exact (SNoLt_irref (q1 * n + r1) ((eq_sym_i (q1 * n + r1) (q2 * n + r2) H) (fun hl__u hl__v => q1 * n + r1 < hl__u) H5)).
Qed.
Theorem div_mod_unique : forall n q1 r1 q2 r2 :e omega, r1 < n -> r2 < n -> q1 * n + r1 = q2 * n + r2 -> q1 = q2 /\ r1 = r2.
let n. assume Hn. let q1. assume Hq1. let r1. assume Hr1. let q2. assume Hq2. let r2. assume Hr2. assume Hr1n Hr2n H.
claim Hqq: q1 = q2.
{ apply (SNoLt_trichotomy_or q1 q2 (omega_SNo q1 Hq1) (omega_SNo q2 Hq2)).
  - assume H1. apply H1.
    + assume H2. exact (FalseE (div_mod_lt_absurd n Hn q1 Hq1 r1 Hr1 q2 Hq2 r2 Hr2 Hr1n H2 H) (q1 = q2)).
    + assume H2. exact H2.
  - assume H1. exact (FalseE (div_mod_lt_absurd n Hn q2 Hq2 r2 Hr2 q1 Hq1 r1 Hr1 Hr2n H1 (eq_sym_i (q1 * n + r1) (q2 * n + r2) H)) (q1 = q2)). }
apply andI.
- exact Hqq.
- claim H2: q1 * n + r1 = q1 * n + r2. { exact (eq_trans_i (q1 * n + r1) (q2 * n + r2) (q1 * n + r2) H (f_equal (fun x => x * n + r2) q2 q1 (eq_sym_i q1 q2 Hqq))). }
  exact (add_SNo_cancel_L (q1 * n) r1 r2 (omega_SNo (q1 * n) (mul_SNo_In_omega q1 Hq1 n Hn)) (omega_SNo r1 Hr1) (omega_SNo r2 Hr2) H2).
Qed.
Theorem div_nat_0 : forall m :e omega, div_nat m 0 = 0.
let m. assume Hm. prove (if 0 = 0 then 0 else Eps_i (fun q => q :e omega /\ exists r :e omega, r < 0 /\ m = q * 0 + r)) = 0.
exact (If_i_1 (0 = 0) 0 (Eps_i (fun q => q :e omega /\ exists r :e omega, r < 0 /\ m = q * 0 + r)) (fun q H => H)).
Qed.
Theorem mod_nat_0 : forall m :e omega, mod_nat m 0 = m.
let m. assume Hm. prove (if 0 = 0 then m else m + - div_nat m 0 * 0) = m.
exact (If_i_1 (0 = 0) m (m + - div_nat m 0 * 0) (fun q H => H)).
Qed.
Theorem hl_DIV_compat : forall l1 l2 :e omega, hl_DIV l1 l2 = div_nat l1 l2.
claim Hex: exists g r :e omega :^: omega :^: omega, forall m n :e omega, n = hl_NUMERAL hl_zero /\ (g m n = hl_NUMERAL hl_zero /\ r m n = m) \/ ~ n = hl_NUMERAL hl_zero /\ (m = hl_add (hl_mul (g m n) n) (r m n) /\ hl_lt (r m n) n = 1).
{ witness (fun m :e omega => fun n :e omega => div_nat m n).
  claim Hw: (fun m :e omega => fun n :e omega => div_nat m n) :e omega :^: omega :^: omega.
  { exact (lam2_Pi omega omega omega (fun m n => div_nat m n) (fun m Hm n Hn => div_nat_omega m Hm n Hn)). }
  apply andI.
  - exact Hw.
  - witness (fun m :e omega => fun n :e omega => mod_nat m n).
    claim Hw2: (fun m :e omega => fun n :e omega => mod_nat m n) :e omega :^: omega :^: omega.
    { exact (lam2_Pi omega omega omega (fun m n => mod_nat m n) (fun m Hm n Hn => mod_nat_omega m Hm n Hn)). }
    apply andI.
    + exact Hw2.
    + let m. assume Hm. let n. assume Hn.
      claim HG: (fun m :e omega => fun n :e omega => div_nat m n) m n = div_nat m n. { exact (lam2_beta omega omega (fun m n => div_nat m n) m Hm n Hn). }
      claim HR: (fun m :e omega => fun n :e omega => mod_nat m n) m n = mod_nat m n. { exact (lam2_beta omega omega (fun m n => mod_nat m n) m Hm n Hn). }
      claim Hd: div_nat m n :e omega. { exact (div_nat_omega m Hm n Hn). }
      claim Hr: mod_nat m n :e omega. { exact (mod_nat_omega m Hm n Hn). }
      apply (xm (n = 0)).
      * assume H0. apply orIL. apply andI.
        { exact (eq_trans_i n 0 (hl_NUMERAL hl_zero) H0 (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)). }
        { apply andI.
          - exact (eq_trans_i ((fun m :e omega => fun n :e omega => div_nat m n) m n) (div_nat m n) (hl_NUMERAL hl_zero) HG (eq_trans_i (div_nat m n) (div_nat m 0) (hl_NUMERAL hl_zero) (f_equal (fun x => div_nat m x) n 0 H0) (eq_trans_i (div_nat m 0) 0 (hl_NUMERAL hl_zero) (div_nat_0 m Hm) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)))).
          - exact (eq_trans_i ((fun m :e omega => fun n :e omega => mod_nat m n) m n) (mod_nat m n) m HR (eq_trans_i (mod_nat m n) (mod_nat m 0) m (f_equal (fun x => mod_nat m x) n 0 H0) (mod_nat_0 m Hm))). }
      * assume H0. apply orIR. apply andI.
        { assume Hz. exact (H0 (eq_trans_i n (hl_NUMERAL hl_zero) 0 Hz hl_NUMERAL_zero)). }
        { apply (div_mod_nat m Hm n Hn H0). assume H1 H2.
          apply andI.
          - exact (eq_trans_i m (div_nat m n * n + mod_nat m n) (hl_add (hl_mul ((fun m :e omega => fun n :e omega => div_nat m n) m n) n) ((fun m :e omega => fun n :e omega => mod_nat m n) m n)) H1
              (eq_sym_i (hl_add (hl_mul ((fun m :e omega => fun n :e omega => div_nat m n) m n) n) ((fun m :e omega => fun n :e omega => mod_nat m n) m n)) (div_nat m n * n + mod_nat m n)
                (eq_trans_i (hl_add (hl_mul ((fun m :e omega => fun n :e omega => div_nat m n) m n) n) ((fun m :e omega => fun n :e omega => mod_nat m n) m n)) (hl_add (hl_mul (div_nat m n) n) (mod_nat m n)) (div_nat m n * n + mod_nat m n)
                  (f_equal2 (fun p q => hl_add (hl_mul p n) q) ((fun m :e omega => fun n :e omega => div_nat m n) m n) (div_nat m n) ((fun m :e omega => fun n :e omega => mod_nat m n) m n) (mod_nat m n) HG HR)
                  (eq_trans_i (hl_add (hl_mul (div_nat m n) n) (mod_nat m n)) (hl_mul (div_nat m n) n + mod_nat m n) (div_nat m n * n + mod_nat m n)
                    (hl_add_compat (hl_mul (div_nat m n) n) (setexp2_ap omega omega omega hl_mul hl_mul_in (div_nat m n) Hd n Hn) (mod_nat m n) Hr)
                    (f_equal (fun x => x + mod_nat m n) (hl_mul (div_nat m n) n) (div_nat m n * n) (hl_mul_compat (div_nat m n) Hd n Hn)))))).
          - claim H3: hl_lt (mod_nat m n) n = 1. { apply (hl_lt_compat (mod_nat m n) Hr n Hn). assume _ H4. exact (H4 H2). }
            exact ((eq_sym_i ((fun m :e omega => fun n :e omega => mod_nat m n) m n) (mod_nat m n) HR) (fun hl__u hl__v => hl_lt hl__u n = 1) H3). } }
apply (hl_DIV_spec Hex). assume HP Hg. apply HP. let r. assume Hr0. apply Hr0. assume Hr HS.
let m. assume Hm. let n. assume Hn.
claim Hd: hl_DIV m n :e omega. { exact (setexp2_ap omega omega omega hl_DIV Hg m Hm n Hn). }
claim Hrmn: r m n :e omega. { exact (setexp2_ap omega omega omega r Hr m Hm n Hn). }
apply (HS m Hm n Hn).
- assume H. apply H. assume H0 H1. apply H1. assume H2 _.
  claim Hn0: n = 0. { exact (eq_trans_i n (hl_NUMERAL hl_zero) 0 H0 hl_NUMERAL_zero). }
  exact (eq_trans_i (hl_DIV m n) (hl_NUMERAL hl_zero) (div_nat m n) H2 (eq_trans_i (hl_NUMERAL hl_zero) 0 (div_nat m n) hl_NUMERAL_zero (eq_sym_i (div_nat m n) 0 (eq_trans_i (div_nat m n) (div_nat m 0) 0 (f_equal (fun x => div_nat m x) n 0 Hn0) (div_nat_0 m Hm))))).
- assume H. apply H. assume H0 H1. apply H1. assume H2 H3.
  claim Hn0: n <> 0. { assume Hz. apply H0. exact (eq_trans_i n 0 (hl_NUMERAL hl_zero) Hz (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)). }
  claim H2': m = hl_DIV m n * n + r m n.
  { exact (eq_trans_i m (hl_add (hl_mul (hl_DIV m n) n) (r m n)) (hl_DIV m n * n + r m n) H2
      (eq_trans_i (hl_add (hl_mul (hl_DIV m n) n) (r m n)) (hl_mul (hl_DIV m n) n + r m n) (hl_DIV m n * n + r m n)
        (hl_add_compat (hl_mul (hl_DIV m n) n) (setexp2_ap omega omega omega hl_mul hl_mul_in (hl_DIV m n) Hd n Hn) (r m n) Hrmn)
        (f_equal (fun x => x + r m n) (hl_mul (hl_DIV m n) n) (hl_DIV m n * n) (hl_mul_compat (hl_DIV m n) Hd n Hn)))). }
  claim H3': r m n < n. { apply (hl_lt_compat (r m n) Hrmn n Hn). assume H4 _. exact (H4 H3). }
  apply (div_mod_nat m Hm n Hn Hn0). assume H5 H6.
  claim Hd2: div_nat m n :e omega. { exact (div_nat_omega m Hm n Hn). }
  claim Hr2: mod_nat m n :e omega. { exact (mod_nat_omega m Hm n Hn). }
  apply (div_mod_unique n Hn (hl_DIV m n) Hd (r m n) Hrmn (div_nat m n) Hd2 (mod_nat m n) Hr2 H3' H6 (eq_trans_i (hl_DIV m n * n + r m n) m (div_nat m n * n + mod_nat m n) (eq_sym_i m (hl_DIV m n * n + r m n) H2') H5)).
  assume H7 _. exact H7.
Qed.
Theorem hl_MOD_compat : forall l1 l2 :e omega, hl_MOD l1 l2 = mod_nat l1 l2.
claim Hex: exists g :e omega :^: omega :^: omega, forall m n :e omega, n = hl_NUMERAL hl_zero /\ (hl_DIV m n = hl_NUMERAL hl_zero /\ g m n = m) \/ ~ n = hl_NUMERAL hl_zero /\ (m = hl_add (hl_mul (hl_DIV m n) n) (g m n) /\ hl_lt (g m n) n = 1).
{ witness (fun m :e omega => fun n :e omega => mod_nat m n).
  claim Hw: (fun m :e omega => fun n :e omega => mod_nat m n) :e omega :^: omega :^: omega.
  { exact (lam2_Pi omega omega omega (fun m n => mod_nat m n) (fun m Hm n Hn => mod_nat_omega m Hm n Hn)). }
  apply andI.
  - exact Hw.
  - let m. assume Hm. let n. assume Hn.
    claim HR: (fun m :e omega => fun n :e omega => mod_nat m n) m n = mod_nat m n. { exact (lam2_beta omega omega (fun m n => mod_nat m n) m Hm n Hn). }
    claim HD: hl_DIV m n = div_nat m n. { exact (hl_DIV_compat m Hm n Hn). }
    claim Hd: div_nat m n :e omega. { exact (div_nat_omega m Hm n Hn). }
    claim Hr: mod_nat m n :e omega. { exact (mod_nat_omega m Hm n Hn). }
    claim HdD: hl_DIV m n :e omega. { exact (setexp2_ap omega omega omega hl_DIV hl_DIV_in m Hm n Hn). }
    apply (xm (n = 0)).
    + assume H0. apply orIL. apply andI.
      * exact (eq_trans_i n 0 (hl_NUMERAL hl_zero) H0 (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)).
      * apply andI.
        { exact (eq_trans_i (hl_DIV m n) (div_nat m n) (hl_NUMERAL hl_zero) HD (eq_trans_i (div_nat m n) (div_nat m 0) (hl_NUMERAL hl_zero) (f_equal (fun x => div_nat m x) n 0 H0) (eq_trans_i (div_nat m 0) 0 (hl_NUMERAL hl_zero) (div_nat_0 m Hm) (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)))). }
        { exact (eq_trans_i ((fun m :e omega => fun n :e omega => mod_nat m n) m n) (mod_nat m n) m HR (eq_trans_i (mod_nat m n) (mod_nat m 0) m (f_equal (fun x => mod_nat m x) n 0 H0) (mod_nat_0 m Hm))). }
    + assume H0. apply orIR. apply andI.
      * assume Hz. exact (H0 (eq_trans_i n (hl_NUMERAL hl_zero) 0 Hz hl_NUMERAL_zero)).
      * apply (div_mod_nat m Hm n Hn H0). assume H1 H2.
        apply andI.
        { exact (eq_trans_i m (div_nat m n * n + mod_nat m n) (hl_add (hl_mul (hl_DIV m n) n) ((fun m :e omega => fun n :e omega => mod_nat m n) m n)) H1
            (eq_sym_i (hl_add (hl_mul (hl_DIV m n) n) ((fun m :e omega => fun n :e omega => mod_nat m n) m n)) (div_nat m n * n + mod_nat m n)
              (eq_trans_i (hl_add (hl_mul (hl_DIV m n) n) ((fun m :e omega => fun n :e omega => mod_nat m n) m n)) (hl_add (hl_mul (div_nat m n) n) (mod_nat m n)) (div_nat m n * n + mod_nat m n)
                (f_equal2 (fun p q => hl_add (hl_mul p n) q) (hl_DIV m n) (div_nat m n) ((fun m :e omega => fun n :e omega => mod_nat m n) m n) (mod_nat m n) HD HR)
                (eq_trans_i (hl_add (hl_mul (div_nat m n) n) (mod_nat m n)) (hl_mul (div_nat m n) n + mod_nat m n) (div_nat m n * n + mod_nat m n)
                  (hl_add_compat (hl_mul (div_nat m n) n) (setexp2_ap omega omega omega hl_mul hl_mul_in (div_nat m n) Hd n Hn) (mod_nat m n) Hr)
                  (f_equal (fun x => x + mod_nat m n) (hl_mul (div_nat m n) n) (div_nat m n * n) (hl_mul_compat (div_nat m n) Hd n Hn)))))). }
        { claim H3: hl_lt (mod_nat m n) n = 1. { apply (hl_lt_compat (mod_nat m n) Hr n Hn). assume _ H4. exact (H4 H2). }
          exact ((eq_sym_i ((fun m :e omega => fun n :e omega => mod_nat m n) m n) (mod_nat m n) HR) (fun hl__u hl__v => hl_lt hl__u n = 1) H3). } }
apply (hl_MOD_spec Hex). assume HS Hg.
let m. assume Hm. let n. assume Hn.
claim Hd: hl_DIV m n :e omega. { exact (setexp2_ap omega omega omega hl_DIV hl_DIV_in m Hm n Hn). }
claim Hmod: hl_MOD m n :e omega. { exact (setexp2_ap omega omega omega hl_MOD Hg m Hm n Hn). }
apply (HS m Hm n Hn).
- assume H. apply H. assume H0 H1. apply H1. assume _ H2.
  claim Hn0: n = 0. { exact (eq_trans_i n (hl_NUMERAL hl_zero) 0 H0 hl_NUMERAL_zero). }
  exact (eq_trans_i (hl_MOD m n) m (mod_nat m n) H2 (eq_sym_i (mod_nat m n) m (eq_trans_i (mod_nat m n) (mod_nat m 0) m (f_equal (fun x => mod_nat m x) n 0 Hn0) (mod_nat_0 m Hm)))).
- assume H. apply H. assume H0 H1. apply H1. assume H2 H3.
  claim Hn0: n <> 0. { assume Hz. apply H0. exact (eq_trans_i n 0 (hl_NUMERAL hl_zero) Hz (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero)). }
  claim H2': m = div_nat m n * n + hl_MOD m n.
  { exact (eq_trans_i m (hl_add (hl_mul (hl_DIV m n) n) (hl_MOD m n)) (div_nat m n * n + hl_MOD m n) H2
      (eq_trans_i (hl_add (hl_mul (hl_DIV m n) n) (hl_MOD m n)) (hl_mul (hl_DIV m n) n + hl_MOD m n) (div_nat m n * n + hl_MOD m n)
        (hl_add_compat (hl_mul (hl_DIV m n) n) (setexp2_ap omega omega omega hl_mul hl_mul_in (hl_DIV m n) Hd n Hn) (hl_MOD m n) Hmod)
        (f_equal (fun x => x + hl_MOD m n) (hl_mul (hl_DIV m n) n) (div_nat m n * n)
          (eq_trans_i (hl_mul (hl_DIV m n) n) (hl_DIV m n * n) (div_nat m n * n) (hl_mul_compat (hl_DIV m n) Hd n Hn) (f_equal (fun x => x * n) (hl_DIV m n) (div_nat m n) (hl_DIV_compat m Hm n Hn)))))). }
  claim H3': hl_MOD m n < n. { apply (hl_lt_compat (hl_MOD m n) Hmod n Hn). assume H4 _. exact (H4 H3). }
  apply (div_mod_nat m Hm n Hn Hn0). assume H5 H6.
  claim Hd2: div_nat m n :e omega. { exact (div_nat_omega m Hm n Hn). }
  claim Hr2: mod_nat m n :e omega. { exact (mod_nat_omega m Hm n Hn). }
  apply (div_mod_unique n Hn (div_nat m n) Hd2 (hl_MOD m n) Hmod (div_nat m n) Hd2 (mod_nat m n) Hr2 H3' H6 (eq_trans_i (div_nat m n * n + hl_MOD m n) m (div_nat m n * n + mod_nat m n) (eq_sym_i m (div_nat m n * n + hl_MOD m n) H2') H5)).
  assume _ H7. exact H7.
Qed.

// ---- numeric segments ----
Theorem hl_numseg_compat : forall l1 l2 :e omega, hl_rep omega (hl_numseg l1 l2) = {i :e omega | l1 <= i /\ i <= l2}.
let m. assume Hm. let n. assume Hn.
rewrite (hl_numseg_unfold m Hm n Hn).
apply (eq_trans_i (hl_rep omega (hl_GSPEC omega (fun v :e omega => if exists x :e omega, hl_SETSPEC omega v (if hl_le m x = 1 /\ hl_le x n = 1 then 1 else 0) x = 1 then 1 else 0))) ({v :e omega | hl_le m v = 1 /\ hl_le v n = 1}) ({i :e omega | m <= i /\ i <= n}) (hl_gspec_sep omega (fun x => hl_le m x = 1 /\ hl_le x n = 1))).
apply set_ext.
- let v. assume Hv. apply (SepE omega (fun y => hl_le m y = 1 /\ hl_le y n = 1) v Hv). assume HvA H. apply H. assume H3 H4.
  apply (SepI omega (fun i => m <= i /\ i <= n) v HvA). apply andI.
  + apply (hl_le_compat m Hm v HvA). assume H5 _. exact (H5 H3).
  + apply (hl_le_compat v HvA n Hn). assume H5 _. exact (H5 H4).
- let v. assume Hv. apply (SepE omega (fun i => m <= i /\ i <= n) v Hv). assume HvA H. apply H. assume H3 H4.
  apply (SepI omega (fun y => hl_le m y = 1 /\ hl_le y n = 1) v HvA). apply andI.
  + apply (hl_le_compat m Hm v HvA). assume _ H5. exact (H5 H3).
  + apply (hl_le_compat v HvA n Hn). assume _ H5. exact (H5 H4).
Qed.

// ---- integer powers ----
Theorem hl_int_pow_compat : forall l1 :e int, forall l2 :e omega, hl_int_pow l1 l2 = l1 ^ l2.
let x. assume Hx. let n. assume Hn.
claim HxR: x :e R. { exact (int_Subq_R x Hx). }
claim HxS: SNo x. { exact (int_SNo x Hx). }
claim Hbase: x ^ 0 :e int. { exact ((eq_sym_i (x ^ 0) 1 (exp_SNo_nat_0 x HxS)) (fun hl__u hl__v => hl__u :e int) (Subq_omega_int 1 (nat_p_omega 1 nat_1))). }
claim Hstep: forall k, nat_p k -> x ^ k :e int -> x ^ (ordsucc k) :e int.
{ let k. assume Hk IH. exact ((eq_sym_i (x ^ ordsucc k) (x * x ^ k) (exp_SNo_nat_S x HxS k Hk)) (fun hl__u hl__v => hl__u :e int) (int_mul_SNo x Hx (x ^ k) IH)). }
claim Hpow: x ^ n :e int. { exact (nat_ind (fun k => x ^ k :e int) Hbase Hstep n (omega_nat_p n Hn)). }
exact (eq_trans_i (hl_int_pow x n) (hl_int_of_real (hl_real_pow (hl_real_of_int x) n)) (x ^ n) (hl_int_pow_unfold x (int_hl_ty x Hx) n Hn)
  (eq_trans_i (hl_int_of_real (hl_real_pow (hl_real_of_int x) n)) (hl_int_of_real (x ^ n)) (x ^ n)
    (f_equal (fun y => hl_int_of_real y) (hl_real_pow (hl_real_of_int x) n) (x ^ n)
      (eq_trans_i (hl_real_pow (hl_real_of_int x) n) (hl_real_pow x n) (x ^ n) (f_equal (fun y => hl_real_pow y n) (hl_real_of_int x) x (hl_real_of_int_compat x Hx)) (hl_real_pow_compat x HxR n Hn)))
    (hl_int_of_real_int (x ^ n) Hpow))).
Qed.

// ---- sign functions ----
Theorem hl_real_of_num_zero : hl_real_of_num (hl_NUMERAL hl_zero) = 0.
exact (eq_trans_i (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num 0) 0 (f_equal (fun y => hl_real_of_num y) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (hl_real_of_num_ap 0 (nat_p_omega 0 nat_0))).
Qed.

Theorem hl_real_of_num_one : hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
exact (eq_trans_i (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num 1) 1 (f_equal (fun y => hl_real_of_num y) (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral) (hl_real_of_num_ap 1 (nat_p_omega 1 nat_1))).
Qed.

Theorem hl_real_sgn_compat : forall l1 :e R, hl_real_sgn l1 = if 0 < l1 then 1 else if l1 < 0 then - 1 else 0.
let x. assume Hx.
rewrite (hl_real_sgn_unfold x Hx). rewrite hl_real_of_num_zero. rewrite hl_real_of_num_one. rewrite (hl_real_neg_ap 1 real_1).
claim Hm1: - 1 :e R. { exact (real_minus_SNo 1 real_1). }
claim Hinner: hl_COND R (hl_real_lt x 0) (- 1) 0 = if x < 0 then - 1 else 0.
{ exact (hl_COND_if R (hl_real_lt x 0) (setexp2_ap R R 2 hl_real_lt hl_real_lt_in x Hx 0 real_0) (x < 0) (hl_real_lt_compat x Hx 0 real_0) (- 1) Hm1 0 real_0). }
rewrite Hinner.
exact (hl_COND_if R (hl_real_lt 0 x) (setexp2_ap R R 2 hl_real_lt hl_real_lt_in 0 real_0 x Hx) (0 < x) (hl_real_lt_compat 0 real_0 x Hx) 1 real_1 (if x < 0 then - 1 else 0) (If_i_in (x < 0) R (- 1) 0 Hm1 real_0)).
Qed.

Theorem hl_int_sgn_compat : forall l1 :e int, hl_int_sgn l1 = if 0 < l1 then 1 else if l1 < 0 then - 1 else 0.
let x. assume Hx.
rewrite (hl_int_sgn_unfold x (int_hl_ty x Hx)). rewrite (hl_real_of_int_compat x Hx). rewrite (hl_real_sgn_compat x (int_Subq_R x Hx)).
claim H1I: 1 :e int. { exact (Subq_omega_int 1 (nat_p_omega 1 nat_1)). }
apply (xm (0 < x)).
- assume H. rewrite (If_i_1 (0 < x) 1 (if x < 0 then - 1 else 0) H). exact (hl_int_of_real_int 1 H1I).
- assume H. rewrite (If_i_0 (0 < x) 1 (if x < 0 then - 1 else 0) H).
  apply (xm (x < 0)).
  + assume H2. rewrite (If_i_1 (x < 0) (- 1) 0 H2). exact (hl_int_of_real_int (- 1) (int_minus_SNo 1 H1I)).
  + assume H2. rewrite (If_i_0 (x < 0) (- 1) 0 H2). exact (hl_int_of_real_int 0 (Subq_omega_int 0 (nat_p_omega 0 nat_0))).
Qed.

Theorem hl_int_max_compat : forall l1 l2 :e int, hl_int_max l1 l2 = if l1 <= l2 then l2 else l1.
let x. assume Hx. let y. assume Hy.
rewrite (hl_int_max_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)). rewrite (hl_real_of_int_compat x Hx). rewrite (hl_real_of_int_compat y Hy).
rewrite (hl_real_max_compat x (int_Subq_R x Hx) y (int_Subq_R y Hy)).
apply (xm (x <= y)).
- assume H. rewrite (If_i_1 (x <= y) y x H). exact (hl_int_of_real_int y Hy).
- assume H. rewrite (If_i_0 (x <= y) y x H). exact (hl_int_of_real_int x Hx).
Qed.

Theorem hl_int_min_compat : forall l1 l2 :e int, hl_int_min l1 l2 = if l1 <= l2 then l1 else l2.
let x. assume Hx. let y. assume Hy.
rewrite (hl_int_min_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)). rewrite (hl_real_of_int_compat x Hx). rewrite (hl_real_of_int_compat y Hy).
rewrite (hl_real_min_compat x (int_Subq_R x Hx) y (int_Subq_R y Hy)).
apply (xm (x <= y)).
- assume H. rewrite (If_i_1 (x <= y) x y H). exact (hl_int_of_real_int x Hx).
- assume H. rewrite (If_i_0 (x <= y) x y H). exact (hl_int_of_real_int y Hy).
Qed.

// ---- set predicates ----
Theorem hl_PSUBSET_compat : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: A, hl_PSUBSET A l1 l2 = 1 <-> hl_rep A l1 c= hl_rep A l2 /\ hl_rep A l1 <> hl_rep A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
rewrite (hl_PSUBSET_unfold A l1 H1 l2 H2).
apply (iff_trans ((if hl_SUBSET A l1 l2 = 1 /\ ~ l1 = l2 then 1 else 0) = 1) (hl_SUBSET A l1 l2 = 1 /\ ~ l1 = l2) (hl_rep A l1 c= hl_rep A l2 /\ hl_rep A l1 <> hl_rep A l2) (If_1_iff (hl_SUBSET A l1 l2 = 1 /\ ~ l1 = l2))).
apply iffI.
- assume H. apply H. assume H3 H4. apply andI.
  + apply (hl_SUBSET_compat A HA l1 H1 l2 H2). assume H5 _. exact (H5 H3).
  + assume H5. exact (H4 (hl_rep_inj A l1 l2 H1 H2 H5)).
- assume H. apply H. assume H3 H4. apply andI.
  + apply (hl_SUBSET_compat A HA l1 H1 l2 H2). assume _ H5. exact (H5 H3).
  + assume H5. exact (H4 (f_equal (fun u => hl_rep A u) l1 l2 H5)).
Qed.

Theorem hl_INFINITE_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, hl_INFINITE A l1 = 1 <-> infinite (hl_rep A l1).
let A. assume HA. let l1. assume H1.
rewrite (hl_INFINITE_unfold A l1 H1).
apply (iff_trans ((if ~ hl_FINITE A l1 = 1 then 1 else 0) = 1) (~ hl_FINITE A l1 = 1) (infinite (hl_rep A l1)) (If_1_iff (~ hl_FINITE A l1 = 1))).
prove (~ hl_FINITE A l1 = 1) <-> ~ finite (hl_rep A l1).
apply iffI.
- assume H. assume H2. apply H. apply (hl_FINITE_compat A HA l1 H1). assume _ H3. exact (H3 H2).
- assume H. assume H2. apply H. apply (hl_FINITE_compat A HA l1 H1). assume H3 _. exact (H3 H2).
Qed.

Theorem hl_pairwise_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A, hl_pairwise A l1 l2 = 1 <-> forall x y :e hl_rep A l2, x <> y -> P1 x y.
let A. assume HA. let l1. assume H1. let P1. assume HP. let l2. assume H2.
rewrite (hl_pairwise_unfold A l1 H1 l2 H2).
apply (iff_trans ((if forall x y :e A, hl_IN A x l2 = 1 /\ (hl_IN A y l2 = 1 /\ ~ x = y) -> l1 x y = 1 then 1 else 0) = 1) (forall x y :e A, hl_IN A x l2 = 1 /\ (hl_IN A y l2 = 1 /\ ~ x = y) -> l1 x y = 1) (forall x y :e hl_rep A l2, x <> y -> P1 x y) (If_1_iff (forall x y :e A, hl_IN A x l2 = 1 /\ (hl_IN A y l2 = 1 /\ ~ x = y) -> l1 x y = 1))).
apply iffI.
- assume H. let x. assume Hx. let y. assume Hy. assume Hxy.
  claim HxA: x :e A. { exact (hl_rep_Subq A l2 x Hx). }
  claim HyA: y :e A. { exact (hl_rep_Subq A l2 y Hy). }
  apply (HP x HxA y HyA). assume H3 _. apply H3. apply (H x HxA y HyA). apply andI.
  + apply (hl_IN_compat A HA x HxA l2 H2). assume _ H4. exact (H4 Hx).
  + apply andI.
    * apply (hl_IN_compat A HA y HyA l2 H2). assume _ H4. exact (H4 Hy).
    * exact Hxy.
- assume H. let x. assume HxA. let y. assume HyA. assume Hc. apply Hc. assume Hx0 Hc2. apply Hc2. assume Hy0 Hxy.
  claim Hx: x :e hl_rep A l2. { apply (hl_IN_compat A HA x HxA l2 H2). assume H4 _. exact (H4 Hx0). }
  claim Hy: y :e hl_rep A l2. { apply (hl_IN_compat A HA y HyA l2 H2). assume H4 _. exact (H4 Hy0). }
  apply (HP x HxA y HyA). assume _ H3. exact (H3 (H x Hx y Hy Hxy)).
Qed.

// ---- divisibility ----
Theorem hl_int_divides_compat : forall l1 l2 :e int, hl_int_divides l1 l2 = 1 <-> divides_int l1 l2.
let x. assume Hx. let y. assume Hy.
claim Hiff: (if exists k :e hl_ty_int, y = hl_int_mul x k then 1 else 0) = 1 <-> divides_int x y.
{ apply (iff_trans ((if exists k :e hl_ty_int, y = hl_int_mul x k then 1 else 0) = 1) (exists k :e hl_ty_int, y = hl_int_mul x k) (divides_int x y) (If_1_iff (exists k :e hl_ty_int, y = hl_int_mul x k))).
  apply iffI.
  - assume H. apply H. let k. assume Hk0. apply Hk0. assume Hk Hyk.
    claim HkI: k :e int. { exact (hl_ty_int_native (fun hl__u hl__v => k :e hl__u) Hk). }
    prove x :e int /\ y :e int /\ exists k :e int, x * k = y.
    apply and3I.
    + exact Hx.
    + exact Hy.
    + witness k. apply andI.
      * exact HkI.
      * exact (eq_sym_i y (x * k) (eq_trans_i y (hl_int_mul x k) (x * k) Hyk (hl_int_mul_compat x Hx k HkI))).
  - assume H. apply H. assume _ H3. apply H3. let k. assume Hk0. apply Hk0. assume Hk Hxk.
    witness k. apply andI.
    + exact (int_hl_ty k Hk).
    + exact (eq_sym_i (hl_int_mul x k) y (eq_trans_i (hl_int_mul x k) (x * k) y (hl_int_mul_compat x Hx k Hk) Hxk)). }
exact (iff_eq1_l (hl_int_divides x y) (if exists k :e hl_ty_int, y = hl_int_mul x k then 1 else 0) (hl_int_divides_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)) (divides_int x y) Hiff).
Qed.

Theorem hl_num_divides_compat : forall l1 l2 :e omega, hl_num_divides l1 l2 = 1 <-> divides_nat l1 l2.
let m. assume Hm. let n. assume Hn.
claim HmI: m :e int. { exact (Subq_omega_int m Hm). }
claim HnI: n :e int. { exact (Subq_omega_int n Hn). }
claim HmS: SNo m. { exact (omega_SNo m Hm). }
claim Heq: hl_num_divides m n = hl_int_divides m n.
{ exact (eq_trans_i (hl_num_divides m n) (hl_int_divides (hl_int_of_num m) (hl_int_of_num n)) (hl_int_divides m n) (hl_num_divides_unfold m Hm n Hn)
    (f_equal2 (fun u v => hl_int_divides u v) (hl_int_of_num m) m (hl_int_of_num n) n (hl_int_of_num_compat m Hm) (hl_int_of_num_compat n Hn))). }
claim Hcases: forall k :e int, m * k = n -> exists j :e omega, m * j = n.
{ apply (int_SNo_cases (fun k => m * k = n -> exists j :e omega, m * j = n)).
  - let k. assume Hk H. witness k. apply andI.
    + exact Hk.
    + exact H.
  - let k. assume Hk H.
    claim HkS: SNo k. { exact (omega_SNo k Hk). }
    claim Hmk: m * k :e omega. { exact (mul_SNo_In_omega m Hm k Hk). }
    claim HmkS: SNo (m * k). { exact (omega_SNo (m * k) Hmk). }
    claim Hn1: n = - (m * k). { exact (eq_trans_i n (m * (- k)) (- (m * k)) (eq_sym_i (m * (- k)) n H) (mul_SNo_minus_distrR m k HmS HkS)). }
    claim Hn0: n = 0.
    { apply (SNoLe_antisym n 0 (omega_SNo n Hn) SNo_0).
      - claim Hle: (- (m * k)) <= (- 0). { exact (minus_SNo_Le_contra 0 (m * k) SNo_0 HmkS (omega_nonneg (m * k) Hmk)). }
        exact ((eq_sym_i n (- (m * k)) Hn1) (fun hl__u hl__v => hl__u <= 0) (minus_SNo_0 (fun hl__u hl__v => (- (m * k)) <= hl__u) Hle)).
      - exact (omega_nonneg n Hn). }
    witness 0. apply andI.
    + exact (nat_p_omega 0 nat_0).
    + exact (eq_trans_i (m * 0) 0 n (mul_SNo_zeroR m HmS) (eq_sym_i n 0 Hn0)). }
claim Hiff: hl_int_divides m n = 1 <-> divides_nat m n.
{ apply (iff_trans (hl_int_divides m n = 1) (divides_int m n) (divides_nat m n) (hl_int_divides_compat m HmI n HnI)).
  apply iffI.
  - assume H. apply H. assume _ H3. apply H3. let k. assume Hk0. apply Hk0. assume Hk Hmk.
    prove m :e omega /\ n :e omega /\ exists j :e omega, mul_nat m j = n.
    apply and3I.
    + exact Hm.
    + exact Hn.
    + apply (Hcases k Hk Hmk). let j. assume Hj0. apply Hj0. assume Hj Hmj.
      witness j. apply andI.
      * exact Hj.
      * exact (eq_trans_i (mul_nat m j) (m * j) n (mul_nat_mul_SNo m Hm j Hj) Hmj).
  - assume H. apply H. assume _ H3. apply H3. let k. assume Hk0. apply Hk0. assume Hk Hmk.
    prove m :e int /\ n :e int /\ exists j :e int, m * j = n.
    apply and3I.
    + exact HmI.
    + exact HnI.
    + witness k. apply andI.
      * exact (Subq_omega_int k Hk).
      * exact (eq_trans_i (m * k) (mul_nat m k) n (eq_sym_i (mul_nat m k) (m * k) (mul_nat_mul_SNo m Hm k Hk)) Hmk). }
exact (iff_eq1_l (hl_num_divides m n) (hl_int_divides m n) Heq (divides_nat m n) Hiff).
Qed.

// ---- pairs and lists ----
Theorem hl_pair_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e A, forall l2 :e B, hl_pair A B l1 l2 = (l1,l2).
let A B. assume HA HB. let x. assume Hx. let y. assume Hy.
prove (fun x :e A => fun y :e B => (x,y)) x y = (x,y).
exact (lam2_beta A B (fun x y => (x,y)) x Hx y Hy).
Qed.

Theorem hl_NIL_compat : forall A:set, A <> Empty -> hl_NIL A = seq_nil.
let A. assume HA. exact (fun q H => H).
Qed.

// ---- num_of_int on nonnegative integers ----
Theorem hl_num_of_int_nonneg : forall n :e int, 0 <= n -> hl_num_of_int n = n.
let n. assume Hn H0.
claim Hno: n :e omega. { exact (int_nonneg_omega n Hn H0). }
claim HP: (fun m :e omega => if hl_int_of_num m = n then 1 else 0) :e 2 :^: omega.
{ prove (fun m :e omega => if hl_int_of_num m = n then 1 else 0) :e Pi_ m :e omega, 2.
  apply (lam_Pi omega (fun _ => 2) (fun m => if hl_int_of_num m = n then 1 else 0)).
  let m. assume _. exact (If_in_2 (hl_int_of_num m = n)). }
claim Hval: forall m :e omega, (fun m :e omega => if hl_int_of_num m = n then 1 else 0) m = 1 <-> m = n.
{ let m. assume Hm.
  rewrite (beta omega (fun m => if hl_int_of_num m = n then 1 else 0) m Hm).
  apply (iff_trans ((if hl_int_of_num m = n then 1 else 0) = 1) (hl_int_of_num m = n) (m = n) (If_1_iff (hl_int_of_num m = n))).
  apply iffI.
  - assume H. exact (eq_trans_i m (hl_int_of_num m) n (eq_sym_i (hl_int_of_num m) m (hl_int_of_num_compat m Hm)) H).
  - assume H. exact (eq_trans_i (hl_int_of_num m) m n (hl_int_of_num_compat m Hm) H). }
rewrite (hl_num_of_int_unfold n (int_hl_ty n Hn)).
rewrite (hl_select_eq omega (fun m :e omega => if hl_int_of_num m = n then 1 else 0) HP).
apply (choose_in_unique omega (fun m => (fun m :e omega => if hl_int_of_num m = n then 1 else 0) m = 1) n Hno).
- apply (Hval n Hno). assume _ H. exact (H (fun q H => H)).
- let y. assume Hy Hy1. apply (Hval y Hy). assume H _. exact (H Hy1).
Qed.

// ---- nonnegative integers are naturals ----

Theorem hl_two_numeral : hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)) = 2.
claim H1o: hl_BIT1 hl_zero :e omega. { exact (hl_BIT1_omega hl_zero hl_zero_omega). }
claim H1: hl_BIT1 hl_zero = 1. { exact (eq_trans_i (hl_BIT1 hl_zero) (hl_NUMERAL (hl_BIT1 hl_zero)) 1 (eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) (hl_NUMERAL_unfold (hl_BIT1 hl_zero) H1o)) hl_one_numeral). }
exact (eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_unfold (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0_omega (hl_BIT1 hl_zero) H1o))
  (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (2 * hl_BIT1 hl_zero) 2 (hl_BIT0_compat (hl_BIT1 hl_zero) H1o)
    (eq_trans_i (2 * hl_BIT1 hl_zero) (2 * 1) 2 (f_equal (fun u => 2 * u) (hl_BIT1 hl_zero) 1 H1) (mul_SNo_oneR 2 SNo_2)))).
Qed.

// ---- integer powers of reals ----
Theorem hl_real_zpow_compat : forall l1 :e R, forall l2 :e int, hl_real_zpow l1 l2 = if 0 <= l2 then l1 ^ l2 else recip_SNo (l1 ^ (- l2)).
let x. assume Hx. let n. assume Hn.
claim HnS: SNo n. { exact (int_SNo n Hn). }
claim H0o: hl_NUMERAL hl_zero :e omega. { exact ((eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0)). }
claim Hz: hl_int_of_num (hl_NUMERAL hl_zero) = 0. { exact (eq_trans_i (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num 0) 0 (f_equal (fun y => hl_int_of_num y) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (hl_int_of_num_compat 0 (nat_p_omega 0 nat_0))). }
claim H0I: 0 :e int. { exact (Subq_omega_int 0 (nat_p_omega 0 nat_0)). }
claim Hc2: hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n :e 2. { exact (setexp2_ap int int 2 hl_int_le hl_int_le_in (hl_int_of_num (hl_NUMERAL hl_zero)) (setexp_ap omega int hl_int_of_num hl_int_of_num_in (hl_NUMERAL hl_zero) H0o) n Hn). }
claim Hciff: hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 <-> 0 <= n.
{ exact (iff_eq1_l (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n) (hl_int_le 0 n) (f_equal (fun y => hl_int_le y n) (hl_int_of_num (hl_NUMERAL hl_zero)) 0 Hz) (0 <= n) (hl_int_le_compat 0 H0I n Hn)). }
claim HX: hl_real_pow x (hl_num_of_int n) :e R. { exact (setexp2_ap R omega R hl_real_pow hl_real_pow_in x Hx (hl_num_of_int n) (setexp_ap int omega hl_num_of_int hl_num_of_int_in n Hn)). }
claim HnegI: hl_int_neg n :e int. { exact (setexp_ap int int hl_int_neg hl_int_neg_in n Hn). }
claim HY: hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n))) :e R. { exact (setexp_ap R R hl_real_inv hl_real_inv_in (hl_real_pow x (hl_num_of_int (hl_int_neg n))) (setexp2_ap R omega R hl_real_pow hl_real_pow_in x Hx (hl_num_of_int (hl_int_neg n)) (setexp_ap int omega hl_num_of_int hl_num_of_int_in (hl_int_neg n) HnegI))). }
claim Hstep: hl_real_zpow x n = if 0 <= n then hl_real_pow x (hl_num_of_int n) else hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n))).
{ exact (eq_trans_i (hl_real_zpow x n) (hl_COND R (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n) (hl_real_pow x (hl_num_of_int n)) (hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n))))) (if 0 <= n then hl_real_pow x (hl_num_of_int n) else hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) (hl_real_zpow_unfold x Hx n (int_hl_ty n Hn)) (hl_COND_if R (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n) Hc2 (0 <= n) Hciff (hl_real_pow x (hl_num_of_int n)) HX (hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) HY)). }
apply (xm (0 <= n)).
- assume H.
  claim Hno: n :e omega. { exact (int_nonneg_omega n Hn H). }
  exact (eq_trans_i (hl_real_zpow x n) (if 0 <= n then hl_real_pow x (hl_num_of_int n) else hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) (if 0 <= n then x ^ n else recip_SNo (x ^ (- n))) Hstep
    (eq_trans_i (if 0 <= n then hl_real_pow x (hl_num_of_int n) else hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) (hl_real_pow x (hl_num_of_int n)) (if 0 <= n then x ^ n else recip_SNo (x ^ (- n))) (If_i_1 (0 <= n) (hl_real_pow x (hl_num_of_int n)) (hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) H)
      (eq_trans_i (hl_real_pow x (hl_num_of_int n)) (x ^ n) (if 0 <= n then x ^ n else recip_SNo (x ^ (- n)))
        (eq_trans_i (hl_real_pow x (hl_num_of_int n)) (hl_real_pow x n) (x ^ n) (f_equal (fun y => hl_real_pow x y) (hl_num_of_int n) n (hl_num_of_int_nonneg n Hn H)) (hl_real_pow_compat x Hx n Hno))
        (eq_sym_i (if 0 <= n then x ^ n else recip_SNo (x ^ (- n))) (x ^ n) (If_i_1 (0 <= n) (x ^ n) (recip_SNo (x ^ (- n))) H))))).
- assume H.
  claim Hlt: n < 0. { apply (SNoLtLe_or n 0 HnS SNo_0). - assume H1. exact H1. - assume H1. exact (FalseE (H H1) (n < 0)). }
  claim Hpos: 0 < - n. { exact (minus_SNo_0 (fun hl__u hl__v => hl__u < - n) (minus_SNo_Lt_contra n 0 HnS SNo_0 Hlt)). }
  claim Hnn: 0 <= - n. { exact (SNoLtLe 0 (- n) Hpos). }
  claim HnegI': (- n) :e int. { exact (int_minus_SNo n Hn). }
  claim Hnego: (- n) :e omega. { exact (int_nonneg_omega (- n) HnegI' Hnn). }
  claim Hneg: hl_int_neg n = - n. { exact (hl_int_neg_compat n Hn). }
  exact (eq_trans_i (hl_real_zpow x n) (if 0 <= n then hl_real_pow x (hl_num_of_int n) else hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) (if 0 <= n then x ^ n else recip_SNo (x ^ (- n))) Hstep
    (eq_trans_i (if 0 <= n then hl_real_pow x (hl_num_of_int n) else hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) (hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) (if 0 <= n then x ^ n else recip_SNo (x ^ (- n))) (If_i_0 (0 <= n) (hl_real_pow x (hl_num_of_int n)) (hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) H)
      (eq_trans_i (hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) (recip_SNo (x ^ (- n))) (if 0 <= n then x ^ n else recip_SNo (x ^ (- n)))
        (eq_trans_i (hl_real_inv (hl_real_pow x (hl_num_of_int (hl_int_neg n)))) (hl_real_inv (x ^ (- n))) (recip_SNo (x ^ (- n)))
          (f_equal (fun y => hl_real_inv y) (hl_real_pow x (hl_num_of_int (hl_int_neg n))) (x ^ (- n))
            (eq_trans_i (hl_real_pow x (hl_num_of_int (hl_int_neg n))) (hl_real_pow x (- n)) (x ^ (- n))
              (f_equal (fun y => hl_real_pow x y) (hl_num_of_int (hl_int_neg n)) (- n)
                (eq_trans_i (hl_num_of_int (hl_int_neg n)) (hl_num_of_int (- n)) (- n) (f_equal (fun y => hl_num_of_int y) (hl_int_neg n) (- n) Hneg) (hl_num_of_int_nonneg (- n) HnegI' Hnn)))
              (hl_real_pow_compat x Hx (- n) Hnego)))
          (hl_real_inv_compat (x ^ (- n)) (real_exp_SNo_nat x Hx (- n) Hnego)))
        (eq_sym_i (if 0 <= n then x ^ n else recip_SNo (x ^ (- n))) (recip_SNo (x ^ (- n))) (If_i_0 (0 <= n) (x ^ n) (recip_SNo (x ^ (- n))) H))))).
Qed.

// ---- natural distance ----
Theorem minus_nat_abs : forall a b :e omega, minus_nat a b + minus_nat b a = abs_SNo (a + - b).
let a. assume Ha. let b. assume Hb.
claim HaS: SNo a. { exact (omega_SNo a Ha). }
claim HbS: SNo b. { exact (omega_SNo b Hb). }
claim HaS': SNo (- a). { exact (SNo_minus_SNo a HaS). }
claim HbS': SNo (- b). { exact (SNo_minus_SNo b HbS). }
claim Hab: SNo (a + - b). { exact (SNo_add_SNo a (- b) HaS HbS'). }
claim Hba: SNo (b + - a). { exact (SNo_add_SNo b (- a) HbS HaS'). }
apply (SNoLtLe_or a b HaS HbS).
- assume Hlt.
  claim H1: minus_nat a b = 0.
  { prove (if b <= a then a + - b else 0) = 0. apply (If_i_0 (b <= a) (a + - b) 0). assume Hle. exact (SNoLt_irref a (SNoLtLe_tra a b a HaS HbS HaS Hlt Hle)). }
  claim H2: minus_nat b a = b + - a.
  { prove (if a <= b then b + - a else 0) = b + - a. exact (If_i_1 (a <= b) (b + - a) 0 (SNoLtLe a b Hlt)). }
  claim Hneg: a + - b < 0.
  { exact ((add_SNo_minus_SNo_rinv b HbS) (fun hl__u hl__v => a + - b < hl__u) (add_SNo_Lt1 a (- b) b HaS HbS' HbS Hlt)). }
  claim H3: abs_SNo (a + - b) = b + - a.
  { exact (eq_trans_i (abs_SNo (a + - b)) (- (a + - b)) (b + - a) (neg_abs_SNo (a + - b) Hab Hneg)
      (eq_trans_i (- (a + - b)) (- a + - - b) (b + - a) (minus_add_SNo_distr a (- b) HaS HbS')
        (eq_trans_i (- a + - - b) (- a + b) (b + - a) (f_equal (fun u => - a + u) (- - b) b (minus_SNo_invol b HbS)) (add_SNo_com (- a) b HaS' HbS)))). }
  rewrite H1. rewrite H2. rewrite H3. exact (add_SNo_0L (b + - a) Hba).
- assume Hle.
  claim H1: minus_nat a b = a + - b.
  { prove (if b <= a then a + - b else 0) = a + - b. exact (If_i_1 (b <= a) (a + - b) 0 Hle). }
  claim H2: minus_nat b a = 0.
  { prove (if a <= b then b + - a else 0) = 0. apply (xm (a <= b)).
    - assume H. rewrite (If_i_1 (a <= b) (b + - a) 0 H).
      claim Heq: a = b. { exact (SNoLe_antisym a b HaS HbS H Hle). }
      exact (eq_trans_i (b + - a) (b + - b) 0 (f_equal (fun u => b + - u) a b Heq) (add_SNo_minus_SNo_rinv b HbS)).
    - assume H. exact (If_i_0 (a <= b) (b + - a) 0 H). }
  claim Hnn: 0 <= a + - b.
  { exact (add_SNo_minus_Le2b a b 0 HaS HbS SNo_0 ((eq_sym_i (0 + b) b (add_SNo_0L b HbS)) (fun hl__u hl__v => hl__u <= a) Hle)). }
  claim H3: abs_SNo (a + - b) = a + - b. { exact (nonneg_abs_SNo (a + - b) Hnn). }
  rewrite H1. rewrite H2. rewrite H3. exact (add_SNo_0R (a + - b) Hab).
Qed.

Theorem hl_dist_compat : forall l1 :e omega :*: omega, hl_dist l1 = abs_SNo (l1 0 + - l1 1).
let p. assume Hp.
claim Ha: p 0 :e omega. { exact (ap0_Sigma omega (fun _ => omega) p Hp). }
claim Hb: p 1 :e omega. { exact (ap1_Sigma omega (fun _ => omega) p Hp). }
claim HF: hl_FST omega omega p = p 0. { exact (hl_FST_compat omega omega omega_nonempty omega_nonempty p Hp). }
claim HS: hl_SND omega omega p = p 1. { exact (hl_SND_compat omega omega omega_nonempty omega_nonempty p Hp). }
claim Hs1: hl_sub (p 0) (p 1) :e omega. { exact (setexp2_ap omega omega omega hl_sub hl_sub_in (p 0) Ha (p 1) Hb). }
claim Hs2: hl_sub (p 1) (p 0) :e omega. { exact (setexp2_ap omega omega omega hl_sub hl_sub_in (p 1) Hb (p 0) Ha). }
exact (eq_trans_i (hl_dist p) (hl_add (hl_sub (hl_FST omega omega p) (hl_SND omega omega p)) (hl_sub (hl_SND omega omega p) (hl_FST omega omega p))) (abs_SNo (p 0 + - p 1)) (hl_dist_unfold p Hp)
  (eq_trans_i (hl_add (hl_sub (hl_FST omega omega p) (hl_SND omega omega p)) (hl_sub (hl_SND omega omega p) (hl_FST omega omega p))) (hl_add (hl_sub (p 0) (p 1)) (hl_sub (p 1) (p 0))) (abs_SNo (p 0 + - p 1))
    (f_equal2 (fun u v => hl_add (hl_sub u v) (hl_sub v u)) (hl_FST omega omega p) (p 0) (hl_SND omega omega p) (p 1) HF HS)
    (eq_trans_i (hl_add (hl_sub (p 0) (p 1)) (hl_sub (p 1) (p 0))) (hl_sub (p 0) (p 1) + hl_sub (p 1) (p 0)) (abs_SNo (p 0 + - p 1)) (hl_add_compat (hl_sub (p 0) (p 1)) Hs1 (hl_sub (p 1) (p 0)) Hs2)
      (eq_trans_i (hl_sub (p 0) (p 1) + hl_sub (p 1) (p 0)) (minus_nat (p 0) (p 1) + minus_nat (p 1) (p 0)) (abs_SNo (p 0 + - p 1))
        (f_equal2 (fun u v => u + v) (hl_sub (p 0) (p 1)) (minus_nat (p 0) (p 1)) (hl_sub (p 1) (p 0)) (minus_nat (p 1) (p 0)) (hl_sub_compat (p 0) Ha (p 1) Hb) (hl_sub_compat (p 1) Hb (p 0) Ha))
        (minus_nat_abs (p 0) Ha (p 1) Hb))))).
Qed.

// ---- well-founded relations ----
Theorem hl_WF_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_WF A l1 = 1 <-> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ P1 y x).
let A. assume HA. let l1. assume H1. let P1. assume HP.
rewrite (hl_WF_unfold A l1 H1).
apply (iff_trans ((if (forall P :e 2 :^: A, (exists x :e A, P x = 1) -> exists x :e A, P x = 1 /\ forall y :e A, l1 y x = 1 -> ~ P y = 1) then 1 else 0) = 1) (forall P :e 2 :^: A, (exists x :e A, P x = 1) -> exists x :e A, P x = 1 /\ forall y :e A, l1 y x = 1 -> ~ P y = 1) (forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ P1 y x) (If_1_iff (forall P :e 2 :^: A, (exists x :e A, P x = 1) -> exists x :e A, P x = 1 /\ forall y :e A, l1 y x = 1 -> ~ P y = 1))).
apply iffI.
- assume Hw. let P. assume HPA HPne.
  claim Hex: exists x :e A, hl_chi A P x = 1.
  { apply (xm (exists x, x :e P)).
    - assume H. apply H. let x. assume Hx. witness x. apply andI.
      + exact (HPA x Hx).
      + apply (hl_chi_iff A P x (HPA x Hx)). assume _ H2. exact (H2 Hx).
    - assume H.
      claim HPE: P = Empty. { apply (Empty_eq P). let x. assume Hx. apply H. witness x. exact Hx. }
      exact (FalseE (HPne HPE) (exists x :e A, hl_chi A P x = 1)). }
  apply (Hw (hl_chi A P) (hl_chi_Pi A P) Hex). let x. assume Hx0. apply Hx0. assume HxA Hx1. apply Hx1. assume Hx2 Hmin.
  claim HxP: x :e P. { apply (hl_chi_iff A P x HxA). assume H2 _. exact (H2 Hx2). }
  witness x. apply andI.
  + exact HxP.
  + let y. assume HyP. assume Hyx.
    claim HyA: y :e A. { exact (HPA y HyP). }
    claim Hl: l1 y x = 1. { apply (HP y HyA x HxA). assume _ H2. exact (H2 Hyx). }
    apply (Hmin y HyA Hl). apply (hl_chi_iff A P y HyA). assume _ H2. exact (H2 HyP).
- assume Hn. let P. assume HPf. assume Hex.
  claim Hsub: hl_rep A P c= A. { exact (hl_rep_Subq A P). }
  claim Hne: hl_rep A P <> Empty.
  { assume HE. apply Hex. let x. assume Hx0. apply Hx0. assume HxA Hx1.
    claim HxR: x :e hl_rep A P. { apply (hl_rep_iff A P x HxA). assume H2 _. exact (H2 Hx1). }
    exact (EmptyE x (HE (fun hl__u hl__v => x :e hl__u) HxR)). }
  apply (Hn (hl_rep A P) Hsub Hne). let x. assume Hx0. apply Hx0. assume HxR Hmin.
  claim HxA: x :e A. { exact (hl_rep_Subq A P x HxR). }
  witness x. apply andI.
  + exact HxA.
  + apply andI.
    * apply (hl_rep_iff A P x HxA). assume _ H2. exact (H2 HxR).
    * let y. assume HyA. assume Hl. assume HyP.
      claim HyR: y :e hl_rep A P. { apply (hl_rep_iff A P y HyA). assume H2 _. exact (H2 HyP). }
      claim Hp: P1 y x. { apply (HP y HyA x HxA). assume H2 _. exact (H2 Hl). }
      exact (Hmin y HyR Hp).
Qed.

// ---- (x == y) r  is  r x y ----
Theorem hl_sym_3d3d_compat2 : forall A:set, A <> Empty -> forall l1 l2 :e A, forall l3 :e 2 :^: A :^: A, forall P3:set -> set -> prop, (forall x y :e A, l3 x y = 1 <-> P3 x y) -> (hl_sym_3d3d A l1 l2 l3 = 1 <-> P3 l1 l2).
let A. assume HA. let x. assume Hx. let y. assume Hy. let r. assume Hr. let P3. assume HP.
exact (iff_eq1_l (hl_sym_3d3d A x y r) (r x y) (hl_sym_3d3d_unfold A x Hx y Hy r Hr) (P3 x y) (HP x Hx y Hy)).
Qed.

Theorem hl_sym_3d3d_compat : forall l1 l2 :e int, forall l3 :e 2 :^: int :^: int, forall P3:set -> set -> prop, (forall x y :e int, l3 x y = 1 <-> P3 x y) -> (hl_sym_3d3d int l1 l2 l3 = 1 <-> P3 l1 l2).
let x. assume Hx. let y. assume Hy. let r. assume Hr. let P3. assume HP.
exact (iff_eq1_l (hl_sym_3d3d int x y r) (r x y) (hl_sym_3d3d_unfold int x Hx y Hy r Hr) (P3 x y) (HP x Hx y Hy)).
Qed.

Theorem hl_sym_3d3d_compat1 : forall l1 l2 :e omega, forall l3 :e 2 :^: omega :^: omega, forall P3:set -> set -> prop, (forall x y :e omega, l3 x y = 1 <-> P3 x y) -> (hl_sym_3d3d omega l1 l2 l3 = 1 <-> P3 l1 l2).
let x. assume Hx. let y. assume Hy. let r. assume Hr. let P3. assume HP.
exact (iff_eq1_l (hl_sym_3d3d omega x y r) (r x y) (hl_sym_3d3d_unfold omega x Hx y Hy r Hr) (P3 x y) (HP x Hx y Hy)).
Qed.

// ---- Cartesian products of sets ----
Theorem hl_CROSS_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :*: B) (hl_CROSS A B l1 l2) = hl_rep A l1 :*: hl_rep B l2.
let A B. assume HA HB. let l1. assume H1. let l2. assume H2.
claim HF: (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0) :e 2 :^: (A :*: B).
{ prove (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0) :e Pi_ v :e A :*: B, 2.
  apply (lam_Pi (A :*: B) (fun _ => 2) (fun v => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0)).
  let v. assume _. exact (If_in_2 (exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1)). }
rewrite (hl_CROSS_unfold A B l1 H1 l2 H2).
rewrite (hl_GSPEC_unfold (A :*: B) (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0) HF).
claim Hmem: forall v :e A :*: B, (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0) v = 1 <-> v :e hl_rep A l1 :*: hl_rep B l2.
{ let v. assume Hv.
  rewrite (beta (A :*: B) (fun v => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0) v Hv).
  apply (iff_trans ((if (exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1) then 1 else 0) = 1) (exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1) (v :e hl_rep A l1 :*: hl_rep B l2) (If_1_iff (exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1))).
  apply iffI.
  - assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx Hy0. apply Hy0. let y. assume Hy1. apply Hy1. assume Hy Hs.
    claim Hxy: hl_pair A B x y :e A :*: B. { exact ((eq_sym_i (hl_pair A B x y) (x,y) (hl_pair_compat A B HA HB x Hx y Hy)) (fun hl__u hl__v => hl__u :e A :*: B) (tuple_2_setprod A B x Hx y Hy)). }
    claim Hs2: (if (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) = 1 /\ v = hl_pair A B x y then 1 else 0) = 1.
    { exact ((hl_SETSPEC_unfold (A :*: B) v Hv (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (If_in_2 (hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1)) (hl_pair A B x y) Hxy) (fun hl__u hl__v => hl__u = 1) Hs). }
    apply (If_1_iff ((if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) = 1 /\ v = hl_pair A B x y)). assume H3 _. apply (H3 Hs2). assume H4 H5.
    apply (If_1_iff (hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1)). assume H6 _. apply (H6 H4). assume H7 H8.
    claim HxR: x :e hl_rep A l1. { apply (hl_IN_compat A HA x Hx l1 H1). assume H9 _. exact (H9 H7). }
    claim HyR: y :e hl_rep B l2. { apply (hl_IN_compat B HB y Hy l2 H2). assume H9 _. exact (H9 H8). }
    claim Hv2: v = (x,y). { exact (eq_trans_i v (hl_pair A B x y) (x,y) H5 (hl_pair_compat A B HA HB x Hx y Hy)). }
    exact ((eq_sym_i v (x,y) Hv2) (fun hl__u hl__v => hl__u :e hl_rep A l1 :*: hl_rep B l2) (tuple_2_setprod (hl_rep A l1) (hl_rep B l2) x HxR y HyR)).
  - assume H.
    claim Hx: v 0 :e hl_rep A l1. { exact (ap0_Sigma (hl_rep A l1) (fun _ => hl_rep B l2) v H). }
    claim Hy: v 1 :e hl_rep B l2. { exact (ap1_Sigma (hl_rep A l1) (fun _ => hl_rep B l2) v H). }
    claim HxA: v 0 :e A. { exact (hl_rep_Subq A l1 (v 0) Hx). }
    claim HyB: v 1 :e B. { exact (hl_rep_Subq B l2 (v 1) Hy). }
    claim Hveq: v = hl_pair A B (v 0) (v 1). { exact (eq_trans_i v (v 0, v 1) (hl_pair A B (v 0) (v 1)) (eq_sym_i (v 0, v 1) v (tuple_Sigma_eta A (fun _ => B) v Hv)) (eq_sym_i (hl_pair A B (v 0) (v 1)) (v 0, v 1) (hl_pair_compat A B HA HB (v 0) HxA (v 1) HyB))). }
    claim Hxy: hl_pair A B (v 0) (v 1) :e A :*: B. { exact (Hveq (fun hl__u hl__v => hl__u :e A :*: B) Hv). }
    witness (v 0). apply andI.
    + exact HxA.
    + witness (v 1). apply andI.
      * exact HyB.
      * rewrite (hl_SETSPEC_unfold (A :*: B) v Hv (if hl_IN A (v 0) l1 = 1 /\ hl_IN B (v 1) l2 = 1 then 1 else 0) (If_in_2 (hl_IN A (v 0) l1 = 1 /\ hl_IN B (v 1) l2 = 1)) (hl_pair A B (v 0) (v 1)) Hxy).
        apply (If_i_1 ((if hl_IN A (v 0) l1 = 1 /\ hl_IN B (v 1) l2 = 1 then 1 else 0) = 1 /\ v = hl_pair A B (v 0) (v 1)) 1 0). apply andI.
        { apply (If_i_1 (hl_IN A (v 0) l1 = 1 /\ hl_IN B (v 1) l2 = 1) 1 0). apply andI.
          - apply (hl_IN_compat A HA (v 0) HxA l1 H1). assume _ H9. exact (H9 Hx).
          - apply (hl_IN_compat B HB (v 1) HyB l2 H2). assume _ H9. exact (H9 Hy). }
        { exact Hveq. } }
apply set_ext.
- let v. assume Hv.
  claim HvA: v :e A :*: B. { exact (hl_rep_Subq (A :*: B) (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0) v Hv). }
  apply (Hmem v HvA). assume H3 _. apply H3.
  apply (hl_rep_iff (A :*: B) (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0) v HvA). assume _ H4. exact (H4 Hv).
- let v. assume Hv.
  claim HxA: v 0 :e A. { exact (hl_rep_Subq A l1 (v 0) (ap0_Sigma (hl_rep A l1) (fun _ => hl_rep B l2) v Hv)). }
  claim HyB: v 1 :e B. { exact (hl_rep_Subq B l2 (v 1) (ap1_Sigma (hl_rep A l1) (fun _ => hl_rep B l2) v Hv)). }
  claim HvA: v :e A :*: B. { exact ((tuple_Sigma_eta (hl_rep A l1) (fun _ => hl_rep B l2) v Hv) (fun hl__u hl__v => hl__u :e A :*: B) (tuple_2_setprod A B (v 0) HxA (v 1) HyB)). }
  apply (hl_rep_iff (A :*: B) (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x l1 = 1 /\ hl_IN B y l2 = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0) v HvA). assume H3 _. apply H3. apply (Hmem v HvA). assume _ H4. exact (H4 Hv).
Qed.

// ---- neutral elements and monoidal operations ----
Theorem hl_neutral_compat : forall A:set, A <> Empty -> forall l1 :e A :^: A :^: A, forall f1:set -> set -> set, (forall x y :e A, l1 x y = f1 x y) -> hl_neutral A l1 = neutral_of A (fun a:set => fun b:set => f1 a b).
let A. assume HA. let l1. assume H1. let f1. assume Hf.
claim HF: (fun x :e A => if forall y :e A, l1 x y = y /\ l1 y x = y then 1 else 0) :e 2 :^: A.
{ prove (fun x :e A => if forall y :e A, l1 x y = y /\ l1 y x = y then 1 else 0) :e Pi_ x :e A, 2.
  apply (lam_Pi A (fun _ => 2) (fun x => if forall y :e A, l1 x y = y /\ l1 y x = y then 1 else 0)).
  let x. assume _. exact (If_in_2 (forall y :e A, l1 x y = y /\ l1 y x = y)). }
rewrite (hl_neutral_unfold A l1 H1).
rewrite (hl_select_eq A (fun x :e A => if forall y :e A, l1 x y = y /\ l1 y x = y then 1 else 0) HF).
prove choose_in A (fun x => (fun x :e A => if forall y :e A, l1 x y = y /\ l1 y x = y then 1 else 0) x = 1) = choose_in A (fun e => forall x :e A, (fun a:set => fun b:set => f1 a b) e x = x /\ (fun a:set => fun b:set => f1 a b) x e = x).
apply (choose_in_ext A (fun x => (fun x :e A => if forall y :e A, l1 x y = y /\ l1 y x = y then 1 else 0) x = 1) (fun e => forall x :e A, (fun a:set => fun b:set => f1 a b) e x = x /\ (fun a:set => fun b:set => f1 a b) x e = x)).
let x. assume Hx.
rewrite (beta A (fun x => if forall y :e A, l1 x y = y /\ l1 y x = y then 1 else 0) x Hx).
apply (iff_trans ((if forall y :e A, l1 x y = y /\ l1 y x = y then 1 else 0) = 1) (forall y :e A, l1 x y = y /\ l1 y x = y) (forall y :e A, (fun a:set => fun b:set => f1 a b) x y = y /\ (fun a:set => fun b:set => f1 a b) y x = y) (If_1_iff (forall y :e A, l1 x y = y /\ l1 y x = y))).
apply iffI.
- assume H. let y. assume Hy. apply (H y Hy). assume H2 H3. apply andI.
  + exact (eq_trans_i (f1 x y) (l1 x y) y (eq_sym_i (l1 x y) (f1 x y) (Hf x Hx y Hy)) H2).
  + exact (eq_trans_i (f1 y x) (l1 y x) y (eq_sym_i (l1 y x) (f1 y x) (Hf y Hy x Hx)) H3).
- assume H. let y. assume Hy. apply (H y Hy). assume H2 H3. apply andI.
  + exact (eq_trans_i (l1 x y) (f1 x y) y (Hf x Hx y Hy) H2).
  + exact (eq_trans_i (l1 y x) (f1 y x) y (Hf y Hy x Hx) H3).
Qed.

Theorem hl_monoidal_compat : forall A:set, A <> Empty -> forall l1 :e A :^: A :^: A, forall f1:set -> set -> set, (forall x y :e A, l1 x y = f1 x y) -> (hl_monoidal A l1 = 1 <-> (forall x y :e A, f1 x y = f1 y x) /\ (forall x y z :e A, f1 x (f1 y z) = f1 (f1 x y) z) /\ forall x :e A, f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x = x).
let A. assume HA. let l1. assume H1. let f1. assume Hf.
claim Hn: hl_neutral A l1 = neutral_of A (fun a:set => fun b:set => f1 a b). { exact (hl_neutral_compat A HA l1 H1 f1 Hf). }
claim HnA: hl_neutral A l1 :e A. { exact (setexp_ap (A :^: A :^: A) A (hl_neutral A) (hl_neutral_in A HA) l1 H1). }
claim Hne: forall x :e A, l1 (hl_neutral A l1) x = f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x.
{ let x. assume Hx. exact (eq_trans_i (l1 (hl_neutral A l1) x) (f1 (hl_neutral A l1) x) (f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x) (Hf (hl_neutral A l1) HnA x Hx) (f_equal (fun u => f1 u x) (hl_neutral A l1) (neutral_of A (fun a:set => fun b:set => f1 a b)) Hn)). }
claim Hiff: (if (forall x y :e A, l1 x y = l1 y x) /\ ((forall x y z :e A, l1 x (l1 y z) = l1 (l1 x y) z) /\ forall x :e A, l1 (hl_neutral A l1) x = x) then 1 else 0) = 1 <-> (forall x y :e A, f1 x y = f1 y x) /\ (forall x y z :e A, f1 x (f1 y z) = f1 (f1 x y) z) /\ forall x :e A, f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x = x.
{ apply (iff_trans ((if (forall x y :e A, l1 x y = l1 y x) /\ ((forall x y z :e A, l1 x (l1 y z) = l1 (l1 x y) z) /\ forall x :e A, l1 (hl_neutral A l1) x = x) then 1 else 0) = 1) ((forall x y :e A, l1 x y = l1 y x) /\ ((forall x y z :e A, l1 x (l1 y z) = l1 (l1 x y) z) /\ forall x :e A, l1 (hl_neutral A l1) x = x)) ((forall x y :e A, f1 x y = f1 y x) /\ (forall x y z :e A, f1 x (f1 y z) = f1 (f1 x y) z) /\ forall x :e A, f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x = x) (If_1_iff ((forall x y :e A, l1 x y = l1 y x) /\ ((forall x y z :e A, l1 x (l1 y z) = l1 (l1 x y) z) /\ forall x :e A, l1 (hl_neutral A l1) x = x)))).
  apply iffI.
  - assume H. apply H. assume HC HAN. apply HAN. assume HAs HN. apply and3I.
    + let x. assume Hx. let y. assume Hy.
      exact (eq_trans_i (f1 x y) (l1 x y) (f1 y x) (eq_sym_i (l1 x y) (f1 x y) (Hf x Hx y Hy)) (eq_trans_i (l1 x y) (l1 y x) (f1 y x) (HC x Hx y Hy) (Hf y Hy x Hx))).
    + let x. assume Hx. let y. assume Hy. let z. assume Hz.
      claim Hyz: l1 y z :e A. { exact (setexp2_ap A A A l1 H1 y Hy z Hz). }
      claim Hxy: l1 x y :e A. { exact (setexp2_ap A A A l1 H1 x Hx y Hy). }
      claim E1: f1 x (f1 y z) = l1 x (l1 y z). { exact (eq_trans_i (f1 x (f1 y z)) (f1 x (l1 y z)) (l1 x (l1 y z)) (f_equal (fun u => f1 x u) (f1 y z) (l1 y z) (eq_sym_i (l1 y z) (f1 y z) (Hf y Hy z Hz))) (eq_sym_i (l1 x (l1 y z)) (f1 x (l1 y z)) (Hf x Hx (l1 y z) Hyz))). }
      claim E2: l1 (l1 x y) z = f1 (f1 x y) z. { exact (eq_trans_i (l1 (l1 x y) z) (f1 (l1 x y) z) (f1 (f1 x y) z) (Hf (l1 x y) Hxy z Hz) (f_equal (fun u => f1 u z) (l1 x y) (f1 x y) (Hf x Hx y Hy))). }
      exact (eq_trans_i (f1 x (f1 y z)) (l1 x (l1 y z)) (f1 (f1 x y) z) E1 (eq_trans_i (l1 x (l1 y z)) (l1 (l1 x y) z) (f1 (f1 x y) z) (HAs x Hx y Hy z Hz) E2)).
    + let x. assume Hx. exact (eq_trans_i (f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x) (l1 (hl_neutral A l1) x) x (eq_sym_i (l1 (hl_neutral A l1) x) (f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x) (Hne x Hx)) (HN x Hx)).
  - assume H. apply H. assume HCA HN. apply HCA. assume HC HAs. apply andI.
    + let x. assume Hx. let y. assume Hy.
      exact (eq_trans_i (l1 x y) (f1 x y) (l1 y x) (Hf x Hx y Hy) (eq_trans_i (f1 x y) (f1 y x) (l1 y x) (HC x Hx y Hy) (eq_sym_i (l1 y x) (f1 y x) (Hf y Hy x Hx)))).
    + apply andI.
      * let x. assume Hx. let y. assume Hy. let z. assume Hz.
        claim Hyz: l1 y z :e A. { exact (setexp2_ap A A A l1 H1 y Hy z Hz). }
        claim Hxy: l1 x y :e A. { exact (setexp2_ap A A A l1 H1 x Hx y Hy). }
        claim E1: l1 x (l1 y z) = f1 x (f1 y z). { exact (eq_trans_i (l1 x (l1 y z)) (f1 x (l1 y z)) (f1 x (f1 y z)) (Hf x Hx (l1 y z) Hyz) (f_equal (fun u => f1 x u) (l1 y z) (f1 y z) (Hf y Hy z Hz))). }
        claim E2: f1 (f1 x y) z = l1 (l1 x y) z. { exact (eq_trans_i (f1 (f1 x y) z) (f1 (l1 x y) z) (l1 (l1 x y) z) (f_equal (fun u => f1 u z) (f1 x y) (l1 x y) (eq_sym_i (l1 x y) (f1 x y) (Hf x Hx y Hy))) (eq_sym_i (l1 (l1 x y) z) (f1 (l1 x y) z) (Hf (l1 x y) Hxy z Hz))). }
        exact (eq_trans_i (l1 x (l1 y z)) (f1 x (f1 y z)) (l1 (l1 x y) z) E1 (eq_trans_i (f1 x (f1 y z)) (f1 (f1 x y) z) (l1 (l1 x y) z) (HAs x Hx y Hy z Hz) E2)).
      * let x. assume Hx. exact (eq_trans_i (l1 (hl_neutral A l1) x) (f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x) x (Hne x Hx) (HN x Hx)). }
exact (iff_eq1_l (hl_monoidal A l1) (if (forall x y :e A, l1 x y = l1 y x) /\ ((forall x y z :e A, l1 x (l1 y z) = l1 (l1 x y) z) /\ forall x :e A, l1 (hl_neutral A l1) x = x) then 1 else 0) (hl_monoidal_unfold A l1 H1) ((forall x y :e A, f1 x y = f1 y x) /\ (forall x y z :e A, f1 x (f1 y z) = f1 (f1 x y) z) /\ forall x :e A, f1 (neutral_of A (fun a:set => fun b:set => f1 a b)) x = x) Hiff).
Qed.

// ---- finite sums: the real numbers form a ring; adjoin/empty/closure facts ----
Theorem real_ring : ring real add_SNo mul_SNo.
claim Hdr: division_ring real add_SNo mul_SNo. { apply god1_real_numbers_are_field. assume H _. exact H. }
exact (god1_division_ring_ring real add_SNo mul_SNo Hdr).
Qed.

Theorem real_abelian_group : abelian_group real add_SNo.
apply real_ring. assume H4 _. apply H4. assume H3 _. apply H3. assume H2 _. apply H2. assume H1 _. exact H1.
Qed.

Theorem finsum_adjoin_R : forall X, finite X -> forall a, a /:e X -> forall f:set -> set, (forall z :e X :\/: {a}, f z :e R) -> ring_finite_sum R add_SNo (X :\/: {a}) f = ring_finite_sum R add_SNo X f + f a.
let X. assume HX. let a. assume Ha. let f. assume Hf.
exact (god1_ring_finite_sum_adjoin real add_SNo mul_SNo real_ring X HX a Ha f Hf).
Qed.

Theorem finsum_empty_R : forall f:set -> set, ring_finite_sum R add_SNo Empty f = 0.
let f. exact (eq_trans_i (ring_finite_sum R add_SNo Empty f) (group_identity R add_SNo) 0 (god1_ring_finite_sum_zero_natural R add_SNo f) group_identity_R_add).
Qed.

Theorem finsum_closed_R : forall B:set, B c= R -> 0 :e B -> (forall u v :e B, u + v :e B) -> forall X, finite X -> forall f:set -> set, (forall x :e X, f x :e B) -> ring_finite_sum R add_SNo X f :e B.
let B. assume HBR HB0 HBadd. let X. assume HX. let f. assume Hf.
exact (god1_finite_sum_in_additively_closed_subset real add_SNo B real_abelian_group HBR (group_identity_R_add (fun hl__u hl__v => hl__v :e B) HB0) HBadd X HX f Hf).
Qed.

Theorem binunion_Sing_mem : forall X a:set, a :e X -> X :\/: {a} = X.
let X a. assume Ha. apply set_ext.
- let z. assume Hz. apply (binunionE X {a} z Hz).
  + assume H. exact H.
  + assume H. exact ((eq_sym_i z a (SingE a z H)) (fun hl__u hl__v => hl__u :e X) Ha).
- let z. assume Hz. exact (binunionI1 X {a} z Hz).
Qed.


// ---- the literal ITSET fold with an additive operation agrees with ring_finite_sum ----
Theorem hl_itset_finsum : forall A:set, A <> Empty -> forall B:set, B c= R -> 0 :e B -> (forall u v :e B, u + v :e B) -> forall add :e B :^: B :^: B, (forall u v :e B, add u v = u + v) -> forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall s :e 2 :^: A, finite (hl_rep A s) -> hl_ITSET A B (fun x :e A => fun a :e B => add (l2 x) a) s 0 = ring_finite_sum R add_SNo (hl_rep A s) f2.
let A. assume HA. let B. assume HBR HB0 HBadd. let add. assume Hadd Haddc. let l2. assume Hl2. let f2. assume Hf. let s. assume Hs Hfin.
claim HBne: B <> Empty. { assume H. exact (EmptyE 0 (H (fun hl__u hl__v => 0 :e hl__u) HB0)). }
claim Hf2B: forall x :e A, f2 x :e B. { let x. assume Hx. exact ((Hf x Hx) (fun hl__u hl__v => hl__u :e B) (setexp_ap A B l2 Hl2 x Hx)). }
claim HsumB: forall X, finite X -> X c= A -> ring_finite_sum R add_SNo X f2 :e B.
{ let X. assume HX HXA. exact (finsum_closed_R B HBR HB0 HBadd X HX f2 (fun i Hi => Hf2B i (HXA i Hi))). }
claim HsumR: forall X, finite X -> X c= A -> ring_finite_sum R add_SNo X f2 :e R.
{ let X. assume HX HXA. exact (HBR (ring_finite_sum R add_SNo X f2) (HsumB X HX HXA)). }
claim HF: (fun x :e A => fun a :e B => add (l2 x) a) :e B :^: B :^: A.
{ exact (lam2_Pi A B B (fun x a => add (l2 x) a) (fun x Hx a Ha => setexp2_ap B B B add Hadd (l2 x) (setexp_ap A B l2 Hl2 x Hx) a Ha)). }
claim HW: (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) :e B :^: (2 :^: A).
{ prove (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) :e Pi_ t :e 2 :^: A, B.
  apply (lam_Pi (2 :^: A) (fun _ => B) (fun t => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0)).
  let t. assume Ht. apply (xm (finite (hl_rep A t))).
  - assume H. exact ((eq_sym_i (if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (ring_finite_sum R add_SNo (hl_rep A t) f2) (If_i_1 (finite (hl_rep A t)) (ring_finite_sum R add_SNo (hl_rep A t) f2) 0 H)) (fun hl__u hl__v => hl__u :e B) (HsumB (hl_rep A t) H (hl_rep_Subq A t))).
  - assume H. exact ((eq_sym_i (if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) 0 (If_i_0 (finite (hl_rep A t)) (ring_finite_sum R add_SNo (hl_rep A t) f2) 0 H)) (fun hl__u hl__v => hl__u :e B) HB0). }
claim HW0: (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_EMPTY A) = 0.
{ claim HE: hl_EMPTY A :e 2 :^: A. { exact (hl_EMPTY_in A HA). }
  claim HrE: hl_rep A (hl_EMPTY A) = Empty. { exact (hl_EMPTY_compat A HA). }
  claim HfinE: finite (hl_rep A (hl_EMPTY A)). { exact ((eq_sym_i (hl_rep A (hl_EMPTY A)) Empty HrE) (fun hl__u hl__v => finite hl__u) finite_Empty). }
  exact (eq_trans_i ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_EMPTY A)) (if finite (hl_rep A (hl_EMPTY A)) then ring_finite_sum R add_SNo (hl_rep A (hl_EMPTY A)) f2 else 0) 0
    (beta (2 :^: A) (fun t => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_EMPTY A) HE)
    (eq_trans_i (if finite (hl_rep A (hl_EMPTY A)) then ring_finite_sum R add_SNo (hl_rep A (hl_EMPTY A)) f2 else 0) (ring_finite_sum R add_SNo (hl_rep A (hl_EMPTY A)) f2) 0 (If_i_1 (finite (hl_rep A (hl_EMPTY A))) (ring_finite_sum R add_SNo (hl_rep A (hl_EMPTY A)) f2) 0 HfinE)
      (eq_trans_i (ring_finite_sum R add_SNo (hl_rep A (hl_EMPTY A)) f2) (ring_finite_sum R add_SNo Empty f2) 0 (f_equal (fun u => ring_finite_sum R add_SNo u f2) (hl_rep A (hl_EMPTY A)) Empty HrE) (finsum_empty_R f2)))). }
claim HW1: forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t) = hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)).
{ let x. assume Hx. let t. assume Ht. assume Hft.
  claim Hfin_t: finite (hl_rep A t). { apply (hl_FINITE_compat A HA t Ht). assume H _. exact (H Hft). }
  claim HIt: hl_INSERT A x t :e 2 :^: A. { exact (setexp2_ap A (2 :^: A) (2 :^: A) (hl_INSERT A) (hl_INSERT_in A HA) x Hx t Ht). }
  claim HrI: hl_rep A (hl_INSERT A x t) = (hl_rep A t :\/: {x}). { exact (hl_INSERT_compat A HA x Hx t Ht). }
  claim Hfin_I: finite (hl_rep A (hl_INSERT A x t)). { exact ((eq_sym_i (hl_rep A (hl_INSERT A x t)) (hl_rep A t :\/: {x}) HrI) (fun hl__u hl__v => finite hl__u) (binunion_finite (hl_rep A t) Hfin_t {x} (finite_Sing x))). }
  claim HWt: ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) = (ring_finite_sum R add_SNo (hl_rep A t) f2).
  { exact (eq_trans_i ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) (if finite (hl_rep A t) then (ring_finite_sum R add_SNo (hl_rep A t) f2) else 0) (ring_finite_sum R add_SNo (hl_rep A t) f2) (beta (2 :^: A) (fun t => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t Ht) (If_i_1 (finite (hl_rep A t)) (ring_finite_sum R add_SNo (hl_rep A t) f2) 0 Hfin_t)). }
  claim HWI: ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t)) = (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2).
  { exact (eq_trans_i ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t)) (if finite (hl_rep A (hl_INSERT A x t)) then ring_finite_sum R add_SNo (hl_rep A (hl_INSERT A x t)) f2 else 0) (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2) (beta (2 :^: A) (fun t => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t) HIt)
      (eq_trans_i (if finite (hl_rep A (hl_INSERT A x t)) then ring_finite_sum R add_SNo (hl_rep A (hl_INSERT A x t)) f2 else 0) (ring_finite_sum R add_SNo (hl_rep A (hl_INSERT A x t)) f2) (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2) (If_i_1 (finite (hl_rep A (hl_INSERT A x t))) (ring_finite_sum R add_SNo (hl_rep A (hl_INSERT A x t)) f2) 0 Hfin_I)
        (f_equal (fun u => ring_finite_sum R add_SNo u f2) (hl_rep A (hl_INSERT A x t)) (hl_rep A t :\/: {x}) HrI))). }
  claim HWtB: ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) :e B. { exact (setexp_ap (2 :^: A) B (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) HW t Ht). }
  claim HIN2: hl_IN A x t :e 2. { exact (setexp2_ap A (2 :^: A) 2 (hl_IN A) (hl_IN_in A HA) x Hx t Ht). }
  claim HFx: ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) = add (l2 x) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t). { exact (lam2_beta A B (fun x a => add (l2 x) a) x Hx ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) HWtB). }
  claim HFxB: ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) :e B. { exact ((eq_sym_i ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) (add (l2 x) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) HFx) (fun hl__u hl__v => hl__u :e B) (setexp2_ap B B B add Hadd (l2 x) (setexp_ap A B l2 Hl2 x Hx) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) HWtB)). }
  claim Hcond: (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) = (if x :e hl_rep A t then ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) else ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))). { exact (hl_COND_if B (hl_IN A x t) HIN2 (x :e (hl_rep A t)) (hl_IN_compat A HA x Hx t Ht) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) HWtB ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) HFxB). }
  apply (xm (x :e (hl_rep A t))).
  - assume Hin.
    claim Heq: (hl_rep A t :\/: {x}) = (hl_rep A t). { exact (binunion_Sing_mem (hl_rep A t) x Hin). }
    exact (eq_trans_i ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t)) (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2) (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) HWI
      (eq_trans_i (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)))
        (eq_trans_i (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2) (ring_finite_sum R add_SNo (hl_rep A t) f2) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) (f_equal (fun u => ring_finite_sum R add_SNo u f2) (hl_rep A t :\/: {x}) (hl_rep A t) Heq) (eq_sym_i ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) (ring_finite_sum R add_SNo (hl_rep A t) f2) HWt))
        (eq_sym_i (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) (eq_trans_i (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) (if x :e hl_rep A t then ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) else ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) Hcond (If_i_1 (x :e (hl_rep A t)) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) Hin))))).
  - assume Hnin.
    claim HfR: forall z :e (hl_rep A t :\/: {x}), f2 z :e R.
    { let z. assume Hz. apply (binunionE (hl_rep A t) {x} z Hz).
      + assume H. exact (HBR (f2 z) (Hf2B z (hl_rep_Subq A t z H))).
      + assume H. exact (HBR (f2 z) (Hf2B z ((eq_sym_i z x (SingE x z H)) (fun hl__u hl__v => hl__u :e A) Hx))). }
    claim Hadj: (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2) = (ring_finite_sum R add_SNo (hl_rep A t) f2) + f2 x. { exact (finsum_adjoin_R (hl_rep A t) Hfin_t x Hnin f2 HfR). }
    claim HsS: SNo (ring_finite_sum R add_SNo (hl_rep A t) f2). { exact (real_SNo (ring_finite_sum R add_SNo (hl_rep A t) f2) (HsumR (hl_rep A t) Hfin_t (hl_rep_Subq A t))). }
    claim HfxS: SNo (f2 x). { exact (real_SNo (f2 x) (HBR (f2 x) (Hf2B x Hx))). }
    claim Hrhs: (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) = f2 x + (ring_finite_sum R add_SNo (hl_rep A t) f2).
    { exact (eq_trans_i (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) (if x :e hl_rep A t then ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) else ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) (f2 x + (ring_finite_sum R add_SNo (hl_rep A t) f2)) Hcond
        (eq_trans_i (if x :e hl_rep A t then ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) else ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) (f2 x + (ring_finite_sum R add_SNo (hl_rep A t) f2)) (If_i_0 (x :e (hl_rep A t)) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) Hnin)
          (eq_trans_i ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) (add (l2 x) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) (f2 x + (ring_finite_sum R add_SNo (hl_rep A t) f2)) HFx
            (eq_trans_i (add (l2 x) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) (l2 x + ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t)) (f2 x + (ring_finite_sum R add_SNo (hl_rep A t) f2)) (Haddc (l2 x) (setexp_ap A B l2 Hl2 x Hx) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) HWtB)
              (f_equal2 (fun u v => u + v) (l2 x) (f2 x) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) (ring_finite_sum R add_SNo (hl_rep A t) f2) (Hf x Hx) HWt))))). }
    exact (eq_trans_i ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t)) (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2) (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) HWI
      (eq_trans_i (ring_finite_sum R add_SNo (hl_rep A t :\/: {x}) f2) ((ring_finite_sum R add_SNo (hl_rep A t) f2) + f2 x) (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) Hadj
        (eq_trans_i ((ring_finite_sum R add_SNo (hl_rep A t) f2) + f2 x) (f2 x + (ring_finite_sum R add_SNo (hl_rep A t) f2)) (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) (add_SNo_com (ring_finite_sum R add_SNo (hl_rep A t) f2) (f2 x) HsS HfxS) (eq_sym_i (hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) (f2 x + (ring_finite_sum R add_SNo (hl_rep A t) f2)) Hrhs)))). }
claim HG2: (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) :e 2 :^: (B :^: (2 :^: A)).
{ prove (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) :e Pi_ g :e B :^: (2 :^: A), 2.
  apply (lam_Pi (B :^: (2 :^: A)) (fun _ => 2) (fun g => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0)).
  let g. assume _. exact (If_in_2 (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t)))). }
claim Hex: exists g :e B :^: (2 :^: A), (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1.
{ witness (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0). apply andI.
  - exact HW.
  - exact (eq_trans_i ((fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0)) (if ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t) = hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) then 1 else 0) 1 (beta (B :^: (2 :^: A)) (fun g => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) HW) (If_i_1 ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t) = hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) 1 0 (andI ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_EMPTY A) = 0) (forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> (fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) (hl_INSERT A x t) = hl_COND B (hl_IN A x t) ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((fun t :e 2 :^: A => if finite (hl_rep A t) then ring_finite_sum R add_SNo (hl_rep A t) f2 else 0) t))) HW0 HW1))). }
apply (choose_in_spec (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1) Hex). assume Hc1 Hc2.
claim Hspec: ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_INSERT A x t) = hl_COND B (hl_IN A x t) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t))).
{ apply (If_1_iff ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_INSERT A x t) = hl_COND B (hl_IN A x t) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t)))). assume H _. apply H. exact (eq_trans_i (if ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_INSERT A x t) = hl_COND B (hl_IN A x t) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t))) then 1 else 0) ((fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1))) 1 (eq_sym_i ((fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1))) (if ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_INSERT A x t) = hl_COND B (hl_IN A x t) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t) ((fun x :e A => fun a :e B => add (l2 x) a) x ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t))) then 1 else 0) (beta (B :^: (2 :^: A)) (fun g => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) Hc1)) Hc2). }
apply Hspec. assume Hg0 Hg1.
claim Hbase: Empty c= A -> forall t :e 2 :^: A, hl_rep A t = Empty -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t = ring_finite_sum R add_SNo Empty f2.
{ assume _. let t. assume Ht Hrt.
  claim HtE: t = hl_EMPTY A. { exact (hl_rep_inj A t (hl_EMPTY A) Ht (hl_EMPTY_in A HA) (eq_trans_i (hl_rep A t) Empty (hl_rep A (hl_EMPTY A)) Hrt (eq_sym_i (hl_rep A (hl_EMPTY A)) Empty (hl_EMPTY_compat A HA)))). }
  exact (eq_trans_i ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_EMPTY A)) (ring_finite_sum R add_SNo Empty f2) (f_equal (fun u => (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) u) t (hl_EMPTY A) HtE) (eq_trans_i ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_EMPTY A)) 0 (ring_finite_sum R add_SNo Empty f2) Hg0 (eq_sym_i (ring_finite_sum R add_SNo Empty f2) 0 (finsum_empty_R f2)))). }
claim Hstep: forall X y, finite X -> y /:e X -> (X c= A -> forall t :e 2 :^: A, hl_rep A t = X -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t = ring_finite_sum R add_SNo X f2) -> (X :\/: {y} c= A -> forall t :e 2 :^: A, hl_rep A t = X :\/: {y} -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t = ring_finite_sum R add_SNo (X :\/: {y}) f2).
{ let X y. assume HX Hy IH. assume HXyA. let t. assume Ht Hrt.
  claim HXA: X c= A. { exact (Subq_tra X (X :\/: {y}) A (binunion_Subq_1 X {y}) HXyA). }
  claim HyA: y :e A. { exact (HXyA y (binunionI2 X {y} y (SingI y))). }
  claim Ht': hl_chi A X :e 2 :^: A. { exact (hl_chi_Pi A X). }
  claim Hrt': hl_rep A (hl_chi A X) = X. { exact (hl_rep_chi A X HXA). }
  claim HtI: t = hl_INSERT A y (hl_chi A X).
  { exact (hl_rep_inj A t (hl_INSERT A y (hl_chi A X)) Ht (setexp2_ap A (2 :^: A) (2 :^: A) (hl_INSERT A) (hl_INSERT_in A HA) y HyA (hl_chi A X) Ht')
      (eq_trans_i (hl_rep A t) (X :\/: {y}) (hl_rep A (hl_INSERT A y (hl_chi A X))) Hrt
        (eq_sym_i (hl_rep A (hl_INSERT A y (hl_chi A X))) (X :\/: {y})
          (eq_trans_i (hl_rep A (hl_INSERT A y (hl_chi A X))) (hl_rep A (hl_chi A X) :\/: {y}) (X :\/: {y}) (hl_INSERT_compat A HA y HyA (hl_chi A X) Ht') (f_equal (fun u => u :\/: {y}) (hl_rep A (hl_chi A X)) X Hrt'))))). }
  claim Hft': hl_FINITE A (hl_chi A X) = 1. { apply (hl_FINITE_compat A HA (hl_chi A X) Ht'). assume _ H. apply H. exact ((eq_sym_i (hl_rep A (hl_chi A X)) X Hrt') (fun hl__u hl__v => finite hl__u) HX). }
  claim Hg0t': (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X) = (ring_finite_sum R add_SNo X f2). { exact (IH HXA (hl_chi A X) Ht' Hrt'). }
  claim Hg0t'B: (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X) :e B. { exact (setexp_ap (2 :^: A) B (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) Hc1 (hl_chi A X) Ht'). }
  claim HIN2: hl_IN A y (hl_chi A X) :e 2. { exact (setexp2_ap A (2 :^: A) 2 (hl_IN A) (hl_IN_in A HA) y HyA (hl_chi A X) Ht'). }
  claim HFy: (fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) = add (l2 y) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)). { exact (lam2_beta A B (fun x a => add (l2 x) a) y HyA ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) Hg0t'B). }
  claim HFyB: (fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) :e B. { exact ((eq_sym_i ((fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) (add (l2 y) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) HFy) (fun hl__u hl__v => hl__u :e B) (setexp2_ap B B B add Hadd (l2 y) (setexp_ap A B l2 Hl2 y HyA) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) Hg0t'B)). }
  claim Hcond: hl_COND B (hl_IN A y (hl_chi A X)) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) ((fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) = if y :e hl_rep A (hl_chi A X) then (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X) else (fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)).
  { exact (hl_COND_if B (hl_IN A y (hl_chi A X)) HIN2 (y :e hl_rep A (hl_chi A X)) (hl_IN_compat A HA y HyA (hl_chi A X) Ht') ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) Hg0t'B ((fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) HFyB). }
  claim Hnin: ~ y :e hl_rep A (hl_chi A X). { assume H. exact (Hy (Hrt' (fun hl__u hl__v => y :e hl__u) H)). }
  claim HfR: forall z :e X :\/: {y}, f2 z :e R. { let z. assume Hz. exact (HBR (f2 z) (Hf2B z (HXyA z Hz))). }
  claim Hadj: (ring_finite_sum R add_SNo (X :\/: {y}) f2) = (ring_finite_sum R add_SNo X f2) + f2 y. { exact (finsum_adjoin_R X HX y Hy f2 HfR). }
  claim HsS: SNo (ring_finite_sum R add_SNo X f2). { exact (real_SNo (ring_finite_sum R add_SNo X f2) (HsumR X HX HXA)). }
  claim HfyS: SNo (f2 y). { exact (real_SNo (f2 y) (HBR (f2 y) (Hf2B y HyA))). }
  exact (eq_trans_i ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_INSERT A y (hl_chi A X))) (ring_finite_sum R add_SNo (X :\/: {y}) f2) (f_equal (fun u => (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) u) t (hl_INSERT A y (hl_chi A X)) HtI)
    (eq_trans_i ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_INSERT A y (hl_chi A X))) (hl_COND B (hl_IN A y (hl_chi A X)) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) ((fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)))) (ring_finite_sum R add_SNo (X :\/: {y}) f2) (Hg1 y HyA (hl_chi A X) Ht' Hft')
      (eq_trans_i (hl_COND B (hl_IN A y (hl_chi A X)) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) ((fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)))) (if y :e hl_rep A (hl_chi A X) then (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X) else (fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) (ring_finite_sum R add_SNo (X :\/: {y}) f2) Hcond
        (eq_trans_i (if y :e hl_rep A (hl_chi A X) then (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X) else (fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) ((fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) (ring_finite_sum R add_SNo (X :\/: {y}) f2) (If_i_0 (y :e hl_rep A (hl_chi A X)) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) ((fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) Hnin)
          (eq_trans_i ((fun x :e A => fun a :e B => add (l2 x) a) y ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) (add (l2 y) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) (ring_finite_sum R add_SNo (X :\/: {y}) f2) HFy
            (eq_trans_i (add (l2 y) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X))) (l2 y + (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) (ring_finite_sum R add_SNo (X :\/: {y}) f2) (Haddc (l2 y) (setexp_ap A B l2 Hl2 y HyA) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) Hg0t'B)
              (eq_trans_i (l2 y + (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) (f2 y + (ring_finite_sum R add_SNo X f2)) (ring_finite_sum R add_SNo (X :\/: {y}) f2) (f_equal2 (fun u v => u + v) (l2 y) (f2 y) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_chi A X)) (ring_finite_sum R add_SNo X f2) (Hf y HyA) Hg0t')
                (eq_trans_i (f2 y + (ring_finite_sum R add_SNo X f2)) ((ring_finite_sum R add_SNo X f2) + f2 y) (ring_finite_sum R add_SNo (X :\/: {y}) f2) (add_SNo_com (f2 y) (ring_finite_sum R add_SNo X f2) HfyS HsS) (eq_sym_i (ring_finite_sum R add_SNo (X :\/: {y}) f2) ((ring_finite_sum R add_SNo X f2) + f2 y) Hadj))))))))). }
claim Hind: forall X, finite X -> X c= A -> forall t :e 2 :^: A, hl_rep A t = X -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t = ring_finite_sum R add_SNo X f2.
{ exact (finite_ind (fun X => X c= A -> forall t :e 2 :^: A, hl_rep A t = X -> (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) t = ring_finite_sum R add_SNo X f2) Hbase Hstep). }
exact (eq_trans_i (hl_ITSET A B (fun x :e A => fun a :e B => add (l2 x) a) s 0) (hl_select (B :^: (2 :^: A)) (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) s) (ring_finite_sum R add_SNo (hl_rep A s) f2) (hl_ITSET_unfold A B (fun x :e A => fun a :e B => add (l2 x) a) HF s Hs 0 HB0)
  (eq_trans_i (hl_select (B :^: (2 :^: A)) (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) s) ((choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) s) (ring_finite_sum R add_SNo (hl_rep A s) f2) (f_equal (fun h => h s) (hl_select (B :^: (2 :^: A)) (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0)) (choose_in (B :^: (2 :^: A)) (fun g => (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) g = 1)) (hl_select_eq (B :^: (2 :^: A)) (fun g :e B :^: (2 :^: A) => if (g (hl_EMPTY A) = 0 /\ forall x :e A, forall t :e 2 :^: A, hl_FINITE A t = 1 -> g (hl_INSERT A x t) = hl_COND B (hl_IN A x t) (g t) ((fun x :e A => fun a :e B => add (l2 x) a) x (g t))) then 1 else 0) HG2)) (Hind (hl_rep A s) Hfin (hl_rep_Subq A s) s Hs (fun q H => H)))).
Qed.

// ---- neutral elements of addition ----
Theorem neutral_of_R_add : neutral_of R (fun a:set => fun b:set => a + b) = 0.
claim HP0: forall x :e R, (fun a:set => fun b:set => a + b) 0 x = x /\ (fun a:set => fun b:set => a + b) x 0 = x.
{ let x. assume Hx. apply andI.
  - exact (add_SNo_0L x (real_SNo x Hx)).
  - exact (add_SNo_0R x (real_SNo x Hx)). }
claim Hu: forall e :e R, (forall x :e R, (fun a:set => fun b:set => a + b) e x = x /\ (fun a:set => fun b:set => a + b) x e = x) -> e = 0.
{ let e. assume He H. apply (H 0 real_0). assume H1 _. exact (eq_trans_i e (e + 0) 0 (eq_sym_i (e + 0) e (add_SNo_0R e (real_SNo e He))) H1). }
exact (choose_in_unique R (fun e => forall x :e R, (fun a:set => fun b:set => a + b) e x = x /\ (fun a:set => fun b:set => a + b) x e = x) 0 real_0 HP0 Hu).
Qed.

Theorem neutral_of_omega_add : neutral_of omega (fun a:set => fun b:set => a + b) = 0.
claim H0: 0 :e omega. { exact (nat_p_omega 0 nat_0). }
claim HP0: forall x :e omega, (fun a:set => fun b:set => a + b) 0 x = x /\ (fun a:set => fun b:set => a + b) x 0 = x.
{ let x. assume Hx. apply andI.
  - exact (add_SNo_0L x (omega_SNo x Hx)).
  - exact (add_SNo_0R x (omega_SNo x Hx)). }
claim Hu: forall e :e omega, (forall x :e omega, (fun a:set => fun b:set => a + b) e x = x /\ (fun a:set => fun b:set => a + b) x e = x) -> e = 0.
{ let e. assume He H. apply (H 0 H0). assume H1 _. exact (eq_trans_i e (e + 0) 0 (eq_sym_i (e + 0) e (add_SNo_0R e (omega_SNo e He))) H1). }
exact (choose_in_unique omega (fun e => forall x :e omega, (fun a:set => fun b:set => a + b) e x = x /\ (fun a:set => fun b:set => a + b) x e = x) 0 H0 HP0 Hu).
Qed.

// ---- support of a function relative to an operation ----
Theorem hl_support_compat : forall B A:set, B <> Empty -> A <> Empty -> forall l1 :e B :^: B :^: B, forall f1:set -> set -> set, (forall x y :e B, l1 x y = f1 x y) -> forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e 2 :^: A, hl_rep A (hl_support B A l1 l2 l3) = {x :e hl_rep A l3 | f2 x <> neutral_of B (fun a:set => fun b:set => f1 a b)}.
let B A. assume HB HA. let l1. assume H1. let f1. assume Hf1. let l2. assume H2. let f2. assume Hf2. let l3. assume H3.
rewrite (hl_support_unfold B A l1 H1 l2 H2 l3 H3).
apply (eq_trans_i (hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if hl_IN A x l3 = 1 /\ ~ l2 x = hl_neutral B l1 then 1 else 0) x = 1 then 1 else 0))) ({v :e A | hl_IN A v l3 = 1 /\ ~ l2 v = hl_neutral B l1}) ({x :e hl_rep A l3 | f2 x <> neutral_of B (fun a:set => fun b:set => f1 a b)}) (hl_gspec_sep A (fun x => hl_IN A x l3 = 1 /\ ~ l2 x = hl_neutral B l1))).
claim Hn: hl_neutral B l1 = neutral_of B (fun a:set => fun b:set => f1 a b). { exact (hl_neutral_compat B HB l1 H1 f1 Hf1). }
apply set_ext.
- let v. assume Hv. apply (SepE A (fun y => hl_IN A y l3 = 1 /\ ~ l2 y = hl_neutral B l1) v Hv). assume HvA H. apply H. assume H4 H5.
  claim HvR: v :e hl_rep A l3. { apply (hl_IN_compat A HA v HvA l3 H3). assume H6 _. exact (H6 H4). }
  apply (SepI (hl_rep A l3) (fun x => f2 x <> neutral_of B (fun a:set => fun b:set => f1 a b)) v HvR).
  assume H6. apply H5. exact (eq_trans_i (l2 v) (f2 v) (hl_neutral B l1) (Hf2 v HvA) (eq_trans_i (f2 v) (neutral_of B (fun a:set => fun b:set => f1 a b)) (hl_neutral B l1) H6 (eq_sym_i (hl_neutral B l1) (neutral_of B (fun a:set => fun b:set => f1 a b)) Hn))).
- let v. assume Hv. apply (SepE (hl_rep A l3) (fun x => f2 x <> neutral_of B (fun a:set => fun b:set => f1 a b)) v Hv). assume HvR H6.
  claim HvA: v :e A. { exact (hl_rep_Subq A l3 v HvR). }
  apply (SepI A (fun y => hl_IN A y l3 = 1 /\ ~ l2 y = hl_neutral B l1) v HvA). apply andI.
  + apply (hl_IN_compat A HA v HvA l3 H3). assume _ H7. exact (H7 HvR).
  + assume H7. apply H6. exact (eq_trans_i (f2 v) (l2 v) (neutral_of B (fun a:set => fun b:set => f1 a b)) (eq_sym_i (l2 v) (f2 v) (Hf2 v HvA)) (eq_trans_i (l2 v) (hl_neutral B l1) (neutral_of B (fun a:set => fun b:set => f1 a b)) H7 Hn)).
Qed.

// ---- sum: support-based iteration of addition is the native finite sum ----
Theorem hl_sum_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e R :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_sum A l1 l2 = finsum (hl_rep A l1) f2.
let A. assume HA. let l1. assume H1. let l2. assume H2. let f2. assume Hf.
claim HBne: R <> Empty. { assume H. exact (EmptyE 0 (H (fun hl__u hl__v => 0 :e hl__u) real_0)). }
claim HnB: (hl_neutral R hl_real_add) :e R. { exact (setexp_ap (R :^: R :^: R) R (hl_neutral R) (hl_neutral_in R HBne) hl_real_add hl_real_add_in). }
claim Hn: (hl_neutral R hl_real_add) = 0. { exact (eq_trans_i (hl_neutral R hl_real_add) (neutral_of R (fun a:set => fun b:set => a + b)) 0 (hl_neutral_compat R HBne hl_real_add hl_real_add_in (fun a b => a + b) hl_real_add_ap) neutral_of_R_add). }
claim Hsupp_in: (hl_support R A hl_real_add l2 l1) :e 2 :^: A.
{ exact (setexp_ap (2 :^: A) (2 :^: A) (hl_support R A hl_real_add l2) (setexp2_ap (R :^: R :^: R) (R :^: A) ((2 :^: A) :^: (2 :^: A)) (hl_support R A) (hl_support_in R A HBne HA) hl_real_add hl_real_add_in l2 H2) l1 H1). }
claim Hsupp: hl_rep A (hl_support R A hl_real_add l2 l1) = {x :e hl_rep A l1 | f2 x <> 0}.
{ exact (eq_trans_i (hl_rep A (hl_support R A hl_real_add l2 l1)) ({x :e hl_rep A l1 | f2 x <> neutral_of R (fun a:set => fun b:set => a + b)}) {x :e hl_rep A l1 | f2 x <> 0} (hl_support_compat R A HBne HA hl_real_add hl_real_add_in (fun a b => a + b) hl_real_add_ap l2 H2 f2 Hf l1 H1) (f_equal (fun n => {x :e hl_rep A l1 | f2 x <> n}) (neutral_of R (fun a:set => fun b:set => a + b)) 0 neutral_of_R_add)). }
claim HFc: hl_FINITE A (hl_support R A hl_real_add l2 l1) :e 2. { exact (setexp_ap (2 :^: A) 2 (hl_FINITE A) (hl_FINITE_in A HA) (hl_support R A hl_real_add l2 l1) Hsupp_in). }
claim HFiff: hl_FINITE A (hl_support R A hl_real_add l2 l1) = 1 <-> finite {x :e hl_rep A l1 | f2 x <> 0}.
{ exact (Hsupp (fun hl__u hl__v => hl_FINITE A (hl_support R A hl_real_add l2 l1) = 1 <-> finite hl__u) (hl_FINITE_compat A HA (hl_support R A hl_real_add l2 l1) Hsupp_in)). }
claim HF: (fun x :e A => fun a :e R => hl_real_add (l2 x) a) :e R :^: R :^: A.
{ exact (lam2_Pi A R R (fun x a => hl_real_add (l2 x) a) (fun x Hx a Ha => setexp2_ap R R R hl_real_add hl_real_add_in (l2 x) (setexp_ap A R l2 H2 x Hx) a Ha)). }
claim HIT: (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) :e R.
{ exact (setexp_ap R R (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1)) (setexp2_ap (R :^: R :^: A) (2 :^: A) (R :^: R) (hl_ITSET A R) (hl_ITSET_in A R HA HBne) (fun x :e A => fun a :e R => hl_real_add (l2 x) a) HF (hl_support R A hl_real_add l2 l1) Hsupp_in) (hl_neutral R hl_real_add) HnB). }
claim Hcond: (hl_COND R (hl_FINITE A (hl_support R A hl_real_add l2 l1)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add)) = (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) else (hl_neutral R hl_real_add)).
{ exact (hl_COND_if R (hl_FINITE A (hl_support R A hl_real_add l2 l1)) HFc (finite {x :e hl_rep A l1 | f2 x <> 0}) HFiff (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) HIT (hl_neutral R hl_real_add) HnB). }
claim Hlit: hl_sum A l1 l2 = (hl_COND R (hl_FINITE A (hl_support R A hl_real_add l2 l1)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add)).
{ exact (eq_trans_i (hl_sum A l1 l2) (hl_iterate R A hl_real_add l1 l2) (hl_COND R (hl_FINITE A (hl_support R A hl_real_add l2 l1)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add)) (f_equal (fun h => h l1 l2) (hl_sum A) (hl_iterate R A hl_real_add) (hl_sum_unfold A)) (hl_iterate_unfold R A hl_real_add hl_real_add_in l1 H1 l2 H2)). }
prove hl_sum A l1 l2 = (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0).
apply (xm (finite {x :e hl_rep A l1 | f2 x <> 0})).
- assume Hfin.
  claim Hfin_supp: finite (hl_rep A (hl_support R A hl_real_add l2 l1)). { exact ((eq_sym_i (hl_rep A (hl_support R A hl_real_add l2 l1)) {x :e hl_rep A l1 | f2 x <> 0} Hsupp) (fun hl__u hl__v => finite hl__u) Hfin). }
  claim Hits: (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) 0) = (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2).
  { exact (eq_trans_i (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) 0) (ring_finite_sum R add_SNo (hl_rep A (hl_support R A hl_real_add l2 l1)) f2) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) (hl_itset_finsum A HA R (fun x H => H) real_0 real_add_SNo hl_real_add hl_real_add_in hl_real_add_ap l2 H2 f2 Hf (hl_support R A hl_real_add l2 l1) Hsupp_in Hfin_supp) (f_equal (fun u => ring_finite_sum R add_SNo u f2) (hl_rep A (hl_support R A hl_real_add l2 l1)) {x :e hl_rep A l1 | f2 x <> 0} Hsupp)). }
  exact (eq_trans_i (hl_sum A l1 l2) (hl_COND R (hl_FINITE A (hl_support R A hl_real_add l2 l1)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hlit
    (eq_trans_i (hl_COND R (hl_FINITE A (hl_support R A hl_real_add l2 l1)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) else (hl_neutral R hl_real_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hcond
      (eq_trans_i (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) else (hl_neutral R hl_real_add)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) (If_i_1 (finite {x :e hl_rep A l1 | f2 x <> 0}) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add) Hfin)
        (eq_trans_i (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) (eq_trans_i (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) 0) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) (f_equal (fun u => hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) u) (hl_neutral R hl_real_add) 0 Hn) Hits) (eq_sym_i (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) (If_i_1 (finite {x :e hl_rep A l1 | f2 x <> 0}) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) 0 Hfin)))))).
- assume Hnfin.
  exact (eq_trans_i (hl_sum A l1 l2) (hl_COND R (hl_FINITE A (hl_support R A hl_real_add l2 l1)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hlit
    (eq_trans_i (hl_COND R (hl_FINITE A (hl_support R A hl_real_add l2 l1)) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) else (hl_neutral R hl_real_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hcond
      (eq_trans_i (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) else (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) (If_i_0 (finite {x :e hl_rep A l1 | f2 x <> 0}) (hl_ITSET A R (fun x :e A => fun a :e R => hl_real_add (l2 x) a) (hl_support R A hl_real_add l2 l1) (hl_neutral R hl_real_add)) (hl_neutral R hl_real_add) Hnfin)
        (eq_trans_i (hl_neutral R hl_real_add) 0 (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hn (eq_sym_i (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) 0 (If_i_0 (finite {x :e hl_rep A l1 | f2 x <> 0}) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) 0 Hnfin)))))).
Qed.

// ---- nsum: support-based iteration of addition is the native finite sum ----
Theorem hl_nsum_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e omega :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> hl_nsum A l1 l2 = finsum (hl_rep A l1) f2.
let A. assume HA. let l1. assume H1. let l2. assume H2. let f2. assume Hf.
claim HBne: omega <> Empty. { exact omega_nonempty. }
claim HnB: (hl_neutral omega hl_add) :e omega. { exact (setexp_ap (omega :^: omega :^: omega) omega (hl_neutral omega) (hl_neutral_in omega HBne) hl_add hl_add_in). }
claim Hn: (hl_neutral omega hl_add) = 0. { exact (eq_trans_i (hl_neutral omega hl_add) (neutral_of omega (fun a:set => fun b:set => a + b)) 0 (hl_neutral_compat omega HBne hl_add hl_add_in (fun a b => a + b) hl_add_compat) neutral_of_omega_add). }
claim Hsupp_in: (hl_support omega A hl_add l2 l1) :e 2 :^: A.
{ exact (setexp_ap (2 :^: A) (2 :^: A) (hl_support omega A hl_add l2) (setexp2_ap (omega :^: omega :^: omega) (omega :^: A) ((2 :^: A) :^: (2 :^: A)) (hl_support omega A) (hl_support_in omega A HBne HA) hl_add hl_add_in l2 H2) l1 H1). }
claim Hsupp: hl_rep A (hl_support omega A hl_add l2 l1) = {x :e hl_rep A l1 | f2 x <> 0}.
{ exact (eq_trans_i (hl_rep A (hl_support omega A hl_add l2 l1)) ({x :e hl_rep A l1 | f2 x <> neutral_of omega (fun a:set => fun b:set => a + b)}) {x :e hl_rep A l1 | f2 x <> 0} (hl_support_compat omega A HBne HA hl_add hl_add_in (fun a b => a + b) hl_add_compat l2 H2 f2 Hf l1 H1) (f_equal (fun n => {x :e hl_rep A l1 | f2 x <> n}) (neutral_of omega (fun a:set => fun b:set => a + b)) 0 neutral_of_omega_add)). }
claim HFc: hl_FINITE A (hl_support omega A hl_add l2 l1) :e 2. { exact (setexp_ap (2 :^: A) 2 (hl_FINITE A) (hl_FINITE_in A HA) (hl_support omega A hl_add l2 l1) Hsupp_in). }
claim HFiff: hl_FINITE A (hl_support omega A hl_add l2 l1) = 1 <-> finite {x :e hl_rep A l1 | f2 x <> 0}.
{ exact (Hsupp (fun hl__u hl__v => hl_FINITE A (hl_support omega A hl_add l2 l1) = 1 <-> finite hl__u) (hl_FINITE_compat A HA (hl_support omega A hl_add l2 l1) Hsupp_in)). }
claim HF: (fun x :e A => fun a :e omega => hl_add (l2 x) a) :e omega :^: omega :^: A.
{ exact (lam2_Pi A omega omega (fun x a => hl_add (l2 x) a) (fun x Hx a Ha => setexp2_ap omega omega omega hl_add hl_add_in (l2 x) (setexp_ap A omega l2 H2 x Hx) a Ha)). }
claim HIT: (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) :e omega.
{ exact (setexp_ap omega omega (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1)) (setexp2_ap (omega :^: omega :^: A) (2 :^: A) (omega :^: omega) (hl_ITSET A omega) (hl_ITSET_in A omega HA HBne) (fun x :e A => fun a :e omega => hl_add (l2 x) a) HF (hl_support omega A hl_add l2 l1) Hsupp_in) (hl_neutral omega hl_add) HnB). }
claim Hcond: (hl_COND omega (hl_FINITE A (hl_support omega A hl_add l2 l1)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add)) = (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) else (hl_neutral omega hl_add)).
{ exact (hl_COND_if omega (hl_FINITE A (hl_support omega A hl_add l2 l1)) HFc (finite {x :e hl_rep A l1 | f2 x <> 0}) HFiff (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) HIT (hl_neutral omega hl_add) HnB). }
claim Hlit: hl_nsum A l1 l2 = (hl_COND omega (hl_FINITE A (hl_support omega A hl_add l2 l1)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add)).
{ exact (eq_trans_i (hl_nsum A l1 l2) (hl_iterate omega A hl_add l1 l2) (hl_COND omega (hl_FINITE A (hl_support omega A hl_add l2 l1)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add)) (f_equal (fun h => h l1 l2) (hl_nsum A) (hl_iterate omega A hl_add) (hl_nsum_unfold A)) (hl_iterate_unfold omega A hl_add hl_add_in l1 H1 l2 H2)). }
prove hl_nsum A l1 l2 = (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0).
apply (xm (finite {x :e hl_rep A l1 | f2 x <> 0})).
- assume Hfin.
  claim Hfin_supp: finite (hl_rep A (hl_support omega A hl_add l2 l1)). { exact ((eq_sym_i (hl_rep A (hl_support omega A hl_add l2 l1)) {x :e hl_rep A l1 | f2 x <> 0} Hsupp) (fun hl__u hl__v => finite hl__u) Hfin). }
  claim Hits: (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) 0) = (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2).
  { exact (eq_trans_i (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) 0) (ring_finite_sum R add_SNo (hl_rep A (hl_support omega A hl_add l2 l1)) f2) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) (hl_itset_finsum A HA omega omega_subq_R (nat_p_omega 0 nat_0) add_SNo_In_omega hl_add hl_add_in hl_add_compat l2 H2 f2 Hf (hl_support omega A hl_add l2 l1) Hsupp_in Hfin_supp) (f_equal (fun u => ring_finite_sum R add_SNo u f2) (hl_rep A (hl_support omega A hl_add l2 l1)) {x :e hl_rep A l1 | f2 x <> 0} Hsupp)). }
  exact (eq_trans_i (hl_nsum A l1 l2) (hl_COND omega (hl_FINITE A (hl_support omega A hl_add l2 l1)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hlit
    (eq_trans_i (hl_COND omega (hl_FINITE A (hl_support omega A hl_add l2 l1)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) else (hl_neutral omega hl_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hcond
      (eq_trans_i (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) else (hl_neutral omega hl_add)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) (If_i_1 (finite {x :e hl_rep A l1 | f2 x <> 0}) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add) Hfin)
        (eq_trans_i (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) (eq_trans_i (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) 0) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) (f_equal (fun u => hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) u) (hl_neutral omega hl_add) 0 Hn) Hits) (eq_sym_i (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) (If_i_1 (finite {x :e hl_rep A l1 | f2 x <> 0}) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) 0 Hfin)))))).
- assume Hnfin.
  exact (eq_trans_i (hl_nsum A l1 l2) (hl_COND omega (hl_FINITE A (hl_support omega A hl_add l2 l1)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hlit
    (eq_trans_i (hl_COND omega (hl_FINITE A (hl_support omega A hl_add l2 l1)) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) else (hl_neutral omega hl_add)) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hcond
      (eq_trans_i (if finite {x :e hl_rep A l1 | f2 x <> 0} then (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) else (hl_neutral omega hl_add)) (hl_neutral omega hl_add) (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) (If_i_0 (finite {x :e hl_rep A l1 | f2 x <> 0}) (hl_ITSET A omega (fun x :e A => fun a :e omega => hl_add (l2 x) a) (hl_support omega A hl_add l2 l1) (hl_neutral omega hl_add)) (hl_neutral omega hl_add) Hnfin)
        (eq_trans_i (hl_neutral omega hl_add) 0 (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) Hn (eq_sym_i (if finite {x :e hl_rep A l1 | f2 x <> 0} then (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) else 0) 0 (If_i_0 (finite {x :e hl_rep A l1 | f2 x <> 0}) (ring_finite_sum R add_SNo {x :e hl_rep A l1 | f2 x <> 0} f2) 0 Hnfin)))))).
Qed.

// ---- real square roots: the unique root with the sign of the argument ----
Theorem hl_sqrt_compat : forall l1 :e R, hl_sqrt l1 = if 0 <= l1 then sqrt_SNo_nonneg l1 else - sqrt_SNo_nonneg (- l1).
let x. assume Hx.
claim HxS: SNo x. { exact (real_SNo x Hx). }
claim H2o: 2 :e omega. { exact (nat_p_omega 2 nat_2). }
claim Hm1S: SNo (- 1). { exact (SNo_minus_SNo 1 SNo_1). }
claim Hm1lt0: (- 1) < 0. { exact (minus_SNo_0 (fun hl__u hl__v => (- 1) < hl__u) (minus_SNo_Lt_contra 0 1 SNo_0 SNo_1 SNoLt_0_1)). }
claim H1m1: 1 = - 1 -> False. { assume H. exact (SNoLt_irref 0 (SNoLt_tra 0 (- 1) 0 SNo_0 Hm1S SNo_0 (H (fun hl__u hl__v => 0 < hl__u) SNoLt_0_1) Hm1lt0)). }
claim Hm11: - 1 = 1 -> False. { assume H. exact (H1m1 (eq_sym_i (- 1) 1 H)). }
claim H0m1: 0 = - 1 -> False. { assume H. exact (SNoLt_irref 0 (H (fun hl__u hl__v => hl__v < 0) Hm1lt0)). }
claim Hm10: - 1 = 0 -> False. { assume H. exact (H0m1 (eq_sym_i (- 1) 0 H)). }
claim HSpos: forall z, 0 < z -> (if 0 < z then 1 else if z < 0 then - 1 else 0) = 1. { let z. assume H. exact (If_i_1 (0 < z) 1 (if z < 0 then - 1 else 0) H). }
claim HSneg: forall z, SNo z -> z < 0 -> (if 0 < z then 1 else if z < 0 then - 1 else 0) = - 1.
{ let z. assume HzS H.
  claim Hn: ~ 0 < z. { assume H2. exact (SNoLt_irref 0 (SNoLt_tra 0 z 0 SNo_0 HzS SNo_0 H2 H)). }
  exact (eq_trans_i (if 0 < z then 1 else if z < 0 then - 1 else 0) (if z < 0 then - 1 else 0) (- 1) (If_i_0 (0 < z) 1 (if z < 0 then - 1 else 0) Hn) (If_i_1 (z < 0) (- 1) 0 H)). }
claim HS0: (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) = 0.
{ exact (eq_trans_i (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) (if 0 < 0 then - 1 else 0) 0 (If_i_0 (0 < 0) 1 (if 0 < 0 then - 1 else 0) (SNoLt_irref 0)) (If_i_0 (0 < 0) (- 1) 0 (SNoLt_irref 0))). }
claim HF: (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) :e 2 :^: R.
{ prove (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) :e Pi_ y :e R, 2.
  apply (lam_Pi R (fun _ => 2) (fun y => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0)).
  let y. assume _. exact (If_in_2 (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x)). }
claim HQ: forall y :e R, (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1 <-> ((if 0 < y then 1 else if y < 0 then - 1 else 0) = (if 0 < x then 1 else if x < 0 then - 1 else 0) /\ y * y = abs_SNo x).
{ let y. assume Hy.
  claim HyS: SNo y. { exact (real_SNo y Hy). }
  claim Hp: hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = y * y.
  { exact (eq_trans_i (hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_pow y 2) (y * y) (f_equal (fun n => hl_real_pow y n) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) 2 hl_two_numeral) (eq_trans_i (hl_real_pow y 2) (y ^ 2) (y * y) (hl_real_pow_compat y Hy 2 H2o) (exp_SNo_nat_2 y HyS))). }
  apply (iff_eq1_l ((fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y) (if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) (beta R (fun y => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y Hy) ((if 0 < y then 1 else if y < 0 then - 1 else 0) = (if 0 < x then 1 else if x < 0 then - 1 else 0) /\ y * y = abs_SNo x)).
  apply (iff_trans ((if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) = 1) (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) ((if 0 < y then 1 else if y < 0 then - 1 else 0) = (if 0 < x then 1 else if x < 0 then - 1 else 0) /\ y * y = abs_SNo x) (If_1_iff (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x))).
  apply iffI.
  - assume H. apply H. assume H1 H2. apply andI.
    + exact (eq_trans_i (if 0 < y then 1 else if y < 0 then - 1 else 0) (hl_real_sgn y) (if 0 < x then 1 else if x < 0 then - 1 else 0) (eq_sym_i (hl_real_sgn y) (if 0 < y then 1 else if y < 0 then - 1 else 0) (hl_real_sgn_compat y Hy)) (eq_trans_i (hl_real_sgn y) (hl_real_sgn x) (if 0 < x then 1 else if x < 0 then - 1 else 0) H1 (hl_real_sgn_compat x Hx))).
    + exact (eq_trans_i (y * y) (hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (abs_SNo x) (eq_sym_i (hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (y * y) Hp) (eq_trans_i (hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_abs x) (abs_SNo x) H2 (hl_real_abs_compat x Hx))).
  - assume H. apply H. assume H1 H2. apply andI.
    + exact (eq_trans_i (hl_real_sgn y) (if 0 < y then 1 else if y < 0 then - 1 else 0) (hl_real_sgn x) (hl_real_sgn_compat y Hy) (eq_trans_i (if 0 < y then 1 else if y < 0 then - 1 else 0) (if 0 < x then 1 else if x < 0 then - 1 else 0) (hl_real_sgn x) H1 (eq_sym_i (hl_real_sgn x) (if 0 < x then 1 else if x < 0 then - 1 else 0) (hl_real_sgn_compat x Hx)))).
    + exact (eq_trans_i (hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (y * y) (hl_real_abs x) Hp (eq_trans_i (y * y) (abs_SNo x) (hl_real_abs x) H2 (eq_sym_i (hl_real_abs x) (abs_SNo x) (hl_real_abs_compat x Hx)))). }
claim Hmain: choose_in R (fun y => (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1) = (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)).
{ apply (SNoLtLe_or x 0 HxS SNo_0).
  - assume Hlt.
    claim Hnle: ~ 0 <= x. { assume H. exact (SNoLt_irref x (SNoLtLe_tra x 0 x HxS SNo_0 HxS Hlt H)). }
    claim HN: (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)) = - (sqrt_SNo_nonneg (- x)). { exact (If_i_0 (0 <= x) (sqrt_SNo_nonneg x) (- sqrt_SNo_nonneg (- x)) Hnle). }
    claim HmxR: (- x) :e R. { exact (real_minus_SNo x Hx). }
    claim HmxS: SNo (- x). { exact (SNo_minus_SNo x HxS). }
    claim Hpos: 0 < - x. { exact (minus_SNo_0 (fun hl__u hl__v => hl__u < - x) (minus_SNo_Lt_contra x 0 HxS SNo_0 Hlt)). }
    claim Hnn: 0 <= - x. { exact (SNoLtLe 0 (- x) Hpos). }
    claim HsR: (sqrt_SNo_nonneg (- x)) :e R. { exact (sqrt_SNo_nonneg_real (- x) HmxR Hnn). }
    claim HsS: SNo (sqrt_SNo_nonneg (- x)). { exact (real_SNo (sqrt_SNo_nonneg (- x)) HsR). }
    claim Hs0: 0 <= (sqrt_SNo_nonneg (- x)). { exact (sqrt_SNo_nonneg_nonneg (- x) HmxS Hnn). }
    claim Hss: (sqrt_SNo_nonneg (- x)) * (sqrt_SNo_nonneg (- x)) = - x. { exact (sqrt_SNo_nonneg_sqr (- x) HmxS Hnn). }
    claim Hspos: 0 < (sqrt_SNo_nonneg (- x)).
    { apply (SNoLeE 0 (sqrt_SNo_nonneg (- x)) SNo_0 HsS Hs0).
      - assume H. exact H.
      - assume H.
        claim Hz: - x = 0. { exact (eq_trans_i (- x) ((sqrt_SNo_nonneg (- x)) * (sqrt_SNo_nonneg (- x))) 0 (eq_sym_i ((sqrt_SNo_nonneg (- x)) * (sqrt_SNo_nonneg (- x))) (- x) Hss) (H (fun hl__u hl__v => hl__u * hl__u = 0) (mul_SNo_zeroR 0 SNo_0))). }
        exact (FalseE (SNoLt_irref 0 (Hz (fun hl__u hl__v => 0 < hl__u) Hpos)) (0 < (sqrt_SNo_nonneg (- x)))). }
    claim HNlt: (- (sqrt_SNo_nonneg (- x))) < 0. { exact (minus_SNo_0 (fun hl__u hl__v => (- (sqrt_SNo_nonneg (- x))) < hl__u) (minus_SNo_Lt_contra 0 (sqrt_SNo_nonneg (- x)) SNo_0 HsS Hspos)). }
    claim HNR: (- (sqrt_SNo_nonneg (- x))) :e R. { exact (real_minus_SNo (sqrt_SNo_nonneg (- x)) HsR). }
    claim HNS: SNo (- (sqrt_SNo_nonneg (- x))). { exact (SNo_minus_SNo (sqrt_SNo_nonneg (- x)) HsS). }
    claim Habs: abs_SNo x = - x. { exact (neg_abs_SNo x HxS Hlt). }
    claim HSx: (if 0 < x then 1 else if x < 0 then - 1 else 0) = - 1. { exact (HSneg x HxS Hlt). }
    claim HPN: (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) (- (sqrt_SNo_nonneg (- x))) = 1.
    { apply (HQ (- (sqrt_SNo_nonneg (- x))) HNR). assume _ H. apply H. apply andI.
      - exact (eq_trans_i (if 0 < (- (sqrt_SNo_nonneg (- x))) then 1 else if (- (sqrt_SNo_nonneg (- x))) < 0 then - 1 else 0) (- 1) (if 0 < x then 1 else if x < 0 then - 1 else 0) (HSneg (- (sqrt_SNo_nonneg (- x))) HNS HNlt) (eq_sym_i (if 0 < x then 1 else if x < 0 then - 1 else 0) (- 1) HSx)).
      - exact (eq_trans_i ((- (sqrt_SNo_nonneg (- x))) * (- (sqrt_SNo_nonneg (- x)))) ((sqrt_SNo_nonneg (- x)) * (sqrt_SNo_nonneg (- x))) (abs_SNo x) (mul_SNo_minus_minus (sqrt_SNo_nonneg (- x)) (sqrt_SNo_nonneg (- x)) HsS HsS) (eq_trans_i ((sqrt_SNo_nonneg (- x)) * (sqrt_SNo_nonneg (- x))) (- x) (abs_SNo x) Hss (eq_sym_i (abs_SNo x) (- x) Habs))). }
    claim Huniq: forall y :e R, (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1 -> y = - (sqrt_SNo_nonneg (- x)).
    { let y. assume Hy Hy1.
      claim HyS: SNo y. { exact (real_SNo y Hy). }
      apply (HQ y Hy). assume H _. apply (H Hy1). assume HS1 HS2.
      claim HSy: (if 0 < y then 1 else if y < 0 then - 1 else 0) = - 1. { exact (eq_trans_i (if 0 < y then 1 else if y < 0 then - 1 else 0) (if 0 < x then 1 else if x < 0 then - 1 else 0) (- 1) HS1 HSx). }
      claim Hylt: y < 0.
      { apply (SNoLt_trichotomy_or_impred y 0 HyS SNo_0 (y < 0)).
        - assume H. exact H.
        - assume H. exact (FalseE (H0m1 (eq_trans_i 0 (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) (- 1) (eq_sym_i (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) 0 HS0) (H (fun hl__u hl__v => (if 0 < hl__u then 1 else if hl__u < 0 then - 1 else 0) = - 1) HSy))) (y < 0)).
        - assume H. exact (FalseE (H1m1 (eq_trans_i 1 (if 0 < y then 1 else if y < 0 then - 1 else 0) (- 1) (eq_sym_i (if 0 < y then 1 else if y < 0 then - 1 else 0) 1 (HSpos y H)) HSy)) (y < 0)). }
      claim HmyS: SNo (- y). { exact (SNo_minus_SNo y HyS). }
      claim Hmy0: 0 <= - y. { exact (SNoLtLe 0 (- y) (minus_SNo_0 (fun hl__u hl__v => hl__u < - y) (minus_SNo_Lt_contra y 0 HyS SNo_0 Hylt))). }
      claim Hyy: (- y) * (- y) = - x. { exact (eq_trans_i ((- y) * (- y)) (y * y) (- x) (mul_SNo_minus_minus y y HyS HyS) (eq_trans_i (y * y) (abs_SNo x) (- x) HS2 Habs)). }
      claim Hsq: sqrt_SNo_nonneg ((- y) ^ 2) = - y. { exact (sqrt_SNo_nonneg_sqr_id (- y) HmyS Hmy0). }
      claim Hs_eq: (sqrt_SNo_nonneg (- x)) = - y.
      { exact (eq_trans_i (sqrt_SNo_nonneg (- x)) (sqrt_SNo_nonneg ((- y) ^ 2)) (- y) (f_equal (fun u => sqrt_SNo_nonneg u) (- x) ((- y) ^ 2) (eq_sym_i ((- y) ^ 2) (- x) (eq_trans_i ((- y) ^ 2) ((- y) * (- y)) (- x) (exp_SNo_nat_2 (- y) HmyS) Hyy))) Hsq). }
      exact (eq_trans_i y (- - y) (- (sqrt_SNo_nonneg (- x))) (eq_sym_i (- - y) y (minus_SNo_invol y HyS)) (f_equal (fun u => - u) (- y) (sqrt_SNo_nonneg (- x)) (eq_sym_i (sqrt_SNo_nonneg (- x)) (- y) Hs_eq))). }
    exact (eq_trans_i (choose_in R (fun y => (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1)) (- (sqrt_SNo_nonneg (- x))) (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)) (choose_in_unique R (fun y => (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1) (- (sqrt_SNo_nonneg (- x))) HNR HPN Huniq) (eq_sym_i (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)) (- (sqrt_SNo_nonneg (- x))) HN)).
  - assume Hle.
    claim HN: (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)) = (sqrt_SNo_nonneg x). { exact (If_i_1 (0 <= x) (sqrt_SNo_nonneg x) (- sqrt_SNo_nonneg (- x)) Hle). }
    claim HsR: (sqrt_SNo_nonneg x) :e R. { exact (sqrt_SNo_nonneg_real x Hx Hle). }
    claim HsS: SNo (sqrt_SNo_nonneg x). { exact (real_SNo (sqrt_SNo_nonneg x) HsR). }
    claim Hs0: 0 <= (sqrt_SNo_nonneg x). { exact (sqrt_SNo_nonneg_nonneg x HxS Hle). }
    claim Hss: (sqrt_SNo_nonneg x) * (sqrt_SNo_nonneg x) = x. { exact (sqrt_SNo_nonneg_sqr x HxS Hle). }
    claim Habs: abs_SNo x = x. { exact (nonneg_abs_SNo x Hle). }
    claim HPN: (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) (sqrt_SNo_nonneg x) = 1.
    { apply (HQ (sqrt_SNo_nonneg x) HsR). assume _ H. apply H. apply andI.
      - apply (SNoLeE 0 x SNo_0 HxS Hle).
        + assume Hxpos.
          claim Hspos: 0 < (sqrt_SNo_nonneg x).
          { apply (SNoLeE 0 (sqrt_SNo_nonneg x) SNo_0 HsS Hs0).
            - assume H2. exact H2.
            - assume H2. exact (FalseE (SNoLt_irref 0 ((eq_trans_i x ((sqrt_SNo_nonneg x) * (sqrt_SNo_nonneg x)) 0 (eq_sym_i ((sqrt_SNo_nonneg x) * (sqrt_SNo_nonneg x)) x Hss) (H2 (fun hl__u hl__v => hl__u * hl__u = 0) (mul_SNo_zeroR 0 SNo_0))) (fun hl__u hl__v => 0 < hl__u) Hxpos)) (0 < (sqrt_SNo_nonneg x))). }
          exact (eq_trans_i (if 0 < (sqrt_SNo_nonneg x) then 1 else if (sqrt_SNo_nonneg x) < 0 then - 1 else 0) 1 (if 0 < x then 1 else if x < 0 then - 1 else 0) (HSpos (sqrt_SNo_nonneg x) Hspos) (eq_sym_i (if 0 < x then 1 else if x < 0 then - 1 else 0) 1 (HSpos x Hxpos))).
        + assume H0.
          claim Hs_eq0: (sqrt_SNo_nonneg x) = 0. { exact (eq_trans_i (sqrt_SNo_nonneg x) (sqrt_SNo_nonneg 0) 0 (f_equal (fun u => sqrt_SNo_nonneg u) x 0 (eq_sym_i 0 x H0)) sqrt_SNo_nonneg_0). }
          exact (f_equal (fun u => (if 0 < u then 1 else if u < 0 then - 1 else 0)) (sqrt_SNo_nonneg x) x (eq_trans_i (sqrt_SNo_nonneg x) 0 x Hs_eq0 H0)).
      - exact (eq_trans_i ((sqrt_SNo_nonneg x) * (sqrt_SNo_nonneg x)) x (abs_SNo x) Hss (eq_sym_i (abs_SNo x) x Habs)). }
    claim Huniq: forall y :e R, (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1 -> y = (sqrt_SNo_nonneg x).
    { let y. assume Hy Hy1.
      claim HyS: SNo y. { exact (real_SNo y Hy). }
      apply (HQ y Hy). assume H _. apply (H Hy1). assume HS1 HS2.
      claim Hyy: y * y = x. { exact (eq_trans_i (y * y) (abs_SNo x) x HS2 Habs). }
      claim Hy0: 0 <= y.
      { apply (SNoLeE 0 x SNo_0 HxS Hle).
        + assume Hxpos.
          claim HSy: (if 0 < y then 1 else if y < 0 then - 1 else 0) = 1. { exact (eq_trans_i (if 0 < y then 1 else if y < 0 then - 1 else 0) (if 0 < x then 1 else if x < 0 then - 1 else 0) 1 HS1 (HSpos x Hxpos)). }
          apply (SNoLt_trichotomy_or_impred y 0 HyS SNo_0 (0 <= y)).
          * assume H. exact (FalseE (Hm11 (eq_trans_i (- 1) (if 0 < y then 1 else if y < 0 then - 1 else 0) 1 (eq_sym_i (if 0 < y then 1 else if y < 0 then - 1 else 0) (- 1) (HSneg y HyS H)) HSy)) (0 <= y)).
          * assume H. exact ((eq_sym_i y 0 H) (fun hl__u hl__v => 0 <= hl__u) (SNoLe_ref 0)).
          * assume H. exact (SNoLtLe 0 y H).
        + assume H0.
          claim HSy: (if 0 < y then 1 else if y < 0 then - 1 else 0) = 0. { exact (eq_trans_i (if 0 < y then 1 else if y < 0 then - 1 else 0) (if 0 < x then 1 else if x < 0 then - 1 else 0) 0 HS1 (eq_trans_i (if 0 < x then 1 else if x < 0 then - 1 else 0) (if 0 < 0 then 1 else if 0 < 0 then - 1 else 0) 0 (f_equal (fun u => (if 0 < u then 1 else if u < 0 then - 1 else 0)) x 0 (eq_sym_i 0 x H0)) HS0)). }
          apply (SNoLt_trichotomy_or_impred y 0 HyS SNo_0 (0 <= y)).
          * assume H. exact (FalseE (Hm10 (eq_trans_i (- 1) (if 0 < y then 1 else if y < 0 then - 1 else 0) 0 (eq_sym_i (if 0 < y then 1 else if y < 0 then - 1 else 0) (- 1) (HSneg y HyS H)) HSy)) (0 <= y)).
          * assume H. exact ((eq_sym_i y 0 H) (fun hl__u hl__v => 0 <= hl__u) (SNoLe_ref 0)).
          * assume H. exact (SNoLtLe 0 y H). }
      claim Hsq: sqrt_SNo_nonneg (y ^ 2) = y. { exact (sqrt_SNo_nonneg_sqr_id y HyS Hy0). }
      exact (eq_sym_i (sqrt_SNo_nonneg x) y (eq_trans_i (sqrt_SNo_nonneg x) (sqrt_SNo_nonneg (y ^ 2)) y (f_equal (fun u => sqrt_SNo_nonneg u) x (y ^ 2) (eq_sym_i (y ^ 2) x (eq_trans_i (y ^ 2) (y * y) x (exp_SNo_nat_2 y HyS) Hyy))) Hsq)). }
    exact (eq_trans_i (choose_in R (fun y => (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1)) (sqrt_SNo_nonneg x) (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)) (choose_in_unique R (fun y => (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1) (sqrt_SNo_nonneg x) HsR HPN Huniq) (eq_sym_i (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)) (sqrt_SNo_nonneg x) HN)). }
exact (eq_trans_i (hl_sqrt x) (hl_select R (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0)) (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)) (hl_sqrt_unfold x Hx) (eq_trans_i (hl_select R (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0)) (choose_in R (fun y => (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) y = 1)) (if 0 <= x then sqrt_SNo_nonneg x else - sqrt_SNo_nonneg (- x)) (hl_select_eq R (fun y :e R => if (hl_real_sgn y = hl_real_sgn x /\ hl_real_pow y (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = hl_real_abs x) then 1 else 0) HF) Hmain)).
Qed.

// ---- existence and unique existence applied to a literal predicate ----
Theorem hl_exists_lit : forall A:set, forall P:set -> prop, hl_exists A (fun x :e A => if P x then 1 else 0) = 1 <-> exists x :e A, P x.
let A P.
claim HF: (fun x :e A => if P x then 1 else 0) :e 2 :^: A.
{ prove (fun x :e A => if P x then 1 else 0) :e Pi_ x :e A, 2.
  apply (lam_Pi A (fun _ => 2) (fun x => if P x then 1 else 0)).
  let x. assume _. exact (If_in_2 (P x)). }
claim Hv: forall x :e A, (fun x :e A => if P x then 1 else 0) x = 1 <-> P x.
{ let x. assume Hx. exact (iff_eq1_l ((fun x :e A => if P x then 1 else 0) x) (if P x then 1 else 0) (beta A (fun x => if P x then 1 else 0) x Hx) (P x) (If_1_iff (P x))). }
apply (iff_eq1_l (hl_exists A (fun x :e A => if P x then 1 else 0)) (if forall q :e 2, (forall x :e A, (fun x :e A => if P x then 1 else 0) x = 1 -> q = 1) -> q = 1 then 1 else 0) (hl_exists_unfold A (fun x :e A => if P x then 1 else 0) HF) (exists x :e A, P x)).
apply (iff_trans ((if forall q :e 2, (forall x :e A, (fun x :e A => if P x then 1 else 0) x = 1 -> q = 1) -> q = 1 then 1 else 0) = 1) (forall q :e 2, (forall x :e A, (fun x :e A => if P x then 1 else 0) x = 1 -> q = 1) -> q = 1) (exists x :e A, P x) (If_1_iff (forall q :e 2, (forall x :e A, (fun x :e A => if P x then 1 else 0) x = 1 -> q = 1) -> q = 1))).
apply iffI.
- assume H.
  claim Hq: (if exists x :e A, P x then 1 else 0) = 1.
  { apply (H (if exists x :e A, P x then 1 else 0) (If_in_2 (exists x :e A, P x))).
    let x. assume Hx. assume Hx1.
    claim HPx: P x. { apply (Hv x Hx). assume H1 _. exact (H1 Hx1). }
    apply (If_i_1 (exists x :e A, P x) 1 0). witness x. apply andI.
    + exact Hx.
    + exact HPx. }
  apply (If_1_iff (exists x :e A, P x)). assume H1 _. exact (H1 Hq).
- assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx HPx.
  let q. assume Hq H2. apply (H2 x Hx). apply (Hv x Hx). assume _ H3. exact (H3 HPx).
Qed.

Theorem hl_exists_unique_lit : forall A:set, forall P:set -> prop, hl_exists_unique A (fun x :e A => if P x then 1 else 0) = 1 <-> exists x :e A, P x /\ forall y :e A, P y -> y = x.
let A P.
claim HF: (fun x :e A => if P x then 1 else 0) :e 2 :^: A.
{ prove (fun x :e A => if P x then 1 else 0) :e Pi_ x :e A, 2.
  apply (lam_Pi A (fun _ => 2) (fun x => if P x then 1 else 0)).
  let x. assume _. exact (If_in_2 (P x)). }
claim Hv: forall x :e A, (fun x :e A => if P x then 1 else 0) x = 1 <-> P x.
{ let x. assume Hx. exact (iff_eq1_l ((fun x :e A => if P x then 1 else 0) x) (if P x then 1 else 0) (beta A (fun x => if P x then 1 else 0) x Hx) (P x) (If_1_iff (P x))). }
apply (iff_eq1_l (hl_exists_unique A (fun x :e A => if P x then 1 else 0)) (if hl_exists A (fun x :e A => if P x then 1 else 0) = 1 /\ forall x y :e A, (fun x :e A => if P x then 1 else 0) x = 1 /\ (fun x :e A => if P x then 1 else 0) y = 1 -> x = y then 1 else 0) (hl_exists_unique_unfold A (fun x :e A => if P x then 1 else 0) HF) (exists x :e A, P x /\ forall y :e A, P y -> y = x)).
apply (iff_trans ((if hl_exists A (fun x :e A => if P x then 1 else 0) = 1 /\ forall x y :e A, (fun x :e A => if P x then 1 else 0) x = 1 /\ (fun x :e A => if P x then 1 else 0) y = 1 -> x = y then 1 else 0) = 1) (hl_exists A (fun x :e A => if P x then 1 else 0) = 1 /\ forall x y :e A, (fun x :e A => if P x then 1 else 0) x = 1 /\ (fun x :e A => if P x then 1 else 0) y = 1 -> x = y) (exists x :e A, P x /\ forall y :e A, P y -> y = x) (If_1_iff (hl_exists A (fun x :e A => if P x then 1 else 0) = 1 /\ forall x y :e A, (fun x :e A => if P x then 1 else 0) x = 1 /\ (fun x :e A => if P x then 1 else 0) y = 1 -> x = y))).
apply iffI.
- assume H. apply H. assume He Hu.
  claim Hex: exists x :e A, P x. { apply (hl_exists_lit A P). assume H1 _. exact (H1 He). }
  apply Hex. let x. assume Hx0. apply Hx0. assume Hx HPx.
  witness x. apply andI.
  + exact Hx.
  + apply andI.
    * exact HPx.
    * let y. assume Hy HPy.
      claim Hfy: (fun x :e A => if P x then 1 else 0) y = 1. { apply (Hv y Hy). assume _ H2. exact (H2 HPy). }
      claim Hfx: (fun x :e A => if P x then 1 else 0) x = 1. { apply (Hv x Hx). assume _ H2. exact (H2 HPx). }
      exact (Hu y Hy x Hx (andI ((fun x :e A => if P x then 1 else 0) y = 1) ((fun x :e A => if P x then 1 else 0) x = 1) Hfy Hfx)).
- assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx H1. apply H1. assume HPx Hu.
  apply andI.
  + apply (hl_exists_lit A P). assume _ H2. apply H2. witness x. apply andI.
    * exact Hx.
    * exact HPx.
  + let a. assume Ha. let b. assume Hb. assume Hab. apply Hab. assume Hfa Hfb.
    claim HPa: P a. { apply (Hv a Ha). assume H2 _. exact (H2 Hfa). }
    claim HPb: P b. { apply (Hv b Hb). assume H2 _. exact (H2 Hfb). }
    exact (eq_trans_i a x b (Hu a Ha HPa) (eq_sym_i b x (Hu b Hb HPb))).
Qed.

Theorem hl_exists_lit_fun : forall A:set, forall T:set -> set, (forall x :e A, T x :e 2) -> (hl_exists A (fun x :e A => T x) = 1 <-> exists x :e A, T x = 1).
let A T. assume HT.
claim HF: (fun x :e A => T x) :e 2 :^: A.
{ prove (fun x :e A => T x) :e Pi_ x :e A, 2. exact (lam_Pi A (fun _ => 2) T HT). }
claim Hv: forall x :e A, (fun x :e A => T x) x = 1 <-> T x = 1.
{ let x. assume Hx. exact (iff_eq1_l ((fun x :e A => T x) x) (T x) (beta A T x Hx) (T x = 1) (iff_refl (T x = 1))). }
apply (iff_eq1_l (hl_exists A (fun x :e A => T x)) (if forall q :e 2, (forall x :e A, (fun x :e A => T x) x = 1 -> q = 1) -> q = 1 then 1 else 0) (hl_exists_unfold A (fun x :e A => T x) HF) (exists x :e A, T x = 1)).
apply (iff_trans ((if forall q :e 2, (forall x :e A, (fun x :e A => T x) x = 1 -> q = 1) -> q = 1 then 1 else 0) = 1) (forall q :e 2, (forall x :e A, (fun x :e A => T x) x = 1 -> q = 1) -> q = 1) (exists x :e A, T x = 1) (If_1_iff (forall q :e 2, (forall x :e A, (fun x :e A => T x) x = 1 -> q = 1) -> q = 1))).
apply iffI.
- assume H.
  claim Hq: (if exists x :e A, T x = 1 then 1 else 0) = 1.
  { apply (H (if exists x :e A, T x = 1 then 1 else 0) (If_in_2 (exists x :e A, T x = 1))).
    let x. assume Hx. assume Hx1.
    claim HPx: T x = 1. { apply (Hv x Hx). assume H1 _. exact (H1 Hx1). }
    apply (If_i_1 (exists x :e A, T x = 1) 1 0). witness x. apply andI.
    + exact Hx.
    + exact HPx. }
  apply (If_1_iff (exists x :e A, T x = 1)). assume H1 _. exact (H1 Hq).
- assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx HPx.
  let q. assume Hq H2. apply (H2 x Hx). apply (Hv x Hx). assume _ H3. exact (H3 HPx).
Qed.

Theorem hl_exists_unique_lit_fun : forall A:set, forall T:set -> set, (forall x :e A, T x :e 2) -> (hl_exists_unique A (fun x :e A => T x) = 1 <-> exists x :e A, T x = 1 /\ forall y :e A, T y = 1 -> y = x).
let A T. assume HT.
claim HF: (fun x :e A => T x) :e 2 :^: A.
{ prove (fun x :e A => T x) :e Pi_ x :e A, 2. exact (lam_Pi A (fun _ => 2) T HT). }
claim Hv: forall x :e A, (fun x :e A => T x) x = 1 <-> T x = 1.
{ let x. assume Hx. exact (iff_eq1_l ((fun x :e A => T x) x) (T x) (beta A T x Hx) (T x = 1) (iff_refl (T x = 1))). }
apply (iff_eq1_l (hl_exists_unique A (fun x :e A => T x)) (if hl_exists A (fun x :e A => T x) = 1 /\ forall x y :e A, (fun x :e A => T x) x = 1 /\ (fun x :e A => T x) y = 1 -> x = y then 1 else 0) (hl_exists_unique_unfold A (fun x :e A => T x) HF) (exists x :e A, T x = 1 /\ forall y :e A, T y = 1 -> y = x)).
apply (iff_trans ((if hl_exists A (fun x :e A => T x) = 1 /\ forall x y :e A, (fun x :e A => T x) x = 1 /\ (fun x :e A => T x) y = 1 -> x = y then 1 else 0) = 1) (hl_exists A (fun x :e A => T x) = 1 /\ forall x y :e A, (fun x :e A => T x) x = 1 /\ (fun x :e A => T x) y = 1 -> x = y) (exists x :e A, T x = 1 /\ forall y :e A, T y = 1 -> y = x) (If_1_iff (hl_exists A (fun x :e A => T x) = 1 /\ forall x y :e A, (fun x :e A => T x) x = 1 /\ (fun x :e A => T x) y = 1 -> x = y))).
apply iffI.
- assume H. apply H. assume He Hu.
  claim Hex: exists x :e A, T x = 1. { apply (hl_exists_lit_fun A T HT). assume H1 _. exact (H1 He). }
  apply Hex. let x. assume Hx0. apply Hx0. assume Hx HPx.
  witness x. apply andI.
  + exact Hx.
  + apply andI.
    * exact HPx.
    * let y. assume Hy HPy.
      claim Hfy: (fun x :e A => T x) y = 1. { apply (Hv y Hy). assume _ H2. exact (H2 HPy). }
      claim Hfx: (fun x :e A => T x) x = 1. { apply (Hv x Hx). assume _ H2. exact (H2 HPx). }
      exact (Hu y Hy x Hx (andI ((fun x :e A => T x) y = 1) ((fun x :e A => T x) x = 1) Hfy Hfx)).
- assume H. apply H. let x. assume Hx0. apply Hx0. assume Hx H1. apply H1. assume HPx Hu.
  apply andI.
  + apply (hl_exists_lit_fun A T HT). assume _ H2. apply H2. witness x. apply andI.
    * exact Hx.
    * exact HPx.
  + let a. assume Ha. let b. assume Hb. assume Hab. apply Hab. assume Hfa Hfb.
    claim HPa: T a = 1. { apply (Hv a Ha). assume H2 _. exact (H2 Hfa). }
    claim HPb: T b = 1. { apply (Hv b Hb). assume H2 _. exact (H2 Hfb). }
    exact (eq_trans_i a x b (Hu a Ha HPa) (eq_sym_i b x (Hu b Hb HPb))).
Qed.

Theorem hl_sup_compat : forall l1 :e 2 :^: R, (exists x :e R, is_lub (hl_rep R l1) x) -> hl_sup l1 = sup (hl_rep R l1).
let s. assume Hs Hex.
claim HRne: R <> Empty. { assume H. exact (EmptyE 0 (H (fun hl__u hl__v => 0 :e hl__u) real_0)). }
claim HF: (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) :e 2 :^: R.
{ prove (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) :e Pi_ a :e R, 2.
  apply (lam_Pi R (fun _ => 2) (fun a => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0)).
  let a. assume _. exact (If_in_2 ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1)). }
claim Hub: forall a :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) <-> upper_bound (hl_rep R s) a.
{ let a. assume Ha. prove (forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) <-> forall x :e hl_rep R s, x <= a.
  apply iffI.
  - assume H. let x. assume Hx.
    claim HxR: x :e R. { exact (hl_rep_Subq R s x Hx). }
    claim Hin: hl_IN R x s = 1. { apply (hl_IN_compat R HRne x HxR s Hs). assume _ H2. exact (H2 Hx). }
    apply (hl_real_le_compat x HxR a Ha). assume H2 _. exact (H2 (H x HxR Hin)).
  - assume H. let x. assume HxR. assume Hin.
    claim Hx: x :e hl_rep R s. { apply (hl_IN_compat R HRne x HxR s Hs). assume H2 _. exact (H2 Hin). }
    apply (hl_real_le_compat x HxR a Ha). assume _ H2. exact (H2 (H x Hx)). }
claim HQ: forall a :e R, (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1 <-> is_lub (hl_rep R s) a.
{ let a. assume Ha.
  apply (iff_eq1_l ((fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a) (if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) (beta R (fun a => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a Ha) (is_lub (hl_rep R s) a)).
  apply (iff_trans ((if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) = 1) ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) (is_lub (hl_rep R s) a) (If_1_iff ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1))).
  prove ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) <-> upper_bound (hl_rep R s) a /\ forall y :e R, upper_bound (hl_rep R s) y -> a <= y.
  apply iffI.
  - assume H. apply H. assume H1 H2. apply andI.
    + apply (Hub a Ha). assume H3 _. exact (H3 H1).
    + let y. assume Hy Huy.
      claim H4: forall x :e R, hl_IN R x s = 1 -> hl_real_le x y = 1. { apply (Hub y Hy). assume _ H5. exact (H5 Huy). }
      apply (hl_real_le_compat a Ha y Hy). assume H5 _. exact (H5 (H2 y Hy H4)).
  - assume H. apply H. assume H1 H2. apply andI.
    + apply (Hub a Ha). assume _ H3. exact (H3 H1).
    + let b. assume Hb H4.
      claim Hub_b: upper_bound (hl_rep R s) b. { apply (Hub b Hb). assume H5 _. exact (H5 H4). }
      apply (hl_real_le_compat a Ha b Hb). assume _ H5. exact (H5 (H2 b Hb Hub_b)). }
claim Hex2: exists a :e R, (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1.
{ apply Hex. let a. assume Ha0. apply Ha0. assume Ha Hl. witness a. apply andI.
  - exact Ha.
  - apply (HQ a Ha). assume _ H. exact (H Hl). }
claim Hiff: forall a:set, (a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1) <-> (a :e R /\ is_lub (hl_rep R s) a).
{ let a. apply iffI.
  - assume H. apply H. assume Ha H1. apply andI.
    + exact Ha.
    + apply (HQ a Ha). assume H2 _. exact (H2 H1).
  - assume H. apply H. assume Ha H1. apply andI.
    + exact Ha.
    + apply (HQ a Ha). assume _ H2. exact (H2 H1). }
claim Hpe: (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1) = (fun x:set => x :e R /\ is_lub (hl_rep R s) x).
{ exact (pred_ext (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1) (fun x:set => x :e R /\ is_lub (hl_rep R s) x) Hiff). }
rewrite (hl_sup_unfold s Hs). rewrite (hl_select_eq R (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) HF).
prove (if (exists a :e R, (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1) then Eps_i (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1) else Eps_i (fun a:set => a :e R)) = Eps_i (fun x:set => x :e R /\ is_lub (hl_rep R s) x).
rewrite (If_i_1 (exists a :e R, (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1) (Eps_i (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1)) (Eps_i (fun a:set => a :e R)) Hex2).
exact (eq_sym_i (Eps_i (fun x:set => x :e R /\ is_lub (hl_rep R s) x)) (Eps_i (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1)) (Hpe (fun hl__u hl__v => Eps_i hl__u = Eps_i (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le x a = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x b = 1) -> hl_real_le a b = 1) then 1 else 0) a = 1)) (fun q H => H))).
Qed.

Theorem hl_inf_compat : forall l1 :e 2 :^: R, (exists x :e R, is_glb (hl_rep R l1) x) -> hl_inf l1 = inf (hl_rep R l1).
let s. assume Hs Hex.
claim HRne: R <> Empty. { assume H. exact (EmptyE 0 (H (fun hl__u hl__v => 0 :e hl__u) real_0)). }
claim HF: (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) :e 2 :^: R.
{ prove (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) :e Pi_ a :e R, 2.
  apply (lam_Pi R (fun _ => 2) (fun a => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0)).
  let a. assume _. exact (If_in_2 ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1)). }
claim Hub: forall a :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) <-> lower_bound (hl_rep R s) a.
{ let a. assume Ha. prove (forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) <-> forall x :e hl_rep R s, a <= x.
  apply iffI.
  - assume H. let x. assume Hx.
    claim HxR: x :e R. { exact (hl_rep_Subq R s x Hx). }
    claim Hin: hl_IN R x s = 1. { apply (hl_IN_compat R HRne x HxR s Hs). assume _ H2. exact (H2 Hx). }
    apply (hl_real_le_compat a Ha x HxR). assume H2 _. exact (H2 (H x HxR Hin)).
  - assume H. let x. assume HxR. assume Hin.
    claim Hx: x :e hl_rep R s. { apply (hl_IN_compat R HRne x HxR s Hs). assume H2 _. exact (H2 Hin). }
    apply (hl_real_le_compat a Ha x HxR). assume _ H2. exact (H2 (H x Hx)). }
claim HQ: forall a :e R, (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1 <-> is_glb (hl_rep R s) a.
{ let a. assume Ha.
  apply (iff_eq1_l ((fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a) (if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) (beta R (fun a => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a Ha) (is_glb (hl_rep R s) a)).
  apply (iff_trans ((if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) = 1) ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) (is_glb (hl_rep R s) a) (If_1_iff ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1))).
  prove ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) <-> lower_bound (hl_rep R s) a /\ forall y :e R, lower_bound (hl_rep R s) y -> y <= a.
  apply iffI.
  - assume H. apply H. assume H1 H2. apply andI.
    + apply (Hub a Ha). assume H3 _. exact (H3 H1).
    + let y. assume Hy Huy.
      claim H4: forall x :e R, hl_IN R x s = 1 -> hl_real_le y x = 1. { apply (Hub y Hy). assume _ H5. exact (H5 Huy). }
      apply (hl_real_le_compat y Hy a Ha). assume H5 _. exact (H5 (H2 y Hy H4)).
  - assume H. apply H. assume H1 H2. apply andI.
    + apply (Hub a Ha). assume _ H3. exact (H3 H1).
    + let b. assume Hb H4.
      claim Hub_b: lower_bound (hl_rep R s) b. { apply (Hub b Hb). assume H5 _. exact (H5 H4). }
      apply (hl_real_le_compat b Hb a Ha). assume _ H5. exact (H5 (H2 b Hb Hub_b)). }
claim Hex2: exists a :e R, (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1.
{ apply Hex. let a. assume Ha0. apply Ha0. assume Ha Hl. witness a. apply andI.
  - exact Ha.
  - apply (HQ a Ha). assume _ H. exact (H Hl). }
claim Hiff: forall a:set, (a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1) <-> (a :e R /\ is_glb (hl_rep R s) a).
{ let a. apply iffI.
  - assume H. apply H. assume Ha H1. apply andI.
    + exact Ha.
    + apply (HQ a Ha). assume H2 _. exact (H2 H1).
  - assume H. apply H. assume Ha H1. apply andI.
    + exact Ha.
    + apply (HQ a Ha). assume _ H2. exact (H2 H1). }
claim Hpe: (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1) = (fun x:set => x :e R /\ is_glb (hl_rep R s) x).
{ exact (pred_ext (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1) (fun x:set => x :e R /\ is_glb (hl_rep R s) x) Hiff). }
rewrite (hl_inf_unfold s Hs). rewrite (hl_select_eq R (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) HF).
prove (if (exists a :e R, (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1) then Eps_i (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1) else Eps_i (fun a:set => a :e R)) = Eps_i (fun x:set => x :e R /\ is_glb (hl_rep R s) x).
rewrite (If_i_1 (exists a :e R, (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1) (Eps_i (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1)) (Eps_i (fun a:set => a :e R)) Hex2).
exact (eq_sym_i (Eps_i (fun x:set => x :e R /\ is_glb (hl_rep R s) x)) (Eps_i (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1)) (Hpe (fun hl__u hl__v => Eps_i hl__u = Eps_i (fun a:set => a :e R /\ (fun a :e R => if ((forall x :e R, hl_IN R x s = 1 -> hl_real_le a x = 1) /\ forall b :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le b x = 1) -> hl_real_le b a = 1) then 1 else 0) a = 1)) (fun q H => H))).
Qed.

// ---- images of sets under (injective) meta functions ----
Theorem Repl_binunion : forall X Y:set, forall F:set -> set, {F x | x :e X :\/: Y} = {F x | x :e X} :\/: {F x | x :e Y}.
let X Y F. apply set_ext.
- let y. assume Hy. apply (ReplE_impred (X :\/: Y) F y Hy). let x. assume Hx Hyx. apply (binunionE X Y x Hx).
  + assume H. rewrite Hyx. exact (binunionI1 {F x | x :e X} {F x | x :e Y} (F x) (ReplI X F x H)).
  + assume H. rewrite Hyx. exact (binunionI2 {F x | x :e X} {F x | x :e Y} (F x) (ReplI Y F x H)).
- let y. assume Hy. apply (binunionE {F x | x :e X} {F x | x :e Y} y Hy).
  + assume H. apply (ReplE_impred X F y H). let x. assume Hx Hyx. rewrite Hyx. exact (ReplI (X :\/: Y) F x (binunionI1 X Y x Hx)).
  + assume H. apply (ReplE_impred Y F y H). let x. assume Hx Hyx. rewrite Hyx. exact (ReplI (X :\/: Y) F x (binunionI2 X Y x Hx)).
Qed.

Theorem Repl_Sing : forall a:set, forall F:set -> set, {F x | x :e {a}} = {F a}.
let a F. apply set_ext.
- let y. assume Hy. apply (ReplE_impred {a} F y Hy). let x. assume Hx Hyx. rewrite Hyx. rewrite (SingE a x Hx). exact (SingI (F a)).
- let y. assume Hy. rewrite (SingE (F a) y Hy). exact (ReplI {a} F a (SingI a)).
Qed.

Theorem Repl_binintersect_inj : forall D X Y:set, forall F:set -> set, X c= D -> Y c= D -> (forall u v :e D, F u = F v -> u = v) -> {F x | x :e X :/\: Y} = {F x | x :e X} :/\: {F x | x :e Y}.
let D X Y F. assume HX HY Hinj. apply set_ext.
- let y. assume Hy. apply (ReplE_impred (X :/\: Y) F y Hy). let x. assume Hx Hyx. apply (binintersectE X Y x Hx). assume Hx1 Hx2.
  rewrite Hyx. exact (binintersectI {F x | x :e X} {F x | x :e Y} (F x) (ReplI X F x Hx1) (ReplI Y F x Hx2)).
- let y. assume Hy. apply (binintersectE {F x | x :e X} {F x | x :e Y} y Hy). assume H1 H2.
  apply (ReplE_impred X F y H1). let x. assume Hx Hyx. apply (ReplE_impred Y F y H2). let x2. assume Hx2 Hyx2.
  claim Heq: x = x2. { exact (Hinj x (HX x Hx) x2 (HY x2 Hx2) (eq_trans_i (F x) y (F x2) (eq_sym_i y (F x) Hyx) Hyx2)). }
  rewrite Hyx. apply (ReplI (X :/\: Y) F x). apply (binintersectI X Y x Hx). rewrite Heq. exact Hx2.
Qed.

Theorem Repl_setminus_inj : forall D X Y:set, forall F:set -> set, X c= D -> Y c= D -> (forall u v :e D, F u = F v -> u = v) -> {F x | x :e X :\: Y} = {F x | x :e X} :\: {F x | x :e Y}.
let D X Y F. assume HX HY Hinj. apply set_ext.
- let y. assume Hy. apply (ReplE_impred (X :\: Y) F y Hy). let x. assume Hx Hyx. apply (setminusE X Y x Hx). assume Hx1 Hx2.
  rewrite Hyx. apply (setminusI {F x | x :e X} {F x | x :e Y} (F x) (ReplI X F x Hx1)).
  assume H. apply (ReplE_impred Y F (F x) H). let x2. assume Hx2' Hxx2. apply Hx2. rewrite (Hinj x (HX x Hx1) x2 (HY x2 Hx2') Hxx2). exact Hx2'.
- let y. assume Hy. apply (setminusE {F x | x :e X} {F x | x :e Y} y Hy). assume H1 H2.
  apply (ReplE_impred X F y H1). let x. assume Hx Hyx. rewrite Hyx. apply (ReplI (X :\: Y) F x). apply (setminusI X Y x Hx).
  assume HxY. apply H2. rewrite Hyx. exact (ReplI Y F x HxY).
Qed.

Theorem Repl_Subq_inj : forall D X Y:set, forall F:set -> set, X c= D -> Y c= D -> (forall u v :e D, F u = F v -> u = v) -> (X c= Y <-> {F x | x :e X} c= {F x | x :e Y}).
let D X Y F. assume HX HY Hinj. apply iffI.
- assume H. let y. assume Hy. apply (ReplE_impred X F y Hy). let x. assume Hx Hyx. rewrite Hyx. exact (ReplI Y F x (H x Hx)).
- assume H. let x. assume Hx.
  claim H1: F x :e {F x | x :e Y}. { exact (H (F x) (ReplI X F x Hx)). }
  apply (ReplE_impred Y F (F x) H1). let x2. assume Hx2 Hxx2. rewrite (Hinj x (HX x Hx) x2 (HY x2 Hx2) Hxx2). exact Hx2.
Qed.

Theorem Repl_eq_inj : forall D X Y:set, forall F:set -> set, X c= D -> Y c= D -> (forall u v :e D, F u = F v -> u = v) -> (X = Y <-> {F x | x :e X} = {F x | x :e Y}).
let D X Y F. assume HX HY Hinj. apply iffI.
- assume H. exact (f_equal (fun Z => {F x | x :e Z}) X Y H).
- assume H. apply set_ext.
  + apply (Repl_Subq_inj D X Y F HX HY Hinj). assume _ H2. apply H2. rewrite H. exact (Subq_ref {F x | x :e Y}).
  + apply (Repl_Subq_inj D Y X F HY HX Hinj). assume _ H2. apply H2. rewrite H. exact (Subq_ref {F x | x :e Y}).
Qed.

Theorem Repl_Empty_iff : forall X:set, forall F:set -> set, {F x | x :e X} = Empty <-> X = Empty.
let X F. apply iffI.
- assume H. apply (Empty_eq X). let x. assume Hx. exact (EmptyE (F x) (H (fun hl__u hl__v => F x :e hl__u) (ReplI X F x Hx))).
- assume H. rewrite H. exact (Repl_Empty F).
Qed.

// every literal predicate is the characteristic function of its representation
Theorem hl_chi_rep : forall A:set, forall u :e 2 :^: A, hl_chi A (hl_rep A u) = u.
let A u. assume Hu. exact (hl_rep_inj A (hl_chi A (hl_rep A u)) u (hl_chi_Pi A (hl_rep A u)) Hu (hl_rep_chi A (hl_rep A u) (hl_rep_Subq A u))).
Qed.

Theorem Repl_rep_inv : forall A X:set, X c= 2 :^: A -> X = {hl_chi A t | t :e {hl_rep A u | u :e X}}.
let A X. assume HX. apply set_ext.
- let u. assume Hu.
  claim H1: hl_rep A u :e {hl_rep A u | u :e X}. { exact (ReplI X (fun u => hl_rep A u) u Hu). }
  exact ((hl_chi_rep A u (HX u Hu)) (fun hl__u hl__v => hl__u :e {hl_chi A t | t :e {hl_rep A u | u :e X}}) (ReplI {hl_rep A u | u :e X} (fun t => hl_chi A t) (hl_rep A u) H1)).
- let v. assume Hv. apply (ReplE_impred {hl_rep A u | u :e X} (fun t => hl_chi A t) v Hv). let t. assume Ht Hvt.
  apply (ReplE_impred X (fun u => hl_rep A u) t Ht). let u. assume Hu Htu.
  rewrite Hvt. rewrite Htu. rewrite (hl_chi_rep A u (HX u Hu)). exact Hu.
Qed.

Theorem rep2_finite_iff : forall A X:set, X c= 2 :^: A -> (finite X <-> finite {hl_rep A u | u :e X}).
let A X. assume HX. apply iffI.
- assume H. exact (Repl_finite (fun u => hl_rep A u) X H).
- assume H. rewrite (Repl_rep_inv A X HX). exact (Repl_finite (fun t => hl_chi A t) {hl_rep A u | u :e X} H).
Qed.

// ---- set-theoretic constants at the nested instance A := A -> bool ----
Theorem hl_IN_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: A), hl_IN (2 :^: A) l1 l2 = 1 <-> hl_rep A l1 :e hl_rep2 A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
exact (iff_trans (hl_IN (2 :^: A) l1 l2 = 1) (l1 :e hl_rep (2 :^: A) l2) (hl_rep A l1 :e hl_rep2 A l2) (hl_IN_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2) (mem_rep2_iff A l1 H1 l2)).
Qed.

Theorem hl_EMPTY_compat_pow : forall A:set, A <> Empty -> hl_rep2 A (hl_EMPTY (2 :^: A)) = Empty.
let A. assume HA.
prove {hl_rep A u | u :e hl_rep (2 :^: A) (hl_EMPTY (2 :^: A))} = Empty.
rewrite (hl_EMPTY_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty)). exact (Repl_Empty (fun u => hl_rep A u)).
Qed.

Theorem hl_UNIV_compat_pow : forall A:set, A <> Empty -> hl_rep2 A (hl_UNIV (2 :^: A)) = Power A.
let A. assume HA.
prove {hl_rep A u | u :e hl_rep (2 :^: A) (hl_UNIV (2 :^: A))} = Power A.
rewrite (hl_UNIV_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty)). apply set_ext.
- let y. assume Hy. apply (ReplE_impred (2 :^: A) (fun u => hl_rep A u) y Hy). let u. assume Hu Hyu. rewrite Hyu. exact (PowerI A (hl_rep A u) (hl_rep_Subq A u)).
- let s. assume Hs.
  exact ((hl_rep_chi A s (PowerE A s Hs)) (fun hl__u hl__v => hl__u :e {hl_rep A u | u :e 2 :^: A}) (ReplI (2 :^: A) (fun u => hl_rep A u) (hl_chi A s) (hl_chi_Pi A s))).
Qed.

Theorem hl_INSERT_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: (2 :^: A), hl_rep2 A (hl_INSERT (2 :^: A) l1 l2) = SetAdjoin (hl_rep2 A l2) (hl_rep A l1).
let A. assume HA. let l1. assume H1. let l2. assume H2.
prove {hl_rep A u | u :e hl_rep (2 :^: A) (hl_INSERT (2 :^: A) l1 l2)} = {hl_rep A u | u :e hl_rep (2 :^: A) l2} :\/: {hl_rep A l1}.
rewrite (hl_INSERT_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2).
prove {hl_rep A u | u :e hl_rep (2 :^: A) l2 :\/: {l1}} = {hl_rep A u | u :e hl_rep (2 :^: A) l2} :\/: {hl_rep A l1}.
rewrite (Repl_binunion (hl_rep (2 :^: A) l2) {l1} (fun u => hl_rep A u)).
rewrite (Repl_Sing l1 (fun u => hl_rep A u)). exact (fun q H => H).
Qed.

Theorem hl_UNION_compat_pow : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: (2 :^: A), hl_rep2 A (hl_UNION (2 :^: A) l1 l2) = hl_rep2 A l1 :\/: hl_rep2 A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
prove {hl_rep A u | u :e hl_rep (2 :^: A) (hl_UNION (2 :^: A) l1 l2)} = {hl_rep A u | u :e hl_rep (2 :^: A) l1} :\/: {hl_rep A u | u :e hl_rep (2 :^: A) l2}.
rewrite (hl_UNION_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2).
exact (Repl_binunion (hl_rep (2 :^: A) l1) (hl_rep (2 :^: A) l2) (fun u => hl_rep A u)).
Qed.

Theorem hl_INTER_compat_pow : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: (2 :^: A), hl_rep2 A (hl_INTER (2 :^: A) l1 l2) = hl_rep2 A l1 :/\: hl_rep2 A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
prove {hl_rep A u | u :e hl_rep (2 :^: A) (hl_INTER (2 :^: A) l1 l2)} = {hl_rep A u | u :e hl_rep (2 :^: A) l1} :/\: {hl_rep A u | u :e hl_rep (2 :^: A) l2}.
rewrite (hl_INTER_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2).
exact (Repl_binintersect_inj (2 :^: A) (hl_rep (2 :^: A) l1) (hl_rep (2 :^: A) l2) (fun u => hl_rep A u) (hl_rep_Subq (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l2) (fun u Hu v Hv H => hl_rep_inj A u v Hu Hv H)).
Qed.

Theorem hl_DIFF_compat_pow : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: (2 :^: A), hl_rep2 A (hl_DIFF (2 :^: A) l1 l2) = hl_rep2 A l1 :\: hl_rep2 A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
prove {hl_rep A u | u :e hl_rep (2 :^: A) (hl_DIFF (2 :^: A) l1 l2)} = {hl_rep A u | u :e hl_rep (2 :^: A) l1} :\: {hl_rep A u | u :e hl_rep (2 :^: A) l2}.
rewrite (hl_DIFF_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2).
exact (Repl_setminus_inj (2 :^: A) (hl_rep (2 :^: A) l1) (hl_rep (2 :^: A) l2) (fun u => hl_rep A u) (hl_rep_Subq (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l2) (fun u Hu v Hv H => hl_rep_inj A u v Hu Hv H)).
Qed.

Theorem hl_DELETE_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), forall l2 :e 2 :^: A, hl_rep2 A (hl_DELETE (2 :^: A) l1 l2) = hl_rep2 A l1 :\: {hl_rep A l2}.
let A. assume HA. let l1. assume H1. let l2. assume H2.
prove {hl_rep A u | u :e hl_rep (2 :^: A) (hl_DELETE (2 :^: A) l1 l2)} = {hl_rep A u | u :e hl_rep (2 :^: A) l1} :\: {hl_rep A l2}.
rewrite (hl_DELETE_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2).
claim HS: {l2} c= 2 :^: A. { let y. assume Hy. rewrite (SingE l2 y Hy). exact H2. }
rewrite (Repl_setminus_inj (2 :^: A) (hl_rep (2 :^: A) l1) {l2} (fun u => hl_rep A u) (hl_rep_Subq (2 :^: A) l1) HS (fun u Hu v Hv H => hl_rep_inj A u v Hu Hv H)).
rewrite (Repl_Sing l2 (fun u => hl_rep A u)). exact (fun q H => H).
Qed.

Theorem hl_SUBSET_compat_pow : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: (2 :^: A), hl_SUBSET (2 :^: A) l1 l2 = 1 <-> hl_rep2 A l1 c= hl_rep2 A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
exact (iff_trans (hl_SUBSET (2 :^: A) l1 l2 = 1) (hl_rep (2 :^: A) l1 c= hl_rep (2 :^: A) l2) (hl_rep2 A l1 c= hl_rep2 A l2) (hl_SUBSET_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2)
  (Repl_Subq_inj (2 :^: A) (hl_rep (2 :^: A) l1) (hl_rep (2 :^: A) l2) (fun u => hl_rep A u) (hl_rep_Subq (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l2) (fun u Hu v Hv H => hl_rep_inj A u v Hu Hv H))).
Qed.

Theorem hl_PSUBSET_compat_pow : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: (2 :^: A), hl_PSUBSET (2 :^: A) l1 l2 = 1 <-> hl_rep2 A l1 c= hl_rep2 A l2 /\ hl_rep2 A l1 <> hl_rep2 A l2.
let A. assume HA. let l1. assume H1. let l2. assume H2.
claim Hsub: hl_rep (2 :^: A) l1 c= hl_rep (2 :^: A) l2 <-> hl_rep2 A l1 c= hl_rep2 A l2.
{ exact (Repl_Subq_inj (2 :^: A) (hl_rep (2 :^: A) l1) (hl_rep (2 :^: A) l2) (fun u => hl_rep A u) (hl_rep_Subq (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l2) (fun u Hu v Hv H => hl_rep_inj A u v Hu Hv H)). }
claim Heq: hl_rep (2 :^: A) l1 = hl_rep (2 :^: A) l2 <-> hl_rep2 A l1 = hl_rep2 A l2.
{ exact (Repl_eq_inj (2 :^: A) (hl_rep (2 :^: A) l1) (hl_rep (2 :^: A) l2) (fun u => hl_rep A u) (hl_rep_Subq (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l2) (fun u Hu v Hv H => hl_rep_inj A u v Hu Hv H)). }
apply (iff_trans (hl_PSUBSET (2 :^: A) l1 l2 = 1) (hl_rep (2 :^: A) l1 c= hl_rep (2 :^: A) l2 /\ hl_rep (2 :^: A) l1 <> hl_rep (2 :^: A) l2) (hl_rep2 A l1 c= hl_rep2 A l2 /\ hl_rep2 A l1 <> hl_rep2 A l2) (hl_PSUBSET_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2)).
apply iffI.
- assume H. apply H. assume Hs Hn. apply andI.
  + apply Hsub. assume H3 _. exact (H3 Hs).
  + assume H3. apply Hn. apply Heq. assume _ H4. exact (H4 H3).
- assume H. apply H. assume Hs Hn. apply andI.
  + apply Hsub. assume _ H3. exact (H3 Hs).
  + assume H3. apply Hn. apply Heq. assume H4 _. exact (H4 H3).
Qed.

Theorem hl_FINITE_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_FINITE (2 :^: A) l1 = 1 <-> finite (hl_rep2 A l1).
let A. assume HA. let l1. assume H1.
exact (iff_trans (hl_FINITE (2 :^: A) l1 = 1) (finite (hl_rep (2 :^: A) l1)) (finite (hl_rep2 A l1)) (hl_FINITE_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1) (rep2_finite_iff A (hl_rep (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l1))).
Qed.

Theorem hl_INFINITE_compat_pow : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_INFINITE (2 :^: A) l1 = 1 <-> infinite (hl_rep2 A l1).
let A. assume HA. let l1. assume H1.
apply (iff_trans (hl_INFINITE (2 :^: A) l1 = 1) (infinite (hl_rep (2 :^: A) l1)) (infinite (hl_rep2 A l1)) (hl_INFINITE_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1)).
prove (~ finite (hl_rep (2 :^: A) l1)) <-> ~ finite (hl_rep2 A l1).
apply iffI.
- assume H H2. apply H. apply (rep2_finite_iff A (hl_rep (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l1)). assume _ H3. exact (H3 H2).
- assume H H2. apply H. apply (rep2_finite_iff A (hl_rep (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l1)). assume H3 _. exact (H3 H2).
Qed.

Theorem hl_DISJOINT_compat_pow : forall A:set, A <> Empty -> forall l1 l2 :e 2 :^: (2 :^: A), hl_DISJOINT (2 :^: A) l1 l2 = 1 <-> hl_rep2 A l1 :/\: hl_rep2 A l2 = Empty.
let A. assume HA. let l1. assume H1. let l2. assume H2.
claim Hi: hl_rep2 A l1 :/\: hl_rep2 A l2 = {hl_rep A u | u :e hl_rep (2 :^: A) l1 :/\: hl_rep (2 :^: A) l2}.
{ exact (eq_sym_i {hl_rep A u | u :e hl_rep (2 :^: A) l1 :/\: hl_rep (2 :^: A) l2} (hl_rep2 A l1 :/\: hl_rep2 A l2) (Repl_binintersect_inj (2 :^: A) (hl_rep (2 :^: A) l1) (hl_rep (2 :^: A) l2) (fun u => hl_rep A u) (hl_rep_Subq (2 :^: A) l1) (hl_rep_Subq (2 :^: A) l2) (fun u Hu v Hv H => hl_rep_inj A u v Hu Hv H))). }
apply (iff_trans (hl_DISJOINT (2 :^: A) l1 l2 = 1) (hl_rep (2 :^: A) l1 :/\: hl_rep (2 :^: A) l2 = Empty) (hl_rep2 A l1 :/\: hl_rep2 A l2 = Empty) (hl_DISJOINT_compat (2 :^: A) (setexp_nonempty A 2 two_nonempty) l1 H1 l2 H2)).
rewrite Hi. apply iffI.
- assume H. apply (Repl_Empty_iff (hl_rep (2 :^: A) l1 :/\: hl_rep (2 :^: A) l2) (fun u => hl_rep A u)). assume _ H3. exact (H3 H).
- assume H. apply (Repl_Empty_iff (hl_rep (2 :^: A) l1 :/\: hl_rep (2 :^: A) l2) (fun u => hl_rep A u)). assume H3 _. exact (H3 H).
Qed.

// ---- unions and intersections of families ----
Theorem hl_UNIONS_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_rep A (hl_UNIONS A l1) = Union (hl_rep2 A l1).
let A. assume HA. let l1. assume H1.
claim H2ne: 2 :^: A <> Empty. { exact (setexp_nonempty A 2 two_nonempty). }
rewrite (hl_UNIONS_unfold A l1 H1).
apply (eq_trans_i (hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if exists u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 /\ hl_IN A x u = 1 then 1 else 0) x = 1 then 1 else 0))) ({v :e A | exists u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 /\ hl_IN A v u = 1}) (Union (hl_rep2 A l1)) (hl_gspec_sep A (fun x => exists u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 /\ hl_IN A x u = 1))).
apply set_ext.
- let v. assume Hv. apply (SepE A (fun x => exists u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 /\ hl_IN A x u = 1) v Hv). assume HvA H. apply H. let u. assume Hu0. apply Hu0. assume Hu H3. apply H3. assume H4 H5.
  claim HuR: u :e hl_rep (2 :^: A) l1. { apply (hl_IN_compat (2 :^: A) H2ne u Hu l1 H1). assume H6 _. exact (H6 H4). }
  claim HvU: v :e hl_rep A u. { apply (hl_IN_compat A HA v HvA u Hu). assume H6 _. exact (H6 H5). }
  exact (UnionI (hl_rep2 A l1) v (hl_rep A u) HvU (ReplI (hl_rep (2 :^: A) l1) (fun u => hl_rep A u) u HuR)).
- let v. assume Hv. apply (UnionE_impred (hl_rep2 A l1) v Hv). let Y. assume HvY HY.
  apply (ReplE_impred (hl_rep (2 :^: A) l1) (fun u => hl_rep A u) Y HY). let u. assume Hu HYu.
  claim HuA: u :e 2 :^: A. { exact (hl_rep_Subq (2 :^: A) l1 u Hu). }
  claim HvU: v :e hl_rep A u. { exact (HYu (fun hl__u hl__v => v :e hl__u) HvY). }
  claim HvA: v :e A. { exact (hl_rep_Subq A u v HvU). }
  apply (SepI A (fun x => exists u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 /\ hl_IN A x u = 1) v HvA).
  witness u. apply andI.
  + exact HuA.
  + apply andI.
    * apply (hl_IN_compat (2 :^: A) H2ne u HuA l1 H1). assume _ H6. exact (H6 Hu).
    * apply (hl_IN_compat A HA v HvA u HuA). assume _ H6. exact (H6 HvU).
Qed.

Theorem hl_INTERS_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_rep A (hl_INTERS A l1) = {x :e A | forall Y :e hl_rep2 A l1, x :e Y}.
let A. assume HA. let l1. assume H1.
claim H2ne: 2 :^: A <> Empty. { exact (setexp_nonempty A 2 two_nonempty). }
rewrite (hl_INTERS_unfold A l1 H1).
apply (eq_trans_i (hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if forall u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 -> hl_IN A x u = 1 then 1 else 0) x = 1 then 1 else 0))) ({v :e A | forall u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 -> hl_IN A v u = 1}) ({x :e A | forall Y :e hl_rep2 A l1, x :e Y}) (hl_gspec_sep A (fun x => forall u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 -> hl_IN A x u = 1))).
apply set_ext.
- let v. assume Hv. apply (SepE A (fun x => forall u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 -> hl_IN A x u = 1) v Hv). assume HvA H.
  apply (SepI A (fun x => forall Y :e hl_rep2 A l1, x :e Y) v HvA). let Y. assume HY.
  apply (ReplE_impred (hl_rep (2 :^: A) l1) (fun u => hl_rep A u) Y HY). let u. assume Hu HYu.
  claim HuA: u :e 2 :^: A. { exact (hl_rep_Subq (2 :^: A) l1 u Hu). }
  claim H4: hl_IN (2 :^: A) u l1 = 1. { apply (hl_IN_compat (2 :^: A) H2ne u HuA l1 H1). assume _ H6. exact (H6 Hu). }
  claim HvU: v :e hl_rep A u. { apply (hl_IN_compat A HA v HvA u HuA). assume H6 _. exact (H6 (H u HuA H4)). }
  rewrite HYu. exact HvU.
- let v. assume Hv. apply (SepE A (fun x => forall Y :e hl_rep2 A l1, x :e Y) v Hv). assume HvA H.
  apply (SepI A (fun x => forall u :e 2 :^: A, hl_IN (2 :^: A) u l1 = 1 -> hl_IN A x u = 1) v HvA). let u. assume Hu H4.
  claim HuR: u :e hl_rep (2 :^: A) l1. { apply (hl_IN_compat (2 :^: A) H2ne u Hu l1 H1). assume H6 _. exact (H6 H4). }
  claim HvU: v :e hl_rep A u. { exact (H (hl_rep A u) (ReplI (hl_rep (2 :^: A) l1) (fun u => hl_rep A u) u HuR)). }
  apply (hl_IN_compat A HA v HvA u Hu). assume _ H6. exact (H6 HvU).
Qed.

// ---- integer quotient and remainder: existence and uniqueness ----
Theorem int_divmod_ex : forall x y :e int, y <> 0 -> exists q :e int, exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r.
let x. assume Hx. let y. assume Hy Hne.
claim Hnat: forall n :e omega, n <> 0 -> exists q :e int, exists r :e int, 0 <= r /\ r < abs_SNo n /\ x = q * n + r.
{ let n. assume Hn Hn0.
  claim Hn': n :e omega :\: {0}. { apply (setminusI omega {0} n Hn). assume H. exact (Hn0 (SingE 0 n H)). }
  apply (quotient_remainder_int n Hn' x Hx). let q. assume Hq0. apply Hq0. assume Hq Hr0. apply Hr0. let r. assume Hr1. apply Hr1. assume Hr Hxqr.
  claim Hro: r :e omega. { exact (omega_TransSet n Hn r Hr). }
  witness q. apply andI.
  - exact Hq.
  - witness r. apply andI.
    + exact (Subq_omega_int r Hro).
    + apply and3I.
      * exact (omega_nonneg r Hro).
      * exact ((eq_sym_i (abs_SNo n) n (nonneg_abs_SNo n (omega_nonneg n Hn))) (fun hl__u hl__v => r < hl__u) (omega_In_SNoLt n Hn r Hr)).
      * exact Hxqr. }
claim Hneg: forall n :e omega, (- n) <> 0 -> exists q :e int, exists r :e int, 0 <= r /\ r < abs_SNo (- n) /\ x = q * (- n) + r.
{ let n. assume Hn. assume Hne'.
  claim Hn0: n <> 0. { assume H. apply Hne'. exact (eq_trans_i (- n) (- 0) 0 (f_equal (fun u => - u) n 0 H) minus_SNo_0). }
  apply (Hnat n Hn Hn0). let q. assume Hq0. apply Hq0. assume Hq Hr0. apply Hr0. let r. assume Hr1. apply Hr1. assume Hr H3. apply H3. assume H4 H5. apply H4. assume H6 H7.
  claim HqS: SNo q. { exact (int_SNo q Hq). }
  claim HnS: SNo n. { exact (omega_SNo n Hn). }
  witness (- q). apply andI.
  - exact (int_minus_SNo q Hq).
  - witness r. apply andI.
    + exact Hr.
    + apply and3I.
      * exact H6.
      * exact ((eq_sym_i (abs_SNo (- n)) (abs_SNo n) (abs_SNo_minus n HnS)) (fun hl__u hl__v => r < hl__u) H7).
      * exact (eq_trans_i x (q * n + r) ((- q) * (- n) + r) H5 (f_equal (fun u => u + r) (q * n) ((- q) * (- n)) (eq_sym_i ((- q) * (- n)) (q * n) (mul_SNo_minus_minus q n HqS HnS)))). }
exact (int_SNo_cases (fun y => y <> 0 -> exists q :e int, exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r) (fun n Hn => Hnat n Hn) Hneg y Hy Hne).
Qed.


Theorem int_divmod_unique : forall y :e int, y <> 0 -> forall q1 r1 q2 r2 :e int, 0 <= r1 -> r1 < abs_SNo y -> 0 <= r2 -> r2 < abs_SNo y -> q1 * y + r1 = q2 * y + r2 -> q1 = q2 /\ r1 = r2.
let y. assume Hy Hne.
claim HyS: SNo y. { exact (int_SNo y Hy). }
claim HaS: SNo (abs_SNo y). { exact (SNo_abs_SNo y HyS). }
claim Hdisc: forall q1 q2 :e int, q1 < q2 -> q1 + 1 <= q2.
{ let q1. assume Hq1. let q2. assume Hq2 Hlt.
  claim Hq1S: SNo q1. { exact (int_SNo q1 Hq1). }
  claim Hq2S: SNo q2. { exact (int_SNo q2 Hq2). }
  claim Hd: q2 + - q1 :e int. { exact (int_add_SNo q2 Hq2 (- q1) (int_minus_SNo q1 Hq1)). }
  claim HdS: SNo (q2 + - q1). { exact (SNo_add_SNo q2 (- q1) Hq2S (SNo_minus_SNo q1 Hq1S)). }
  claim Hdpos: 0 < q2 + - q1. { exact (SNoLt_minus_pos q1 q2 Hq1S Hq2S Hlt). }
  claim Hd1: 1 <= q2 + - q1.
  { apply (int_3_cases (q2 + - q1) Hd (1 <= q2 + - q1)).
    - let m. assume Hm Hdm.
      claim HmS: SNo (ordsucc m). { exact (omega_SNo (ordsucc m) (omega_ordsucc m Hm)). }
      claim Hms: 0 < ordsucc m. { exact (omega_In_SNoLt (ordsucc m) (omega_ordsucc m Hm) 0 (nat_0_in_ordsucc m (omega_nat_p m Hm))). }
      claim Hneg: (- ordsucc m) < 0. { exact (minus_SNo_0 (fun hl__u hl__v => (- ordsucc m) < hl__u) (minus_SNo_Lt_contra 0 (ordsucc m) SNo_0 HmS Hms)). }
      exact (FalseE (SNoLt_irref 0 (SNoLt_tra 0 (q2 + - q1) 0 SNo_0 HdS SNo_0 Hdpos ((eq_sym_i (q2 + - q1) (- ordsucc m) Hdm) (fun hl__u hl__v => hl__u < 0) Hneg))) (1 <= q2 + - q1)).
    - assume Hd0. exact (FalseE (SNoLt_irref 0 (Hd0 (fun hl__u hl__v => 0 < hl__u) Hdpos)) (1 <= q2 + - q1)).
    - let m. assume Hm Hdm.
      claim H1: 1 <= ordsucc m.
      { exact ((add_SNo_1_ordsucc m Hm) (fun hl__u hl__v => 1 <= hl__u) ((add_SNo_0L 1 SNo_1) (fun hl__u hl__v => hl__u <= m + 1) (add_SNo_Le1 0 1 m SNo_0 SNo_1 (omega_SNo m Hm) (omega_nonneg m Hm)))). }
      exact ((eq_sym_i (q2 + - q1) (ordsucc m) Hdm) (fun hl__u hl__v => 1 <= hl__u) H1). }
  exact ((add_SNo_com 1 q1 SNo_1 Hq1S) (fun hl__u hl__v => hl__u <= q2) (add_SNo_minus_Le2 q2 q1 1 Hq2S Hq1S SNo_1 Hd1)). }
claim Hlt: forall q1 r1 q2 r2 :e int, 0 <= r1 -> r1 < abs_SNo y -> 0 <= r2 -> r2 < abs_SNo y -> q1 * y + r1 = q2 * y + r2 -> q1 < q2 -> False.
{ let q1. assume Hq1. let r1. assume Hr1. let q2. assume Hq2. let r2. assume Hr2. assume H01 Hr1a H02 Hr2a E Hlt.
  claim Hq1S: SNo q1. { exact (int_SNo q1 Hq1). }
  claim Hq2S: SNo q2. { exact (int_SNo q2 Hq2). }
  claim Hr1S: SNo r1. { exact (int_SNo r1 Hr1). }
  claim Hr2S: SNo r2. { exact (int_SNo r2 Hr2). }
  claim Hq1y: SNo (q1 * y). { exact (SNo_mul_SNo q1 y Hq1S HyS). }
  claim Hq2y: SNo (q2 * y). { exact (SNo_mul_SNo q2 y Hq2S HyS). }
  claim Hq11S: SNo (q1 + 1). { exact (SNo_add_SNo q1 1 Hq1S SNo_1). }
  claim Hq11y: SNo ((q1 + 1) * y). { exact (SNo_mul_SNo (q1 + 1) y Hq11S HyS). }
  claim Hq1yy: SNo (q1 * y + y). { exact (SNo_add_SNo (q1 * y) y Hq1y HyS). }
  claim Hq12: q1 + 1 <= q2. { exact (Hdisc q1 Hq1 q2 Hq2 Hlt). }
  claim Hd: (q1 + 1) * y = q1 * y + y. { exact (eq_trans_i ((q1 + 1) * y) (q1 * y + 1 * y) (q1 * y + y) (mul_SNo_distrR q1 1 y Hq1S SNo_1 HyS) (f_equal (fun u => q1 * y + u) (1 * y) y (mul_SNo_oneL y HyS))). }
  claim Hcase1: y < 0 -> False.
  { assume Hyneg.
    claim Ha: abs_SNo y = - y. { exact (neg_abs_SNo y HyS Hyneg). }
    claim Hm: q2 * y <= (q1 + 1) * y.
    { exact (SNoLeE (q1 + 1) q2 Hq11S Hq2S Hq12 (q2 * y <= (q1 + 1) * y)
        (fun Hs : q1 + 1 < q2 => SNoLtLe (q2 * y) ((q1 + 1) * y) ((mul_SNo_com y (q1 + 1) HyS Hq11S) (fun hl__u hl__v => q2 * y < hl__u) ((mul_SNo_com y q2 HyS Hq2S) (fun hl__u hl__v => hl__u < y * (q1 + 1)) (neg_mul_SNo_Lt y q2 (q1 + 1) HyS Hyneg Hq2S Hq11S Hs))))
        (fun Hs : q1 + 1 = q2 => (f_equal (fun u => u * y) (q1 + 1) q2 Hs) (fun hl__u hl__v => hl__u <= (q1 + 1) * y) (SNoLe_ref ((q1 + 1) * y)))). }
    claim H1: q2 * y + r2 <= (q1 * y + y) + r2. { exact (Hd (fun hl__u hl__v => q2 * y + r2 <= hl__u + r2) (add_SNo_Le1 (q2 * y) r2 ((q1 + 1) * y) Hq2y Hr2S Hq11y Hm)). }
    claim H2: (q1 * y + y) + r2 < (q1 * y + y) + abs_SNo y. { exact (add_SNo_Lt2 (q1 * y + y) r2 (abs_SNo y) Hq1yy Hr2S HaS Hr2a). }
    claim H3: (q1 * y + y) + abs_SNo y = q1 * y. { exact (eq_trans_i ((q1 * y + y) + abs_SNo y) ((q1 * y + y) + - y) (q1 * y) (f_equal (fun u => (q1 * y + y) + u) (abs_SNo y) (- y) Ha) (add_SNo_minus_R2 (q1 * y) y Hq1y HyS)). }
    claim H4: q1 * y <= q1 * y + r1. { exact ((add_SNo_0R (q1 * y) Hq1y) (fun hl__u hl__v => hl__u <= q1 * y + r1) (add_SNo_Le2 (q1 * y) 0 r1 Hq1y SNo_0 Hr1S H01)). }
    claim H5: q2 * y + r2 < q1 * y + r1.
    { exact (SNoLtLe_tra (q2 * y + r2) (q1 * y) (q1 * y + r1) (SNo_add_SNo (q2 * y) r2 Hq2y Hr2S) Hq1y (SNo_add_SNo (q1 * y) r1 Hq1y Hr1S) (SNoLeLt_tra (q2 * y + r2) ((q1 * y + y) + r2) (q1 * y) (SNo_add_SNo (q2 * y) r2 Hq2y Hr2S) (SNo_add_SNo (q1 * y + y) r2 Hq1yy Hr2S) Hq1y H1 (H3 (fun hl__u hl__v => (q1 * y + y) + r2 < hl__u) H2)) H4). }
    exact (SNoLt_irref (q2 * y + r2) (E (fun hl__u hl__v => q2 * y + r2 < hl__u) H5)). }
  claim Hcase2: 0 <= y -> False.
  { assume Hy0.
    claim Ha: abs_SNo y = y. { exact (nonneg_abs_SNo y Hy0). }
    claim Hm: (q1 + 1) * y <= q2 * y.
    { claim H1: y * (q1 + 1) <= y * q2. { exact (nonneg_mul_SNo_Le y (q1 + 1) q2 HyS Hy0 Hq11S Hq2S Hq12). }
      exact ((mul_SNo_com y q2 HyS Hq2S) (fun hl__u hl__v => (q1 + 1) * y <= hl__u) ((mul_SNo_com y (q1 + 1) HyS Hq11S) (fun hl__u hl__v => hl__u <= y * q2) H1)). }
    claim H1: q1 * y + r1 < q1 * y + y. { exact (Ha (fun hl__u hl__v => q1 * y + r1 < q1 * y + hl__u) (add_SNo_Lt2 (q1 * y) r1 (abs_SNo y) Hq1y Hr1S HaS Hr1a)). }
    claim H2: q1 * y + y <= q2 * y. { exact (Hd (fun hl__u hl__v => hl__u <= q2 * y) Hm). }
    claim H3: q2 * y <= q2 * y + r2. { exact ((add_SNo_0R (q2 * y) Hq2y) (fun hl__u hl__v => hl__u <= q2 * y + r2) (add_SNo_Le2 (q2 * y) 0 r2 Hq2y SNo_0 Hr2S H02)). }
    claim H5: q1 * y + r1 < q2 * y + r2.
    { exact (SNoLtLe_tra (q1 * y + r1) (q1 * y + y) (q2 * y + r2) (SNo_add_SNo (q1 * y) r1 Hq1y Hr1S) Hq1yy (SNo_add_SNo (q2 * y) r2 Hq2y Hr2S) H1 (SNoLe_tra (q1 * y + y) (q2 * y) (q2 * y + r2) Hq1yy Hq2y (SNo_add_SNo (q2 * y) r2 Hq2y Hr2S) H2 H3)). }
    exact (SNoLt_irref (q2 * y + r2) (E (fun hl__u hl__v => hl__u < q2 * y + r2) H5)). }
  exact (SNoLtLe_or y 0 HyS SNo_0 False Hcase1 Hcase2). }
let q1. assume Hq1. let r1. assume Hr1. let q2. assume Hq2. let r2. assume Hr2. assume H01 Hr1a H02 Hr2a E.
claim Hq: q1 = q2.
{ apply (SNoLt_trichotomy_or_impred q1 q2 (int_SNo q1 Hq1) (int_SNo q2 Hq2) (q1 = q2)).
  - assume H. exact (FalseE (Hlt q1 Hq1 r1 Hr1 q2 Hq2 r2 Hr2 H01 Hr1a H02 Hr2a E H) (q1 = q2)).
  - assume H. exact H.
  - assume H. exact (FalseE (Hlt q2 Hq2 r2 Hr2 q1 Hq1 r1 Hr1 H02 Hr2a H01 Hr1a (eq_sym_i (q1 * y + r1) (q2 * y + r2) E) H) (q1 = q2)). }
apply andI.
- exact Hq.
- claim E2: q1 * y + r1 = q1 * y + r2. { exact (eq_trans_i (q1 * y + r1) (q2 * y + r2) (q1 * y + r2) E (f_equal (fun u => u * y + r2) q2 q1 (eq_sym_i q1 q2 Hq))). }
  exact (add_SNo_cancel_L (q1 * y) r1 r2 (SNo_mul_SNo q1 y (int_SNo q1 Hq1) HyS) (int_SNo r1 Hr1) (int_SNo r2 Hr2) E2).
Qed.

// ---- native integer division: characterisation ----
Theorem div_int_0 : forall x:set, div_int x 0 = 0.
let x. exact (If_i_1 (0 = 0) 0 (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo 0 /\ x = q * 0 + r)) (fun q H => H)).
Qed.

Theorem rem_int_0 : forall x:set, rem_int x 0 = x.
let x. exact (If_i_1 (0 = 0) x (x + - div_int x 0 * 0) (fun q H => H)).
Qed.

Theorem div_mod_int : forall x y :e int, y <> 0 -> div_int x y :e int /\ 0 <= rem_int x y /\ rem_int x y < abs_SNo y /\ x = div_int x y * y + rem_int x y.
let x. assume Hx. let y. assume Hy Hne.
claim HyS: SNo y. { exact (int_SNo y Hy). }
claim Hd: div_int x y = (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)). { exact (If_i_0 (y = 0) 0 (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) Hne). }
claim HP: (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y + r. { exact (Eps_i_ex (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r) (int_divmod_ex x Hx y Hy Hne)). }
apply HP. assume HqI Hr. apply Hr. let r0. assume Hr0. apply Hr0. assume Hr0I H3. apply H3. assume H4 H5. apply H4. assume H6 H7.
claim HqS: SNo (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)). { exact (int_SNo (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) HqI). }
claim HqyS: SNo ((Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y). { exact (SNo_mul_SNo (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) y HqS HyS). }
claim Hr0S: SNo r0. { exact (int_SNo r0 Hr0I). }
claim Hrem: rem_int x y = r0.
{ exact (eq_trans_i (rem_int x y) (x + - div_int x y * y) r0 (If_i_0 (y = 0) x (x + - div_int x y * y) Hne)
    (eq_trans_i (x + - div_int x y * y) (x + - (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) r0 (f_equal (fun u => x + - u * y) (div_int x y) (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) Hd)
      (eq_trans_i (x + - (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) (((Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y + r0) + - (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) r0 (f_equal (fun u => u + - (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) x ((Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y + r0) H5)
        (eq_trans_i (((Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y + r0) + - (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) ((r0 + (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) + - (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) r0 (f_equal (fun u => u + - (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) ((Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y + r0) (r0 + (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) (add_SNo_com ((Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) r0 HqyS Hr0S))
          (add_SNo_minus_R2 r0 ((Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y) Hr0S HqyS))))). }
apply andI.
- apply andI.
  + apply andI.
    * exact ((eq_sym_i (div_int x y) (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) Hd) (fun hl__u hl__v => hl__u :e int) HqI).
    * exact ((eq_sym_i (rem_int x y) r0 Hrem) (fun hl__u hl__v => 0 <= hl__u) H6).
  + exact ((eq_sym_i (rem_int x y) r0 Hrem) (fun hl__u hl__v => hl__u < abs_SNo y) H7).
- exact (eq_trans_i x ((Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) * y + r0) (div_int x y * y + rem_int x y) H5 (f_equal2 (fun u v => u * y + v) (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) (div_int x y) r0 (rem_int x y) (eq_sym_i (div_int x y) (Eps_i (fun q => q :e int /\ exists r :e int, 0 <= r /\ r < abs_SNo y /\ x = q * y + r)) Hd) (eq_sym_i (rem_int x y) r0 Hrem))).
Qed.

Theorem div_int_int : forall x y :e int, div_int x y :e int.
let x. assume Hx. let y. assume Hy. apply (xm (y = 0)).
- assume H0. exact ((eq_sym_i (div_int x y) 0 (eq_trans_i (div_int x y) (div_int x 0) 0 (f_equal (fun u => div_int x u) y 0 H0) (div_int_0 x))) (fun hl__u hl__v => hl__u :e int) (Subq_omega_int 0 (nat_p_omega 0 nat_0))).
- assume H0. apply (div_mod_int x Hx y Hy H0). assume Ha _. apply Ha. assume Hb _. apply Hb. assume HdI _. exact HdI.
Qed.

Theorem rem_int_int : forall x y :e int, rem_int x y :e int.
let x. assume Hx. let y. assume Hy. apply (xm (y = 0)).
- assume H0. exact ((eq_sym_i (rem_int x y) x (eq_trans_i (rem_int x y) (rem_int x 0) x (f_equal (fun u => rem_int x u) y 0 H0) (rem_int_0 x))) (fun hl__u hl__v => hl__u :e int) Hx).
- assume H0. exact ((eq_sym_i (rem_int x y) (x + - div_int x y * y) (If_i_0 (y = 0) x (x + - div_int x y * y) H0)) (fun hl__u hl__v => hl__u :e int) (int_add_SNo x Hx (- div_int x y * y) (int_minus_SNo (div_int x y * y) (int_mul_SNo (div_int x y) (div_int_int x Hx y Hy) y Hy)))).
Qed.

// ---- HOL Light's div/rem specification is satisfied by div_int/rem_int ----
Theorem hl_divmod_witness : exists g r :e hl_ty_int :^: hl_ty_int :^: hl_ty_int, forall m n :e hl_ty_int, n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (g m n = hl_int_of_num (hl_NUMERAL hl_zero) /\ r m n = m) \/ ~ n = hl_int_of_num (hl_NUMERAL hl_zero) /\ (hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (r m n) = 1 /\ (hl_int_lt (r m n) (hl_int_abs n) = 1 /\ m = hl_int_add (hl_int_mul (g m n) n) (r m n))).
claim Hz: (hl_int_of_num (hl_NUMERAL hl_zero)) = 0. { exact (eq_trans_i (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num 0) 0 (f_equal (fun y => hl_int_of_num y) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (hl_int_of_num_compat 0 (nat_p_omega 0 nat_0))). }
claim H0I: 0 :e int. { exact (Subq_omega_int 0 (nat_p_omega 0 nat_0)). }
claim HTi: forall x:set, x :e hl_ty_int -> x :e int. { let x. assume H. exact (hl_ty_int_native (fun hl__u hl__v => x :e hl__u) H). }
claim HG: (fun m :e hl_ty_int => fun n :e hl_ty_int => div_int m n) :e hl_ty_int :^: hl_ty_int :^: hl_ty_int.
{ exact (lam2_Pi hl_ty_int hl_ty_int hl_ty_int (fun m n => div_int m n) (fun m Hm n Hn => int_hl_ty (div_int m n) (div_int_int m (HTi m Hm) n (HTi n Hn)))). }
claim HR: (fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) :e hl_ty_int :^: hl_ty_int :^: hl_ty_int.
{ exact (lam2_Pi hl_ty_int hl_ty_int hl_ty_int (fun m n => rem_int m n) (fun m Hm n Hn => int_hl_ty (rem_int m n) (rem_int_int m (HTi m Hm) n (HTi n Hn)))). }
witness (fun m :e hl_ty_int => fun n :e hl_ty_int => div_int m n). apply andI.
- exact HG.
- witness (fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n). apply andI.
  + exact HR.
  + let m. assume Hm. let n. assume Hn.
    claim HmI: m :e int. { exact (HTi m Hm). }
    claim HnI: n :e int. { exact (HTi n Hn). }
    claim HG1: (fun m :e hl_ty_int => fun n :e hl_ty_int => div_int m n) m n = div_int m n. { exact (lam2_beta hl_ty_int hl_ty_int (fun m n => div_int m n) m Hm n Hn). }
    claim HR1: (fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) m n = rem_int m n. { exact (lam2_beta hl_ty_int hl_ty_int (fun m n => rem_int m n) m Hm n Hn). }
    apply (xm (n = 0)).
    * assume H0. apply orIL. apply andI.
      { exact (eq_trans_i n 0 (hl_int_of_num (hl_NUMERAL hl_zero)) H0 (eq_sym_i (hl_int_of_num (hl_NUMERAL hl_zero)) 0 Hz)). }
      { apply andI.
        - exact (eq_trans_i ((fun m :e hl_ty_int => fun n :e hl_ty_int => div_int m n) m n) (div_int m n) (hl_int_of_num (hl_NUMERAL hl_zero)) HG1 (eq_trans_i (div_int m n) (div_int m 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (f_equal (fun u => div_int m u) n 0 H0) (eq_trans_i (div_int m 0) 0 (hl_int_of_num (hl_NUMERAL hl_zero)) (div_int_0 m) (eq_sym_i (hl_int_of_num (hl_NUMERAL hl_zero)) 0 Hz)))).
        - exact (eq_trans_i ((fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) m n) (rem_int m n) m HR1 (eq_trans_i (rem_int m n) (rem_int m 0) m (f_equal (fun u => rem_int m u) n 0 H0) (rem_int_0 m))). }
    * assume H0. apply orIR. apply andI.
      { assume Hnz. exact (H0 (eq_trans_i n (hl_int_of_num (hl_NUMERAL hl_zero)) 0 Hnz Hz)). }
      { apply (div_mod_int m HmI n HnI H0). assume Ha Heq. apply Ha. assume Hb Hlt. apply Hb. assume HdI Hle.
        claim HremI: rem_int m n :e int. { exact (rem_int_int m HmI n HnI). }
        claim HabsI: hl_int_abs n :e int. { exact (setexp_ap int int hl_int_abs hl_int_abs_in n HnI). }
        claim HmulI: hl_int_mul (div_int m n) n :e int. { exact (setexp2_ap int int int hl_int_mul hl_int_mul_in (div_int m n) HdI n HnI). }
        apply andI.
        - claim T1: hl_int_le 0 (rem_int m n) = 1. { apply (hl_int_le_compat 0 H0I (rem_int m n) HremI). assume _ Hf. exact (Hf Hle). }
          exact ((eq_sym_i ((fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) m n) (rem_int m n) HR1) (fun hl__u hl__v => hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) hl__u = 1) (Hz (fun hl__u hl__v => hl_int_le hl__v (rem_int m n) = 1) T1)).
        - apply andI.
          + claim T2: hl_int_lt (rem_int m n) (hl_int_abs n) = 1. { apply (hl_int_lt_compat (rem_int m n) HremI (hl_int_abs n) HabsI). assume _ Hf. apply Hf. exact ((eq_sym_i (hl_int_abs n) (abs_SNo n) (hl_int_abs_compat n HnI)) (fun hl__u hl__v => rem_int m n < hl__u) Hlt). }
            exact ((eq_sym_i ((fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) m n) (rem_int m n) HR1) (fun hl__u hl__v => hl_int_lt hl__u (hl_int_abs n) = 1) T2).
          + exact (eq_trans_i m (div_int m n * n + rem_int m n) (hl_int_add (hl_int_mul ((fun m :e hl_ty_int => fun n :e hl_ty_int => div_int m n) m n) n) ((fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) m n)) Heq
              (eq_sym_i (hl_int_add (hl_int_mul ((fun m :e hl_ty_int => fun n :e hl_ty_int => div_int m n) m n) n) ((fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) m n)) (div_int m n * n + rem_int m n)
                (eq_trans_i (hl_int_add (hl_int_mul ((fun m :e hl_ty_int => fun n :e hl_ty_int => div_int m n) m n) n) ((fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) m n)) (hl_int_add (hl_int_mul (div_int m n) n) (rem_int m n)) (div_int m n * n + rem_int m n)
                  (f_equal2 (fun u v => hl_int_add (hl_int_mul u n) v) ((fun m :e hl_ty_int => fun n :e hl_ty_int => div_int m n) m n) (div_int m n) ((fun m :e hl_ty_int => fun n :e hl_ty_int => rem_int m n) m n) (rem_int m n) HG1 HR1)
                  (eq_trans_i (hl_int_add (hl_int_mul (div_int m n) n) (rem_int m n)) (hl_int_mul (div_int m n) n + rem_int m n) (div_int m n * n + rem_int m n)
                    (hl_int_add_compat (hl_int_mul (div_int m n) n) HmulI (rem_int m n) HremI)
                    (f_equal (fun u => u + rem_int m n) (hl_int_mul (div_int m n) n) (div_int m n * n) (hl_int_mul_compat (div_int m n) HdI n HnI)))))). }
Qed.

Theorem hl_div_compat : forall l1 l2 :e int, hl_div l1 l2 = div_int l1 l2.
claim Hz: (hl_int_of_num (hl_NUMERAL hl_zero)) = 0. { exact (eq_trans_i (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num 0) 0 (f_equal (fun y => hl_int_of_num y) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (hl_int_of_num_compat 0 (nat_p_omega 0 nat_0))). }
claim H0I: 0 :e int. { exact (Subq_omega_int 0 (nat_p_omega 0 nat_0)). }
claim HTi: forall x:set, x :e hl_ty_int -> x :e int. { let x. assume H. exact (hl_ty_int_native (fun hl__u hl__v => x :e hl__u) H). }
apply (hl_div_spec hl_divmod_witness). assume HP Hg. apply HP. let r. assume Hr0. apply Hr0. assume Hr HS.
let m. assume HmI. let n. assume HnI.
claim Hm: m :e hl_ty_int. { exact (int_hl_ty m HmI). }
claim Hn: n :e hl_ty_int. { exact (int_hl_ty n HnI). }
claim HdivI: hl_div m n :e int. { exact (HTi (hl_div m n) (setexp2_ap hl_ty_int hl_ty_int hl_ty_int hl_div Hg m Hm n Hn)). }
claim HrI: r m n :e int. { exact (HTi (r m n) (setexp2_ap hl_ty_int hl_ty_int hl_ty_int r Hr m Hm n Hn)). }
claim HabsI: hl_int_abs n :e int. { exact (setexp_ap int int hl_int_abs hl_int_abs_in n HnI). }
claim HmulI: hl_int_mul (hl_div m n) n :e int. { exact (setexp2_ap int int int hl_int_mul hl_int_mul_in (hl_div m n) HdivI n HnI). }
apply (HS m Hm n Hn).
- assume H. apply H. assume H0 H1. apply H1. assume H2 _.
  claim Hn0: n = 0. { exact (eq_trans_i n (hl_int_of_num (hl_NUMERAL hl_zero)) 0 H0 Hz). }
  exact (eq_trans_i (hl_div m n) (hl_int_of_num (hl_NUMERAL hl_zero)) (div_int m n) H2 (eq_trans_i (hl_int_of_num (hl_NUMERAL hl_zero)) 0 (div_int m n) Hz (eq_sym_i (div_int m n) 0 (eq_trans_i (div_int m n) (div_int m 0) 0 (f_equal (fun u => div_int m u) n 0 Hn0) (div_int_0 m))))).
- assume H. apply H. assume H0 H1. apply H1. assume H2 H3. apply H3. assume H4 H5.
  claim Hn0: n <> 0. { assume Hz'. apply H0. exact (eq_trans_i n 0 (hl_int_of_num (hl_NUMERAL hl_zero)) Hz' (eq_sym_i (hl_int_of_num (hl_NUMERAL hl_zero)) 0 Hz)). }
  claim Hle: 0 <= r m n. { apply (hl_int_le_compat 0 H0I (r m n) HrI). assume Hf _. exact (Hf (Hz (fun hl__u hl__v => hl_int_le hl__u (r m n) = 1) H2)). }
  claim Hlt: r m n < abs_SNo n. { apply (hl_int_lt_compat (r m n) HrI (hl_int_abs n) HabsI). assume Hf _. exact ((hl_int_abs_compat n HnI) (fun hl__u hl__v => r m n < hl__u) (Hf H4)). }
  claim Heq: m = hl_div m n * n + r m n.
  { exact (eq_trans_i m (hl_int_add (hl_int_mul (hl_div m n) n) (r m n)) (hl_div m n * n + r m n) H5
      (eq_trans_i (hl_int_add (hl_int_mul (hl_div m n) n) (r m n)) (hl_int_mul (hl_div m n) n + r m n) (hl_div m n * n + r m n)
        (hl_int_add_compat (hl_int_mul (hl_div m n) n) HmulI (r m n) HrI)
        (f_equal (fun u => u + r m n) (hl_int_mul (hl_div m n) n) (hl_div m n * n) (hl_int_mul_compat (hl_div m n) HdivI n HnI)))). }
  apply (div_mod_int m HmI n HnI Hn0). assume Ha Heq2. apply Ha. assume Hb Hlt2. apply Hb. assume HdI Hle2.
  apply (int_divmod_unique n HnI Hn0 (hl_div m n) HdivI (r m n) HrI (div_int m n) HdI (rem_int m n) (rem_int_int m HmI n HnI) Hle Hlt Hle2 Hlt2 (eq_trans_i (hl_div m n * n + r m n) m (div_int m n * n + rem_int m n) (eq_sym_i m (hl_div m n * n + r m n) Heq) Heq2)).
  assume H7 _. exact H7.
Qed.

Theorem hl_rem_compat : forall l1 l2 :e int, hl_rem l1 l2 = rem_int l1 l2.
claim Hz: (hl_int_of_num (hl_NUMERAL hl_zero)) = 0. { exact (eq_trans_i (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num 0) 0 (f_equal (fun y => hl_int_of_num y) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (hl_int_of_num_compat 0 (nat_p_omega 0 nat_0))). }
claim H0I: 0 :e int. { exact (Subq_omega_int 0 (nat_p_omega 0 nat_0)). }
claim HTi: forall x:set, x :e hl_ty_int -> x :e int. { let x. assume H. exact (hl_ty_int_native (fun hl__u hl__v => x :e hl__u) H). }
apply (hl_div_spec hl_divmod_witness). assume HP Hg.
apply (hl_rem_spec HP). assume HS Hrm.
let m. assume HmI. let n. assume HnI.
claim Hm: m :e hl_ty_int. { exact (int_hl_ty m HmI). }
claim Hn: n :e hl_ty_int. { exact (int_hl_ty n HnI). }
claim HdivI: hl_div m n :e int. { exact (HTi (hl_div m n) (setexp2_ap hl_ty_int hl_ty_int hl_ty_int hl_div Hg m Hm n Hn)). }
claim HremI: hl_rem m n :e int. { exact (HTi (hl_rem m n) (setexp2_ap hl_ty_int hl_ty_int hl_ty_int hl_rem Hrm m Hm n Hn)). }
claim HabsI: hl_int_abs n :e int. { exact (setexp_ap int int hl_int_abs hl_int_abs_in n HnI). }
claim HmulI: hl_int_mul (hl_div m n) n :e int. { exact (setexp2_ap int int int hl_int_mul hl_int_mul_in (hl_div m n) HdivI n HnI). }
claim Hdiv: hl_div m n = div_int m n. { exact (hl_div_compat m HmI n HnI). }
apply (HS m Hm n Hn).
- assume H. apply H. assume H0 H1. apply H1. assume _ H2.
  claim Hn0: n = 0. { exact (eq_trans_i n (hl_int_of_num (hl_NUMERAL hl_zero)) 0 H0 Hz). }
  exact (eq_trans_i (hl_rem m n) m (rem_int m n) H2 (eq_sym_i (rem_int m n) m (eq_trans_i (rem_int m n) (rem_int m 0) m (f_equal (fun u => rem_int m u) n 0 Hn0) (rem_int_0 m)))).
- assume H. apply H. assume H0 H1. apply H1. assume H2 H3. apply H3. assume H4 H5.
  claim Hn0: n <> 0. { assume Hz'. apply H0. exact (eq_trans_i n 0 (hl_int_of_num (hl_NUMERAL hl_zero)) Hz' (eq_sym_i (hl_int_of_num (hl_NUMERAL hl_zero)) 0 Hz)). }
  claim Hle: 0 <= hl_rem m n. { apply (hl_int_le_compat 0 H0I (hl_rem m n) HremI). assume Hf _. exact (Hf (Hz (fun hl__u hl__v => hl_int_le hl__u (hl_rem m n) = 1) H2)). }
  claim Hlt: hl_rem m n < abs_SNo n. { apply (hl_int_lt_compat (hl_rem m n) HremI (hl_int_abs n) HabsI). assume Hf _. exact ((hl_int_abs_compat n HnI) (fun hl__u hl__v => hl_rem m n < hl__u) (Hf H4)). }
  claim Heq: m = hl_div m n * n + hl_rem m n.
  { exact (eq_trans_i m (hl_int_add (hl_int_mul (hl_div m n) n) (hl_rem m n)) (hl_div m n * n + hl_rem m n) H5
      (eq_trans_i (hl_int_add (hl_int_mul (hl_div m n) n) (hl_rem m n)) (hl_int_mul (hl_div m n) n + hl_rem m n) (hl_div m n * n + hl_rem m n)
        (hl_int_add_compat (hl_int_mul (hl_div m n) n) HmulI (hl_rem m n) HremI)
        (f_equal (fun u => u + hl_rem m n) (hl_int_mul (hl_div m n) n) (hl_div m n * n) (hl_int_mul_compat (hl_div m n) HdivI n HnI)))). }
  apply (div_mod_int m HmI n HnI Hn0). assume Ha Heq2. apply Ha. assume Hb Hlt2. apply Hb. assume HdI Hle2.
  apply (int_divmod_unique n HnI Hn0 (hl_div m n) HdivI (hl_rem m n) HremI (div_int m n) HdI (rem_int m n) (rem_int_int m HmI n HnI) Hle Hlt Hle2 Hlt2 (eq_trans_i (hl_div m n * n + hl_rem m n) m (div_int m n * n + rem_int m n) (eq_sym_i m (hl_div m n * n + hl_rem m n) Heq) Heq2)).
  assume _ H7. exact H7.
Qed.

// ---- lists as finite sequences: constructors and structural recursion ----
Theorem hl_CONS_compat : forall A:set, A <> Empty -> forall l1 :e A, forall l2 :e finseq A, hl_CONS A l1 l2 = seq_cons l1 l2.
let A. assume HA. let x. assume Hx. let l. assume Hl.
exact (lam2_beta A (finseq A) (fun x l => seq_cons x l) x Hx l Hl).
Qed.

Theorem hl_LENGTH_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_LENGTH A l1 = seq_len l1.
let A. assume HA.
claim Hex: exists g :e omega :^: finseq A, g (hl_NIL A) = hl_NUMERAL hl_zero /\ forall h :e A, forall t :e finseq A, g (hl_CONS A h t) = hl_SUC (g t).
{ witness (fun l :e finseq A => seq_len l). apply andI.
  - prove (fun l :e finseq A => seq_len l) :e Pi_ l :e finseq A, omega. exact (lam_Pi (finseq A) (fun _ => omega) (fun l => seq_len l) (fun l Hl => seq_len_omega A l Hl)).
  - apply andI.
    + exact (eq_trans_i ((fun l :e finseq A => seq_len l) (hl_NIL A)) (seq_len seq_nil) (hl_NUMERAL hl_zero) (beta (finseq A) (fun l => seq_len l) seq_nil (seq_nil_finseq A)) (eq_trans_i (seq_len seq_nil) 0 (hl_NUMERAL hl_zero) seq_len_nil (eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero))).
    + let h. assume Hh. let t. assume Ht.
      claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
      claim Hcf: seq_cons h t :e finseq A. { exact (seq_cons_finseq A h Hh t Ht). }
      exact (eq_trans_i ((fun l :e finseq A => seq_len l) (hl_CONS A h t)) (seq_len (seq_cons h t)) (hl_SUC ((fun l :e finseq A => seq_len l) t))
        (eq_trans_i ((fun l :e finseq A => seq_len l) (hl_CONS A h t)) ((fun l :e finseq A => seq_len l) (seq_cons h t)) (seq_len (seq_cons h t)) (f_equal (fun u => (fun l :e finseq A => seq_len l) u) (hl_CONS A h t) (seq_cons h t) Hct) (beta (finseq A) (fun l => seq_len l) (seq_cons h t) Hcf))
        (eq_trans_i (seq_len (seq_cons h t)) (ordsucc (seq_len t)) (hl_SUC ((fun l :e finseq A => seq_len l) t)) (seq_len_cons A h Hh t Ht)
          (eq_sym_i (hl_SUC ((fun l :e finseq A => seq_len l) t)) (ordsucc (seq_len t)) (eq_trans_i (hl_SUC ((fun l :e finseq A => seq_len l) t)) (hl_SUC (seq_len t)) (ordsucc (seq_len t)) (f_equal (fun u => hl_SUC u) ((fun l :e finseq A => seq_len l) t) (seq_len t) (beta (finseq A) (fun l => seq_len l) t Ht)) (hl_SUC_ap (seq_len t) (seq_len_omega A t Ht)))))). }
apply (hl_LENGTH_spec A HA Hex). assume H12 Hin. apply H12. assume Hnil Hcons.
claim Hbase: hl_LENGTH A seq_nil = seq_len seq_nil.
{ exact (eq_trans_i (hl_LENGTH A seq_nil) (hl_NUMERAL hl_zero) (seq_len seq_nil) Hnil (eq_trans_i (hl_NUMERAL hl_zero) 0 (seq_len seq_nil) hl_NUMERAL_zero (eq_sym_i (seq_len seq_nil) 0 seq_len_nil))). }
claim Hstep: forall h :e A, forall t :e finseq A, hl_LENGTH A t = seq_len t -> hl_LENGTH A (seq_cons h t) = seq_len (seq_cons h t).
{ let h. assume Hh. let t. assume Ht IH.
  claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
  exact (eq_trans_i (hl_LENGTH A (seq_cons h t)) (hl_LENGTH A (hl_CONS A h t)) (seq_len (seq_cons h t)) (f_equal (fun u => hl_LENGTH A u) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (hl_CONS A h t) (seq_cons h t) Hct))
    (eq_trans_i (hl_LENGTH A (hl_CONS A h t)) (hl_SUC (hl_LENGTH A t)) (seq_len (seq_cons h t)) (Hcons h Hh t Ht)
      (eq_trans_i (hl_SUC (hl_LENGTH A t)) (hl_SUC (seq_len t)) (seq_len (seq_cons h t)) (f_equal (fun u => hl_SUC u) (hl_LENGTH A t) (seq_len t) IH)
        (eq_trans_i (hl_SUC (seq_len t)) (ordsucc (seq_len t)) (seq_len (seq_cons h t)) (hl_SUC_ap (seq_len t) (seq_len_omega A t Ht)) (eq_sym_i (seq_len (seq_cons h t)) (ordsucc (seq_len t)) (seq_len_cons A h Hh t Ht)))))). }
exact (seq_induct A (fun l => hl_LENGTH A l = seq_len l) Hbase Hstep).
Qed.

Theorem hl_APPEND_compat : forall A:set, A <> Empty -> forall l1 l2 :e finseq A, hl_APPEND A l1 l2 = seq_append l1 l2.
let A. assume HA.
claim Hex: exists g :e finseq A :^: finseq A :^: finseq A, (forall l :e finseq A, g (hl_NIL A) l = l) /\ forall h :e A, forall t l :e finseq A, g (hl_CONS A h t) l = hl_CONS A h (g t l).
{ witness (fun l :e finseq A => fun m :e finseq A => seq_append l m). apply andI.
  - exact (lam2_Pi (finseq A) (finseq A) (finseq A) (fun l m => seq_append l m) (fun l Hl m Hm => seq_append_finseq A l Hl m Hm)).
  - apply andI.
    + let m. assume Hm.
      exact (eq_trans_i ((fun l :e finseq A => fun m :e finseq A => seq_append l m) (hl_NIL A) m) (seq_append seq_nil m) m (lam2_beta (finseq A) (finseq A) (fun l m => seq_append l m) seq_nil (seq_nil_finseq A) m Hm) (seq_append_nil A m Hm)).
    + let h. assume Hh. let t. assume Ht. let m. assume Hm.
      claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
      claim Hcf: seq_cons h t :e finseq A. { exact (seq_cons_finseq A h Hh t Ht). }
      claim Haf: seq_append t m :e finseq A. { exact (seq_append_finseq A t Ht m Hm). }
      claim Hw: (fun l :e finseq A => fun m :e finseq A => seq_append l m) t m = seq_append t m. { exact (lam2_beta (finseq A) (finseq A) (fun l m => seq_append l m) t Ht m Hm). }
      exact (eq_trans_i ((fun l :e finseq A => fun m :e finseq A => seq_append l m) (hl_CONS A h t) m) (seq_append (seq_cons h t) m) (hl_CONS A h ((fun l :e finseq A => fun m :e finseq A => seq_append l m) t m))
        (eq_trans_i ((fun l :e finseq A => fun m :e finseq A => seq_append l m) (hl_CONS A h t) m) ((fun l :e finseq A => fun m :e finseq A => seq_append l m) (seq_cons h t) m) (seq_append (seq_cons h t) m) (f_equal (fun u => (fun l :e finseq A => fun m :e finseq A => seq_append l m) u m) (hl_CONS A h t) (seq_cons h t) Hct) (lam2_beta (finseq A) (finseq A) (fun l m => seq_append l m) (seq_cons h t) Hcf m Hm))
        (eq_trans_i (seq_append (seq_cons h t) m) (seq_cons h (seq_append t m)) (hl_CONS A h ((fun l :e finseq A => fun m :e finseq A => seq_append l m) t m)) (seq_append_cons A h Hh t Ht m Hm)
          (eq_sym_i (hl_CONS A h ((fun l :e finseq A => fun m :e finseq A => seq_append l m) t m)) (seq_cons h (seq_append t m))
            (eq_trans_i (hl_CONS A h ((fun l :e finseq A => fun m :e finseq A => seq_append l m) t m)) (hl_CONS A h (seq_append t m)) (seq_cons h (seq_append t m)) (f_equal (fun u => hl_CONS A h u) ((fun l :e finseq A => fun m :e finseq A => seq_append l m) t m) (seq_append t m) Hw) (hl_CONS_compat A HA h Hh (seq_append t m) Haf))))). }
apply (hl_APPEND_spec A HA Hex). assume H12 Hin. apply H12. assume Hnil Hcons.
claim Hbase: forall m :e finseq A, hl_APPEND A seq_nil m = seq_append seq_nil m.
{ let m. assume Hm. exact (eq_trans_i (hl_APPEND A seq_nil m) m (seq_append seq_nil m) (Hnil m Hm) (eq_sym_i (seq_append seq_nil m) m (seq_append_nil A m Hm))). }
claim Hstep: forall h :e A, forall t :e finseq A, (forall m :e finseq A, hl_APPEND A t m = seq_append t m) -> forall m :e finseq A, hl_APPEND A (seq_cons h t) m = seq_append (seq_cons h t) m.
{ let h. assume Hh. let t. assume Ht IH. let m. assume Hm.
  claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
  claim Haf: seq_append t m :e finseq A. { exact (seq_append_finseq A t Ht m Hm). }
  exact (eq_trans_i (hl_APPEND A (seq_cons h t) m) (hl_APPEND A (hl_CONS A h t) m) (seq_append (seq_cons h t) m) (f_equal (fun u => hl_APPEND A u m) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (hl_CONS A h t) (seq_cons h t) Hct))
    (eq_trans_i (hl_APPEND A (hl_CONS A h t) m) (hl_CONS A h (hl_APPEND A t m)) (seq_append (seq_cons h t) m) (Hcons h Hh t Ht m Hm)
      (eq_trans_i (hl_CONS A h (hl_APPEND A t m)) (hl_CONS A h (seq_append t m)) (seq_append (seq_cons h t) m) (f_equal (fun u => hl_CONS A h u) (hl_APPEND A t m) (seq_append t m) (IH m Hm))
        (eq_trans_i (hl_CONS A h (seq_append t m)) (seq_cons h (seq_append t m)) (seq_append (seq_cons h t) m) (hl_CONS_compat A HA h Hh (seq_append t m) Haf) (eq_sym_i (seq_append (seq_cons h t) m) (seq_cons h (seq_append t m)) (seq_append_cons A h Hh t Ht m Hm)))))). }
exact (seq_induct A (fun l => forall m :e finseq A, hl_APPEND A l m = seq_append l m) Hbase Hstep).
Qed.

Theorem hl_MAP_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e B :^: A, forall f1:set -> set, (forall x :e A, l1 x = f1 x) -> forall l2 :e finseq A, hl_MAP A B l1 l2 = seq_map f1 l2.
let A B. assume HA HB.
claim Hex: exists g :e finseq B :^: finseq A :^: (B :^: A), (forall f :e B :^: A, g f (hl_NIL A) = hl_NIL B) /\ forall f :e B :^: A, forall h :e A, forall t :e finseq A, g f (hl_CONS A h t) = hl_CONS B (f h) (g f t).
{ witness (fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l). apply andI.
  - exact (lam2_Pi (B :^: A) (finseq A) (finseq B) (fun f l => seq_map (fun x => f x) l) (fun f Hf l Hl => seq_map_finseq A B (fun x => f x) (fun x Hx => setexp_ap A B f Hf x Hx) l Hl)).
  - apply andI.
    + let f. assume Hf.
      exact (eq_trans_i ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f (hl_NIL A)) (seq_map (fun x => f x) seq_nil) (hl_NIL B) (lam2_beta (B :^: A) (finseq A) (fun f l => seq_map (fun x => f x) l) f Hf seq_nil (seq_nil_finseq A)) (seq_map_nil (fun x => f x))).
    + let f. assume Hf. let h. assume Hh. let t. assume Ht.
      claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
      claim Hcf: seq_cons h t :e finseq A. { exact (seq_cons_finseq A h Hh t Ht). }
      claim Hfh: f h :e B. { exact (setexp_ap A B f Hf h Hh). }
      claim Hmf: seq_map (fun x => f x) t :e finseq B. { exact (seq_map_finseq A B (fun x => f x) (fun x Hx => setexp_ap A B f Hf x Hx) t Ht). }
      claim Hw: (fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f t = seq_map (fun x => f x) t. { exact (lam2_beta (B :^: A) (finseq A) (fun f l => seq_map (fun x => f x) l) f Hf t Ht). }
      exact (eq_trans_i ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f (hl_CONS A h t)) (seq_map (fun x => f x) (seq_cons h t)) (hl_CONS B (f h) ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f t))
        (eq_trans_i ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f (hl_CONS A h t)) ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f (seq_cons h t)) (seq_map (fun x => f x) (seq_cons h t)) (f_equal (fun u => (fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f u) (hl_CONS A h t) (seq_cons h t) Hct) (lam2_beta (B :^: A) (finseq A) (fun f l => seq_map (fun x => f x) l) f Hf (seq_cons h t) Hcf))
        (eq_trans_i (seq_map (fun x => f x) (seq_cons h t)) (seq_cons (f h) (seq_map (fun x => f x) t)) (hl_CONS B (f h) ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f t)) (seq_map_cons A (fun x => f x) h Hh t Ht)
          (eq_sym_i (hl_CONS B (f h) ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f t)) (seq_cons (f h) (seq_map (fun x => f x) t))
            (eq_trans_i (hl_CONS B (f h) ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f t)) (hl_CONS B (f h) (seq_map (fun x => f x) t)) (seq_cons (f h) (seq_map (fun x => f x) t)) (f_equal (fun u => hl_CONS B (f h) u) ((fun f :e B :^: A => fun l :e finseq A => seq_map (fun x => f x) l) f t) (seq_map (fun x => f x) t) Hw) (hl_CONS_compat B HB (f h) Hfh (seq_map (fun x => f x) t) Hmf))))). }
apply (hl_MAP_spec A HA B HB Hex). assume H12 Hin. apply H12. assume Hnil Hcons.
let f. assume Hf. let f1. assume Hf1.
claim Hbase: hl_MAP A B f seq_nil = seq_map f1 seq_nil.
{ exact (eq_trans_i (hl_MAP A B f seq_nil) (hl_NIL B) (seq_map f1 seq_nil) (Hnil f Hf) (eq_sym_i (seq_map f1 seq_nil) seq_nil (seq_map_nil f1))). }
claim Hstep: forall h :e A, forall t :e finseq A, hl_MAP A B f t = seq_map f1 t -> hl_MAP A B f (seq_cons h t) = seq_map f1 (seq_cons h t).
{ let h. assume Hh. let t. assume Ht IH.
  claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
  claim Hfh: f h :e B. { exact (setexp_ap A B f Hf h Hh). }
  claim Hmf: seq_map f1 t :e finseq B. { exact (seq_map_finseq A B f1 (fun x Hx => (Hf1 x Hx) (fun hl__u hl__v => hl__u :e B) (setexp_ap A B f Hf x Hx)) t Ht). }
  exact (eq_trans_i (hl_MAP A B f (seq_cons h t)) (hl_MAP A B f (hl_CONS A h t)) (seq_map f1 (seq_cons h t)) (f_equal (fun u => hl_MAP A B f u) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (hl_CONS A h t) (seq_cons h t) Hct))
    (eq_trans_i (hl_MAP A B f (hl_CONS A h t)) (hl_CONS B (f h) (hl_MAP A B f t)) (seq_map f1 (seq_cons h t)) (Hcons f Hf h Hh t Ht)
      (eq_trans_i (hl_CONS B (f h) (hl_MAP A B f t)) (hl_CONS B (f h) (seq_map f1 t)) (seq_map f1 (seq_cons h t)) (f_equal (fun u => hl_CONS B (f h) u) (hl_MAP A B f t) (seq_map f1 t) IH)
        (eq_trans_i (hl_CONS B (f h) (seq_map f1 t)) (seq_cons (f h) (seq_map f1 t)) (seq_map f1 (seq_cons h t)) (hl_CONS_compat B HB (f h) Hfh (seq_map f1 t) Hmf)
          (eq_trans_i (seq_cons (f h) (seq_map f1 t)) (seq_cons (f1 h) (seq_map f1 t)) (seq_map f1 (seq_cons h t)) (f_equal (fun u => seq_cons u (seq_map f1 t)) (f h) (f1 h) (Hf1 h Hh)) (eq_sym_i (seq_map f1 (seq_cons h t)) (seq_cons (f1 h) (seq_map f1 t)) (seq_map_cons A f1 h Hh t Ht))))))). }
exact (seq_induct A (fun l => hl_MAP A B f l = seq_map f1 l) Hbase Hstep).
Qed.

// ---- recursion equations for membership and universal predicates on sequences ----
Theorem seq_mem_nil : forall x:set, ~ seq_mem x seq_nil.
let x. assume H. apply H. let i. assume Hi0. apply Hi0. assume Hi _.
exact (EmptyE i (seq_len_nil (fun hl__u hl__v => i :e hl__u) Hi)).
Qed.

Theorem seq_mem_cons : forall A:set, forall a :e A, forall l :e finseq A, forall x:set, seq_mem x (seq_cons a l) <-> x = a \/ seq_mem x l.
let A a. assume Ha. let l. assume Hl. let x.
claim Hlen: seq_len (seq_cons a l) = ordsucc (seq_len l). { exact (seq_len_cons A a Ha l Hl). }
claim HlenN: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
apply iffI.
- assume H. apply H. let i. assume Hi0. apply Hi0. assume Hi Hnth.
  claim Hi': i :e ordsucc (seq_len l). { exact (Hlen (fun hl__u hl__v => i :e hl__u) Hi). }
  claim HiN: nat_p i. { exact (omega_nat_p i (omega_TransSet (ordsucc (seq_len l)) (omega_ordsucc (seq_len l) (seq_len_omega A l Hl)) i Hi')). }
  apply (nat_inv i HiN).
  + assume Hi0'. apply orIL.
    exact (eq_trans_i x (seq_nth (seq_cons a l) i) a (eq_sym_i (seq_nth (seq_cons a l) i) x Hnth) (eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) 0) a (f_equal (fun u => seq_nth (seq_cons a l) u) i 0 Hi0') (seq_nth_cons_0 A a Ha l Hl))).
  + assume Hex. apply Hex. let j. assume Hj0. apply Hj0. assume Hjn Hij. apply orIR.
    claim Hjl: j :e seq_len l. { exact (ordsucc_in_ordsucc_inv (seq_len l) HlenN j (Hij (fun hl__u hl__v => hl__u :e ordsucc (seq_len l)) Hi')). }
    prove exists i :e seq_len l, seq_nth l i = x. witness j. apply andI.
    * exact Hjl.
    * exact (eq_trans_i (seq_nth l j) (seq_nth (seq_cons a l) (ordsucc j)) x (eq_sym_i (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (seq_nth_cons_S A a Ha l Hl j Hjl)) (eq_trans_i (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth (seq_cons a l) i) x (f_equal (fun u => seq_nth (seq_cons a l) u) (ordsucc j) i (eq_sym_i i (ordsucc j) Hij)) Hnth)).
- assume H. apply H.
  + assume Hxa. prove exists i :e seq_len (seq_cons a l), seq_nth (seq_cons a l) i = x. witness 0. apply andI.
    * exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => 0 :e hl__u) (nat_0_in_ordsucc (seq_len l) HlenN)).
    * exact (eq_trans_i (seq_nth (seq_cons a l) 0) a x (seq_nth_cons_0 A a Ha l Hl) (eq_sym_i x a Hxa)).
  + assume Hm. apply Hm. let j. assume Hj0. apply Hj0. assume Hjl Hnth. prove exists i :e seq_len (seq_cons a l), seq_nth (seq_cons a l) i = x. witness (ordsucc j). apply andI.
    * exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => ordsucc j :e hl__u) (nat_ordsucc_in_ordsucc (seq_len l) HlenN j Hjl)).
    * exact (eq_trans_i (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) x (seq_nth_cons_S A a Ha l Hl j Hjl) Hnth).
Qed.

Theorem seq_all_nil : forall P:set -> prop, seq_all P seq_nil.
let P. prove forall i :e seq_len seq_nil, P (seq_nth seq_nil i). let i. assume Hi. exact (FalseE (EmptyE i (seq_len_nil (fun hl__u hl__v => i :e hl__u) Hi)) (P (seq_nth seq_nil i))).
Qed.

Theorem seq_all_cons : forall A:set, forall a :e A, forall l :e finseq A, forall P:set -> prop, seq_all P (seq_cons a l) <-> P a /\ seq_all P l.
let A a. assume Ha. let l. assume Hl. let P.
claim Hlen: seq_len (seq_cons a l) = ordsucc (seq_len l). { exact (seq_len_cons A a Ha l Hl). }
claim HlenN: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
apply iffI.
- assume H. apply andI.
  + claim H0: 0 :e seq_len (seq_cons a l). { exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => 0 :e hl__u) (nat_0_in_ordsucc (seq_len l) HlenN)). }
    exact ((seq_nth_cons_0 A a Ha l Hl) (fun hl__u hl__v => P hl__u) (H 0 H0)).
  + prove forall j :e seq_len l, P (seq_nth l j). let j. assume Hjl.
    claim Hj: ordsucc j :e seq_len (seq_cons a l). { exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => ordsucc j :e hl__u) (nat_ordsucc_in_ordsucc (seq_len l) HlenN j Hjl)). }
    exact ((seq_nth_cons_S A a Ha l Hl j Hjl) (fun hl__u hl__v => P hl__u) (H (ordsucc j) Hj)).
- assume H. apply H. assume HPa Hall. prove forall i :e seq_len (seq_cons a l), P (seq_nth (seq_cons a l) i). let i. assume Hi.
  claim Hi': i :e ordsucc (seq_len l). { exact (Hlen (fun hl__u hl__v => i :e hl__u) Hi). }
  claim HiN: nat_p i. { exact (omega_nat_p i (omega_TransSet (ordsucc (seq_len l)) (omega_ordsucc (seq_len l) (seq_len_omega A l Hl)) i Hi')). }
  apply (nat_inv i HiN).
  + assume Hi0. exact ((eq_sym_i (seq_nth (seq_cons a l) i) a (eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) 0) a (f_equal (fun u => seq_nth (seq_cons a l) u) i 0 Hi0) (seq_nth_cons_0 A a Ha l Hl))) (fun hl__u hl__v => P hl__u) HPa).
  + assume Hex. apply Hex. let j. assume Hj0. apply Hj0. assume Hjn Hij.
    claim Hjl: j :e seq_len l. { exact (ordsucc_in_ordsucc_inv (seq_len l) HlenN j (Hij (fun hl__u hl__v => hl__u :e ordsucc (seq_len l)) Hi')). }
    exact ((eq_sym_i (seq_nth (seq_cons a l) i) (seq_nth l j) (eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (f_equal (fun u => seq_nth (seq_cons a l) u) i (ordsucc j) Hij) (seq_nth_cons_S A a Ha l Hl j Hjl))) (fun hl__u hl__v => P hl__u) (Hall j Hjl)).
Qed.

Theorem hl_MEM_compat : forall A:set, A <> Empty -> forall l1 :e A, forall l2 :e finseq A, hl_MEM A l1 l2 = 1 <-> seq_mem l1 l2.
let A. assume HA.
claim Hex: exists g :e 2 :^: finseq A :^: A, (forall x :e A, g x (hl_NIL A) = 1 <-> False) /\ forall h x :e A, forall t :e finseq A, g x (hl_CONS A h t) = 1 <-> x = h \/ g x t = 1.
{ witness (fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0). apply andI.
  - exact (lam2_Pi A (finseq A) 2 (fun x l => if seq_mem x l then 1 else 0) (fun x Hx l Hl => If_in_2 (seq_mem x l))).
  - apply andI.
    + let x. assume Hx.
      apply (iff_eq1_l ((fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x (hl_NIL A)) (if seq_mem x seq_nil then 1 else 0) (lam2_beta A (finseq A) (fun x l => if seq_mem x l then 1 else 0) x Hx seq_nil (seq_nil_finseq A)) False).
      apply (iff_trans ((if seq_mem x seq_nil then 1 else 0) = 1) (seq_mem x seq_nil) False (If_1_iff (seq_mem x seq_nil))).
      apply iffI.
      * assume H. exact (seq_mem_nil x H).
      * assume H. exact (FalseE H (seq_mem x seq_nil)).
    + let h. assume Hh. let x. assume Hx. let t. assume Ht.
      claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
      claim Hcf: seq_cons h t :e finseq A. { exact (seq_cons_finseq A h Hh t Ht). }
      claim Hwt: (fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x t = 1 <-> seq_mem x t.
      { exact (iff_eq1_l ((fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x t) (if seq_mem x t then 1 else 0) (lam2_beta A (finseq A) (fun x l => if seq_mem x l then 1 else 0) x Hx t Ht) (seq_mem x t) (If_1_iff (seq_mem x t))). }
      apply (iff_eq1_l ((fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x (hl_CONS A h t)) (if seq_mem x (seq_cons h t) then 1 else 0) (eq_trans_i ((fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x (hl_CONS A h t)) ((fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x (seq_cons h t)) (if seq_mem x (seq_cons h t) then 1 else 0) (f_equal (fun u => (fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x u) (hl_CONS A h t) (seq_cons h t) Hct) (lam2_beta A (finseq A) (fun x l => if seq_mem x l then 1 else 0) x Hx (seq_cons h t) Hcf)) (x = h \/ (fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x t = 1)).
      apply (iff_trans ((if seq_mem x (seq_cons h t) then 1 else 0) = 1) (seq_mem x (seq_cons h t)) (x = h \/ (fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x t = 1) (If_1_iff (seq_mem x (seq_cons h t)))).
      apply (iff_trans (seq_mem x (seq_cons h t)) (x = h \/ seq_mem x t) (x = h \/ (fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x t = 1) (seq_mem_cons A h Hh t Ht x)).
      exact (or_iff_cong (x = h) (x = h) (seq_mem x t) ((fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x t = 1) (iff_refl (x = h)) (iff_sym ((fun x :e A => fun l :e finseq A => if seq_mem x l then 1 else 0) x t = 1) (seq_mem x t) Hwt)). }
apply (hl_MEM_spec A HA Hex). assume H12 Hin. apply H12. assume Hnil Hcons.
claim Hbase: forall x :e A, hl_MEM A x seq_nil = 1 <-> seq_mem x seq_nil.
{ let x. assume Hx. apply iffI.
  - assume H. apply (Hnil x Hx). assume Hf _. exact (FalseE (Hf H) (seq_mem x seq_nil)).
  - assume H. exact (FalseE (seq_mem_nil x H) (hl_MEM A x seq_nil = 1)). }
claim Hstep: forall h :e A, forall t :e finseq A, (forall x :e A, hl_MEM A x t = 1 <-> seq_mem x t) -> forall x :e A, hl_MEM A x (seq_cons h t) = 1 <-> seq_mem x (seq_cons h t).
{ let h. assume Hh. let t. assume Ht IH. let x. assume Hx.
  claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
  apply (iff_eq1_l (hl_MEM A x (seq_cons h t)) (hl_MEM A x (hl_CONS A h t)) (f_equal (fun u => hl_MEM A x u) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (hl_CONS A h t) (seq_cons h t) Hct)) (seq_mem x (seq_cons h t))).
  apply (iff_trans (hl_MEM A x (hl_CONS A h t) = 1) (x = h \/ hl_MEM A x t = 1) (seq_mem x (seq_cons h t)) (Hcons h Hh x Hx t Ht)).
  apply (iff_trans (x = h \/ hl_MEM A x t = 1) (x = h \/ seq_mem x t) (seq_mem x (seq_cons h t)) (or_iff_cong (x = h) (x = h) (hl_MEM A x t = 1) (seq_mem x t) (iff_refl (x = h)) (IH x Hx))).
  exact (iff_sym (seq_mem x (seq_cons h t)) (x = h \/ seq_mem x t) (seq_mem_cons A h Hh t Ht x)). }
let x. assume Hx. let l. assume Hl.
exact (seq_induct A (fun l => forall x :e A, hl_MEM A x l = 1 <-> seq_mem x l) Hbase Hstep l Hl x Hx).
Qed.

Theorem hl_ALL_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall P1:set -> prop, (forall x :e A, l1 x = 1 <-> P1 x) -> forall l2 :e finseq A, hl_ALL A l1 l2 = 1 <-> seq_all P1 l2.
let A. assume HA.
claim Hex: exists g :e 2 :^: finseq A :^: (2 :^: A), (forall P :e 2 :^: A, g P (hl_NIL A) = 1 <-> True) /\ forall h :e A, forall P :e 2 :^: A, forall t :e finseq A, g P (hl_CONS A h t) = 1 <-> P h = 1 /\ g P t = 1.
{ witness (fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0). apply andI.
  - exact (lam2_Pi (2 :^: A) (finseq A) 2 (fun P l => if seq_all (fun x => P x = 1) l then 1 else 0) (fun P HP l Hl => If_in_2 (seq_all (fun x => P x = 1) l))).
  - apply andI.
    + let P. assume HP.
      apply (iff_eq1_l ((fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P (hl_NIL A)) (if seq_all (fun x => P x = 1) seq_nil then 1 else 0) (lam2_beta (2 :^: A) (finseq A) (fun P l => if seq_all (fun x => P x = 1) l then 1 else 0) P HP seq_nil (seq_nil_finseq A)) True).
      apply (iff_trans ((if seq_all (fun x => P x = 1) seq_nil then 1 else 0) = 1) (seq_all (fun x => P x = 1) seq_nil) True (If_1_iff (seq_all (fun x => P x = 1) seq_nil))).
      apply iffI.
      * assume _. exact (fun p H => H).
      * assume _. exact (seq_all_nil (fun x => P x = 1)).
    + let h. assume Hh. let P. assume HP. let t. assume Ht.
      claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
      claim Hcf: seq_cons h t :e finseq A. { exact (seq_cons_finseq A h Hh t Ht). }
      claim Hwt: (fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P t = 1 <-> seq_all (fun x => P x = 1) t.
      { exact (iff_eq1_l ((fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P t) (if seq_all (fun x => P x = 1) t then 1 else 0) (lam2_beta (2 :^: A) (finseq A) (fun P l => if seq_all (fun x => P x = 1) l then 1 else 0) P HP t Ht) (seq_all (fun x => P x = 1) t) (If_1_iff (seq_all (fun x => P x = 1) t))). }
      apply (iff_eq1_l ((fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P (hl_CONS A h t)) (if seq_all (fun x => P x = 1) (seq_cons h t) then 1 else 0) (eq_trans_i ((fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P (hl_CONS A h t)) ((fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P (seq_cons h t)) (if seq_all (fun x => P x = 1) (seq_cons h t) then 1 else 0) (f_equal (fun u => (fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P u) (hl_CONS A h t) (seq_cons h t) Hct) (lam2_beta (2 :^: A) (finseq A) (fun P l => if seq_all (fun x => P x = 1) l then 1 else 0) P HP (seq_cons h t) Hcf)) (P h = 1 /\ (fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P t = 1)).
      apply (iff_trans ((if seq_all (fun x => P x = 1) (seq_cons h t) then 1 else 0) = 1) (seq_all (fun x => P x = 1) (seq_cons h t)) (P h = 1 /\ (fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P t = 1) (If_1_iff (seq_all (fun x => P x = 1) (seq_cons h t)))).
      apply (iff_trans (seq_all (fun x => P x = 1) (seq_cons h t)) (P h = 1 /\ seq_all (fun x => P x = 1) t) (P h = 1 /\ (fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P t = 1) (seq_all_cons A h Hh t Ht (fun x => P x = 1))).
      exact (and_iff_cong (P h = 1) (P h = 1) (seq_all (fun x => P x = 1) t) ((fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P t = 1) (iff_refl (P h = 1)) (iff_sym ((fun P :e 2 :^: A => fun l :e finseq A => if seq_all (fun x => P x = 1) l then 1 else 0) P t = 1) (seq_all (fun x => P x = 1) t) Hwt)). }
apply (hl_ALL_spec A HA Hex). assume H12 Hin. apply H12. assume Hnil Hcons.
let l1. assume H1. let P1. assume Hp.
claim Hbase: hl_ALL A l1 seq_nil = 1 <-> seq_all P1 seq_nil.
{ apply iffI.
  - assume _. exact (seq_all_nil P1).
  - assume _. apply (Hnil l1 H1). assume _ Hb. exact (Hb (fun p H => H)). }
claim Hstep: forall h :e A, forall t :e finseq A, (hl_ALL A l1 t = 1 <-> seq_all P1 t) -> (hl_ALL A l1 (seq_cons h t) = 1 <-> seq_all P1 (seq_cons h t)).
{ let h. assume Hh. let t. assume Ht IH.
  claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
  apply (iff_eq1_l (hl_ALL A l1 (seq_cons h t)) (hl_ALL A l1 (hl_CONS A h t)) (f_equal (fun u => hl_ALL A l1 u) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (hl_CONS A h t) (seq_cons h t) Hct)) (seq_all P1 (seq_cons h t))).
  apply (iff_trans (hl_ALL A l1 (hl_CONS A h t) = 1) (l1 h = 1 /\ hl_ALL A l1 t = 1) (seq_all P1 (seq_cons h t)) (Hcons h Hh l1 H1 t Ht)).
  apply (iff_trans (l1 h = 1 /\ hl_ALL A l1 t = 1) (P1 h /\ seq_all P1 t) (seq_all P1 (seq_cons h t)) (and_iff_cong (l1 h = 1) (P1 h) (hl_ALL A l1 t = 1) (seq_all P1 t) (Hp h Hh) IH)).
  exact (iff_sym (seq_all P1 (seq_cons h t)) (P1 h /\ seq_all P1 t) (seq_all_cons A h Hh t Ht P1)). }
exact (seq_induct A (fun l => hl_ALL A l1 l = 1 <-> seq_all P1 l) Hbase Hstep).
Qed.

// ---- small compatibility batch: unit, options, integer >, arbitrary families ----
Theorem hl_one_compat : hl_one = 0.
exact (fun q H => H).
Qed.

Theorem hl_SOME_compat : forall A:set, A <> Empty -> forall l1 :e A, hl_SOME A l1 = Inj1 l1.
let A. assume HA. let x. assume Hx. exact (beta A (fun x => Inj1 x) x Hx).
Qed.

Theorem hl_int_gt_compat : forall l1 l2 :e int, hl_int_gt l1 l2 = 1 <-> l2 < l1.
let x. assume Hx. let y. assume Hy.
exact (iff_eq1_l (hl_int_gt x y) (hl_real_gt x y) (eq_trans_i (hl_int_gt x y) (hl_real_gt (hl_real_of_int x) (hl_real_of_int y)) (hl_real_gt x y) (hl_int_gt_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)) (f_equal2 (fun u v => hl_real_gt u v) (hl_real_of_int x) x (hl_real_of_int y) y (hl_real_of_int_compat x Hx) (hl_real_of_int_compat y Hy))) (y < x) (hl_real_gt_compat x (int_Subq_R x Hx) y (int_Subq_R y Hy))).
Qed.

Theorem hl_ARBITRARY_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: A), hl_ARBITRARY A l1 = 1 <-> True.
let A. assume HA. let l1. assume H1.
exact (iff_eq1_l (hl_ARBITRARY A l1) (if True then 1 else 0) (hl_ARBITRARY_unfold A l1 H1) True (If_1_iff True)).
Qed.

Theorem hl_has_sup_compat : forall l1 :e 2 :^: R, forall l2 :e R, hl_has_sup l1 l2 = 1 <-> is_lub (hl_rep R l1) l2.
let s. assume Hs. let b. assume Hb.
claim HRne: R <> Empty. { assume H. exact (EmptyE 0 (H (fun hl__u hl__v => 0 :e hl__u) real_0)). }
claim Hub: forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> upper_bound (hl_rep R s) c.
{ let c. assume Hc. prove (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> forall x :e hl_rep R s, x <= c.
  apply iffI.
  - assume H. let x. assume Hx.
    claim HxR: x :e R. { exact (hl_rep_Subq R s x Hx). }
    claim Hin: hl_IN R x s = 1. { apply (hl_IN_compat R HRne x HxR s Hs). assume _ H2. exact (H2 Hx). }
    apply (hl_real_le_compat x HxR c Hc). assume H2 _. exact (H2 (H x HxR Hin)).
  - assume H. let x. assume HxR. assume Hin.
    claim Hx: x :e hl_rep R s. { apply (hl_IN_compat R HRne x HxR s Hs). assume H2 _. exact (H2 Hin). }
    apply (hl_real_le_compat x HxR c Hc). assume _ H2. exact (H2 (H x Hx)). }
apply (iff_eq1_l (hl_has_sup s b) (if (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> hl_real_le b c = 1) then 1 else 0) (hl_has_sup_unfold s Hs b Hb) (is_lub (hl_rep R s) b)).
apply (iff_trans ((if (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> hl_real_le b c = 1) then 1 else 0) = 1) (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> hl_real_le b c = 1) (is_lub (hl_rep R s) b) (If_1_iff (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> hl_real_le b c = 1))).
prove (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le x c = 1) <-> hl_real_le b c = 1) <-> upper_bound (hl_rep R s) b /\ forall y :e R, upper_bound (hl_rep R s) y -> b <= y.
apply iffI.
- assume H. apply andI.
  + apply (Hub b Hb). assume H1 _. apply H1. apply (H b Hb). assume _ H2. apply H2. apply (hl_real_le_compat b Hb b Hb). assume _ H3. exact (H3 (SNoLe_ref b)).
  + let y. assume Hy Huy.
    claim H4: forall x :e R, hl_IN R x s = 1 -> hl_real_le x y = 1. { apply (Hub y Hy). assume _ H5. exact (H5 Huy). }
    apply (hl_real_le_compat b Hb y Hy). assume H5 _. apply H5. apply (H y Hy). assume H6 _. exact (H6 H4).
- assume H. apply H. assume H1 H2. let c. assume Hc. apply iffI.
  + assume H3.
    claim Hub_c: upper_bound (hl_rep R s) c. { apply (Hub c Hc). assume H5 _. exact (H5 H3). }
    apply (hl_real_le_compat b Hb c Hc). assume _ H5. exact (H5 (H2 c Hc Hub_c)).
  + assume H3.
    claim Hbc: b <= c. { apply (hl_real_le_compat b Hb c Hc). assume H5 _. exact (H5 H3). }
    apply (Hub c Hc). assume _ H5. apply H5. prove forall x :e hl_rep R s, x <= c. let x. assume Hx.
    exact (SNoLe_tra x b c (real_SNo x (hl_rep_Subq R s x Hx)) (real_SNo b Hb) (real_SNo c Hc) (H1 x Hx) Hbc).
Qed.

Theorem hl_has_inf_compat : forall l1 :e 2 :^: R, forall l2 :e R, hl_has_inf l1 l2 = 1 <-> is_glb (hl_rep R l1) l2.
let s. assume Hs. let b. assume Hb.
claim HRne: R <> Empty. { assume H. exact (EmptyE 0 (H (fun hl__u hl__v => 0 :e hl__u) real_0)). }
claim Hub: forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> lower_bound (hl_rep R s) c.
{ let c. assume Hc. prove (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> forall x :e hl_rep R s, c <= x.
  apply iffI.
  - assume H. let x. assume Hx.
    claim HxR: x :e R. { exact (hl_rep_Subq R s x Hx). }
    claim Hin: hl_IN R x s = 1. { apply (hl_IN_compat R HRne x HxR s Hs). assume _ H2. exact (H2 Hx). }
    apply (hl_real_le_compat c Hc x HxR). assume H2 _. exact (H2 (H x HxR Hin)).
  - assume H. let x. assume HxR. assume Hin.
    claim Hx: x :e hl_rep R s. { apply (hl_IN_compat R HRne x HxR s Hs). assume H2 _. exact (H2 Hin). }
    apply (hl_real_le_compat c Hc x HxR). assume _ H2. exact (H2 (H x Hx)). }
apply (iff_eq1_l (hl_has_inf s b) (if (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> hl_real_le c b = 1) then 1 else 0) (hl_has_inf_unfold s Hs b Hb) (is_glb (hl_rep R s) b)).
apply (iff_trans ((if (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> hl_real_le c b = 1) then 1 else 0) = 1) (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> hl_real_le c b = 1) (is_glb (hl_rep R s) b) (If_1_iff (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> hl_real_le c b = 1))).
prove (forall c :e R, (forall x :e R, hl_IN R x s = 1 -> hl_real_le c x = 1) <-> hl_real_le c b = 1) <-> lower_bound (hl_rep R s) b /\ forall y :e R, lower_bound (hl_rep R s) y -> y <= b.
apply iffI.
- assume H. apply andI.
  + apply (Hub b Hb). assume H1 _. apply H1. apply (H b Hb). assume _ H2. apply H2. apply (hl_real_le_compat b Hb b Hb). assume _ H3. exact (H3 (SNoLe_ref b)).
  + let y. assume Hy Huy.
    claim H4: forall x :e R, hl_IN R x s = 1 -> hl_real_le y x = 1. { apply (Hub y Hy). assume _ H5. exact (H5 Huy). }
    apply (hl_real_le_compat y Hy b Hb). assume H5 _. apply H5. apply (H y Hy). assume H6 _. exact (H6 H4).
- assume H. apply H. assume H1 H2. let c. assume Hc. apply iffI.
  + assume H3.
    claim Hub_c: lower_bound (hl_rep R s) c. { apply (Hub c Hc). assume H5 _. exact (H5 H3). }
    apply (hl_real_le_compat c Hc b Hb). assume _ H5. exact (H5 (H2 c Hc Hub_c)).
  + assume H3.
    claim Hbc: c <= b. { apply (hl_real_le_compat c Hc b Hb). assume H5 _. exact (H5 H3). }
    apply (Hub c Hc). assume _ H5. apply H5. prove forall x :e hl_rep R s, c <= x. let x. assume Hx.
    exact (SNoLe_tra c b x (real_SNo c Hc) (real_SNo b Hb) (real_SNo x (hl_rep_Subq R s x Hx)) Hbc (H1 x Hx)).
Qed.

Theorem hl_dimindex_compat : forall N:set, N <> Empty -> forall l1 :e 2 :^: N, hl_dimindex N l1 = dimindex N.
let N. assume HN. let l1. assume H1.
claim HU: hl_UNIV N :e 2 :^: N. { exact (hl_UNIV_in N HN). }
claim HrU: hl_rep N (hl_UNIV N) = N. { exact (hl_UNIV_compat N HN). }
claim HF2: hl_FINITE N (hl_UNIV N) :e 2. { exact (setexp_ap (2 :^: N) 2 (hl_FINITE N) (hl_FINITE_in N HN) (hl_UNIV N) HU). }
claim HFiff: hl_FINITE N (hl_UNIV N) = 1 <-> finite N. { exact (HrU (fun hl__u hl__v => hl_FINITE N (hl_UNIV N) = 1 <-> finite hl__u) (hl_FINITE_compat N HN (hl_UNIV N) HU)). }
claim HC: hl_CARD N (hl_UNIV N) :e omega. { exact (setexp_ap (2 :^: N) omega (hl_CARD N) (hl_CARD_in N HN) (hl_UNIV N) HU). }
claim H1o: hl_NUMERAL (hl_BIT1 hl_zero) :e omega. { exact ((eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 nat_1)). }
claim Hstep: hl_dimindex N l1 = if finite N then hl_CARD N (hl_UNIV N) else hl_NUMERAL (hl_BIT1 hl_zero).
{ exact (eq_trans_i (hl_dimindex N l1) (hl_COND omega (hl_FINITE N (hl_UNIV N)) (hl_CARD N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) (if finite N then hl_CARD N (hl_UNIV N) else hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex_unfold N l1 H1) (hl_COND_if omega (hl_FINITE N (hl_UNIV N)) HF2 (finite N) HFiff (hl_CARD N (hl_UNIV N)) HC (hl_NUMERAL (hl_BIT1 hl_zero)) H1o)). }
prove hl_dimindex N l1 = (if finite N then finite_cardinality N else 1).
apply (xm (finite N)).
- assume Hf.
  claim Hcard: hl_CARD N (hl_UNIV N) = finite_cardinality N.
  { exact (eq_trans_i (hl_CARD N (hl_UNIV N)) (finite_cardinality (hl_rep N (hl_UNIV N))) (finite_cardinality N) (hl_CARD_compat N HN (hl_UNIV N) HU ((eq_sym_i (hl_rep N (hl_UNIV N)) N HrU) (fun hl__u hl__v => finite hl__u) Hf)) (f_equal (fun u => finite_cardinality u) (hl_rep N (hl_UNIV N)) N HrU)). }
  exact (eq_trans_i (hl_dimindex N l1) (if finite N then hl_CARD N (hl_UNIV N) else hl_NUMERAL (hl_BIT1 hl_zero)) (if finite N then finite_cardinality N else 1) Hstep
    (eq_trans_i (if finite N then hl_CARD N (hl_UNIV N) else hl_NUMERAL (hl_BIT1 hl_zero)) (hl_CARD N (hl_UNIV N)) (if finite N then finite_cardinality N else 1) (If_i_1 (finite N) (hl_CARD N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) Hf)
      (eq_trans_i (hl_CARD N (hl_UNIV N)) (finite_cardinality N) (if finite N then finite_cardinality N else 1) Hcard (eq_sym_i (if finite N then finite_cardinality N else 1) (finite_cardinality N) (If_i_1 (finite N) (finite_cardinality N) 1 Hf))))).
- assume Hnf.
  exact (eq_trans_i (hl_dimindex N l1) (if finite N then hl_CARD N (hl_UNIV N) else hl_NUMERAL (hl_BIT1 hl_zero)) (if finite N then finite_cardinality N else 1) Hstep
    (eq_trans_i (if finite N then hl_CARD N (hl_UNIV N) else hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero)) (if finite N then finite_cardinality N else 1) (If_i_0 (finite N) (hl_CARD N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) Hnf)
      (eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 (if finite N then finite_cardinality N else 1) hl_one_numeral (eq_sym_i (if finite N then finite_cardinality N else 1) 1 (If_i_0 (finite N) (finite_cardinality N) 1 Hnf))))).
Qed.

Theorem hl_minimal_compat : forall l1 :e 2 :^: omega, forall P1:set -> prop, (forall x :e omega, l1 x = 1 <-> P1 x) -> hl_minimal l1 = choose_in omega (fun n:set => P1 n /\ forall m :e omega, P1 m -> n <= m).
let s. assume Hs. let P1. assume Hp.
claim HF: (fun n :e omega => if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0) :e 2 :^: omega.
{ prove (fun n :e omega => if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0) :e Pi_ n :e omega, 2.
  apply (lam_Pi omega (fun _ => 2) (fun n => if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0)).
  let n. assume _. exact (If_in_2 (s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1)). }
rewrite (hl_minimal_unfold s Hs).
rewrite (hl_select_eq omega (fun n :e omega => if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0) HF).
apply (choose_in_ext omega (fun n => (fun n :e omega => if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0) n = 1) (fun n:set => P1 n /\ forall m :e omega, P1 m -> n <= m)).
let n. assume Hn.
apply (iff_eq1_l ((fun n :e omega => if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0) n) (if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0) (beta omega (fun n => if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0) n Hn) (P1 n /\ forall m :e omega, P1 m -> n <= m)).
apply (iff_trans ((if s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1 then 1 else 0) = 1) (s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1) (P1 n /\ forall m :e omega, P1 m -> n <= m) (If_1_iff (s n = 1 /\ forall m :e omega, hl_lt m n = 1 -> ~ s m = 1))).
apply iffI.
- assume H. apply H. assume H1 H2. apply andI.
  + apply (Hp n Hn). assume H3 _. exact (H3 H1).
  + let m. assume Hm HPm.
    apply (SNoLtLe_or m n (omega_SNo m Hm) (omega_SNo n Hn)).
    * assume Hlt.
      claim Hl: hl_lt m n = 1. { apply (hl_lt_compat m Hm n Hn). assume _ H4. exact (H4 Hlt). }
      claim Hsm: s m = 1. { apply (Hp m Hm). assume _ H4. exact (H4 HPm). }
      exact (FalseE (H2 m Hm Hl Hsm) (n <= m)).
    * assume Hle. exact Hle.
- assume H. apply H. assume H1 H2. apply andI.
  + apply (Hp n Hn). assume _ H3. exact (H3 H1).
  + let m. assume Hm Hl. assume Hsm.
    claim HPm: P1 m. { apply (Hp m Hm). assume H4 _. exact (H4 Hsm). }
    claim Hlt: m < n. { apply (hl_lt_compat m Hm n Hn). assume H4 _. exact (H4 Hl). }
    exact (SNoLt_irref m (SNoLtLe_tra m n m (omega_SNo m Hm) (omega_SNo n Hn) (omega_SNo m Hm) Hlt (H2 m Hm HPm))).
Qed.

Theorem hl_UNION_OF_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), forall P1:set -> prop, (forall x :e 2 :^: (2 :^: A), l1 x = 1 <-> P1 (hl_rep2 A x)) -> forall l2 :e 2 :^: (2 :^: A), forall P2:set -> prop, (forall x :e 2 :^: A, l2 x = 1 <-> P2 (hl_rep A x)) -> forall l3 :e 2 :^: A, hl_UNION_OF A l1 l2 l3 = 1 <-> exists u c= Power A, P1 u /\ (forall c :e u, P2 c) /\ Union u = hl_rep A l3.
let A. assume HA. let l1. assume H1. let P1. assume Hp1. let l2. assume H2. let P2. assume Hp2. let l3. assume H3.
claim H2ne: 2 :^: A <> Empty. { exact (setexp_nonempty A 2 two_nonempty). }
apply (iff_eq1_l (hl_UNION_OF A l1 l2 l3) (if (exists u :e 2 :^: (2 :^: A), l1 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> l2 c = 1) /\ hl_UNIONS A u = l3)) then 1 else 0) (hl_UNION_OF_unfold A l1 H1 l2 H2 l3 H3) (exists u c= Power A, P1 u /\ (forall c :e u, P2 c) /\ (Union u) = hl_rep A l3)).
apply (iff_trans ((if (exists u :e 2 :^: (2 :^: A), l1 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> l2 c = 1) /\ hl_UNIONS A u = l3)) then 1 else 0) = 1) (exists u :e 2 :^: (2 :^: A), l1 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> l2 c = 1) /\ hl_UNIONS A u = l3)) (exists u c= Power A, P1 u /\ (forall c :e u, P2 c) /\ (Union u) = hl_rep A l3) (If_1_iff (exists u :e 2 :^: (2 :^: A), l1 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> l2 c = 1) /\ hl_UNIONS A u = l3)))).
apply iffI.
- assume H. apply H. let u. assume Hu0. apply Hu0. assume Hu Hc. apply Hc. assume Hl1 Hc2. apply Hc2. assume Hall Heq.
  witness (hl_rep2 A u). apply andI.
  + exact (hl_rep2_Subq A u).
  + apply andI.
    * apply andI.
      { apply (Hp1 u Hu). assume H4 _. exact (H4 Hl1). }
      { let c. assume Hc'. apply (ReplE_impred (hl_rep (2 :^: A) u) (fun v => hl_rep A v) c Hc'). let v. assume Hv Hcv.
        claim HvA: v :e 2 :^: A. { exact (hl_rep_Subq (2 :^: A) u v Hv). }
        claim Hin: hl_IN (2 :^: A) v u = 1. { apply (hl_IN_compat (2 :^: A) H2ne v HvA u Hu). assume _ H5. exact (H5 Hv). }
        claim HP: P2 (hl_rep A v). { apply (Hp2 v HvA). assume H5 _. exact (H5 (Hall v HvA Hin)). }
        exact ((eq_sym_i c (hl_rep A v) Hcv) (fun hl__u hl__v => P2 hl__u) HP). }
    * exact (eq_trans_i (Union (hl_rep2 A u)) (hl_rep A (hl_UNIONS A u)) (hl_rep A l3) (eq_sym_i (hl_rep A (hl_UNIONS A u)) (Union (hl_rep2 A u)) (hl_UNIONS_compat A HA u Hu)) (f_equal (fun w => hl_rep A w) (hl_UNIONS A u) l3 Heq)).
- assume H. apply H. let U. assume HU0. apply HU0. assume HU Hc. apply Hc. assume Hc12 Heq. apply Hc12. assume HP1 Hall.
  claim Hu: hl_chi2 A U :e 2 :^: (2 :^: A). { exact (hl_chi2_Pi A U). }
  claim Hr2: hl_rep2 A (hl_chi2 A U) = U. { exact (hl_rep2_chi2 A U HU). }
  witness (hl_chi2 A U). apply andI.
  + exact Hu.
  + apply andI.
    * apply (Hp1 (hl_chi2 A U) Hu). assume _ H4. apply H4. exact ((eq_sym_i (hl_rep2 A (hl_chi2 A U)) U Hr2) (fun hl__u hl__v => P1 hl__u) HP1).
    * apply andI.
      { let c. assume HcA. assume Hin.
        claim Hmem: hl_rep A c :e U. { apply (hl_IN_compat_pow A HA c HcA (hl_chi2 A U) Hu). assume H5 _. exact (Hr2 (fun hl__u hl__v => hl_rep A c :e hl__u) (H5 Hin)). }
        apply (Hp2 c HcA). assume _ H5. exact (H5 (Hall (hl_rep A c) Hmem)). }
      { claim HIu: hl_UNIONS A (hl_chi2 A U) :e 2 :^: A. { exact (setexp_ap (2 :^: (2 :^: A)) (2 :^: A) (hl_UNIONS A) (hl_UNIONS_in A HA) (hl_chi2 A U) Hu). }
        apply (hl_rep_inj A (hl_UNIONS A (hl_chi2 A U)) l3 HIu H3).
        exact (eq_trans_i (hl_rep A (hl_UNIONS A (hl_chi2 A U))) (Union (hl_rep2 A (hl_chi2 A U))) (hl_rep A l3) (hl_UNIONS_compat A HA (hl_chi2 A U) Hu) (eq_trans_i (Union (hl_rep2 A (hl_chi2 A U))) (Union U) (hl_rep A l3) (f_equal (fun w => (Union w)) (hl_rep2 A (hl_chi2 A U)) U Hr2) Heq)). }
Qed.

Theorem hl_INTERSECTION_OF_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: (2 :^: (2 :^: A)), forall P1:set -> prop, (forall x :e 2 :^: (2 :^: A), l1 x = 1 <-> P1 (hl_rep2 A x)) -> forall l2 :e 2 :^: (2 :^: A), forall P2:set -> prop, (forall x :e 2 :^: A, l2 x = 1 <-> P2 (hl_rep A x)) -> forall l3 :e 2 :^: A, hl_INTERSECTION_OF A l1 l2 l3 = 1 <-> exists u c= Power A, P1 u /\ (forall c :e u, P2 c) /\ {x :e A | forall Y :e u, x :e Y} = hl_rep A l3.
let A. assume HA. let l1. assume H1. let P1. assume Hp1. let l2. assume H2. let P2. assume Hp2. let l3. assume H3.
claim H2ne: 2 :^: A <> Empty. { exact (setexp_nonempty A 2 two_nonempty). }
apply (iff_eq1_l (hl_INTERSECTION_OF A l1 l2 l3) (if (exists u :e 2 :^: (2 :^: A), l1 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> l2 c = 1) /\ hl_INTERS A u = l3)) then 1 else 0) (hl_INTERSECTION_OF_unfold A l1 H1 l2 H2 l3 H3) (exists u c= Power A, P1 u /\ (forall c :e u, P2 c) /\ ({x :e A | forall Y :e u, x :e Y}) = hl_rep A l3)).
apply (iff_trans ((if (exists u :e 2 :^: (2 :^: A), l1 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> l2 c = 1) /\ hl_INTERS A u = l3)) then 1 else 0) = 1) (exists u :e 2 :^: (2 :^: A), l1 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> l2 c = 1) /\ hl_INTERS A u = l3)) (exists u c= Power A, P1 u /\ (forall c :e u, P2 c) /\ ({x :e A | forall Y :e u, x :e Y}) = hl_rep A l3) (If_1_iff (exists u :e 2 :^: (2 :^: A), l1 u = 1 /\ ((forall c :e 2 :^: A, hl_IN (2 :^: A) c u = 1 -> l2 c = 1) /\ hl_INTERS A u = l3)))).
apply iffI.
- assume H. apply H. let u. assume Hu0. apply Hu0. assume Hu Hc. apply Hc. assume Hl1 Hc2. apply Hc2. assume Hall Heq.
  witness (hl_rep2 A u). apply andI.
  + exact (hl_rep2_Subq A u).
  + apply andI.
    * apply andI.
      { apply (Hp1 u Hu). assume H4 _. exact (H4 Hl1). }
      { let c. assume Hc'. apply (ReplE_impred (hl_rep (2 :^: A) u) (fun v => hl_rep A v) c Hc'). let v. assume Hv Hcv.
        claim HvA: v :e 2 :^: A. { exact (hl_rep_Subq (2 :^: A) u v Hv). }
        claim Hin: hl_IN (2 :^: A) v u = 1. { apply (hl_IN_compat (2 :^: A) H2ne v HvA u Hu). assume _ H5. exact (H5 Hv). }
        claim HP: P2 (hl_rep A v). { apply (Hp2 v HvA). assume H5 _. exact (H5 (Hall v HvA Hin)). }
        exact ((eq_sym_i c (hl_rep A v) Hcv) (fun hl__u hl__v => P2 hl__u) HP). }
    * exact (eq_trans_i ({x :e A | forall Y :e (hl_rep2 A u), x :e Y}) (hl_rep A (hl_INTERS A u)) (hl_rep A l3) (eq_sym_i (hl_rep A (hl_INTERS A u)) ({x :e A | forall Y :e (hl_rep2 A u), x :e Y}) (hl_INTERS_compat A HA u Hu)) (f_equal (fun w => hl_rep A w) (hl_INTERS A u) l3 Heq)).
- assume H. apply H. let U. assume HU0. apply HU0. assume HU Hc. apply Hc. assume Hc12 Heq. apply Hc12. assume HP1 Hall.
  claim Hu: hl_chi2 A U :e 2 :^: (2 :^: A). { exact (hl_chi2_Pi A U). }
  claim Hr2: hl_rep2 A (hl_chi2 A U) = U. { exact (hl_rep2_chi2 A U HU). }
  witness (hl_chi2 A U). apply andI.
  + exact Hu.
  + apply andI.
    * apply (Hp1 (hl_chi2 A U) Hu). assume _ H4. apply H4. exact ((eq_sym_i (hl_rep2 A (hl_chi2 A U)) U Hr2) (fun hl__u hl__v => P1 hl__u) HP1).
    * apply andI.
      { let c. assume HcA. assume Hin.
        claim Hmem: hl_rep A c :e U. { apply (hl_IN_compat_pow A HA c HcA (hl_chi2 A U) Hu). assume H5 _. exact (Hr2 (fun hl__u hl__v => hl_rep A c :e hl__u) (H5 Hin)). }
        apply (Hp2 c HcA). assume _ H5. exact (H5 (Hall (hl_rep A c) Hmem)). }
      { claim HIu: hl_INTERS A (hl_chi2 A U) :e 2 :^: A. { exact (setexp_ap (2 :^: (2 :^: A)) (2 :^: A) (hl_INTERS A) (hl_INTERS_in A HA) (hl_chi2 A U) Hu). }
        apply (hl_rep_inj A (hl_INTERS A (hl_chi2 A U)) l3 HIu H3).
        exact (eq_trans_i (hl_rep A (hl_INTERS A (hl_chi2 A U))) ({x :e A | forall Y :e (hl_rep2 A (hl_chi2 A U)), x :e Y}) (hl_rep A l3) (hl_INTERS_compat A HA (hl_chi2 A U) Hu) (eq_trans_i ({x :e A | forall Y :e (hl_rep2 A (hl_chi2 A U)), x :e Y}) ({x :e A | forall Y :e U, x :e Y}) (hl_rep A l3) (f_equal (fun w => ({x :e A | forall Y :e w, x :e Y})) (hl_rep2 A (hl_chi2 A U)) U Hr2) Heq)). }
Qed.

// ---- function composition in meta positions: pointwise through hl_o_unfold ----
Theorem pw_o_pred : forall B C A:set, forall f :e C :^: B, forall g :e B :^: A, forall N:set -> prop, (forall x :e A, (fun x :e A => f (g x)) x = 1 <-> N x) -> forall x :e A, hl_o B C A f g x = 1 <-> N x.
let B C A f. assume Hf. let g. assume Hg. let N. assume H. let x. assume Hx.
exact (iff_eq1_l (hl_o B C A f g x) ((fun x :e A => f (g x)) x) (eq_trans_i (hl_o B C A f g x) (f (g x)) ((fun x :e A => f (g x)) x) (hl_o_unfold B C A f Hf g Hg x Hx) (eq_sym_i ((fun x :e A => f (g x)) x) (f (g x)) (beta A (fun x => f (g x)) x Hx))) (N x) (H x Hx)).
Qed.
Theorem pw_o_fun : forall B C A:set, forall f :e C :^: B, forall g :e B :^: A, forall N:set -> set, (forall x :e A, (fun x :e A => f (g x)) x = N x) -> forall x :e A, hl_o B C A f g x = N x.
let B C A f. assume Hf. let g. assume Hg. let N. assume H. let x. assume Hx.
exact (eq_trans_i (hl_o B C A f g x) ((fun x :e A => f (g x)) x) (N x) (eq_trans_i (hl_o B C A f g x) (f (g x)) ((fun x :e A => f (g x)) x) (hl_o_unfold B C A f Hf g Hg x Hx) (eq_sym_i ((fun x :e A => f (g x)) x) (f (g x)) (beta A (fun x => f (g x)) x Hx))) (H x Hx)).
Qed.

// ---- existential predicates on sequences ----
Theorem seq_ex_nil : forall P:set -> prop, ~ seq_ex P seq_nil.
let P. assume H. apply H. let i. assume Hi0. apply Hi0. assume Hi _.
exact (EmptyE i (seq_len_nil (fun hl__u hl__v => i :e hl__u) Hi)).
Qed.

Theorem seq_ex_cons : forall A:set, forall a :e A, forall l :e finseq A, forall P:set -> prop, seq_ex P (seq_cons a l) <-> P a \/ seq_ex P l.
let A a. assume Ha. let l. assume Hl. let P.
claim Hlen: seq_len (seq_cons a l) = ordsucc (seq_len l). { exact (seq_len_cons A a Ha l Hl). }
claim HlenN: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
apply iffI.
- assume H. apply H. let i. assume Hi0. apply Hi0. assume Hi HP.
  claim Hi': i :e ordsucc (seq_len l). { exact (Hlen (fun hl__u hl__v => i :e hl__u) Hi). }
  claim HiN: nat_p i. { exact (omega_nat_p i (omega_TransSet (ordsucc (seq_len l)) (omega_ordsucc (seq_len l) (seq_len_omega A l Hl)) i Hi')). }
  apply (nat_inv i HiN).
  + assume Hi0'. apply orIL.
    exact ((eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) 0) a (f_equal (fun u => seq_nth (seq_cons a l) u) i 0 Hi0') (seq_nth_cons_0 A a Ha l Hl)) (fun hl__u hl__v => P hl__u) HP).
  + assume Hex. apply Hex. let j. assume Hj0. apply Hj0. assume Hjn Hij. apply orIR.
    claim Hjl: j :e seq_len l. { exact (ordsucc_in_ordsucc_inv (seq_len l) HlenN j (Hij (fun hl__u hl__v => hl__u :e ordsucc (seq_len l)) Hi')). }
    prove exists i :e seq_len l, P (seq_nth l i). witness j. apply andI.
    * exact Hjl.
    * exact ((eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (f_equal (fun u => seq_nth (seq_cons a l) u) i (ordsucc j) Hij) (seq_nth_cons_S A a Ha l Hl j Hjl)) (fun hl__u hl__v => P hl__u) HP).
- assume H. apply H.
  + assume HPa. prove exists i :e seq_len (seq_cons a l), P (seq_nth (seq_cons a l) i). witness 0. apply andI.
    * exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => 0 :e hl__u) (nat_0_in_ordsucc (seq_len l) HlenN)).
    * exact ((eq_sym_i (seq_nth (seq_cons a l) 0) a (seq_nth_cons_0 A a Ha l Hl)) (fun hl__u hl__v => P hl__u) HPa).
  + assume Hm. apply Hm. let j. assume Hj0. apply Hj0. assume Hjl HP. prove exists i :e seq_len (seq_cons a l), P (seq_nth (seq_cons a l) i). witness (ordsucc j). apply andI.
    * exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => ordsucc j :e hl__u) (nat_ordsucc_in_ordsucc (seq_len l) HlenN j Hjl)).
    * exact ((eq_sym_i (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (seq_nth_cons_S A a Ha l Hl j Hjl)) (fun hl__u hl__v => P hl__u) HP).
Qed.

Theorem hl_EX_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall P1:set -> prop, (forall x :e A, l1 x = 1 <-> P1 x) -> forall l2 :e finseq A, hl_EX A l1 l2 = 1 <-> seq_ex P1 l2.
let A. assume HA.
claim Hex: exists g :e 2 :^: finseq A :^: (2 :^: A), (forall P :e 2 :^: A, g P (hl_NIL A) = 1 <-> False) /\ forall h :e A, forall P :e 2 :^: A, forall t :e finseq A, g P (hl_CONS A h t) = 1 <-> P h = 1 \/ g P t = 1.
{ witness (fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0). apply andI.
  - exact (lam2_Pi (2 :^: A) (finseq A) 2 (fun P l => if seq_ex (fun x => P x = 1) l then 1 else 0) (fun P HP l Hl => If_in_2 (seq_ex (fun x => P x = 1) l))).
  - apply andI.
    + let P. assume HP.
      apply (iff_eq1_l ((fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P (hl_NIL A)) (if seq_ex (fun x => P x = 1) seq_nil then 1 else 0) (lam2_beta (2 :^: A) (finseq A) (fun P l => if seq_ex (fun x => P x = 1) l then 1 else 0) P HP seq_nil (seq_nil_finseq A)) False).
      apply (iff_trans ((if seq_ex (fun x => P x = 1) seq_nil then 1 else 0) = 1) (seq_ex (fun x => P x = 1) seq_nil) False (If_1_iff (seq_ex (fun x => P x = 1) seq_nil))).
      apply iffI.
      * assume H. exact (seq_ex_nil (fun x => P x = 1) H).
      * assume H. exact (FalseE H (seq_ex (fun x => P x = 1) seq_nil)).
    + let h. assume Hh. let P. assume HP. let t. assume Ht.
      claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
      claim Hcf: seq_cons h t :e finseq A. { exact (seq_cons_finseq A h Hh t Ht). }
      claim Hwt: (fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P t = 1 <-> seq_ex (fun x => P x = 1) t.
      { exact (iff_eq1_l ((fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P t) (if seq_ex (fun x => P x = 1) t then 1 else 0) (lam2_beta (2 :^: A) (finseq A) (fun P l => if seq_ex (fun x => P x = 1) l then 1 else 0) P HP t Ht) (seq_ex (fun x => P x = 1) t) (If_1_iff (seq_ex (fun x => P x = 1) t))). }
      apply (iff_eq1_l ((fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P (hl_CONS A h t)) (if seq_ex (fun x => P x = 1) (seq_cons h t) then 1 else 0) (eq_trans_i ((fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P (hl_CONS A h t)) ((fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P (seq_cons h t)) (if seq_ex (fun x => P x = 1) (seq_cons h t) then 1 else 0) (f_equal (fun u => (fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P u) (hl_CONS A h t) (seq_cons h t) Hct) (lam2_beta (2 :^: A) (finseq A) (fun P l => if seq_ex (fun x => P x = 1) l then 1 else 0) P HP (seq_cons h t) Hcf)) (P h = 1 \/ (fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P t = 1)).
      apply (iff_trans ((if seq_ex (fun x => P x = 1) (seq_cons h t) then 1 else 0) = 1) (seq_ex (fun x => P x = 1) (seq_cons h t)) (P h = 1 \/ (fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P t = 1) (If_1_iff (seq_ex (fun x => P x = 1) (seq_cons h t)))).
      apply (iff_trans (seq_ex (fun x => P x = 1) (seq_cons h t)) (P h = 1 \/ seq_ex (fun x => P x = 1) t) (P h = 1 \/ (fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P t = 1) (seq_ex_cons A h Hh t Ht (fun x => P x = 1))).
      exact (or_iff_cong (P h = 1) (P h = 1) (seq_ex (fun x => P x = 1) t) ((fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P t = 1) (iff_refl (P h = 1)) (iff_sym ((fun P :e 2 :^: A => fun l :e finseq A => if seq_ex (fun x => P x = 1) l then 1 else 0) P t = 1) (seq_ex (fun x => P x = 1) t) Hwt)). }
apply (hl_EX_spec A HA Hex). assume H12 Hin. apply H12. assume Hnil Hcons.
let l1. assume H1. let P1. assume Hp.
claim Hbase: hl_EX A l1 seq_nil = 1 <-> seq_ex P1 seq_nil.
{ apply iffI.
  - assume H. apply (Hnil l1 H1). assume Hf _. exact (FalseE (Hf H) (seq_ex P1 seq_nil)).
  - assume H. exact (FalseE (seq_ex_nil P1 H) (hl_EX A l1 seq_nil = 1)). }
claim Hstep: forall h :e A, forall t :e finseq A, (hl_EX A l1 t = 1 <-> seq_ex P1 t) -> (hl_EX A l1 (seq_cons h t) = 1 <-> seq_ex P1 (seq_cons h t)).
{ let h. assume Hh. let t. assume Ht IH.
  claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
  apply (iff_eq1_l (hl_EX A l1 (seq_cons h t)) (hl_EX A l1 (hl_CONS A h t)) (f_equal (fun u => hl_EX A l1 u) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (hl_CONS A h t) (seq_cons h t) Hct)) (seq_ex P1 (seq_cons h t))).
  apply (iff_trans (hl_EX A l1 (hl_CONS A h t) = 1) (l1 h = 1 \/ hl_EX A l1 t = 1) (seq_ex P1 (seq_cons h t)) (Hcons h Hh l1 H1 t Ht)).
  apply (iff_trans (l1 h = 1 \/ hl_EX A l1 t = 1) (P1 h \/ seq_ex P1 t) (seq_ex P1 (seq_cons h t)) (or_iff_cong (l1 h = 1) (P1 h) (hl_EX A l1 t = 1) (seq_ex P1 t) (Hp h Hh) IH)).
  exact (iff_sym (seq_ex P1 (seq_cons h t)) (P1 h \/ seq_ex P1 t) (seq_ex_cons A h Hh t Ht P1)). }
exact (seq_induct A (fun l => hl_EX A l1 l = 1 <-> seq_ex P1 l) Hbase Hstep).
Qed.

// ---- num_of_int on naturals (conditional: HOL Light leaves negative arguments unspecified) ----
Theorem hl_num_of_int_compat : forall l1 :e int, l1 :e omega -> hl_num_of_int l1 = if l1 :e omega then l1 else 0.
let x. assume Hx Ho.
exact (eq_trans_i (hl_num_of_int x) x (if x :e omega then x else 0) (hl_num_of_int_nonneg x Hx (omega_nonneg x Ho)) (eq_sym_i (if x :e omega then x else 0) x (If_i_1 (x :e omega) x 0 Ho))).
Qed.

// ---- pointwise relations of doubly eta-expanded literal functions ----
Theorem pw_eta_pred2 : forall D1 D2 F:set, forall N:set -> set -> prop, (forall x :e D1, forall y :e D2, (fun x :e D1 => fun y :e D2 => F x y) x y = 1 <-> N x y) -> forall x :e D1, forall y :e D2, F x y = 1 <-> N x y.
let D1 D2 F N. assume H. let x. assume Hx. let y. assume Hy.
exact (iff_eq1_l (F x y) ((fun x :e D1 => fun y :e D2 => F x y) x y) (eq_sym_i ((fun x :e D1 => fun y :e D2 => F x y) x y) (F x y) (lam2_beta D1 D2 (fun x y => F x y) x Hx y Hy)) (N x y) (H x Hx y Hy)).
Qed.
Theorem pw_eta_fun2 : forall D1 D2 F:set, forall N:set -> set -> set, (forall x :e D1, forall y :e D2, (fun x :e D1 => fun y :e D2 => F x y) x y = N x y) -> forall x :e D1, forall y :e D2, F x y = N x y.
let D1 D2 F N. assume H. let x. assume Hx. let y. assume Hy.
exact (eq_trans_i (F x y) ((fun x :e D1 => fun y :e D2 => F x y) x y) (N x y) (eq_sym_i ((fun x :e D1 => fun y :e D2 => F x y) x y) (F x y) (lam2_beta D1 D2 (fun x y => F x y) x Hx y Hy)) (H x Hx y Hy)).
Qed.

// ---- polynomial functions: the literal segment sum is the native finite sum over ordsucc m ----
Theorem numseg0_ordsucc : forall m :e omega, {i :e omega | 0 <= i /\ i <= m} = ordsucc m.
let m. assume Hm.
claim HmS: SNo m. { exact (omega_SNo m Hm). }
apply set_ext.
- let i. assume Hi. apply (SepE omega (fun i => 0 <= i /\ i <= m) i Hi). assume Hio H. apply H. assume _ Hle.
  apply (SNoLeE i m (omega_SNo i Hio) HmS Hle).
  + assume Hlt. exact (ordsuccI1 m i (omega_SNoLt_In m Hm i Hio Hlt)).
  + assume Heq. exact (Heq (fun hl__u hl__v => hl__v :e ordsucc m) (ordsuccI2 m)).
- let i. assume Hi.
  claim Hio: i :e omega. { exact (omega_TransSet (ordsucc m) (omega_ordsucc m Hm) i Hi). }
  apply (SepI omega (fun i => 0 <= i /\ i <= m) i Hio). apply andI.
  + exact (omega_nonneg i Hio).
  + apply (ordsuccE m i Hi).
    * assume H. exact (SNoLtLe i m (omega_In_SNoLt m Hm i H)).
    * assume H. exact ((eq_sym_i i m H) (fun hl__u hl__v => hl__u <= m) (SNoLe_ref m)).
Qed.

Theorem finsum_congr : forall s:set, forall f g:set -> set, (forall i :e s, f i = g i) -> finsum s f = finsum s g.
let s f g. assume H.
claim Hsep: {x :e s | f x <> 0} = {x :e s | g x <> 0}.
{ apply (Sep_ext_iff s (fun x => f x <> 0) (fun x => g x <> 0)). let x. assume Hx. apply iffI.
  - assume H1 H2. apply H1. exact (eq_trans_i (f x) (g x) 0 (H x Hx) H2).
  - assume H1 H2. apply H1. exact (eq_trans_i (g x) (f x) 0 (eq_sym_i (f x) (g x) (H x Hx)) H2). }
prove (if finite {x :e s | f x <> 0} then ring_finite_sum R add_SNo {x :e s | f x <> 0} f else 0) = (if finite {x :e s | g x <> 0} then ring_finite_sum R add_SNo {x :e s | g x <> 0} g else 0).
apply (xm (finite {x :e s | f x <> 0})).
- assume Hf.
  claim Hg: finite {x :e s | g x <> 0}. { exact (Hsep (fun hl__u hl__v => finite hl__u) Hf). }
  claim Hsum: ring_finite_sum R add_SNo {x :e s | f x <> 0} f = ring_finite_sum R add_SNo {x :e s | g x <> 0} g.
  { exact (eq_trans_i (ring_finite_sum R add_SNo {x :e s | f x <> 0} f) (ring_finite_sum R add_SNo {x :e s | f x <> 0} g) (ring_finite_sum R add_SNo {x :e s | g x <> 0} g) (god1_ring_finite_sum_congr_finite R add_SNo {x :e s | f x <> 0} Hf f g (fun x Hx => H x (SepE1 s (fun x => f x <> 0) x Hx))) (f_equal (fun u => ring_finite_sum R add_SNo u g) {x :e s | f x <> 0} {x :e s | g x <> 0} Hsep)). }
  exact (eq_trans_i (if finite {x :e s | f x <> 0} then ring_finite_sum R add_SNo {x :e s | f x <> 0} f else 0) (ring_finite_sum R add_SNo {x :e s | f x <> 0} f) (if finite {x :e s | g x <> 0} then ring_finite_sum R add_SNo {x :e s | g x <> 0} g else 0) (If_i_1 (finite {x :e s | f x <> 0}) (ring_finite_sum R add_SNo {x :e s | f x <> 0} f) 0 Hf) (eq_trans_i (ring_finite_sum R add_SNo {x :e s | f x <> 0} f) (ring_finite_sum R add_SNo {x :e s | g x <> 0} g) (if finite {x :e s | g x <> 0} then ring_finite_sum R add_SNo {x :e s | g x <> 0} g else 0) Hsum (eq_sym_i (if finite {x :e s | g x <> 0} then ring_finite_sum R add_SNo {x :e s | g x <> 0} g else 0) (ring_finite_sum R add_SNo {x :e s | g x <> 0} g) (If_i_1 (finite {x :e s | g x <> 0}) (ring_finite_sum R add_SNo {x :e s | g x <> 0} g) 0 Hg)))).
- assume Hnf.
  claim Hng: ~ finite {x :e s | g x <> 0}. { assume Hg. apply Hnf. exact ((eq_sym_i {x :e s | f x <> 0} {x :e s | g x <> 0} Hsep) (fun hl__u hl__v => finite hl__u) Hg). }
  exact (eq_trans_i (if finite {x :e s | f x <> 0} then ring_finite_sum R add_SNo {x :e s | f x <> 0} f else 0) 0 (if finite {x :e s | g x <> 0} then ring_finite_sum R add_SNo {x :e s | g x <> 0} g else 0) (If_i_0 (finite {x :e s | f x <> 0}) (ring_finite_sum R add_SNo {x :e s | f x <> 0} f) 0 Hnf) (eq_sym_i (if finite {x :e s | g x <> 0} then ring_finite_sum R add_SNo {x :e s | g x <> 0} g else 0) 0 (If_i_0 (finite {x :e s | g x <> 0}) (ring_finite_sum R add_SNo {x :e s | g x <> 0} g) 0 Hng))).
Qed.

Theorem hl_polynomial_function_compat : forall l1 :e R :^: R, forall f1:set -> set, (forall x :e R, l1 x = f1 x) -> (hl_polynomial_function l1 = 1 <-> polynomial_function_R f1).
let p. assume Hp. let f1. assume Hf.
claim H0o: hl_NUMERAL hl_zero :e omega. { exact ((eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0)). }
claim Hsum: forall m :e omega, forall c :e R :^: omega, forall x :e R, hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) = finsum (ordsucc m) (fun i => c i * x ^ i).
{ let m. assume Hm. let c. assume Hc. let x. assume Hx.
  claim Hns: (hl_numseg (hl_NUMERAL hl_zero) m) :e 2 :^: omega. { exact (setexp2_ap omega omega (2 :^: omega) hl_numseg hl_numseg_in (hl_NUMERAL hl_zero) H0o m Hm). }
  claim Hrep: hl_rep omega (hl_numseg (hl_NUMERAL hl_zero) m) = ordsucc m.
  { exact (eq_trans_i (hl_rep omega (hl_numseg (hl_NUMERAL hl_zero) m)) {i :e omega | hl_NUMERAL hl_zero <= i /\ i <= m} (ordsucc m) (hl_numseg_compat (hl_NUMERAL hl_zero) H0o m Hm) (eq_trans_i {i :e omega | hl_NUMERAL hl_zero <= i /\ i <= m} {i :e omega | 0 <= i /\ i <= m} (ordsucc m) (f_equal (fun z => {i :e omega | z <= i /\ i <= m}) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (numseg0_ordsucc m Hm))). }
  claim HL: (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) :e R :^: omega.
  { prove (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) :e Pi_ i :e omega, R. apply (lam_Pi omega (fun _ => R) (fun i => hl_real_mul (c i) (hl_real_pow x i))). let i. assume Hi.
    exact (setexp2_ap R R R hl_real_mul hl_real_mul_in (c i) (setexp_ap omega R c Hc i Hi) (hl_real_pow x i) (setexp2_ap R omega R hl_real_pow hl_real_pow_in x Hx i Hi)). }
  claim Hpw: forall i :e omega, (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) i = c i * x ^ i.
  { let i. assume Hi.
    claim HciR: c i :e R. { exact (setexp_ap omega R c Hc i Hi). }
    claim HpR: hl_real_pow x i :e R. { exact (setexp2_ap R omega R hl_real_pow hl_real_pow_in x Hx i Hi). }
    exact (eq_trans_i ((fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) i) (hl_real_mul (c i) (hl_real_pow x i)) (c i * x ^ i) (beta omega (fun i => hl_real_mul (c i) (hl_real_pow x i)) i Hi) (eq_trans_i (hl_real_mul (c i) (hl_real_pow x i)) (c i * hl_real_pow x i) (c i * x ^ i) (hl_real_mul_ap (c i) HciR (hl_real_pow x i) HpR) (f_equal (fun u => c i * u) (hl_real_pow x i) (x ^ i) (hl_real_pow_compat x Hx i Hi)))). }
  exact (eq_trans_i (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i))) (finsum (hl_rep omega (hl_numseg (hl_NUMERAL hl_zero) m)) (fun i => c i * x ^ i)) (finsum (ordsucc m) (fun i => c i * x ^ i)) (hl_sum_compat omega omega_nonempty (hl_numseg (hl_NUMERAL hl_zero) m) Hns (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i)) HL (fun i => c i * x ^ i) Hpw) (f_equal (fun u => finsum u (fun i => c i * x ^ i)) (hl_rep omega (hl_numseg (hl_NUMERAL hl_zero) m)) (ordsucc m) Hrep)). }
apply (iff_eq1_l (hl_polynomial_function p) (if (exists m :e omega, exists c :e R :^: omega, forall x :e R, p x = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i))) then 1 else 0) (hl_polynomial_function_unfold p Hp) (polynomial_function_R f1)).
apply (iff_trans ((if (exists m :e omega, exists c :e R :^: omega, forall x :e R, p x = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i))) then 1 else 0) = 1) (exists m :e omega, exists c :e R :^: omega, forall x :e R, p x = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i))) (polynomial_function_R f1) (If_1_iff (exists m :e omega, exists c :e R :^: omega, forall x :e R, p x = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i))))).
prove (exists m :e omega, exists c :e R :^: omega, forall x :e R, p x = hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i))) <-> (exists m :e omega, exists c:set -> set, (forall i :e ordsucc m, c i :e R) /\ forall x :e R, f1 x = finsum (ordsucc m) (fun i => c i * x ^ i)).
apply iffI.
- assume H. apply H. let m. assume Hm0. apply Hm0. assume Hm Hc0. apply Hc0. let c. assume Hc1. apply Hc1. assume Hc Hall.
  witness m. apply andI.
  + exact Hm.
  + witness (fun i:set => c i). apply andI.
    * let i. assume Hi. exact (setexp_ap omega R c Hc i (omega_TransSet (ordsucc m) (omega_ordsucc m Hm) i Hi)).
    * let x. assume Hx. exact (eq_trans_i (f1 x) (p x) (finsum (ordsucc m) (fun i => c i * x ^ i)) (eq_sym_i (p x) (f1 x) (Hf x Hx)) (eq_trans_i (p x) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul (c i) (hl_real_pow x i))) (finsum (ordsucc m) (fun i => c i * x ^ i)) (Hall x Hx) (Hsum m Hm c Hc x Hx))).
- assume H. apply H. let m. assume Hm0. apply Hm0. assume Hm Hc0. apply Hc0. let c. assume Hc1. apply Hc1. assume HcR Hall.
  claim HcL: (fun i :e omega => if i :e ordsucc m then c i else 0) :e R :^: omega.
  { prove (fun i :e omega => if i :e ordsucc m then c i else 0) :e Pi_ i :e omega, R. apply (lam_Pi omega (fun _ => R) (fun i => if i :e ordsucc m then c i else 0)). let i. assume Hi. apply (xm (i :e ordsucc m)).
    - assume H1. exact ((eq_sym_i (if i :e ordsucc m then c i else 0) (c i) (If_i_1 (i :e ordsucc m) (c i) 0 H1)) (fun hl__u hl__v => hl__u :e R) (HcR i H1)).
    - assume H1. exact ((eq_sym_i (if i :e ordsucc m then c i else 0) 0 (If_i_0 (i :e ordsucc m) (c i) 0 H1)) (fun hl__u hl__v => hl__u :e R) real_0). }
  witness m. apply andI.
  + exact Hm.
  + witness (fun i :e omega => if i :e ordsucc m then c i else 0). apply andI.
    * exact HcL.
    * let x. assume Hx.
      claim Hcong: finsum (ordsucc m) (fun i => c i * x ^ i) = finsum (ordsucc m) (fun i => (fun i :e omega => if i :e ordsucc m then c i else 0) i * x ^ i).
      { apply (finsum_congr (ordsucc m) (fun i => c i * x ^ i) (fun i => (fun i :e omega => if i :e ordsucc m then c i else 0) i * x ^ i)). let i. assume Hi.
        claim Hio: i :e omega. { exact (omega_TransSet (ordsucc m) (omega_ordsucc m Hm) i Hi). }
        exact (f_equal (fun u => u * x ^ i) (c i) ((fun i :e omega => if i :e ordsucc m then c i else 0) i) (eq_sym_i ((fun i :e omega => if i :e ordsucc m then c i else 0) i) (c i) (eq_trans_i ((fun i :e omega => if i :e ordsucc m then c i else 0) i) (if i :e ordsucc m then c i else 0) (c i) (beta omega (fun i => if i :e ordsucc m then c i else 0) i Hio) (If_i_1 (i :e ordsucc m) (c i) 0 Hi)))). }
      exact (eq_trans_i (p x) (f1 x) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul ((fun i :e omega => if i :e ordsucc m then c i else 0) i) (hl_real_pow x i))) (Hf x Hx) (eq_trans_i (f1 x) (finsum (ordsucc m) (fun i => c i * x ^ i)) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul ((fun i :e omega => if i :e ordsucc m then c i else 0) i) (hl_real_pow x i))) (Hall x Hx) (eq_trans_i (finsum (ordsucc m) (fun i => c i * x ^ i)) (finsum (ordsucc m) (fun i => (fun i :e omega => if i :e ordsucc m then c i else 0) i * x ^ i)) (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul ((fun i :e omega => if i :e ordsucc m then c i else 0) i) (hl_real_pow x i))) Hcong (eq_sym_i (hl_sum omega (hl_numseg (hl_NUMERAL hl_zero) m) (fun i :e omega => hl_real_mul ((fun i :e omega => if i :e ordsucc m then c i else 0) i) (hl_real_pow x i))) (finsum (ordsucc m) (fun i => (fun i :e omega => if i :e ordsucc m then c i else 0) i * x ^ i)) (Hsum m Hm (fun i :e omega => if i :e ordsucc m then c i else 0) HcL x Hx))))).
Qed.

// ---- Boolean conditionals as formulas: literal (c /\ a) \/ (~c /\ b), native (c -> a) /\ (~c -> b) ----
Theorem cond_bool_fwd : forall lc la lb nc na nb:prop, (lc -> nc) -> (nc -> lc) -> (la -> na) -> (lb -> nb) -> ((lc /\ la) \/ (~ lc /\ lb)) -> ((nc -> na) /\ (~ nc -> nb)).
let lc la lb nc na nb. assume Hcf Hcb Ha Hb H. apply H.
- assume H1. apply H1. assume Hlc Hla. apply andI.
  + assume _. exact (Ha Hla).
  + assume Hn. exact (FalseE (Hn (Hcf Hlc)) nb).
- assume H1. apply H1. assume Hnlc Hlb. apply andI.
  + assume Hnc. exact (FalseE (Hnlc (Hcb Hnc)) na).
  + assume _. exact (Hb Hlb).
Qed.
Theorem cond_bool_bwd : forall lc la lb nc na nb:prop, (lc -> nc) -> (nc -> lc) -> (na -> la) -> (nb -> lb) -> ((nc -> na) /\ (~ nc -> nb)) -> ((lc /\ la) \/ (~ lc /\ lb)).
let lc la lb nc na nb. assume Hcf Hcb Ha Hb H. apply H. assume H1 H2. apply (xm lc).
- assume Hlc. apply orIL. apply andI.
  + exact Hlc.
  + exact (Ha (H1 (Hcf Hlc))).
- assume Hnlc. apply orIR. apply andI.
  + exact Hnlc.
  + exact (Hb (H2 (fun Hnc => Hnlc (Hcb Hnc)))).
Qed.

// ---- integer congruences ----
Theorem hl_int_mod_compat : forall l1 l2 l3 :e int, hl_int_mod l1 l2 l3 = 1 <-> divides_int l1 (l2 + - l3).
let n. assume Hn. let x. assume Hx. let y. assume Hy.
claim Hd: x + - y :e int. { exact (int_add_SNo x Hx (- y) (int_minus_SNo y Hy)). }
exact (iff_eq1_l (hl_int_mod n x y) (hl_int_divides n (x + - y)) (eq_trans_i (hl_int_mod n x y) (hl_int_divides n (hl_int_sub x y)) (hl_int_divides n (x + - y)) (hl_int_mod_unfold n (int_hl_ty n Hn) x (int_hl_ty x Hx) y (int_hl_ty y Hy)) (f_equal (fun u => hl_int_divides n u) (hl_int_sub x y) (x + - y) (hl_int_sub_compat x Hx y Hy))) (divides_int n (x + - y)) (hl_int_divides_compat n Hn (x + - y) Hd)).
Qed.

// ---- an arbitrary element: HOL Light's ARB = @x. F ----
Theorem hl_ARB_compat : forall A:set, A <> Empty -> hl_ARB A = choose_in A (fun x:set => False).
let A. assume HA.
claim HF: (fun x :e A => if False then 1 else 0) :e 2 :^: A.
{ prove (fun x :e A => if False then 1 else 0) :e Pi_ x :e A, 2. apply (lam_Pi A (fun _ => 2) (fun x => if False then 1 else 0)). let x. assume _. exact (If_in_2 False). }
rewrite (hl_ARB_unfold A). rewrite (hl_select_eq A (fun x :e A => if False then 1 else 0) HF).
apply (choose_in_ext A (fun x => (fun x :e A => if False then 1 else 0) x = 1) (fun x:set => False)).
let x. assume Hx.
apply (iff_eq1_l ((fun x :e A => if False then 1 else 0) x) (if False then 1 else 0) (beta A (fun x => if False then 1 else 0) x Hx) False).
exact (If_1_iff False).
Qed.

Theorem hl_EXTENSIONAL_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> (hl_EXTENSIONAL A B l1 l2 = 1 <-> forall x :e A, ~ x :e hl_rep A l1 -> f2 x = choose_in B (fun y:set => False)).
let A B. assume HA HB. let s. assume Hs. let f. assume Hf. let f2. assume Hpw.
claim Harb: hl_ARB B = choose_in B (fun y:set => False). { exact (hl_ARB_compat B HB). }
claim Hrep: hl_rep (B :^: A) (hl_GSPEC (B :^: A) (fun v :e B :^: A => if exists g :e B :^: A, hl_SETSPEC (B :^: A) v (if forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B then 1 else 0) g = 1 then 1 else 0)) = {g :e B :^: A | forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B}.
{ exact (hl_gspec_sep (B :^: A) (fun g => forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B)). }
rewrite (hl_EXTENSIONAL_unfold A B s Hs).
apply (iff_trans (hl_GSPEC (B :^: A) (fun v :e B :^: A => if exists g :e B :^: A, hl_SETSPEC (B :^: A) v (if forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B then 1 else 0) g = 1 then 1 else 0) f = 1) (f :e {g :e B :^: A | forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B}) (forall x :e A, ~ x :e hl_rep A s -> f2 x = choose_in B (fun y:set => False))).
- exact (Hrep (fun hl__u hl__v => hl_GSPEC (B :^: A) (fun v :e B :^: A => if exists g :e B :^: A, hl_SETSPEC (B :^: A) v (if forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B then 1 else 0) g = 1 then 1 else 0) f = 1 <-> f :e hl__u) (hl_rep_iff (B :^: A) (hl_GSPEC (B :^: A) (fun v :e B :^: A => if exists g :e B :^: A, hl_SETSPEC (B :^: A) v (if forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B then 1 else 0) g = 1 then 1 else 0)) f Hf)).
- apply iffI.
  + assume H. apply (SepE (B :^: A) (fun g => forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B) f H). assume _ H1. let x. assume Hx Hnin.
    claim Hn: ~ hl_IN A x s = 1. { assume H2. apply Hnin. apply (hl_IN_compat A HA x Hx s Hs). assume H3 _. exact (H3 H2). }
    exact (eq_trans_i (f2 x) (f x) (choose_in B (fun y:set => False)) (eq_sym_i (f x) (f2 x) (Hpw x Hx)) (eq_trans_i (f x) (hl_ARB B) (choose_in B (fun y:set => False)) (H1 x Hx Hn) Harb)).
  + assume H. apply (SepI (B :^: A) (fun g => forall x :e A, ~ hl_IN A x s = 1 -> g x = hl_ARB B) f Hf). let x. assume Hx Hn.
    claim Hnin: ~ x :e hl_rep A s. { assume H2. apply Hn. apply (hl_IN_compat A HA x Hx s Hs). assume _ H3. exact (H3 H2). }
    exact (eq_trans_i (f x) (f2 x) (hl_ARB B) (Hpw x Hx) (eq_trans_i (f2 x) (choose_in B (fun y:set => False)) (hl_ARB B) (H x Hx Hnin) (eq_sym_i (hl_ARB B) (choose_in B (fun y:set => False)) Harb))).
Qed.

// ---- logical constants as data: their applications versus the literal propositions ----
Theorem hl_imp_eq1 : forall p q :e 2, hl_imp p q = 1 <-> (p = 1 -> q = 1).
let p. assume Hp. let q. assume Hq.
apply (iff_eq1_l (hl_imp p q) (if p = 1 /\ q = 1 <-> p = 1 then 1 else 0) (hl_imp_unfold p Hp q Hq) (p = 1 -> q = 1)).
apply (iff_trans ((if p = 1 /\ q = 1 <-> p = 1 then 1 else 0) = 1) (p = 1 /\ q = 1 <-> p = 1) (p = 1 -> q = 1) (If_1_iff (p = 1 /\ q = 1 <-> p = 1))).
apply iffI.
- assume H. assume Hp1. apply H. assume _ H2. apply (H2 Hp1). assume _ Hq1. exact Hq1.
- assume H. apply iffI.
  + assume H1. apply H1. assume Hp1 _. exact Hp1.
  + assume Hp1. apply andI.
    * exact Hp1.
    * exact (H Hp1).
Qed.
Theorem hl_not_eq1 : forall p :e 2, hl_not p = 1 <-> ~ p = 1.
let p. assume Hp.
apply (iff_eq1_l (hl_not p) (if p = 1 -> False then 1 else 0) (hl_not_unfold p Hp) (~ p = 1)).
exact (If_1_iff (p = 1 -> False)).
Qed.
Theorem hl_or_eq1 : forall p q :e 2, hl_or p q = 1 <-> (p = 1 \/ q = 1).
let p. assume Hp. let q. assume Hq.
apply (iff_eq1_l (hl_or p q) (if (forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1) then 1 else 0) (hl_or_unfold p Hp q Hq) (p = 1 \/ q = 1)).
apply (iff_trans ((if (forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1) then 1 else 0) = 1) (forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1) (p = 1 \/ q = 1) (If_1_iff (forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1))).
apply iffI.
- assume H. apply (xm (p = 1)).
  + assume Hp1. apply orIL. exact Hp1.
  + assume Hnp. apply (xm (q = 1)).
    * assume Hq1. apply orIR. exact Hq1.
    * assume Hnq. exact (FalseE (neq_0_1 (H 0 In_0_2 (fun Hp1 => FalseE (Hnp Hp1) (0 = 1)) (fun Hq1 => FalseE (Hnq Hq1) (0 = 1)))) (p = 1 \/ q = 1)).
- assume H. let r. assume Hr. assume H1 H2. apply H.
  + assume Hp1. exact (H1 Hp1).
  + assume Hq1. exact (H2 Hq1).
Qed.
Theorem hl_and_eq1 : forall p q :e 2, hl_and p q = 1 <-> (p = 1 /\ q = 1).
let p. assume Hp. let q. assume Hq.
claim H1: (if True then 1 else 0) = 1. { exact (If_i_1 True 1 0 (fun p:prop => fun H:p => H)). }
claim H12: (if True then 1 else 0) :e 2. { exact (If_in_2 True). }
claim Hf1: (fun a :e 2 => fun b :e 2 => a) :e 2 :^: 2 :^: 2.
{ prove (fun a :e 2 => fun b :e 2 => a) :e Pi_ a :e 2, 2 :^: 2. apply (lam_Pi 2 (fun _ => 2 :^: 2) (fun a => fun b :e 2 => a)). let a. assume Ha. prove (fun b :e 2 => a) :e Pi_ b :e 2, 2. apply (lam_Pi 2 (fun _ => 2) (fun b => a)). let b. assume _. exact Ha. }
claim Hf2: (fun a :e 2 => fun b :e 2 => b) :e 2 :^: 2 :^: 2.
{ prove (fun a :e 2 => fun b :e 2 => b) :e Pi_ a :e 2, 2 :^: 2. apply (lam_Pi 2 (fun _ => 2 :^: 2) (fun a => fun b :e 2 => b)). let a. assume Ha. prove (fun b :e 2 => b) :e Pi_ b :e 2, 2. apply (lam_Pi 2 (fun _ => 2) (fun b => b)). let b. assume Hb. exact Hb. }
apply (iff_eq1_l (hl_and p q) (if ((fun f :e 2 :^: 2 :^: 2 => f p q) = (fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0))) then 1 else 0) (hl_and_unfold p Hp q Hq) (p = 1 /\ q = 1)).
apply (iff_trans ((if ((fun f :e 2 :^: 2 :^: 2 => f p q) = (fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0))) then 1 else 0) = 1) ((fun f :e 2 :^: 2 :^: 2 => f p q) = (fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0))) (p = 1 /\ q = 1) (If_1_iff ((fun f :e 2 :^: 2 :^: 2 => f p q) = (fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0))))).
apply iffI.
- assume H.
  claim HLp: (fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => a) = p. { exact (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => a)) ((fun a :e 2 => fun b :e 2 => a) p q) p (beta (2 :^: 2 :^: 2) (fun f => f p q) (fun a :e 2 => fun b :e 2 => a) Hf1) (lam2_beta 2 2 (fun a b => a) p Hp q Hq)). }
  claim HRp: (fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => a) = p. { exact (H (fun hl__u hl__v => hl__u (fun a :e 2 => fun b :e 2 => a) = p) HLp). }
  claim HR1: (fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => a) = 1. { exact (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => a)) ((fun a :e 2 => fun b :e 2 => a) (if True then 1 else 0) (if True then 1 else 0)) 1 (beta (2 :^: 2 :^: 2) (fun f => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => a) Hf1) (eq_trans_i ((fun a :e 2 => fun b :e 2 => a) (if True then 1 else 0) (if True then 1 else 0)) (if True then 1 else 0) 1 (lam2_beta 2 2 (fun a b => a) (if True then 1 else 0) H12 (if True then 1 else 0) H12) H1)). }
  claim HLq: (fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => b) = q. { exact (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f p q) (fun a :e 2 => fun b :e 2 => b)) ((fun a :e 2 => fun b :e 2 => b) p q) q (beta (2 :^: 2 :^: 2) (fun f => f p q) (fun a :e 2 => fun b :e 2 => b) Hf2) (lam2_beta 2 2 (fun a b => b) p Hp q Hq)). }
  claim HRq: (fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => b) = q. { exact (H (fun hl__u hl__v => hl__u (fun a :e 2 => fun b :e 2 => b) = q) HLq). }
  claim HR2: (fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => b) = 1. { exact (eq_trans_i ((fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => b)) ((fun a :e 2 => fun b :e 2 => b) (if True then 1 else 0) (if True then 1 else 0)) 1 (beta (2 :^: 2 :^: 2) (fun f => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => b) Hf2) (eq_trans_i ((fun a :e 2 => fun b :e 2 => b) (if True then 1 else 0) (if True then 1 else 0)) (if True then 1 else 0) 1 (lam2_beta 2 2 (fun a b => b) (if True then 1 else 0) H12 (if True then 1 else 0) H12) H1)). }
  apply andI.
  + exact (eq_trans_i p ((fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => a)) 1 (eq_sym_i ((fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => a)) p HRp) HR1).
  + exact (eq_trans_i q ((fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => b)) 1 (eq_sym_i ((fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0)) (fun a :e 2 => fun b :e 2 => b)) q HRq) HR2).
- assume H. apply H. assume Hp1 Hq1.
  claim Hp1': p = (if True then 1 else 0). { exact (eq_trans_i p 1 (if True then 1 else 0) Hp1 (eq_sym_i (if True then 1 else 0) 1 H1)). }
  claim Hq1': q = (if True then 1 else 0). { exact (eq_trans_i q 1 (if True then 1 else 0) Hq1 (eq_sym_i (if True then 1 else 0) 1 H1)). }
  apply (lam_ext_in (2 :^: 2 :^: 2) (fun f => f p q) (fun f => f (if True then 1 else 0) (if True then 1 else 0))). let f. assume Hf.
  exact (f_equal2 (fun u v => f u v) p (if True then 1 else 0) q (if True then 1 else 0) Hp1' Hq1').
Qed.

// ---- restriction of a function to a subset ----
Theorem hl_RESTRICTION_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e B :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall x :e A, hl_RESTRICTION A B l1 l2 x = if x :e hl_rep A l1 then f2 x else choose_in B (fun y:set => False).
let A B. assume HA HB. let s. assume Hs. let f. assume Hf. let f2. assume Hpw. let x. assume Hx.
claim HIN: hl_IN A x s :e 2. { exact (setexp2_ap A (2 :^: A) 2 (hl_IN A) (hl_IN_in A HA) x Hx s Hs). }
claim Hfx: f x :e B. { exact (setexp_ap A B f Hf x Hx). }
claim Harb: hl_ARB B :e B. { exact (hl_ARB_in B HB). }
rewrite (hl_RESTRICTION_unfold A B s Hs f Hf x Hx).
rewrite (hl_COND_if B (hl_IN A x s) HIN (x :e hl_rep A s) (hl_IN_compat A HA x Hx s Hs) (f x) Hfx (hl_ARB B) Harb).
exact (f_equal2 (fun u v => if x :e hl_rep A s then u else v) (f x) (f2 x) (hl_ARB B) (choose_in B (fun y:set => False)) (Hpw x Hx) (hl_ARB_compat B HB)).
Qed.

// ---- the identity, integer >= ----
Theorem hl_I_compat : forall A:set, A <> Empty -> forall x :e A, hl_I A x = x.
let A. assume HA. let x. assume Hx. exact (hl_I_unfold A x Hx).
Qed.
Theorem hl_int_ge_compat : forall l1 l2 :e int, hl_int_ge l1 l2 = 1 <-> l2 <= l1.
let x. assume Hx. let y. assume Hy.
claim HxR: x :e R. { exact ((hl_real_of_int_compat x Hx) (fun hl__u hl__v => hl__u :e R) (setexp_ap int R hl_real_of_int hl_real_of_int_in x Hx)). }
claim HyR: y :e R. { exact ((hl_real_of_int_compat y Hy) (fun hl__u hl__v => hl__u :e R) (setexp_ap int R hl_real_of_int hl_real_of_int_in y Hy)). }
apply (iff_eq1_l (hl_int_ge x y) (hl_real_ge x y) (eq_trans_i (hl_int_ge x y) (hl_real_ge (hl_real_of_int x) (hl_real_of_int y)) (hl_real_ge x y) (hl_int_ge_unfold x (int_hl_ty x Hx) y (int_hl_ty y Hy)) (f_equal2 (fun u v => hl_real_ge u v) (hl_real_of_int x) x (hl_real_of_int y) y (hl_real_of_int_compat x Hx) (hl_real_of_int_compat y Hy))) (y <= x)).
exact (hl_real_ge_compat x HxR y HyR).
Qed.

// ---- sequence helpers: filter recursion, the set of elements, splitting a bounded quantifier over a cons ----
Theorem seq_filter_nil : forall P:set -> prop, seq_filter P seq_nil = seq_nil.
let P. prove seq_foldr (fun x acc => if P x then seq_cons x acc else acc) seq_nil seq_nil = seq_nil.
exact (seq_foldr_nil (fun x acc => if P x then seq_cons x acc else acc) seq_nil).
Qed.
Theorem seq_filter_cons : forall A:set, forall P:set -> prop, forall a :e A, forall l :e finseq A, seq_filter P (seq_cons a l) = if P a then seq_cons a (seq_filter P l) else seq_filter P l.
let A P a. assume Ha. let l. assume Hl.
prove seq_foldr (fun x acc => if P x then seq_cons x acc else acc) (seq_cons a l) seq_nil = if P a then seq_cons a (seq_foldr (fun x acc => if P x then seq_cons x acc else acc) l seq_nil) else seq_foldr (fun x acc => if P x then seq_cons x acc else acc) l seq_nil.
exact (seq_foldr_cons A (fun x acc => if P x then seq_cons x acc else acc) a Ha l Hl seq_nil).
Qed.
Theorem seq_set_nil : seq_set seq_nil = Empty.
prove {seq_nth seq_nil i | i :e seq_len seq_nil} = Empty.
apply set_ext.
- let x. assume Hx. apply (ReplE_impred (seq_len seq_nil) (fun i => seq_nth seq_nil i) x Hx). let i. assume Hi _. exact (FalseE (EmptyE i (seq_len_nil (fun hl__u hl__v => i :e hl__u) Hi)) (x :e Empty)).
- let x. assume Hx. exact (FalseE (EmptyE x Hx) (x :e {seq_nth seq_nil i | i :e seq_len seq_nil})).
Qed.
Theorem seq_set_Subq : forall A:set, forall l :e finseq A, seq_set l c= A.
let A l. assume Hl. let x. assume Hx. apply (ReplE_impred (seq_len l) (fun i => seq_nth l i) x Hx). let i. assume Hi Hxi.
exact ((eq_sym_i x (seq_nth l i) Hxi) (fun hl__u hl__v => hl__u :e A) (seq_nth_in A l Hl i Hi)).
Qed.
Theorem seq_set_cons : forall A:set, forall a :e A, forall l :e finseq A, seq_set (seq_cons a l) = seq_set l :\/: {a}.
let A a. assume Ha. let l. assume Hl.
claim Hn: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
claim Hlen: seq_len (seq_cons a l) = ordsucc (seq_len l). { exact (seq_len_cons A a Ha l Hl). }
prove {seq_nth (seq_cons a l) i | i :e seq_len (seq_cons a l)} = seq_set l :\/: {a}.
apply set_ext.
- let x. assume Hx. apply (ReplE_impred (seq_len (seq_cons a l)) (fun i => seq_nth (seq_cons a l) i) x Hx). let i. assume Hi Hxi.
  claim Hi': i :e ordsucc (seq_len l). { exact (Hlen (fun hl__u hl__v => i :e hl__u) Hi). }
  claim Hin: nat_p i. { exact (nat_p_trans (ordsucc (seq_len l)) (nat_ordsucc (seq_len l) Hn) i Hi'). }
  apply (nat_inv i Hin).
  + assume Hi0. apply binunionI2.
    claim Hxa: x = a. { exact (eq_trans_i x (seq_nth (seq_cons a l) i) a Hxi (eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) 0) a (f_equal (fun u => seq_nth (seq_cons a l) u) i 0 Hi0) (seq_nth_cons_0 A a Ha l Hl))). }
    exact ((eq_sym_i x a Hxa) (fun hl__u hl__v => hl__u :e {a}) (SingI a)).
  + assume H. apply H. let j. assume Hj0. apply Hj0. assume Hjn Hij.
    claim Hjl: j :e seq_len l.
    { apply (ordsuccE (seq_len l) (ordsucc j) (Hij (fun hl__u hl__v => hl__u :e ordsucc (seq_len l)) Hi')).
      - assume H1. exact (nat_trans (seq_len l) Hn (ordsucc j) H1 j (ordsuccI2 j)).
      - assume H1. exact (H1 (fun hl__u hl__v => j :e hl__u) (ordsuccI2 j)). }
    claim Hx': x = seq_nth l j. { exact (eq_trans_i x (seq_nth (seq_cons a l) i) (seq_nth l j) Hxi (eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (f_equal (fun u => seq_nth (seq_cons a l) u) i (ordsucc j) Hij) (seq_nth_cons_S A a Ha l Hl j Hjl))). }
    apply binunionI1. exact ((eq_sym_i x (seq_nth l j) Hx') (fun hl__u hl__v => hl__u :e seq_set l) (ReplI (seq_len l) (fun i => seq_nth l i) j Hjl)).
- let x. assume Hx. apply (binunionE (seq_set l) {a} x Hx).
  + assume H1. apply (ReplE_impred (seq_len l) (fun i => seq_nth l i) x H1). let j. assume Hj Hxj.
    claim Hsj: ordsucc j :e seq_len (seq_cons a l). { exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => ordsucc j :e hl__u) (nat_ordsucc_in_ordsucc (seq_len l) Hn j Hj)). }
    claim Hx': x = seq_nth (seq_cons a l) (ordsucc j). { exact (eq_trans_i x (seq_nth l j) (seq_nth (seq_cons a l) (ordsucc j)) Hxj (eq_sym_i (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (seq_nth_cons_S A a Ha l Hl j Hj))). }
    exact ((eq_sym_i x (seq_nth (seq_cons a l) (ordsucc j)) Hx') (fun hl__u hl__v => hl__u :e {seq_nth (seq_cons a l) i | i :e seq_len (seq_cons a l)}) (ReplI (seq_len (seq_cons a l)) (fun i => seq_nth (seq_cons a l) i) (ordsucc j) Hsj)).
  + assume H1.
    claim Hxa: x = a. { exact (SingE a x H1). }
    claim H0: 0 :e seq_len (seq_cons a l). { exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => 0 :e hl__u) (nat_0_in_ordsucc (seq_len l) Hn)). }
    claim Hx': x = seq_nth (seq_cons a l) 0. { exact (eq_trans_i x a (seq_nth (seq_cons a l) 0) Hxa (eq_sym_i (seq_nth (seq_cons a l) 0) a (seq_nth_cons_0 A a Ha l Hl))). }
    exact ((eq_sym_i x (seq_nth (seq_cons a l) 0) Hx') (fun hl__u hl__v => hl__u :e {seq_nth (seq_cons a l) i | i :e seq_len (seq_cons a l)}) (ReplI (seq_len (seq_cons a l)) (fun i => seq_nth (seq_cons a l) i) 0 H0)).
Qed.
Theorem seq_forall_cons : forall A:set, forall a :e A, forall l :e finseq A, forall Q:set -> prop, (forall i :e seq_len (seq_cons a l), Q (seq_nth (seq_cons a l) i)) <-> (Q a /\ forall i :e seq_len l, Q (seq_nth l i)).
let A a. assume Ha. let l. assume Hl. let Q.
claim Hn: nat_p (seq_len l). { exact (omega_nat_p (seq_len l) (seq_len_omega A l Hl)). }
claim Hlen: seq_len (seq_cons a l) = ordsucc (seq_len l). { exact (seq_len_cons A a Ha l Hl). }
claim H0: 0 :e seq_len (seq_cons a l). { exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => 0 :e hl__u) (nat_0_in_ordsucc (seq_len l) Hn)). }
apply iffI.
- assume H. apply andI.
  + exact ((seq_nth_cons_0 A a Ha l Hl) (fun hl__u hl__v => Q hl__u) (H 0 H0)).
  + let j. assume Hj.
    claim Hsj: ordsucc j :e seq_len (seq_cons a l). { exact ((eq_sym_i (seq_len (seq_cons a l)) (ordsucc (seq_len l)) Hlen) (fun hl__u hl__v => ordsucc j :e hl__u) (nat_ordsucc_in_ordsucc (seq_len l) Hn j Hj)). }
    exact ((seq_nth_cons_S A a Ha l Hl j Hj) (fun hl__u hl__v => Q hl__u) (H (ordsucc j) Hsj)).
- assume H. apply H. assume Ha' Hl'. let i. assume Hi.
  claim Hi': i :e ordsucc (seq_len l). { exact (Hlen (fun hl__u hl__v => i :e hl__u) Hi). }
  claim Hin: nat_p i. { exact (nat_p_trans (ordsucc (seq_len l)) (nat_ordsucc (seq_len l) Hn) i Hi'). }
  apply (nat_inv i Hin).
  + assume Hi0. exact ((eq_sym_i (seq_nth (seq_cons a l) i) a (eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) 0) a (f_equal (fun u => seq_nth (seq_cons a l) u) i 0 Hi0) (seq_nth_cons_0 A a Ha l Hl))) (fun hl__u hl__v => Q hl__u) Ha').
  + assume H1. apply H1. let j. assume Hj0. apply Hj0. assume Hjn Hij.
    claim Hjl: j :e seq_len l.
    { apply (ordsuccE (seq_len l) (ordsucc j) (Hij (fun hl__u hl__v => hl__u :e ordsucc (seq_len l)) Hi')).
      - assume H2. exact (nat_trans (seq_len l) Hn (ordsucc j) H2 j (ordsuccI2 j)).
      - assume H2. exact (H2 (fun hl__u hl__v => j :e hl__u) (ordsuccI2 j)). }
    exact ((eq_sym_i (seq_nth (seq_cons a l) i) (seq_nth l j) (eq_trans_i (seq_nth (seq_cons a l) i) (seq_nth (seq_cons a l) (ordsucc j)) (seq_nth l j) (f_equal (fun u => seq_nth (seq_cons a l) u) i (ordsucc j) Hij) (seq_nth_cons_S A a Ha l Hl j Hjl))) (fun hl__u hl__v => Q hl__u) (Hl' j Hjl)).
Qed.
Theorem iff_and2 : forall A A' B B':prop, (A <-> A') -> (B <-> B') -> (A /\ B <-> A' /\ B').
let A A' B B'. assume HA HB. apply HA. assume HA1 HA2. apply HB. assume HB1 HB2. apply iffI.
- assume H. apply H. assume H1 H2. apply andI.
  + exact (HA1 H1).
  + exact (HB1 H2).
- assume H. apply H. assume H1 H2. apply andI.
  + exact (HA2 H1).
  + exact (HB2 H2).
Qed.

// ---- FILTER ----
Theorem hl_FILTER_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A, forall P1:set -> prop, (forall x :e A, l1 x = 1 <-> P1 x) -> forall l2 :e finseq A, hl_FILTER A l1 l2 = seq_filter P1 l2.
let A. assume HA.
claim Hnil: hl_NIL A = seq_nil. { exact (hl_NIL_compat A HA). }
claim Hex: exists g :e finseq A :^: finseq A :^: (2 :^: A), (forall P :e 2 :^: A, g P (hl_NIL A) = hl_NIL A) /\ forall h :e A, forall P :e 2 :^: A, forall t :e finseq A, g P (hl_CONS A h t) = hl_COND (finseq A) (P h) (hl_CONS A h (g P t)) (g P t).
{ witness (fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l). apply andI.
  - exact (lam2_Pi (2 :^: A) (finseq A) (finseq A) (fun P l => seq_filter (fun x => P x = 1) l) (fun P HP l Hl => seq_filter_finseq A (fun x => P x = 1) l Hl)).
  - apply andI.
    + let P. assume HP.
      exact (eq_trans_i ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P (hl_NIL A)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P seq_nil) (hl_NIL A) (f_equal (fun u => (fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P u) (hl_NIL A) seq_nil Hnil) (eq_trans_i ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P seq_nil) (seq_filter (fun x => P x = 1) seq_nil) (hl_NIL A) (lam2_beta (2 :^: A) (finseq A) (fun P l => seq_filter (fun x => P x = 1) l) P HP seq_nil (seq_nil_finseq A)) (eq_trans_i (seq_filter (fun x => P x = 1) seq_nil) seq_nil (hl_NIL A) (seq_filter_nil (fun x => P x = 1)) (eq_sym_i (hl_NIL A) seq_nil Hnil)))).
    + let h. assume Hh. let P. assume HP. let t. assume Ht.
      claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
      claim Hcf: seq_cons h t :e finseq A. { exact (seq_cons_finseq A h Hh t Ht). }
      claim HPh: P h :e 2. { exact (setexp_ap A 2 P HP h Hh). }
      claim Hft: seq_filter (fun x => P x = 1) t :e finseq A. { exact (seq_filter_finseq A (fun x => P x = 1) t Ht). }
      claim HGt: (fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t = seq_filter (fun x => P x = 1) t. { exact (lam2_beta (2 :^: A) (finseq A) (fun P l => seq_filter (fun x => P x = 1) l) P HP t Ht). }
      claim HGtf: (fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t :e finseq A. { exact ((eq_sym_i ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) (seq_filter (fun x => P x = 1) t) HGt) (fun hl__u hl__v => hl__u :e finseq A) Hft). }
      claim HX: hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) = seq_cons h (seq_filter (fun x => P x = 1) t). { exact (eq_trans_i (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) (hl_CONS A h (seq_filter (fun x => P x = 1) t)) (seq_cons h (seq_filter (fun x => P x = 1) t)) (f_equal (fun u => hl_CONS A h u) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) (seq_filter (fun x => P x = 1) t) HGt) (hl_CONS_compat A HA h Hh (seq_filter (fun x => P x = 1) t) Hft)). }
      claim HXf: hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) :e finseq A. { exact ((eq_sym_i (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) (seq_cons h (seq_filter (fun x => P x = 1) t)) HX) (fun hl__u hl__v => hl__u :e finseq A) (seq_cons_finseq A h Hh (seq_filter (fun x => P x = 1) t) Hft)). }
      claim Hcond: hl_COND (finseq A) (P h) (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) = if P h = 1 then seq_cons h (seq_filter (fun x => P x = 1) t) else seq_filter (fun x => P x = 1) t.
      { exact (eq_trans_i (hl_COND (finseq A) (P h) (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) (if P h = 1 then hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) else (fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) (if P h = 1 then seq_cons h (seq_filter (fun x => P x = 1) t) else seq_filter (fun x => P x = 1) t) (hl_COND_if (finseq A) (P h) HPh (P h = 1) (iff_refl (P h = 1)) (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) HXf ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) HGtf) (f_equal2 (fun u v => if P h = 1 then u else v) (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) (seq_cons h (seq_filter (fun x => P x = 1) t)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t) (seq_filter (fun x => P x = 1) t) HX HGt)). }
      exact (eq_trans_i ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P (hl_CONS A h t)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P (seq_cons h t)) (hl_COND (finseq A) (P h) (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) (f_equal (fun u => (fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P u) (hl_CONS A h t) (seq_cons h t) Hct) (eq_trans_i ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P (seq_cons h t)) (seq_filter (fun x => P x = 1) (seq_cons h t)) (hl_COND (finseq A) (P h) (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) (lam2_beta (2 :^: A) (finseq A) (fun P l => seq_filter (fun x => P x = 1) l) P HP (seq_cons h t) Hcf) (eq_trans_i (seq_filter (fun x => P x = 1) (seq_cons h t)) (if P h = 1 then seq_cons h (seq_filter (fun x => P x = 1) t) else seq_filter (fun x => P x = 1) t) (hl_COND (finseq A) (P h) (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) (seq_filter_cons A (fun x => P x = 1) h Hh t Ht) (eq_sym_i (hl_COND (finseq A) (P h) (hl_CONS A h ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) ((fun P :e 2 :^: A => fun l :e finseq A => seq_filter (fun x => P x = 1) l) P t)) (if P h = 1 then seq_cons h (seq_filter (fun x => P x = 1) t) else seq_filter (fun x => P x = 1) t) Hcond)))). }
apply (hl_FILTER_spec A HA Hex). assume H12 Hin. apply H12. assume Hn Hc.
let P. assume HP. let P1. assume HP1.
claim Hbase: hl_FILTER A P seq_nil = seq_filter P1 seq_nil.
{ exact (eq_trans_i (hl_FILTER A P seq_nil) (hl_FILTER A P (hl_NIL A)) (seq_filter P1 seq_nil) (f_equal (fun u => hl_FILTER A P u) seq_nil (hl_NIL A) (eq_sym_i (hl_NIL A) seq_nil Hnil)) (eq_trans_i (hl_FILTER A P (hl_NIL A)) (hl_NIL A) (seq_filter P1 seq_nil) (Hn P HP) (eq_trans_i (hl_NIL A) seq_nil (seq_filter P1 seq_nil) Hnil (eq_sym_i (seq_filter P1 seq_nil) seq_nil (seq_filter_nil P1))))). }
claim Hstep: forall h :e A, forall t :e finseq A, hl_FILTER A P t = seq_filter P1 t -> hl_FILTER A P (seq_cons h t) = seq_filter P1 (seq_cons h t).
{ let h. assume Hh. let t. assume Ht IH.
  claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
  claim HPh: P h :e 2. { exact (setexp_ap A 2 P HP h Hh). }
  claim Hft: seq_filter P1 t :e finseq A. { exact (seq_filter_finseq A P1 t Ht). }
  claim HFt: hl_FILTER A P t :e finseq A. { exact ((eq_sym_i (hl_FILTER A P t) (seq_filter P1 t) IH) (fun hl__u hl__v => hl__u :e finseq A) Hft). }
  claim HX: hl_CONS A h (hl_FILTER A P t) = seq_cons h (seq_filter P1 t). { exact (eq_trans_i (hl_CONS A h (hl_FILTER A P t)) (hl_CONS A h (seq_filter P1 t)) (seq_cons h (seq_filter P1 t)) (f_equal (fun u => hl_CONS A h u) (hl_FILTER A P t) (seq_filter P1 t) IH) (hl_CONS_compat A HA h Hh (seq_filter P1 t) Hft)). }
  claim HXf: hl_CONS A h (hl_FILTER A P t) :e finseq A. { exact ((eq_sym_i (hl_CONS A h (hl_FILTER A P t)) (seq_cons h (seq_filter P1 t)) HX) (fun hl__u hl__v => hl__u :e finseq A) (seq_cons_finseq A h Hh (seq_filter P1 t) Hft)). }
  claim Hcond: hl_COND (finseq A) (P h) (hl_CONS A h (hl_FILTER A P t)) (hl_FILTER A P t) = if P1 h then seq_cons h (seq_filter P1 t) else seq_filter P1 t.
  { exact (eq_trans_i (hl_COND (finseq A) (P h) (hl_CONS A h (hl_FILTER A P t)) (hl_FILTER A P t)) (if P1 h then hl_CONS A h (hl_FILTER A P t) else hl_FILTER A P t) (if P1 h then seq_cons h (seq_filter P1 t) else seq_filter P1 t) (hl_COND_if (finseq A) (P h) HPh (P1 h) (HP1 h Hh) (hl_CONS A h (hl_FILTER A P t)) HXf (hl_FILTER A P t) HFt) (f_equal2 (fun u v => if P1 h then u else v) (hl_CONS A h (hl_FILTER A P t)) (seq_cons h (seq_filter P1 t)) (hl_FILTER A P t) (seq_filter P1 t) HX IH)). }
  exact (eq_trans_i (hl_FILTER A P (seq_cons h t)) (hl_FILTER A P (hl_CONS A h t)) (seq_filter P1 (seq_cons h t)) (f_equal (fun u => hl_FILTER A P u) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (hl_CONS A h t) (seq_cons h t) Hct)) (eq_trans_i (hl_FILTER A P (hl_CONS A h t)) (hl_COND (finseq A) (P h) (hl_CONS A h (hl_FILTER A P t)) (hl_FILTER A P t)) (seq_filter P1 (seq_cons h t)) (Hc h Hh P HP t Ht) (eq_trans_i (hl_COND (finseq A) (P h) (hl_CONS A h (hl_FILTER A P t)) (hl_FILTER A P t)) (if P1 h then seq_cons h (seq_filter P1 t) else seq_filter P1 t) (seq_filter P1 (seq_cons h t)) Hcond (eq_sym_i (seq_filter P1 (seq_cons h t)) (if P1 h then seq_cons h (seq_filter P1 t) else seq_filter P1 t) (seq_filter_cons A P1 h Hh t Ht))))). }
exact (seq_induct A (fun l => hl_FILTER A P l = seq_filter P1 l) Hbase Hstep).
Qed.

// ---- set_of_list ----
Theorem hl_set_of_list_compat : forall A:set, A <> Empty -> forall l1 :e finseq A, hl_rep A (hl_set_of_list A l1) = seq_set l1.
let A. assume HA.
claim Hnil: hl_NIL A = seq_nil. { exact (hl_NIL_compat A HA). }
claim Hex: exists g :e 2 :^: A :^: finseq A, g (hl_NIL A) = hl_EMPTY A /\ forall h :e A, forall t :e finseq A, g (hl_CONS A h t) = hl_INSERT A h (g t).
{ witness (fun l :e finseq A => hl_chi A (seq_set l)). apply andI.
  - prove (fun l :e finseq A => hl_chi A (seq_set l)) :e Pi_ l :e finseq A, 2 :^: A. apply (lam_Pi (finseq A) (fun _ => 2 :^: A) (fun l => hl_chi A (seq_set l))). let l. assume _. exact (hl_chi_Pi A (seq_set l)).
  - apply andI.
    + claim H1: (fun l :e finseq A => hl_chi A (seq_set l)) (hl_NIL A) = hl_chi A Empty.
      { exact (eq_trans_i ((fun l :e finseq A => hl_chi A (seq_set l)) (hl_NIL A)) ((fun l :e finseq A => hl_chi A (seq_set l)) seq_nil) (hl_chi A Empty) (f_equal (fun u => (fun l :e finseq A => hl_chi A (seq_set l)) u) (hl_NIL A) seq_nil Hnil) (eq_trans_i ((fun l :e finseq A => hl_chi A (seq_set l)) seq_nil) (hl_chi A (seq_set seq_nil)) (hl_chi A Empty) (beta (finseq A) (fun l => hl_chi A (seq_set l)) seq_nil (seq_nil_finseq A)) (f_equal (fun u => hl_chi A u) (seq_set seq_nil) Empty seq_set_nil))). }
      claim H2: hl_chi A Empty = hl_EMPTY A.
      { apply (hl_rep_inj A (hl_chi A Empty) (hl_EMPTY A) (hl_chi_Pi A Empty) (hl_EMPTY_in A HA)). exact (eq_trans_i (hl_rep A (hl_chi A Empty)) Empty (hl_rep A (hl_EMPTY A)) (hl_rep_chi A Empty (Subq_Empty A)) (eq_sym_i (hl_rep A (hl_EMPTY A)) Empty (hl_EMPTY_compat A HA))). }
      exact (eq_trans_i ((fun l :e finseq A => hl_chi A (seq_set l)) (hl_NIL A)) (hl_chi A Empty) (hl_EMPTY A) H1 H2).
    + let h. assume Hh. let t. assume Ht.
      claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
      claim Hcf: seq_cons h t :e finseq A. { exact (seq_cons_finseq A h Hh t Ht). }
      claim Hst: seq_set t c= A. { exact (seq_set_Subq A t Ht). }
      claim Hsc: seq_set (seq_cons h t) c= A. { exact (seq_set_Subq A (seq_cons h t) Hcf). }
      claim HGt: (fun l :e finseq A => hl_chi A (seq_set l)) t = hl_chi A (seq_set t). { exact (beta (finseq A) (fun l => hl_chi A (seq_set l)) t Ht). }
      claim H1: (fun l :e finseq A => hl_chi A (seq_set l)) (hl_CONS A h t) = hl_chi A (seq_set (seq_cons h t)).
      { exact (eq_trans_i ((fun l :e finseq A => hl_chi A (seq_set l)) (hl_CONS A h t)) ((fun l :e finseq A => hl_chi A (seq_set l)) (seq_cons h t)) (hl_chi A (seq_set (seq_cons h t))) (f_equal (fun u => (fun l :e finseq A => hl_chi A (seq_set l)) u) (hl_CONS A h t) (seq_cons h t) Hct) (beta (finseq A) (fun l => hl_chi A (seq_set l)) (seq_cons h t) Hcf)). }
      claim H2: hl_chi A (seq_set (seq_cons h t)) = hl_INSERT A h (hl_chi A (seq_set t)).
      { apply (hl_rep_inj A (hl_chi A (seq_set (seq_cons h t))) (hl_INSERT A h (hl_chi A (seq_set t))) (hl_chi_Pi A (seq_set (seq_cons h t))) (setexp2_ap A (2 :^: A) (2 :^: A) (hl_INSERT A) (hl_INSERT_in A HA) h Hh (hl_chi A (seq_set t)) (hl_chi_Pi A (seq_set t)))).
        exact (eq_trans_i (hl_rep A (hl_chi A (seq_set (seq_cons h t)))) (seq_set t :\/: {h}) (hl_rep A (hl_INSERT A h (hl_chi A (seq_set t)))) (eq_trans_i (hl_rep A (hl_chi A (seq_set (seq_cons h t)))) (seq_set (seq_cons h t)) (seq_set t :\/: {h}) (hl_rep_chi A (seq_set (seq_cons h t)) Hsc) (seq_set_cons A h Hh t Ht)) (eq_sym_i (hl_rep A (hl_INSERT A h (hl_chi A (seq_set t)))) (seq_set t :\/: {h}) (eq_trans_i (hl_rep A (hl_INSERT A h (hl_chi A (seq_set t)))) (SetAdjoin (hl_rep A (hl_chi A (seq_set t))) h) (seq_set t :\/: {h}) (hl_INSERT_compat A HA h Hh (hl_chi A (seq_set t)) (hl_chi_Pi A (seq_set t))) (f_equal (fun u => u :\/: {h}) (hl_rep A (hl_chi A (seq_set t))) (seq_set t) (hl_rep_chi A (seq_set t) Hst))))). }
      exact (eq_trans_i ((fun l :e finseq A => hl_chi A (seq_set l)) (hl_CONS A h t)) (hl_chi A (seq_set (seq_cons h t))) (hl_INSERT A h ((fun l :e finseq A => hl_chi A (seq_set l)) t)) H1 (eq_trans_i (hl_chi A (seq_set (seq_cons h t))) (hl_INSERT A h (hl_chi A (seq_set t))) (hl_INSERT A h ((fun l :e finseq A => hl_chi A (seq_set l)) t)) H2 (f_equal (fun u => hl_INSERT A h u) (hl_chi A (seq_set t)) ((fun l :e finseq A => hl_chi A (seq_set l)) t) (eq_sym_i ((fun l :e finseq A => hl_chi A (seq_set l)) t) (hl_chi A (seq_set t)) HGt)))). }
apply (hl_set_of_list_spec A HA Hex). assume H12 Hin. apply H12. assume Hn Hc.
claim Hbase: hl_rep A (hl_set_of_list A seq_nil) = seq_set seq_nil.
{ exact (eq_trans_i (hl_rep A (hl_set_of_list A seq_nil)) (hl_rep A (hl_EMPTY A)) (seq_set seq_nil) (f_equal (fun u => hl_rep A u) (hl_set_of_list A seq_nil) (hl_EMPTY A) (eq_trans_i (hl_set_of_list A seq_nil) (hl_set_of_list A (hl_NIL A)) (hl_EMPTY A) (f_equal (fun u => hl_set_of_list A u) seq_nil (hl_NIL A) (eq_sym_i (hl_NIL A) seq_nil Hnil)) Hn)) (eq_trans_i (hl_rep A (hl_EMPTY A)) Empty (seq_set seq_nil) (hl_EMPTY_compat A HA) (eq_sym_i (seq_set seq_nil) Empty seq_set_nil))). }
claim Hstep: forall h :e A, forall t :e finseq A, hl_rep A (hl_set_of_list A t) = seq_set t -> hl_rep A (hl_set_of_list A (seq_cons h t)) = seq_set (seq_cons h t).
{ let h. assume Hh. let t. assume Ht IH.
  claim Hct: hl_CONS A h t = seq_cons h t. { exact (hl_CONS_compat A HA h Hh t Ht). }
  claim Hslt: hl_set_of_list A t :e 2 :^: A. { exact (setexp_ap (finseq A) (2 :^: A) (hl_set_of_list A) Hin t Ht). }
  exact (eq_trans_i (hl_rep A (hl_set_of_list A (seq_cons h t))) (hl_rep A (hl_INSERT A h (hl_set_of_list A t))) (seq_set (seq_cons h t)) (f_equal (fun u => hl_rep A u) (hl_set_of_list A (seq_cons h t)) (hl_INSERT A h (hl_set_of_list A t)) (eq_trans_i (hl_set_of_list A (seq_cons h t)) (hl_set_of_list A (hl_CONS A h t)) (hl_INSERT A h (hl_set_of_list A t)) (f_equal (fun u => hl_set_of_list A u) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (hl_CONS A h t) (seq_cons h t) Hct)) (Hc h Hh t Ht))) (eq_trans_i (hl_rep A (hl_INSERT A h (hl_set_of_list A t))) (SetAdjoin (hl_rep A (hl_set_of_list A t)) h) (seq_set (seq_cons h t)) (hl_INSERT_compat A HA h Hh (hl_set_of_list A t) Hslt) (eq_trans_i (SetAdjoin (hl_rep A (hl_set_of_list A t)) h) (seq_set t :\/: {h}) (seq_set (seq_cons h t)) (f_equal (fun u => u :\/: {h}) (hl_rep A (hl_set_of_list A t)) (seq_set t) IH) (eq_sym_i (seq_set (seq_cons h t)) (seq_set t :\/: {h}) (seq_set_cons A h Hh t Ht))))). }
exact (seq_induct A (fun l => hl_rep A (hl_set_of_list A l) = seq_set l) Hbase Hstep).
Qed.
