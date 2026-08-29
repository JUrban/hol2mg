// hol2mg certification module (private): shard nums of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: nums.ml:22 / ONE_ONE   (hash md5:288a0d40e8446caae45da4ca6cd746c2)
// not bridged: 
Theorem ONE_ONE : forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> ((forall x y :e A, f x = f y -> x = y) <-> forall x1 x2 :e A, f x1 = f x2 -> x1 = x2).
Admitted.

// HOL Light: nums.ml:25 / ONTO   (hash md5:069712bfe0b0449845d319d1a7497175)
// not bridged: 
Theorem ONTO : forall A B:set, forall f:set -> set, (forall x :e A, f x :e B) -> ((forall y :e B, exists x :e A, f x = y) <-> forall y :e B, exists x :e A, y = f x).
Admitted.

// HOL Light: nums.ml:75 / NOT_SUC   (hash md5:08c916fb9a846af5b7a22a1e10f97142)
Theorem hlt_NOT_SUC : forall n :e omega, ~ hl_SUC n = hl_NUMERAL hl_zero.
Admitted.
Theorem NOT_SUC_bridge : (forall n :e omega, ~ hl_SUC n = hl_NUMERAL hl_zero) -> (forall n :e omega, ~ ordsucc n = 0).
exact (fun HL => (imp_forall_in (omega) (fun n => ~ hl_SUC n = hl_NUMERAL hl_zero) (fun n => ~ ordsucc n = 0) (fun n Hn => (imp_not (hl_SUC n = hl_NUMERAL hl_zero) (ordsucc n = 0) (imp_eq (ordsucc n) (hl_SUC n) (0) (hl_NUMERAL hl_zero) (eq_sym_i (hl_SUC n) (ordsucc n) ((hl_SUC_compat) (n) Hn)) (eq_sym_i (hl_NUMERAL hl_zero) (0) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat)))))) HL).
Qed.
Theorem NOT_SUC : forall n :e omega, ~ ordsucc n = 0.
exact (NOT_SUC_bridge hlt_NOT_SUC).
Admitted.

// HOL Light: nums.ml:80 / SUC_INJ   (hash md5:5224521fb640c43e425c96e6462ab6d0)
Theorem hlt_SUC_INJ : forall m n :e omega, hl_SUC m = hl_SUC n <-> m = n.
Admitted.
Theorem SUC_INJ_bridge : (forall m n :e omega, hl_SUC m = hl_SUC n <-> m = n) -> (forall m n :e omega, ordsucc m = ordsucc n <-> m = n).
exact (fun HL => (imp_forall_in (omega) (fun m => forall n :e omega, hl_SUC m = hl_SUC n <-> m = n) (fun m => forall n :e omega, ordsucc m = ordsucc n <-> m = n) (fun m Hm => (imp_forall_in (omega) (fun n => hl_SUC m = hl_SUC n <-> m = n) (fun n => ordsucc m = ordsucc n <-> m = n) (fun n Hn => (imp_iff (hl_SUC m = hl_SUC n) (ordsucc m = ordsucc n) (m = n) (m = n) (imp_eq (hl_SUC m) (ordsucc m) (hl_SUC n) (ordsucc n) ((hl_SUC_compat) (m) Hm) ((hl_SUC_compat) (n) Hn)) (imp_eq (ordsucc m) (hl_SUC m) (ordsucc n) (hl_SUC n) (eq_sym_i (hl_SUC m) (ordsucc m) ((hl_SUC_compat) (m) Hm)) (eq_sym_i (hl_SUC n) (ordsucc n) ((hl_SUC_compat) (n) Hn))) (imp_eq (m) (m) (n) (n) (fun q H => H) (fun q H => H)) (imp_eq (m) (m) (n) (n) (eq_sym_i (m) (m) (fun q H => H)) (eq_sym_i (n) (n) (fun q H => H)))))))) HL).
Qed.
Theorem SUC_INJ : forall m n :e omega, ordsucc m = ordsucc n <-> m = n.
exact (SUC_INJ_bridge hlt_SUC_INJ).
Admitted.

// HOL Light: nums.ml:96 / num_INDUCTION   (hash md5:95f125bb90820dfc772fce4559903527)
// not bridged: 
Theorem num_INDUCTION : forall P:set -> prop, P 0 /\ (forall n :e omega, P n -> P (ordsucc n)) -> forall n :e omega, P n.
Admitted.

// HOL Light: nums.ml:116 / num_Axiom   (hash md5:22351265077b01108064d138b673a797)
// not bridged: 
Theorem num_Axiom : forall A:set, forall e0 :e A, forall f:set -> set -> set, (forall x :e A, forall y :e omega, f x y :e A) -> exists fn:set -> set, (forall x :e omega, fn x :e A) /\ (fn 0 = e0 /\ (forall n :e omega, fn (ordsucc n) = f (fn n) n) /\ forall y:set -> set, (forall x :e omega, y x :e A) -> y 0 = e0 /\ (forall n :e omega, y (ordsucc n) = f (y n) n) -> forall x :e omega, y x = fn x).
Admitted.

// HOL Light: nums.ml:149 / NUMERAL   (hash md5:2426be4ee095601a3317c8072e5b59f9)
Theorem hlt_NUMERAL : forall n :e omega, hl_NUMERAL n = n.
Admitted.
Theorem NUMERAL_bridge : (forall n :e omega, hl_NUMERAL n = n) -> (forall n :e omega, n = n).
exact (fun HL => (imp_forall_in (omega) (fun n => hl_NUMERAL n = n) (fun n => n = n) (fun n Hn => (imp_eq (hl_NUMERAL n) (n) (n) (n) ((hl_NUMERAL_compat) (n) Hn) (fun q H => H)))) HL).
Qed.
Theorem NUMERAL : forall n :e omega, n = n.
exact (NUMERAL_bridge hlt_NUMERAL).
Admitted.

// HOL Light: nums.ml:169 / num_RECURSION   (hash md5:b287304fbed4be3d30468df5802532bb)
// not bridged: 
Theorem num_RECURSION : forall A:set, forall e0 :e A, forall f:set -> set -> set, (forall x :e A, forall y :e omega, f x y :e A) -> exists fn:set -> set, (forall x :e omega, fn x :e A) /\ (fn 0 = e0 /\ forall n :e omega, fn (ordsucc n) = f (fn n) n).
Admitted.

// HOL Light: nums.ml:177 / num_CASES   (hash md5:f202972a2e9786d2257c90d475eac48a)
Theorem hlt_num_CASES : forall m :e omega, m = hl_NUMERAL hl_zero \/ exists n :e omega, m = hl_SUC n.
Admitted.
Theorem num_CASES_bridge : (forall m :e omega, m = hl_NUMERAL hl_zero \/ exists n :e omega, m = hl_SUC n) -> (forall m :e omega, m = 0 \/ exists n :e omega, m = ordsucc n).
exact (fun HL => (imp_forall_in (omega) (fun m => m = hl_NUMERAL hl_zero \/ exists n :e omega, m = hl_SUC n) (fun m => m = 0 \/ exists n :e omega, m = ordsucc n) (fun m Hm => (imp_or (m = hl_NUMERAL hl_zero) (m = 0) (exists n :e omega, m = hl_SUC n) (exists n :e omega, m = ordsucc n) (imp_eq (m) (m) (hl_NUMERAL hl_zero) (0) (fun q H => H) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat)) (imp_exists_in (omega) (fun n => m = hl_SUC n) (fun n => m = ordsucc n) (fun n Hn => (imp_eq (m) (m) (hl_SUC n) (ordsucc n) (fun q H => H) ((hl_SUC_compat) (n) Hn))))))) HL).
Qed.
Theorem num_CASES : forall m :e omega, m = 0 \/ exists n :e omega, m = ordsucc n.
exact (num_CASES_bridge hlt_num_CASES).
Admitted.

// HOL Light: nums.ml:192 / BIT0_DEF   (hash md5:cee1bcf83250b63d8623c6b4cebc7e98)
// not bridged: 
Theorem BIT0_DEF : 0 = 0 /\ forall n :e omega, 2 * ordsucc n = ordsucc (ordsucc (2 * n)).
Admitted.

// HOL Light: nums.ml:200 / BIT1_DEF   (hash md5:bd2631f8d3c5ce7d18b1dbba22927d46)
Theorem hlt_BIT1_DEF : forall n :e omega, hl_BIT1 n = hl_SUC (hl_BIT0 n).
Admitted.
Theorem BIT1_DEF_bridge : (forall n :e omega, hl_BIT1 n = hl_SUC (hl_BIT0 n)) -> (forall n :e omega, 2 * n + 1 = ordsucc (2 * n)).
exact (fun HL => (imp_forall_in (omega) (fun n => hl_BIT1 n = hl_SUC (hl_BIT0 n)) (fun n => 2 * n + 1 = ordsucc (2 * n)) (fun n Hn => (imp_eq (hl_BIT1 n) (2 * n + 1) (hl_SUC (hl_BIT0 n)) (ordsucc (2 * n)) ((hl_BIT1_compat) (n) Hn) (((hl_BIT0_compat) (n) Hn) (fun hl__u hl__v => hl_SUC (hl_BIT0 n) = ordsucc hl__u) ((hl_SUC_compat) (hl_BIT0 n) (setexp_ap (omega) (omega) (hl_BIT0) ((hl_BIT0_in)) (n) Hn)))))) HL).
Qed.
Theorem BIT1_DEF : forall n :e omega, 2 * n + 1 = ordsucc (2 * n).
exact (BIT1_DEF_bridge hlt_BIT1_DEF).
Admitted.

