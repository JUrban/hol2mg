// Model-soundness theorems of the primitive interface (design 21.4): the literal statements of the
// characterizing HOL axioms/theorems, proved from the primitive definitions and the compatibility
// theorems.  A theorem hlt_N_model whose statement is exactly the literal statement of N discharges
// the admission of hlt_N in the certification modules (bin/main.ml).

Theorem hl_numeral_one : hl_NUMERAL (hl_BIT1 hl_zero) = 1.
claim H0: 0 :e omega. { exact (nat_p_omega 0 nat_0). }
claim H1: hl_BIT1 hl_zero = 1.
{ exact (eq_trans_i (hl_BIT1 hl_zero) (hl_BIT1 0) 1 (f_equal (fun u => hl_BIT1 u) hl_zero 0 hl_zero_compat) (eq_trans_i (hl_BIT1 0) (ordsucc (hl_BIT0 0)) 1 (hl_BIT1_S 0 H0) (f_equal (fun u => ordsucc u) (hl_BIT0 0) 0 hl_BIT0_0))). }
exact (eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL 1) 1 (f_equal (fun u => hl_NUMERAL u) (hl_BIT1 hl_zero) 1 H1) (hl_NUMERAL_compat 1 (nat_p_omega 1 nat_1))).
Qed.
Theorem hl_real_zero_lit : hl_real_of_num (hl_NUMERAL hl_zero) = 0.
exact (eq_trans_i (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_of_num 0) 0 (f_equal (fun u => hl_real_of_num u) (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (hl_real_of_num_compat 0 (nat_p_omega 0 nat_0))).
Qed.
Theorem hl_real_one_lit : hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
exact (eq_trans_i (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_of_num 1) 1 (f_equal (fun u => hl_real_of_num u) (hl_NUMERAL (hl_BIT1 hl_zero)) 1 hl_numeral_one) (hl_real_of_num_compat 1 (nat_p_omega 1 nat_1))).
Qed.

// ---- realax.ml ----
Theorem hlt_REAL_ADD_SYM_model : forall x y :e R, hl_real_add x y = hl_real_add y x.
let x. assume Hx. let y. assume Hy.
rewrite (hl_real_add_compat x Hx y Hy). rewrite (hl_real_add_compat y Hy x Hx).
exact (add_SNo_com x y (real_SNo x Hx) (real_SNo y Hy)).
Qed.
Theorem hlt_REAL_ADD_ASSOC_model : forall x y z :e R, hl_real_add x (hl_real_add y z) = hl_real_add (hl_real_add x y) z.
let x. assume Hx. let y. assume Hy. let z. assume Hz.
rewrite (hl_real_add_compat y Hy z Hz). rewrite (hl_real_add_compat x Hx y Hy).
rewrite (hl_real_add_compat x Hx (y + z) (real_add_SNo y Hy z Hz)). rewrite (hl_real_add_compat (x + y) (real_add_SNo x Hx y Hy) z Hz).
exact (add_SNo_assoc x y z (real_SNo x Hx) (real_SNo y Hy) (real_SNo z Hz)).
Qed.
Theorem hlt_REAL_ADD_LID_model : forall x :e R, hl_real_add (hl_real_of_num (hl_NUMERAL hl_zero)) x = x.
let x. assume Hx.
rewrite hl_real_zero_lit. rewrite (hl_real_add_compat 0 real_0 x Hx). exact (add_SNo_0L x (real_SNo x Hx)).
Qed.
Theorem hlt_REAL_ADD_LINV_model : forall x :e R, hl_real_add (hl_real_neg x) x = hl_real_of_num (hl_NUMERAL hl_zero).
let x. assume Hx.
rewrite hl_real_zero_lit. rewrite (hl_real_neg_compat x Hx). rewrite (hl_real_add_compat (- x) (real_minus_SNo x Hx) x Hx).
exact (add_SNo_minus_SNo_linv x (real_SNo x Hx)).
Qed.
Theorem hlt_REAL_MUL_SYM_model : forall x y :e R, hl_real_mul x y = hl_real_mul y x.
let x. assume Hx. let y. assume Hy.
exact (eq_trans_i (hl_real_mul x y) (x * y) (hl_real_mul y x) (hl_real_mul_compat x Hx y Hy) (eq_trans_i (x * y) (y * x) (hl_real_mul y x) (mul_SNo_com x y (real_SNo x Hx) (real_SNo y Hy)) (eq_sym_i (hl_real_mul y x) (y * x) (hl_real_mul_compat y Hy x Hx)))).
Qed.
Theorem hlt_REAL_MUL_ASSOC_model : forall x y z :e R, hl_real_mul x (hl_real_mul y z) = hl_real_mul (hl_real_mul x y) z.
let x. assume Hx. let y. assume Hy. let z. assume Hz.
claim HL: hl_real_mul x (hl_real_mul y z) = x * (y * z). { exact (eq_trans_i (hl_real_mul x (hl_real_mul y z)) (hl_real_mul x (y * z)) (x * (y * z)) (f_equal (fun u => hl_real_mul x u) (hl_real_mul y z) (y * z) (hl_real_mul_compat y Hy z Hz)) (hl_real_mul_compat x Hx (y * z) (real_mul_SNo y Hy z Hz))). }
claim HR: hl_real_mul (hl_real_mul x y) z = (x * y) * z. { exact (eq_trans_i (hl_real_mul (hl_real_mul x y) z) (hl_real_mul (x * y) z) ((x * y) * z) (f_equal (fun u => hl_real_mul u z) (hl_real_mul x y) (x * y) (hl_real_mul_compat x Hx y Hy)) (hl_real_mul_compat (x * y) (real_mul_SNo x Hx y Hy) z Hz)). }
exact (eq_trans_i (hl_real_mul x (hl_real_mul y z)) (x * (y * z)) (hl_real_mul (hl_real_mul x y) z) HL (eq_trans_i (x * (y * z)) ((x * y) * z) (hl_real_mul (hl_real_mul x y) z) (mul_SNo_assoc x y z (real_SNo x Hx) (real_SNo y Hy) (real_SNo z Hz)) (eq_sym_i (hl_real_mul (hl_real_mul x y) z) ((x * y) * z) HR))).
Qed.
Theorem hlt_REAL_MUL_LID_model : forall x :e R, hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x = x.
let x. assume Hx.
exact (eq_trans_i (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) x) (hl_real_mul 1 x) x (f_equal (fun u => hl_real_mul u x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) 1 hl_real_one_lit) (eq_trans_i (hl_real_mul 1 x) (1 * x) x (hl_real_mul_compat 1 real_1 x Hx) (mul_SNo_oneL x (real_SNo x Hx)))).
Qed.
Theorem hlt_REAL_ADD_LDISTRIB_model : forall x y z :e R, hl_real_mul x (hl_real_add y z) = hl_real_add (hl_real_mul x y) (hl_real_mul x z).
let x. assume Hx. let y. assume Hy. let z. assume Hz.
claim HL: hl_real_mul x (hl_real_add y z) = x * (y + z). { exact (eq_trans_i (hl_real_mul x (hl_real_add y z)) (hl_real_mul x (y + z)) (x * (y + z)) (f_equal (fun u => hl_real_mul x u) (hl_real_add y z) (y + z) (hl_real_add_compat y Hy z Hz)) (hl_real_mul_compat x Hx (y + z) (real_add_SNo y Hy z Hz))). }
claim HR: hl_real_add (hl_real_mul x y) (hl_real_mul x z) = x * y + x * z. { exact (eq_trans_i (hl_real_add (hl_real_mul x y) (hl_real_mul x z)) (hl_real_add (x * y) (x * z)) (x * y + x * z) (f_equal2 (fun u v => hl_real_add u v) (hl_real_mul x y) (x * y) (hl_real_mul x z) (x * z) (hl_real_mul_compat x Hx y Hy) (hl_real_mul_compat x Hx z Hz)) (hl_real_add_compat (x * y) (real_mul_SNo x Hx y Hy) (x * z) (real_mul_SNo x Hx z Hz))). }
exact (eq_trans_i (hl_real_mul x (hl_real_add y z)) (x * (y + z)) (hl_real_add (hl_real_mul x y) (hl_real_mul x z)) HL (eq_trans_i (x * (y + z)) (x * y + x * z) (hl_real_add (hl_real_mul x y) (hl_real_mul x z)) (mul_SNo_distrL x y z (real_SNo x Hx) (real_SNo y Hy) (real_SNo z Hz)) (eq_sym_i (hl_real_add (hl_real_mul x y) (hl_real_mul x z)) (x * y + x * z) HR))).
Qed.
Theorem hlt_REAL_LE_REFL_model : forall x :e R, hl_real_le x x = 1.
let x. assume Hx. apply (hl_real_le_compat x Hx x Hx). assume _ Hb. exact (Hb (SNoLe_ref x)).
Qed.
Theorem hlt_REAL_LE_ANTISYM_model : forall x y :e R, hl_real_le x y = 1 /\ hl_real_le y x = 1 <-> x = y.
let x. assume Hx. let y. assume Hy.
apply iffI.
- assume H. apply H. assume H1 H2.
  claim L1: x <= y. { apply (hl_real_le_compat x Hx y Hy). assume Hf _. exact (Hf H1). }
  claim L2: y <= x. { apply (hl_real_le_compat y Hy x Hx). assume Hf _. exact (Hf H2). }
  exact (SNoLe_antisym x y (real_SNo x Hx) (real_SNo y Hy) L1 L2).
- assume H. apply andI.
  + apply (hl_real_le_compat x Hx y Hy). assume _ Hb. exact (Hb (H (fun hl__u hl__v => x <= hl__u) (SNoLe_ref x))).
  + apply (hl_real_le_compat y Hy x Hx). assume _ Hb. exact (Hb (H (fun hl__u hl__v => hl__u <= x) (SNoLe_ref x))).
Qed.
Theorem hlt_REAL_LE_TRANS_model : forall x y z :e R, hl_real_le x y = 1 /\ hl_real_le y z = 1 -> hl_real_le x z = 1.
let x. assume Hx. let y. assume Hy. let z. assume Hz. assume H. apply H. assume H1 H2.
claim L1: x <= y. { apply (hl_real_le_compat x Hx y Hy). assume Hf _. exact (Hf H1). }
claim L2: y <= z. { apply (hl_real_le_compat y Hy z Hz). assume Hf _. exact (Hf H2). }
apply (hl_real_le_compat x Hx z Hz). assume _ Hb. exact (Hb (SNoLe_tra x y z (real_SNo x Hx) (real_SNo y Hy) (real_SNo z Hz) L1 L2)).
Qed.
Theorem hlt_REAL_LE_TOTAL_model : forall x y :e R, hl_real_le x y = 1 \/ hl_real_le y x = 1.
let x. assume Hx. let y. assume Hy.
apply (SNoLtLe_or x y (real_SNo x Hx) (real_SNo y Hy)).
- assume Hlt. apply orIL. apply (hl_real_le_compat x Hx y Hy). assume _ Hb. exact (Hb (SNoLtLe x y Hlt)).
- assume Hle. apply orIR. apply (hl_real_le_compat y Hy x Hx). assume _ Hb. exact (Hb Hle).
Qed.
Theorem hlt_REAL_LE_LADD_IMP_model : forall x y z :e R, hl_real_le y z = 1 -> hl_real_le (hl_real_add x y) (hl_real_add x z) = 1.
let x. assume Hx. let y. assume Hy. let z. assume Hz. assume H.
claim L: y <= z. { apply (hl_real_le_compat y Hy z Hz). assume Hf _. exact (Hf H). }
rewrite (hl_real_add_compat x Hx y Hy). rewrite (hl_real_add_compat x Hx z Hz).
apply (hl_real_le_compat (x + y) (real_add_SNo x Hx y Hy) (x + z) (real_add_SNo x Hx z Hz)). assume _ Hb.
exact (Hb (add_SNo_Le2 x y z (real_SNo x Hx) (real_SNo y Hy) (real_SNo z Hz) L)).
Qed.
Theorem hlt_REAL_LE_MUL_model : forall x y :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul x y) = 1.
let x. assume Hx. let y. assume Hy. assume H. apply H. assume H1 H2.
claim H1': hl_real_le 0 x = 1. { exact (hl_real_zero_lit (fun hl__u hl__v => hl_real_le hl__u x = 1) H1). }
claim H2': hl_real_le 0 y = 1. { exact (hl_real_zero_lit (fun hl__u hl__v => hl_real_le hl__u y = 1) H2). }
claim L1: 0 <= x. { apply (hl_real_le_compat 0 real_0 x Hx). assume Hf _. exact (Hf H1'). }
claim L2: 0 <= y. { apply (hl_real_le_compat 0 real_0 y Hy). assume Hf _. exact (Hf H2'). }
claim Hm: hl_real_mul x y = x * y. { exact (hl_real_mul_compat x Hx y Hy). }
claim H3: hl_real_le 0 (x * y) = 1. { apply (hl_real_le_compat 0 real_0 (x * y) (real_mul_SNo x Hx y Hy)). assume _ Hb. exact (Hb (mul_SNo_nonneg_nonneg x y (real_SNo x Hx) (real_SNo y Hy) L1 L2)). }
claim H4: hl_real_le 0 (hl_real_mul x y) = 1. { exact ((eq_sym_i (hl_real_mul x y) (x * y) Hm) (fun hl__u hl__v => hl_real_le 0 hl__u = 1) H3). }
exact ((eq_sym_i (hl_real_of_num (hl_NUMERAL hl_zero)) 0 hl_real_zero_lit) (fun hl__u hl__v => hl_real_le hl__u (hl_real_mul x y) = 1) H4).
Qed.
Theorem hlt_REAL_INV_0_model : hl_real_inv (hl_real_of_num (hl_NUMERAL hl_zero)) = hl_real_of_num (hl_NUMERAL hl_zero).
exact (eq_trans_i (hl_real_inv (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_real_inv 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (f_equal (fun u => hl_real_inv u) (hl_real_of_num (hl_NUMERAL hl_zero)) 0 hl_real_zero_lit) (eq_trans_i (hl_real_inv 0) (recip_SNo 0) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_inv_compat 0 real_0) (eq_trans_i (recip_SNo 0) 0 (hl_real_of_num (hl_NUMERAL hl_zero)) recip_SNo_0 (eq_sym_i (hl_real_of_num (hl_NUMERAL hl_zero)) 0 hl_real_zero_lit)))).
Qed.
Theorem hlt_REAL_MUL_LINV_model : forall x :e R, ~ x = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_real_mul (hl_real_inv x) x = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)).
let x. assume Hx Hne.
claim Hne0: x <> 0. { assume H0. apply Hne. exact (eq_trans_i x 0 (hl_real_of_num (hl_NUMERAL hl_zero)) H0 (eq_sym_i (hl_real_of_num (hl_NUMERAL hl_zero)) 0 hl_real_zero_lit)). }
exact (eq_trans_i (hl_real_mul (hl_real_inv x) x) (hl_real_mul (recip_SNo x) x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (f_equal (fun u => hl_real_mul u x) (hl_real_inv x) (recip_SNo x) (hl_real_inv_compat x Hx)) (eq_trans_i (hl_real_mul (recip_SNo x) x) (recip_SNo x * x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_mul_compat (recip_SNo x) (real_recip_SNo x Hx) x Hx) (eq_trans_i (recip_SNo x * x) 1 (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (recip_SNo_invL x (real_SNo x Hx) Hne0) (eq_sym_i (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) 1 hl_real_one_lit)))).
Qed.
Theorem hlt_REAL_OF_NUM_ADD_model : forall m n :e omega, hl_real_add (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_add m n).
let m. assume Hm. let n. assume Hn.
rewrite (hl_add_compat m Hm n Hn). rewrite (hl_real_of_num_compat (m + n) (add_SNo_In_omega m Hm n Hn)).
rewrite (hl_real_of_num_compat m Hm). rewrite (hl_real_of_num_compat n Hn).
exact (hl_real_add_compat m (omega_subq_R m Hm) n (omega_subq_R n Hn)).
Qed.
Theorem hlt_REAL_OF_NUM_MUL_model : forall m n :e omega, hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = hl_real_of_num (hl_mul m n).
let m. assume Hm. let n. assume Hn.
claim HL: hl_real_mul (hl_real_of_num m) (hl_real_of_num n) = m * n. { exact (eq_trans_i (hl_real_mul (hl_real_of_num m) (hl_real_of_num n)) (hl_real_mul m n) (m * n) (f_equal2 (fun u v => hl_real_mul u v) (hl_real_of_num m) m (hl_real_of_num n) n (hl_real_of_num_compat m Hm) (hl_real_of_num_compat n Hn)) (hl_real_mul_compat m (omega_subq_R m Hm) n (omega_subq_R n Hn))). }
claim HR: hl_real_of_num (hl_mul m n) = m * n. { exact (eq_trans_i (hl_real_of_num (hl_mul m n)) (hl_real_of_num (m * n)) (m * n) (f_equal (fun u => hl_real_of_num u) (hl_mul m n) (m * n) (hl_mul_compat m Hm n Hn)) (hl_real_of_num_compat (m * n) (mul_SNo_In_omega m Hm n Hn))). }
exact (eq_trans_i (hl_real_mul (hl_real_of_num m) (hl_real_of_num n)) (m * n) (hl_real_of_num (hl_mul m n)) HL (eq_sym_i (hl_real_of_num (hl_mul m n)) (m * n) HR)).
Qed.
Theorem hlt_REAL_OF_NUM_LE_model : forall m n :e omega, hl_real_le (hl_real_of_num m) (hl_real_of_num n) = 1 <-> hl_le m n = 1.
let m. assume Hm. let n. assume Hn.
rewrite (hl_real_of_num_compat m Hm). rewrite (hl_real_of_num_compat n Hn).
apply (hl_real_le_compat m (omega_subq_R m Hm) n (omega_subq_R n Hn)). assume Hf Hb.
apply (hl_le_compat m Hm n Hn). assume Hf' Hb'.
apply iffI.
- assume H. exact (Hb' (Hf H)).
- assume H. exact (Hb (Hf' H)).
Qed.
Theorem hlt_REAL_OF_NUM_EQ_model : forall m n :e omega, hl_real_of_num m = hl_real_of_num n <-> m = n.
let m. assume Hm. let n. assume Hn.
rewrite (hl_real_of_num_compat m Hm). rewrite (hl_real_of_num_compat n Hn). exact (iff_refl (m = n)).
Qed.
Theorem hlt_REAL_OF_NUM_SUC_model : forall n :e omega, hl_real_add (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_real_of_num (hl_SUC n).
let n. assume Hn.
rewrite (hl_SUC_compat n Hn). rewrite (hl_real_of_num_compat (ordsucc n) (omega_ordsucc n Hn)). rewrite (hl_real_of_num_compat n Hn).
rewrite hl_real_one_lit. rewrite (hl_real_add_compat n (omega_subq_R n Hn) 1 real_1).
exact (add_SNo_1_ordsucc n Hn).
Qed.
Theorem hlt_REAL_COMPLETE_model : forall P :e 2 :^: R, (exists x :e R, P x = 1) /\ (exists M :e R, forall x :e R, P x = 1 -> hl_real_le x M = 1) -> exists M :e R, (forall x :e R, P x = 1 -> hl_real_le x M = 1) /\ forall M' :e R, (forall x :e R, P x = 1 -> hl_real_le x M' = 1) -> hl_real_le M M' = 1.
let P. assume HP. assume H. apply H. assume Hne Hbd.
claim HS: hl_rep R P c= R. { exact (hl_rep_Subq R P). }
claim Hmem: forall x :e R, P x = 1 <-> x :e hl_rep R P. { let x. assume Hx. apply iffI. - assume H1. exact (SepI R (fun x => P x = 1) x Hx H1). - assume H1. exact (SepE2 R (fun x => P x = 1) x H1). }
claim Hne': ~ hl_rep R P = Empty. { apply Hne. let x. assume Hx0. apply Hx0. assume Hx HPx. claim Hin: x :e hl_rep R P. { apply (Hmem x Hx). assume Hf _. exact (Hf HPx). } exact (neq_Empty_of_mem (hl_rep R P) x Hin). }
claim Hbd': exists b :e R, forall x :e hl_rep R P, x <= b.
{ apply Hbd. let M. assume HM0. apply HM0. assume HM HMb. witness M. apply andI. exact HM. let x. assume Hx.
  claim HxR: x :e R. { exact (HS x Hx). }
  claim HPx: P x = 1. { apply (Hmem x HxR). assume _ Hb. exact (Hb Hx). }
  apply (hl_real_le_compat x HxR M HM). assume Hf _. exact (Hf (HMb x HxR HPx)). }
apply (lub_of_bounds (hl_rep R P) HS Hne' Hbd'). let M. assume HM0. apply HM0. assume HM Hlub. apply Hlub. assume Hub Hleast.
witness M. apply andI. exact HM. apply andI.
- let x. assume Hx HPx. claim Hin: x :e hl_rep R P. { apply (Hmem x Hx). assume Hf _. exact (Hf HPx). }
  apply (hl_real_le_compat x Hx M HM). assume _ Hb. exact (Hb (Hub x Hin)).
- let M'. assume HM' Hup.
  claim Hub': upper_bound (hl_rep R P) M'. { let x. assume Hx. claim HxR: x :e R. { exact (HS x Hx). } claim HPx: P x = 1. { apply (Hmem x HxR). assume _ Hb. exact (Hb Hx). } apply (hl_real_le_compat x HxR M' HM'). assume Hf _. exact (Hf (Hup x HxR HPx)). }
  apply (hl_real_le_compat M HM M' HM'). assume _ Hb. exact (Hb (Hleast M' HM' Hub')).
Qed.

// ---- pairs, eta, choice, booleans ----
Theorem hlt_PAIR_EQ_model : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, forall a :e A, forall b :e B, hl_pair A B x y = hl_pair A B a b <-> x = a /\ y = b.
let A B. assume HA HB. let x. assume Hx. let y. assume Hy. let a. assume Ha. let b. assume Hb.
rewrite (hl_pair_compat A B HA HB x Hx y Hy). rewrite (hl_pair_compat A B HA HB a Ha b Hb).
apply iffI.
- assume H. apply andI.
  + exact (eq_trans_i x ((x,y) 0) a (eq_sym_i ((x,y) 0) x (tuple_2_0_eq x y)) (eq_trans_i ((x,y) 0) ((a,b) 0) a (f_equal (fun u => u 0) (x,y) (a,b) H) (tuple_2_0_eq a b))).
  + exact (eq_trans_i y ((x,y) 1) b (eq_sym_i ((x,y) 1) y (tuple_2_1_eq x y)) (eq_trans_i ((x,y) 1) ((a,b) 1) b (f_equal (fun u => u 1) (x,y) (a,b) H) (tuple_2_1_eq a b))).
- assume H. apply H. assume H1 H2. exact (f_equal2 (fun u v => (u,v)) x a y b H1 H2).
Qed.
Theorem hlt_PAIR_SURJECTIVE_model : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, exists x :e A, exists y :e B, p = hl_pair A B x y.
let A B. assume HA HB. let p. assume Hp.
claim H0: p 0 :e A. { exact (ap0_Sigma A (fun _ => B) p Hp). }
claim H1: p 1 :e B. { exact (ap1_Sigma A (fun _ => B) p Hp). }
witness (p 0). apply andI. exact H0. witness (p 1). apply andI. exact H1.
exact (eq_trans_i p (p 0, p 1) (hl_pair A B (p 0) (p 1)) (eq_sym_i (p 0, p 1) p (tuple_Sigma_eta A (fun _ => B) p Hp)) (eq_sym_i (hl_pair A B (p 0) (p 1)) (p 0, p 1) (hl_pair_compat A B HA HB (p 0) H0 (p 1) H1))).
Qed.
Theorem hlt_ETA_AX_model : forall A B:set, A <> Empty -> B <> Empty -> forall t :e B :^: A, (fun x :e A => t x) = t.
let A B. assume HA HB. let t. assume Ht. exact (Pi_eta A (fun _ => B) t Ht).
Qed.
Theorem hlt_SELECT_AX_model : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall x :e A, P x = 1 -> P (hl_select A P) = 1.
let A. assume HA. let P. assume HP. let x. assume Hx HPx.
claim Hsel: hl_select A P = choose_in A (fun x => P x = 1). { exact (beta (2 :^: A) (fun P => choose_in A (fun x => P x = 1)) P HP). }
claim Hex: exists x :e A, P x = 1. { witness x. apply andI. exact Hx. exact HPx. }
rewrite Hsel.
apply (choose_in_spec A (fun x => P x = 1) Hex). assume _ H. exact H.
Qed.
Theorem hlt_BOOL_CASES_AX_model : forall t :e 2, (t = 1 <-> True) \/ (t = 1 <-> False).
let t. assume Ht.
claim H0: (0 = 1 <-> True) \/ (0 = 1 <-> False). { apply orIR. apply iffI. - assume H. exact (neq_0_1 H). - assume H. exact (FalseE H (0 = 1)). }
claim H1: (1 = 1 <-> True) \/ (1 = 1 <-> False). { apply orIL. apply iffI. - assume _. exact (fun p H => H). - assume _. exact (fun q H => H). }
exact (cases_2 t Ht (fun u => (u = 1 <-> True) \/ (u = 1 <-> False)) H0 H1).
Qed.

// ---- Peano ----
Theorem hlt_NOT_SUC_model : forall n :e omega, ~ hl_SUC n = hl_NUMERAL hl_zero.
let n. assume Hn. rewrite (hl_SUC_compat n Hn). rewrite hl_NUMERAL_zero. exact (neq_ordsucc_0 n).
Qed.
Theorem hlt_SUC_INJ_model : forall m n :e omega, hl_SUC m = hl_SUC n <-> m = n.
let m. assume Hm. let n. assume Hn. rewrite (hl_SUC_compat m Hm). rewrite (hl_SUC_compat n Hn).
apply iffI.
- assume H. exact (ordsucc_inj m n H).
- assume H. exact (f_equal (fun u => ordsucc u) m n H).
Qed.
Theorem hlt_num_INDUCTION_model : forall P :e 2 :^: omega, P (hl_NUMERAL hl_zero) = 1 /\ (forall n :e omega, P n = 1 -> P (hl_SUC n) = 1) -> forall n :e omega, P n = 1.
let P. assume HP. assume H. apply H. assume H0 HS. let n. assume Hn.
claim Hbase: P 0 = 1. { exact (hl_NUMERAL_zero (fun hl__u hl__v => P hl__u = 1) H0). }
claim Hstep: forall m, nat_p m -> P m = 1 -> P (ordsucc m) = 1. { let m. assume Hm IH. exact ((hl_SUC_compat m (nat_p_omega m Hm)) (fun hl__u hl__v => P hl__u = 1) (HS m (nat_p_omega m Hm) IH)). }
exact (nat_ind (fun m => P m = 1) Hbase Hstep n (omega_nat_p n Hn)).
Qed.

// ---- lists, unit ----
Theorem hlt_NOT_CONS_NIL_model : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, ~ hl_CONS A h t = hl_NIL A.
let A. assume HA. let h. assume Hh. let t. assume Ht. rewrite (hl_CONS_compat A HA h Hh t Ht). rewrite (hl_NIL_compat A HA). exact (seq_cons_neq_nil h t).
Qed.
Theorem hlt_CONS_11_model : forall A:set, A <> Empty -> forall h1 h2 :e A, forall t1 t2 :e finseq A, hl_CONS A h1 t1 = hl_CONS A h2 t2 <-> h1 = h2 /\ t1 = t2.
let A. assume HA. let h1. assume Hh1. let h2. assume Hh2. let t1. assume Ht1. let t2. assume Ht2.
rewrite (hl_CONS_compat A HA h1 Hh1 t1 Ht1). rewrite (hl_CONS_compat A HA h2 Hh2 t2 Ht2).
apply iffI.
- assume H. apply andI.
  + exact (eq_trans_i h1 (seq_nth (seq_cons h1 t1) 0) h2 (eq_sym_i (seq_nth (seq_cons h1 t1) 0) h1 (seq_nth_cons_0 A h1 Hh1 t1 Ht1)) (eq_trans_i (seq_nth (seq_cons h1 t1) 0) (seq_nth (seq_cons h2 t2) 0) h2 (f_equal (fun u => seq_nth u 0) (seq_cons h1 t1) (seq_cons h2 t2) H) (seq_nth_cons_0 A h2 Hh2 t2 Ht2))).
  + exact (eq_trans_i t1 (seq_tl (seq_cons h1 t1)) t2 (eq_sym_i (seq_tl (seq_cons h1 t1)) t1 (seq_tl_cons A h1 Hh1 t1 Ht1)) (eq_trans_i (seq_tl (seq_cons h1 t1)) (seq_tl (seq_cons h2 t2)) t2 (f_equal (fun u => seq_tl u) (seq_cons h1 t1) (seq_cons h2 t2) H) (seq_tl_cons A h2 Hh2 t2 Ht2))).
- assume H. apply H. assume H1 H2. exact (f_equal2 (fun u v => seq_cons u v) h1 h2 t1 t2 H1 H2).
Qed.
Theorem hlt_list_INDUCT_model : forall A:set, A <> Empty -> forall P :e 2 :^: finseq A, P (hl_NIL A) = 1 /\ (forall a0 :e A, forall a1 :e finseq A, P a1 = 1 -> P (hl_CONS A a0 a1) = 1) -> forall x :e finseq A, P x = 1.
let A. assume HA. let P. assume HP. assume H. apply H. assume H0 HS.
claim Hbase: P seq_nil = 1. { exact ((hl_NIL_compat A HA) (fun hl__u hl__v => P hl__u = 1) H0). }
claim Hstep: forall a :e A, forall l :e finseq A, P l = 1 -> P (seq_cons a l) = 1. { let a. assume Ha. let l. assume Hl IH. exact ((hl_CONS_compat A HA a Ha l Hl) (fun hl__u hl__v => P hl__u = 1) (HS a Ha l Hl IH)). }
exact (seq_induct A (fun l => P l = 1) Hbase Hstep).
Qed.
Theorem hlt_one_axiom_model : forall A:set, A <> Empty -> forall f g :e 1 :^: A, f = g.
let A. assume HA. let f. assume Hf. let g. assume Hg.
apply (Pi_ext A (fun _ => 1) f Hf g Hg). let x. assume Hx.
claim Hf0: f x = 0. { exact (cases_1 (f x) (setexp_ap A 1 f Hf x Hx) (fun u => u = 0) (fun q H => H)). }
claim Hg0: g x = 0. { exact (cases_1 (g x) (setexp_ap A 1 g Hg x Hx) (fun u => u = 0) (fun q H => H)). }
exact (eq_trans_i (f x) 0 (g x) Hf0 (eq_sym_i (g x) 0 Hg0)).
Qed.

// ---- infinity, primitive recursion on omega, list recursion ----
Theorem hlt_INFINITY_AX_model : exists f :e omega :^: omega, hl_ONE_ONE omega omega f = 1 /\ ~ hl_ONTO omega omega f = 1.
claim Hf: (fun n :e omega => ordsucc n) :e omega :^: omega. { prove (fun n :e omega => ordsucc n) :e Pi_ n :e omega, omega. exact (lam_Pi omega (fun _ => omega) (fun n => ordsucc n) (fun n Hn => omega_ordsucc n Hn)). }
witness (fun n :e omega => ordsucc n). apply andI. exact Hf. apply andI.
- rewrite (hl_ONE_ONE_unfold omega omega (fun n :e omega => ordsucc n) Hf).
  claim HP: forall x1 x2 :e omega, (fun n :e omega => ordsucc n) x1 = (fun n :e omega => ordsucc n) x2 -> x1 = x2.
  { let x1. assume H1. let x2. assume H2. assume H.
    claim H': ordsucc x1 = ordsucc x2. { exact (eq_trans_i (ordsucc x1) ((fun n :e omega => ordsucc n) x1) (ordsucc x2) (eq_sym_i ((fun n :e omega => ordsucc n) x1) (ordsucc x1) (beta omega (fun n => ordsucc n) x1 H1)) (eq_trans_i ((fun n :e omega => ordsucc n) x1) ((fun n :e omega => ordsucc n) x2) (ordsucc x2) H (beta omega (fun n => ordsucc n) x2 H2))). }
    exact (ordsucc_inj x1 x2 H'). }
  exact (If_i_1 (forall x1 x2 :e omega, (fun n :e omega => ordsucc n) x1 = (fun n :e omega => ordsucc n) x2 -> x1 = x2) 1 0 HP).
- assume H.
  claim H1: (if forall y :e omega, exists x :e omega, y = (fun n :e omega => ordsucc n) x then 1 else 0) = 1. { exact ((hl_ONTO_unfold omega omega (fun n :e omega => ordsucc n) Hf) (fun hl__u hl__v => hl__u = 1) H). }
  claim HP: forall y :e omega, exists x :e omega, y = (fun n :e omega => ordsucc n) x. { apply (If_1_iff (forall y :e omega, exists x :e omega, y = (fun n :e omega => ordsucc n) x)). assume Hf' _. exact (Hf' H1). }
  apply (HP 0 (nat_p_omega 0 nat_0)). let x. assume Hx0. apply Hx0. assume Hx Heq.
  claim Heq': 0 = ordsucc x. { exact (eq_trans_i 0 ((fun n :e omega => ordsucc n) x) (ordsucc x) Heq (beta omega (fun n => ordsucc n) x Hx)). }
  exact (neq_ordsucc_0 x (eq_sym_i 0 (ordsucc x) Heq')).
Qed.
Theorem hlt_num_Axiom_model : forall A:set, A <> Empty -> forall e1 :e A, forall f :e A :^: omega :^: A, hl_exists_unique (A :^: omega) (fun fn :e A :^: omega => if fn (hl_NUMERAL hl_zero) = e1 /\ forall n :e omega, fn (hl_SUC n) = f (fn n) n then 1 else 0) = 1.
let A. assume HA. let e1. assume He. let f. assume Hf.
claim Hfa: forall r :e A, forall n :e omega, f r n :e A. { let r. assume Hr. let n. assume Hn. exact (setexp2_ap A omega A f Hf r Hr n Hn). }
claim Hval: forall n, nat_p n -> nat_primrec e1 (fun n r => f r n) n :e A.
{ claim Hb: nat_primrec e1 (fun n r => f r n) 0 :e A. { exact ((eq_sym_i (nat_primrec e1 (fun n r => f r n) 0) e1 (nat_primrec_0 e1 (fun n r => f r n))) (fun hl__u hl__v => hl__u :e A) He). }
  claim Hs: forall m, nat_p m -> nat_primrec e1 (fun n r => f r n) m :e A -> nat_primrec e1 (fun n r => f r n) (ordsucc m) :e A.
  { let m. assume Hm IH. exact ((eq_sym_i (nat_primrec e1 (fun n r => f r n) (ordsucc m)) (f (nat_primrec e1 (fun n r => f r n) m) m) (nat_primrec_S e1 (fun n r => f r n) m Hm)) (fun hl__u hl__v => hl__u :e A) (Hfa (nat_primrec e1 (fun n r => f r n) m) IH m (nat_p_omega m Hm))). }
  exact (nat_ind (fun n => nat_primrec e1 (fun n r => f r n) n :e A) Hb Hs). }
claim HF: (fun n :e omega => nat_primrec e1 (fun n r => f r n) n) :e A :^: omega. { prove (fun n :e omega => nat_primrec e1 (fun n r => f r n) n) :e Pi_ n :e omega, A. exact (lam_Pi omega (fun _ => A) (fun n => nat_primrec e1 (fun n r => f r n) n) (fun n Hn => Hval n (omega_nat_p n Hn))). }
claim Hbeta: forall n :e omega, (fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n = nat_primrec e1 (fun n r => f r n) n. { let n. assume Hn. exact (beta omega (fun n => nat_primrec e1 (fun n r => f r n) n) n Hn). }
apply (hl_exists_unique_lit (A :^: omega) (fun fn => fn (hl_NUMERAL hl_zero) = e1 /\ forall n :e omega, fn (hl_SUC n) = f (fn n) n)). assume _ Hb. apply Hb.
witness (fun n :e omega => nat_primrec e1 (fun n r => f r n) n). apply andI. exact HF. apply andI.
- apply andI.
  + claim H0: (fun n :e omega => nat_primrec e1 (fun n r => f r n) n) 0 = e1. { exact (eq_trans_i ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) 0) (nat_primrec e1 (fun n r => f r n) 0) e1 (Hbeta 0 (nat_p_omega 0 nat_0)) (nat_primrec_0 e1 (fun n r => f r n))). }
    exact ((eq_sym_i (hl_NUMERAL hl_zero) 0 hl_NUMERAL_zero) (fun hl__u hl__v => (fun n :e omega => nat_primrec e1 (fun n r => f r n) n) hl__u = e1) H0).
  + let n. assume Hn.
    claim HS: (fun n :e omega => nat_primrec e1 (fun n r => f r n) n) (ordsucc n) = f ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n) n.
    { exact (eq_trans_i ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) (ordsucc n)) (nat_primrec e1 (fun n r => f r n) (ordsucc n)) (f ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n) n) (Hbeta (ordsucc n) (omega_ordsucc n Hn)) (eq_trans_i (nat_primrec e1 (fun n r => f r n) (ordsucc n)) (f (nat_primrec e1 (fun n r => f r n) n) n) (f ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n) n) (nat_primrec_S e1 (fun n r => f r n) n (omega_nat_p n Hn)) (f_equal (fun u => f u n) (nat_primrec e1 (fun n r => f r n) n) ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n) (eq_sym_i ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n) (nat_primrec e1 (fun n r => f r n) n) (Hbeta n Hn))))). }
    exact ((eq_sym_i (hl_SUC n) (ordsucc n) (hl_SUC_compat n Hn)) (fun hl__u hl__v => (fun n :e omega => nat_primrec e1 (fun n r => f r n) n) hl__u = f ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n) n) HS).
- let fn. assume Hfn Hp. apply Hp. assume Hp0 HpS.
  claim Hp0': fn 0 = e1. { exact (hl_NUMERAL_zero (fun hl__u hl__v => fn hl__u = e1) Hp0). }
  claim HpS': forall n :e omega, fn (ordsucc n) = f (fn n) n. { let n. assume Hn. exact ((hl_SUC_compat n Hn) (fun hl__u hl__v => fn hl__u = f (fn n) n) (HpS n Hn)). }
  claim Hall: forall n, nat_p n -> fn n = nat_primrec e1 (fun n r => f r n) n.
  { claim Hb: fn 0 = nat_primrec e1 (fun n r => f r n) 0. { exact (eq_trans_i (fn 0) e1 (nat_primrec e1 (fun n r => f r n) 0) Hp0' (eq_sym_i (nat_primrec e1 (fun n r => f r n) 0) e1 (nat_primrec_0 e1 (fun n r => f r n)))). }
    claim Hs: forall m, nat_p m -> fn m = nat_primrec e1 (fun n r => f r n) m -> fn (ordsucc m) = nat_primrec e1 (fun n r => f r n) (ordsucc m).
    { let m. assume Hm IH. exact (eq_trans_i (fn (ordsucc m)) (f (fn m) m) (nat_primrec e1 (fun n r => f r n) (ordsucc m)) (HpS' m (nat_p_omega m Hm)) (eq_trans_i (f (fn m) m) (f (nat_primrec e1 (fun n r => f r n) m) m) (nat_primrec e1 (fun n r => f r n) (ordsucc m)) (f_equal (fun u => f u m) (fn m) (nat_primrec e1 (fun n r => f r n) m) IH) (eq_sym_i (nat_primrec e1 (fun n r => f r n) (ordsucc m)) (f (nat_primrec e1 (fun n r => f r n) m) m) (nat_primrec_S e1 (fun n r => f r n) m Hm)))). }
    exact (nat_ind (fun n => fn n = nat_primrec e1 (fun n r => f r n) n) Hb Hs). }
  apply (Pi_ext omega (fun _ => A) fn Hfn (fun n :e omega => nat_primrec e1 (fun n r => f r n) n) HF). let n. assume Hn.
  exact (eq_trans_i (fn n) (nat_primrec e1 (fun n r => f r n) n) ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n) (Hall n (omega_nat_p n Hn)) (eq_sym_i ((fun n :e omega => nat_primrec e1 (fun n r => f r n) n) n) (nat_primrec e1 (fun n r => f r n) n) (Hbeta n Hn))).
Qed.

// ---- list recursion (paramorphism through pairs (tail, value)), option and sum ----
Theorem hlt_list_RECURSION_model : forall A Z:set, A <> Empty -> Z <> Empty -> forall NIL' :e Z, forall CONS' :e Z :^: Z :^: finseq A :^: A, exists fn :e Z :^: finseq A, fn (hl_NIL A) = NIL' /\ forall a0 :e A, forall a1 :e finseq A, fn (hl_CONS A a0 a1) = CONS' a0 a1 (fn a1).
let A Z. assume HA HZ. let NIL'. assume HN. let CONS'. assume HC.
claim HCa: forall a :e A, forall t :e finseq A, forall r :e Z, CONS' a t r :e Z. { let a. assume Ha. let t. assume Ht. let r. assume Hr. exact (setexp_ap Z Z (CONS' a t) (setexp2_ap A (finseq A) (Z :^: Z) CONS' HC a Ha t Ht) r Hr). }
claim Hg: forall l :e finseq A, seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 0 = l /\ seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1 :e Z.
{ claim Hb: seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL') 0 = seq_nil /\ seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL') 1 :e Z.
  { claim H0: seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL') = (seq_nil, NIL'). { exact (seq_foldr_nil (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_nil, NIL')). }
    apply andI.
    - exact (eq_trans_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL') 0) ((seq_nil, NIL') 0) seq_nil (f_equal (fun u => u 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL')) (seq_nil, NIL') H0) (tuple_2_0_eq seq_nil NIL')).
    - exact ((eq_sym_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL') 1) NIL' (eq_trans_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL') 1) ((seq_nil, NIL') 1) NIL' (f_equal (fun u => u 1) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL')) (seq_nil, NIL') H0) (tuple_2_1_eq seq_nil NIL'))) (fun hl__u hl__v => hl__u :e Z) HN). }
  claim Hs: forall a :e A, forall t :e finseq A, (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0 = t /\ seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1 :e Z) -> (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 0 = seq_cons a t /\ seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 1 :e Z).
  { let a. assume Ha. let t. assume Ht IH. apply IH. assume IH0 IH1.
    claim Hc: seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') = (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0), CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)). { exact (seq_foldr_cons A (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) a Ha t Ht (seq_nil, NIL')). }
    apply andI.
    - exact (eq_trans_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 0) (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0)) (seq_cons a t) (eq_trans_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 0) ((seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0), CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) 0) (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0)) (f_equal (fun u => u 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL')) (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0), CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) Hc) (tuple_2_0_eq (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0)) (CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)))) (f_equal (fun u => seq_cons a u) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) t IH0)).
    - claim H1: seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 1 = CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1). { exact (eq_trans_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 1) ((seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0), CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) 1) (CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) (f_equal (fun u => u 1) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL')) (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0), CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) Hc) (tuple_2_1_eq (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0)) (CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)))). }
      claim Ht0: seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0 :e finseq A. { exact (IH0 (fun hl__u hl__v => hl__v :e finseq A) Ht). }
      exact ((eq_sym_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 1) (CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) H1) (fun hl__u hl__v => hl__u :e Z) (HCa a Ha (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) Ht0 (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1) IH1)). }
  exact (seq_induct A (fun l => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 0 = l /\ seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1 :e Z) Hb Hs). }
claim HF: (fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) :e Z :^: finseq A. { prove (fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) :e Pi_ l :e finseq A, Z. exact (lam_Pi (finseq A) (fun _ => Z) (fun l => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) (fun l Hl => (Hg l Hl) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1 :e Z) (fun _ H => H))). }
claim Hbeta: forall l :e finseq A, (fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) l = seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1. { let l. assume Hl. exact (beta (finseq A) (fun l => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) l Hl). }
witness (fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1). apply andI. exact HF. apply andI.
- claim H0: (fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) seq_nil = NIL'. { exact (eq_trans_i ((fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) seq_nil) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL') 1) NIL' (Hbeta seq_nil (seq_nil_finseq A)) (eq_trans_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL') 1) ((seq_nil, NIL') 1) NIL' (f_equal (fun u => u 1) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) seq_nil (seq_nil, NIL')) (seq_nil, NIL') (seq_foldr_nil (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_nil, NIL'))) (tuple_2_1_eq seq_nil NIL'))). }
  exact ((eq_sym_i (hl_NIL A) seq_nil (hl_NIL_compat A HA)) (fun hl__u hl__v => (fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) hl__u = NIL') H0).
- let a. assume Ha. let t. assume Ht.
  claim Ht0: seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0 = t. { exact ((Hg t Ht) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0 = t) (fun H _ => H)). }
  claim Hc: seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') = (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0), CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)). { exact (seq_foldr_cons A (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) a Ha t Ht (seq_nil, NIL')). }
  claim H1: seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 1 = CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1). { exact (eq_trans_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 1) ((seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0), CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) 1) (CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) (f_equal (fun u => u 1) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL')) (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0), CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) Hc) (tuple_2_1_eq (seq_cons a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0)) (CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)))). }
  claim H2: (fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) (seq_cons a t) = CONS' a t ((fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) t).
  { exact (eq_trans_i ((fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) (seq_cons a t)) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 1) (CONS' a t ((fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) t)) (Hbeta (seq_cons a t) (seq_cons_finseq A a Ha t Ht)) (eq_trans_i (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) (seq_cons a t) (seq_nil, NIL') 1) (CONS' a (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1)) (CONS' a t ((fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) t)) H1 (f_equal2 (fun u v => CONS' a u v) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 0) t (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1) ((fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) t) Ht0 (eq_sym_i ((fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) t) (seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) t (seq_nil, NIL') 1) (Hbeta t Ht))))). }
  exact ((eq_sym_i (hl_CONS A a t) (seq_cons a t) (hl_CONS_compat A HA a Ha t Ht)) (fun hl__u hl__v => (fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) hl__u = CONS' a t ((fun l :e finseq A => seq_foldr (fun a p => (seq_cons a (p 0), CONS' a (p 0) (p 1))) l (seq_nil, NIL') 1) t)) H2).
Qed.
Theorem hlt_option_INDUCT_model : forall A:set, A <> Empty -> forall P :e 2 :^: (1 :+: A), P (hl_NONE A) = 1 /\ (forall a :e A, P (hl_SOME A a) = 1) -> forall x :e 1 :+: A, P x = 1.
let A. assume HA. let P. assume HP. assume H. apply H. assume H0 HS. let x. assume Hx.
apply (setsum_Inj_inv 1 A x Hx).
- assume H1. apply H1. let u. assume Hu0. apply Hu0. assume Hu Hxu.
  claim Hu0': u = 0. { exact (cases_1 u Hu (fun v => v = 0) (fun q H => H)). }
  claim Hx0: x = Inj0 0. { exact (eq_trans_i x (Inj0 u) (Inj0 0) Hxu (f_equal (fun v => Inj0 v) u 0 Hu0')). }
  exact ((eq_sym_i x (Inj0 0) Hx0) (fun hl__u hl__v => P hl__u = 1) H0).
- assume H1. apply H1. let a. assume Ha0. apply Ha0. assume Ha Hxa.
  claim Hs: hl_SOME A a = Inj1 a. { exact (beta A (fun a => Inj1 a) a Ha). }
  exact ((eq_sym_i x (Inj1 a) Hxa) (fun hl__u hl__v => P hl__u = 1) (Hs (fun hl__u hl__v => P hl__u = 1) (HS a Ha))).
Qed.
Theorem hlt_sum_INDUCT_model : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :+: B), (forall a :e A, P (hl_INL A B a) = 1) /\ (forall a :e B, P (hl_INR B A a) = 1) -> forall x :e A :+: B, P x = 1.
let A B. assume HA HB. let P. assume HP. assume H. apply H. assume HL HR. let x. assume Hx.
apply (setsum_Inj_inv A B x Hx).
- assume H1. apply H1. let a. assume Ha0. apply Ha0. assume Ha Hxa.
  claim Hl: hl_INL A B a = Inj0 a. { exact (beta A (fun a => Inj0 a) a Ha). }
  exact ((eq_sym_i x (Inj0 a) Hxa) (fun hl__u hl__v => P hl__u = 1) (Hl (fun hl__u hl__v => P hl__u = 1) (HL a Ha))).
- assume H1. apply H1. let b. assume Hb0. apply Hb0. assume Hb Hxb.
  claim Hr: hl_INR B A b = Inj1 b. { exact (beta B (fun b => Inj1 b) b Hb). }
  exact ((eq_sym_i x (Inj1 b) Hxb) (fun hl__u hl__v => P hl__u = 1) (Hr (fun hl__u hl__v => P hl__u = 1) (HR b Hb))).
Qed.

// ---- option and sum recursion ----
Theorem hlt_option_RECURSION_model : forall A Z:set, A <> Empty -> Z <> Empty -> forall NONE' :e Z, forall SOME' :e Z :^: A, exists fn :e Z :^: (1 :+: A), fn (hl_NONE A) = NONE' /\ forall a :e A, fn (hl_SOME A a) = SOME' a.
let A Z. assume HA HZ. let NONE'. assume HN. let SOME'. assume HS.
claim Hv0: (if Inj0 0 = Inj0 0 then NONE' else SOME' (Unj (Inj0 0))) = NONE'. { exact (If_i_1 (Inj0 0 = Inj0 0) NONE' (SOME' (Unj (Inj0 0))) (fun q H => H)). }
claim Hv1: forall a :e A, (if Inj1 a = Inj0 0 then NONE' else SOME' (Unj (Inj1 a))) = SOME' a.
{ let a. assume Ha. claim Hne: ~ Inj1 a = Inj0 0. { assume H. exact (Inj0_Inj1_neq 0 a (eq_sym_i (Inj1 a) (Inj0 0) H)). }
  exact (eq_trans_i (if Inj1 a = Inj0 0 then NONE' else SOME' (Unj (Inj1 a))) (SOME' (Unj (Inj1 a))) (SOME' a) (If_i_0 (Inj1 a = Inj0 0) NONE' (SOME' (Unj (Inj1 a))) Hne) (f_equal (fun u => SOME' u) (Unj (Inj1 a)) a (Unj_Inj1_eq a))). }
claim Hty: forall z :e 1 :+: A, (if z = Inj0 0 then NONE' else SOME' (Unj z)) :e Z.
{ let z. assume Hz. apply (setsum_Inj_inv 1 A z Hz).
  - assume H1. apply H1. let u. assume Hu0. apply Hu0. assume Hu Hzu.
    claim Hz0: z = Inj0 0. { exact (eq_trans_i z (Inj0 u) (Inj0 0) Hzu (f_equal (fun v => Inj0 v) u 0 (cases_1 u Hu (fun v => v = 0) (fun q H => H)))). }
    exact ((eq_sym_i z (Inj0 0) Hz0) (fun hl__u hl__v => (if hl__u = Inj0 0 then NONE' else SOME' (Unj hl__u)) :e Z) (Hv0 (fun hl__u hl__v => hl__v :e Z) HN)).
  - assume H1. apply H1. let a. assume Ha0. apply Ha0. assume Ha Hza.
    exact ((eq_sym_i z (Inj1 a) Hza) (fun hl__u hl__v => (if hl__u = Inj0 0 then NONE' else SOME' (Unj hl__u)) :e Z) ((Hv1 a Ha) (fun hl__u hl__v => hl__v :e Z) (setexp_ap A Z SOME' HS a Ha))). }
claim HF: (fun z :e 1 :+: A => if z = Inj0 0 then NONE' else SOME' (Unj z)) :e Z :^: (1 :+: A). { prove (fun z :e 1 :+: A => if z = Inj0 0 then NONE' else SOME' (Unj z)) :e Pi_ z :e 1 :+: A, Z. exact (lam_Pi (1 :+: A) (fun _ => Z) (fun z => if z = Inj0 0 then NONE' else SOME' (Unj z)) Hty). }
witness (fun z :e 1 :+: A => if z = Inj0 0 then NONE' else SOME' (Unj z)). apply andI. exact HF. apply andI.
- prove (fun z :e 1 :+: A => if z = Inj0 0 then NONE' else SOME' (Unj z)) (Inj0 0) = NONE'.
  exact (eq_trans_i ((fun z :e 1 :+: A => if z = Inj0 0 then NONE' else SOME' (Unj z)) (Inj0 0)) (if Inj0 0 = Inj0 0 then NONE' else SOME' (Unj (Inj0 0))) NONE' (beta (1 :+: A) (fun z => if z = Inj0 0 then NONE' else SOME' (Unj z)) (Inj0 0) (Inj0_setsum 1 A 0 In_0_1)) Hv0).
- let a. assume Ha.
  claim Hs: hl_SOME A a = Inj1 a. { exact (beta A (fun a => Inj1 a) a Ha). }
  claim H1: (fun z :e 1 :+: A => if z = Inj0 0 then NONE' else SOME' (Unj z)) (Inj1 a) = SOME' a. { exact (eq_trans_i ((fun z :e 1 :+: A => if z = Inj0 0 then NONE' else SOME' (Unj z)) (Inj1 a)) (if Inj1 a = Inj0 0 then NONE' else SOME' (Unj (Inj1 a))) (SOME' a) (beta (1 :+: A) (fun z => if z = Inj0 0 then NONE' else SOME' (Unj z)) (Inj1 a) (Inj1_setsum 1 A a Ha)) (Hv1 a Ha)). }
  exact ((eq_sym_i (hl_SOME A a) (Inj1 a) Hs) (fun hl__u hl__v => (fun z :e 1 :+: A => if z = Inj0 0 then NONE' else SOME' (Unj z)) hl__u = SOME' a) H1).
Qed.
Theorem hlt_sum_RECURSION_model : forall A B Z:set, A <> Empty -> B <> Empty -> Z <> Empty -> forall INL' :e Z :^: A, forall INR' :e Z :^: B, exists fn :e Z :^: (A :+: B), (forall a :e A, fn (hl_INL A B a) = INL' a) /\ forall a :e B, fn (hl_INR B A a) = INR' a.
let A B Z. assume HA HB HZ. let INL'. assume HL. let INR'. assume HR.
claim Hv0: forall a :e A, (if Inj0 a :e {Inj0 a | a :e A} then INL' (Unj (Inj0 a)) else INR' (Unj (Inj0 a))) = INL' a.
{ let a. assume Ha. exact (eq_trans_i (if Inj0 a :e {Inj0 a | a :e A} then INL' (Unj (Inj0 a)) else INR' (Unj (Inj0 a))) (INL' (Unj (Inj0 a))) (INL' a) (If_i_1 (Inj0 a :e {Inj0 a | a :e A}) (INL' (Unj (Inj0 a))) (INR' (Unj (Inj0 a))) (ReplI A (fun a => Inj0 a) a Ha)) (f_equal (fun u => INL' u) (Unj (Inj0 a)) a (Unj_Inj0_eq a))). }
claim Hv1: forall b :e B, (if Inj1 b :e {Inj0 a | a :e A} then INL' (Unj (Inj1 b)) else INR' (Unj (Inj1 b))) = INR' b.
{ let b. assume Hb.
  claim Hne: ~ Inj1 b :e {Inj0 a | a :e A}. { assume H. apply (ReplE_impred A (fun a => Inj0 a) (Inj1 b) H). let a. assume Ha Heq. exact (Inj0_Inj1_neq a b (eq_sym_i (Inj1 b) (Inj0 a) Heq)). }
  exact (eq_trans_i (if Inj1 b :e {Inj0 a | a :e A} then INL' (Unj (Inj1 b)) else INR' (Unj (Inj1 b))) (INR' (Unj (Inj1 b))) (INR' b) (If_i_0 (Inj1 b :e {Inj0 a | a :e A}) (INL' (Unj (Inj1 b))) (INR' (Unj (Inj1 b))) Hne) (f_equal (fun u => INR' u) (Unj (Inj1 b)) b (Unj_Inj1_eq b))). }
claim Hty: forall z :e A :+: B, (if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) :e Z.
{ let z. assume Hz. apply (setsum_Inj_inv A B z Hz).
  - assume H1. apply H1. let a. assume Ha0. apply Ha0. assume Ha Hza.
    exact ((eq_sym_i z (Inj0 a) Hza) (fun hl__u hl__v => (if hl__u :e {Inj0 a | a :e A} then INL' (Unj hl__u) else INR' (Unj hl__u)) :e Z) ((Hv0 a Ha) (fun hl__u hl__v => hl__v :e Z) (setexp_ap A Z INL' HL a Ha))).
  - assume H1. apply H1. let b. assume Hb0. apply Hb0. assume Hb Hzb.
    exact ((eq_sym_i z (Inj1 b) Hzb) (fun hl__u hl__v => (if hl__u :e {Inj0 a | a :e A} then INL' (Unj hl__u) else INR' (Unj hl__u)) :e Z) ((Hv1 b Hb) (fun hl__u hl__v => hl__v :e Z) (setexp_ap B Z INR' HR b Hb))). }
claim HF: (fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) :e Z :^: (A :+: B). { prove (fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) :e Pi_ z :e A :+: B, Z. exact (lam_Pi (A :+: B) (fun _ => Z) (fun z => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) Hty). }
witness (fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)). apply andI. exact HF. apply andI.
- let a. assume Ha.
  claim Hl: hl_INL A B a = Inj0 a. { exact (beta A (fun a => Inj0 a) a Ha). }
  claim H1: (fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) (Inj0 a) = INL' a. { exact (eq_trans_i ((fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) (Inj0 a)) (if Inj0 a :e {Inj0 a | a :e A} then INL' (Unj (Inj0 a)) else INR' (Unj (Inj0 a))) (INL' a) (beta (A :+: B) (fun z => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) (Inj0 a) (Inj0_setsum A B a Ha)) (Hv0 a Ha)). }
  exact ((eq_sym_i (hl_INL A B a) (Inj0 a) Hl) (fun hl__u hl__v => (fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) hl__u = INL' a) H1).
- let b. assume Hb.
  claim Hr: hl_INR B A b = Inj1 b. { exact (beta B (fun b => Inj1 b) b Hb). }
  claim H1: (fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) (Inj1 b) = INR' b. { exact (eq_trans_i ((fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) (Inj1 b)) (if Inj1 b :e {Inj0 a | a :e A} then INL' (Unj (Inj1 b)) else INR' (Unj (Inj1 b))) (INR' b) (beta (A :+: B) (fun z => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) (Inj1 b) (Inj1_setsum A B b Hb)) (Hv1 b Hb)). }
  exact ((eq_sym_i (hl_INR B A b) (Inj1 b) Hr) (fun hl__u hl__v => (fun z :e A :+: B => if z :e {Inj0 a | a :e A} then INL' (Unj z) else INR' (Unj z)) hl__u = INR' b) H1).
Qed.

// ---- is_int: integer x <-> exists n, x = n \/ x = - n (the recorded kernel proof has 162 K inferences) ----
Theorem hlt_is_int_model : forall x :e R, hl_integer x = 1 <-> exists n :e omega, x = hl_real_of_num n \/ x = hl_real_neg (hl_real_of_num n).
let x. assume Hx.
claim Sx: SNo x. { exact (real_SNo x Hx). }
claim HzR: hl_real_of_num (hl_NUMERAL hl_zero) :e R. { exact ((eq_sym_i (hl_real_of_num (hl_NUMERAL hl_zero)) 0 hl_real_zero_lit) (fun hl__u hl__v => hl__u :e R) real_0). }
claim Hc: hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x :e 2. { exact (setexp2_ap R R 2 hl_real_le hl_real_le_in (hl_real_of_num (hl_NUMERAL hl_zero)) HzR x Hx). }
claim Hiff: hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 <-> 0 <= x. { exact ((eq_sym_i (hl_real_of_num (hl_NUMERAL hl_zero)) 0 hl_real_zero_lit) (fun hl__u hl__v => hl_real_le hl__u x = 1 <-> 0 <= x) (hl_real_le_compat 0 real_0 x Hx)). }
claim Hnx: hl_real_neg x :e R. { exact (setexp_ap R R hl_real_neg hl_real_neg_in x Hx). }
claim Habs: hl_real_abs x = abs_SNo x.
{ prove hl_real_abs x = if 0 <= x then x else - x.
   exact (eq_trans_i (hl_real_abs x) (hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) x (hl_real_neg x)) (if 0 <= x then x else - x) (hl_real_abs_unfold x Hx) (eq_trans_i (hl_COND R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) x (hl_real_neg x)) (if 0 <= x then x else hl_real_neg x) (if 0 <= x then x else - x) (hl_COND_if R (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) x) Hc (0 <= x) Hiff x Hx (hl_real_neg x) Hnx) (f_equal (fun u:set => if 0 <= x then x else u) (hl_real_neg x) (- x) (hl_real_neg_compat x Hx)))). }
claim Hnum: forall n :e omega, hl_real_of_num n = n /\ (n :e R /\ (SNo n /\ 0 <= n)).
{ let n. assume Hn. apply andI. exact (hl_real_of_num_compat n Hn). apply andI. exact (omega_subq_R n Hn). apply andI. exact (omega_SNo n Hn). exact (omega_nonneg n Hn). }
rewrite (hl_integer_unfold x Hx).
apply (If_1_iff (exists n :e omega, hl_real_abs x = hl_real_of_num n)). assume Hf Hb.
apply iffI.
- assume H. apply (Hf H). let n. assume Hn0. apply Hn0. assume Hn Heq. apply (Hnum n Hn). assume Hn1 Hn2. apply Hn2. assume HnR Hn3. apply Hn3. assume Sn Hn0'.
  claim Habsn: abs_SNo x = n. { exact (eq_trans_i (abs_SNo x) (hl_real_abs x) n (eq_sym_i (hl_real_abs x) (abs_SNo x) Habs) (eq_trans_i (hl_real_abs x) (hl_real_of_num n) n Heq Hn1)). }
  witness n. apply andI. exact Hn.
  apply (xm (0 <= x)).
  + assume H0. apply orIL. exact (eq_trans_i x (abs_SNo x) (hl_real_of_num n) (eq_sym_i (abs_SNo x) x (nonneg_abs_SNo x H0)) (eq_trans_i (abs_SNo x) n (hl_real_of_num n) Habsn (eq_sym_i (hl_real_of_num n) n Hn1))).
  + assume H0. apply orIR.
    claim Hmx: - x = n. { exact (eq_trans_i (- x) (abs_SNo x) n (eq_sym_i (abs_SNo x) (- x) (not_nonneg_abs_SNo x H0)) Habsn). }
    exact (eq_trans_i x (- - x) (hl_real_neg (hl_real_of_num n)) (eq_sym_i (- - x) x (minus_SNo_invol x Sx)) (eq_trans_i (- - x) (- n) (hl_real_neg (hl_real_of_num n)) (f_equal (fun u:set => - u) (- x) n Hmx) (eq_sym_i (hl_real_neg (hl_real_of_num n)) (- n) (eq_trans_i (hl_real_neg (hl_real_of_num n)) (hl_real_neg n) (- n) (f_equal (fun u:set => hl_real_neg u) (hl_real_of_num n) n Hn1) (hl_real_neg_compat n HnR))))).
- assume H. apply Hb. apply H. let n. assume Hn0. apply Hn0. assume Hn Hor. apply (Hnum n Hn). assume Hn1 Hn2. apply Hn2. assume HnR Hn3. apply Hn3. assume Sn Hn0'.
  witness n. apply andI. exact Hn.
  claim Goal: abs_SNo x = n -> hl_real_abs x = hl_real_of_num n. { assume K. exact (eq_trans_i (hl_real_abs x) (abs_SNo x) (hl_real_of_num n) Habs (eq_trans_i (abs_SNo x) n (hl_real_of_num n) K (eq_sym_i (hl_real_of_num n) n Hn1))). }
  apply Goal.
  apply Hor.
  + assume Hx1. claim Hxn: x = n. { exact (eq_trans_i x (hl_real_of_num n) n Hx1 Hn1). }
    exact (eq_trans_i (abs_SNo x) (abs_SNo n) n (f_equal (fun u:set => abs_SNo u) x n Hxn) (nonneg_abs_SNo n Hn0')).
  + assume Hx2. claim Hxn: x = - n. { exact (eq_trans_i x (hl_real_neg (hl_real_of_num n)) (- n) Hx2 (eq_trans_i (hl_real_neg (hl_real_of_num n)) (hl_real_neg n) (- n) (f_equal (fun u:set => hl_real_neg u) (hl_real_of_num n) n Hn1) (hl_real_neg_compat n HnR))). }
    exact (eq_trans_i (abs_SNo x) (abs_SNo (- n)) n (f_equal (fun u:set => abs_SNo u) x (- n) Hxn) (eq_trans_i (abs_SNo (- n)) (abs_SNo n) n (abs_SNo_minus n Sn) (nonneg_abs_SNo n Hn0'))).
Qed.
