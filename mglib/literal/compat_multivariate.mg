// Compatibility theorems for the multivariate profile (docs/DESIGN.md 24.2(2)):
// literal constants vs their auto-translated native definitions.

Theorem hl_vec_compat : forall N:set, N <> Empty -> forall l1 :e omega, hl_vec N l1 = vec N l1.
let N. assume HN. let l1. assume Hl1.
claim HRne: R <> Empty. { exact (nonempty_of_In R 0 real_0). }
claim Hrl: hl_real_of_num l1 :e R. { exact ((eq_sym_i (hl_real_of_num l1) l1 (hl_real_of_num_ap l1 Hl1)) (fun hl__u hl__v => hl__u :e R) (god1_natural_number_is_real l1 Hl1)). }
claim Hin: (fun i :e omega => hl_real_of_num l1) :e R :^: omega.
{ exact (lam_Pi omega (fun _:set => R) (fun i:set => hl_real_of_num l1) (fun i:set => fun H_ : i :e omega => Hrl)). }
claim Hpw: forall x :e idx N, (fun i :e omega => hl_real_of_num l1) x = (fun _:set => l1) x.
{ let x. assume Hx.
  exact (eq_trans_i ((fun i :e omega => hl_real_of_num l1) x) (hl_real_of_num l1) l1 (beta omega (fun i:set => hl_real_of_num l1) x (SepE1 omega (fun j => 1 <= j /\ j <= dimindex N) x Hx)) (hl_real_of_num_ap l1 Hl1)). }
claim Hlam: hl_vec N l1 = fun i :e idx N => (fun _:set => l1) i.
{ exact (eq_trans_i (hl_vec N l1) (hl_lambda R N (fun i :e omega => hl_real_of_num l1)) (fun i :e idx N => (fun _:set => l1) i) (hl_vec_unfold N l1 Hl1) (hl_lambda_compat_idx R N HRne HN (fun i :e omega => hl_real_of_num l1) Hin (fun _:set => l1) Hpw)). }
prove hl_vec N l1 = fun i :e idx N => l1.
exact Hlam.
Qed.
