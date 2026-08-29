// hol2mg certification module (private): shard bool of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: bool.ml:76 / T_DEF   (hash md5:0f884614e334e71c404506d560fc3b72)
// not bridged: 
Theorem T_DEF : True <-> forall p:prop, p <-> p.
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
// not bridged: 
Theorem NOT_DEF : forall p:prop, ~ p <-> p -> False.
Admitted.

// HOL Light: bool.ml:469 / EXISTS_UNIQUE_DEF   (hash md5:f70acb0782b4d00ef544e0b446ba3d20)
// not bridged: 
Theorem EXISTS_UNIQUE_DEF : forall A:set, forall P:set -> prop, (exists x :e A, P x /\ forall y :e A, P y -> y = x) <-> (exists x :e A, P x) /\ forall x y :e A, P x /\ P y -> x = y.
Admitted.

