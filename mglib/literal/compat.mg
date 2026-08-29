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
