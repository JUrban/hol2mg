// Compatibility lemmas for the constants of the Library files of the standard profile (checked after compat2.mg
// when certifying the standard profile; their unfold lemmas exist only in that profile's generated modules).

Theorem hl_squarefree_compat : forall l1 :e omega, hl_squarefree l1 = 1 <-> forall m :e omega, divides_nat (m ^ 2) l1 -> m = 1.
let n. assume Hn.
claim H2o: hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)) :e omega. { exact ((eq_sym_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) 2 hl_two_numeral) (fun u v => u :e omega) (nat_p_omega 2 nat_2)). }
claim He: forall m :e omega, hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = m ^ 2.
{ let m. assume Hm. exact (eq_trans_i (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (m ^ hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (m ^ 2) (hl_EXP_compat m Hm (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) H2o) (f_equal (fun u => m ^ u) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) 2 hl_two_numeral)). }
claim H2m: forall m :e omega, m ^ 2 :e omega. { let m. assume Hm. exact (exp_SNo_nat_In_omega m Hm 2 (nat_p_omega 2 nat_2)). }
claim Hif: (if forall m :e omega, hl_num_divides (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1 -> m = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) = 1 <-> forall m :e omega, divides_nat (m ^ 2) n -> m = 1.
{ apply (iff_trans ((if forall m :e omega, hl_num_divides (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1 -> m = hl_NUMERAL (hl_BIT1 hl_zero) then 1 else 0) = 1) (forall m :e omega, hl_num_divides (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1 -> m = hl_NUMERAL (hl_BIT1 hl_zero)) (forall m :e omega, divides_nat (m ^ 2) n -> m = 1) (If_1_iff (forall m :e omega, hl_num_divides (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1 -> m = hl_NUMERAL (hl_BIT1 hl_zero)))).
  apply iffI.
  - assume H. let m. assume Hm Hd.
    claim Hd': hl_num_divides (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n = 1.
    { exact ((eq_sym_i (hl_EXP m (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (m ^ 2) (He m Hm)) (fun hl__u hl__v => hl_num_divides hl__u n = 1) (iffER (hl_num_divides (m ^ 2) n = 1) (divides_nat (m ^ 2) n) (hl_num_divides_compat (m ^ 2) (H2m m Hm) n Hn) Hd)). }
    exact (eq_trans_i m (hl_NUMERAL (hl_BIT1 hl_zero)) 1 (H m Hm Hd') hl_one_numeral).
  - assume H. let m. assume Hm Hd.
    claim Hd': divides_nat (m ^ 2) n.
    { exact (iffEL (hl_num_divides (m ^ 2) n = 1) (divides_nat (m ^ 2) n) (hl_num_divides_compat (m ^ 2) (H2m m Hm) n Hn) ((He m Hm) (fun hl__u hl__v => hl_num_divides hl__u n = 1) Hd)). }
    exact (eq_trans_i m 1 (hl_NUMERAL (hl_BIT1 hl_zero)) (H m Hm Hd') (eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral)). }
exact ((hl_squarefree_unfold n Hn) (fun hl__u hl__v => hl__v = 1 <-> forall m :e omega, divides_nat (m ^ 2) n -> m = 1) Hif).
Qed.

Theorem hl_int_prime_compat : forall l1 :e int, hl_int_prime l1 = 1 <-> 1 < abs_SNo l1 /\ forall x :e int, divides_int x l1 -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo l1.
let p. assume Hp.
claim Hp': p :e hl_ty_int. { exact ((eq_sym_i hl_ty_int int hl_ty_int_native) (fun u v => p :e u) Hp). }
claim H1o: hl_NUMERAL (hl_BIT1 hl_zero) :e omega. { exact ((eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral) (fun u v => u :e omega) (nat_p_omega 1 nat_1)). }
claim H1i: hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) = 1. { exact (eq_trans_i (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) 1 (hl_int_of_num_compat (hl_NUMERAL (hl_BIT1 hl_zero)) H1o) hl_one_numeral). }
claim H1int: hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) :e int. { exact ((eq_sym_i (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) 1 H1i) (fun u v => u :e int) (Subq_omega_int 1 (nat_p_omega 1 nat_1))). }
claim Hai: forall x :e int, hl_int_abs x :e int. { let x. assume Hx. exact (setexp_ap int int hl_int_abs hl_int_abs_in x Hx). }
claim Hab: hl_int_abs p = abs_SNo p. { exact (hl_int_abs_compat p Hp). }
claim X2: 1 < hl_int_abs p <-> 1 < abs_SNo p. { exact ((eq_sym_i (hl_int_abs p) (abs_SNo p) Hab) (fun u v => 1 < u <-> 1 < abs_SNo p) (iff_refl (1 < abs_SNo p))). }
claim X: hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) < hl_int_abs p <-> 1 < abs_SNo p. { exact ((eq_sym_i (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) 1 H1i) (fun u v => u < hl_int_abs p <-> 1 < abs_SNo p) X2). }
claim Hgt: hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 <-> 1 < abs_SNo p. { exact (iff_trans (hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) < hl_int_abs p) (1 < abs_SNo p) (hl_int_gt_compat (hl_int_abs p) (Hai p Hp) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) H1int) X). }
claim Hall: (forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p) <-> (forall x :e int, divides_int x p -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo p).
{ apply iffI.
  - assume H. let x. assume Hx Hd.
    claim Hx': x :e hl_ty_int. { exact ((eq_sym_i hl_ty_int int hl_ty_int_native) (fun u v => x :e u) Hx). }
    claim Hd': hl_int_divides x p = 1. { exact (iffER (hl_int_divides x p = 1) (divides_int x p) (hl_int_divides_compat x Hx p Hp) Hd). }
    apply (H x Hx' Hd').
    + assume He. apply orIL. exact (eq_trans_i (abs_SNo x) (hl_int_abs x) 1 (eq_sym_i (hl_int_abs x) (abs_SNo x) (hl_int_abs_compat x Hx)) (eq_trans_i (hl_int_abs x) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) 1 He H1i)).
    + assume He. apply orIR. exact (eq_trans_i (abs_SNo x) (hl_int_abs x) (abs_SNo p) (eq_sym_i (hl_int_abs x) (abs_SNo x) (hl_int_abs_compat x Hx)) (eq_trans_i (hl_int_abs x) (hl_int_abs p) (abs_SNo p) He Hab)).
  - assume H. let x. assume Hx' Hd'.
    claim Hx: x :e int. { exact (hl_ty_int_native (fun u v => x :e u) Hx'). }
    claim Hd: divides_int x p. { exact (iffEL (hl_int_divides x p = 1) (divides_int x p) (hl_int_divides_compat x Hx p Hp) Hd'). }
    apply (H x Hx Hd).
    + assume He. apply orIL. exact (eq_trans_i (hl_int_abs x) (abs_SNo x) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_abs_compat x Hx) (eq_trans_i (abs_SNo x) 1 (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) He (eq_sym_i (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) 1 H1i))).
    + assume He. apply orIR. exact (eq_trans_i (hl_int_abs x) (abs_SNo x) (hl_int_abs p) (hl_int_abs_compat x Hx) (eq_trans_i (abs_SNo x) (abs_SNo p) (hl_int_abs p) He (eq_sym_i (hl_int_abs p) (abs_SNo p) Hab))). }
claim Hif: (if hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p then 1 else 0) = 1 <-> 1 < abs_SNo p /\ forall x :e int, divides_int x p -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo p.
{ apply (iff_trans ((if hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p then 1 else 0) = 1) (hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p) (1 < abs_SNo p /\ forall x :e int, divides_int x p -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo p) (If_1_iff (hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p))).
  apply iffI.
  - assume H. apply H. assume Ha Hb. exact (andI (1 < abs_SNo p) (forall x :e int, divides_int x p -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo p) (iffEL (hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) (1 < abs_SNo p) Hgt Ha) (iffEL (forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p) (forall x :e int, divides_int x p -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo p) Hall Hb)).
  - assume H. apply H. assume Ha Hb. exact (andI (hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) (forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p) (iffER (hl_int_gt (hl_int_abs p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) (1 < abs_SNo p) Hgt Ha) (iffER (forall x :e hl_ty_int, hl_int_divides x p = 1 -> hl_int_abs x = hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) \/ hl_int_abs x = hl_int_abs p) (forall x :e int, divides_int x p -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo p) Hall Hb)). }
exact ((hl_int_prime_unfold p Hp') (fun hl__u hl__v => hl__v = 1 <-> 1 < abs_SNo p /\ forall x :e int, divides_int x p -> abs_SNo x = 1 \/ abs_SNo x = abs_SNo p) Hif).
Qed.

Theorem hl_order_compat : forall l1 l2 :e omega, hl_order l1 l2 = mult_order l1 l2.
let n. assume Hn. let a. assume Ha.
claim H1o: hl_NUMERAL (hl_BIT1 hl_zero) :e omega. { exact ((eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral) (fun u v => u :e omega) (nat_p_omega 1 nat_1)). }
claim Hmod: hl_num_mod n :e 2 :^: omega :^: omega. { exact (setexp_ap omega (2 :^: omega :^: omega) hl_num_mod hl_num_mod_in n Hn). }
claim HP: (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) :e 2 :^: omega.
{ prove (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) :e Pi_ d :e omega, 2.
  apply (lam_Pi omega (fun _ => 2) (fun d => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0)).
  let d. assume _. exact (If_in_2 (forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1)). }
claim Hk1: forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2.
{ let k. assume Hk.
  claim HEk: hl_EXP a k :e omega. { exact ((eq_sym_i (hl_EXP a k) (a ^ k) (hl_EXP_compat a Ha k Hk)) (fun u v => u :e omega) (exp_SNo_nat_In_omega a Ha k Hk)). }
  apply (iff_trans (hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1) (exists q1 q2 :e omega, hl_EXP a k + n * q1 = hl_NUMERAL (hl_BIT1 hl_zero) + n * q2) (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) (hl_sym_3d3d_compat1 (hl_EXP a k) HEk (hl_NUMERAL (hl_BIT1 hl_zero)) H1o (hl_num_mod n) Hmod (fun x y => exists q1 q2 :e omega, x + n * q1 = y + n * q2) (fun x Hx y Hy => hl_num_mod_compat n Hn x Hx y Hy))).
  exact ((eq_sym_i (hl_EXP a k) (a ^ k) (hl_EXP_compat a Ha k Hk)) (fun u v => (exists q1 q2 :e omega, u + n * q1 = hl_NUMERAL (hl_BIT1 hl_zero) + n * q2) <-> (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2)) ((eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral) (fun u v => (exists q1 q2 :e omega, a ^ k + n * q1 = u + n * q2) <-> (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2)) (iff_refl (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2)))). }
claim Hpw: forall d :e omega, (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) d = 1 <-> (forall k :e omega, (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) <-> divides_nat d k).
{ let d. assume Hd.
  claim Hb: (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) d = (if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0).
  { exact (beta omega (fun d => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) d Hd). }
  apply (iff_trans ((fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) d = 1) ((if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) = 1) (forall k :e omega, (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) <-> divides_nat d k)).
  - exact ((eq_sym_i ((fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) d) (if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) Hb) (fun u v => u = 1 <-> (if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) = 1) (iff_refl ((if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) = 1))).
  - apply (iff_trans ((if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) = 1) (forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1) (forall k :e omega, (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) <-> divides_nat d k) (If_1_iff (forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1))).
    apply iffI.
    + assume H. let k. assume Hk.
      exact (iff_trans (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) (hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1) (divides_nat d k) (iff_sym (hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1) (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) (Hk1 k Hk)) (iff_trans (hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1) (hl_num_divides d k = 1) (divides_nat d k) (H k Hk) (hl_num_divides_compat d Hd k Hk))).
    + assume H. let k. assume Hk.
      exact (iff_trans (hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1) (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) (hl_num_divides d k = 1) (Hk1 k Hk) (iff_trans (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) (divides_nat d k) (hl_num_divides d k = 1) (H k Hk) (iff_sym (hl_num_divides d k = 1) (divides_nat d k) (hl_num_divides_compat d Hd k Hk)))). }
prove hl_order n a = choose_in omega (fun d => forall k :e omega, (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) <-> divides_nat d k).
exact (eq_trans_i (hl_order n a) (hl_select omega (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0)) (choose_in omega (fun d => forall k :e omega, (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) <-> divides_nat d k)) (hl_order_unfold n Hn a Ha) (eq_trans_i (hl_select omega (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0)) (choose_in omega (fun d => (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) d = 1)) (choose_in omega (fun d => forall k :e omega, (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) <-> divides_nat d k)) (hl_select_eq omega (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) HP) (choose_in_ext omega (fun d => (fun d :e omega => if forall k :e omega, hl_sym_3d3d omega (hl_EXP a k) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_num_mod n) = 1 <-> hl_num_divides d k = 1 then 1 else 0) d = 1) (fun d => forall k :e omega, (exists q1 q2 :e omega, a ^ k + n * q1 = 1 + n * q2) <-> divides_nat d k) Hpw))).
Qed.

Theorem ReplSep_IN_Repl : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall F F':set -> set, (forall x :e A, F x = F' x) -> {F x | x :e A, hl_IN A x s = 1} = {F' x | x :e hl_rep A s}.
let A. assume HA. let s. assume Hs. let F F'. assume HF. apply set_ext.
- let w. assume Hw. apply (ReplSepE_impred A (fun x => hl_IN A x s = 1) (fun x => F x) w Hw). let x. assume Hx Hin Hwx.
  claim Hxs: x :e hl_rep A s. { exact (iffEL (hl_IN A x s = 1) (x :e hl_rep A s) (hl_IN_compat A HA x Hx s Hs) Hin). }
  exact ((eq_sym_i w (F x) Hwx) (fun u v => u :e {F' x | x :e hl_rep A s}) ((eq_sym_i (F x) (F' x) (HF x Hx)) (fun u v => u :e {F' x | x :e hl_rep A s}) (ReplI (hl_rep A s) (fun x => F' x) x Hxs))).
- let w. assume Hw. apply (ReplE_impred (hl_rep A s) (fun x => F' x) w Hw). let x. assume Hx Hwx.
  claim HxA: x :e A. { exact (hl_rep_Subq A s x Hx). }
  claim Hin: hl_IN A x s = 1. { exact (iffER (hl_IN A x s = 1) (x :e hl_rep A s) (hl_IN_compat A HA x HxA s Hs) Hx). }
  exact ((eq_sym_i w (F' x) Hwx) (fun u v => u :e {F x | x :e A, hl_IN A x s = 1}) ((HF x HxA) (fun u v => u :e {F x | x :e A, hl_IN A x s = 1}) (ReplSepI A (fun x => hl_IN A x s = 1) (fun x => F x) x HxA Hin))).
Qed.
Theorem hl_sym_2b5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :+: B) (hl_sym_2b5f63 A B l1 l2) = hl_rep A l1 :+: hl_rep B l2.
let A B. assume HA HB. let s. assume Hs. let t. assume Ht.
claim HAB: A :+: B <> Empty. { exact (setsum_nonempty_L A B HA). }
claim Hq1: forall x :e A, hl_IN A x s :e 2. { let x. assume Hx. exact (setexp2_ap A (2 :^: A) 2 (hl_IN A) (hl_IN_in A HA) x Hx s Hs). }
claim Hq2: forall y :e B, hl_IN B y t :e 2. { let y. assume Hy. exact (setexp2_ap B (2 :^: B) 2 (hl_IN B) (hl_IN_in B HB) y Hy t Ht). }
claim HF1: forall x :e A, hl_INL A B x :e A :+: B. { let x. assume Hx. exact ((eq_sym_i (hl_INL A B x) (Inj0 x) (hl_INL_compat A B HA HB x Hx)) (fun u v => u :e A :+: B) (Inj0_setsum A B x Hx)). }
claim HF2: forall y :e B, hl_INR B A y :e A :+: B. { let y. assume Hy. exact ((eq_sym_i (hl_INR B A y) (Inj1 y) (hl_INR_compat B A HB HA y Hy)) (fun u v => u :e A :+: B) (Inj1_setsum A B y Hy)). }
claim HP1: (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0) :e 2 :^: (A :+: B).
{ prove (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0) :e Pi_ v :e A :+: B, 2. apply (lam_Pi (A :+: B) (fun _ => 2) (fun v => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0)). let v. assume _. exact (If_in_2 (exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1)). }
claim HP2: (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0) :e 2 :^: (A :+: B).
{ prove (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0) :e Pi_ v :e A :+: B, 2. apply (lam_Pi (A :+: B) (fun _ => 2) (fun v => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0)). let v. assume _. exact (If_in_2 (exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1)). }
claim HG1t: hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0) :e 2 :^: (A :+: B).
{ exact (setexp_ap (2 :^: (A :+: B)) (2 :^: (A :+: B)) (hl_GSPEC (A :+: B)) (hl_GSPEC_in (A :+: B) HAB) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0) HP1). }
claim HG2t: hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0) :e 2 :^: (A :+: B).
{ exact (setexp_ap (2 :^: (A :+: B)) (2 :^: (A :+: B)) (hl_GSPEC (A :+: B)) (hl_GSPEC_in (A :+: B) HAB) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0) HP2). }
claim HG1: hl_rep (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0)) = {Inj0 x | x :e hl_rep A s}.
{ exact (eq_trans_i (hl_rep (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0))) {v :e A :+: B | exists x :e A, hl_IN A x s = 1 /\ v = hl_INL A B x} {Inj0 x | x :e hl_rep A s} (hl_gspec_generic A (A :+: B) (fun x => hl_IN A x s) (fun x => hl_INL A B x) Hq1) (eq_trans_i {v :e A :+: B | exists x :e A, hl_IN A x s = 1 /\ v = hl_INL A B x} {hl_INL A B x | x :e A, hl_IN A x s = 1} {Inj0 x | x :e hl_rep A s} (gspec_replsep_form A (A :+: B) (fun x => hl_IN A x s) (fun x => hl_INL A B x) HF1) (ReplSep_IN_Repl A HA s Hs (fun x => hl_INL A B x) (fun x => Inj0 x) (fun x Hx => hl_INL_compat A B HA HB x Hx)))). }
claim HG2: hl_rep (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0)) = {Inj1 y | y :e hl_rep B t}.
{ exact (eq_trans_i (hl_rep (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0))) {v :e A :+: B | exists y :e B, hl_IN B y t = 1 /\ v = hl_INR B A y} {Inj1 y | y :e hl_rep B t} (hl_gspec_generic B (A :+: B) (fun y => hl_IN B y t) (fun y => hl_INR B A y) Hq2) (eq_trans_i {v :e A :+: B | exists y :e B, hl_IN B y t = 1 /\ v = hl_INR B A y} {hl_INR B A y | y :e B, hl_IN B y t = 1} {Inj1 y | y :e hl_rep B t} (gspec_replsep_form B (A :+: B) (fun y => hl_IN B y t) (fun y => hl_INR B A y) HF2) (ReplSep_IN_Repl B HB t Ht (fun y => hl_INR B A y) (fun y => Inj1 y) (fun y Hy => hl_INR_compat B A HB HA y Hy)))). }
claim Hmain: hl_rep (A :+: B) (hl_UNION (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0)) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0))) = {Inj0 x | x :e hl_rep A s} :\/: {Inj1 y | y :e hl_rep B t}.
{ exact (eq_trans_i (hl_rep (A :+: B) (hl_UNION (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0)) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0)))) (hl_rep (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0)) :\/: hl_rep (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0))) ({Inj0 x | x :e hl_rep A s} :\/: {Inj1 y | y :e hl_rep B t}) (hl_UNION_compat (A :+: B) HAB (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0)) HG1t (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0)) HG2t) (f_equal2 (fun u v => u :\/: v) (hl_rep (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0))) {Inj0 x | x :e hl_rep A s} (hl_rep (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0))) {Inj1 y | y :e hl_rep B t} HG1 HG2)). }
prove hl_rep (A :+: B) (hl_sym_2b5f63 A B s t) = {Inj0 x | x :e hl_rep A s} :\/: {Inj1 y | y :e hl_rep B t}.
exact ((eq_sym_i (hl_sym_2b5f63 A B s t) (hl_UNION (A :+: B) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists x :e A, hl_SETSPEC (A :+: B) v (hl_IN A x s) (hl_INL A B x) = 1 then 1 else 0)) (hl_GSPEC (A :+: B) (fun v :e A :+: B => if exists y :e B, hl_SETSPEC (A :+: B) v (hl_IN B y t) (hl_INR B A y) = 1 then 1 else 0))) (hl_sym_2b5f63_unfold A B s Hs t Ht)) (fun u v => hl_rep (A :+: B) u = {Inj0 x | x :e hl_rep A s} :\/: {Inj1 y | y :e hl_rep B t}) Hmain).
Qed.

Theorem hl_sym_2a5f63_compat : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e 2 :^: A, forall l2 :e 2 :^: B, hl_rep (A :*: B) (hl_sym_2a5f63 A B l1 l2) = hl_rep A l1 :*: hl_rep B l2.
let A B. assume HA HB. let s. assume Hs. let t. assume Ht.
claim Hq: forall x :e A, forall y :e B, (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) :e 2. { let x. assume Hx. let y. assume Hy. exact (If_in_2 (hl_IN A x s = 1 /\ hl_IN B y t = 1)). }
claim Hgen: hl_rep (A :*: B) (hl_GSPEC (A :*: B) (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0)) = {v :e A :*: B | exists x :e A, exists y :e B, (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) = 1 /\ v = hl_pair A B x y}.
{ exact (hl_gspec_generic2 A B (A :*: B) (fun x y => if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (fun x y => hl_pair A B x y) Hq). }
claim Hext: {v :e A :*: B | exists x :e A, exists y :e B, (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) = 1 /\ v = hl_pair A B x y} = hl_rep A s :*: hl_rep B t.
{ apply set_ext.
  - let v. assume Hv. apply (SepE (A :*: B) (fun v => exists x :e A, exists y :e B, (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) = 1 /\ v = hl_pair A B x y) v Hv). assume HvAB H.
    apply H. let x. assume Hx0. apply Hx0. assume Hx Hy0. apply Hy0. let y. assume Hy1. apply Hy1. assume Hy H2. apply H2. assume Hc Hv2.
    claim Hc': hl_IN A x s = 1 /\ hl_IN B y t = 1. { apply (If_1_iff (hl_IN A x s = 1 /\ hl_IN B y t = 1)). assume H3 _. exact (H3 Hc). }
    apply Hc'. assume Hxs Hyt.
    claim Hxs': x :e hl_rep A s. { exact (iffEL (hl_IN A x s = 1) (x :e hl_rep A s) (hl_IN_compat A HA x Hx s Hs) Hxs). }
    claim Hyt': y :e hl_rep B t. { exact (iffEL (hl_IN B y t = 1) (y :e hl_rep B t) (hl_IN_compat B HB y Hy t Ht) Hyt). }
    claim Hvp: v = (x,y). { exact (eq_trans_i v (hl_pair A B x y) (x,y) Hv2 (hl_pair_compat A B HA HB x Hx y Hy)). }
    prove v :e Sigma_ x :e hl_rep A s, hl_rep B t.
    exact ((eq_sym_i v (x,y) Hvp) (fun u w => u :e Sigma_ x :e hl_rep A s, hl_rep B t) (tuple_2_Sigma (hl_rep A s) (fun _ => hl_rep B t) x Hxs' y Hyt')).
  - let z. assume Hz.
    claim Hz': z :e Sigma_ x :e hl_rep A s, hl_rep B t. { exact Hz. }
    claim Hxs: z 0 :e hl_rep A s. { exact (ap0_Sigma (hl_rep A s) (fun _ => hl_rep B t) z Hz'). }
    claim Hyt: z 1 :e hl_rep B t. { exact (ap1_Sigma (hl_rep A s) (fun _ => hl_rep B t) z Hz'). }
    claim Hzt: z = (z 0, z 1). { exact (eq_sym_i (z 0, z 1) z (tuple_Sigma_eta (hl_rep A s) (fun _ => hl_rep B t) z Hz')). }
    claim HxA: z 0 :e A. { exact (hl_rep_Subq A s (z 0) Hxs). }
    claim HyB: z 1 :e B. { exact (hl_rep_Subq B t (z 1) Hyt). }
    claim HzAB: z :e A :*: B. { exact ((eq_sym_i z (z 0, z 1) Hzt) (fun u w => u :e A :*: B) (tuple_2_setprod A B (z 0) HxA (z 1) HyB)). }
    claim Hc: (if hl_IN A (z 0) s = 1 /\ hl_IN B (z 1) t = 1 then 1 else 0) = 1. { exact (If_i_1 (hl_IN A (z 0) s = 1 /\ hl_IN B (z 1) t = 1) 1 0 (andI (hl_IN A (z 0) s = 1) (hl_IN B (z 1) t = 1) (iffER (hl_IN A (z 0) s = 1) (z 0 :e hl_rep A s) (hl_IN_compat A HA (z 0) HxA s Hs) Hxs) (iffER (hl_IN B (z 1) t = 1) (z 1 :e hl_rep B t) (hl_IN_compat B HB (z 1) HyB t Ht) Hyt))). }
    claim Hzv: z = hl_pair A B (z 0) (z 1). { exact (eq_trans_i z (z 0, z 1) (hl_pair A B (z 0) (z 1)) Hzt (eq_sym_i (hl_pair A B (z 0) (z 1)) (z 0, z 1) (hl_pair_compat A B HA HB (z 0) HxA (z 1) HyB))). }
    apply (SepI (A :*: B) (fun v => exists x :e A, exists y :e B, (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) = 1 /\ v = hl_pair A B x y) z HzAB).
    witness (z 0). apply andI. exact HxA. witness (z 1). apply andI. exact HyB. apply andI. exact Hc. exact Hzv. }
exact (eq_trans_i (hl_rep (A :*: B) (hl_sym_2a5f63 A B s t)) (hl_rep (A :*: B) (hl_GSPEC (A :*: B) (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0))) (hl_rep A s :*: hl_rep B t) (f_equal (fun u => hl_rep (A :*: B) u) (hl_sym_2a5f63 A B s t) (hl_GSPEC (A :*: B) (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0)) (hl_sym_2a5f63_unfold A B s Hs t Ht)) (eq_trans_i (hl_rep (A :*: B) (hl_GSPEC (A :*: B) (fun v :e A :*: B => if exists x :e A, exists y :e B, hl_SETSPEC (A :*: B) v (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) (hl_pair A B x y) = 1 then 1 else 0))) {v :e A :*: B | exists x :e A, exists y :e B, (if hl_IN A x s = 1 /\ hl_IN B y t = 1 then 1 else 0) = 1 /\ v = hl_pair A B x y} (hl_rep A s :*: hl_rep B t) Hgen Hext)).
Qed.

Theorem hl_fld_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> hl_rep A (hl_fld A l1) = fld_on A P1.
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hq: forall x :e A, (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) :e 2. { let x. assume Hx. exact (If_in_2 (exists y :e A, l x y = 1 \/ l y x = 1)). }
claim Hgen: hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) x = 1 then 1 else 0)) = {v :e A | exists x :e A, (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) = 1 /\ v = x}.
{ exact (hl_gspec_generic A A (fun x => if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) (fun x => x) Hq). }
claim Hsep: {v :e A | exists x :e A, (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) = 1 /\ v = x} = {v :e A | (if exists y :e A, l v y = 1 \/ l y v = 1 then 1 else 0) = 1}.
{ exact (gspec_sep_form A (fun x => if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0)). }
claim Hext: {v :e A | (if exists y :e A, l v y = 1 \/ l y v = 1 then 1 else 0) = 1} = {x :e A | exists y :e A, P x y \/ P y x}.
{ apply (Sep_ext_iff A (fun v => (if exists y :e A, l v y = 1 \/ l y v = 1 then 1 else 0) = 1) (fun x => exists y :e A, P x y \/ P y x)). let v. assume Hv.
  apply (iff_trans ((if exists y :e A, l v y = 1 \/ l y v = 1 then 1 else 0) = 1) (exists y :e A, l v y = 1 \/ l y v = 1) (exists y :e A, P v y \/ P y v) (If_1_iff (exists y :e A, l v y = 1 \/ l y v = 1))).
  apply iffI.
  - assume H. apply H. let y. assume Hy0. apply Hy0. assume Hy Hor. witness y. apply andI. exact Hy. apply Hor.
    + assume H1. apply orIL. exact (iffEL (l v y = 1) (P v y) (HP v Hv y Hy) H1).
    + assume H1. apply orIR. exact (iffEL (l y v = 1) (P y v) (HP y Hy v Hv) H1).
  - assume H. apply H. let y. assume Hy0. apply Hy0. assume Hy Hor. witness y. apply andI. exact Hy. apply Hor.
    + assume H1. apply orIL. exact (iffER (l v y = 1) (P v y) (HP v Hv y Hy) H1).
    + assume H1. apply orIR. exact (iffER (l y v = 1) (P y v) (HP y Hy v Hv) H1). }
prove hl_rep A (hl_fld A l) = {x :e A | exists y :e A, P x y \/ P y x}.
exact (eq_trans_i (hl_rep A (hl_fld A l)) (hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) x = 1 then 1 else 0))) {x :e A | exists y :e A, P x y \/ P y x} (f_equal (fun u => hl_rep A u) (hl_fld A l) (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) x = 1 then 1 else 0)) (hl_fld_unfold A l Hl)) (eq_trans_i (hl_rep A (hl_GSPEC A (fun v :e A => if exists x :e A, hl_SETSPEC A v (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) x = 1 then 1 else 0))) {v :e A | exists x :e A, (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) = 1 /\ v = x} {x :e A | exists y :e A, P x y \/ P y x} Hgen (eq_trans_i {v :e A | exists x :e A, (if exists y :e A, l x y = 1 \/ l y x = 1 then 1 else 0) = 1 /\ v = x} {v :e A | (if exists y :e A, l v y = 1 \/ l y v = 1 then 1 else 0) = 1} {x :e A | exists y :e A, P x y \/ P y x} Hsep Hext))).
Qed.
Theorem qoset_lit_iff : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (((forall x :e A, hl_IN A x (hl_fld A l1) = 1 -> l1 x x = 1) /\ forall x y z :e A, l1 x y = 1 /\ l1 y z = 1 -> l1 x z = 1) <-> qoset_on A P1).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hfld: hl_fld A l :e 2 :^: A. { exact (setexp_ap (2 :^: A :^: A) (2 :^: A) (hl_fld A) (hl_fld_in A HA) l Hl). }
claim Hrep: hl_rep A (hl_fld A l) = fld_on A P. { exact (hl_fld_compat A HA l Hl P HP). }
claim Hmem: forall x :e A, hl_IN A x (hl_fld A l) = 1 <-> x :e fld_on A P.
{ let x. assume Hx. exact (Hrep (fun u v => hl_IN A x (hl_fld A l) = 1 <-> x :e u) (hl_IN_compat A HA x Hx (hl_fld A l) Hfld)). }
claim H1: (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) <-> (forall x :e fld_on A P, P x x).
{ apply iffI.
  - assume H. let x. assume Hx.
    claim HxA: x :e A. { exact (SepE1 A (fun x => exists y :e A, P x y \/ P y x) x Hx). }
    exact (iffEL (l x x = 1) (P x x) (HP x HxA x HxA) (H x HxA (iffER (hl_IN A x (hl_fld A l) = 1) (x :e fld_on A P) (Hmem x HxA) Hx))).
  - assume H. let x. assume Hx Hin. exact (iffER (l x x = 1) (P x x) (HP x Hx x Hx) (H x (iffEL (hl_IN A x (hl_fld A l) = 1) (x :e fld_on A P) (Hmem x Hx) Hin))). }
claim H2: (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) <-> (forall x y z :e A, P x y /\ P y z -> P x z).
{ apply iffI.
  - assume H. let x. assume Hx. let y. assume Hy. let z. assume Hz. assume Hxyz. apply Hxyz. assume Hxy Hyz.
    exact (iffEL (l x z = 1) (P x z) (HP x Hx z Hz) (H x Hx y Hy z Hz (andI (l x y = 1) (l y z = 1) (iffER (l x y = 1) (P x y) (HP x Hx y Hy) Hxy) (iffER (l y z = 1) (P y z) (HP y Hy z Hz) Hyz)))).
  - assume H. let x. assume Hx. let y. assume Hy. let z. assume Hz. assume Hxyz. apply Hxyz. assume Hxy Hyz.
    exact (iffER (l x z = 1) (P x z) (HP x Hx z Hz) (H x Hx y Hy z Hz (andI (P x y) (P y z) (iffEL (l x y = 1) (P x y) (HP x Hx y Hy) Hxy) (iffEL (l y z = 1) (P y z) (HP y Hy z Hz) Hyz)))). }
prove ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) <-> ((forall x :e fld_on A P, P x x) /\ (forall x y z :e A, P x y /\ P y z -> P x z)).
apply iffI.
- assume H. apply H. assume Ha Hb. exact (andI (forall x :e fld_on A P, P x x) (forall x y z :e A, P x y /\ P y z -> P x z) (iffEL (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) (forall x :e fld_on A P, P x x) H1 Ha) (iffEL (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (forall x y z :e A, P x y /\ P y z -> P x z) H2 Hb)).
- assume H. apply H. assume Ha Hb. exact (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (iffER (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) (forall x :e fld_on A P, P x x) H1 Ha) (iffER (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (forall x y z :e A, P x y /\ P y z -> P x z) H2 Hb)).
Qed.
Theorem hl_qoset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_qoset A l1 = 1 <-> qoset_on A P1).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hif: (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1 then 1 else 0) = 1 <-> qoset_on A P.
{ exact (iff_trans ((if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1 then 1 else 0) = 1) ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (qoset_on A P) (If_1_iff ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)) (qoset_lit_iff A HA l Hl P HP)). }
exact ((eq_sym_i (hl_qoset A l) (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1 then 1 else 0) (hl_qoset_unfold A l Hl)) (fun u v => u = 1 <-> qoset_on A P) Hif).
Qed.
Theorem antisym_lit_iff : forall A:set, forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> ((forall x y :e A, l1 x y = 1 /\ l1 y x = 1 -> x = y) <-> (forall x y :e A, P1 x y /\ P1 y x -> x = y)).
let A l. assume Hl. let P. assume HP. apply iffI.
- assume H. let x. assume Hx. let y. assume Hy. assume Hxy. apply Hxy. assume H1 H2. exact (H x Hx y Hy (andI (l x y = 1) (l y x = 1) (iffER (l x y = 1) (P x y) (HP x Hx y Hy) H1) (iffER (l y x = 1) (P y x) (HP y Hy x Hx) H2))).
- assume H. let x. assume Hx. let y. assume Hy. assume Hxy. apply Hxy. assume H1 H2. exact (H x Hx y Hy (andI (P x y) (P y x) (iffEL (l x y = 1) (P x y) (HP x Hx y Hy) H1) (iffEL (l y x = 1) (P y x) (HP y Hy x Hx) H2))).
Qed.
Theorem hl_poset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_poset A l1 = 1 <-> poset_on A P1).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hq: ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) <-> qoset_on A P. { exact (qoset_lit_iff A HA l Hl P HP). }
claim Has: (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) <-> (forall x y :e A, P x y /\ P y x -> x = y). { exact (antisym_lit_iff A l Hl P HP). }
claim Hif: (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) then 1 else 0) = 1 <-> poset_on A P.
{ apply (iff_trans ((if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) then 1 else 0) = 1) ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y)) (poset_on A P) (If_1_iff ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y)))).
  prove ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y)) <-> (qoset_on A P /\ (forall x y :e A, P x y /\ P y x -> x = y)).
  apply iffI.
  - assume H. apply H. assume Ha Hbc. apply Hbc. assume Hb Hc. exact (andI (qoset_on A P) (forall x y :e A, P x y /\ P y x -> x = y) (iffEL ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (qoset_on A P) Hq (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) Ha Hb)) (iffEL (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) (forall x y :e A, P x y /\ P y x -> x = y) Has Hc)).
  - assume H. apply H. assume Hq' Hc.
    claim Hab: (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1. { exact (iffER ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (qoset_on A P) Hq Hq'). }
    apply Hab. assume Ha Hb. exact (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) Ha (andI (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) Hb (iffER (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) (forall x y :e A, P x y /\ P y x -> x = y) Has Hc))). }
exact ((eq_sym_i (hl_poset A l) (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) then 1 else 0) (hl_poset_unfold A l Hl)) (fun u v => u = 1 <-> poset_on A P) Hif).
Qed.

Theorem fld_mem_iff : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall x :e A, hl_IN A x (hl_fld A l1) = 1 <-> x :e fld_on A P1.
let A. assume HA. let l. assume Hl. let P. assume HP. let x. assume Hx.
claim Hfld: hl_fld A l :e 2 :^: A. { exact (setexp_ap (2 :^: A :^: A) (2 :^: A) (hl_fld A) (hl_fld_in A HA) l Hl). }
exact ((hl_fld_compat A HA l Hl P HP) (fun u v => hl_IN A x (hl_fld A l) = 1 <-> x :e u) (hl_IN_compat A HA x Hx (hl_fld A l) Hfld)).
Qed.
Theorem tot_lit_iff : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> ((forall x y :e A, hl_IN A x (hl_fld A l1) = 1 /\ hl_IN A y (hl_fld A l1) = 1 -> l1 x y = 1 \/ l1 y x = 1) <-> (forall x y :e fld_on A P1, P1 x y \/ P1 y x)).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim HinA: forall x :e fld_on A P, x :e A. { let x. assume Hx. exact (SepE1 A (fun x => exists y :e A, P x y \/ P y x) x Hx). }
apply iffI.
- assume H. let x. assume Hx. let y. assume Hy.
  claim HxA: x :e A. { exact (HinA x Hx). }
  claim HyA: y :e A. { exact (HinA y Hy). }
  apply (H x HxA y HyA (andI (hl_IN A x (hl_fld A l) = 1) (hl_IN A y (hl_fld A l) = 1) (iffER (hl_IN A x (hl_fld A l) = 1) (x :e fld_on A P) (fld_mem_iff A HA l Hl P HP x HxA) Hx) (iffER (hl_IN A y (hl_fld A l) = 1) (y :e fld_on A P) (fld_mem_iff A HA l Hl P HP y HyA) Hy))).
  + assume H1. apply orIL. exact (iffEL (l x y = 1) (P x y) (HP x HxA y HyA) H1).
  + assume H1. apply orIR. exact (iffEL (l y x = 1) (P y x) (HP y HyA x HxA) H1).
- assume H. let x. assume Hx. let y. assume Hy. assume Hxy. apply Hxy. assume Hxf Hyf.
  apply (H x (iffEL (hl_IN A x (hl_fld A l) = 1) (x :e fld_on A P) (fld_mem_iff A HA l Hl P HP x Hx) Hxf) y (iffEL (hl_IN A y (hl_fld A l) = 1) (y :e fld_on A P) (fld_mem_iff A HA l Hl P HP y Hy) Hyf)).
  + assume H1. apply orIL. exact (iffER (l x y = 1) (P x y) (HP x Hx y Hy) H1).
  + assume H1. apply orIR. exact (iffER (l y x = 1) (P y x) (HP y Hy x Hx) H1).
Qed.
Theorem hl_toset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_toset A l1 = 1 <-> toset_on A P1).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hq: ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) <-> qoset_on A P. { exact (qoset_lit_iff A HA l Hl P HP). }
claim Has: (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) <-> (forall x y :e A, P x y /\ P y x -> x = y). { exact (antisym_lit_iff A l Hl P HP). }
claim Htot: (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) <-> (forall x y :e fld_on A P, P x y \/ P y x). { exact (tot_lit_iff A HA l Hl P HP). }
claim Hif: (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1)) then 1 else 0) = 1 <-> toset_on A P.
{ apply (iff_trans ((if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1)) then 1 else 0) = 1) ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1))) (toset_on A P) (If_1_iff ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1))))).
  prove ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1))) <-> ((qoset_on A P /\ (forall x y :e A, P x y /\ P y x -> x = y)) /\ (forall x y :e fld_on A P, P x y \/ P y x)).
  apply iffI.
  - assume H. apply H. assume Ha Hrest. apply Hrest. assume Hb Hrest2. apply Hrest2. assume Hc Hd.
    exact (andI (qoset_on A P /\ (forall x y :e A, P x y /\ P y x -> x = y)) (forall x y :e fld_on A P, P x y \/ P y x) (andI (qoset_on A P) (forall x y :e A, P x y /\ P y x -> x = y) (iffEL ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (qoset_on A P) Hq (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) Ha Hb)) (iffEL (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) (forall x y :e A, P x y /\ P y x -> x = y) Has Hc)) (iffEL (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) (forall x y :e fld_on A P, P x y \/ P y x) Htot Hd)).
  - assume H. apply H. assume Hpo Hd. apply Hpo. assume Hq' Hc.
    claim Hab: (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1. { exact (iffER ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (qoset_on A P) Hq Hq'). }
    apply Hab. assume Ha Hb.
    exact (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1)) Ha (andI (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) Hb (andI (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) (iffER (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) (forall x y :e A, P x y /\ P y x -> x = y) Has Hc) (iffER (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) (forall x y :e fld_on A P, P x y \/ P y x) Htot Hd)))). }
exact ((eq_sym_i (hl_toset A l) (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1)) then 1 else 0) (hl_toset_unfold A l Hl)) (fun u v => u = 1 <-> toset_on A P) Hif).
Qed.

Theorem wf_lit_iff : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> ((forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l1) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l1 x y = 1) <-> (forall s c= fld_on A P1, s <> Empty -> exists x :e s, forall y :e s, P1 x y)).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hfld: hl_fld A l :e 2 :^: A. { exact (setexp_ap (2 :^: A :^: A) (2 :^: A) (hl_fld A) (hl_fld_in A HA) l Hl). }
claim Hrep: hl_rep A (hl_fld A l) = fld_on A P. { exact (hl_fld_compat A HA l Hl P HP). }
claim HfldA: fld_on A P c= A. { let x. assume Hx. exact (SepE1 A (fun x => exists y :e A, P x y \/ P y x) x Hx). }
apply iffI.
- assume H. let s. assume Hs Hne.
  claim HsA: s c= A. { let x. assume Hx. exact (HfldA x (Hs x Hx)). }
  claim Hchi: hl_chi A s :e 2 :^: A. { exact (hl_chi_Pi A s). }
  claim Hrc: hl_rep A (hl_chi A s) = s. { exact (hl_rep_chi A s HsA). }
  claim Hsub: hl_SUBSET A (hl_chi A s) (hl_fld A l) = 1.
  { exact (iffER (hl_SUBSET A (hl_chi A s) (hl_fld A l) = 1) (hl_rep A (hl_chi A s) c= hl_rep A (hl_fld A l)) (hl_SUBSET_compat A HA (hl_chi A s) Hchi (hl_fld A l) Hfld) ((eq_sym_i (hl_rep A (hl_chi A s)) s Hrc) (fun u v => u c= hl_rep A (hl_fld A l)) ((eq_sym_i (hl_rep A (hl_fld A l)) (fld_on A P) Hrep) (fun u v => s c= u) Hs))). }
  claim HneE: ~ hl_chi A s = hl_EMPTY A.
  { assume Heq. apply Hne. exact (eq_trans_i s (hl_rep A (hl_chi A s)) Empty (eq_sym_i (hl_rep A (hl_chi A s)) s Hrc) (eq_trans_i (hl_rep A (hl_chi A s)) (hl_rep A (hl_EMPTY A)) Empty (f_equal (fun u => hl_rep A u) (hl_chi A s) (hl_EMPTY A) Heq) (hl_EMPTY_compat A HA))). }
  apply (H (hl_chi A s) Hchi (andI (hl_SUBSET A (hl_chi A s) (hl_fld A l) = 1) (~ hl_chi A s = hl_EMPTY A) Hsub HneE)).
  let x. assume Hx0. apply Hx0. assume HxA Hx1. apply Hx1. assume Hxs Hall.
  claim Hxs': x :e s. { exact (Hrc (fun u v => x :e u) (iffEL (hl_IN A x (hl_chi A s) = 1) (x :e hl_rep A (hl_chi A s)) (hl_IN_compat A HA x HxA (hl_chi A s) Hchi) Hxs)). }
  witness x. apply andI. exact Hxs'.
  let y. assume Hy.
  claim HyA: y :e A. { exact (HsA y Hy). }
  claim Hys: hl_IN A y (hl_chi A s) = 1. { exact (iffER (hl_IN A y (hl_chi A s) = 1) (y :e hl_rep A (hl_chi A s)) (hl_IN_compat A HA y HyA (hl_chi A s) Hchi) ((eq_sym_i (hl_rep A (hl_chi A s)) s Hrc) (fun u v => y :e u) Hy)). }
  exact (iffEL (l x y = 1) (P x y) (HP x HxA y HyA) (Hall y HyA Hys)).
- assume H. let s. assume Hs Hcond. apply Hcond. assume Hsub Hne.
  claim Hs': hl_rep A s c= fld_on A P. { exact (Hrep (fun u v => hl_rep A s c= u) (iffEL (hl_SUBSET A s (hl_fld A l) = 1) (hl_rep A s c= hl_rep A (hl_fld A l)) (hl_SUBSET_compat A HA s Hs (hl_fld A l) Hfld) Hsub)). }
  claim Hne': hl_rep A s <> Empty.
  { assume Heq. apply Hne. exact (hl_rep_inj A s (hl_EMPTY A) Hs (hl_EMPTY_in A HA) (eq_trans_i (hl_rep A s) Empty (hl_rep A (hl_EMPTY A)) Heq (eq_sym_i (hl_rep A (hl_EMPTY A)) Empty (hl_EMPTY_compat A HA)))). }
  apply (H (hl_rep A s) Hs' Hne'). let x. assume Hx0. apply Hx0. assume Hxs Hall.
  claim HxA: x :e A. { exact (hl_rep_Subq A s x Hxs). }
  witness x. apply andI. exact HxA. apply andI.
  + exact (iffER (hl_IN A x s = 1) (x :e hl_rep A s) (hl_IN_compat A HA x HxA s Hs) Hxs).
  + let y. assume HyA Hys.
    claim Hys': y :e hl_rep A s. { exact (iffEL (hl_IN A y s = 1) (y :e hl_rep A s) (hl_IN_compat A HA y HyA s Hs) Hys). }
    exact (iffER (l x y = 1) (P x y) (HP x HxA y HyA) (Hall y Hys')).
Qed.
Theorem hl_woset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_woset A l1 = 1 <-> woset_on A P1).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hq: ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)) <-> qoset_on A P. { exact (qoset_lit_iff A HA l Hl P HP). }
claim Has: (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) <-> (forall x y :e A, P x y /\ P y x -> x = y). { exact (antisym_lit_iff A l Hl P HP). }
claim Htot: (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) <-> (forall x y :e fld_on A P, P x y \/ P y x). { exact (tot_lit_iff A HA l Hl P HP). }
claim Hwf: (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1) <-> (forall s c= fld_on A P, s <> Empty -> exists x :e s, forall y :e s, P x y). { exact (wf_lit_iff A HA l Hl P HP). }
claim Hif: (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1)))) then 1 else 0) = 1 <-> woset_on A P.
{ apply (iff_trans ((if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1)))) then 1 else 0) = 1) ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1))))) (woset_on A P) (If_1_iff ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1))))))).
  prove ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1))))) <-> (((qoset_on A P /\ (forall x y :e A, P x y /\ P y x -> x = y)) /\ (forall x y :e fld_on A P, P x y \/ P y x)) /\ (forall s c= fld_on A P, s <> Empty -> exists x :e s, forall y :e s, P x y)).
  apply iffI.
  - assume H. apply H. assume Ha H2. apply H2. assume Hb H3. apply H3. assume Hc H4. apply H4. assume Hd He.
    exact (andI ((qoset_on A P /\ (forall x y :e A, P x y /\ P y x -> x = y)) /\ (forall x y :e fld_on A P, P x y \/ P y x)) (forall s c= fld_on A P, s <> Empty -> exists x :e s, forall y :e s, P x y) (andI (qoset_on A P /\ (forall x y :e A, P x y /\ P y x -> x = y)) (forall x y :e fld_on A P, P x y \/ P y x) (andI (qoset_on A P) (forall x y :e A, P x y /\ P y x -> x = y) (iffEL ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)) (qoset_on A P) Hq (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) Ha Hb)) (iffEL (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) (forall x y :e A, P x y /\ P y x -> x = y) Has Hc)) (iffEL (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) (forall x y :e fld_on A P, P x y \/ P y x) Htot Hd)) (iffEL (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1) (forall s c= fld_on A P, s <> Empty -> exists x :e s, forall y :e s, P x y) Hwf He)).
  - assume H. apply H. assume H1 He. apply H1. assume H2 Hd. apply H2. assume Hq' Hc.
    claim Hab: ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)). { exact (iffER ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)) (qoset_on A P) Hq Hq'). }
    apply Hab. assume Ha Hb.
    exact (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1)))) Ha (andI (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1))) Hb (andI (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1)) (iffER (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) (forall x y :e A, P x y /\ P y x -> x = y) Has Hc) (andI (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1) (iffER (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) (forall x y :e fld_on A P, P x y \/ P y x) Htot Hd) (iffER (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1) (forall s c= fld_on A P, s <> Empty -> exists x :e s, forall y :e s, P x y) Hwf He))))). }
exact ((eq_sym_i (hl_woset A l) (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1)))) then 1 else 0) (hl_woset_unfold A l Hl)) (fun u v => u = 1 <-> woset_on A P) Hif).
Qed.

Theorem hl_inseg_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> forall l2 :e 2 :^: A :^: A, forall P2:set -> set -> prop, (forall x y :e A, l2 x y = 1 <-> P2 x y) -> (hl_inseg A l1 l2 = 1 <-> inseg_on A P1 P2).
let A. assume HA. let l. assume Hl. let P. assume HP. let m. assume Hm. let Q. assume HQ.
claim Hfld: hl_fld A l :e 2 :^: A. { exact (setexp_ap (2 :^: A :^: A) (2 :^: A) (hl_fld A) (hl_fld_in A HA) l Hl). }
claim Hrep: hl_rep A (hl_fld A l) = fld_on A P. { exact (hl_fld_compat A HA l Hl P HP). }
claim Hf: forall y :e A, hl_fld A l y = 1 <-> y :e fld_on A P.
{ let y. assume Hy. exact (Hrep (fun u v => hl_fld A l y = 1 <-> y :e u) (hl_rep_iff A (hl_fld A l) y Hy)). }
claim Hcore: (forall x y :e A, l x y = 1 <-> m x y = 1 /\ hl_fld A l y = 1) <-> (forall x y :e A, P x y <-> Q x y /\ y :e fld_on A P).
{ apply iffI.
  - assume H. let x. assume Hx. let y. assume Hy. apply iffI.
    + assume Hp. claim H1: m x y = 1 /\ hl_fld A l y = 1. { exact (iffEL (l x y = 1) (m x y = 1 /\ hl_fld A l y = 1) (H x Hx y Hy) (iffER (l x y = 1) (P x y) (HP x Hx y Hy) Hp)). }
      apply H1. assume Hm1 Hf1. exact (andI (Q x y) (y :e fld_on A P) (iffEL (m x y = 1) (Q x y) (HQ x Hx y Hy) Hm1) (iffEL (hl_fld A l y = 1) (y :e fld_on A P) (Hf y Hy) Hf1)).
    + assume Hq. apply Hq. assume Hq1 Hf1. exact (iffEL (l x y = 1) (P x y) (HP x Hx y Hy) (iffER (l x y = 1) (m x y = 1 /\ hl_fld A l y = 1) (H x Hx y Hy) (andI (m x y = 1) (hl_fld A l y = 1) (iffER (m x y = 1) (Q x y) (HQ x Hx y Hy) Hq1) (iffER (hl_fld A l y = 1) (y :e fld_on A P) (Hf y Hy) Hf1)))).
  - assume H. let x. assume Hx. let y. assume Hy. apply iffI.
    + assume Hl1. claim H1: Q x y /\ y :e fld_on A P. { exact (iffEL (P x y) (Q x y /\ y :e fld_on A P) (H x Hx y Hy) (iffEL (l x y = 1) (P x y) (HP x Hx y Hy) Hl1)). }
      apply H1. assume Hq1 Hf1. exact (andI (m x y = 1) (hl_fld A l y = 1) (iffER (m x y = 1) (Q x y) (HQ x Hx y Hy) Hq1) (iffER (hl_fld A l y = 1) (y :e fld_on A P) (Hf y Hy) Hf1)).
    + assume Hc. apply Hc. assume Hm1 Hf1. exact (iffER (l x y = 1) (P x y) (HP x Hx y Hy) (iffER (P x y) (Q x y /\ y :e fld_on A P) (H x Hx y Hy) (andI (Q x y) (y :e fld_on A P) (iffEL (m x y = 1) (Q x y) (HQ x Hx y Hy) Hm1) (iffEL (hl_fld A l y = 1) (y :e fld_on A P) (Hf y Hy) Hf1)))). }
claim Hif: (if forall x y :e A, l x y = 1 <-> m x y = 1 /\ hl_fld A l y = 1 then 1 else 0) = 1 <-> inseg_on A P Q.
{ exact (iff_trans ((if forall x y :e A, l x y = 1 <-> m x y = 1 /\ hl_fld A l y = 1 then 1 else 0) = 1) (forall x y :e A, l x y = 1 <-> m x y = 1 /\ hl_fld A l y = 1) (inseg_on A P Q) (If_1_iff (forall x y :e A, l x y = 1 <-> m x y = 1 /\ hl_fld A l y = 1)) Hcore). }
exact ((eq_sym_i (hl_inseg A l m) (if forall x y :e A, l x y = 1 <-> m x y = 1 /\ hl_fld A l y = 1 then 1 else 0) (hl_inseg_unfold A l Hl m Hm)) (fun u v => u = 1 <-> inseg_on A P Q) Hif).
Qed.

Theorem hl_inverse_mod_compat : forall l1 l2 :e omega, hl_inverse_mod l1 l2 = inverse_mod l1 l2.
let n. assume Hn. let x. assume Hx.
claim H1o: hl_NUMERAL (hl_BIT1 hl_zero) :e omega. { exact ((eq_sym_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_one_numeral) (fun u v => u :e omega) (nat_p_omega 1 nat_1)). }
claim Hle2: hl_le n (hl_NUMERAL (hl_BIT1 hl_zero)) :e 2. { exact (setexp2_ap omega omega 2 hl_le hl_le_in n Hn (hl_NUMERAL (hl_BIT1 hl_zero)) H1o). }
claim Hle: hl_le n (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> n <= 1. { exact (hl_one_numeral (fun u v => hl_le n (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> n <= u) (hl_le_compat n Hn (hl_NUMERAL (hl_BIT1 hl_zero)) H1o)). }
claim HPsel: (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) :e 2 :^: omega.
{ prove (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) :e Pi_ y :e omega, 2. apply (lam_Pi omega (fun _ => 2) (fun y => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)). let y. assume _. exact (If_in_2 (hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1)). }
claim Hselo: hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) :e omega.
{ exact ((eq_sym_i (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)) (choose_in omega (fun y => (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) y = 1)) (hl_select_eq omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) HPsel)) (fun u v => u :e omega) (choose_in_in omega omega_nonempty (fun y => (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) y = 1))). }
claim Hpr: hl_pair omega omega n x = (n,x). { exact (hl_pair_compat omega omega omega_nonempty omega_nonempty n Hn x Hx). }
claim Hp: hl_pair omega omega n x :e omega :*: omega. { exact ((eq_sym_i (hl_pair omega omega n x) (n,x) Hpr) (fun u v => u :e omega :*: omega) (tuple_2_setprod omega omega n Hn x Hx)). }
claim H0: (hl_pair omega omega n x) 0 = n. { exact (eq_trans_i ((hl_pair omega omega n x) 0) ((n,x) 0) n (f_equal (fun u => u 0) (hl_pair omega omega n x) (n,x) Hpr) (tuple_2_0_eq n x)). }
claim H1: (hl_pair omega omega n x) 1 = x. { exact (eq_trans_i ((hl_pair omega omega n x) 1) ((n,x) 1) x (f_equal (fun u => u 1) (hl_pair omega omega n x) (n,x) Hpr) (tuple_2_1_eq n x)). }
claim Hgcd: hl_num_gcd (hl_pair omega omega n x) = gcd_int n x.
{ exact (eq_trans_i (hl_num_gcd (hl_pair omega omega n x)) (gcd_int ((hl_pair omega omega n x) 0) ((hl_pair omega omega n x) 1)) (gcd_int n x) (hl_num_gcd_compat (hl_pair omega omega n x) Hp) (f_equal2 (fun a b => gcd_int a b) ((hl_pair omega omega n x) 0) n ((hl_pair omega omega n x) 1) x H0 H1)). }
claim Hgo: hl_num_gcd (hl_pair omega omega n x) :e omega. { exact (setexp_ap (omega :*: omega) omega hl_num_gcd hl_num_gcd_in (hl_pair omega omega n x) Hp). }
claim Hpw: forall y :e omega, (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) y = 1 <-> (y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2).
{ let y. assume Hy.
  claim Hmo: hl_mul x y :e omega. { exact ((eq_sym_i (hl_mul x y) (x * y) (hl_mul_compat x Hx y Hy)) (fun u v => u :e omega) (mul_SNo_In_omega x Hx y Hy)). }
  claim Hc1: hl_lt y n = 1 <-> y < n. { exact (hl_lt_compat y Hy n Hn). }
  claim Hc2: hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 <-> exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2.
  { apply (iff_trans (hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1) (exists q1 q2 :e omega, hl_mul x y + n * q1 = hl_num_gcd (hl_pair omega omega n x) + n * q2) (exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2) (hl_sym_3d3d_compat1 (hl_mul x y) Hmo (hl_num_gcd (hl_pair omega omega n x)) Hgo (hl_num_mod n) (setexp_ap omega (2 :^: omega :^: omega) hl_num_mod hl_num_mod_in n Hn) (fun u w => exists q1 q2 :e omega, u + n * q1 = w + n * q2) (fun u Hu w Hw => hl_num_mod_compat n Hn u Hu w Hw))).
    exact ((eq_sym_i (hl_mul x y) (x * y) (hl_mul_compat x Hx y Hy)) (fun u v => (exists q1 q2 :e omega, u + n * q1 = hl_num_gcd (hl_pair omega omega n x) + n * q2) <-> (exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) ((eq_sym_i (hl_num_gcd (hl_pair omega omega n x)) (gcd_int n x) Hgcd) (fun u v => (exists q1 q2 :e omega, x * y + n * q1 = u + n * q2) <-> (exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) (iff_refl (exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)))). }
  apply (iff_trans ((fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) y = 1) ((if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) = 1) (y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)).
  - exact ((eq_sym_i ((fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) y) (if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) (beta omega (fun y => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) y Hy)) (fun u v => u = 1 <-> (if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) = 1) (iff_refl ((if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) = 1))).
  - apply (iff_trans ((if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) = 1) (hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1) (y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2) (If_1_iff (hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1))).
    apply iffI.
    + assume H. apply H. assume Ha Hb. exact (andI (y < n) (exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2) (iffEL (hl_lt y n = 1) (y < n) Hc1 Ha) (iffEL (hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1) (exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2) Hc2 Hb)).
    + assume H. apply H. assume Ha Hb. exact (andI (hl_lt y n = 1) (hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1) (iffER (hl_lt y n = 1) (y < n) Hc1 Ha) (iffER (hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1) (exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2) Hc2 Hb)). }
claim Hsel: hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) = choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2).
{ exact (eq_trans_i (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)) (choose_in omega (fun y => (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) y = 1)) (choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) (hl_select_eq omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) HPsel) (choose_in_ext omega (fun y => (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0) y = 1) (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2) Hpw)). }
prove hl_inverse_mod n x = (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)).
apply (xm (n <= 1)).
- assume Hle1.
  claim Hl1: hl_le n (hl_NUMERAL (hl_BIT1 hl_zero)) = 1. { exact (iffER (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (n <= 1) Hle Hle1). }
  claim Hc: hl_COND omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)) = hl_NUMERAL (hl_BIT1 hl_zero). { exact (hl_COND_1 omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) Hle2 Hl1 (hl_NUMERAL (hl_BIT1 hl_zero)) H1o (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)) Hselo). }
  exact (eq_trans_i (hl_inverse_mod n x) (hl_COND omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0))) (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) (hl_inverse_mod_unfold n Hn x Hx) (eq_trans_i (hl_COND omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0))) (hl_NUMERAL (hl_BIT1 hl_zero)) (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) Hc (eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) 1 (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) hl_one_numeral (eq_sym_i (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) 1 (If_i_1 (n <= 1) 1 (choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) Hle1))))).
- assume Hnle.
  claim Hl0: hl_le n (hl_NUMERAL (hl_BIT1 hl_zero)) = 0. { exact (In_2_not_1 (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) Hle2 (fun H => Hnle (iffEL (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (n <= 1) Hle H))). }
  claim Hc: hl_COND omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)) = hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0). { exact (hl_COND_0 omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) Hle2 Hl0 (hl_NUMERAL (hl_BIT1 hl_zero)) H1o (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)) Hselo). }
  exact (eq_trans_i (hl_inverse_mod n x) (hl_COND omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0))) (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) (hl_inverse_mod_unfold n Hn x Hx) (eq_trans_i (hl_COND omega (hl_le n (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0))) (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)) (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) Hc (eq_trans_i (hl_select omega (fun y :e omega => if hl_lt y n = 1 /\ hl_sym_3d3d omega (hl_mul x y) (hl_num_gcd (hl_pair omega omega n x)) (hl_num_mod n) = 1 then 1 else 0)) (choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) Hsel (eq_sym_i (if n <= 1 then 1 else choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) (choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) (If_i_0 (n <= 1) 1 (choose_in omega (fun y => y < n /\ exists q1 q2 :e omega, x * y + n * q1 = gcd_int n x + n * q2)) Hnle))))).
Qed.

Theorem hl_phi_compat : forall l1 :e omega, hl_phi l1 = totient l1.
let n. assume Hn.
claim H0o: hl_NUMERAL hl_zero :e omega. { exact ((eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (fun u v => u :e omega) (nat_p_omega 0 nat_0)). }
claim Hq: forall m :e omega, (if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) :e 2. { let m. assume Hm. exact (If_in_2 (hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1))). }
claim HP: (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0) :e 2 :^: omega.
{ prove (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0) :e Pi_ v :e omega, 2. apply (lam_Pi omega (fun _ => 2) (fun v => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0)). let v. assume _. exact (If_in_2 (exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1)). }
claim HG: (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0)) :e 2 :^: omega. { exact (setexp_ap (2 :^: omega) (2 :^: omega) (hl_GSPEC omega) (hl_GSPEC_in omega omega_nonempty) (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0) HP). }
claim Hpw: forall m :e omega, (if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) = 1 <-> (0 < m /\ m <= n /\ gcd_int m n = 1).
{ let m. assume Hm.
  claim Hpr: hl_pair omega omega m n = (m,n). { exact (hl_pair_compat omega omega omega_nonempty omega_nonempty m Hm n Hn). }
  claim Hp: hl_pair omega omega m n :e omega :*: omega. { exact ((eq_sym_i (hl_pair omega omega m n) (m,n) Hpr) (fun u v => u :e omega :*: omega) (tuple_2_setprod omega omega m Hm n Hn)). }
  claim H0: (hl_pair omega omega m n) 0 = m. { exact (eq_trans_i ((hl_pair omega omega m n) 0) ((m,n) 0) m (f_equal (fun u => u 0) (hl_pair omega omega m n) (m,n) Hpr) (tuple_2_0_eq m n)). }
  claim H1: (hl_pair omega omega m n) 1 = n. { exact (eq_trans_i ((hl_pair omega omega m n) 1) ((m,n) 1) n (f_equal (fun u => u 1) (hl_pair omega omega m n) (m,n) Hpr) (tuple_2_1_eq m n)). }
  claim Hcp: hl_num_coprime (hl_pair omega omega m n) = 1 <-> gcd_int m n = 1.
  { exact (H1 (fun u v => hl_num_coprime (hl_pair omega omega m n) = 1 <-> gcd_int m u = 1) (H0 (fun u v => hl_num_coprime (hl_pair omega omega m n) = 1 <-> gcd_int u ((hl_pair omega omega m n) 1) = 1) (hl_num_coprime_compat (hl_pair omega omega m n) Hp))). }
  claim Hlt: hl_lt (hl_NUMERAL hl_zero) m = 1 <-> 0 < m. { exact (hl_NUMERAL_zero (fun u v => hl_lt (hl_NUMERAL hl_zero) m = 1 <-> u < m) (hl_lt_compat (hl_NUMERAL hl_zero) H0o m Hm)). }
  claim Hle: hl_le m n = 1 <-> m <= n. { exact (hl_le_compat m Hm n Hn). }
  apply (iff_trans ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) = 1) (hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1)) (0 < m /\ m <= n /\ gcd_int m n = 1) (If_1_iff (hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1)))).
  apply iffI.
  - assume H. apply H. assume Ha Hbc. apply Hbc. assume Hb Hc. exact (andI (0 < m /\ m <= n) (gcd_int m n = 1) (andI (0 < m) (m <= n) (iffEL (hl_lt (hl_NUMERAL hl_zero) m = 1) (0 < m) Hlt Ha) (iffEL (hl_le m n = 1) (m <= n) Hle Hb)) (iffEL (hl_num_coprime (hl_pair omega omega m n) = 1) (gcd_int m n = 1) Hcp Hc)).
  - assume H. apply H. assume Hab Hc. apply Hab. assume Ha Hb. exact (andI (hl_lt (hl_NUMERAL hl_zero) m = 1) (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) (iffER (hl_lt (hl_NUMERAL hl_zero) m = 1) (0 < m) Hlt Ha) (andI (hl_le m n = 1) (hl_num_coprime (hl_pair omega omega m n) = 1) (iffER (hl_le m n = 1) (m <= n) Hle Hb) (iffER (hl_num_coprime (hl_pair omega omega m n) = 1) (gcd_int m n = 1) Hcp Hc))). }
claim Hrep: hl_rep omega (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0)) = {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1}.
{ exact (eq_trans_i (hl_rep omega (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0))) {v :e omega | exists m :e omega, (if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) = 1 /\ v = m} {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1} (hl_gspec_generic omega omega (fun m => if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) (fun m => m) Hq) (eq_trans_i {v :e omega | exists m :e omega, (if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) = 1 /\ v = m} {v :e omega | (if hl_lt (hl_NUMERAL hl_zero) v = 1 /\ (hl_le v n = 1 /\ hl_num_coprime (hl_pair omega omega v n) = 1) then 1 else 0) = 1} {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1} (gspec_sep_form omega (fun m => if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) (Sep_ext_iff omega (fun m => (if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0) = 1) (fun m => (0 < m /\ m <= n /\ gcd_int m n = 1)) Hpw))). }
claim Hfin': finite {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1}.
{ exact (Subq_finite {i :e omega | i <= n} (segment_le_finite n Hn) {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1} (Sep_Subq_Sep omega (fun m => (0 < m /\ m <= n /\ gcd_int m n = 1)) (fun i => i <= n) (fun m Hm H => andER (0 < m) (m <= n) (andEL (0 < m /\ m <= n) (gcd_int m n = 1) H)))). }
claim Hfin: finite (hl_rep omega (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0))). { exact ((eq_sym_i (hl_rep omega (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0))) {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1} Hrep) (fun u v => finite u) Hfin'). }
prove hl_phi n = finite_cardinality {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1}.
exact (eq_trans_i (hl_phi n) (hl_CARD omega (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0))) (finite_cardinality {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1}) (hl_phi_unfold n Hn) (eq_trans_i (hl_CARD omega (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0))) (finite_cardinality (hl_rep omega (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0)))) (finite_cardinality {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1}) (hl_CARD_compat omega omega_nonempty (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0)) HG Hfin) (f_equal (fun u => finite_cardinality u) (hl_rep omega (hl_GSPEC omega (fun v :e omega => if exists m :e omega, hl_SETSPEC omega v ((if hl_lt (hl_NUMERAL hl_zero) m = 1 /\ (hl_le m n = 1 /\ hl_num_coprime (hl_pair omega omega m n) = 1) then 1 else 0)) m = 1 then 1 else 0))) {m :e omega | 0 < m /\ m <= n /\ gcd_int m n = 1} Hrep))).
Qed.

Theorem wq_lit_iff : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> ((forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l1) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l1 x y = 1)) <-> (forall s c= fld_on A P1, exists t c= s, finite t /\ forall y :e s, exists x :e t, P1 x y)).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hfld: hl_fld A l :e 2 :^: A. { exact (setexp_ap (2 :^: A :^: A) (2 :^: A) (hl_fld A) (hl_fld_in A HA) l Hl). }
claim Hrep: hl_rep A (hl_fld A l) = fld_on A P. { exact (hl_fld_compat A HA l Hl P HP). }
claim HfldA: fld_on A P c= A. { let x. assume Hx. exact (SepE1 A (fun x => exists y :e A, P x y \/ P y x) x Hx). }
apply iffI.
- assume H. let s. assume Hs.
  claim HsA: s c= A. { let x. assume Hx. exact (HfldA x (Hs x Hx)). }
  claim Hchi: hl_chi A s :e 2 :^: A. { exact (hl_chi_Pi A s). }
  claim Hrc: hl_rep A (hl_chi A s) = s. { exact (hl_rep_chi A s HsA). }
  claim Hsub: hl_SUBSET A (hl_chi A s) (hl_fld A l) = 1.
  { exact (iffER (hl_SUBSET A (hl_chi A s) (hl_fld A l) = 1) (hl_rep A (hl_chi A s) c= hl_rep A (hl_fld A l)) (hl_SUBSET_compat A HA (hl_chi A s) Hchi (hl_fld A l) Hfld) ((eq_sym_i (hl_rep A (hl_chi A s)) s Hrc) (fun u v => u c= hl_rep A (hl_fld A l)) ((eq_sym_i (hl_rep A (hl_fld A l)) (fld_on A P) Hrep) (fun u v => s c= u) Hs))). }
  apply (H (hl_chi A s) Hchi Hsub). let t. assume Ht0. apply Ht0. assume Ht Ht1. apply Ht1. assume Hfin Ht2. apply Ht2. assume Hts Hcov.
  witness (hl_rep A t). apply andI.
  + prove hl_rep A t c= s. exact (Hrc (fun u v => hl_rep A t c= u) (iffEL (hl_SUBSET A t (hl_chi A s) = 1) (hl_rep A t c= hl_rep A (hl_chi A s)) (hl_SUBSET_compat A HA t Ht (hl_chi A s) Hchi) Hts)).
  + apply andI.
    * exact (iffEL (hl_FINITE A t = 1) (finite (hl_rep A t)) (hl_FINITE_compat A HA t Ht) Hfin).
    * let y. assume Hy.
      claim HyA: y :e A. { exact (HsA y Hy). }
      claim Hys: hl_IN A y (hl_chi A s) = 1. { exact (iffER (hl_IN A y (hl_chi A s) = 1) (y :e hl_rep A (hl_chi A s)) (hl_IN_compat A HA y HyA (hl_chi A s) Hchi) ((eq_sym_i (hl_rep A (hl_chi A s)) s Hrc) (fun u v => y :e u) Hy)). }
      apply (Hcov y HyA Hys). let x. assume Hx0. apply Hx0. assume HxA Hx1. apply Hx1. assume Hxt Hxy.
      witness x. apply andI.
      exact (iffEL (hl_IN A x t = 1) (x :e hl_rep A t) (hl_IN_compat A HA x HxA t Ht) Hxt).
      exact (iffEL (l x y = 1) (P x y) (HP x HxA y HyA) Hxy).
- assume H. let s. assume Hs Hsub.
  claim Hs': hl_rep A s c= fld_on A P. { exact (Hrep (fun u v => hl_rep A s c= u) (iffEL (hl_SUBSET A s (hl_fld A l) = 1) (hl_rep A s c= hl_rep A (hl_fld A l)) (hl_SUBSET_compat A HA s Hs (hl_fld A l) Hfld) Hsub)). }
  apply (H (hl_rep A s) Hs'). let t. assume Ht0. apply Ht0. assume Hts Ht1. apply Ht1. assume Hfin Hcov.
  claim HtA: t c= A. { let x. assume Hx. exact (hl_rep_Subq A s x (Hts x Hx)). }
  claim Hchit: hl_chi A t :e 2 :^: A. { exact (hl_chi_Pi A t). }
  claim Hrct: hl_rep A (hl_chi A t) = t. { exact (hl_rep_chi A t HtA). }
  witness (hl_chi A t). apply andI. exact Hchit. apply andI.
  + exact (iffER (hl_FINITE A (hl_chi A t) = 1) (finite (hl_rep A (hl_chi A t))) (hl_FINITE_compat A HA (hl_chi A t) Hchit) ((eq_sym_i (hl_rep A (hl_chi A t)) t Hrct) (fun u v => finite u) Hfin)).
  + apply andI.
    * exact (iffER (hl_SUBSET A (hl_chi A t) s = 1) (hl_rep A (hl_chi A t) c= hl_rep A s) (hl_SUBSET_compat A HA (hl_chi A t) Hchit s Hs) ((eq_sym_i (hl_rep A (hl_chi A t)) t Hrct) (fun u v => u c= hl_rep A s) Hts)).
    * let y. assume HyA Hys.
      claim Hys': y :e hl_rep A s. { exact (iffEL (hl_IN A y s = 1) (y :e hl_rep A s) (hl_IN_compat A HA y HyA s Hs) Hys). }
      apply (Hcov y Hys'). let x. assume Hx0. apply Hx0. assume Hxt Hxy.
      claim HxA: x :e A. { exact (HtA x Hxt). }
      witness x. apply andI. exact HxA. apply andI.
      exact (iffER (hl_IN A x (hl_chi A t) = 1) (x :e hl_rep A (hl_chi A t)) (hl_IN_compat A HA x HxA (hl_chi A t) Hchit) ((eq_sym_i (hl_rep A (hl_chi A t)) t Hrct) (fun u v => x :e u) Hxt)).
      exact (iffER (l x y = 1) (P x y) (HP x HxA y HyA) Hxy).
Qed.
Theorem hl_wqoset_compat : forall A:set, A <> Empty -> forall l1 :e 2 :^: A :^: A, forall P1:set -> set -> prop, (forall x y :e A, l1 x y = 1 <-> P1 x y) -> (hl_wqoset A l1 = 1 <-> wqoset_on A P1).
let A. assume HA. let l. assume Hl. let P. assume HP.
claim Hq: ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)) <-> qoset_on A P. { exact (qoset_lit_iff A HA l Hl P HP). }
claim Hwq: (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1)) <-> (forall s c= fld_on A P, exists t c= s, finite t /\ forall y :e s, exists x :e t, P x y). { exact (wq_lit_iff A HA l Hl P HP). }
claim Hif: (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1))) then 1 else 0) = 1 <-> wqoset_on A P.
{ apply (iff_trans ((if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1))) then 1 else 0) = 1) ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1)))) (wqoset_on A P) (If_1_iff ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1)))))).
  prove ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1)))) <-> (qoset_on A P /\ (forall s c= fld_on A P, exists t c= s, finite t /\ forall y :e s, exists x :e t, P x y)).
  apply iffI.
  - assume H. apply H. assume Ha H2. apply H2. assume Hb Hc. exact (andI (qoset_on A P) (forall s c= fld_on A P, exists t c= s, finite t /\ forall y :e s, exists x :e t, P x y) (iffEL ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)) (qoset_on A P) Hq (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) Ha Hb)) (iffEL (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1)) (forall s c= fld_on A P, exists t c= s, finite t /\ forall y :e s, exists x :e t, P x y) Hwq Hc)).
  - assume H. apply H. assume Hq' Hc.
    claim Hab: ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)). { exact (iffER ((forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1)) (qoset_on A P) Hq Hq'). }
    apply Hab. assume Ha Hb. exact (andI (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1))) Ha (andI (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1)) Hb (iffER (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1)) (forall s c= fld_on A P, exists t c= s, finite t /\ forall y :e s, exists x :e t, P x y) Hwq Hc))). }
exact ((eq_sym_i (hl_wqoset A l) (if (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ (forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1))) then 1 else 0) (hl_wqoset_unfold A l Hl)) (fun u v => u = 1 <-> wqoset_on A P) Hif).
Qed.

Theorem iter_fun_In : forall A:set, forall f:set -> set, (forall y :e A, f y :e A) -> forall n, nat_p n -> forall x :e A, iter_fun n f x :e A.
let A f. assume Hf.
claim Hbase: forall x :e A, iter_fun 0 f x :e A.
{ let x. assume Hx. prove nat_primrec x (fun _ r => f r) 0 :e A. exact ((eq_sym_i (nat_primrec x (fun _ r => f r) 0) x (nat_primrec_0 x (fun _ r => f r))) (fun u v => u :e A) Hx). }
claim Hstep: forall n, nat_p n -> (forall x :e A, iter_fun n f x :e A) -> forall x :e A, iter_fun (ordsucc n) f x :e A.
{ let n. assume Hn IH. let x. assume Hx. prove nat_primrec x (fun _ r => f r) (ordsucc n) :e A.
  exact ((eq_sym_i (nat_primrec x (fun _ r => f r) (ordsucc n)) (f (nat_primrec x (fun _ r => f r) n)) (nat_primrec_S x (fun _ r => f r) n Hn)) (fun u v => u :e A) (Hf (nat_primrec x (fun _ r => f r) n) (IH x Hx))). }
exact (nat_ind (fun n => forall x :e A, iter_fun n f x :e A) Hbase Hstep).
Qed.
Theorem hl_ITER_compat : forall A:set, A <> Empty -> forall l1 :e omega, forall l2 :e A :^: A, forall f2:set -> set, (forall x :e A, l2 x = f2 x) -> forall l3 :e A, hl_ITER A l1 l2 l3 = iter_fun l1 f2 l3.
let A. assume HA. let n. assume Hn. let f. assume Hf. let f2. assume Hpw. let x. assume Hx.
claim Hf2A: forall y :e A, f2 y :e A. { let y. assume Hy. exact ((Hpw y Hy) (fun u v => u :e A) (setexp_ap A A f Hf y Hy)). }
claim Hz: hl_NUMERAL hl_zero :e omega. { exact ((eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (fun u v => u :e omega) (nat_p_omega 0 nat_0)). }
claim HG: (fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) :e A :^: A :^: (A :^: A) :^: omega.
{ prove (fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) :e Pi_ n :e omega, A :^: A :^: (A :^: A). apply (lam_Pi omega (fun _ => A :^: A :^: (A :^: A)) (fun n => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y)). let m. assume Hm.
  prove (fun g :e A :^: A => fun y :e A => iter_fun m (fun z => g z) y) :e Pi_ g :e A :^: A, A :^: A. apply (lam_Pi (A :^: A) (fun _ => A :^: A) (fun g => fun y :e A => iter_fun m (fun z => g z) y)). let g. assume Hg.
  prove (fun y :e A => iter_fun m (fun z => g z) y) :e Pi_ y :e A, A. apply (lam_Pi A (fun _ => A) (fun y => iter_fun m (fun z => g z) y)). let y. assume Hy.
  exact (iter_fun_In A (fun z => g z) (fun z Hz => setexp_ap A A g Hg z Hz) m (omega_nat_p m Hm) y Hy). }
claim HGb: forall m :e omega, forall g :e A :^: A, forall y :e A, (fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g y = iter_fun m (fun z => g z) y.
{ let m. assume Hm. let g. assume Hg. let y. assume Hy.
  claim H1: (fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m = (fun g :e A :^: A => fun y :e A => iter_fun m (fun z => g z) y). { exact (beta omega (fun n => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m Hm). }
  claim H2: (fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g = (fun y :e A => iter_fun m (fun z => g z) y). { exact (eq_trans_i ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g) ((fun g :e A :^: A => fun y :e A => iter_fun m (fun z => g z) y) g) (fun y :e A => iter_fun m (fun z => g z) y) (f_equal (fun u => u g) ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m) (fun g :e A :^: A => fun y :e A => iter_fun m (fun z => g z) y) H1) (beta (A :^: A) (fun g => fun y :e A => iter_fun m (fun z => g z) y) g Hg)). }
  exact (eq_trans_i ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g y) ((fun y :e A => iter_fun m (fun z => g z) y) y) (iter_fun m (fun z => g z) y) (f_equal (fun u => u y) ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g) (fun y :e A => iter_fun m (fun z => g z) y) H2) (beta A (fun y => iter_fun m (fun z => g z) y) y Hy)). }
claim Hex: exists g :e A :^: A :^: (A :^: A) :^: omega, (forall x :e A, forall f :e A :^: A, g (hl_NUMERAL hl_zero) f x = x) /\ forall x :e A, forall f :e A :^: A, forall n :e omega, g (hl_SUC n) f x = f (g n f x).
{ witness (fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y). apply andI. exact HG. apply andI.
  - let y. assume Hy. let g. assume Hg.
    claim H4: iter_fun (hl_NUMERAL hl_zero) (fun z => g z) y = y. { prove nat_primrec y (fun _ r => g r) (hl_NUMERAL hl_zero) = y. exact ((eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (fun u v => nat_primrec y (fun _ r => g r) u = y) (nat_primrec_0 y (fun _ r => g r))). }
    exact (eq_trans_i ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) (hl_NUMERAL hl_zero) g y) (iter_fun (hl_NUMERAL hl_zero) (fun z => g z) y) y (HGb (hl_NUMERAL hl_zero) Hz g Hg y Hy) H4).
  - let y. assume Hy. let g. assume Hg. let m. assume Hm.
    claim HSm: hl_SUC m :e omega. { exact (hl_SUC_omega m Hm). }
    claim H5: iter_fun (hl_SUC m) (fun z => g z) y = g (iter_fun m (fun z => g z) y).
    { prove nat_primrec y (fun _ r => g r) (hl_SUC m) = g (nat_primrec y (fun _ r => g r) m).
      exact ((eq_sym_i (hl_SUC m) (ordsucc m) (hl_SUC_ap m Hm)) (fun u v => nat_primrec y (fun _ r => g r) u = g (nat_primrec y (fun _ r => g r) m)) (nat_primrec_S y (fun _ r => g r) m (omega_nat_p m Hm))). }
    exact (eq_trans_i ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) (hl_SUC m) g y) (iter_fun (hl_SUC m) (fun z => g z) y) (g ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g y)) (HGb (hl_SUC m) HSm g Hg y Hy) (eq_trans_i (iter_fun (hl_SUC m) (fun z => g z) y) (g (iter_fun m (fun z => g z) y)) (g ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g y)) H5 (f_equal (fun u => g u) (iter_fun m (fun z => g z) y) ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g y) (eq_sym_i ((fun n :e omega => fun g :e A :^: A => fun y :e A => iter_fun n (fun z => g z) y) m g y) (iter_fun m (fun z => g z) y) (HGb m Hm g Hg y Hy))))). }
apply (hl_ITER_spec A HA Hex). assume H12 Hin. apply H12. assume H0 HS.
claim Hbase: forall y :e A, hl_ITER A 0 f y = iter_fun 0 f2 y.
{ let y. assume Hy.
  claim Ha: hl_ITER A 0 f y = y. { exact (hl_NUMERAL_zero (fun u v => hl_ITER A u f y = y) (H0 y Hy f Hf)). }
  claim Hb: iter_fun 0 f2 y = y. { exact (nat_primrec_0 y (fun _ r => f2 r)). }
  exact (eq_trans_i (hl_ITER A 0 f y) y (iter_fun 0 f2 y) Ha (eq_sym_i (iter_fun 0 f2 y) y Hb)). }
claim Hstep: forall m, nat_p m -> (forall y :e A, hl_ITER A m f y = iter_fun m f2 y) -> forall y :e A, hl_ITER A (ordsucc m) f y = iter_fun (ordsucc m) f2 y.
{ let m. assume Hm IH. let y. assume Hy.
  claim Hmo: m :e omega. { exact (nat_p_omega m Hm). }
  claim Hit: iter_fun m f2 y :e A. { exact (iter_fun_In A f2 Hf2A m Hm y Hy). }
  claim Ha: hl_ITER A (ordsucc m) f y = f (hl_ITER A m f y). { exact ((hl_SUC_ap m Hmo) (fun u v => hl_ITER A u f y = f (hl_ITER A m f y)) (HS y Hy f Hf m Hmo)). }
  claim Hb: f (hl_ITER A m f y) = f2 (iter_fun m f2 y). { exact (eq_trans_i (f (hl_ITER A m f y)) (f (iter_fun m f2 y)) (f2 (iter_fun m f2 y)) (f_equal (fun u => f u) (hl_ITER A m f y) (iter_fun m f2 y) (IH y Hy)) (Hpw (iter_fun m f2 y) Hit)). }
  claim Hc: iter_fun (ordsucc m) f2 y = f2 (iter_fun m f2 y). { exact (nat_primrec_S y (fun _ r => f2 r) m Hm). }
  exact (eq_trans_i (hl_ITER A (ordsucc m) f y) (f (hl_ITER A m f y)) (iter_fun (ordsucc m) f2 y) Ha (eq_trans_i (f (hl_ITER A m f y)) (f2 (iter_fun m f2 y)) (iter_fun (ordsucc m) f2 y) Hb (eq_sym_i (iter_fun (ordsucc m) f2 y) (f2 (iter_fun m f2 y)) Hc))). }
exact (nat_ind (fun m => forall y :e A, hl_ITER A m f y = iter_fun m f2 y) Hbase Hstep n (omega_nat_p n Hn) x Hx).
Qed.
