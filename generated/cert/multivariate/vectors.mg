// hol2mg certification module (private): shard vectors of profile multivariate.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Multivariate/vectors.ml:16 / FORALL_1   (hash md5:793137e9b60afb6f0e4e2d757cbc4d55)
Theorem hlt_FORALL_1 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.
Theorem FORALL_1_bridge : (forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) -> (forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 1 -> P i) <-> P 1).
exact (fun H__top => ((imp_forall_pred (omega) (fun P => (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (fun P => (forall i :e omega, 1 <= i /\ i <= 1 -> P i) <-> P 1) (fun P => (imp_iff (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 -> hl_chip omega P i = 1) (forall i :e omega, 1 <= i /\ i <= 1 -> P i) (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) (imp_forall_in (omega) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 -> hl_chip omega P i = 1) (fun i => 1 <= i /\ i <= 1 -> P i) (fun i Hi => (fun H__L : ((hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) -> (hl_chip omega P i = 1)) => fun H__hyp5 : (1 <= i /\ i <= 1) => (iffEL (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__L ((imp_and_dep_bwd (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (i <= 1) (iffER (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and6 : (1 <= i) => (iffER (hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (i <= 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) H__hyp5))))) (imp_forall_in (omega) (fun i => 1 <= i /\ i <= 1 -> P i) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 -> hl_chip omega P i = 1) (fun i Hi => (fun H__N : ((1 <= i /\ i <= 1) -> (P i)) => fun H__hyp2 : (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) => (iffER (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__N ((imp_and_dep (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (i <= 1) (iffEL (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and3 : (1 <= i) => (iffEL (hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (i <= 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le i (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) H__hyp2))))) (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) H__top)).
Qed.
Theorem FORALL_1 : forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 1 -> P i) <-> P 1.
exact (FORALL_1_bridge hlt_FORALL_1).
Admitted.

// HOL Light: Multivariate/vectors.ml:20 / FORALL_2   (hash md5:e5da14454c335a8fb57a62c90d3c7d19)
Theorem hlt_FORALL_2 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.
Theorem FORALL_2_bridge : (forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) -> (forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 2 -> P i) <-> P 1 /\ P 2).
exact (fun H__top => ((imp_forall_pred (omega) (fun P => (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (fun P => (forall i :e omega, 1 <= i /\ i <= 2 -> P i) <-> P 1 /\ P 2) (fun P => (imp_iff (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> hl_chip omega P i = 1) (forall i :e omega, 1 <= i /\ i <= 2 -> P i) (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 1 /\ P 2) (imp_forall_in (omega) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> hl_chip omega P i = 1) (fun i => 1 <= i /\ i <= 2 -> P i) (fun i Hi => (fun H__L : ((hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) -> (hl_chip omega P i = 1)) => fun H__hyp7 : (1 <= i /\ i <= 2) => (iffEL (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__L ((imp_and_dep_bwd (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (i <= 2) (iffER (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and8 : (1 <= i) => (iffER (hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (i <= 2) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) H__hyp7))))) (imp_forall_in (omega) (fun i => 1 <= i /\ i <= 2 -> P i) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> hl_chip omega P i = 1) (fun i Hi => (fun H__N : ((1 <= i /\ i <= 2) -> (P i)) => fun H__hyp4 : (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) => (iffER (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__N ((imp_and_dep (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (i <= 2) (iffEL (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and5 : (1 <= i) => (iffEL (hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (i <= 2) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) H__hyp4))))) (imp_and_dep (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun H__and2 : (P 1) => (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) (imp_and_dep_bwd (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun H__and1 : (P 1) => (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))))) H__top)).
Qed.
Theorem FORALL_2 : forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 2 -> P i) <-> P 1 /\ P 2.
exact (FORALL_2_bridge hlt_FORALL_2).
Admitted.

// HOL Light: Multivariate/vectors.ml:24 / FORALL_3   (hash md5:91d009fa5e70a2637db647aede2169c7)
Theorem hlt_FORALL_3 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1).
Admitted.
Theorem FORALL_3_bridge : (forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1)) -> (forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 3 -> P i) <-> P 1 /\ (P 2 /\ P 3)).
exact (fun H__top => ((imp_forall_pred (omega) (fun P => (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1)) (fun P => (forall i :e omega, 1 <= i /\ i <= 3 -> P i) <-> P 1 /\ (P 2 /\ P 3)) (fun P => (imp_iff (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 -> hl_chip omega P i = 1) (forall i :e omega, 1 <= i /\ i <= 3 -> P i) (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1)) (P 1 /\ (P 2 /\ P 3)) (imp_forall_in (omega) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 -> hl_chip omega P i = 1) (fun i => 1 <= i /\ i <= 3 -> P i) (fun i Hi => (fun H__L : ((hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) -> (hl_chip omega P i = 1)) => fun H__hyp9 : (1 <= i /\ i <= 3) => (iffEL (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__L ((imp_and_dep_bwd (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (i <= 3) (iffER (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and10 : (1 <= i) => (iffER (hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (i <= 3) ((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) H__hyp9))))) (imp_forall_in (omega) (fun i => 1 <= i /\ i <= 3 -> P i) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 -> hl_chip omega P i = 1) (fun i Hi => (fun H__N : ((1 <= i /\ i <= 3) -> (P i)) => fun H__hyp6 : (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) => (iffER (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__N ((imp_and_dep (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (i <= 3) (iffEL (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and7 : (1 <= i) => (iffEL (hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (i <= 3) ((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_le i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) H__hyp6))))) (imp_and_dep (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 2 /\ P 3) (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun H__and3 : (P 1) => (imp_and_dep (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 3) (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun H__and4 : (P 2) => (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 3) ((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))))) (imp_and_dep_bwd (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 2 /\ P 3) (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun H__and1 : (P 1) => (imp_and_dep_bwd (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 3) (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun H__and2 : (P 2) => (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 3) ((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))))))) H__top)).
Qed.
Theorem FORALL_3 : forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 3 -> P i) <-> P 1 /\ (P 2 /\ P 3).
exact (FORALL_3_bridge hlt_FORALL_3).
Admitted.

// HOL Light: Multivariate/vectors.ml:28 / FORALL_4   (hash md5:3bd403e27b7a67ac3f9f664061f631ee)
Theorem hlt_FORALL_4 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ (P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1)).
Admitted.
Theorem FORALL_4_bridge : (forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ (P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1))) -> (forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 4 -> P i) <-> P 1 /\ (P 2 /\ (P 3 /\ P 4))).
exact (fun H__top => ((imp_forall_pred (omega) (fun P => (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ (P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1))) (fun P => (forall i :e omega, 1 <= i /\ i <= 4 -> P i) <-> P 1 /\ (P 2 /\ (P 3 /\ P 4))) (fun P => (imp_iff (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 -> hl_chip omega P i = 1) (forall i :e omega, 1 <= i /\ i <= 4 -> P i) (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 /\ (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1))) (P 1 /\ (P 2 /\ (P 3 /\ P 4))) (imp_forall_in (omega) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 -> hl_chip omega P i = 1) (fun i => 1 <= i /\ i <= 4 -> P i) (fun i Hi => (fun H__L : ((hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) -> (hl_chip omega P i = 1)) => fun H__hyp11 : (1 <= i /\ i <= 4) => (iffEL (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__L ((imp_and_dep_bwd (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (i <= 4) (iffER (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and12 : (1 <= i) => (iffER (hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (i <= 4) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) ((eq_sym_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 4 (nat_ordsucc 3 (omega_nat_p 3 (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))))))))) (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))) H__hyp11))))) (imp_forall_in (omega) (fun i => 1 <= i /\ i <= 4 -> P i) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 -> hl_chip omega P i = 1) (fun i Hi => (fun H__N : ((1 <= i /\ i <= 4) -> (P i)) => fun H__hyp8 : (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) => (iffER (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__N ((imp_and_dep (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (i <= 4) (iffEL (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and9 : (1 <= i) => (iffEL (hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (i <= 4) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) ((eq_sym_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 4 (nat_ordsucc 3 (omega_nat_p 3 (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))))))))) (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_le i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))) H__hyp8))))) (imp_and_dep (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1)) (P 2 /\ (P 3 /\ P 4)) (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun H__and4 : (P 1) => (imp_and_dep (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (P 3 /\ P 4) (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun H__and5 : (P 2) => (imp_and_dep (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 3) (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (P 4) (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 3) ((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun H__and6 : (P 3) => (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (P 4) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) ((eq_sym_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 4 (nat_ordsucc 3 (omega_nat_p 3 (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))))))))) (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))))))) (imp_and_dep_bwd (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1)) (P 2 /\ (P 3 /\ P 4)) (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun H__and1 : (P 1) => (imp_and_dep_bwd (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 /\ hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (P 3 /\ P 4) (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1) (P 2) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun H__and2 : (P 2) => (imp_and_dep_bwd (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 3) (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (P 4) (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1) (P 3) ((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun H__and3 : (P 3) => (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) (P 4) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) ((eq_sym_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 4 (nat_ordsucc 3 (omega_nat_p 3 (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))))))))) (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))))))))))) H__top)).
Qed.
Theorem FORALL_4 : forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 4 -> P i) <-> P 1 /\ (P 2 /\ (P 3 /\ P 4)).
exact (FORALL_4_bridge hlt_FORALL_4).
Admitted.

// HOL Light: Multivariate/vectors.ml:33 / SUM_1   (hash md5:c561d0e95cc675b58c437827a4afa06b)
Theorem hlt_SUM_1 : forall f :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.
Theorem SUM_1_bridge : (forall f :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero))) -> (forall f:set -> set, (forall x :e omega, f x :e R) -> finsum (idx_n 1) f = f 1).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun f => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) f = f (hl_NUMERAL (hl_BIT1 hl_zero))) (fun f => finsum {i :e omega | 1 <= i /\ i <= 1} f = f 1) (fun f Hfc => (imp_eq (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega f)) (finsum {i :e omega | 1 <= i /\ i <= 1} f) (hl_lam omega f (hl_NUMERAL (hl_BIT1 hl_zero))) (f 1) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) = {i :e omega | 1 <= i /\ i <= 1}) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) = {i :e omega | hl__u <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega f) = finsum hl__u f) ((hl_sum_compat) (omega) omega_nonempty (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_lam omega f) (hl_lam_Pi (omega) (R) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (omega) f)))) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega f (hl_NUMERAL (hl_BIT1 hl_zero)) = f hl__u) ((hl_lam_ap (omega) f) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) H__top)).
Qed.
Theorem SUM_1 : forall f:set -> set, (forall x :e omega, f x :e R) -> finsum (idx_n 1) f = f 1.
exact (SUM_1_bridge hlt_SUM_1).
Admitted.

// HOL Light: Multivariate/vectors.ml:37 / SUM_2   (hash md5:a5be32c108a2f8710fe4ea7441243ec0)
Theorem hlt_SUM_2 : forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))).
Admitted.
Theorem SUM_2_bridge : (forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) -> (forall t:set -> set, (forall x :e omega, t x :e R) -> finsum (idx_n 2) t = t 1 + t 2).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun t => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (fun t => finsum {i :e omega | 1 <= i /\ i <= 2} t = t 1 + t 2) (fun t Htc => (imp_eq (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t)) (finsum {i :e omega | 1 <= i /\ i <= 2} t) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (t 1 + t 2) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = {i :e omega | hl__u <= i /\ i <= 2}) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = {i :e omega | hl_NUMERAL (hl_BIT1 hl_zero) <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun hl__u hl__v => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t) = finsum hl__u t) ((hl_sum_compat) (omega) omega_nonempty (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (fun hl__x:set => (t) hl__x) ((hl_lam_ap (omega) t)))) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl__u + t 2) (((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) + hl__u) ((hl_real_add_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))))) H__top)).
Qed.
Theorem SUM_2 : forall t:set -> set, (forall x :e omega, t x :e R) -> finsum (idx_n 2) t = t 1 + t 2.
exact (SUM_2_bridge hlt_SUM_2).
Admitted.

// HOL Light: Multivariate/vectors.ml:42 / SUM_3   (hash md5:25f0a754b3c8e96a1ca906ec50c73709)
Theorem hlt_SUM_3 : forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))).
Admitted.
Theorem SUM_3_bridge : (forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))) -> (forall t:set -> set, (forall x :e omega, t x :e R) -> finsum (idx_n 3) t = t 1 + t 2 + t 3).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun t => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))) (fun t => finsum {i :e omega | 1 <= i /\ i <= 3} t = t 1 + t 2 + t 3) (fun t Htc => (imp_eq (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t)) (finsum {i :e omega | 1 <= i /\ i <= 3} t) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))))) (t 1 + t 2 + t 3) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = {i :e omega | hl__u <= i /\ i <= 3}) ((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = {i :e omega | hl_NUMERAL (hl_BIT1 hl_zero) <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun hl__u hl__v => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t) = finsum hl__u t) ((hl_sum_compat) (omega) omega_nonempty (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (fun hl__x:set => (t) hl__x) ((hl_lam_ap (omega) t)))) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) = hl__u + t 2 + t 3) ((((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = t 2 + hl__u) (((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) = hl__u + hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) ((hl_real_add_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) = hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) + hl__u) ((hl_real_add_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))))) H__top)).
Qed.
Theorem SUM_3 : forall t:set -> set, (forall x :e omega, t x :e R) -> finsum (idx_n 3) t = t 1 + t 2 + t 3.
exact (SUM_3_bridge hlt_SUM_3).
Admitted.

// HOL Light: Multivariate/vectors.ml:47 / SUM_4   (hash md5:f8d253458c648e505c0422da1e5821fb)
Theorem hlt_SUM_4 : forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))).
Admitted.
Theorem SUM_4_bridge : (forall t :e R :^: omega, hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) -> (forall t:set -> set, (forall x :e omega, t x :e R) -> finsum (idx_n 4) t = t 1 + t 2 + t 3 + t 4).
exact (fun H__top => ((imp_forall_fun (omega) (R) (fun t => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) t = hl_real_add (t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (fun t => finsum {i :e omega | 1 <= i /\ i <= 4} t = t 1 + t 2 + t 3 + t 4) (fun t Htc => (imp_eq (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_lam omega t)) (finsum {i :e omega | 1 <= i /\ i <= 4} t) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))))) (t 1 + t 2 + t 3 + t 4) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = {i :e omega | hl__u <= i /\ i <= 4}) ((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) ((eq_sym_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 4 (nat_ordsucc 3 (omega_nat_p 3 (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))))))))) (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = {i :e omega | hl_NUMERAL (hl_BIT1 hl_zero) <= i /\ i <= hl__u}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))) (fun hl__u hl__v => hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_lam omega t) = finsum hl__u t) ((hl_sum_compat) (omega) omega_nonempty (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (fun hl__x:set => (t) hl__x) ((hl_lam_ap (omega) t)))) (((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))) = hl__u + t 2 + t 3 + t 4) ((((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))) (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) = hl__u + t 3 + t 4) ((((eq_trans_i (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (hl_BIT1 (hl_BIT1 hl_zero)) 3 (hl_NUMERAL_compat (hl_BIT1 (hl_BIT1 hl_zero)) ((eq_sym_i (hl_BIT1 (hl_BIT1 hl_zero)) 3 (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))))))))) (eq_trans_i (hl_BIT1 (hl_BIT1 hl_zero)) (ordsucc (hl_BIT0 (hl_BIT1 hl_zero))) 3 (hl_BIT1_S (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = hl__u + t 4) (((eq_trans_i (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (hl_NUMERAL_compat (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) ((eq_sym_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) 4 (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 4 (nat_ordsucc 3 (omega_nat_p 3 (nat_p_omega 3 (nat_ordsucc 2 (omega_nat_p 2 (nat_p_omega 2 (nat_ordsucc 1 (omega_nat_p 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))))))))))))) (eq_trans_i (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (hl_BIT0 2) 4 (f_equal (fun x => hl_BIT0 x) (hl_BIT0 (hl_BIT1 hl_zero)) 2 (eq_trans_i (hl_BIT0 (hl_BIT1 hl_zero)) (hl_BIT0 1) 2 (f_equal (fun x => hl_BIT0 x) (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))) (eq_trans_i (hl_BIT0 2) (ordsucc (ordsucc (hl_BIT0 1))) 4 (hl_BIT0_S 1 (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0))))) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 1) 2 (eq_trans_i (hl_BIT0 1) (ordsucc (ordsucc (hl_BIT0 0))) 2 (hl_BIT0_S 0 (nat_p_omega 0 nat_0)) (f_equal (fun x => ordsucc (ordsucc x)) (hl_BIT0 0) 0 hl_BIT0_0)))))) (fun hl__u hl__v => hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) = t hl__u) ((hl_lam_ap (omega) t) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) = hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) + hl__u) ((hl_real_add_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) = hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) + hl__u) ((hl_real_add_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) (setexp_ap (R) (R) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))) (fun hl__u hl__v => hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))) = hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero)) + hl__u) ((hl_real_add_compat) (hl_lam omega t (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))))) (setexp_ap (R) (R) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))))) (setexp_ap (R) (R) (hl_real_add (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))))) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (hl_lam omega t (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (hl_lam omega t (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))))) (setexp_ap (omega) (R) (hl_lam omega t) (hl_lam_Pi (omega) (R) t Htc) (hl_NUMERAL (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero)))) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT0 (hl_BIT0 (hl_BIT1 hl_zero))) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT0 (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))))))))))) H__top)).
Qed.
Theorem SUM_4 : forall t:set -> set, (forall x :e omega, t x :e R) -> finsum (idx_n 4) t = t 1 + t 2 + t 3 + t 4.
exact (SUM_4_bridge hlt_SUM_4).
Admitted.

// HOL Light: Multivariate/vectors.ml:56 / vector_add   (hash md5:1427eb9edfcababec34fffc2fe0271c5)
// not bridged: 
Theorem vector_add_thm : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_add N x y = fun i :e idx N => x i + y i.
Admitted.

// HOL Light: Multivariate/vectors.ml:59 / vector_sub   (hash md5:58f50b99c645012123a478bdad799f1b)
// not bridged: 
Theorem vector_sub_thm : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_sub N x y = fun i :e idx N => x i + - y i.
Admitted.

// HOL Light: Multivariate/vectors.ml:62 / vector_neg   (hash md5:a93a3f398de9d1f5fd5cfb4e862164b6)
// not bridged: 
Theorem vector_neg_thm : forall N:set, N <> Empty -> forall x :e R :^: idx N, vector_neg N x = fun i :e idx N => - x i.
Admitted.

// HOL Light: Multivariate/vectors.ml:80 / vector_mul   (hash md5:1545ed4da663ad72832d5688d915a24e)
// not bridged: 
Theorem vector_mul_thm : forall N:set, N <> Empty -> forall c :e R, forall x :e R :^: idx N, vector_mul N c x = fun i :e idx N => c * x i.
Admitted.

// HOL Light: Multivariate/vectors.ml:87 / vec   (hash md5:30096d8f13cf1131dafdc22864d253b6)
// not bridged: 
Theorem vec_thm : forall N:set, N <> Empty -> forall n :e omega, vec N n = fun i :e idx N => n.
Admitted.

// HOL Light: Multivariate/vectors.ml:96 / dot   (hash md5:f77bdce32f07ee2346fb807f2448c783)
// not bridged: 
Theorem dot_thm : forall N:set, N <> Empty -> forall x y :e R :^: idx N, dot N x y = finsum (idx N) (fun i:set => x i * y i).
Admitted.

// HOL Light: Multivariate/vectors.ml:99 / DOT_1   (hash md5:caa61fb1c150773f7616c9f33bc0ed5c)
// not bridged: 
Theorem DOT_1 : forall x y :e R :^: idx 1, dot 1 x y = x 1 * y 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:103 / DOT_2   (hash md5:ab6403e64afff6ff563de0637222c45e)
// not bridged: 
Theorem DOT_2 : forall x y :e R :^: idx_n 2, dot (idx_n 2) x y = x 1 * y 1 + x 2 * y 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:107 / DOT_3   (hash md5:33eea789d726f74e2c86ed25397da39b)
// not bridged: 
Theorem DOT_3 : forall x y :e R :^: idx_n 3, dot (idx_n 3) x y = x 1 * y 1 + x 2 * y 2 + x 3 * y 3.
Admitted.

// HOL Light: Multivariate/vectors.ml:111 / DOT_4   (hash md5:bb86530031c76a9d5bbc69bb8f52dded)
// not bridged: 
Theorem DOT_4 : forall x y :e R :^: idx_n 4, dot (idx_n 4) x y = x 1 * y 1 + x 2 * y 2 + x 3 * y 3 + x 4 * y 4.
Admitted.

// HOL Light: Multivariate/vectors.ml:145 / VEC_COMPONENT   (hash md5:9cab83285093ceaafc86bda37811bcce)
// not bridged: 
Theorem VEC_COMPONENT : forall N:set, N <> Empty -> forall k i :e omega, vec N k i = k.
Admitted.

// HOL Light: Multivariate/vectors.ml:153 / VECTOR_ADD_COMPONENT   (hash md5:8148fbb45297dd3ffceac8d2c671b6bd)
// not bridged: 
Theorem VECTOR_ADD_COMPONENT : forall N:set, N <> Empty -> forall x y :e R :^: idx N, forall i :e omega, vector_add N x y i = x i + y i.
Admitted.

// HOL Light: Multivariate/vectors.ml:161 / VECTOR_SUB_COMPONENT   (hash md5:92fbb841ab8f2e3a6dd26e90c83713be)
// not bridged: 
Theorem VECTOR_SUB_COMPONENT : forall N:set, N <> Empty -> forall x y :e R :^: idx N, forall i :e omega, vector_sub N x y i = x i + - y i.
Admitted.

// HOL Light: Multivariate/vectors.ml:169 / VECTOR_NEG_COMPONENT   (hash md5:9db15251cd9e36440f29de3d24ace049)
// not bridged: 
Theorem VECTOR_NEG_COMPONENT : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall i :e omega, vector_neg N x i = - x i.
Admitted.

// HOL Light: Multivariate/vectors.ml:177 / VECTOR_MUL_COMPONENT   (hash md5:2acc76a3f490451716675a700a38f786)
// not bridged: 
Theorem VECTOR_MUL_COMPONENT : forall N:set, N <> Empty -> forall c :e R, forall x :e R :^: idx N, forall i :e omega, vector_mul N c x i = c * x i.
Admitted.

// HOL Light: Multivariate/vectors.ml:185 / COND_COMPONENT   (hash md5:fe8deb5afa569c3d017b30fc27deeb8a)
// not bridged: 
Theorem COND_COMPONENT : forall A B:set, A <> Empty -> B <> Empty -> forall b:prop, forall x y :e A :^: idx B, forall i :e omega, (if b then x else y) i = if b then x i else y i.
Admitted.

// HOL Light: Multivariate/vectors.ml:193 / VECTOR_ADD_SYM   (hash md5:c46c544694035afa1b3adf36e9200ac4)
// not bridged: 
Theorem VECTOR_ADD_SYM : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_add N x y = vector_add N y x.
Admitted.

// HOL Light: Multivariate/vectors.ml:195 / VECTOR_ADD_LID   (hash md5:de39fe96ba91d73ff9802334df751fa4)
// not bridged: 
Theorem VECTOR_ADD_LID : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_add A (vec A 0) x = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:197 / VECTOR_ADD_RID   (hash md5:01080a748c3dc79d38d6387aa50f5e58)
// not bridged: 
Theorem VECTOR_ADD_RID : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_add A x (vec A 0) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:199 / VECTOR_SUB_REFL   (hash md5:95204390b47cc4608105dbf91ed2982d)
// not bridged: 
Theorem VECTOR_SUB_REFL : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_sub A x x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:201 / VECTOR_ADD_LINV   (hash md5:db4ed02ad3617b12910838b3e25e6d70)
// not bridged: 
Theorem VECTOR_ADD_LINV : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_add A (vector_neg A x) x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:203 / VECTOR_ADD_RINV   (hash md5:511b05a24ebd316a92ccfc826e48d0b7)
// not bridged: 
Theorem VECTOR_ADD_RINV : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_add A x (vector_neg A x) = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:205 / VECTOR_SUB_RADD   (hash md5:94c8162c02a4ed74a8a14955169355da)
// not bridged: 
Theorem VECTOR_SUB_RADD : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_sub N x (vector_add N x y) = vector_neg N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:207 / VECTOR_NEG_SUB   (hash md5:70b6d3d5f205e42d4f1136d933310e3e)
// not bridged: 
Theorem VECTOR_NEG_SUB : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_neg N (vector_sub N x y) = vector_sub N y x.
Admitted.

// HOL Light: Multivariate/vectors.ml:209 / VECTOR_SUB_EQ   (hash md5:24d31beb31c888fe0050bb222ae9932d)
// not bridged: 
Theorem VECTOR_SUB_EQ : forall A:set, A <> Empty -> forall x y :e R :^: idx A, vector_sub A x y = vec A 0 <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:211 / VECTOR_MUL_ASSOC   (hash md5:d726051f9bfb00643dbeec292db179a2)
// not bridged: 
Theorem VECTOR_MUL_ASSOC : forall A:set, A <> Empty -> forall a b :e R, forall x :e R :^: idx A, vector_mul A a (vector_mul A b x) = vector_mul A (a * b) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:213 / VECTOR_MUL_LID   (hash md5:8a9aebf991b2a393f31da9a9f96a1d26)
// not bridged: 
Theorem VECTOR_MUL_LID : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_mul A 1 x = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:215 / VECTOR_MUL_LZERO   (hash md5:64185c702259a4be0036b7006c0b6d97)
// not bridged: 
Theorem VECTOR_MUL_LZERO : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_mul A 0 x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:217 / VECTOR_SUB_ADD   (hash md5:844e62d210d33348cbc8c895905205d2)
// not bridged: 
Theorem VECTOR_SUB_ADD : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_add N (vector_sub N x y) y = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:219 / VECTOR_SUB_ADD2   (hash md5:2022d3aa246b9bdb36e0ddcaff42265c)
// not bridged: 
Theorem VECTOR_SUB_ADD2 : forall N:set, N <> Empty -> forall y x :e R :^: idx N, vector_add N y (vector_sub N x y) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:221 / VECTOR_ADD_LDISTRIB   (hash md5:506e3a73f770e00ac7a11c814208c2e8)
// not bridged: 
Theorem VECTOR_ADD_LDISTRIB : forall A:set, A <> Empty -> forall c :e R, forall x y :e R :^: idx A, vector_mul A c (vector_add A x y) = vector_add A (vector_mul A c x) (vector_mul A c y).
Admitted.

// HOL Light: Multivariate/vectors.ml:223 / VECTOR_SUB_LDISTRIB   (hash md5:3021b98f047da2a21b88534d29f2e6da)
// not bridged: 
Theorem VECTOR_SUB_LDISTRIB : forall A:set, A <> Empty -> forall c :e R, forall x y :e R :^: idx A, vector_mul A c (vector_sub A x y) = vector_sub A (vector_mul A c x) (vector_mul A c y).
Admitted.

// HOL Light: Multivariate/vectors.ml:225 / VECTOR_ADD_RDISTRIB   (hash md5:cd2f7ee01d45f55fce14d832487d06f2)
// not bridged: 
Theorem VECTOR_ADD_RDISTRIB : forall A:set, A <> Empty -> forall a b :e R, forall x :e R :^: idx A, vector_mul A (a + b) x = vector_add A (vector_mul A a x) (vector_mul A b x).
Admitted.

// HOL Light: Multivariate/vectors.ml:227 / VECTOR_SUB_RDISTRIB   (hash md5:69c874de3615b234c9f6dcf143c37a70)
// not bridged: 
Theorem VECTOR_SUB_RDISTRIB : forall A:set, A <> Empty -> forall a b :e R, forall x :e R :^: idx A, vector_mul A (a + - b) x = vector_sub A (vector_mul A a x) (vector_mul A b x).
Admitted.

// HOL Light: Multivariate/vectors.ml:229 / VECTOR_ADD_SUB   (hash md5:d5706496500c55c83245f4f4cce9c637)
// not bridged: 
Theorem VECTOR_ADD_SUB : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_sub N (vector_add N x y) x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:231 / VECTOR_EQ_ADDR   (hash md5:2fb91928d46031716526d3470bade8b3)
// not bridged: 
Theorem VECTOR_EQ_ADDR : forall A:set, A <> Empty -> forall x y :e R :^: idx A, vector_add A x y = x <-> y = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:233 / VECTOR_SUB   (hash md5:9ce00b66548cd6383c637460e97f27df)
// not bridged: 
Theorem VECTOR_SUB : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_sub N x y = vector_add N x (vector_neg N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:235 / VECTOR_SUB_RZERO   (hash md5:81e5391cc0eb057108bc953d4f2f1178)
// not bridged: 
Theorem VECTOR_SUB_RZERO : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_sub A x (vec A 0) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:237 / VECTOR_MUL_RZERO   (hash md5:c21f3a4a4c91b3999279074fc2af1640)
// not bridged: 
Theorem VECTOR_MUL_RZERO : forall A:set, A <> Empty -> forall c :e R, vector_mul A c (vec A 0) = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:239 / VECTOR_NEG_MINUS1   (hash md5:86d57106bc529b6a90476f4cbe9274fb)
// not bridged: 
Theorem VECTOR_NEG_MINUS1 : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_neg A x = vector_mul A (- 1) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:241 / VECTOR_ADD_ASSOC   (hash md5:5cee3e21d09eed2ba7249c1c3b33e095)
// not bridged: 
Theorem VECTOR_ADD_ASSOC : forall N:set, N <> Empty -> forall x y z :e R :^: idx N, vector_add N x (vector_add N y z) = vector_add N (vector_add N x y) z.
Admitted.

// HOL Light: Multivariate/vectors.ml:243 / VECTOR_SUB_LZERO   (hash md5:4f0a3ea66c24e89440cc49ad894357fa)
// not bridged: 
Theorem VECTOR_SUB_LZERO : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_sub A (vec A 0) x = vector_neg A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:245 / VECTOR_NEG_NEG   (hash md5:f665fd415c923ecb8edee6b85610523f)
// not bridged: 
Theorem VECTOR_NEG_NEG : forall N:set, N <> Empty -> forall x :e R :^: idx N, vector_neg N (vector_neg N x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:247 / VECTOR_MUL_LNEG   (hash md5:adfacfae7a8e53fa130aa2ae51355b62)
// not bridged: 
Theorem VECTOR_MUL_LNEG : forall A:set, A <> Empty -> forall c :e R, forall x :e R :^: idx A, vector_mul A (- c) x = vector_neg A (vector_mul A c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:249 / VECTOR_MUL_RNEG   (hash md5:880c85cb33a57d580e201e3b351b1382)
// not bridged: 
Theorem VECTOR_MUL_RNEG : forall A:set, A <> Empty -> forall c :e R, forall x :e R :^: idx A, vector_mul A c (vector_neg A x) = vector_neg A (vector_mul A c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:251 / VECTOR_NEG_0   (hash md5:183217aac2a28e7c1f724bed1c53ce60)
// not bridged: 
Theorem VECTOR_NEG_0 : forall A:set, A <> Empty -> vector_neg A (vec A 0) = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:253 / VECTOR_NEG_EQ_0   (hash md5:f47a36f9ea646d4ef0c602a688c37a7e)
// not bridged: 
Theorem VECTOR_NEG_EQ_0 : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_neg A x = vec A 0 <-> x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:255 / VECTOR_EQ_NEG2   (hash md5:78839b9d4f816619041e39748943f679)
// not bridged: 
Theorem VECTOR_EQ_NEG2 : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_neg N x = vector_neg N y <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:257 / VECTOR_ADD_AC   (hash md5:567eac67006a7d22833d7933b7e6bae1)
// not bridged: 
Theorem VECTOR_ADD_AC : forall N:set, N <> Empty -> forall m n p :e R :^: idx N, vector_add N m n = vector_add N n m /\ (vector_add N (vector_add N m n) p = vector_add N m (vector_add N n p) /\ vector_add N m (vector_add N n p) = vector_add N n (vector_add N m p)).
Admitted.

// HOL Light: Multivariate/vectors.ml:262 / VEC_EQ   (hash md5:a18df28a73299cb9a106895635103c62)
// not bridged: 
Theorem VEC_EQ : forall A:set, A <> Empty -> forall m n :e omega, vec A m = vec A n <-> m = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:271 / SUMS_SYM   (hash md5:056df0b78b6de6a5004062c20cdaf9d6)
// not bridged: 
Theorem SUMS_SYM : forall N:set, N <> Empty -> forall s t c= R :^: idx N, (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) = \/_ y :e R :^: idx N, {vector_add N y x | x :e R :^: idx N, y :e t /\ x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:276 / SUMS_ASSOC   (hash md5:6e4b1f68c69231d3f6cfbac376386c1c)
// not bridged: 
Theorem SUMS_ASSOC : forall N:set, N <> Empty -> forall s t u c= R :^: idx N, (\/_ w :e R :^: idx N, {vector_add N w z | z :e R :^: idx N, w :e (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) /\ z :e u}) = \/_ x :e R :^: idx N, {vector_add N x v | v :e R :^: idx N, x :e s /\ v :e \/_ y :e R :^: idx N, {vector_add N y z | z :e R :^: idx N, y :e t /\ z :e u}}.
Admitted.

// HOL Light: Multivariate/vectors.ml:286 / EUCLIDEAN_SPACE_INFINITE   (hash md5:1cfe7f6e1d90ecee2d06ebdf64a40a88)
Theorem hlt_EUCLIDEAN_SPACE_INFINITE : forall N:set, N <> Empty -> hl_INFINITE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.
Theorem EUCLIDEAN_SPACE_INFINITE_bridge : (forall N:set, N <> Empty -> hl_INFINITE (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) = 1) -> (forall N:set, N <> Empty -> infinite (R :^: idx N)).
exact (fun H__top N HNne => ((iffEL (hl_INFINITE (R :^: idx N) (hl_UNIV (R :^: idx N)) = 1) (infinite (R :^: idx N)) (((hl_UNIV_compat) (R :^: idx N) (hl_ty_cart_native_nonempty (R) (N) R_nonempty HNne)) (fun hl__u hl__v => hl_INFINITE (R :^: idx N) (hl_UNIV (R :^: idx N)) = 1 <-> infinite hl__u) ((hl_INFINITE_compat) (R :^: idx N) (hl_ty_cart_native_nonempty (R) (N) R_nonempty HNne) (hl_UNIV (R :^: idx N)) ((hl_UNIV_in) (R :^: idx N) (hl_ty_cart_native_nonempty (R) (N) R_nonempty HNne))))) ((hl_ty_cart_native (R) (N) R_nonempty HNne) (fun hl__u hl__v => hl_INFINITE hl__u (hl_UNIV hl__u) = 1) (H__top N HNne)))).
Qed.
Theorem EUCLIDEAN_SPACE_INFINITE : forall N:set, N <> Empty -> infinite (R :^: idx N).
exact (EUCLIDEAN_SPACE_INFINITE_bridge hlt_EUCLIDEAN_SPACE_INFINITE).
Admitted.

// HOL Light: Multivariate/vectors.ml:298 / DOT_SYM   (hash md5:e9adc86bbcb4c9ca445188cb92bfdcc1)
// not bridged: 
Theorem DOT_SYM : forall A:set, A <> Empty -> forall x y :e R :^: idx A, dot A x y = dot A y x.
Admitted.

// HOL Light: Multivariate/vectors.ml:300 / DOT_LADD   (hash md5:0139ac9c2efbe23075edf4850231a87d)
// not bridged: 
Theorem DOT_LADD : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, dot A (vector_add A x y) z = dot A x z + dot A y z.
Admitted.

// HOL Light: Multivariate/vectors.ml:302 / DOT_RADD   (hash md5:f9a8d2cc73977fa4431445e4922155e7)
// not bridged: 
Theorem DOT_RADD : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, dot A x (vector_add A y z) = dot A x y + dot A x z.
Admitted.

// HOL Light: Multivariate/vectors.ml:304 / DOT_LSUB   (hash md5:2977a8922b3dba161dc927f01a189d09)
// not bridged: 
Theorem DOT_LSUB : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, dot A (vector_sub A x y) z = dot A x z + - dot A y z.
Admitted.

// HOL Light: Multivariate/vectors.ml:306 / DOT_RSUB   (hash md5:16c02b701b24e8694649fa72a3835a98)
// not bridged: 
Theorem DOT_RSUB : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, dot A x (vector_sub A y z) = dot A x y + - dot A x z.
Admitted.

// HOL Light: Multivariate/vectors.ml:308 / DOT_LMUL   (hash md5:a687d19cb435e24ba90e1af45f99a0e9)
// not bridged: 
Theorem DOT_LMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e R :^: idx A, dot A (vector_mul A c x) y = c * dot A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:310 / DOT_RMUL   (hash md5:d8f9f0d925e0c439e0a548cc0b973601)
// not bridged: 
Theorem DOT_RMUL : forall A:set, A <> Empty -> forall c :e R, forall x y :e R :^: idx A, dot A x (vector_mul A c y) = c * dot A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:312 / DOT_LNEG   (hash md5:29d46f6b8289fe1b387bb80cd6abd1fb)
// not bridged: 
Theorem DOT_LNEG : forall A:set, A <> Empty -> forall x y :e R :^: idx A, dot A (vector_neg A x) y = - dot A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:314 / DOT_RNEG   (hash md5:bf74cc9016fc22900b3c7a45dea866b8)
// not bridged: 
Theorem DOT_RNEG : forall A:set, A <> Empty -> forall x y :e R :^: idx A, dot A x (vector_neg A y) = - dot A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:316 / DOT_LZERO   (hash md5:b3f599340ddc4d308dae3afa41dff761)
// not bridged: 
Theorem DOT_LZERO : forall A:set, A <> Empty -> forall x :e R :^: idx A, dot A (vec A 0) x = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:318 / DOT_RZERO   (hash md5:090e5ca8bcaaabbaf842e546b20b0a3f)
// not bridged: 
Theorem DOT_RZERO : forall A:set, A <> Empty -> forall x :e R :^: idx A, dot A x (vec A 0) = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:320 / DOT_POS_LE   (hash md5:e230de8f6d1b52c015ef4e7d26239099)
// not bridged: 
Theorem DOT_POS_LE : forall A:set, A <> Empty -> forall x :e R :^: idx A, 0 <= dot A x x.
Admitted.

// HOL Light: Multivariate/vectors.ml:324 / DOT_EQ_0   (hash md5:b0de70819fce4654b9f1322b09bc1e83)
// not bridged: 
Theorem DOT_EQ_0 : forall N:set, N <> Empty -> forall x :e R :^: idx N, dot N x x = 0 <-> x = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:331 / DOT_POS_LT   (hash md5:b15109779fffb5aa11797d23a8923f3e)
// not bridged: 
Theorem DOT_POS_LT : forall A:set, A <> Empty -> forall x :e R :^: idx A, 0 < dot A x x <-> ~ x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:335 / FORALL_DOT_EQ_0   (hash md5:390a4bbda52a96a76f290c2416e4901a)
// not bridged: 
Theorem FORALL_DOT_EQ_0 : forall A B:set, A <> Empty -> B <> Empty -> (forall y :e R :^: idx A, (forall x :e R :^: idx A, dot A x y = 0) <-> y = vec A 0) /\ forall x :e R :^: idx B, (forall y :e R :^: idx B, dot B x y = 0) <-> x = vec B 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:344 / REFLECT_UNIV   (hash md5:73a44998dc2865f11d2464c0e0a09aa2)
// not bridged: 
Theorem REFLECT_UNIV : forall N:set, N <> Empty -> {vector_neg N x | x :e R :^: idx N} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:348 / TRANSLATION_UNIV   (hash md5:c390e0952f95d98111f7aa315ee98c2d)
// not bridged: 
Theorem TRANSLATION_UNIV : forall N:set, N <> Empty -> forall a :e R :^: idx N, {vector_add N a x | x :e R :^: idx N} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:353 / TRANSLATION_SUBSET_GALOIS_RIGHT   (hash md5:58f404d61b0c0f8beba22f28f71889fc)
// not bridged: 
Theorem TRANSLATION_SUBSET_GALOIS_RIGHT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a :e R :^: idx N, s c= {vector_add N a x | x :e t} <-> {vector_add N (vector_neg N a) x | x :e s} c= t.
Admitted.

// HOL Light: Multivariate/vectors.ml:361 / TRANSLATION_SUBSET_GALOIS_LEFT   (hash md5:c1580903c0bad9cfe75f659a5d9d2955)
// not bridged: 
Theorem TRANSLATION_SUBSET_GALOIS_LEFT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a :e R :^: idx N, {vector_add N a x | x :e s} c= t <-> s c= {vector_add N (vector_neg N a) x | x :e t}.
Admitted.

// HOL Light: Multivariate/vectors.ml:366 / TRANSLATION_GALOIS   (hash md5:7e1d2cb83475e8ca39c238107eace707)
// not bridged: 
Theorem TRANSLATION_GALOIS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall a :e R :^: idx N, s = {vector_add N a x | x :e t} <-> t = {vector_add N (vector_neg N a) x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:372 / IN_TRANSLATION_GALOIS   (hash md5:35cf9f351bb92e622266b2f0b2e6c288)
// not bridged: 
Theorem IN_TRANSLATION_GALOIS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, b :e {vector_add N a x | x :e s} <-> vector_sub N b a :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:377 / IN_TRANSLATION_GALOIS_ALT   (hash md5:a3606e8d952687c44e9c4245cebd85a0)
// not bridged: 
Theorem IN_TRANSLATION_GALOIS_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, vector_add N a b :e s <-> b :e {vector_add N (vector_neg N a) x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:386 / FORALL_DIMINDEX_1   (hash md5:ee6c5e88a7de9952498955c733e3bfcf)
Theorem hlt_FORALL_DIMINDEX_1 : forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1.
Admitted.
Theorem FORALL_DIMINDEX_1_bridge : (forall P :e 2 :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) -> (forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 1 -> P i) <-> P 1).
exact (fun H__top => (dimindex_one (fun hl__u hl__v => forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= hl__u -> P i) <-> P 1) ((imp_forall_pred (omega) (fun P => (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 -> P i = 1) <-> P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (fun P => (forall i :e omega, 1 <= i /\ i <= dimindex 1 -> P i) <-> P 1) (fun P => (imp_iff (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 -> hl_chip omega P i = 1) (forall i :e omega, 1 <= i /\ i <= dimindex 1 -> P i) (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) (imp_forall_in (omega) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 -> hl_chip omega P i = 1) (fun i => 1 <= i /\ i <= dimindex 1 -> P i) (fun i Hi => (fun H__L : ((hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1) -> (hl_chip omega P i = 1)) => fun H__hyp5 : (1 <= i /\ i <= dimindex 1) => (iffEL (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__L ((imp_and_dep_bwd (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1) (i <= dimindex 1) (iffER (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and6 : (1 <= i) => (iffER (hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1) (i <= dimindex 1) ((((hl_UNIV_compat) (1) one_nonempty) (fun hl__u hl__v => hl_dimindex 1 (hl_UNIV 1) = dimindex 1) ((hl_dimindex_compat) (1) one_nonempty (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty))) (fun hl__u hl__v => hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_dimindex 1 (hl_UNIV 1)) (setexp_ap (2 :^: 1) (omega) (hl_dimindex 1) ((hl_dimindex_in) (1) one_nonempty) (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty))))))) H__hyp5))))) (imp_forall_in (omega) (fun i => 1 <= i /\ i <= dimindex 1 -> P i) (fun i => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 -> hl_chip omega P i = 1) (fun i Hi => (fun H__N : ((1 <= i /\ i <= dimindex 1) -> (P i)) => fun H__hyp2 : (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1) => (iffER (hl_chip omega P i = 1) (P i) ((hl_chip_iff (omega) P) (i) Hi)) (H__N ((imp_and_dep (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) (hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1) (i <= dimindex 1) (iffEL (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1) (1 <= i) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 <-> hl__u <= i) ((hl_le_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (i) Hi))) (fun H__and3 : (1 <= i) => (iffEL (hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1) (i <= dimindex 1) ((((hl_UNIV_compat) (1) one_nonempty) (fun hl__u hl__v => hl_dimindex 1 (hl_UNIV 1) = dimindex 1) ((hl_dimindex_compat) (1) one_nonempty (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty))) (fun hl__u hl__v => hl_le i (hl_dimindex 1 (hl_UNIV 1)) = 1 <-> i <= hl__u) ((hl_le_compat) (i) Hi (hl_dimindex 1 (hl_UNIV 1)) (setexp_ap (2 :^: 1) (omega) (hl_dimindex 1) ((hl_dimindex_in) (1) one_nonempty) (hl_UNIV 1) ((hl_UNIV_in) (1) one_nonempty))))))) H__hyp2))))) (iffEL (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))))) (iffER (hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1) (P 1) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_chip omega P (hl_NUMERAL (hl_BIT1 hl_zero)) = 1 <-> P hl__u) ((hl_chip_iff (omega) P) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))))))))) H__top))).
Qed.
Theorem FORALL_DIMINDEX_1 : forall P:set -> prop, (forall i :e omega, 1 <= i /\ i <= 1 -> P i) <-> P 1.
exact (FORALL_DIMINDEX_1_bridge hlt_FORALL_DIMINDEX_1).
Admitted.

// HOL Light: Multivariate/vectors.ml:394 / VECTOR_ONE   (hash md5:ab4740a44e68b535dd577c31218a187a)
// not bridged: 
Theorem VECTOR_ONE : forall x :e R :^: idx 1, x = fun i :e idx 1 => x 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:398 / FORALL_REAL_ONE   (hash md5:b14d24eec843192e1b7880da4848961b)
Theorem hlt_FORALL_REAL_ONE : forall P :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, P x = 1) <-> forall x :e R, P (hl_lambda R 1 (fun i :e omega => x)) = 1.
Admitted.
Theorem FORALL_REAL_ONE_bridge : (forall P :e 2 :^: hl_ty_cart R 1, (forall x :e hl_ty_cart R 1, P x = 1) <-> forall x :e R, P (hl_lambda R 1 (fun i :e omega => x)) = 1) -> (forall P:set -> prop, (forall x :e R :^: idx 1, P x) <-> forall x :e R, P (fun i :e idx 1 => x)).
exact (fun H__top => ((imp_forall_pred (R :^: idx 1) (fun P => (forall x :e R :^: idx 1, P x = 1) <-> forall x :e R, P (hl_lambda R 1 (fun i :e omega => x)) = 1) (fun P => (forall x :e R :^: idx 1, P x) <-> forall x :e R, P (fun i :e idx 1 => x)) (fun P => (imp_iff (forall x :e R :^: idx 1, hl_chip (R :^: idx 1) P x = 1) (forall x :e R :^: idx 1, P x) (forall x :e R, hl_chip (R :^: idx 1) P (hl_lambda R 1 (fun i :e omega => x)) = 1) (forall x :e R, P (fun i :e idx 1 => x)) (imp_forall_in (R :^: idx 1) (fun x => hl_chip (R :^: idx 1) P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip (R :^: idx 1) P x = 1) (P x) ((hl_chip_iff (R :^: idx 1) P) (x) Hx)))) (imp_forall_in (R :^: idx 1) (fun x => P x) (fun x => hl_chip (R :^: idx 1) P x = 1) (fun x Hx => (iffER (hl_chip (R :^: idx 1) P x = 1) (P x) ((hl_chip_iff (R :^: idx 1) P) (x) Hx)))) (imp_forall_in (R) (fun x => hl_chip (R :^: idx 1) P (hl_lambda R 1 (fun i :e omega => x)) = 1) (fun x => P (fun i :e idx 1 => x)) (fun x Hx => (iffEL (hl_chip (R :^: idx 1) P (hl_lambda R 1 (fun i :e omega => x)) = 1) (P (fun i :e idx 1 => x)) (((hl_lambda_compat) (R) (1) R_nonempty one_nonempty (fun i :e omega => x) (lam_Pi (omega) (fun _ => R) (fun i => x) (fun i Hi => Hx)) (fun i:set => x) ((fun i Hi => (beta (omega) (fun i:set => x) i Hi)))) (fun hl__u hl__v => hl_chip (R :^: idx 1) P (hl_lambda R 1 (fun i :e omega => x)) = 1 <-> P hl__u) ((hl_chip_iff (R :^: idx 1) P) (hl_lambda R 1 (fun i :e omega => x)) (setexp_ap (R :^: omega) (R :^: idx 1) (hl_lambda R 1) ((hl_lambda_in) (R) (1) R_nonempty one_nonempty) (fun i :e omega => x) (lam_Pi (omega) (fun _ => R) (fun i => x) (fun i Hi => Hx)))))))) (imp_forall_in (R) (fun x => P (fun i :e idx 1 => x)) (fun x => hl_chip (R :^: idx 1) P (hl_lambda R 1 (fun i :e omega => x)) = 1) (fun x Hx => (iffER (hl_chip (R :^: idx 1) P (hl_lambda R 1 (fun i :e omega => x)) = 1) (P (fun i :e idx 1 => x)) (((hl_lambda_compat) (R) (1) R_nonempty one_nonempty (fun i :e omega => x) (lam_Pi (omega) (fun _ => R) (fun i => x) (fun i Hi => Hx)) (fun i:set => x) ((fun i Hi => (beta (omega) (fun i:set => x) i Hi)))) (fun hl__u hl__v => hl_chip (R :^: idx 1) P (hl_lambda R 1 (fun i :e omega => x)) = 1 <-> P hl__u) ((hl_chip_iff (R :^: idx 1) P) (hl_lambda R 1 (fun i :e omega => x)) (setexp_ap (R :^: omega) (R :^: idx 1) (hl_lambda R 1) ((hl_lambda_in) (R) (1) R_nonempty one_nonempty) (fun i :e omega => x) (lam_Pi (omega) (fun _ => R) (fun i => x) (fun i Hi => Hx))))))))))) ((hl_ty_cart_native (R) (1) R_nonempty one_nonempty) (fun hl__u hl__v => forall P :e 2 :^: hl__u, (forall x :e hl__u, P x = 1) <-> forall x :e R, P (hl_lambda R 1 (fun i :e omega => x)) = 1) H__top))).
Qed.
Theorem FORALL_REAL_ONE : forall P:set -> prop, (forall x :e R :^: idx 1, P x) <-> forall x :e R, P (fun i :e idx 1 => x).
exact (FORALL_REAL_ONE_bridge hlt_FORALL_REAL_ONE).
Admitted.

// HOL Light: Multivariate/vectors.ml:411 / vector_norm   (hash md5:0d97fb3bc82d0b2fbee25fd6efd433b3)
// not bridged: 
Theorem vector_norm_thm : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_norm A x = if 0 <= dot A x x then sqrt_SNo_nonneg (dot A x x) else - sqrt_SNo_nonneg (- dot A x x).
Admitted.

// HOL Light: Multivariate/vectors.ml:416 / dist   (hash md5:e989261721bed57342d13a7c45e16d05)
// not bridged: 
Theorem dist : forall A:set, A <> Empty -> forall x y :e R :^: idx A, distance A (x,y) = vector_norm A (vector_sub A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:419 / NORM_REAL   (hash md5:e8b853bd5a6314294ee30991f055bdd5)
// not bridged: 
Theorem NORM_REAL : forall x :e R :^: idx 1, vector_norm 1 x = abs_SNo (x 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:424 / DIST_REAL   (hash md5:e53e9d35d006e67b4d1ceb5af606c55d)
// not bridged: 
Theorem DIST_REAL : forall x y :e R :^: idx 1, distance 1 (x,y) = abs_SNo (x 1 + - y 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:428 / NORM_0   (hash md5:3f1112f1e74a20128309ba8f31291e4d)
// not bridged: 
Theorem NORM_0 : forall A:set, A <> Empty -> vector_norm A (vec A 0) = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:432 / NORM_POS_LE   (hash md5:2d58bbcbf407177f9d85554c082cb316)
// not bridged: 
Theorem NORM_POS_LE : forall A:set, A <> Empty -> forall x :e R :^: idx A, 0 <= vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:436 / NORM_NEG   (hash md5:b97e14d97f8119fc86e83344ac190829)
// not bridged: 
Theorem NORM_NEG : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_norm A (vector_neg A x) = vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:440 / NORM_SUB   (hash md5:9da40ec1f003d9221f6f8d665f98030c)
// not bridged: 
Theorem NORM_SUB : forall A:set, A <> Empty -> forall x y :e R :^: idx A, vector_norm A (vector_sub A x y) = vector_norm A (vector_sub A y x).
Admitted.

// HOL Light: Multivariate/vectors.ml:444 / NORM_MUL   (hash md5:5060c0396ef9d90d448f86f97763c5be)
// not bridged: 
Theorem NORM_MUL : forall A:set, A <> Empty -> forall a :e R, forall x :e R :^: idx A, vector_norm A (vector_mul A a x) = abs_SNo a * vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:449 / NORM_EQ_0_DOT   (hash md5:d7cdf5a3a42213acebfbb0849ba7c73b)
// not bridged: 
Theorem NORM_EQ_0_DOT : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_norm A x = 0 <-> dot A x x = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:453 / NORM_EQ_0   (hash md5:85262430d413f9519032f359ab28f502)
// not bridged: 
Theorem NORM_EQ_0 : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_norm A x = 0 <-> x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:457 / NORM_POS_LT   (hash md5:d09333d939002716dc146f4d15b8ae24)
// not bridged: 
Theorem NORM_POS_LT : forall A:set, A <> Empty -> forall x :e R :^: idx A, 0 < vector_norm A x <-> ~ x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:461 / NORM_POW_2   (hash md5:f1d640e6538a450f3cbd8f33e69be7fd)
// not bridged: 
Theorem NORM_POW_2 : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_norm A x ^ 2 = dot A x x.
Admitted.

// HOL Light: Multivariate/vectors.ml:465 / NORM_EQ_0_IMP   (hash md5:7bbcdf2dd17bad72774fd44506f5fb08)
// not bridged: 
Theorem NORM_EQ_0_IMP : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_norm A x = 0 -> x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:469 / NORM_LE_0   (hash md5:5e80698e8140e8ee0de8db29098eba19)
// not bridged: 
Theorem NORM_LE_0 : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_norm A x <= 0 <-> x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:473 / VECTOR_MUL_EQ_0   (hash md5:fe1db8c2d427f7731d75774df4bb5bbc)
// not bridged: 
Theorem VECTOR_MUL_EQ_0 : forall A:set, A <> Empty -> forall a :e R, forall x :e R :^: idx A, vector_mul A a x = vec A 0 <-> a = 0 \/ x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:477 / VECTOR_MUL_LCANCEL   (hash md5:ee359b9e6f99738884e57403fa7b7af2)
// not bridged: 
Theorem VECTOR_MUL_LCANCEL : forall A:set, A <> Empty -> forall a :e R, forall x y :e R :^: idx A, vector_mul A a x = vector_mul A a y <-> a = 0 \/ x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:481 / VECTOR_MUL_RCANCEL   (hash md5:0299b246d493363b7d218c7de079d533)
// not bridged: 
Theorem VECTOR_MUL_RCANCEL : forall A:set, A <> Empty -> forall a b :e R, forall x :e R :^: idx A, vector_mul A a x = vector_mul A b x <-> a = b \/ x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:485 / VECTOR_MUL_LCANCEL_IMP   (hash md5:27b1e86dc98359a315a34881bcdb57e2)
// not bridged: 
Theorem VECTOR_MUL_LCANCEL_IMP : forall A:set, A <> Empty -> forall a :e R, forall x y :e R :^: idx A, ~ a = 0 /\ vector_mul A a x = vector_mul A a y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:489 / VECTOR_MUL_RCANCEL_IMP   (hash md5:50b0bef513a9c5931f33d629a598e957)
// not bridged: 
Theorem VECTOR_MUL_RCANCEL_IMP : forall A:set, A <> Empty -> forall a b :e R, forall x :e R :^: idx A, ~ x = vec A 0 /\ vector_mul A a x = vector_mul A b x -> a = b.
Admitted.

// HOL Light: Multivariate/vectors.ml:493 / NORM_CAUCHY_SCHWARZ   (hash md5:7845c324e6677b56edeee04ff6c3ebd5)
// not bridged: 
Theorem NORM_CAUCHY_SCHWARZ : forall N:set, N <> Empty -> forall x y :e R :^: idx N, dot N x y <= vector_norm N x * vector_norm N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:507 / NORM_CAUCHY_SCHWARZ_ABS   (hash md5:4ce068a239346d1a267c4faf0a089717)
// not bridged: 
Theorem NORM_CAUCHY_SCHWARZ_ABS : forall N:set, N <> Empty -> forall x y :e R :^: idx N, abs_SNo (dot N x y) <= vector_norm N x * vector_norm N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:514 / REAL_ABS_NORM   (hash md5:f621f6824071f24377a47c2a1be8bcad)
// not bridged: 
Theorem REAL_ABS_NORM : forall A:set, A <> Empty -> forall x :e R :^: idx A, abs_SNo (vector_norm A x) = vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:518 / NORM_CAUCHY_SCHWARZ_DIV   (hash md5:bc6a696ee455473c58265d4cd157e23d)
// not bridged: 
Theorem NORM_CAUCHY_SCHWARZ_DIV : forall N:set, N <> Empty -> forall x y :e R :^: idx N, abs_SNo (dot N x y :/: (vector_norm N x * vector_norm N y)) <= 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:528 / NORM_TRIANGLE   (hash md5:ef6fc4fbee0886f6797c0875c1aca463)
// not bridged: 
Theorem NORM_TRIANGLE : forall A:set, A <> Empty -> forall x y :e R :^: idx A, vector_norm A (vector_add A x y) <= vector_norm A x + vector_norm A y.
Admitted.

// HOL Light: Multivariate/vectors.ml:537 / NORM_TRIANGLE_SUB   (hash md5:9c4a9df68fec2d466e5c47bba6b5a2af)
// not bridged: 
Theorem NORM_TRIANGLE_SUB : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_norm N x <= vector_norm N y + vector_norm N (vector_sub N x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:541 / NORM_TRIANGLE_LE   (hash md5:632de3b1b1a8a65dbf855b156b82f8ef)
// not bridged: 
Theorem NORM_TRIANGLE_LE : forall A:set, A <> Empty -> forall e0 :e R, forall x y :e R :^: idx A, vector_norm A x + vector_norm A y <= e0 -> vector_norm A (vector_add A x y) <= e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:545 / NORM_TRIANGLE_LT   (hash md5:da1883c5f23024b72221dd763660b1f1)
// not bridged: 
Theorem NORM_TRIANGLE_LT : forall A:set, A <> Empty -> forall e0 :e R, forall x y :e R :^: idx A, vector_norm A x + vector_norm A y < e0 -> vector_norm A (vector_add A x y) < e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:549 / COMPONENT_LE_NORM   (hash md5:797ece84d697678a77afcf03ae59993f)
// not bridged: 
Theorem COMPONENT_LE_NORM : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall i :e omega, abs_SNo (x i) <= vector_norm N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:567 / NORM_BOUND_COMPONENT_LE   (hash md5:7de588e9699021af4626f84d126602a4)
// not bridged: 
Theorem NORM_BOUND_COMPONENT_LE : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, vector_norm N x <= e0 -> forall i :e omega, 1 <= i /\ i <= dimindex N -> abs_SNo (x i) <= e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:572 / NORM_BOUND_COMPONENT_LT   (hash md5:2bb699eef4f13c01951e4cc7b2f8d9f1)
// not bridged: 
Theorem NORM_BOUND_COMPONENT_LT : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, vector_norm N x < e0 -> forall i :e omega, 1 <= i /\ i <= dimindex N -> abs_SNo (x i) < e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:577 / NORM_LE_L1   (hash md5:68cc760404f850f8d7205e08906ea209)
// not bridged: 
Theorem NORM_LE_L1 : forall N:set, N <> Empty -> forall x :e R :^: idx N, vector_norm N x <= finsum (idx N) (fun i:set => abs_SNo (x i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:591 / REAL_ABS_SUB_NORM   (hash md5:0d59a5a5c052782dc402df27be38d465)
// not bridged: 
Theorem REAL_ABS_SUB_NORM : forall A:set, A <> Empty -> forall x y :e R :^: idx A, abs_SNo (vector_norm A x + - vector_norm A y) <= vector_norm A (vector_sub A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:596 / NORM_LE   (hash md5:215cc94f61acd74c3e1d13a1bbc0de7b)
// not bridged: 
Theorem NORM_LE : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx A, forall y :e R :^: idx B, vector_norm A x <= vector_norm B y <-> dot A x x <= dot B y y.
Admitted.

// HOL Light: Multivariate/vectors.ml:600 / NORM_LT   (hash md5:adfabee399446b15eafaf80e6bb37af5)
// not bridged: 
Theorem NORM_LT : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx A, forall y :e R :^: idx B, vector_norm A x < vector_norm B y <-> dot A x x < dot B y y.
Admitted.

// HOL Light: Multivariate/vectors.ml:604 / NORM_EQ   (hash md5:1ac79461b9d9b2288ca61c358daf9d4b)
// not bridged: 
Theorem NORM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx A, forall y :e R :^: idx B, vector_norm A x = vector_norm B y <-> dot A x x = dot B y y.
Admitted.

// HOL Light: Multivariate/vectors.ml:608 / NORM_EQ_1   (hash md5:db3b1899d6b5c8acee588d26b7f2f6a8)
// not bridged: 
Theorem NORM_EQ_1 : forall A:set, A <> Empty -> forall x :e R :^: idx A, vector_norm A x = 1 <-> dot A x x = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:613 / NORM_LE_COMPONENTWISE   (hash md5:2c9badce70115a26506f830682612ee1)
// not bridged: 
Theorem NORM_LE_COMPONENTWISE : forall N:set, N <> Empty -> forall x y :e R :^: idx N, (forall i :e omega, 1 <= i /\ i <= dimindex N -> abs_SNo (x i) <= abs_SNo (y i)) -> vector_norm N x <= vector_norm N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:621 / NORM_EQ_COMPONENTWISE   (hash md5:8d0ff15e9938c66a5a1456d07e7324a2)
// not bridged: 
Theorem NORM_EQ_COMPONENTWISE : forall N:set, N <> Empty -> forall x y :e R :^: idx N, (forall i :e omega, 1 <= i /\ i <= dimindex N -> abs_SNo (x i) = abs_SNo (y i)) -> vector_norm N x = vector_norm N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:627 / L1_LE_NORM   (hash md5:1dd32ed1198d494c1daf48414c1de6b7)
// not bridged: 
Theorem L1_LE_NORM : forall N:set, N <> Empty -> forall x :e R :^: idx N, finsum (idx N) (fun i:set => abs_SNo (x i)) <= (if 0 <= dimindex N then sqrt_SNo_nonneg (dimindex N) else - sqrt_SNo_nonneg (- dimindex N)) * vector_norm N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:654 / DIST_INCREASES_ONLINE   (hash md5:8620a7b1d37cee673dc81a2b8930269d)
// not bridged: 
Theorem DIST_INCREASES_ONLINE : forall A:set, A <> Empty -> forall a b d :e R :^: idx A, ~ d = vec A 0 -> distance A (a,b) < distance A (a,vector_add A b d) \/ distance A (a,b) < distance A (a,vector_sub A b d).
Admitted.

// HOL Light: Multivariate/vectors.ml:661 / NORM_INCREASES_ONLINE   (hash md5:fd7454d79204dfba4a0f5f044d5c0f45)
// not bridged: 
Theorem NORM_INCREASES_ONLINE : forall N:set, N <> Empty -> forall a d :e R :^: idx N, ~ d = vec N 0 -> vector_norm N a < vector_norm N (vector_add N a d) \/ vector_norm N a < vector_norm N (vector_sub N a d).
Admitted.

// HOL Light: Multivariate/vectors.ml:671 / DOT_SQUARE_NORM   (hash md5:f3c98966d5cd179d5e4beed9f3078c6c)
// not bridged: 
Theorem DOT_SQUARE_NORM : forall A:set, A <> Empty -> forall x :e R :^: idx A, dot A x x = vector_norm A x ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:675 / NORM_EQ_SQUARE   (hash md5:41c997349ac1524692e794bba08c376e)
// not bridged: 
Theorem NORM_EQ_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e R :^: idx N, vector_norm N x = a <-> 0 <= a /\ dot N x x = a ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:681 / NORM_LE_SQUARE   (hash md5:c411b7e38037d2a1d75f6371ed367265)
// not bridged: 
Theorem NORM_LE_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e R :^: idx N, vector_norm N x <= a <-> 0 <= a /\ dot N x x <= a ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:686 / NORM_GE_SQUARE   (hash md5:0e446852306be69a2b31c5e5a2b07e53)
// not bridged: 
Theorem NORM_GE_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e R :^: idx N, a <= vector_norm N x <-> a <= 0 \/ a ^ 2 <= dot N x x.
Admitted.

// HOL Light: Multivariate/vectors.ml:691 / NORM_LT_SQUARE   (hash md5:d3dc4403f1cb4301c9112206d018d365)
// not bridged: 
Theorem NORM_LT_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e R :^: idx N, vector_norm N x < a <-> 0 < a /\ dot N x x < a ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:696 / NORM_GT_SQUARE   (hash md5:67b4eb80f6b1dac048b834ca92ca4d73)
// not bridged: 
Theorem NORM_GT_SQUARE : forall N:set, N <> Empty -> forall a :e R, forall x :e R :^: idx N, a < vector_norm N x <-> a < 0 \/ a ^ 2 < dot N x x.
Admitted.

// HOL Light: Multivariate/vectors.ml:701 / NORM_LT_SQUARE_ALT   (hash md5:be72391693bbcffb88e2beedd84143b9)
// not bridged: 
Theorem NORM_LT_SQUARE_ALT : forall N:set, N <> Empty -> forall a :e R, forall x :e R :^: idx N, vector_norm N x < a <-> 0 <= a /\ dot N x x < a ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:1011 / HOMOMORPHISM_REAL_TO_REAL   (hash md5:51ebb09db7bdb03b83a45bd2b838d67c)
Theorem hlt_HOMOMORPHISM_REAL_TO_REAL : forall f :e R :^: R, (forall x y :e R, f (hl_real_add x y) = hl_real_add (f x) (f y)) /\ (forall x y :e R, f (hl_real_mul x y) = hl_real_mul (f x) (f y)) <-> f = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) \/ f = fun x :e R => x.
Admitted.
Theorem HOMOMORPHISM_REAL_TO_REAL_bridge : (forall f :e R :^: R, (forall x y :e R, f (hl_real_add x y) = hl_real_add (f x) (f y)) /\ (forall x y :e R, f (hl_real_mul x y) = hl_real_mul (f x) (f y)) <-> f = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) \/ f = fun x :e R => x) -> (forall f:set -> set, (forall x :e R, f x :e R) -> ((forall x y :e R, f (x + y) = f x + f y) /\ (forall x y :e R, f (x * y) = f x * f y) <-> (forall x :e R, f x = 0) \/ forall x :e R, f x = x)).
exact (fun H__top => ((imp_forall_fun (R) (R) (fun f => (forall x y :e R, f (hl_real_add x y) = hl_real_add (f x) (f y)) /\ (forall x y :e R, f (hl_real_mul x y) = hl_real_mul (f x) (f y)) <-> f = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) \/ f = fun x :e R => x) (fun f => (forall x y :e R, f (x + y) = f x + f y) /\ (forall x y :e R, f (x * y) = f x * f y) <-> (forall x :e R, f x = 0) \/ forall x :e R, f x = x) (fun f Hfc => (imp_iff ((forall x y :e R, hl_lam R f (hl_real_add x y) = hl_real_add (hl_lam R f x) (hl_lam R f y)) /\ forall x y :e R, hl_lam R f (hl_real_mul x y) = hl_real_mul (hl_lam R f x) (hl_lam R f y)) ((forall x y :e R, f (x + y) = f x + f y) /\ forall x y :e R, f (x * y) = f x * f y) (hl_lam R f = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) \/ hl_lam R f = fun x :e R => x) ((forall x :e R, f x = 0) \/ forall x :e R, f x = x) (imp_and_dep (forall x y :e R, hl_lam R f (hl_real_add x y) = hl_real_add (hl_lam R f x) (hl_lam R f y)) (forall x y :e R, f (x + y) = f x + f y) (forall x y :e R, hl_lam R f (hl_real_mul x y) = hl_real_mul (hl_lam R f x) (hl_lam R f y)) (forall x y :e R, f (x * y) = f x * f y) (imp_forall_in (R) (fun x => forall y :e R, hl_lam R f (hl_real_add x y) = hl_real_add (hl_lam R f x) (hl_lam R f y)) (fun x => forall y :e R, f (x + y) = f x + f y) (fun x Hx => (imp_forall_in (R) (fun y => hl_lam R f (hl_real_add x y) = hl_real_add (hl_lam R f x) (hl_lam R f y)) (fun y => f (x + y) = f x + f y) (fun y Hy => (imp_eq (hl_lam R f (hl_real_add x y)) (f (x + y)) (hl_real_add (hl_lam R f x) (hl_lam R f y)) (f x + f y) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_lam R f (hl_real_add x y) = f hl__u) ((hl_lam_ap (R) f) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy))) (((hl_lam_ap (R) f) (y) Hy) (fun hl__u hl__v => hl_real_add (hl_lam R f x) (hl_lam R f y) = f x + hl__u) (((hl_lam_ap (R) f) (x) Hx) (fun hl__u hl__v => hl_real_add (hl_lam R f x) (hl_lam R f y) = hl__u + hl_lam R f y) ((hl_real_add_compat) (hl_lam R f x) (setexp_ap (R) (R) (hl_lam R f) (hl_lam_Pi (R) (R) f Hfc) (x) Hx) (hl_lam R f y) (setexp_ap (R) (R) (hl_lam R f) (hl_lam_Pi (R) (R) f Hfc) (y) Hy))))))))) (fun H__and18 : (forall x y :e R, f (x + y) = f x + f y) => (imp_forall_in (R) (fun x => forall y :e R, hl_lam R f (hl_real_mul x y) = hl_real_mul (hl_lam R f x) (hl_lam R f y)) (fun x => forall y :e R, f (x * y) = f x * f y) (fun x Hx => (imp_forall_in (R) (fun y => hl_lam R f (hl_real_mul x y) = hl_real_mul (hl_lam R f x) (hl_lam R f y)) (fun y => f (x * y) = f x * f y) (fun y Hy => (imp_eq (hl_lam R f (hl_real_mul x y)) (f (x * y)) (hl_real_mul (hl_lam R f x) (hl_lam R f y)) (f x * f y) (((hl_real_mul_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_lam R f (hl_real_mul x y) = f hl__u) ((hl_lam_ap (R) f) (hl_real_mul x y) (setexp_ap (R) (R) (hl_real_mul x) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (x) Hx) (y) Hy))) (((hl_lam_ap (R) f) (y) Hy) (fun hl__u hl__v => hl_real_mul (hl_lam R f x) (hl_lam R f y) = f x * hl__u) (((hl_lam_ap (R) f) (x) Hx) (fun hl__u hl__v => hl_real_mul (hl_lam R f x) (hl_lam R f y) = hl__u * hl_lam R f y) ((hl_real_mul_compat) (hl_lam R f x) (setexp_ap (R) (R) (hl_lam R f) (hl_lam_Pi (R) (R) f Hfc) (x) Hx) (hl_lam R f y) (setexp_ap (R) (R) (hl_lam R f) (hl_lam_Pi (R) (R) f Hfc) (y) Hy))))))))))) (imp_and_dep_bwd (forall x y :e R, hl_lam R f (hl_real_add x y) = hl_real_add (hl_lam R f x) (hl_lam R f y)) (forall x y :e R, f (x + y) = f x + f y) (forall x y :e R, hl_lam R f (hl_real_mul x y) = hl_real_mul (hl_lam R f x) (hl_lam R f y)) (forall x y :e R, f (x * y) = f x * f y) (imp_forall_in (R) (fun x => forall y :e R, f (x + y) = f x + f y) (fun x => forall y :e R, hl_lam R f (hl_real_add x y) = hl_real_add (hl_lam R f x) (hl_lam R f y)) (fun x Hx => (imp_forall_in (R) (fun y => f (x + y) = f x + f y) (fun y => hl_lam R f (hl_real_add x y) = hl_real_add (hl_lam R f x) (hl_lam R f y)) (fun y Hy => (imp_eq (f (x + y)) (hl_lam R f (hl_real_add x y)) (f x + f y) (hl_real_add (hl_lam R f x) (hl_lam R f y)) (eq_sym_i (hl_lam R f (hl_real_add x y)) (f (x + y)) (((hl_real_add_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_lam R f (hl_real_add x y) = f hl__u) ((hl_lam_ap (R) f) (hl_real_add x y) (setexp_ap (R) (R) (hl_real_add x) (setexp_ap (R) (R :^: R) (hl_real_add) ((hl_real_add_in)) (x) Hx) (y) Hy)))) (eq_sym_i (hl_real_add (hl_lam R f x) (hl_lam R f y)) (f x + f y) (((hl_lam_ap (R) f) (y) Hy) (fun hl__u hl__v => hl_real_add (hl_lam R f x) (hl_lam R f y) = f x + hl__u) (((hl_lam_ap (R) f) (x) Hx) (fun hl__u hl__v => hl_real_add (hl_lam R f x) (hl_lam R f y) = hl__u + hl_lam R f y) ((hl_real_add_compat) (hl_lam R f x) (setexp_ap (R) (R) (hl_lam R f) (hl_lam_Pi (R) (R) f Hfc) (x) Hx) (hl_lam R f y) (setexp_ap (R) (R) (hl_lam R f) (hl_lam_Pi (R) (R) f Hfc) (y) Hy)))))))))) (fun H__and13 : (forall x y :e R, f (x + y) = f x + f y) => (imp_forall_in (R) (fun x => forall y :e R, f (x * y) = f x * f y) (fun x => forall y :e R, hl_lam R f (hl_real_mul x y) = hl_real_mul (hl_lam R f x) (hl_lam R f y)) (fun x Hx => (imp_forall_in (R) (fun y => f (x * y) = f x * f y) (fun y => hl_lam R f (hl_real_mul x y) = hl_real_mul (hl_lam R f x) (hl_lam R f y)) (fun y Hy => (imp_eq (f (x * y)) (hl_lam R f (hl_real_mul x y)) (f x * f y) (hl_real_mul (hl_lam R f x) (hl_lam R f y)) (eq_sym_i (hl_lam R f (hl_real_mul x y)) (f (x * y)) (((hl_real_mul_compat) (x) Hx (y) Hy) (fun hl__u hl__v => hl_lam R f (hl_real_mul x y) = f hl__u) ((hl_lam_ap (R) f) (hl_real_mul x y) (setexp_ap (R) (R) (hl_real_mul x) (setexp_ap (R) (R :^: R) (hl_real_mul) ((hl_real_mul_in)) (x) Hx) (y) Hy)))) (eq_sym_i (hl_real_mul (hl_lam R f x) (hl_lam R f y)) (f x * f y) (((hl_lam_ap (R) f) (y) Hy) (fun hl__u hl__v => hl_real_mul (hl_lam R f x) (hl_lam R f y) = f x * hl__u) (((hl_lam_ap (R) f) (x) Hx) (fun hl__u hl__v => hl_real_mul (hl_lam R f x) (hl_lam R f y) = hl__u * hl_lam R f y) ((hl_real_mul_compat) (hl_lam R f x) (setexp_ap (R) (R) (hl_lam R f) (hl_lam_Pi (R) (R) f Hfc) (x) Hx) (hl_lam R f y) (setexp_ap (R) (R) (hl_lam R f) (hl_lam_Pi (R) (R) f Hfc) (y) Hy)))))))))))) (imp_or (hl_lam R f = fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (forall x :e R, f x = 0) (hl_lam R f = fun x :e R => x) (forall x :e R, f x = x) (imp_trans (hl_lam R f = fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (forall x :e R, hl_lam R f x = hl_real_of_num (hl_NUMERAL hl_zero)) (forall x :e R, f x = 0) (imp_trans (hl_lam R f = fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) hl__pw) (forall x :e R, hl_lam R f x = hl_real_of_num (hl_NUMERAL hl_zero)) (iffEL (hl_lam R f = fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) hl__pw) (eq_Pi_pointwise (R) (R) (hl_lam R f) (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam_Pi (R) (R) f Hfc) (lam_Pi (R) (fun _ => R) (fun x => hl_real_of_num (hl_NUMERAL hl_zero)) (fun x Hx => (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))) (iffEL (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) hl__pw) (forall x :e R, hl_lam R f x = hl_real_of_num (hl_NUMERAL hl_zero)) (pw_app_conv (R) (hl_lam R f) (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (fun hl__pw:set => (hl_lam R f) hl__pw) (fun x:set => hl_real_of_num (hl_NUMERAL hl_zero)) (fun hl__pw Hhl__pw => (fun q H => H)) (fun x Hx => (beta (R) (fun x => hl_real_of_num (hl_NUMERAL hl_zero)) x Hx))))) (imp_forall_in (R) (fun x => hl_lam R f x = hl_real_of_num (hl_NUMERAL hl_zero)) (fun x => f x = 0) (fun x Hx => (imp_eq (hl_lam R f x) (f x) (hl_real_of_num (hl_NUMERAL hl_zero)) (0) ((hl_lam_ap (R) f) (x) Hx) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))))))) (imp_trans (hl_lam R f = fun x :e R => x) (forall x :e R, hl_lam R f x = x) (forall x :e R, f x = x) (imp_trans (hl_lam R f = fun x :e R => x) (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => x) hl__pw) (forall x :e R, hl_lam R f x = x) (iffEL (hl_lam R f = fun x :e R => x) (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => x) hl__pw) (eq_Pi_pointwise (R) (R) (hl_lam R f) (fun x :e R => x) (hl_lam_Pi (R) (R) f Hfc) (lam_Pi (R) (fun _ => R) (fun x => x) (fun x Hx => Hx)))) (iffEL (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => x) hl__pw) (forall x :e R, hl_lam R f x = x) (pw_app_conv (R) (hl_lam R f) (fun x :e R => x) (fun hl__pw:set => (hl_lam R f) hl__pw) (fun x:set => x) (fun hl__pw Hhl__pw => (fun q H => H)) (fun x Hx => (beta (R) (fun x => x) x Hx))))) (imp_forall_in (R) (fun x => hl_lam R f x = x) (fun x => f x = x) (fun x Hx => (imp_eq (hl_lam R f x) (f x) (x) (x) ((hl_lam_ap (R) f) (x) Hx) (fun q H => H)))))) (imp_or (forall x :e R, f x = 0) (hl_lam R f = fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (forall x :e R, f x = x) (hl_lam R f = fun x :e R => x) (imp_trans (forall x :e R, f x = 0) (forall x :e R, hl_lam R f x = hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam R f = fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (imp_forall_in (R) (fun x => f x = 0) (fun x => hl_lam R f x = hl_real_of_num (hl_NUMERAL hl_zero)) (fun x Hx => (imp_eq (f x) (hl_lam R f x) (0) (hl_real_of_num (hl_NUMERAL hl_zero)) (eq_sym_i (hl_lam R f x) (f x) ((hl_lam_ap (R) f) (x) Hx)) (eq_sym_i (hl_real_of_num (hl_NUMERAL hl_zero)) (0) ((eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat) (fun hl__u hl__v => hl_real_of_num (hl_NUMERAL hl_zero) = hl__u) ((hl_real_of_num_compat) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in))))))))) (imp_trans (forall x :e R, hl_lam R f x = hl_real_of_num (hl_NUMERAL hl_zero)) (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) hl__pw) (hl_lam R f = fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (iffER (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) hl__pw) (forall x :e R, hl_lam R f x = hl_real_of_num (hl_NUMERAL hl_zero)) (pw_app_conv (R) (hl_lam R f) (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (fun hl__pw:set => (hl_lam R f) hl__pw) (fun x:set => hl_real_of_num (hl_NUMERAL hl_zero)) (fun hl__pw Hhl__pw => (fun q H => H)) (fun x Hx => (beta (R) (fun x => hl_real_of_num (hl_NUMERAL hl_zero)) x Hx)))) (iffER (hl_lam R f = fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) hl__pw) (eq_Pi_pointwise (R) (R) (hl_lam R f) (fun x :e R => hl_real_of_num (hl_NUMERAL hl_zero)) (hl_lam_Pi (R) (R) f Hfc) (lam_Pi (R) (fun _ => R) (fun x => hl_real_of_num (hl_NUMERAL hl_zero)) (fun x Hx => (setexp_ap (omega) (R) (hl_real_of_num) ((hl_real_of_num_in)) (hl_NUMERAL hl_zero) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_zero) ((hl_zero_in)))))))))) (imp_trans (forall x :e R, f x = x) (forall x :e R, hl_lam R f x = x) (hl_lam R f = fun x :e R => x) (imp_forall_in (R) (fun x => f x = x) (fun x => hl_lam R f x = x) (fun x Hx => (imp_eq (f x) (hl_lam R f x) (x) (x) (eq_sym_i (hl_lam R f x) (f x) ((hl_lam_ap (R) f) (x) Hx)) (eq_sym_i (x) (x) (fun q H => H))))) (imp_trans (forall x :e R, hl_lam R f x = x) (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => x) hl__pw) (hl_lam R f = fun x :e R => x) (iffER (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => x) hl__pw) (forall x :e R, hl_lam R f x = x) (pw_app_conv (R) (hl_lam R f) (fun x :e R => x) (fun hl__pw:set => (hl_lam R f) hl__pw) (fun x:set => x) (fun hl__pw Hhl__pw => (fun q H => H)) (fun x Hx => (beta (R) (fun x => x) x Hx)))) (iffER (hl_lam R f = fun x :e R => x) (forall hl__pw :e (R), (hl_lam R f) hl__pw = (fun x :e R => x) hl__pw) (eq_Pi_pointwise (R) (R) (hl_lam R f) (fun x :e R => x) (hl_lam_Pi (R) (R) f Hfc) (lam_Pi (R) (fun _ => R) (fun x => x) (fun x Hx => Hx)))))))))) H__top)).
Qed.
Theorem HOMOMORPHISM_REAL_TO_REAL : forall f:set -> set, (forall x :e R, f x :e R) -> ((forall x y :e R, f (x + y) = f x + f y) /\ (forall x y :e R, f (x * y) = f x * f y) <-> (forall x :e R, f x = 0) \/ forall x :e R, f x = x).
exact (HOMOMORPHISM_REAL_TO_REAL_bridge hlt_HOMOMORPHISM_REAL_TO_REAL).
Admitted.

// HOL Light: Multivariate/vectors.ml:1073 / DOT_NORM   (hash md5:9763a00a8d51a363c5457926d658beff)
// not bridged: 
Theorem DOT_NORM : forall A:set, A <> Empty -> forall x y :e R :^: idx A, dot A x y = ((vector_norm A (vector_add A x y) ^ 2 + - vector_norm A x ^ 2) + - vector_norm A y ^ 2) :/: 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:1077 / DOT_NORM_SUB   (hash md5:d4998bf712cca9f3766869996855b285)
// not bridged: 
Theorem DOT_NORM_SUB : forall A:set, A <> Empty -> forall x y :e R :^: idx A, dot A x y = ((vector_norm A x ^ 2 + vector_norm A y ^ 2) + - vector_norm A (vector_sub A x y) ^ 2) :/: 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:1085 / VECTOR_EQ   (hash md5:bac5793c28cc6d5bea5986c7494da5d7)
// not bridged: 
Theorem VECTOR_EQ : forall A:set, A <> Empty -> forall x y :e R :^: idx A, x = y <-> dot A x x = dot A x y /\ dot A y y = dot A x x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1096 / DIST_REFL   (hash md5:a72a0243ff5114cb55b71766fe12b22e)
// not bridged: 
Theorem DIST_REFL : forall A:set, A <> Empty -> forall x :e R :^: idx A, distance A (x,x) = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1100 / DIST_SYM   (hash md5:00380dc8191da2d0dd595b822809f0e3)
// not bridged: 
Theorem DIST_SYM : forall A:set, A <> Empty -> forall x y :e R :^: idx A, distance A (x,y) = distance A (y,x).
Admitted.

// HOL Light: Multivariate/vectors.ml:1104 / DIST_POS_LE   (hash md5:6523878a3e749625fe3e034f1aee6990)
// not bridged: 
Theorem DIST_POS_LE : forall A:set, A <> Empty -> forall x y :e R :^: idx A, 0 <= distance A (x,y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1108 / REAL_ABS_DIST   (hash md5:594f633a7fdb365293926381b6b4560f)
// not bridged: 
Theorem REAL_ABS_DIST : forall N:set, N <> Empty -> forall x y :e R :^: idx N, abs_SNo (distance N (x,y)) = distance N (x,y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1112 / DIST_TRIANGLE   (hash md5:23c27deb7bdc7b5d364ba00af4c2cb58)
// not bridged: 
Theorem DIST_TRIANGLE : forall N:set, N <> Empty -> forall x y z :e R :^: idx N, distance N (x,z) <= distance N (x,y) + distance N (y,z).
Admitted.

// HOL Light: Multivariate/vectors.ml:1116 / DIST_TRIANGLE_ALT   (hash md5:d2b82391c64377c0495217337a696007)
// not bridged: 
Theorem DIST_TRIANGLE_ALT : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, distance A (y,z) <= distance A (x,y) + distance A (x,z).
Admitted.

// HOL Light: Multivariate/vectors.ml:1120 / DIST_EQ_0   (hash md5:6ec9ac16649ac70e750febd6b8572e71)
// not bridged: 
Theorem DIST_EQ_0 : forall A:set, A <> Empty -> forall x y :e R :^: idx A, distance A (x,y) = 0 <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1124 / DIST_POS_LT   (hash md5:e6e04dd113fd316d131280df63b8e64f)
// not bridged: 
Theorem DIST_POS_LT : forall A:set, A <> Empty -> forall x y :e R :^: idx A, ~ x = y -> 0 < distance A (x,y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1128 / DIST_NZ   (hash md5:6f3d0d5bd5021e38badf1a904ff65cd9)
// not bridged: 
Theorem DIST_NZ : forall A:set, A <> Empty -> forall x y :e R :^: idx A, ~ x = y <-> 0 < distance A (x,y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1132 / DIST_TRIANGLE_LE   (hash md5:744cec99777b41ed2239dd7776762b78)
// not bridged: 
Theorem DIST_TRIANGLE_LE : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, forall e0 :e R, distance A (x,z) + distance A (y,z) <= e0 -> distance A (x,y) <= e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1136 / DIST_TRIANGLE_LT   (hash md5:614f986c706f381e3ddf948744b71dd9)
// not bridged: 
Theorem DIST_TRIANGLE_LT : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, forall e0 :e R, distance A (x,z) + distance A (y,z) < e0 -> distance A (x,y) < e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1140 / DIST_TRIANGLE_HALF_L   (hash md5:d9a07d49d5fa688cdb65a608a3b1f6e7)
// not bridged: 
Theorem DIST_TRIANGLE_HALF_L : forall A:set, A <> Empty -> forall e0 :e R, forall x1 x2 y :e R :^: idx A, distance A (x1,y) < e0 :/: 2 /\ distance A (x2,y) < e0 :/: 2 -> distance A (x1,x2) < e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1144 / DIST_TRIANGLE_HALF_R   (hash md5:6015c61a773b957f604dc1b078c1a2d7)
// not bridged: 
Theorem DIST_TRIANGLE_HALF_R : forall A:set, A <> Empty -> forall e0 :e R, forall x1 x2 y :e R :^: idx A, distance A (y,x1) < e0 :/: 2 /\ distance A (y,x2) < e0 :/: 2 -> distance A (x1,x2) < e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1148 / DIST_TRIANGLE_ADD   (hash md5:4e258cafbb9831ade133c4f7b67281a2)
// not bridged: 
Theorem DIST_TRIANGLE_ADD : forall A:set, A <> Empty -> forall x x' y y' :e R :^: idx A, distance A (vector_add A x y,vector_add A x' y') <= distance A (x,x') + distance A (y,y').
Admitted.

// HOL Light: Multivariate/vectors.ml:1152 / DIST_MUL   (hash md5:44e8c5eb1088a31986c49a68ee17d315)
// not bridged: 
Theorem DIST_MUL : forall A:set, A <> Empty -> forall x y :e R :^: idx A, forall c :e R, distance A (vector_mul A c x,vector_mul A c y) = abs_SNo c * distance A (x,y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1156 / DIST_TRIANGLE_ADD_HALF   (hash md5:9ceed50b6ce70a6c4d63ad25014dbd3f)
// not bridged: 
Theorem DIST_TRIANGLE_ADD_HALF : forall N:set, N <> Empty -> forall e0 :e R, forall x x' y y' :e R :^: idx N, distance N (x,x') < e0 :/: 2 /\ distance N (y,y') < e0 :/: 2 -> distance N (vector_add N x y,vector_add N x' y') < e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1161 / DIST_LE_0   (hash md5:a01dfbcc19e064952f4d8978be6c93cc)
// not bridged: 
Theorem DIST_LE_0 : forall A:set, A <> Empty -> forall x y :e R :^: idx A, distance A (x,y) <= 0 <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1165 / DIST_EQ   (hash md5:deaaa8646599b9ba83fd5205fb7ec8ea)
// not bridged: 
Theorem DIST_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall w x :e R :^: idx A, forall y z :e R :^: idx B, distance A (w,x) = distance B (y,z) <-> distance A (w,x) ^ 2 = distance B (y,z) ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:1169 / DIST_0   (hash md5:d18510d547f583e191c0bcc7f363252f)
// not bridged: 
Theorem DIST_0 : forall A:set, A <> Empty -> forall x :e R :^: idx A, distance A (x,vec A 0) = vector_norm A x /\ distance A (vec A 0,x) = vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1177 / DIST_RESCALE   (hash md5:c1aa4e2895b68a35d3b427bdc450795a)
// not bridged: 
Theorem DIST_RESCALE : forall N:set, N <> Empty -> forall a :e R, forall x y :e R :^: idx N, vector_norm N x = vector_norm N y -> distance N (vector_mul N a x,y) = distance N (x,vector_mul N a y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1183 / DIST_DESCALE   (hash md5:9ec7fd5eb51e564a3ba0b43abdde5592)
// not bridged: 
Theorem DIST_DESCALE : forall N:set, N <> Empty -> forall a b :e R, forall x y :e R :^: idx N, 0 <= a /\ (0 <= b /\ vector_norm N x = vector_norm N y) -> (if a <= b then a else b) * distance N (x,y) <= distance N (vector_mul N a x,vector_mul N b y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1216 / NEUTRAL_VECTOR_ADD   (hash md5:7780604b5d4931db54f5a0936fdb618f)
// not bridged: 
Theorem NEUTRAL_VECTOR_ADD : forall N:set, N <> Empty -> neutral_of (R :^: idx N) (vector_add N) = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1222 / MONOIDAL_VECTOR_ADD   (hash md5:8c41d8534583d876fa0983cf0279eb76)
// not bridged: 
Theorem MONOIDAL_VECTOR_ADD : forall N:set, N <> Empty -> (forall x y :e R :^: idx N, vector_add N x y = vector_add N y x) /\ (forall x y z :e R :^: idx N, vector_add N x (vector_add N y z) = vector_add N (vector_add N x y) z) /\ forall x :e R :^: idx N, vector_add N (neutral_of (R :^: idx N) (vector_add N)) x = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1227 / vsum   (hash md5:846aaf2e804d1f333b57329ecc54a539)
// not bridged: 
Theorem vsum_thm : forall A N:set, A <> Empty -> N <> Empty -> forall s c= A, forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> vsum A N s f = fun i :e idx N => finsum s (fun x:set => f x i).
Admitted.

// HOL Light: Multivariate/vectors.ml:1230 / VSUM_CLAUSES   (hash md5:788a27653853af8d9324d2f188ce8c86)
// not bridged: 
Theorem VSUM_CLAUSES : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> vsum A B Empty f = vec B 0) /\ forall x :e C, forall f:set -> set, (forall x0 :e C, f x0 :e R :^: idx D) -> forall s c= C, finite s -> vsum C D (SetAdjoin s x) f = if x :e s then vsum C D s f else vector_add D (f x) (vsum C D s f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1239 / VSUM   (hash md5:077f0c3d8fba88f08ad22949fce322fd)
// not bridged: 
Theorem VSUM : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s c= A, finite s -> vsum A B s f = iterate_op (R :^: idx B) (vector_add B) s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1245 / VSUM_EQ_0   (hash md5:40d42f77d9c58e1c83fa5e4b41b174f6)
// not bridged: 
Theorem VSUM_EQ_0 : forall B A:set, B <> Empty -> A <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s c= A, (forall x :e A, x :e s -> f x = vec B 0) -> vsum A B s f = vec B 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1249 / VSUM_0   (hash md5:c5fcc432d0dd34a9e782119a0e8d414c)
// not bridged: 
Theorem VSUM_0 : forall A B:set, A <> Empty -> B <> Empty -> forall s c= A, vsum A B s (fun x:set => vec B 0) = vec B 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1253 / VSUM_LMUL   (hash md5:89f46256bef08cb9c8aa3bcf79ad24db)
// not bridged: 
Theorem VSUM_LMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall c :e R, forall s c= A, vsum A B s (fun x:set => vector_mul B c (f x)) = vector_mul B c (vsum A B s f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1257 / VSUM_RMUL   (hash md5:74adce06c66275bb6dd7115f9b947ac2)
// not bridged: 
Theorem VSUM_RMUL : forall A B:set, A <> Empty -> B <> Empty -> forall c:set -> set, (forall x :e A, c x :e R) -> forall s c= A, forall v :e R :^: idx B, vsum A B s (fun x:set => vector_mul B (c x) v) = vector_mul B (finsum s c) v.
Admitted.

// HOL Light: Multivariate/vectors.ml:1261 / VSUM_ADD   (hash md5:9f116728d64950c05556dd7615c7c6d7)
// not bridged: 
Theorem VSUM_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e A, g x :e R :^: idx B) -> forall s c= A, finite s -> vsum A B s (fun x:set => vector_add B (f x) (g x)) = vector_add B (vsum A B s f) (vsum A B s g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1265 / VSUM_SUB   (hash md5:ddc18df80295da0c85376ce1b390cd8f)
// not bridged: 
Theorem VSUM_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e A, g x :e R :^: idx B) -> forall s c= A, finite s -> vsum A B s (fun x:set => vector_sub B (f x) (g x)) = vector_sub B (vsum A B s f) (vsum A B s g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1269 / VSUM_CONST   (hash md5:d66d3204e6d2102ef002c2061a637020)
// not bridged: 
Theorem VSUM_CONST : forall A B:set, A <> Empty -> B <> Empty -> forall c :e R :^: idx B, forall s c= A, finite s -> vsum A B s (fun n:set => c) = vector_mul B (finite_cardinality s) c.
Admitted.

// HOL Light: Multivariate/vectors.ml:1273 / VSUM_COMPONENT   (hash md5:9671eb523a2b1e309942bdbd5f70f0cd)
// not bridged: 
Theorem VSUM_COMPONENT : forall A N:set, A <> Empty -> N <> Empty -> forall s c= A, forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall i :e omega, vsum A N s f i = finsum s (fun x:set => f x i).
Admitted.

// HOL Light: Multivariate/vectors.ml:1280 / VSUM_IMAGE   (hash md5:157c4d3d45f2a9854a25d4985243a4f1)
// not bridged: 
Theorem VSUM_IMAGE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e C, f x :e A) -> forall g:set -> set, (forall x :e A, g x :e R :^: idx B) -> forall s c= C, finite s /\ (forall x y :e C, x :e s /\ (y :e s /\ f x = f y) -> x = y) -> vsum A B {f x | x :e s} g = vsum C B s (fun x:set => g (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1287 / VSUM_UNION   (hash md5:2ee5a95aa34771ab82d9de4d39300731)
// not bridged: 
Theorem VSUM_UNION : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s t c= A, finite s /\ (finite t /\ s :/\: t = Empty) -> vsum A B (s :\/: t) f = vector_add B (vsum A B s f) (vsum A B t f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1292 / VSUM_DIFF   (hash md5:3d2ca58e623a693c8a3ee188694fa919)
// not bridged: 
Theorem VSUM_DIFF : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s t c= A, finite s /\ t c= s -> vsum A B (s :\: t) f = vector_sub B (vsum A B s f) (vsum A B t f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1297 / VSUM_DELETE   (hash md5:cba5a05b073022d1ab44616fb1f5fa91)
// not bridged: 
Theorem VSUM_DELETE : forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s c= A, forall a :e A, finite s /\ a :e s -> vsum A B (s :\: {a}) f = vector_sub B (vsum A B s f) (f a).
Admitted.

// HOL Light: Multivariate/vectors.ml:1302 / VSUM_INCL_EXCL   (hash md5:7d7d975f4893356271c548e946491009)
// not bridged: 
Theorem VSUM_INCL_EXCL : forall A N:set, N <> Empty -> forall s t c= A, forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> finite s /\ finite t -> vector_add N (vsum A N s f) (vsum A N t f) = vector_add N (vsum A N (s :\/: t) f) (vsum A N (s :/\: t) f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1309 / VSUM_NEG   (hash md5:a7b2020623186e03b077b35dcc5d8d8b)
// not bridged: 
Theorem VSUM_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s c= A, vsum A B s (fun x:set => vector_neg B (f x)) = vector_neg B (vsum A B s f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1313 / VSUM_EQ   (hash md5:2ad6375b378aed07ab0285a8427dc324)
// not bridged: 
Theorem VSUM_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e A, g x :e R :^: idx B) -> forall s c= A, (forall x :e A, x :e s -> f x = g x) -> vsum A B s f = vsum A B s g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1318 / VSUM_SUPERSET   (hash md5:4567473f79dae8e1f193ef5c94e3385c)
// not bridged: 
Theorem VSUM_SUPERSET : forall A N:set, N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall u v c= A, u c= v /\ (forall x :e A, x :e v /\ ~ x :e u -> f x = vec N 0) -> vsum A N v f = vsum A N u f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1324 / VSUM_SUPPORT   (hash md5:0bb93242bf03909baddc1639584b284b)
// not bridged: 
Theorem VSUM_SUPPORT : forall A N:set, N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall s c= A, vsum A N {x :e A | x :e s /\ ~ f x = vec N 0} f = vsum A N s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1329 / VSUM_UNIV   (hash md5:0c3df713505fcfa5fa350ce7b529ec97)
// not bridged: 
Theorem VSUM_UNIV : forall A N:set, N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall s c= A, {x :e A | f x <> neutral_of (R :^: idx N) (vector_add N)} c= s -> vsum A N s f = vsum A N A f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1336 / VSUM_EQ_SUPERSET   (hash md5:4451fe096f862f218ac5d3ab4f953631)
// not bridged: 
Theorem VSUM_EQ_SUPERSET : forall B A:set, B <> Empty -> A <> Empty -> forall g:set -> set, (forall x :e A, g x :e R :^: idx B) -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s t c= A, finite t /\ (t c= s /\ ((forall x :e A, x :e t -> f x = g x) /\ (forall x :e A, x :e s /\ ~ x :e t -> f x = vec B 0))) -> vsum A B s f = vsum A B t g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1344 / VSUM_UNION_RZERO   (hash md5:ae50b67e6a48f2557998331a99b73b2e)
// not bridged: 
Theorem VSUM_UNION_RZERO : forall A N:set, N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall u v c= A, (forall x :e A, x :e v /\ ~ x :e u -> f x = vec N 0) -> vsum A N (u :\/: v) f = vsum A N u f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1350 / VSUM_UNION_LZERO   (hash md5:05084acb8b80c546fc071dd30d2a2cca)
// not bridged: 
Theorem VSUM_UNION_LZERO : forall A N:set, N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall u v c= A, (forall x :e A, x :e u /\ ~ x :e v -> f x = vec N 0) -> vsum A N (u :\/: v) f = vsum A N v f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1356 / VSUM_RESTRICT   (hash md5:e41bd87d74ed575399756f23a57a677a)
// not bridged: 
Theorem VSUM_RESTRICT : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s c= A, vsum A B s (fun x:set => if x :e s then f x else vec B 0) = vsum A B s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1360 / VSUM_RESTRICT_SET   (hash md5:8ba0d839b1cf6bfe7fe7bf3005dc0d86)
// not bridged: 
Theorem VSUM_RESTRICT_SET : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall s c= A, forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> vsum A B {x :e A | x :e s /\ P x} f = vsum A B s (fun x:set => if P x then f x else vec B 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:1366 / VSUM_CASES   (hash md5:c31d9c8c6e34a582b7a6387e16465f78)
// not bridged: 
Theorem VSUM_CASES : forall A N:set, A <> Empty -> N <> Empty -> forall s c= A, forall P:set -> prop, forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e A, g x :e R :^: idx N) -> finite s -> vsum A N s (fun x:set => if P x then f x else g x) = vector_add N (vsum A N {x :e A | x :e s /\ P x} f) (vsum A N {x :e A | x :e s /\ ~ P x} g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1373 / VSUM_SING   (hash md5:38e97270e0990bcc53eb86b50741931f)
// not bridged: 
Theorem VSUM_SING : forall A B:set, A <> Empty -> forall f:set -> set, (forall x :e B, f x :e R :^: idx A) -> forall x :e B, vsum B A {x} f = f x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1377 / VSUM_NORM   (hash md5:87b7f9ab248c69121165e28b20d76787)
// not bridged: 
Theorem VSUM_NORM : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e B, f x :e R :^: idx A) -> forall s c= B, finite s -> vector_norm A (vsum B A s f) <= finsum s (fun x:set => vector_norm A (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1383 / VSUM_NORM_LE   (hash md5:a3da66e5d30d5ae4b85249e75339d239)
// not bridged: 
Theorem VSUM_NORM_LE : forall A N:set, A <> Empty -> N <> Empty -> forall s c= A, forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e A, g x :e R) -> finite s /\ (forall x :e A, x :e s -> vector_norm N (f x) <= g x) -> vector_norm N (vsum A N s f) <= finsum s g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1391 / VSUM_NORM_TRIANGLE   (hash md5:c1c3381236a3fa3a5e52c37d28bbd1c5)
// not bridged: 
Theorem VSUM_NORM_TRIANGLE : forall A B:set, A <> Empty -> B <> Empty -> forall s c= A, forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall b :e R, finite s /\ finsum s (fun a:set => vector_norm B (f a)) <= b -> vector_norm B (vsum A B s f) <= b.
Admitted.

// HOL Light: Multivariate/vectors.ml:1395 / VSUM_NORM_BOUND   (hash md5:2a04dd0e13a04f9e6d2d5d7fc5b5a12e)
// not bridged: 
Theorem VSUM_NORM_BOUND : forall B A:set, B <> Empty -> A <> Empty -> forall s c= A, forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall b :e R, finite s /\ (forall x :e A, x :e s -> vector_norm B (f x) <= b) -> vector_norm B (vsum A B s f) <= finite_cardinality s * b.
Admitted.

// HOL Light: Multivariate/vectors.ml:1400 / VSUM_CLAUSES_NUMSEG   (hash md5:1295cb5808aaf509ade8bf679f999aee)
// not bridged: 
Theorem VSUM_CLAUSES_NUMSEG : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> (forall m :e omega, vsum omega A {i :e omega | m <= i /\ i <= 0} f = if m = 0 then f 0 else vec A 0) /\ forall m n :e omega, vsum omega A {i :e omega | m <= i /\ i <= ordsucc n} f = if m <= ordsucc n then vector_add A (vsum omega A {i :e omega | m <= i /\ i <= n} f) (f (ordsucc n)) else vsum omega A {i :e omega | m <= i /\ i <= n} f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1409 / VSUM_CLAUSES_RIGHT   (hash md5:2f3087fd6108f3f13da959ebf2f264ca)
// not bridged: 
Theorem VSUM_CLAUSES_RIGHT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx N) -> forall m n :e omega, 0 < n /\ m <= n -> vsum omega N {i :e omega | m <= i /\ i <= n} f = vector_add N (vsum omega N {i :e omega | m <= i /\ i <= minus_nat n 1} f) (f n).
Admitted.

// HOL Light: Multivariate/vectors.ml:1414 / VSUM_CMUL_NUMSEG   (hash md5:e18a30f48c74965c4d8ba4c65c945724)
// not bridged: 
Theorem VSUM_CMUL_NUMSEG : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall c :e R, forall m n :e omega, vsum omega A {i :e omega | m <= i /\ i <= n} (fun x:set => vector_mul A c (f x)) = vector_mul A c (vsum omega A {i :e omega | m <= i /\ i <= n} f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1418 / VSUM_EQ_NUMSEG   (hash md5:1e2b7c1fa62a4f4c12e2e6f16e04901d)
// not bridged: 
Theorem VSUM_EQ_NUMSEG : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e omega, g x :e R :^: idx A) -> forall m n :e omega, (forall x :e omega, m <= x /\ x <= n -> f x = g x) -> vsum omega A {i :e omega | m <= i /\ i <= n} f = vsum omega A {i :e omega | m <= i /\ i <= n} g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1425 / VSUM_IMAGE_GEN   (hash md5:9da306ad5dbaf0ea1c73fbf29fde3866)
// not bridged: 
Theorem VSUM_IMAGE_GEN : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e R :^: idx C) -> forall s c= A, finite s -> vsum A C s g = vsum B C {f x | x :e s} (fun y:set => vsum A C {x :e A | x :e s /\ f x = y} g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1432 / VSUM_GROUP   (hash md5:0b4eb19635e270148b0517d992044e54)
// not bridged: 
Theorem VSUM_GROUP : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e R :^: idx C) -> forall s c= A, forall t c= B, finite s /\ {f x | x :e s} c= t -> vsum B C t (fun y:set => vsum A C {x :e A | x :e s /\ f x = y} g) = vsum A C s g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1438 / VSUM_GROUP_RELATION   (hash md5:29b728eae05ff7d83086718975fe0490)
// not bridged: 
Theorem VSUM_GROUP_RELATION : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall R0:set -> set -> prop, forall g:set -> set, (forall x :e A, g x :e R :^: idx C) -> forall s c= A, forall t c= B, finite s /\ (forall x :e A, x :e s -> exists y :e B, y :e t /\ R0 x y /\ forall y0 :e B, y0 :e t /\ R0 x y0 -> y0 = y) -> vsum B C t (fun y:set => vsum A C {x :e A | x :e s /\ R0 x y} g) = vsum A C s g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1445 / VSUM_VMUL   (hash md5:87d44f7d4486bf379d92a8d984e4f8c5)
// not bridged: 
Theorem VSUM_VMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e B, f x :e R) -> forall v :e R :^: idx A, forall s c= B, vector_mul A (finsum s f) v = vsum B A s (fun x:set => vector_mul A (f x) v).
Admitted.

// HOL Light: Multivariate/vectors.ml:1449 / VSUM_DELTA   (hash md5:cb00aa30debf8aef06503b8ba477e438)
// not bridged: 
Theorem VSUM_DELTA : forall A B:set, B <> Empty -> forall b :e R :^: idx B, forall s c= A, forall a :e A, vsum A B s (fun x:set => if x = a then b else vec B 0) = if a :e s then b else vec B 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1455 / VSUM_ADD_NUMSEG   (hash md5:5630359192fa04b7731ea51e30908a5a)
// not bridged: 
Theorem VSUM_ADD_NUMSEG : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e omega, g x :e R :^: idx A) -> forall m n :e omega, vsum omega A {i :e omega | m <= i /\ i <= n} (fun i:set => vector_add A (f i) (g i)) = vector_add A (vsum omega A {i :e omega | m <= i /\ i <= n} f) (vsum omega A {i :e omega | m <= i /\ i <= n} g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1459 / VSUM_SUB_NUMSEG   (hash md5:dc5ff3f5bbb8d43199f6d7cb79fe5a34)
// not bridged: 
Theorem VSUM_SUB_NUMSEG : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e omega, g x :e R :^: idx A) -> forall m n :e omega, vsum omega A {i :e omega | m <= i /\ i <= n} (fun i:set => vector_sub A (f i) (g i)) = vector_sub A (vsum omega A {i :e omega | m <= i /\ i <= n} f) (vsum omega A {i :e omega | m <= i /\ i <= n} g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1463 / VSUM_ADD_SPLIT   (hash md5:cfe2012ac08b0139a8947fea949eb205)
// not bridged: 
Theorem VSUM_ADD_SPLIT : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n p :e omega, m <= n + 1 -> vsum omega A {i :e omega | m <= i /\ i <= n + p} f = vector_add A (vsum omega A {i :e omega | m <= i /\ i <= n} f) (vsum omega A {i :e omega | n + 1 <= i /\ i <= n + p} f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1469 / VSUM_VSUM_PRODUCT   (hash md5:c6e87941c59a99d95ed0e1340a7c52ac)
// not bridged: 
Theorem VSUM_VSUM_PRODUCT : forall C A B:set, C <> Empty -> A <> Empty -> B <> Empty -> forall s c= A, forall t :e Power B :^: A, forall x:set -> set -> set, (forall x0 :e A, forall y :e B, x x0 y :e R :^: idx C) -> finite s /\ (forall i :e A, i :e s -> finite (t i)) -> vsum A C s (fun i:set => vsum B C (t i) (x i)) = vsum (A :*: B) C (\/_ i :e A, {(i,j) | j :e B, i :e s /\ j :e t i}) (fun p:set => x (p 0) (p 1)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1478 / VSUM_IMAGE_NONZERO   (hash md5:59604b155bba6fb687b2df99b6ed9ce3)
// not bridged: 
Theorem VSUM_IMAGE_NONZERO : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall d:set -> set, (forall x :e B, d x :e R :^: idx N) -> forall i:set -> set, (forall x :e A, i x :e B) -> forall s c= A, finite s /\ (forall x y :e A, x :e s /\ (y :e s /\ (~ x = y /\ i x = i y)) -> d (i x) = vec N 0) -> vsum B N {i x | x :e s} d = vsum A N s (fun x:set => d (i x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1494 / VSUM_UNION_NONZERO   (hash md5:2e9f1269d870c22a44b92d5ba422faa7)
// not bridged: 
Theorem VSUM_UNION_NONZERO : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s t c= A, finite s /\ (finite t /\ (forall x :e A, x :e s :/\: t -> f x = vec B 0)) -> vsum A B (s :\/: t) f = vector_add B (vsum A B s f) (vsum A B t f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1500 / VSUM_UNIONS_NONZERO   (hash md5:1a5fb63d64e7da8a950969dbf3a7d861)
// not bridged: 
Theorem VSUM_UNIONS_NONZERO : forall B A:set, B <> Empty -> A <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s c= Power A, finite s /\ ((forall t c= A, t :e s -> finite t) /\ (forall t1 t2 c= A, forall x :e A, t1 :e s /\ (t2 :e s /\ (~ t1 = t2 /\ (x :e t1 /\ x :e t2))) -> f x = vec B 0)) -> vsum A B (Union s) f = vsum (Power A) B s (fun t:set => vsum A B t f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1515 / VSUM_CLAUSES_LEFT   (hash md5:a8d130e58c7dc20caec32800e956ec27)
// not bridged: 
Theorem VSUM_CLAUSES_LEFT : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n :e omega, m <= n -> vsum omega A {i :e omega | m <= i /\ i <= n} f = vector_add A (f m) (vsum omega A {i :e omega | m + 1 <= i /\ i <= n} f).
Admitted.

// HOL Light: Multivariate/vectors.ml:1520 / VSUM_DIFFS   (hash md5:3e177691d1a319d2547814f91a9f49b2)
// not bridged: 
Theorem VSUM_DIFFS : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n :e omega, vsum omega A {i :e omega | m <= i /\ i <= n} (fun k:set => vector_sub A (f k) (f (k + 1))) = if m <= n then vector_sub A (f m) (f (n + 1)) else vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1529 / VSUM_DIFFS_ALT   (hash md5:1109b44a35e7b9b70c850f7c2a023686)
// not bridged: 
Theorem VSUM_DIFFS_ALT : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n :e omega, vsum omega A {i :e omega | m <= i /\ i <= n} (fun k:set => vector_sub A (f (k + 1)) (f k)) = if m <= n then vector_sub A (f (n + 1)) (f m) else vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1536 / VSUM_DELETE_CASES   (hash md5:93fc2c389d11dec3efd2e7ce90a2d95a)
// not bridged: 
Theorem VSUM_DELETE_CASES : forall B A:set, B <> Empty -> forall x :e A, forall f:set -> set, (forall x0 :e A, f x0 :e R :^: idx B) -> forall s c= A, finite s -> vsum A B (s :\: {x}) f = if x :e s then vector_sub B (vsum A B s f) (f x) else vsum A B s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1546 / VSUM_EQ_GENERAL   (hash md5:b69805cd6005f9feb16c2001f51bc540)
// not bridged: 
Theorem VSUM_EQ_GENERAL : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall s c= A, forall t c= B, forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e B, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e A, h x :e B) -> (forall y :e B, y :e t -> exists x :e A, x :e s /\ h x = y /\ forall y0 :e A, y0 :e s /\ h y0 = y -> y0 = x) /\ (forall x :e A, x :e s -> h x :e t /\ g (h x) = f x) -> vsum A N s f = vsum B N t g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1555 / VSUM_EQ_GENERAL_INVERSES   (hash md5:acc4ccf94741aeb11b191fd55665f0ab)
// not bridged: 
Theorem VSUM_EQ_GENERAL_INVERSES : forall A B N:set, A <> Empty -> B <> Empty -> N <> Empty -> forall s c= A, forall t c= B, forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e B, g x :e R :^: idx N) -> forall h:set -> set, (forall x :e A, h x :e B) -> forall k:set -> set, (forall x :e B, k x :e A) -> (forall y :e B, y :e t -> k y :e s /\ h (k y) = y) /\ (forall x :e A, x :e s -> h x :e t /\ (k (h x) = x /\ g (h x) = f x)) -> vsum A N s f = vsum B N t g.
Admitted.

// HOL Light: Multivariate/vectors.ml:1564 / VSUM_NORM_ALLSUBSETS_BOUND   (hash md5:4c2d8740a96c39a85c8d7b4a5f724450)
// not bridged: 
Theorem VSUM_NORM_ALLSUBSETS_BOUND : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall p c= A, forall e0 :e R, finite p /\ (forall q c= A, q c= p -> vector_norm N (vsum A N q f) <= e0) -> finsum p (fun x:set => vector_norm N (f x)) <= 2 * dimindex N * e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1610 / DOT_LSUM   (hash md5:665ad814e6825225cd3a3baa272638c1)
// not bridged: 
Theorem DOT_LSUM : forall A B:set, A <> Empty -> B <> Empty -> forall s c= B, forall f:set -> set, (forall x :e B, f x :e R :^: idx A) -> forall y :e R :^: idx A, finite s -> dot A (vsum B A s f) y = finsum s (fun x:set => dot A (f x) y).
Admitted.

// HOL Light: Multivariate/vectors.ml:1616 / DOT_RSUM   (hash md5:737fb29ac8f7ed2e0fd3604f5a228d12)
// not bridged: 
Theorem DOT_RSUM : forall A B:set, A <> Empty -> B <> Empty -> forall s c= B, forall f:set -> set, (forall x :e B, f x :e R :^: idx A) -> forall x :e R :^: idx A, finite s -> dot A x (vsum B A s f) = finsum s (fun y:set => dot A x (f y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1622 / VSUM_OFFSET   (hash md5:aaff6bd08a959e3296f76a3f42b96e3e)
// not bridged: 
Theorem VSUM_OFFSET : forall A:set, A <> Empty -> forall p :e omega, forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n :e omega, vsum omega A {i :e omega | m + p <= i /\ i <= n + p} f = vsum omega A {i :e omega | m <= i /\ i <= n} (fun i:set => f (i + p)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1626 / VSUM_OFFSET_0   (hash md5:d5639f2f2046a5568bb3a37bfb16fa8d)
// not bridged: 
Theorem VSUM_OFFSET_0 : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n :e omega, m <= n -> vsum omega A {i :e omega | m <= i /\ i <= n} f = vsum omega A {i :e omega | 0 <= i /\ i <= minus_nat n m} (fun i:set => f (i + m)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1630 / VSUM_TRIV_NUMSEG   (hash md5:1debcd5014547c5aa977115f1ff53686)
// not bridged: 
Theorem VSUM_TRIV_NUMSEG : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n :e omega, n < m -> vsum omega A {i :e omega | m <= i /\ i <= n} f = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1634 / VSUM_CONST_NUMSEG   (hash md5:b182f281ada115fbe38c701b98b1e964)
// not bridged: 
Theorem VSUM_CONST_NUMSEG : forall A:set, A <> Empty -> forall c :e R :^: idx A, forall m n :e omega, vsum omega A {i :e omega | m <= i /\ i <= n} (fun n0:set => c) = vector_mul A (minus_nat (n + 1) m) c.
Admitted.

// HOL Light: Multivariate/vectors.ml:1638 / VSUM_SUC   (hash md5:d60cffbb0b5c040232bbe62e3681153f)
// not bridged: 
Theorem VSUM_SUC : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n :e omega, vsum omega A {i :e omega | ordsucc n <= i /\ i <= ordsucc m} f = vsum omega A {i :e omega | n <= i /\ i <= m} (fun x:set => f (ordsucc x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1646 / VSUM_BIJECTION   (hash md5:f01a9f42ad02a518ee5f9d8db3c814b5)
// not bridged: 
Theorem VSUM_BIJECTION : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall p:set -> set, (forall x :e A, p x :e A) -> forall s c= A, (forall x :e A, x :e s -> p x :e s) /\ (forall y :e A, y :e s -> exists x :e A, x :e s /\ p x = y /\ forall y0 :e A, y0 :e s /\ p y0 = y -> y0 = x) -> vsum A N s f = vsum A N s (fun x:set => f (p x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1655 / VSUM_PARTIAL_SUC   (hash md5:d7d47844c4478a55ab2643643cb08251)
// not bridged: 
Theorem VSUM_PARTIAL_SUC : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R) -> forall g:set -> set, (forall x :e omega, g x :e R :^: idx N) -> forall m n :e omega, vsum omega N {i :e omega | m <= i /\ i <= n} (fun k:set => vector_mul N (f k) (vector_sub N (g (k + 1)) (g k))) = if m <= n then vector_sub N (vector_sub N (vector_mul N (f (n + 1)) (g (n + 1))) (vector_mul N (f m) (g m))) (vsum omega N {i :e omega | m <= i /\ i <= n} (fun k:set => vector_mul N (f (k + 1) + - f k) (g (k + 1)))) else vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1672 / VSUM_PARTIAL_PRE   (hash md5:cfdf1dff7185c1beba06f71bb1000269)
// not bridged: 
Theorem VSUM_PARTIAL_PRE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R) -> forall g:set -> set, (forall x :e omega, g x :e R :^: idx N) -> forall m n :e omega, vsum omega N {i :e omega | m <= i /\ i <= n} (fun k:set => vector_mul N (f k) (vector_sub N (g k) (g (minus_nat k 1)))) = if m <= n then vector_sub N (vector_sub N (vector_mul N (f (n + 1)) (g n)) (vector_mul N (f m) (g (minus_nat m 1)))) (vsum omega N {i :e omega | m <= i /\ i <= n} (fun k:set => vector_mul N (f (k + 1) + - f k) (g k))) else vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1684 / VSUM_COMBINE_L   (hash md5:bc5802788b80f40dd79ef918ae607305)
// not bridged: 
Theorem VSUM_COMBINE_L : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n p :e omega, 0 < n /\ (m <= n /\ n <= p + 1) -> vector_add A (vsum omega A {i :e omega | m <= i /\ i <= minus_nat n 1} f) (vsum omega A {i :e omega | n <= i /\ i <= p} f) = vsum omega A {i :e omega | m <= i /\ i <= p} f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1690 / VSUM_COMBINE_R   (hash md5:7400a84216d2fbe27f72b74989f9f07d)
// not bridged: 
Theorem VSUM_COMBINE_R : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> forall m n p :e omega, m <= n + 1 /\ n <= p -> vector_add A (vsum omega A {i :e omega | m <= i /\ i <= n} f) (vsum omega A {i :e omega | n + 1 <= i /\ i <= p} f) = vsum omega A {i :e omega | m <= i /\ i <= p} f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1696 / VSUM_INJECTION   (hash md5:53fc2650893801cf9cffcce2080e9eea)
// not bridged: 
Theorem VSUM_INJECTION : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall p:set -> set, (forall x :e A, p x :e A) -> forall s c= A, finite s /\ ((forall x :e A, x :e s -> p x :e s) /\ (forall x y :e A, x :e s /\ (y :e s /\ p x = p y) -> x = y)) -> vsum A B s (fun x:set => f (p x)) = vsum A B s f.
Admitted.

// HOL Light: Multivariate/vectors.ml:1705 / VSUM_SWAP   (hash md5:eacffdab9b5be344d029aafc4ef9314e)
// not bridged: 
Theorem VSUM_SWAP : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set -> set, (forall x :e C, forall y :e B, f x y :e R :^: idx A) -> forall s c= C, forall t c= B, finite s /\ finite t -> vsum C A s (fun i:set => vsum B A t (f i)) = vsum B A t (fun j:set => vsum C A s (fun i:set => f i j)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1713 / VSUM_SWAP_NUMSEG   (hash md5:8db7518cbabdeec10a653eae311b725b)
// not bridged: 
Theorem VSUM_SWAP_NUMSEG : forall A:set, A <> Empty -> forall a b c d :e omega, forall f:set -> set -> set, (forall x y :e omega, f x y :e R :^: idx A) -> vsum omega A {i :e omega | a <= i /\ i <= b} (fun i:set => vsum omega A {i :e omega | c <= i /\ i <= d} (f i)) = vsum omega A {i :e omega | c <= i /\ i <= d} (fun j:set => vsum omega A {i :e omega | a <= i /\ i <= b} (fun i:set => f i j)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1719 / VSUM_ADD_GEN   (hash md5:fcfc0cec2cac652a7d1f50e49ffe03ab)
// not bridged: 
Theorem VSUM_ADD_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e A, g x :e R :^: idx B) -> forall s c= A, finite {x :e A | x :e s /\ ~ f x = vec B 0} /\ finite {x :e A | x :e s /\ ~ g x = vec B 0} -> vsum A B s (fun x:set => vector_add B (f x) (g x)) = vector_add B (vsum A B s f) (vsum A B s g).
Admitted.

// HOL Light: Multivariate/vectors.ml:1734 / VSUM_CASES_1   (hash md5:37adc4cd4fab6d80f5c852bda317086c)
// not bridged: 
Theorem VSUM_CASES_1 : forall A B:set, B <> Empty -> forall y :e R :^: idx B, forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall s c= A, forall a :e A, finite s /\ a :e s -> vsum A B s (fun x:set => if x = a then y else f x) = vector_add B (vsum A B s f) (vector_sub B y (f a)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1742 / VSUM_SING_NUMSEG   (hash md5:d025d2495c78345b9e3fdf0a52e528b1)
// not bridged: 
Theorem VSUM_SING_NUMSEG : forall A:set, A <> Empty -> forall n :e omega, forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> vsum omega A {i :e omega | n <= i /\ i <= n} f = f n.
Admitted.

// HOL Light: Multivariate/vectors.ml:1746 / VSUM_1   (hash md5:31e969d11f77e93bff272a46c3d2a142)
// not bridged: 
Theorem VSUM_1 : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx A) -> vsum omega A (idx_n 1) f = f 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1750 / VSUM_2   (hash md5:cc6e788b8de45c5993a71c8d95728679)
// not bridged: 
Theorem VSUM_2 : forall A:set, A <> Empty -> forall t:set -> set, (forall x :e omega, t x :e R :^: idx A) -> vsum omega A (idx_n 2) t = vector_add A (t 1) (t 2).
Admitted.

// HOL Light: Multivariate/vectors.ml:1755 / VSUM_3   (hash md5:1aa2e494a101a9194dc2bd372fa8a35a)
// not bridged: 
Theorem VSUM_3 : forall A:set, A <> Empty -> forall t:set -> set, (forall x :e omega, t x :e R :^: idx A) -> vsum omega A (idx_n 3) t = vector_add A (t 1) (vector_add A (t 2) (t 3)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1760 / VSUM_4   (hash md5:7e2d2449f4eb6dd8036238ad37019b4f)
// not bridged: 
Theorem VSUM_4 : forall A:set, A <> Empty -> forall t:set -> set, (forall x :e omega, t x :e R :^: idx A) -> vsum omega A (idx_n 4) t = vector_add A (t 1) (vector_add A (t 2) (vector_add A (t 3) (t 4))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1765 / VSUM_PAIR   (hash md5:8e31fa38e56c77d2c50e00eb126c4888)
// not bridged: 
Theorem VSUM_PAIR : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx N) -> forall m n :e omega, vsum omega N {i :e omega | 2 * m <= i /\ i <= 2 * n + 1} f = vsum omega N {i :e omega | m <= i /\ i <= n} (fun i:set => vector_add N (f (2 * i)) (f (2 * i + 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1770 / VSUM_PAIR_0   (hash md5:ece30572e8fb9df78bc629c12e213c59)
// not bridged: 
Theorem VSUM_PAIR_0 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx N) -> forall n :e omega, vsum omega N {i :e omega | 0 <= i /\ i <= 2 * n + 1} f = vsum omega N {i :e omega | 0 <= i /\ i <= n} (fun i:set => vector_add N (f (2 * i)) (f (2 * i + 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:1776 / VSUM_REFLECT   (hash md5:92419684111ad962acb0e5410c93dff9)
// not bridged: 
Theorem VSUM_REFLECT : forall A:set, A <> Empty -> forall x:set -> set, (forall x0 :e omega, x x0 :e R :^: idx A) -> forall m n :e omega, vsum omega A {i :e omega | m <= i /\ i <= n} x = if n < m then vec A 0 else vsum omega A {i :e omega | 0 <= i /\ i <= minus_nat n m} (fun i:set => x (minus_nat n i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:1837 / basis   (hash md5:9ef8710d45efa0a95b84ec76a297f8d7)
// not bridged: 
Theorem basis_thm : forall A:set, A <> Empty -> forall k :e omega, basis A k = fun i :e idx A => if i = k then 1 else 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1840 / NORM_BASIS   (hash md5:a0241d4254e837efdf23624583ac8d38)
// not bridged: 
Theorem NORM_BASIS : forall N:set, N <> Empty -> forall k :e omega, 1 <= k /\ k <= dimindex N -> vector_norm N (basis N k) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1853 / NORM_BASIS_1   (hash md5:b6ab47b4203c6978b086d5705f3fe438)
// not bridged: 
Theorem NORM_BASIS_1 : forall A:set, A <> Empty -> vector_norm A (basis A 1) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:1858 / VECTOR_CHOOSE_SIZE   (hash md5:4467f1b62d9e7656564f6583da249c8d)
// not bridged: 
Theorem VECTOR_CHOOSE_SIZE : forall N:set, N <> Empty -> forall c :e R, 0 <= c -> exists x :e R :^: idx N, vector_norm N x = c.
Admitted.

// HOL Light: Multivariate/vectors.ml:1863 / VECTOR_CHOOSE_DIST   (hash md5:3aa8a245219a74fc29102a67d0ac440d)
// not bridged: 
Theorem VECTOR_CHOOSE_DIST : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall e0 :e R, 0 <= e0 -> exists y :e R :^: idx N, distance N (x,y) = e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1871 / BASIS_INJ   (hash md5:52544faf0e2d9ff93a164e17870f8759)
// not bridged: 
Theorem BASIS_INJ : forall N:set, N <> Empty -> forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ basis N i = basis N j))) -> i = j.
Admitted.

// HOL Light: Multivariate/vectors.ml:1881 / BASIS_INJ_EQ   (hash md5:f2eef47b74700cc560b8a3aa2aef28d9)
// not bridged: 
Theorem BASIS_INJ_EQ : forall N:set, N <> Empty -> forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N)) -> (basis N i = basis N j <-> i = j).
Admitted.

// HOL Light: Multivariate/vectors.ml:1886 / BASIS_NE   (hash md5:ced669e6e9aff627434cf4427b0cdb07)
// not bridged: 
Theorem BASIS_NE : forall N:set, N <> Empty -> forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ (j <= dimindex N /\ ~ i = j))) -> ~ basis N i = basis N j.
Admitted.

// HOL Light: Multivariate/vectors.ml:1893 / BASIS_COMPONENT   (hash md5:5a83d2f7aa4a8e63a07f1d46694faba7)
// not bridged: 
Theorem BASIS_COMPONENT : forall N:set, N <> Empty -> forall k i :e omega, 1 <= i /\ i <= dimindex N -> basis N k i = if i = k then 1 else 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1898 / BASIS_EXPANSION   (hash md5:a72bf3cf5015bafc62c89aa98bf21549)
// not bridged: 
Theorem BASIS_EXPANSION : forall N:set, N <> Empty -> forall x :e R :^: idx N, vsum omega N (idx N) (fun i:set => vector_mul N (x i) (basis N i)) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1906 / BASIS_EXPANSION_UNIQUE   (hash md5:d426a1e6d4a804157adfb73cff4151d4)
// not bridged: 
Theorem BASIS_EXPANSION_UNIQUE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R) -> forall x :e R :^: idx N, vsum omega N (idx N) (fun i:set => vector_mul N (f i) (basis N i)) = x <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> f i = x i.
Admitted.

// HOL Light: Multivariate/vectors.ml:1915 / DOT_BASIS   (hash md5:5eca02c557800eeb99a0e3cdde97e60d)
// not bridged: 
Theorem DOT_BASIS : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall i :e omega, 1 <= i /\ i <= dimindex N -> dot N (basis N i) x = x i /\ dot N x (basis N i) = x i.
Admitted.

// HOL Light: Multivariate/vectors.ml:1924 / DOT_BASIS_BASIS   (hash md5:58f14d6ea5a5c4ba42251d9b58a58013)
// not bridged: 
Theorem DOT_BASIS_BASIS : forall N:set, N <> Empty -> forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N)) -> dot N (basis N i) (basis N j) = if i = j then 1 else 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1930 / DOT_BASIS_BASIS_UNEQUAL   (hash md5:d1b7e0b1bad07d843ec4b1166e7b3091)
// not bridged: 
Theorem DOT_BASIS_BASIS_UNEQUAL : forall A:set, A <> Empty -> forall i j :e omega, ~ i = j -> dot A (basis A i) (basis A j) = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1935 / BASIS_EQ_0   (hash md5:92c3b7b062bf3fb8201f25821cc7a4f3)
// not bridged: 
Theorem BASIS_EQ_0 : forall N:set, N <> Empty -> forall i :e omega, basis N i = vec N 0 <-> ~ i :e idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:1940 / BASIS_NONZERO   (hash md5:c435e3ec733f0bc41ad16250fd7b137c)
// not bridged: 
Theorem BASIS_NONZERO : forall N:set, N <> Empty -> forall k :e omega, 1 <= k /\ k <= dimindex N -> ~ basis N k = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1945 / VECTOR_EQ_LDOT   (hash md5:353e816a457a3415df8fce625f0d7987)
// not bridged: 
Theorem VECTOR_EQ_LDOT : forall A:set, A <> Empty -> forall y z :e R :^: idx A, (forall x :e R :^: idx A, dot A x y = dot A x z) <-> y = z.
Admitted.

// HOL Light: Multivariate/vectors.ml:1950 / VECTOR_EQ_RDOT   (hash md5:45d424b09186d8c9b73d9fee7932dae6)
// not bridged: 
Theorem VECTOR_EQ_RDOT : forall A:set, A <> Empty -> forall x y :e R :^: idx A, (forall z :e R :^: idx A, dot A x z = dot A y z) <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1959 / orthogonal   (hash md5:0b2e4b5533a210f5ed49abd04f58e0d4)
// not bridged: 
Theorem orthogonal_thm : forall A:set, A <> Empty -> forall x y :e R :^: idx A, orthogonal A x y <-> dot A x y = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1962 / ORTHOGONAL_0   (hash md5:0ea0c7ec28a97f2cd2adbd581ec6c387)
// not bridged: 
Theorem ORTHOGONAL_0 : forall A:set, A <> Empty -> forall x :e R :^: idx A, orthogonal A (vec A 0) x /\ orthogonal A x (vec A 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:1966 / ORTHOGONAL_REFL   (hash md5:3214c49673de596a4e05a2cd89de15c3)
// not bridged: 
Theorem ORTHOGONAL_REFL : forall A:set, A <> Empty -> forall x :e R :^: idx A, orthogonal A x x <-> x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:1970 / ORTHOGONAL_SYM   (hash md5:3dc1f2e6f320341a551942d24d8203f2)
// not bridged: 
Theorem ORTHOGONAL_SYM : forall A:set, A <> Empty -> forall x y :e R :^: idx A, orthogonal A x y <-> orthogonal A y x.
Admitted.

// HOL Light: Multivariate/vectors.ml:1974 / ORTHOGONAL_LNEG   (hash md5:f817d000e466d84d79a070ef8266f78b)
// not bridged: 
Theorem ORTHOGONAL_LNEG : forall A:set, A <> Empty -> forall x y :e R :^: idx A, orthogonal A (vector_neg A x) y <-> orthogonal A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1978 / ORTHOGONAL_RNEG   (hash md5:d235872853ef7662a297728fc6bb6790)
// not bridged: 
Theorem ORTHOGONAL_RNEG : forall A:set, A <> Empty -> forall x y :e R :^: idx A, orthogonal A x (vector_neg A y) <-> orthogonal A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1982 / ORTHOGONAL_MUL   (hash md5:af5fdbab2a166da0fc4ae062ae44a788)
// not bridged: 
Theorem ORTHOGONAL_MUL : forall N:set, N <> Empty -> (forall a :e R, forall x y :e R :^: idx N, orthogonal N (vector_mul N a x) y <-> a = 0 \/ orthogonal N x y) /\ forall a :e R, forall x y :e R :^: idx N, orthogonal N x (vector_mul N a y) <-> a = 0 \/ orthogonal N x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:1987 / ORTHOGONAL_BASIS   (hash md5:252a31c6b1b15d2dba810051080e120a)
// not bridged: 
Theorem ORTHOGONAL_BASIS : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall i :e omega, 1 <= i /\ i <= dimindex N -> (orthogonal N (basis N i) x <-> x i = 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:1994 / ORTHOGONAL_BASIS_BASIS   (hash md5:f3888936108ce37c9640a251afcd944b)
// not bridged: 
Theorem ORTHOGONAL_BASIS_BASIS : forall N:set, N <> Empty -> forall i j :e omega, 1 <= i /\ (i <= dimindex N /\ (1 <= j /\ j <= dimindex N)) -> (orthogonal N (basis N i) (basis N j) <-> ~ i = j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2001 / ORTHOGONAL_CLAUSES   (hash md5:00079e60b6700190c225100b3865b544)
// not bridged: 
Theorem ORTHOGONAL_CLAUSES : forall A B C D E F G H I J:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> E <> Empty -> F <> Empty -> G <> Empty -> H <> Empty -> I <> Empty -> J <> Empty -> (forall a :e R :^: idx A, orthogonal A a (vec A 0)) /\ ((forall a x :e R :^: idx B, forall c :e R, orthogonal B a x -> orthogonal B a (vector_mul B c x)) /\ ((forall a x :e R :^: idx E, orthogonal E a x -> orthogonal E a (vector_neg E x)) /\ ((forall a x y :e R :^: idx F, orthogonal F a x /\ orthogonal F a y -> orthogonal F a (vector_add F x y)) /\ ((forall a x y :e R :^: idx G, orthogonal G a x /\ orthogonal G a y -> orthogonal G a (vector_sub G x y)) /\ ((forall a :e R :^: idx C, orthogonal C (vec C 0) a) /\ ((forall a x :e R :^: idx D, forall c :e R, orthogonal D x a -> orthogonal D (vector_mul D c x) a) /\ ((forall a x :e R :^: idx H, orthogonal H x a -> orthogonal H (vector_neg H x) a) /\ ((forall a x y :e R :^: idx I, orthogonal I x a /\ orthogonal I y a -> orthogonal I (vector_add I x y) a) /\ forall a x y :e R :^: idx J, orthogonal J x a /\ orthogonal J y a -> orthogonal J (vector_sub J x y) a)))))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2016 / ORTHOGONAL_RVSUM   (hash md5:a511da974afc7aa229cc770a52e19e26)
// not bridged: 
Theorem ORTHOGONAL_RVSUM : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall s c= A, forall x :e R :^: idx N, finite s /\ (forall y :e A, y :e s -> orthogonal N x (f y)) -> orthogonal N x (vsum A N s f).
Admitted.

// HOL Light: Multivariate/vectors.ml:2025 / ORTHOGONAL_LVSUM   (hash md5:cadba42cccc1494e85876df1c50eeb5d)
// not bridged: 
Theorem ORTHOGONAL_LVSUM : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall s c= A, forall y :e R :^: idx N, finite s /\ (forall x :e A, x :e s -> orthogonal N (f x) y) -> orthogonal N (vsum A N s f) y.
Admitted.

// HOL Light: Multivariate/vectors.ml:2034 / NORM_ADD_PYTHAGOREAN   (hash md5:7e23f50a343add159247ed9b694d7238)
// not bridged: 
Theorem NORM_ADD_PYTHAGOREAN : forall N:set, N <> Empty -> forall a b :e R :^: idx N, orthogonal N a b -> vector_norm N (vector_add N a b) ^ 2 = vector_norm N a ^ 2 + vector_norm N b ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:2041 / NORM_VSUM_PYTHAGOREAN   (hash md5:a22b513f789d260d40aa3906559defd2)
// not bridged: 
Theorem NORM_VSUM_PYTHAGOREAN : forall A N:set, A <> Empty -> N <> Empty -> forall k c= A, forall u:set -> set, (forall x :e A, u x :e R :^: idx N) -> finite k /\ (forall x y :e k, x <> y -> orthogonal N (u x) (u y)) -> vector_norm N (vsum A N k u) ^ 2 = finsum k (fun i:set => vector_norm N (u i) ^ 2).
Admitted.

// HOL Light: Multivariate/vectors.ml:2059 / VECTOR_1   (hash md5:6c7419aaee5db089eb78b8c2d0ca1747)
// not bridged: 
Theorem VECTOR_1 : forall A:set, forall x :e A, vector A 1 (seq_cons x seq_nil) 1 = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:2063 / VECTOR_2   (hash md5:6f54e1e85a2c30bcc35e7211c4ef65ac)
// not bridged: 
Theorem VECTOR_2 : forall A:set, forall x y :e A, vector A (idx_n 2) (seq_cons x (seq_cons y seq_nil)) 1 = x /\ vector A (idx_n 2) (seq_cons x (seq_cons y seq_nil)) 2 = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:2069 / VECTOR_3   (hash md5:b2ea65c18d59dcce7f8e80f8ab158c88)
// not bridged: 
Theorem VECTOR_3 : forall A:set, forall x y z :e A, vector A (idx_n 3) (seq_cons x (seq_cons y (seq_cons z seq_nil))) 1 = x /\ (vector A (idx_n 3) (seq_cons x (seq_cons y (seq_cons z seq_nil))) 2 = y /\ vector A (idx_n 3) (seq_cons x (seq_cons y (seq_cons z seq_nil))) 3 = z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2076 / VECTOR_4   (hash md5:887fb41cb059269015f23840fe8c3807)
// not bridged: 
Theorem VECTOR_4 : forall A:set, forall w x y z :e A, vector A (idx_n 4) (seq_cons w (seq_cons x (seq_cons y (seq_cons z seq_nil)))) 1 = w /\ (vector A (idx_n 4) (seq_cons w (seq_cons x (seq_cons y (seq_cons z seq_nil)))) 2 = x /\ (vector A (idx_n 4) (seq_cons w (seq_cons x (seq_cons y (seq_cons z seq_nil)))) 3 = y /\ vector A (idx_n 4) (seq_cons w (seq_cons x (seq_cons y (seq_cons z seq_nil)))) 4 = z)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2084 / FORALL_VECTOR_1   (hash md5:df95b93b6850d33a9247d6c5dee481f1)
// not bridged: 
Theorem FORALL_VECTOR_1 : forall A:set, A <> Empty -> forall P:set -> prop, (forall v :e A :^: idx 1, P v) <-> forall x :e A, P (vector A 1 (seq_cons x seq_nil)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2091 / FORALL_VECTOR_2   (hash md5:025f9f70d5ae760e9fbc71f1a00f8a8d)
// not bridged: 
Theorem FORALL_VECTOR_2 : forall A:set, A <> Empty -> forall P:set -> prop, (forall v :e A :^: idx_n 2, P v) <-> forall x y :e A, P (vector A (idx_n 2) (seq_cons x (seq_cons y seq_nil))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2098 / FORALL_VECTOR_3   (hash md5:fc44aa5fddebf68c222a0440a6a1cf03)
// not bridged: 
Theorem FORALL_VECTOR_3 : forall A:set, A <> Empty -> forall P:set -> prop, (forall v :e A :^: idx_n 3, P v) <-> forall x y z :e A, P (vector A (idx_n 3) (seq_cons x (seq_cons y (seq_cons z seq_nil)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2106 / FORALL_VECTOR_4   (hash md5:15da557f668e1c346497837801271149)
// not bridged: 
Theorem FORALL_VECTOR_4 : forall A:set, A <> Empty -> forall P:set -> prop, (forall v :e A :^: idx_n 4, P v) <-> forall w x y z :e A, P (vector A (idx_n 4) (seq_cons w (seq_cons x (seq_cons y (seq_cons z seq_nil))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2114 / EXISTS_VECTOR_1   (hash md5:89221940c60151935e699eda7f8486b8)
// not bridged: 
Theorem EXISTS_VECTOR_1 : forall A:set, A <> Empty -> forall P:set -> prop, (exists v :e A :^: idx 1, P v) <-> exists x :e A, P (vector A 1 (seq_cons x seq_nil)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2119 / EXISTS_VECTOR_2   (hash md5:2673a43720e33c9f34698aee67dfcd1b)
// not bridged: 
Theorem EXISTS_VECTOR_2 : forall A:set, A <> Empty -> forall P:set -> prop, (exists v :e A :^: idx_n 2, P v) <-> exists x y :e A, P (vector A (idx_n 2) (seq_cons x (seq_cons y seq_nil))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2124 / EXISTS_VECTOR_3   (hash md5:0aa1508853de995481e37509cffdb4af)
// not bridged: 
Theorem EXISTS_VECTOR_3 : forall A:set, A <> Empty -> forall P:set -> prop, (exists v :e A :^: idx_n 3, P v) <-> exists x y z :e A, P (vector A (idx_n 3) (seq_cons x (seq_cons y (seq_cons z seq_nil)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2129 / EXISTS_VECTOR_4   (hash md5:7df24b805384f59c877a22e872b78d7f)
// not bridged: 
Theorem EXISTS_VECTOR_4 : forall A:set, A <> Empty -> forall P:set -> prop, (exists v :e A :^: idx_n 4, P v) <-> exists w x y z :e A, P (vector A (idx_n 4) (seq_cons w (seq_cons x (seq_cons y (seq_cons z seq_nil))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2134 / VECTOR_EXPAND_1   (hash md5:5c91921ded0d284cfc3de0910ba81e1c)
// not bridged: 
Theorem VECTOR_EXPAND_1 : forall x :e R :^: idx 1, x = vector R 1 (seq_cons (x 1) seq_nil).
Admitted.

// HOL Light: Multivariate/vectors.ml:2138 / VECTOR_EXPAND_2   (hash md5:b217cd83d7d6016a60d4bd8e63d3fee8)
// not bridged: 
Theorem VECTOR_EXPAND_2 : forall x :e R :^: idx_n 2, x = vector R (idx_n 2) (seq_cons (x 1) (seq_cons (x 2) seq_nil)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2142 / VECTOR_EXPAND_3   (hash md5:3f8048d0fd1ad83319bcac68de722b90)
// not bridged: 
Theorem VECTOR_EXPAND_3 : forall x :e R :^: idx_n 3, x = vector R (idx_n 3) (seq_cons (x 1) (seq_cons (x 2) (seq_cons (x 3) seq_nil))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2146 / VECTOR_EXPAND_4   (hash md5:61f2709b34a47978a7d2638b3821abc8)
// not bridged: 
Theorem VECTOR_EXPAND_4 : forall x :e R :^: idx_n 4, x = vector R (idx_n 4) (seq_cons (x 1) (seq_cons (x 2) (seq_cons (x 3) (seq_cons (x 4) seq_nil)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2154 / linear   (hash md5:5fe09edb5a81be186bc7ca49079e1cdb)
// not bridged: 
Theorem linear_thm : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (linear M N f <-> (forall x y :e R :^: idx M, f (vector_add M x y) = vector_add N (f x) (f y)) /\ forall c :e R, forall x :e R :^: idx M, f (vector_mul M c x) = vector_mul N c (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2159 / LINEAR_COMPOSE_CMUL   (hash md5:f816cb042c4e0b2b1d384e6f6f9ded1a)
// not bridged: 
Theorem LINEAR_COMPOSE_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall c :e R, linear B A f -> linear B A (fun x:set => vector_mul A c (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2163 / LINEAR_COMPOSE_NEG   (hash md5:d21d5ec25b28dfc6ae685a44a895337f)
// not bridged: 
Theorem LINEAR_COMPOSE_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> linear A B f -> linear A B (fun x:set => vector_neg B (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2167 / LINEAR_COMPOSE_NEG_EQ   (hash md5:b0947c13e347e6d5ee2b9f9d8fb6c44e)
// not bridged: 
Theorem LINEAR_COMPOSE_NEG_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (linear M N (fun x:set => vector_neg N (f x)) <-> linear M N f).
Admitted.

// HOL Light: Multivariate/vectors.ml:2174 / LINEAR_COMPOSE_ADD   (hash md5:ce17d4e893dc1707cdad2667904fdb43)
// not bridged: 
Theorem LINEAR_COMPOSE_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx B) -> linear A B f /\ linear A B g -> linear A B (fun x:set => vector_add B (f x) (g x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2178 / LINEAR_COMPOSE_SUB   (hash md5:b094dbd08b0e4c60e36bd62885014eec)
// not bridged: 
Theorem LINEAR_COMPOSE_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx B) -> linear A B f /\ linear A B g -> linear A B (fun x:set => vector_sub B (f x) (g x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2182 / LINEAR_COMPOSE   (hash md5:e0b9f07b4aaa811debbf91e705f242a1)
// not bridged: 
Theorem LINEAR_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx B, g x :e R :^: idx C) -> linear A B f /\ linear B C g -> linear A C (fun x:set => g (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2186 / LINEAR_ID   (hash md5:2e543facfe7ab95edd88d1f85250a0ba)
// not bridged: 
Theorem LINEAR_ID : forall A:set, A <> Empty -> linear A A (fun x:set => x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2190 / LINEAR_I   (hash md5:2c6cc5822ebf6fab9a04537a0fc283b7)
// not bridged: 
Theorem LINEAR_I : forall A:set, A <> Empty -> linear A A (fun x:set => x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2194 / LINEAR_ZERO   (hash md5:3e85588f99c027419020a9c3bb2a2e92)
// not bridged: 
Theorem LINEAR_ZERO : forall A B:set, A <> Empty -> B <> Empty -> linear A B (fun x:set => vec B 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:2198 / LINEAR_NEGATION   (hash md5:55c0379c34824a8dde094e27cf754430)
// not bridged: 
Theorem LINEAR_NEGATION : forall A:set, A <> Empty -> linear A A (vector_neg A).
Admitted.

// HOL Light: Multivariate/vectors.ml:2202 / LINEAR_COMPOSE_VSUM   (hash md5:bf5927073b18c6151a50ecf419dc42f9)
// not bridged: 
Theorem LINEAR_COMPOSE_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set -> set, (forall x :e C, forall y :e R :^: idx B, f x y :e R :^: idx A) -> forall s c= C, finite s /\ (forall a :e C, a :e s -> linear B A (f a)) -> linear B A (fun x:set => vsum C A s (fun a:set => f a x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2210 / LINEAR_VMUL_COMPONENT   (hash md5:5557808ec6606110791472ee343e833d)
// not bridged: 
Theorem LINEAR_VMUL_COMPONENT : forall A M N:set, A <> Empty -> M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall v :e R :^: idx A, forall k :e omega, linear M N f /\ (1 <= k /\ k <= dimindex N) -> linear M A (fun x:set => vector_mul A (f x k) v).
Admitted.

// HOL Light: Multivariate/vectors.ml:2217 / LINEAR_0   (hash md5:9b93122294d87d1529f3bf7c5635604c)
// not bridged: 
Theorem LINEAR_0 : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> linear A B f -> f (vec A 0) = vec B 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2221 / LINEAR_CMUL   (hash md5:bc7d37b0bf3ae1f45ec2969bf4512d1d)
// not bridged: 
Theorem LINEAR_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall c :e R, forall x :e R :^: idx A, linear A B f -> f (vector_mul A c x) = vector_mul B c (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2225 / LINEAR_NEG   (hash md5:d8a2430bebb254206193a53f20d77511)
// not bridged: 
Theorem LINEAR_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall x :e R :^: idx A, linear A B f -> f (vector_neg A x) = vector_neg B (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2229 / LINEAR_ADD   (hash md5:80767b008813f5a667ce3d3fa0d64983)
// not bridged: 
Theorem LINEAR_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall x y :e R :^: idx A, linear A B f -> f (vector_add A x y) = vector_add B (f x) (f y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2233 / LINEAR_SUB   (hash md5:cd13c97ced5bd5ecbcdd51a8b5489164)
// not bridged: 
Theorem LINEAR_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall x y :e R :^: idx A, linear A B f -> f (vector_sub A x y) = vector_sub B (f x) (f y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2237 / LINEAR_VSUM   (hash md5:9893a80d3656ebaa1991be330f182b0b)
// not bridged: 
Theorem LINEAR_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e C, g x :e R :^: idx A) -> forall s c= C, linear A B f /\ finite s -> f (vsum C A s g) = vsum C B s (fun x:set => f (g x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2244 / LINEAR_VSUM_MUL   (hash md5:5349b184fac547b93c62d7c22a964727)
// not bridged: 
Theorem LINEAR_VSUM_MUL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= C, forall c:set -> set, (forall x :e C, c x :e R) -> forall v:set -> set, (forall x :e C, v x :e R :^: idx A) -> linear A B f /\ finite s -> f (vsum C A s (fun i:set => vector_mul A (c i) (v i))) = vsum C B s (fun i:set => vector_mul B (c i) (f (v i))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2250 / LINEAR_INJECTIVE_0   (hash md5:b99e8fb233192f1d76f161c4a912ed12)
// not bridged: 
Theorem LINEAR_INJECTIVE_0 : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> linear B A f -> ((forall x y :e R :^: idx B, f x = f y -> x = y) <-> forall x :e R :^: idx B, f x = vec A 0 -> x = vec B 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:2258 / LINEAR_BOUNDED   (hash md5:272b276c6e03bc877adfbfed82da7c24)
// not bridged: 
Theorem LINEAR_BOUNDED : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> exists B :e R, forall x :e R :^: idx M, vector_norm N (f x) <= B * vector_norm M x.
Admitted.

// HOL Light: Multivariate/vectors.ml:2271 / LINEAR_BOUNDED_POS   (hash md5:cb925300415cf2b7dc3fe380caf3f67b)
// not bridged: 
Theorem LINEAR_BOUNDED_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> exists B :e R, 0 < B /\ forall x :e R :^: idx M, vector_norm N (f x) <= B * vector_norm M x.
Admitted.

// HOL Light: Multivariate/vectors.ml:2281 / SYMMETRIC_LINEAR_IMAGE   (hash md5:e19c6cd3f0f32407791674df7e5dd101)
// not bridged: 
Theorem SYMMETRIC_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, (forall x :e R :^: idx A, x :e s -> vector_neg A x :e s) /\ linear A B f -> forall x :e R :^: idx B, x :e {f x | x :e s} -> vector_neg B x :e {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:2291 / bilinear   (hash md5:1e3983ea2a32155a0b84c5ed208896c4)
// not bridged: 
Theorem bilinear_thm : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set -> set, (forall x :e R :^: idx C, forall y :e R :^: idx A, f x y :e R :^: idx B) -> (bilinear A B C f <-> (forall x :e R :^: idx C, linear A B (f x)) /\ forall y :e R :^: idx A, linear C B (fun x:set => f x y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2294 / BILINEAR_SWAP   (hash md5:c670dc0034f12cfae2eb9aacc0745e89)
// not bridged: 
Theorem BILINEAR_SWAP : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall op:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, op x y :e R :^: idx P) -> (bilinear M P N (fun x:set => fun y:set => op y x) <-> bilinear N P M op).
Admitted.

// HOL Light: Multivariate/vectors.ml:2299 / BILINEAR_LADD   (hash md5:4258500076c681b06b7288edd4355b88)
// not bridged: 
Theorem BILINEAR_LADD : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx B, forall y :e R :^: idx A, h x y :e R :^: idx C) -> forall x y :e R :^: idx B, forall z :e R :^: idx A, bilinear A C B h -> h (vector_add B x y) z = vector_add C (h x z) (h y z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2303 / BILINEAR_RADD   (hash md5:06a7ec210ab0929eb7c7af780c7f145a)
// not bridged: 
Theorem BILINEAR_RADD : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx A, forall y :e R :^: idx B, h x y :e R :^: idx C) -> forall x :e R :^: idx A, forall y z :e R :^: idx B, bilinear B C A h -> h x (vector_add B y z) = vector_add C (h x y) (h x z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2307 / BILINEAR_LMUL   (hash md5:63875bad67644eec75e5618aa526698d)
// not bridged: 
Theorem BILINEAR_LMUL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx B, forall y :e R :^: idx A, h x y :e R :^: idx C) -> forall c :e R, forall x :e R :^: idx B, forall y :e R :^: idx A, bilinear A C B h -> h (vector_mul B c x) y = vector_mul C c (h x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2311 / BILINEAR_RMUL   (hash md5:92fb591230d00e66a89f0a1c3d2aea10)
// not bridged: 
Theorem BILINEAR_RMUL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx A, forall y :e R :^: idx B, h x y :e R :^: idx C) -> forall c :e R, forall x :e R :^: idx A, forall y :e R :^: idx B, bilinear B C A h -> h x (vector_mul B c y) = vector_mul C c (h x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2315 / BILINEAR_LNEG   (hash md5:fdadc320ef524baf7a3ee37586dd3362)
// not bridged: 
Theorem BILINEAR_LNEG : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx B, forall y :e R :^: idx A, h x y :e R :^: idx C) -> forall x :e R :^: idx B, forall y :e R :^: idx A, bilinear A C B h -> h (vector_neg B x) y = vector_neg C (h x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2319 / BILINEAR_RNEG   (hash md5:74304212001169c5f5fcd1ba40db5532)
// not bridged: 
Theorem BILINEAR_RNEG : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx A, forall y :e R :^: idx B, h x y :e R :^: idx C) -> forall x :e R :^: idx A, forall y :e R :^: idx B, bilinear B C A h -> h x (vector_neg B y) = vector_neg C (h x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2323 / BILINEAR_LZERO   (hash md5:71e87e03bdb23ca40084dad3f452222f)
// not bridged: 
Theorem BILINEAR_LZERO : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx B, forall y :e R :^: idx A, h x y :e R :^: idx C) -> forall x :e R :^: idx A, bilinear A C B h -> h (vec B 0) x = vec C 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2328 / BILINEAR_RZERO   (hash md5:7e2fc011b666e8a94e97ffb4762510b1)
// not bridged: 
Theorem BILINEAR_RZERO : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx A, forall y :e R :^: idx B, h x y :e R :^: idx C) -> forall x :e R :^: idx A, bilinear B C A h -> h x (vec B 0) = vec C 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2333 / BILINEAR_LSUB   (hash md5:2d9c53bf9f585c725da2d3e322ef106d)
// not bridged: 
Theorem BILINEAR_LSUB : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx B, forall y :e R :^: idx A, h x y :e R :^: idx C) -> forall x y :e R :^: idx B, forall z :e R :^: idx A, bilinear A C B h -> h (vector_sub B x y) z = vector_sub C (h x z) (h y z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2337 / BILINEAR_RSUB   (hash md5:5935fbf19781059e0012525b4587e784)
// not bridged: 
Theorem BILINEAR_RSUB : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx A, forall y :e R :^: idx B, h x y :e R :^: idx C) -> forall x :e R :^: idx A, forall y z :e R :^: idx B, bilinear B C A h -> h x (vector_sub B y z) = vector_sub C (h x y) (h x z).
Admitted.

// HOL Light: Multivariate/vectors.ml:2341 / BILINEAR_LSUM   (hash md5:1e62f8d9e0a84ac7a8ebb4d7202e3a3e)
// not bridged: 
Theorem BILINEAR_LSUM : forall A M N P:set, A <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, bop x y :e R :^: idx P) -> forall f:set -> set, (forall x :e A, f x :e R :^: idx M) -> forall s c= A, forall y :e R :^: idx N, bilinear N P M bop /\ finite s -> bop (vsum A M s f) y = vsum A P s (fun i:set => bop (f i) y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2352 / BILINEAR_RSUM   (hash md5:911a929737245383b81acf1a3544588e)
// not bridged: 
Theorem BILINEAR_RSUM : forall A M N P:set, A <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, bop x y :e R :^: idx P) -> forall f:set -> set, (forall x :e A, f x :e R :^: idx N) -> forall s c= A, forall x :e R :^: idx M, bilinear N P M bop /\ finite s -> bop x (vsum A N s f) = vsum A P s (fun i:set => bop x (f i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2363 / BILINEAR_VSUM   (hash md5:0985485627a0987b587b3d0f1e30fa42)
// not bridged: 
Theorem BILINEAR_VSUM : forall A B M N P:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> P <> Empty -> forall s c= A, forall t c= B, forall f:set -> set, (forall x :e A, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e B, g x :e R :^: idx N) -> forall h:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, h x y :e R :^: idx P) -> bilinear N P M h /\ (finite s /\ finite t) -> h (vsum A M s f) (vsum B N t g) = vsum (A :*: B) P (s :*: t) (fun p:set => h (f (p 0)) (g (p 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:2375 / BILINEAR_BOUNDED   (hash md5:10227d818c451d8329b250cbb11f8b59)
// not bridged: 
Theorem BILINEAR_BOUNDED : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, h x y :e R :^: idx P) -> bilinear N P M h -> exists B :e R, forall x :e R :^: idx M, forall y :e R :^: idx N, vector_norm P (h x y) <= B * vector_norm M x * vector_norm N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:2394 / BILINEAR_BOUNDED_POS   (hash md5:5a57bb6016961d4e9778a98b5895fad7)
// not bridged: 
Theorem BILINEAR_BOUNDED_POS : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall h:set -> set -> set, (forall x :e R :^: idx A, forall y :e R :^: idx B, h x y :e R :^: idx C) -> bilinear B C A h -> exists B0 :e R, 0 < B0 /\ forall x :e R :^: idx A, forall y :e R :^: idx B, vector_norm C (h x y) <= B0 * vector_norm A x * vector_norm B y.
Admitted.

// HOL Light: Multivariate/vectors.ml:2406 / BILINEAR_VSUM_PARTIAL_SUC   (hash md5:424b2c8346df51cc7266343c77e62346)
// not bridged: 
Theorem BILINEAR_VSUM_PARTIAL_SUC : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e omega, g x :e R :^: idx N) -> forall h:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, h x y :e R :^: idx P) -> forall m n :e omega, bilinear N P M h -> vsum omega P {i :e omega | m <= i /\ i <= n} (fun k:set => h (f k) (vector_sub N (g (k + 1)) (g k))) = if m <= n then vector_sub P (vector_sub P (h (f (n + 1)) (g (n + 1))) (h (f m) (g m))) (vsum omega P {i :e omega | m <= i /\ i <= n} (fun k:set => h (vector_sub M (f (k + 1)) (f k)) (g (k + 1)))) else vec P 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2427 / BILINEAR_VSUM_PARTIAL_PRE   (hash md5:c2eff8b31461cb6de318968d35f0b533)
// not bridged: 
Theorem BILINEAR_VSUM_PARTIAL_PRE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e omega, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e omega, g x :e R :^: idx N) -> forall h:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, h x y :e R :^: idx P) -> forall m n :e omega, bilinear N P M h -> vsum omega P {i :e omega | m <= i /\ i <= n} (fun k:set => h (f k) (vector_sub N (g k) (g (minus_nat k 1)))) = if m <= n then vector_sub P (vector_sub P (h (f (n + 1)) (g n)) (h (f m) (g (minus_nat m 1)))) (vsum omega P {i :e omega | m <= i /\ i <= n} (fun k:set => h (vector_sub M (f (k + 1)) (f k)) (g k))) else vec P 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2440 / BILINEAR_VSUM_CONVOLUTION_1   (hash md5:8d33435ba1286cd95c7f466f7d102f49)
// not bridged: 
Theorem BILINEAR_VSUM_CONVOLUTION_1 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, bop x y :e R :^: idx P) -> forall a:set -> set, (forall x :e omega, a x :e R :^: idx M) -> forall b:set -> set, (forall x :e omega, b x :e R :^: idx N) -> forall n :e omega, bilinear N P M bop -> vsum omega P {i :e omega | 0 <= i /\ i <= n} (fun m:set => vsum omega P {i :e omega | 0 <= i /\ i <= m} (fun i:set => bop (a i) (b (minus_nat m i)))) = vsum omega P {i :e omega | 0 <= i /\ i <= n} (fun m:set => bop (a m) (vsum omega N {i :e omega | 0 <= i /\ i <= minus_nat n m} b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2454 / BILINEAR_VSUM_CONVOLUTION_2   (hash md5:d08e9d92b183ecc8d06d16ae058eeddf)
// not bridged: 
Theorem BILINEAR_VSUM_CONVOLUTION_2 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall bop:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, bop x y :e R :^: idx P) -> forall a:set -> set, (forall x :e omega, a x :e R :^: idx M) -> forall b:set -> set, (forall x :e omega, b x :e R :^: idx N) -> forall n :e omega, bilinear N P M bop -> vsum omega P {i :e omega | 0 <= i /\ i <= n} (fun m:set => vsum omega P {i :e omega | 0 <= i /\ i <= m} (fun k:set => vsum omega P {i :e omega | 0 <= i /\ i <= k} (fun i:set => bop (a i) (b (minus_nat k i))))) = vsum omega P {i :e omega | 0 <= i /\ i <= n} (fun m:set => bop (vsum omega M {i :e omega | 0 <= i /\ i <= m} a) (vsum omega N {i :e omega | 0 <= i /\ i <= minus_nat n m} b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2478 / adjoint   (hash md5:fa272d6e103239f740bc96622404de8a)
// no native statement (pending_mapping): literal fact only

// HOL Light: Multivariate/vectors.ml:2481 / ADJOINT_WORKS   (hash md5:de4a7cfab1fa604488e2b70ae8c98bc3)
// not bridged: 
Theorem ADJOINT_WORKS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> forall x :e R :^: idx M, forall y :e R :^: idx N, dot N (f x) y = dot M x (adjoint M N f y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2494 / ADJOINT_LINEAR   (hash md5:919d2eaf83789f85463887daeee9e012)
// not bridged: 
Theorem ADJOINT_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> linear N M (adjoint M N f).
Admitted.

// HOL Light: Multivariate/vectors.ml:2499 / ADJOINT_CLAUSES   (hash md5:f0baa612bffd5b1a5135943ed35c9764)
// not bridged: 
Theorem ADJOINT_CLAUSES : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> (forall x :e R :^: idx M, forall y :e R :^: idx N, dot M x (adjoint M N f y) = dot N (f x) y) /\ forall x :e R :^: idx M, forall y :e R :^: idx N, dot M (adjoint M N f y) x = dot N y (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2505 / ADJOINT_ADJOINT   (hash md5:80217824ad908d65385055c621730ddb)
// not bridged: 
Theorem ADJOINT_ADJOINT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> forall x :e R :^: idx M, adjoint N M (adjoint M N f) x = f x.
Admitted.

// HOL Light: Multivariate/vectors.ml:2509 / ADJOINT_UNIQUE   (hash md5:3dbb2f8b034dee509afa9153aee183f4)
// not bridged: 
Theorem ADJOINT_UNIQUE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall f':set -> set, (forall x :e R :^: idx A, f' x :e R :^: idx B) -> linear B A f /\ (forall x :e R :^: idx A, forall y :e R :^: idx B, dot B (f' x) y = dot A x (f y)) -> forall x :e R :^: idx A, f' x = adjoint B A f x.
Admitted.

// HOL Light: Multivariate/vectors.ml:2514 / ADJOINT_COMPOSE   (hash md5:d301ead80310dc1ada158e9c59678ce0)
// not bridged: 
Theorem ADJOINT_COMPOSE : forall A N:set, A <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> linear N A f /\ linear N N g -> forall x :e R :^: idx A, adjoint N A (fun x:set => f (g x)) x = adjoint N N g (adjoint N A f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2520 / SELF_ADJOINT_COMPOSE   (hash md5:93e19a0057a6f9f4d38c571b00b40d0b)
// not bridged: 
Theorem SELF_ADJOINT_COMPOSE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> linear N N f /\ (linear N N g /\ ((forall x :e R :^: idx N, adjoint N N f x = f x) /\ (forall x :e R :^: idx N, adjoint N N g x = g x))) -> ((forall x :e R :^: idx N, adjoint N N (fun x:set => f (g x)) x = f (g x)) <-> forall x :e R :^: idx N, f (g x) = g (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2526 / SELF_ADJOINT_ORTHOGONAL_EIGENVECTORS   (hash md5:42c0e78c246ab7b1b6a844ed89384142)
// not bridged: 
Theorem SELF_ADJOINT_ORTHOGONAL_EIGENVECTORS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall v w :e R :^: idx N, forall a b :e R, linear N N f /\ ((forall x :e R :^: idx N, adjoint N N f x = f x) /\ (f v = vector_mul N a v /\ (f w = vector_mul N b w /\ ~ a = b))) -> orthogonal N v w.
Admitted.

// HOL Light: Multivariate/vectors.ml:2534 / ORTHOGONAL_PROJECTION_ALT   (hash md5:6c7182df95f57b8f3f8614cd85db02b9)
// not bridged: 
Theorem ORTHOGONAL_PROJECTION_ALT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> ((forall x y :e R :^: idx N, orthogonal N (vector_sub N (f x) x) (vector_sub N (f x) (f y))) <-> forall x y :e R :^: idx N, orthogonal N (vector_sub N (f x) x) (f y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2544 / ORTHOGONAL_PROJECTION_EQ_SELF_ADJOINT_IDEMPOTENT   (hash md5:2cac3f4e34eb7d2539682b8849fc43a7)
// not bridged: 
Theorem ORTHOGONAL_PROJECTION_EQ_SELF_ADJOINT_IDEMPOTENT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> ((forall x y :e R :^: idx N, orthogonal N (vector_sub N (f x) x) (vector_sub N (f x) (f y))) <-> (forall x :e R :^: idx N, adjoint N N f x = f x) /\ forall x :e R :^: idx N, f (f x) = f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:2571 / LIPSCHITZ_ON_POS   (hash md5:84817d38597508586cadda03b4fcfd87)
// not bridged: 
Theorem LIPSCHITZ_ON_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) <-> exists B :e R, 0 < B /\ forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2588 / LIPSCHITZ_POS   (hash md5:9f60281c80607a46c9df31b57248fcef)
// not bridged: 
Theorem LIPSCHITZ_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> ((exists B :e R, forall x y :e R :^: idx M, vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) <-> exists B :e R, 0 < B /\ forall x y :e R :^: idx M, vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2596 / LIPSCHITZ_ON_COMPOSE   (hash md5:54819fecbdbc9f1ce76178f7046c4275)
// not bridged: 
Theorem LIPSCHITZ_ON_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> forall s c= R :^: idx M, forall t c= R :^: idx N, (exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) /\ ((exists B :e R, forall x y :e R :^: idx N, x :e t /\ y :e t -> vector_norm P (vector_sub P (g x) (g y)) <= B * vector_norm N (vector_sub N x y)) /\ {f x | x :e s} c= t) -> exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm P (vector_sub P (g (f x)) (g (f y))) <= B * vector_norm M (vector_sub M x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2614 / LINEAR_IMP_LIPSCHITZ   (hash md5:5e7fc34abf406cd5be5f71df75b0dc56)
// not bridged: 
Theorem LINEAR_IMP_LIPSCHITZ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> exists B :e R, forall x y :e R :^: idx M, vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2619 / LIPSCHITZ_ON_COMPONENTWISE   (hash md5:2fefb6a85fdc1fd3883b0f47c9b316ae)
// not bridged: 
Theorem LIPSCHITZ_ON_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, (exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> vector_norm N (vector_sub N (f x) (f y)) <= B * vector_norm M (vector_sub M x y)) <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> exists B :e R, forall x y :e R :^: idx M, x :e s /\ y :e s -> abs_SNo (f x i + - f y i) <= B * vector_norm M (vector_sub M x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:2656 / matrix_cmul   (hash md5:7d5bb3314437e77adaa0ff4cafe67f6f)
// not bridged: 
Theorem matrix_cmul_thm : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall A :e R :^: idx N :^: idx M, matrix_cmul M N c A = fun i :e idx M => fun j :e idx N => c * A i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2659 / matrix_neg   (hash md5:c3ab5759ddc41431ec75cc00233dffc1)
// not bridged: 
Theorem matrix_neg_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_neg M N A = fun i :e idx M => fun j :e idx N => - A i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2662 / matrix_add   (hash md5:de9bf9150b4398f40f5ec9679805f66a)
// not bridged: 
Theorem matrix_add_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_add M N A B = fun i :e idx M => fun j :e idx N => A i j + B i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2665 / matrix_sub   (hash md5:c41818726fd30e76ff9b4bd6ea245214)
// not bridged: 
Theorem matrix_sub_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_sub M N A B = fun i :e idx M => fun j :e idx N => A i j + - B i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2668 / matrix_mul   (hash md5:97b8a30065818a553bc70ba5953146a0)
// not bridged: 
Theorem matrix_mul_thm : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, matrix_mul M N P A B = fun i :e idx M => fun j :e idx P => finsum (idx N) (fun k:set => A i k * B k j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2673 / matrix_vector_mul   (hash md5:a70bd17ab6799204ae421b985ff64945)
// not bridged: 
Theorem matrix_vector_mul_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx N, matrix_vector_mul M N A x = fun i :e idx M => finsum (idx N) (fun j:set => A i j * x j).
Admitted.

// HOL Light: Multivariate/vectors.ml:2677 / vector_matrix_mul   (hash md5:bdcde7521e03397a29d3344275963878)
// not bridged: 
Theorem vector_matrix_mul_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx M, vector_matrix_mul M N x A = fun j :e idx N => finsum (idx M) (fun i:set => A i j * x i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2681 / mat   (hash md5:96584ff3c02765be896d09e757593ddb)
// not bridged: 
Theorem mat_thm : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, mat M N k = fun i :e idx M => fun j :e idx N => if i = j then k else 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2684 / transp   (hash md5:373c936811f3fa6e62e205cb3e04de5e)
// not bridged: 
Theorem transp_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, transp M N A = fun i :e idx N => fun j :e idx M => A j i.
Admitted.

// HOL Light: Multivariate/vectors.ml:2687 / row   (hash md5:3b76afb6c77cb1c58600bcb9bfc5ba6e)
// not bridged: 
Theorem row_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall i :e omega, row M N i A = fun j :e idx N => A i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2690 / column   (hash md5:96eb03a8b3e3e681ff25e5655466f607)
// not bridged: 
Theorem column_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall j :e omega, column M N j A = fun i :e idx M => A i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2693 / rows   (hash md5:0231c3c0dd537c6b28cf89392c6d752a)
// not bridged: 
Theorem rows_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, rows M N A = {row M N i A | i :e omega, 1 <= i /\ i <= dimindex M}.
Admitted.

// HOL Light: Multivariate/vectors.ml:2696 / columns   (hash md5:3cc13a7cd8a5bd5339dcc04857766fd6)
// not bridged: 
Theorem columns_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, columns M N A = {column M N i A | i :e omega, 1 <= i /\ i <= dimindex N}.
Admitted.

// HOL Light: Multivariate/vectors.ml:2699 / MATRIX_CMUL_COMPONENT   (hash md5:fbe425aee1cd362d2f9032fa5264a23b)
// not bridged: 
Theorem MATRIX_CMUL_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall j :e omega, forall c :e R, forall A :e R :^: idx N :^: idx M, forall i :e omega, matrix_cmul M N c A i j = c * A i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2708 / MATRIX_ADD_COMPONENT   (hash md5:0fe58a38a09f544b6d217c384ed44a88)
// not bridged: 
Theorem MATRIX_ADD_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, forall i j :e omega, matrix_add M N A B i j = A i j + B i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2717 / MATRIX_SUB_COMPONENT   (hash md5:7abe6a147ee351955bd11538a5b0a5d6)
// not bridged: 
Theorem MATRIX_SUB_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, forall i j :e omega, matrix_sub M N A B i j = A i j + - B i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2726 / MATRIX_NEG_COMPONENT   (hash md5:aac23cc3e37c240d0ee038a3fd351960)
// not bridged: 
Theorem MATRIX_NEG_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall i j :e omega, matrix_neg M N A i j = - A i j.
Admitted.

// HOL Light: Multivariate/vectors.ml:2735 / TRANSP_COMPONENT   (hash md5:48bc29ed11a821144db750d222aa4807)
// not bridged: 
Theorem TRANSP_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall i j :e omega, transp M N A i j = A j i.
Admitted.

// HOL Light: Multivariate/vectors.ml:2746 / MAT_COMPONENT   (hash md5:188d9c2a7aafb66a29715d00549ed127)
// not bridged: 
Theorem MAT_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall n i j :e omega, 1 <= i /\ (i <= dimindex M /\ (1 <= j /\ j <= dimindex N)) -> mat M N n i j = if i = j then n else 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2753 / MAT_0_COMPONENT   (hash md5:87448dabd086975234296add512d0e5e)
// not bridged: 
Theorem MAT_0_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall i j :e omega, mat M N 0 i j = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2762 / MATRIX_ADD_ROW   (hash md5:feec5e7373e70a0b891cc72a1eda113a)
// not bridged: 
Theorem MATRIX_ADD_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall X Y :e R :^: idx M :^: idx N, forall i :e omega, matrix_add N M X Y i = vector_add M (X i) (Y i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2766 / MATRIX_SUB_ROW   (hash md5:6d06607846e664470446102010e53afd)
// not bridged: 
Theorem MATRIX_SUB_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall X Y :e R :^: idx M :^: idx N, forall i :e omega, matrix_sub N M X Y i = vector_sub M (X i) (Y i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2770 / MATRIX_NEG_ROW   (hash md5:d89525a758393040ec8310b3e4cf4af0)
// not bridged: 
Theorem MATRIX_NEG_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall X :e R :^: idx M :^: idx N, forall i :e omega, matrix_neg N M X i = vector_neg M (X i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2774 / MATRIX_CMUL_ROW   (hash md5:5927e81fab58fd89d0cb0431b7dc45d5)
// not bridged: 
Theorem MATRIX_CMUL_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall X :e R :^: idx M :^: idx N, forall i :e omega, matrix_cmul N M c X i = vector_mul M c (X i).
Admitted.

// HOL Light: Multivariate/vectors.ml:2778 / MAT_0_ROW   (hash md5:44d0a27c5f6e079c1eac93551299dca3)
// not bridged: 
Theorem MAT_0_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall i :e omega, mat N M 0 i = vec M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2786 / symmetric_matrix   (hash md5:928569d352a7edba10353e0dff95aeb2)
// not bridged: 
Theorem symmetric_matrix_thm : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, symmetric_matrix_hl N A <-> transp N N A = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2789 / normal_matrix   (hash md5:65c73739a2ff28331d7f58ecb01104de)
// not bridged: 
Theorem normal_matrix_thm : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, normal_matrix_hl N A <-> matrix_mul N N N (transp N N A) A = matrix_mul N N N A (transp N N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:2792 / SYMMETRIC_IMP_NORMAL_MATRIX   (hash md5:5a27f2695207bceb9f9436d79034f6ac)
// not bridged: 
Theorem SYMMETRIC_IMP_NORMAL_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, symmetric_matrix_hl N A -> normal_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2819 / MAT_CMUL   (hash md5:2d50d66fd582184f1cf26c31d854ad22)
// not bridged: 
Theorem MAT_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall a :e omega, mat B A a = matrix_cmul B A a (mat B A 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:2824 / ROW_0   (hash md5:cf383cf300bc7029129273c7bc20abea)
// not bridged: 
Theorem ROW_0 : forall N:set, N <> Empty -> forall i :e omega, row N N i (mat N N 0) = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2828 / COLUMN_0   (hash md5:4a4350489f5ac427cabc87300d6c20bc)
// not bridged: 
Theorem COLUMN_0 : forall N:set, N <> Empty -> forall i :e omega, column N N i (mat N N 0) = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2832 / MATRIX_CMUL_ASSOC   (hash md5:c38feacc26c55af37941c21290c7ea22)
// not bridged: 
Theorem MATRIX_CMUL_ASSOC : forall M N:set, M <> Empty -> N <> Empty -> forall a b :e R, forall X :e R :^: idx M :^: idx N, matrix_cmul N M a (matrix_cmul N M b X) = matrix_cmul N M (a * b) X.
Admitted.

// HOL Light: Multivariate/vectors.ml:2836 / MATRIX_CMUL_LID   (hash md5:7e699c753dc0298b5268bef56556d249)
// not bridged: 
Theorem MATRIX_CMUL_LID : forall M N:set, M <> Empty -> N <> Empty -> forall X :e R :^: idx M :^: idx N, matrix_cmul N M 1 X = X.
Admitted.

// HOL Light: Multivariate/vectors.ml:2840 / MATRIX_ADD_SYM   (hash md5:d8125430a0800d543d649870e4722308)
// not bridged: 
Theorem MATRIX_ADD_SYM : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_add M N A B = matrix_add M N B A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2844 / MATRIX_ADD_ASSOC   (hash md5:a9dcbc1e4830d920f408f0e38440b779)
// not bridged: 
Theorem MATRIX_ADD_ASSOC : forall M N:set, M <> Empty -> N <> Empty -> forall A B C :e R :^: idx N :^: idx M, matrix_add M N A (matrix_add M N B C) = matrix_add M N (matrix_add M N A B) C.
Admitted.

// HOL Light: Multivariate/vectors.ml:2848 / MATRIX_ADD_LID   (hash md5:a73974115305dcdf9f15e11cc00d592f)
// not bridged: 
Theorem MATRIX_ADD_LID : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e R :^: idx A :^: idx B, matrix_add B A (mat B A 0) A0 = A0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2852 / MATRIX_ADD_RID   (hash md5:74482b9ffe7df4c71a4188974e85aed6)
// not bridged: 
Theorem MATRIX_ADD_RID : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e R :^: idx A :^: idx B, matrix_add B A A0 (mat B A 0) = A0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2856 / MATRIX_ADD_LNEG   (hash md5:f3873266cb6e1f8575b050fb37b384a2)
// not bridged: 
Theorem MATRIX_ADD_LNEG : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e R :^: idx A :^: idx B, matrix_add B A (matrix_neg B A A0) A0 = mat B A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2860 / MATRIX_ADD_RNEG   (hash md5:c022cc5081b35b23c3e66b4a205b5e41)
// not bridged: 
Theorem MATRIX_ADD_RNEG : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e R :^: idx A :^: idx B, matrix_add B A A0 (matrix_neg B A A0) = mat B A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2864 / MATRIX_SUB   (hash md5:6a5fb84e55e207d3bcc4bb15423e0f8d)
// not bridged: 
Theorem MATRIX_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_sub M N A B = matrix_add M N A (matrix_neg M N B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2868 / MATRIX_SUB_REFL   (hash md5:8b248f581e82a4b39a8ee310f2aae587)
// not bridged: 
Theorem MATRIX_SUB_REFL : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e R :^: idx A :^: idx B, matrix_sub B A A0 A0 = mat B A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2872 / MATRIX_SUB_EQ   (hash md5:406be5d01d64e38165d918edb71543c0)
// not bridged: 
Theorem MATRIX_SUB_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_sub M N A B = mat M N 0 <-> A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:2876 / MATRIX_SUB_ADD   (hash md5:553557649d922e7d0d4488835dbc32ee)
// not bridged: 
Theorem MATRIX_SUB_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_add M N (matrix_sub M N A B) B = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2880 / MATRIX_SUB_ADD2   (hash md5:112ed3273baaa29e25ef595a75889887)
// not bridged: 
Theorem MATRIX_SUB_ADD2 : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_add M N A (matrix_sub M N B A) = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:2884 / MATRIX_ADD_LDISTRIB   (hash md5:57c670d2a4a88d52c3c0cabc59aa9897)
// not bridged: 
Theorem MATRIX_ADD_LDISTRIB : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B C :e R :^: idx P :^: idx N, matrix_mul M N P A (matrix_add N P B C) = matrix_add M P (matrix_mul M N P A B) (matrix_mul M N P A C).
Admitted.

// HOL Light: Multivariate/vectors.ml:2891 / MATRIX_MUL_LID   (hash md5:af239d282ee0da33a4e0fe22ec0965ca)
// not bridged: 
Theorem MATRIX_MUL_LID : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_mul M M N (mat M M 1) A = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2899 / MATRIX_MUL_RID   (hash md5:c28bb6cc2b132b5bd276cfcb7cc82b98)
// not bridged: 
Theorem MATRIX_MUL_RID : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_mul M N N A (mat N N 1) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2905 / MATRIX_MUL_ASSOC   (hash md5:0dbd79888848d9a6caf2f19c9a94c790)
// not bridged: 
Theorem MATRIX_MUL_ASSOC : forall M N P Q:set, M <> Empty -> N <> Empty -> P <> Empty -> Q <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, forall C :e R :^: idx Q :^: idx P, matrix_mul M N Q A (matrix_mul N P Q B C) = matrix_mul M P Q (matrix_mul M N P A B) C.
Admitted.

// HOL Light: Multivariate/vectors.ml:2912 / MATRIX_MUL_LZERO   (hash md5:fef38dedcd550092ebc2bb8e8c9cad62)
// not bridged: 
Theorem MATRIX_MUL_LZERO : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx P :^: idx N, matrix_mul M N P (mat M N 0) A = mat M P 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2917 / MATRIX_MUL_RZERO   (hash md5:bd8be67357915702b361e3d7eae11a6b)
// not bridged: 
Theorem MATRIX_MUL_RZERO : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_mul M N P A (mat N P 0) = mat M P 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2922 / MATRIX_ADD_RDISTRIB   (hash md5:0c41cfd40795ef54d9f9d0e894061d6c)
// not bridged: 
Theorem MATRIX_ADD_RDISTRIB : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A B :e R :^: idx N :^: idx M, forall C :e R :^: idx P :^: idx N, matrix_mul M N P (matrix_add M N A B) C = matrix_add M P (matrix_mul M N P A C) (matrix_mul M N P B C).
Admitted.

// HOL Light: Multivariate/vectors.ml:2927 / MATRIX_SUB_LDISTRIB   (hash md5:0606f107af1a4a45d3a0e6a035065594)
// not bridged: 
Theorem MATRIX_SUB_LDISTRIB : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B C :e R :^: idx P :^: idx N, matrix_mul M N P A (matrix_sub N P B C) = matrix_sub M P (matrix_mul M N P A B) (matrix_mul M N P A C).
Admitted.

// HOL Light: Multivariate/vectors.ml:2932 / MATRIX_SUB_RDISTRIB   (hash md5:9dd6a2485a475c2539a4732faecea9ff)
// not bridged: 
Theorem MATRIX_SUB_RDISTRIB : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A B :e R :^: idx N :^: idx M, forall C :e R :^: idx P :^: idx N, matrix_mul M N P (matrix_sub M N A B) C = matrix_sub M P (matrix_mul M N P A C) (matrix_mul M N P B C).
Admitted.

// HOL Light: Multivariate/vectors.ml:2937 / MATRIX_MUL_LMUL   (hash md5:3f1cb4b7f3ada058980f8d58b3dbe9c8)
// not bridged: 
Theorem MATRIX_MUL_LMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, forall c :e R, matrix_mul M N P (matrix_cmul M N c A) B = matrix_cmul M P c (matrix_mul M N P A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2942 / MATRIX_MUL_RMUL   (hash md5:6007eedc95d6b311495b0fbb9abc4e5f)
// not bridged: 
Theorem MATRIX_MUL_RMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, forall c :e R, matrix_mul M N P A (matrix_cmul N P c B) = matrix_cmul M P c (matrix_mul M N P A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2948 / MATRIX_CMUL_ADD_LDISTRIB   (hash md5:19bedbb3b0119f61217bc7ff541cd39c)
// not bridged: 
Theorem MATRIX_CMUL_ADD_LDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, forall c :e R, matrix_cmul M N c (matrix_add M N A B) = matrix_add M N (matrix_cmul M N c A) (matrix_cmul M N c B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2952 / MATRIX_CMUL_SUB_LDISTRIB   (hash md5:26dc9ad750ea683571ebfe9f401495fc)
// not bridged: 
Theorem MATRIX_CMUL_SUB_LDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, forall c :e R, matrix_cmul M N c (matrix_sub M N A B) = matrix_sub M N (matrix_cmul M N c A) (matrix_cmul M N c B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2956 / MATRIX_CMUL_ADD_RDISTRIB   (hash md5:50f2519f30c98f14c77c5c1e0876f66d)
// not bridged: 
Theorem MATRIX_CMUL_ADD_RDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall b c :e R, matrix_cmul M N (b + c) A = matrix_add M N (matrix_cmul M N b A) (matrix_cmul M N c A).
Admitted.

// HOL Light: Multivariate/vectors.ml:2960 / MATRIX_CMUL_SUB_RDISTRIB   (hash md5:53ae6c87c6c40a0627e2ff85baf8e22b)
// not bridged: 
Theorem MATRIX_CMUL_SUB_RDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall b c :e R, matrix_cmul M N (b + - c) A = matrix_sub M N (matrix_cmul M N b A) (matrix_cmul M N c A).
Admitted.

// HOL Light: Multivariate/vectors.ml:2964 / MATRIX_CMUL_RZERO   (hash md5:b7f271262f569be2d2966146baadfc53)
// not bridged: 
Theorem MATRIX_CMUL_RZERO : forall A B:set, A <> Empty -> B <> Empty -> forall c :e R, matrix_cmul B A c (mat B A 0) = mat B A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2968 / MATRIX_CMUL_LZERO   (hash md5:bf6645aed3f9789f067aa42f357f9d0c)
// not bridged: 
Theorem MATRIX_CMUL_LZERO : forall A B:set, A <> Empty -> B <> Empty -> forall A0 :e R :^: idx A :^: idx B, matrix_cmul B A 0 A0 = mat B A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2972 / MATRIX_NEG_MINUS1   (hash md5:408b12ed86a57495614f48d34e586065)
// not bridged: 
Theorem MATRIX_NEG_MINUS1 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_neg M N A = matrix_cmul M N (- 1) A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2976 / MATRIX_ADD_AC   (hash md5:c6bb19117bad31289942293dbefbea0e)
// not bridged: 
Theorem MATRIX_ADD_AC : forall M N:set, M <> Empty -> N <> Empty -> forall A B C :e R :^: idx N :^: idx M, matrix_add M N A B = matrix_add M N B A /\ (matrix_add M N (matrix_add M N A B) C = matrix_add M N A (matrix_add M N B C) /\ matrix_add M N A (matrix_add M N B C) = matrix_add M N B (matrix_add M N A C)).
Admitted.

// HOL Light: Multivariate/vectors.ml:2982 / MATRIX_NEG_ADD   (hash md5:e5007424e16822c4cf5508f58132a70c)
// not bridged: 
Theorem MATRIX_NEG_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_neg M N (matrix_add M N A B) = matrix_add M N (matrix_neg M N A) (matrix_neg M N B).
Admitted.

// HOL Light: Multivariate/vectors.ml:2986 / MATRIX_NEG_SUB   (hash md5:104df8ac81f2bb4c2ac7430ac24d015e)
// not bridged: 
Theorem MATRIX_NEG_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, matrix_neg M N (matrix_sub M N A B) = matrix_sub M N B A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2990 / MATRIX_NEG_0   (hash md5:52fbb408d0b89f09a53760f61a1b969f)
// not bridged: 
Theorem MATRIX_NEG_0 : forall A B:set, A <> Empty -> B <> Empty -> matrix_neg B A (mat B A 0) = mat B A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:2994 / MATRIX_SUB_RZERO   (hash md5:e1d5c71b5efba9118629cd06a9286146)
// not bridged: 
Theorem MATRIX_SUB_RZERO : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_sub M N A (mat M N 0) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:2998 / MATRIX_SUB_LZERO   (hash md5:6922abd237b4ac31ec5c5eb26d89b2da)
// not bridged: 
Theorem MATRIX_SUB_LZERO : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_sub M N (mat M N 0) A = matrix_neg M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3002 / MATRIX_NEG_EQ_0   (hash md5:4a292302a4487393d881544374a6eccf)
// not bridged: 
Theorem MATRIX_NEG_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_neg M N A = mat M N 0 <-> A = mat M N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3006 / MATRIX_VECTOR_MUL_ASSOC   (hash md5:c8a2e80a168bac12c7a0802cb189b938)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_ASSOC : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, forall x :e R :^: idx P, matrix_vector_mul M N A (matrix_vector_mul N P B x) = matrix_vector_mul M P (matrix_mul M N P A B) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3014 / MATRIX_VECTOR_MUL_LID   (hash md5:017624cb6d7ebfe617446b68ed8265e1)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_LID : forall N:set, N <> Empty -> forall x :e R :^: idx N, matrix_vector_mul N N (mat N N 1) x = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3022 / MATRIX_VECTOR_MUL_LZERO   (hash md5:c640de3ebd14730076389e45b56f8a69)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_LZERO : forall A N:set, A <> Empty -> N <> Empty -> forall x :e R :^: idx N, matrix_vector_mul A N (mat A N 0) x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3027 / MATRIX_VECTOR_MUL_RZERO   (hash md5:90f8c64380e680ab87c9c79d42a35028)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_RZERO : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_vector_mul N M A (vec M 0) = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3032 / MATRIX_VECTOR_MUL_ADD_LDISTRIB   (hash md5:4f5acc797ab74ca7a270b397c033215e)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_ADD_LDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x y :e R :^: idx M, matrix_vector_mul N M A (vector_add M x y) = vector_add N (matrix_vector_mul N M A x) (matrix_vector_mul N M A y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3037 / MATRIX_VECTOR_MUL_SUB_LDISTRIB   (hash md5:719b3650d9f3af4fed6b962033235267)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_SUB_LDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x y :e R :^: idx M, matrix_vector_mul N M A (vector_sub M x y) = vector_sub N (matrix_vector_mul N M A x) (matrix_vector_mul N M A y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3042 / MATRIX_VECTOR_MUL_ADD_RDISTRIB   (hash md5:a870543e19ebeb94edc2ff4ccde18ef3)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_ADD_RDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx M :^: idx N, forall x :e R :^: idx M, matrix_vector_mul N M (matrix_add N M A B) x = vector_add N (matrix_vector_mul N M A x) (matrix_vector_mul N M B x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3047 / MATRIX_VECTOR_MUL_SUB_RDISTRIB   (hash md5:24313065f950c3f5978f43aab8e2e742)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_SUB_RDISTRIB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx M :^: idx N, forall x :e R :^: idx M, matrix_vector_mul N M (matrix_sub N M A B) x = vector_sub N (matrix_vector_mul N M A x) (matrix_vector_mul N M B x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3052 / MATRIX_VECTOR_MUL_RMUL   (hash md5:2e4597a562867f9cef47907519caf700)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, forall c :e R, matrix_vector_mul N M A (vector_mul M c x) = vector_mul N c (matrix_vector_mul N M A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3057 / MATRIX_MUL_LNEG   (hash md5:40d5fc786a38c6b7ff987b5bfb9d350f)
// not bridged: 
Theorem MATRIX_MUL_LNEG : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, matrix_mul M N P (matrix_neg M N A) B = matrix_neg M P (matrix_mul M N P A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3061 / MATRIX_MUL_RNEG   (hash md5:0a1a31e724adddb4b04166ba1ba67b48)
// not bridged: 
Theorem MATRIX_MUL_RNEG : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, matrix_mul M N P A (matrix_neg N P B) = matrix_neg M P (matrix_mul M N P A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3065 / MATRIX_NEG_NEG   (hash md5:21918859314066f11a4f7dbd8862bc24)
// not bridged: 
Theorem MATRIX_NEG_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_neg M N (matrix_neg M N A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3069 / MATRIX_TRANSP_MUL   (hash md5:fbfc2658cabc3c036c2845999792a363)
// not bridged: 
Theorem MATRIX_TRANSP_MUL : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall A0 :e R :^: idx A :^: idx B, forall B0 :e R :^: idx C :^: idx A, transp B C (matrix_mul B A C A0 B0) = matrix_mul C A B (transp A C B0) (transp B A A0).
Admitted.

// HOL Light: Multivariate/vectors.ml:3074 / TRANSP_EQ_0   (hash md5:7e0d34ba24bd08d0bdde9c6d95e0a831)
// not bridged: 
Theorem TRANSP_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, transp M N A = mat N M 0 <-> A = mat M N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3078 / SYMMETRIC_MATRIX_MUL   (hash md5:7643ca620732b00591a6c634b9e15774)
// not bridged: 
Theorem SYMMETRIC_MATRIX_MUL : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, symmetric_matrix_hl N A /\ symmetric_matrix_hl N B -> (symmetric_matrix_hl N (matrix_mul N N N A B) <-> matrix_mul N N N A B = matrix_mul N N N B A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3084 / MATRIX_EQ   (hash md5:fd6074c387335c3c1d7b1c21b2cbf008)
// not bridged: 
Theorem MATRIX_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, A = B <-> forall x :e R :^: idx N, matrix_vector_mul M N A x = matrix_vector_mul M N B x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3093 / MATRIX_EQ_0   (hash md5:d578eef151df9cf752f0b8818aa7865a)
// not bridged: 
Theorem MATRIX_EQ_0 : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, A = mat N N 0 <-> forall x :e R :^: idx N, matrix_vector_mul N N A x = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3097 / MATRIX_VECTOR_MUL_COMPONENT   (hash md5:88bbb89f7119ea88015340c5de379e47)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx N, forall k :e omega, 1 <= k /\ k <= dimindex M -> matrix_vector_mul M N A x k = dot N (A k) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3102 / DOT_LMUL_MATRIX   (hash md5:6b263270b8496eddf603861d931280a8)
// not bridged: 
Theorem DOT_LMUL_MATRIX : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx M, forall y :e R :^: idx N, dot N (vector_matrix_mul M N x A) y = dot M x (matrix_vector_mul M N A y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3109 / TRANSP_MATRIX_CMUL   (hash md5:9f9c3c7354aa751bec60e3e7436e0d86)
// not bridged: 
Theorem TRANSP_MATRIX_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall c :e R, transp N M (matrix_cmul N M c A) = matrix_cmul M N c (transp N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3113 / SYMMETRIC_MATRIX_CMUL   (hash md5:fd1d6f59d2c47ddbad7afc47f35a5637)
// not bridged: 
Theorem SYMMETRIC_MATRIX_CMUL : forall N:set, N <> Empty -> forall c :e R, forall A :e R :^: idx N :^: idx N, symmetric_matrix_hl N A -> symmetric_matrix_hl N (matrix_cmul N N c A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3118 / TRANSP_MATRIX_ADD   (hash md5:0b9c1230f4cdf089032f1935d96c21c5)
// not bridged: 
Theorem TRANSP_MATRIX_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, transp M N (matrix_add M N A B) = matrix_add N M (transp M N A) (transp M N B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3122 / SYMMETRIC_MATRIX_ADD   (hash md5:e05095dee0d7bd6ba13e4541bfd5a4e1)
// not bridged: 
Theorem SYMMETRIC_MATRIX_ADD : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, symmetric_matrix_hl N A /\ symmetric_matrix_hl N B -> symmetric_matrix_hl N (matrix_add N N A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3128 / TRANSP_MATRIX_SUB   (hash md5:b217604a4bb468191563b5b5ec05cce5)
// not bridged: 
Theorem TRANSP_MATRIX_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, transp M N (matrix_sub M N A B) = matrix_sub N M (transp M N A) (transp M N B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3132 / SYMMETRIC_MATRIX_SUB   (hash md5:6e63f4c9edd24980d867f1c9936480db)
// not bridged: 
Theorem SYMMETRIC_MATRIX_SUB : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, symmetric_matrix_hl N A /\ symmetric_matrix_hl N B -> symmetric_matrix_hl N (matrix_sub N N A B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3138 / TRANSP_MATRIX_NEG   (hash md5:4e131377d003d338fd8750c4d417e707)
// not bridged: 
Theorem TRANSP_MATRIX_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, transp M N (matrix_neg M N A) = matrix_neg N M (transp M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3142 / SYMMETRIC_MATRIX_NEG   (hash md5:6dc117348210c3f1f32214e36001f4bb)
// not bridged: 
Theorem SYMMETRIC_MATRIX_NEG : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, symmetric_matrix_hl N (matrix_neg N N A) <-> symmetric_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3147 / TRANSP_MAT   (hash md5:927597c8abf7760c2047b84184741364)
// not bridged: 
Theorem TRANSP_MAT : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, transp A B (mat A B n) = mat B A n.
Admitted.

// HOL Light: Multivariate/vectors.ml:3151 / TRANSP_TRANSP   (hash md5:28a5c8591b8aea90e49976139188fb9e)
// not bridged: 
Theorem TRANSP_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, transp N M (transp M N A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3155 / SYMMETRIC_MATRIX_MAT   (hash md5:cb475fc87a00502fbf2d1418607cc32d)
// not bridged: 
Theorem SYMMETRIC_MATRIX_MAT : forall A:set, A <> Empty -> forall n :e omega, symmetric_matrix_hl A (mat A A n).
Admitted.

// HOL Light: Multivariate/vectors.ml:3159 / SYMMETRIC_MATRIX_COVARIANCE   (hash md5:00e0b44f9828a7120b4c7da8e89d2fc4)
// not bridged: 
Theorem SYMMETRIC_MATRIX_COVARIANCE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, symmetric_matrix_hl N (matrix_mul N M N (transp M N A) A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3163 / SYMMETRIC_MATRIX_SIMILAR   (hash md5:958a5e019209800280c9bcdf179f640f)
// not bridged: 
Theorem SYMMETRIC_MATRIX_SIMILAR : forall A N:set, A <> Empty -> N <> Empty -> forall A0 :e R :^: idx A :^: idx N, forall B :e R :^: idx N :^: idx N, symmetric_matrix_hl N B -> symmetric_matrix_hl A (matrix_mul A N A (transp N A A0) (matrix_mul N N A B A0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3169 / TRANSP_EQ   (hash md5:e335920a95d4b4a6a8ad458b50fa4b01)
// not bridged: 
Theorem TRANSP_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx M :^: idx N, transp N M A = transp N M B <-> A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:3173 / ROW_TRANSP   (hash md5:f41fb24ee00cd29000da1f7a985a7f5f)
// not bridged: 
Theorem ROW_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall i :e omega, 1 <= i /\ i <= dimindex N -> row N M i (transp M N A) = column M N i A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3178 / COLUMN_TRANSP   (hash md5:857daa8eb114572b05700b0a69a743d5)
// not bridged: 
Theorem COLUMN_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall i :e omega, 1 <= i /\ i <= dimindex M -> column N M i (transp M N A) = row M N i A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3183 / ROWS_TRANSP   (hash md5:20ab2a8d559604b19cbefd913df5429a)
// not bridged: 
Theorem ROWS_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, rows N M (transp M N A) = columns M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3188 / COLUMNS_TRANSP   (hash md5:b83aee599a24b8212cea9103d645f22a)
// not bridged: 
Theorem COLUMNS_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, columns N M (transp M N A) = rows M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3192 / VECTOR_MATRIX_MUL_TRANSP   (hash md5:bda5a2eab7795a19c529e680fee5180a)
// not bridged: 
Theorem VECTOR_MATRIX_MUL_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx N, vector_matrix_mul N M x A = matrix_vector_mul M N (transp N M A) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3197 / MATRIX_VECTOR_MUL_TRANSP   (hash md5:1b30bd3843f077b9c0009abda74bd928)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, matrix_vector_mul N M A x = vector_matrix_mul M N x (transp N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3201 / ROWS_NONEMPTY   (hash md5:4c05154da6ac3edb4714546038b4533d)
// not bridged: 
Theorem ROWS_NONEMPTY : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, ~ rows M N A = Empty.
Admitted.

// HOL Light: Multivariate/vectors.ml:3207 / COLUMNS_NONEMPTY   (hash md5:dd122607cb080863a8d0a66d0e7ce093)
// not bridged: 
Theorem COLUMNS_NONEMPTY : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, ~ columns M N A = Empty.
Admitted.

// HOL Light: Multivariate/vectors.ml:3213 / FINITE_ROWS   (hash md5:010f8d22503713296d44fef90a4157e8)
// not bridged: 
Theorem FINITE_ROWS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, finite (rows M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3218 / FINITE_COLUMNS   (hash md5:b8dce72372f8ddbc4363e37d411c0cd6)
// not bridged: 
Theorem FINITE_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, finite (columns M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3223 / CARD_ROWS_LE   (hash md5:5801161b1a3c09a00ded2d8c18a1e922)
// not bridged: 
Theorem CARD_ROWS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, finite_cardinality (rows N M A) <= dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:3231 / CARD_COLUMNS_LE   (hash md5:c0ea7341dabc68649bc4f265e4e1f9d0)
// not bridged: 
Theorem CARD_COLUMNS_LE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, finite_cardinality (columns N M A) <= dimindex M.
Admitted.

// HOL Light: Multivariate/vectors.ml:3239 / MATRIX_EQUAL_ROWS   (hash md5:a3b1e7a7268eb945f9e6c9e4f9dcd231)
// not bridged: 
Theorem MATRIX_EQUAL_ROWS : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, A = B <-> forall i :e omega, 1 <= i /\ i <= dimindex M -> row M N i A = row M N i B.
Admitted.

// HOL Light: Multivariate/vectors.ml:3244 / MATRIX_EQUAL_COLUMNS   (hash md5:359edae5c0484ee5fe8235eca1011841)
// not bridged: 
Theorem MATRIX_EQUAL_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx N :^: idx M, A = B <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> column M N i A = column M N i B.
Admitted.

// HOL Light: Multivariate/vectors.ml:3249 / MATRIX_CMUL_EQ_0   (hash md5:a522db52ee1a2b12eb807870a39e922d)
// not bridged: 
Theorem MATRIX_CMUL_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall c :e R, matrix_cmul N M c A = mat N M 0 <-> c = 0 \/ A = mat N M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3255 / MAT_EQ   (hash md5:5ae40152f02c482d51137975c0cc2777)
// not bridged: 
Theorem MAT_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall m n :e omega, mat B A m = mat B A n <-> m = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:3260 / MATRIX_VECTOR_LMUL   (hash md5:2f5d8362cb12fdae3644c518fadf1bb7)
// not bridged: 
Theorem MATRIX_VECTOR_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall c :e R, forall x :e R :^: idx M, matrix_vector_mul N M (matrix_cmul N M c A) x = vector_mul N c (matrix_vector_mul N M A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3266 / MATRIX_VECTOR_MUL_LNEG   (hash md5:72457c01dda4c31a6b8fa5a5c325b114)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_LNEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, matrix_vector_mul N M (matrix_neg N M A) x = vector_neg N (matrix_vector_mul N M A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3271 / MATRIX_VECTOR_MUL_RNEG   (hash md5:2af64dbb875a88bf9e97720e3d9a8037)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_RNEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, matrix_vector_mul N M A (vector_neg M x) = vector_neg N (matrix_vector_mul N M A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3276 / COLUMN_MATRIX_MUL   (hash md5:b0da094e172242bbcdd090b0e604537a)
// not bridged: 
Theorem COLUMN_MATRIX_MUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall i :e omega, forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, 1 <= i /\ i <= dimindex P -> column M P i (matrix_mul M N P A B) = matrix_vector_mul M N A (column N P i B).
Admitted.

// HOL Light: Multivariate/vectors.ml:3281 / ROW_MATRIX_MUL   (hash md5:d41af9c21f0334c7b2ca65428e6fc95a)
// not bridged: 
Theorem ROW_MATRIX_MUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall i :e omega, forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, 1 <= i /\ i <= dimindex M -> row M P i (matrix_mul M N P A B) = matrix_vector_mul P N (transp N P B) (row M N i A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3291 / MATRIX_MUL_DOT   (hash md5:c471a931baa87f4bf6cc510b39761027)
// not bridged: 
Theorem MATRIX_MUL_DOT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx N, matrix_vector_mul M N A x = fun i :e idx M => dot N (A i) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3295 / MATRIX_MUL_VSUM   (hash md5:4bd3b9792f4410e760176ac7e835636f)
// not bridged: 
Theorem MATRIX_MUL_VSUM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx N, matrix_vector_mul M N A x = vsum omega M (idx N) (fun i:set => vector_mul M (x i) (column M N i A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3304 / VECTOR_COMPONENTWISE   (hash md5:0ee0e79218f5546d9f3634ac8608c33e)
// not bridged: 
Theorem VECTOR_COMPONENTWISE : forall N:set, N <> Empty -> forall x :e R :^: idx N, x = fun j :e idx N => finsum (idx N) (fun i:set => x i * basis N i j).
Admitted.

// HOL Light: Multivariate/vectors.ml:3313 / LINEAR_COMPONENTWISE_EXPANSION   (hash md5:3bf038f1e41f5a077d9d9bf84f26f5c4)
// not bridged: 
Theorem LINEAR_COMPONENTWISE_EXPANSION : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> forall x :e R :^: idx M, forall j :e omega, 1 <= j /\ j <= dimindex N -> f x j = finsum (idx M) (fun i:set => x i * f (basis M i) j).
Admitted.

// HOL Light: Multivariate/vectors.ml:3345 / invertible   (hash md5:898f8b53d8de2d0c51d3e203b6d0fc71)
// not bridged: 
Theorem invertible_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, invertible M N A <-> exists A' :e R :^: idx M :^: idx N, matrix_mul M N M A A' = mat M M 1 /\ matrix_mul N M N A' A = mat N N 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3349 / INVERTIBLE_I   (hash md5:1f9f175dd7a308fd78a1f77840c6badc)
// not bridged: 
Theorem INVERTIBLE_I : forall N:set, N <> Empty -> invertible N N (mat N N 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:3353 / INVERTIBLE_NEG   (hash md5:d1daa79f084565effdff5c80d411ddaf)
// not bridged: 
Theorem INVERTIBLE_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, invertible M N (matrix_neg M N A) <-> invertible M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3358 / INVERTIBLE_CMUL   (hash md5:013c0471ab00cf63bcb19a1b04edf88a)
// not bridged: 
Theorem INVERTIBLE_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall c :e R, invertible M N (matrix_cmul M N c A) <-> ~ c = 0 /\ invertible M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3371 / INVERTIBLE_MAT   (hash md5:76c5ebfac3f3d31cf2e94773bec9e0f9)
// not bridged: 
Theorem INVERTIBLE_MAT : forall N:set, N <> Empty -> forall a :e omega, invertible N N (mat N N a) <-> ~ a = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3376 / MATRIX_ENTIRE   (hash md5:15dd9529332d762fb4ab8a9a8646605b)
// not bridged: 
Theorem MATRIX_ENTIRE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> (forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, invertible M N A -> (matrix_mul M N P A B = mat M P 0 <-> B = mat N P 0)) /\ forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, invertible N P B -> (matrix_mul M N P A B = mat M P 0 <-> A = mat M N 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:3393 / matrix   (hash md5:61ef82b861a41b7e8bb01d800824d920)
// not bridged: 
Theorem matrix_thm : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> matrix M N f = fun i :e idx N => fun j :e idx M => f (basis M j) i.
Admitted.

// HOL Light: Multivariate/vectors.ml:3396 / MATRIX_COMPONENT   (hash md5:94a37f9245a14868eacd68d2318ba75b)
// not bridged: 
Theorem MATRIX_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall i j :e omega, 1 <= j /\ j <= dimindex M -> matrix M N f i j = f (basis M j) i.
Admitted.

// HOL Light: Multivariate/vectors.ml:3408 / MATRIX_VECTOR_MUL_LINEAR   (hash md5:80b1d65811fdd0d1422057f25d607077)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, linear N M (matrix_vector_mul M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3416 / MATRIX_WORKS   (hash md5:5a9d157c9d7622b48e1c965c0e56122b)
// not bridged: 
Theorem MATRIX_WORKS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> forall x :e R :^: idx M, matrix_vector_mul N M (matrix M N f) x = f x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3424 / MATRIX_VECTOR_MUL   (hash md5:800ef6bf68c7f63d852bfe794487f74c)
// not bridged: 
Theorem MATRIX_VECTOR_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> forall x :e R :^: idx M, f x = matrix_vector_mul N M (matrix M N f) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3428 / MATRIX_OF_MATRIX_VECTOR_MUL   (hash md5:ad70384934155ccdf8234fbf2af812d9)
// not bridged: 
Theorem MATRIX_OF_MATRIX_VECTOR_MUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix N M (matrix_vector_mul M N A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:3432 / MATRIX_COMPOSE   (hash md5:6c1f294d4caa813b5f43bd933b22a369)
// not bridged: 
Theorem MATRIX_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx C) -> linear B A f /\ linear A C g -> matrix B C (fun x:set => g (f x)) = matrix_mul C A B (matrix A C g) (matrix B A f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3437 / MATRIX_0   (hash md5:04d6d3f169a27960baf4d75e8752bb76)
// not bridged: 
Theorem MATRIX_0 : forall M N:set, M <> Empty -> N <> Empty -> matrix M N (fun x:set => vec N 0) = mat N M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3442 / MATRIX_VECTOR_COLUMN   (hash md5:9ce386deee427f1fffd50ab8aaae08fe)
// not bridged: 
Theorem MATRIX_VECTOR_COLUMN : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx N, matrix_vector_mul M N A x = vsum omega M (idx N) (fun i:set => vector_mul M (x i) (transp M N A i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3449 / MATRIX_MUL_COMPONENT   (hash md5:ce5e1a3f29ff70027e63a32a43dce84e)
// not bridged: 
Theorem MATRIX_MUL_COMPONENT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx P, forall B :e R :^: idx M :^: idx N, forall i :e omega, 1 <= i /\ i <= dimindex P -> matrix_mul P N M A B i = matrix_vector_mul M N (transp N M B) (A i).
Admitted.

// HOL Light: Multivariate/vectors.ml:3457 / ADJOINT_MATRIX   (hash md5:91e6f8c712c396171e3b58280d279639)
// not bridged: 
Theorem ADJOINT_MATRIX : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall x :e R :^: idx M, adjoint N M (matrix_vector_mul M N A) x = matrix_vector_mul N M (transp M N A) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3465 / MATRIX_ADJOINT   (hash md5:009c87abccc306ccaca915dc6daad1ee)
// not bridged: 
Theorem MATRIX_ADJOINT : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> linear A B f -> matrix B A (adjoint A B f) = transp B A (matrix A B f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3472 / MATRIX_ID   (hash md5:f5e841ba1f6dcedbcb029934464d7dbd)
// not bridged: 
Theorem MATRIX_ID : forall A:set, A <> Empty -> matrix A A (fun x:set => x) = mat A A 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3476 / MATRIX_I   (hash md5:a4ea51a75ecb25ca655440e80a13d14a)
// not bridged: 
Theorem MATRIX_I : forall A:set, A <> Empty -> matrix A A (fun x:set => x) = mat A A 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3480 / LINEAR_EQ_MATRIX   (hash md5:b1cf82b0031abbf72bce4f750a9265b5)
// not bridged: 
Theorem LINEAR_EQ_MATRIX : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx B) -> linear A B f /\ (linear A B g /\ matrix A B f = matrix A B g) -> forall x :e R :^: idx A, f x = g x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3486 / MATRIX_CMUL   (hash md5:7d2d2e61afc50ea4d3ead47e04b3dee9)
// not bridged: 
Theorem MATRIX_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall c :e R, linear M N f -> matrix M N (fun x:set => vector_mul N c (f x)) = matrix_cmul N M c (matrix M N f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3491 / MATRIX_NEG   (hash md5:a468d1c2fa9b9e8503100a7032bedbe9)
// not bridged: 
Theorem MATRIX_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> matrix M N (fun x:set => vector_neg N (f x)) = matrix_neg N M (matrix M N f).
Admitted.

// HOL Light: Multivariate/vectors.ml:3496 / MATRIX_ADD   (hash md5:bdf228eae92bc94a1592be2ddb9d7e39)
// not bridged: 
Theorem MATRIX_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> linear M N f /\ linear M N g -> matrix M N (fun x:set => vector_add N (f x) (g x)) = matrix_add N M (matrix M N f) (matrix M N g).
Admitted.

// HOL Light: Multivariate/vectors.ml:3502 / MATRIX_SELF_ADJOINT   (hash md5:30a8f64398a2bfdea5e5545b58c8b384)
// not bridged: 
Theorem MATRIX_SELF_ADJOINT : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx A) -> linear A A f -> ((forall x :e R :^: idx A, adjoint A A f x = f x) <-> symmetric_matrix_hl A (matrix A A f)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3507 / LINEAR_MATRIX_EXISTS   (hash md5:dc6b311c99e5155340a1c0d2d40ca152)
// not bridged: 
Theorem LINEAR_MATRIX_EXISTS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (linear M N f <-> exists A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, f x = matrix_vector_mul N M A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3514 / LINEAR_1_GEN   (hash md5:a4fe197682e299edb60d847fce3cba04)
// not bridged: 
Theorem LINEAR_1_GEN : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> dimindex N = 1 -> (linear N N f <-> exists c :e R, forall x :e R :^: idx N, f x = vector_mul N c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3531 / LINEAR_1   (hash md5:2834d530b7c684c5715da50593c78527)
// not bridged: 
Theorem LINEAR_1 : forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx 1) -> (linear 1 1 f <-> exists c :e R, forall x :e R :^: idx 1, f x = vector_mul 1 c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3535 / SYMMETRIC_MATRIX   (hash md5:f7273426ca77db4e6bf0491c5883503b)
// not bridged: 
Theorem SYMMETRIC_MATRIX : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, symmetric_matrix_hl N A <-> forall x :e R :^: idx N, adjoint N N (matrix_vector_mul N N A) x = matrix_vector_mul N N A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3540 / DOT_MATRIX_TRANSP_LMUL   (hash md5:1f339efeab2b05b3ba76a718f63575ac)
// not bridged: 
Theorem DOT_MATRIX_TRANSP_LMUL : forall A N:set, A <> Empty -> N <> Empty -> forall A0 :e R :^: idx N :^: idx A, forall x :e R :^: idx A, forall y :e R :^: idx N, dot N (matrix_vector_mul N A (transp A N A0) x) y = dot A x (matrix_vector_mul A N A0 y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3545 / DOT_MATRIX_TRANSP_RMUL   (hash md5:0dc2899e0ad0fd5cde8e987987e7ce7c)
// not bridged: 
Theorem DOT_MATRIX_TRANSP_RMUL : forall A N:set, A <> Empty -> N <> Empty -> forall A0 :e R :^: idx A :^: idx N, forall x :e R :^: idx A, forall y :e R :^: idx N, dot A x (matrix_vector_mul A N (transp N A A0) y) = dot N (matrix_vector_mul N A A0 x) y.
Admitted.

// HOL Light: Multivariate/vectors.ml:3549 / SYMMETRIC_MATRIX_ORTHOGONAL_EIGENVECTORS   (hash md5:7cb41b777fee92b93fb265377670f6e2)
// not bridged: 
Theorem SYMMETRIC_MATRIX_ORTHOGONAL_EIGENVECTORS : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall v w :e R :^: idx N, forall a b :e R, symmetric_matrix_hl N A /\ (matrix_vector_mul N N A v = vector_mul N a v /\ (matrix_vector_mul N N A w = vector_mul N b w /\ ~ a = b)) -> orthogonal N v w.
Admitted.

// HOL Light: Multivariate/vectors.ml:3558 / MATRIX_INJECTIVE_0   (hash md5:79c5b17471b4f5da53e0383913d19d22)
// not bridged: 
Theorem MATRIX_INJECTIVE_0 : forall M N:set, M <> Empty -> N <> Empty -> forall m :e R :^: idx M :^: idx N, (forall x y :e R :^: idx M, matrix_vector_mul N M m x = matrix_vector_mul N M m y -> x = y) <-> forall x :e R :^: idx M, matrix_vector_mul N M m x = vec N 0 -> x = vec M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3569 / onorm   (hash md5:b7f2fa3dd6b261b8c2e1b8b07bf72b6a)
// not bridged: 
Theorem onorm_thm : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> onorm M N f = sup {vector_norm N (f x) | x :e R :^: idx M, vector_norm M x = 1}.
Admitted.

// HOL Light: Multivariate/vectors.ml:3572 / NORM_BOUND_GENERALIZE   (hash md5:65b3e240477bd58d368d60d0c5dbd9b5)
// not bridged: 
Theorem NORM_BOUND_GENERALIZE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall b :e R, linear M N f -> ((forall x :e R :^: idx M, vector_norm M x = 1 -> vector_norm N (f x) <= b) <-> forall x :e R :^: idx M, vector_norm N (f x) <= b * vector_norm M x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3590 / ONORM_DOT   (hash md5:20193203b89d75e9404bcb13a74f3481)
// not bridged: 
Theorem ONORM_DOT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> onorm M N f = sup (\/_ x :e R :^: idx M, {dot N (f x) y | y :e R :^: idx N, vector_norm M x = 1 /\ vector_norm N y = 1}).
Admitted.

// HOL Light: Multivariate/vectors.ml:3613 / ONORM   (hash md5:65e77ef4664e24c827146cddb5e2cf68)
// not bridged: 
Theorem ONORM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> (forall x :e R :^: idx M, vector_norm N (f x) <= onorm M N f * vector_norm M x) /\ forall b :e R, (forall x :e R :^: idx M, vector_norm N (f x) <= b * vector_norm M x) -> onorm M N f <= b.
Admitted.

// HOL Light: Multivariate/vectors.ml:3627 / ONORM_LE_EQ   (hash md5:2fc80194fc0172098c4a7bc1292ae472)
// not bridged: 
Theorem ONORM_LE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall b :e R, linear M N f -> (onorm M N f <= b <-> forall x :e R :^: idx M, vector_norm N (f x) <= b * vector_norm M x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3635 / ONORM_POS_LE   (hash md5:3d54285a040555609f15b6353422a3ff)
// not bridged: 
Theorem ONORM_POS_LE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> linear A B f -> 0 <= onorm A B f.
Admitted.

// HOL Light: Multivariate/vectors.ml:3640 / ONORM_EQ_0   (hash md5:adc276b69c4def9aa6ab25a28f918ad1)
// not bridged: 
Theorem ONORM_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> (onorm M N f = 0 <-> forall x :e R :^: idx M, f x = vec N 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:3647 / ONORM_CONST   (hash md5:5c8ec84552f8ca6baf11aff2bfd578a9)
// not bridged: 
Theorem ONORM_CONST : forall M N:set, M <> Empty -> N <> Empty -> forall y :e R :^: idx N, onorm M N (fun x:set => y) = vector_norm N y.
Admitted.

// HOL Light: Multivariate/vectors.ml:3658 / ONORM_POS_LT   (hash md5:2917aed017e28fd5bf45b62d289ff17f)
// not bridged: 
Theorem ONORM_POS_LT : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> linear A B f -> (0 < onorm A B f <-> ~ forall x :e R :^: idx A, f x = vec B 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:3663 / ONORM_COMPOSE   (hash md5:02194ea427bb1664f48e0e30a2627fbd)
// not bridged: 
Theorem ONORM_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e R :^: idx C, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx B, g x :e R :^: idx C) -> linear C A f /\ linear B C g -> onorm B A (fun x:set => f (g x)) <= onorm C A f * onorm B C g.
Admitted.

// HOL Light: Multivariate/vectors.ml:3668 / ONORM_CMUL   (hash md5:6bcc5dbe3d2de39edde43840438aedda)
// not bridged: 
Theorem ONORM_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall c :e R, linear M N f -> onorm M N (fun x:set => vector_mul N c (f x)) = abs_SNo c * onorm M N f.
Admitted.

// HOL Light: Multivariate/vectors.ml:3689 / ONORM_NEG   (hash md5:edf757083fd2b7da740228e12329cd6b)
// not bridged: 
Theorem ONORM_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> onorm M N (fun x:set => vector_neg N (f x)) = onorm M N f.
Admitted.

// HOL Light: Multivariate/vectors.ml:3693 / ONORM_TRIANGLE   (hash md5:78fb25982183e417a8c023318d0293da)
// not bridged: 
Theorem ONORM_TRIANGLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> linear M N f /\ linear M N g -> onorm M N (fun x:set => vector_add N (f x) (g x)) <= onorm M N f + onorm M N g.
Admitted.

// HOL Light: Multivariate/vectors.ml:3702 / ONORM_TRIANGLE_LE   (hash md5:c2fce3c4c2b03cfddb6f3f0c2a524081)
// not bridged: 
Theorem ONORM_TRIANGLE_LE : forall A B:set, A <> Empty -> B <> Empty -> forall e0 :e R, forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx B) -> linear A B f /\ (linear A B g /\ onorm A B f + onorm A B g <= e0) -> onorm A B (fun x:set => vector_add B (f x) (g x)) <= e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3707 / ONORM_TRIANGLE_LT   (hash md5:8383ba8a8b6705c8eb2655d5c86c9b87)
// not bridged: 
Theorem ONORM_TRIANGLE_LT : forall A B:set, A <> Empty -> B <> Empty -> forall e0 :e R, forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx B) -> linear A B f /\ (linear A B g /\ onorm A B f + onorm A B g < e0) -> onorm A B (fun x:set => vector_add B (f x) (g x)) < e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:3712 / ONORM_ID   (hash md5:e49384eeb1afbffe5a23b743283c13d5)
// not bridged: 
Theorem ONORM_ID : forall N:set, N <> Empty -> onorm N N (fun x:set => x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3720 / ONORM_I   (hash md5:c00041fcc65889d9855ba82e418b50d4)
// not bridged: 
Theorem ONORM_I : forall N:set, N <> Empty -> onorm N N (fun x:set => x) = 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3724 / ONORM_INVERSE_FUNCTION_BOUND   (hash md5:4a0d578b53a4e076d4627e6c87159b36)
// not bridged: 
Theorem ONORM_INVERSE_FUNCTION_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> linear N M f /\ (linear M N g /\ (forall x :e R :^: idx M, f (g x) = x)) -> 1 <= onorm N M f * onorm M N g.
Admitted.

// HOL Light: Multivariate/vectors.ml:3732 / ONORM_ADJOINT   (hash md5:3de249bfdaf675c73779d1da703092b3)
// not bridged: 
Theorem ONORM_ADJOINT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> onorm N N (adjoint N N f) = onorm N N f.
Admitted.

// HOL Light: Multivariate/vectors.ml:3738 / ONORM_COMPOSE_ADJOINT_LEFT   (hash md5:d9d908b21a0fa54ea3d46d7514fe97ec)
// not bridged: 
Theorem ONORM_COMPOSE_ADJOINT_LEFT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> onorm N N (fun x:set => adjoint N N f (f x)) = onorm N N f ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:3756 / ONORM_COMPOSE_ADJOINT_RIGHT   (hash md5:e8fb0a60ff39783ee73db73a006f466e)
// not bridged: 
Theorem ONORM_COMPOSE_ADJOINT_RIGHT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> onorm N N (fun x:set => f (adjoint N N f x)) = onorm N N f ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:3762 / ONORM_TRANSP   (hash md5:16c3236ff9277f07eed2c4ac2bca781b)
// not bridged: 
Theorem ONORM_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, onorm N N (matrix_vector_mul N N (transp N N A)) = onorm N N (matrix_vector_mul N N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:3767 / ONORM_COVARIANCE   (hash md5:7bf340624258fdf5fdeaf3d622308043)
// not bridged: 
Theorem ONORM_COVARIANCE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, onorm N N (matrix_vector_mul N N (matrix_mul N N N (transp N N A) A)) = onorm N N (matrix_vector_mul N N A) ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:3775 / ONORM_COVARIANCE_ALT   (hash md5:8960053b62cb2b2c3b1a8eab926744a2)
// not bridged: 
Theorem ONORM_COVARIANCE_ALT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, onorm N N (matrix_vector_mul N N (matrix_mul N N N A (transp N N A))) = onorm N N (matrix_vector_mul N N A) ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:3783 / ONORM_LE_EQ_2   (hash md5:baea03c50cf3b71af80cd883a270470e)
// not bridged: 
Theorem ONORM_LE_EQ_2 : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall b :e R, linear M N f -> (onorm M N f <= b <-> forall x :e R :^: idx N, forall y :e R :^: idx M, dot N x (f y) <= b * vector_norm N x * vector_norm M y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3783 / ONORM_LE_EQ_2_ABS   (hash md5:7b94b0ce8e5c8d9d7bd4175e247a24a6)
// not bridged: 
Theorem ONORM_LE_EQ_2_ABS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall b :e R, linear M N f -> (onorm M N f <= b <-> forall x :e R :^: idx N, forall y :e R :^: idx M, abs_SNo (dot N x (f y)) <= b * vector_norm N x * vector_norm M y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3819 / lift   (hash md5:f2c2eea2baefb5a36f179e00d075c465)
// not bridged: 
Theorem lift_thm : forall x :e R, lift x = fun i :e idx 1 => x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3822 / drop   (hash md5:f1a36010077e4afe1bcefcf81564fe91)
// not bridged: 
Theorem drop_thm : forall x :e R :^: idx 1, drop x = x 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3825 / LIFT_COMPONENT   (hash md5:fcfbf49a084b370d7087fdadfbffdbf3)
// not bridged: 
Theorem LIFT_COMPONENT : forall x :e R, lift x 1 = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3829 / LIFT_DROP   (hash md5:cbaf803d3fa9dd23f712035668cf884b)
// not bridged: 
Theorem LIFT_DROP : (forall x :e R :^: idx 1, lift (drop x) = x) /\ forall x :e R, drop (lift x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:3833 / IMAGE_LIFT_DROP   (hash md5:13b35de3ac51e849794171fcee3c4646)
// not bridged: 
Theorem IMAGE_LIFT_DROP : (forall s c= R :^: idx 1, {lift (drop x) | x :e s} = s) /\ forall s c= R, {drop (lift x) | x :e s} = s.
Admitted.

// HOL Light: Multivariate/vectors.ml:3837 / IN_IMAGE_LIFT_DROP   (hash md5:4741cb973187a03b40dc368e4101db78)
// not bridged: 
Theorem IN_IMAGE_LIFT_DROP : (forall x :e R :^: idx 1, forall s c= R, x :e {lift x0 | x0 :e s} <-> drop x :e s) /\ forall x :e R, forall s c= R :^: idx 1, x :e {drop x0 | x0 :e s} <-> lift x :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:3842 / FORALL_LIFT   (hash md5:da2007b28ec6cff3f89f66247b681df2)
// not bridged: 
Theorem FORALL_LIFT : forall P:set -> prop, (forall x :e R :^: idx 1, P x) <-> forall x :e R, P (lift x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3846 / EXISTS_LIFT   (hash md5:b78128a2d1a949b8861f9d27c96b7b56)
// not bridged: 
Theorem EXISTS_LIFT : forall P:set -> prop, (exists x :e R :^: idx 1, P x) <-> exists x :e R, P (lift x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3850 / FORALL_DROP   (hash md5:4d9405ee17985dea56ef1b180353e1ed)
// not bridged: 
Theorem FORALL_DROP : forall P:set -> prop, (forall x :e R, P x) <-> forall x :e R :^: idx 1, P (drop x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3854 / EXISTS_DROP   (hash md5:9add8c2b485b73cd9988d52d40b5e4d2)
// not bridged: 
Theorem EXISTS_DROP : forall P:set -> prop, (exists x :e R, P x) <-> exists x :e R :^: idx 1, P (drop x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3858 / FORALL_LIFT_FUN   (hash md5:0508f4c43370f04bbcd746c28f83258a)
// not bridged: 
Theorem FORALL_LIFT_FUN : forall A:set, A <> Empty -> forall P:set -> prop, (forall f :e R :^: idx 1 :^: A, P f) <-> forall f:set -> set, (forall x :e A, f x :e R) -> P (fun x :e A => lift (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3865 / FORALL_DROP_FUN   (hash md5:7035eca64567b641206e99597b7322fb)
// not bridged: 
Theorem FORALL_DROP_FUN : forall A:set, A <> Empty -> forall P:set -> prop, (forall f :e R :^: A, P f) <-> forall f:set -> set, (forall x :e A, f x :e R :^: idx 1) -> P (fun x :e A => drop (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3869 / FORALL_FUN_LIFT   (hash md5:89fe006bd194d49e14013d5c58757ba9)
// not bridged: 
Theorem FORALL_FUN_LIFT : forall A:set, A <> Empty -> forall P:set -> prop, (forall f :e A :^: R, P f) <-> forall f:set -> set, (forall x :e R :^: idx 1, f x :e A) -> P (fun x :e R => f (lift x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3876 / FORALL_FUN_DROP   (hash md5:70750fc476900d19b936930e632d089b)
// not bridged: 
Theorem FORALL_FUN_DROP : forall A:set, A <> Empty -> forall P:set -> prop, (forall f :e A :^: (R :^: idx 1), P f) <-> forall f:set -> set, (forall x :e R, f x :e A) -> P (fun x :e R :^: idx 1 => f (drop x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3883 / EXISTS_LIFT_FUN   (hash md5:14a265ff2bc99480bbc215501ff1d1a3)
// not bridged: 
Theorem EXISTS_LIFT_FUN : forall A:set, A <> Empty -> forall P:set -> prop, (exists f :e R :^: idx 1 :^: A, P f) <-> exists f:set -> set, (forall x :e A, f x :e R) /\ P (fun x :e A => lift (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3888 / EXISTS_DROP_FUN   (hash md5:6dbf61132caa58d04ef1a571c8915c5e)
// not bridged: 
Theorem EXISTS_DROP_FUN : forall A:set, A <> Empty -> forall P:set -> prop, (exists f :e R :^: A, P f) <-> exists f:set -> set, (forall x :e A, f x :e R :^: idx 1) /\ P (fun x :e A => drop (f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3893 / EXISTS_FUN_LIFT   (hash md5:f66bd0e970e5b937b629819e6d599ec8)
// not bridged: 
Theorem EXISTS_FUN_LIFT : forall A:set, A <> Empty -> forall P:set -> prop, (exists f :e A :^: R, P f) <-> exists f:set -> set, (forall x :e R :^: idx 1, f x :e A) /\ P (fun x :e R => f (lift x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3898 / EXISTS_FUN_DROP   (hash md5:ae7d8296c30d7913531e144f84dab09e)
// not bridged: 
Theorem EXISTS_FUN_DROP : forall A:set, A <> Empty -> forall P:set -> prop, (exists f :e A :^: (R :^: idx 1), P f) <-> exists f:set -> set, (forall x :e R, f x :e A) /\ P (fun x :e R :^: idx 1 => f (drop x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3903 / LIFT_EQ   (hash md5:d0b28ea731f49aeaa6e13c1bcf7bc425)
// not bridged: 
Theorem LIFT_EQ : forall x y :e R, lift x = lift y <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:3907 / DROP_EQ   (hash md5:64111dc5be890599e6dbfbb26737ab11)
// not bridged: 
Theorem DROP_EQ : forall x y :e R :^: idx 1, drop x = drop y <-> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:3911 / LIFT_IN_IMAGE_LIFT   (hash md5:27836f971b748fd838efd92e8ef2e6f5)
// not bridged: 
Theorem LIFT_IN_IMAGE_LIFT : forall x :e R, forall s c= R, lift x :e {lift x0 | x0 :e s} <-> x :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:3915 / FORALL_LIFT_IMAGE   (hash md5:b36b3c8407b9dbefce9fb0ea54a41bda)
// not bridged: 
Theorem FORALL_LIFT_IMAGE : forall P:set -> prop, (forall s c= R :^: idx 1, P s) <-> forall s c= R, P {lift x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:3919 / EXISTS_LIFT_IMAGE   (hash md5:5335831752d4db8ca0b92535280cc978)
// not bridged: 
Theorem EXISTS_LIFT_IMAGE : forall P:set -> prop, (exists s c= R :^: idx 1, P s) <-> exists s c= R, P {lift x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:3923 / SUBSET_LIFT_IMAGE   (hash md5:1dfe139fe0c82074851bf605f31895ac)
// not bridged: 
Theorem SUBSET_LIFT_IMAGE : forall s t c= R, {lift x | x :e s} c= {lift x | x :e t} <-> s c= t.
Admitted.

// HOL Light: Multivariate/vectors.ml:3929 / FORALL_DROP_IMAGE   (hash md5:478e77b35c51f49fd9db6ae0c6c23a58)
// not bridged: 
Theorem FORALL_DROP_IMAGE : forall P:set -> prop, (forall s c= R, P s) <-> forall s c= R :^: idx 1, P {drop x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:3933 / EXISTS_DROP_IMAGE   (hash md5:8e6ede9256cfc11272cfa6f529662656)
// not bridged: 
Theorem EXISTS_DROP_IMAGE : forall P:set -> prop, (exists s c= R, P s) <-> exists s c= R :^: idx 1, P {drop x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:3937 / SUBSET_DROP_IMAGE   (hash md5:6cde5c3f46711ebc9a76796d6c05c8bd)
// not bridged: 
Theorem SUBSET_DROP_IMAGE : forall s t c= R :^: idx 1, {drop x | x :e s} c= {drop x | x :e t} <-> s c= t.
Admitted.

// HOL Light: Multivariate/vectors.ml:3943 / DROP_IN_IMAGE_DROP   (hash md5:f4a196917a8575aee16b48162864b840)
// not bridged: 
Theorem DROP_IN_IMAGE_DROP : forall x :e R :^: idx 1, forall s c= R :^: idx 1, drop x :e {drop x0 | x0 :e s} <-> x :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:3947 / LIFT_NUM   (hash md5:629c7a1cd09d39c4677be34fdd2504ad)
// not bridged: 
Theorem LIFT_NUM : forall n :e omega, lift n = vec 1 n.
Admitted.

// HOL Light: Multivariate/vectors.ml:3951 / LIFT_ADD   (hash md5:1b91b9dfadb6374002b2d416d59709ee)
// not bridged: 
Theorem LIFT_ADD : forall x y :e R, lift (x + y) = vector_add 1 (lift x) (lift y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3955 / LIFT_SUB   (hash md5:98b8da8e9b344287b91c55939730b407)
// not bridged: 
Theorem LIFT_SUB : forall x y :e R, lift (x + - y) = vector_sub 1 (lift x) (lift y).
Admitted.

// HOL Light: Multivariate/vectors.ml:3959 / LIFT_CMUL   (hash md5:9c52cd023fbeea12c40cd98d7423d5fc)
// not bridged: 
Theorem LIFT_CMUL : forall x c :e R, lift (c * x) = vector_mul 1 c (lift x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3963 / LIFT_NEG   (hash md5:2d3fc43a1361e4a311d54487f1e1b0ff)
// not bridged: 
Theorem LIFT_NEG : forall x :e R, lift (- x) = vector_neg 1 (lift x).
Admitted.

// HOL Light: Multivariate/vectors.ml:3967 / LIFT_EQ_CMUL   (hash md5:080f5966f6be5315cf43cd1c8f3ef0ec)
// not bridged: 
Theorem LIFT_EQ_CMUL : forall x :e R, lift x = vector_mul 1 x (vec 1 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:3971 / SUM_VSUM   (hash md5:11af10f2b7de6d2b6d186019a226b4b8)
// not bridged: 
Theorem SUM_VSUM : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e A, f x :e R) -> forall s c= A, finsum s f = drop (vsum A 1 s (fun x:set => lift (f x))).
Admitted.

// HOL Light: Multivariate/vectors.ml:3976 / VSUM_REAL   (hash md5:13d6044c19083749cb5de26e3253b780)
// not bridged: 
Theorem VSUM_REAL : forall A:set, A <> Empty -> forall f:set -> set, (forall x :e A, f x :e R :^: idx 1) -> forall s c= A, vsum A 1 s f = lift (finsum s (fun x:set => drop (f x))).
Admitted.

// HOL Light: Multivariate/vectors.ml:3980 / LIFT_SUM   (hash md5:33c63698b9756f48eafb24b1b536c75f)
// not bridged: 
Theorem LIFT_SUM : forall A:set, A <> Empty -> forall k c= A, forall x:set -> set, (forall x0 :e A, x x0 :e R) -> lift (finsum k x) = vsum A 1 k (fun x0:set => lift (x x0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3984 / DROP_VSUM   (hash md5:00e500b824af82d161cdcf141ece5328)
// not bridged: 
Theorem DROP_VSUM : forall A:set, A <> Empty -> forall k c= A, forall x:set -> set, (forall x0 :e A, x x0 :e R :^: idx 1) -> drop (vsum A 1 k x) = finsum k (fun x0:set => drop (x x0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:3988 / DROP_LAMBDA   (hash md5:0a450b3a4143f22f53039bfea4e9ceb3)
// not bridged: 
Theorem DROP_LAMBDA : forall x:set -> set, (forall x0 :e omega, x x0 :e R) -> drop (fun i :e idx 1 => x i) = x 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:3992 / DROP_VEC   (hash md5:c0340fbeffaae07003133ab61cd2a137)
// not bridged: 
Theorem DROP_VEC : forall n :e omega, drop (vec 1 n) = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:3996 / DROP_ADD   (hash md5:d063b7bdd41399b33bf35defcabde105)
// not bridged: 
Theorem DROP_ADD : forall x y :e R :^: idx 1, drop (vector_add 1 x y) = drop x + drop y.
Admitted.

// HOL Light: Multivariate/vectors.ml:4000 / DROP_SUB   (hash md5:715a4e3d09da258bb548c7b0fba811b2)
// not bridged: 
Theorem DROP_SUB : forall x y :e R :^: idx 1, drop (vector_sub 1 x y) = drop x + - drop y.
Admitted.

// HOL Light: Multivariate/vectors.ml:4004 / DROP_CMUL   (hash md5:8d512ea33ad2833c417e550826e3cd4c)
// not bridged: 
Theorem DROP_CMUL : forall x :e R :^: idx 1, forall c :e R, drop (vector_mul 1 c x) = c * drop x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4008 / DROP_NEG   (hash md5:b8f2aa740e47dedb928729e74e0b13ea)
// not bridged: 
Theorem DROP_NEG : forall x :e R :^: idx 1, drop (vector_neg 1 x) = - drop x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4012 / NORM_1   (hash md5:02bff3f83b315f79e659f12ef983548a)
// not bridged: 
Theorem NORM_1 : forall x :e R :^: idx 1, vector_norm 1 x = abs_SNo (drop x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4016 / DIST_1   (hash md5:50e6626b58cde13a4bab3df9dd1f2233)
// not bridged: 
Theorem DIST_1 : forall x y :e R :^: idx 1, distance 1 (x,y) = abs_SNo (drop x + - drop y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4020 / NORM_1_POS   (hash md5:632a7d1604d3dfd1784386a0256d746a)
// not bridged: 
Theorem NORM_1_POS : forall x :e R :^: idx 1, 0 <= drop x -> vector_norm 1 x = drop x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4024 / NORM_LIFT   (hash md5:861c4a03820af12f11b3a2f06738afe6)
// not bridged: 
Theorem NORM_LIFT : forall x :e R, vector_norm 1 (lift x) = abs_SNo x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4028 / DIST_LIFT   (hash md5:cf90ce8e2bc7408d45c0b6118027f9d0)
// not bridged: 
Theorem DIST_LIFT : forall x y :e R, distance 1 (lift x,lift y) = abs_SNo (x + - y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4032 / ABS_DROP   (hash md5:cabb786f48f57f7f24b7a3da5ef36aa2)
// not bridged: 
Theorem ABS_DROP : forall x :e R :^: idx 1, abs_SNo (drop x) = vector_norm 1 x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4036 / LINEAR_VMUL_DROP   (hash md5:98d26df58d8ffee47de51b1069864ef6)
// not bridged: 
Theorem LINEAR_VMUL_DROP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx 1) -> forall v :e R :^: idx B, linear A 1 f -> linear A B (fun x:set => vector_mul B (drop (f x)) v).
Admitted.

// HOL Light: Multivariate/vectors.ml:4040 / LINEAR_FROM_REALS   (hash md5:601997324e8b5634a33221105eb3bef1)
// not bridged: 
Theorem LINEAR_FROM_REALS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> linear 1 N f -> forall x :e R :^: idx 1, f x = vector_mul N (drop x) (column N 1 1 (matrix 1 N f)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4048 / LINEAR_TO_REALS   (hash md5:903121a973e5a86d73604ef63cde98e9)
// not bridged: 
Theorem LINEAR_TO_REALS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> linear N 1 f -> forall x :e R :^: idx N, f x = lift (dot N (row 1 N 1 (matrix N 1 f)) x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4055 / LINEAR_FROM_1   (hash md5:a1a7bd12058ad75b7596661d5580837d)
// not bridged: 
Theorem LINEAR_FROM_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx 1, f x :e R :^: idx N) -> (linear 1 N f <-> exists c :e R :^: idx N, forall x :e R :^: idx 1, f x = vector_mul N (drop x) c).
Admitted.

// HOL Light: Multivariate/vectors.ml:4061 / DROP_EQ_0   (hash md5:389150034187732ad4aaf972f8436e71)
// not bridged: 
Theorem DROP_EQ_0 : forall x :e R :^: idx 1, drop x = 0 <-> x = vec 1 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4065 / DROP_WLOG_LE   (hash md5:9a8feccc3a4e02db7b6e85e1e09850d6)
// not bridged: 
Theorem DROP_WLOG_LE : forall P:set -> set -> prop, (forall x y :e R :^: idx 1, P x y <-> P y x) /\ (forall x y :e R :^: idx 1, drop x <= drop y -> P x y) -> forall x y :e R :^: idx 1, P x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:4070 / IMAGE_LIFT_UNIV   (hash md5:6400d5cba1752b016cc19067e23f3369)
// not bridged: 
Theorem IMAGE_LIFT_UNIV : {lift x | x :e R} = R :^: idx 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4074 / IMAGE_DROP_UNIV   (hash md5:72c6e63240779ed211e0cfa19320a271)
// not bridged: 
Theorem IMAGE_DROP_UNIV : {drop x | x :e R :^: idx 1} = R.
Admitted.

// HOL Light: Multivariate/vectors.ml:4078 / LINEAR_LIFT_DOT   (hash md5:51d54a9d222f329b3e548fc15f5d81a3)
// not bridged: 
Theorem LINEAR_LIFT_DOT : forall A:set, A <> Empty -> forall a :e R :^: idx A, linear A 1 (fun x:set => lift (dot A a x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4082 / LINEAR_TO_1   (hash md5:29d617c339547e495b58546e3504f7b0)
// not bridged: 
Theorem LINEAR_TO_1 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx 1) -> (linear N 1 f <-> exists a :e R :^: idx N, forall x :e R :^: idx N, f x = lift (dot N a x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4088 / LINEAR_LIFT_COMPONENT   (hash md5:69a97c349cd01a473b241807b7815978)
// not bridged: 
Theorem LINEAR_LIFT_COMPONENT : forall N:set, N <> Empty -> forall k :e omega, linear N 1 (fun x:set => lift (x k)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4097 / BILINEAR_DROP_MUL   (hash md5:b221c56dfa9f5b25c607a864fd2c1c85)
// not bridged: 
Theorem BILINEAR_DROP_MUL : forall N:set, N <> Empty -> bilinear N N 1 (fun x:set => vector_mul N (drop x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4102 / BILINEAR_MUL_DROP   (hash md5:3ded75de6c52ba07ba149927a25187f3)
// not bridged: 
Theorem BILINEAR_MUL_DROP : forall N:set, N <> Empty -> bilinear 1 N N (fun y:set => fun x:set => vector_mul N (drop x) y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4107 / BILINEAR_LIFT_MUL   (hash md5:63c845da14dd0c828e8929055090d161)
// not bridged: 
Theorem BILINEAR_LIFT_MUL : bilinear 1 1 1 (fun x:set => fun y:set => lift (drop x * drop y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4113 / LINEAR_COMPONENTWISE   (hash md5:d3b0967e62ddead17fc177e55942a027)
// not bridged: 
Theorem LINEAR_COMPONENTWISE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (linear M N f <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> linear M 1 (fun x:set => lift (f x i))).
Admitted.

// HOL Light: Multivariate/vectors.ml:4123 / DROP_BASIS   (hash md5:1126a1e41fb28fe06683f0908fef2654)
// not bridged: 
Theorem DROP_BASIS : forall i :e omega, drop (basis 1 i) = if i = 1 then 1 else 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4133 / indicator   (hash md5:2d2b961be219a53a7bc3772dd44f8fba)
// not bridged: 
Theorem indicator_thm : forall M:set, M <> Empty -> forall s c= R :^: idx M, forall x :e R :^: idx M, indicator M s x = if x :e s then vec 1 1 else vec 1 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4136 / DROP_INDICATOR   (hash md5:c260c92dc5488436d391b99f26f57c37)
// not bridged: 
Theorem DROP_INDICATOR : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, drop (indicator A s x) = if x :e s then 1 else 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4141 / DROP_INDICATOR_POS_LE   (hash md5:75421cca42d16c86596cac5d2e72fe40)
// not bridged: 
Theorem DROP_INDICATOR_POS_LE : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, 0 <= drop (indicator A s x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4145 / DROP_INDICATOR_LE_1   (hash md5:a3347fd2a72ed56619bf5217503f0974)
// not bridged: 
Theorem DROP_INDICATOR_LE_1 : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, drop (indicator A s x) <= 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4149 / DROP_INDICATOR_ABS_LE_1   (hash md5:553ff32060a65890396a6a880dc74f14)
// not bridged: 
Theorem DROP_INDICATOR_ABS_LE_1 : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, abs_SNo (drop (indicator A s x)) <= 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:4153 / INDICATOR_COMPLEMENT   (hash md5:d3def5ed414ac09d8278c6b494258332)
// not bridged: 
Theorem INDICATOR_COMPLEMENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, indicator N ((R :^: idx N) :\: s) x = vector_sub 1 (vec 1 1) (indicator N s x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4163 / VECTORIZE_ADD   (hash md5:87577215f26d3623380bbc181ee93db6)
// not bridged: 
Theorem VECTORIZE_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall m1 m2 :e R :^: idx N :^: idx M, vectorize R M N (matrix_add M N m1 m2) = vector_add (idx_n (dimindex M * dimindex N)) (vectorize R M N m1) (vectorize R M N m2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4168 / VECTORIZE_CMUL   (hash md5:d48f14dc3b528e9389ed8efd31a3b2e0)
// not bridged: 
Theorem VECTORIZE_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall m :e R :^: idx N :^: idx M, vectorize R M N (matrix_cmul M N c m) = vector_mul (idx_n (dimindex M * dimindex N)) c (vectorize R M N m).
Admitted.

// HOL Light: Multivariate/vectors.ml:4173 / VECTORIZE_SUB   (hash md5:7d2b72659a224827af6ddfbe260004a5)
// not bridged: 
Theorem VECTORIZE_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall m1 m2 :e R :^: idx N :^: idx M, vectorize R M N (matrix_sub M N m1 m2) = vector_sub (idx_n (dimindex M * dimindex N)) (vectorize R M N m1) (vectorize R M N m2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4178 / VECTORIZE_0   (hash md5:68be7b2459bbd1e8a5ac74684014f3e3)
// not bridged: 
Theorem VECTORIZE_0 : forall M N:set, M <> Empty -> N <> Empty -> vectorize R M N (mat M N 0) = vec (idx_n (dimindex M * dimindex N)) 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4183 / MATRIFY_0   (hash md5:899c6fa31483de05958303f335f0a8cf)
// not bridged: 
Theorem MATRIFY_0 : forall A B:set, A <> Empty -> B <> Empty -> matrify R B A (vec (idx_n (dimindex B * dimindex A)) 0) = mat B A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4187 / VECTORIZE_EQ_0   (hash md5:6f985ab9ff5885fabccb1c90a2de28f9)
// not bridged: 
Theorem VECTORIZE_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall m :e R :^: idx N :^: idx M, vectorize R M N m = vec (idx_n (dimindex M * dimindex N)) 0 <-> m = mat M N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4191 / MATRIFY_ADD   (hash md5:646f22b45beb216c5a15067056518256)
// not bridged: 
Theorem MATRIFY_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e R :^: idx_n (dimindex M * dimindex N), matrify R M N (vector_add (idx_n (dimindex M * dimindex N)) x y) = matrix_add M N (matrify R M N x) (matrify R M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4196 / MATRIFY_CMUL   (hash md5:33c515911673ab3b8f2f46bbe4c07a72)
// not bridged: 
Theorem MATRIFY_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall x :e R :^: idx_n (dimindex M * dimindex N), matrify R M N (vector_mul (idx_n (dimindex M * dimindex N)) c x) = matrix_cmul M N c (matrify R M N x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4201 / MATRIFY_SUB   (hash md5:dfb1a92cba0e189936c1899baeb7fe92)
// not bridged: 
Theorem MATRIFY_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e R :^: idx_n (dimindex M * dimindex N), matrify R M N (vector_sub (idx_n (dimindex M * dimindex N)) x y) = matrix_sub M N (matrify R M N x) (matrify R M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4206 / MATRIFY_EQ_0   (hash md5:2b96ae2d163d860ae1d548e88ad3e03f)
// not bridged: 
Theorem MATRIFY_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall m :e R :^: idx_n (dimindex M * dimindex N), matrify R M N m = mat M N 0 <-> m = vec (idx_n (dimindex M * dimindex N)) 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4210 / BILINEAR_MATRIX_VECTOR_MUL   (hash md5:451c39199e4b598f8573fea0f2e8540e)
// not bridged: 
Theorem BILINEAR_MATRIX_VECTOR_MUL : forall M N:set, M <> Empty -> N <> Empty -> bilinear N M (idx_n (dimindex M * dimindex N)) (fun m:set => matrix_vector_mul M N (matrify R M N m)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4217 / BILINEAR_MATRIX_MUL   (hash md5:bb02a557ad40a85f9c96675a4f3373bd)
// not bridged: 
Theorem BILINEAR_MATRIX_MUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> bilinear (idx_n (dimindex N * dimindex P)) (idx_n (dimindex M * dimindex P)) (idx_n (dimindex M * dimindex N)) (fun m1:set => fun m2:set => vectorize R M P (matrix_mul M N P (matrify R M N m1) (matrify R N P m2))).
Admitted.

// HOL Light: Multivariate/vectors.ml:4230 / LINEAR_FSTCART   (hash md5:8c903fc5723f3c7e4e5a234910f4d4f2)
// not bridged: 
Theorem LINEAR_FSTCART : forall A B:set, A <> Empty -> B <> Empty -> linear (idx_n (dimindex B + dimindex A)) B (fun x:set => fstcart B x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4236 / LINEAR_SNDCART   (hash md5:da7138c2505f56f0259cb5951512deff)
// not bridged: 
Theorem LINEAR_SNDCART : forall A B:set, A <> Empty -> B <> Empty -> linear (idx_n (dimindex A + dimindex B)) B (fun x:set => sndcart A B x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4243 / FSTCART_VEC   (hash md5:1e159242fd045b03edd1f39997f2655a)
// not bridged: 
Theorem FSTCART_VEC : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, fstcart B (vec (idx_n (dimindex B + dimindex A)) n) = vec B n.
Admitted.

// HOL Light: Multivariate/vectors.ml:4248 / FSTCART_ADD   (hash md5:6b069b03f05010aa40453938fdff2d61)
// not bridged: 
Theorem FSTCART_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e R :^: idx_n (dimindex M + dimindex N), fstcart M (vector_add (idx_n (dimindex M + dimindex N)) x y) = vector_add M (fstcart M x) (fstcart M y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4252 / FSTCART_CMUL   (hash md5:65165f9326bfac8b881f699a2a1b4e6f)
// not bridged: 
Theorem FSTCART_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx_n (dimindex M + dimindex N), forall c :e R, fstcart M (vector_mul (idx_n (dimindex M + dimindex N)) c x) = vector_mul M c (fstcart M x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4256 / FSTCART_NEG   (hash md5:31d5e55cdd522804b92450360e4c8ac9)
// not bridged: 
Theorem FSTCART_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx_n (dimindex M + dimindex N), vector_neg M (fstcart M x) = fstcart M (vector_neg (idx_n (dimindex M + dimindex N)) x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4261 / FSTCART_SUB   (hash md5:ff32bef88a491a559558182e91e6def4)
// not bridged: 
Theorem FSTCART_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e R :^: idx_n (dimindex M + dimindex N), fstcart M (vector_sub (idx_n (dimindex M + dimindex N)) x y) = vector_sub M (fstcart M x) (fstcart M y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4265 / FSTCART_VSUM   (hash md5:2c6e85999b0d2e47a6a90baabc62c823)
// not bridged: 
Theorem FSTCART_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall k c= C, forall x:set -> set, (forall x0 :e C, x x0 :e R :^: idx_n (dimindex B + dimindex A)) -> finite k -> fstcart B (vsum C (idx_n (dimindex B + dimindex A)) k x) = vsum C B k (fun i:set => fstcart B (x i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4271 / SNDCART_VEC   (hash md5:40ee1fe9cb8a2f11c7fcf71079ddd6ce)
// not bridged: 
Theorem SNDCART_VEC : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, sndcart A B (vec (idx_n (dimindex A + dimindex B)) n) = vec B n.
Admitted.

// HOL Light: Multivariate/vectors.ml:4277 / SNDCART_ADD   (hash md5:311f480775c840f7c88a23d86c2b9495)
// not bridged: 
Theorem SNDCART_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e R :^: idx_n (dimindex M + dimindex N), sndcart M N (vector_add (idx_n (dimindex M + dimindex N)) x y) = vector_add N (sndcart M N x) (sndcart M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4281 / SNDCART_CMUL   (hash md5:d5c6f833c637ba63e8c4bcf18605e4aa)
// not bridged: 
Theorem SNDCART_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx_n (dimindex M + dimindex N), forall c :e R, sndcart M N (vector_mul (idx_n (dimindex M + dimindex N)) c x) = vector_mul N c (sndcart M N x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4285 / SNDCART_NEG   (hash md5:a3721aab619b8d7c51816886ddaec0d2)
// not bridged: 
Theorem SNDCART_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx_n (dimindex M + dimindex N), vector_neg N (sndcart M N x) = sndcart M N (vector_neg (idx_n (dimindex M + dimindex N)) x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4290 / SNDCART_SUB   (hash md5:16f38fad54948b9046552420981013b2)
// not bridged: 
Theorem SNDCART_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e R :^: idx_n (dimindex M + dimindex N), sndcart M N (vector_sub (idx_n (dimindex M + dimindex N)) x y) = vector_sub N (sndcart M N x) (sndcart M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4294 / SNDCART_VSUM   (hash md5:d4952d1c357e0f419c9c13967d45cdf5)
// not bridged: 
Theorem SNDCART_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall k c= C, forall x:set -> set, (forall x0 :e C, x x0 :e R :^: idx_n (dimindex A + dimindex B)) -> finite k -> sndcart A B (vsum C (idx_n (dimindex A + dimindex B)) k x) = vsum C B k (fun i:set => sndcart A B (x i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4300 / PASTECART_VEC   (hash md5:0012fc7ecaa9a6f22965314abc379f04)
// not bridged: 
Theorem PASTECART_VEC : forall A B:set, A <> Empty -> B <> Empty -> forall n :e omega, pastecart A B (vec A n) (vec B n) = vec (idx_n (dimindex A + dimindex B)) n.
Admitted.

// HOL Light: Multivariate/vectors.ml:4305 / PASTECART_ADD   (hash md5:3c3cbc83ec65ec530b489ae7a8b3ba9f)
// not bridged: 
Theorem PASTECART_ADD : forall M N:set, M <> Empty -> N <> Empty -> forall x1 :e R :^: idx M, forall y1 :e R :^: idx N, forall x2 :e R :^: idx M, forall y2 :e R :^: idx N, vector_add (idx_n (dimindex M + dimindex N)) (pastecart M N x1 y1) (pastecart M N x2 y2) = pastecart M N (vector_add M x1 x2) (vector_add N y1 y2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4311 / PASTECART_CMUL   (hash md5:c7163e4061646058d9b25e367eef13f5)
// not bridged: 
Theorem PASTECART_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall x1 :e R :^: idx A, forall y1 :e R :^: idx B, forall c :e R, pastecart A B (vector_mul A c x1) (vector_mul B c y1) = vector_mul (idx_n (dimindex A + dimindex B)) c (pastecart A B x1 y1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4316 / PASTECART_NEG   (hash md5:b9aa444e0a85ccb89c9fd26b24e0d29b)
// not bridged: 
Theorem PASTECART_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx M, forall y :e R :^: idx N, pastecart M N (vector_neg M x) (vector_neg N y) = vector_neg (idx_n (dimindex M + dimindex N)) (pastecart M N x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4321 / PASTECART_SUB   (hash md5:6f18cbfbc0eb876175bc07d3a007bc4b)
// not bridged: 
Theorem PASTECART_SUB : forall M N:set, M <> Empty -> N <> Empty -> forall x1 :e R :^: idx M, forall y1 :e R :^: idx N, forall x2 :e R :^: idx M, forall y2 :e R :^: idx N, vector_sub (idx_n (dimindex M + dimindex N)) (pastecart M N x1 y1) (pastecart M N x2 y2) = pastecart M N (vector_sub M x1 x2) (vector_sub N y1 y2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4326 / PASTECART_VSUM   (hash md5:8fc9d3eb04a042edfa3b4997d658f84e)
// not bridged: 
Theorem PASTECART_VSUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall k c= C, forall x:set -> set, (forall x0 :e C, x x0 :e R :^: idx A) -> forall y:set -> set, (forall x0 :e C, y x0 :e R :^: idx B) -> finite k -> pastecart A B (vsum C A k x) (vsum C B k y) = vsum C (idx_n (dimindex A + dimindex B)) k (fun i:set => pastecart A B (x i) (y i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4332 / PASTECART_EQ_VEC   (hash md5:839c3f874da2881e7ff1f3aaa67d5f4c)
// not bridged: 
Theorem PASTECART_EQ_VEC : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx A, forall y :e R :^: idx B, forall n :e omega, pastecart A B x y = vec (idx_n (dimindex A + dimindex B)) n <-> x = vec A n /\ y = vec B n.
Admitted.

// HOL Light: Multivariate/vectors.ml:4337 / FSTCART_SNDCART_MAT_ZERO   (hash md5:b6ed4bd06dab4deaa5492c819794f612)
// not bridged: 
Theorem FSTCART_SNDCART_MAT_ZERO : forall A B M:set, A <> Empty -> B <> Empty -> M <> Empty -> fstcart A (mat (idx_n (dimindex A + dimindex B)) M 0) = mat A M 0 /\ sndcart A B (mat (idx_n (dimindex A + dimindex B)) M 0) = mat B M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4342 / FSTCART_SNDCART_MATRIX_ADD   (hash md5:23d720e446762b4dbfdb472fffc76088)
// not bridged: 
Theorem FSTCART_SNDCART_MATRIX_ADD : forall K M N:set, K <> Empty -> M <> Empty -> N <> Empty -> forall x y :e R :^: idx K :^: idx_n (dimindex M + dimindex N), fstcart M (matrix_add (idx_n (dimindex M + dimindex N)) K x y) = matrix_add M K (fstcart M x) (fstcart M y) /\ sndcart M N (matrix_add (idx_n (dimindex M + dimindex N)) K x y) = matrix_add N K (sndcart M N x) (sndcart M N y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4349 / NORM_FSTCART   (hash md5:6714f6c4fd688de1ba74e4c902d16ea2)
// not bridged: 
Theorem NORM_FSTCART : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx_n (dimindex B + dimindex A), vector_norm B (fstcart B x) <= vector_norm (idx_n (dimindex B + dimindex A)) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4359 / DIST_FSTCART   (hash md5:0cec6e687c3dca5348cb2dfa54ec667a)
// not bridged: 
Theorem DIST_FSTCART : forall A B:set, A <> Empty -> B <> Empty -> forall x y :e R :^: idx_n (dimindex B + dimindex A), distance B (fstcart B x,fstcart B y) <= distance (idx_n (dimindex B + dimindex A)) (x,y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4363 / NORM_SNDCART   (hash md5:b0915e28cbf2c83719368cd3c9cec93d)
// not bridged: 
Theorem NORM_SNDCART : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx_n (dimindex A + dimindex B), vector_norm B (sndcart A B x) <= vector_norm (idx_n (dimindex A + dimindex B)) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4376 / DIST_SNDCART   (hash md5:c45fbbd83c2c9034517ebd1a9cfa8256)
// not bridged: 
Theorem DIST_SNDCART : forall A B:set, A <> Empty -> B <> Empty -> forall x y :e R :^: idx_n (dimindex A + dimindex B), distance B (sndcart A B x,sndcart A B y) <= distance (idx_n (dimindex A + dimindex B)) (x,y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4380 / DOT_PASTECART   (hash md5:f7934f20cb157ed08f5158570af02c42)
// not bridged: 
Theorem DOT_PASTECART : forall A B:set, A <> Empty -> B <> Empty -> forall x1 :e R :^: idx A, forall x2 :e R :^: idx B, forall y1 :e R :^: idx A, forall y2 :e R :^: idx B, dot (idx_n (dimindex A + dimindex B)) (pastecart A B x1 x2) (pastecart A B y1 y2) = dot A x1 y1 + dot B x2 y2.
Admitted.

// HOL Light: Multivariate/vectors.ml:4390 / SQNORM_PASTECART   (hash md5:6e9b843bcb56872756103351fad815fc)
// not bridged: 
Theorem SQNORM_PASTECART : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx A, forall y :e R :^: idx B, vector_norm (idx_n (dimindex A + dimindex B)) (pastecart A B x y) ^ 2 = vector_norm A x ^ 2 + vector_norm B y ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:4394 / NORM_PASTECART   (hash md5:424fa6e419be77f834bc4eee49594c15)
// not bridged: 
Theorem NORM_PASTECART : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx A, forall y :e R :^: idx B, vector_norm (idx_n (dimindex A + dimindex B)) (pastecart A B x y) = if 0 <= vector_norm A x ^ 2 + vector_norm B y ^ 2 then sqrt_SNo_nonneg (vector_norm A x ^ 2 + vector_norm B y ^ 2) else - sqrt_SNo_nonneg (- (vector_norm A x ^ 2 + vector_norm B y ^ 2)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4400 / NORM_PASTECART_LE   (hash md5:4d1ebb132fa96a725bb93ac525152e1f)
// not bridged: 
Theorem NORM_PASTECART_LE : forall A B:set, A <> Empty -> B <> Empty -> forall x :e R :^: idx A, forall y :e R :^: idx B, vector_norm (idx_n (dimindex A + dimindex B)) (pastecart A B x y) <= vector_norm A x + vector_norm B y.
Admitted.

// HOL Light: Multivariate/vectors.ml:4405 / DIST_PASTECART_LE   (hash md5:6ccb3e44b3caeb44891303c413ae8752)
// not bridged: 
Theorem DIST_PASTECART_LE : forall A B:set, A <> Empty -> B <> Empty -> forall x1 :e R :^: idx A, forall y1 :e R :^: idx B, forall x2 :e R :^: idx A, forall y2 :e R :^: idx B, distance (idx_n (dimindex A + dimindex B)) (pastecart A B x1 y1,pastecart A B x2 y2) <= distance A (x1,x2) + distance B (y1,y2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4411 / NORM_LE_PASTECART   (hash md5:3fd451f6ca213ccb27643e0fae5f27ee)
// not bridged: 
Theorem NORM_LE_PASTECART : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx M, forall y :e R :^: idx N, vector_norm M x <= vector_norm (idx_n (dimindex M + dimindex N)) (pastecart M N x y) /\ vector_norm N y <= vector_norm (idx_n (dimindex M + dimindex N)) (pastecart M N x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4419 / DIST_LE_PASTECART   (hash md5:b74c5446417c5ed74d4da8b2e9112641)
// not bridged: 
Theorem DIST_LE_PASTECART : forall A B:set, A <> Empty -> B <> Empty -> forall x1 :e R :^: idx A, forall y1 :e R :^: idx B, forall x2 :e R :^: idx A, forall y2 :e R :^: idx B, distance A (x1,x2) <= distance (idx_n (dimindex A + dimindex B)) (pastecart A B x1 y1,pastecart A B x2 y2) /\ distance B (y1,y2) <= distance (idx_n (dimindex A + dimindex B)) (pastecart A B x1 y1,pastecart A B x2 y2).
Admitted.

// HOL Light: Multivariate/vectors.ml:4425 / NORM_PASTECART_0   (hash md5:947d926a749bfb84f0971a97c2f6cf5c)
// not bridged: 
Theorem NORM_PASTECART_0 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall x :e R :^: idx A, vector_norm (idx_n (dimindex A + dimindex B)) (pastecart A B x (vec B 0)) = vector_norm A x) /\ forall y :e R :^: idx C, vector_norm (idx_n (dimindex D + dimindex C)) (pastecart D C (vec D 0) y) = vector_norm C y.
Admitted.

// HOL Light: Multivariate/vectors.ml:4431 / DIST_PASTECART_CANCEL   (hash md5:cb6d91f41c0b0ccd8a44c91081e26dde)
// not bridged: 
Theorem DIST_PASTECART_CANCEL : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall x x' :e R :^: idx A, forall y :e R :^: idx B, distance (idx_n (dimindex A + dimindex B)) (pastecart A B x y,pastecart A B x' y) = distance A (x,x')) /\ forall x :e R :^: idx C, forall y y' :e R :^: idx D, distance (idx_n (dimindex C + dimindex D)) (pastecart C D x y,pastecart C D x y') = distance D (y,y').
Admitted.

// HOL Light: Multivariate/vectors.ml:4436 / LINEAR_PASTECART   (hash md5:528a0e1484573ddd2a193f3187901b17)
// not bridged: 
Theorem LINEAR_PASTECART : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> linear M N f /\ linear M P g -> linear M (idx_n (dimindex N + dimindex P)) (fun x:set => pastecart N P (f x) (g x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4441 / LINEAR_PASTECART_EQ   (hash md5:6de741e9cbdb042d80b530321f9bf14b)
// not bridged: 
Theorem LINEAR_PASTECART_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> (linear M (idx_n (dimindex N + dimindex P)) (fun x:set => pastecart N P (f x) (g x)) <-> linear M N f /\ linear M P g).
Admitted.

// HOL Light: Multivariate/vectors.ml:4451 / dropout   (hash md5:731ce63d9e6ad406156ea7e5d5c9fa22)
// not bridged: 
Theorem dropout_thm : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x :e R :^: idx M, dropout M N k x = fun i :e idx N => if i < k /\ i <= dimindex M then x i else if i + 1 <= dimindex M then x (i + 1) else 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4457 / pushin   (hash md5:ac6dd54fe42333bb980ac319d7cc6340)
// not bridged: 
Theorem pushin_thm : forall A B C:set, A <> Empty -> C <> Empty -> forall k :e omega, forall t :e B, forall x :e B :^: idx C, pushin A B C k t x = fun i :e idx A => if i < k then x i else if i = k then t else x (minus_nat i 1).
Admitted.

// HOL Light: Multivariate/vectors.ml:4462 / DROPOUT_PUSHIN   (hash md5:1ee5153e773a64862fa8be3698d49581)
// not bridged: 
Theorem DROPOUT_PUSHIN : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall t :e R, forall x :e R :^: idx M, dimindex M + 1 = dimindex N -> dropout N M k (pushin N R M k t x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4472 / PUSHIN_DROPOUT   (hash md5:d82a091194e1053eab9af80def4f16fb)
// not bridged: 
Theorem PUSHIN_DROPOUT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x :e R :^: idx N, dimindex M + 1 = dimindex N /\ (1 <= k /\ k <= dimindex N) -> pushin N R M k (x k) (dropout N M k x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4490 / DROPOUT_GALOIS   (hash md5:ac324f0de7c6b0333280c9f0667f928c)
// not bridged: 
Theorem DROPOUT_GALOIS : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x :e R :^: idx N, forall y :e R :^: idx M, dimindex M + 1 = dimindex N /\ (1 <= k /\ k <= dimindex N) -> (y = dropout N M k x <-> exists t :e R, x = pushin N R M k t y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4500 / IN_IMAGE_DROPOUT   (hash md5:555dfee2f7fcec931d1d3173c95e8507)
// not bridged: 
Theorem IN_IMAGE_DROPOUT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x :e R :^: idx M, forall s c= R :^: idx N, dimindex M + 1 = dimindex N /\ (1 <= k /\ k <= dimindex N) -> (x :e {dropout N M k x0 | x0 :e s} <-> exists t :e R, pushin N R M k t x :e s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4507 / DROPOUT_EQ   (hash md5:7a070478443a5c5a627dc04e5898815f)
// not bridged: 
Theorem DROPOUT_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall x y :e R :^: idx N, forall k :e omega, dimindex M + 1 = dimindex N /\ (1 <= k /\ (k <= dimindex N /\ (x k = y k /\ dropout N M k x = dropout N M k y))) -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:4523 / DROPOUT_0   (hash md5:8275359b242f36e1bfda5607a564fd61)
// not bridged: 
Theorem DROPOUT_0 : forall A N:set, A <> Empty -> N <> Empty -> forall k :e omega, dropout N A k (vec N 0) = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:4527 / DOT_DROPOUT   (hash md5:d919022947bd3ffbec7bcbe3c4aaf753)
// not bridged: 
Theorem DOT_DROPOUT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall x y :e R :^: idx N, dimindex M + 1 = dimindex N /\ (1 <= k /\ k <= dimindex N) -> dot M (dropout N M k x) (dropout N M k y) = dot N x y + - x k * y k.
Admitted.

// HOL Light: Multivariate/vectors.ml:4557 / DOT_PUSHIN   (hash md5:a861f89877876dc00d9cb92d9570a50f)
// not bridged: 
Theorem DOT_PUSHIN : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, forall a b :e R, forall x y :e R :^: idx M, dimindex M + 1 = dimindex N /\ (1 <= k /\ k <= dimindex N) -> dot N (pushin N R M k a x) (pushin N R M k b y) = dot M x y + a * b.
Admitted.

// HOL Light: Multivariate/vectors.ml:4572 / DROPOUT_ADD   (hash md5:466490b477bd16539d183abfc77470ba)
// not bridged: 
Theorem DROPOUT_ADD : forall A N:set, A <> Empty -> N <> Empty -> forall k :e omega, forall x y :e R :^: idx N, dropout N A k (vector_add N x y) = vector_add A (dropout N A k x) (dropout N A k y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4578 / DROPOUT_SUB   (hash md5:99faafb2458078ba45982b3a8df87da7)
// not bridged: 
Theorem DROPOUT_SUB : forall A N:set, A <> Empty -> N <> Empty -> forall k :e omega, forall x y :e R :^: idx N, dropout N A k (vector_sub N x y) = vector_sub A (dropout N A k x) (dropout N A k y).
Admitted.

// HOL Light: Multivariate/vectors.ml:4584 / DROPOUT_MUL   (hash md5:f344ef18564e0b05989dd91f3f94350d)
// not bridged: 
Theorem DROPOUT_MUL : forall A N:set, A <> Empty -> N <> Empty -> forall k :e omega, forall c :e R, forall x :e R :^: idx N, dropout N A k (vector_mul N c x) = vector_mul A c (dropout N A k x).
Admitted.

// HOL Light: Multivariate/vectors.ml:4590 / LINEAR_DROPOUT   (hash md5:70a5d9d40a6c9f7b19a4e892a9df0b5c)
// not bridged: 
Theorem LINEAR_DROPOUT : forall M N:set, M <> Empty -> N <> Empty -> forall k :e omega, linear N M (dropout N M k).
Admitted.

// HOL Light: Multivariate/vectors.ml:4594 / LINEAR_PUSHIN   (hash md5:a11c39c3491b90a792e0b9f6e101696d)
// not bridged: 
Theorem LINEAR_PUSHIN : forall A B:set, A <> Empty -> B <> Empty -> forall k :e omega, linear A B (pushin B R A k 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:4604 / subspace   (hash md5:0a81a40639e08e9a9ee8e286b3709c6d)
// not bridged: 
Theorem subspace_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A s <-> vec A 0 :e s /\ ((forall x y :e R :^: idx A, x :e s /\ y :e s -> vector_add A x y :e s) /\ forall c :e R, forall x :e R :^: idx A, x :e s -> vector_mul A c x :e s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4610 / span   (hash md5:b79fb4155b848ea4572738743948ad55)
// not bridged: 
Theorem span_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, span A s = hull (R :^: idx A) {x :e Power (R :^: idx A) | subspace A x} s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4613 / dependent   (hash md5:d37590cc5be58ababcc8cc71a6e753a9)
// not bridged: 
Theorem dependent_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, dependent A s <-> exists a :e R :^: idx A, a :e s /\ a :e span A (s :\: {a}).
Admitted.

// HOL Light: Multivariate/vectors.ml:4616 / independent   (hash md5:8d6c1e09e84b84c217cdbea408a4a592)
// not bridged: 
Theorem independent_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, independent A s <-> ~ dependent A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4623 / SUBSPACE_UNIV   (hash md5:6a0b0f5233a6073452ddc0d061c6e693)
// not bridged: 
Theorem SUBSPACE_UNIV : forall N:set, N <> Empty -> subspace N (R :^: idx N).
Admitted.

// HOL Light: Multivariate/vectors.ml:4627 / SUBSPACE_IMP_NONEMPTY   (hash md5:2370b5ec9d478afd125376b99eec0b86)
// not bridged: 
Theorem SUBSPACE_IMP_NONEMPTY : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A s -> ~ s = Empty.
Admitted.

// HOL Light: Multivariate/vectors.ml:4631 / SUBSPACE_0   (hash md5:7624811974b3ea4e3c1d037346e7e28c)
// not bridged: 
Theorem SUBSPACE_0 : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A s -> vec A 0 :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4635 / SUBSPACE_ADD   (hash md5:e780bda98f790a39d6051c3aa067b5f2)
// not bridged: 
Theorem SUBSPACE_ADD : forall A:set, A <> Empty -> forall x y :e R :^: idx A, forall s c= R :^: idx A, subspace A s /\ (x :e s /\ y :e s) -> vector_add A x y :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4639 / SUBSPACE_MUL   (hash md5:d54a6b3f7861bfabe2f45dfce6a700cd)
// not bridged: 
Theorem SUBSPACE_MUL : forall A:set, A <> Empty -> forall x :e R :^: idx A, forall c :e R, forall s c= R :^: idx A, subspace A s /\ x :e s -> vector_mul A c x :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4643 / SUBSPACE_MUL_EQ   (hash md5:2bcedc7048ffaec7cc6b7dbc486cb4af)
// not bridged: 
Theorem SUBSPACE_MUL_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall c :e R, forall x :e R :^: idx N, subspace N s -> (vector_mul N c x :e s <-> c = 0 \/ x :e s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4652 / SUBSPACE_NEG   (hash md5:6cc4f9bead30e757f55191f7fc283615)
// not bridged: 
Theorem SUBSPACE_NEG : forall A:set, A <> Empty -> forall x :e R :^: idx A, forall s c= R :^: idx A, subspace A s /\ x :e s -> vector_neg A x :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4656 / SUBSPACE_NEG_EQ   (hash md5:0b209e6180eb3cd3e113822774b16f86)
// not bridged: 
Theorem SUBSPACE_NEG_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, subspace N s -> (vector_neg N x :e s <-> x :e s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4660 / SUBSPACE_SUB   (hash md5:ff39420a49ea3e08ede0c35c3262ab1b)
// not bridged: 
Theorem SUBSPACE_SUB : forall A:set, A <> Empty -> forall x y :e R :^: idx A, forall s c= R :^: idx A, subspace A s /\ (x :e s /\ y :e s) -> vector_sub A x y :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4664 / SUBSPACE_VSUM   (hash md5:3c7e89c852908a6c1481ee9eb9b05fa0)
// not bridged: 
Theorem SUBSPACE_VSUM : forall A B:set, A <> Empty -> B <> Empty -> forall s c= R :^: idx B, forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall t c= A, subspace B s /\ (finite t /\ (forall x :e A, x :e t -> f x :e s)) -> vsum A B t f :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4672 / SUBSPACE_LINEAR_IMAGE   (hash md5:a5195cdf43d09e11528349b240365b5f)
// not bridged: 
Theorem SUBSPACE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ subspace B s -> subspace A {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:4678 / SUBSPACE_LINEAR_PREIMAGE   (hash md5:bf6099b72ac7a75a14a6c87626f9652c)
// not bridged: 
Theorem SUBSPACE_LINEAR_PREIMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx B, linear A B f /\ subspace B s -> subspace A {x :e R :^: idx A | f x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:4683 / SUBSPACE_TRIVIAL   (hash md5:d74240d9e7c852d64844eb393e62bf01)
// not bridged: 
Theorem SUBSPACE_TRIVIAL : forall A:set, A <> Empty -> subspace A {vec A 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:4687 / SUBSPACE_INTER   (hash md5:4b709caec5bc3de2ebdcd7016df2f3c0)
// not bridged: 
Theorem SUBSPACE_INTER : forall A:set, A <> Empty -> forall s t c= R :^: idx A, subspace A s /\ subspace A t -> subspace A (s :/\: t).
Admitted.

// HOL Light: Multivariate/vectors.ml:4691 / SUBSPACE_INTERS   (hash md5:ec0c0417fb34bcfb67b04dde72a9fbd2)
// not bridged: 
Theorem SUBSPACE_INTERS : forall A:set, A <> Empty -> forall f c= Power (R :^: idx A), (forall s c= R :^: idx A, s :e f -> subspace A s) -> subspace A {x :e R :^: idx A | forall Y :e f, x :e Y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:4695 / LINEAR_INJECTIVE_0_SUBSPACE   (hash md5:6d90390674ee5dfd78618e661791db4a)
// not bridged: 
Theorem LINEAR_INJECTIVE_0_SUBSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ subspace M s -> ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) <-> forall x :e R :^: idx M, x :e s /\ f x = vec N 0 -> x = vec M 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:4705 / SUBSPACE_UNION_CHAIN   (hash md5:542d08123313720edd9a49a70b711d80)
// not bridged: 
Theorem SUBSPACE_UNION_CHAIN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ (subspace N t /\ subspace N (s :\/: t)) -> s c= t \/ t c= s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4718 / SUBSPACE_PCROSS   (hash md5:b5126949e86dd95fd548ba732bb1e401)
// not bridged: 
Theorem SUBSPACE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace M s /\ subspace N t -> subspace (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}).
Admitted.

// HOL Light: Multivariate/vectors.ml:4725 / SUBSPACE_PCROSS_EQ   (hash md5:79a9230736b0a051f91e904b309719bc)
// not bridged: 
Theorem SUBSPACE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) <-> subspace M s /\ subspace N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:4749 / SPAN_SPAN   (hash md5:750bab29f645ca62fa63430a7f4b73e8)
// not bridged: 
Theorem SPAN_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, span A (span A s) = span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4753 / SPAN_MONO   (hash md5:0f66674127a4086a037e096b3845b6db)
// not bridged: 
Theorem SPAN_MONO : forall A:set, A <> Empty -> forall s t c= R :^: idx A, s c= t -> span A s c= span A t.
Admitted.

// HOL Light: Multivariate/vectors.ml:4757 / SUBSPACE_SPAN   (hash md5:4b4984f489e13f264fb2a9b5c4d5ea7c)
// not bridged: 
Theorem SUBSPACE_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A (span A s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4762 / NONEMPTY_SPAN   (hash md5:9d4541c83791a2a98927f218cdac3746)
// not bridged: 
Theorem NONEMPTY_SPAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ span N s = Empty.
Admitted.

// HOL Light: Multivariate/vectors.ml:4766 / SPAN_CLAUSES   (hash md5:cb25e744a668dd5e94161ce893818a22)
// not bridged: 
Theorem SPAN_CLAUSES : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall s c= R :^: idx B, (forall a :e R :^: idx A, forall s0 c= R :^: idx A, a :e s0 -> a :e span A s0) /\ (vec B 0 :e span B s /\ ((forall x y :e R :^: idx D, forall s0 c= R :^: idx D, x :e span D s0 /\ y :e span D s0 -> vector_add D x y :e span D s0) /\ forall x :e R :^: idx C, forall c :e R, forall s0 c= R :^: idx C, x :e span C s0 -> vector_mul C c x :e span C s0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:4773 / SPAN_INDUCT   (hash md5:2337e955814fc198c94dbc0176522633)
// not bridged: 
Theorem SPAN_INDUCT : forall A:set, A <> Empty -> forall s h c= R :^: idx A, (forall x :e R :^: idx A, x :e s -> x :e h) /\ subspace A h -> forall x :e R :^: idx A, x :e span A s -> x :e h.
Admitted.

// HOL Light: Multivariate/vectors.ml:4777 / SPAN_EMPTY   (hash md5:85cdcb43dd61a10b06730ffc04b29fee)
// not bridged: 
Theorem SPAN_EMPTY : forall A:set, A <> Empty -> span A Empty = {vec A 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:4783 / INDEPENDENT_EMPTY   (hash md5:0062e38a557f3d88f5f5a7974cb957ae)
// not bridged: 
Theorem INDEPENDENT_EMPTY : forall A:set, A <> Empty -> independent A Empty.
Admitted.

// HOL Light: Multivariate/vectors.ml:4787 / INDEPENDENT_NONZERO   (hash md5:07bbf74a34578ba05224af7070ee86c9)
// not bridged: 
Theorem INDEPENDENT_NONZERO : forall A:set, A <> Empty -> forall s c= R :^: idx A, independent A s -> ~ vec A 0 :e s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4791 / INDEPENDENT_MONO   (hash md5:f75c17b0ea118187b9d512a86e17f1d7)
// not bridged: 
Theorem INDEPENDENT_MONO : forall A:set, A <> Empty -> forall s t c= R :^: idx A, independent A t /\ s c= t -> independent A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4796 / DEPENDENT_MONO   (hash md5:80f1dd1cb6d834069a1d80229aac67b9)
// not bridged: 
Theorem DEPENDENT_MONO : forall N:set, N <> Empty -> forall s t c= R :^: idx N, dependent N s /\ s c= t -> dependent N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:4801 / SPAN_SUBSPACE   (hash md5:d679a94688d5a4c62e7714a80a625666)
// not bridged: 
Theorem SPAN_SUBSPACE : forall A:set, A <> Empty -> forall b s c= R :^: idx A, b c= s /\ (s c= span A b /\ subspace A s) -> span A b = s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4805 / SPAN_INDUCT_ALT   (hash md5:5e57670bc9cb2e583987652a598e737a)
// not bridged: 
Theorem SPAN_INDUCT_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall h:set -> prop, h (vec N 0) /\ (forall c :e R, forall x y :e R :^: idx N, x :e s /\ h y -> h (vector_add N (vector_mul N c x) y)) -> forall x :e R :^: idx N, x :e span N s -> h x.
Admitted.

// HOL Light: Multivariate/vectors.ml:4826 / SPAN_SUPERSET   (hash md5:16740e39e0914ddbb2654c1ba1dd78aa)
// not bridged: 
Theorem SPAN_SUPERSET : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, x :e s -> x :e span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4830 / SPAN_INC   (hash md5:f8cc184847e70ca5f04125a4204319e4)
// not bridged: 
Theorem SPAN_INC : forall A:set, A <> Empty -> forall s c= R :^: idx A, s c= span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4834 / SPAN_UNION_SUBSET   (hash md5:8768fe5f9186ee51b44fd239c428ecff)
// not bridged: 
Theorem SPAN_UNION_SUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, span A s :\/: span A t c= span A (s :\/: t).
Admitted.

// HOL Light: Multivariate/vectors.ml:4838 / SPAN_UNIV   (hash md5:647927dc3b92773ca168d081e3bb2f80)
// not bridged: 
Theorem SPAN_UNIV : forall N:set, N <> Empty -> span N (R :^: idx N) = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:4842 / SPAN_0   (hash md5:248bf3417adabd7bcd1f99acaa1f8a71)
// not bridged: 
Theorem SPAN_0 : forall A:set, A <> Empty -> forall s c= R :^: idx A, vec A 0 :e span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4846 / SPAN_ADD   (hash md5:79bd8e82e605fa61bc87b5352248d7fd)
// not bridged: 
Theorem SPAN_ADD : forall A:set, A <> Empty -> forall x y :e R :^: idx A, forall s c= R :^: idx A, x :e span A s /\ y :e span A s -> vector_add A x y :e span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4850 / SPAN_MUL   (hash md5:b29a5a6086777d1f72fa04843768d5a6)
// not bridged: 
Theorem SPAN_MUL : forall A:set, A <> Empty -> forall x :e R :^: idx A, forall c :e R, forall s c= R :^: idx A, x :e span A s -> vector_mul A c x :e span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4854 / SPAN_MUL_EQ   (hash md5:97f5d83cb798d831fc309b5ce6ff4d8d)
// not bridged: 
Theorem SPAN_MUL_EQ : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall c :e R, forall s c= R :^: idx N, ~ c = 0 -> (vector_mul N c x :e span N s <-> x :e span N s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4861 / SPAN_NEG   (hash md5:f826f6782aa75bc647dd72f8006d75a7)
// not bridged: 
Theorem SPAN_NEG : forall A:set, A <> Empty -> forall x :e R :^: idx A, forall s c= R :^: idx A, x :e span A s -> vector_neg A x :e span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4865 / SPAN_NEG_EQ   (hash md5:1e639afc7c049f8ab1dfcf923a6dcd05)
// not bridged: 
Theorem SPAN_NEG_EQ : forall A:set, A <> Empty -> forall x :e R :^: idx A, forall s c= R :^: idx A, vector_neg A x :e span A s <-> x :e span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4869 / SPAN_SUB   (hash md5:4cc4e32cc37fafb830a4c14f20796c22)
// not bridged: 
Theorem SPAN_SUB : forall A:set, A <> Empty -> forall x y :e R :^: idx A, forall s c= R :^: idx A, x :e span A s /\ y :e span A s -> vector_sub A x y :e span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4873 / SPAN_VSUM   (hash md5:b47759a3b491fd9cc11f4e7bd0605069)
// not bridged: 
Theorem SPAN_VSUM : forall A B:set, A <> Empty -> B <> Empty -> forall s c= R :^: idx B, forall f:set -> set, (forall x :e A, f x :e R :^: idx B) -> forall t c= A, finite t /\ (forall x :e A, x :e t -> f x :e span B s) -> vsum A B t f :e span B s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4878 / SPAN_ADD_EQ   (hash md5:77b9ba8aed823456c2387d1141b5fe9a)
// not bridged: 
Theorem SPAN_ADD_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x y :e R :^: idx A, x :e span A s -> (vector_add A x y :e span A s <-> y :e span A s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4882 / SPAN_EQ_SELF   (hash md5:186b6a144dc694d52c1d4f5780058655)
// not bridged: 
Theorem SPAN_EQ_SELF : forall A:set, A <> Empty -> forall s c= R :^: idx A, span A s = s <-> subspace A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4888 / SPAN_OF_SUBSPACE   (hash md5:da13fc009be393b5b3943e14df830007)
// not bridged: 
Theorem SPAN_OF_SUBSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> span N s = s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4892 / SPAN_SUBSET_SUBSPACE   (hash md5:1013d69374fa44597ca16d06bc160321)
// not bridged: 
Theorem SPAN_SUBSET_SUBSPACE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t /\ subspace N t -> span N s c= t.
Admitted.

// HOL Light: Multivariate/vectors.ml:4896 / SUBSPACE_TRANSLATION_SELF   (hash md5:0d065df73c17d690b36aefbf77fdcb48)
// not bridged: 
Theorem SUBSPACE_TRANSLATION_SELF : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall a :e R :^: idx A, subspace A s /\ a :e s -> {vector_add A a x | x :e s} = s.
Admitted.

// HOL Light: Multivariate/vectors.ml:4903 / SUBSPACE_TRANSLATION_SELF_EQ   (hash md5:bb4dbb1f0c59ae3e048c77b77a02af61)
// not bridged: 
Theorem SUBSPACE_TRANSLATION_SELF_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R :^: idx N, subspace N s -> ({vector_add N a x | x :e s} = s <-> a :e s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4912 / SUBSPACE_SUMS   (hash md5:aa6e8bd75afbdd99281e02dc70bbe852)
// not bridged: 
Theorem SUBSPACE_SUMS : forall A:set, A <> Empty -> forall s t c= R :^: idx A, subspace A s /\ subspace A t -> subspace A (\/_ x :e R :^: idx A, {vector_add A x y | y :e R :^: idx A, x :e s /\ y :e t}).
Admitted.

// HOL Light: Multivariate/vectors.ml:4923 / SPAN_UNION   (hash md5:285eeb6db45c6cdfec227607530b2aff)
// not bridged: 
Theorem SPAN_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, span N (s :\/: t) = \/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e span N s /\ y :e span N t}.
Admitted.

// HOL Light: Multivariate/vectors.ml:4942 / SPAN_LINEAR_IMAGE   (hash md5:5d436df7fe033ccf425d4abbca9c139a)
// not bridged: 
Theorem SPAN_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f -> span N {f x | x :e s} = {f x | x :e span M s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:4958 / DEPENDENT_LINEAR_IMAGE_EQ   (hash md5:3bcdde6acbfdcce4221751fc1e4287fc)
// not bridged: 
Theorem DEPENDENT_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (dependent N {f x | x :e s} <-> dependent M s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4971 / DEPENDENT_LINEAR_IMAGE   (hash md5:728b1c56bee4c8fe02a389672f3b8c7e)
// not bridged: 
Theorem DEPENDENT_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) /\ dependent M s) -> dependent N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:4985 / INDEPENDENT_LINEAR_IMAGE_EQ   (hash md5:1c6c71e820b50c8f2fa9fa18c95dbb86)
// not bridged: 
Theorem INDEPENDENT_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> (independent N {f x | x :e s} <-> independent M s).
Admitted.

// HOL Light: Multivariate/vectors.ml:4996 / SPAN_BREAKDOWN   (hash md5:651f68b92537d0aa74159315c3f03c27)
// not bridged: 
Theorem SPAN_BREAKDOWN : forall N:set, N <> Empty -> forall b :e R :^: idx N, forall s c= R :^: idx N, forall a :e R :^: idx N, b :e s /\ a :e span N s -> exists k :e R, vector_sub N a (vector_mul N k b) :e span N (s :\: {b}).
Admitted.

// HOL Light: Multivariate/vectors.ml:5008 / SPAN_BREAKDOWN_EQ   (hash md5:78d676aa60ac943a629b0e1e80e82eca)
// not bridged: 
Theorem SPAN_BREAKDOWN_EQ : forall N:set, N <> Empty -> forall x a :e R :^: idx N, forall s c= R :^: idx N, x :e span N (SetAdjoin s a) <-> exists k :e R, vector_sub N x (vector_mul N k a) :e span N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5021 / SPAN_INSERT_0   (hash md5:d3fc0c4c78dc208af496b3b7668dcb8d)
// not bridged: 
Theorem SPAN_INSERT_0 : forall A:set, A <> Empty -> forall s c= R :^: idx A, span A (SetAdjoin s (vec A 0)) = span A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5025 / SPAN_SING   (hash md5:ed154e6b91dc30b04c3311373e524ac2)
// not bridged: 
Theorem SPAN_SING : forall A:set, A <> Empty -> forall a :e R :^: idx A, span A {a} = {vector_mul A u a | u :e R, u :e R}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5030 / SPAN_2   (hash md5:7d32666efc921aa6d7d92ea8f68705a7)
// not bridged: 
Theorem SPAN_2 : forall A:set, A <> Empty -> forall a b :e R :^: idx A, span A {a,b} = \/_ u :e R, {vector_add A (vector_mul A u a) (vector_mul A v b) | v :e R, u :e R /\ v :e R}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5036 / SPAN_3   (hash md5:92c6c20f46ea473bd5890266dc82aee1)
// not bridged: 
Theorem SPAN_3 : forall A:set, A <> Empty -> forall a b c :e R :^: idx A, span A {a,b,c} = \/_ u :e R, \/_ v :e R, {vector_add A (vector_mul A u a) (vector_add A (vector_mul A v b) (vector_mul A w c)) | w :e R, u :e R /\ (v :e R /\ w :e R)}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5047 / IN_SPAN_INSERT   (hash md5:376f018f7c89f51b2522956f56b60059)
// not bridged: 
Theorem IN_SPAN_INSERT : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall s c= R :^: idx N, a :e span N (SetAdjoin s b) /\ ~ a :e span N s -> b :e span N (SetAdjoin s a).
Admitted.

// HOL Light: Multivariate/vectors.ml:5063 / IN_SPAN_DELETE   (hash md5:ca37f6b1c6ec61308f41d74f6d840f87)
// not bridged: 
Theorem IN_SPAN_DELETE : forall A:set, A <> Empty -> forall a b :e R :^: idx A, forall s c= R :^: idx A, a :e span A s /\ ~ a :e span A (s :\: {b}) -> b :e span A (SetAdjoin (s :\: {b}) a).
Admitted.

// HOL Light: Multivariate/vectors.ml:5069 / EQ_SPAN_INSERT_EQ   (hash md5:3ad747c8fc6478d90f4b30490b411b8e)
// not bridged: 
Theorem EQ_SPAN_INSERT_EQ : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x y :e R :^: idx N, vector_sub N x y :e span N s -> span N (SetAdjoin s x) = span N (SetAdjoin s y).
Admitted.

// HOL Light: Multivariate/vectors.ml:5080 / SPAN_EXPLICIT   (hash md5:eaae9f9f5e55fda7bc7065e56688ca53)
// not bridged: 
Theorem SPAN_EXPLICIT : forall N:set, N <> Empty -> forall p c= R :^: idx N, span N p = {y :e R :^: idx N | exists s c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite s /\ (s c= p /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = y))}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5115 / DEPENDENT_EXPLICIT   (hash md5:939fae3806934a14fe1ed3aa85e590f0)
// not bridged: 
Theorem DEPENDENT_EXPLICIT : forall N:set, N <> Empty -> forall p c= R :^: idx N, dependent N p <-> exists s c= R :^: idx N, exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ (finite s /\ (s c= p /\ ((exists v :e R :^: idx N, v :e s /\ ~ u v = 0) /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = vec N 0))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5146 / DEPENDENT_FINITE   (hash md5:c67db51789c8990ae642e83763fa8c69)
// not bridged: 
Theorem DEPENDENT_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> (dependent N s <-> exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ ((exists v :e R :^: idx N, v :e s /\ ~ u v = 0) /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = vec N 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5164 / SPAN_FINITE   (hash md5:43ca0e918309a83a862b48ac56ed4c72)
// not bridged: 
Theorem SPAN_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, finite s -> span N s = {y :e R :^: idx N | exists u:set -> set, (forall x :e R :^: idx N, u x :e R) /\ vsum (R :^: idx N) N s (fun v:set => vector_mul N (u v) v) = y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5183 / SPAN_STDBASIS   (hash md5:1e86b48178fb3f4f02592aa523705f54)
// not bridged: 
Theorem SPAN_STDBASIS : forall N:set, N <> Empty -> span N {basis N i | i :e omega, 1 <= i /\ i <= dimindex N} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5192 / HAS_SIZE_STDBASIS   (hash md5:4b208c608e454ddfce5b1bf3a8cd01d7)
// not bridged: 
Theorem HAS_SIZE_STDBASIS : forall N:set, N <> Empty -> equip {basis N i | i :e omega, 1 <= i /\ i <= dimindex N} (dimindex N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5200 / FINITE_STDBASIS   (hash md5:7f218d8532fe87d32fbb37a89e76d118)
// not bridged: 
Theorem FINITE_STDBASIS : forall N:set, N <> Empty -> finite {basis N i | i :e omega, 1 <= i /\ i <= dimindex N}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5204 / CARD_STDBASIS   (hash md5:717badc4b8d6bfbfbe0ae2d84b2e3894)
// not bridged: 
Theorem CARD_STDBASIS : forall N:set, N <> Empty -> finite_cardinality {basis N i | i :e omega, 1 <= i /\ i <= dimindex N} = dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5209 / IN_SPAN_IMAGE_BASIS   (hash md5:80024990f061b42958e8150e45a1c0f0)
// not bridged: 
Theorem IN_SPAN_IMAGE_BASIS : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= omega, x :e span N {basis N x0 | x0 :e s} <-> forall i :e omega, 1 <= i /\ (i <= dimindex N /\ ~ i :e s) -> x i = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:5238 / INDEPENDENT_STDBASIS   (hash md5:46f065edfcb916b6cf8678e49d75120d)
// not bridged: 
Theorem INDEPENDENT_STDBASIS : forall N:set, N <> Empty -> independent N {basis N i | i :e omega, 1 <= i /\ i <= dimindex N}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5256 / INDEPENDENT_BASIS_IMAGE   (hash md5:2051dd439e12ac30462457b4118df861)
// not bridged: 
Theorem INDEPENDENT_BASIS_IMAGE : forall N:set, N <> Empty -> forall k c= omega, independent N {basis N x | x :e k} <-> k c= idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5272 / dim   (hash md5:fad5565b4210d980d88771a33fb81b36)
// not bridged: 
Theorem dim_thm : forall N:set, N <> Empty -> forall v c= R :^: idx N, dim N v = choose_in omega (fun n:set => exists b c= R :^: idx N, b c= v /\ (independent N b /\ (v c= span N b /\ equip b n))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5276 / euclidean_matroid   (hash md5:0845cea5e85036dca62094a7eee9b260)
// not bridged: 
Theorem euclidean_matroid_thm : forall N:set, N <> Empty -> euclidean_matroid N = (R :^: idx N,fun x :e Power (R :^: idx N) => span N x).
Admitted.

// HOL Light: Multivariate/vectors.ml:5279 / EUCLIDEAN_MATROID   (hash md5:06adb395f984bad33571f884d84b2117)
// not bridged: 
Theorem EUCLIDEAN_MATROID : forall N:set, N <> Empty -> matroid_set (R :^: idx N) (euclidean_matroid N) = R :^: idx N /\ forall x c= R :^: idx N, forall x0 :e R :^: idx N, matroid_span (R :^: idx N) (euclidean_matroid N) x x0 <-> x0 :e span N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:5293 / EUCLIDEAN_MATROID_INDEPENDENT   (hash md5:c3e3b52b64941e8a3064c607072d2ca2)
// not bridged: 
Theorem EUCLIDEAN_MATROID_INDEPENDENT : forall N:set, N <> Empty -> forall x c= R :^: idx N, matroid_independent (R :^: idx N) (euclidean_matroid N) x <-> independent N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:5298 / EUCLIDEAN_MATROID_SPANNING   (hash md5:298fe8791cc4f7ab873bbaaa2f65ec65)
// not bridged: 
Theorem EUCLIDEAN_MATROID_SPANNING : forall N:set, N <> Empty -> forall s c= R :^: idx N, matroid_spanning (R :^: idx N) (euclidean_matroid N) s <-> span N s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5302 / EUCLIDEAN_MATROID_SUBSPACE   (hash md5:3ad5a38a3c43d4405715f88844a3bf96)
// not bridged: 
Theorem EUCLIDEAN_MATROID_SUBSPACE : forall N:set, N <> Empty -> forall x c= R :^: idx N, matroid_subspace (R :^: idx N) (euclidean_matroid N) x <-> subspace N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:5308 / EUCLIDEAN_MATROID_FINITE_DIMENSIONAL   (hash md5:7f5971751e0d819b185d6ae6affa3749)
// not bridged: 
Theorem EUCLIDEAN_MATROID_FINITE_DIMENSIONAL : forall N:set, N <> Empty -> euclidean_matroid N :e matroid_finite_dimensional (R :^: idx N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5314 / EUCLIDEAN_MATROID_DIMENSION   (hash md5:7912355767ffa35fa374c85530165af0)
// not bridged: 
Theorem EUCLIDEAN_MATROID_DIMENSION : forall N:set, N <> Empty -> matroid_dimension (R :^: idx N) (euclidean_matroid N) = dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5321 / EUCLIDEAN_MATROID_FINITE_DIM   (hash md5:c1cfed7e92f5dbda2fa373edf604ff97)
// not bridged: 
Theorem EUCLIDEAN_MATROID_FINITE_DIM : forall N:set, N <> Empty -> forall s c= R :^: idx N, s :e matroid_finite_dim (R :^: idx N) (euclidean_matroid N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5327 / EUCLIDEAN_SUBMATROID   (hash md5:5270140fc569ba358e1f154d21dd734e)
// not bridged: 
Theorem EUCLIDEAN_SUBMATROID : forall N:set, N <> Empty -> (forall s c= R :^: idx N, matroid_set (R :^: idx N) (submatroid (R :^: idx N) (euclidean_matroid N) s) = span N s) /\ forall s x c= R :^: idx N, forall x0 :e R :^: idx N, matroid_span (R :^: idx N) (submatroid (R :^: idx N) (euclidean_matroid N) s) x x0 <-> x0 :e span N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:5332 / EUCLIDEAN_MATROID_DIM   (hash md5:fe99ffa0d29d8b695842fe632d3ccb69)
// not bridged: 
Theorem EUCLIDEAN_MATROID_DIM : forall N:set, N <> Empty -> forall x c= R :^: idx N, matroid_dim (R :^: idx N) (euclidean_matroid N) x = dim N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:5343 / SPAN_EQ   (hash md5:f00d9801c41d495c4a4d62be107f763e)
// not bridged: 
Theorem SPAN_EQ : forall N:set, N <> Empty -> forall s t c= R :^: idx N, span N s = span N t <-> s c= span N t /\ t c= span N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5350 / SPAN_EQ_INSERT   (hash md5:6ccb8933c0dac090b0cf93378d033e2c)
// not bridged: 
Theorem SPAN_EQ_INSERT : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, span N (SetAdjoin s x) = span N s <-> x :e span N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5357 / INDEPENDENT_INSERT   (hash md5:8fcc811c6ac112775ee5ec3026333ff7)
// not bridged: 
Theorem INDEPENDENT_INSERT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall s c= R :^: idx N, independent N (SetAdjoin s a) <-> (a :e s -> independent N s) /\ (~ a :e s -> independent N s /\ ~ a :e span N s).
Admitted.

// HOL Light: Multivariate/vectors.ml:5364 / SPAN_TRANS   (hash md5:1e4ce438acf0f6aff10112011918a5c8)
// not bridged: 
Theorem SPAN_TRANS : forall N:set, N <> Empty -> forall x y :e R :^: idx N, forall s c= R :^: idx N, x :e span N s /\ y :e span N (SetAdjoin s x) -> y :e span N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5369 / SPANNING_SUBSET_INDEPENDENT   (hash md5:d6235217596752d5be81adea8d81111d)
// not bridged: 
Theorem SPANNING_SUBSET_INDEPENDENT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, t c= s /\ (independent N s /\ s c= span N t) -> s = t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5376 / EXCHANGE_LEMMA   (hash md5:068b844ac93f9e28f731348d8c920949)
// not bridged: 
Theorem EXCHANGE_LEMMA : forall N:set, N <> Empty -> forall s t c= R :^: idx N, finite t /\ (independent N s /\ s c= span N t) -> exists t' c= R :^: idx N, equip t' (finite_cardinality t) /\ (s c= t' /\ (t' c= s :\/: t /\ s c= span N t')).
Admitted.

// HOL Light: Multivariate/vectors.ml:5387 / INDEPENDENT_SPAN_BOUND   (hash md5:8426482bf8d08d90b79b28fa873fa835)
// not bridged: 
Theorem INDEPENDENT_SPAN_BOUND : forall A:set, A <> Empty -> forall s t c= R :^: idx A, finite t /\ (independent A s /\ s c= span A t) -> finite s /\ finite_cardinality s <= finite_cardinality t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5394 / INDEPENDENT_BOUND   (hash md5:38834ee5a55ae9ebce128a7d9b898698)
// not bridged: 
Theorem INDEPENDENT_BOUND : forall N:set, N <> Empty -> forall s c= R :^: idx N, independent N s -> finite s /\ finite_cardinality s <= dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5402 / DEPENDENT_BIGGERSET   (hash md5:d1bfa1e5c2eed7d6cf86a34791f198b0)
// not bridged: 
Theorem DEPENDENT_BIGGERSET : forall N:set, N <> Empty -> forall s c= R :^: idx N, (finite s -> dimindex N < finite_cardinality s) -> dependent N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5407 / INDEPENDENT_IMP_FINITE   (hash md5:dd5a56b2dacdef9ca770330108978639)
// not bridged: 
Theorem INDEPENDENT_IMP_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, independent N s -> finite s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5411 / MAXIMAL_INDEPENDENT_SUBSET_EXTEND   (hash md5:db7d4de31bc7eacb98b79000f0626268)
// not bridged: 
Theorem MAXIMAL_INDEPENDENT_SUBSET_EXTEND : forall N:set, N <> Empty -> forall s v c= R :^: idx N, s c= v /\ independent N s -> exists b c= R :^: idx N, s c= b /\ (b c= v /\ (independent N b /\ v c= span N b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5425 / MAXIMAL_INDEPENDENT_SUBSET   (hash md5:2be2a93a2ccf0da4a395d399d7092e7e)
// not bridged: 
Theorem MAXIMAL_INDEPENDENT_SUBSET : forall N:set, N <> Empty -> forall v c= R :^: idx N, exists b c= R :^: idx N, b c= v /\ (independent N b /\ v c= span N b).
Admitted.

// HOL Light: Multivariate/vectors.ml:5430 / BASIS_EXISTS   (hash md5:26f9498e0a28660c6660bcb4b6b0dfaa)
// not bridged: 
Theorem BASIS_EXISTS : forall A:set, A <> Empty -> forall v c= R :^: idx A, exists b c= R :^: idx A, b c= v /\ (independent A b /\ (v c= span A b /\ equip b (dim A v))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5436 / BASIS_EXISTS_FINITE   (hash md5:3717eff8f6a1e70c79a559be59eb7d53)
// not bridged: 
Theorem BASIS_EXISTS_FINITE : forall A:set, A <> Empty -> forall v c= R :^: idx A, exists b c= R :^: idx A, finite b /\ (b c= v /\ (independent A b /\ (v c= span A b /\ equip b (dim A v)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5444 / BASIS_SUBSPACE_EXISTS   (hash md5:543dc226f218c55c310177da3718c39f)
// not bridged: 
Theorem BASIS_SUBSPACE_EXISTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> exists b c= R :^: idx N, finite b /\ (b c= s /\ (independent N b /\ (span N b = s /\ equip b (dim N s)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5458 / INDEPENDENT_CARD_LE_DIM   (hash md5:8ced0e6f06046574700798c05c791cb2)
// not bridged: 
Theorem INDEPENDENT_CARD_LE_DIM : forall N:set, N <> Empty -> forall v b c= R :^: idx N, b c= v /\ independent N b -> finite b /\ finite_cardinality b <= dim N v.
Admitted.

// HOL Light: Multivariate/vectors.ml:5463 / SPAN_CARD_GE_DIM   (hash md5:34dfbddcd510cafa3b531c4b328129dd)
// not bridged: 
Theorem SPAN_CARD_GE_DIM : forall N:set, N <> Empty -> forall v b c= R :^: idx N, v c= span N b /\ finite b -> dim N v <= finite_cardinality b.
Admitted.

// HOL Light: Multivariate/vectors.ml:5468 / BASIS_CARD_EQ_DIM   (hash md5:6b81f9006245059a85a349fa734ab81b)
// not bridged: 
Theorem BASIS_CARD_EQ_DIM : forall A:set, A <> Empty -> forall v b c= R :^: idx A, b c= v /\ (v c= span A b /\ independent A b) -> finite b /\ finite_cardinality b = dim A v.
Admitted.

// HOL Light: Multivariate/vectors.ml:5473 / BASIS_HAS_SIZE_DIM   (hash md5:9d9861fee31f85e795d206dfec4c5c41)
// not bridged: 
Theorem BASIS_HAS_SIZE_DIM : forall A:set, A <> Empty -> forall v b c= R :^: idx A, independent A b /\ span A b = v -> equip b (dim A v).
Admitted.

// HOL Light: Multivariate/vectors.ml:5479 / DIM_SPAN   (hash md5:623f87448cdfc0e8f77001b86bb2fe3c)
// not bridged: 
Theorem DIM_SPAN : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N (span N s) = dim N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5486 / DIM_UNIQUE   (hash md5:4e93b209838533de6347773dbebdbf68)
// not bridged: 
Theorem DIM_UNIQUE : forall A:set, A <> Empty -> forall n :e omega, forall v b c= R :^: idx A, b c= v /\ (v c= span A b /\ (independent A b /\ equip b n)) -> dim A v = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:5491 / DIM_LE_CARD   (hash md5:5d212e84ea4654dbb0e90303ec30d5ec)
// not bridged: 
Theorem DIM_LE_CARD : forall A:set, A <> Empty -> forall s c= R :^: idx A, finite s -> dim A s <= finite_cardinality s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5496 / DIM_UNIV   (hash md5:ec4668b9c442d3d22b35ca6344992256)
// not bridged: 
Theorem DIM_UNIV : forall N:set, N <> Empty -> dim N (R :^: idx N) = dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5503 / DIM_SUBSET   (hash md5:55ed459645382ebaaee7f5abf75c1bef)
// not bridged: 
Theorem DIM_SUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t -> dim N s <= dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5507 / DIM_SUBSET_UNIV   (hash md5:3043d57fa9a3f47b3c176c3de0bb28c4)
// not bridged: 
Theorem DIM_SUBSET_UNIV : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s <= dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5512 / BASIS_HAS_SIZE_UNIV   (hash md5:78c6815c0b73ed263d86f920491290b1)
// not bridged: 
Theorem BASIS_HAS_SIZE_UNIV : forall N:set, N <> Empty -> forall b c= R :^: idx N, independent N b /\ span N b = R :^: idx N -> equip b (dimindex N).
Admitted.

// HOL Light: Multivariate/vectors.ml:5516 / CARD_GE_DIM_INDEPENDENT   (hash md5:5b5dded0261f94b55250808a23697c4f)
// not bridged: 
Theorem CARD_GE_DIM_INDEPENDENT : forall N:set, N <> Empty -> forall v b c= R :^: idx N, b c= v /\ (independent N b /\ dim N v <= finite_cardinality b) -> v c= span N b.
Admitted.

// HOL Light: Multivariate/vectors.ml:5529 / CARD_LE_DIM_SPANNING   (hash md5:24db3952db67103069d62f6e2a88dfff)
// not bridged: 
Theorem CARD_LE_DIM_SPANNING : forall N:set, N <> Empty -> forall v b c= R :^: idx N, v c= span N b /\ (finite b /\ finite_cardinality b <= dim N v) -> independent N b.
Admitted.

// HOL Light: Multivariate/vectors.ml:5540 / CARD_EQ_DIM   (hash md5:119b01ade7613afe5703f79c1bc423f0)
// not bridged: 
Theorem CARD_EQ_DIM : forall A:set, A <> Empty -> forall v b c= R :^: idx A, b c= v /\ equip b (dim A v) -> (independent A b <-> v c= span A b).
Admitted.

// HOL Light: Multivariate/vectors.ml:5546 / INDEPENDENT_BOUND_GENERAL   (hash md5:4e2d1cce22130d761dff1cb400d2c611)
// not bridged: 
Theorem INDEPENDENT_BOUND_GENERAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, independent N s -> finite s /\ finite_cardinality s <= dim N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5550 / DEPENDENT_BIGGERSET_GENERAL   (hash md5:3232f644895a1c0241a8bf1cbe420125)
// not bridged: 
Theorem DEPENDENT_BIGGERSET_GENERAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, (finite s -> dim N s < finite_cardinality s) -> dependent N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5555 / DIM_INSERT_0   (hash md5:5b5e059be20db95f270281eade33e805)
// not bridged: 
Theorem DIM_INSERT_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N (SetAdjoin s (vec N 0)) = dim N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5560 / DIM_EQ_CARD   (hash md5:1179b2b322890798bf295c4c4b671b6d)
// not bridged: 
Theorem DIM_EQ_CARD : forall N:set, N <> Empty -> forall s c= R :^: idx N, independent N s -> dim N s = finite_cardinality s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5566 / DEPENDENT_EQ_DIM_LT_CARD   (hash md5:7e7dfd652a60892017bf6b36a78b8331)
// not bridged: 
Theorem DEPENDENT_EQ_DIM_LT_CARD : forall N:set, N <> Empty -> forall s c= R :^: idx N, dependent N s <-> finite s -> dim N s < finite_cardinality s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5576 / INDEPENDENT_EQ_DIM_EQ_CARD   (hash md5:50bdeb8ef11a7e34982f58e0c29e4bc1)
// not bridged: 
Theorem INDEPENDENT_EQ_DIM_EQ_CARD : forall N:set, N <> Empty -> forall s c= R :^: idx N, independent N s <-> finite s /\ dim N s = finite_cardinality s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5582 / SUBSET_LE_DIM   (hash md5:8dac739478af9b75c686e819ee306b64)
// not bridged: 
Theorem SUBSET_LE_DIM : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= span N t -> dim N s <= dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5586 / SPAN_EQ_DIM   (hash md5:07aefbfaeb3392a0f006dc451ca7971b)
// not bridged: 
Theorem SPAN_EQ_DIM : forall A:set, A <> Empty -> forall s t c= R :^: idx A, span A s = span A t -> dim A s = dim A t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5590 / DIM_EMPTY   (hash md5:34bb79edfae5bcec5714395c620d2c45)
// not bridged: 
Theorem DIM_EMPTY : forall N:set, N <> Empty -> dim N Empty = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:5594 / DIM_INSERT   (hash md5:89466d2b505352f1a5fa8926a6c28d36)
// not bridged: 
Theorem DIM_INSERT : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall s c= R :^: idx N, dim N (SetAdjoin s x) = if x :e span N s then dim N s else dim N s + 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5600 / CHOOSE_SUBSPACE_OF_SUBSPACE   (hash md5:68e62ae86e422b98f8f4f270ef1e28d5)
// not bridged: 
Theorem CHOOSE_SUBSPACE_OF_SUBSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e omega, n <= dim N s -> exists t c= R :^: idx N, subspace N t /\ (t c= span N s /\ dim N t = n).
Admitted.

// HOL Light: Multivariate/vectors.ml:5610 / SUBSPACE_EXISTS   (hash md5:495f3b6df8273766ce6392b301e9e28e)
// not bridged: 
Theorem SUBSPACE_EXISTS : forall N:set, N <> Empty -> forall n :e omega, n <= dimindex N -> exists s c= R :^: idx N, subspace N s /\ dim N s = n.
Admitted.

// HOL Light: Multivariate/vectors.ml:5616 / DIM_EQ_SPAN   (hash md5:0737170a61fd0d682534f75753f3e4f5)
// not bridged: 
Theorem DIM_EQ_SPAN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, s c= t /\ dim N t <= dim N s -> span N s = span N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5625 / DIM_EQ_FULL   (hash md5:61534534ff301143e174afaae4527e2b)
// not bridged: 
Theorem DIM_EQ_FULL : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s = dimindex N <-> span N s = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:5633 / DIM_PSUBSET   (hash md5:a0597979949718238431099b11c7f44c)
// not bridged: 
Theorem DIM_PSUBSET : forall N:set, N <> Empty -> forall s t c= R :^: idx N, span N s c= span N t /\ span N s <> span N t -> dim N s < dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5639 / LOWDIM_EXPAND_DIMENSION   (hash md5:450852ee14f7858e065d7850d4649217)
// not bridged: 
Theorem LOWDIM_EXPAND_DIMENSION : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e omega, dim N s <= n /\ n <= dimindex N -> exists t c= R :^: idx N, dim N t = n /\ span N s c= span N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:5649 / LOWDIM_EXPAND_BASIS   (hash md5:7f49c444a108cc4baf8b6fa471266f76)
// not bridged: 
Theorem LOWDIM_EXPAND_BASIS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall n :e omega, dim N s <= n /\ n <= dimindex N -> exists b c= R :^: idx N, equip b n /\ (independent N b /\ span N s c= span N b).
Admitted.

// HOL Light: Multivariate/vectors.ml:5664 / INDEPENDENT_EXPLICIT   (hash md5:9ec883d0e0e2804a249b07de5b3bc291)
// not bridged: 
Theorem INDEPENDENT_EXPLICIT : forall N:set, N <> Empty -> forall b c= R :^: idx N, independent N b <-> finite b /\ forall c:set -> set, (forall x :e R :^: idx N, c x :e R) -> vsum (R :^: idx N) N b (fun v:set => vector_mul N (c v) v) = vec N 0 -> forall v :e R :^: idx N, v :e b -> c v = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:5674 / INDEPENDENT_SING   (hash md5:a2bfc41dab5a9a0eb3d3ff10ef4c3a31)
// not bridged: 
Theorem INDEPENDENT_SING : forall A:set, A <> Empty -> forall x :e R :^: idx A, independent A {x} <-> ~ x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:5679 / DEPENDENT_SING   (hash md5:f36a9f02d1ed24f970826407a2b539d8)
// not bridged: 
Theorem DEPENDENT_SING : forall A:set, A <> Empty -> forall x :e R :^: idx A, dependent A {x} <-> x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:5683 / DEPENDENT_2   (hash md5:c4ab5ecc602121ab86ddf6608d8223e6)
// not bridged: 
Theorem DEPENDENT_2 : forall N:set, N <> Empty -> forall a b :e R :^: idx N, dependent N {a,b} <-> (a = b -> a = vec N 0) /\ (~ a = b -> exists x y :e R, vector_add N (vector_mul N x a) (vector_mul N y b) = vec N 0 /\ ~ (x = 0 /\ y = 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5700 / DEPENDENT_3   (hash md5:853a7be14394d5d7ee335d0f34db88c6)
// not bridged: 
Theorem DEPENDENT_3 : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, ~ a = b /\ (~ a = c /\ ~ b = c) -> (dependent N {a,b,c} <-> exists x y z :e R, vector_add N (vector_mul N x a) (vector_add N (vector_mul N y b) (vector_mul N z c)) = vec N 0 /\ ~ (x = 0 /\ (y = 0 /\ z = 0))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5717 / INDEPENDENT_2   (hash md5:23b14322346275d83ca2fb2e7e7263de)
// not bridged: 
Theorem INDEPENDENT_2 : forall N:set, N <> Empty -> forall a b :e R :^: idx N, forall x y :e R, independent N {a,b} /\ ~ a = b -> (vector_add N (vector_mul N x a) (vector_mul N y b) = vec N 0 <-> x = 0 /\ y = 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:5724 / INDEPENDENT_3   (hash md5:cb7c73f17144612b07d6652f387c8162)
// not bridged: 
Theorem INDEPENDENT_3 : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, forall x y z :e R, independent N {a,b,c} /\ (~ a = b /\ (~ a = c /\ ~ b = c)) -> (vector_add N (vector_mul N x a) (vector_add N (vector_mul N y b) (vector_mul N z c)) = vec N 0 <-> x = 0 /\ (y = 0 /\ z = 0)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5735 / LINEAR_SUBSPACE_GRAPH   (hash md5:9b9b0cacc647b07712fb08a1a4848409)
// not bridged: 
Theorem LINEAR_SUBSPACE_GRAPH : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> (linear M N f <-> subspace (idx_n (dimindex M + dimindex N)) {pastecart M N x (f x) | x :e R :^: idx M, x :e R :^: idx M}).
Admitted.

// HOL Light: Multivariate/vectors.ml:5744 / SPANS_IMAGE   (hash md5:52124552b3c2fc116a28c6aa5a6e8bee)
// not bridged: 
Theorem SPANS_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall b v c= R :^: idx A, linear A B f /\ v c= span A b -> {f x | x :e v} c= span B {f x | x :e b}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5749 / DIM_LINEAR_IMAGE_LE   (hash md5:59dc99cdb5c258283fa4e06c2128435d)
// not bridged: 
Theorem DIM_LINEAR_IMAGE_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f -> dim N {f x | x :e s} <= dim M s.
Admitted.

// HOL Light: Multivariate/vectors.ml:5761 / DIM_SING   (hash md5:30dc67ee2d7ee4cb2e37f6f82214a0ec)
// not bridged: 
Theorem DIM_SING : forall A:set, A <> Empty -> forall x :e R :^: idx A, dim A {x} = if x = vec A 0 then 0 else 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:5765 / DIM_EQ_0   (hash md5:f9ce53df1f833aa545593fc4de850ed0)
// not bridged: 
Theorem DIM_EQ_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s = 0 <-> s c= {vec N 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5779 / SPANNING_SURJECTIVE_IMAGE   (hash md5:861145c0f42ca1cdd5348e934c7857a9)
// not bridged: 
Theorem SPANNING_SURJECTIVE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, R :^: idx M c= span M s /\ (linear M N f /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y)) -> R :^: idx N c= span N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5788 / INDEPENDENT_INJECTIVE_IMAGE_GEN   (hash md5:2e39e243718f4381b665bcd5dbe15aec)
// not bridged: 
Theorem INDEPENDENT_INJECTIVE_IMAGE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, independent M s /\ (linear M N f /\ (forall x y :e R :^: idx M, x :e span M s /\ (y :e span M s /\ f x = f y) -> x = y)) -> independent N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5819 / INDEPENDENT_INJECTIVE_IMAGE   (hash md5:e1c0c1eb9e046d2fa7c0702f1423cabf)
// not bridged: 
Theorem INDEPENDENT_INJECTIVE_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, independent M s /\ (linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y)) -> independent N {f x | x :e s}.
Admitted.

// HOL Light: Multivariate/vectors.ml:5830 / VECTOR_SUB_PROJECT_ORTHOGONAL   (hash md5:df52926adb0e26d082c5233178473633)
// not bridged: 
Theorem VECTOR_SUB_PROJECT_ORTHOGONAL : forall N:set, N <> Empty -> forall b x :e R :^: idx N, dot N b (vector_sub N x (vector_mul N (dot N b x :/: dot N b b) b)) = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:5837 / BASIS_ORTHOGONAL   (hash md5:e30658446c3b6d6adb02cd2838f04a7e)
// not bridged: 
Theorem BASIS_ORTHOGONAL : forall N:set, N <> Empty -> forall b c= R :^: idx N, finite b -> exists c c= R :^: idx N, finite c /\ (finite_cardinality c <= finite_cardinality b /\ (span N c = span N b /\ forall x y :e c, x <> y -> orthogonal N x y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:5884 / ORTHOGONAL_BASIS_EXISTS   (hash md5:f0e9b13922fd51e169e9bb298d84ca6f)
// not bridged: 
Theorem ORTHOGONAL_BASIS_EXISTS : forall N:set, N <> Empty -> forall v c= R :^: idx N, exists b c= R :^: idx N, independent N b /\ (b c= span N v /\ (v c= span N b /\ (equip b (dim N v) /\ forall x y :e b, x <> y -> orthogonal N x y))).
Admitted.

// HOL Light: Multivariate/vectors.ml:5909 / SPAN_SPECIAL_SCALE   (hash md5:0c83f120b9d85ce09a8abb7b44085afb)
// not bridged: 
Theorem SPAN_SPECIAL_SCALE : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a :e R, forall x :e R :^: idx N, span N (SetAdjoin s (vector_mul N a x)) = if a = 0 then span N s else span N (SetAdjoin s x).
Admitted.

// HOL Light: Multivariate/vectors.ml:5924 / LINEAR_INDEP_IMAGE_LEMMA   (hash md5:1cf971a25b781da8dc30ab85a420b44b)
// not bridged: 
Theorem LINEAR_INDEP_IMAGE_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall b c= R :^: idx M, linear M N f /\ (finite b /\ (independent N {f x | x :e b} /\ (forall x y :e R :^: idx M, x :e b /\ (y :e b /\ f x = f y) -> x = y))) -> forall x :e R :^: idx M, x :e span M b -> f x = vec N 0 -> x = vec M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:5977 / LINEAR_INDEPENDENT_EXTEND_LEMMA   (hash md5:94b1662cda17d992fb353d0fd799d0b6)
// not bridged: 
Theorem LINEAR_INDEPENDENT_EXTEND_LEMMA : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall b c= R :^: idx M, finite b -> independent M b -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ ((forall x y :e R :^: idx M, x :e span M b /\ y :e span M b -> g (vector_add M x y) = vector_add N (g x) (g y)) /\ ((forall x :e R :^: idx M, forall c :e R, x :e span M b -> g (vector_mul M c x) = vector_mul N c (g x)) /\ forall x :e R :^: idx M, x :e b -> g x = f x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6057 / LINEAR_INDEPENDENT_EXTEND   (hash md5:f5e99aff5d15dfdb0fa165899ab03f05)
// not bridged: 
Theorem LINEAR_INDEPENDENT_EXTEND : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall b c= R :^: idx M, independent M b -> exists g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) /\ (linear M N g /\ forall x :e R :^: idx M, x :e b -> g x = f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6075 / SUBSPACE_KERNEL   (hash md5:ffb86a1b72f42d067388633d8d7102f1)
// not bridged: 
Theorem SUBSPACE_KERNEL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> linear A B f -> subspace A {x :e R :^: idx A | f x = vec B 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:6081 / LINEAR_EQ_0_SPAN   (hash md5:bd9233e8cc056b9282f5684a338b14bd)
// not bridged: 
Theorem LINEAR_EQ_0_SPAN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall b c= R :^: idx M, linear M N f /\ (forall x :e R :^: idx M, x :e b -> f x = vec N 0) -> forall x :e R :^: idx M, x :e span M b -> f x = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6092 / LINEAR_EQ_0   (hash md5:3d065269c8ef486f22ec10e2b5689219)
// not bridged: 
Theorem LINEAR_EQ_0 : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall b s c= R :^: idx A, linear A B f /\ (s c= span A b /\ (forall x :e R :^: idx A, x :e b -> f x = vec B 0)) -> forall x :e R :^: idx A, x :e s -> f x = vec B 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6097 / LINEAR_EQ   (hash md5:fb0df0ca03b921b2807a766c9a8f7ca3)
// not bridged: 
Theorem LINEAR_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall g:set -> set, (forall x :e R :^: idx B, g x :e R :^: idx A) -> forall b s c= R :^: idx B, linear B A f /\ (linear B A g /\ (s c= span B b /\ (forall x :e R :^: idx B, x :e b -> f x = g x))) -> forall x :e R :^: idx B, x :e s -> f x = g x.
Admitted.

// HOL Light: Multivariate/vectors.ml:6105 / LINEAR_EQ_STDBASIS   (hash md5:0b2d27a77eb442709c24fa0b7533c240)
// not bridged: 
Theorem LINEAR_EQ_STDBASIS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> linear M N f /\ (linear M N g /\ (forall i :e omega, 1 <= i /\ i <= dimindex M -> f (basis M i) = g (basis M i))) -> forall x :e R :^: idx M, f x = g x.
Admitted.

// HOL Light: Multivariate/vectors.ml:6119 / SUBSPACE_LINEAR_FIXED_POINTS   (hash md5:a65471cf731b46a1a8e2baf39dc1d687)
// not bridged: 
Theorem SUBSPACE_LINEAR_FIXED_POINTS : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> subspace N {x :e R :^: idx N | f x = x}.
Admitted.

// HOL Light: Multivariate/vectors.ml:6129 / BILINEAR_EQ   (hash md5:dc6df690af15eab5428d871f570f2aaf)
// not bridged: 
Theorem BILINEAR_EQ : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall t c= R :^: idx N, forall f:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, f x y :e R :^: idx P) -> forall g:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, g x y :e R :^: idx P) -> forall b c= R :^: idx M, forall c c= R :^: idx N, forall s c= R :^: idx M, bilinear N P M f /\ (bilinear N P M g /\ (s c= span M b /\ (t c= span N c /\ (forall x :e R :^: idx M, forall y :e R :^: idx N, x :e b /\ y :e c -> f x y = g x y)))) -> forall x :e R :^: idx M, forall y :e R :^: idx N, x :e s /\ y :e t -> f x y = g x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6148 / BILINEAR_EQ_STDBASIS   (hash md5:2af72268b7884c538365c5830a65df82)
// not bridged: 
Theorem BILINEAR_EQ_STDBASIS : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, f x y :e R :^: idx P) -> forall g:set -> set -> set, (forall x :e R :^: idx M, forall y :e R :^: idx N, g x y :e R :^: idx P) -> bilinear N P M f /\ (bilinear N P M g /\ (forall i j :e omega, 1 <= i /\ (i <= dimindex M /\ (1 <= j /\ j <= dimindex N)) -> f (basis M i) (basis N j) = g (basis M i) (basis N j))) -> forall x :e R :^: idx M, forall x0 :e R :^: idx N, f x x0 = g x x0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6167 / LEFT_INVERTIBLE_TRANSP   (hash md5:b5eb10264ea994b4deb24cdcf9c18810)
// not bridged: 
Theorem LEFT_INVERTIBLE_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx N :^: idx M, matrix_mul M N M B (transp M N A) = mat M M 1) <-> exists B :e R :^: idx M :^: idx N, matrix_mul M N M A B = mat M M 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6172 / RIGHT_INVERTIBLE_TRANSP   (hash md5:3d98b6c0567b3461185f1b99901ca7ea)
// not bridged: 
Theorem RIGHT_INVERTIBLE_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx N :^: idx M, matrix_mul N M N (transp M N A) B = mat N N 1) <-> exists B :e R :^: idx M :^: idx N, matrix_mul N M N B A = mat N N 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6177 / INVERTIBLE_TRANSP   (hash md5:9b7b2ed23704e63bbaa62ca865247c04)
// not bridged: 
Theorem INVERTIBLE_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, invertible N M (transp M N A) <-> invertible M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:6185 / LINEAR_INJECTIVE_LEFT_INVERSE   (hash md5:c2a1f155063819d7d4c13bee9c593375)
// not bridged: 
Theorem LINEAR_INJECTIVE_LEFT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ forall x :e R :^: idx M, g (f x) = x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6203 / LINEAR_INJECTIVE_LEFT_INVERSE_EQ   (hash md5:0550b7858ec06376cd5304445938a90b)
// not bridged: 
Theorem LINEAR_INJECTIVE_LEFT_INVERSE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((forall x y :e R :^: idx M, f x = f y -> x = y) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ forall x :e R :^: idx M, g (f x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6211 / LINEAR_SURJECTIVE_RIGHT_INVERSE   (hash md5:e7dc97aa4ab778dad288f3246d29d144)
// not bridged: 
Theorem LINEAR_SURJECTIVE_RIGHT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ forall x :e R :^: idx N, f (g x) = x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6226 / LINEAR_SURJECTIVE_RIGHT_INVERSE_EQ   (hash md5:2e50bb61378d09e51ad3c2863437ec5a)
// not bridged: 
Theorem LINEAR_SURJECTIVE_RIGHT_INVERSE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ forall x :e R :^: idx N, f (g x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6234 / MATRIX_LEFT_INVERTIBLE_INJECTIVE   (hash md5:f1a45e8e5d8c593ac8621c3e476f4d7c)
// not bridged: 
Theorem MATRIX_LEFT_INVERTIBLE_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx M :^: idx N, matrix_mul N M N B A = mat N N 1) <-> forall x y :e R :^: idx N, matrix_vector_mul M N A x = matrix_vector_mul M N A y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6250 / MATRIX_LEFT_INVERTIBLE_KER   (hash md5:97b5c0093b0cf5c6332b9188baa85028)
// not bridged: 
Theorem MATRIX_LEFT_INVERTIBLE_KER : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx M :^: idx N, matrix_mul N M N B A = mat N N 1) <-> forall x :e R :^: idx N, matrix_vector_mul M N A x = vec M 0 -> x = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6256 / MATRIX_RIGHT_INVERTIBLE_SURJECTIVE   (hash md5:b391e8cac42813ad6d442e5d92c516e3)
// not bridged: 
Theorem MATRIX_RIGHT_INVERTIBLE_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx M :^: idx N, matrix_mul M N M A B = mat M M 1) <-> forall y :e R :^: idx M, exists x :e R :^: idx N, matrix_vector_mul M N A x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6271 / MATRIX_LEFT_INVERTIBLE_INDEPENDENT_COLUMNS   (hash md5:3d7f317b2556bb6138efdb18455d2cc0)
// not bridged: 
Theorem MATRIX_LEFT_INVERTIBLE_INDEPENDENT_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx M :^: idx N, matrix_mul N M N B A = mat N N 1) <-> forall c:set -> set, (forall x :e omega, c x :e R) -> vsum omega M (idx N) (fun i:set => vector_mul M (c i) (column M N i A)) = vec M 0 -> forall i :e omega, 1 <= i /\ i <= dimindex N -> c i = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6283 / MATRIX_RIGHT_INVERTIBLE_INDEPENDENT_ROWS   (hash md5:e28fa58fa89227460ccf170cc9dc5856)
// not bridged: 
Theorem MATRIX_RIGHT_INVERTIBLE_INDEPENDENT_ROWS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx M :^: idx N, matrix_mul M N M A B = mat M M 1) <-> forall c:set -> set, (forall x :e omega, c x :e R) -> vsum omega N (idx M) (fun i:set => vector_mul N (c i) (row M N i A)) = vec N 0 -> forall i :e omega, 1 <= i /\ i <= dimindex M -> c i = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6291 / MATRIX_RIGHT_INVERTIBLE_SPAN_COLUMNS   (hash md5:6458703ec01edd77389aaf2db1678dcb)
// not bridged: 
Theorem MATRIX_RIGHT_INVERTIBLE_SPAN_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx M :^: idx N, matrix_mul M N M A B = mat M M 1) <-> span M (columns M N A) = R :^: idx M.
Admitted.

// HOL Light: Multivariate/vectors.ml:6320 / MATRIX_LEFT_INVERTIBLE_SPAN_ROWS   (hash md5:00ee985c29b4b5fd4fafd6f75b4ee51f)
// not bridged: 
Theorem MATRIX_LEFT_INVERTIBLE_SPAN_ROWS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, (exists B :e R :^: idx M :^: idx N, matrix_mul N M N B A = mat N N 1) <-> span N (rows M N A) = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:6329 / LINEAR_INJECTIVE_IMP_SURJECTIVE   (hash md5:a28cd23e9f3f30dc7a6d5c0fece2c69f)
// not bridged: 
Theorem LINEAR_INJECTIVE_IMP_SURJECTIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f /\ (forall x y :e R :^: idx N, f x = f y -> x = y) -> forall y :e R :^: idx N, exists x :e R :^: idx N, f x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6348 / LINEAR_SURJECTIVE_IMP_INJECTIVE   (hash md5:5fd2550be7125d1b55d94143dd451898)
// not bridged: 
Theorem LINEAR_SURJECTIVE_IMP_INJECTIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f /\ (forall y :e R :^: idx N, exists x :e R :^: idx N, f x = y) -> forall x y :e R :^: idx N, f x = f y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6385 / LINEAR_SURJECTIVE_IFF_INJECTIVE   (hash md5:032d2bc363db8ac1a8082760cca5005b)
// not bridged: 
Theorem LINEAR_SURJECTIVE_IFF_INJECTIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> ((forall y :e R :^: idx N, exists x :e R :^: idx N, f x = y) <-> forall x y :e R :^: idx N, f x = f y -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:6395 / LEFT_RIGHT_INVERSE_EQ   (hash md5:ff01c64425c387b1d584b835c12a29bf)
Theorem hlt_LEFT_RIGHT_INVERSE_EQ : forall A:set, A <> Empty -> forall f g h :e A :^: A, hl_o A A A f g = hl_I A /\ hl_o A A A g h = hl_I A -> f = h.
Admitted.
Theorem LEFT_RIGHT_INVERSE_EQ_bridge : (forall A:set, A <> Empty -> forall f g h :e A :^: A, hl_o A A A f g = hl_I A /\ hl_o A A A g h = hl_I A -> f = h) -> (forall A:set, forall f:set -> set, (forall x :e A, f x :e A) -> forall g:set -> set, (forall x :e A, g x :e A) -> forall h:set -> set, (forall x :e A, h x :e A) -> (forall x :e A, f (g x) = x) /\ (forall x :e A, g (h x) = x) -> forall x :e A, f x = h x).
exact (fun H__top A => (xm (A = Empty) (forall f:set -> set, (forall x :e A, f x :e A) -> forall g:set -> set, (forall x :e A, g x :e A) -> forall h:set -> set, (forall x :e A, h x :e A) -> (forall x :e A, f (g x) = x) /\ (forall x :e A, g (h x) = x) -> forall x :e A, f x = h x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall f:set -> set, (forall x :e hl__u, f x :e hl__u) -> forall g:set -> set, (forall x :e hl__u, g x :e hl__u) -> forall h:set -> set, (forall x :e hl__u, h x :e hl__u) -> (forall x :e hl__u, f (g x) = x) /\ (forall x :e hl__u, g (h x) = x) -> forall x :e hl__u, f x = h x) (fun f => (fun H : forall x :e Empty, f x :e Empty => (fun g => (fun H : forall x :e Empty, g x :e Empty => (fun h => (fun H : forall x :e Empty, h x :e Empty => (fun H : (forall x :e Empty, f (g x) = x) /\ forall x :e Empty, g (h x) = x => (forall_in_Empty (fun x => f x = h x))))))))))) (fun HAne => ((imp_forall_fun (A) (A) (fun f => forall g h :e A :^: A, hl_o A A A f g = hl_I A /\ hl_o A A A g h = hl_I A -> f = h) (fun f => forall g:set -> set, (forall x :e A, g x :e A) -> forall h:set -> set, (forall x :e A, h x :e A) -> (forall x :e A, f (g x) = x) /\ (forall x :e A, g (h x) = x) -> forall x :e A, f x = h x) (fun f Hfc => (imp_forall_fun (A) (A) (fun g => forall h :e A :^: A, hl_o A A A (hl_lam A f) g = hl_I A /\ hl_o A A A g h = hl_I A -> hl_lam A f = h) (fun g => forall h:set -> set, (forall x :e A, h x :e A) -> (forall x :e A, f (g x) = x) /\ (forall x :e A, g (h x) = x) -> forall x :e A, f x = h x) (fun g Hgc => (imp_forall_fun (A) (A) (fun h => hl_o A A A (hl_lam A f) (hl_lam A g) = hl_I A /\ hl_o A A A (hl_lam A g) h = hl_I A -> hl_lam A f = h) (fun h => (forall x :e A, f (g x) = x) /\ (forall x :e A, g (h x) = x) -> forall x :e A, f x = h x) (fun h Hhc => (fun H__L : ((hl_o A A A (hl_lam A f) (hl_lam A g) = hl_I A /\ hl_o A A A (hl_lam A g) (hl_lam A h) = hl_I A) -> (hl_lam A f = hl_lam A h)) => fun H__hyp3 : ((forall x :e A, f (g x) = x) /\ forall x :e A, g (h x) = x) => (imp_trans (hl_lam A f = hl_lam A h) (forall x :e A, hl_lam A f x = hl_lam A h x) (forall x :e A, f x = h x) (iffEL (hl_lam A f = hl_lam A h) (forall x :e A, hl_lam A f x = hl_lam A h x) (eq_Pi_pointwise (A) (A) (hl_lam A f) (hl_lam A h) (hl_lam_Pi (A) (A) f Hfc) (hl_lam_Pi (A) (A) h Hhc))) (imp_forall_in (A) (fun x => hl_lam A f x = hl_lam A h x) (fun x => f x = h x) (fun x Hx => (imp_eq (hl_lam A f x) (f x) (hl_lam A h x) (h x) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) h) (x) Hx))))) (H__L ((imp_and_dep_bwd (hl_o A A A (hl_lam A f) (hl_lam A g) = hl_I A) (forall x :e A, f (g x) = x) (hl_o A A A (hl_lam A g) (hl_lam A h) = hl_I A) (forall x :e A, g (h x) = x) (imp_trans (forall x :e A, f (g x) = x) (forall x :e A, hl_o A A A (hl_lam A f) (hl_lam A g) x = hl_I A x) (hl_o A A A (hl_lam A f) (hl_lam A g) = hl_I A) (imp_forall_in (A) (fun x => f (g x) = x) (fun x => hl_o A A A (hl_lam A f) (hl_lam A g) x = hl_I A x) (fun x Hx => (imp_eq (f (g x)) (hl_o A A A (hl_lam A f) (hl_lam A g) x) (x) (hl_I A x) (eq_sym_i (hl_o A A A (hl_lam A f) (hl_lam A g) x) (f (g x)) ((pw_o_fun (A) (A) (A) (hl_lam A f) (hl_lam_Pi (A) (A) f Hfc) (hl_lam A g) (hl_lam_Pi (A) (A) g Hgc) (fun x:set => f (g x)) (fun x0 Hx0 => (eq_trans_i ((fun x1 :e A => hl_lam A f (hl_lam A g x1)) x0) (hl_lam A f (hl_lam A g x0)) (f (g x0)) (beta (A) (fun x0:set => hl_lam A f (hl_lam A g x0)) x0 Hx0) (((hl_lam_ap (A) g) (x0) Hx0) (fun hl__u hl__v => hl_lam A f (hl_lam A g x0) = f hl__u) ((hl_lam_ap (A) f) (hl_lam A g x0) (setexp_ap (A) (A) (hl_lam A g) (hl_lam_Pi (A) (A) g Hgc) (x0) Hx0)))))) (x) Hx)) (eq_sym_i (hl_I A x) (x) (((hl_I_compat) (A) HAne) (x) Hx))))) (iffER (hl_o A A A (hl_lam A f) (hl_lam A g) = hl_I A) (forall x :e A, hl_o A A A (hl_lam A f) (hl_lam A g) x = hl_I A x) (eq_Pi_pointwise (A) (A) (hl_o A A A (hl_lam A f) (hl_lam A g)) (hl_I A) (setexp_ap (A :^: A) (A :^: A) (hl_o A A A (hl_lam A f)) (setexp_ap (A :^: A) (A :^: A :^: (A :^: A)) (hl_o A A A) ((hl_o_in) (A) (A) (A) HAne HAne HAne) (hl_lam A f) (hl_lam_Pi (A) (A) f Hfc)) (hl_lam A g) (hl_lam_Pi (A) (A) g Hgc)) ((hl_I_in) (A) HAne)))) (fun H__and4 : (forall x :e A, f (g x) = x) => (imp_trans (forall x :e A, g (h x) = x) (forall x :e A, hl_o A A A (hl_lam A g) (hl_lam A h) x = hl_I A x) (hl_o A A A (hl_lam A g) (hl_lam A h) = hl_I A) (imp_forall_in (A) (fun x => g (h x) = x) (fun x => hl_o A A A (hl_lam A g) (hl_lam A h) x = hl_I A x) (fun x Hx => (imp_eq (g (h x)) (hl_o A A A (hl_lam A g) (hl_lam A h) x) (x) (hl_I A x) (eq_sym_i (hl_o A A A (hl_lam A g) (hl_lam A h) x) (g (h x)) ((pw_o_fun (A) (A) (A) (hl_lam A g) (hl_lam_Pi (A) (A) g Hgc) (hl_lam A h) (hl_lam_Pi (A) (A) h Hhc) (fun x:set => g (h x)) (fun x0 Hx0 => (eq_trans_i ((fun x1 :e A => hl_lam A g (hl_lam A h x1)) x0) (hl_lam A g (hl_lam A h x0)) (g (h x0)) (beta (A) (fun x0:set => hl_lam A g (hl_lam A h x0)) x0 Hx0) (((hl_lam_ap (A) h) (x0) Hx0) (fun hl__u hl__v => hl_lam A g (hl_lam A h x0) = g hl__u) ((hl_lam_ap (A) g) (hl_lam A h x0) (setexp_ap (A) (A) (hl_lam A h) (hl_lam_Pi (A) (A) h Hhc) (x0) Hx0)))))) (x) Hx)) (eq_sym_i (hl_I A x) (x) (((hl_I_compat) (A) HAne) (x) Hx))))) (iffER (hl_o A A A (hl_lam A g) (hl_lam A h) = hl_I A) (forall x :e A, hl_o A A A (hl_lam A g) (hl_lam A h) x = hl_I A x) (eq_Pi_pointwise (A) (A) (hl_o A A A (hl_lam A g) (hl_lam A h)) (hl_I A) (setexp_ap (A :^: A) (A :^: A) (hl_o A A A (hl_lam A g)) (setexp_ap (A :^: A) (A :^: A :^: (A :^: A)) (hl_o A A A) ((hl_o_in) (A) (A) (A) HAne HAne HAne) (hl_lam A g) (hl_lam_Pi (A) (A) g Hgc)) (hl_lam A h) (hl_lam_Pi (A) (A) h Hhc)) ((hl_I_in) (A) HAne)))))) H__hyp3))))))))) (H__top A HAne))))).
Qed.
Theorem LEFT_RIGHT_INVERSE_EQ : forall A:set, forall f:set -> set, (forall x :e A, f x :e A) -> forall g:set -> set, (forall x :e A, g x :e A) -> forall h:set -> set, (forall x :e A, h x :e A) -> (forall x :e A, f (g x) = x) /\ (forall x :e A, g (h x) = x) -> forall x :e A, f x = h x.
exact (LEFT_RIGHT_INVERSE_EQ_bridge hlt_LEFT_RIGHT_INVERSE_EQ).
Admitted.

// HOL Light: Multivariate/vectors.ml:6399 / ISOMORPHISM_EXPAND   (hash md5:0a6c099171d0dc55d06881c2dedfb21c)
Theorem hlt_ISOMORPHISM_EXPAND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, forall g :e B :^: A, hl_o B A A f g = hl_I A /\ hl_o A B B g f = hl_I B <-> (forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x.
Admitted.
Theorem ISOMORPHISM_EXPAND_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: B, forall g :e B :^: A, hl_o B A A f g = hl_I A /\ hl_o A B B g f = hl_I B <-> (forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e B, f x :e A) -> forall g:set -> set, (forall x :e A, g x :e B) -> ((forall x :e A, f (g x) = x) /\ (forall x :e B, g (f x) = x) <-> (forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x)).
exact (fun H__top A B HAne HBne => ((imp_forall_fun (B) (A) (fun f => forall g :e B :^: A, hl_o B A A f g = hl_I A /\ hl_o A B B g f = hl_I B <-> (forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x) (fun f => forall g:set -> set, (forall x :e A, g x :e B) -> ((forall x :e A, f (g x) = x) /\ (forall x :e B, g (f x) = x) <-> (forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x)) (fun f Hfc => (imp_forall_fun (A) (B) (fun g => hl_o B A A (hl_lam B f) g = hl_I A /\ hl_o A B B g (hl_lam B f) = hl_I B <-> (forall x :e A, hl_lam B f (g x) = x) /\ forall x :e B, g (hl_lam B f x) = x) (fun g => (forall x :e A, f (g x) = x) /\ (forall x :e B, g (f x) = x) <-> (forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x) (fun g Hgc => (imp_iff (hl_o B A A (hl_lam B f) (hl_lam A g) = hl_I A /\ hl_o A B B (hl_lam A g) (hl_lam B f) = hl_I B) ((forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x) ((forall x :e A, hl_lam B f (hl_lam A g x) = x) /\ forall x :e B, hl_lam A g (hl_lam B f x) = x) ((forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x) (imp_and_dep (hl_o B A A (hl_lam B f) (hl_lam A g) = hl_I A) (forall x :e A, f (g x) = x) (hl_o A B B (hl_lam A g) (hl_lam B f) = hl_I B) (forall x :e B, g (f x) = x) (imp_trans (hl_o B A A (hl_lam B f) (hl_lam A g) = hl_I A) (forall x :e A, hl_o B A A (hl_lam B f) (hl_lam A g) x = hl_I A x) (forall x :e A, f (g x) = x) (iffEL (hl_o B A A (hl_lam B f) (hl_lam A g) = hl_I A) (forall x :e A, hl_o B A A (hl_lam B f) (hl_lam A g) x = hl_I A x) (eq_Pi_pointwise (A) (A) (hl_o B A A (hl_lam B f) (hl_lam A g)) (hl_I A) (setexp_ap (B :^: A) (A :^: A) (hl_o B A A (hl_lam B f)) (setexp_ap (A :^: B) (A :^: A :^: (B :^: A)) (hl_o B A A) ((hl_o_in) (B) (A) (A) HBne HAne HAne) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc)) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc)) ((hl_I_in) (A) HAne))) (imp_forall_in (A) (fun x => hl_o B A A (hl_lam B f) (hl_lam A g) x = hl_I A x) (fun x => f (g x) = x) (fun x Hx => (imp_eq (hl_o B A A (hl_lam B f) (hl_lam A g) x) (f (g x)) (hl_I A x) (x) ((pw_o_fun (B) (A) (A) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (fun x:set => f (g x)) (fun x0 Hx0 => (eq_trans_i ((fun x1 :e A => hl_lam B f (hl_lam A g x1)) x0) (hl_lam B f (hl_lam A g x0)) (f (g x0)) (beta (A) (fun x0:set => hl_lam B f (hl_lam A g x0)) x0 Hx0) (((hl_lam_ap (A) g) (x0) Hx0) (fun hl__u hl__v => hl_lam B f (hl_lam A g x0) = f hl__u) ((hl_lam_ap (B) f) (hl_lam A g x0) (setexp_ap (A) (B) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (x0) Hx0)))))) (x) Hx) (((hl_I_compat) (A) HAne) (x) Hx))))) (fun H__and13 : (forall x :e A, f (g x) = x) => (imp_trans (hl_o A B B (hl_lam A g) (hl_lam B f) = hl_I B) (forall x :e B, hl_o A B B (hl_lam A g) (hl_lam B f) x = hl_I B x) (forall x :e B, g (f x) = x) (iffEL (hl_o A B B (hl_lam A g) (hl_lam B f) = hl_I B) (forall x :e B, hl_o A B B (hl_lam A g) (hl_lam B f) x = hl_I B x) (eq_Pi_pointwise (B) (B) (hl_o A B B (hl_lam A g) (hl_lam B f)) (hl_I B) (setexp_ap (A :^: B) (B :^: B) (hl_o A B B (hl_lam A g)) (setexp_ap (B :^: A) (B :^: B :^: (A :^: B)) (hl_o A B B) ((hl_o_in) (A) (B) (B) HAne HBne HBne) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc)) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc)) ((hl_I_in) (B) HBne))) (imp_forall_in (B) (fun x => hl_o A B B (hl_lam A g) (hl_lam B f) x = hl_I B x) (fun x => g (f x) = x) (fun x Hx => (imp_eq (hl_o A B B (hl_lam A g) (hl_lam B f) x) (g (f x)) (hl_I B x) (x) ((pw_o_fun (A) (B) (B) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc) (fun x:set => g (f x)) (fun x0 Hx0 => (eq_trans_i ((fun x1 :e B => hl_lam A g (hl_lam B f x1)) x0) (hl_lam A g (hl_lam B f x0)) (g (f x0)) (beta (B) (fun x0:set => hl_lam A g (hl_lam B f x0)) x0 Hx0) (((hl_lam_ap (B) f) (x0) Hx0) (fun hl__u hl__v => hl_lam A g (hl_lam B f x0) = g hl__u) ((hl_lam_ap (A) g) (hl_lam B f x0) (setexp_ap (B) (A) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc) (x0) Hx0)))))) (x) Hx) (((hl_I_compat) (B) HBne) (x) Hx))))))) (imp_and_dep_bwd (hl_o B A A (hl_lam B f) (hl_lam A g) = hl_I A) (forall x :e A, f (g x) = x) (hl_o A B B (hl_lam A g) (hl_lam B f) = hl_I B) (forall x :e B, g (f x) = x) (imp_trans (forall x :e A, f (g x) = x) (forall x :e A, hl_o B A A (hl_lam B f) (hl_lam A g) x = hl_I A x) (hl_o B A A (hl_lam B f) (hl_lam A g) = hl_I A) (imp_forall_in (A) (fun x => f (g x) = x) (fun x => hl_o B A A (hl_lam B f) (hl_lam A g) x = hl_I A x) (fun x Hx => (imp_eq (f (g x)) (hl_o B A A (hl_lam B f) (hl_lam A g) x) (x) (hl_I A x) (eq_sym_i (hl_o B A A (hl_lam B f) (hl_lam A g) x) (f (g x)) ((pw_o_fun (B) (A) (A) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (fun x:set => f (g x)) (fun x0 Hx0 => (eq_trans_i ((fun x1 :e A => hl_lam B f (hl_lam A g x1)) x0) (hl_lam B f (hl_lam A g x0)) (f (g x0)) (beta (A) (fun x0:set => hl_lam B f (hl_lam A g x0)) x0 Hx0) (((hl_lam_ap (A) g) (x0) Hx0) (fun hl__u hl__v => hl_lam B f (hl_lam A g x0) = f hl__u) ((hl_lam_ap (B) f) (hl_lam A g x0) (setexp_ap (A) (B) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (x0) Hx0)))))) (x) Hx)) (eq_sym_i (hl_I A x) (x) (((hl_I_compat) (A) HAne) (x) Hx))))) (iffER (hl_o B A A (hl_lam B f) (hl_lam A g) = hl_I A) (forall x :e A, hl_o B A A (hl_lam B f) (hl_lam A g) x = hl_I A x) (eq_Pi_pointwise (A) (A) (hl_o B A A (hl_lam B f) (hl_lam A g)) (hl_I A) (setexp_ap (B :^: A) (A :^: A) (hl_o B A A (hl_lam B f)) (setexp_ap (A :^: B) (A :^: A :^: (B :^: A)) (hl_o B A A) ((hl_o_in) (B) (A) (A) HBne HAne HAne) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc)) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc)) ((hl_I_in) (A) HAne)))) (fun H__and8 : (forall x :e A, f (g x) = x) => (imp_trans (forall x :e B, g (f x) = x) (forall x :e B, hl_o A B B (hl_lam A g) (hl_lam B f) x = hl_I B x) (hl_o A B B (hl_lam A g) (hl_lam B f) = hl_I B) (imp_forall_in (B) (fun x => g (f x) = x) (fun x => hl_o A B B (hl_lam A g) (hl_lam B f) x = hl_I B x) (fun x Hx => (imp_eq (g (f x)) (hl_o A B B (hl_lam A g) (hl_lam B f) x) (x) (hl_I B x) (eq_sym_i (hl_o A B B (hl_lam A g) (hl_lam B f) x) (g (f x)) ((pw_o_fun (A) (B) (B) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc) (fun x:set => g (f x)) (fun x0 Hx0 => (eq_trans_i ((fun x1 :e B => hl_lam A g (hl_lam B f x1)) x0) (hl_lam A g (hl_lam B f x0)) (g (f x0)) (beta (B) (fun x0:set => hl_lam A g (hl_lam B f x0)) x0 Hx0) (((hl_lam_ap (B) f) (x0) Hx0) (fun hl__u hl__v => hl_lam A g (hl_lam B f x0) = g hl__u) ((hl_lam_ap (A) g) (hl_lam B f x0) (setexp_ap (B) (A) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc) (x0) Hx0)))))) (x) Hx)) (eq_sym_i (hl_I B x) (x) (((hl_I_compat) (B) HBne) (x) Hx))))) (iffER (hl_o A B B (hl_lam A g) (hl_lam B f) = hl_I B) (forall x :e B, hl_o A B B (hl_lam A g) (hl_lam B f) x = hl_I B x) (eq_Pi_pointwise (B) (B) (hl_o A B B (hl_lam A g) (hl_lam B f)) (hl_I B) (setexp_ap (A :^: B) (B :^: B) (hl_o A B B (hl_lam A g)) (setexp_ap (B :^: A) (B :^: B :^: (A :^: B)) (hl_o A B B) ((hl_o_in) (A) (B) (B) HAne HBne HBne) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc)) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc)) ((hl_I_in) (B) HBne)))))) (imp_and_dep (forall x :e A, hl_lam B f (hl_lam A g x) = x) (forall x :e A, f (g x) = x) (forall x :e B, hl_lam A g (hl_lam B f x) = x) (forall x :e B, g (f x) = x) (imp_forall_in (A) (fun x => hl_lam B f (hl_lam A g x) = x) (fun x => f (g x) = x) (fun x Hx => (imp_eq (hl_lam B f (hl_lam A g x)) (f (g x)) (x) (x) (((hl_lam_ap (A) g) (x) Hx) (fun hl__u hl__v => hl_lam B f (hl_lam A g x) = f hl__u) ((hl_lam_ap (B) f) (hl_lam A g x) (setexp_ap (A) (B) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (x) Hx))) (fun q H => H)))) (fun H__and5 : (forall x :e A, f (g x) = x) => (imp_forall_in (B) (fun x => hl_lam A g (hl_lam B f x) = x) (fun x => g (f x) = x) (fun x Hx => (imp_eq (hl_lam A g (hl_lam B f x)) (g (f x)) (x) (x) (((hl_lam_ap (B) f) (x) Hx) (fun hl__u hl__v => hl_lam A g (hl_lam B f x) = g hl__u) ((hl_lam_ap (A) g) (hl_lam B f x) (setexp_ap (B) (A) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc) (x) Hx))) (fun q H => H)))))) (imp_and_dep_bwd (forall x :e A, hl_lam B f (hl_lam A g x) = x) (forall x :e A, f (g x) = x) (forall x :e B, hl_lam A g (hl_lam B f x) = x) (forall x :e B, g (f x) = x) (imp_forall_in (A) (fun x => f (g x) = x) (fun x => hl_lam B f (hl_lam A g x) = x) (fun x Hx => (imp_eq (f (g x)) (hl_lam B f (hl_lam A g x)) (x) (x) (eq_sym_i (hl_lam B f (hl_lam A g x)) (f (g x)) (((hl_lam_ap (A) g) (x) Hx) (fun hl__u hl__v => hl_lam B f (hl_lam A g x) = f hl__u) ((hl_lam_ap (B) f) (hl_lam A g x) (setexp_ap (A) (B) (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (x) Hx)))) (eq_sym_i (x) (x) (fun q H => H))))) (fun H__and2 : (forall x :e A, f (g x) = x) => (imp_forall_in (B) (fun x => g (f x) = x) (fun x => hl_lam A g (hl_lam B f x) = x) (fun x Hx => (imp_eq (g (f x)) (hl_lam A g (hl_lam B f x)) (x) (x) (eq_sym_i (hl_lam A g (hl_lam B f x)) (g (f x)) (((hl_lam_ap (B) f) (x) Hx) (fun hl__u hl__v => hl_lam A g (hl_lam B f x) = g hl__u) ((hl_lam_ap (A) g) (hl_lam B f x) (setexp_ap (B) (A) (hl_lam B f) (hl_lam_Pi (B) (A) f Hfc) (x) Hx)))) (eq_sym_i (x) (x) (fun q H => H)))))))))))) (H__top A B HAne HBne))).
Qed.
Theorem ISOMORPHISM_EXPAND : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e B, f x :e A) -> forall g:set -> set, (forall x :e A, g x :e B) -> ((forall x :e A, f (g x) = x) /\ (forall x :e B, g (f x) = x) <-> (forall x :e A, f (g x) = x) /\ forall x :e B, g (f x) = x).
exact (ISOMORPHISM_EXPAND_bridge hlt_ISOMORPHISM_EXPAND).
Admitted.

// HOL Light: Multivariate/vectors.ml:6403 / LINEAR_INJECTIVE_ISOMORPHISM   (hash md5:68ad555fb4729748b6a975ef30e7d8a4)
// not bridged: 
Theorem LINEAR_INJECTIVE_ISOMORPHISM : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f /\ (forall x y :e R :^: idx N, f x = f y -> x = y) -> exists f':set -> set, (forall x :e R :^: idx N, f' x :e R :^: idx N) /\ (linear N N f' /\ ((forall x :e R :^: idx N, f' (f x) = x) /\ forall x :e R :^: idx N, f (f' x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6414 / LINEAR_SURJECTIVE_ISOMORPHISM   (hash md5:6584ca808bf756163ec4df615874eada)
// not bridged: 
Theorem LINEAR_SURJECTIVE_ISOMORPHISM : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f /\ (forall y :e R :^: idx N, exists x :e R :^: idx N, f x = y) -> exists f':set -> set, (forall x :e R :^: idx N, f' x :e R :^: idx N) /\ (linear N N f' /\ ((forall x :e R :^: idx N, f' (f x) = x) /\ forall x :e R :^: idx N, f (f' x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6429 / LINEAR_INVERSE_LEFT   (hash md5:b5f0855ff26dc2c283b60d3cf3467b8a)
// not bridged: 
Theorem LINEAR_INVERSE_LEFT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall f':set -> set, (forall x :e R :^: idx N, f' x :e R :^: idx N) -> linear N N f /\ linear N N f' -> ((forall x :e R :^: idx N, f (f' x) = x) <-> forall x :e R :^: idx N, f' (f x) = x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6444 / LEFT_INVERSE_LINEAR   (hash md5:e71ef73257d651abbdb58a366def68d0)
// not bridged: 
Theorem LEFT_INVERSE_LINEAR : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> linear N N f /\ (forall x :e R :^: idx N, g (f x) = x) -> linear N N g.
Admitted.

// HOL Light: Multivariate/vectors.ml:6454 / RIGHT_INVERSE_LINEAR   (hash md5:4cc90ee704c137664b32fac0e0eb5a83)
// not bridged: 
Theorem RIGHT_INVERSE_LINEAR : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) -> linear N N f /\ (forall x :e R :^: idx N, f (g x) = x) -> linear N N g.
Admitted.

// HOL Light: Multivariate/vectors.ml:6467 / LEFT_RIGHT_INVERSE_LINEAR   (hash md5:56d9cd70bcbd569035e93ad281da27d0)
// not bridged: 
Theorem LEFT_RIGHT_INVERSE_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx M) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx N) -> linear N M f /\ ((forall x :e R :^: idx N, g (f x) = x) /\ (forall x :e R :^: idx M, f (g x) = x)) -> linear M N g.
Admitted.

// HOL Light: Multivariate/vectors.ml:6472 / LINEAR_BIJECTIVE_LEFT_RIGHT_INVERSE   (hash md5:d8ffb77795b2a6e1b962e51b2bfc2310)
// not bridged: 
Theorem LINEAR_BIJECTIVE_LEFT_RIGHT_INVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ ((forall x y :e R :^: idx M, f x = f y -> x = y) /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y)) -> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ ((forall x :e R :^: idx M, g (f x) = x) /\ forall y :e R :^: idx N, f (g y) = y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6483 / LINEAR_BIJECTIVE_LEFT_RIGHT_INVERSE_EQ   (hash md5:9632e64a7725e2502ba9393b51cf34b9)
// not bridged: 
Theorem LINEAR_BIJECTIVE_LEFT_RIGHT_INVERSE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((forall x y :e R :^: idx M, f x = f y -> x = y) /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ ((forall x :e R :^: idx N, f (g x) = x) /\ forall x :e R :^: idx M, g (f x) = x))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6492 / LINEAR_INJECTIVE_LEFT_RIGHT_INVERSE_EQ   (hash md5:ab428386fb7dfa9fba0e50a3f8d3585b)
// not bridged: 
Theorem LINEAR_INJECTIVE_LEFT_RIGHT_INVERSE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> ((forall x y :e R :^: idx N, f x = f y -> x = y) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (linear N N g /\ ((forall x :e R :^: idx N, f (g x) = x) /\ forall x :e R :^: idx N, g (f x) = x))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6502 / LINEAR_SURJECTIVE_LEFT_RIGHT_INVERSE_EQ   (hash md5:2dce3e861401840ee74f8929208a6954)
// not bridged: 
Theorem LINEAR_SURJECTIVE_LEFT_RIGHT_INVERSE_EQ : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> ((forall y :e R :^: idx N, exists x :e R :^: idx N, f x = y) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (linear N N g /\ ((forall x :e R :^: idx N, f (g x) = x) /\ forall x :e R :^: idx N, g (f x) = x))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6516 / MATRIX_LEFT_RIGHT_INVERSE   (hash md5:ac460e1eb786af9eb20201d213ad4d6a)
// not bridged: 
Theorem MATRIX_LEFT_RIGHT_INVERSE : forall N:set, N <> Empty -> forall A A' :e R :^: idx N :^: idx N, matrix_mul N N N A A' = mat N N 1 <-> matrix_mul N N N A' A = mat N N 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6543 / MATRIX_LEFT_INVERTIBLE   (hash md5:9bcc1f13f604a79e32e75dd0710f813d)
// not bridged: 
Theorem MATRIX_LEFT_INVERTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((exists B :e R :^: idx N :^: idx M, matrix_mul M N M B (matrix M N f) = mat M M 1) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ forall x :e R :^: idx M, g (f x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6557 / MATRIX_RIGHT_INVERTIBLE   (hash md5:d0db4cee1d249e3d83f4cb4c2f1f444c)
// not bridged: 
Theorem MATRIX_RIGHT_INVERTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((exists B :e R :^: idx N :^: idx M, matrix_mul N M N (matrix M N f) B = mat N N 1) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ forall x :e R :^: idx N, f (g x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:6571 / INVERTIBLE_LEFT_INVERSE   (hash md5:2b45b65b32efaa60d745aa21389abb97)
// not bridged: 
Theorem INVERTIBLE_LEFT_INVERSE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, invertible N N A <-> exists B :e R :^: idx N :^: idx N, matrix_mul N N N B A = mat N N 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6575 / INVERTIBLE_RIGHT_INVERSE   (hash md5:e2cc82a2c2be4f64e4ac7391c3599ebd)
// not bridged: 
Theorem INVERTIBLE_RIGHT_INVERSE : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, invertible N N A <-> exists B :e R :^: idx N :^: idx N, matrix_mul N N N A B = mat N N 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6579 / MATRIX_INVERTIBLE   (hash md5:babfd21f8fba0b09b6513aa0ef440b26)
// not bridged: 
Theorem MATRIX_INVERTIBLE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> (invertible N M (matrix M N f) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ ((forall x :e R :^: idx N, f (g x) = x) /\ forall x :e R :^: idx M, g (f x) = x))).
Admitted.

// HOL Light: Multivariate/vectors.ml:6594 / INVERTIBLE_EQ_INJECTIVE_AND_SURJECTIVE   (hash md5:3a7ef066ec37483b5901a64f3bc8635b)
// not bridged: 
Theorem INVERTIBLE_EQ_INJECTIVE_AND_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall m :e R :^: idx M :^: idx N, invertible N M m <-> (forall x y :e R :^: idx M, matrix_vector_mul N M m x = matrix_vector_mul N M m y -> x = y) /\ {matrix_vector_mul N M m x | x :e R :^: idx M} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:6611 / LINEAR_INVERTIBLE_BOUNDED_BELOW_POS   (hash md5:2dcf1055a5721f9c987214b6e0d93240)
// not bridged: 
Theorem LINEAR_INVERTIBLE_BOUNDED_BELOW_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> linear M N f /\ (linear N M g /\ (forall x :e R :^: idx M, g (f x) = x)) -> exists B :e R, 0 < B /\ forall x :e R :^: idx M, B * vector_norm M x <= vector_norm N (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6627 / LINEAR_INVERTIBLE_BOUNDED_BELOW   (hash md5:785f924d32d3f095e7098d53455c5825)
// not bridged: 
Theorem LINEAR_INVERTIBLE_BOUNDED_BELOW : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> linear M N f /\ (linear N M g /\ (forall x :e R :^: idx M, g (f x) = x)) -> exists B :e R, forall x :e R :^: idx M, B * vector_norm M x <= vector_norm N (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6633 / LINEAR_INJECTIVE_BOUNDED_BELOW_POS   (hash md5:7ddc08f7b83653fa4644614554c2a181)
// not bridged: 
Theorem LINEAR_INJECTIVE_BOUNDED_BELOW_POS : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> exists B :e R, 0 < B /\ forall x :e R :^: idx M, vector_norm M x * B <= vector_norm N (f x).
Admitted.

// HOL Light: Multivariate/vectors.ml:6645 / DIM_INJECTIVE_LINEAR_IMAGE   (hash md5:4fe15c7e0c2b0ee5077a9de4c82c8b61)
// not bridged: 
Theorem DIM_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> dim N {f x | x :e s} = dim M s.
Admitted.

// HOL Light: Multivariate/vectors.ml:6659 / LINEAR_INJECTIVE_DIMINDEX_LE   (hash md5:f7638310c801a47e3c9ff3e2076b4c36)
// not bridged: 
Theorem LINEAR_INJECTIVE_DIMINDEX_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> dimindex M <= dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:6668 / LINEAR_SURJECTIVE_DIMINDEX_LE   (hash md5:fc81313d5461ce19211f0b55b5fe277b)
// not bridged: 
Theorem LINEAR_SURJECTIVE_DIMINDEX_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y) -> dimindex N <= dimindex M.
Admitted.

// HOL Light: Multivariate/vectors.ml:6679 / LINEAR_BIJECTIVE_DIMINDEX_EQ   (hash md5:36534055ce6b2d06f8b2f5631435af1f)
// not bridged: 
Theorem LINEAR_BIJECTIVE_DIMINDEX_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ ((forall x y :e R :^: idx M, f x = f y -> x = y) /\ (forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y)) -> dimindex M = dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:6688 / INVERTIBLE_IMP_SQUARE_MATRIX   (hash md5:e9033609ac70b5191cdd05f29f0be5eb)
// not bridged: 
Theorem INVERTIBLE_IMP_SQUARE_MATRIX : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, invertible M N A -> dimindex M = dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:6703 / rowvector   (hash md5:176279e37cabe362ad015c00035ae58f)
// not bridged: 
Theorem rowvector_thm : forall N:set, N <> Empty -> forall v :e R :^: idx N, rowvector N v = fun i :e idx 1 => fun j :e idx N => v j.
Admitted.

// HOL Light: Multivariate/vectors.ml:6706 / columnvector   (hash md5:6b5847288bd4cf4c8d51d6af890623c2)
// not bridged: 
Theorem columnvector_thm : forall N:set, N <> Empty -> forall v :e R :^: idx N, columnvector N v = fun i :e idx N => fun j :e idx 1 => v i.
Admitted.

// HOL Light: Multivariate/vectors.ml:6709 / TRANSP_COLUMNVECTOR   (hash md5:783011a19617fb81e7dc65d5424554d1)
// not bridged: 
Theorem TRANSP_COLUMNVECTOR : forall A:set, A <> Empty -> forall v :e R :^: idx A, transp A 1 (columnvector A v) = rowvector A v.
Admitted.

// HOL Light: Multivariate/vectors.ml:6713 / TRANSP_ROWVECTOR   (hash md5:3f2841dbc1d9cc9cd17b8a0c2a7eb5ad)
// not bridged: 
Theorem TRANSP_ROWVECTOR : forall A:set, A <> Empty -> forall v :e R :^: idx A, transp 1 A (rowvector A v) = columnvector A v.
Admitted.

// HOL Light: Multivariate/vectors.ml:6717 / DOT_ROWVECTOR_COLUMNVECTOR   (hash md5:53a6760a16f76c7fab1e8c66eff06075)
// not bridged: 
Theorem DOT_ROWVECTOR_COLUMNVECTOR : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall v :e R :^: idx N, columnvector M (matrix_vector_mul M N A v) = matrix_mul M N 1 A (columnvector N v).
Admitted.

// HOL Light: Multivariate/vectors.ml:6722 / DOT_MATRIX_PRODUCT   (hash md5:992a7eecd01e3f6c0442763e1b5d838a)
// not bridged: 
Theorem DOT_MATRIX_PRODUCT : forall N:set, N <> Empty -> forall x y :e R :^: idx N, dot N x y = matrix_mul 1 N 1 (rowvector N x) (columnvector N y) 1 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6727 / DOT_MATRIX_VECTOR_MUL   (hash md5:b7f3a87ad2bed808ac516063cb603308)
// not bridged: 
Theorem DOT_MATRIX_VECTOR_MUL : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, forall x y :e R :^: idx N, dot N (matrix_vector_mul N N A x) (matrix_vector_mul N N B y) = matrix_mul 1 N 1 (rowvector N x) (matrix_mul N N 1 (matrix_mul N N N (transp N N A) B) (columnvector N y)) 1 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:6741 / MATRIX_VECTOR_MUL_IN_COLUMNSPACE   (hash md5:49be253eafe773d2c53d3b0fa821ddc6)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_IN_COLUMNSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, matrix_vector_mul N M A x :e span N (columns N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:6751 / SUBSPACE_ORTHOGONAL_TO_VECTOR   (hash md5:fd1a3c3df995a8f563a42f004e492d5c)
// not bridged: 
Theorem SUBSPACE_ORTHOGONAL_TO_VECTOR : forall A:set, A <> Empty -> forall x :e R :^: idx A, subspace A {y :e R :^: idx A | orthogonal A x y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:6755 / SUBSPACE_ORTHOGONAL_TO_VECTORS   (hash md5:2eb08d209b640dd9400239ff253cd75d)
// not bridged: 
Theorem SUBSPACE_ORTHOGONAL_TO_VECTORS : forall A:set, A <> Empty -> forall s c= R :^: idx A, subspace A {y :e R :^: idx A | forall x :e R :^: idx A, x :e s -> orthogonal A x y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:6759 / ORTHOGONAL_TO_SPAN   (hash md5:ed5b3b3daca8348b4fba6dc31feb0ebd)
// not bridged: 
Theorem ORTHOGONAL_TO_SPAN : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, (forall y :e R :^: idx A, y :e s -> orthogonal A x y) -> forall y :e R :^: idx A, y :e span A s -> orthogonal A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6766 / ORTHOGONAL_TO_SPAN_EQ   (hash md5:a3c05918a5a562ad295868c42900c433)
// not bridged: 
Theorem ORTHOGONAL_TO_SPAN_EQ : forall A:set, A <> Empty -> forall s c= R :^: idx A, forall x :e R :^: idx A, (forall y :e R :^: idx A, y :e span A s -> orthogonal A x y) <-> forall y :e R :^: idx A, y :e s -> orthogonal A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6771 / ORTHOGONAL_TO_SPANS_EQ   (hash md5:3f714c78c4f8bd072996d7c45c2bd93a)
// not bridged: 
Theorem ORTHOGONAL_TO_SPANS_EQ : forall A:set, A <> Empty -> forall s t c= R :^: idx A, (forall x y :e R :^: idx A, x :e span A s /\ y :e span A t -> orthogonal A x y) <-> forall x y :e R :^: idx A, x :e s /\ y :e t -> orthogonal A x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6776 / ORTHOGONAL_NULLSPACE_ROWSPACE   (hash md5:f5edb12f22ac2d2a54692505da9e2c93)
// not bridged: 
Theorem ORTHOGONAL_NULLSPACE_ROWSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x y :e R :^: idx M, matrix_vector_mul N M A x = vec N 0 /\ y :e span M (rows N M A) -> orthogonal M x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6789 / NULLSPACE_INTER_ROWSPACE   (hash md5:3245f00d955209809b4ae600da7ae22d)
// not bridged: 
Theorem NULLSPACE_INTER_ROWSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, matrix_vector_mul N M A x = vec N 0 /\ x :e span M (rows N M A) <-> x = vec M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6795 / MATRIX_VECTOR_MUL_INJECTIVE_ON_ROWSPACE   (hash md5:8c6a128ed09664438adb9a150f4be773)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_INJECTIVE_ON_ROWSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x y :e R :^: idx M, x :e span M (rows N M A) /\ (y :e span M (rows N M A) /\ matrix_vector_mul N M A x = matrix_vector_mul N M A y) -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6803 / DIM_ROWS_LE_DIM_COLUMNS   (hash md5:5bdada77e43430c17110c9c38fed39ac)
// not bridged: 
Theorem DIM_ROWS_LE_DIM_COLUMNS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, dim M (rows N M A) <= dim N (columns N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:6830 / rank   (hash md5:27eec933cfcb7c89add4c4bcee31c2f8)
// not bridged: 
Theorem rank_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M N A = dim N (columns N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:6833 / RANK_ROW   (hash md5:81aec6296da26da371ca17df02c44a65)
// not bridged: 
Theorem RANK_ROW : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M N A = dim M (rows N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:6840 / RANK_TRANSP   (hash md5:f09e817d66c426c0102ce67bfcbae928)
// not bridged: 
Theorem RANK_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank N M (transp N M A) = rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:6845 / MATRIX_VECTOR_MUL_BASIS   (hash md5:08d7b84a6a5a7563a8d5ee65936cb5ca)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_BASIS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall k :e omega, 1 <= k /\ k <= dimindex M -> matrix_vector_mul N M A (basis M k) = column N M k A.
Admitted.

// HOL Light: Multivariate/vectors.ml:6851 / COLUMNS_IMAGE_BASIS   (hash md5:c8f2da83c07de98c1ffc6ef5896541a2)
// not bridged: 
Theorem COLUMNS_IMAGE_BASIS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, columns N M A = {matrix_vector_mul N M A x | x :e {basis M i | i :e omega, 1 <= i /\ i <= dimindex M}}.
Admitted.

// HOL Light: Multivariate/vectors.ml:6859 / RANK_DIM_IM   (hash md5:bdce8dc784c6cda5f73ee2d47f4afb70)
// not bridged: 
Theorem RANK_DIM_IM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M N A = dim N {matrix_vector_mul N M A x | x :e R :^: idx M}.
Admitted.

// HOL Light: Multivariate/vectors.ml:6867 / RANK_BOUND   (hash md5:e20acce6354bfcce85241ffd3ce29a3a)
// not bridged: 
Theorem RANK_BOUND : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M N A <= if dimindex M <= dimindex N then dimindex M else dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:6874 / FULL_RANK_INJECTIVE   (hash md5:acd1321072e1f1f832bc1230144833fb)
// not bridged: 
Theorem FULL_RANK_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M N A = dimindex M <-> forall x y :e R :^: idx M, matrix_vector_mul N M A x = matrix_vector_mul N M A y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6882 / FULL_RANK_SURJECTIVE   (hash md5:be0221859fe1a38ee89030825ec4a454)
// not bridged: 
Theorem FULL_RANK_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M N A = dimindex N <-> forall y :e R :^: idx N, exists x :e R :^: idx M, matrix_vector_mul N M A x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:6890 / RANK_I   (hash md5:b08896fe2aa4527e402e33d73ecc9cb3)
// not bridged: 
Theorem RANK_I : forall N:set, N <> Empty -> rank N N (mat N N 1) = dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:6894 / MATRIX_FULL_LINEAR_EQUATIONS   (hash md5:97454a9a6fb6d081219b8665b86da4c4)
// not bridged: 
Theorem MATRIX_FULL_LINEAR_EQUATIONS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall b :e R :^: idx N, rank M N A = dimindex N -> exists x :e R :^: idx M, matrix_vector_mul N M A x = b.
Admitted.

// HOL Light: Multivariate/vectors.ml:6899 / MATRIX_NONFULL_LINEAR_EQUATIONS_EQ   (hash md5:0a70c0e574f70fea4b49898949cea1e3)
// not bridged: 
Theorem MATRIX_NONFULL_LINEAR_EQUATIONS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, (exists x :e R :^: idx M, ~ x = vec M 0 /\ matrix_vector_mul N M A x = vec N 0) <-> ~ rank M N A = dimindex M.
Admitted.

// HOL Light: Multivariate/vectors.ml:6906 / MATRIX_NONFULL_LINEAR_EQUATIONS   (hash md5:49b884a2381e9635b1e4751fe0081b7f)
// not bridged: 
Theorem MATRIX_NONFULL_LINEAR_EQUATIONS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, ~ rank M N A = dimindex M -> exists x :e R :^: idx M, ~ x = vec M 0 /\ matrix_vector_mul N M A x = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6911 / MATRIX_TRIVIAL_LINEAR_EQUATIONS   (hash md5:52edcd30bd166a2f3eb19cf289dced7a)
// not bridged: 
Theorem MATRIX_TRIVIAL_LINEAR_EQUATIONS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, dimindex N < dimindex M -> exists x :e R :^: idx M, ~ x = vec M 0 /\ matrix_vector_mul N M A x = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6920 / RANK_EQ_0   (hash md5:c8f1a41f57e8a0d024cfab573cc44b66)
// not bridged: 
Theorem RANK_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M N A = 0 <-> A = mat N M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6930 / RANK_0   (hash md5:92723b3ed7c74016d7d9d6dbe258fc7d)
// not bridged: 
Theorem RANK_0 : forall A B:set, A <> Empty -> B <> Empty -> rank A B (mat B A 0) = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:6934 / RANK_MUL_LE_RIGHT   (hash md5:b10d6e8327dad2a77c5dc1373c55331d)
// not bridged: 
Theorem RANK_MUL_LE_RIGHT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, rank P M (matrix_mul M N P A B) <= rank P N B.
Admitted.

// HOL Light: Multivariate/vectors.ml:6944 / RANK_MUL_LE_LEFT   (hash md5:5bf84938020d17a35dacfed938d74664)
// not bridged: 
Theorem RANK_MUL_LE_LEFT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, rank P M (matrix_mul M N P A B) <= rank N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:6950 / SPAN_COLUMNSPACE   (hash md5:a95003741d259685b37f2b09b30facd9)
// not bridged: 
Theorem SPAN_COLUMNSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, span N (columns N M A) = {y :e R :^: idx N | exists x :e R :^: idx M, matrix_vector_mul N M A x = y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:6964 / MATRIX_AUGMENTED_LINEAR_EQUATIONS   (hash md5:9af3f3df0f636e7ee8802bf3bdc05be1)
// not bridged: 
Theorem MATRIX_AUGMENTED_LINEAR_EQUATIONS : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall y :e R :^: idx N, (exists x :e R :^: idx M, matrix_vector_mul N M (transp M N A) x = y) <-> rank N (idx_n (dimindex M + 1)) (pastecart M 1 A (rowvector N y)) = rank N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:6999 / NORM_COLUMN_LE_ONORM   (hash md5:9a8dd7e2824d8d85de54c51b73f28fef)
// not bridged: 
Theorem NORM_COLUMN_LE_ONORM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall i :e omega, vector_norm M (column M N i A) <= onorm N M (matrix_vector_mul M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:7009 / MATRIX_COMPONENT_LE_ONORM   (hash md5:7a977f8aa31e702fe28ba46e30479ef7)
// not bridged: 
Theorem MATRIX_COMPONENT_LE_ONORM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall i j :e omega, abs_SNo (A i j) <= onorm N M (matrix_vector_mul M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:7025 / COMPONENT_LE_ONORM   (hash md5:b834920119aa4d2bd583789dc95c3d33)
// not bridged: 
Theorem COMPONENT_LE_ONORM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall i j :e omega, linear M N f -> abs_SNo (matrix M N f i j) <= onorm M N f.
Admitted.

// HOL Light: Multivariate/vectors.ml:7032 / ONORM_LE_MATRIX_COMPONENT_SUM   (hash md5:6535d72813e0db56920a4be6900bbfbd)
// not bridged: 
Theorem ONORM_LE_MATRIX_COMPONENT_SUM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, onorm N M (matrix_vector_mul M N A) <= finsum (idx M) (fun i:set => finsum (idx N) (fun j:set => abs_SNo (A i j))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7050 / ONORM_LE_MATRIX_COMPONENT   (hash md5:7aeb7c43f0fbd3a80eaff357388e1ee5)
// not bridged: 
Theorem ONORM_LE_MATRIX_COMPONENT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R, (forall i j :e omega, 1 <= i /\ (i <= dimindex M /\ (1 <= j /\ j <= dimindex N)) -> abs_SNo (A i j) <= B) -> onorm N M (matrix_vector_mul M N A) <= dimindex M * dimindex N * B.
Admitted.

// HOL Light: Multivariate/vectors.ml:7078 / MATRIX_RATIONAL_APPROXIMATION   (hash md5:f855bcb4825cda77e84eb80f0d92bd82)
// not bridged: 
Theorem MATRIX_RATIONAL_APPROXIMATION : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall e0 :e R, 0 < e0 -> exists B :e R :^: idx N :^: idx M, (forall i j :e omega, 1 <= i /\ (i <= dimindex M /\ (1 <= j /\ j <= dimindex N)) -> B i j :e rational) /\ onorm N M (matrix_vector_mul M N (matrix_sub M N A B)) < e0.
Admitted.

// HOL Light: Multivariate/vectors.ml:7113 / HYPERPLANE_EQ_EMPTY   (hash md5:f66623fd08218208f34e4fc842d29c60)
// not bridged: 
Theorem HYPERPLANE_EQ_EMPTY : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, {x :e R :^: idx N | dot N a x = b} = Empty <-> a = vec N 0 /\ ~ b = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:7121 / HYPERPLANE_EQ_UNIV   (hash md5:158b783a122a91e5af49030192022500)
// not bridged: 
Theorem HYPERPLANE_EQ_UNIV : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, {x :e R :^: idx N | dot N a x = b} = R :^: idx N <-> a = vec N 0 /\ b = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:7129 / HALFSPACE_EQ_EMPTY_LT   (hash md5:9bae37450faffd9a156c5e0ce28b82c5)
// not bridged: 
Theorem HALFSPACE_EQ_EMPTY_LT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, {x :e R :^: idx N | dot N a x < b} = Empty <-> a = vec N 0 /\ b <= 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:7139 / HALFSPACE_EQ_EMPTY_GT   (hash md5:59475993c5afa93d9111086a53af61a5)
// not bridged: 
Theorem HALFSPACE_EQ_EMPTY_GT : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, {x :e R :^: idx N | b < dot N a x} = Empty <-> a = vec N 0 /\ 0 <= b.
Admitted.

// HOL Light: Multivariate/vectors.ml:7146 / HALFSPACE_EQ_EMPTY_LE   (hash md5:0a02770783f721df925417b19203812a)
// not bridged: 
Theorem HALFSPACE_EQ_EMPTY_LE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, {x :e R :^: idx N | dot N a x <= b} = Empty <-> a = vec N 0 /\ b < 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:7156 / HALFSPACE_EQ_EMPTY_GE   (hash md5:1b6e1b3008c173240c53d8b44f4a4df3)
// not bridged: 
Theorem HALFSPACE_EQ_EMPTY_GE : forall N:set, N <> Empty -> forall a :e R :^: idx N, forall b :e R, {x :e R :^: idx N | b <= dot N a x} = Empty <-> a = vec N 0 /\ 0 < b.
Admitted.

// HOL Light: Multivariate/vectors.ml:7167 / ADJOINT_INJECTIVE   (hash md5:6b99d98d91b5b565fad41389325db6bb)
// not bridged: 
Theorem ADJOINT_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((forall x y :e R :^: idx N, adjoint M N f x = adjoint M N f y -> x = y) <-> forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:7179 / ADJOINT_SURJECTIVE   (hash md5:da8b7dd7aba68923c1e2a3887af5c37c)
// not bridged: 
Theorem ADJOINT_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((forall y :e R :^: idx M, exists x :e R :^: idx N, adjoint M N f x = y) <-> forall x y :e R :^: idx M, f x = f y -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:7188 / ADJOINT_INJECTIVE_INJECTIVE   (hash md5:5a717ac5249fd570f1063ee1c4f132d8)
// not bridged: 
Theorem ADJOINT_INJECTIVE_INJECTIVE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> ((forall x y :e R :^: idx N, adjoint N N f x = adjoint N N f y -> x = y) <-> forall x y :e R :^: idx N, f x = f y -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:7197 / ADJOINT_INJECTIVE_INJECTIVE_0   (hash md5:850ddbfb72ceb5ac06bdca3d0f348f13)
// not bridged: 
Theorem ADJOINT_INJECTIVE_INJECTIVE_0 : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> ((forall x :e R :^: idx N, adjoint N N f x = vec N 0 -> x = vec N 0) <-> forall x :e R :^: idx N, f x = vec N 0 -> x = vec N 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:7207 / TRANSP_INJECTIVE   (hash md5:c100f5e0b2db4c4c96e46079b4efdf8e)
// not bridged: 
Theorem TRANSP_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall m :e R :^: idx M :^: idx N, (forall x y :e R :^: idx N, matrix_vector_mul M N (transp N M m) x = matrix_vector_mul M N (transp N M m) y -> x = y) <-> {matrix_vector_mul N M m x | x :e R :^: idx M} = R :^: idx N.
Admitted.

// HOL Light: Multivariate/vectors.ml:7215 / TRANSP_SURJECTIVE   (hash md5:f5ae5eccfef281206ef8923c31a9d1c8)
// not bridged: 
Theorem TRANSP_SURJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall m :e R :^: idx M :^: idx N, {matrix_vector_mul M N (transp N M m) x | x :e R :^: idx N} = R :^: idx M <-> forall x y :e R :^: idx M, matrix_vector_mul N M m x = matrix_vector_mul N M m y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:7221 / LINEAR_SINGULAR_INTO_HYPERPLANE   (hash md5:8a5a2e234523b60c07fa2f5a785cf5bb)
// not bridged: 
Theorem LINEAR_SINGULAR_INTO_HYPERPLANE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> (~ (forall x y :e R :^: idx N, f x = f y -> x = y) <-> exists a :e R :^: idx N, ~ a = vec N 0 /\ forall x :e R :^: idx N, dot N a (f x) = 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:7231 / LINEAR_SINGULAR_IMAGE_HYPERPLANE   (hash md5:dec5f151e398d3fd886d41030ec11ffa)
// not bridged: 
Theorem LINEAR_SINGULAR_IMAGE_HYPERPLANE : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f /\ ~ (forall x y :e R :^: idx N, f x = f y -> x = y) -> exists a :e R :^: idx N, ~ a = vec N 0 /\ forall s c= R :^: idx N, {f x | x :e s} c= {x :e R :^: idx N | dot N a x = 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:7243 / SPAN_DELETE_0   (hash md5:7a6c5a77f27e7f9be46774a0581763c5)
// not bridged: 
Theorem SPAN_DELETE_0 : forall N:set, N <> Empty -> forall s c= R :^: idx N, span N (s :\: {vec N 0}) = span N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:7252 / DIM_BASIS_IMAGE   (hash md5:0e112431b999d7c44bd5f7f7da12c395)
// not bridged: 
Theorem DIM_BASIS_IMAGE : forall N:set, N <> Empty -> forall k c= omega, dim N {basis N x | x :e k} = finite_cardinality (idx N :/\: k).
Admitted.

// HOL Light: Multivariate/vectors.ml:7269 / SPAN_IMAGE_SCALE   (hash md5:8384b1818350b38534e45a22fdd137e4)
// not bridged: 
Theorem SPAN_IMAGE_SCALE : forall N:set, N <> Empty -> forall c:set -> set, (forall x :e R :^: idx N, c x :e R) -> forall s c= R :^: idx N, (forall x :e R :^: idx N, x :e s -> ~ c x = 0) -> span N {vector_mul N (c x) x | x :e s} = span N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:7282 / DIM_IMAGE_SCALE   (hash md5:48d397e08fd54f95346df5d57e38e108)
// not bridged: 
Theorem DIM_IMAGE_SCALE : forall N:set, N <> Empty -> forall c:set -> set, (forall x :e R :^: idx N, c x :e R) -> forall s c= R :^: idx N, (forall x :e R :^: idx N, x :e s -> ~ c x = 0) -> dim N {vector_mul N (c x) x | x :e s} = dim N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:7287 / PAIRWISE_ORTHOGONAL_INDEPENDENT   (hash md5:40ef9713aed961877ed142f88a917507)
// not bridged: 
Theorem PAIRWISE_ORTHOGONAL_INDEPENDENT : forall N:set, N <> Empty -> forall s c= R :^: idx N, (forall x y :e s, x <> y -> orthogonal N x y) /\ ~ vec N 0 :e s -> independent N s.
Admitted.

// HOL Light: Multivariate/vectors.ml:7300 / PAIRWISE_ORTHOGONAL_IMP_FINITE   (hash md5:31cf23158b999f9aa492e62fce57c44b)
// not bridged: 
Theorem PAIRWISE_ORTHOGONAL_IMP_FINITE : forall N:set, N <> Empty -> forall s c= R :^: idx N, (forall x y :e s, x <> y -> orthogonal N x y) -> finite s.
Admitted.

// HOL Light: Multivariate/vectors.ml:7311 / GRAM_SCHMIDT_STEP   (hash md5:cf04eff513dc70e785d3f30630cb42d4)
// not bridged: 
Theorem GRAM_SCHMIDT_STEP : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a x :e R :^: idx N, (forall x y :e s, x <> y -> orthogonal N x y) /\ x :e span N s -> orthogonal N x (vector_sub N a (vsum (R :^: idx N) N s (fun b:set => vector_mul N (dot N b a :/: dot N b b) b))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7330 / ORTHOGONAL_EXTENSION   (hash md5:3c6ab1d4d17d2fb659fb8106d59dbe65)
// not bridged: 
Theorem ORTHOGONAL_EXTENSION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, (forall x y :e s, x <> y -> orthogonal N x y) -> exists u c= R :^: idx N, (forall x y :e s :\/: u, x <> y -> orthogonal N x y) /\ span N (s :\/: u) = span N (s :\/: t).
Admitted.

// HOL Light: Multivariate/vectors.ml:7375 / ORTHOGONAL_EXTENSION_STRONG   (hash md5:a13779cb6d46d661bb6ae785a303160a)
// not bridged: 
Theorem ORTHOGONAL_EXTENSION_STRONG : forall N:set, N <> Empty -> forall s t c= R :^: idx N, (forall x y :e s, x <> y -> orthogonal N x y) -> exists u c= R :^: idx N, u :/\: SetAdjoin s (vec N 0) = Empty /\ ((forall x y :e s :\/: u, x <> y -> orthogonal N x y) /\ span N (s :\/: u) = span N (s :\/: t)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7392 / ORTHONORMAL_EXTENSION   (hash md5:05dd109fd58bf3d942306621dac6f951)
// not bridged: 
Theorem ORTHONORMAL_EXTENSION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, (forall x y :e s, x <> y -> orthogonal N x y) /\ (forall x :e R :^: idx N, x :e s -> vector_norm N x = 1) -> exists u c= R :^: idx N, u :/\: s = Empty /\ ((forall x y :e s :\/: u, x <> y -> orthogonal N x y) /\ ((forall x :e R :^: idx N, x :e u -> vector_norm N x = 1) /\ span N (s :\/: u) = span N (s :\/: t))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7436 / VECTOR_IN_ORTHOGONAL_SPANNINGSET   (hash md5:09a44cc46a2835d0c9a56fda2b358133)
// not bridged: 
Theorem VECTOR_IN_ORTHOGONAL_SPANNINGSET : forall N:set, N <> Empty -> forall a :e R :^: idx N, exists s c= R :^: idx N, a :e s /\ ((forall x y :e s, x <> y -> orthogonal N x y) /\ span N s = R :^: idx N).
Admitted.

// HOL Light: Multivariate/vectors.ml:7449 / VECTOR_IN_ORTHOGONAL_BASIS   (hash md5:2bdc7ece862c3be3904ae7fefae2b25e)
// not bridged: 
Theorem VECTOR_IN_ORTHOGONAL_BASIS : forall N:set, N <> Empty -> forall a :e R :^: idx N, ~ a = vec N 0 -> exists s c= R :^: idx N, a :e s /\ (~ vec N 0 :e s /\ ((forall x y :e s, x <> y -> orthogonal N x y) /\ (independent N s /\ (equip s (dimindex N) /\ span N s = R :^: idx N)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7471 / VECTOR_IN_ORTHONORMAL_BASIS   (hash md5:696d61850dffb7b651564b8e228446ab)
// not bridged: 
Theorem VECTOR_IN_ORTHONORMAL_BASIS : forall N:set, N <> Empty -> forall a :e R :^: idx N, vector_norm N a = 1 -> exists s c= R :^: idx N, a :e s /\ ((forall x y :e s, x <> y -> orthogonal N x y) /\ ((forall x :e R :^: idx N, x :e s -> vector_norm N x = 1) /\ (independent N s /\ (equip s (dimindex N) /\ span N s = R :^: idx N)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7509 / BESSEL_INEQUALITY   (hash md5:404e46fb8df9342dfc2fd30efc97527c)
// not bridged: 
Theorem BESSEL_INEQUALITY : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, (forall x y :e s, x <> y -> orthogonal N x y) /\ (forall x0 :e R :^: idx N, x0 :e s -> vector_norm N x0 = 1) -> finsum s (fun e0:set => dot N e0 x ^ 2) <= vector_norm N x ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:7537 / ORTHOGONAL_SPANNINGSET_SUBSPACE   (hash md5:be2ccc5d7a600258ab15aa537ead1d5a)
// not bridged: 
Theorem ORTHOGONAL_SPANNINGSET_SUBSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> exists b c= R :^: idx N, b c= s /\ ((forall x y :e b, x <> y -> orthogonal N x y) /\ span N b = s).
Admitted.

// HOL Light: Multivariate/vectors.ml:7551 / ORTHOGONAL_BASIS_SUBSPACE   (hash md5:fba3f7cbf7baa4c0713534de0a02cc96)
// not bridged: 
Theorem ORTHOGONAL_BASIS_SUBSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> exists b c= R :^: idx N, ~ vec N 0 :e b /\ (b c= s /\ ((forall x y :e b, x <> y -> orthogonal N x y) /\ (independent N b /\ (equip b (dim N s) /\ span N b = s)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7576 / ORTHONORMAL_BASIS_SUBSPACE   (hash md5:ee220552c0878c24a7fd4ec37a28bb28)
// not bridged: 
Theorem ORTHONORMAL_BASIS_SUBSPACE : forall N:set, N <> Empty -> forall s c= R :^: idx N, subspace N s -> exists b c= R :^: idx N, b c= s /\ ((forall x y :e b, x <> y -> orthogonal N x y) /\ ((forall x :e R :^: idx N, x :e b -> vector_norm N x = 1) /\ (independent N b /\ (equip b (dim N s) /\ span N b = s)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7614 / ORTHOGONAL_TO_SUBSPACE_EXISTS_GEN   (hash md5:88fd60b0bb1edf111db78f9e51bb72b7)
// not bridged: 
Theorem ORTHOGONAL_TO_SUBSPACE_EXISTS_GEN : forall N:set, N <> Empty -> forall s t c= R :^: idx N, span N s c= span N t /\ span N s <> span N t -> exists x :e R :^: idx N, ~ x = vec N 0 /\ (x :e span N t /\ forall y :e R :^: idx N, y :e span N s -> orthogonal N x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:7660 / ORTHOGONAL_TO_SUBSPACE_EXISTS   (hash md5:8cc6a9ac9b76faa8b7aa967e8c544539)
// not bridged: 
Theorem ORTHOGONAL_TO_SUBSPACE_EXISTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s < dimindex N -> exists x :e R :^: idx N, ~ x = vec N 0 /\ forall y :e R :^: idx N, y :e s -> orthogonal N x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:7670 / ORTHOGONAL_TO_VECTOR_EXISTS   (hash md5:4957364696c66732e5a402860a34dabb)
// not bridged: 
Theorem ORTHOGONAL_TO_VECTOR_EXISTS : forall N:set, N <> Empty -> forall x :e R :^: idx N, 2 <= dimindex N -> exists y :e R :^: idx N, ~ y = vec N 0 /\ orthogonal N x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:7677 / SPAN_NOT_UNIV_ORTHOGONAL   (hash md5:e1ca2c5ba7ef3a02abcd6f45cf7b8ad7)
// not bridged: 
Theorem SPAN_NOT_UNIV_ORTHOGONAL : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ span N s = R :^: idx N -> exists a :e R :^: idx N, ~ a = vec N 0 /\ forall x :e R :^: idx N, x :e span N s -> dot N a x = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:7685 / SPAN_NOT_UNIV_SUBSET_HYPERPLANE   (hash md5:c6e16477b4f12bfcfc7607cb371dec98)
// not bridged: 
Theorem SPAN_NOT_UNIV_SUBSET_HYPERPLANE : forall N:set, N <> Empty -> forall s c= R :^: idx N, ~ span N s = R :^: idx N -> exists a :e R :^: idx N, ~ a = vec N 0 /\ span N s c= {x :e R :^: idx N | dot N a x = 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:7690 / LOWDIM_SUBSET_HYPERPLANE   (hash md5:ae5f09f72b90ce349532018b357efab9)
// not bridged: 
Theorem LOWDIM_SUBSET_HYPERPLANE : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s < dimindex N -> exists a :e R :^: idx N, ~ a = vec N 0 /\ span N s c= {x :e R :^: idx N | dot N a x = 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:7698 / VECTOR_EQ_DOT_SPAN   (hash md5:489f29bb329674111d11dc595fb0e53e)
// not bridged: 
Theorem VECTOR_EQ_DOT_SPAN : forall N:set, N <> Empty -> forall b c= R :^: idx N, forall x y :e R :^: idx N, (forall v :e R :^: idx N, v :e b -> dot N v x = dot N v y) /\ (x :e span N b /\ y :e span N b) -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:7706 / ORTHONORMAL_BASIS_EXPAND   (hash md5:536d79443cad55f5ee90120b25fe61ff)
// not bridged: 
Theorem ORTHONORMAL_BASIS_EXPAND : forall N:set, N <> Empty -> forall b c= R :^: idx N, forall x :e R :^: idx N, (forall x y :e b, x <> y -> orthogonal N x y) /\ ((forall v :e R :^: idx N, v :e b -> vector_norm N v = 1) /\ x :e span N b) -> vsum (R :^: idx N) N b (fun v:set => vector_mul N (dot N v x) v) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:7722 / ORTHONORMAL_BASIS_EXPAND_DOT   (hash md5:f4107f97b86ff420de499fb76cfaa775)
// not bridged: 
Theorem ORTHONORMAL_BASIS_EXPAND_DOT : forall N:set, N <> Empty -> forall b c= R :^: idx N, forall x y :e R :^: idx N, (forall x y :e b, x <> y -> orthogonal N x y) /\ ((forall v :e R :^: idx N, v :e b -> vector_norm N v = 1) /\ (x :e span N b \/ y :e span N b)) -> finsum b (fun v:set => dot N v x * dot N v y) = dot N x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:7738 / ORTHONORMAL_BASIS_EXPAND_NORM   (hash md5:bf384c5b2f0d4225ab041eb101b95976)
// not bridged: 
Theorem ORTHONORMAL_BASIS_EXPAND_NORM : forall N:set, N <> Empty -> forall b c= R :^: idx N, forall x :e R :^: idx N, (forall x y :e b, x <> y -> orthogonal N x y) /\ ((forall v :e R :^: idx N, v :e b -> vector_norm N v = 1) /\ x :e span N b) -> finsum b (fun v:set => dot N v x ^ 2) = vector_norm N x ^ 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:7750 / ORTHOGONAL_IMP_INDEPENDENT_SUBSPACES   (hash md5:d879fe8e7f7eecc6f725b8c1362b1f7e)
// not bridged: 
Theorem ORTHOGONAL_IMP_INDEPENDENT_SUBSPACES : forall N:set, N <> Empty -> forall s t c= R :^: idx N, (forall a b :e R :^: idx N, a :e s /\ b :e t -> orthogonal N a b) -> s :/\: t c= {vec N 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:7757 / INDEPENDENT_SUBSPACES_ALT   (hash md5:f972e5807098d4f543d05a2b5c5f9032)
// not bridged: 
Theorem INDEPENDENT_SUBSPACES_ALT : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ subspace N t -> (s :/\: t c= {vec N 0} <-> s :/\: t = {vec N 0}).
Admitted.

// HOL Light: Multivariate/vectors.ml:7764 / INDEPENDENT_SUBSPACES_0   (hash md5:2f0ec0ce018c5bd54126c49c80db8dda)
// not bridged: 
Theorem INDEPENDENT_SUBSPACES_0 : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ subspace N t -> (s :/\: t c= {vec N 0} <-> forall x y :e R :^: idx N, x :e s /\ (y :e t /\ vector_add N x y = vec N 0) -> x = vec N 0 /\ y = vec N 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:7780 / INDEPENDENT_SUBSPACES   (hash md5:89b9ffc85e1be5dfc73d5079b38f9fff)
// not bridged: 
Theorem INDEPENDENT_SUBSPACES : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ subspace N t -> (s :/\: t c= {vec N 0} <-> forall x y x' y' :e R :^: idx N, x :e s /\ (x' :e s /\ (y :e t /\ (y' :e t /\ vector_add N x y = vector_add N x' y'))) -> x = x' /\ y = y').
Admitted.

// HOL Light: Multivariate/vectors.ml:7795 / ORTHOGONAL_SUBSPACE_DECOMP_UNIQUE   (hash md5:c831fed2605d3a8e8c3388392245bdf4)
// not bridged: 
Theorem ORTHOGONAL_SUBSPACE_DECOMP_UNIQUE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, forall x y x' y' :e R :^: idx N, (forall a b :e R :^: idx N, a :e s /\ b :e t -> orthogonal N a b) /\ (x :e span N s /\ (x' :e span N s /\ (y :e span N t /\ (y' :e span N t /\ vector_add N x y = vector_add N x' y')))) -> x = x' /\ y = y'.
Admitted.

// HOL Light: Multivariate/vectors.ml:7809 / ORTHOGONAL_SUBSPACE_DECOMP_EXISTS   (hash md5:30a1b5dd4dd8644f439e7c79d46add5e)
// not bridged: 
Theorem ORTHOGONAL_SUBSPACE_DECOMP_EXISTS : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, exists y z :e R :^: idx N, y :e span N s /\ ((forall w :e R :^: idx N, w :e span N s -> orthogonal N z w) /\ x = vector_add N y z).
Admitted.

// HOL Light: Multivariate/vectors.ml:7826 / ORTHOGONAL_SUBSPACE_DECOMP   (hash md5:bd472e9f1c2f9e146e18bb6279cc4deb)
// not bridged: 
Theorem ORTHOGONAL_SUBSPACE_DECOMP : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall x :e R :^: idx N, exists x0 :e R :^: idx N :*: R :^: idx N, x0 0 :e span N s /\ (x0 1 :e {z :e R :^: idx N | forall x1 :e R :^: idx N, x1 :e span N s -> orthogonal N z x1} /\ x = vector_add N (x0 0) (x0 1)) /\ forall y :e R :^: idx N :*: R :^: idx N, y 0 :e span N s /\ (y 1 :e {z :e R :^: idx N | forall x1 :e R :^: idx N, x1 :e span N s -> orthogonal N z x1} /\ x = vector_add N (y 0) (y 1)) -> y = x0.
Admitted.

// HOL Light: Multivariate/vectors.ml:7844 / ISOMETRY_SUBSET_SUBSPACE   (hash md5:3372c79ca0cfad07514c95eb0b553d01)
// not bridged: 
Theorem ISOMETRY_SUBSET_SUBSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace M s /\ (subspace N t /\ dim M s <= dim N t) -> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ (linear M N f /\ ({f x | x :e s} c= t /\ forall x :e R :^: idx M, x :e s -> vector_norm N (f x) = vector_norm M x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7884 / ISOMETRIES_SUBSPACES   (hash md5:82c9ee5b50e1b56febacff0164095895)
// not bridged: 
Theorem ISOMETRIES_SUBSPACES : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace M s /\ (subspace N t /\ dim M s = dim N t) -> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear M N f /\ (linear N M g /\ ({f x | x :e s} = t /\ ({g x | x :e t} = s /\ ((forall x :e R :^: idx M, x :e s -> vector_norm N (f x) = vector_norm M x) /\ ((forall y :e R :^: idx N, y :e t -> vector_norm M (g y) = vector_norm N y) /\ ((forall x :e R :^: idx M, x :e s -> g (f x) = x) /\ forall y :e R :^: idx N, y :e t -> f (g y) = y))))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:7962 / ISOMETRY_SUBSPACES   (hash md5:40d26090b2f9294f449b41fb474406ab)
// not bridged: 
Theorem ISOMETRY_SUBSPACES : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace M s /\ (subspace N t /\ dim M s = dim N t) -> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ (linear M N f /\ ({f x | x :e s} = t /\ forall x :e R :^: idx M, x :e s -> vector_norm N (f x) = vector_norm M x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7971 / ISOMETRY_UNIV_SUBSPACE   (hash md5:29f28f1c3edf12bb6a7a5686c90b18e9)
// not bridged: 
Theorem ISOMETRY_UNIV_SUBSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx N, subspace N s /\ dimindex M = dim N s -> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ (linear M N f /\ ({f x | x :e R :^: idx M} = s /\ forall x :e R :^: idx M, vector_norm N (f x) = vector_norm M x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7980 / ISOMETRY_UNIV_SUPERSET_SUBSPACE   (hash md5:6fe5d98caf9169706cf7e04cc0e1559f)
// not bridged: 
Theorem ISOMETRY_UNIV_SUPERSET_SUBSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx N, subspace N s /\ (dim N s <= dimindex M /\ dimindex M <= dimindex N) -> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ (linear M N f /\ (s c= {f x | x :e R :^: idx M} /\ forall x :e R :^: idx M, vector_norm N (f x) = vector_norm M x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:7993 / ISOMETRY_UNIV_UNIV   (hash md5:cef27efcc62104b8d8361f325c5d4c50)
// not bridged: 
Theorem ISOMETRY_UNIV_UNIV : forall M N:set, M <> Empty -> N <> Empty -> dimindex M <= dimindex N -> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ (linear M N f /\ forall x :e R :^: idx M, vector_norm N (f x) = vector_norm M x).
Admitted.

// HOL Light: Multivariate/vectors.ml:8003 / SUBSPACE_ISOMORPHISM   (hash md5:2102f89bdbb1e89a870b70c537c8dcd4)
// not bridged: 
Theorem SUBSPACE_ISOMORPHISM : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace M s /\ (subspace N t /\ dim M s = dim N t) -> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ (linear M N f /\ ({f x | x :e s} = t /\ forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8013 / ISOMORPHISMS_UNIV_UNIV   (hash md5:bb7f429c524f3d18461a44213f3e425d)
// not bridged: 
Theorem ISOMORPHISMS_UNIV_UNIV : forall M N:set, M <> Empty -> N <> Empty -> dimindex M = dimindex N -> exists f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) /\ exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear M N f /\ (linear N M g /\ ((forall x :e R :^: idx M, vector_norm N (f x) = vector_norm M x) /\ ((forall y :e R :^: idx N, vector_norm M (g y) = vector_norm N y) /\ ((forall x :e R :^: idx M, g (f x) = x) /\ forall y :e R :^: idx N, f (g y) = y))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:8032 / SUBSPACE_HYPERPLANE   (hash md5:23ec7ad3ac5d66e4ef1504078ed47f5b)
// not bridged: 
Theorem SUBSPACE_HYPERPLANE : forall N:set, N <> Empty -> forall a :e R :^: idx N, subspace N {x :e R :^: idx N | dot N a x = 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8037 / SUBSPACE_SPECIAL_HYPERPLANE   (hash md5:39460bb983f2eb1836b8395910e64bd3)
// not bridged: 
Theorem SUBSPACE_SPECIAL_HYPERPLANE : forall N:set, N <> Empty -> forall k :e omega, subspace N {x :e R :^: idx N | x k = 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8042 / SPECIAL_HYPERPLANE_SPAN   (hash md5:d67d7d39adaa3495d184fe3fcda09bc4)
// not bridged: 
Theorem SPECIAL_HYPERPLANE_SPAN : forall N:set, N <> Empty -> forall k :e omega, 1 <= k /\ k <= dimindex N -> {x :e R :^: idx N | x k = 0} = span N {basis N x | x :e idx N :\: {k}}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8064 / DIM_SPECIAL_HYPERPLANE   (hash md5:6514bf333abd74bfe88a93ba519e7012)
// not bridged: 
Theorem DIM_SPECIAL_HYPERPLANE : forall N:set, N <> Empty -> forall k :e omega, 1 <= k /\ k <= dimindex N -> dim N {x :e R :^: idx N | x k = 0} = minus_nat (dimindex N) 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:8081 / LOWDIM_EQ_INTER_HYPERPLANE   (hash md5:0514913f0aa7e6c17019deb51906d0e0)
// not bridged: 
Theorem LOWDIM_EQ_INTER_HYPERPLANE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ (subspace N t /\ (t c= s /\ dim N t + 1 = dim N s)) -> exists a :e R :^: idx N, ~ a = vec N 0 /\ {x :e R :^: idx N | dot N a x = 0} :/\: s = t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8136 / LOWDIM_EQ_HYPERPLANE   (hash md5:0868e79a39b47f8fdc337ec9e7180ca6)
// not bridged: 
Theorem LOWDIM_EQ_HYPERPLANE : forall N:set, N <> Empty -> forall s c= R :^: idx N, dim N s = minus_nat (dimindex N) 1 -> exists a :e R :^: idx N, ~ a = vec N 0 /\ span N s = {x :e R :^: idx N | dot N a x = 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8149 / DIM_IMAGE_KERNEL_GEN   (hash md5:939ae8c786b7daa90c702ef9e0517ca2)
// not bridged: 
Theorem DIM_IMAGE_KERNEL_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ subspace M s -> dim N {f x | x :e s} + dim M {x :e R :^: idx M | x :e s /\ f x = vec N 0} = dim M s.
Admitted.

// HOL Light: Multivariate/vectors.ml:8253 / DIM_IMAGE_KERNEL   (hash md5:a005bc09a011236f299b58d6bae1536c)
// not bridged: 
Theorem DIM_IMAGE_KERNEL : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> dim N {f x | x :e R :^: idx M} + dim M {x :e R :^: idx M | f x = vec N 0} = dimindex M.
Admitted.

// HOL Light: Multivariate/vectors.ml:8261 / DIM_SUMS_INTER   (hash md5:d1537668d33882d64f49de01dd608c2a)
// not bridged: 
Theorem DIM_SUMS_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ subspace N t -> dim N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) + dim N (s :/\: t) = dim N s + dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8371 / DIM_UNION_INTER   (hash md5:794af6663fec8cabcdff38def6025866)
// not bridged: 
Theorem DIM_UNION_INTER : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ subspace N t -> dim N (s :\/: t) + dim N (s :/\: t) = dim N s + dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8381 / DIM_KERNEL_COMPOSE   (hash md5:cb92b17604441701d8d532f20d23b5e6)
// not bridged: 
Theorem DIM_KERNEL_COMPOSE : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx P) -> linear M N f /\ linear N P g -> dim M {x :e R :^: idx M | g (f x) = vec P 0} <= dim M {x :e R :^: idx M | f x = vec N 0} + dim N {y :e R :^: idx N | g y = vec P 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8439 / DIM_ORTHOGONAL_SUM   (hash md5:cb9f54cd5a998b6125a53c5301d4f006)
// not bridged: 
Theorem DIM_ORTHOGONAL_SUM : forall N:set, N <> Empty -> forall s t c= R :^: idx N, (forall x y :e R :^: idx N, x :e s /\ y :e t -> dot N x y = 0) -> dim N (s :\/: t) = dim N s + dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8460 / DIM_SUBSPACE_ORTHOGONAL_TO_VECTORS   (hash md5:81f4d1f00e179ccb022d91bcfaa5b9f5)
// not bridged: 
Theorem DIM_SUBSPACE_ORTHOGONAL_TO_VECTORS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ (subspace N t /\ s c= t) -> dim N {y :e R :^: idx N | y :e t /\ forall x :e R :^: idx N, x :e s -> orthogonal N x y} + dim N s = dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8488 / DIM_SPECIAL_SUBSPACE   (hash md5:6b46ee766a384d376c683b773740833c)
// not bridged: 
Theorem DIM_SPECIAL_SUBSPACE : forall N:set, N <> Empty -> forall k c= omega, dim N {x :e R :^: idx N | forall i :e omega, 1 <= i /\ (i <= dimindex N /\ i :e k) -> x i = 0} = finite_cardinality (idx N :\: k).
Admitted.

// HOL Light: Multivariate/vectors.ml:8518 / INDEPENDENT_UNION   (hash md5:0f7d379738b2ffd7efb3ada989b1555e)
// not bridged: 
Theorem INDEPENDENT_UNION : forall N:set, N <> Empty -> forall s t c= R :^: idx N, independent N s /\ (independent N t /\ span N s :/\: span N t c= {vec N 0}) -> independent N (s :\/: t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8546 / LINEAR_INJECTIVE_ON_IFF_DIM   (hash md5:7d8428af5c0f6ffd445d47d11ac87d39)
// not bridged: 
Theorem LINEAR_INJECTIVE_ON_IFF_DIM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ subspace M s -> ((forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y) <-> dim N {f x | x :e s} = dim M s).
Admitted.

// HOL Light: Multivariate/vectors.ml:8558 / DIM_INJECTIVE_ON_LINEAR_IMAGE   (hash md5:a2d42aa65675298a56130a87ba32631e)
// not bridged: 
Theorem DIM_INJECTIVE_ON_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, linear M N f /\ (subspace M s /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y)) -> dim N {f x | x :e s} = dim M s.
Admitted.

// HOL Light: Multivariate/vectors.ml:8565 / DIM_EQ_SUBSPACES   (hash md5:08acc4e6239b1f07785ef589ba1795df)
// not bridged: 
Theorem DIM_EQ_SUBSPACES : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ (subspace N t /\ (s c= t /\ dim N t <= dim N s)) -> s = t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8571 / DIM_EQ_SUBSPACE   (hash md5:7f53647a929c3a99ddf836dc8eaf5b5e)
// not bridged: 
Theorem DIM_EQ_SUBSPACE : forall N:set, N <> Empty -> forall s t c= R :^: idx N, subspace N s /\ (subspace N t /\ s c= t) -> (dim N s = dim N t <-> s = t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8579 / LINEAR_SURJECTIVE_ON_IFF_DIM   (hash md5:f6caa50b0ed7944fbdba425678a99280)
// not bridged: 
Theorem LINEAR_SURJECTIVE_ON_IFF_DIM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, linear M N f /\ (subspace M s /\ (subspace N t /\ {f x | x :e s} c= t)) -> ({f x | x :e s} = t <-> dim N {f x | x :e s} = dim N t).
Admitted.

// HOL Light: Multivariate/vectors.ml:8586 / LINEAR_INJECTIVE_IMP_SURJECTIVE_ON   (hash md5:59ccac7fe7b7a4b0dbdecef124b65954)
// not bridged: 
Theorem LINEAR_INJECTIVE_IMP_SURJECTIVE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, linear M N f /\ (subspace M s /\ (subspace N t /\ ({f x | x :e s} c= t /\ (dim N t <= dim M s /\ (forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y))))) -> {f x | x :e s} = t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8598 / LINEAR_SURJECTIVE_IFF_INJECTIVE_ON   (hash md5:0128b059af168c273c262a175dd7c45e)
// not bridged: 
Theorem LINEAR_SURJECTIVE_IFF_INJECTIVE_ON : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, forall t c= R :^: idx N, linear M N f /\ (subspace M s /\ (subspace N t /\ ({f x | x :e s} c= t /\ dim M s = dim N t))) -> ({f x | x :e s} = t <-> forall x y :e R :^: idx M, x :e s /\ (y :e s /\ f x = f y) -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:8606 / LINEAR_INJECTIVE_IFF_DIM   (hash md5:1e6080ceb521bead22584132ad0a732c)
// not bridged: 
Theorem LINEAR_INJECTIVE_IFF_DIM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((forall x y :e R :^: idx M, f x = f y -> x = y) <-> dim N {f x | x :e R :^: idx M} = dimindex M).
Admitted.

// HOL Light: Multivariate/vectors.ml:8614 / LINEAR_SURJECTIVE_IFF_DIM   (hash md5:9c45986fbfae854c851f2351719bfe05)
// not bridged: 
Theorem LINEAR_SURJECTIVE_IFF_DIM : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f -> ((forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y) <-> dim N {f x | x :e R :^: idx M} = dimindex N).
Admitted.

// HOL Light: Multivariate/vectors.ml:8621 / LINEAR_SURJECTIVE_IFF_INJECTIVE_GEN   (hash md5:6c7fb335859a2c8185fe5f305fbed2a4)
// not bridged: 
Theorem LINEAR_SURJECTIVE_IFF_INJECTIVE_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> dimindex M = dimindex N /\ linear M N f -> ((forall y :e R :^: idx N, exists x :e R :^: idx M, f x = y) <-> forall x y :e R :^: idx M, f x = f y -> x = y).
Admitted.

// HOL Light: Multivariate/vectors.ml:8628 / MATRIX_INVERTIBLE_LEFT_GEN   (hash md5:616d8f4906ee61fefd355dfbbd5669e4)
// not bridged: 
Theorem MATRIX_INVERTIBLE_LEFT_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ dimindex N <= dimindex M -> (invertible N M (matrix M N f) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ forall x :e R :^: idx M, g (f x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8642 / MATRIX_INVERTIBLE_LEFT   (hash md5:0e7250bc9fe41ec6f41885906b6d42c5)
// not bridged: 
Theorem MATRIX_INVERTIBLE_LEFT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> (invertible N N (matrix N N f) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (linear N N g /\ forall x :e R :^: idx N, g (f x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8648 / MATRIX_INVERTIBLE_RIGHT_GEN   (hash md5:8b6cf1561b43353904d7e9841d5c5d22)
// not bridged: 
Theorem MATRIX_INVERTIBLE_RIGHT_GEN : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ dimindex M <= dimindex N -> (invertible N M (matrix M N f) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) /\ (linear N M g /\ forall x :e R :^: idx N, f (g x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8662 / MATRIX_INVERTIBLE_RIGHT   (hash md5:c8c8b3e44a80d774dca610f5dc50b1dd)
// not bridged: 
Theorem MATRIX_INVERTIBLE_RIGHT : forall N:set, N <> Empty -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f -> (invertible N N (matrix N N f) <-> exists g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx N) /\ (linear N N g /\ forall x :e R :^: idx N, f (g x) = x)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8672 / PASTECART_AS_ORTHOGONAL_SUM   (hash md5:b7b7b22184b50be274217c4e6dd57ebb)
// not bridged: 
Theorem PASTECART_AS_ORTHOGONAL_SUM : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx M, forall y :e R :^: idx N, pastecart M N x y = vector_add (idx_n (dimindex M + dimindex N)) (pastecart M N x (vec N 0)) (pastecart M N (vec M 0) y).
Admitted.

// HOL Light: Multivariate/vectors.ml:8677 / PCROSS_AS_ORTHOGONAL_SUM   (hash md5:50b9e44c8a02308e915d93ed60cfeb9d)
// not bridged: 
Theorem PCROSS_AS_ORTHOGONAL_SUM : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, (\/_ x :e s, {pastecart M N x y | y :e t}) = \/_ u :e R :^: idx_n (dimindex M + dimindex N), {vector_add (idx_n (dimindex M + dimindex N)) u v | v :e R :^: idx_n (dimindex M + dimindex N), u :e {pastecart M N x (vec N 0) | x :e s} /\ v :e {pastecart M N (vec M 0) y | y :e t}}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8687 / DIM_PCROSS   (hash md5:9abc1b2790e2a62215c219864853b4ac)
// not bridged: 
Theorem DIM_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, subspace M s /\ subspace N t -> dim (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) = dim M s + dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8706 / SPAN_PCROSS_SUBSET   (hash md5:65b52cbbee1d485e5c6609bdd37d4f58)
// not bridged: 
Theorem SPAN_PCROSS_SUBSET : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, span (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) c= \/_ x :e span M s, {pastecart M N x y | y :e span N t}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8712 / SPAN_PCROSS   (hash md5:ffaf830d3c837b295d7492b4505272b8)
// not bridged: 
Theorem SPAN_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, ~ s = Empty /\ (~ t = Empty /\ (vec M 0 :e s \/ vec N 0 :e t)) -> span (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) = \/_ x :e span M s, {pastecart M N x y | y :e span N t}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8758 / DIM_PCROSS_STRONG   (hash md5:bf1fdd567317402a4ce5051c0f0b90df)
// not bridged: 
Theorem DIM_PCROSS_STRONG : forall M N:set, M <> Empty -> N <> Empty -> forall s c= R :^: idx M, forall t c= R :^: idx N, ~ s = Empty /\ (~ t = Empty /\ (vec M 0 :e s \/ vec N 0 :e t)) -> dim (idx_n (dimindex M + dimindex N)) (\/_ x :e s, {pastecart M N x y | y :e t}) = dim M s + dim N t.
Admitted.

// HOL Light: Multivariate/vectors.ml:8765 / SPAN_SUMS   (hash md5:fcac9d98d7307a9b1c5c6e2b660eec3c)
// not bridged: 
Theorem SPAN_SUMS : forall N:set, N <> Empty -> forall s t c= R :^: idx N, ~ s = Empty /\ (~ t = Empty /\ vec N 0 :e s :\/: t) -> span N (\/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e s /\ y :e t}) = \/_ x :e R :^: idx N, {vector_add N x y | y :e R :^: idx N, x :e span N s /\ y :e span N t}.
Admitted.

// HOL Light: Multivariate/vectors.ml:8798 / RANK_NULLSPACE   (hash md5:235b849904777a671d5813a985fb2529)
// not bridged: 
Theorem RANK_NULLSPACE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M N A + dim M {x :e R :^: idx M | matrix_vector_mul N M A x = vec N 0} = dimindex M.
Admitted.

// HOL Light: Multivariate/vectors.ml:8804 / RANK_SYLVESTER   (hash md5:5f173b6d6cb7ceae147e47f3e4892599)
// not bridged: 
Theorem RANK_SYLVESTER : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx P :^: idx N, rank N M A + rank P N B <= rank P M (matrix_mul M N P A B) + dimindex N.
Admitted.

// HOL Light: Multivariate/vectors.ml:8826 / RANK_GRAM   (hash md5:a40e299abd2d2ee8469ffd44ee761ab5)
// not bridged: 
Theorem RANK_GRAM : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M M (matrix_mul M N M (transp N M A) A) = rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:8844 / RANK_TRIANGLE   (hash md5:296f45a04dd4e101c610cb7a16911eb5)
// not bridged: 
Theorem RANK_TRIANGLE : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx M :^: idx N, rank M N (matrix_add N M A B) <= rank M N A + rank M N B.
Admitted.

// HOL Light: Multivariate/vectors.ml:8859 / COVARIANCE_MATRIX_EQ_0   (hash md5:d8141a65e11bb48961392447778c655f)
// not bridged: 
Theorem COVARIANCE_MATRIX_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_mul N M N (transp M N A) A = mat N N 0 <-> A = mat M N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:8863 / MATRIX_MUL_COVARIANCE_LCANCEL   (hash md5:4634edbe77b98bc4eca086bd20f0901f)
// not bridged: 
Theorem MATRIX_MUL_COVARIANCE_LCANCEL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx N :^: idx P, forall B C :e R :^: idx M :^: idx N, matrix_mul N N M (matrix_mul N P N (transp P N A) A) B = matrix_mul N N M (matrix_mul N P N (transp P N A) A) C <-> matrix_mul P N M A B = matrix_mul P N M A C.
Admitted.

// HOL Light: Multivariate/vectors.ml:8876 / MATRIX_MUL_COVARIANCE_RCANCEL   (hash md5:2397b1f924d1786ec62608298ef3ab24)
// not bridged: 
Theorem MATRIX_MUL_COVARIANCE_RCANCEL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx P :^: idx N, forall B C :e R :^: idx N :^: idx M, matrix_mul M N N B (matrix_mul N P N A (transp N P A)) = matrix_mul M N N C (matrix_mul N P N A (transp N P A)) <-> matrix_mul M N P B A = matrix_mul M N P C A.
Admitted.

// HOL Light: Multivariate/vectors.ml:8883 / MATRIX_VECTOR_MUL_COVARIANCE_EQ_0   (hash md5:d9b47710b6ac75ea4a4b482cbd942c39)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_COVARIANCE_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, matrix_vector_mul M M (matrix_mul M N M (transp N M A) A) x = vec M 0 <-> matrix_vector_mul N M A x = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:8898 / matrix_inv   (hash md5:6e1824e5e30c2052320fe5001de08c25)
// not bridged: 
Theorem matrix_inv_thm : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_inv M N A = matrix N M (fun y:set => choose_in (R :^: idx M) (fun x:set => (forall w :e R :^: idx M, matrix_vector_mul N M A w = vec N 0 -> orthogonal M x w) /\ forall z :e R :^: idx M, orthogonal N (vector_sub N y (matrix_vector_mul N M A x)) (matrix_vector_mul N M A z))).
Admitted.

// HOL Light: Multivariate/vectors.ml:8903 / MOORE_PENROSE_PSEUDOINVERSE   (hash md5:5c92f49ec8184e58b7955d040a1b9d55)
// not bridged: 
Theorem MOORE_PENROSE_PSEUDOINVERSE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall y :e R :^: idx N, (forall w :e R :^: idx M, matrix_vector_mul N M A w = vec N 0 -> orthogonal M (matrix_vector_mul M N (matrix_inv M N A) y) w) /\ forall z :e R :^: idx M, orthogonal N (vector_sub N y (matrix_vector_mul N M A (matrix_vector_mul M N (matrix_inv M N A) y))) (matrix_vector_mul N M A z).
Admitted.

// HOL Light: Multivariate/vectors.ml:8903 / MOORE_PENROSE_PSEUDOINVERSE_UNIQUE   (hash md5:6e206ac582246f8006007b5c403c46f0)
// not bridged: 
Theorem MOORE_PENROSE_PSEUDOINVERSE_UNIQUE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall x :e R :^: idx M, forall y :e R :^: idx N, (forall w :e R :^: idx M, matrix_vector_mul N M A w = vec N 0 -> orthogonal M x w) /\ (forall z :e R :^: idx M, orthogonal N (vector_sub N y (matrix_vector_mul N M A x)) (matrix_vector_mul N M A z)) -> matrix_vector_mul M N (matrix_inv M N A) y = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:8976 / MATRIX_INV_MUL_INNER   (hash md5:4abb59a3a109f01803f62e7e56c489f0)
// not bridged: 
Theorem MATRIX_INV_MUL_INNER : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_mul N M M A (matrix_mul M N M (matrix_inv M N A) A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:8985 / SYMMETRIC_MATRIX_INV_RMUL   (hash md5:9eb447711649be3c8144b042677c7a51)
// not bridged: 
Theorem SYMMETRIC_MATRIX_INV_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, symmetric_matrix_hl N (matrix_mul N M N A (matrix_inv M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:8997 / MATRIX_INV_INV   (hash md5:0019fadae0e9a2ee5544abd3231da574)
// not bridged: 
Theorem MATRIX_INV_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_inv N M (matrix_inv M N A) = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9011 / MATRIX_INV_EQ   (hash md5:884f3aaefd74b410c8ae0d99b4db2ba7)
// not bridged: 
Theorem MATRIX_INV_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall A B :e R :^: idx M :^: idx N, matrix_inv M N A = matrix_inv M N B <-> A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:9015 / MATRIX_INV_MUL_OUTER   (hash md5:56284ff512cccebec1ffd4db029eafb9)
// not bridged: 
Theorem MATRIX_INV_MUL_OUTER : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_mul M N N (matrix_inv M N A) (matrix_mul N M N A (matrix_inv M N A)) = matrix_inv M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9021 / SYMMETRIC_MATRIX_INV_LMUL   (hash md5:f0818f33875019490dec7150d72cc85e)
// not bridged: 
Theorem SYMMETRIC_MATRIX_INV_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, symmetric_matrix_hl M (matrix_mul M N M (matrix_inv M N A) A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9027 / MATRIX_INV_UNIQUE_STRONG   (hash md5:dc3d8178ac6c9adac8a30b73e580d54e)
// not bridged: 
Theorem MATRIX_INV_UNIQUE_STRONG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, forall X :e R :^: idx N :^: idx M, matrix_mul N M M A (matrix_mul M N M X A) = A /\ (matrix_mul M N N X (matrix_mul N M N A X) = X /\ (symmetric_matrix_hl N (matrix_mul N M N A X) /\ symmetric_matrix_hl M (matrix_mul M N M X A))) -> matrix_inv M N A = X.
Admitted.

// HOL Light: Multivariate/vectors.ml:9058 / MATRIX_INV_TRANSP   (hash md5:d14c7cfff27f98850cc6339c559c8e45)
// not bridged: 
Theorem MATRIX_INV_TRANSP : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_inv N M (transp N M A) = transp M N (matrix_inv M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9067 / TRANSP_MATRIX_INV   (hash md5:09f50347971ce06d26a84d2915ba916c)
// not bridged: 
Theorem TRANSP_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, transp M N (matrix_inv M N A) = matrix_inv N M (transp N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9071 / SYMMETRIC_MATRIX_INV   (hash md5:4c3d14abc1cc7b38c6eeaaf54dd87c62)
// not bridged: 
Theorem SYMMETRIC_MATRIX_INV : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, symmetric_matrix_hl N (matrix_inv N N A) <-> symmetric_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9075 / MATRIX_INV_0   (hash md5:0bf5621375298b285865c16671168e0c)
// not bridged: 
Theorem MATRIX_INV_0 : forall M N:set, M <> Empty -> N <> Empty -> matrix_inv M N (mat N M 0) = mat M N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:9080 / MATRIX_INV_EQ_0   (hash md5:3abe5379193a4c6bf17247943cd168c1)
// not bridged: 
Theorem MATRIX_INV_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_inv M N A = mat M N 0 <-> A = mat N M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:9084 / MATRIX_INV_CMUL   (hash md5:b81ce85e17ff1dfbac589ae0e37ed720)
// not bridged: 
Theorem MATRIX_INV_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall c :e R, forall A :e R :^: idx M :^: idx N, matrix_inv M N (matrix_cmul N M c A) = matrix_cmul M N (recip_SNo c) (matrix_inv M N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9096 / MATRIX_INV   (hash md5:ef35d7ac6778dab158a861ecb7dff487)
// not bridged: 
Theorem MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, invertible M N A -> matrix_mul M N M A (matrix_inv N M A) = mat M M 1 /\ matrix_mul N M N (matrix_inv N M A) A = mat N N 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9109 / MATRIX_INV_LEFT   (hash md5:dce2c6922577ecf7ff274d911ce4e68b)
// not bridged: 
Theorem MATRIX_INV_LEFT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, matrix_mul N N N (matrix_inv N N A) A = mat N N 1 <-> invertible N N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9113 / MATRIX_INV_RIGHT   (hash md5:ce95f037c9fca1c32acf2ae3eda9b0e8)
// not bridged: 
Theorem MATRIX_INV_RIGHT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, matrix_mul N N N A (matrix_inv N N A) = mat N N 1 <-> invertible N N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9117 / MATRIX_MUL_LCANCEL   (hash md5:ff7aef7fffafad304dd56f440ab8a635)
// not bridged: 
Theorem MATRIX_MUL_LCANCEL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx M :^: idx N, forall B C :e R :^: idx P :^: idx M, invertible N M A -> (matrix_mul N M P A B = matrix_mul N M P A C <-> B = C).
Admitted.

// HOL Light: Multivariate/vectors.ml:9127 / MATRIX_MUL_RCANCEL   (hash md5:13701ab55fb4b97aa32354b2cf3e4f57)
// not bridged: 
Theorem MATRIX_MUL_RCANCEL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A B :e R :^: idx M :^: idx N, forall C :e R :^: idx P :^: idx M, invertible M P C -> (matrix_mul N M P A C = matrix_mul N M P B C <-> A = B).
Admitted.

// HOL Light: Multivariate/vectors.ml:9136 / RANK_INVERTIBLE_RMUL   (hash md5:dc9604352965038d31923b85f58e473c)
// not bridged: 
Theorem RANK_INVERTIBLE_RMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx M :^: idx N, forall B :e R :^: idx P :^: idx M, invertible M P B -> rank P N (matrix_mul N M P A B) = rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9145 / RANK_INVERTIBLE_LMUL   (hash md5:f0ca432bfea9b6d3dc23b4dfb0f514d1)
// not bridged: 
Theorem RANK_INVERTIBLE_LMUL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx M :^: idx N, forall B :e R :^: idx P :^: idx M, invertible N M A -> rank P N (matrix_mul N M P A B) = rank P M B.
Admitted.

// HOL Light: Multivariate/vectors.ml:9150 / RANK_CMUL   (hash md5:a39c8cc95fc9c773496a6adfb7f7b27b)
// not bridged: 
Theorem RANK_CMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall c :e R, rank N M (matrix_cmul M N c A) = if c = 0 then 0 else rank N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9160 / RANK_NEG   (hash md5:8fe3e013419ed6a7aca4df092d909a78)
// not bridged: 
Theorem RANK_NEG : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, rank N M (matrix_neg M N A) = rank N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9165 / MATRIX_INV_UNIQUE   (hash md5:561127574ed554dab5e65b5edf19d275)
// not bridged: 
Theorem MATRIX_INV_UNIQUE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, forall B :e R :^: idx M :^: idx N, matrix_mul M N M A B = mat M M 1 /\ matrix_mul N M N B A = mat N N 1 -> matrix_inv N M A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:9171 / MATRIX_INV_I   (hash md5:15eabb4e3d7eeea481cb6d8007b1af60)
// not bridged: 
Theorem MATRIX_INV_I : forall N:set, N <> Empty -> matrix_inv N N (mat N N 1) = mat N N 1.
Admitted.

// HOL Light: Multivariate/vectors.ml:9176 / INVERTIBLE_MATRIX_INV   (hash md5:1d013e65147a9320b5bc56dd90d91334)
// not bridged: 
Theorem INVERTIBLE_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, invertible M N (matrix_inv M N A) <-> invertible N M A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9180 / MATRIX_INV_UNIQUE_LEFT   (hash md5:46d2bb5c7e428ccd5bb4cc7ff3c3c52f)
// not bridged: 
Theorem MATRIX_INV_UNIQUE_LEFT : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, matrix_mul N N N A B = mat N N 1 -> matrix_inv N N B = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9185 / MATRIX_INV_UNIQUE_RIGHT   (hash md5:2d8cc20170dfef0be0fe345f4b3efc39)
// not bridged: 
Theorem MATRIX_INV_UNIQUE_RIGHT : forall N:set, N <> Empty -> forall A B :e R :^: idx N :^: idx N, matrix_mul N N N A B = mat N N 1 -> matrix_inv N N A = B.
Admitted.

// HOL Light: Multivariate/vectors.ml:9190 / MATRIX_INV_COVARIANCE   (hash md5:eb14f154d7fe1e3467bdf94cf595dac5)
// not bridged: 
Theorem MATRIX_INV_COVARIANCE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_inv M M (matrix_mul M N M (transp N M A) A) = matrix_mul M N M (matrix_inv M N A) (transp M N (matrix_inv M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9211 / COVARIANCE_MATRIX_INV   (hash md5:06e680dc815d457c40cba5ca669a25f7)
// not bridged: 
Theorem COVARIANCE_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_mul N M N (transp M N (matrix_inv M N A)) (matrix_inv M N A) = matrix_inv N N (matrix_mul N M N A (transp N M A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9217 / NORMAL_MATRIX_INV   (hash md5:ba73bb91d05f59abb6085dfb5cad02a3)
// not bridged: 
Theorem NORMAL_MATRIX_INV : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, normal_matrix_hl N (matrix_inv N N A) <-> normal_matrix_hl N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9223 / MATRIX_INV_COVARIANCE_RMUL   (hash md5:de460b3480dc0e41900d12324b3628fb)
// not bridged: 
Theorem MATRIX_INV_COVARIANCE_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_mul M M N (matrix_inv M M (matrix_mul M N M (transp N M A) A)) (transp N M A) = matrix_inv M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9230 / MATRIX_INV_COVARIANCE_LMUL   (hash md5:24e52ffa8f316894f65a8be26f36d9d5)
// not bridged: 
Theorem MATRIX_INV_COVARIANCE_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_mul M N N (transp N M A) (matrix_inv N N (matrix_mul N M N A (transp N M A))) = matrix_inv M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9238 / RANK_SIMILAR   (hash md5:fc8f418a89e103e922e878d8a0c56225)
// not bridged: 
Theorem RANK_SIMILAR : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx N, forall U :e R :^: idx M :^: idx N, invertible N M U -> rank M M (matrix_mul M N M (matrix_inv M N U) (matrix_mul N N M A U)) = rank N N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9244 / RANK_MATRIX_INV   (hash md5:c9b7af89b0e0b547dc7df36e78724eec)
// not bridged: 
Theorem RANK_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank N M (matrix_inv M N A) = rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9253 / RANK_MATRIX_INV_RMUL   (hash md5:347d838a77f11f90aa61f869d59a87ed)
// not bridged: 
Theorem RANK_MATRIX_INV_RMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank N N (matrix_mul N M N A (matrix_inv M N A)) = rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9261 / RANK_MATRIX_INV_LMUL   (hash md5:b372f247d3b6fefb111ec0b02876a7a5)
// not bridged: 
Theorem RANK_MATRIX_INV_LMUL : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, rank M M (matrix_mul M N M (matrix_inv M N A) A) = rank M N A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9266 / MATRIX_INV_MULTIPLE_TRANP_RIGHT   (hash md5:e45257de21bf9d0c490e194523924440)
// not bridged: 
Theorem MATRIX_INV_MULTIPLE_TRANP_RIGHT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_inv M N A = matrix_mul M N N (matrix_inv M N A) (matrix_mul N M N (transp M N (matrix_inv M N A)) (transp N M A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9273 / MATRIX_TRANSP_MULTIPLE_INV_RIGHT   (hash md5:fe64f89d38146dfde38384a7246090ea)
// not bridged: 
Theorem MATRIX_TRANSP_MULTIPLE_INV_RIGHT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, transp N M A = matrix_mul M N N (transp N M A) (matrix_mul N M N A (matrix_inv M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9282 / MATRIX_INV_MULTIPLE_TRANP_LEFT   (hash md5:4a2c7bb56e1a09fef55697934b6d6f57)
// not bridged: 
Theorem MATRIX_INV_MULTIPLE_TRANP_LEFT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_inv M N A = matrix_mul M N N (transp N M A) (matrix_mul N M N (transp M N (matrix_inv M N A)) (matrix_inv M N A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9290 / MATRIX_TRANSP_MULTIPLE_INV_LEFT   (hash md5:e725645d7f416339e898a682dd05e7fa)
// not bridged: 
Theorem MATRIX_TRANSP_MULTIPLE_INV_LEFT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, transp N M A = matrix_mul M N N (matrix_inv M N A) (matrix_mul N M N A (transp N M A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9298 / MATRIX_VECTOR_MUL_INV_EQ_0   (hash md5:a52a55a304648def04afd0f893bdb9a0)
// not bridged: 
Theorem MATRIX_VECTOR_MUL_INV_EQ_0 : forall M N:set, M <> Empty -> N <> Empty -> forall x :e R :^: idx N, forall A :e R :^: idx M :^: idx N, matrix_vector_mul M N (matrix_inv M N A) x = vec M 0 <-> matrix_vector_mul M N (transp N M A) x = vec M 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:9305 / KERNEL_MATRIX_INV   (hash md5:0697b1afaa5b3d8877358e047635d6f8)
// not bridged: 
Theorem KERNEL_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, {x :e R :^: idx N | matrix_vector_mul M N (matrix_inv M N A) x = vec M 0} = {x :e R :^: idx N | matrix_vector_mul M N (transp N M A) x = vec M 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9310 / IMAGE_MATRIX_INV   (hash md5:98fd291cb1d6210aaec300cdc8b84c29)
// not bridged: 
Theorem IMAGE_MATRIX_INV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, {matrix_vector_mul M N (matrix_inv M N A) x | x :e R :^: idx N} = {matrix_vector_mul M N (transp N M A) x | x :e R :^: idx N}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9321 / COMMUTING_MATRIX_INV_COVARIANCE   (hash md5:fef57dae0ffa95faa326599f53890932)
// not bridged: 
Theorem COMMUTING_MATRIX_INV_COVARIANCE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx M :^: idx N, matrix_mul M M M (matrix_inv M M (matrix_mul M N M (transp N M A) A)) (matrix_mul M N M (transp N M A) A) = matrix_mul M M M (matrix_mul M N M (transp N M A) A) (matrix_inv M M (matrix_mul M N M (transp N M A) A)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9329 / COMMUTING_MATRIX_INV_NORMAL   (hash md5:773c5438011512a6d14aa406d757fc20)
// not bridged: 
Theorem COMMUTING_MATRIX_INV_NORMAL : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, normal_matrix_hl N A -> matrix_mul N N N (matrix_inv N N A) A = matrix_mul N N N A (matrix_inv N N A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9341 / MATRIX_MUL_INV_EQ_0   (hash md5:c12630a99ce9f3ecd62429fb8491ca68)
// not bridged: 
Theorem MATRIX_MUL_INV_EQ_0 : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall A :e R :^: idx P :^: idx N, forall B :e R :^: idx N :^: idx M, matrix_mul P N M (matrix_inv P N A) (matrix_inv N M B) = mat P M 0 <-> matrix_mul M N P B A = mat M P 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:9361 / MATRIX_INV_IDEMPOTENT   (hash md5:72aa121691c8bc5b96ca566789bf6431)
// not bridged: 
Theorem MATRIX_INV_IDEMPOTENT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, symmetric_matrix_hl N A /\ matrix_mul N N N A A = A -> matrix_inv N N A = A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9366 / IDEMPOTENT_MATRIX_MUL_LINV   (hash md5:bbb59f07b4aeb7eb6d0fe5dc76df20f0)
// not bridged: 
Theorem IDEMPOTENT_MATRIX_MUL_LINV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_mul N N N (matrix_mul N M N (matrix_inv N M A) A) (matrix_mul N M N (matrix_inv N M A) A) = matrix_mul N M N (matrix_inv N M A) A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9373 / IDEMPOTENT_MATRIX_MUL_RINV   (hash md5:52d97cde504728e0bf5a410f9595eac8)
// not bridged: 
Theorem IDEMPOTENT_MATRIX_MUL_RINV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_mul M M M (matrix_mul M N M A (matrix_inv N M A)) (matrix_mul M N M A (matrix_inv N M A)) = matrix_mul M N M A (matrix_inv N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9380 / MATRIX_INV_MUL_LINV   (hash md5:7910ba03c315cb9ea238c8f58f1259f6)
// not bridged: 
Theorem MATRIX_INV_MUL_LINV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_inv N N (matrix_mul N M N (matrix_inv N M A) A) = matrix_mul N M N (matrix_inv N M A) A.
Admitted.

// HOL Light: Multivariate/vectors.ml:9389 / MATRIX_INV_MUL_RINV   (hash md5:42e92afd9d3187bc5ccdc4bae490c910)
// not bridged: 
Theorem MATRIX_INV_MUL_RINV : forall M N:set, M <> Empty -> N <> Empty -> forall A :e R :^: idx N :^: idx M, matrix_inv M M (matrix_mul M N M A (matrix_inv N M A)) = matrix_mul M N M A (matrix_inv N M A).
Admitted.

// HOL Light: Multivariate/vectors.ml:9402 / infnorm   (hash md5:c7e0996e4bf81c4ecbea0eefa7ddc299)
// not bridged: 
Theorem infnorm_thm : forall N:set, N <> Empty -> forall x :e R :^: idx N, infnorm N x = sup {abs_SNo (x i) | i :e omega, 1 <= i /\ i <= dimindex N}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9405 / NUMSEG_DIMINDEX_NONEMPTY   (hash md5:6590140562c6911c2b80ef8cabeb56b6)
Theorem hlt_NUMSEG_DIMINDEX_NONEMPTY : forall N:set, N <> Empty -> exists i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.
Theorem NUMSEG_DIMINDEX_NONEMPTY_bridge : (forall N:set, N <> Empty -> exists i :e omega, hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1) -> (forall N:set, N <> Empty -> exists i :e omega, i :e idx N).
exact (fun H__top N HNne => ((imp_exists_in (omega) (fun i => hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1) (fun i => i :e {i :e omega | 1 <= i /\ i <= dimindex N}) (fun i Hi => (iffEL (hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1) (i :e {i :e omega | 1 <= i /\ i <= dimindex N}) (((((hl_UNIV_compat) (N) HNne) (fun hl__u hl__v => hl_dimindex N (hl_UNIV N) = dimindex N) ((hl_dimindex_compat) (N) HNne (hl_UNIV N) ((hl_UNIV_in) (N) HNne))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = {i :e omega | 1 <= i /\ i <= hl__u}) ((eq_trans_i (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_BIT1 hl_zero) 1 (hl_NUMERAL_compat (hl_BIT1 hl_zero) ((eq_sym_i (hl_BIT1 hl_zero) 1 (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 1 (nat_ordsucc 0 (omega_nat_p 0 (nat_p_omega 0 nat_0)))))) (eq_trans_i (hl_BIT1 hl_zero) (ordsucc (hl_BIT0 (hl_zero))) 1 (hl_BIT1_S (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) (f_equal (fun x => ordsucc x) (hl_BIT0 (hl_zero)) 0 (eq_trans_i (hl_BIT0 (hl_zero)) (hl_BIT0 0) 0 (f_equal (fun x => hl_BIT0 x) (hl_zero) 0 hl_zero_compat) hl_BIT0_0)))) (fun hl__u hl__v => hl_rep omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = {i :e omega | hl__u <= i /\ i <= hl_dimindex N (hl_UNIV N)}) ((hl_numseg_compat) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in)))) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne))))) (fun hl__u hl__v => hl_IN omega i (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) = 1 <-> i :e hl__u) ((hl_IN_compat) (omega) omega_nonempty (i) Hi (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (setexp_ap (omega) (2 :^: omega) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero))) (setexp_ap (omega) (2 :^: omega :^: omega) (hl_numseg) ((hl_numseg_in)) (hl_NUMERAL (hl_BIT1 hl_zero)) (setexp_ap (omega) (omega) (hl_NUMERAL) ((hl_NUMERAL_in)) (hl_BIT1 hl_zero) (setexp_ap (omega) (omega) (hl_BIT1) ((hl_BIT1_in)) (hl_zero) ((hl_zero_in))))) (hl_dimindex N (hl_UNIV N)) (setexp_ap (2 :^: N) (omega) (hl_dimindex N) ((hl_dimindex_in) (N) HNne) (hl_UNIV N) ((hl_UNIV_in) (N) HNne)))))))) (H__top N HNne))).
Qed.
Theorem NUMSEG_DIMINDEX_NONEMPTY : forall N:set, N <> Empty -> exists i :e omega, i :e idx N.
exact (NUMSEG_DIMINDEX_NONEMPTY_bridge hlt_NUMSEG_DIMINDEX_NONEMPTY).
Admitted.

// HOL Light: Multivariate/vectors.ml:9409 / INFNORM_SET_IMAGE   (hash md5:0107b66a99e2bc3e201a5c3c5ae4dc84)
// not bridged: 
Theorem INFNORM_SET_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall x :e R :^: idx A, {abs_SNo (x i) | i :e omega, 1 <= i /\ i <= dimindex N} = {abs_SNo (x i) | i :e idx N}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9414 / INFNORM_SET_LEMMA   (hash md5:acdd523de6df4d735d048d65cd3d37d6)
// not bridged: 
Theorem INFNORM_SET_LEMMA : forall N:set, N <> Empty -> forall x :e R :^: idx N, finite {abs_SNo (x i) | i :e omega, 1 <= i /\ i <= dimindex N} /\ ~ {abs_SNo (x i) | i :e omega, 1 <= i /\ i <= dimindex N} = Empty.
Admitted.

// HOL Light: Multivariate/vectors.ml:9420 / INFNORM_POS_LE   (hash md5:8a7fb6c7fd7dfe7382d05db227fd328b)
// not bridged: 
Theorem INFNORM_POS_LE : forall A:set, A <> Empty -> forall x :e R :^: idx A, 0 <= infnorm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9427 / INFNORM_TRIANGLE   (hash md5:cf57ca1dfccdf2fc85bb35b3b794a83a)
// not bridged: 
Theorem INFNORM_TRIANGLE : forall A:set, A <> Empty -> forall x y :e R :^: idx A, infnorm A (vector_add A x y) <= infnorm A x + infnorm A y.
Admitted.

// HOL Light: Multivariate/vectors.ml:9440 / INFNORM_EQ_0   (hash md5:ebc7521a5cc833c2e7b0698321b022fd)
// not bridged: 
Theorem INFNORM_EQ_0 : forall A:set, A <> Empty -> forall x :e R :^: idx A, infnorm A x = 0 <-> x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:9447 / INFNORM_0   (hash md5:4c482d4478d524729ae8cce4facfd822)
// not bridged: 
Theorem INFNORM_0 : forall A:set, A <> Empty -> infnorm A (vec A 0) = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:9451 / INFNORM_NEG   (hash md5:bfa1a6aedbe9f29f8181549ded941a8b)
// not bridged: 
Theorem INFNORM_NEG : forall A:set, A <> Empty -> forall x :e R :^: idx A, infnorm A (vector_neg A x) = infnorm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9457 / INFNORM_SUB   (hash md5:99a2c896c20f79b594ebb1e710e1e668)
// not bridged: 
Theorem INFNORM_SUB : forall A:set, A <> Empty -> forall x y :e R :^: idx A, infnorm A (vector_sub A x y) = infnorm A (vector_sub A y x).
Admitted.

// HOL Light: Multivariate/vectors.ml:9461 / REAL_ABS_SUB_INFNORM   (hash md5:f4f7f41a25352ca1da8e01afc4469cc6)
// not bridged: 
Theorem REAL_ABS_SUB_INFNORM : forall A:set, A <> Empty -> forall x y :e R :^: idx A, abs_SNo (infnorm A x + - infnorm A y) <= infnorm A (vector_sub A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:9467 / REAL_ABS_INFNORM   (hash md5:b443e7b5c51ffe49ffdfcb5e9ae471f2)
// not bridged: 
Theorem REAL_ABS_INFNORM : forall A:set, A <> Empty -> forall x :e R :^: idx A, abs_SNo (infnorm A x) = infnorm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9471 / COMPONENT_LE_INFNORM   (hash md5:ecaa552d404821de6b7e7ce09c6de9c2)
// not bridged: 
Theorem COMPONENT_LE_INFNORM : forall N:set, N <> Empty -> forall x :e R :^: idx N, forall i :e omega, 1 <= i /\ i <= dimindex N -> abs_SNo (x i) <= infnorm N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9479 / INFNORM_MUL_LEMMA   (hash md5:4e0227abf64b0fc6b7a62f24eff57ee0)
// not bridged: 
Theorem INFNORM_MUL_LEMMA : forall A:set, A <> Empty -> forall a :e R, forall x :e R :^: idx A, infnorm A (vector_mul A a x) <= abs_SNo a * infnorm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9487 / INFNORM_MUL   (hash md5:07b44a57d2615d1721777e257cba3ead)
// not bridged: 
Theorem INFNORM_MUL : forall N:set, N <> Empty -> forall a :e R, forall x :e R :^: idx N, infnorm N (vector_mul N a x) = abs_SNo a * infnorm N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9501 / INFNORM_POS_LT   (hash md5:f59914be7888c35613312261cd95504d)
// not bridged: 
Theorem INFNORM_POS_LT : forall A:set, A <> Empty -> forall x :e R :^: idx A, 0 < infnorm A x <-> ~ x = vec A 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:9509 / INFNORM_LE_NORM   (hash md5:ddc4b7434caefb4d9f43918554529669)
// not bridged: 
Theorem INFNORM_LE_NORM : forall A:set, A <> Empty -> forall x :e R :^: idx A, infnorm A x <= vector_norm A x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9514 / NORM_LE_INFNORM   (hash md5:43d6c159e4c8ceebc5f677224d7bc299)
// not bridged: 
Theorem NORM_LE_INFNORM : forall N:set, N <> Empty -> forall x :e R :^: idx N, vector_norm N x <= (if 0 <= dimindex N then sqrt_SNo_nonneg (dimindex N) else - sqrt_SNo_nonneg (- dimindex N)) * infnorm N x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9533 / NORM_CAUCHY_SCHWARZ_EQ   (hash md5:3bff82863f16cc499950529dd66c5d7a)
// not bridged: 
Theorem NORM_CAUCHY_SCHWARZ_EQ : forall N:set, N <> Empty -> forall x y :e R :^: idx N, dot N x y = vector_norm N x * vector_norm N y <-> vector_mul N (vector_norm N x) y = vector_mul N (vector_norm N y) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9548 / NORM_CAUCHY_SCHWARZ_ABS_EQ   (hash md5:9c12e52436cb8ba82ae03dcecefa134f)
// not bridged: 
Theorem NORM_CAUCHY_SCHWARZ_ABS_EQ : forall N:set, N <> Empty -> forall x y :e R :^: idx N, abs_SNo (dot N x y) = vector_norm N x * vector_norm N y <-> vector_mul N (vector_norm N x) y = vector_mul N (vector_norm N y) x \/ vector_mul N (vector_norm N x) y = vector_mul N (- vector_norm N y) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9558 / NORM_TRIANGLE_EQ   (hash md5:fc1b528cc7ec27910de90e761cd9bf02)
// not bridged: 
Theorem NORM_TRIANGLE_EQ : forall N:set, N <> Empty -> forall x y :e R :^: idx N, vector_norm N (vector_add N x y) = vector_norm N x + vector_norm N y <-> vector_mul N (vector_norm N x) y = vector_mul N (vector_norm N y) x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9572 / DIST_TRIANGLE_EQ   (hash md5:5aa7c647d319aae78a0ce701aba82baf)
// not bridged: 
Theorem DIST_TRIANGLE_EQ : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, distance A (x,z) = distance A (x,y) + distance A (y,z) <-> vector_mul A (vector_norm A (vector_sub A x y)) (vector_sub A y z) = vector_mul A (vector_norm A (vector_sub A y z)) (vector_sub A x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:9577 / NORM_CROSS_MULTIPLY   (hash md5:763a3a700ad96bda6228905ff9fa6685)
// not bridged: 
Theorem NORM_CROSS_MULTIPLY : forall N:set, N <> Empty -> forall a b :e R, forall x y :e R :^: idx N, vector_mul N a x = vector_mul N b y /\ (0 < a /\ 0 < b) -> vector_mul N (vector_norm N y) x = vector_mul N (vector_norm N x) y.
Admitted.

// HOL Light: Multivariate/vectors.ml:9593 / collinear   (hash md5:3b68583dd98d2542712665ac41325217)
// not bridged: 
Theorem collinear_thm : forall A:set, A <> Empty -> forall s c= R :^: idx A, collinear A s <-> exists u :e R :^: idx A, forall x y :e R :^: idx A, x :e s /\ y :e s -> exists c :e R, vector_sub A x y = vector_mul A c u.
Admitted.

// HOL Light: Multivariate/vectors.ml:9596 / COLLINEAR_ALT2   (hash md5:52ff66c232cbcf0f7f48e382afd0392b)
// not bridged: 
Theorem COLLINEAR_ALT2 : forall N:set, N <> Empty -> forall s c= R :^: idx N, collinear N s <-> exists u v :e R :^: idx N, forall x :e R :^: idx N, x :e s -> exists c :e R, vector_sub N x u = vector_mul N c v.
Admitted.

// HOL Light: Multivariate/vectors.ml:9603 / COLLINEAR_ALT   (hash md5:e8689934988fd6ca4ef0596545b2b627)
// not bridged: 
Theorem COLLINEAR_ALT : forall N:set, N <> Empty -> forall s c= R :^: idx N, collinear N s <-> exists u v :e R :^: idx N, forall x :e R :^: idx N, x :e s -> exists c :e R, x = vector_add N u (vector_mul N c v).
Admitted.

// HOL Light: Multivariate/vectors.ml:9608 / COLLINEAR_SUBSET   (hash md5:69dbdebdb757f1f332206b142b6d6ff0)
// not bridged: 
Theorem COLLINEAR_SUBSET : forall A:set, A <> Empty -> forall s t c= R :^: idx A, collinear A t /\ s c= t -> collinear A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:9612 / COLLINEAR_EMPTY   (hash md5:6b124e2932d91d52e4566d74feaeb53c)
// not bridged: 
Theorem COLLINEAR_EMPTY : forall A:set, A <> Empty -> collinear A Empty.
Admitted.

// HOL Light: Multivariate/vectors.ml:9616 / COLLINEAR_SING   (hash md5:ec588a4a414f2a1c0191eadf71bd2822)
// not bridged: 
Theorem COLLINEAR_SING : forall A:set, A <> Empty -> forall x :e R :^: idx A, collinear A {x}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9621 / COLLINEAR_2   (hash md5:34894a2fabbc28961cda70f39f46918c)
// not bridged: 
Theorem COLLINEAR_2 : forall N:set, N <> Empty -> forall x y :e R :^: idx N, collinear N {x,y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9628 / COLLINEAR_SMALL   (hash md5:392ef41ca1a4df88876136601daa7c21)
// not bridged: 
Theorem COLLINEAR_SMALL : forall A:set, A <> Empty -> forall s c= R :^: idx A, finite s /\ finite_cardinality s <= 2 -> collinear A s.
Admitted.

// HOL Light: Multivariate/vectors.ml:9636 / COLLINEAR_3   (hash md5:f88deaa79753e6063382e55469b37872)
// not bridged: 
Theorem COLLINEAR_3 : forall A:set, A <> Empty -> forall x y z :e R :^: idx A, collinear A {x,y,z} <-> collinear A {vec A 0,vector_sub A x y,vector_sub A z y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9646 / COLLINEAR_LEMMA   (hash md5:7a6d7d4d09a0066533de5643b004c0a6)
// not bridged: 
Theorem COLLINEAR_LEMMA : forall N:set, N <> Empty -> forall x y :e R :^: idx N, collinear N {vec N 0,x,y} <-> x = vec N 0 \/ (y = vec N 0 \/ exists c :e R, y = vector_mul N c x).
Admitted.

// HOL Light: Multivariate/vectors.ml:9670 / COLLINEAR_LEMMA_ALT   (hash md5:e7b8ff4b1f6fd8d2069a098527d5c9b2)
// not bridged: 
Theorem COLLINEAR_LEMMA_ALT : forall A:set, A <> Empty -> forall x y :e R :^: idx A, collinear A {vec A 0,x,y} <-> x = vec A 0 \/ exists c :e R, y = vector_mul A c x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9674 / COLLINEAR_SPAN   (hash md5:df217bfbd198c0032bcd00432347a9a3)
// not bridged: 
Theorem COLLINEAR_SPAN : forall N:set, N <> Empty -> forall a b :e R :^: idx N, collinear N {vec N 0,a,b} <-> a = vec N 0 \/ b :e span N {a}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9678 / NORM_CAUCHY_SCHWARZ_EQUAL   (hash md5:6e69e4b769d6c269ce720565b3ebd4c2)
// not bridged: 
Theorem NORM_CAUCHY_SCHWARZ_EQUAL : forall N:set, N <> Empty -> forall x y :e R :^: idx N, abs_SNo (dot N x y) = vector_norm N x * vector_norm N y <-> collinear N {vec N 0,x,y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9701 / DOT_CAUCHY_SCHWARZ_EQUAL   (hash md5:95db53bdbc40225146a6abc9a290512e)
// not bridged: 
Theorem DOT_CAUCHY_SCHWARZ_EQUAL : forall N:set, N <> Empty -> forall x y :e R :^: idx N, dot N x y ^ 2 = dot N x x * dot N y y <-> collinear N {vec N 0,x,y}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9711 / COLLINEAR_3_EXPAND   (hash md5:ed29397c7bff7668b1527c845dde2537)
// not bridged: 
Theorem COLLINEAR_3_EXPAND : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, collinear N {a,b,c} <-> a = c \/ exists u :e R, b = vector_add N (vector_mul N u a) (vector_mul N (1 + - u) c).
Admitted.

// HOL Light: Multivariate/vectors.ml:9723 / COLLINEAR_TRIPLES   (hash md5:160100a53ba846cf03ee67aabd292867)
// not bridged: 
Theorem COLLINEAR_TRIPLES : forall N:set, N <> Empty -> forall s c= R :^: idx N, forall a b :e R :^: idx N, ~ a = b -> (collinear N (SetAdjoin (SetAdjoin s b) a) <-> forall x :e R :^: idx N, x :e s -> collinear N {a,b,x}).
Admitted.

// HOL Light: Multivariate/vectors.ml:9751 / COLLINEAR_4_3   (hash md5:7af08e18a93ede209ee5b0e7bf3eb081)
// not bridged: 
Theorem COLLINEAR_4_3 : forall N:set, N <> Empty -> forall a b c d :e R :^: idx N, ~ a = b -> (collinear N {a,b,c,d} <-> collinear N {a,b,c} /\ collinear N {a,b,d}).
Admitted.

// HOL Light: Multivariate/vectors.ml:9761 / COLLINEAR_3_TRANS   (hash md5:295d8df435174398b3fb260c198fcfd6)
// not bridged: 
Theorem COLLINEAR_3_TRANS : forall N:set, N <> Empty -> forall a b c d :e R :^: idx N, collinear N {a,b,c} /\ (collinear N {b,c,d} /\ ~ b = c) -> collinear N {a,b,d}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9769 / ORTHOGONAL_TO_ORTHOGONAL_2D   (hash md5:1958131b4c59f48317c7b332d5af6359)
// not bridged: 
Theorem ORTHOGONAL_TO_ORTHOGONAL_2D : forall x y z :e R :^: idx_n 2, ~ x = vec (idx_n 2) 0 /\ (orthogonal (idx_n 2) x y /\ orthogonal (idx_n 2) x z) -> collinear (idx_n 2) {vec (idx_n 2) 0,y,z}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9776 / COLLINEAR_3_2D   (hash md5:2f7231a682a6337bad6055f47be54849)
// not bridged: 
Theorem COLLINEAR_3_2D : forall x y z :e R :^: idx_n 2, collinear (idx_n 2) {x,y,z} <-> (z 1 + - x 1) * (y 2 + - x 2) = (y 1 + - x 1) * (z 2 + - x 2).
Admitted.

// HOL Light: Multivariate/vectors.ml:9783 / COLLINEAR_3_DOT_MULTIPLES   (hash md5:c8e595c5b6c450889b9b30c27b07e638)
// not bridged: 
Theorem COLLINEAR_3_DOT_MULTIPLES : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, collinear N {a,b,c} <-> vector_mul N (dot N (vector_sub N b a) (vector_sub N b a)) (vector_sub N c a) = vector_mul N (dot N (vector_sub N c a) (vector_sub N b a)) (vector_sub N b a).
Admitted.

// HOL Light: Multivariate/vectors.ml:9797 / ORTHOGONAL_AND_COLLINEAR   (hash md5:0d0a48e90a447b7c60208f187217feb1)
// not bridged: 
Theorem ORTHOGONAL_AND_COLLINEAR : forall N:set, N <> Empty -> forall x y :e R :^: idx N, orthogonal N x y /\ collinear N {vec N 0,x,y} <-> x = vec N 0 \/ y = vec N 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:9813 / between   (hash md5:34bfe0fbb627d9d16c6fdecd27f23f68)
// not bridged: 
Theorem between_thm : forall A:set, A <> Empty -> forall a x b :e R :^: idx A, between A x (a,b) <-> distance A (a,b) = distance A (a,x) + distance A (x,b).
Admitted.

// HOL Light: Multivariate/vectors.ml:9816 / BETWEEN_REFL   (hash md5:de5fc3219211dd2f60ec42f9243837f1)
// not bridged: 
Theorem BETWEEN_REFL : forall A:set, A <> Empty -> forall a b :e R :^: idx A, between A a (a,b) /\ (between A b (a,b) /\ between A a (a,a)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9820 / BETWEEN_REFL_EQ   (hash md5:9bf6364f61b098147565c44c765f1203)
// not bridged: 
Theorem BETWEEN_REFL_EQ : forall A:set, A <> Empty -> forall a x :e R :^: idx A, between A x (a,a) <-> x = a.
Admitted.

// HOL Light: Multivariate/vectors.ml:9824 / BETWEEN_SYM   (hash md5:589f182b45847f0acf0a2cd12b223ff8)
// not bridged: 
Theorem BETWEEN_SYM : forall A:set, A <> Empty -> forall a b x :e R :^: idx A, between A x (a,b) <-> between A x (b,a).
Admitted.

// HOL Light: Multivariate/vectors.ml:9828 / BETWEEN_ANTISYM   (hash md5:82b153dc99aacda61f3c664ce5023f15)
// not bridged: 
Theorem BETWEEN_ANTISYM : forall A:set, A <> Empty -> forall a b c :e R :^: idx A, between A a (b,c) /\ between A b (a,c) -> a = b.
Admitted.

// HOL Light: Multivariate/vectors.ml:9832 / BETWEEN_TRANS   (hash md5:8cf5754ceedbd9d1a1ebf9d0b0f3f391)
// not bridged: 
Theorem BETWEEN_TRANS : forall A:set, A <> Empty -> forall a b c d :e R :^: idx A, between A a (b,c) /\ between A d (a,c) -> between A d (b,c).
Admitted.

// HOL Light: Multivariate/vectors.ml:9836 / BETWEEN_TRANS_2   (hash md5:6df7e38786d408568a6a69b70c4c9e55)
// not bridged: 
Theorem BETWEEN_TRANS_2 : forall A:set, A <> Empty -> forall a b c d :e R :^: idx A, between A a (b,c) /\ between A d (a,b) -> between A a (c,d).
Admitted.

// HOL Light: Multivariate/vectors.ml:9840 / BETWEEN_TRANSLATION   (hash md5:d1482fbd607ef1908ebd4611d7ebe6eb)
// not bridged: 
Theorem BETWEEN_TRANSLATION : forall A:set, A <> Empty -> forall z a x y :e R :^: idx A, between A (vector_add A a x) (vector_add A a y,vector_add A a z) <-> between A x (y,z).
Admitted.

// HOL Light: Multivariate/vectors.ml:9844 / BETWEEN_NORM   (hash md5:5fe0bcdd62a9905806ec5c6b4cae3c57)
// not bridged: 
Theorem BETWEEN_NORM : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, between N x (a,b) <-> vector_mul N (vector_norm N (vector_sub N x a)) (vector_sub N b x) = vector_mul N (vector_norm N (vector_sub N b x)) (vector_sub N x a).
Admitted.

// HOL Light: Multivariate/vectors.ml:9850 / BETWEEN_DOT   (hash md5:f842445ebb4217d984514f88586b1e6b)
// not bridged: 
Theorem BETWEEN_DOT : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, between N x (a,b) <-> dot N (vector_sub N x a) (vector_sub N b x) = vector_norm N (vector_sub N x a) * vector_norm N (vector_sub N b x).
Admitted.

// HOL Light: Multivariate/vectors.ml:9855 / BETWEEN_EXISTS_EXTENSION   (hash md5:b8887000172f78ff13c1f367912b736b)
// not bridged: 
Theorem BETWEEN_EXISTS_EXTENSION : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, between N b (a,x) /\ ~ b = a -> exists d :e R, 0 <= d /\ x = vector_add N b (vector_mul N d (vector_sub N b a)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9865 / BETWEEN_IMP_COLLINEAR   (hash md5:89e66e844099a4be9da6c9094406b143)
// not bridged: 
Theorem BETWEEN_IMP_COLLINEAR : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, between N x (a,b) -> collinear N {a,x,b}.
Admitted.

// HOL Light: Multivariate/vectors.ml:9879 / BETWEEN_CMUL_LIFT   (hash md5:de406bab15a32c81201ed390cff38e09)
// not bridged: 
Theorem BETWEEN_CMUL_LIFT : forall N:set, N <> Empty -> forall a b c :e R, forall v :e R :^: idx N, between N (vector_mul N c v) (vector_mul N a v,vector_mul N b v) <-> v = vec N 0 \/ between 1 (lift c) (lift a,lift b).
Admitted.

// HOL Light: Multivariate/vectors.ml:9887 / BETWEEN_1   (hash md5:7995280a0e759ec1c8a9b11928c9b517)
// not bridged: 
Theorem BETWEEN_1 : forall a b x :e R :^: idx 1, between 1 x (a,b) <-> drop a <= drop x /\ drop x <= drop b \/ drop b <= drop x /\ drop x <= drop a.
Admitted.

// HOL Light: Multivariate/vectors.ml:9893 / COLLINEAR_BETWEEN_CASES   (hash md5:f8d5b358582e1daf7c3e53fa6b63869a)
// not bridged: 
Theorem COLLINEAR_BETWEEN_CASES : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, collinear N {a,b,c} <-> between N a (b,c) \/ (between N b (c,a) \/ between N c (a,b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9907 / COLLINEAR_BETWEEN_CASES_2   (hash md5:659fc6248bae01726ecc5e5ed1d6e7f3)
// not bridged: 
Theorem COLLINEAR_BETWEEN_CASES_2 : forall N:set, N <> Empty -> forall a b c d :e R :^: idx N, between N c (a,b) /\ between N d (a,b) -> between N d (a,c) \/ between N d (c,b).
Admitted.

// HOL Light: Multivariate/vectors.ml:9927 / BETWEEN_RESTRICTED_CASES   (hash md5:be14934664e01fd01574d5c77535efe4)
// not bridged: 
Theorem BETWEEN_RESTRICTED_CASES : forall N:set, N <> Empty -> forall a b c x :e R :^: idx N, between N x (a,b) /\ (between N x (a,c) /\ ~ x = a) -> between N b (a,c) \/ between N c (a,b).
Admitted.

// HOL Light: Multivariate/vectors.ml:9946 / COLLINEAR_DIST_BETWEEN   (hash md5:20cc63585f35437b2b5e8585c7dd4f79)
// not bridged: 
Theorem COLLINEAR_DIST_BETWEEN : forall A:set, A <> Empty -> forall a b x :e R :^: idx A, collinear A {x,a,b} /\ (distance A (x,a) <= distance A (a,b) /\ distance A (x,b) <= distance A (a,b)) -> between A x (a,b).
Admitted.

// HOL Light: Multivariate/vectors.ml:9952 / BETWEEN_COLLINEAR_DIST_EQ   (hash md5:7104e642931262f26a58dd431ae26b3c)
// not bridged: 
Theorem BETWEEN_COLLINEAR_DIST_EQ : forall N:set, N <> Empty -> forall a b x :e R :^: idx N, between N x (a,b) <-> collinear N {a,x,b} /\ (distance N (x,a) <= distance N (a,b) /\ distance N (x,b) <= distance N (a,b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9962 / COLLINEAR_1   (hash md5:b9f14c99e2f2f34a4fbf8fac88bff734)
// not bridged: 
Theorem COLLINEAR_1 : forall s c= R :^: idx 1, collinear 1 s.
Admitted.

// HOL Light: Multivariate/vectors.ml:9977 / midpoint   (hash md5:a4a121f4a13252046442357e3611ea9d)
// not bridged: 
Theorem midpoint_thm : forall A:set, A <> Empty -> forall a b :e R :^: idx A, midpoint A (a,b) = vector_mul A (recip_SNo 2) (vector_add A a b).
Admitted.

// HOL Light: Multivariate/vectors.ml:9980 / MIDPOINT_REFL   (hash md5:819e627fd24a67363e86c86c8189228e)
// not bridged: 
Theorem MIDPOINT_REFL : forall A:set, A <> Empty -> forall x :e R :^: idx A, midpoint A (x,x) = x.
Admitted.

// HOL Light: Multivariate/vectors.ml:9984 / MIDPOINT_SYM   (hash md5:54201251726ccd7c1deae228970f8baa)
// not bridged: 
Theorem MIDPOINT_SYM : forall A:set, A <> Empty -> forall a b :e R :^: idx A, midpoint A (a,b) = midpoint A (b,a).
Admitted.

// HOL Light: Multivariate/vectors.ml:9988 / DIST_MIDPOINT   (hash md5:78fba7252964c7d88b571e98c563e72c)
// not bridged: 
Theorem DIST_MIDPOINT : forall A:set, A <> Empty -> forall a b :e R :^: idx A, distance A (a,midpoint A (a,b)) = distance A (a,b) :/: 2 /\ (distance A (b,midpoint A (a,b)) = distance A (a,b) :/: 2 /\ (distance A (midpoint A (a,b),a) = distance A (a,b) :/: 2 /\ distance A (midpoint A (a,b),b) = distance A (a,b) :/: 2)).
Admitted.

// HOL Light: Multivariate/vectors.ml:9995 / MIDPOINT_EQ_ENDPOINT   (hash md5:f1505f083dafc7e3c0cb6daf331ae8fa)
// not bridged: 
Theorem MIDPOINT_EQ_ENDPOINT : forall A:set, A <> Empty -> forall a b :e R :^: idx A, (midpoint A (a,b) = a <-> a = b) /\ ((midpoint A (a,b) = b <-> a = b) /\ ((a = midpoint A (a,b) <-> a = b) /\ (b = midpoint A (a,b) <-> a = b))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10002 / BETWEEN_MIDPOINT   (hash md5:33f92dcaecb0032a10cd9786781f49ca)
// not bridged: 
Theorem BETWEEN_MIDPOINT : forall A:set, A <> Empty -> forall a b :e R :^: idx A, between A (midpoint A (a,b)) (a,b) /\ between A (midpoint A (a,b)) (b,a).
Admitted.

// HOL Light: Multivariate/vectors.ml:10006 / MIDPOINT_LINEAR_IMAGE   (hash md5:9d630146df60b3b0ee6cd2ac767068f2)
// not bridged: 
Theorem MIDPOINT_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall a b :e R :^: idx B, linear B A f -> midpoint A (f a,f b) = f (midpoint B (a,b)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10010 / COLLINEAR_MIDPOINT   (hash md5:b32cf915c14b2399c3182e66da7ebf74)
// not bridged: 
Theorem COLLINEAR_MIDPOINT : forall A:set, A <> Empty -> forall a b :e R :^: idx A, collinear A {a,midpoint A (a,b),b}.
Admitted.

// HOL Light: Multivariate/vectors.ml:10015 / MIDPOINT_COLLINEAR   (hash md5:20b20c5bc3235b4a82daa65cd8ce1468)
// not bridged: 
Theorem MIDPOINT_COLLINEAR : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, ~ a = c -> (b = midpoint N (a,c) <-> collinear N {a,b,c} /\ distance N (a,b) = distance N (b,c)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10032 / MIDPOINT_BETWEEN   (hash md5:f79abdccf2b405e57d41f45a93e59475)
// not bridged: 
Theorem MIDPOINT_BETWEEN : forall N:set, N <> Empty -> forall a b c :e R :^: idx N, b = midpoint N (a,c) <-> between N b (a,c) /\ distance N (a,b) = distance N (b,c).
Admitted.

// HOL Light: Multivariate/vectors.ml:10040 / DROP_MIDPOINT   (hash md5:20411563b630a37b8e4beca3cdabb722)
// not bridged: 
Theorem DROP_MIDPOINT : forall x y :e R :^: idx 1, drop (midpoint 1 (x,y)) = (drop x + drop y) :/: 2.
Admitted.

// HOL Light: Multivariate/vectors.ml:10048 / open_interval   (hash md5:80fe964b1856a421287ff491f4b358d8)
// not bridged: 
Theorem open_interval_thm : forall N:set, N <> Empty -> forall a b :e R :^: idx N, open_interval N (a,b) = {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> a i < x i /\ x i < b i}.
Admitted.

// HOL Light: Multivariate/vectors.ml:10053 / closed_interval   (hash md5:d62ba556ec0014350fe4f705a152fede)
// not bridged: 
Theorem closed_interval_thm : forall N:set, N <> Empty -> forall l :e finseq (R :^: idx N :*: R :^: idx N), closed_interval N l = {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> seq_hd l 0 i <= x i /\ x i <= seq_hd l 1 i}.
Admitted.

// HOL Light: Multivariate/vectors.ml:10063 / interval   (hash md5:e294037cea246436ebb2a1867d76c5e7)
// not bridged: 
Theorem interval : forall N:set, N <> Empty -> forall a b :e R :^: idx N, open_interval N (a,b) = {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> a i < x i /\ x i < b i} /\ closed_interval N (seq_cons (a,b) seq_nil) = {x :e R :^: idx N | forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= x i /\ x i <= b i}.
Admitted.

// HOL Light: Multivariate/vectors.ml:10070 / IN_INTERVAL   (hash md5:de1eb294bcdaab11402551fcec828424)
// not bridged: 
Theorem IN_INTERVAL : forall N:set, N <> Empty -> forall a b :e R :^: idx N, (forall x :e R :^: idx N, x :e open_interval N (a,b) <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> a i < x i /\ x i < b i) /\ forall x :e R :^: idx N, x :e closed_interval N (seq_cons (a,b) seq_nil) <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= x i /\ x i <= b i.
Admitted.

// HOL Light: Multivariate/vectors.ml:10081 / IN_INTERVAL_REFLECT   (hash md5:eed9bce620892db2d0f3a0d117477957)
// not bridged: 
Theorem IN_INTERVAL_REFLECT : forall A B:set, A <> Empty -> B <> Empty -> (forall a b x :e R :^: idx A, vector_neg A x :e closed_interval A (seq_cons (vector_neg A b,vector_neg A a) seq_nil) <-> x :e closed_interval A (seq_cons (a,b) seq_nil)) /\ forall a b x :e R :^: idx B, vector_neg B x :e open_interval B (vector_neg B b,vector_neg B a) <-> x :e open_interval B (a,b).
Admitted.

// HOL Light: Multivariate/vectors.ml:10087 / REFLECT_INTERVAL   (hash md5:83e5fbd5d964dd4927ce74faef32faeb)
// not bridged: 
Theorem REFLECT_INTERVAL : forall N:set, N <> Empty -> (forall a b :e R :^: idx N, {vector_neg N x | x :e closed_interval N (seq_cons (a,b) seq_nil)} = closed_interval N (seq_cons (vector_neg N b,vector_neg N a) seq_nil)) /\ forall a b :e R :^: idx N, {vector_neg N x | x :e open_interval N (a,b)} = open_interval N (vector_neg N b,vector_neg N a).
Admitted.

// HOL Light: Multivariate/vectors.ml:10093 / INTERVAL_EQ_EMPTY   (hash md5:f9a02a1674c396799fbb8032a217968e)
// not bridged: 
Theorem INTERVAL_EQ_EMPTY : forall N:set, N <> Empty -> forall a b :e R :^: idx N, (closed_interval N (seq_cons (a,b) seq_nil) = Empty <-> (exists i :e omega, 1 <= i /\ (i <= dimindex N /\ b i < a i))) /\ (open_interval N (a,b) = Empty <-> exists i :e omega, 1 <= i /\ (i <= dimindex N /\ b i <= a i)).
Admitted.

// HOL Light: Multivariate/vectors.ml:10114 / INTERVAL_NE_EMPTY   (hash md5:279968c4c2426f1c6eea1fa8504e0036)
// not bridged: 
Theorem INTERVAL_NE_EMPTY : forall N:set, N <> Empty -> forall a b :e R :^: idx N, (~ closed_interval N (seq_cons (a,b) seq_nil) = Empty <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= b i)) /\ (~ open_interval N (a,b) = Empty <-> forall i :e omega, 1 <= i /\ i <= dimindex N -> a i < b i).
Admitted.

// HOL Light: Multivariate/vectors.ml:10121 / SUBSET_INTERVAL_IMP   (hash md5:b0ceacc390f078b4f258d61ef8d0f18f)
// not bridged: 
Theorem SUBSET_INTERVAL_IMP : forall N:set, N <> Empty -> forall a c d b :e R :^: idx N, ((forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= c i /\ d i <= b i) -> closed_interval N (seq_cons (c,d) seq_nil) c= closed_interval N (seq_cons (a,b) seq_nil)) /\ (((forall i :e omega, 1 <= i /\ i <= dimindex N -> a i < c i /\ d i < b i) -> closed_interval N (seq_cons (c,d) seq_nil) c= open_interval N (a,b)) /\ (((forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= c i /\ d i <= b i) -> open_interval N (c,d) c= closed_interval N (seq_cons (a,b) seq_nil)) /\ ((forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= c i /\ d i <= b i) -> open_interval N (c,d) c= open_interval N (a,b)))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10136 / INTERVAL_SING   (hash md5:26bb7cb4e3b574336020aaaac2ec4560)
// not bridged: 
Theorem INTERVAL_SING : forall A:set, A <> Empty -> forall a :e R :^: idx A, closed_interval A (seq_cons (a,a) seq_nil) = {a} /\ open_interval A (a,a) = Empty.
Admitted.

// HOL Light: Multivariate/vectors.ml:10142 / SUBSET_INTERVAL   (hash md5:4aeb2ed36fe1ff1cb7cf8d448d37a674)
// not bridged: 
Theorem SUBSET_INTERVAL : forall N:set, N <> Empty -> forall c d a b :e R :^: idx N, (closed_interval N (seq_cons (c,d) seq_nil) c= closed_interval N (seq_cons (a,b) seq_nil) <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> c i <= d i) -> (forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= c i /\ d i <= b i)) /\ ((closed_interval N (seq_cons (c,d) seq_nil) c= open_interval N (a,b) <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> c i <= d i) -> (forall i :e omega, 1 <= i /\ i <= dimindex N -> a i < c i /\ d i < b i)) /\ ((open_interval N (c,d) c= closed_interval N (seq_cons (a,b) seq_nil) <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> c i < d i) -> (forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= c i /\ d i <= b i)) /\ (open_interval N (c,d) c= open_interval N (a,b) <-> (forall i :e omega, 1 <= i /\ i <= dimindex N -> c i < d i) -> forall i :e omega, 1 <= i /\ i <= dimindex N -> a i <= c i /\ d i <= b i))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10192 / DISJOINT_INTERVAL   (hash md5:11e09ffb8a19770d4ca76980e36a5653)
// not bridged: 
Theorem DISJOINT_INTERVAL : forall N:set, N <> Empty -> forall a b c d :e R :^: idx N, (closed_interval N (seq_cons (a,b) seq_nil) :/\: closed_interval N (seq_cons (c,d) seq_nil) = Empty <-> (exists i :e omega, 1 <= i /\ (i <= dimindex N /\ (b i < a i \/ (d i < c i \/ (b i < c i \/ d i < a i)))))) /\ ((closed_interval N (seq_cons (a,b) seq_nil) :/\: open_interval N (c,d) = Empty <-> (exists i :e omega, 1 <= i /\ (i <= dimindex N /\ (b i < a i \/ (d i <= c i \/ (b i <= c i \/ d i <= a i)))))) /\ ((open_interval N (a,b) :/\: closed_interval N (seq_cons (c,d) seq_nil) = Empty <-> (exists i :e omega, 1 <= i /\ (i <= dimindex N /\ (b i <= a i \/ (d i < c i \/ (b i <= c i \/ d i <= a i)))))) /\ (open_interval N (a,b) :/\: open_interval N (c,d) = Empty <-> exists i :e omega, 1 <= i /\ (i <= dimindex N /\ (b i <= a i \/ (d i <= c i \/ (b i <= c i \/ d i <= a i))))))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10221 / ENDS_IN_INTERVAL   (hash md5:0e22cfb78ad24d0dae82e1ad6883ad0d)
// not bridged: 
Theorem ENDS_IN_INTERVAL : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> (forall a b :e R :^: idx A, a :e closed_interval A (seq_cons (a,b) seq_nil) <-> ~ closed_interval A (seq_cons (a,b) seq_nil) = Empty) /\ ((forall a b :e R :^: idx B, b :e closed_interval B (seq_cons (a,b) seq_nil) <-> ~ closed_interval B (seq_cons (a,b) seq_nil) = Empty) /\ ((forall a b :e R :^: idx C, ~ a :e open_interval C (a,b)) /\ forall a b :e R :^: idx D, ~ b :e open_interval D (a,b))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10230 / ENDS_IN_UNIT_INTERVAL   (hash md5:63339266d7da291cb03536eea85e1455)
// not bridged: 
Theorem ENDS_IN_UNIT_INTERVAL : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> vec A 0 :e closed_interval A (seq_cons (vec A 0,vec A 1) seq_nil) /\ (vec B 1 :e closed_interval B (seq_cons (vec B 0,vec B 1) seq_nil) /\ (~ vec C 0 :e open_interval C (vec C 0,vec C 1) /\ ~ vec D 1 :e open_interval D (vec D 0,vec D 1))).
Admitted.

// HOL Light: Multivariate/vectors.ml:10238 / INTER_INTERVAL   (hash md5:3ef83cab4e450d1460358a0153e848ba)
// not bridged: 
Theorem INTER_INTERVAL : forall A:set, A <> Empty -> forall a b c d :e R :^: idx A, closed_interval A (seq_cons (a,b) seq_nil) :/\: closed_interval A (seq_cons (c,d) seq_nil) = closed_interval A (seq_cons (fun i :e idx A => if a i <= c i then c i else a i,fun i :e idx A => if b i <= d i then b i else d i) seq_nil).
Admitted.

// HOL Light: Multivariate/vectors.ml:10244 / INTERVAL_OPEN_SUBSET_CLOSED   (hash md5:e6e14a9a7bc59678cb408d958109a797)
// not bridged: 
Theorem INTERVAL_OPEN_SUBSET_CLOSED : forall A:set, A <> Empty -> forall a b :e R :^: idx A, open_interval A (a,b) c= closed_interval A (seq_cons (a,b) seq_nil).
Admitted.

// HOL Light: Multivariate/vectors.ml:10252 / WLOG_LINEAR_INJECTIVE_IMAGE_2   (hash md5:505ccfe1ea1b4d8e989e367c8ff04953)
// not bridged: 
Theorem WLOG_LINEAR_INJECTIVE_IMAGE_2 : forall M N:set, M <> Empty -> N <> Empty -> forall P Q:set -> prop, (forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall s c= R :^: idx M, P s /\ linear M N f -> Q {f x | x :e s}) /\ (forall g:set -> set, (forall x :e R :^: idx N, g x :e R :^: idx M) -> forall t c= R :^: idx N, Q t /\ linear N M g -> P {g x | x :e t}) -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x y :e R :^: idx M, f x = f y -> x = y) -> forall s c= R :^: idx M, Q {f x | x :e s} <-> P s.
Admitted.

// HOL Light: Multivariate/vectors.ml:10266 / WLOG_LINEAR_INJECTIVE_IMAGE_2_ALT   (hash md5:f5417d5e776e0ea65d88677c56fff0e6)
// not bridged: 
Theorem WLOG_LINEAR_INJECTIVE_IMAGE_2_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall P Q:set -> prop, forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx B) -> forall s c= R :^: idx A, (forall h:set -> set, (forall x :e R :^: idx A, h x :e R :^: idx B) -> forall u c= R :^: idx A, P u /\ linear A B h -> Q {h x | x :e u}) /\ ((forall g:set -> set, (forall x :e R :^: idx B, g x :e R :^: idx A) -> forall t c= R :^: idx B, Q t /\ linear B A g -> P {g x | x :e t}) /\ (linear A B f /\ (forall x y :e R :^: idx A, f x = f y -> x = y))) -> (Q {f x | x :e s} <-> P s).
Admitted.

// HOL Light: Multivariate/vectors.ml:10276 / WLOG_LINEAR_INJECTIVE_IMAGE   (hash md5:00c2ebda8c6fd0a35aed8578ed3e12ee)
// not bridged: 
Theorem WLOG_LINEAR_INJECTIVE_IMAGE : forall N:set, N <> Empty -> forall P:set -> prop, (forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> forall s c= R :^: idx N, P s /\ linear N N f -> P {f x | x :e s}) -> forall f:set -> set, (forall x :e R :^: idx N, f x :e R :^: idx N) -> linear N N f /\ (forall x y :e R :^: idx N, f x = f y -> x = y) -> forall s c= R :^: idx N, P {f x | x :e s} <-> P s.
Admitted.

// HOL Light: Multivariate/vectors.ml:10283 / WLOG_LINEAR_INJECTIVE_IMAGE_ALT   (hash md5:70fd02623c0bbea2b62fe18f8985b6dc)
// not bridged: 
Theorem WLOG_LINEAR_INJECTIVE_IMAGE_ALT : forall A:set, A <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e R :^: idx A, f x :e R :^: idx A) -> forall s c= R :^: idx A, (forall g:set -> set, (forall x :e R :^: idx A, g x :e R :^: idx A) -> forall t c= R :^: idx A, P t /\ linear A A g -> P {g x | x :e t}) /\ (linear A A f /\ (forall x y :e R :^: idx A, f x = f y -> x = y)) -> (P {f x | x :e s} <-> P s).
Admitted.

// HOL Light: Multivariate/vectors.ml:10317 / SUBSPACE_LINEAR_IMAGE_EQ   (hash md5:7342dc84865fefe0b54710317cb7fb69)
// not bridged: 
Theorem SUBSPACE_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e R :^: idx B, f x :e R :^: idx A) -> forall s c= R :^: idx B, linear B A f /\ (forall x y :e R :^: idx B, f x = f y -> x = y) -> (subspace A {f x | x :e s} <-> subspace B s).
Admitted.

// HOL Light: Multivariate/vectors.ml:10336 / COUNTABLE_UNION_OF_BIJECTIVE_IMAGE   (hash md5:a6027db7d408c81e919b17540ae06b4e)
Theorem hlt_COUNTABLE_UNION_OF_BIJECTIVE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall P :e 2 :^: (2 :^: A), forall P' :e 2 :^: (2 :^: B), (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B f s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B f s) = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1.
Admitted.
Theorem COUNTABLE_UNION_OF_BIJECTIVE_IMAGE_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall P :e 2 :^: (2 :^: A), forall P' :e 2 :^: (2 :^: B), (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B f s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B f s) = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall P P':set -> prop, (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s).
exact (fun H__top A B HAne HBne => ((imp_forall_fun (A) (B) (fun f => forall P :e 2 :^: (2 :^: A), forall P' :e 2 :^: (2 :^: B), (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B f s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B f s) = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1) (fun f => forall P P':set -> prop, (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s) (fun f Hfc => (imp_forall_pred_rep (2 :^: A) (fun hl__x:set => hl_rep (A) hl__x) (fun P => forall P' :e 2 :^: (2 :^: B), (forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) /\ ((forall y :e B, exists x :e A, hl_lam A f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B (hl_lam A f) s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1) (fun P => forall P':set -> prop, (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s) (fun P => (imp_forall_pred_rep (2 :^: B) (fun hl__x:set => hl_rep (B) hl__x) (fun P' => (forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) /\ ((forall y :e B, exists x :e A, hl_lam A f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1)) -> forall s :e 2 :^: A, hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) s = 1) (fun P' => (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s) (fun P' => (fun H__L : (((forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) /\ ((forall y :e B, exists x :e A, hl_lam A f x = y) /\ forall s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1)) -> (forall s :e 2 :^: A, hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) s = 1)) => fun H__hyp3 : ((forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ forall s c= A, P' {f x | x :e s} <-> P s)) => (imp_forall_sub (A) (fun s => hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) s = 1) (fun s => (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s) (fun s Hss => (imp_iff (hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) (hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1) (exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s) (iffEL (hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1 <-> exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = hl__u) ((hl_UNION_OF_compat) (B) HBne (hl_COUNTABLE (2 :^: B)) ((hl_COUNTABLE_in) (2 :^: B) (setexp_nonempty (B) (2) two_nonempty)) (fun x:set => countable x) ((pw_eta_pred (2 :^: (2 :^: B)) (hl_COUNTABLE (2 :^: B)) (fun hl__x:set => (fun x:set => countable x) (hl_rep2 B hl__x)) (fun x Hx => (iff_eq1_l ((fun x :e 2 :^: (2 :^: B) => hl_COUNTABLE (2 :^: B) x) x) (hl_COUNTABLE (2 :^: B) x) (beta (2 :^: (2 :^: B)) (fun x:set => (hl_COUNTABLE (2 :^: B) x)) x Hx) (countable (hl_rep2 B x)) (iffI (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) (iffEL (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) ((hl_COUNTABLE_compat_pow) (B) HBne (x) Hx)) (iffER (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) ((hl_COUNTABLE_compat_pow) (B) HBne (x) Hx))))))) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_chip_Pi (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (fun hl__x:set => (P') hl__x) ((hl_chip_iff (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_chi A s) (hl_chi_Pi (A) s))))) (iffER (hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_UNION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1 <-> exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = hl__u) ((hl_UNION_OF_compat) (B) HBne (hl_COUNTABLE (2 :^: B)) ((hl_COUNTABLE_in) (2 :^: B) (setexp_nonempty (B) (2) two_nonempty)) (fun x:set => countable x) ((pw_eta_pred (2 :^: (2 :^: B)) (hl_COUNTABLE (2 :^: B)) (fun hl__x:set => (fun x:set => countable x) (hl_rep2 B hl__x)) (fun x Hx => (iff_eq1_l ((fun x :e 2 :^: (2 :^: B) => hl_COUNTABLE (2 :^: B) x) x) (hl_COUNTABLE (2 :^: B) x) (beta (2 :^: (2 :^: B)) (fun x:set => (hl_COUNTABLE (2 :^: B) x)) x Hx) (countable (hl_rep2 B x)) (iffI (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) (iffEL (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) ((hl_COUNTABLE_compat_pow) (B) HBne (x) Hx)) (iffER (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) ((hl_COUNTABLE_compat_pow) (B) HBne (x) Hx))))))) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_chip_Pi (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (fun hl__x:set => (P') hl__x) ((hl_chip_iff (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_chi A s) (hl_chi_Pi (A) s))))) (iffEL (hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1) (exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1 <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = hl__u) ((hl_UNION_OF_compat) (A) HAne (hl_COUNTABLE (2 :^: A)) ((hl_COUNTABLE_in) (2 :^: A) (setexp_nonempty (A) (2) two_nonempty)) (fun x:set => countable x) ((pw_eta_pred (2 :^: (2 :^: A)) (hl_COUNTABLE (2 :^: A)) (fun hl__x:set => (fun x:set => countable x) (hl_rep2 A hl__x)) (fun x Hx => (iff_eq1_l ((fun x :e 2 :^: (2 :^: A) => hl_COUNTABLE (2 :^: A) x) x) (hl_COUNTABLE (2 :^: A) x) (beta (2 :^: (2 :^: A)) (fun x:set => (hl_COUNTABLE (2 :^: A) x)) x Hx) (countable (hl_rep2 A x)) (iffI (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) (iffEL (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) ((hl_COUNTABLE_compat_pow) (A) HAne (x) Hx)) (iffER (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) ((hl_COUNTABLE_compat_pow) (A) HAne (x) Hx))))))) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chip_Pi (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)))) (hl_chi A s) (hl_chi_Pi (A) s)))) (iffER (hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1) (exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_UNION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1 <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = hl__u) ((hl_UNION_OF_compat) (A) HAne (hl_COUNTABLE (2 :^: A)) ((hl_COUNTABLE_in) (2 :^: A) (setexp_nonempty (A) (2) two_nonempty)) (fun x:set => countable x) ((pw_eta_pred (2 :^: (2 :^: A)) (hl_COUNTABLE (2 :^: A)) (fun hl__x:set => (fun x:set => countable x) (hl_rep2 A hl__x)) (fun x Hx => (iff_eq1_l ((fun x :e 2 :^: (2 :^: A) => hl_COUNTABLE (2 :^: A) x) x) (hl_COUNTABLE (2 :^: A) x) (beta (2 :^: (2 :^: A)) (fun x:set => (hl_COUNTABLE (2 :^: A) x)) x Hx) (countable (hl_rep2 A x)) (iffI (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) (iffEL (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) ((hl_COUNTABLE_compat_pow) (A) HAne (x) Hx)) (iffER (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) ((hl_COUNTABLE_compat_pow) (A) HAne (x) Hx))))))) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chip_Pi (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)))) (hl_chi A s) (hl_chi_Pi (A) s))))))) (H__L ((imp_and_dep_bwd (forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) (forall x y :e A, f x = f y -> x = y) ((forall y :e B, exists x :e A, hl_lam A f x = y) /\ forall s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) ((forall y :e B, exists x :e A, f x = y) /\ forall s c= A, P' {f x | x :e s} <-> P s) (imp_forall_in (A) (fun x => forall y :e A, f x = f y -> x = y) (fun x => forall y :e A, hl_lam A f x = hl_lam A f y -> x = y) (fun x Hx => (imp_forall_in (A) (fun y => f x = f y -> x = y) (fun y => hl_lam A f x = hl_lam A f y -> x = y) (fun y Hy => (fun H__N : ((f x = f y) -> (x = y)) => fun H__hyp7 : (hl_lam A f x = hl_lam A f y) => (imp_eq (x) (x) (y) (y) (eq_sym_i (x) (x) (fun q H => H)) (eq_sym_i (y) (y) (fun q H => H))) (H__N ((imp_eq (hl_lam A f x) (f x) (hl_lam A f y) (f y) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) f) (y) Hy)) H__hyp7))))))) (fun H__and4 : (forall x y :e A, f x = f y -> x = y) => (imp_and_dep_bwd (forall y :e B, exists x :e A, hl_lam A f x = y) (forall y :e B, exists x :e A, f x = y) (forall s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (forall s c= A, P' {f x | x :e s} <-> P s) (imp_forall_in (B) (fun y => exists x :e A, f x = y) (fun y => exists x :e A, hl_lam A f x = y) (fun y Hy => (imp_exists_in (A) (fun x => f x = y) (fun x => hl_lam A f x = y) (fun x Hx => (imp_eq (f x) (hl_lam A f x) (y) (y) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (y) (y) (fun q H => H))))))) (fun H__and8 : (forall y :e B, exists x :e A, f x = y) => (imp_forall_sub_rev (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (fun s => P' {f x | x :e s} <-> P s) (fun s Hs => (imp_iff (P' {f x | x :e hl_rep A s}) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (P (hl_rep A s)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (iffER (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (P' {f x | x :e hl_rep A s}) (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> P' hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs)))) (iffEL (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (P' {f x | x :e hl_rep A s}) (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> P' hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs)))) (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (P (hl_rep A s)) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (s) Hs)) (iffEL (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (P (hl_rep A s)) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (s) Hs))))))))) H__hyp3))))))))) (H__top A B HAne HBne))).
Qed.
Theorem COUNTABLE_UNION_OF_BIJECTIVE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall P P':set -> prop, (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ Union u = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ Union u = s.
exact (COUNTABLE_UNION_OF_BIJECTIVE_IMAGE_bridge hlt_COUNTABLE_UNION_OF_BIJECTIVE_IMAGE).
Admitted.

// HOL Light: Multivariate/vectors.ml:10355 / COUNTABLE_INTERSECTION_OF_BIJECTIVE_IMAGE   (hash md5:31021da9ec85d4eb7fb836843246308f)
Theorem hlt_COUNTABLE_INTERSECTION_OF_BIJECTIVE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall P :e 2 :^: (2 :^: A), forall P' :e 2 :^: (2 :^: B), (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B f s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B f s) = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1.
Admitted.
Theorem COUNTABLE_INTERSECTION_OF_BIJECTIVE_IMAGE_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall P :e 2 :^: (2 :^: A), forall P' :e 2 :^: (2 :^: B), (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B f s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B f s) = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall P P':set -> prop, (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s).
exact (fun H__top A B HAne HBne => ((imp_forall_fun (A) (B) (fun f => forall P :e 2 :^: (2 :^: A), forall P' :e 2 :^: (2 :^: B), (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B f s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B f s) = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1) (fun f => forall P P':set -> prop, (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s) (fun f Hfc => (imp_forall_pred_rep (2 :^: A) (fun hl__x:set => hl_rep (A) hl__x) (fun P => forall P' :e 2 :^: (2 :^: B), (forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) /\ ((forall y :e B, exists x :e A, hl_lam A f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B (hl_lam A f) s) = 1 <-> P s = 1)) -> forall s :e 2 :^: A, hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) P s = 1) (fun P => forall P':set -> prop, (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s) (fun P => (imp_forall_pred_rep (2 :^: B) (fun hl__x:set => hl_rep (B) hl__x) (fun P' => (forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) /\ ((forall y :e B, exists x :e A, hl_lam A f x = y) /\ (forall s :e 2 :^: A, P' (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1)) -> forall s :e 2 :^: A, hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) P' (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) s = 1) (fun P' => (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s) (fun P' => (fun H__L : (((forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) /\ ((forall y :e B, exists x :e A, hl_lam A f x = y) /\ forall s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1)) -> (forall s :e 2 :^: A, hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) s = 1)) => fun H__hyp3 : ((forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ forall s c= A, P' {f x | x :e s} <-> P s)) => (imp_forall_sub (A) (fun s => hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) s = 1) (fun s => (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s) (fun s Hss => (imp_iff (hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) (hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1) (exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s) (iffEL (hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1 <-> exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = hl__u) ((hl_INTERSECTION_OF_compat) (B) HBne (hl_COUNTABLE (2 :^: B)) ((hl_COUNTABLE_in) (2 :^: B) (setexp_nonempty (B) (2) two_nonempty)) (fun x:set => countable x) ((pw_eta_pred (2 :^: (2 :^: B)) (hl_COUNTABLE (2 :^: B)) (fun hl__x:set => (fun x:set => countable x) (hl_rep2 B hl__x)) (fun x Hx => (iff_eq1_l ((fun x :e 2 :^: (2 :^: B) => hl_COUNTABLE (2 :^: B) x) x) (hl_COUNTABLE (2 :^: B) x) (beta (2 :^: (2 :^: B)) (fun x:set => (hl_COUNTABLE (2 :^: B) x)) x Hx) (countable (hl_rep2 B x)) (iffI (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) (iffEL (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) ((hl_COUNTABLE_compat_pow) (B) HBne (x) Hx)) (iffER (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) ((hl_COUNTABLE_compat_pow) (B) HBne (x) Hx))))))) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_chip_Pi (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (fun hl__x:set => (P') hl__x) ((hl_chip_iff (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_chi A s) (hl_chi_Pi (A) s))))) (iffER (hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_INTERSECTION_OF B (hl_COUNTABLE (2 :^: B)) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1 <-> exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = hl__u) ((hl_INTERSECTION_OF_compat) (B) HBne (hl_COUNTABLE (2 :^: B)) ((hl_COUNTABLE_in) (2 :^: B) (setexp_nonempty (B) (2) two_nonempty)) (fun x:set => countable x) ((pw_eta_pred (2 :^: (2 :^: B)) (hl_COUNTABLE (2 :^: B)) (fun hl__x:set => (fun x:set => countable x) (hl_rep2 B hl__x)) (fun x Hx => (iff_eq1_l ((fun x :e 2 :^: (2 :^: B) => hl_COUNTABLE (2 :^: B) x) x) (hl_COUNTABLE (2 :^: B) x) (beta (2 :^: (2 :^: B)) (fun x:set => (hl_COUNTABLE (2 :^: B) x)) x Hx) (countable (hl_rep2 B x)) (iffI (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) (iffEL (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) ((hl_COUNTABLE_compat_pow) (B) HBne (x) Hx)) (iffER (hl_COUNTABLE (2 :^: B) x = 1) (countable (hl_rep2 B x)) ((hl_COUNTABLE_compat_pow) (B) HBne (x) Hx))))))) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_chip_Pi (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (fun hl__x:set => (P') hl__x) ((hl_chip_iff (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_chi A s) (hl_chi_Pi (A) s))))) (iffEL (hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1) (exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1 <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = hl__u) ((hl_INTERSECTION_OF_compat) (A) HAne (hl_COUNTABLE (2 :^: A)) ((hl_COUNTABLE_in) (2 :^: A) (setexp_nonempty (A) (2) two_nonempty)) (fun x:set => countable x) ((pw_eta_pred (2 :^: (2 :^: A)) (hl_COUNTABLE (2 :^: A)) (fun hl__x:set => (fun x:set => countable x) (hl_rep2 A hl__x)) (fun x Hx => (iff_eq1_l ((fun x :e 2 :^: (2 :^: A) => hl_COUNTABLE (2 :^: A) x) x) (hl_COUNTABLE (2 :^: A) x) (beta (2 :^: (2 :^: A)) (fun x:set => (hl_COUNTABLE (2 :^: A) x)) x Hx) (countable (hl_rep2 A x)) (iffI (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) (iffEL (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) ((hl_COUNTABLE_compat_pow) (A) HAne (x) Hx)) (iffER (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) ((hl_COUNTABLE_compat_pow) (A) HAne (x) Hx))))))) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chip_Pi (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)))) (hl_chi A s) (hl_chi_Pi (A) s)))) (iffER (hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1) (exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s) ((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_INTERSECTION_OF A (hl_COUNTABLE (2 :^: A)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A s) = 1 <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = hl__u) ((hl_INTERSECTION_OF_compat) (A) HAne (hl_COUNTABLE (2 :^: A)) ((hl_COUNTABLE_in) (2 :^: A) (setexp_nonempty (A) (2) two_nonempty)) (fun x:set => countable x) ((pw_eta_pred (2 :^: (2 :^: A)) (hl_COUNTABLE (2 :^: A)) (fun hl__x:set => (fun x:set => countable x) (hl_rep2 A hl__x)) (fun x Hx => (iff_eq1_l ((fun x :e 2 :^: (2 :^: A) => hl_COUNTABLE (2 :^: A) x) x) (hl_COUNTABLE (2 :^: A) x) (beta (2 :^: (2 :^: A)) (fun x:set => (hl_COUNTABLE (2 :^: A) x)) x Hx) (countable (hl_rep2 A x)) (iffI (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) (iffEL (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) ((hl_COUNTABLE_compat_pow) (A) HAne (x) Hx)) (iffER (hl_COUNTABLE (2 :^: A) x = 1) (countable (hl_rep2 A x)) ((hl_COUNTABLE_compat_pow) (A) HAne (x) Hx))))))) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chip_Pi (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)))) (hl_chi A s) (hl_chi_Pi (A) s))))))) (H__L ((imp_and_dep_bwd (forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) (forall x y :e A, f x = f y -> x = y) ((forall y :e B, exists x :e A, hl_lam A f x = y) /\ forall s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) ((forall y :e B, exists x :e A, f x = y) /\ forall s c= A, P' {f x | x :e s} <-> P s) (imp_forall_in (A) (fun x => forall y :e A, f x = f y -> x = y) (fun x => forall y :e A, hl_lam A f x = hl_lam A f y -> x = y) (fun x Hx => (imp_forall_in (A) (fun y => f x = f y -> x = y) (fun y => hl_lam A f x = hl_lam A f y -> x = y) (fun y Hy => (fun H__N : ((f x = f y) -> (x = y)) => fun H__hyp7 : (hl_lam A f x = hl_lam A f y) => (imp_eq (x) (x) (y) (y) (eq_sym_i (x) (x) (fun q H => H)) (eq_sym_i (y) (y) (fun q H => H))) (H__N ((imp_eq (hl_lam A f x) (f x) (hl_lam A f y) (f y) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) f) (y) Hy)) H__hyp7))))))) (fun H__and4 : (forall x y :e A, f x = f y -> x = y) => (imp_and_dep_bwd (forall y :e B, exists x :e A, hl_lam A f x = y) (forall y :e B, exists x :e A, f x = y) (forall s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (forall s c= A, P' {f x | x :e s} <-> P s) (imp_forall_in (B) (fun y => exists x :e A, f x = y) (fun y => exists x :e A, hl_lam A f x = y) (fun y Hy => (imp_exists_in (A) (fun x => f x = y) (fun x => hl_lam A f x = y) (fun x Hx => (imp_eq (f x) (hl_lam A f x) (y) (y) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (y) (y) (fun q H => H))))))) (fun H__and8 : (forall y :e B, exists x :e A, f x = y) => (imp_forall_sub_rev (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (fun s => P' {f x | x :e s} <-> P s) (fun s Hs => (imp_iff (P' {f x | x :e hl_rep A s}) (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (P (hl_rep A s)) (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (iffER (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (P' {f x | x :e hl_rep A s}) (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> P' hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs)))) (iffEL (hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (P' {f x | x :e hl_rep A s}) (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> P' hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => P' (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs)))) (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (P (hl_rep A s)) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (s) Hs)) (iffEL (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) s = 1) (P (hl_rep A s)) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (s) Hs))))))))) H__hyp3))))))))) (H__top A B HAne HBne))).
Qed.
Theorem COUNTABLE_INTERSECTION_OF_BIJECTIVE_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall P P':set -> prop, (forall x y :e A, f x = f y -> x = y) /\ ((forall y :e B, exists x :e A, f x = y) /\ (forall s c= A, P' {f x | x :e s} <-> P s)) -> forall s c= A, (exists u c= Power B, countable u /\ (forall c :e u, P' c) /\ {x :e B | forall Y :e u, x :e Y} = {f x | x :e s}) <-> exists u c= Power A, countable u /\ (forall c :e u, P c) /\ {x :e A | forall Y :e u, x :e Y} = s.
exact (COUNTABLE_INTERSECTION_OF_BIJECTIVE_IMAGE_bridge hlt_COUNTABLE_INTERSECTION_OF_BIJECTIVE_IMAGE).
Admitted.

// HOL Light: Multivariate/vectors.ml:10378 / AFFINITY_SCALING_TRANSLATION   (hash md5:a33c821ca631b3abe031c187f5c17a34)
// not bridged: 
Theorem AFFINITY_SCALING_TRANSLATION : forall N:set, N <> Empty -> forall m :e R, forall c x :e R :^: idx N, vector_add N (vector_mul N m x) c = vector_add N c (vector_mul N m x).
Admitted.

// HOL Light: Multivariate/vectors.ml:10382 / LINEAR_SCALING   (hash md5:f18009a0d96e4727aed99a1dd1404d7f)
// not bridged: 
Theorem LINEAR_SCALING : forall N:set, N <> Empty -> forall c :e R, linear N N (vector_mul N c).
Admitted.

// HOL Light: Multivariate/vectors.ml:10386 / INJECTIVE_SCALING   (hash md5:00ec88bb15bfdba628dd5762b9135daf)
// not bridged: 
Theorem INJECTIVE_SCALING : forall N:set, N <> Empty -> forall c :e R, (forall x y :e R :^: idx N, vector_mul N c x = vector_mul N c y -> x = y) <-> ~ c = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:10393 / SURJECTIVE_SCALING   (hash md5:dd2286718103fd2286a89b41857abe69)
// not bridged: 
Theorem SURJECTIVE_SCALING : forall N:set, N <> Empty -> forall c :e R, (forall y :e R :^: idx N, exists x :e R :^: idx N, vector_mul N c x = y) <-> ~ c = 0.
Admitted.

// HOL Light: Multivariate/vectors.ml:10505 / SAME_NORM_SAME_DOT   (hash md5:3832c8f64e1e27444abe7f57d19bd5b5)
// not bridged: 
Theorem SAME_NORM_SAME_DOT : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall g:set -> set, (forall x :e R :^: idx M, g x :e R :^: idx P) -> forall x y :e R :^: idx M, linear M N f /\ (linear M P g /\ (forall x0 :e R :^: idx M, vector_norm N (f x0) = vector_norm P (g x0))) -> dot N (f x) (f y) = dot P (g x) (g y).
Admitted.

// HOL Light: Multivariate/vectors.ml:10515 / PRESERVES_NORM_PRESERVES_DOT   (hash md5:e45375402d3af8eb74c18eb216bd70d0)
// not bridged: 
Theorem PRESERVES_NORM_PRESERVES_DOT : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall x y :e R :^: idx M, linear M N f /\ (forall x0 :e R :^: idx M, vector_norm N (f x0) = vector_norm M x0) -> dot N (f x) (f y) = dot M x y.
Admitted.

// HOL Light: Multivariate/vectors.ml:10524 / PRESEVES_NORM_PRESERVES_DIST   (hash md5:5363cd1b0a383fe25a7ad65006fce36e)
// not bridged: 
Theorem PRESEVES_NORM_PRESERVES_DIST : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x :e R :^: idx M, vector_norm N (f x) = vector_norm M x) -> forall x y :e R :^: idx M, distance N (f x,f y) = distance M (x,y).
Admitted.

// HOL Light: Multivariate/vectors.ml:10530 / PRESERVES_NORM_INJECTIVE   (hash md5:36de79efbbe962ecf916af3fa52b5502)
// not bridged: 
Theorem PRESERVES_NORM_INJECTIVE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> linear M N f /\ (forall x :e R :^: idx M, vector_norm N (f x) = vector_norm M x) -> forall x y :e R :^: idx M, f x = f y -> x = y.
Admitted.

// HOL Light: Multivariate/vectors.ml:10536 / ORTHOGONAL_LINEAR_IMAGE_EQ   (hash md5:f34519e0b695045b5974e625d7a09d01)
// not bridged: 
Theorem ORTHOGONAL_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall x y :e R :^: idx M, linear M N f /\ (forall x0 :e R :^: idx M, vector_norm N (f x0) = vector_norm M x0) -> (orthogonal N (f x) (f y) <-> orthogonal M x y).
Admitted.

// HOL Light: Multivariate/vectors.ml:10542 / NORMAL_MATRIX_IFF_SAME_DOT_TRANSP   (hash md5:c582f59113b37299cb8da03ef7247574)
// not bridged: 
Theorem NORMAL_MATRIX_IFF_SAME_DOT_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, normal_matrix_hl N A <-> forall x y :e R :^: idx N, dot N (matrix_vector_mul N N (transp N N A) x) (matrix_vector_mul N N (transp N N A) y) = dot N (matrix_vector_mul N N A x) (matrix_vector_mul N N A y).
Admitted.

// HOL Light: Multivariate/vectors.ml:10542 / NORMAL_MATRIX_IFF_SAME_NORM_TRANSP   (hash md5:a4476e86424ef089426d2657017fc8e6)
// not bridged: 
Theorem NORMAL_MATRIX_IFF_SAME_NORM_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, normal_matrix_hl N A <-> forall x :e R :^: idx N, vector_norm N (matrix_vector_mul N N (transp N N A) x) = vector_norm N (matrix_vector_mul N N A x).
Admitted.

// HOL Light: Multivariate/vectors.ml:10566 / NORMAL_MATRIX_KERNEL_TRANSP_EXPLICIT   (hash md5:199377f807e5157b3e226d5bbc6b740a)
// not bridged: 
Theorem NORMAL_MATRIX_KERNEL_TRANSP_EXPLICIT : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, forall x :e R :^: idx N, normal_matrix_hl N A -> (matrix_vector_mul N N (transp N N A) x = vec N 0 <-> matrix_vector_mul N N A x = vec N 0).
Admitted.

// HOL Light: Multivariate/vectors.ml:10573 / NORMAL_MATRIX_KERNEL_TRANSP   (hash md5:1132a08bf9c2c7cfa497d036967f0f20)
// not bridged: 
Theorem NORMAL_MATRIX_KERNEL_TRANSP : forall N:set, N <> Empty -> forall A :e R :^: idx N :^: idx N, normal_matrix_hl N A -> {x :e R :^: idx N | matrix_vector_mul N N (transp N N A) x = vec N 0} = {x :e R :^: idx N | matrix_vector_mul N N A x = vec N 0}.
Admitted.

// HOL Light: Multivariate/vectors.ml:10623 / MEM_TRANSLATION   (hash md5:dafa218920d78a45ccd5d419e86155fc)
// not bridged: 
Theorem MEM_TRANSLATION : forall N:set, N <> Empty -> forall a x :e R :^: idx N, forall l :e finseq (R :^: idx N), seq_mem (vector_add N a x) (seq_map (vector_add N a) l) <-> seq_mem x l.
Admitted.

// HOL Light: Multivariate/vectors.ml:10630 / MEM_LINEAR_IMAGE   (hash md5:755cd1cc3d41c9f3d5192a65022ea996)
// not bridged: 
Theorem MEM_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f:set -> set, (forall x :e R :^: idx M, f x :e R :^: idx N) -> forall x :e R :^: idx M, forall l :e finseq (R :^: idx M), linear M N f /\ (forall x0 y :e R :^: idx M, f x0 = f y -> x0 = y) -> (seq_mem (f x) (seq_map f l) <-> seq_mem x l).
Admitted.

// HOL Light: Multivariate/vectors.ml:10741 / QUANTIFY_SURJECTION_THM   (hash md5:50f1881af5496e09df2db343d637e968)
Theorem hlt_QUANTIFY_SURJECTION_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ (forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1))) /\ forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (P (f x)) x = 1 then 1 else 0)).
Admitted.
Theorem QUANTIFY_SURJECTION_THM_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ (forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1))) /\ forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (P (f x)) x = 1 then 1 else 0))) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> (forall y :e B, exists x :e A, f x = y) -> (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ (forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}))) /\ forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}).
exact (fun H__top A B HAne HBne => ((imp_forall_fun (A) (B) (fun f => (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ (forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1))) /\ forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (P (f x)) x = 1 then 1 else 0))) (fun f => (forall y :e B, exists x :e A, f x = y) -> (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ (forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}))) /\ forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) (fun f Hfc => (fun H__L : ((forall y :e B, exists x :e A, hl_lam A f x = y) -> ((forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (hl_lam A f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ (forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1))) /\ forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (P x) x = 1 then 1 else 0) = hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (P (hl_lam A f x)) x = 1 then 1 else 0)))) => fun H__hyp1 : (forall y :e B, exists x :e A, f x = y) => (imp_and_dep ((forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (hl_lam A f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1))) ((forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}))) (forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (P x) x = 1 then 1 else 0) = hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (P (hl_lam A f x)) x = 1 then 1 else 0))) (forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) (imp_and_dep (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (hl_lam A f x) = 1) (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1)) ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s})) (imp_forall_pred (B) (fun P => (forall x :e B, P x = 1) <-> forall x :e A, P (hl_lam A f x) = 1) (fun P => (forall x :e B, P x) <-> forall x :e A, P (f x)) (fun P => (imp_iff (forall x :e B, hl_chip B P x = 1) (forall x :e B, P x) (forall x :e A, hl_chip B P (hl_lam A f x) = 1) (forall x :e A, P (f x)) (imp_forall_in (B) (fun x => hl_chip B P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip B P x = 1) (P x) ((hl_chip_iff (B) P) (x) Hx)))) (imp_forall_in (B) (fun x => P x) (fun x => hl_chip B P x = 1) (fun x Hx => (iffER (hl_chip B P x = 1) (P x) ((hl_chip_iff (B) P) (x) Hx)))) (imp_forall_in (A) (fun x => hl_chip B P (hl_lam A f x) = 1) (fun x => P (f x)) (fun x Hx => (iffEL (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))))) (imp_forall_in (A) (fun x => P (f x)) (fun x => hl_chip B P (hl_lam A f x) = 1) (fun x Hx => (iffER (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))))) (fun H__and5 : (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) => (imp_and_dep (forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) (forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) (imp_forall_pred (B) (fun P => (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) (fun P => (exists x :e B, P x) <-> exists x :e A, P (f x)) (fun P => (imp_iff (exists x :e B, hl_chip B P x = 1) (exists x :e B, P x) (exists x :e A, hl_chip B P (hl_lam A f x) = 1) (exists x :e A, P (f x)) (imp_exists_in (B) (fun x => hl_chip B P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip B P x = 1) (P x) ((hl_chip_iff (B) P) (x) Hx)))) (imp_exists_in (B) (fun x => P x) (fun x => hl_chip B P x = 1) (fun x Hx => (iffER (hl_chip B P x = 1) (P x) ((hl_chip_iff (B) P) (x) Hx)))) (imp_exists_in (A) (fun x => hl_chip B P (hl_lam A f x) = 1) (fun x => P (f x)) (fun x Hx => (iffEL (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))))) (imp_exists_in (A) (fun x => P (f x)) (fun x => hl_chip B P (hl_lam A f x) = 1) (fun x Hx => (iffER (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))))) (fun H__and11 : (forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) => (imp_and_dep (forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) (forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) (forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) (forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) (imp_forall_pred_rep (2 :^: B) (fun hl__x:set => hl_rep (B) hl__x) (fun Q => (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) (fun Q => (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) (fun Q => (imp_iff (forall s :e 2 :^: B, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (forall s c= B, Q s) (forall s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (forall s c= A, Q {f x | x :e s}) (imp_forall_sub (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (fun s => Q s) (fun s Hss => (iffEL (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_chi B s) = 1) (Q s) ((hl_rep_chi (B) s Hss) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_chi B s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_chi B s) (hl_chi_Pi (B) s)))))) (imp_forall_sub_rev (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (fun s => Q s) (fun s Hs => (iffER (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (Q (hl_rep B s)) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (s) Hs)))) (imp_forall_sub (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (fun s => Q {f x | x :e s}) (fun s Hss => (iffEL (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (Q {f x | x :e s}) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_chi A s) (hl_chi_Pi (A) s))))))) (imp_forall_sub_rev (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (fun s => Q {f x | x :e s}) (fun s Hs => (iffER (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (Q {f x | x :e hl_rep A s}) (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs))))))))) (fun H__and17 : (forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) => (imp_forall_pred_rep (2 :^: B) (fun hl__x:set => hl_rep (B) hl__x) (fun Q => (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) (fun Q => (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) (fun Q => (imp_iff (exists s :e 2 :^: B, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (exists s c= B, Q s) (exists s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (exists s c= A, Q {f x | x :e s}) (imp_exists_sub (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (fun s => Q s) (fun s Hs => (iffEL (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (Q (hl_rep B s)) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (s) Hs)))) (imp_exists_sub_rev (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (fun s => Q s) (fun s Hss => (iffER (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_chi B s) = 1) (Q s) ((hl_rep_chi (B) s Hss) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_chi B s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_chi B s) (hl_chi_Pi (B) s)))))) (imp_exists_sub (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (fun s => Q {f x | x :e s}) (fun s Hs => (iffEL (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (Q {f x | x :e hl_rep A s}) (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs)))))) (imp_exists_sub_rev (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (fun s => Q {f x | x :e s}) (fun s Hss => (iffER (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (Q {f x | x :e s}) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_chi A s) (hl_chi_Pi (A) s)))))))))))))))) (fun H__and4 : ((forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}))) => (imp_forall_pred (B) (fun P => hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (P x) x = 1 then 1 else 0) = hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (P (hl_lam A f x)) x = 1 then 1 else 0))) (fun P => {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) (fun P => (rep_eq_fwd (B) (hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (hl_chip B P x) x = 1 then 1 else 0)) (hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0))) ({x :e B | P x}) ({f x | x :e {x :e A | P (f x)}}) (eq_trans_i (hl_rep (B) (hl_GSPEC B (fun GEN_PVAR_2902 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2902 (hl_chip B P x) x = 1 then 1 else 0))) ({v :e B | exists x :e B, hl_chip B P x = 1 /\ v = x}) ({x :e B | P x}) (hl_gspec_generic (B) (B) (fun x => hl_chip B P x) (fun x => x) (fun x Hx => (setexp_ap (B) (2) (hl_chip B P) (hl_chip_Pi (B) P) (x) Hx))) (eq_trans_i ({v :e B | exists x :e B, hl_chip B P x = 1 /\ v = x}) ({x :e B | hl_chip B P x = 1}) ({x :e B | P x}) (gspec_sep_form (B) (fun x => hl_chip B P x)) (Sep_ext_iff (B) (fun x => (hl_chip B P x) = 1) (fun x => P x) (fun x Hx => ((hl_chip_iff (B) P) (x) Hx))))) ((eq_trans_i (hl_rep (A) (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0))) ({v :e A | exists x :e A, hl_chip B P (hl_lam A f x) = 1 /\ v = x}) ({x :e A | P (f x)}) (hl_gspec_generic (A) (A) (fun x => hl_chip B P (hl_lam A f x)) (fun x => x) (fun x Hx => (setexp_ap (B) (2) (hl_chip B P) (hl_chip_Pi (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))) (eq_trans_i ({v :e A | exists x :e A, hl_chip B P (hl_lam A f x) = 1 /\ v = x}) ({x :e A | hl_chip B P (hl_lam A f x) = 1}) ({x :e A | P (f x)}) (gspec_sep_form (A) (fun x => hl_chip B P (hl_lam A f x))) (Sep_ext_iff (A) (fun x => (hl_chip B P (hl_lam A f x)) = 1) (fun x => P (f x)) (fun x Hx => (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0))) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_GSPEC A (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0)) (setexp_ap (2 :^: A) (2 :^: A) (hl_GSPEC A) ((hl_GSPEC_in) (A) HAne) (fun GEN_PVAR_2903 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun GEN_PVAR_2903 => if exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0) (fun GEN_PVAR_2903 HGEN_PVAR_2903 => (If_in_2 (exists x :e A, hl_SETSPEC A GEN_PVAR_2903 (hl_chip B P (hl_lam A f x)) x = 1)))))))))))) (H__L ((imp_forall_in (B) (fun y => exists x :e A, f x = y) (fun y => exists x :e A, hl_lam A f x = y) (fun y Hy => (imp_exists_in (A) (fun x => f x = y) (fun x => hl_lam A f x = y) (fun x Hx => (imp_eq (f x) (hl_lam A f x) (y) (y) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (y) (y) (fun q H => H))))))) H__hyp1))))) (H__top A B HAne HBne))).
Qed.
Theorem QUANTIFY_SURJECTION_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> (forall y :e B, exists x :e A, f x = y) -> (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ (forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}))) /\ forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}.
exact (QUANTIFY_SURJECTION_THM_bridge hlt_QUANTIFY_SURJECTION_THM).
Admitted.

// HOL Light: Multivariate/vectors.ml:10754 / QUANTIFY_SURJECTION_HIGHER_THM   (hash md5:a84ead531e0f5e813872d9d51228d2fb)
Theorem hlt_QUANTIFY_SURJECTION_HIGHER_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall P :e 2 :^: (B :^: hl_ty_cart R 1), (forall g :e B :^: hl_ty_cart R 1, P g = 1) <-> forall g :e A :^: hl_ty_cart R 1, P (hl_o A B (hl_ty_cart R 1) f g) = 1) /\ ((forall P :e 2 :^: (B :^: hl_ty_cart R 1), (exists g :e B :^: hl_ty_cart R 1, P g = 1) <-> exists g :e A :^: hl_ty_cart R 1, P (hl_o A B (hl_ty_cart R 1) f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B f l) = 1) /\ (forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B f l) = 1))))))))))) /\ ((forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (f x)) x = 1 then 1 else 0))) /\ ((forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B f s)) s = 1 then 1 else 0))) /\ forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B f) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B f l)) l = 1 then 1 else 0)))).
Admitted.
Theorem QUANTIFY_SURJECTION_HIGHER_THM_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall P :e 2 :^: (B :^: hl_ty_cart R 1), (forall g :e B :^: hl_ty_cart R 1, P g = 1) <-> forall g :e A :^: hl_ty_cart R 1, P (hl_o A B (hl_ty_cart R 1) f g) = 1) /\ ((forall P :e 2 :^: (B :^: hl_ty_cart R 1), (exists g :e B :^: hl_ty_cart R 1, P g = 1) <-> exists g :e A :^: hl_ty_cart R 1, P (hl_o A B (hl_ty_cart R 1) f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B f l) = 1) /\ (forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B f l) = 1))))))))))) /\ ((forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (f x)) x = 1 then 1 else 0))) /\ ((forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B f s)) s = 1 then 1 else 0))) /\ forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B f) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B f l)) l = 1 then 1 else 0))))) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> (forall y :e B, exists x :e A, f x = y) -> (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ (forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))))))))))) /\ ((forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) /\ ((forall Q:set -> prop, {s :e Power B | Q s} = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) /\ forall R0:set -> prop, {l :e finseq B | R0 l} = {seq_map f x | x :e {l :e finseq A | R0 (seq_map f l)}}))).
exact (fun H__top A B HAne HBne => ((imp_forall_fun (A) (B) (fun f => (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) f g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B f l) = 1) /\ (forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B f l) = 1))))))))))) /\ ((forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (f x)) x = 1 then 1 else 0))) /\ ((forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B f s)) s = 1 then 1 else 0))) /\ forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B f) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B f l)) l = 1 then 1 else 0))))) (fun f => (forall y :e B, exists x :e A, f x = y) -> (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ (forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))))))))))) /\ ((forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) /\ ((forall Q:set -> prop, {s :e Power B | Q s} = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) /\ forall R0:set -> prop, {l :e finseq B | R0 l} = {seq_map f x | x :e {l :e finseq A | R0 (seq_map f l)}}))) (fun f Hfc => (fun H__L : ((forall y :e B, exists x :e A, hl_lam A f x = y) -> ((forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (hl_lam A f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ (forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1))))))))))) /\ ((forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (hl_lam A f x)) x = 1 then 1 else 0))) /\ ((forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) /\ forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0)))))) => fun H__hyp1 : (forall y :e B, exists x :e A, f x = y) => (imp_and_dep ((forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (hl_lam A f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1))))))))))) ((forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))))))))))) ((forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (hl_lam A f x)) x = 1 then 1 else 0))) /\ ((forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) /\ forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0)))) ((forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) /\ ((forall Q:set -> prop, {s :e Power B | Q s} = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) /\ forall R0:set -> prop, {l :e finseq B | R0 l} = {seq_map f x | x :e {l :e finseq A | R0 (seq_map f l)}})) (imp_and_dep (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (hl_lam A f x) = 1) (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1)))))))))) ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l))))))))))) (imp_forall_pred (B) (fun P => (forall x :e B, P x = 1) <-> forall x :e A, P (hl_lam A f x) = 1) (fun P => (forall x :e B, P x) <-> forall x :e A, P (f x)) (fun P => (imp_iff (forall x :e B, hl_chip B P x = 1) (forall x :e B, P x) (forall x :e A, hl_chip B P (hl_lam A f x) = 1) (forall x :e A, P (f x)) (imp_forall_in (B) (fun x => hl_chip B P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip B P x = 1) (P x) ((hl_chip_iff (B) P) (x) Hx)))) (imp_forall_in (B) (fun x => P x) (fun x => hl_chip B P x = 1) (fun x Hx => (iffER (hl_chip B P x = 1) (P x) ((hl_chip_iff (B) P) (x) Hx)))) (imp_forall_in (A) (fun x => hl_chip B P (hl_lam A f x) = 1) (fun x => P (f x)) (fun x Hx => (iffEL (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))))) (imp_forall_in (A) (fun x => P (f x)) (fun x => hl_chip B P (hl_lam A f x) = 1) (fun x Hx => (iffER (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))))) (fun H__and5 : (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) => (imp_and_dep (forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) (forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1))))))))) ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))))))))) (imp_forall_pred (B) (fun P => (exists x :e B, P x = 1) <-> exists x :e A, P (hl_lam A f x) = 1) (fun P => (exists x :e B, P x) <-> exists x :e A, P (f x)) (fun P => (imp_iff (exists x :e B, hl_chip B P x = 1) (exists x :e B, P x) (exists x :e A, hl_chip B P (hl_lam A f x) = 1) (exists x :e A, P (f x)) (imp_exists_in (B) (fun x => hl_chip B P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip B P x = 1) (P x) ((hl_chip_iff (B) P) (x) Hx)))) (imp_exists_in (B) (fun x => P x) (fun x => hl_chip B P x = 1) (fun x Hx => (iffER (hl_chip B P x = 1) (P x) ((hl_chip_iff (B) P) (x) Hx)))) (imp_exists_in (A) (fun x => hl_chip B P (hl_lam A f x) = 1) (fun x => P (f x)) (fun x Hx => (iffEL (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))))) (imp_exists_in (A) (fun x => P (f x)) (fun x => hl_chip B P (hl_lam A f x) = 1) (fun x Hx => (iffER (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))))) (fun H__and11 : (forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) => (imp_and_dep (forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) (forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1)))))))) ((forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l))))))))) (imp_forall_pred_rep (2 :^: B) (fun hl__x:set => hl_rep (B) hl__x) (fun Q => (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) (fun Q => (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) (fun Q => (imp_iff (forall s :e 2 :^: B, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (forall s c= B, Q s) (forall s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (forall s c= A, Q {f x | x :e s}) (imp_forall_sub (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (fun s => Q s) (fun s Hss => (iffEL (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_chi B s) = 1) (Q s) ((hl_rep_chi (B) s Hss) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_chi B s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_chi B s) (hl_chi_Pi (B) s)))))) (imp_forall_sub_rev (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (fun s => Q s) (fun s Hs => (iffER (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (Q (hl_rep B s)) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (s) Hs)))) (imp_forall_sub (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (fun s => Q {f x | x :e s}) (fun s Hss => (iffEL (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (Q {f x | x :e s}) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_chi A s) (hl_chi_Pi (A) s))))))) (imp_forall_sub_rev (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (fun s => Q {f x | x :e s}) (fun s Hs => (iffER (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (Q {f x | x :e hl_rep A s}) (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs))))))))) (fun H__and17 : (forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) => (imp_and_dep (forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) (forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1))))))) ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))))))) (imp_forall_pred_rep (2 :^: B) (fun hl__x:set => hl_rep (B) hl__x) (fun Q => (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B (hl_lam A f) s) = 1) (fun Q => (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) (fun Q => (imp_iff (exists s :e 2 :^: B, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (exists s c= B, Q s) (exists s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (exists s c= A, Q {f x | x :e s}) (imp_exists_sub (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (fun s => Q s) (fun s Hs => (iffEL (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (Q (hl_rep B s)) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (s) Hs)))) (imp_exists_sub_rev (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1) (fun s => Q s) (fun s Hss => (iffER (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_chi B s) = 1) (Q s) ((hl_rep_chi (B) s Hss) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_chi B s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_chi B s) (hl_chi_Pi (B) s)))))) (imp_exists_sub (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (fun s => Q {f x | x :e s}) (fun s Hs => (iffEL (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (Q {f x | x :e hl_rep A s}) (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs)))))) (imp_exists_sub_rev (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1) (fun s => Q {f x | x :e s}) (fun s Hss => (iffER (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1) (Q {f x | x :e s}) (((hl_rep_chi (A) s Hss) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_chi A s) (hl_chi_Pi (A) s))) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) (hl_chi A s)) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_chi A s) (hl_chi_Pi (A) s)))))))))) (fun H__and23 : (forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) => (imp_and_dep (forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1)))))) ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l))))))) (imp_forall_pred_rep (2 :^: (2 :^: B)) (fun hl__x:set => hl_rep2 (B) hl__x) (fun Q => (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (fun Q => (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (fun Q => (imp_iff (forall s :e 2 :^: (2 :^: B), hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) s = 1) (forall s c= Power B, Q s) (forall s :e 2 :^: (2 :^: A), hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (imp_forall_sub2 (B) (fun s => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) s = 1) (fun s => Q s) (fun s Hss => (iffEL (hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_chi2 B s) = 1) (Q s) ((hl_rep2_chi2 (B) s Hss) (fun hl__u hl__v => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_chi2 B s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x))) (hl_chi2 B s) (hl_chi2_Pi (B) s)))))) (imp_forall_sub2_rev (B) (fun s => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) s = 1) (fun s => Q s) (fun s Hs => (iffER (hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) s = 1) (Q (hl_rep2 B s)) ((hl_chip_iff (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x))) (s) Hs)))) (imp_forall_sub2 (A) (fun s => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (fun s => Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (fun s Hss => (iffEL (hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_chi2 A s)) = 1) (Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (((hl_rep2_chi2 (A) s Hss) (fun hl__u hl__v => hl_rep2 B (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_chi2 A s)) = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e hl__u}) ((hl_IMAGE_compat_pow12) (A) (B) HAne HBne (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) ((pw_eta_repfun (2 :^: A) (B) (hl_IMAGE A B (hl_lam A f)) (fun hl__x:set => (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) (hl_rep A hl__x)) (rep_of_pw2 (2 :^: A) (B) (fun x :e 2 :^: A => hl_IMAGE A B (hl_lam A f) x) (fun x x0 => (fun x:set => fun x0:set => x0 :e {f x0 | x0 :e x}) (hl_rep A x) x0) (fun x Hx hl__a Hhl__a => (lam_subset_pw (2 :^: A) (B) (fun x:set => hl_IMAGE A B (hl_lam A f) x) ({f x0 | x0 :e hl_rep A x}) x Hx hl__a Hhl__a ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (x) Hx)))))) (hl_chi2 A s) (hl_chi2_Pi (A) s))) (fun hl__u hl__v => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_chi2 A s)) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x))) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_chi2 A s)) (setexp_ap (2 :^: (2 :^: A)) (2 :^: (2 :^: B)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f))) (setexp_ap (2 :^: B :^: (2 :^: A)) (2 :^: (2 :^: B) :^: (2 :^: (2 :^: A))) (hl_IMAGE (2 :^: A) (2 :^: B)) ((hl_IMAGE_in) (2 :^: A) (2 :^: B) (setexp_nonempty (A) (2) two_nonempty) (setexp_nonempty (B) (2) two_nonempty)) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc))) (hl_chi2 A s) (hl_chi2_Pi (A) s))))))) (imp_forall_sub2_rev (A) (fun s => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (fun s => Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (fun s Hs => (iffER (hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e hl_rep2 A s}) (((hl_IMAGE_compat_pow12) (A) (B) HAne HBne (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) ((pw_eta_repfun (2 :^: A) (B) (hl_IMAGE A B (hl_lam A f)) (fun hl__x:set => (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) (hl_rep A hl__x)) (rep_of_pw2 (2 :^: A) (B) (fun x :e 2 :^: A => hl_IMAGE A B (hl_lam A f) x) (fun x x0 => (fun x:set => fun x0:set => x0 :e {f x0 | x0 :e x}) (hl_rep A x) x0) (fun x Hx hl__a Hhl__a => (lam_subset_pw (2 :^: A) (B) (fun x:set => hl_IMAGE A B (hl_lam A f) x) ({f x0 | x0 :e hl_rep A x}) x Hx hl__a Hhl__a ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (x) Hx)))))) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x))) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) (setexp_ap (2 :^: (2 :^: A)) (2 :^: (2 :^: B)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f))) (setexp_ap (2 :^: B :^: (2 :^: A)) (2 :^: (2 :^: B) :^: (2 :^: (2 :^: A))) (hl_IMAGE (2 :^: A) (2 :^: B)) ((hl_IMAGE_in) (2 :^: A) (2 :^: B) (setexp_nonempty (A) (2) two_nonempty) (setexp_nonempty (B) (2) two_nonempty)) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc))) (s) Hs))))))))) (fun H__and29 : (forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) => (imp_and_dep (forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1))))) ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))))) (imp_forall_pred_rep (2 :^: (2 :^: B)) (fun hl__x:set => hl_rep2 (B) hl__x) (fun Q => (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (fun Q => (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (fun Q => (imp_iff (exists s :e 2 :^: (2 :^: B), hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) s = 1) (exists s c= Power B, Q s) (exists s :e 2 :^: (2 :^: A), hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (imp_exists_sub2 (B) (fun s => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) s = 1) (fun s => Q s) (fun s Hs => (iffEL (hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) s = 1) (Q (hl_rep2 B s)) ((hl_chip_iff (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x))) (s) Hs)))) (imp_exists_sub2_rev (B) (fun s => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) s = 1) (fun s => Q s) (fun s Hss => (iffER (hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_chi2 B s) = 1) (Q s) ((hl_rep2_chi2 (B) s Hss) (fun hl__u hl__v => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_chi2 B s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x))) (hl_chi2 B s) (hl_chi2_Pi (B) s)))))) (imp_exists_sub2 (A) (fun s => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (fun s => Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (fun s Hs => (iffEL (hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e hl_rep2 A s}) (((hl_IMAGE_compat_pow12) (A) (B) HAne HBne (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) ((pw_eta_repfun (2 :^: A) (B) (hl_IMAGE A B (hl_lam A f)) (fun hl__x:set => (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) (hl_rep A hl__x)) (rep_of_pw2 (2 :^: A) (B) (fun x :e 2 :^: A => hl_IMAGE A B (hl_lam A f) x) (fun x x0 => (fun x:set => fun x0:set => x0 :e {f x0 | x0 :e x}) (hl_rep A x) x0) (fun x Hx hl__a Hhl__a => (lam_subset_pw (2 :^: A) (B) (fun x:set => hl_IMAGE A B (hl_lam A f) x) ({f x0 | x0 :e hl_rep A x}) x Hx hl__a Hhl__a ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (x) Hx)))))) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x))) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) (setexp_ap (2 :^: (2 :^: A)) (2 :^: (2 :^: B)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f))) (setexp_ap (2 :^: B :^: (2 :^: A)) (2 :^: (2 :^: B) :^: (2 :^: (2 :^: A))) (hl_IMAGE (2 :^: A) (2 :^: B)) ((hl_IMAGE_in) (2 :^: A) (2 :^: B) (setexp_nonempty (A) (2) two_nonempty) (setexp_nonempty (B) (2) two_nonempty)) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc))) (s) Hs)))))) (imp_exists_sub2_rev (A) (fun s => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) s) = 1) (fun s => Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (fun s Hss => (iffER (hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_chi2 A s)) = 1) (Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) (((hl_rep2_chi2 (A) s Hss) (fun hl__u hl__v => hl_rep2 B (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_chi2 A s)) = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e hl__u}) ((hl_IMAGE_compat_pow12) (A) (B) HAne HBne (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) ((pw_eta_repfun (2 :^: A) (B) (hl_IMAGE A B (hl_lam A f)) (fun hl__x:set => (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) (hl_rep A hl__x)) (rep_of_pw2 (2 :^: A) (B) (fun x :e 2 :^: A => hl_IMAGE A B (hl_lam A f) x) (fun x x0 => (fun x:set => fun x0:set => x0 :e {f x0 | x0 :e x}) (hl_rep A x) x0) (fun x Hx hl__a Hhl__a => (lam_subset_pw (2 :^: A) (B) (fun x:set => hl_IMAGE A B (hl_lam A f) x) ({f x0 | x0 :e hl_rep A x}) x Hx hl__a Hhl__a ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (x) Hx)))))) (hl_chi2 A s) (hl_chi2_Pi (A) s))) (fun hl__u hl__v => hl_chip (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_chi2 A s)) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: (2 :^: B)) (fun hl__x:set => Q (hl_rep2 B hl__x))) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_chi2 A s)) (setexp_ap (2 :^: (2 :^: A)) (2 :^: (2 :^: B)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f))) (setexp_ap (2 :^: B :^: (2 :^: A)) (2 :^: (2 :^: B) :^: (2 :^: (2 :^: A))) (hl_IMAGE (2 :^: A) (2 :^: B)) ((hl_IMAGE_in) (2 :^: A) (2 :^: B) (setexp_nonempty (A) (2) two_nonempty) (setexp_nonempty (B) (2) two_nonempty)) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc))) (hl_chi2 A s) (hl_chi2_Pi (A) s)))))))))) (fun H__and37 : (forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) => (imp_and_dep (forall P :e 2 :^: (B :^: (R :^: idx 1)), (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) ((forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1)))) ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l))))) (imp_forall_pred (B :^: (R :^: idx 1)) (fun P => (forall g :e B :^: (R :^: idx 1), P g = 1) <-> forall g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (fun P => (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) (fun P => (imp_iff (forall g :e B :^: (R :^: idx 1), hl_chip (B :^: (R :^: idx 1)) P g = 1) (forall g :e B :^: (R :^: idx 1), P g) (forall g :e A :^: (R :^: idx 1), hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) (imp_forall_in (B :^: (R :^: idx 1)) (fun g => hl_chip (B :^: (R :^: idx 1)) P g = 1) (fun g => P g) (fun g Hg => (iffEL (hl_chip (B :^: (R :^: idx 1)) P g = 1) (P g) ((hl_chip_iff (B :^: (R :^: idx 1)) P) (g) Hg)))) (imp_forall_in (B :^: (R :^: idx 1)) (fun g => P g) (fun g => hl_chip (B :^: (R :^: idx 1)) P g = 1) (fun g Hg => (iffER (hl_chip (B :^: (R :^: idx 1)) P g = 1) (P g) ((hl_chip_iff (B :^: (R :^: idx 1)) P) (g) Hg)))) (imp_forall_fun (R :^: idx 1) (A) (fun g => hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (fun g => P (fun x :e R :^: idx 1 => f (g x))) (fun g Hgc => (iffEL (hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) (hl_lam (R :^: idx 1) g)) = 1) (P (fun x :e R :^: idx 1 => f (g x))) ((fun_value_of_pw (R :^: idx 1) (B) (hl_o A B (R :^: idx 1) (hl_lam A f) (hl_lam (R :^: idx 1) g)) (fun x:set => f (g x)) (setexp_ap (A :^: (R :^: idx 1)) (B :^: (R :^: idx 1)) (hl_o A B (R :^: idx 1) (hl_lam A f)) (setexp_ap (B :^: A) (B :^: (R :^: idx 1) :^: (A :^: (R :^: idx 1))) (hl_o A B (R :^: idx 1)) ((hl_o_in) (A) (B) (R :^: idx 1) HAne HBne (hl_ty_cart_native_nonempty (R) (1) R_nonempty one_nonempty)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_lam (R :^: idx 1) g) (hl_lam_Pi (R :^: idx 1) (A) g Hgc)) (pw_o_fun (A) (B) (R :^: idx 1) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (hl_lam (R :^: idx 1) g) (hl_lam_Pi (R :^: idx 1) (A) g Hgc) (fun x:set => f (g x)) (fun x Hx => (eq_trans_i ((fun x :e R :^: idx 1 => hl_lam A f (hl_lam (R :^: idx 1) g x)) x) (hl_lam A f (hl_lam (R :^: idx 1) g x)) (f (g x)) (beta (R :^: idx 1) (fun x:set => hl_lam A f (hl_lam (R :^: idx 1) g x)) x Hx) (((hl_lam_ap (R :^: idx 1) g) (x) Hx) (fun hl__u hl__v => hl_lam A f (hl_lam (R :^: idx 1) g x) = f hl__u) ((hl_lam_ap (A) f) (hl_lam (R :^: idx 1) g x) (setexp_ap (R :^: idx 1) (A) (hl_lam (R :^: idx 1) g) (hl_lam_Pi (R :^: idx 1) (A) g Hgc) (x) Hx))))))) (fun hl__u hl__v => hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) (hl_lam (R :^: idx 1) g)) = 1 <-> P hl__u) ((hl_chip_iff (B :^: (R :^: idx 1)) P) (hl_o A B (R :^: idx 1) (hl_lam A f) (hl_lam (R :^: idx 1) g)) (setexp_ap (A :^: (R :^: idx 1)) (B :^: (R :^: idx 1)) (hl_o A B (R :^: idx 1) (hl_lam A f)) (setexp_ap (B :^: A) (B :^: (R :^: idx 1) :^: (A :^: (R :^: idx 1))) (hl_o A B (R :^: idx 1)) ((hl_o_in) (A) (B) (R :^: idx 1) HAne HBne (hl_ty_cart_native_nonempty (R) (1) R_nonempty one_nonempty)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_lam (R :^: idx 1) g) (hl_lam_Pi (R :^: idx 1) (A) g Hgc))))))) (imp_forall_fun_rev (R :^: idx 1) (A) (fun g => hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (fun g => P (fun x :e R :^: idx 1 => f (g x))) (fun g Hg => (iffER (hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (P (fun x :e R :^: idx 1 => f (g x))) ((fun_value_of_pw (R :^: idx 1) (B) (hl_o A B (R :^: idx 1) (hl_lam A f) g) (fun x:set => f (g x)) (setexp_ap (A :^: (R :^: idx 1)) (B :^: (R :^: idx 1)) (hl_o A B (R :^: idx 1) (hl_lam A f)) (setexp_ap (B :^: A) (B :^: (R :^: idx 1) :^: (A :^: (R :^: idx 1))) (hl_o A B (R :^: idx 1)) ((hl_o_in) (A) (B) (R :^: idx 1) HAne HBne (hl_ty_cart_native_nonempty (R) (1) R_nonempty one_nonempty)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (g) Hg) (pw_o_fun (A) (B) (R :^: idx 1) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (g) Hg (fun x:set => f (g x)) (fun x Hx => (eq_trans_i ((fun x :e R :^: idx 1 => hl_lam A f (g x)) x) (hl_lam A f (g x)) (f (g x)) (beta (R :^: idx 1) (fun x:set => hl_lam A f (g x)) x Hx) ((hl_lam_ap (A) f) (g x) (setexp_ap (R :^: idx 1) (A) (g) Hg (x) Hx)))))) (fun hl__u hl__v => hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1 <-> P hl__u) ((hl_chip_iff (B :^: (R :^: idx 1)) P) (hl_o A B (R :^: idx 1) (hl_lam A f) g) (setexp_ap (A :^: (R :^: idx 1)) (B :^: (R :^: idx 1)) (hl_o A B (R :^: idx 1) (hl_lam A f)) (setexp_ap (B :^: A) (B :^: (R :^: idx 1) :^: (A :^: (R :^: idx 1))) (hl_o A B (R :^: idx 1)) ((hl_o_in) (A) (B) (R :^: idx 1) HAne HBne (hl_ty_cart_native_nonempty (R) (1) R_nonempty one_nonempty)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (g) Hg))))))))) (fun H__and45 : (forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) => (imp_and_dep (forall P :e 2 :^: (B :^: (R :^: idx 1)), (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1))) ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))) (imp_forall_pred (B :^: (R :^: idx 1)) (fun P => (exists g :e B :^: (R :^: idx 1), P g = 1) <-> exists g :e A :^: (R :^: idx 1), P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (fun P => (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) (fun P => (imp_iff (exists g :e B :^: (R :^: idx 1), hl_chip (B :^: (R :^: idx 1)) P g = 1) (exists g :e B :^: (R :^: idx 1), P g) (exists g :e A :^: (R :^: idx 1), hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) (imp_exists_in (B :^: (R :^: idx 1)) (fun g => hl_chip (B :^: (R :^: idx 1)) P g = 1) (fun g => P g) (fun g Hg => (iffEL (hl_chip (B :^: (R :^: idx 1)) P g = 1) (P g) ((hl_chip_iff (B :^: (R :^: idx 1)) P) (g) Hg)))) (imp_exists_in (B :^: (R :^: idx 1)) (fun g => P g) (fun g => hl_chip (B :^: (R :^: idx 1)) P g = 1) (fun g Hg => (iffER (hl_chip (B :^: (R :^: idx 1)) P g = 1) (P g) ((hl_chip_iff (B :^: (R :^: idx 1)) P) (g) Hg)))) (imp_exists_fun (R :^: idx 1) (A) (fun g => hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (fun g => P (fun x :e R :^: idx 1 => f (g x))) (fun g Hg => (iffEL (hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (P (fun x :e R :^: idx 1 => f (g x))) ((fun_value_of_pw (R :^: idx 1) (B) (hl_o A B (R :^: idx 1) (hl_lam A f) g) (fun x:set => f (g x)) (setexp_ap (A :^: (R :^: idx 1)) (B :^: (R :^: idx 1)) (hl_o A B (R :^: idx 1) (hl_lam A f)) (setexp_ap (B :^: A) (B :^: (R :^: idx 1) :^: (A :^: (R :^: idx 1))) (hl_o A B (R :^: idx 1)) ((hl_o_in) (A) (B) (R :^: idx 1) HAne HBne (hl_ty_cart_native_nonempty (R) (1) R_nonempty one_nonempty)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (g) Hg) (pw_o_fun (A) (B) (R :^: idx 1) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (g) Hg (fun x:set => f (g x)) (fun x Hx => (eq_trans_i ((fun x :e R :^: idx 1 => hl_lam A f (g x)) x) (hl_lam A f (g x)) (f (g x)) (beta (R :^: idx 1) (fun x:set => hl_lam A f (g x)) x Hx) ((hl_lam_ap (A) f) (g x) (setexp_ap (R :^: idx 1) (A) (g) Hg (x) Hx)))))) (fun hl__u hl__v => hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1 <-> P hl__u) ((hl_chip_iff (B :^: (R :^: idx 1)) P) (hl_o A B (R :^: idx 1) (hl_lam A f) g) (setexp_ap (A :^: (R :^: idx 1)) (B :^: (R :^: idx 1)) (hl_o A B (R :^: idx 1) (hl_lam A f)) (setexp_ap (B :^: A) (B :^: (R :^: idx 1) :^: (A :^: (R :^: idx 1))) (hl_o A B (R :^: idx 1)) ((hl_o_in) (A) (B) (R :^: idx 1) HAne HBne (hl_ty_cart_native_nonempty (R) (1) R_nonempty one_nonempty)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (g) Hg)))))) (imp_exists_fun_rev (R :^: idx 1) (A) (fun g => hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) g) = 1) (fun g => P (fun x :e R :^: idx 1 => f (g x))) (fun g Hgc => (iffER (hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) (hl_lam (R :^: idx 1) g)) = 1) (P (fun x :e R :^: idx 1 => f (g x))) ((fun_value_of_pw (R :^: idx 1) (B) (hl_o A B (R :^: idx 1) (hl_lam A f) (hl_lam (R :^: idx 1) g)) (fun x:set => f (g x)) (setexp_ap (A :^: (R :^: idx 1)) (B :^: (R :^: idx 1)) (hl_o A B (R :^: idx 1) (hl_lam A f)) (setexp_ap (B :^: A) (B :^: (R :^: idx 1) :^: (A :^: (R :^: idx 1))) (hl_o A B (R :^: idx 1)) ((hl_o_in) (A) (B) (R :^: idx 1) HAne HBne (hl_ty_cart_native_nonempty (R) (1) R_nonempty one_nonempty)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_lam (R :^: idx 1) g) (hl_lam_Pi (R :^: idx 1) (A) g Hgc)) (pw_o_fun (A) (B) (R :^: idx 1) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (hl_lam (R :^: idx 1) g) (hl_lam_Pi (R :^: idx 1) (A) g Hgc) (fun x:set => f (g x)) (fun x Hx => (eq_trans_i ((fun x :e R :^: idx 1 => hl_lam A f (hl_lam (R :^: idx 1) g x)) x) (hl_lam A f (hl_lam (R :^: idx 1) g x)) (f (g x)) (beta (R :^: idx 1) (fun x:set => hl_lam A f (hl_lam (R :^: idx 1) g x)) x Hx) (((hl_lam_ap (R :^: idx 1) g) (x) Hx) (fun hl__u hl__v => hl_lam A f (hl_lam (R :^: idx 1) g x) = f hl__u) ((hl_lam_ap (A) f) (hl_lam (R :^: idx 1) g x) (setexp_ap (R :^: idx 1) (A) (hl_lam (R :^: idx 1) g) (hl_lam_Pi (R :^: idx 1) (A) g Hgc) (x) Hx))))))) (fun hl__u hl__v => hl_chip (B :^: (R :^: idx 1)) P (hl_o A B (R :^: idx 1) (hl_lam A f) (hl_lam (R :^: idx 1) g)) = 1 <-> P hl__u) ((hl_chip_iff (B :^: (R :^: idx 1)) P) (hl_o A B (R :^: idx 1) (hl_lam A f) (hl_lam (R :^: idx 1) g)) (setexp_ap (A :^: (R :^: idx 1)) (B :^: (R :^: idx 1)) (hl_o A B (R :^: idx 1) (hl_lam A f)) (setexp_ap (B :^: A) (B :^: (R :^: idx 1) :^: (A :^: (R :^: idx 1))) (hl_o A B (R :^: idx 1)) ((hl_o_in) (A) (B) (R :^: idx 1) HAne HBne (hl_ty_cart_native_nonempty (R) (1) R_nonempty one_nonempty)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_lam (R :^: idx 1) g) (hl_lam_Pi (R :^: idx 1) (A) g Hgc)))))))))) (fun H__and53 : (forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) => (imp_and_dep (forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) (forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1)) ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l))) (imp_forall_pred (B :^: omega) (fun P => (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) (fun P => (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) (fun P => (imp_iff (forall g :e B :^: omega, hl_chip (B :^: omega) P g = 1) (forall g :e B :^: omega, P g) (forall g :e A :^: omega, hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1) (forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) (imp_forall_in (B :^: omega) (fun g => hl_chip (B :^: omega) P g = 1) (fun g => P g) (fun g Hg => (iffEL (hl_chip (B :^: omega) P g = 1) (P g) ((hl_chip_iff (B :^: omega) P) (g) Hg)))) (imp_forall_in (B :^: omega) (fun g => P g) (fun g => hl_chip (B :^: omega) P g = 1) (fun g Hg => (iffER (hl_chip (B :^: omega) P g = 1) (P g) ((hl_chip_iff (B :^: omega) P) (g) Hg)))) (imp_forall_fun (omega) (A) (fun g => hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1) (fun g => P (fun x :e omega => f (g x))) (fun g Hgc => (iffEL (hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) (hl_lam omega g)) = 1) (P (fun x :e omega => f (g x))) ((fun_value_of_pw (omega) (B) (hl_o A B omega (hl_lam A f) (hl_lam omega g)) (fun x:set => f (g x)) (setexp_ap (A :^: omega) (B :^: omega) (hl_o A B omega (hl_lam A f)) (setexp_ap (B :^: A) (B :^: omega :^: (A :^: omega)) (hl_o A B omega) ((hl_o_in) (A) (B) (omega) HAne HBne omega_nonempty) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_lam omega g) (hl_lam_Pi (omega) (A) g Hgc)) (pw_o_fun (A) (B) (omega) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (hl_lam omega g) (hl_lam_Pi (omega) (A) g Hgc) (fun x:set => f (g x)) (fun x Hx => (eq_trans_i ((fun x :e omega => hl_lam A f (hl_lam omega g x)) x) (hl_lam A f (hl_lam omega g x)) (f (g x)) (beta (omega) (fun x:set => hl_lam A f (hl_lam omega g x)) x Hx) (((hl_lam_ap (omega) g) (x) Hx) (fun hl__u hl__v => hl_lam A f (hl_lam omega g x) = f hl__u) ((hl_lam_ap (A) f) (hl_lam omega g x) (setexp_ap (omega) (A) (hl_lam omega g) (hl_lam_Pi (omega) (A) g Hgc) (x) Hx))))))) (fun hl__u hl__v => hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) (hl_lam omega g)) = 1 <-> P hl__u) ((hl_chip_iff (B :^: omega) P) (hl_o A B omega (hl_lam A f) (hl_lam omega g)) (setexp_ap (A :^: omega) (B :^: omega) (hl_o A B omega (hl_lam A f)) (setexp_ap (B :^: A) (B :^: omega :^: (A :^: omega)) (hl_o A B omega) ((hl_o_in) (A) (B) (omega) HAne HBne omega_nonempty) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_lam omega g) (hl_lam_Pi (omega) (A) g Hgc))))))) (imp_forall_fun_rev (omega) (A) (fun g => hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1) (fun g => P (fun x :e omega => f (g x))) (fun g Hg => (iffER (hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1) (P (fun x :e omega => f (g x))) ((fun_value_of_pw (omega) (B) (hl_o A B omega (hl_lam A f) g) (fun x:set => f (g x)) (setexp_ap (A :^: omega) (B :^: omega) (hl_o A B omega (hl_lam A f)) (setexp_ap (B :^: A) (B :^: omega :^: (A :^: omega)) (hl_o A B omega) ((hl_o_in) (A) (B) (omega) HAne HBne omega_nonempty) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (g) Hg) (pw_o_fun (A) (B) (omega) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (g) Hg (fun x:set => f (g x)) (fun x Hx => (eq_trans_i ((fun x :e omega => hl_lam A f (g x)) x) (hl_lam A f (g x)) (f (g x)) (beta (omega) (fun x:set => hl_lam A f (g x)) x Hx) ((hl_lam_ap (A) f) (g x) (setexp_ap (omega) (A) (g) Hg (x) Hx)))))) (fun hl__u hl__v => hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1 <-> P hl__u) ((hl_chip_iff (B :^: omega) P) (hl_o A B omega (hl_lam A f) g) (setexp_ap (A :^: omega) (B :^: omega) (hl_o A B omega (hl_lam A f)) (setexp_ap (B :^: A) (B :^: omega :^: (A :^: omega)) (hl_o A B omega) ((hl_o_in) (A) (B) (omega) HAne HBne omega_nonempty) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (g) Hg))))))))) (fun H__and61 : (forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) => (imp_and_dep (forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) (forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) /\ forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)) (imp_forall_pred (B :^: omega) (fun P => (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega (hl_lam A f) g) = 1) (fun P => (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) (fun P => (imp_iff (exists g :e B :^: omega, hl_chip (B :^: omega) P g = 1) (exists g :e B :^: omega, P g) (exists g :e A :^: omega, hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1) (exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) (imp_exists_in (B :^: omega) (fun g => hl_chip (B :^: omega) P g = 1) (fun g => P g) (fun g Hg => (iffEL (hl_chip (B :^: omega) P g = 1) (P g) ((hl_chip_iff (B :^: omega) P) (g) Hg)))) (imp_exists_in (B :^: omega) (fun g => P g) (fun g => hl_chip (B :^: omega) P g = 1) (fun g Hg => (iffER (hl_chip (B :^: omega) P g = 1) (P g) ((hl_chip_iff (B :^: omega) P) (g) Hg)))) (imp_exists_fun (omega) (A) (fun g => hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1) (fun g => P (fun x :e omega => f (g x))) (fun g Hg => (iffEL (hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1) (P (fun x :e omega => f (g x))) ((fun_value_of_pw (omega) (B) (hl_o A B omega (hl_lam A f) g) (fun x:set => f (g x)) (setexp_ap (A :^: omega) (B :^: omega) (hl_o A B omega (hl_lam A f)) (setexp_ap (B :^: A) (B :^: omega :^: (A :^: omega)) (hl_o A B omega) ((hl_o_in) (A) (B) (omega) HAne HBne omega_nonempty) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (g) Hg) (pw_o_fun (A) (B) (omega) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (g) Hg (fun x:set => f (g x)) (fun x Hx => (eq_trans_i ((fun x :e omega => hl_lam A f (g x)) x) (hl_lam A f (g x)) (f (g x)) (beta (omega) (fun x:set => hl_lam A f (g x)) x Hx) ((hl_lam_ap (A) f) (g x) (setexp_ap (omega) (A) (g) Hg (x) Hx)))))) (fun hl__u hl__v => hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1 <-> P hl__u) ((hl_chip_iff (B :^: omega) P) (hl_o A B omega (hl_lam A f) g) (setexp_ap (A :^: omega) (B :^: omega) (hl_o A B omega (hl_lam A f)) (setexp_ap (B :^: A) (B :^: omega :^: (A :^: omega)) (hl_o A B omega) ((hl_o_in) (A) (B) (omega) HAne HBne omega_nonempty) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (g) Hg)))))) (imp_exists_fun_rev (omega) (A) (fun g => hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) g) = 1) (fun g => P (fun x :e omega => f (g x))) (fun g Hgc => (iffER (hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) (hl_lam omega g)) = 1) (P (fun x :e omega => f (g x))) ((fun_value_of_pw (omega) (B) (hl_o A B omega (hl_lam A f) (hl_lam omega g)) (fun x:set => f (g x)) (setexp_ap (A :^: omega) (B :^: omega) (hl_o A B omega (hl_lam A f)) (setexp_ap (B :^: A) (B :^: omega :^: (A :^: omega)) (hl_o A B omega) ((hl_o_in) (A) (B) (omega) HAne HBne omega_nonempty) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_lam omega g) (hl_lam_Pi (omega) (A) g Hgc)) (pw_o_fun (A) (B) (omega) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (hl_lam omega g) (hl_lam_Pi (omega) (A) g Hgc) (fun x:set => f (g x)) (fun x Hx => (eq_trans_i ((fun x :e omega => hl_lam A f (hl_lam omega g x)) x) (hl_lam A f (hl_lam omega g x)) (f (g x)) (beta (omega) (fun x:set => hl_lam A f (hl_lam omega g x)) x Hx) (((hl_lam_ap (omega) g) (x) Hx) (fun hl__u hl__v => hl_lam A f (hl_lam omega g x) = f hl__u) ((hl_lam_ap (A) f) (hl_lam omega g x) (setexp_ap (omega) (A) (hl_lam omega g) (hl_lam_Pi (omega) (A) g Hgc) (x) Hx))))))) (fun hl__u hl__v => hl_chip (B :^: omega) P (hl_o A B omega (hl_lam A f) (hl_lam omega g)) = 1 <-> P hl__u) ((hl_chip_iff (B :^: omega) P) (hl_o A B omega (hl_lam A f) (hl_lam omega g)) (setexp_ap (A :^: omega) (B :^: omega) (hl_o A B omega (hl_lam A f)) (setexp_ap (B :^: A) (B :^: omega :^: (A :^: omega)) (hl_o A B omega) ((hl_o_in) (A) (B) (omega) HAne HBne omega_nonempty) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (hl_lam omega g) (hl_lam_Pi (omega) (A) g Hgc)))))))))) (fun H__and69 : (forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) => (imp_and_dep (forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) (forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) (forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) (forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)) (imp_forall_pred (finseq B) (fun Q => (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) (fun Q => (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) (fun Q => (imp_iff (forall l :e finseq B, hl_chip (finseq B) Q l = 1) (forall l :e finseq B, Q l) (forall l :e finseq A, hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (forall l :e finseq A, Q (seq_map f l)) (imp_forall_in (finseq B) (fun l => hl_chip (finseq B) Q l = 1) (fun l => Q l) (fun l Hl => (iffEL (hl_chip (finseq B) Q l = 1) (Q l) ((hl_chip_iff (finseq B) Q) (l) Hl)))) (imp_forall_in (finseq B) (fun l => Q l) (fun l => hl_chip (finseq B) Q l = 1) (fun l Hl => (iffER (hl_chip (finseq B) Q l = 1) (Q l) ((hl_chip_iff (finseq B) Q) (l) Hl)))) (imp_forall_in (finseq A) (fun l => hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (fun l => Q (seq_map f l)) (fun l Hl => (iffEL (hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (Q (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1 <-> Q hl__u) ((hl_chip_iff (finseq B) Q) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))))) (imp_forall_in (finseq A) (fun l => Q (seq_map f l)) (fun l => hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (fun l Hl => (iffER (hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (Q (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1 <-> Q hl__u) ((hl_chip_iff (finseq B) Q) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl))))))))) (fun H__and77 : (forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) => (imp_forall_pred (finseq B) (fun Q => (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B (hl_lam A f) l) = 1) (fun Q => (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)) (fun Q => (imp_iff (exists l :e finseq B, hl_chip (finseq B) Q l = 1) (exists l :e finseq B, Q l) (exists l :e finseq A, hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (exists l :e finseq A, Q (seq_map f l)) (imp_exists_in (finseq B) (fun l => hl_chip (finseq B) Q l = 1) (fun l => Q l) (fun l Hl => (iffEL (hl_chip (finseq B) Q l = 1) (Q l) ((hl_chip_iff (finseq B) Q) (l) Hl)))) (imp_exists_in (finseq B) (fun l => Q l) (fun l => hl_chip (finseq B) Q l = 1) (fun l Hl => (iffER (hl_chip (finseq B) Q l = 1) (Q l) ((hl_chip_iff (finseq B) Q) (l) Hl)))) (imp_exists_in (finseq A) (fun l => hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (fun l => Q (seq_map f l)) (fun l Hl => (iffEL (hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (Q (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1 <-> Q hl__u) ((hl_chip_iff (finseq B) Q) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))))) (imp_exists_in (finseq A) (fun l => Q (seq_map f l)) (fun l => hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (fun l Hl => (iffER (hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1) (Q (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_chip (finseq B) Q (hl_MAP A B (hl_lam A f) l) = 1 <-> Q hl__u) ((hl_chip_iff (finseq B) Q) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl))))))))))))))))))))))))))))))) (fun H__and4 : ((forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))))))))))) => (imp_and_dep (forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (hl_lam A f x)) x = 1 then 1 else 0))) (forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) ((forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) /\ forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0))) ((forall Q:set -> prop, {s :e Power B | Q s} = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) /\ forall R0:set -> prop, {l :e finseq B | R0 l} = {seq_map f x | x :e {l :e finseq A | R0 (seq_map f l)}}) (imp_forall_pred (B) (fun P => hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (hl_lam A f x)) x = 1 then 1 else 0))) (fun P => {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) (fun P => (rep_eq_fwd (B) (hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (hl_chip B P x) x = 1 then 1 else 0)) (hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0))) ({x :e B | P x}) ({f x | x :e {x :e A | P (f x)}}) (eq_trans_i (hl_rep (B) (hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (hl_chip B P x) x = 1 then 1 else 0))) ({v :e B | exists x :e B, hl_chip B P x = 1 /\ v = x}) ({x :e B | P x}) (hl_gspec_generic (B) (B) (fun x => hl_chip B P x) (fun x => x) (fun x Hx => (setexp_ap (B) (2) (hl_chip B P) (hl_chip_Pi (B) P) (x) Hx))) (eq_trans_i ({v :e B | exists x :e B, hl_chip B P x = 1 /\ v = x}) ({x :e B | hl_chip B P x = 1}) ({x :e B | P x}) (gspec_sep_form (B) (fun x => hl_chip B P x)) (Sep_ext_iff (B) (fun x => (hl_chip B P x) = 1) (fun x => P x) (fun x Hx => ((hl_chip_iff (B) P) (x) Hx))))) ((eq_trans_i (hl_rep (A) (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0))) ({v :e A | exists x :e A, hl_chip B P (hl_lam A f x) = 1 /\ v = x}) ({x :e A | P (f x)}) (hl_gspec_generic (A) (A) (fun x => hl_chip B P (hl_lam A f x)) (fun x => x) (fun x Hx => (setexp_ap (B) (2) (hl_chip B P) (hl_chip_Pi (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))) (eq_trans_i ({v :e A | exists x :e A, hl_chip B P (hl_lam A f x) = 1 /\ v = x}) ({x :e A | hl_chip B P (hl_lam A f x) = 1}) ({x :e A | P (f x)}) (gspec_sep_form (A) (fun x => hl_chip B P (hl_lam A f x))) (Sep_ext_iff (A) (fun x => (hl_chip B P (hl_lam A f x)) = 1) (fun x => P (f x)) (fun x Hx => (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))) (fun hl__u hl__v => hl_rep B (hl_IMAGE A B (hl_lam A f) (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0))) = {f x | x :e hl__u}) ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0)) (setexp_ap (2 :^: A) (2 :^: A) (hl_GSPEC A) ((hl_GSPEC_in) (A) HAne) (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun GEN_PVAR_2905 => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (hl_chip B P (hl_lam A f x)) x = 1 then 1 else 0) (fun GEN_PVAR_2905 HGEN_PVAR_2905 => (If_in_2 (exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (hl_chip B P (hl_lam A f x)) x = 1)))))))))) (fun H__and88 : (forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) => (imp_and_dep (forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) (forall Q:set -> prop, {s :e Power B | Q s} = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) (forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0))) (forall R0:set -> prop, {l :e finseq B | R0 l} = {seq_map f x | x :e {l :e finseq A | R0 (seq_map f l)}}) (imp_forall_pred_rep (2 :^: B) (fun hl__x:set => hl_rep (B) hl__x) (fun Q => hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) (fun Q => {s :e Power B | Q s} = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) (fun Q => (rep2_eq_fwd (B) (hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s) s = 1 then 1 else 0)) (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) ({s :e Power B | Q s}) ({{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) (eq_trans_i (hl_rep2 (B) (hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s) s = 1 then 1 else 0))) ({hl_rep B v | v :e {v :e 2 :^: B | exists s :e 2 :^: B, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1 /\ v = s}}) ({s :e Power B | Q s}) (f_equal (fun hl__u => {hl_rep (B) hl__w | hl__w :e hl__u}) (hl_rep (2 :^: B) (hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s) s = 1 then 1 else 0))) ({v :e 2 :^: B | exists s :e 2 :^: B, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s = 1 /\ v = s}) (hl_gspec_generic (2 :^: B) (2 :^: B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s) (fun s => s) (fun s Hs => (setexp_ap (2 :^: B) (2) (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_chip_Pi (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (s) Hs)))) (gspec_sep_form_sub2 (B) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) s) (fun s => Q s) (fun s Hs => ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (s) Hs)))) ((eq_trans_i (hl_rep2 (A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) ({hl_rep A v | v :e {v :e 2 :^: A | exists s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 /\ v = s}}) ({s :e Power A | Q {f x | x :e s}}) (f_equal (fun hl__u => {hl_rep (A) hl__w | hl__w :e hl__u}) (hl_rep (2 :^: A) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) ({v :e 2 :^: A | exists s :e 2 :^: A, hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 /\ v = s}) (hl_gspec_generic (2 :^: A) (2 :^: A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) (fun s => s) (fun s Hs => (setexp_ap (2 :^: B) (2) (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_chip_Pi (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs))))) (gspec_sep_form_sub2 (A) (fun s => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) (fun s => Q {f x | x :e s}) (fun s Hs => (((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (s) Hs) (fun hl__u hl__v => hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s) = 1 <-> Q hl__u) ((hl_chip_iff (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x))) (hl_IMAGE A B (hl_lam A f) s) (setexp_ap (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (s) Hs)))))) (fun hl__u hl__v => hl_rep2 B (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B (hl_lam A f)) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0))) = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e hl__u}) ((hl_IMAGE_compat_pow12) (A) (B) HAne HBne (hl_IMAGE A B (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: B :^: (2 :^: A)) (hl_IMAGE A B) ((hl_IMAGE_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) ((pw_eta_repfun (2 :^: A) (B) (hl_IMAGE A B (hl_lam A f)) (fun hl__x:set => (fun x:set => {x0 :e B | x0 :e {f x0 | x0 :e x}}) (hl_rep A hl__x)) (rep_of_pw2 (2 :^: A) (B) (fun x :e 2 :^: A => hl_IMAGE A B (hl_lam A f) x) (fun x x0 => (fun x:set => fun x0:set => x0 :e {f x0 | x0 :e x}) (hl_rep A x) x0) (fun x Hx hl__a Hhl__a => (lam_subset_pw (2 :^: A) (B) (fun x:set => hl_IMAGE A B (hl_lam A f) x) ({f x0 | x0 :e hl_rep A x}) x Hx hl__a Hhl__a ((hl_IMAGE_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (x) Hx)))))) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0)) (setexp_ap (2 :^: (2 :^: A)) (2 :^: (2 :^: A)) (hl_GSPEC (2 :^: A)) ((hl_GSPEC_in) (2 :^: A) (setexp_nonempty (A) (2) two_nonempty)) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0) (lam_Pi (2 :^: A) (fun _ => 2) (fun GEN_PVAR_2907 => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) s = 1 then 1 else 0) (fun GEN_PVAR_2907 HGEN_PVAR_2907 => (If_in_2 (exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (hl_chip (2 :^: B) (fun hl__x:set => Q (hl_rep B hl__x)) (hl_IMAGE A B (hl_lam A f) s)) s = 1)))))))))) (fun H__and93 : (forall Q:set -> prop, {s :e Power B | Q s} = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) => (imp_forall_pred (finseq B) (fun R0 => hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R0 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R0 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0))) (fun R0 => {l :e finseq B | R0 l} = {seq_map f x | x :e {l :e finseq A | R0 (seq_map f l)}}) (fun R0 => (rep_eq_fwd (finseq B) (hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (hl_chip (finseq B) R0 l) l = 1 then 1 else 0)) (hl_IMAGE (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0))) ({l :e finseq B | R0 l}) ({seq_map f x | x :e {l :e finseq A | R0 (seq_map f l)}}) (eq_trans_i (hl_rep (finseq B) (hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (hl_chip (finseq B) R0 l) l = 1 then 1 else 0))) ({v :e finseq B | exists l :e finseq B, hl_chip (finseq B) R0 l = 1 /\ v = l}) ({l :e finseq B | R0 l}) (hl_gspec_generic (finseq B) (finseq B) (fun l => hl_chip (finseq B) R0 l) (fun l => l) (fun l Hl => (setexp_ap (finseq B) (2) (hl_chip (finseq B) R0) (hl_chip_Pi (finseq B) R0) (l) Hl))) (eq_trans_i ({v :e finseq B | exists l :e finseq B, hl_chip (finseq B) R0 l = 1 /\ v = l}) ({l :e finseq B | hl_chip (finseq B) R0 l = 1}) ({l :e finseq B | R0 l}) (gspec_sep_form (finseq B) (fun l => hl_chip (finseq B) R0 l)) (Sep_ext_iff (finseq B) (fun l => (hl_chip (finseq B) R0 l) = 1) (fun l => R0 l) (fun l Hl => ((hl_chip_iff (finseq B) R0) (l) Hl))))) ((eq_trans_i (hl_rep (finseq A) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0))) ({v :e finseq A | exists l :e finseq A, hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l) = 1 /\ v = l}) ({l :e finseq A | R0 (seq_map f l)}) (hl_gspec_generic (finseq A) (finseq A) (fun l => hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) (fun l => l) (fun l Hl => (setexp_ap (finseq B) (2) (hl_chip (finseq B) R0) (hl_chip_Pi (finseq B) R0) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))) (eq_trans_i ({v :e finseq A | exists l :e finseq A, hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l) = 1 /\ v = l}) ({l :e finseq A | hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l) = 1}) ({l :e finseq A | R0 (seq_map f l)}) (gspec_sep_form (finseq A) (fun l => hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l))) (Sep_ext_iff (finseq A) (fun l => (hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) = 1) (fun l => R0 (seq_map f l)) (fun l Hl => (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l) = 1 <-> R0 hl__u) ((hl_chip_iff (finseq B) R0) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl))))))) (fun hl__u hl__v => hl_rep (finseq B) (hl_IMAGE (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0))) = {seq_map f x | x :e hl__u}) ((hl_IMAGE_compat) (finseq A) (finseq B) (finseq_nonempty (A)) (finseq_nonempty (B)) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => seq_map f x) ((pw_eta_fun (finseq A) (hl_MAP A B (hl_lam A f)) (fun x:set => seq_map f x) (fun x Hx => (eq_trans_i ((fun x :e finseq A => hl_MAP A B (hl_lam A f) x) x) (hl_MAP A B (hl_lam A f) x) (seq_map f x) (beta (finseq A) (fun x:set => hl_MAP A B (hl_lam A f) x) x Hx) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (x) Hx))))) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0)) (setexp_ap (2 :^: finseq A) (2 :^: finseq A) (hl_GSPEC (finseq A)) ((hl_GSPEC_in) (finseq A) (finseq_nonempty (A))) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0) (lam_Pi (finseq A) (fun _ => 2) (fun GEN_PVAR_2909 => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) l = 1 then 1 else 0) (fun GEN_PVAR_2909 HGEN_PVAR_2909 => (If_in_2 (exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (hl_chip (finseq B) R0 (hl_MAP A B (hl_lam A f) l)) l = 1)))))))))))))))) (H__L ((imp_forall_in (B) (fun y => exists x :e A, f x = y) (fun y => exists x :e A, hl_lam A f x = y) (fun y Hy => (imp_exists_in (A) (fun x => f x = y) (fun x => hl_lam A f x = y) (fun x Hx => (imp_eq (f x) (hl_lam A f x) (y) (y) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (y) (y) (fun q H => H))))))) H__hyp1))))) ((hl_ty_cart_native (R) (1) R_nonempty one_nonempty) (fun hl__u hl__v => forall f :e B :^: A, (forall y :e B, exists x :e A, f x = y) -> (forall P :e 2 :^: B, (forall x :e B, P x = 1) <-> forall x :e A, P (f x) = 1) /\ ((forall P :e 2 :^: B, (exists x :e B, P x = 1) <-> exists x :e A, P (f x) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (forall s :e 2 :^: B, Q s = 1) <-> forall s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: B), (exists s :e 2 :^: B, Q s = 1) <-> exists s :e 2 :^: A, Q (hl_IMAGE A B f s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (forall s :e 2 :^: (2 :^: B), Q s = 1) <-> forall s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall Q :e 2 :^: (2 :^: (2 :^: B)), (exists s :e 2 :^: (2 :^: B), Q s = 1) <-> exists s :e 2 :^: (2 :^: A), Q (hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) s) = 1) /\ ((forall P :e 2 :^: (B :^: hl__u), (forall g :e B :^: hl__u, P g = 1) <-> forall g :e A :^: hl__u, P (hl_o A B hl__u f g) = 1) /\ ((forall P :e 2 :^: (B :^: hl__u), (exists g :e B :^: hl__u, P g = 1) <-> exists g :e A :^: hl__u, P (hl_o A B hl__u f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (forall g :e B :^: omega, P g = 1) <-> forall g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall P :e 2 :^: (B :^: omega), (exists g :e B :^: omega, P g = 1) <-> exists g :e A :^: omega, P (hl_o A B omega f g) = 1) /\ ((forall Q :e 2 :^: finseq B, (forall l :e finseq B, Q l = 1) <-> forall l :e finseq A, Q (hl_MAP A B f l) = 1) /\ (forall Q :e 2 :^: finseq B, (exists l :e finseq B, Q l = 1) <-> exists l :e finseq A, Q (hl_MAP A B f l) = 1))))))))))) /\ ((forall P :e 2 :^: B, hl_GSPEC B (fun GEN_PVAR_2904 :e B => if exists x :e B, hl_SETSPEC B GEN_PVAR_2904 (P x) x = 1 then 1 else 0) = hl_IMAGE A B f (hl_GSPEC A (fun GEN_PVAR_2905 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_2905 (P (f x)) x = 1 then 1 else 0))) /\ ((forall Q :e 2 :^: (2 :^: B), hl_GSPEC (2 :^: B) (fun GEN_PVAR_2906 :e 2 :^: B => if exists s :e 2 :^: B, hl_SETSPEC (2 :^: B) GEN_PVAR_2906 (Q s) s = 1 then 1 else 0) = hl_IMAGE (2 :^: A) (2 :^: B) (hl_IMAGE A B f) (hl_GSPEC (2 :^: A) (fun GEN_PVAR_2907 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_2907 (Q (hl_IMAGE A B f s)) s = 1 then 1 else 0))) /\ forall R1 :e 2 :^: finseq B, hl_GSPEC (finseq B) (fun GEN_PVAR_2908 :e finseq B => if exists l :e finseq B, hl_SETSPEC (finseq B) GEN_PVAR_2908 (R1 l) l = 1 then 1 else 0) = hl_IMAGE (finseq A) (finseq B) (hl_MAP A B f) (hl_GSPEC (finseq A) (fun GEN_PVAR_2909 :e finseq A => if exists l :e finseq A, hl_SETSPEC (finseq A) GEN_PVAR_2909 (R1 (hl_MAP A B f l)) l = 1 then 1 else 0))))) (H__top A B HAne HBne)))).
Qed.
Theorem QUANTIFY_SURJECTION_HIGHER_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> (forall y :e B, exists x :e A, f x = y) -> (forall P:set -> prop, (forall x :e B, P x) <-> forall x :e A, P (f x)) /\ ((forall P:set -> prop, (exists x :e B, P x) <-> exists x :e A, P (f x)) /\ ((forall Q:set -> prop, (forall s c= B, Q s) <-> forall s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (exists s c= B, Q s) <-> exists s c= A, Q {f x | x :e s}) /\ ((forall Q:set -> prop, (forall s c= Power B, Q s) <-> forall s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall Q:set -> prop, (exists s c= Power B, Q s) <-> exists s c= Power A, Q {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e s}) /\ ((forall P:set -> prop, (forall g :e B :^: (R :^: idx 1), P g) <-> forall g:set -> set, (forall x :e R :^: idx 1, g x :e A) -> P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: (R :^: idx 1), P g) <-> exists g:set -> set, (forall x :e R :^: idx 1, g x :e A) /\ P (fun x :e R :^: idx 1 => f (g x))) /\ ((forall P:set -> prop, (forall g :e B :^: omega, P g) <-> forall g:set -> set, (forall x :e omega, g x :e A) -> P (fun x :e omega => f (g x))) /\ ((forall P:set -> prop, (exists g :e B :^: omega, P g) <-> exists g:set -> set, (forall x :e omega, g x :e A) /\ P (fun x :e omega => f (g x))) /\ ((forall Q:set -> prop, (forall l :e finseq B, Q l) <-> forall l :e finseq A, Q (seq_map f l)) /\ (forall Q:set -> prop, (exists l :e finseq B, Q l) <-> exists l :e finseq A, Q (seq_map f l)))))))))))) /\ ((forall P:set -> prop, {x :e B | P x} = {f x | x :e {x :e A | P (f x)}}) /\ ((forall Q:set -> prop, {s :e Power B | Q s} = {{x0 :e B | x0 :e {f x0 | x0 :e x}} | x :e {s :e Power A | Q {f x | x :e s}}}) /\ forall R0:set -> prop, {l :e finseq B | R0 l} = {seq_map f x | x :e {l :e finseq A | R0 (seq_map f l)}})).
exact (QUANTIFY_SURJECTION_HIGHER_THM_bridge hlt_QUANTIFY_SURJECTION_HIGHER_THM).
Admitted.

