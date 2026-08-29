// hol2mg certification module (private): shard bool of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: bool.ml:76 / T_DEF   (hash md5:0f884614e334e71c404506d560fc3b72)
Theorem hlt_T_DEF : True <-> (fun p :e 2 => p) = fun p :e 2 => p.
Admitted.
Theorem T_DEF_bridge : (True <-> (fun p :e 2 => p) = fun p :e 2 => p) -> (True <-> forall p:prop, p <-> p).
exact (fun H__top => (imp_iff (True) (True) ((fun p :e 2 => p) = fun p :e 2 => p) (forall p:prop, p <-> p) (imp_refl True) (imp_refl True) (imp_trans ((fun p :e 2 => p) = fun p :e 2 => p) (forall p :e 2, p = 1 <-> p = 1) (forall p:prop, p <-> p) (imp_trans ((fun p :e 2 => p) = fun p :e 2 => p) (forall hl__pw :e (2), (fun p :e 2 => p) hl__pw = 1 <-> (fun p :e 2 => p) hl__pw = 1) (forall p :e 2, p = 1 <-> p = 1) (iffEL ((fun p :e 2 => p) = fun p :e 2 => p) (forall hl__pw :e (2), (fun p :e 2 => p) hl__pw = 1 <-> (fun p :e 2 => p) hl__pw = 1) (eq_Pi_pointwise_bool (2) (fun p :e 2 => p) (fun p :e 2 => p) (lam_Pi (2) (fun _ => 2) (fun p => p) (fun p Hp => Hp)) (lam_Pi (2) (fun _ => 2) (fun p => p) (fun p Hp => Hp)))) (iffEL (forall hl__pw :e (2), (fun p :e 2 => p) hl__pw = 1 <-> (fun p :e 2 => p) hl__pw = 1) (forall p :e 2, p = 1 <-> p = 1) (pw_app_conv_bool (2) (fun p :e 2 => p) (fun p :e 2 => p) (fun p:set => p = 1) (fun p:set => p = 1) (fun p Hp => (iff_eq1_l ((fun p :e 2 => p) p) (p) (beta (2) (fun p => p) p Hp) (p = 1) (iff_refl (p = 1)))) (fun p Hp => (iff_eq1_l ((fun p :e 2 => p) p) (p) (beta (2) (fun p => p) p Hp) (p = 1) (iff_refl (p = 1))))))) (imp_forall_bool (fun p => p = 1 <-> p = 1) (fun p => p <-> p) (fun p => (imp_iff ((if p then 1 else 0) = 1) (p) ((if p then 1 else 0) = 1) (p) (iffEL ((if p then 1 else 0) = 1) (p) (If_1_iff p)) (iffER ((if p then 1 else 0) = 1) (p) (If_1_iff p)) (iffEL ((if p then 1 else 0) = 1) (p) (If_1_iff p)) (iffER ((if p then 1 else 0) = 1) (p) (If_1_iff p)))))) (imp_trans (forall p:prop, p <-> p) (forall p :e 2, p = 1 <-> p = 1) ((fun p :e 2 => p) = fun p :e 2 => p) (imp_forall_bool_rev (fun p => p = 1 <-> p = 1) (fun p => p <-> p) (fun p Hp => (imp_iff (p = 1) (p = 1) (p = 1) (p = 1) (iffER (p = 1) (p = 1) (iff_refl (p = 1))) (iffEL (p = 1) (p = 1) (iff_refl (p = 1))) (iffER (p = 1) (p = 1) (iff_refl (p = 1))) (iffEL (p = 1) (p = 1) (iff_refl (p = 1)))))) (imp_trans (forall p :e 2, p = 1 <-> p = 1) (forall hl__pw :e (2), (fun p :e 2 => p) hl__pw = 1 <-> (fun p :e 2 => p) hl__pw = 1) ((fun p :e 2 => p) = fun p :e 2 => p) (iffER (forall hl__pw :e (2), (fun p :e 2 => p) hl__pw = 1 <-> (fun p :e 2 => p) hl__pw = 1) (forall p :e 2, p = 1 <-> p = 1) (pw_app_conv_bool (2) (fun p :e 2 => p) (fun p :e 2 => p) (fun p:set => p = 1) (fun p:set => p = 1) (fun p Hp => (iff_eq1_l ((fun p :e 2 => p) p) (p) (beta (2) (fun p => p) p Hp) (p = 1) (iff_refl (p = 1)))) (fun p Hp => (iff_eq1_l ((fun p :e 2 => p) p) (p) (beta (2) (fun p => p) p Hp) (p = 1) (iff_refl (p = 1)))))) (iffER ((fun p :e 2 => p) = fun p :e 2 => p) (forall hl__pw :e (2), (fun p :e 2 => p) hl__pw = 1 <-> (fun p :e 2 => p) hl__pw = 1) (eq_Pi_pointwise_bool (2) (fun p :e 2 => p) (fun p :e 2 => p) (lam_Pi (2) (fun _ => 2) (fun p => p) (fun p Hp => Hp)) (lam_Pi (2) (fun _ => 2) (fun p => p) (fun p Hp => Hp))))))) H__top).
Qed.
Theorem T_DEF : True <-> forall p:prop, p <-> p.
exact (T_DEF_bridge hlt_T_DEF).
Admitted.

// HOL Light: bool.ml:79 / TRUTH   (hash md5:e09aad94aa2e20c97a7a0ada09e7924e)
Theorem hlt_TRUTH : True.
Admitted.
Theorem TRUTH_bridge : (True) -> (True).
exact (fun H__top => (imp_refl True) H__top).
Qed.
Theorem TRUTH : True.
exact (TRUTH_bridge hlt_TRUTH).
Admitted.

// HOL Light: bool.ml:97 / AND_DEF   (hash md5:1e545f23ac30b03a6b3d65a9471dee0b)
// not bridged: 
Theorem AND_DEF : forall p q:prop, p /\ q <-> forall f:set -> set -> prop, f (if p then 1 else 0) (if q then 1 else 0) <-> f (if True then 1 else 0) (if True then 1 else 0).
Admitted.

// HOL Light: bool.ml:158 / IMP_DEF   (hash md5:64d9653b8db8f770541ed08321ebb192)
// not bridged: 
Theorem IMP_DEF : forall p q:prop, p -> q <-> (p /\ q <-> p).
Admitted.

// HOL Light: bool.ml:243 / FORALL_DEF   (hash md5:29d652bfd2edf45c3b3120e4323bcaae)
// not bridged: 
Theorem FORALL_DEF : forall A:set, forall P:set -> prop, (forall x :e A, P x) <-> forall x :e A, P x <-> True.
Admitted.

// HOL Light: bool.ml:313 / EXISTS_DEF   (hash md5:029809946a273ac40abebea56d822664)
// not bridged: 
Theorem EXISTS_DEF : forall A:set, A <> Empty -> forall P:set -> prop, (exists x :e A, P x) <-> forall q:prop, (forall x :e A, P x -> q) -> q.
Admitted.

// HOL Light: bool.ml:360 / OR_DEF   (hash md5:8acdb05b889871633c823b6c401c8351)
// not bridged: 
Theorem OR_DEF : forall p q:prop, p \/ q <-> forall r:prop, (p -> r) -> (q -> r) -> r.
Admitted.

// HOL Light: bool.ml:413 / F_DEF   (hash md5:21ccb8ca324e484598309c2a386ab253)
Theorem hlt_F_DEF : False <-> forall p :e 2, p = 1.
Admitted.
Theorem F_DEF_bridge : (False <-> forall p :e 2, p = 1) -> (False <-> forall p:prop, p).
exact (fun H__top => (imp_iff (False) (False) (forall p :e 2, p = 1) (forall p:prop, p) (imp_refl False) (imp_refl False) (imp_forall_bool (fun p => p = 1) (fun p => p) (fun p => (iffEL ((if p then 1 else 0) = 1) (p) (If_1_iff p)))) (imp_forall_bool_rev (fun p => p = 1) (fun p => p) (fun p Hp => (iffER (p = 1) (p = 1) (iff_refl (p = 1)))))) H__top).
Qed.
Theorem F_DEF : False <-> forall p:prop, p.
exact (F_DEF_bridge hlt_F_DEF).
Admitted.

// HOL Light: bool.ml:416 / NOT_DEF   (hash md5:0d46b5ba4ccdb304fe3a3e6cdf669602)
Theorem hlt_NOT_DEF : hl_not = fun p :e 2 => if p = 1 -> False then 1 else 0.
Admitted.
Theorem NOT_DEF_bridge : (hl_not = fun p :e 2 => if p = 1 -> False then 1 else 0) -> (forall p:prop, ~ p <-> p -> False).
exact (fun H__top => (imp_trans (hl_not = fun p :e 2 => if p = 1 -> False then 1 else 0) (forall p :e 2, ~ p = 1 <-> p = 1 -> False) (forall p:prop, ~ p <-> p -> False) (imp_trans (hl_not = fun p :e 2 => if p = 1 -> False then 1 else 0) (forall hl__pw :e (2), (hl_not) hl__pw = 1 <-> (fun p :e 2 => if p = 1 -> False then 1 else 0) hl__pw = 1) (forall p :e 2, ~ p = 1 <-> p = 1 -> False) (iffEL (hl_not = fun p :e 2 => if p = 1 -> False then 1 else 0) (forall hl__pw :e (2), (hl_not) hl__pw = 1 <-> (fun p :e 2 => if p = 1 -> False then 1 else 0) hl__pw = 1) (eq_Pi_pointwise_bool (2) (hl_not) (fun p :e 2 => if p = 1 -> False then 1 else 0) ((hl_not_in)) (lam_Pi (2) (fun _ => 2) (fun p => if p = 1 -> False then 1 else 0) (fun p Hp => (If_in_2 (p = 1 -> False)))))) (iffEL (forall hl__pw :e (2), (hl_not) hl__pw = 1 <-> (fun p :e 2 => if p = 1 -> False then 1 else 0) hl__pw = 1) (forall p :e 2, ~ p = 1 <-> p = 1 -> False) (pw_app_conv_bool (2) (hl_not) (fun p :e 2 => if p = 1 -> False then 1 else 0) (fun x:set => ~ x = 1) (fun p:set => p = 1 -> False) (fun x Hx => (hl_not_eq1 x Hx)) (fun p Hp => (iff_eq1_l ((fun p :e 2 => if p = 1 -> False then 1 else 0) p) (if p = 1 -> False then 1 else 0) (beta (2) (fun p => if p = 1 -> False then 1 else 0) p Hp) (p = 1 -> False) (If_1_iff (p = 1 -> False))))))) (imp_forall_bool (fun p => ~ p = 1 <-> p = 1 -> False) (fun p => ~ p <-> p -> False) (fun p => (imp_iff (~ (if p then 1 else 0) = 1) (~ p) ((if p then 1 else 0) = 1 -> False) (p -> False) (imp_not ((if p then 1 else 0) = 1) (p) (iffER ((if p then 1 else 0) = 1) (p) (If_1_iff p))) (imp_not (p) ((if p then 1 else 0) = 1) (iffEL ((if p then 1 else 0) = 1) (p) (If_1_iff p))) (fun H__L : (((if p then 1 else 0) = 1) -> (False)) => fun H__hyp5 : (p) => (imp_refl False) (H__L ((iffER ((if p then 1 else 0) = 1) (p) (If_1_iff p)) H__hyp5))) (fun H__N : ((p) -> (False)) => fun H__hyp4 : ((if p then 1 else 0) = 1) => (imp_refl False) (H__N ((iffEL ((if p then 1 else 0) = 1) (p) (If_1_iff p)) H__hyp4))))))) H__top).
Qed.
Theorem NOT_DEF : forall p:prop, ~ p <-> p -> False.
exact (NOT_DEF_bridge hlt_NOT_DEF).
Admitted.

// HOL Light: bool.ml:469 / EXISTS_UNIQUE_DEF   (hash md5:f70acb0782b4d00ef544e0b446ba3d20)
// not bridged: 
Theorem EXISTS_UNIQUE_DEF : forall A:set, forall P:set -> prop, (exists x :e A, P x /\ forall y :e A, P y -> y = x) <-> (exists x :e A, P x) /\ forall x y :e A, P x /\ P y -> x = y.
Admitted.

