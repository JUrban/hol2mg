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
