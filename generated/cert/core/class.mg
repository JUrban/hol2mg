// hol2mg certification module (private): shard class of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: class.ml:16 / ETA_AX   (hash md5:e20b11b91c226ce7c7fa8169d22798c6)
// not bridged: 
Theorem ETA_AX : forall A B:set, forall t:set -> set, (forall x :e A, t x :e B) -> forall x :e A, t x = t x.
Admitted.

// HOL Light: class.ml:30 / EQ_EXT   (hash md5:74f6b9b467171dc186a2df9978244b58)
Theorem hlt_EQ_EXT : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, (forall x :e A, f x = g x) -> f = g.
Admitted.
Theorem EQ_EXT_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, (forall x :e A, f x = g x) -> f = g) -> (forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> (forall x :e A, f x = g x) -> forall x :e A, f x = g x).
exact (fun H__top A B HBne => (xm (A = Empty) (forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> (forall x :e A, f x = g x) -> forall x :e A, f x = g x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall f:set -> set, (forall x :e hl__u, f x :e B) -> forall g:set -> set, (forall x :e hl__u, g x :e B) -> (forall x :e hl__u, f x = g x) -> forall x :e hl__u, f x = g x) (fun f => (fun H : forall x :e Empty, f x :e B => (fun g => (fun H : forall x :e Empty, g x :e B => (fun H : forall x :e Empty, f x = g x => (forall_in_Empty (fun x => f x = g x))))))))) (fun HAne => (imp_forall_fun (A) (B) (fun f => forall g :e B :^: A, (forall x :e A, f x = g x) -> f = g) (fun f => forall g:set -> set, (forall x :e A, g x :e B) -> (forall x :e A, f x = g x) -> forall x :e A, f x = g x) (fun f Hfc => (imp_forall_fun (A) (B) (fun g => (forall x :e A, hl_lam A f x = g x) -> hl_lam A f = g) (fun g => (forall x :e A, f x = g x) -> forall x :e A, f x = g x) (fun g Hgc => (fun H__L : ((forall x :e A, hl_lam A f x = hl_lam A g x) -> (hl_lam A f = hl_lam A g)) => fun H__hyp : (forall x :e A, f x = g x) => (imp_trans (hl_lam A f = hl_lam A g) (forall x :e A, hl_lam A f x = hl_lam A g x) (forall x :e A, f x = g x) (iffEL (hl_lam A f = hl_lam A g) (forall x :e A, hl_lam A f x = hl_lam A g x) (eq_Pi_pointwise (A) (B) (hl_lam A f) (hl_lam A g) (hl_lam_Pi (A) (B) f Hfc) (hl_lam_Pi (A) (B) g Hgc))) (imp_forall_in (A) (fun x => hl_lam A f x = hl_lam A g x) (fun x => f x = g x) (fun x Hx => (imp_eq (hl_lam A f x) (f x) (hl_lam A g x) (g x) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) g) (x) Hx))))) (H__L ((imp_forall_in (A) (fun x => f x = g x) (fun x => hl_lam A f x = hl_lam A g x) (fun x Hx => (imp_eq (f x) (hl_lam A f x) (g x) (hl_lam A g x) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (hl_lam A g x) (g x) ((hl_lam_ap (A) g) (x) Hx))))) H__hyp))))))) (H__top A B HAne HBne)))).
Qed.
Theorem EQ_EXT : forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> (forall x :e A, f x = g x) -> forall x :e A, f x = g x.
exact (EQ_EXT_bridge hlt_EQ_EXT).
Admitted.

// HOL Light: class.ml:35 / FUN_EQ_THM   (hash md5:f5a914b29ff3ffb2975dadfdab697414)
Theorem hlt_FUN_EQ_THM : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, f = g <-> forall x :e A, f x = g x.
Admitted.
Theorem FUN_EQ_THM_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, f = g <-> forall x :e A, f x = g x) -> (forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> ((forall x :e A, f x = g x) <-> forall x :e A, f x = g x)).
exact (fun H__top A B HBne => (xm (A = Empty) (forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> ((forall x :e A, f x = g x) <-> forall x :e A, f x = g x)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall f:set -> set, (forall x :e hl__u, f x :e B) -> forall g:set -> set, (forall x :e hl__u, g x :e B) -> ((forall x :e hl__u, f x = g x) <-> forall x :e hl__u, f x = g x)) (fun f => (fun H : forall x :e Empty, f x :e B => (fun g => (fun H : forall x :e Empty, g x :e B => (iffI (forall x :e Empty, f x = g x) (forall x :e Empty, f x = g x) (fun _ => (forall_in_Empty (fun x => f x = g x))) (fun _ => (forall_in_Empty (fun x => f x = g x)))))))))) (fun HAne => (imp_forall_fun (A) (B) (fun f => forall g :e B :^: A, f = g <-> forall x :e A, f x = g x) (fun f => forall g:set -> set, (forall x :e A, g x :e B) -> ((forall x :e A, f x = g x) <-> forall x :e A, f x = g x)) (fun f Hfc => (imp_forall_fun (A) (B) (fun g => hl_lam A f = g <-> forall x :e A, hl_lam A f x = g x) (fun g => (forall x :e A, f x = g x) <-> forall x :e A, f x = g x) (fun g Hgc => (imp_iff (hl_lam A f = hl_lam A g) (forall x :e A, f x = g x) (forall x :e A, hl_lam A f x = hl_lam A g x) (forall x :e A, f x = g x) (imp_trans (hl_lam A f = hl_lam A g) (forall x :e A, hl_lam A f x = hl_lam A g x) (forall x :e A, f x = g x) (iffEL (hl_lam A f = hl_lam A g) (forall x :e A, hl_lam A f x = hl_lam A g x) (eq_Pi_pointwise (A) (B) (hl_lam A f) (hl_lam A g) (hl_lam_Pi (A) (B) f Hfc) (hl_lam_Pi (A) (B) g Hgc))) (imp_forall_in (A) (fun x => hl_lam A f x = hl_lam A g x) (fun x => f x = g x) (fun x Hx => (imp_eq (hl_lam A f x) (f x) (hl_lam A g x) (g x) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) g) (x) Hx))))) (imp_trans (forall x :e A, f x = g x) (forall x :e A, hl_lam A f x = hl_lam A g x) (hl_lam A f = hl_lam A g) (imp_forall_in (A) (fun x => f x = g x) (fun x => hl_lam A f x = hl_lam A g x) (fun x Hx => (imp_eq (f x) (hl_lam A f x) (g x) (hl_lam A g x) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (hl_lam A g x) (g x) ((hl_lam_ap (A) g) (x) Hx))))) (iffER (hl_lam A f = hl_lam A g) (forall x :e A, hl_lam A f x = hl_lam A g x) (eq_Pi_pointwise (A) (B) (hl_lam A f) (hl_lam A g) (hl_lam_Pi (A) (B) f Hfc) (hl_lam_Pi (A) (B) g Hgc)))) (imp_forall_in (A) (fun x => hl_lam A f x = hl_lam A g x) (fun x => f x = g x) (fun x Hx => (imp_eq (hl_lam A f x) (f x) (hl_lam A g x) (g x) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) g) (x) Hx)))) (imp_forall_in (A) (fun x => f x = g x) (fun x => hl_lam A f x = hl_lam A g x) (fun x Hx => (imp_eq (f x) (hl_lam A f x) (g x) (hl_lam A g x) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (hl_lam A g x) (g x) ((hl_lam_ap (A) g) (x) Hx)))))))))) (H__top A B HAne HBne)))).
Qed.
Theorem FUN_EQ_THM : forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> ((forall x :e A, f x = g x) <-> forall x :e A, f x = g x).
exact (FUN_EQ_THM_bridge hlt_FUN_EQ_THM).
Admitted.

// HOL Light: class.ml:53 / SELECT_AX   (hash md5:4e877f34f5dc642b1b50fc1ef7367fcd)
// not bridged: 
Theorem SELECT_AX : forall A:set, forall P:set -> prop, forall x :e A, P x -> P (choose_in A P).
Admitted.

// HOL Light: class.ml:60 / EXISTS_THM   (hash md5:a89cb4aa5c0e6a37ab368e12856a3e84)
// not bridged: 
Theorem EXISTS_THM : forall A:set, A <> Empty -> forall P:set -> prop, (exists x :e A, P x) <-> P (choose_in A P).
Admitted.

// HOL Light: class.ml:102 / SELECT_REFL   (hash md5:5d89ddfdd48e07285ef4152ba2f87957)
// not bridged: 
Theorem SELECT_REFL : forall A:set, forall x :e A, choose_in A (fun y:set => y = x) = x.
Admitted.

// HOL Light: class.ml:107 / SELECT_UNIQUE   (hash md5:a3ab62395ef165d333cfc84d6aa0b583)
// not bridged: 
Theorem SELECT_UNIQUE : forall A:set, forall P:set -> prop, forall x :e A, (forall y :e A, P y <-> y = x) -> choose_in A P = x.
Admitted.

// HOL Light: class.ml:140 / EXCLUDED_MIDDLE   (hash md5:24badd25546afe87d42d86a1339bd39d)
Theorem hlt_EXCLUDED_MIDDLE : forall t :e 2, t = 1 \/ ~ t = 1.
Admitted.
Theorem EXCLUDED_MIDDLE_bridge : (forall t :e 2, t = 1 \/ ~ t = 1) -> (forall t:prop, t \/ ~ t).
exact (fun H__top => (imp_forall_bool (fun t => t = 1 \/ ~ t = 1) (fun t => t \/ ~ t) (fun t => (imp_or ((if t then 1 else 0) = 1) (t) (~ (if t then 1 else 0) = 1) (~ t) (iffEL ((if t then 1 else 0) = 1) (t) (If_1_iff t)) (imp_not ((if t then 1 else 0) = 1) (t) (iffER ((if t then 1 else 0) = 1) (t) (If_1_iff t)))))) H__top).
Qed.
Theorem EXCLUDED_MIDDLE : forall t:prop, t \/ ~ t.
exact (EXCLUDED_MIDDLE_bridge hlt_EXCLUDED_MIDDLE).
Admitted.

// HOL Light: class.ml:154 / BOOL_CASES_AX   (hash md5:2d73cf3d9340a07496060ebb19e89f36)
Theorem hlt_BOOL_CASES_AX : forall t :e 2, (t = 1 <-> True) \/ (t = 1 <-> False).
Admitted.
Theorem BOOL_CASES_AX_bridge : (forall t :e 2, (t = 1 <-> True) \/ (t = 1 <-> False)) -> (forall t:prop, (t <-> True) \/ (t <-> False)).
exact (fun H__top => (imp_forall_bool (fun t => (t = 1 <-> True) \/ (t = 1 <-> False)) (fun t => (t <-> True) \/ (t <-> False)) (fun t => (imp_or ((if t then 1 else 0) = 1 <-> True) (t <-> True) ((if t then 1 else 0) = 1 <-> False) (t <-> False) (imp_iff ((if t then 1 else 0) = 1) (t) (True) (True) (iffEL ((if t then 1 else 0) = 1) (t) (If_1_iff t)) (iffER ((if t then 1 else 0) = 1) (t) (If_1_iff t)) (imp_refl True) (imp_refl True)) (imp_iff ((if t then 1 else 0) = 1) (t) (False) (False) (iffEL ((if t then 1 else 0) = 1) (t) (If_1_iff t)) (iffER ((if t then 1 else 0) = 1) (t) (If_1_iff t)) (imp_refl False) (imp_refl False))))) H__top).
Qed.
Theorem BOOL_CASES_AX : forall t:prop, (t <-> True) \/ (t <-> False).
exact (BOOL_CASES_AX_bridge hlt_BOOL_CASES_AX).
Admitted.

// HOL Light: class.ml:185 / DE_MORGAN_THM   (hash md5:8b8cb517996be6435d3c18d9fc7bbe23)
Theorem hlt_DE_MORGAN_THM : forall t1 t2 :e 2, (~ (t1 = 1 /\ t2 = 1) <-> ~ t1 = 1 \/ ~ t2 = 1) /\ (~ (t1 = 1 \/ t2 = 1) <-> ~ t1 = 1 /\ ~ t2 = 1).
Admitted.
Theorem DE_MORGAN_THM_bridge : (forall t1 t2 :e 2, (~ (t1 = 1 /\ t2 = 1) <-> ~ t1 = 1 \/ ~ t2 = 1) /\ (~ (t1 = 1 \/ t2 = 1) <-> ~ t1 = 1 /\ ~ t2 = 1)) -> (forall t1 t2:prop, (~ (t1 /\ t2) <-> ~ t1 \/ ~ t2) /\ (~ (t1 \/ t2) <-> ~ t1 /\ ~ t2)).
exact (fun H__top => (imp_forall_bool (fun t1 => forall t2 :e 2, (~ (t1 = 1 /\ t2 = 1) <-> ~ t1 = 1 \/ ~ t2 = 1) /\ (~ (t1 = 1 \/ t2 = 1) <-> ~ t1 = 1 /\ ~ t2 = 1)) (fun t1 => forall t2:prop, (~ (t1 /\ t2) <-> ~ t1 \/ ~ t2) /\ (~ (t1 \/ t2) <-> ~ t1 /\ ~ t2)) (fun t1 => (imp_forall_bool (fun t2 => (~ ((if t1 then 1 else 0) = 1 /\ t2 = 1) <-> ~ (if t1 then 1 else 0) = 1 \/ ~ t2 = 1) /\ (~ ((if t1 then 1 else 0) = 1 \/ t2 = 1) <-> ~ (if t1 then 1 else 0) = 1 /\ ~ t2 = 1)) (fun t2 => (~ (t1 /\ t2) <-> ~ t1 \/ ~ t2) /\ (~ (t1 \/ t2) <-> ~ t1 /\ ~ t2)) (fun t2 => (imp_and (~ ((if t1 then 1 else 0) = 1 /\ (if t2 then 1 else 0) = 1) <-> ~ (if t1 then 1 else 0) = 1 \/ ~ (if t2 then 1 else 0) = 1) (~ (t1 /\ t2) <-> ~ t1 \/ ~ t2) (~ ((if t1 then 1 else 0) = 1 \/ (if t2 then 1 else 0) = 1) <-> ~ (if t1 then 1 else 0) = 1 /\ ~ (if t2 then 1 else 0) = 1) (~ (t1 \/ t2) <-> ~ t1 /\ ~ t2) (imp_iff (~ ((if t1 then 1 else 0) = 1 /\ (if t2 then 1 else 0) = 1)) (~ (t1 /\ t2)) (~ (if t1 then 1 else 0) = 1 \/ ~ (if t2 then 1 else 0) = 1) (~ t1 \/ ~ t2) (imp_not ((if t1 then 1 else 0) = 1 /\ (if t2 then 1 else 0) = 1) (t1 /\ t2) (imp_and (t1) ((if t1 then 1 else 0) = 1) (t2) ((if t2 then 1 else 0) = 1) (iffER ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) (iffER ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)))) (imp_not (t1 /\ t2) ((if t1 then 1 else 0) = 1 /\ (if t2 then 1 else 0) = 1) (imp_and ((if t1 then 1 else 0) = 1) (t1) ((if t2 then 1 else 0) = 1) (t2) (iffEL ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) (iffEL ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)))) (imp_or (~ (if t1 then 1 else 0) = 1) (~ t1) (~ (if t2 then 1 else 0) = 1) (~ t2) (imp_not ((if t1 then 1 else 0) = 1) (t1) (iffER ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1))) (imp_not ((if t2 then 1 else 0) = 1) (t2) (iffER ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)))) (imp_or (~ t1) (~ (if t1 then 1 else 0) = 1) (~ t2) (~ (if t2 then 1 else 0) = 1) (imp_not (t1) ((if t1 then 1 else 0) = 1) (iffEL ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1))) (imp_not (t2) ((if t2 then 1 else 0) = 1) (iffEL ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2))))) (imp_iff (~ ((if t1 then 1 else 0) = 1 \/ (if t2 then 1 else 0) = 1)) (~ (t1 \/ t2)) (~ (if t1 then 1 else 0) = 1 /\ ~ (if t2 then 1 else 0) = 1) (~ t1 /\ ~ t2) (imp_not ((if t1 then 1 else 0) = 1 \/ (if t2 then 1 else 0) = 1) (t1 \/ t2) (imp_or (t1) ((if t1 then 1 else 0) = 1) (t2) ((if t2 then 1 else 0) = 1) (iffER ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) (iffER ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)))) (imp_not (t1 \/ t2) ((if t1 then 1 else 0) = 1 \/ (if t2 then 1 else 0) = 1) (imp_or ((if t1 then 1 else 0) = 1) (t1) ((if t2 then 1 else 0) = 1) (t2) (iffEL ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) (iffEL ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)))) (imp_and (~ (if t1 then 1 else 0) = 1) (~ t1) (~ (if t2 then 1 else 0) = 1) (~ t2) (imp_not ((if t1 then 1 else 0) = 1) (t1) (iffER ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1))) (imp_not ((if t2 then 1 else 0) = 1) (t2) (iffER ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)))) (imp_and (~ t1) (~ (if t1 then 1 else 0) = 1) (~ t2) (~ (if t2 then 1 else 0) = 1) (imp_not (t1) ((if t1 then 1 else 0) = 1) (iffEL ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1))) (imp_not (t2) ((if t2 then 1 else 0) = 1) (iffEL ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)))))))))) H__top).
Qed.
Theorem DE_MORGAN_THM : forall t1 t2:prop, (~ (t1 /\ t2) <-> ~ t1 \/ ~ t2) /\ (~ (t1 \/ t2) <-> ~ t1 /\ ~ t2).
exact (DE_MORGAN_THM_bridge hlt_DE_MORGAN_THM).
Admitted.

// HOL Light: class.ml:188 / NOT_CLAUSES   (hash md5:3b3c3e9efdbcbcbfc4b0cad619ffceaa)
Theorem hlt_NOT_CLAUSES : (forall t :e 2, ~ ~ t = 1 <-> t = 1) /\ ((~ True <-> False) /\ (~ False <-> True)).
Admitted.
Theorem NOT_CLAUSES_bridge : ((forall t :e 2, ~ ~ t = 1 <-> t = 1) /\ ((~ True <-> False) /\ (~ False <-> True))) -> ((forall t:prop, ~ ~ t <-> t) /\ ((~ True <-> False) /\ (~ False <-> True))).
exact (fun H__top => (imp_and (forall t :e 2, ~ ~ t = 1 <-> t = 1) (forall t:prop, ~ ~ t <-> t) ((~ True <-> False) /\ (~ False <-> True)) ((~ True <-> False) /\ (~ False <-> True)) (imp_forall_bool (fun t => ~ ~ t = 1 <-> t = 1) (fun t => ~ ~ t <-> t) (fun t => (imp_iff (~ ~ (if t then 1 else 0) = 1) (~ ~ t) ((if t then 1 else 0) = 1) (t) (imp_not (~ (if t then 1 else 0) = 1) (~ t) (imp_not (t) ((if t then 1 else 0) = 1) (iffEL ((if t then 1 else 0) = 1) (t) (If_1_iff t)))) (imp_not (~ t) (~ (if t then 1 else 0) = 1) (imp_not ((if t then 1 else 0) = 1) (t) (iffER ((if t then 1 else 0) = 1) (t) (If_1_iff t)))) (iffEL ((if t then 1 else 0) = 1) (t) (If_1_iff t)) (iffER ((if t then 1 else 0) = 1) (t) (If_1_iff t))))) (imp_and (~ True <-> False) (~ True <-> False) (~ False <-> True) (~ False <-> True) (imp_iff (~ True) (~ True) (False) (False) (imp_not (True) (True) (imp_refl True)) (imp_not (True) (True) (imp_refl True)) (imp_refl False) (imp_refl False)) (imp_iff (~ False) (~ False) (True) (True) (imp_not (False) (False) (imp_refl False)) (imp_not (False) (False) (imp_refl False)) (imp_refl True) (imp_refl True)))) H__top).
Qed.
Theorem NOT_CLAUSES : (forall t:prop, ~ ~ t <-> t) /\ ((~ True <-> False) /\ (~ False <-> True)).
exact (NOT_CLAUSES_bridge hlt_NOT_CLAUSES).
Admitted.

// HOL Light: class.ml:191 / NOT_IMP   (hash md5:045dca8754fe888ab0bd299f74e2ef6c)
Theorem hlt_NOT_IMP : forall t1 t2 :e 2, ~ (t1 = 1 -> t2 = 1) <-> t1 = 1 /\ ~ t2 = 1.
Admitted.
Theorem NOT_IMP_bridge : (forall t1 t2 :e 2, ~ (t1 = 1 -> t2 = 1) <-> t1 = 1 /\ ~ t2 = 1) -> (forall t1 t2:prop, ~ (t1 -> t2) <-> t1 /\ ~ t2).
exact (fun H__top => (imp_forall_bool (fun t1 => forall t2 :e 2, ~ (t1 = 1 -> t2 = 1) <-> t1 = 1 /\ ~ t2 = 1) (fun t1 => forall t2:prop, ~ (t1 -> t2) <-> t1 /\ ~ t2) (fun t1 => (imp_forall_bool (fun t2 => ~ ((if t1 then 1 else 0) = 1 -> t2 = 1) <-> (if t1 then 1 else 0) = 1 /\ ~ t2 = 1) (fun t2 => ~ (t1 -> t2) <-> t1 /\ ~ t2) (fun t2 => (imp_iff (~ ((if t1 then 1 else 0) = 1 -> (if t2 then 1 else 0) = 1)) (~ (t1 -> t2)) ((if t1 then 1 else 0) = 1 /\ ~ (if t2 then 1 else 0) = 1) (t1 /\ ~ t2) (imp_not ((if t1 then 1 else 0) = 1 -> (if t2 then 1 else 0) = 1) (t1 -> t2) (fun H__N : ((t1) -> (t2)) => fun H__hyp : ((if t1 then 1 else 0) = 1) => (iffER ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)) (H__N ((iffEL ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) H__hyp)))) (imp_not (t1 -> t2) ((if t1 then 1 else 0) = 1 -> (if t2 then 1 else 0) = 1) (fun H__L : (((if t1 then 1 else 0) = 1) -> ((if t2 then 1 else 0) = 1)) => fun H__hyp : (t1) => (iffEL ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)) (H__L ((iffER ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) H__hyp)))) (imp_and ((if t1 then 1 else 0) = 1) (t1) (~ (if t2 then 1 else 0) = 1) (~ t2) (iffEL ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) (imp_not ((if t2 then 1 else 0) = 1) (t2) (iffER ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)))) (imp_and (t1) ((if t1 then 1 else 0) = 1) (~ t2) (~ (if t2 then 1 else 0) = 1) (iffER ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) (imp_not (t2) ((if t2 then 1 else 0) = 1) (iffEL ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2))))))))) H__top).
Qed.
Theorem NOT_IMP : forall t1 t2:prop, ~ (t1 -> t2) <-> t1 /\ ~ t2.
exact (NOT_IMP_bridge hlt_NOT_IMP).
Admitted.

// HOL Light: class.ml:193 / CONTRAPOS_THM   (hash md5:57fb40ff0c7c85aa21a80031583ca69d)
Theorem hlt_CONTRAPOS_THM : forall t1 t2 :e 2, ~ t1 = 1 -> ~ t2 = 1 <-> t2 = 1 -> t1 = 1.
Admitted.
Theorem CONTRAPOS_THM_bridge : (forall t1 t2 :e 2, ~ t1 = 1 -> ~ t2 = 1 <-> t2 = 1 -> t1 = 1) -> (forall t1 t2:prop, ~ t1 -> ~ t2 <-> t2 -> t1).
exact (fun H__top => (imp_forall_bool (fun t1 => forall t2 :e 2, ~ t1 = 1 -> ~ t2 = 1 <-> t2 = 1 -> t1 = 1) (fun t1 => forall t2:prop, ~ t1 -> ~ t2 <-> t2 -> t1) (fun t1 => (imp_forall_bool (fun t2 => ~ (if t1 then 1 else 0) = 1 -> ~ t2 = 1 <-> t2 = 1 -> (if t1 then 1 else 0) = 1) (fun t2 => ~ t1 -> ~ t2 <-> t2 -> t1) (fun t2 => (imp_iff (~ (if t1 then 1 else 0) = 1 -> ~ (if t2 then 1 else 0) = 1) (~ t1 -> ~ t2) ((if t2 then 1 else 0) = 1 -> (if t1 then 1 else 0) = 1) (t2 -> t1) (fun H__L : ((~ (if t1 then 1 else 0) = 1) -> (~ (if t2 then 1 else 0) = 1)) => fun H__hyp : (~ t1) => (imp_not ((if t2 then 1 else 0) = 1) (t2) (iffER ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2))) (H__L ((imp_not (t1) ((if t1 then 1 else 0) = 1) (iffEL ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1))) H__hyp))) (fun H__N : ((~ t1) -> (~ t2)) => fun H__hyp : (~ (if t1 then 1 else 0) = 1) => (imp_not (t2) ((if t2 then 1 else 0) = 1) (iffEL ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2))) (H__N ((imp_not ((if t1 then 1 else 0) = 1) (t1) (iffER ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1))) H__hyp))) (fun H__L : (((if t2 then 1 else 0) = 1) -> ((if t1 then 1 else 0) = 1)) => fun H__hyp : (t2) => (iffEL ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) (H__L ((iffER ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)) H__hyp))) (fun H__N : ((t2) -> (t1)) => fun H__hyp : ((if t2 then 1 else 0) = 1) => (iffER ((if t1 then 1 else 0) = 1) (t1) (If_1_iff t1)) (H__N ((iffEL ((if t2 then 1 else 0) = 1) (t2) (If_1_iff t2)) H__hyp)))))))) H__top).
Qed.
Theorem CONTRAPOS_THM : forall t1 t2:prop, ~ t1 -> ~ t2 <-> t2 -> t1.
exact (CONTRAPOS_THM_bridge hlt_CONTRAPOS_THM).
Admitted.

// HOL Light: class.ml:233 / NOT_EXISTS_THM   (hash md5:bd9e48e90e3a55c73b430ea13ad14537)
Theorem hlt_NOT_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, ~ (exists x :e A, P x = 1) <-> forall x :e A, ~ P x = 1.
Admitted.
Theorem NOT_EXISTS_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, ~ (exists x :e A, P x = 1) <-> forall x :e A, ~ P x = 1) -> (forall A:set, forall P:set -> prop, ~ (exists x :e A, P x) <-> forall x :e A, ~ P x).
exact (fun H__top A => (xm (A = Empty) (forall P:set -> prop, ~ (exists x :e A, P x) <-> forall x :e A, ~ P x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, ~ (exists x :e hl__u, P x) <-> forall x :e hl__u, ~ P x) (fun P => (iffI (~ exists x :e Empty, P x) (forall x :e Empty, ~ P x) (fun _ => (forall_in_Empty (fun x => ~ P x))) (fun _ => (fun H : exists x :e Empty, P x => not_exists_in_Empty (fun x => P x) H)))))) (fun HAne => (imp_forall_pred (A) (fun P => ~ (exists x :e A, P x = 1) <-> forall x :e A, ~ P x = 1) (fun P => ~ (exists x :e A, P x) <-> forall x :e A, ~ P x) (fun P => (imp_iff (~ exists x :e A, hl_chip A P x = 1) (~ exists x :e A, P x) (forall x :e A, ~ hl_chip A P x = 1) (forall x :e A, ~ P x) (imp_not (exists x :e A, hl_chip A P x = 1) (exists x :e A, P x) (imp_exists_in (A) (fun x => P x) (fun x => hl_chip A P x = 1) (fun x Hx => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_not (exists x :e A, P x) (exists x :e A, hl_chip A P x = 1) (imp_exists_in (A) (fun x => hl_chip A P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_forall_in (A) (fun x => ~ hl_chip A P x = 1) (fun x => ~ P x) (fun x Hx => (imp_not (hl_chip A P x = 1) (P x) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_forall_in (A) (fun x => ~ P x) (fun x => ~ hl_chip A P x = 1) (fun x Hx => (imp_not (P x) (hl_chip A P x = 1) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))))))) (H__top A HAne)))).
Qed.
Theorem NOT_EXISTS_THM : forall A:set, forall P:set -> prop, ~ (exists x :e A, P x) <-> forall x :e A, ~ P x.
exact (NOT_EXISTS_THM_bridge hlt_NOT_EXISTS_THM).
Admitted.

// HOL Light: class.ml:240 / EXISTS_NOT_THM   (hash md5:6cc8add8ef8d6ef2111d93d16002aab6)
Theorem hlt_EXISTS_NOT_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, (exists x :e A, ~ P x = 1) <-> ~ forall x :e A, P x = 1.
Admitted.
Theorem EXISTS_NOT_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, (exists x :e A, ~ P x = 1) <-> ~ forall x :e A, P x = 1) -> (forall A:set, forall P:set -> prop, (exists x :e A, ~ P x) <-> ~ forall x :e A, P x).
exact (fun H__top A => (xm (A = Empty) (forall P:set -> prop, (exists x :e A, ~ P x) <-> ~ forall x :e A, P x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, (exists x :e hl__u, ~ P x) <-> ~ forall x :e hl__u, P x) (fun P => (iffI (exists x :e Empty, ~ P x) (~ forall x :e Empty, P x) (fun H : exists x :e Empty, ~ P x => FalseE ((fun H : exists x :e Empty, ~ P x => not_exists_in_Empty (fun x => ~ P x) H) H) (~ forall x :e Empty, P x)) (fun H : ~ forall x :e Empty, P x => FalseE ((fun H : ~ forall x :e Empty, P x => H (forall_in_Empty (fun x => P x))) H) (exists x :e Empty, ~ P x)))))) (fun HAne => (imp_forall_pred (A) (fun P => (exists x :e A, ~ P x = 1) <-> ~ forall x :e A, P x = 1) (fun P => (exists x :e A, ~ P x) <-> ~ forall x :e A, P x) (fun P => (imp_iff (exists x :e A, ~ hl_chip A P x = 1) (exists x :e A, ~ P x) (~ forall x :e A, hl_chip A P x = 1) (~ forall x :e A, P x) (imp_exists_in (A) (fun x => ~ hl_chip A P x = 1) (fun x => ~ P x) (fun x Hx => (imp_not (hl_chip A P x = 1) (P x) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_exists_in (A) (fun x => ~ P x) (fun x => ~ hl_chip A P x = 1) (fun x Hx => (imp_not (P x) (hl_chip A P x = 1) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_not (forall x :e A, hl_chip A P x = 1) (forall x :e A, P x) (imp_forall_in (A) (fun x => P x) (fun x => hl_chip A P x = 1) (fun x Hx => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_not (forall x :e A, P x) (forall x :e A, hl_chip A P x = 1) (imp_forall_in (A) (fun x => hl_chip A P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))))))) (H__top A HAne)))).
Qed.
Theorem EXISTS_NOT_THM : forall A:set, forall P:set -> prop, (exists x :e A, ~ P x) <-> ~ forall x :e A, P x.
exact (EXISTS_NOT_THM_bridge hlt_EXISTS_NOT_THM).
Admitted.

// HOL Light: class.ml:245 / NOT_FORALL_THM   (hash md5:2ea21d2081aa28f6bd8bb8c2f039cb31)
Theorem hlt_NOT_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, ~ (forall x :e A, P x = 1) <-> exists x :e A, ~ P x = 1.
Admitted.
Theorem NOT_FORALL_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, ~ (forall x :e A, P x = 1) <-> exists x :e A, ~ P x = 1) -> (forall A:set, forall P:set -> prop, ~ (forall x :e A, P x) <-> exists x :e A, ~ P x).
exact (fun H__top A => (xm (A = Empty) (forall P:set -> prop, ~ (forall x :e A, P x) <-> exists x :e A, ~ P x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, ~ (forall x :e hl__u, P x) <-> exists x :e hl__u, ~ P x) (fun P => (iffI (~ forall x :e Empty, P x) (exists x :e Empty, ~ P x) (fun H : ~ forall x :e Empty, P x => FalseE ((fun H : ~ forall x :e Empty, P x => H (forall_in_Empty (fun x => P x))) H) (exists x :e Empty, ~ P x)) (fun H : exists x :e Empty, ~ P x => FalseE ((fun H : exists x :e Empty, ~ P x => not_exists_in_Empty (fun x => ~ P x) H) H) (~ forall x :e Empty, P x)))))) (fun HAne => (imp_forall_pred (A) (fun P => ~ (forall x :e A, P x = 1) <-> exists x :e A, ~ P x = 1) (fun P => ~ (forall x :e A, P x) <-> exists x :e A, ~ P x) (fun P => (imp_iff (~ forall x :e A, hl_chip A P x = 1) (~ forall x :e A, P x) (exists x :e A, ~ hl_chip A P x = 1) (exists x :e A, ~ P x) (imp_not (forall x :e A, hl_chip A P x = 1) (forall x :e A, P x) (imp_forall_in (A) (fun x => P x) (fun x => hl_chip A P x = 1) (fun x Hx => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_not (forall x :e A, P x) (forall x :e A, hl_chip A P x = 1) (imp_forall_in (A) (fun x => hl_chip A P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_exists_in (A) (fun x => ~ hl_chip A P x = 1) (fun x => ~ P x) (fun x Hx => (imp_not (hl_chip A P x = 1) (P x) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_exists_in (A) (fun x => ~ P x) (fun x => ~ hl_chip A P x = 1) (fun x Hx => (imp_not (P x) (hl_chip A P x = 1) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))))))) (H__top A HAne)))).
Qed.
Theorem NOT_FORALL_THM : forall A:set, forall P:set -> prop, ~ (forall x :e A, P x) <-> exists x :e A, ~ P x.
exact (NOT_FORALL_THM_bridge hlt_NOT_FORALL_THM).
Admitted.

// HOL Light: class.ml:249 / FORALL_NOT_THM   (hash md5:46d579bbfb2d94977204d7499747c02c)
Theorem hlt_FORALL_NOT_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, (forall x :e A, ~ P x = 1) <-> ~ exists x :e A, P x = 1.
Admitted.
Theorem FORALL_NOT_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, (forall x :e A, ~ P x = 1) <-> ~ exists x :e A, P x = 1) -> (forall A:set, forall P:set -> prop, (forall x :e A, ~ P x) <-> ~ exists x :e A, P x).
exact (fun H__top A => (xm (A = Empty) (forall P:set -> prop, (forall x :e A, ~ P x) <-> ~ exists x :e A, P x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, (forall x :e hl__u, ~ P x) <-> ~ exists x :e hl__u, P x) (fun P => (iffI (forall x :e Empty, ~ P x) (~ exists x :e Empty, P x) (fun _ => (fun H : exists x :e Empty, P x => not_exists_in_Empty (fun x => P x) H)) (fun _ => (forall_in_Empty (fun x => ~ P x))))))) (fun HAne => (imp_forall_pred (A) (fun P => (forall x :e A, ~ P x = 1) <-> ~ exists x :e A, P x = 1) (fun P => (forall x :e A, ~ P x) <-> ~ exists x :e A, P x) (fun P => (imp_iff (forall x :e A, ~ hl_chip A P x = 1) (forall x :e A, ~ P x) (~ exists x :e A, hl_chip A P x = 1) (~ exists x :e A, P x) (imp_forall_in (A) (fun x => ~ hl_chip A P x = 1) (fun x => ~ P x) (fun x Hx => (imp_not (hl_chip A P x = 1) (P x) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_forall_in (A) (fun x => ~ P x) (fun x => ~ hl_chip A P x = 1) (fun x Hx => (imp_not (P x) (hl_chip A P x = 1) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_not (exists x :e A, hl_chip A P x = 1) (exists x :e A, P x) (imp_exists_in (A) (fun x => P x) (fun x => hl_chip A P x = 1) (fun x Hx => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))))) (imp_not (exists x :e A, P x) (exists x :e A, hl_chip A P x = 1) (imp_exists_in (A) (fun x => hl_chip A P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))))))) (H__top A HAne)))).
Qed.
Theorem FORALL_NOT_THM : forall A:set, forall P:set -> prop, (forall x :e A, ~ P x) <-> ~ exists x :e A, P x.
exact (FORALL_NOT_THM_bridge hlt_FORALL_NOT_THM).
Admitted.

// HOL Light: class.ml:257 / FORALL_BOOL_THM   (hash md5:b3f414a38201a0bff3f5497ef007dd44)
// not bridged: 
Theorem FORALL_BOOL_THM : forall P:set -> prop, (forall b:prop, P (if b then 1 else 0)) <-> P (if True then 1 else 0) /\ P (if False then 1 else 0).
Admitted.

// HOL Light: class.ml:262 / EXISTS_BOOL_THM   (hash md5:1f3fc91c253d2d50983241538709f00e)
// not bridged: 
Theorem EXISTS_BOOL_THM : forall P:set -> prop, (exists b:prop, P (if b then 1 else 0)) <-> P (if True then 1 else 0) \/ P (if False then 1 else 0).
Admitted.

// HOL Light: class.ml:271 / LEFT_FORALL_OR_THM   (hash md5:361ce6f536bbd2a6777e5631d7f4d876)
Theorem hlt_LEFT_FORALL_OR_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1 \/ Q = 1) <-> (forall x :e A, P x = 1) \/ Q = 1.
Admitted.
Theorem LEFT_FORALL_OR_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1 \/ Q = 1) <-> (forall x :e A, P x = 1) \/ Q = 1) -> (forall A:set, forall P:set -> prop, forall Q:prop, (forall x :e A, P x \/ Q) <-> (forall x :e A, P x) \/ Q).
exact (fun H__top A => (xm (A = Empty) (forall P:set -> prop, forall Q:prop, (forall x :e A, P x \/ Q) <-> (forall x :e A, P x) \/ Q) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, forall Q:prop, (forall x :e hl__u, P x \/ Q) <-> (forall x :e hl__u, P x) \/ Q) (fun P => (fun Q => (iffI (forall x :e Empty, P x \/ Q) ((forall x :e Empty, P x) \/ Q) (fun _ => (orIL (forall x :e Empty, P x) (Q) (forall_in_Empty (fun x => P x)))) (fun _ => (forall_in_Empty (fun x => P x \/ Q)))))))) (fun HAne => (imp_forall_pred (A) (fun P => forall Q :e 2, (forall x :e A, P x = 1 \/ Q = 1) <-> (forall x :e A, P x = 1) \/ Q = 1) (fun P => forall Q:prop, (forall x :e A, P x \/ Q) <-> (forall x :e A, P x) \/ Q) (fun P => (imp_forall_bool (fun Q => (forall x :e A, hl_chip A P x = 1 \/ Q = 1) <-> (forall x :e A, hl_chip A P x = 1) \/ Q = 1) (fun Q => (forall x :e A, P x \/ Q) <-> (forall x :e A, P x) \/ Q) (fun Q => (imp_iff (forall x :e A, hl_chip A P x = 1 \/ (if Q then 1 else 0) = 1) (forall x :e A, P x \/ Q) ((forall x :e A, hl_chip A P x = 1) \/ (if Q then 1 else 0) = 1) ((forall x :e A, P x) \/ Q) (imp_forall_in (A) (fun x => hl_chip A P x = 1 \/ (if Q then 1 else 0) = 1) (fun x => P x \/ Q) (fun x Hx => (imp_or (hl_chip A P x = 1) (P x) ((if Q then 1 else 0) = 1) (Q) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffEL ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q))))) (imp_forall_in (A) (fun x => P x \/ Q) (fun x => hl_chip A P x = 1 \/ (if Q then 1 else 0) = 1) (fun x Hx => (imp_or (P x) (hl_chip A P x = 1) (Q) ((if Q then 1 else 0) = 1) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffER ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q))))) (imp_or (forall x :e A, hl_chip A P x = 1) (forall x :e A, P x) ((if Q then 1 else 0) = 1) (Q) (imp_forall_in (A) (fun x => hl_chip A P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))) (iffEL ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q))) (imp_or (forall x :e A, P x) (forall x :e A, hl_chip A P x = 1) (Q) ((if Q then 1 else 0) = 1) (imp_forall_in (A) (fun x => P x) (fun x => hl_chip A P x = 1) (fun x Hx => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))) (iffER ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)))))))) (H__top A HAne)))).
Qed.
Theorem LEFT_FORALL_OR_THM : forall A:set, forall P:set -> prop, forall Q:prop, (forall x :e A, P x \/ Q) <-> (forall x :e A, P x) \/ Q.
exact (LEFT_FORALL_OR_THM_bridge hlt_LEFT_FORALL_OR_THM).
Admitted.

// HOL Light: class.ml:276 / RIGHT_FORALL_OR_THM   (hash md5:a34c284d93a460be6f13fd44e1786f1d)
Theorem hlt_RIGHT_FORALL_OR_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, (forall x :e A, P = 1 \/ Q x = 1) <-> P = 1 \/ forall x :e A, Q x = 1.
Admitted.
Theorem RIGHT_FORALL_OR_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, (forall x :e A, P = 1 \/ Q x = 1) <-> P = 1 \/ forall x :e A, Q x = 1) -> (forall A:set, forall P:prop, forall Q:set -> prop, (forall x :e A, P \/ Q x) <-> P \/ forall x :e A, Q x).
exact (fun H__top A => (xm (A = Empty) (forall P:prop, forall Q:set -> prop, (forall x :e A, P \/ Q x) <-> P \/ forall x :e A, Q x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:prop, forall Q:set -> prop, (forall x :e hl__u, P \/ Q x) <-> P \/ forall x :e hl__u, Q x) (fun P => (fun Q => (iffI (forall x :e Empty, P \/ Q x) (P \/ forall x :e Empty, Q x) (fun _ => (orIR (P) (forall x :e Empty, Q x) (forall_in_Empty (fun x => Q x)))) (fun _ => (forall_in_Empty (fun x => P \/ Q x)))))))) (fun HAne => (imp_forall_bool (fun P => forall Q :e 2 :^: A, (forall x :e A, P = 1 \/ Q x = 1) <-> P = 1 \/ forall x :e A, Q x = 1) (fun P => forall Q:set -> prop, (forall x :e A, P \/ Q x) <-> P \/ forall x :e A, Q x) (fun P => (imp_forall_pred (A) (fun Q => (forall x :e A, (if P then 1 else 0) = 1 \/ Q x = 1) <-> (if P then 1 else 0) = 1 \/ forall x :e A, Q x = 1) (fun Q => (forall x :e A, P \/ Q x) <-> P \/ forall x :e A, Q x) (fun Q => (imp_iff (forall x :e A, (if P then 1 else 0) = 1 \/ hl_chip A Q x = 1) (forall x :e A, P \/ Q x) ((if P then 1 else 0) = 1 \/ forall x :e A, hl_chip A Q x = 1) (P \/ forall x :e A, Q x) (imp_forall_in (A) (fun x => (if P then 1 else 0) = 1 \/ hl_chip A Q x = 1) (fun x => P \/ Q x) (fun x Hx => (imp_or ((if P then 1 else 0) = 1) (P) (hl_chip A Q x = 1) (Q x) (iffEL ((if P then 1 else 0) = 1) (P) (If_1_iff P)) (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))))) (imp_forall_in (A) (fun x => P \/ Q x) (fun x => (if P then 1 else 0) = 1 \/ hl_chip A Q x = 1) (fun x Hx => (imp_or (P) ((if P then 1 else 0) = 1) (Q x) (hl_chip A Q x = 1) (iffER ((if P then 1 else 0) = 1) (P) (If_1_iff P)) (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))))) (imp_or ((if P then 1 else 0) = 1) (P) (forall x :e A, hl_chip A Q x = 1) (forall x :e A, Q x) (iffEL ((if P then 1 else 0) = 1) (P) (If_1_iff P)) (imp_forall_in (A) (fun x => hl_chip A Q x = 1) (fun x => Q x) (fun x Hx => (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))))) (imp_or (P) ((if P then 1 else 0) = 1) (forall x :e A, Q x) (forall x :e A, hl_chip A Q x = 1) (iffER ((if P then 1 else 0) = 1) (P) (If_1_iff P)) (imp_forall_in (A) (fun x => Q x) (fun x => hl_chip A Q x = 1) (fun x Hx => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)))))))))) (H__top A HAne)))).
Qed.
Theorem RIGHT_FORALL_OR_THM : forall A:set, forall P:prop, forall Q:set -> prop, (forall x :e A, P \/ Q x) <-> P \/ forall x :e A, Q x.
exact (RIGHT_FORALL_OR_THM_bridge hlt_RIGHT_FORALL_OR_THM).
Admitted.

// HOL Light: class.ml:281 / LEFT_OR_FORALL_THM   (hash md5:0e9f71044e0d8bff7a2cdc76ae4f2ec0)
Theorem hlt_LEFT_OR_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1) \/ Q = 1 <-> forall x :e A, P x = 1 \/ Q = 1.
Admitted.
Theorem LEFT_OR_FORALL_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1) \/ Q = 1 <-> forall x :e A, P x = 1 \/ Q = 1) -> (forall A:set, forall P:set -> prop, forall Q:prop, (forall x :e A, P x) \/ Q <-> forall x :e A, P x \/ Q).
exact (fun H__top A => (xm (A = Empty) (forall P:set -> prop, forall Q:prop, (forall x :e A, P x) \/ Q <-> forall x :e A, P x \/ Q) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, forall Q:prop, (forall x :e hl__u, P x) \/ Q <-> forall x :e hl__u, P x \/ Q) (fun P => (fun Q => (iffI ((forall x :e Empty, P x) \/ Q) (forall x :e Empty, P x \/ Q) (fun _ => (forall_in_Empty (fun x => P x \/ Q))) (fun _ => (orIL (forall x :e Empty, P x) (Q) (forall_in_Empty (fun x => P x))))))))) (fun HAne => (imp_forall_pred (A) (fun P => forall Q :e 2, (forall x :e A, P x = 1) \/ Q = 1 <-> forall x :e A, P x = 1 \/ Q = 1) (fun P => forall Q:prop, (forall x :e A, P x) \/ Q <-> forall x :e A, P x \/ Q) (fun P => (imp_forall_bool (fun Q => (forall x :e A, hl_chip A P x = 1) \/ Q = 1 <-> forall x :e A, hl_chip A P x = 1 \/ Q = 1) (fun Q => (forall x :e A, P x) \/ Q <-> forall x :e A, P x \/ Q) (fun Q => (imp_iff ((forall x :e A, hl_chip A P x = 1) \/ (if Q then 1 else 0) = 1) ((forall x :e A, P x) \/ Q) (forall x :e A, hl_chip A P x = 1 \/ (if Q then 1 else 0) = 1) (forall x :e A, P x \/ Q) (imp_or (forall x :e A, hl_chip A P x = 1) (forall x :e A, P x) ((if Q then 1 else 0) = 1) (Q) (imp_forall_in (A) (fun x => hl_chip A P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))) (iffEL ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q))) (imp_or (forall x :e A, P x) (forall x :e A, hl_chip A P x = 1) (Q) ((if Q then 1 else 0) = 1) (imp_forall_in (A) (fun x => P x) (fun x => hl_chip A P x = 1) (fun x Hx => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))) (iffER ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q))) (imp_forall_in (A) (fun x => hl_chip A P x = 1 \/ (if Q then 1 else 0) = 1) (fun x => P x \/ Q) (fun x Hx => (imp_or (hl_chip A P x = 1) (P x) ((if Q then 1 else 0) = 1) (Q) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffEL ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q))))) (imp_forall_in (A) (fun x => P x \/ Q) (fun x => hl_chip A P x = 1 \/ (if Q then 1 else 0) = 1) (fun x Hx => (imp_or (P x) (hl_chip A P x = 1) (Q) ((if Q then 1 else 0) = 1) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffER ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)))))))))) (H__top A HAne)))).
Qed.
Theorem LEFT_OR_FORALL_THM : forall A:set, forall P:set -> prop, forall Q:prop, (forall x :e A, P x) \/ Q <-> forall x :e A, P x \/ Q.
exact (LEFT_OR_FORALL_THM_bridge hlt_LEFT_OR_FORALL_THM).
Admitted.

// HOL Light: class.ml:285 / RIGHT_OR_FORALL_THM   (hash md5:36d26a3e66649cdb26b042df825aeb45)
Theorem hlt_RIGHT_OR_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 \/ (forall x :e A, Q x = 1) <-> forall x :e A, P = 1 \/ Q x = 1.
Admitted.
Theorem RIGHT_OR_FORALL_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 \/ (forall x :e A, Q x = 1) <-> forall x :e A, P = 1 \/ Q x = 1) -> (forall A:set, forall P:prop, forall Q:set -> prop, P \/ (forall x :e A, Q x) <-> forall x :e A, P \/ Q x).
exact (fun H__top A => (xm (A = Empty) (forall P:prop, forall Q:set -> prop, P \/ (forall x :e A, Q x) <-> forall x :e A, P \/ Q x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:prop, forall Q:set -> prop, P \/ (forall x :e hl__u, Q x) <-> forall x :e hl__u, P \/ Q x) (fun P => (fun Q => (iffI (P \/ forall x :e Empty, Q x) (forall x :e Empty, P \/ Q x) (fun _ => (forall_in_Empty (fun x => P \/ Q x))) (fun _ => (orIR (P) (forall x :e Empty, Q x) (forall_in_Empty (fun x => Q x))))))))) (fun HAne => (imp_forall_bool (fun P => forall Q :e 2 :^: A, P = 1 \/ (forall x :e A, Q x = 1) <-> forall x :e A, P = 1 \/ Q x = 1) (fun P => forall Q:set -> prop, P \/ (forall x :e A, Q x) <-> forall x :e A, P \/ Q x) (fun P => (imp_forall_pred (A) (fun Q => (if P then 1 else 0) = 1 \/ (forall x :e A, Q x = 1) <-> forall x :e A, (if P then 1 else 0) = 1 \/ Q x = 1) (fun Q => P \/ (forall x :e A, Q x) <-> forall x :e A, P \/ Q x) (fun Q => (imp_iff ((if P then 1 else 0) = 1 \/ forall x :e A, hl_chip A Q x = 1) (P \/ forall x :e A, Q x) (forall x :e A, (if P then 1 else 0) = 1 \/ hl_chip A Q x = 1) (forall x :e A, P \/ Q x) (imp_or ((if P then 1 else 0) = 1) (P) (forall x :e A, hl_chip A Q x = 1) (forall x :e A, Q x) (iffEL ((if P then 1 else 0) = 1) (P) (If_1_iff P)) (imp_forall_in (A) (fun x => hl_chip A Q x = 1) (fun x => Q x) (fun x Hx => (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))))) (imp_or (P) ((if P then 1 else 0) = 1) (forall x :e A, Q x) (forall x :e A, hl_chip A Q x = 1) (iffER ((if P then 1 else 0) = 1) (P) (If_1_iff P)) (imp_forall_in (A) (fun x => Q x) (fun x => hl_chip A Q x = 1) (fun x Hx => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))))) (imp_forall_in (A) (fun x => (if P then 1 else 0) = 1 \/ hl_chip A Q x = 1) (fun x => P \/ Q x) (fun x Hx => (imp_or ((if P then 1 else 0) = 1) (P) (hl_chip A Q x = 1) (Q x) (iffEL ((if P then 1 else 0) = 1) (P) (If_1_iff P)) (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))))) (imp_forall_in (A) (fun x => P \/ Q x) (fun x => (if P then 1 else 0) = 1 \/ hl_chip A Q x = 1) (fun x Hx => (imp_or (P) ((if P then 1 else 0) = 1) (Q x) (hl_chip A Q x = 1) (iffER ((if P then 1 else 0) = 1) (P) (If_1_iff P)) (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)))))))))) (H__top A HAne)))).
Qed.
Theorem RIGHT_OR_FORALL_THM : forall A:set, forall P:prop, forall Q:set -> prop, P \/ (forall x :e A, Q x) <-> forall x :e A, P \/ Q x.
exact (RIGHT_OR_FORALL_THM_bridge hlt_RIGHT_OR_FORALL_THM).
Admitted.

// HOL Light: class.ml:293 / LEFT_IMP_FORALL_THM   (hash md5:6cc6ae95cc14ae2b6adbbb7d40b439d6)
Theorem hlt_LEFT_IMP_FORALL_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1) -> Q = 1 <-> exists x :e A, P x = 1 -> Q = 1.
Admitted.
Theorem LEFT_IMP_FORALL_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (forall x :e A, P x = 1) -> Q = 1 <-> exists x :e A, P x = 1 -> Q = 1) -> (forall A:set, A <> Empty -> forall P:set -> prop, forall Q:prop, (forall x :e A, P x) -> Q <-> exists x :e A, P x -> Q).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall Q :e 2, (forall x :e A, P x = 1) -> Q = 1 <-> exists x :e A, P x = 1 -> Q = 1) (fun P => forall Q:prop, (forall x :e A, P x) -> Q <-> exists x :e A, P x -> Q) (fun P => (imp_forall_bool (fun Q => (forall x :e A, hl_chip A P x = 1) -> Q = 1 <-> exists x :e A, hl_chip A P x = 1 -> Q = 1) (fun Q => (forall x :e A, P x) -> Q <-> exists x :e A, P x -> Q) (fun Q => (imp_iff ((forall x :e A, hl_chip A P x = 1) -> (if Q then 1 else 0) = 1) ((forall x :e A, P x) -> Q) (exists x :e A, hl_chip A P x = 1 -> (if Q then 1 else 0) = 1) (exists x :e A, P x -> Q) (fun H__L : ((forall x :e A, hl_chip A P x = 1) -> ((if Q then 1 else 0) = 1)) => fun H__hyp : (forall x :e A, P x) => (iffEL ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)) (H__L ((imp_forall_in (A) (fun x => P x) (fun x => hl_chip A P x = 1) (fun x Hx => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))) H__hyp))) (fun H__N : ((forall x :e A, P x) -> (Q)) => fun H__hyp : (forall x :e A, hl_chip A P x = 1) => (iffER ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)) (H__N ((imp_forall_in (A) (fun x => hl_chip A P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))) H__hyp))) (imp_exists_in (A) (fun x => hl_chip A P x = 1 -> (if Q then 1 else 0) = 1) (fun x => P x -> Q) (fun x Hx => (fun H__L : ((hl_chip A P x = 1) -> ((if Q then 1 else 0) = 1)) => fun H__hyp : (P x) => (iffEL ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)) (H__L ((iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) H__hyp))))) (imp_exists_in (A) (fun x => P x -> Q) (fun x => hl_chip A P x = 1 -> (if Q then 1 else 0) = 1) (fun x Hx => (fun H__N : ((P x) -> (Q)) => fun H__hyp : (hl_chip A P x = 1) => (iffER ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)) (H__N ((iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) H__hyp)))))))))) (H__top A HAne)).
Qed.
Theorem LEFT_IMP_FORALL_THM : forall A:set, A <> Empty -> forall P:set -> prop, forall Q:prop, (forall x :e A, P x) -> Q <-> exists x :e A, P x -> Q.
exact (LEFT_IMP_FORALL_THM_bridge hlt_LEFT_IMP_FORALL_THM).
Admitted.

// HOL Light: class.ml:298 / LEFT_EXISTS_IMP_THM   (hash md5:4592568a3f4db26ed6560bf0037fc48a)
Theorem hlt_LEFT_EXISTS_IMP_THM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (exists x :e A, P x = 1 -> Q = 1) <-> (forall x :e A, P x = 1) -> Q = 1.
Admitted.
Theorem LEFT_EXISTS_IMP_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall Q :e 2, (exists x :e A, P x = 1 -> Q = 1) <-> (forall x :e A, P x = 1) -> Q = 1) -> (forall A:set, A <> Empty -> forall P:set -> prop, forall Q:prop, (exists x :e A, P x -> Q) <-> (forall x :e A, P x) -> Q).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall Q :e 2, (exists x :e A, P x = 1 -> Q = 1) <-> (forall x :e A, P x = 1) -> Q = 1) (fun P => forall Q:prop, (exists x :e A, P x -> Q) <-> (forall x :e A, P x) -> Q) (fun P => (imp_forall_bool (fun Q => (exists x :e A, hl_chip A P x = 1 -> Q = 1) <-> (forall x :e A, hl_chip A P x = 1) -> Q = 1) (fun Q => (exists x :e A, P x -> Q) <-> (forall x :e A, P x) -> Q) (fun Q => (imp_iff (exists x :e A, hl_chip A P x = 1 -> (if Q then 1 else 0) = 1) (exists x :e A, P x -> Q) ((forall x :e A, hl_chip A P x = 1) -> (if Q then 1 else 0) = 1) ((forall x :e A, P x) -> Q) (imp_exists_in (A) (fun x => hl_chip A P x = 1 -> (if Q then 1 else 0) = 1) (fun x => P x -> Q) (fun x Hx => (fun H__L : ((hl_chip A P x = 1) -> ((if Q then 1 else 0) = 1)) => fun H__hyp : (P x) => (iffEL ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)) (H__L ((iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) H__hyp))))) (imp_exists_in (A) (fun x => P x -> Q) (fun x => hl_chip A P x = 1 -> (if Q then 1 else 0) = 1) (fun x Hx => (fun H__N : ((P x) -> (Q)) => fun H__hyp : (hl_chip A P x = 1) => (iffER ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)) (H__N ((iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) H__hyp))))) (fun H__L : ((forall x :e A, hl_chip A P x = 1) -> ((if Q then 1 else 0) = 1)) => fun H__hyp : (forall x :e A, P x) => (iffEL ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)) (H__L ((imp_forall_in (A) (fun x => P x) (fun x => hl_chip A P x = 1) (fun x Hx => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))) H__hyp))) (fun H__N : ((forall x :e A, P x) -> (Q)) => fun H__hyp : (forall x :e A, hl_chip A P x = 1) => (iffER ((if Q then 1 else 0) = 1) (Q) (If_1_iff Q)) (H__N ((imp_forall_in (A) (fun x => hl_chip A P x = 1) (fun x => P x) (fun x Hx => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))) H__hyp)))))))) (H__top A HAne)).
Qed.
Theorem LEFT_EXISTS_IMP_THM : forall A:set, A <> Empty -> forall P:set -> prop, forall Q:prop, (exists x :e A, P x -> Q) <-> (forall x :e A, P x) -> Q.
exact (LEFT_EXISTS_IMP_THM_bridge hlt_LEFT_EXISTS_IMP_THM).
Admitted.

// HOL Light: class.ml:302 / RIGHT_IMP_EXISTS_THM   (hash md5:ae462839da6097103bc5fa0e21a1130c)
Theorem hlt_RIGHT_IMP_EXISTS_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 -> (exists x :e A, Q x = 1) <-> exists x :e A, P = 1 -> Q x = 1.
Admitted.
Theorem RIGHT_IMP_EXISTS_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, P = 1 -> (exists x :e A, Q x = 1) <-> exists x :e A, P = 1 -> Q x = 1) -> (forall A:set, A <> Empty -> forall P:prop, forall Q:set -> prop, P -> (exists x :e A, Q x) <-> exists x :e A, P -> Q x).
exact (fun H__top A HAne => (imp_forall_bool (fun P => forall Q :e 2 :^: A, P = 1 -> (exists x :e A, Q x = 1) <-> exists x :e A, P = 1 -> Q x = 1) (fun P => forall Q:set -> prop, P -> (exists x :e A, Q x) <-> exists x :e A, P -> Q x) (fun P => (imp_forall_pred (A) (fun Q => (if P then 1 else 0) = 1 -> (exists x :e A, Q x = 1) <-> exists x :e A, (if P then 1 else 0) = 1 -> Q x = 1) (fun Q => P -> (exists x :e A, Q x) <-> exists x :e A, P -> Q x) (fun Q => (imp_iff ((if P then 1 else 0) = 1 -> exists x :e A, hl_chip A Q x = 1) (P -> exists x :e A, Q x) (exists x :e A, (if P then 1 else 0) = 1 -> hl_chip A Q x = 1) (exists x :e A, P -> Q x) (fun H__L : (((if P then 1 else 0) = 1) -> (exists x :e A, hl_chip A Q x = 1)) => fun H__hyp : (P) => (imp_exists_in (A) (fun x => hl_chip A Q x = 1) (fun x => Q x) (fun x Hx => (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)))) (H__L ((iffER ((if P then 1 else 0) = 1) (P) (If_1_iff P)) H__hyp))) (fun H__N : ((P) -> (exists x :e A, Q x)) => fun H__hyp : ((if P then 1 else 0) = 1) => (imp_exists_in (A) (fun x => Q x) (fun x => hl_chip A Q x = 1) (fun x Hx => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)))) (H__N ((iffEL ((if P then 1 else 0) = 1) (P) (If_1_iff P)) H__hyp))) (imp_exists_in (A) (fun x => (if P then 1 else 0) = 1 -> hl_chip A Q x = 1) (fun x => P -> Q x) (fun x Hx => (fun H__L : (((if P then 1 else 0) = 1) -> (hl_chip A Q x = 1)) => fun H__hyp : (P) => (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__L ((iffER ((if P then 1 else 0) = 1) (P) (If_1_iff P)) H__hyp))))) (imp_exists_in (A) (fun x => P -> Q x) (fun x => (if P then 1 else 0) = 1 -> hl_chip A Q x = 1) (fun x Hx => (fun H__N : ((P) -> (Q x)) => fun H__hyp : ((if P then 1 else 0) = 1) => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__N ((iffEL ((if P then 1 else 0) = 1) (P) (If_1_iff P)) H__hyp)))))))))) (H__top A HAne)).
Qed.
Theorem RIGHT_IMP_EXISTS_THM : forall A:set, A <> Empty -> forall P:prop, forall Q:set -> prop, P -> (exists x :e A, Q x) <-> exists x :e A, P -> Q x.
exact (RIGHT_IMP_EXISTS_THM_bridge hlt_RIGHT_IMP_EXISTS_THM).
Admitted.

// HOL Light: class.ml:307 / RIGHT_EXISTS_IMP_THM   (hash md5:61b7e26ac74778c0e8ccdd9a6727daaa)
Theorem hlt_RIGHT_EXISTS_IMP_THM : forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, (exists x :e A, P = 1 -> Q x = 1) <-> P = 1 -> exists x :e A, Q x = 1.
Admitted.
Theorem RIGHT_EXISTS_IMP_THM_bridge : (forall A:set, A <> Empty -> forall P :e 2, forall Q :e 2 :^: A, (exists x :e A, P = 1 -> Q x = 1) <-> P = 1 -> exists x :e A, Q x = 1) -> (forall A:set, A <> Empty -> forall P:prop, forall Q:set -> prop, (exists x :e A, P -> Q x) <-> P -> exists x :e A, Q x).
exact (fun H__top A HAne => (imp_forall_bool (fun P => forall Q :e 2 :^: A, (exists x :e A, P = 1 -> Q x = 1) <-> P = 1 -> exists x :e A, Q x = 1) (fun P => forall Q:set -> prop, (exists x :e A, P -> Q x) <-> P -> exists x :e A, Q x) (fun P => (imp_forall_pred (A) (fun Q => (exists x :e A, (if P then 1 else 0) = 1 -> Q x = 1) <-> (if P then 1 else 0) = 1 -> exists x :e A, Q x = 1) (fun Q => (exists x :e A, P -> Q x) <-> P -> exists x :e A, Q x) (fun Q => (imp_iff (exists x :e A, (if P then 1 else 0) = 1 -> hl_chip A Q x = 1) (exists x :e A, P -> Q x) ((if P then 1 else 0) = 1 -> exists x :e A, hl_chip A Q x = 1) (P -> exists x :e A, Q x) (imp_exists_in (A) (fun x => (if P then 1 else 0) = 1 -> hl_chip A Q x = 1) (fun x => P -> Q x) (fun x Hx => (fun H__L : (((if P then 1 else 0) = 1) -> (hl_chip A Q x = 1)) => fun H__hyp : (P) => (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__L ((iffER ((if P then 1 else 0) = 1) (P) (If_1_iff P)) H__hyp))))) (imp_exists_in (A) (fun x => P -> Q x) (fun x => (if P then 1 else 0) = 1 -> hl_chip A Q x = 1) (fun x Hx => (fun H__N : ((P) -> (Q x)) => fun H__hyp : ((if P then 1 else 0) = 1) => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__N ((iffEL ((if P then 1 else 0) = 1) (P) (If_1_iff P)) H__hyp))))) (fun H__L : (((if P then 1 else 0) = 1) -> (exists x :e A, hl_chip A Q x = 1)) => fun H__hyp : (P) => (imp_exists_in (A) (fun x => hl_chip A Q x = 1) (fun x => Q x) (fun x Hx => (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)))) (H__L ((iffER ((if P then 1 else 0) = 1) (P) (If_1_iff P)) H__hyp))) (fun H__N : ((P) -> (exists x :e A, Q x)) => fun H__hyp : ((if P then 1 else 0) = 1) => (imp_exists_in (A) (fun x => Q x) (fun x => hl_chip A Q x = 1) (fun x Hx => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)))) (H__N ((iffEL ((if P then 1 else 0) = 1) (P) (If_1_iff P)) H__hyp)))))))) (H__top A HAne)).
Qed.
Theorem RIGHT_EXISTS_IMP_THM : forall A:set, A <> Empty -> forall P:prop, forall Q:set -> prop, (exists x :e A, P -> Q x) <-> P -> exists x :e A, Q x.
exact (RIGHT_EXISTS_IMP_THM_bridge hlt_RIGHT_EXISTS_IMP_THM).
Admitted.

// HOL Light: class.ml:315 / COND_DEF   (hash md5:4b7321c4b0ce36e9d6ae573b04198d8e)
// not bridged: 
Theorem COND_DEF : forall A:set, forall t:prop, forall t1 t2 :e A, (if t then t1 else t2) = choose_in A (fun x:set => ((t <-> True) -> x = t1) /\ ((t <-> False) -> x = t2)).
Admitted.

// HOL Light: class.ml:319 / COND_CLAUSES   (hash md5:0917c6f97e746313156fb948ae4a0a66)
// not bridged: 
Theorem COND_CLAUSES : forall A:set, forall t1 t2 :e A, (if True then t1 else t2) = t1 /\ (if False then t1 else t2) = t2.
Admitted.

// HOL Light: class.ml:342 / COND_EXPAND   (hash md5:a0ffc58d882ed08bb9ceb976d7d87a07)
// not bridged: 
Theorem COND_EXPAND : forall b t1 t2:prop, (b -> t1) /\ (~ b -> t2) <-> (~ b \/ t1) /\ (b \/ t2).
Admitted.

// HOL Light: class.ml:347 / COND_ID   (hash md5:6cd454b7a60ebc592010064af1887257)
Theorem hlt_COND_ID : forall A:set, A <> Empty -> forall b :e 2, forall t :e A, hl_COND A b t t = t.
Admitted.
Theorem COND_ID_bridge : (forall A:set, A <> Empty -> forall b :e 2, forall t :e A, hl_COND A b t t = t) -> (forall A:set, forall b:prop, forall t :e A, (if b then t else t) = t).
exact (fun H__top A => (xm (A = Empty) (forall b:prop, forall t :e A, (if b then t else t) = t) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall b:prop, forall t :e hl__u, (if b then t else t) = t) (fun b => (forall_in_Empty (fun t => (if b then t else t) = t))))) (fun HAne => (imp_forall_bool (fun b => forall t :e A, hl_COND A b t t = t) (fun b => forall t :e A, (if b then t else t) = t) (fun b => (imp_forall_in (A) (fun t => hl_COND A (if b then 1 else 0) t t = t) (fun t => (if b then t else t) = t) (fun t Ht => (imp_eq (hl_COND A (if b then 1 else 0) t t) (if b then t else t) (t) (t) (hl_COND_if (A) (if b then 1 else 0) (If_in_2 b) (b) (If_1_iff b) (t) Ht (t) Ht) (fun q H => H)))))) (H__top A HAne)))).
Qed.
Theorem COND_ID : forall A:set, forall b:prop, forall t :e A, (if b then t else t) = t.
exact (COND_ID_bridge hlt_COND_ID).
Admitted.

// HOL Light: class.ml:351 / COND_RAND   (hash md5:abd733d2ca6bac4ed355d508eb6d38ff)
// not bridged: 
Theorem COND_RAND : forall A B:set, B <> Empty -> forall b:prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall x y :e A, f (if b then x else y) = if b then f x else f y.
Admitted.

// HOL Light: class.ml:355 / COND_RATOR   (hash md5:daf8a0139729304ef354db21fe53723a)
// not bridged: 
Theorem COND_RATOR : forall A B:set, forall b:prop, forall f g :e B :^: A, forall x :e A, (if b then f x else g x) = if b then f x else g x.
Admitted.

// HOL Light: class.ml:359 / COND_ABS   (hash md5:1ff110853c4fd6318c48220aea045eda)
// not bridged: 
Theorem COND_ABS : forall A B:set, forall b:prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> forall x :e A, (if b then f x else g x) = if b then f x else g x.
Admitted.

// HOL Light: class.ml:363 / COND_SWAP   (hash md5:517d4149a3b1212d2fd976fea9192f45)
// not bridged: 
Theorem COND_SWAP : forall A:set, forall p:prop, forall x y :e A, (if ~ p then x else y) = if p then y else x.
Admitted.

// HOL Light: class.ml:388 / MONO_COND   (hash md5:3bf95bbe2ccb554b6786e9c177f87e70)
// not bridged: 
Theorem MONO_COND : forall A B C D b:prop, (A -> B) /\ (C -> D) -> (b -> A) /\ (~ b -> C) -> (b -> B) /\ (~ b -> D).
Admitted.

// HOL Light: class.ml:399 / COND_ELIM_THM   (hash md5:a175440e00beddf5149a7ff13668add1)
// not bridged: 
Theorem COND_ELIM_THM : forall A:set, forall P:set -> prop, forall c:prop, forall x y :e A, P (if c then x else y) <-> (c -> P x) /\ (~ c -> P y).
Admitted.

// HOL Light: class.ml:418 / SKOLEM_THM   (hash md5:7032340324a1a8ad7909cb040961f738)
// not bridged: 
Theorem SKOLEM_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, (forall x :e A, exists y :e B, P x y) <-> exists y:set -> set, (forall x :e A, y x :e B) /\ forall x :e A, P x (y x).
Admitted.

// HOL Light: class.ml:426 / SKOLEM_THM_GEN   (hash md5:5565ee13d340ccbd045d169fd93d59bc)
// not bridged: 
Theorem SKOLEM_THM_GEN : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall R0:set -> set -> prop, (forall x :e A, P x -> exists y :e B, R0 x y) <-> exists f:set -> set, (forall x :e A, f x :e B) /\ forall x :e A, P x -> R0 x (f x).
Admitted.

// HOL Light: class.ml:434 / UNIQUE_SKOLEM_ALT   (hash md5:a0be667b32ad906a5f23194afc353c19)
// not bridged: 
Theorem UNIQUE_SKOLEM_ALT : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, (forall x :e A, exists y :e B, P x y /\ forall y0 :e B, P x y0 -> y0 = y) <-> exists f:set -> set, (forall x :e A, f x :e B) /\ forall x :e A, forall y :e B, P x y <-> f x = y.
Admitted.

// HOL Light: class.ml:442 / UNIQUE_SKOLEM_THM   (hash md5:e8db4e1e4a06d49a8fc6b9eaee700c91)
// not bridged: 
Theorem UNIQUE_SKOLEM_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, (forall x :e A, exists y :e B, P x y /\ forall y0 :e B, P x y0 -> y0 = y) <-> exists f:set -> set, (forall x :e A, f x :e B) /\ ((forall x :e A, P x (f x)) /\ forall y:set -> set, (forall x :e A, y x :e B) -> (forall x :e A, P x (y x)) -> forall x :e A, y x = f x).
Admitted.

// HOL Light: class.ml:479 / bool_INDUCT   (hash md5:2768244a6fdb07c6d72a47218fa76a7f)
// not bridged: 
Theorem bool_INDUCT : forall P:set -> prop, P (if False then 1 else 0) /\ P (if True then 1 else 0) -> forall x:prop, P (if x then 1 else 0).
Admitted.

// HOL Light: class.ml:484 / bool_RECURSION   (hash md5:69823fe554102974b1cd27dcd768bccf)
// not bridged: 
Theorem bool_RECURSION : forall A:set, forall a b :e A, exists f:set -> set, (forall x :e 2, f x :e A) /\ (f (if False then 1 else 0) = a /\ f (if True then 1 else 0) = b).
Admitted.

