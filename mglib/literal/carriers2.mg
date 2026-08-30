// ---- stage 2 carrier facts (docs/DESIGN.md 21.9): the parametrised translated types of cart.ml ----
// finite_image A: the literal subtype {x :e omega | x IN 1..dimindex(:A)} is the native index set idx A.
Theorem hl_ty_finite_image_native : forall A:set, A <> Empty -> hl_ty_finite_image A = idx A.
let A. assume HA.
claim Hn1: hl_NUMERAL (hl_BIT1 hl_zero) :e omega. { rewrite hl_one_numeral. exact (nat_p_omega 1 nat_1). }
claim Hd: hl_dimindex A (hl_UNIV A) :e omega. { exact (setexp_ap (2 :^: A) omega (hl_dimindex A) (hl_dimindex_in A HA) (hl_UNIV A) (hl_UNIV_in A HA)). }
claim Hns: hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)) :e 2 :^: omega.
{ exact (setexp_ap omega (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap omega (2 :^: omega :^: omega) hl_numseg hl_numseg_in (hl_NUMERAL (hl_BIT1 hl_zero)) Hn1) (hl_dimindex A (hl_UNIV A)) Hd). }
claim Hdim: hl_dimindex A (hl_UNIV A) = dimindex A. { exact (hl_dimindex_compat A HA (hl_UNIV A) (hl_UNIV_in A HA)). }
claim Hpw: forall x :e omega, (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))) x = 1 <-> 1 <= x /\ x <= dimindex A.
{ let x. assume Hx.
  claim H1: hl_IN omega x (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A))) = 1 <-> x :e hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A))).
  { exact (hl_IN_compat omega omega_nonempty x Hx (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A))) Hns). }
  claim H2: x :e hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A))) <-> 1 <= x /\ x <= dimindex A.
  { rewrite (hl_numseg_compat (hl_NUMERAL (hl_BIT1 hl_zero)) Hn1 (hl_dimindex A (hl_UNIV A)) Hd). rewrite hl_one_numeral. rewrite Hdim. apply iffI.
    - assume H. exact (SepE2 omega (fun i => 1 <= i /\ i <= dimindex A) x H).
    - assume H. exact (SepI omega (fun i => 1 <= i /\ i <= dimindex A) x Hx H). }
  exact (iff_eq1_l ((fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))) x) (hl_IN omega x (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))) (beta omega (fun r => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))) x Hx) (1 <= x /\ x <= dimindex A) (iff_trans (hl_IN omega x (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A))) = 1) (x :e hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))) (1 <= x /\ x <= dimindex A) H1 H2)). }
exact (Sep_ext_iff omega (fun x => (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))) x = 1) (fun x => 1 <= x /\ x <= dimindex A) Hpw).
Qed.
Theorem hl_ty_finite_image_native_nonempty : forall A:set, A <> Empty -> idx A <> Empty.
let A. assume HA. exact (nonempty_of_In (idx A) 1 (SepI omega (fun i => 1 <= i /\ i <= dimindex A) 1 (nat_p_omega 1 nat_1) (andI (1 <= 1) (1 <= dimindex A) (SNoLe_ref 1) (dimindex_ge_1 A HA)))).
Qed.
Theorem hl_ty_finite_image_nonempty : forall A:set, A <> Empty -> hl_ty_finite_image A <> Empty.
let A. assume HA. exact ((eq_sym_i (hl_ty_finite_image A) (idx A) (hl_ty_finite_image_native A HA)) (fun u v => u <> Empty) (hl_ty_finite_image_native_nonempty A HA)).
Qed.
// cart A B: the literal subtype of A :^: hl_ty_finite_image B with the true predicate is the native A :^: idx B.
Theorem hl_ty_cart_native : forall A B:set, A <> Empty -> B <> Empty -> hl_ty_cart A B = A :^: idx B.
let A B. assume HA HB.
prove {x :e A :^: hl_ty_finite_image B | (fun r :e A :^: hl_ty_finite_image B => if True then 1 else 0) x = 1} = A :^: idx B.
rewrite (hl_ty_finite_image_native B HB).
apply set_ext.
- let x. assume Hx. exact (SepE1 (A :^: idx B) (fun x => (fun r :e A :^: idx B => if True then 1 else 0) x = 1) x Hx).
- let x. assume Hx. apply (SepI (A :^: idx B) (fun x => (fun r :e A :^: idx B => if True then 1 else 0) x = 1) x Hx).
  rewrite (beta (A :^: idx B) (fun r => if True then 1 else 0) x Hx). exact (If_i_1 True 1 0 (fun p:prop => fun H:p => H)).
Qed.
Theorem hl_ty_cart_native_nonempty : forall A B:set, A <> Empty -> B <> Empty -> A :^: idx B <> Empty.
let A B. assume HA HB. exact (setexp_nonempty (idx B) A HA).
Qed.
Theorem hl_ty_cart_nonempty : forall A B:set, A <> Empty -> B <> Empty -> hl_ty_cart A B <> Empty.
let A B. assume HA HB. exact ((eq_sym_i (hl_ty_cart A B) (A :^: idx B) (hl_ty_cart_native A B HA HB)) (fun u v => u <> Empty) (hl_ty_cart_native_nonempty A B HA HB)).
Qed.
// finite_sum A B: the literal subtype {x :e omega | x IN 1..dimindex(:A)+dimindex(:B)} is idx_n (dimindex A + dimindex B).
Theorem hl_ty_finite_sum_native : forall A B:set, A <> Empty -> B <> Empty -> hl_ty_finite_sum A B = idx_n (dimindex A + dimindex B).
let A B. assume HA HB.
claim Hn1: (hl_NUMERAL (hl_BIT1 hl_zero)) :e omega. { rewrite hl_one_numeral. exact (nat_p_omega 1 nat_1). }
claim HdA: hl_dimindex A (hl_UNIV A) :e omega. { exact (setexp_ap (2 :^: A) omega (hl_dimindex A) (hl_dimindex_in A HA) (hl_UNIV A) (hl_UNIV_in A HA)). }
claim HdB: hl_dimindex B (hl_UNIV B) :e omega. { exact (setexp_ap (2 :^: B) omega (hl_dimindex B) (hl_dimindex_in B HB) (hl_UNIV B) (hl_UNIV_in B HB)). }
claim Hd: (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) :e omega. { rewrite (hl_add_compat (hl_dimindex A (hl_UNIV A)) HdA (hl_dimindex B (hl_UNIV B)) HdB). exact (add_SNo_In_omega (hl_dimindex A (hl_UNIV A)) HdA (hl_dimindex B (hl_UNIV B)) HdB). }
claim Hns: (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))) :e 2 :^: omega.
{ exact (setexp_ap omega (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap omega (2 :^: omega :^: omega) hl_numseg hl_numseg_in (hl_NUMERAL (hl_BIT1 hl_zero)) Hn1) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) Hd). }
claim Hdim: (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) = dimindex A + dimindex B.
{ rewrite (hl_add_compat (hl_dimindex A (hl_UNIV A)) HdA (hl_dimindex B (hl_UNIV B)) HdB). rewrite (hl_dimindex_compat A HA (hl_UNIV A) (hl_UNIV_in A HA)). rewrite (hl_dimindex_compat B HB (hl_UNIV B) (hl_UNIV_in B HB)). exact (fun q H => H). }
claim Hpw: forall x :e omega, (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) x = 1 <-> 1 <= x /\ x <= dimindex A + dimindex B.
{ let x. assume Hx.
  claim H1: hl_IN omega x (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))) = 1 <-> x :e hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))).
  { exact (hl_IN_compat omega omega_nonempty x Hx (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))) Hns). }
  claim H2: x :e hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))) <-> 1 <= x /\ x <= dimindex A + dimindex B.
  { rewrite (hl_numseg_compat (hl_NUMERAL (hl_BIT1 hl_zero)) Hn1 (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))) Hd). rewrite hl_one_numeral. rewrite Hdim. apply iffI.
    - assume H. exact (SepE2 omega (fun i => 1 <= i /\ i <= dimindex A + dimindex B) x H).
    - assume H. exact (SepI omega (fun i => 1 <= i /\ i <= dimindex A + dimindex B) x Hx H). }
  exact (iff_eq1_l ((fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) x) (hl_IN omega x (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) (beta omega (fun r => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) x Hx) (1 <= x /\ x <= dimindex A + dimindex B) (iff_trans (hl_IN omega x (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))) = 1) (x :e hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) (1 <= x /\ x <= dimindex A + dimindex B) H1 H2)). }
exact (Sep_ext_iff omega (fun x => (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) x = 1) (fun x => 1 <= x /\ x <= dimindex A + dimindex B) Hpw).
Qed.
Theorem hl_ty_finite_sum_native_nonempty : forall A B:set, A <> Empty -> B <> Empty -> idx_n (dimindex A + dimindex B) <> Empty.
let A B. assume HA HB.
claim HSA: SNo (dimindex A). { exact (omega_SNo (dimindex A) (dimindex_omega A)). }
claim HSB: SNo (dimindex B). { exact (omega_SNo (dimindex B) (dimindex_omega B)). }
claim Hle: dimindex A <= dimindex A + dimindex B.
{ claim H0: dimindex A + 0 <= dimindex A + dimindex B. { exact (add_SNo_Le2 (dimindex A) 0 (dimindex B) HSA SNo_0 HSB (omega_nonneg (dimindex B) (dimindex_omega B))). }
   exact ((add_SNo_0R (dimindex A) HSA) (fun u v => u <= dimindex A + dimindex B) H0). }
claim H1: 1 <= dimindex A + dimindex B. { exact (SNoLe_tra 1 (dimindex A) (dimindex A + dimindex B) SNo_1 HSA (SNo_add_SNo (dimindex A) (dimindex B) HSA HSB) (dimindex_ge_1 A HA) Hle). }
exact (nonempty_of_In (idx_n (dimindex A + dimindex B)) 1 (SepI omega (fun i => 1 <= i /\ i <= dimindex A + dimindex B) 1 (nat_p_omega 1 nat_1) (andI (1 <= 1) (1 <= dimindex A + dimindex B) (SNoLe_ref 1) H1))).
Qed.
Theorem hl_ty_finite_sum_nonempty : forall A B:set, A <> Empty -> B <> Empty -> hl_ty_finite_sum A B <> Empty.
let A B. assume HA HB. exact ((eq_sym_i (hl_ty_finite_sum A B) (idx_n (dimindex A + dimindex B)) (hl_ty_finite_sum_native A B HA HB)) (fun u v => u <> Empty) (hl_ty_finite_sum_native_nonempty A B HA HB)).
Qed.
