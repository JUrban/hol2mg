// hol2mg certification module (private): shard define of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: define.ml:360 / WF_REC_TAIL_GENERAL'   (hash md5:1b21de2f7ee297f31363ddecde1cb51c)
// not bridged: 
Theorem WF_REC_TAIL_GENERAL' : forall A B:set, A <> Empty -> forall lt P:set -> set -> prop, forall G:set -> set -> set, (forall x :e A :^: B, forall y :e B, G x y :e B) -> forall H:set -> set -> set, (forall x :e A :^: B, forall y :e B, H x y :e A) -> forall H':set -> set -> set, (forall x :e A :^: B, forall y :e B, H' x y :e A) -> (forall P c= B, P <> Empty -> exists x :e P, forall y :e P, ~ lt y x) /\ ((forall f g :e A :^: B, forall x :e B, (forall z :e B, lt z x -> f z = g z) -> (P f x <-> P g x) /\ (G f x = G g x /\ H' f x = H' g x)) /\ ((forall f :e A :^: B, forall x y :e B, P f x /\ lt y (G f x) -> lt y x) /\ (forall f :e A :^: B, forall x :e B, H f x = if P f x then f (G f x) else H' f x))) -> exists f :e A :^: B, forall x :e B, f x = H f x.
Admitted.

