// hol2mg literal statements (private): shard bool of profile core.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: bool.ml:76 / T_DEF   (hash md5:0f884614e334e71c404506d560fc3b72)
Theorem hlt_T_DEF : True <-> (fun p :e 2 => p) = fun p :e 2 => p.
Admitted.

// HOL Light: bool.ml:79 / TRUTH   (hash md5:e09aad94aa2e20c97a7a0ada09e7924e)
Theorem hlt_TRUTH : True.
Admitted.

// HOL Light: bool.ml:97 / AND_DEF   (hash md5:1e545f23ac30b03a6b3d65a9471dee0b)
Theorem hlt_AND_DEF : hl_and = fun p :e 2 => fun q :e 2 => if (fun f :e 2 :^: 2 :^: 2 => f p q) = fun f :e 2 :^: 2 :^: 2 => f (if True then 1 else 0) (if True then 1 else 0) then 1 else 0.
Admitted.

// HOL Light: bool.ml:158 / IMP_DEF   (hash md5:64d9653b8db8f770541ed08321ebb192)
Theorem hlt_IMP_DEF : hl_imp = fun p :e 2 => fun q :e 2 => if p = 1 /\ q = 1 <-> p = 1 then 1 else 0.
Admitted.

// HOL Light: bool.ml:243 / FORALL_DEF   (hash md5:29d652bfd2edf45c3b3120e4323bcaae)
Theorem hlt_FORALL_DEF : forall A:set, A <> Empty -> hl_forall A = fun P :e 2 :^: A => if P = fun x :e A => if True then 1 else 0 then 1 else 0.
Admitted.

// HOL Light: bool.ml:313 / EXISTS_DEF   (hash md5:029809946a273ac40abebea56d822664)
Theorem hlt_EXISTS_DEF : forall A:set, A <> Empty -> hl_exists A = fun P :e 2 :^: A => if forall q :e 2, (forall x :e A, P x = 1 -> q = 1) -> q = 1 then 1 else 0.
Admitted.

// HOL Light: bool.ml:360 / OR_DEF   (hash md5:8acdb05b889871633c823b6c401c8351)
Theorem hlt_OR_DEF : hl_or = fun p :e 2 => fun q :e 2 => if forall r :e 2, (p = 1 -> r = 1) -> (q = 1 -> r = 1) -> r = 1 then 1 else 0.
Admitted.

// HOL Light: bool.ml:413 / F_DEF   (hash md5:21ccb8ca324e484598309c2a386ab253)
Theorem hlt_F_DEF : False <-> forall p :e 2, p = 1.
Admitted.

// HOL Light: bool.ml:416 / NOT_DEF   (hash md5:0d46b5ba4ccdb304fe3a3e6cdf669602)
Theorem hlt_NOT_DEF : hl_not = fun p :e 2 => if p = 1 -> False then 1 else 0.
Admitted.

// HOL Light: bool.ml:469 / EXISTS_UNIQUE_DEF   (hash md5:f70acb0782b4d00ef544e0b446ba3d20)
Theorem hlt_EXISTS_UNIQUE_DEF : forall A:set, A <> Empty -> hl_exists_unique A = fun P :e 2 :^: A => if hl_exists A P = 1 /\ forall x y :e A, P x = 1 /\ P y = 1 -> x = y then 1 else 0.
Admitted.

