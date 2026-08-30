// Typing lemmas of the literal definitions whose types mention a parametrised translated type with a
// native carrier (stage 2, docs/DESIGN.md 21.9): checked after mglib/literal/carriers2.mg.

Theorem hl_dest_finite_image_in_lit : forall A:set, A <> Empty -> hl_dest_finite_image A :e omega :^: hl_ty_finite_image A.
exact (fun A HAne => hl_subtype_rep_in (omega) (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A))))).
Qed.

Theorem hl_dest_finite_image_in : forall A:set, A <> Empty -> hl_dest_finite_image A :e omega :^: idx A.
let A. assume HAne. exact ((hl_ty_finite_image_native (A) HAne) (fun hl__u hl__v => hl_dest_finite_image A :e omega :^: hl__u) (hl_dest_finite_image_in_lit A HAne)).
Qed.

Theorem hl_finite_index_in_lit : forall A:set, A <> Empty -> hl_finite_index A :e hl_ty_finite_image A :^: omega.
exact (fun A HAne => hl_subtype_abs_in (omega) (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex A (hl_UNIV A)))) (hl_ty_finite_image_nonempty A HAne)).
Qed.

Theorem hl_finite_index_in : forall A:set, A <> Empty -> hl_finite_index A :e idx A :^: omega.
let A. assume HAne. exact ((hl_ty_finite_image_native (A) HAne) (fun hl__u hl__v => hl_finite_index A :e hl__u :^: omega) (hl_finite_index_in_lit A HAne)).
Qed.

Theorem hl_dest_cart_in_lit : forall A B:set, A <> Empty -> B <> Empty -> hl_dest_cart A B :e A :^: hl_ty_finite_image B :^: hl_ty_cart A B.
exact (fun A B HAne HBne => hl_subtype_rep_in (A :^: hl_ty_finite_image B) (fun r :e A :^: hl_ty_finite_image B => if True then 1 else 0)).
Qed.

Theorem hl_dest_cart_in : forall A B:set, A <> Empty -> B <> Empty -> hl_dest_cart A B :e A :^: idx B :^: (A :^: idx B).
let A B. assume HAne HBne. exact ((hl_ty_finite_image_native (B) HBne) (fun hl__u hl__v => hl_dest_cart A B :e A :^: hl__u :^: (A :^: idx B)) ((hl_ty_cart_native (A) (B) HAne HBne) (fun hl__u hl__v => hl_dest_cart A B :e A :^: hl_ty_finite_image B :^: hl__u) (hl_dest_cart_in_lit A B HAne HBne))).
Qed.

Theorem hl_mk_cart_in_lit : forall B A:set, B <> Empty -> A <> Empty -> hl_mk_cart B A :e hl_ty_cart A B :^: (A :^: hl_ty_finite_image B).
exact (fun B A HBne HAne => hl_subtype_abs_in (A :^: hl_ty_finite_image B) (fun r :e A :^: hl_ty_finite_image B => if True then 1 else 0) (hl_ty_cart_nonempty A B HAne HBne)).
Qed.

Theorem hl_mk_cart_in : forall B A:set, B <> Empty -> A <> Empty -> hl_mk_cart B A :e A :^: idx B :^: (A :^: idx B).
let B A. assume HBne HAne. exact ((hl_ty_finite_image_native (B) HBne) (fun hl__u hl__v => hl_mk_cart B A :e A :^: idx B :^: (A :^: hl__u)) ((hl_ty_cart_native (A) (B) HAne HBne) (fun hl__u hl__v => hl_mk_cart B A :e hl__u :^: (A :^: hl_ty_finite_image B)) (hl_mk_cart_in_lit B A HBne HAne))).
Qed.

Theorem hl_dest_finite_sum_in_lit : forall A B:set, A <> Empty -> B <> Empty -> hl_dest_finite_sum A B :e omega :^: hl_ty_finite_sum A B.
exact (fun A B HAne HBne => hl_subtype_rep_in (omega) (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B)))))).
Qed.

Theorem hl_dest_finite_sum_in : forall A B:set, A <> Empty -> B <> Empty -> hl_dest_finite_sum A B :e omega :^: idx_n (dimindex A + dimindex B).
let A B. assume HAne HBne. exact ((hl_ty_finite_sum_native (A) (B) HAne HBne) (fun hl__u hl__v => hl_dest_finite_sum A B :e omega :^: hl__u) (hl_dest_finite_sum_in_lit A B HAne HBne)).
Qed.

Theorem hl_mk_finite_sum_in_lit : forall A B:set, A <> Empty -> B <> Empty -> hl_mk_finite_sum A B :e hl_ty_finite_sum A B :^: omega.
exact (fun A B HAne HBne => hl_subtype_abs_in (omega) (fun r :e omega => hl_IN omega r (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_add (hl_dimindex A (hl_UNIV A)) (hl_dimindex B (hl_UNIV B))))) (hl_ty_finite_sum_nonempty A B HAne HBne)).
Qed.

Theorem hl_mk_finite_sum_in : forall A B:set, A <> Empty -> B <> Empty -> hl_mk_finite_sum A B :e idx_n (dimindex A + dimindex B) :^: omega.
let A B. assume HAne HBne. exact ((hl_ty_finite_sum_native (A) (B) HAne HBne) (fun hl__u hl__v => hl_mk_finite_sum A B :e hl__u :^: omega) (hl_mk_finite_sum_in_lit A B HAne HBne)).
Qed.

Theorem hl_vindex_in_lit : forall A N:set, A <> Empty -> N <> Empty -> hl_vindex A N :e A :^: omega :^: hl_ty_cart A N.
exact (fun A N HAne HNne => (lam_Pi (hl_ty_cart A N) (fun _ => A :^: omega) (fun v_94758 => fun v_94759 :e omega => hl_dest_cart A N v_94758 (hl_finite_index N v_94759)) (fun v_94758 Hv_94758 => (lam_Pi (omega) (fun _ => A) (fun v_94759 => hl_dest_cart A N v_94758 (hl_finite_index N v_94759)) (fun v_94759 Hv_94759 => (setexp_ap (hl_ty_finite_image N) (A) (hl_dest_cart A N v_94758) (setexp_ap (hl_ty_cart A N) (A :^: hl_ty_finite_image N) (hl_dest_cart A N) ((hl_dest_cart_in_lit) (A) (N) HAne HNne) (v_94758) Hv_94758) (hl_finite_index N v_94759) (setexp_ap (omega) (hl_ty_finite_image N) (hl_finite_index N) ((hl_finite_index_in_lit) (N) HNne) (v_94759) Hv_94759))))))).
Qed.

Theorem hl_vindex_in : forall A N:set, A <> Empty -> N <> Empty -> hl_vindex A N :e A :^: omega :^: (A :^: idx N).
let A N. assume HAne HNne. exact ((hl_ty_cart_native (A) (N) HAne HNne) (fun hl__u hl__v => hl_vindex A N :e A :^: omega :^: hl__u) (hl_vindex_in_lit A N HAne HNne)).
Qed.

Theorem hl_lambda_in_lit : forall A B:set, A <> Empty -> B <> Empty -> hl_lambda A B :e hl_ty_cart A B :^: (A :^: omega).
exact (fun A B HAne HBne => (lam_Pi (A :^: omega) (fun _ => hl_ty_cart A B) (fun v_94794 => hl_select (hl_ty_cart A B) (fun f :e hl_ty_cart A B => if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B f i = v_94794 i then 1 else 0)) (fun v_94794 Hv_94794 => (setexp_ap (2 :^: hl_ty_cart A B) (hl_ty_cart A B) (hl_select (hl_ty_cart A B)) ((hl_select_in) (hl_ty_cart A B) (hl_ty_cart_nonempty (A) (B) HAne HBne)) (fun f :e hl_ty_cart A B => if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B f i = v_94794 i then 1 else 0) (lam_Pi (hl_ty_cart A B) (fun _ => 2) (fun f => if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B f i = v_94794 i then 1 else 0) (fun f Hf => (If_in_2 (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex B (hl_UNIV B)) = 1 -> hl_vindex A B f i = v_94794 i)))))))).
Qed.

Theorem hl_lambda_in : forall A B:set, A <> Empty -> B <> Empty -> hl_lambda A B :e A :^: idx B :^: (A :^: omega).
let A B. assume HAne HBne. exact ((hl_ty_cart_native (A) (B) HAne HBne) (fun hl__u hl__v => hl_lambda A B :e hl__u :^: (A :^: omega)) (hl_lambda_in_lit A B HAne HBne)).
Qed.

Theorem hl_pastecart_in_lit : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_pastecart A M N :e hl_ty_cart A (hl_ty_finite_sum M N) :^: hl_ty_cart A N :^: hl_ty_cart A M.
exact (fun A M N HAne HMne HNne => (lam_Pi (hl_ty_cart A M) (fun _ => hl_ty_cart A (hl_ty_finite_sum M N) :^: hl_ty_cart A N) (fun v_95085 => fun v_95086 :e hl_ty_cart A N => hl_lambda A (hl_ty_finite_sum M N) (fun i :e omega => hl_COND A (hl_le i (hl_dimindex M (hl_UNIV M))) (hl_vindex A M v_95085 i) (hl_vindex A N v_95086 (hl_sub i (hl_dimindex M (hl_UNIV M)))))) (fun v_95085 Hv_95085 => (lam_Pi (hl_ty_cart A N) (fun _ => hl_ty_cart A (hl_ty_finite_sum M N)) (fun v_95086 => hl_lambda A (hl_ty_finite_sum M N) (fun i :e omega => hl_COND A (hl_le i (hl_dimindex M (hl_UNIV M))) (hl_vindex A M v_95085 i) (hl_vindex A N v_95086 (hl_sub i (hl_dimindex M (hl_UNIV M)))))) (fun v_95086 Hv_95086 => (setexp_ap (A :^: omega) (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_lambda A (hl_ty_finite_sum M N)) ((hl_lambda_in_lit) (A) (hl_ty_finite_sum M N) HAne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne)) (fun i :e omega => hl_COND A (hl_le i (hl_dimindex M (hl_UNIV M))) (hl_vindex A M v_95085 i) (hl_vindex A N v_95086 (hl_sub i (hl_dimindex M (hl_UNIV M))))) (lam_Pi (omega) (fun _ => A) (fun i => hl_COND A (hl_le i (hl_dimindex M (hl_UNIV M))) (hl_vindex A M v_95085 i) (hl_vindex A N v_95086 (hl_sub i (hl_dimindex M (hl_UNIV M))))) (fun i Hi => (setexp_ap (A) (A) (hl_COND A (hl_le i (hl_dimindex M (hl_UNIV M))) (hl_vindex A M v_95085 i)) (setexp_ap (A) (A :^: A) (hl_COND A (hl_le i (hl_dimindex M (hl_UNIV M)))) (setexp_ap (2) (A :^: A :^: A) (hl_COND A) ((hl_COND_in_lit) (A) HAne) (hl_le i (hl_dimindex M (hl_UNIV M))) (setexp_ap (omega) (2) (hl_le i) (setexp_ap (omega) (2 :^: omega) (hl_le) ((hl_le_in_lit)) (i) Hi) (hl_dimindex M (hl_UNIV M)) (setexp_ap (2 :^: M) (omega) (hl_dimindex M) ((hl_dimindex_in_lit) (M) HMne) (hl_UNIV M) ((hl_UNIV_in_lit) (M) HMne)))) (hl_vindex A M v_95085 i) (setexp_ap (omega) (A) (hl_vindex A M v_95085) (setexp_ap (hl_ty_cart A M) (A :^: omega) (hl_vindex A M) ((hl_vindex_in_lit) (A) (M) HAne HMne) (v_95085) Hv_95085) (i) Hi)) (hl_vindex A N v_95086 (hl_sub i (hl_dimindex M (hl_UNIV M)))) (setexp_ap (omega) (A) (hl_vindex A N v_95086) (setexp_ap (hl_ty_cart A N) (A :^: omega) (hl_vindex A N) ((hl_vindex_in_lit) (A) (N) HAne HNne) (v_95086) Hv_95086) (hl_sub i (hl_dimindex M (hl_UNIV M))) (setexp_ap (omega) (omega) (hl_sub i) (setexp_ap (omega) (omega :^: omega) (hl_sub) ((hl_sub_in_lit)) (i) Hi) (hl_dimindex M (hl_UNIV M)) (setexp_ap (2 :^: M) (omega) (hl_dimindex M) ((hl_dimindex_in_lit) (M) HMne) (hl_UNIV M) ((hl_UNIV_in_lit) (M) HMne))))))))))))).
Qed.

Theorem hl_pastecart_in : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_pastecart A M N :e A :^: idx (idx_n (dimindex M + dimindex N)) :^: (A :^: idx N) :^: (A :^: idx M).
let A M N. assume HAne HMne HNne. exact ((hl_ty_cart_native (A) (M) HAne HMne) (fun hl__u hl__v => hl_pastecart A M N :e A :^: idx (idx_n (dimindex M + dimindex N)) :^: (A :^: idx N) :^: hl__u) ((hl_ty_cart_native (A) (N) HAne HNne) (fun hl__u hl__v => hl_pastecart A M N :e A :^: idx (idx_n (dimindex M + dimindex N)) :^: hl__u :^: hl_ty_cart A M) ((hl_ty_finite_sum_native (M) (N) HMne HNne) (fun hl__u hl__v => hl_pastecart A M N :e A :^: idx hl__u :^: hl_ty_cart A N :^: hl_ty_cart A M) ((hl_ty_cart_native (A) (hl_ty_finite_sum M N) HAne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne)) (fun hl__u hl__v => hl_pastecart A M N :e hl__u :^: hl_ty_cart A N :^: hl_ty_cart A M) (hl_pastecart_in_lit A M N HAne HMne HNne))))).
Qed.

Theorem hl_fstcart_in_lit : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_fstcart A M N :e hl_ty_cart A M :^: hl_ty_cart A (hl_ty_finite_sum M N).
exact (fun A M N HAne HMne HNne => (lam_Pi (hl_ty_cart A (hl_ty_finite_sum M N)) (fun _ => hl_ty_cart A M) (fun v_95097 => hl_lambda A M (fun i :e omega => hl_vindex A (hl_ty_finite_sum M N) v_95097 i)) (fun v_95097 Hv_95097 => (setexp_ap (A :^: omega) (hl_ty_cart A M) (hl_lambda A M) ((hl_lambda_in_lit) (A) (M) HAne HMne) (fun i :e omega => hl_vindex A (hl_ty_finite_sum M N) v_95097 i) (lam_Pi (omega) (fun _ => A) (fun i => hl_vindex A (hl_ty_finite_sum M N) v_95097 i) (fun i Hi => (setexp_ap (omega) (A) (hl_vindex A (hl_ty_finite_sum M N) v_95097) (setexp_ap (hl_ty_cart A (hl_ty_finite_sum M N)) (A :^: omega) (hl_vindex A (hl_ty_finite_sum M N)) ((hl_vindex_in_lit) (A) (hl_ty_finite_sum M N) HAne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne)) (v_95097) Hv_95097) (i) Hi))))))).
Qed.

Theorem hl_fstcart_in : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_fstcart A M N :e A :^: idx M :^: (A :^: idx (idx_n (dimindex M + dimindex N))).
let A M N. assume HAne HMne HNne. exact ((hl_ty_finite_sum_native (M) (N) HMne HNne) (fun hl__u hl__v => hl_fstcart A M N :e A :^: idx M :^: (A :^: idx hl__u)) ((hl_ty_cart_native (A) (M) HAne HMne) (fun hl__u hl__v => hl_fstcart A M N :e hl__u :^: (A :^: idx (hl_ty_finite_sum M N))) ((hl_ty_cart_native (A) (hl_ty_finite_sum M N) HAne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne)) (fun hl__u hl__v => hl_fstcart A M N :e hl_ty_cart A M :^: hl__u) (hl_fstcart_in_lit A M N HAne HMne HNne)))).
Qed.

Theorem hl_sndcart_in_lit : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_sndcart A M N :e hl_ty_cart A N :^: hl_ty_cart A (hl_ty_finite_sum M N).
exact (fun A M N HAne HMne HNne => (lam_Pi (hl_ty_cart A (hl_ty_finite_sum M N)) (fun _ => hl_ty_cart A N) (fun v_95102 => hl_lambda A N (fun i :e omega => hl_vindex A (hl_ty_finite_sum M N) v_95102 (hl_add i (hl_dimindex M (hl_UNIV M))))) (fun v_95102 Hv_95102 => (setexp_ap (A :^: omega) (hl_ty_cart A N) (hl_lambda A N) ((hl_lambda_in_lit) (A) (N) HAne HNne) (fun i :e omega => hl_vindex A (hl_ty_finite_sum M N) v_95102 (hl_add i (hl_dimindex M (hl_UNIV M)))) (lam_Pi (omega) (fun _ => A) (fun i => hl_vindex A (hl_ty_finite_sum M N) v_95102 (hl_add i (hl_dimindex M (hl_UNIV M)))) (fun i Hi => (setexp_ap (omega) (A) (hl_vindex A (hl_ty_finite_sum M N) v_95102) (setexp_ap (hl_ty_cart A (hl_ty_finite_sum M N)) (A :^: omega) (hl_vindex A (hl_ty_finite_sum M N)) ((hl_vindex_in_lit) (A) (hl_ty_finite_sum M N) HAne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne)) (v_95102) Hv_95102) (hl_add i (hl_dimindex M (hl_UNIV M))) (setexp_ap (omega) (omega) (hl_add i) (setexp_ap (omega) (omega :^: omega) (hl_add) ((hl_add_in_lit)) (i) Hi) (hl_dimindex M (hl_UNIV M)) (setexp_ap (2 :^: M) (omega) (hl_dimindex M) ((hl_dimindex_in_lit) (M) HMne) (hl_UNIV M) ((hl_UNIV_in_lit) (M) HMne)))))))))).
Qed.

Theorem hl_sndcart_in : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_sndcart A M N :e A :^: idx N :^: (A :^: idx (idx_n (dimindex M + dimindex N))).
let A M N. assume HAne HMne HNne. exact ((hl_ty_finite_sum_native (M) (N) HMne HNne) (fun hl__u hl__v => hl_sndcart A M N :e A :^: idx N :^: (A :^: idx hl__u)) ((hl_ty_cart_native (A) (N) HAne HNne) (fun hl__u hl__v => hl_sndcart A M N :e hl__u :^: (A :^: idx (hl_ty_finite_sum M N))) ((hl_ty_cart_native (A) (hl_ty_finite_sum M N) HAne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne)) (fun hl__u hl__v => hl_sndcart A M N :e hl_ty_cart A N :^: hl__u) (hl_sndcart_in_lit A M N HAne HMne HNne)))).
Qed.

Theorem hl_vector_in_lit : forall A N:set, A <> Empty -> N <> Empty -> hl_vector A N :e hl_ty_cart A N :^: finseq A.
exact (fun A N HAne HNne => (lam_Pi (finseq A) (fun _ => hl_ty_cart A N) (fun v_102225 => hl_lambda A N (fun i :e omega => hl_EL A (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) v_102225)) (fun v_102225 Hv_102225 => (setexp_ap (A :^: omega) (hl_ty_cart A N) (hl_lambda A N) ((hl_lambda_in_lit) (A) (N) HAne HNne) (fun i :e omega => hl_EL A (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) v_102225) (lam_Pi (omega) (fun _ => A) (fun i => hl_EL A (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) v_102225) (fun i Hi => (setexp_ap (finseq A) (A) (hl_EL A (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero)))) (setexp_ap (omega) (A :^: finseq A) (hl_EL A) ((hl_EL_in_lit) (A) HAne) (hl_sub i (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_sub i) (setexp_ap (omega) (omega :^: omega) (hl_sub) ((hl_sub_in_lit)) (i) Hi) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in_lit)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in_lit)) (hl_zero) ((hl_zero_in)))))) (v_102225) Hv_102225))))))).
Qed.

Theorem hl_vector_in : forall A N:set, A <> Empty -> N <> Empty -> hl_vector A N :e A :^: idx N :^: finseq A.
let A N. assume HAne HNne. exact ((hl_ty_cart_native (A) (N) HAne HNne) (fun hl__u hl__v => hl_vector A N :e hl__u :^: finseq A) (hl_vector_in_lit A N HAne HNne)).
Qed.

Theorem hl_PCROSS_in_lit : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_PCROSS A M N :e 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) :^: (2 :^: hl_ty_cart A N) :^: (2 :^: hl_ty_cart A M).
exact (fun A M N HAne HMne HNne => (lam_Pi (2 :^: hl_ty_cart A M) (fun _ => 2 :^: hl_ty_cart A (hl_ty_finite_sum M N) :^: (2 :^: hl_ty_cart A N)) (fun v_102252 => fun v_102253 :e 2 :^: hl_ty_cart A N => hl_GSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_363 :e hl_ty_cart A (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_363 (if hl_IN (hl_ty_cart A M) x v_102252 = 1 /\ hl_IN (hl_ty_cart A N) y v_102253 = 1 then 1 else 0) (hl_pastecart A M N x y) = 1 then 1 else 0)) (fun v_102252 Hv_102252 => (lam_Pi (2 :^: hl_ty_cart A N) (fun _ => 2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (fun v_102253 => hl_GSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) (fun GEN_PVAR_363 :e hl_ty_cart A (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_363 (if hl_IN (hl_ty_cart A M) x v_102252 = 1 /\ hl_IN (hl_ty_cart A N) y v_102253 = 1 then 1 else 0) (hl_pastecart A M N x y) = 1 then 1 else 0)) (fun v_102253 Hv_102253 => (setexp_ap (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (2 :^: hl_ty_cart A (hl_ty_finite_sum M N)) (hl_GSPEC (hl_ty_cart A (hl_ty_finite_sum M N))) ((hl_GSPEC_in_lit) (hl_ty_cart A (hl_ty_finite_sum M N)) (hl_ty_cart_nonempty (A) (hl_ty_finite_sum M N) HAne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne))) (fun GEN_PVAR_363 :e hl_ty_cart A (hl_ty_finite_sum M N) => if exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_363 (if hl_IN (hl_ty_cart A M) x v_102252 = 1 /\ hl_IN (hl_ty_cart A N) y v_102253 = 1 then 1 else 0) (hl_pastecart A M N x y) = 1 then 1 else 0) (lam_Pi (hl_ty_cart A (hl_ty_finite_sum M N)) (fun _ => 2) (fun GEN_PVAR_363 => if exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_363 (if hl_IN (hl_ty_cart A M) x v_102252 = 1 /\ hl_IN (hl_ty_cart A N) y v_102253 = 1 then 1 else 0) (hl_pastecart A M N x y) = 1 then 1 else 0) (fun GEN_PVAR_363 HGEN_PVAR_363 => (If_in_2 (exists x :e hl_ty_cart A M, exists y :e hl_ty_cart A N, hl_SETSPEC (hl_ty_cart A (hl_ty_finite_sum M N)) GEN_PVAR_363 (if hl_IN (hl_ty_cart A M) x v_102252 = 1 /\ hl_IN (hl_ty_cart A N) y v_102253 = 1 then 1 else 0) (hl_pastecart A M N x y) = 1)))))))))).
Qed.

Theorem hl_PCROSS_in : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> hl_PCROSS A M N :e 2 :^: (A :^: idx (idx_n (dimindex M + dimindex N))) :^: (2 :^: (A :^: idx N)) :^: (2 :^: (A :^: idx M)).
let A M N. assume HAne HMne HNne. exact ((hl_ty_cart_native (A) (M) HAne HMne) (fun hl__u hl__v => hl_PCROSS A M N :e 2 :^: (A :^: idx (idx_n (dimindex M + dimindex N))) :^: (2 :^: (A :^: idx N)) :^: (2 :^: hl__u)) ((hl_ty_cart_native (A) (N) HAne HNne) (fun hl__u hl__v => hl_PCROSS A M N :e 2 :^: (A :^: idx (idx_n (dimindex M + dimindex N))) :^: (2 :^: hl__u) :^: (2 :^: hl_ty_cart A M)) ((hl_ty_finite_sum_native (M) (N) HMne HNne) (fun hl__u hl__v => hl_PCROSS A M N :e 2 :^: (A :^: idx hl__u) :^: (2 :^: hl_ty_cart A N) :^: (2 :^: hl_ty_cart A M)) ((hl_ty_cart_native (A) (hl_ty_finite_sum M N) HAne (hl_ty_finite_sum_nonempty (M) (N) HMne HNne)) (fun hl__u hl__v => hl_PCROSS A M N :e 2 :^: hl__u :^: (2 :^: hl_ty_cart A N) :^: (2 :^: hl_ty_cart A M)) (hl_PCROSS_in_lit A M N HAne HMne HNne))))).
Qed.

