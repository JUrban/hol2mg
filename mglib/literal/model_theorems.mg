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
