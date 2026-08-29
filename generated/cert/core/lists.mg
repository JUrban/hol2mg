// hol2mg certification module (private): shard lists of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: lists.ml:28 / HD   (hash md5:e48111d0d8d0854a2e64b2dfd1f92b7e)
// not bridged: 
Theorem HD : forall A:set, forall h :e A, forall t :e finseq A, seq_hd (seq_cons h t) = h.
Admitted.

// HOL Light: lists.ml:31 / TL   (hash md5:a461f6927361fce88089ebdcecc03cd9)
// not bridged: 
Theorem TL : forall A:set, forall h :e A, forall t :e finseq A, seq_tl (seq_cons h t) = t.
Admitted.

// HOL Light: lists.ml:34 / APPEND   (hash md5:3ef027801213877da04628f269452000)
Theorem hlt_APPEND : forall A:set, A <> Empty -> (forall l :e finseq A, hl_APPEND A (hl_NIL A) l = l) /\ forall h :e A, forall t l :e finseq A, hl_APPEND A (hl_CONS A h t) l = hl_CONS A h (hl_APPEND A t l).
Admitted.
Theorem APPEND_bridge : (forall A:set, A <> Empty -> (forall l :e finseq A, hl_APPEND A (hl_NIL A) l = l) /\ forall h :e A, forall t l :e finseq A, hl_APPEND A (hl_CONS A h t) l = hl_CONS A h (hl_APPEND A t l)) -> (forall A:set, A <> Empty -> (forall l :e finseq A, seq_append seq_nil l = l) /\ forall h :e A, forall t l :e finseq A, seq_append (seq_cons h t) l = seq_cons h (seq_append t l)).
exact (fun H__top A HAne => (imp_and (forall l :e finseq A, hl_APPEND A (hl_NIL A) l = l) (forall l :e finseq A, seq_append seq_nil l = l) (forall h :e A, forall t l :e finseq A, hl_APPEND A (hl_CONS A h t) l = hl_CONS A h (hl_APPEND A t l)) (forall h :e A, forall t l :e finseq A, seq_append (seq_cons h t) l = seq_cons h (seq_append t l)) (imp_forall_in (finseq A) (fun l => hl_APPEND A (hl_NIL A) l = l) (fun l => seq_append seq_nil l = l) (fun l Hl => (imp_eq (hl_APPEND A (hl_NIL A) l) (seq_append seq_nil l) (l) (l) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_APPEND A (hl_NIL A) l = seq_append hl__u l) ((hl_APPEND_compat) (A) HAne (hl_NIL A) ((hl_NIL_in) (A) HAne) (l) Hl)) (fun q H => H)))) (imp_forall_in (A) (fun h => forall t l :e finseq A, hl_APPEND A (hl_CONS A h t) l = hl_CONS A h (hl_APPEND A t l)) (fun h => forall t l :e finseq A, seq_append (seq_cons h t) l = seq_cons h (seq_append t l)) (fun h Hh => (imp_forall_in (finseq A) (fun t => forall l :e finseq A, hl_APPEND A (hl_CONS A h t) l = hl_CONS A h (hl_APPEND A t l)) (fun t => forall l :e finseq A, seq_append (seq_cons h t) l = seq_cons h (seq_append t l)) (fun t Ht => (imp_forall_in (finseq A) (fun l => hl_APPEND A (hl_CONS A h t) l = hl_CONS A h (hl_APPEND A t l)) (fun l => seq_append (seq_cons h t) l = seq_cons h (seq_append t l)) (fun l Hl => (imp_eq (hl_APPEND A (hl_CONS A h t) l) (seq_append (seq_cons h t) l) (hl_CONS A h (hl_APPEND A t l)) (seq_cons h (seq_append t l)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_APPEND A (hl_CONS A h t) l = seq_append hl__u l) ((hl_APPEND_compat) (A) HAne (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht) (l) Hl)) (((hl_APPEND_compat) (A) HAne (t) Ht (l) Hl) (fun hl__u hl__v => hl_CONS A h (hl_APPEND A t l) = seq_cons h hl__u) ((hl_CONS_compat) (A) HAne (h) Hh (hl_APPEND A t l) (setexp_ap (finseq A) (finseq A) (hl_APPEND A t) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (t) Ht) (l) Hl))))))))))) (H__top A HAne)).
Qed.
Theorem APPEND : forall A:set, A <> Empty -> (forall l :e finseq A, seq_append seq_nil l = l) /\ forall h :e A, forall t l :e finseq A, seq_append (seq_cons h t) l = seq_cons h (seq_append t l).
exact (APPEND_bridge hlt_APPEND).
Admitted.

// HOL Light: lists.ml:38 / REVERSE   (hash md5:7a7d177a687f80c4814a45c86aef55f8)
// not bridged: 
Theorem REVERSE : forall A:set, forall x :e A, forall l :e finseq A, seq_rev seq_nil = seq_nil /\ seq_rev (seq_cons x l) = seq_append (seq_rev l) (seq_cons x seq_nil).
Admitted.

// HOL Light: lists.ml:42 / LENGTH   (hash md5:17c615469c05a454f2fd034489234849)
Theorem hlt_LENGTH : forall A:set, A <> Empty -> hl_LENGTH A (hl_NIL A) = hl_NUMERAL hl_zero /\ forall h :e A, forall t :e finseq A, hl_LENGTH A (hl_CONS A h t) = hl_SUC (hl_LENGTH A t).
Admitted.
Theorem LENGTH_bridge : (forall A:set, A <> Empty -> hl_LENGTH A (hl_NIL A) = hl_NUMERAL hl_zero /\ forall h :e A, forall t :e finseq A, hl_LENGTH A (hl_CONS A h t) = hl_SUC (hl_LENGTH A t)) -> (forall A:set, A <> Empty -> seq_len seq_nil = 0 /\ forall h :e A, forall t :e finseq A, seq_len (seq_cons h t) = ordsucc (seq_len t)).
exact (fun H__top A HAne => (imp_and (hl_LENGTH A (hl_NIL A) = hl_NUMERAL hl_zero) (seq_len seq_nil = 0) (forall h :e A, forall t :e finseq A, hl_LENGTH A (hl_CONS A h t) = hl_SUC (hl_LENGTH A t)) (forall h :e A, forall t :e finseq A, seq_len (seq_cons h t) = ordsucc (seq_len t)) (imp_eq (hl_LENGTH A (hl_NIL A)) (seq_len seq_nil) (hl_NUMERAL hl_zero) (0) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_LENGTH A (hl_NIL A) = seq_len hl__u) ((hl_LENGTH_compat) (A) HAne (hl_NIL A) ((hl_NIL_in) (A) HAne))) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat)) (imp_forall_in (A) (fun h => forall t :e finseq A, hl_LENGTH A (hl_CONS A h t) = hl_SUC (hl_LENGTH A t)) (fun h => forall t :e finseq A, seq_len (seq_cons h t) = ordsucc (seq_len t)) (fun h Hh => (imp_forall_in (finseq A) (fun t => hl_LENGTH A (hl_CONS A h t) = hl_SUC (hl_LENGTH A t)) (fun t => seq_len (seq_cons h t) = ordsucc (seq_len t)) (fun t Ht => (imp_eq (hl_LENGTH A (hl_CONS A h t)) (seq_len (seq_cons h t)) (hl_SUC (hl_LENGTH A t)) (ordsucc (seq_len t)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_LENGTH A (hl_CONS A h t) = seq_len hl__u) ((hl_LENGTH_compat) (A) HAne (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht))) (((hl_LENGTH_compat) (A) HAne (t) Ht) (fun hl__u hl__v => hl_SUC (hl_LENGTH A t) = ordsucc hl__u) ((hl_SUC_compat) (hl_LENGTH A t) (setexp_ap (finseq A) (omega) (hl_LENGTH A) ((hl_LENGTH_in) (A) HAne) (t) Ht))))))))) (H__top A HAne)).
Qed.
Theorem LENGTH : forall A:set, A <> Empty -> seq_len seq_nil = 0 /\ forall h :e A, forall t :e finseq A, seq_len (seq_cons h t) = ordsucc (seq_len t).
exact (LENGTH_bridge hlt_LENGTH).
Admitted.

// HOL Light: lists.ml:46 / MAP   (hash md5:1cd1ca7bb70cda875ad5749c1ca01729)
Theorem hlt_MAP : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e B :^: A, hl_MAP A B f (hl_NIL A) = hl_NIL B) /\ forall f :e B :^: A, forall h :e A, forall t :e finseq A, hl_MAP A B f (hl_CONS A h t) = hl_CONS B (f h) (hl_MAP A B f t).
Admitted.
Theorem MAP_bridge : (forall A B:set, A <> Empty -> B <> Empty -> (forall f :e B :^: A, hl_MAP A B f (hl_NIL A) = hl_NIL B) /\ forall f :e B :^: A, forall h :e A, forall t :e finseq A, hl_MAP A B f (hl_CONS A h t) = hl_CONS B (f h) (hl_MAP A B f t)) -> (forall A B:set, A <> Empty -> B <> Empty -> (forall f:set -> set, (forall x :e A, f x :e B) -> seq_map f seq_nil = seq_nil) /\ forall f:set -> set, (forall x :e A, f x :e B) -> forall h :e A, forall t :e finseq A, seq_map f (seq_cons h t) = seq_cons (f h) (seq_map f t)).
exact (fun H__top A B HAne HBne => (imp_and (forall f :e B :^: A, hl_MAP A B f (hl_NIL A) = hl_NIL B) (forall f:set -> set, (forall x :e A, f x :e B) -> seq_map f seq_nil = seq_nil) (forall f :e B :^: A, forall h :e A, forall t :e finseq A, hl_MAP A B f (hl_CONS A h t) = hl_CONS B (f h) (hl_MAP A B f t)) (forall f:set -> set, (forall x :e A, f x :e B) -> forall h :e A, forall t :e finseq A, seq_map f (seq_cons h t) = seq_cons (f h) (seq_map f t)) (imp_forall_fun (A) (B) (fun f => hl_MAP A B f (hl_NIL A) = hl_NIL B) (fun f => seq_map f seq_nil = seq_nil) (fun f Hfc => (imp_eq (hl_MAP A B (hl_lam A f) (hl_NIL A)) (seq_map f seq_nil) (hl_NIL B) (seq_nil) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_MAP A B (hl_lam A f) (hl_NIL A) = seq_map f hl__u) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_NIL A) ((hl_NIL_in) (A) HAne))) ((hl_NIL_compat) (B) HBne)))) (imp_forall_fun (A) (B) (fun f => forall h :e A, forall t :e finseq A, hl_MAP A B f (hl_CONS A h t) = hl_CONS B (f h) (hl_MAP A B f t)) (fun f => forall h :e A, forall t :e finseq A, seq_map f (seq_cons h t) = seq_cons (f h) (seq_map f t)) (fun f Hfc => (imp_forall_in (A) (fun h => forall t :e finseq A, hl_MAP A B (hl_lam A f) (hl_CONS A h t) = hl_CONS B (hl_lam A f h) (hl_MAP A B (hl_lam A f) t)) (fun h => forall t :e finseq A, seq_map f (seq_cons h t) = seq_cons (f h) (seq_map f t)) (fun h Hh => (imp_forall_in (finseq A) (fun t => hl_MAP A B (hl_lam A f) (hl_CONS A h t) = hl_CONS B (hl_lam A f h) (hl_MAP A B (hl_lam A f) t)) (fun t => seq_map f (seq_cons h t) = seq_cons (f h) (seq_map f t)) (fun t Ht => (imp_eq (hl_MAP A B (hl_lam A f) (hl_CONS A h t)) (seq_map f (seq_cons h t)) (hl_CONS B (hl_lam A f h) (hl_MAP A B (hl_lam A f) t)) (seq_cons (f h) (seq_map f t)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_MAP A B (hl_lam A f) (hl_CONS A h t) = seq_map f hl__u) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht))) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (t) Ht) (fun hl__u hl__v => hl_CONS B (hl_lam A f h) (hl_MAP A B (hl_lam A f) t) = seq_cons (f h) hl__u) (((hl_lam_ap (A) f) (h) Hh) (fun hl__u hl__v => hl_CONS B (hl_lam A f h) (hl_MAP A B (hl_lam A f) t) = seq_cons hl__u (hl_MAP A B (hl_lam A f) t)) ((hl_CONS_compat) (B) HBne (hl_lam A f h) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (h) Hh) (hl_MAP A B (hl_lam A f) t) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (t) Ht)))))))))))) (H__top A B HAne HBne)).
Qed.
Theorem MAP : forall A B:set, A <> Empty -> B <> Empty -> (forall f:set -> set, (forall x :e A, f x :e B) -> seq_map f seq_nil = seq_nil) /\ forall f:set -> set, (forall x :e A, f x :e B) -> forall h :e A, forall t :e finseq A, seq_map f (seq_cons h t) = seq_cons (f h) (seq_map f t).
exact (MAP_bridge hlt_MAP).
Admitted.

// HOL Light: lists.ml:50 / LAST   (hash md5:8ceaa343a4f12fbf270147102b54e937)
// not bridged: 
Theorem LAST : forall A:set, forall h :e A, forall t :e finseq A, seq_last (seq_cons h t) = if t = seq_nil then h else seq_last t.
Admitted.

// HOL Light: lists.ml:53 / BUTLAST   (hash md5:b5b341e30ed8ba1286f7407014f0f75b)
// not bridged: 
Theorem BUTLAST : forall A:set, forall h :e A, forall t :e finseq A, seq_butlast seq_nil = seq_nil /\ seq_butlast (seq_cons h t) = if t = seq_nil then seq_nil else seq_cons h (seq_butlast t).
Admitted.

// HOL Light: lists.ml:57 / REPLICATE   (hash md5:9a34391ecfb036827021fde7076af99b)
// not bridged: 
Theorem REPLICATE : forall A:set, forall x :e A, forall n :e omega, seq_replicate 0 x = seq_nil /\ seq_replicate (ordsucc n) x = seq_cons x (seq_replicate n x).
Admitted.

// HOL Light: lists.ml:61 / NULL   (hash md5:700c5999e4885e76686f6dc603c83e3d)
// not bridged: 
Theorem NULL : forall A:set, forall h :e A, forall t :e finseq A, (seq_len seq_nil = 0 <-> True) /\ (seq_len (seq_cons h t) = 0 <-> False).
Admitted.

// HOL Light: lists.ml:65 / ALL   (hash md5:4e7ccd881d3b6b76b557162de933a2a1)
Theorem hlt_ALL : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall h :e A, forall t :e finseq A, (hl_ALL A P (hl_NIL A) = 1 <-> True) /\ (hl_ALL A P (hl_CONS A h t) = 1 <-> P h = 1 /\ hl_ALL A P t = 1).
Admitted.
Theorem ALL_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall h :e A, forall t :e finseq A, (hl_ALL A P (hl_NIL A) = 1 <-> True) /\ (hl_ALL A P (hl_CONS A h t) = 1 <-> P h = 1 /\ hl_ALL A P t = 1)) -> (forall A:set, forall P:set -> prop, forall h :e A, forall t :e finseq A, (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t)).
exact (fun H__top A => (xm (A = Empty) (forall P:set -> prop, forall h :e A, forall t :e finseq A, (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, forall h :e hl__u, forall t :e finseq hl__u, (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t)) (fun P => (forall_in_Empty (fun h => forall t :e finseq Empty, (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t)))))) (fun HAne => (imp_forall_pred (A) (fun P => forall h :e A, forall t :e finseq A, (hl_ALL A P (hl_NIL A) = 1 <-> True) /\ (hl_ALL A P (hl_CONS A h t) = 1 <-> P h = 1 /\ hl_ALL A P t = 1)) (fun P => forall h :e A, forall t :e finseq A, (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t)) (fun P => (imp_forall_in (A) (fun h => forall t :e finseq A, (hl_ALL A (hl_chip A P) (hl_NIL A) = 1 <-> True) /\ (hl_ALL A (hl_chip A P) (hl_CONS A h t) = 1 <-> hl_chip A P h = 1 /\ hl_ALL A (hl_chip A P) t = 1)) (fun h => forall t :e finseq A, (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t)) (fun h Hh => (imp_forall_in (finseq A) (fun t => (hl_ALL A (hl_chip A P) (hl_NIL A) = 1 <-> True) /\ (hl_ALL A (hl_chip A P) (hl_CONS A h t) = 1 <-> hl_chip A P h = 1 /\ hl_ALL A (hl_chip A P) t = 1)) (fun t => (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t)) (fun t Ht => (imp_and (hl_ALL A (hl_chip A P) (hl_NIL A) = 1 <-> True) (seq_all P seq_nil <-> True) (hl_ALL A (hl_chip A P) (hl_CONS A h t) = 1 <-> hl_chip A P h = 1 /\ hl_ALL A (hl_chip A P) t = 1) (seq_all P (seq_cons h t) <-> P h /\ seq_all P t) (imp_iff (hl_ALL A (hl_chip A P) (hl_NIL A) = 1) (seq_all P seq_nil) (True) (True) (iffEL (hl_ALL A (hl_chip A P) (hl_NIL A) = 1) (seq_all P seq_nil) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_ALL A (hl_chip A P) (hl_NIL A) = 1 <-> seq_all P hl__u) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_NIL A) ((hl_NIL_in) (A) HAne)))) (iffER (hl_ALL A (hl_chip A P) (hl_NIL A) = 1) (seq_all P seq_nil) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_ALL A (hl_chip A P) (hl_NIL A) = 1 <-> seq_all P hl__u) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_NIL A) ((hl_NIL_in) (A) HAne)))) (imp_refl True) (imp_refl True)) (imp_iff (hl_ALL A (hl_chip A P) (hl_CONS A h t) = 1) (seq_all P (seq_cons h t)) (hl_chip A P h = 1 /\ hl_ALL A (hl_chip A P) t = 1) (P h /\ seq_all P t) (iffEL (hl_ALL A (hl_chip A P) (hl_CONS A h t) = 1) (seq_all P (seq_cons h t)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_ALL A (hl_chip A P) (hl_CONS A h t) = 1 <-> seq_all P hl__u) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht)))) (iffER (hl_ALL A (hl_chip A P) (hl_CONS A h t) = 1) (seq_all P (seq_cons h t)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_ALL A (hl_chip A P) (hl_CONS A h t) = 1 <-> seq_all P hl__u) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht)))) (imp_and (hl_chip A P h = 1) (P h) (hl_ALL A (hl_chip A P) t = 1) (seq_all P t) (iffEL (hl_chip A P h = 1) (P h) ((hl_chip_iff (A) P) (h) Hh)) (iffEL (hl_ALL A (hl_chip A P) t = 1) (seq_all P t) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (t) Ht))) (imp_and (P h) (hl_chip A P h = 1) (seq_all P t) (hl_ALL A (hl_chip A P) t = 1) (iffER (hl_chip A P h = 1) (P h) ((hl_chip_iff (A) P) (h) Hh)) (iffER (hl_ALL A (hl_chip A P) t = 1) (seq_all P t) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (t) Ht))))))))))) (H__top A HAne)))).
Qed.
Theorem ALL : forall A:set, forall P:set -> prop, forall h :e A, forall t :e finseq A, (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t).
exact (ALL_bridge hlt_ALL).
Admitted.

// HOL Light: lists.ml:69 / EX   (hash md5:8b0dcace39404907876ae25859ceb0ce)
Theorem hlt_EX : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall h :e A, forall t :e finseq A, (hl_EX A P (hl_NIL A) = 1 <-> False) /\ (hl_EX A P (hl_CONS A h t) = 1 <-> P h = 1 \/ hl_EX A P t = 1).
Admitted.
Theorem EX_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall h :e A, forall t :e finseq A, (hl_EX A P (hl_NIL A) = 1 <-> False) /\ (hl_EX A P (hl_CONS A h t) = 1 <-> P h = 1 \/ hl_EX A P t = 1)) -> (forall A:set, forall P:set -> prop, forall h :e A, forall t :e finseq A, (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t)).
exact (fun H__top A => (xm (A = Empty) (forall P:set -> prop, forall h :e A, forall t :e finseq A, (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, forall h :e hl__u, forall t :e finseq hl__u, (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t)) (fun P => (forall_in_Empty (fun h => forall t :e finseq Empty, (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t)))))) (fun HAne => (imp_forall_pred (A) (fun P => forall h :e A, forall t :e finseq A, (hl_EX A P (hl_NIL A) = 1 <-> False) /\ (hl_EX A P (hl_CONS A h t) = 1 <-> P h = 1 \/ hl_EX A P t = 1)) (fun P => forall h :e A, forall t :e finseq A, (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t)) (fun P => (imp_forall_in (A) (fun h => forall t :e finseq A, (hl_EX A (hl_chip A P) (hl_NIL A) = 1 <-> False) /\ (hl_EX A (hl_chip A P) (hl_CONS A h t) = 1 <-> hl_chip A P h = 1 \/ hl_EX A (hl_chip A P) t = 1)) (fun h => forall t :e finseq A, (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t)) (fun h Hh => (imp_forall_in (finseq A) (fun t => (hl_EX A (hl_chip A P) (hl_NIL A) = 1 <-> False) /\ (hl_EX A (hl_chip A P) (hl_CONS A h t) = 1 <-> hl_chip A P h = 1 \/ hl_EX A (hl_chip A P) t = 1)) (fun t => (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t)) (fun t Ht => (imp_and (hl_EX A (hl_chip A P) (hl_NIL A) = 1 <-> False) (seq_ex P seq_nil <-> False) (hl_EX A (hl_chip A P) (hl_CONS A h t) = 1 <-> hl_chip A P h = 1 \/ hl_EX A (hl_chip A P) t = 1) (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t) (imp_iff (hl_EX A (hl_chip A P) (hl_NIL A) = 1) (seq_ex P seq_nil) (False) (False) (iffEL (hl_EX A (hl_chip A P) (hl_NIL A) = 1) (seq_ex P seq_nil) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_EX A (hl_chip A P) (hl_NIL A) = 1 <-> seq_ex P hl__u) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_NIL A) ((hl_NIL_in) (A) HAne)))) (iffER (hl_EX A (hl_chip A P) (hl_NIL A) = 1) (seq_ex P seq_nil) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_EX A (hl_chip A P) (hl_NIL A) = 1 <-> seq_ex P hl__u) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_NIL A) ((hl_NIL_in) (A) HAne)))) (imp_refl False) (imp_refl False)) (imp_iff (hl_EX A (hl_chip A P) (hl_CONS A h t) = 1) (seq_ex P (seq_cons h t)) (hl_chip A P h = 1 \/ hl_EX A (hl_chip A P) t = 1) (P h \/ seq_ex P t) (iffEL (hl_EX A (hl_chip A P) (hl_CONS A h t) = 1) (seq_ex P (seq_cons h t)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_EX A (hl_chip A P) (hl_CONS A h t) = 1 <-> seq_ex P hl__u) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht)))) (iffER (hl_EX A (hl_chip A P) (hl_CONS A h t) = 1) (seq_ex P (seq_cons h t)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_EX A (hl_chip A P) (hl_CONS A h t) = 1 <-> seq_ex P hl__u) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht)))) (imp_or (hl_chip A P h = 1) (P h) (hl_EX A (hl_chip A P) t = 1) (seq_ex P t) (iffEL (hl_chip A P h = 1) (P h) ((hl_chip_iff (A) P) (h) Hh)) (iffEL (hl_EX A (hl_chip A P) t = 1) (seq_ex P t) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (t) Ht))) (imp_or (P h) (hl_chip A P h = 1) (seq_ex P t) (hl_EX A (hl_chip A P) t = 1) (iffER (hl_chip A P h = 1) (P h) ((hl_chip_iff (A) P) (h) Hh)) (iffER (hl_EX A (hl_chip A P) t = 1) (seq_ex P t) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (t) Ht))))))))))) (H__top A HAne)))).
Qed.
Theorem EX : forall A:set, forall P:set -> prop, forall h :e A, forall t :e finseq A, (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t).
exact (EX_bridge hlt_EX).
Admitted.

// HOL Light: lists.ml:73 / ITLIST   (hash md5:6a2990196b8ccb95c42ea9572b77c762)
// not bridged: 
Theorem ITLIST : forall A B:set, forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e B) -> forall b :e B, forall h :e A, forall t :e finseq A, seq_foldr f seq_nil b = b /\ seq_foldr f (seq_cons h t) b = f h (seq_foldr f t b).
Admitted.

// HOL Light: lists.ml:77 / MEM   (hash md5:e0472c3034cc7dc63e858905bbb6e42d)
Theorem hlt_MEM : forall A:set, A <> Empty -> forall x h :e A, forall t :e finseq A, (hl_MEM A x (hl_NIL A) = 1 <-> False) /\ (hl_MEM A x (hl_CONS A h t) = 1 <-> x = h \/ hl_MEM A x t = 1).
Admitted.
Theorem MEM_bridge : (forall A:set, A <> Empty -> forall x h :e A, forall t :e finseq A, (hl_MEM A x (hl_NIL A) = 1 <-> False) /\ (hl_MEM A x (hl_CONS A h t) = 1 <-> x = h \/ hl_MEM A x t = 1)) -> (forall A:set, forall x h :e A, forall t :e finseq A, (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t)).
exact (fun H__top A => (xm (A = Empty) (forall x h :e A, forall t :e finseq A, (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall x h :e hl__u, forall t :e finseq hl__u, (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t)) (forall_in_Empty (fun x => forall h :e Empty, forall t :e finseq Empty, (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t))))) (fun HAne => (imp_forall_in (A) (fun x => forall h :e A, forall t :e finseq A, (hl_MEM A x (hl_NIL A) = 1 <-> False) /\ (hl_MEM A x (hl_CONS A h t) = 1 <-> x = h \/ hl_MEM A x t = 1)) (fun x => forall h :e A, forall t :e finseq A, (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t)) (fun x Hx => (imp_forall_in (A) (fun h => forall t :e finseq A, (hl_MEM A x (hl_NIL A) = 1 <-> False) /\ (hl_MEM A x (hl_CONS A h t) = 1 <-> x = h \/ hl_MEM A x t = 1)) (fun h => forall t :e finseq A, (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t)) (fun h Hh => (imp_forall_in (finseq A) (fun t => (hl_MEM A x (hl_NIL A) = 1 <-> False) /\ (hl_MEM A x (hl_CONS A h t) = 1 <-> x = h \/ hl_MEM A x t = 1)) (fun t => (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t)) (fun t Ht => (imp_and (hl_MEM A x (hl_NIL A) = 1 <-> False) (seq_mem x seq_nil <-> False) (hl_MEM A x (hl_CONS A h t) = 1 <-> x = h \/ hl_MEM A x t = 1) (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t) (imp_iff (hl_MEM A x (hl_NIL A) = 1) (seq_mem x seq_nil) (False) (False) (iffEL (hl_MEM A x (hl_NIL A) = 1) (seq_mem x seq_nil) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_MEM A x (hl_NIL A) = 1 <-> seq_mem x hl__u) ((hl_MEM_compat) (A) HAne (x) Hx (hl_NIL A) ((hl_NIL_in) (A) HAne)))) (iffER (hl_MEM A x (hl_NIL A) = 1) (seq_mem x seq_nil) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_MEM A x (hl_NIL A) = 1 <-> seq_mem x hl__u) ((hl_MEM_compat) (A) HAne (x) Hx (hl_NIL A) ((hl_NIL_in) (A) HAne)))) (imp_refl False) (imp_refl False)) (imp_iff (hl_MEM A x (hl_CONS A h t) = 1) (seq_mem x (seq_cons h t)) (x = h \/ hl_MEM A x t = 1) (x = h \/ seq_mem x t) (iffEL (hl_MEM A x (hl_CONS A h t) = 1) (seq_mem x (seq_cons h t)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_MEM A x (hl_CONS A h t) = 1 <-> seq_mem x hl__u) ((hl_MEM_compat) (A) HAne (x) Hx (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht)))) (iffER (hl_MEM A x (hl_CONS A h t) = 1) (seq_mem x (seq_cons h t)) (((hl_CONS_compat) (A) HAne (h) Hh (t) Ht) (fun hl__u hl__v => hl_MEM A x (hl_CONS A h t) = 1 <-> seq_mem x hl__u) ((hl_MEM_compat) (A) HAne (x) Hx (hl_CONS A h t) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (t) Ht)))) (imp_or (x = h) (x = h) (hl_MEM A x t = 1) (seq_mem x t) (imp_eq (x) (x) (h) (h) (fun q H => H) (fun q H => H)) (iffEL (hl_MEM A x t = 1) (seq_mem x t) ((hl_MEM_compat) (A) HAne (x) Hx (t) Ht))) (imp_or (x = h) (x = h) (seq_mem x t) (hl_MEM A x t = 1) (imp_eq (x) (x) (h) (h) (eq_sym_i (x) (x) (fun q H => H)) (eq_sym_i (h) (h) (fun q H => H))) (iffER (hl_MEM A x t = 1) (seq_mem x t) ((hl_MEM_compat) (A) HAne (x) Hx (t) Ht))))))))))) (H__top A HAne)))).
Qed.
Theorem MEM : forall A:set, forall x h :e A, forall t :e finseq A, (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t).
exact (MEM_bridge hlt_MEM).
Admitted.

// HOL Light: lists.ml:81 / ALL2_DEF   (hash md5:05f0d882920f2505f89f2a84c1cd96a7)
// not bridged: 
Theorem ALL2_DEF : forall A B:set, B <> Empty -> forall P:set -> set -> prop, forall l2 :e finseq B, forall h1 :e A, forall t1 :e finseq A, (seq_all2 P seq_nil l2 <-> l2 = seq_nil) /\ (seq_all2 P (seq_cons h1 t1) l2 <-> (l2 = seq_nil -> False) /\ (~ l2 = seq_nil -> P h1 (seq_hd l2) /\ seq_all2 P t1 (seq_tl l2))).
Admitted.

// HOL Light: lists.ml:87 / ALL2   (hash md5:b1f931b4c35afae213098fafc8984c88)
// not bridged: 
Theorem ALL2 : forall A B:set, forall P:set -> set -> prop, forall h1 :e A, forall t1 :e finseq A, forall h2 :e B, forall t2 :e finseq B, (seq_all2 P seq_nil seq_nil <-> True) /\ ((seq_all2 P (seq_cons h1 t1) seq_nil <-> False) /\ ((seq_all2 P seq_nil (seq_cons h2 t2) <-> False) /\ (seq_all2 P (seq_cons h1 t1) (seq_cons h2 t2) <-> P h1 h2 /\ seq_all2 P t1 t2))).
Admitted.

// HOL Light: lists.ml:94 / MAP2_DEF   (hash md5:132dd24cae8f7c26df87b26fc52a9f79)
// not bridged: 
Theorem MAP2_DEF : forall A B C:set, B <> Empty -> C <> Empty -> forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> forall l :e finseq B, forall h1 :e A, forall t1 :e finseq A, seq_map2 f seq_nil l = seq_nil /\ seq_map2 f (seq_cons h1 t1) l = seq_cons (f h1 (seq_hd l)) (seq_map2 f t1 (seq_tl l)).
Admitted.

// HOL Light: lists.ml:98 / MAP2   (hash md5:1f34424eb953ced4a6af98ce77d6064e)
// not bridged: 
Theorem MAP2 : forall A B C:set, C <> Empty -> forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> forall h1 :e A, forall t1 :e finseq A, forall h2 :e B, forall t2 :e finseq B, seq_map2 f seq_nil seq_nil = seq_nil /\ seq_map2 f (seq_cons h1 t1) (seq_cons h2 t2) = seq_cons (f h1 h2) (seq_map2 f t1 t2).
Admitted.

// HOL Light: lists.ml:103 / EL   (hash md5:90e8be5936c40bee20461b9eb5985f6a)
// not bridged: 
Theorem EL : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, seq_nth l 0 = seq_hd l /\ seq_nth l (ordsucc n) = seq_nth (seq_tl l) n.
Admitted.

// HOL Light: lists.ml:107 / FILTER   (hash md5:5e58d440998c996ea4b717dc791fcf55)
// not bridged: 
Theorem FILTER : forall A:set, forall P:set -> prop, forall h :e A, forall t :e finseq A, seq_filter P seq_nil = seq_nil /\ seq_filter P (seq_cons h t) = if P h then seq_cons h (seq_filter P t) else seq_filter P t.
Admitted.

// HOL Light: lists.ml:111 / ASSOC   (hash md5:5bd30847065b5a896bf69c7d1af89f00)
// not bridged: 
Theorem ASSOC : forall A B:set, forall a :e A, forall h :e A :*: B, forall t :e finseq (A :*: B), seq_assoc a (seq_cons h t) = if h 0 = a then h 1 else seq_assoc a t.
Admitted.

// HOL Light: lists.ml:114 / ITLIST2_DEF   (hash md5:66a918c3b024e404b398a0b6e52f44d4)
// not bridged: 
Theorem ITLIST2_DEF : forall A B C:set, B <> Empty -> forall f:set -> set -> set -> set, (forall x :e A, forall y :e B, forall z :e C, f x y z :e C) -> forall l2 :e finseq B, forall b :e C, forall h1 :e A, forall t1 :e finseq A, seq_foldr2 f seq_nil l2 b = b /\ seq_foldr2 f (seq_cons h1 t1) l2 b = f h1 (seq_hd l2) (seq_foldr2 f t1 (seq_tl l2) b).
Admitted.

// HOL Light: lists.ml:118 / ITLIST2   (hash md5:806c92a11af80d573a20824facb83787)
// not bridged: 
Theorem ITLIST2 : forall A B C:set, forall f:set -> set -> set -> set, (forall x :e A, forall y :e B, forall z :e C, f x y z :e C) -> forall b :e C, forall h1 :e A, forall t1 :e finseq A, forall h2 :e B, forall t2 :e finseq B, seq_foldr2 f seq_nil seq_nil b = b /\ seq_foldr2 f (seq_cons h1 t1) (seq_cons h2 t2) b = f h1 h2 (seq_foldr2 f t1 t2 b).
Admitted.

// HOL Light: lists.ml:123 / ZIP_DEF   (hash md5:6e2d7c78c5f2e5c31038cd05c1782067)
// not bridged: 
Theorem ZIP_DEF : forall A B:set, B <> Empty -> forall l2 :e finseq B, forall h1 :e A, forall t1 :e finseq A, seq_zip seq_nil l2 = seq_nil /\ seq_zip (seq_cons h1 t1) l2 = seq_cons (h1,seq_hd l2) (seq_zip t1 (seq_tl l2)).
Admitted.

// HOL Light: lists.ml:127 / ZIP   (hash md5:fd4494788599018ac29f29b4f2822be0)
// not bridged: 
Theorem ZIP : forall A B:set, forall h1 :e A, forall t1 :e finseq A, forall h2 :e B, forall t2 :e finseq B, seq_zip seq_nil seq_nil = seq_nil /\ seq_zip (seq_cons h1 t1) (seq_cons h2 t2) = seq_cons (h1,h2) (seq_zip t1 t2).
Admitted.

// HOL Light: lists.ml:132 / ALLPAIRS   (hash md5:1030dd49ef6d6f70cf8c8a98f2734b3d)
// not bridged: 
Theorem ALLPAIRS : forall A B:set, B <> Empty -> forall f:set -> set -> prop, forall l :e finseq B, forall h :e A, forall t :e finseq A, ((forall i :e seq_len seq_nil, forall j :e seq_len l, f (seq_nth seq_nil i) (seq_nth l j)) <-> True) /\ ((forall i :e seq_len (seq_cons h t), forall j :e seq_len l, f (seq_nth (seq_cons h t) i) (seq_nth l j)) <-> seq_all (f h) l /\ forall i :e seq_len t, forall j :e seq_len l, f (seq_nth t i) (seq_nth l j)).
Admitted.

// HOL Light: lists.ml:136 / PAIRWISE   (hash md5:eb123e79540a9b1d62bbfe35e530d530)
// not bridged: 
Theorem PAIRWISE : forall A:set, forall r:set -> set -> prop, forall h :e A, forall t :e finseq A, (seq_pairwise r seq_nil <-> True) /\ (seq_pairwise r (seq_cons h t) <-> seq_all (r h) t /\ seq_pairwise r t).
Admitted.

// HOL Light: lists.ml:140 / list_of_seq   (hash md5:c4998480a49055100b294b5ff74a7003)
// not bridged: 
Theorem list_of_seq : forall A:set, A <> Empty -> forall s:set -> set, (forall x :e omega, s x :e A) -> forall n :e omega, seq_mk 0 s = seq_nil /\ seq_mk (ordsucc n) s = seq_append (seq_mk n s) (seq_cons (s n) seq_nil).
Admitted.

// HOL Light: lists.ml:148 / NOT_CONS_NIL   (hash md5:77428f1d7d66f872892dab61338128c2)
Theorem hlt_NOT_CONS_NIL : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, ~ hl_CONS A h t = hl_NIL A.
Admitted.
Theorem NOT_CONS_NIL_bridge : (forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, ~ hl_CONS A h t = hl_NIL A) -> (forall A:set, forall h :e A, forall t :e finseq A, ~ seq_cons h t = seq_nil).
exact (fun H__top A => (xm (A = Empty) (forall h :e A, forall t :e finseq A, ~ seq_cons h t = seq_nil) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall h :e hl__u, forall t :e finseq hl__u, ~ seq_cons h t = seq_nil) (forall_in_Empty (fun h => forall t :e finseq Empty, ~ seq_cons h t = seq_nil)))) (fun HAne => (imp_forall_in (A) (fun h => forall t :e finseq A, ~ hl_CONS A h t = hl_NIL A) (fun h => forall t :e finseq A, ~ seq_cons h t = seq_nil) (fun h Hh => (imp_forall_in (finseq A) (fun t => ~ hl_CONS A h t = hl_NIL A) (fun t => ~ seq_cons h t = seq_nil) (fun t Ht => (imp_not (hl_CONS A h t = hl_NIL A) (seq_cons h t = seq_nil) (imp_eq (seq_cons h t) (hl_CONS A h t) (seq_nil) (hl_NIL A) (eq_sym_i (hl_CONS A h t) (seq_cons h t) ((hl_CONS_compat) (A) HAne (h) Hh (t) Ht)) (eq_sym_i (hl_NIL A) (seq_nil) ((hl_NIL_compat) (A) HAne)))))))) (H__top A HAne)))).
Qed.
Theorem NOT_CONS_NIL : forall A:set, forall h :e A, forall t :e finseq A, ~ seq_cons h t = seq_nil.
exact (NOT_CONS_NIL_bridge hlt_NOT_CONS_NIL).
Admitted.

// HOL Light: lists.ml:152 / LAST_CLAUSES   (hash md5:327d7c7a2dd7f193d5e0edf3faaf28a2)
// not bridged: 
Theorem LAST_CLAUSES : forall A:set, forall h k :e A, forall t :e finseq A, seq_last (seq_cons h seq_nil) = h /\ seq_last (seq_cons h (seq_cons k t)) = seq_last (seq_cons k t).
Admitted.

// HOL Light: lists.ml:157 / APPEND_NIL   (hash md5:34e676cda4ec75f03b52d6a0a1fe6783)
Theorem hlt_APPEND_NIL : forall A:set, A <> Empty -> forall l :e finseq A, hl_APPEND A l (hl_NIL A) = l.
Admitted.
Theorem APPEND_NIL_bridge : (forall A:set, A <> Empty -> forall l :e finseq A, hl_APPEND A l (hl_NIL A) = l) -> (forall A:set, A <> Empty -> forall l :e finseq A, seq_append l seq_nil = l).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => hl_APPEND A l (hl_NIL A) = l) (fun l => seq_append l seq_nil = l) (fun l Hl => (imp_eq (hl_APPEND A l (hl_NIL A)) (seq_append l seq_nil) (l) (l) (((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_APPEND A l (hl_NIL A) = seq_append l hl__u) ((hl_APPEND_compat) (A) HAne (l) Hl (hl_NIL A) ((hl_NIL_in) (A) HAne))) (fun q H => H)))) (H__top A HAne)).
Qed.
Theorem APPEND_NIL : forall A:set, A <> Empty -> forall l :e finseq A, seq_append l seq_nil = l.
exact (APPEND_NIL_bridge hlt_APPEND_NIL).
Admitted.

// HOL Light: lists.ml:161 / APPEND_ASSOC   (hash md5:595245cd5d4fe352684d336877239fe8)
Theorem hlt_APPEND_ASSOC : forall A:set, A <> Empty -> forall l m n :e finseq A, hl_APPEND A l (hl_APPEND A m n) = hl_APPEND A (hl_APPEND A l m) n.
Admitted.
Theorem APPEND_ASSOC_bridge : (forall A:set, A <> Empty -> forall l m n :e finseq A, hl_APPEND A l (hl_APPEND A m n) = hl_APPEND A (hl_APPEND A l m) n) -> (forall A:set, A <> Empty -> forall l m n :e finseq A, seq_append l (seq_append m n) = seq_append (seq_append l m) n).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => forall m n :e finseq A, hl_APPEND A l (hl_APPEND A m n) = hl_APPEND A (hl_APPEND A l m) n) (fun l => forall m n :e finseq A, seq_append l (seq_append m n) = seq_append (seq_append l m) n) (fun l Hl => (imp_forall_in (finseq A) (fun m => forall n :e finseq A, hl_APPEND A l (hl_APPEND A m n) = hl_APPEND A (hl_APPEND A l m) n) (fun m => forall n :e finseq A, seq_append l (seq_append m n) = seq_append (seq_append l m) n) (fun m Hm => (imp_forall_in (finseq A) (fun n => hl_APPEND A l (hl_APPEND A m n) = hl_APPEND A (hl_APPEND A l m) n) (fun n => seq_append l (seq_append m n) = seq_append (seq_append l m) n) (fun n Hn => (imp_eq (hl_APPEND A l (hl_APPEND A m n)) (seq_append l (seq_append m n)) (hl_APPEND A (hl_APPEND A l m) n) (seq_append (seq_append l m) n) (((hl_APPEND_compat) (A) HAne (m) Hm (n) Hn) (fun hl__u hl__v => hl_APPEND A l (hl_APPEND A m n) = seq_append l hl__u) ((hl_APPEND_compat) (A) HAne (l) Hl (hl_APPEND A m n) (setexp_ap (finseq A) (finseq A) (hl_APPEND A m) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (m) Hm) (n) Hn))) (((hl_APPEND_compat) (A) HAne (l) Hl (m) Hm) (fun hl__u hl__v => hl_APPEND A (hl_APPEND A l m) n = seq_append hl__u n) ((hl_APPEND_compat) (A) HAne (hl_APPEND A l m) (setexp_ap (finseq A) (finseq A) (hl_APPEND A l) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (l) Hl) (m) Hm) (n) Hn))))))))) (H__top A HAne)).
Qed.
Theorem APPEND_ASSOC : forall A:set, A <> Empty -> forall l m n :e finseq A, seq_append l (seq_append m n) = seq_append (seq_append l m) n.
exact (APPEND_ASSOC_bridge hlt_APPEND_ASSOC).
Admitted.

// HOL Light: lists.ml:165 / REVERSE_APPEND   (hash md5:45852b5237ddc4ffb91f94da5306964d)
// not bridged: 
Theorem REVERSE_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, seq_rev (seq_append l m) = seq_append (seq_rev m) (seq_rev l).
Admitted.

// HOL Light: lists.ml:170 / REVERSE_REVERSE   (hash md5:496b982a508a66ca58b92a2491262a68)
// not bridged: 
Theorem REVERSE_REVERSE : forall A:set, A <> Empty -> forall l :e finseq A, seq_rev (seq_rev l) = l.
Admitted.

// HOL Light: lists.ml:174 / REVERSE_EQ_EMPTY   (hash md5:3467f2d6598e5780da4e41d8051ea125)
// not bridged: 
Theorem REVERSE_EQ_EMPTY : forall A:set, A <> Empty -> forall l :e finseq A, seq_rev l = seq_nil <-> l = seq_nil.
Admitted.

// HOL Light: lists.ml:178 / CONS_11   (hash md5:50a941211ca5b773825052d4a811750c)
Theorem hlt_CONS_11 : forall A:set, A <> Empty -> forall h1 h2 :e A, forall t1 t2 :e finseq A, hl_CONS A h1 t1 = hl_CONS A h2 t2 <-> h1 = h2 /\ t1 = t2.
Admitted.
Theorem CONS_11_bridge : (forall A:set, A <> Empty -> forall h1 h2 :e A, forall t1 t2 :e finseq A, hl_CONS A h1 t1 = hl_CONS A h2 t2 <-> h1 = h2 /\ t1 = t2) -> (forall A:set, forall h1 h2 :e A, forall t1 t2 :e finseq A, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2).
exact (fun H__top A => (xm (A = Empty) (forall h1 h2 :e A, forall t1 t2 :e finseq A, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall h1 h2 :e hl__u, forall t1 t2 :e finseq hl__u, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2) (forall_in_Empty (fun h1 => forall h2 :e Empty, forall t1 t2 :e finseq Empty, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2)))) (fun HAne => (imp_forall_in (A) (fun h1 => forall h2 :e A, forall t1 t2 :e finseq A, hl_CONS A h1 t1 = hl_CONS A h2 t2 <-> h1 = h2 /\ t1 = t2) (fun h1 => forall h2 :e A, forall t1 t2 :e finseq A, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2) (fun h1 Hh1 => (imp_forall_in (A) (fun h2 => forall t1 t2 :e finseq A, hl_CONS A h1 t1 = hl_CONS A h2 t2 <-> h1 = h2 /\ t1 = t2) (fun h2 => forall t1 t2 :e finseq A, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2) (fun h2 Hh2 => (imp_forall_in (finseq A) (fun t1 => forall t2 :e finseq A, hl_CONS A h1 t1 = hl_CONS A h2 t2 <-> h1 = h2 /\ t1 = t2) (fun t1 => forall t2 :e finseq A, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2) (fun t1 Ht1 => (imp_forall_in (finseq A) (fun t2 => hl_CONS A h1 t1 = hl_CONS A h2 t2 <-> h1 = h2 /\ t1 = t2) (fun t2 => seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2) (fun t2 Ht2 => (imp_iff (hl_CONS A h1 t1 = hl_CONS A h2 t2) (seq_cons h1 t1 = seq_cons h2 t2) (h1 = h2 /\ t1 = t2) (h1 = h2 /\ t1 = t2) (imp_eq (hl_CONS A h1 t1) (seq_cons h1 t1) (hl_CONS A h2 t2) (seq_cons h2 t2) ((hl_CONS_compat) (A) HAne (h1) Hh1 (t1) Ht1) ((hl_CONS_compat) (A) HAne (h2) Hh2 (t2) Ht2)) (imp_eq (seq_cons h1 t1) (hl_CONS A h1 t1) (seq_cons h2 t2) (hl_CONS A h2 t2) (eq_sym_i (hl_CONS A h1 t1) (seq_cons h1 t1) ((hl_CONS_compat) (A) HAne (h1) Hh1 (t1) Ht1)) (eq_sym_i (hl_CONS A h2 t2) (seq_cons h2 t2) ((hl_CONS_compat) (A) HAne (h2) Hh2 (t2) Ht2))) (imp_and (h1 = h2) (h1 = h2) (t1 = t2) (t1 = t2) (imp_eq (h1) (h1) (h2) (h2) (fun q H => H) (fun q H => H)) (imp_eq (t1) (t1) (t2) (t2) (fun q H => H) (fun q H => H))) (imp_and (h1 = h2) (h1 = h2) (t1 = t2) (t1 = t2) (imp_eq (h1) (h1) (h2) (h2) (eq_sym_i (h1) (h1) (fun q H => H)) (eq_sym_i (h2) (h2) (fun q H => H))) (imp_eq (t1) (t1) (t2) (t2) (eq_sym_i (t1) (t1) (fun q H => H)) (eq_sym_i (t2) (t2) (fun q H => H))))))))))))) (H__top A HAne)))).
Qed.
Theorem CONS_11 : forall A:set, forall h1 h2 :e A, forall t1 t2 :e finseq A, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2.
exact (CONS_11_bridge hlt_CONS_11).
Admitted.

// HOL Light: lists.ml:182 / list_CASES   (hash md5:6c9a307f18507870c827834056fdffa7)
Theorem hlt_list_CASES : forall A:set, A <> Empty -> forall l :e finseq A, l = hl_NIL A \/ exists h :e A, exists t :e finseq A, l = hl_CONS A h t.
Admitted.
Theorem list_CASES_bridge : (forall A:set, A <> Empty -> forall l :e finseq A, l = hl_NIL A \/ exists h :e A, exists t :e finseq A, l = hl_CONS A h t) -> (forall A:set, forall l :e finseq A, l = seq_nil \/ exists h :e A, exists t :e finseq A, l = seq_cons h t).
exact (fun H__top A => (xm (A = Empty) (forall l :e finseq A, l = seq_nil \/ exists h :e A, exists t :e finseq A, l = seq_cons h t) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall l :e finseq hl__u, l = seq_nil \/ exists h :e hl__u, exists t :e finseq hl__u, l = seq_cons h t) ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall l :e hl__u, l = seq_nil \/ exists h :e Empty, exists t :e finseq Empty, l = seq_cons h t) (forall_Sing (seq_nil) (fun l => l = seq_nil \/ exists h :e Empty, exists t :e finseq Empty, l = seq_cons h t) (orIL (seq_nil = seq_nil) (exists h :e Empty, exists t :e finseq Empty, seq_nil = seq_cons h t) (fun q H => H)))))) (fun HAne => (imp_forall_in (finseq A) (fun l => l = hl_NIL A \/ exists h :e A, exists t :e finseq A, l = hl_CONS A h t) (fun l => l = seq_nil \/ exists h :e A, exists t :e finseq A, l = seq_cons h t) (fun l Hl => (imp_or (l = hl_NIL A) (l = seq_nil) (exists h :e A, exists t :e finseq A, l = hl_CONS A h t) (exists h :e A, exists t :e finseq A, l = seq_cons h t) (imp_eq (l) (l) (hl_NIL A) (seq_nil) (fun q H => H) ((hl_NIL_compat) (A) HAne)) (imp_exists_in (A) (fun h => exists t :e finseq A, l = hl_CONS A h t) (fun h => exists t :e finseq A, l = seq_cons h t) (fun h Hh => (imp_exists_in (finseq A) (fun t => l = hl_CONS A h t) (fun t => l = seq_cons h t) (fun t Ht => (imp_eq (l) (l) (hl_CONS A h t) (seq_cons h t) (fun q H => H) ((hl_CONS_compat) (A) HAne (h) Hh (t) Ht))))))))) (H__top A HAne)))).
Qed.
Theorem list_CASES : forall A:set, forall l :e finseq A, l = seq_nil \/ exists h :e A, exists t :e finseq A, l = seq_cons h t.
exact (list_CASES_bridge hlt_list_CASES).
Admitted.

// HOL Light: lists.ml:187 / LIST_EQ   (hash md5:e80393494d2381101e2f9fdd59b8a934)
// not bridged: 
Theorem LIST_EQ : forall A:set, forall l1 l2 :e finseq A, l1 = l2 <-> seq_len l1 = seq_len l2 /\ forall n :e omega, n < seq_len l2 -> seq_nth l1 n = seq_nth l2 n.
Admitted.

// HOL Light: lists.ml:198 / LENGTH_APPEND   (hash md5:87d5d63471bb0040381d1296f836489b)
Theorem hlt_LENGTH_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, hl_LENGTH A (hl_APPEND A l m) = hl_add (hl_LENGTH A l) (hl_LENGTH A m).
Admitted.
Theorem LENGTH_APPEND_bridge : (forall A:set, A <> Empty -> forall l m :e finseq A, hl_LENGTH A (hl_APPEND A l m) = hl_add (hl_LENGTH A l) (hl_LENGTH A m)) -> (forall A:set, A <> Empty -> forall l m :e finseq A, seq_len (seq_append l m) = seq_len l + seq_len m).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => forall m :e finseq A, hl_LENGTH A (hl_APPEND A l m) = hl_add (hl_LENGTH A l) (hl_LENGTH A m)) (fun l => forall m :e finseq A, seq_len (seq_append l m) = seq_len l + seq_len m) (fun l Hl => (imp_forall_in (finseq A) (fun m => hl_LENGTH A (hl_APPEND A l m) = hl_add (hl_LENGTH A l) (hl_LENGTH A m)) (fun m => seq_len (seq_append l m) = seq_len l + seq_len m) (fun m Hm => (imp_eq (hl_LENGTH A (hl_APPEND A l m)) (seq_len (seq_append l m)) (hl_add (hl_LENGTH A l) (hl_LENGTH A m)) (seq_len l + seq_len m) (((hl_APPEND_compat) (A) HAne (l) Hl (m) Hm) (fun hl__u hl__v => hl_LENGTH A (hl_APPEND A l m) = seq_len hl__u) ((hl_LENGTH_compat) (A) HAne (hl_APPEND A l m) (setexp_ap (finseq A) (finseq A) (hl_APPEND A l) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (l) Hl) (m) Hm))) (((hl_LENGTH_compat) (A) HAne (m) Hm) (fun hl__u hl__v => hl_add (hl_LENGTH A l) (hl_LENGTH A m) = seq_len l + hl__u) (((hl_LENGTH_compat) (A) HAne (l) Hl) (fun hl__u hl__v => hl_add (hl_LENGTH A l) (hl_LENGTH A m) = hl__u + hl_LENGTH A m) ((hl_add_compat) (hl_LENGTH A l) (setexp_ap (finseq A) (omega) (hl_LENGTH A) ((hl_LENGTH_in) (A) HAne) (l) Hl) (hl_LENGTH A m) (setexp_ap (finseq A) (omega) (hl_LENGTH A) ((hl_LENGTH_in) (A) HAne) (m) Hm))))))))) (H__top A HAne)).
Qed.
Theorem LENGTH_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, seq_len (seq_append l m) = seq_len l + seq_len m.
exact (LENGTH_APPEND_bridge hlt_LENGTH_APPEND).
Admitted.

// HOL Light: lists.ml:202 / MAP_APPEND   (hash md5:e005972551ddebaef8cd43f82996650d)
Theorem hlt_MAP_APPEND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l1 l2 :e finseq A, hl_MAP A B f (hl_APPEND A l1 l2) = hl_APPEND B (hl_MAP A B f l1) (hl_MAP A B f l2).
Admitted.
Theorem MAP_APPEND_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l1 l2 :e finseq A, hl_MAP A B f (hl_APPEND A l1 l2) = hl_APPEND B (hl_MAP A B f l1) (hl_MAP A B f l2)) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall l1 l2 :e finseq A, seq_map f (seq_append l1 l2) = seq_append (seq_map f l1) (seq_map f l2)).
exact (fun H__top A B HAne HBne => (imp_forall_fun (A) (B) (fun f => forall l1 l2 :e finseq A, hl_MAP A B f (hl_APPEND A l1 l2) = hl_APPEND B (hl_MAP A B f l1) (hl_MAP A B f l2)) (fun f => forall l1 l2 :e finseq A, seq_map f (seq_append l1 l2) = seq_append (seq_map f l1) (seq_map f l2)) (fun f Hfc => (imp_forall_in (finseq A) (fun l1 => forall l2 :e finseq A, hl_MAP A B (hl_lam A f) (hl_APPEND A l1 l2) = hl_APPEND B (hl_MAP A B (hl_lam A f) l1) (hl_MAP A B (hl_lam A f) l2)) (fun l1 => forall l2 :e finseq A, seq_map f (seq_append l1 l2) = seq_append (seq_map f l1) (seq_map f l2)) (fun l1 Hl1 => (imp_forall_in (finseq A) (fun l2 => hl_MAP A B (hl_lam A f) (hl_APPEND A l1 l2) = hl_APPEND B (hl_MAP A B (hl_lam A f) l1) (hl_MAP A B (hl_lam A f) l2)) (fun l2 => seq_map f (seq_append l1 l2) = seq_append (seq_map f l1) (seq_map f l2)) (fun l2 Hl2 => (imp_eq (hl_MAP A B (hl_lam A f) (hl_APPEND A l1 l2)) (seq_map f (seq_append l1 l2)) (hl_APPEND B (hl_MAP A B (hl_lam A f) l1) (hl_MAP A B (hl_lam A f) l2)) (seq_append (seq_map f l1) (seq_map f l2)) (((hl_APPEND_compat) (A) HAne (l1) Hl1 (l2) Hl2) (fun hl__u hl__v => hl_MAP A B (hl_lam A f) (hl_APPEND A l1 l2) = seq_map f hl__u) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (hl_APPEND A l1 l2) (setexp_ap (finseq A) (finseq A) (hl_APPEND A l1) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (l1) Hl1) (l2) Hl2))) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l2) Hl2) (fun hl__u hl__v => hl_APPEND B (hl_MAP A B (hl_lam A f) l1) (hl_MAP A B (hl_lam A f) l2) = seq_append (seq_map f l1) hl__u) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l1) Hl1) (fun hl__u hl__v => hl_APPEND B (hl_MAP A B (hl_lam A f) l1) (hl_MAP A B (hl_lam A f) l2) = seq_append hl__u (hl_MAP A B (hl_lam A f) l2)) ((hl_APPEND_compat) (B) HBne (hl_MAP A B (hl_lam A f) l1) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l1) Hl1) (hl_MAP A B (hl_lam A f) l2) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l2) Hl2))))))))))) (H__top A B HAne HBne)).
Qed.
Theorem MAP_APPEND : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall l1 l2 :e finseq A, seq_map f (seq_append l1 l2) = seq_append (seq_map f l1) (seq_map f l2).
exact (MAP_APPEND_bridge hlt_MAP_APPEND).
Admitted.

// HOL Light: lists.ml:206 / LENGTH_MAP   (hash md5:46b98d7ca2f174c0346df14d00117beb)
Theorem hlt_LENGTH_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq A, forall f :e B :^: A, hl_LENGTH B (hl_MAP A B f l) = hl_LENGTH A l.
Admitted.
Theorem LENGTH_MAP_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq A, forall f :e B :^: A, hl_LENGTH B (hl_MAP A B f l) = hl_LENGTH A l) -> (forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq A, forall f:set -> set, (forall x :e A, f x :e B) -> seq_len (seq_map f l) = seq_len l).
exact (fun H__top A B HAne HBne => (imp_forall_in (finseq A) (fun l => forall f :e B :^: A, hl_LENGTH B (hl_MAP A B f l) = hl_LENGTH A l) (fun l => forall f:set -> set, (forall x :e A, f x :e B) -> seq_len (seq_map f l) = seq_len l) (fun l Hl => (imp_forall_fun (A) (B) (fun f => hl_LENGTH B (hl_MAP A B f l) = hl_LENGTH A l) (fun f => seq_len (seq_map f l) = seq_len l) (fun f Hfc => (imp_eq (hl_LENGTH B (hl_MAP A B (hl_lam A f) l)) (seq_len (seq_map f l)) (hl_LENGTH A l) (seq_len l) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_LENGTH B (hl_MAP A B (hl_lam A f) l) = seq_len hl__u) ((hl_LENGTH_compat) (B) HBne (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl))) ((hl_LENGTH_compat) (A) HAne (l) Hl)))))) (H__top A B HAne HBne)).
Qed.
Theorem LENGTH_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq A, forall f:set -> set, (forall x :e A, f x :e B) -> seq_len (seq_map f l) = seq_len l.
exact (LENGTH_MAP_bridge hlt_LENGTH_MAP).
Admitted.

// HOL Light: lists.ml:210 / LENGTH_EQ_NIL   (hash md5:a50730425650e431b90f58c470a41521)
Theorem hlt_LENGTH_EQ_NIL : forall A:set, A <> Empty -> forall l :e finseq A, hl_LENGTH A l = hl_NUMERAL hl_zero <-> l = hl_NIL A.
Admitted.
Theorem LENGTH_EQ_NIL_bridge : (forall A:set, A <> Empty -> forall l :e finseq A, hl_LENGTH A l = hl_NUMERAL hl_zero <-> l = hl_NIL A) -> (forall A:set, A <> Empty -> forall l :e finseq A, seq_len l = 0 <-> l = seq_nil).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => hl_LENGTH A l = hl_NUMERAL hl_zero <-> l = hl_NIL A) (fun l => seq_len l = 0 <-> l = seq_nil) (fun l Hl => (imp_iff (hl_LENGTH A l = hl_NUMERAL hl_zero) (seq_len l = 0) (l = hl_NIL A) (l = seq_nil) (imp_eq (hl_LENGTH A l) (seq_len l) (hl_NUMERAL hl_zero) (0) ((hl_LENGTH_compat) (A) HAne (l) Hl) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat)) (imp_eq (seq_len l) (hl_LENGTH A l) (0) (hl_NUMERAL hl_zero) (eq_sym_i (hl_LENGTH A l) (seq_len l) ((hl_LENGTH_compat) (A) HAne (l) Hl)) (eq_sym_i (hl_NUMERAL hl_zero) (0) (eq_trans_i (hl_NUMERAL hl_zero) (hl_zero) 0 (hl_NUMERAL_compat (hl_zero) ((eq_sym_i (hl_zero) 0 hl_zero_compat) (fun hl__u hl__v => hl__u :e omega) (nat_p_omega 0 nat_0))) hl_zero_compat))) (imp_eq (l) (l) (hl_NIL A) (seq_nil) (fun q H => H) ((hl_NIL_compat) (A) HAne)) (imp_eq (l) (l) (seq_nil) (hl_NIL A) (eq_sym_i (l) (l) (fun q H => H)) (eq_sym_i (hl_NIL A) (seq_nil) ((hl_NIL_compat) (A) HAne)))))) (H__top A HAne)).
Qed.
Theorem LENGTH_EQ_NIL : forall A:set, A <> Empty -> forall l :e finseq A, seq_len l = 0 <-> l = seq_nil.
exact (LENGTH_EQ_NIL_bridge hlt_LENGTH_EQ_NIL).
Admitted.

// HOL Light: lists.ml:214 / LENGTH_EQ_CONS   (hash md5:e87970b38cc89e65c536115c9b94fc0e)
Theorem hlt_LENGTH_EQ_CONS : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, hl_LENGTH A l = hl_SUC n <-> exists h :e A, exists t :e finseq A, l = hl_CONS A h t /\ hl_LENGTH A t = n.
Admitted.
Theorem LENGTH_EQ_CONS_bridge : (forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, hl_LENGTH A l = hl_SUC n <-> exists h :e A, exists t :e finseq A, l = hl_CONS A h t /\ hl_LENGTH A t = n) -> (forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, seq_len l = ordsucc n <-> exists h :e A, exists t :e finseq A, l = seq_cons h t /\ seq_len t = n).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => forall n :e omega, hl_LENGTH A l = hl_SUC n <-> exists h :e A, exists t :e finseq A, l = hl_CONS A h t /\ hl_LENGTH A t = n) (fun l => forall n :e omega, seq_len l = ordsucc n <-> exists h :e A, exists t :e finseq A, l = seq_cons h t /\ seq_len t = n) (fun l Hl => (imp_forall_in (omega) (fun n => hl_LENGTH A l = hl_SUC n <-> exists h :e A, exists t :e finseq A, l = hl_CONS A h t /\ hl_LENGTH A t = n) (fun n => seq_len l = ordsucc n <-> exists h :e A, exists t :e finseq A, l = seq_cons h t /\ seq_len t = n) (fun n Hn => (imp_iff (hl_LENGTH A l = hl_SUC n) (seq_len l = ordsucc n) (exists h :e A, exists t :e finseq A, l = hl_CONS A h t /\ hl_LENGTH A t = n) (exists h :e A, exists t :e finseq A, l = seq_cons h t /\ seq_len t = n) (imp_eq (hl_LENGTH A l) (seq_len l) (hl_SUC n) (ordsucc n) ((hl_LENGTH_compat) (A) HAne (l) Hl) ((hl_SUC_compat) (n) Hn)) (imp_eq (seq_len l) (hl_LENGTH A l) (ordsucc n) (hl_SUC n) (eq_sym_i (hl_LENGTH A l) (seq_len l) ((hl_LENGTH_compat) (A) HAne (l) Hl)) (eq_sym_i (hl_SUC n) (ordsucc n) ((hl_SUC_compat) (n) Hn))) (imp_exists_in (A) (fun h => exists t :e finseq A, l = hl_CONS A h t /\ hl_LENGTH A t = n) (fun h => exists t :e finseq A, l = seq_cons h t /\ seq_len t = n) (fun h Hh => (imp_exists_in (finseq A) (fun t => l = hl_CONS A h t /\ hl_LENGTH A t = n) (fun t => l = seq_cons h t /\ seq_len t = n) (fun t Ht => (imp_and (l = hl_CONS A h t) (l = seq_cons h t) (hl_LENGTH A t = n) (seq_len t = n) (imp_eq (l) (l) (hl_CONS A h t) (seq_cons h t) (fun q H => H) ((hl_CONS_compat) (A) HAne (h) Hh (t) Ht)) (imp_eq (hl_LENGTH A t) (seq_len t) (n) (n) ((hl_LENGTH_compat) (A) HAne (t) Ht) (fun q H => H))))))) (imp_exists_in (A) (fun h => exists t :e finseq A, l = seq_cons h t /\ seq_len t = n) (fun h => exists t :e finseq A, l = hl_CONS A h t /\ hl_LENGTH A t = n) (fun h Hh => (imp_exists_in (finseq A) (fun t => l = seq_cons h t /\ seq_len t = n) (fun t => l = hl_CONS A h t /\ hl_LENGTH A t = n) (fun t Ht => (imp_and (l = seq_cons h t) (l = hl_CONS A h t) (seq_len t = n) (hl_LENGTH A t = n) (imp_eq (l) (l) (seq_cons h t) (hl_CONS A h t) (eq_sym_i (l) (l) (fun q H => H)) (eq_sym_i (hl_CONS A h t) (seq_cons h t) ((hl_CONS_compat) (A) HAne (h) Hh (t) Ht))) (imp_eq (seq_len t) (hl_LENGTH A t) (n) (n) (eq_sym_i (hl_LENGTH A t) (seq_len t) ((hl_LENGTH_compat) (A) HAne (t) Ht)) (eq_sym_i (n) (n) (fun q H => H))))))))))))) (H__top A HAne)).
Qed.
Theorem LENGTH_EQ_CONS : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, seq_len l = ordsucc n <-> exists h :e A, exists t :e finseq A, l = seq_cons h t /\ seq_len t = n.
exact (LENGTH_EQ_CONS_bridge hlt_LENGTH_EQ_CONS).
Admitted.

// HOL Light: lists.ml:219 / LENGTH_REVERSE   (hash md5:17c013973224e3dee52a9c818586a264)
// not bridged: 
Theorem LENGTH_REVERSE : forall A:set, A <> Empty -> forall l :e finseq A, seq_len (seq_rev l) = seq_len l.
Admitted.

// HOL Light: lists.ml:225 / MAP_o   (hash md5:21dca6e4b2bded73c4144e9ca5c0eb7e)
Theorem hlt_MAP_o : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall l :e finseq A, hl_MAP A C (hl_o B C A g f) l = hl_MAP B C g (hl_MAP A B f l).
Admitted.
Theorem MAP_o_bridge : (forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall l :e finseq A, hl_MAP A C (hl_o B C A g f) l = hl_MAP B C g (hl_MAP A B f l)) -> (forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall l :e finseq A, seq_map (fun x:set => g (f x)) l = seq_map g (seq_map f l)).
exact (fun H__top A B C HAne HBne HCne => (imp_forall_fun (A) (B) (fun f => forall g :e C :^: B, forall l :e finseq A, hl_MAP A C (hl_o B C A g f) l = hl_MAP B C g (hl_MAP A B f l)) (fun f => forall g:set -> set, (forall x :e B, g x :e C) -> forall l :e finseq A, seq_map (fun x:set => g (f x)) l = seq_map g (seq_map f l)) (fun f Hfc => (imp_forall_fun (B) (C) (fun g => forall l :e finseq A, hl_MAP A C (hl_o B C A g (hl_lam A f)) l = hl_MAP B C g (hl_MAP A B (hl_lam A f) l)) (fun g => forall l :e finseq A, seq_map (fun x:set => g (f x)) l = seq_map g (seq_map f l)) (fun g Hgc => (imp_forall_in (finseq A) (fun l => hl_MAP A C (hl_o B C A (hl_lam B g) (hl_lam A f)) l = hl_MAP B C (hl_lam B g) (hl_MAP A B (hl_lam A f) l)) (fun l => seq_map (fun x:set => g (f x)) l = seq_map g (seq_map f l)) (fun l Hl => (imp_eq (hl_MAP A C (hl_o B C A (hl_lam B g) (hl_lam A f)) l) (seq_map (fun x:set => g (f x)) l) (hl_MAP B C (hl_lam B g) (hl_MAP A B (hl_lam A f) l)) (seq_map g (seq_map f l)) ((hl_MAP_compat) (A) (C) HAne HCne (hl_o B C A (hl_lam B g) (hl_lam A f)) (setexp_ap (B :^: A) (C :^: A) (hl_o B C A (hl_lam B g)) (setexp_ap (C :^: B) (C :^: A :^: (B :^: A)) (hl_o B C A) ((hl_o_in) (B) (C) (A) HBne HCne HAne) (hl_lam B g) (hl_lam_Pi (B) (C) g Hgc)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => g (f x)) ((pw_o_fun (B) (C) (A) (hl_lam B g) (hl_lam_Pi (B) (C) g Hgc) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun x:set => g (f x)) (fun x Hx => (eq_trans_i ((fun x :e A => hl_lam B g (hl_lam A f x)) x) (hl_lam B g (hl_lam A f x)) (g (f x)) (beta (A) (fun x:set => hl_lam B g (hl_lam A f x)) x Hx) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_lam B g (hl_lam A f x) = g hl__u) ((hl_lam_ap (B) g) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))) (l) Hl) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_MAP B C (hl_lam B g) (hl_MAP A B (hl_lam A f) l) = seq_map g hl__u) ((hl_MAP_compat) (B) (C) HBne HCne (hl_lam B g) (hl_lam_Pi (B) (C) g Hgc) (fun hl__x:set => (g) hl__x) ((hl_lam_ap (B) g)) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))))))))) (H__top A B C HAne HBne HCne)).
Qed.
Theorem MAP_o : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall l :e finseq A, seq_map (fun x:set => g (f x)) l = seq_map g (seq_map f l).
exact (MAP_o_bridge hlt_MAP_o).
Admitted.

// HOL Light: lists.ml:230 / MAP_EQ   (hash md5:ed81072fd7af91838cbb0ef3425ceb39)
Theorem hlt_MAP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, forall l :e finseq A, hl_ALL A (fun x :e A => if f x = g x then 1 else 0) l = 1 -> hl_MAP A B f l = hl_MAP A B g l.
Admitted.
Theorem MAP_EQ_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, forall l :e finseq A, hl_ALL A (fun x :e A => if f x = g x then 1 else 0) l = 1 -> hl_MAP A B f l = hl_MAP A B g l) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> forall l :e finseq A, seq_all (fun x:set => f x = g x) l -> seq_map f l = seq_map g l).
exact (fun H__top A B HAne HBne => (imp_forall_fun (A) (B) (fun f => forall g :e B :^: A, forall l :e finseq A, hl_ALL A (fun x :e A => if f x = g x then 1 else 0) l = 1 -> hl_MAP A B f l = hl_MAP A B g l) (fun f => forall g:set -> set, (forall x :e A, g x :e B) -> forall l :e finseq A, seq_all (fun x:set => f x = g x) l -> seq_map f l = seq_map g l) (fun f Hfc => (imp_forall_fun (A) (B) (fun g => forall l :e finseq A, hl_ALL A (fun x :e A => if hl_lam A f x = g x then 1 else 0) l = 1 -> hl_MAP A B (hl_lam A f) l = hl_MAP A B g l) (fun g => forall l :e finseq A, seq_all (fun x:set => f x = g x) l -> seq_map f l = seq_map g l) (fun g Hgc => (imp_forall_in (finseq A) (fun l => hl_ALL A (fun x :e A => if hl_lam A f x = hl_lam A g x then 1 else 0) l = 1 -> hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A g) l) (fun l => seq_all (fun x:set => f x = g x) l -> seq_map f l = seq_map g l) (fun l Hl => (fun H__L : ((hl_ALL A (fun x :e A => if hl_lam A f x = hl_lam A g x then 1 else 0) l = 1) -> (hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A g) l)) => fun H__hyp3 : (seq_all (fun x:set => f x = g x) l) => (imp_eq (hl_MAP A B (hl_lam A f) l) (seq_map f l) (hl_MAP A B (hl_lam A g) l) (seq_map g l) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A g) (hl_lam_Pi (A) (B) g Hgc) (fun hl__x:set => (g) hl__x) ((hl_lam_ap (A) g)) (l) Hl)) (H__L ((iffER (hl_ALL A (fun x :e A => if hl_lam A f x = hl_lam A g x then 1 else 0) l = 1) (seq_all (fun x:set => f x = g x) l) ((hl_ALL_compat) (A) HAne (fun x :e A => if hl_lam A f x = hl_lam A g x then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if hl_lam A f x = hl_lam A g x then 1 else 0) (fun x Hx => (If_in_2 (hl_lam A f x = hl_lam A g x)))) (fun x:set => f x = g x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if hl_lam A f x = hl_lam A g x then 1 else 0) x) (if hl_lam A f x = hl_lam A g x then 1 else 0) (beta (A) (fun x:set => (if hl_lam A f x = hl_lam A g x then 1 else 0)) x Hx) (f x = g x) (iff_trans ((if hl_lam A f x = hl_lam A g x then 1 else 0) = 1) (hl_lam A f x = hl_lam A g x) (f x = g x) (If_1_iff (hl_lam A f x = hl_lam A g x)) (iffI (hl_lam A f x = hl_lam A g x) (f x = g x) (imp_eq (hl_lam A f x) (f x) (hl_lam A g x) (g x) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) g) (x) Hx)) (imp_eq (f x) (hl_lam A f x) (g x) (hl_lam A g x) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (hl_lam A g x) (g x) ((hl_lam_ap (A) g) (x) Hx)))))))) (l) Hl)) H__hyp3))))))))) (H__top A B HAne HBne)).
Qed.
Theorem MAP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> forall l :e finseq A, seq_all (fun x:set => f x = g x) l -> seq_map f l = seq_map g l.
exact (MAP_EQ_bridge hlt_MAP_EQ).
Admitted.

// HOL Light: lists.ml:235 / ALL_IMP   (hash md5:02447eaab41cdada267141a0ab2c2687)
Theorem hlt_ALL_IMP : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ P x = 1 -> Q x = 1) /\ hl_ALL A P l = 1 -> hl_ALL A Q l = 1.
Admitted.
Theorem ALL_IMP_bridge : (forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ P x = 1 -> Q x = 1) /\ hl_ALL A P l = 1 -> hl_ALL A Q l = 1) -> (forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_all P l -> seq_all Q l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ P x = 1 -> Q x = 1) /\ hl_ALL A P l = 1 -> hl_ALL A Q l = 1) (fun P => forall Q:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_all P l -> seq_all Q l) (fun P => (imp_forall_pred (A) (fun Q => forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> Q x = 1) /\ hl_ALL A (hl_chip A P) l = 1 -> hl_ALL A Q l = 1) (fun Q => forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_all P l -> seq_all Q l) (fun Q => (imp_forall_in (finseq A) (fun l => (forall x :e A, hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> hl_chip A Q x = 1) /\ hl_ALL A (hl_chip A P) l = 1 -> hl_ALL A (hl_chip A Q) l = 1) (fun l => (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_all P l -> seq_all Q l) (fun l Hl => (fun H__L : (((forall x :e A, hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> hl_chip A Q x = 1) /\ hl_ALL A (hl_chip A P) l = 1) -> (hl_ALL A (hl_chip A Q) l = 1)) => fun H__hyp3 : ((forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_all P l) => (iffEL (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) ((hl_ALL_compat) (A) HAne (hl_chip A Q) (hl_chip_Pi (A) Q) (fun hl__x:set => (Q) hl__x) ((hl_chip_iff (A) Q)) (l) Hl)) (H__L ((imp_and (forall x :e A, seq_mem x l /\ P x -> Q x) (forall x :e A, hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> hl_chip A Q x = 1) (seq_all P l) (hl_ALL A (hl_chip A P) l = 1) (imp_forall_in (A) (fun x => seq_mem x l /\ P x -> Q x) (fun x => hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> hl_chip A Q x = 1) (fun x Hx => (fun H__N : ((seq_mem x l /\ P x) -> (Q x)) => fun H__hyp5 : (hl_MEM A x l = 1 /\ hl_chip A P x = 1) => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__N ((imp_and (hl_MEM A x l = 1) (seq_mem x l) (hl_chip A P x = 1) (P x) (iffEL (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))) H__hyp5))))) (iffER (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))) H__hyp3))))))))) (H__top A HAne)).
Qed.
Theorem ALL_IMP : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_all P l -> seq_all Q l.
exact (ALL_IMP_bridge hlt_ALL_IMP).
Admitted.

// HOL Light: lists.ml:240 / NOT_EX   (hash md5:4c09973e1cfa5822abdb256d3c655a88)
Theorem hlt_NOT_EX : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, ~ hl_EX A P l = 1 <-> hl_ALL A (fun x :e A => if ~ P x = 1 then 1 else 0) l = 1.
Admitted.
Theorem NOT_EX_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, ~ hl_EX A P l = 1 <-> hl_ALL A (fun x :e A => if ~ P x = 1 then 1 else 0) l = 1) -> (forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, ~ seq_ex P l <-> seq_all (fun x:set => ~ P x) l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall l :e finseq A, ~ hl_EX A P l = 1 <-> hl_ALL A (fun x :e A => if ~ P x = 1 then 1 else 0) l = 1) (fun P => forall l :e finseq A, ~ seq_ex P l <-> seq_all (fun x:set => ~ P x) l) (fun P => (imp_forall_in (finseq A) (fun l => ~ hl_EX A (hl_chip A P) l = 1 <-> hl_ALL A (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) l = 1) (fun l => ~ seq_ex P l <-> seq_all (fun x:set => ~ P x) l) (fun l Hl => (imp_iff (~ hl_EX A (hl_chip A P) l = 1) (~ seq_ex P l) (hl_ALL A (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) l = 1) (seq_all (fun x:set => ~ P x) l) (imp_not (hl_EX A (hl_chip A P) l = 1) (seq_ex P l) (iffER (hl_EX A (hl_chip A P) l = 1) (seq_ex P l) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))) (imp_not (seq_ex P l) (hl_EX A (hl_chip A P) l = 1) (iffEL (hl_EX A (hl_chip A P) l = 1) (seq_ex P l) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))) (iffEL (hl_ALL A (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) l = 1) (seq_all (fun x:set => ~ P x) l) ((hl_ALL_compat) (A) HAne (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if ~ hl_chip A P x = 1 then 1 else 0) (fun x Hx => (If_in_2 (~ hl_chip A P x = 1)))) (fun x:set => ~ P x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) x) (if ~ hl_chip A P x = 1 then 1 else 0) (beta (A) (fun x:set => (if ~ hl_chip A P x = 1 then 1 else 0)) x Hx) (~ P x) (iff_trans ((if ~ hl_chip A P x = 1 then 1 else 0) = 1) (~ hl_chip A P x = 1) (~ P x) (If_1_iff (~ hl_chip A P x = 1)) (iffI (~ hl_chip A P x = 1) (~ P x) (imp_not (hl_chip A P x = 1) (P x) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))) (imp_not (P x) (hl_chip A P x = 1) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))))))) (l) Hl)) (iffER (hl_ALL A (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) l = 1) (seq_all (fun x:set => ~ P x) l) ((hl_ALL_compat) (A) HAne (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if ~ hl_chip A P x = 1 then 1 else 0) (fun x Hx => (If_in_2 (~ hl_chip A P x = 1)))) (fun x:set => ~ P x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) x) (if ~ hl_chip A P x = 1 then 1 else 0) (beta (A) (fun x:set => (if ~ hl_chip A P x = 1 then 1 else 0)) x Hx) (~ P x) (iff_trans ((if ~ hl_chip A P x = 1 then 1 else 0) = 1) (~ hl_chip A P x = 1) (~ P x) (If_1_iff (~ hl_chip A P x = 1)) (iffI (~ hl_chip A P x = 1) (~ P x) (imp_not (hl_chip A P x = 1) (P x) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))) (imp_not (P x) (hl_chip A P x = 1) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))))))) (l) Hl))))))) (H__top A HAne)).
Qed.
Theorem NOT_EX : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, ~ seq_ex P l <-> seq_all (fun x:set => ~ P x) l.
exact (NOT_EX_bridge hlt_NOT_EX).
Admitted.

// HOL Light: lists.ml:245 / NOT_ALL   (hash md5:4bc3240b21d38b2b3cf45c9b36ab840f)
Theorem hlt_NOT_ALL : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, ~ hl_ALL A P l = 1 <-> hl_EX A (fun x :e A => if ~ P x = 1 then 1 else 0) l = 1.
Admitted.
Theorem NOT_ALL_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, ~ hl_ALL A P l = 1 <-> hl_EX A (fun x :e A => if ~ P x = 1 then 1 else 0) l = 1) -> (forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, ~ seq_all P l <-> seq_ex (fun x:set => ~ P x) l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall l :e finseq A, ~ hl_ALL A P l = 1 <-> hl_EX A (fun x :e A => if ~ P x = 1 then 1 else 0) l = 1) (fun P => forall l :e finseq A, ~ seq_all P l <-> seq_ex (fun x:set => ~ P x) l) (fun P => (imp_forall_in (finseq A) (fun l => ~ hl_ALL A (hl_chip A P) l = 1 <-> hl_EX A (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) l = 1) (fun l => ~ seq_all P l <-> seq_ex (fun x:set => ~ P x) l) (fun l Hl => (imp_iff (~ hl_ALL A (hl_chip A P) l = 1) (~ seq_all P l) (hl_EX A (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) l = 1) (seq_ex (fun x:set => ~ P x) l) (imp_not (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) (iffER (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))) (imp_not (seq_all P l) (hl_ALL A (hl_chip A P) l = 1) (iffEL (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))) (iffEL (hl_EX A (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) l = 1) (seq_ex (fun x:set => ~ P x) l) ((hl_EX_compat) (A) HAne (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if ~ hl_chip A P x = 1 then 1 else 0) (fun x Hx => (If_in_2 (~ hl_chip A P x = 1)))) (fun x:set => ~ P x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) x) (if ~ hl_chip A P x = 1 then 1 else 0) (beta (A) (fun x:set => (if ~ hl_chip A P x = 1 then 1 else 0)) x Hx) (~ P x) (iff_trans ((if ~ hl_chip A P x = 1 then 1 else 0) = 1) (~ hl_chip A P x = 1) (~ P x) (If_1_iff (~ hl_chip A P x = 1)) (iffI (~ hl_chip A P x = 1) (~ P x) (imp_not (hl_chip A P x = 1) (P x) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))) (imp_not (P x) (hl_chip A P x = 1) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))))))) (l) Hl)) (iffER (hl_EX A (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) l = 1) (seq_ex (fun x:set => ~ P x) l) ((hl_EX_compat) (A) HAne (fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if ~ hl_chip A P x = 1 then 1 else 0) (fun x Hx => (If_in_2 (~ hl_chip A P x = 1)))) (fun x:set => ~ P x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if ~ hl_chip A P x = 1 then 1 else 0) x) (if ~ hl_chip A P x = 1 then 1 else 0) (beta (A) (fun x:set => (if ~ hl_chip A P x = 1 then 1 else 0)) x Hx) (~ P x) (iff_trans ((if ~ hl_chip A P x = 1 then 1 else 0) = 1) (~ hl_chip A P x = 1) (~ P x) (If_1_iff (~ hl_chip A P x = 1)) (iffI (~ hl_chip A P x = 1) (~ P x) (imp_not (hl_chip A P x = 1) (P x) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))) (imp_not (P x) (hl_chip A P x = 1) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)))))))) (l) Hl))))))) (H__top A HAne)).
Qed.
Theorem NOT_ALL : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, ~ seq_all P l <-> seq_ex (fun x:set => ~ P x) l.
exact (NOT_ALL_bridge hlt_NOT_ALL).
Admitted.

// HOL Light: lists.ml:250 / ALL_MAP   (hash md5:0f6eaa20955e61ecced785b2b67da0a9)
Theorem hlt_ALL_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall l :e finseq A, hl_ALL B P (hl_MAP A B f l) = 1 <-> hl_ALL A (hl_o B 2 A P f) l = 1.
Admitted.
Theorem ALL_MAP_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall l :e finseq A, hl_ALL B P (hl_MAP A B f l) = 1 <-> hl_ALL A (hl_o B 2 A P f) l = 1) -> (forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_all P (seq_map f l) <-> seq_all (fun x:set => P (f x)) l).
exact (fun H__top A B HAne HBne => (imp_forall_pred (B) (fun P => forall f :e B :^: A, forall l :e finseq A, hl_ALL B P (hl_MAP A B f l) = 1 <-> hl_ALL A (hl_o B 2 A P f) l = 1) (fun P => forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_all P (seq_map f l) <-> seq_all (fun x:set => P (f x)) l) (fun P => (imp_forall_fun (A) (B) (fun f => forall l :e finseq A, hl_ALL B (hl_chip B P) (hl_MAP A B f l) = 1 <-> hl_ALL A (hl_o B 2 A (hl_chip B P) f) l = 1) (fun f => forall l :e finseq A, seq_all P (seq_map f l) <-> seq_all (fun x:set => P (f x)) l) (fun f Hfc => (imp_forall_in (finseq A) (fun l => hl_ALL B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1 <-> hl_ALL A (hl_o B 2 A (hl_chip B P) (hl_lam A f)) l = 1) (fun l => seq_all P (seq_map f l) <-> seq_all (fun x:set => P (f x)) l) (fun l Hl => (imp_iff (hl_ALL B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1) (seq_all P (seq_map f l)) (hl_ALL A (hl_o B 2 A (hl_chip B P) (hl_lam A f)) l = 1) (seq_all (fun x:set => P (f x)) l) (iffEL (hl_ALL B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1) (seq_all P (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_ALL B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1 <-> seq_all P hl__u) ((hl_ALL_compat) (B) HBne (hl_chip B P) (hl_chip_Pi (B) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (B) P)) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))) (iffER (hl_ALL B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1) (seq_all P (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_ALL B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1 <-> seq_all P hl__u) ((hl_ALL_compat) (B) HBne (hl_chip B P) (hl_chip_Pi (B) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (B) P)) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))) (iffEL (hl_ALL A (hl_o B 2 A (hl_chip B P) (hl_lam A f)) l = 1) (seq_all (fun x:set => P (f x)) l) ((hl_ALL_compat) (A) HAne (hl_o B 2 A (hl_chip B P) (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: A) (hl_o B 2 A (hl_chip B P)) (setexp_ap (2 :^: B) (2 :^: A :^: (B :^: A)) (hl_o B 2 A) ((hl_o_in) (B) (2) (A) HBne two_nonempty HAne) (hl_chip B P) (hl_chip_Pi (B) P)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => P (f x)) ((pw_o_pred (B) (2) (A) (hl_chip B P) (hl_chip_Pi (B) P) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun x:set => P (f x)) (fun x Hx => (iff_eq1_l ((fun x :e A => hl_chip B P (hl_lam A f x)) x) (hl_chip B P (hl_lam A f x)) (beta (A) (fun x:set => (hl_chip B P (hl_lam A f x))) x Hx) (P (f x)) (iffI (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (iffEL (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))) (iffER (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))))) (l) Hl)) (iffER (hl_ALL A (hl_o B 2 A (hl_chip B P) (hl_lam A f)) l = 1) (seq_all (fun x:set => P (f x)) l) ((hl_ALL_compat) (A) HAne (hl_o B 2 A (hl_chip B P) (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: A) (hl_o B 2 A (hl_chip B P)) (setexp_ap (2 :^: B) (2 :^: A :^: (B :^: A)) (hl_o B 2 A) ((hl_o_in) (B) (2) (A) HBne two_nonempty HAne) (hl_chip B P) (hl_chip_Pi (B) P)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => P (f x)) ((pw_o_pred (B) (2) (A) (hl_chip B P) (hl_chip_Pi (B) P) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun x:set => P (f x)) (fun x Hx => (iff_eq1_l ((fun x :e A => hl_chip B P (hl_lam A f x)) x) (hl_chip B P (hl_lam A f x)) (beta (A) (fun x:set => (hl_chip B P (hl_lam A f x))) x Hx) (P (f x)) (iffI (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (iffEL (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))) (iffER (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))))) (l) Hl))))))))) (H__top A B HAne HBne)).
Qed.
Theorem ALL_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_all P (seq_map f l) <-> seq_all (fun x:set => P (f x)) l.
exact (ALL_MAP_bridge hlt_ALL_MAP).
Admitted.

// HOL Light: lists.ml:255 / ALL_EQ   (hash md5:a9612881dce4440a96189975e8c668ce)
Theorem hlt_ALL_EQ : forall A:set, A <> Empty -> forall R1 P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A R1 l = 1 /\ (forall x :e A, R1 x = 1 -> (P x = 1 <-> Q x = 1)) -> (hl_ALL A P l = 1 <-> hl_ALL A Q l = 1).
Admitted.
Theorem ALL_EQ_bridge : (forall A:set, A <> Empty -> forall R1 P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A R1 l = 1 /\ (forall x :e A, R1 x = 1 -> (P x = 1 <-> Q x = 1)) -> (hl_ALL A P l = 1 <-> hl_ALL A Q l = 1)) -> (forall A:set, A <> Empty -> forall R0 P Q:set -> prop, forall l :e finseq A, seq_all R0 l /\ (forall x :e A, R0 x -> (P x <-> Q x)) -> (seq_all P l <-> seq_all Q l)).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun R0 => forall P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A R0 l = 1 /\ (forall x :e A, R0 x = 1 -> (P x = 1 <-> Q x = 1)) -> (hl_ALL A P l = 1 <-> hl_ALL A Q l = 1)) (fun R0 => forall P Q:set -> prop, forall l :e finseq A, seq_all R0 l /\ (forall x :e A, R0 x -> (P x <-> Q x)) -> (seq_all P l <-> seq_all Q l)) (fun R0 => (imp_forall_pred (A) (fun P => forall Q :e 2 :^: A, forall l :e finseq A, hl_ALL A (hl_chip A R0) l = 1 /\ (forall x :e A, hl_chip A R0 x = 1 -> (P x = 1 <-> Q x = 1)) -> (hl_ALL A P l = 1 <-> hl_ALL A Q l = 1)) (fun P => forall Q:set -> prop, forall l :e finseq A, seq_all R0 l /\ (forall x :e A, R0 x -> (P x <-> Q x)) -> (seq_all P l <-> seq_all Q l)) (fun P => (imp_forall_pred (A) (fun Q => forall l :e finseq A, hl_ALL A (hl_chip A R0) l = 1 /\ (forall x :e A, hl_chip A R0 x = 1 -> (hl_chip A P x = 1 <-> Q x = 1)) -> (hl_ALL A (hl_chip A P) l = 1 <-> hl_ALL A Q l = 1)) (fun Q => forall l :e finseq A, seq_all R0 l /\ (forall x :e A, R0 x -> (P x <-> Q x)) -> (seq_all P l <-> seq_all Q l)) (fun Q => (imp_forall_in (finseq A) (fun l => hl_ALL A (hl_chip A R0) l = 1 /\ (forall x :e A, hl_chip A R0 x = 1 -> (hl_chip A P x = 1 <-> hl_chip A Q x = 1)) -> (hl_ALL A (hl_chip A P) l = 1 <-> hl_ALL A (hl_chip A Q) l = 1)) (fun l => seq_all R0 l /\ (forall x :e A, R0 x -> (P x <-> Q x)) -> (seq_all P l <-> seq_all Q l)) (fun l Hl => (fun H__L : ((hl_ALL A (hl_chip A R0) l = 1 /\ forall x :e A, hl_chip A R0 x = 1 -> (hl_chip A P x = 1 <-> hl_chip A Q x = 1)) -> (hl_ALL A (hl_chip A P) l = 1 <-> hl_ALL A (hl_chip A Q) l = 1)) => fun H__hyp4 : (seq_all R0 l /\ forall x :e A, R0 x -> (P x <-> Q x)) => (imp_iff (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) (iffEL (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl)) (iffER (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl)) (iffEL (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) ((hl_ALL_compat) (A) HAne (hl_chip A Q) (hl_chip_Pi (A) Q) (fun hl__x:set => (Q) hl__x) ((hl_chip_iff (A) Q)) (l) Hl)) (iffER (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) ((hl_ALL_compat) (A) HAne (hl_chip A Q) (hl_chip_Pi (A) Q) (fun hl__x:set => (Q) hl__x) ((hl_chip_iff (A) Q)) (l) Hl))) (H__L ((imp_and (seq_all R0 l) (hl_ALL A (hl_chip A R0) l = 1) (forall x :e A, R0 x -> (P x <-> Q x)) (forall x :e A, hl_chip A R0 x = 1 -> (hl_chip A P x = 1 <-> hl_chip A Q x = 1)) (iffER (hl_ALL A (hl_chip A R0) l = 1) (seq_all R0 l) ((hl_ALL_compat) (A) HAne (hl_chip A R0) (hl_chip_Pi (A) R0) (fun hl__x:set => (R0) hl__x) ((hl_chip_iff (A) R0)) (l) Hl)) (imp_forall_in (A) (fun x => R0 x -> (P x <-> Q x)) (fun x => hl_chip A R0 x = 1 -> (hl_chip A P x = 1 <-> hl_chip A Q x = 1)) (fun x Hx => (fun H__N : ((R0 x) -> (P x <-> Q x)) => fun H__hyp6 : (hl_chip A R0 x = 1) => (imp_iff (P x) (hl_chip A P x = 1) (Q x) (hl_chip A Q x = 1) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))) (H__N ((iffEL (hl_chip A R0 x = 1) (R0 x) ((hl_chip_iff (A) R0) (x) Hx)) H__hyp6)))))) H__hyp4))))))))))) (H__top A HAne)).
Qed.
Theorem ALL_EQ : forall A:set, A <> Empty -> forall R0 P Q:set -> prop, forall l :e finseq A, seq_all R0 l /\ (forall x :e A, R0 x -> (P x <-> Q x)) -> (seq_all P l <-> seq_all Q l).
exact (ALL_EQ_bridge hlt_ALL_EQ).
Admitted.

// HOL Light: lists.ml:262 / ALL_T   (hash md5:1ef10b4f01356df5f7678160db331d50)
Theorem hlt_ALL_T : forall A:set, A <> Empty -> forall l :e finseq A, hl_ALL A (fun x :e A => if True then 1 else 0) l = 1.
Admitted.
Theorem ALL_T_bridge : (forall A:set, A <> Empty -> forall l :e finseq A, hl_ALL A (fun x :e A => if True then 1 else 0) l = 1) -> (forall A:set, A <> Empty -> forall l :e finseq A, seq_all (fun x:set => True) l).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => hl_ALL A (fun x :e A => if True then 1 else 0) l = 1) (fun l => seq_all (fun x:set => True) l) (fun l Hl => (iffEL (hl_ALL A (fun x :e A => if True then 1 else 0) l = 1) (seq_all (fun x:set => True) l) ((hl_ALL_compat) (A) HAne (fun x :e A => if True then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if True then 1 else 0) (fun x Hx => (If_in_2 (True)))) (fun x:set => True) ((fun x Hx => (iff_eq1_l ((fun x :e A => if True then 1 else 0) x) (if True then 1 else 0) (beta (A) (fun x:set => (if True then 1 else 0)) x Hx) (True) (iff_trans ((if True then 1 else 0) = 1) (True) (True) (If_1_iff (True)) (iffI (True) (True) (imp_refl True) (imp_refl True)))))) (l) Hl)))) (H__top A HAne)).
Qed.
Theorem ALL_T : forall A:set, A <> Empty -> forall l :e finseq A, seq_all (fun x:set => True) l.
exact (ALL_T_bridge hlt_ALL_T).
Admitted.

// HOL Light: lists.ml:266 / MAP_EQ_ALL2   (hash md5:5873bdf08728aa876f1f063a2206bd4d)
// not bridged: 
Theorem MAP_EQ_ALL2 : forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall l m :e finseq A, seq_all2 (fun x:set => fun y:set => f x = f y) l m -> seq_map f l = seq_map f m.
Admitted.

// HOL Light: lists.ml:272 / ALL2_MAP   (hash md5:e2caf4faab982154814cddd9f86ed0f1)
// not bridged: 
Theorem ALL2_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_all2 P (seq_map f l) l <-> seq_all (fun a:set => P (f a) a) l.
Admitted.

// HOL Light: lists.ml:277 / MAP_EQ_DEGEN   (hash md5:361b296c0ed0074ff5265305edb5dcbe)
Theorem hlt_MAP_EQ_DEGEN : forall A:set, A <> Empty -> forall l :e finseq A, forall f :e A :^: A, hl_ALL A (fun x :e A => if f x = x then 1 else 0) l = 1 -> hl_MAP A A f l = l.
Admitted.
Theorem MAP_EQ_DEGEN_bridge : (forall A:set, A <> Empty -> forall l :e finseq A, forall f :e A :^: A, hl_ALL A (fun x :e A => if f x = x then 1 else 0) l = 1 -> hl_MAP A A f l = l) -> (forall A:set, A <> Empty -> forall l :e finseq A, forall f:set -> set, (forall x :e A, f x :e A) -> seq_all (fun x:set => f x = x) l -> seq_map f l = l).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => forall f :e A :^: A, hl_ALL A (fun x :e A => if f x = x then 1 else 0) l = 1 -> hl_MAP A A f l = l) (fun l => forall f:set -> set, (forall x :e A, f x :e A) -> seq_all (fun x:set => f x = x) l -> seq_map f l = l) (fun l Hl => (imp_forall_fun (A) (A) (fun f => hl_ALL A (fun x :e A => if f x = x then 1 else 0) l = 1 -> hl_MAP A A f l = l) (fun f => seq_all (fun x:set => f x = x) l -> seq_map f l = l) (fun f Hfc => (fun H__L : ((hl_ALL A (fun x :e A => if hl_lam A f x = x then 1 else 0) l = 1) -> (hl_MAP A A (hl_lam A f) l = l)) => fun H__hyp2 : (seq_all (fun x:set => f x = x) l) => (imp_eq (hl_MAP A A (hl_lam A f) l) (seq_map f l) (l) (l) ((hl_MAP_compat) (A) (A) HAne HAne (hl_lam A f) (hl_lam_Pi (A) (A) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun q H => H)) (H__L ((iffER (hl_ALL A (fun x :e A => if hl_lam A f x = x then 1 else 0) l = 1) (seq_all (fun x:set => f x = x) l) ((hl_ALL_compat) (A) HAne (fun x :e A => if hl_lam A f x = x then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if hl_lam A f x = x then 1 else 0) (fun x Hx => (If_in_2 (hl_lam A f x = x)))) (fun x:set => f x = x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if hl_lam A f x = x then 1 else 0) x) (if hl_lam A f x = x then 1 else 0) (beta (A) (fun x:set => (if hl_lam A f x = x then 1 else 0)) x Hx) (f x = x) (iff_trans ((if hl_lam A f x = x then 1 else 0) = 1) (hl_lam A f x = x) (f x = x) (If_1_iff (hl_lam A f x = x)) (iffI (hl_lam A f x = x) (f x = x) (imp_eq (hl_lam A f x) (f x) (x) (x) ((hl_lam_ap (A) f) (x) Hx) (fun q H => H)) (imp_eq (f x) (hl_lam A f x) (x) (x) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (x) (x) (fun q H => H)))))))) (l) Hl)) H__hyp2))))))) (H__top A HAne)).
Qed.
Theorem MAP_EQ_DEGEN : forall A:set, A <> Empty -> forall l :e finseq A, forall f:set -> set, (forall x :e A, f x :e A) -> seq_all (fun x:set => f x = x) l -> seq_map f l = l.
exact (MAP_EQ_DEGEN_bridge hlt_MAP_EQ_DEGEN).
Admitted.

// HOL Light: lists.ml:283 / ALL2_AND_RIGHT   (hash md5:3d794ca2edd1ddfef4b3be7863d04e50)
// not bridged: 
Theorem ALL2_AND_RIGHT : forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq A, forall m :e finseq B, forall P:set -> prop, forall Q:set -> set -> prop, seq_all2 (fun x:set => fun y:set => P x /\ Q x y) l m <-> seq_all P l /\ seq_all2 Q l m.
Admitted.

// HOL Light: lists.ml:289 / ITLIST_APPEND   (hash md5:8a530b09bf93bfaa44eb3847190e9bde)
// not bridged: 
Theorem ITLIST_APPEND : forall A B:set, A <> Empty -> forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e B) -> forall a :e B, forall l1 l2 :e finseq A, seq_foldr f (seq_append l1 l2) a = seq_foldr f l1 (seq_foldr f l2 a).
Admitted.

// HOL Light: lists.ml:295 / ITLIST_EXTRA   (hash md5:d13c7903e336f50874d6fbb2e0e01efa)
// not bridged: 
Theorem ITLIST_EXTRA : forall A B:set, forall a :e A, forall b :e B, forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e B) -> forall l :e finseq A, seq_foldr f (seq_append l (seq_cons a seq_nil)) b = seq_foldr f l (f a b).
Admitted.

// HOL Light: lists.ml:299 / ALL_MP   (hash md5:8f58295fa10e24df7a4af0a66b5fb117)
Theorem hlt_ALL_MP : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A (fun x :e A => if P x = 1 -> Q x = 1 then 1 else 0) l = 1 /\ hl_ALL A P l = 1 -> hl_ALL A Q l = 1.
Admitted.
Theorem ALL_MP_bridge : (forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A (fun x :e A => if P x = 1 -> Q x = 1 then 1 else 0) l = 1 /\ hl_ALL A P l = 1 -> hl_ALL A Q l = 1) -> (forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, seq_all (fun x:set => P x -> Q x) l /\ seq_all P l -> seq_all Q l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall Q :e 2 :^: A, forall l :e finseq A, hl_ALL A (fun x :e A => if P x = 1 -> Q x = 1 then 1 else 0) l = 1 /\ hl_ALL A P l = 1 -> hl_ALL A Q l = 1) (fun P => forall Q:set -> prop, forall l :e finseq A, seq_all (fun x:set => P x -> Q x) l /\ seq_all P l -> seq_all Q l) (fun P => (imp_forall_pred (A) (fun Q => forall l :e finseq A, hl_ALL A (fun x :e A => if hl_chip A P x = 1 -> Q x = 1 then 1 else 0) l = 1 /\ hl_ALL A (hl_chip A P) l = 1 -> hl_ALL A Q l = 1) (fun Q => forall l :e finseq A, seq_all (fun x:set => P x -> Q x) l /\ seq_all P l -> seq_all Q l) (fun Q => (imp_forall_in (finseq A) (fun l => hl_ALL A (fun x :e A => if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) l = 1 /\ hl_ALL A (hl_chip A P) l = 1 -> hl_ALL A (hl_chip A Q) l = 1) (fun l => seq_all (fun x:set => P x -> Q x) l /\ seq_all P l -> seq_all Q l) (fun l Hl => (fun H__L : ((hl_ALL A (fun x :e A => if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) l = 1 /\ hl_ALL A (hl_chip A P) l = 1) -> (hl_ALL A (hl_chip A Q) l = 1)) => fun H__hyp3 : (seq_all (fun x:set => P x -> Q x) l /\ seq_all P l) => (iffEL (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) ((hl_ALL_compat) (A) HAne (hl_chip A Q) (hl_chip_Pi (A) Q) (fun hl__x:set => (Q) hl__x) ((hl_chip_iff (A) Q)) (l) Hl)) (H__L ((imp_and (seq_all (fun x:set => P x -> Q x) l) (hl_ALL A (fun x :e A => if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) l = 1) (seq_all P l) (hl_ALL A (hl_chip A P) l = 1) (iffER (hl_ALL A (fun x :e A => if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) l = 1) (seq_all (fun x:set => P x -> Q x) l) ((hl_ALL_compat) (A) HAne (fun x :e A => if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) (fun x Hx => (If_in_2 (hl_chip A P x = 1 -> hl_chip A Q x = 1)))) (fun x:set => P x -> Q x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) x) (if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) (beta (A) (fun x:set => (if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0)) x Hx) (P x -> Q x) (iff_trans ((if hl_chip A P x = 1 -> hl_chip A Q x = 1 then 1 else 0) = 1) (hl_chip A P x = 1 -> hl_chip A Q x = 1) (P x -> Q x) (If_1_iff (hl_chip A P x = 1 -> hl_chip A Q x = 1)) (iffI (hl_chip A P x = 1 -> hl_chip A Q x = 1) (P x -> Q x) (fun H__L : ((hl_chip A P x = 1) -> (hl_chip A Q x = 1)) => fun H__hyp5 : (P x) => (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__L ((iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) H__hyp5))) (fun H__N : ((P x) -> (Q x)) => fun H__hyp6 : (hl_chip A P x = 1) => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__N ((iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) H__hyp6)))))))) (l) Hl)) (iffER (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))) H__hyp3))))))))) (H__top A HAne)).
Qed.
Theorem ALL_MP : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, seq_all (fun x:set => P x -> Q x) l /\ seq_all P l -> seq_all Q l.
exact (ALL_MP_bridge hlt_ALL_MP).
Admitted.

// HOL Light: lists.ml:304 / AND_ALL   (hash md5:598933552a82047c8fcb589d544d4d05)
Theorem hlt_AND_ALL : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A P l = 1 /\ hl_ALL A Q l = 1 <-> hl_ALL A (fun x :e A => if P x = 1 /\ Q x = 1 then 1 else 0) l = 1.
Admitted.
Theorem AND_ALL_bridge : (forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A P l = 1 /\ hl_ALL A Q l = 1 <-> hl_ALL A (fun x :e A => if P x = 1 /\ Q x = 1 then 1 else 0) l = 1) -> (forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, seq_all P l /\ seq_all Q l <-> seq_all (fun x:set => P x /\ Q x) l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall Q :e 2 :^: A, forall l :e finseq A, hl_ALL A P l = 1 /\ hl_ALL A Q l = 1 <-> hl_ALL A (fun x :e A => if P x = 1 /\ Q x = 1 then 1 else 0) l = 1) (fun P => forall Q:set -> prop, forall l :e finseq A, seq_all P l /\ seq_all Q l <-> seq_all (fun x:set => P x /\ Q x) l) (fun P => (imp_forall_pred (A) (fun Q => forall l :e finseq A, hl_ALL A (hl_chip A P) l = 1 /\ hl_ALL A Q l = 1 <-> hl_ALL A (fun x :e A => if hl_chip A P x = 1 /\ Q x = 1 then 1 else 0) l = 1) (fun Q => forall l :e finseq A, seq_all P l /\ seq_all Q l <-> seq_all (fun x:set => P x /\ Q x) l) (fun Q => (imp_forall_in (finseq A) (fun l => hl_ALL A (hl_chip A P) l = 1 /\ hl_ALL A (hl_chip A Q) l = 1 <-> hl_ALL A (fun x :e A => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) l = 1) (fun l => seq_all P l /\ seq_all Q l <-> seq_all (fun x:set => P x /\ Q x) l) (fun l Hl => (imp_iff (hl_ALL A (hl_chip A P) l = 1 /\ hl_ALL A (hl_chip A Q) l = 1) (seq_all P l /\ seq_all Q l) (hl_ALL A (fun x :e A => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) l = 1) (seq_all (fun x:set => P x /\ Q x) l) (imp_and (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) (iffEL (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl)) (iffEL (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) ((hl_ALL_compat) (A) HAne (hl_chip A Q) (hl_chip_Pi (A) Q) (fun hl__x:set => (Q) hl__x) ((hl_chip_iff (A) Q)) (l) Hl))) (imp_and (seq_all P l) (hl_ALL A (hl_chip A P) l = 1) (seq_all Q l) (hl_ALL A (hl_chip A Q) l = 1) (iffER (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl)) (iffER (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) ((hl_ALL_compat) (A) HAne (hl_chip A Q) (hl_chip_Pi (A) Q) (fun hl__x:set => (Q) hl__x) ((hl_chip_iff (A) Q)) (l) Hl))) (iffEL (hl_ALL A (fun x :e A => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) l = 1) (seq_all (fun x:set => P x /\ Q x) l) ((hl_ALL_compat) (A) HAne (fun x :e A => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) (fun x Hx => (If_in_2 (hl_chip A P x = 1 /\ hl_chip A Q x = 1)))) (fun x:set => P x /\ Q x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) x) (if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) (beta (A) (fun x:set => (if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0)) x Hx) (P x /\ Q x) (iff_trans ((if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) = 1) (hl_chip A P x = 1 /\ hl_chip A Q x = 1) (P x /\ Q x) (If_1_iff (hl_chip A P x = 1 /\ hl_chip A Q x = 1)) (iffI (hl_chip A P x = 1 /\ hl_chip A Q x = 1) (P x /\ Q x) (imp_and (hl_chip A P x = 1) (P x) (hl_chip A Q x = 1) (Q x) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))) (imp_and (P x) (hl_chip A P x = 1) (Q x) (hl_chip A Q x = 1) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)))))))) (l) Hl)) (iffER (hl_ALL A (fun x :e A => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) l = 1) (seq_all (fun x:set => P x /\ Q x) l) ((hl_ALL_compat) (A) HAne (fun x :e A => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) (fun x Hx => (If_in_2 (hl_chip A P x = 1 /\ hl_chip A Q x = 1)))) (fun x:set => P x /\ Q x) ((fun x Hx => (iff_eq1_l ((fun x :e A => if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) x) (if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) (beta (A) (fun x:set => (if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0)) x Hx) (P x /\ Q x) (iff_trans ((if hl_chip A P x = 1 /\ hl_chip A Q x = 1 then 1 else 0) = 1) (hl_chip A P x = 1 /\ hl_chip A Q x = 1) (P x /\ Q x) (If_1_iff (hl_chip A P x = 1 /\ hl_chip A Q x = 1)) (iffI (hl_chip A P x = 1 /\ hl_chip A Q x = 1) (P x /\ Q x) (imp_and (hl_chip A P x = 1) (P x) (hl_chip A Q x = 1) (Q x) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffEL (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx))) (imp_and (P x) (hl_chip A P x = 1) (Q x) (hl_chip A Q x = 1) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)))))))) (l) Hl))))))))) (H__top A HAne)).
Qed.
Theorem AND_ALL : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, seq_all P l /\ seq_all Q l <-> seq_all (fun x:set => P x /\ Q x) l.
exact (AND_ALL_bridge hlt_AND_ALL).
Admitted.

// HOL Light: lists.ml:309 / EX_IMP   (hash md5:b83579acec443120e1a67e8f0a4550f1)
Theorem hlt_EX_IMP : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ P x = 1 -> Q x = 1) /\ hl_EX A P l = 1 -> hl_EX A Q l = 1.
Admitted.
Theorem EX_IMP_bridge : (forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ P x = 1 -> Q x = 1) /\ hl_EX A P l = 1 -> hl_EX A Q l = 1) -> (forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_ex P l -> seq_ex Q l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ P x = 1 -> Q x = 1) /\ hl_EX A P l = 1 -> hl_EX A Q l = 1) (fun P => forall Q:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_ex P l -> seq_ex Q l) (fun P => (imp_forall_pred (A) (fun Q => forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> Q x = 1) /\ hl_EX A (hl_chip A P) l = 1 -> hl_EX A Q l = 1) (fun Q => forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_ex P l -> seq_ex Q l) (fun Q => (imp_forall_in (finseq A) (fun l => (forall x :e A, hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> hl_chip A Q x = 1) /\ hl_EX A (hl_chip A P) l = 1 -> hl_EX A (hl_chip A Q) l = 1) (fun l => (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_ex P l -> seq_ex Q l) (fun l Hl => (fun H__L : (((forall x :e A, hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> hl_chip A Q x = 1) /\ hl_EX A (hl_chip A P) l = 1) -> (hl_EX A (hl_chip A Q) l = 1)) => fun H__hyp3 : ((forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_ex P l) => (iffEL (hl_EX A (hl_chip A Q) l = 1) (seq_ex Q l) ((hl_EX_compat) (A) HAne (hl_chip A Q) (hl_chip_Pi (A) Q) (fun hl__x:set => (Q) hl__x) ((hl_chip_iff (A) Q)) (l) Hl)) (H__L ((imp_and (forall x :e A, seq_mem x l /\ P x -> Q x) (forall x :e A, hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> hl_chip A Q x = 1) (seq_ex P l) (hl_EX A (hl_chip A P) l = 1) (imp_forall_in (A) (fun x => seq_mem x l /\ P x -> Q x) (fun x => hl_MEM A x l = 1 /\ hl_chip A P x = 1 -> hl_chip A Q x = 1) (fun x Hx => (fun H__N : ((seq_mem x l /\ P x) -> (Q x)) => fun H__hyp5 : (hl_MEM A x l = 1 /\ hl_chip A P x = 1) => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__N ((imp_and (hl_MEM A x l = 1) (seq_mem x l) (hl_chip A P x = 1) (P x) (iffEL (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx))) H__hyp5))))) (iffER (hl_EX A (hl_chip A P) l = 1) (seq_ex P l) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))) H__hyp3))))))))) (H__top A HAne)).
Qed.
Theorem EX_IMP : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_ex P l -> seq_ex Q l.
exact (EX_IMP_bridge hlt_EX_IMP).
Admitted.

// HOL Light: lists.ml:314 / ALL_MEM   (hash md5:5056d3db4b0de73fbe817f02698a3036)
Theorem hlt_ALL_MEM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 -> P x = 1) <-> hl_ALL A P l = 1.
Admitted.
Theorem ALL_MEM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 -> P x = 1) <-> hl_ALL A P l = 1) -> (forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l -> P x) <-> seq_all P l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 -> P x = 1) <-> hl_ALL A P l = 1) (fun P => forall l :e finseq A, (forall x :e A, seq_mem x l -> P x) <-> seq_all P l) (fun P => (imp_forall_in (finseq A) (fun l => (forall x :e A, hl_MEM A x l = 1 -> hl_chip A P x = 1) <-> hl_ALL A (hl_chip A P) l = 1) (fun l => (forall x :e A, seq_mem x l -> P x) <-> seq_all P l) (fun l Hl => (imp_iff (forall x :e A, hl_MEM A x l = 1 -> hl_chip A P x = 1) (forall x :e A, seq_mem x l -> P x) (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) (imp_forall_in (A) (fun x => hl_MEM A x l = 1 -> hl_chip A P x = 1) (fun x => seq_mem x l -> P x) (fun x Hx => (fun H__L : ((hl_MEM A x l = 1) -> (hl_chip A P x = 1)) => fun H__hyp5 : (seq_mem x l) => (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (H__L ((iffER (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) H__hyp5))))) (imp_forall_in (A) (fun x => seq_mem x l -> P x) (fun x => hl_MEM A x l = 1 -> hl_chip A P x = 1) (fun x Hx => (fun H__N : ((seq_mem x l) -> (P x)) => fun H__hyp3 : (hl_MEM A x l = 1) => (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (H__N ((iffEL (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) H__hyp3))))) (iffEL (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl)) (iffER (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))))))) (H__top A HAne)).
Qed.
Theorem ALL_MEM : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l -> P x) <-> seq_all P l.
exact (ALL_MEM_bridge hlt_ALL_MEM).
Admitted.

// HOL Light: lists.ml:319 / LENGTH_REPLICATE   (hash md5:ea436d6e3dda4edef3e9c33e1650e12c)
// not bridged: 
Theorem LENGTH_REPLICATE : forall A:set, forall n :e omega, forall x :e A, seq_len (seq_replicate n x) = n.
Admitted.

// HOL Light: lists.ml:323 / MEM_REPLICATE   (hash md5:88140f512a18ae84690618c6a49b626e)
// not bridged: 
Theorem MEM_REPLICATE : forall A:set, forall n :e omega, forall x y :e A, seq_mem x (seq_replicate n y) <-> x = y /\ ~ n = 0.
Admitted.

// HOL Light: lists.ml:328 / EX_MAP   (hash md5:d621c58bd5cdfcecdbfb7a663680a360)
Theorem hlt_EX_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall l :e finseq A, hl_EX B P (hl_MAP A B f l) = 1 <-> hl_EX A (hl_o B 2 A P f) l = 1.
Admitted.
Theorem EX_MAP_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall l :e finseq A, hl_EX B P (hl_MAP A B f l) = 1 <-> hl_EX A (hl_o B 2 A P f) l = 1) -> (forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_ex P (seq_map f l) <-> seq_ex (fun x:set => P (f x)) l).
exact (fun H__top A B HAne HBne => (imp_forall_pred (B) (fun P => forall f :e B :^: A, forall l :e finseq A, hl_EX B P (hl_MAP A B f l) = 1 <-> hl_EX A (hl_o B 2 A P f) l = 1) (fun P => forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_ex P (seq_map f l) <-> seq_ex (fun x:set => P (f x)) l) (fun P => (imp_forall_fun (A) (B) (fun f => forall l :e finseq A, hl_EX B (hl_chip B P) (hl_MAP A B f l) = 1 <-> hl_EX A (hl_o B 2 A (hl_chip B P) f) l = 1) (fun f => forall l :e finseq A, seq_ex P (seq_map f l) <-> seq_ex (fun x:set => P (f x)) l) (fun f Hfc => (imp_forall_in (finseq A) (fun l => hl_EX B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1 <-> hl_EX A (hl_o B 2 A (hl_chip B P) (hl_lam A f)) l = 1) (fun l => seq_ex P (seq_map f l) <-> seq_ex (fun x:set => P (f x)) l) (fun l Hl => (imp_iff (hl_EX B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1) (seq_ex P (seq_map f l)) (hl_EX A (hl_o B 2 A (hl_chip B P) (hl_lam A f)) l = 1) (seq_ex (fun x:set => P (f x)) l) (iffEL (hl_EX B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1) (seq_ex P (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_EX B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1 <-> seq_ex P hl__u) ((hl_EX_compat) (B) HBne (hl_chip B P) (hl_chip_Pi (B) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (B) P)) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))) (iffER (hl_EX B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1) (seq_ex P (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_EX B (hl_chip B P) (hl_MAP A B (hl_lam A f) l) = 1 <-> seq_ex P hl__u) ((hl_EX_compat) (B) HBne (hl_chip B P) (hl_chip_Pi (B) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (B) P)) (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))) (iffEL (hl_EX A (hl_o B 2 A (hl_chip B P) (hl_lam A f)) l = 1) (seq_ex (fun x:set => P (f x)) l) ((hl_EX_compat) (A) HAne (hl_o B 2 A (hl_chip B P) (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: A) (hl_o B 2 A (hl_chip B P)) (setexp_ap (2 :^: B) (2 :^: A :^: (B :^: A)) (hl_o B 2 A) ((hl_o_in) (B) (2) (A) HBne two_nonempty HAne) (hl_chip B P) (hl_chip_Pi (B) P)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => P (f x)) ((pw_o_pred (B) (2) (A) (hl_chip B P) (hl_chip_Pi (B) P) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun x:set => P (f x)) (fun x Hx => (iff_eq1_l ((fun x :e A => hl_chip B P (hl_lam A f x)) x) (hl_chip B P (hl_lam A f x)) (beta (A) (fun x:set => (hl_chip B P (hl_lam A f x))) x Hx) (P (f x)) (iffI (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (iffEL (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))) (iffER (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))))) (l) Hl)) (iffER (hl_EX A (hl_o B 2 A (hl_chip B P) (hl_lam A f)) l = 1) (seq_ex (fun x:set => P (f x)) l) ((hl_EX_compat) (A) HAne (hl_o B 2 A (hl_chip B P) (hl_lam A f)) (setexp_ap (B :^: A) (2 :^: A) (hl_o B 2 A (hl_chip B P)) (setexp_ap (2 :^: B) (2 :^: A :^: (B :^: A)) (hl_o B 2 A) ((hl_o_in) (B) (2) (A) HBne two_nonempty HAne) (hl_chip B P) (hl_chip_Pi (B) P)) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (fun x:set => P (f x)) ((pw_o_pred (B) (2) (A) (hl_chip B P) (hl_chip_Pi (B) P) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun x:set => P (f x)) (fun x Hx => (iff_eq1_l ((fun x :e A => hl_chip B P (hl_lam A f x)) x) (hl_chip B P (hl_lam A f x)) (beta (A) (fun x:set => (hl_chip B P (hl_lam A f x))) x Hx) (P (f x)) (iffI (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (iffEL (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx)))) (iffER (hl_chip B P (hl_lam A f x) = 1) (P (f x)) (((hl_lam_ap (A) f) (x) Hx) (fun hl__u hl__v => hl_chip B P (hl_lam A f x) = 1 <-> P hl__u) ((hl_chip_iff (B) P) (hl_lam A f x) (setexp_ap (A) (B) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (x) Hx))))))))) (l) Hl))))))))) (H__top A B HAne HBne)).
Qed.
Theorem EX_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_ex P (seq_map f l) <-> seq_ex (fun x:set => P (f x)) l.
exact (EX_MAP_bridge hlt_EX_MAP).
Admitted.

// HOL Light: lists.ml:333 / EXISTS_EX   (hash md5:d49b9f16d9da009544ebd72dd5849c7e)
// not bridged: 
Theorem EXISTS_EX : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, forall l :e finseq B, (exists x :e A, seq_ex (P x) l) <-> seq_ex (fun s:set => exists x :e A, P x s) l.
Admitted.

// HOL Light: lists.ml:338 / FORALL_ALL   (hash md5:e7b6a1d0c12594c67f5b793f5fe03220)
// not bridged: 
Theorem FORALL_ALL : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, forall l :e finseq B, (forall x :e A, seq_all (P x) l) <-> seq_all (fun s:set => forall x :e A, P x s) l.
Admitted.

// HOL Light: lists.ml:343 / MEM_APPEND   (hash md5:65331249734eb4cc4e9441c91b6a2d51)
Theorem hlt_MEM_APPEND : forall A:set, A <> Empty -> forall x :e A, forall l1 l2 :e finseq A, hl_MEM A x (hl_APPEND A l1 l2) = 1 <-> hl_MEM A x l1 = 1 \/ hl_MEM A x l2 = 1.
Admitted.
Theorem MEM_APPEND_bridge : (forall A:set, A <> Empty -> forall x :e A, forall l1 l2 :e finseq A, hl_MEM A x (hl_APPEND A l1 l2) = 1 <-> hl_MEM A x l1 = 1 \/ hl_MEM A x l2 = 1) -> (forall A:set, forall x :e A, forall l1 l2 :e finseq A, seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2).
exact (fun H__top A => (xm (A = Empty) (forall x :e A, forall l1 l2 :e finseq A, seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall x :e hl__u, forall l1 l2 :e finseq hl__u, seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2) (forall_in_Empty (fun x => forall l1 l2 :e finseq Empty, seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2)))) (fun HAne => (imp_forall_in (A) (fun x => forall l1 l2 :e finseq A, hl_MEM A x (hl_APPEND A l1 l2) = 1 <-> hl_MEM A x l1 = 1 \/ hl_MEM A x l2 = 1) (fun x => forall l1 l2 :e finseq A, seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2) (fun x Hx => (imp_forall_in (finseq A) (fun l1 => forall l2 :e finseq A, hl_MEM A x (hl_APPEND A l1 l2) = 1 <-> hl_MEM A x l1 = 1 \/ hl_MEM A x l2 = 1) (fun l1 => forall l2 :e finseq A, seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2) (fun l1 Hl1 => (imp_forall_in (finseq A) (fun l2 => hl_MEM A x (hl_APPEND A l1 l2) = 1 <-> hl_MEM A x l1 = 1 \/ hl_MEM A x l2 = 1) (fun l2 => seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2) (fun l2 Hl2 => (imp_iff (hl_MEM A x (hl_APPEND A l1 l2) = 1) (seq_mem x (seq_append l1 l2)) (hl_MEM A x l1 = 1 \/ hl_MEM A x l2 = 1) (seq_mem x l1 \/ seq_mem x l2) (iffEL (hl_MEM A x (hl_APPEND A l1 l2) = 1) (seq_mem x (seq_append l1 l2)) (((hl_APPEND_compat) (A) HAne (l1) Hl1 (l2) Hl2) (fun hl__u hl__v => hl_MEM A x (hl_APPEND A l1 l2) = 1 <-> seq_mem x hl__u) ((hl_MEM_compat) (A) HAne (x) Hx (hl_APPEND A l1 l2) (setexp_ap (finseq A) (finseq A) (hl_APPEND A l1) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (l1) Hl1) (l2) Hl2)))) (iffER (hl_MEM A x (hl_APPEND A l1 l2) = 1) (seq_mem x (seq_append l1 l2)) (((hl_APPEND_compat) (A) HAne (l1) Hl1 (l2) Hl2) (fun hl__u hl__v => hl_MEM A x (hl_APPEND A l1 l2) = 1 <-> seq_mem x hl__u) ((hl_MEM_compat) (A) HAne (x) Hx (hl_APPEND A l1 l2) (setexp_ap (finseq A) (finseq A) (hl_APPEND A l1) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (l1) Hl1) (l2) Hl2)))) (imp_or (hl_MEM A x l1 = 1) (seq_mem x l1) (hl_MEM A x l2 = 1) (seq_mem x l2) (iffEL (hl_MEM A x l1 = 1) (seq_mem x l1) ((hl_MEM_compat) (A) HAne (x) Hx (l1) Hl1)) (iffEL (hl_MEM A x l2 = 1) (seq_mem x l2) ((hl_MEM_compat) (A) HAne (x) Hx (l2) Hl2))) (imp_or (seq_mem x l1) (hl_MEM A x l1 = 1) (seq_mem x l2) (hl_MEM A x l2 = 1) (iffER (hl_MEM A x l1 = 1) (seq_mem x l1) ((hl_MEM_compat) (A) HAne (x) Hx (l1) Hl1)) (iffER (hl_MEM A x l2 = 1) (seq_mem x l2) ((hl_MEM_compat) (A) HAne (x) Hx (l2) Hl2)))))))))) (H__top A HAne)))).
Qed.
Theorem MEM_APPEND : forall A:set, forall x :e A, forall l1 l2 :e finseq A, seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2.
exact (MEM_APPEND_bridge hlt_MEM_APPEND).
Admitted.

// HOL Light: lists.ml:347 / MEM_MAP   (hash md5:efcc0ae65a5073ec9a7e1049fea67bdc)
Theorem hlt_MEM_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall y :e B, forall l :e finseq A, hl_MEM B y (hl_MAP A B f l) = 1 <-> exists x :e A, hl_MEM A x l = 1 /\ y = f x.
Admitted.
Theorem MEM_MAP_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall y :e B, forall l :e finseq A, hl_MEM B y (hl_MAP A B f l) = 1 <-> exists x :e A, hl_MEM A x l = 1 /\ y = f x) -> (forall A B:set, A <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall y :e B, forall l :e finseq A, seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x).
exact (fun H__top A B HAne => (xm (B = Empty) (forall f:set -> set, (forall x :e A, f x :e B) -> forall y :e B, forall l :e finseq A, seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall f:set -> set, (forall x :e A, f x :e hl__u) -> forall y :e hl__u, forall l :e finseq A, seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x) (fun f => (fun H : forall x :e A, f x :e Empty => (forall_in_Empty (fun y => forall l :e finseq A, seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x)))))) (fun HBne => (imp_forall_fun (A) (B) (fun f => forall y :e B, forall l :e finseq A, hl_MEM B y (hl_MAP A B f l) = 1 <-> exists x :e A, hl_MEM A x l = 1 /\ y = f x) (fun f => forall y :e B, forall l :e finseq A, seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x) (fun f Hfc => (imp_forall_in (B) (fun y => forall l :e finseq A, hl_MEM B y (hl_MAP A B (hl_lam A f) l) = 1 <-> exists x :e A, hl_MEM A x l = 1 /\ y = hl_lam A f x) (fun y => forall l :e finseq A, seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x) (fun y Hy => (imp_forall_in (finseq A) (fun l => hl_MEM B y (hl_MAP A B (hl_lam A f) l) = 1 <-> exists x :e A, hl_MEM A x l = 1 /\ y = hl_lam A f x) (fun l => seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x) (fun l Hl => (imp_iff (hl_MEM B y (hl_MAP A B (hl_lam A f) l) = 1) (seq_mem y (seq_map f l)) (exists x :e A, hl_MEM A x l = 1 /\ y = hl_lam A f x) (exists x :e A, seq_mem x l /\ y = f x) (iffEL (hl_MEM B y (hl_MAP A B (hl_lam A f) l) = 1) (seq_mem y (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_MEM B y (hl_MAP A B (hl_lam A f) l) = 1 <-> seq_mem y hl__u) ((hl_MEM_compat) (B) HBne (y) Hy (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))) (iffER (hl_MEM B y (hl_MAP A B (hl_lam A f) l) = 1) (seq_mem y (seq_map f l)) (((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun hl__u hl__v => hl_MEM B y (hl_MAP A B (hl_lam A f) l) = 1 <-> seq_mem y hl__u) ((hl_MEM_compat) (B) HBne (y) Hy (hl_MAP A B (hl_lam A f) l) (setexp_ap (finseq A) (finseq B) (hl_MAP A B (hl_lam A f)) (setexp_ap (B :^: A) (finseq B :^: finseq A) (hl_MAP A B) ((hl_MAP_in) (A) (B) HAne HBne) (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc)) (l) Hl)))) (imp_exists_in (A) (fun x => hl_MEM A x l = 1 /\ y = hl_lam A f x) (fun x => seq_mem x l /\ y = f x) (fun x Hx => (imp_and (hl_MEM A x l = 1) (seq_mem x l) (y = hl_lam A f x) (y = f x) (iffEL (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) (imp_eq (y) (y) (hl_lam A f x) (f x) (fun q H => H) ((hl_lam_ap (A) f) (x) Hx))))) (imp_exists_in (A) (fun x => seq_mem x l /\ y = f x) (fun x => hl_MEM A x l = 1 /\ y = hl_lam A f x) (fun x Hx => (imp_and (seq_mem x l) (hl_MEM A x l = 1) (y = f x) (y = hl_lam A f x) (iffER (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) (imp_eq (y) (y) (f x) (hl_lam A f x) (eq_sym_i (y) (y) (fun q H => H)) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx))))))))))))) (H__top A B HAne HBne)))).
Qed.
Theorem MEM_MAP : forall A B:set, A <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall y :e B, forall l :e finseq A, seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x.
exact (MEM_MAP_bridge hlt_MEM_MAP).
Admitted.

// HOL Light: lists.ml:352 / FILTER_APPEND   (hash md5:d4d93b5f36ebb171c6fddf63d85463d1)
// not bridged: 
Theorem FILTER_APPEND : forall A:set, A <> Empty -> forall P:set -> prop, forall l1 l2 :e finseq A, seq_filter P (seq_append l1 l2) = seq_append (seq_filter P l1) (seq_filter P l2).
Admitted.

// HOL Light: lists.ml:358 / FILTER_MAP   (hash md5:1ef199560f30049cdd8cc0984c4dfff5)
// not bridged: 
Theorem FILTER_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_filter P (seq_map f l) = seq_map f (seq_filter (fun x:set => P (f x)) l).
Admitted.

// HOL Light: lists.ml:364 / MEM_FILTER   (hash md5:39ddc253a1e4b67034a5db3986958b51)
// not bridged: 
Theorem MEM_FILTER : forall A:set, forall P:set -> prop, forall l :e finseq A, forall x :e A, seq_mem x (seq_filter P l) <-> P x /\ seq_mem x l.
Admitted.

// HOL Light: lists.ml:370 / LENGTH_FILTER   (hash md5:f819a6c8161e197da7164838439a8944)
// not bridged: 
Theorem LENGTH_FILTER : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, seq_len (seq_filter P l) <= seq_len l.
Admitted.

// HOL Light: lists.ml:376 / EX_MEM   (hash md5:dc236f3bb7a599b6add4c8d4d4fdc23f)
Theorem hlt_EX_MEM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, (exists x :e A, P x = 1 /\ hl_MEM A x l = 1) <-> hl_EX A P l = 1.
Admitted.
Theorem EX_MEM_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, (exists x :e A, P x = 1 /\ hl_MEM A x l = 1) <-> hl_EX A P l = 1) -> (forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, (exists x :e A, P x /\ seq_mem x l) <-> seq_ex P l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall l :e finseq A, (exists x :e A, P x = 1 /\ hl_MEM A x l = 1) <-> hl_EX A P l = 1) (fun P => forall l :e finseq A, (exists x :e A, P x /\ seq_mem x l) <-> seq_ex P l) (fun P => (imp_forall_in (finseq A) (fun l => (exists x :e A, hl_chip A P x = 1 /\ hl_MEM A x l = 1) <-> hl_EX A (hl_chip A P) l = 1) (fun l => (exists x :e A, P x /\ seq_mem x l) <-> seq_ex P l) (fun l Hl => (imp_iff (exists x :e A, hl_chip A P x = 1 /\ hl_MEM A x l = 1) (exists x :e A, P x /\ seq_mem x l) (hl_EX A (hl_chip A P) l = 1) (seq_ex P l) (imp_exists_in (A) (fun x => hl_chip A P x = 1 /\ hl_MEM A x l = 1) (fun x => P x /\ seq_mem x l) (fun x Hx => (imp_and (hl_chip A P x = 1) (P x) (hl_MEM A x l = 1) (seq_mem x l) (iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffEL (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl))))) (imp_exists_in (A) (fun x => P x /\ seq_mem x l) (fun x => hl_chip A P x = 1 /\ hl_MEM A x l = 1) (fun x Hx => (imp_and (P x) (hl_chip A P x = 1) (seq_mem x l) (hl_MEM A x l = 1) (iffER (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) (iffER (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl))))) (iffEL (hl_EX A (hl_chip A P) l = 1) (seq_ex P l) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl)) (iffER (hl_EX A (hl_chip A P) l = 1) (seq_ex P l) ((hl_EX_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl))))))) (H__top A HAne)).
Qed.
Theorem EX_MEM : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, (exists x :e A, P x /\ seq_mem x l) <-> seq_ex P l.
exact (EX_MEM_bridge hlt_EX_MEM).
Admitted.

// HOL Light: lists.ml:381 / MAP_FST_ZIP   (hash md5:3b52c86e60da8100259bbce8c718ace6)
// not bridged: 
Theorem MAP_FST_ZIP : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e finseq A, forall l2 :e finseq B, seq_len l1 = seq_len l2 -> seq_map (fun x:set => x 0) (seq_zip l1 l2) = l1.
Admitted.

// HOL Light: lists.ml:387 / MAP_SND_ZIP   (hash md5:ab1691b5345d2c7d820edad5c57c5686)
// not bridged: 
Theorem MAP_SND_ZIP : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e finseq A, forall l2 :e finseq B, seq_len l1 = seq_len l2 -> seq_map (fun x:set => x 1) (seq_zip l1 l2) = l2.
Admitted.

// HOL Light: lists.ml:393 / LENGTH_ZIP   (hash md5:a7bf6b5c7fc3e763c5d6d363dee05649)
// not bridged: 
Theorem LENGTH_ZIP : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e finseq A, forall l2 :e finseq B, seq_len l1 = seq_len l2 -> seq_len (seq_zip l1 l2) = seq_len l2.
Admitted.

// HOL Light: lists.ml:399 / MEM_ASSOC   (hash md5:dc073e622beda0ca861d2c4e9ed550a0)
// not bridged: 
Theorem MEM_ASSOC : forall A B:set, B <> Empty -> forall l :e finseq (A :*: B), forall x :e A, seq_mem (x,seq_assoc x l) l <-> seq_mem x (seq_map (fun x0:set => x0 0) l).
Admitted.

// HOL Light: lists.ml:405 / ALL_APPEND   (hash md5:0010b3895501ff7a5ff6e1d6798864ea)
Theorem hlt_ALL_APPEND : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l1 l2 :e finseq A, hl_ALL A P (hl_APPEND A l1 l2) = 1 <-> hl_ALL A P l1 = 1 /\ hl_ALL A P l2 = 1.
Admitted.
Theorem ALL_APPEND_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l1 l2 :e finseq A, hl_ALL A P (hl_APPEND A l1 l2) = 1 <-> hl_ALL A P l1 = 1 /\ hl_ALL A P l2 = 1) -> (forall A:set, A <> Empty -> forall P:set -> prop, forall l1 l2 :e finseq A, seq_all P (seq_append l1 l2) <-> seq_all P l1 /\ seq_all P l2).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall l1 l2 :e finseq A, hl_ALL A P (hl_APPEND A l1 l2) = 1 <-> hl_ALL A P l1 = 1 /\ hl_ALL A P l2 = 1) (fun P => forall l1 l2 :e finseq A, seq_all P (seq_append l1 l2) <-> seq_all P l1 /\ seq_all P l2) (fun P => (imp_forall_in (finseq A) (fun l1 => forall l2 :e finseq A, hl_ALL A (hl_chip A P) (hl_APPEND A l1 l2) = 1 <-> hl_ALL A (hl_chip A P) l1 = 1 /\ hl_ALL A (hl_chip A P) l2 = 1) (fun l1 => forall l2 :e finseq A, seq_all P (seq_append l1 l2) <-> seq_all P l1 /\ seq_all P l2) (fun l1 Hl1 => (imp_forall_in (finseq A) (fun l2 => hl_ALL A (hl_chip A P) (hl_APPEND A l1 l2) = 1 <-> hl_ALL A (hl_chip A P) l1 = 1 /\ hl_ALL A (hl_chip A P) l2 = 1) (fun l2 => seq_all P (seq_append l1 l2) <-> seq_all P l1 /\ seq_all P l2) (fun l2 Hl2 => (imp_iff (hl_ALL A (hl_chip A P) (hl_APPEND A l1 l2) = 1) (seq_all P (seq_append l1 l2)) (hl_ALL A (hl_chip A P) l1 = 1 /\ hl_ALL A (hl_chip A P) l2 = 1) (seq_all P l1 /\ seq_all P l2) (iffEL (hl_ALL A (hl_chip A P) (hl_APPEND A l1 l2) = 1) (seq_all P (seq_append l1 l2)) (((hl_APPEND_compat) (A) HAne (l1) Hl1 (l2) Hl2) (fun hl__u hl__v => hl_ALL A (hl_chip A P) (hl_APPEND A l1 l2) = 1 <-> seq_all P hl__u) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_APPEND A l1 l2) (setexp_ap (finseq A) (finseq A) (hl_APPEND A l1) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (l1) Hl1) (l2) Hl2)))) (iffER (hl_ALL A (hl_chip A P) (hl_APPEND A l1 l2) = 1) (seq_all P (seq_append l1 l2)) (((hl_APPEND_compat) (A) HAne (l1) Hl1 (l2) Hl2) (fun hl__u hl__v => hl_ALL A (hl_chip A P) (hl_APPEND A l1 l2) = 1 <-> seq_all P hl__u) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (hl_APPEND A l1 l2) (setexp_ap (finseq A) (finseq A) (hl_APPEND A l1) (setexp_ap (finseq A) (finseq A :^: finseq A) (hl_APPEND A) ((hl_APPEND_in) (A) HAne) (l1) Hl1) (l2) Hl2)))) (imp_and (hl_ALL A (hl_chip A P) l1 = 1) (seq_all P l1) (hl_ALL A (hl_chip A P) l2 = 1) (seq_all P l2) (iffEL (hl_ALL A (hl_chip A P) l1 = 1) (seq_all P l1) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l1) Hl1)) (iffEL (hl_ALL A (hl_chip A P) l2 = 1) (seq_all P l2) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l2) Hl2))) (imp_and (seq_all P l1) (hl_ALL A (hl_chip A P) l1 = 1) (seq_all P l2) (hl_ALL A (hl_chip A P) l2 = 1) (iffER (hl_ALL A (hl_chip A P) l1 = 1) (seq_all P l1) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l1) Hl1)) (iffER (hl_ALL A (hl_chip A P) l2 = 1) (seq_all P l2) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l2) Hl2)))))))))) (H__top A HAne)).
Qed.
Theorem ALL_APPEND : forall A:set, A <> Empty -> forall P:set -> prop, forall l1 l2 :e finseq A, seq_all P (seq_append l1 l2) <-> seq_all P l1 /\ seq_all P l2.
exact (ALL_APPEND_bridge hlt_ALL_APPEND).
Admitted.

// HOL Light: lists.ml:410 / MEM_EL   (hash md5:114beac3511e6fe7508305290f9729d7)
// not bridged: 
Theorem MEM_EL : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, n < seq_len l -> seq_mem (seq_nth l n) l.
Admitted.

// HOL Light: lists.ml:415 / MEM_EXISTS_EL   (hash md5:4493491e0722295075cb34926b005eaa)
// not bridged: 
Theorem MEM_EXISTS_EL : forall A:set, forall l :e finseq A, forall x :e A, seq_mem x l <-> exists i :e omega, i < seq_len l /\ x = seq_nth l i.
Admitted.

// HOL Light: lists.ml:422 / ALL_EL   (hash md5:237e34a641b79831cfd0911e87fd72fd)
// not bridged: 
Theorem ALL_EL : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, (forall i :e omega, i < seq_len l -> P (seq_nth l i)) <-> seq_all P l.
Admitted.

// HOL Light: lists.ml:426 / ALL2_MAP2   (hash md5:b81f14dfc5ba044192bd0ce1542135b6)
// not bridged: 
Theorem ALL2_MAP2 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall P:set -> set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e C, g x :e D) -> forall l :e finseq A, forall m :e finseq C, seq_all2 P (seq_map f l) (seq_map g m) <-> seq_all2 (fun x:set => fun y:set => P (f x) (g y)) l m.
Admitted.

// HOL Light: lists.ml:432 / AND_ALL2   (hash md5:a6e52c25066ce6e8132c25b40a38fd8d)
// not bridged: 
Theorem AND_ALL2 : forall A B:set, A <> Empty -> B <> Empty -> forall P Q:set -> set -> prop, forall l :e finseq A, forall m :e finseq B, seq_all2 P l m /\ seq_all2 Q l m <-> seq_all2 (fun x:set => fun y:set => P x y /\ Q x y) l m.
Admitted.

// HOL Light: lists.ml:439 / ALLPAIRS_SYM   (hash md5:808bb6d4c5cb3d40cbad02f407cc2372)
// not bridged: 
Theorem ALLPAIRS_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, forall l :e finseq A, forall m :e finseq B, (forall i :e seq_len l, forall j :e seq_len m, P (seq_nth l i) (seq_nth m j)) <-> forall i :e seq_len m, forall j :e seq_len l, P (seq_nth l j) (seq_nth m i).
Admitted.

// HOL Light: lists.ml:445 / ALLPAIRS_MEM   (hash md5:ef9bf6d2f325f0fc0358e7051e150305)
// not bridged: 
Theorem ALLPAIRS_MEM : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, forall l :e finseq A, forall m :e finseq B, (forall x :e A, forall y :e B, seq_mem x l /\ seq_mem y m -> P x y) <-> forall i :e seq_len l, forall j :e seq_len m, P (seq_nth l i) (seq_nth m j).
Admitted.

// HOL Light: lists.ml:452 / ALLPAIRS_MAP   (hash md5:f23de829602d7775e0cee60dfd35774c)
// not bridged: 
Theorem ALLPAIRS_MAP : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall P:set -> set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e C, g x :e D) -> forall l :e finseq A, forall m :e finseq C, (forall i :e seq_len (seq_map f l), forall j :e seq_len (seq_map g m), P (seq_nth (seq_map f l) i) (seq_nth (seq_map g m) j)) <-> forall i :e seq_len l, forall j :e seq_len m, P (f (seq_nth l i)) (g (seq_nth m j)).
Admitted.

// HOL Light: lists.ml:458 / ALLPAIRS_EQ   (hash md5:948fb2776481879cd9a3f3b4a954026e)
// not bridged: 
Theorem ALLPAIRS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall R0 R':set -> set -> prop, forall l :e finseq A, forall m :e finseq B, forall P Q:set -> prop, seq_all P l /\ (seq_all Q m /\ (forall p :e A, forall q :e B, P p /\ Q q -> (R0 p q <-> R' p q))) -> ((forall i :e seq_len l, forall j :e seq_len m, R0 (seq_nth l i) (seq_nth m j)) <-> forall i :e seq_len l, forall j :e seq_len m, R' (seq_nth l i) (seq_nth m j)).
Admitted.

// HOL Light: lists.ml:464 / ALL2_ALL   (hash md5:ad773421ed933244304c5e83c0f77d3c)
// not bridged: 
Theorem ALL2_ALL : forall A:set, A <> Empty -> forall P:set -> set -> prop, forall l :e finseq A, seq_all2 P l l <-> seq_all (fun x:set => P x x) l.
Admitted.

// HOL Light: lists.ml:469 / APPEND_EQ_NIL   (hash md5:e9edc19ed23cabaa314fa3fcaec3296e)
Theorem hlt_APPEND_EQ_NIL : forall A:set, A <> Empty -> forall l m :e finseq A, hl_APPEND A l m = hl_NIL A <-> l = hl_NIL A /\ m = hl_NIL A.
Admitted.
Theorem APPEND_EQ_NIL_bridge : (forall A:set, A <> Empty -> forall l m :e finseq A, hl_APPEND A l m = hl_NIL A <-> l = hl_NIL A /\ m = hl_NIL A) -> (forall A:set, A <> Empty -> forall l m :e finseq A, seq_append l m = seq_nil <-> l = seq_nil /\ m = seq_nil).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => forall m :e finseq A, hl_APPEND A l m = hl_NIL A <-> l = hl_NIL A /\ m = hl_NIL A) (fun l => forall m :e finseq A, seq_append l m = seq_nil <-> l = seq_nil /\ m = seq_nil) (fun l Hl => (imp_forall_in (finseq A) (fun m => hl_APPEND A l m = hl_NIL A <-> l = hl_NIL A /\ m = hl_NIL A) (fun m => seq_append l m = seq_nil <-> l = seq_nil /\ m = seq_nil) (fun m Hm => (imp_iff (hl_APPEND A l m = hl_NIL A) (seq_append l m = seq_nil) (l = hl_NIL A /\ m = hl_NIL A) (l = seq_nil /\ m = seq_nil) (imp_eq (hl_APPEND A l m) (seq_append l m) (hl_NIL A) (seq_nil) ((hl_APPEND_compat) (A) HAne (l) Hl (m) Hm) ((hl_NIL_compat) (A) HAne)) (imp_eq (seq_append l m) (hl_APPEND A l m) (seq_nil) (hl_NIL A) (eq_sym_i (hl_APPEND A l m) (seq_append l m) ((hl_APPEND_compat) (A) HAne (l) Hl (m) Hm)) (eq_sym_i (hl_NIL A) (seq_nil) ((hl_NIL_compat) (A) HAne))) (imp_and (l = hl_NIL A) (l = seq_nil) (m = hl_NIL A) (m = seq_nil) (imp_eq (l) (l) (hl_NIL A) (seq_nil) (fun q H => H) ((hl_NIL_compat) (A) HAne)) (imp_eq (m) (m) (hl_NIL A) (seq_nil) (fun q H => H) ((hl_NIL_compat) (A) HAne))) (imp_and (l = seq_nil) (l = hl_NIL A) (m = seq_nil) (m = hl_NIL A) (imp_eq (l) (l) (seq_nil) (hl_NIL A) (eq_sym_i (l) (l) (fun q H => H)) (eq_sym_i (hl_NIL A) (seq_nil) ((hl_NIL_compat) (A) HAne))) (imp_eq (m) (m) (seq_nil) (hl_NIL A) (eq_sym_i (m) (m) (fun q H => H)) (eq_sym_i (hl_NIL A) (seq_nil) ((hl_NIL_compat) (A) HAne))))))))) (H__top A HAne)).
Qed.
Theorem APPEND_EQ_NIL : forall A:set, A <> Empty -> forall l m :e finseq A, seq_append l m = seq_nil <-> l = seq_nil /\ m = seq_nil.
exact (APPEND_EQ_NIL_bridge hlt_APPEND_EQ_NIL).
Admitted.

// HOL Light: lists.ml:473 / APPEND_LCANCEL   (hash md5:8c4ba0d4c05300994d04fcf35bfd2317)
Theorem hlt_APPEND_LCANCEL : forall A:set, A <> Empty -> forall l1 l2 l3 :e finseq A, hl_APPEND A l1 l2 = hl_APPEND A l1 l3 <-> l2 = l3.
Admitted.
Theorem APPEND_LCANCEL_bridge : (forall A:set, A <> Empty -> forall l1 l2 l3 :e finseq A, hl_APPEND A l1 l2 = hl_APPEND A l1 l3 <-> l2 = l3) -> (forall A:set, forall l1 l2 l3 :e finseq A, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3).
exact (fun H__top A => (xm (A = Empty) (forall l1 l2 l3 :e finseq A, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall l1 l2 l3 :e finseq hl__u, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3) ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall l1 :e hl__u, forall l2 l3 :e finseq Empty, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3) (forall_Sing (seq_nil) (fun l1 => forall l2 l3 :e finseq Empty, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3) ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall l2 :e hl__u, forall l3 :e finseq Empty, seq_append seq_nil l2 = seq_append seq_nil l3 <-> l2 = l3) (forall_Sing (seq_nil) (fun l2 => forall l3 :e finseq Empty, seq_append seq_nil l2 = seq_append seq_nil l3 <-> l2 = l3) ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall l3 :e hl__u, seq_append seq_nil seq_nil = seq_append seq_nil l3 <-> seq_nil = l3) (forall_Sing (seq_nil) (fun l3 => seq_append seq_nil seq_nil = seq_append seq_nil l3 <-> seq_nil = l3) (iffI (seq_append seq_nil seq_nil = seq_append seq_nil seq_nil) (seq_nil = seq_nil) (fun _ => (fun q H => H)) (fun _ => (fun q H => H))))))))))) (fun HAne => (imp_forall_in (finseq A) (fun l1 => forall l2 l3 :e finseq A, hl_APPEND A l1 l2 = hl_APPEND A l1 l3 <-> l2 = l3) (fun l1 => forall l2 l3 :e finseq A, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3) (fun l1 Hl1 => (imp_forall_in (finseq A) (fun l2 => forall l3 :e finseq A, hl_APPEND A l1 l2 = hl_APPEND A l1 l3 <-> l2 = l3) (fun l2 => forall l3 :e finseq A, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3) (fun l2 Hl2 => (imp_forall_in (finseq A) (fun l3 => hl_APPEND A l1 l2 = hl_APPEND A l1 l3 <-> l2 = l3) (fun l3 => seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3) (fun l3 Hl3 => (imp_iff (hl_APPEND A l1 l2 = hl_APPEND A l1 l3) (seq_append l1 l2 = seq_append l1 l3) (l2 = l3) (l2 = l3) (imp_eq (hl_APPEND A l1 l2) (seq_append l1 l2) (hl_APPEND A l1 l3) (seq_append l1 l3) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (l2) Hl2) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (l3) Hl3)) (imp_eq (seq_append l1 l2) (hl_APPEND A l1 l2) (seq_append l1 l3) (hl_APPEND A l1 l3) (eq_sym_i (hl_APPEND A l1 l2) (seq_append l1 l2) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (l2) Hl2)) (eq_sym_i (hl_APPEND A l1 l3) (seq_append l1 l3) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (l3) Hl3))) (imp_eq (l2) (l2) (l3) (l3) (fun q H => H) (fun q H => H)) (imp_eq (l2) (l2) (l3) (l3) (eq_sym_i (l2) (l2) (fun q H => H)) (eq_sym_i (l3) (l3) (fun q H => H)))))))))) (H__top A HAne)))).
Qed.
Theorem APPEND_LCANCEL : forall A:set, forall l1 l2 l3 :e finseq A, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3.
exact (APPEND_LCANCEL_bridge hlt_APPEND_LCANCEL).
Admitted.

// HOL Light: lists.ml:477 / APPEND_RCANCEL   (hash md5:7929e632510a0ef42809349c1908e7fc)
Theorem hlt_APPEND_RCANCEL : forall A:set, A <> Empty -> forall l1 l2 l3 :e finseq A, hl_APPEND A l1 l3 = hl_APPEND A l2 l3 <-> l1 = l2.
Admitted.
Theorem APPEND_RCANCEL_bridge : (forall A:set, A <> Empty -> forall l1 l2 l3 :e finseq A, hl_APPEND A l1 l3 = hl_APPEND A l2 l3 <-> l1 = l2) -> (forall A:set, forall l1 l2 l3 :e finseq A, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2).
exact (fun H__top A => (xm (A = Empty) (forall l1 l2 l3 :e finseq A, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall l1 l2 l3 :e finseq hl__u, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2) ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall l1 :e hl__u, forall l2 l3 :e finseq Empty, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2) (forall_Sing (seq_nil) (fun l1 => forall l2 l3 :e finseq Empty, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2) ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall l2 :e hl__u, forall l3 :e finseq Empty, seq_append seq_nil l3 = seq_append l2 l3 <-> seq_nil = l2) (forall_Sing (seq_nil) (fun l2 => forall l3 :e finseq Empty, seq_append seq_nil l3 = seq_append l2 l3 <-> seq_nil = l2) ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall l3 :e hl__u, seq_append seq_nil l3 = seq_append seq_nil l3 <-> seq_nil = seq_nil) (forall_Sing (seq_nil) (fun l3 => seq_append seq_nil l3 = seq_append seq_nil l3 <-> seq_nil = seq_nil) (iffI (seq_append seq_nil seq_nil = seq_append seq_nil seq_nil) (seq_nil = seq_nil) (fun _ => (fun q H => H)) (fun _ => (fun q H => H))))))))))) (fun HAne => (imp_forall_in (finseq A) (fun l1 => forall l2 l3 :e finseq A, hl_APPEND A l1 l3 = hl_APPEND A l2 l3 <-> l1 = l2) (fun l1 => forall l2 l3 :e finseq A, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2) (fun l1 Hl1 => (imp_forall_in (finseq A) (fun l2 => forall l3 :e finseq A, hl_APPEND A l1 l3 = hl_APPEND A l2 l3 <-> l1 = l2) (fun l2 => forall l3 :e finseq A, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2) (fun l2 Hl2 => (imp_forall_in (finseq A) (fun l3 => hl_APPEND A l1 l3 = hl_APPEND A l2 l3 <-> l1 = l2) (fun l3 => seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2) (fun l3 Hl3 => (imp_iff (hl_APPEND A l1 l3 = hl_APPEND A l2 l3) (seq_append l1 l3 = seq_append l2 l3) (l1 = l2) (l1 = l2) (imp_eq (hl_APPEND A l1 l3) (seq_append l1 l3) (hl_APPEND A l2 l3) (seq_append l2 l3) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (l3) Hl3) ((hl_APPEND_compat) (A) HAne (l2) Hl2 (l3) Hl3)) (imp_eq (seq_append l1 l3) (hl_APPEND A l1 l3) (seq_append l2 l3) (hl_APPEND A l2 l3) (eq_sym_i (hl_APPEND A l1 l3) (seq_append l1 l3) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (l3) Hl3)) (eq_sym_i (hl_APPEND A l2 l3) (seq_append l2 l3) ((hl_APPEND_compat) (A) HAne (l2) Hl2 (l3) Hl3))) (imp_eq (l1) (l1) (l2) (l2) (fun q H => H) (fun q H => H)) (imp_eq (l1) (l1) (l2) (l2) (eq_sym_i (l1) (l1) (fun q H => H)) (eq_sym_i (l2) (l2) (fun q H => H)))))))))) (H__top A HAne)))).
Qed.
Theorem APPEND_RCANCEL : forall A:set, forall l1 l2 l3 :e finseq A, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2.
exact (APPEND_RCANCEL_bridge hlt_APPEND_RCANCEL).
Admitted.

// HOL Light: lists.ml:483 / LENGTH_MAP2   (hash md5:42acf0238a4233db18add111006f2bd1)
// not bridged: 
Theorem LENGTH_MAP2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> forall l :e finseq A, forall m :e finseq B, seq_len l = seq_len m -> seq_len (seq_map2 f l m) = seq_len m.
Admitted.

// HOL Light: lists.ml:488 / EL_MAP2   (hash md5:7dcce9680a2312a32a4141f7d677e5a6)
// not bridged: 
Theorem EL_MAP2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> forall l :e finseq A, forall m :e finseq B, forall k :e omega, k < seq_len l /\ k < seq_len m -> seq_nth (seq_map2 f l m) k = f (seq_nth l k) (seq_nth m k).
Admitted.

// HOL Light: lists.ml:496 / MAP_EQ_NIL   (hash md5:f1250992840d45e0d3f24916f01553e8)
Theorem hlt_MAP_EQ_NIL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l :e finseq A, hl_MAP A B f l = hl_NIL B <-> l = hl_NIL A.
Admitted.
Theorem MAP_EQ_NIL_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l :e finseq A, hl_MAP A B f l = hl_NIL B <-> l = hl_NIL A) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_map f l = seq_nil <-> l = seq_nil).
exact (fun H__top A B HAne HBne => (imp_forall_fun (A) (B) (fun f => forall l :e finseq A, hl_MAP A B f l = hl_NIL B <-> l = hl_NIL A) (fun f => forall l :e finseq A, seq_map f l = seq_nil <-> l = seq_nil) (fun f Hfc => (imp_forall_in (finseq A) (fun l => hl_MAP A B (hl_lam A f) l = hl_NIL B <-> l = hl_NIL A) (fun l => seq_map f l = seq_nil <-> l = seq_nil) (fun l Hl => (imp_iff (hl_MAP A B (hl_lam A f) l = hl_NIL B) (seq_map f l = seq_nil) (l = hl_NIL A) (l = seq_nil) (imp_eq (hl_MAP A B (hl_lam A f) l) (seq_map f l) (hl_NIL B) (seq_nil) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) ((hl_NIL_compat) (B) HBne)) (imp_eq (seq_map f l) (hl_MAP A B (hl_lam A f) l) (seq_nil) (hl_NIL B) (eq_sym_i (hl_MAP A B (hl_lam A f) l) (seq_map f l) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl)) (eq_sym_i (hl_NIL B) (seq_nil) ((hl_NIL_compat) (B) HBne))) (imp_eq (l) (l) (hl_NIL A) (seq_nil) (fun q H => H) ((hl_NIL_compat) (A) HAne)) (imp_eq (l) (l) (seq_nil) (hl_NIL A) (eq_sym_i (l) (l) (fun q H => H)) (eq_sym_i (hl_NIL A) (seq_nil) ((hl_NIL_compat) (A) HAne)))))))) (H__top A B HAne HBne)).
Qed.
Theorem MAP_EQ_NIL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_map f l = seq_nil <-> l = seq_nil.
exact (MAP_EQ_NIL_bridge hlt_MAP_EQ_NIL).
Admitted.

// HOL Light: lists.ml:500 / INJECTIVE_MAP   (hash md5:eb01dcdc910704add493aee7b5e61f6d)
Theorem hlt_INJECTIVE_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall l m :e finseq A, hl_MAP A B f l = hl_MAP A B f m -> l = m) <-> forall x y :e A, f x = f y -> x = y.
Admitted.
Theorem INJECTIVE_MAP_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall l m :e finseq A, hl_MAP A B f l = hl_MAP A B f m -> l = m) <-> forall x y :e A, f x = f y -> x = y) -> (forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> ((forall l m :e finseq A, seq_map f l = seq_map f m -> l = m) <-> forall x y :e A, f x = f y -> x = y)).
exact (fun H__top A B HBne => (xm (A = Empty) (forall f:set -> set, (forall x :e A, f x :e B) -> ((forall l m :e finseq A, seq_map f l = seq_map f m -> l = m) <-> forall x y :e A, f x = f y -> x = y)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall f:set -> set, (forall x :e hl__u, f x :e B) -> ((forall l m :e finseq hl__u, seq_map f l = seq_map f m -> l = m) <-> forall x y :e hl__u, f x = f y -> x = y)) (fun f => (fun H : forall x :e Empty, f x :e B => (iffI (forall l m :e finseq Empty, seq_map f l = seq_map f m -> l = m) (forall x y :e Empty, f x = f y -> x = y) (fun _ => (forall_in_Empty (fun x => forall y :e Empty, f x = f y -> x = y))) (fun _ => ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall l :e hl__u, forall m :e finseq Empty, seq_map f l = seq_map f m -> l = m) (forall_Sing (seq_nil) (fun l => forall m :e finseq Empty, seq_map f l = seq_map f m -> l = m) ((eq_sym_i (finseq Empty) ({seq_nil}) finseq_Empty) (fun hl__u hl__v => forall m :e hl__u, seq_map f seq_nil = seq_map f m -> seq_nil = m) (forall_Sing (seq_nil) (fun m => seq_map f seq_nil = seq_map f m -> seq_nil = m) (fun H : seq_map f seq_nil = seq_map f seq_nil => (fun q H => H)))))))))))) (fun HAne => (imp_forall_fun (A) (B) (fun f => (forall l m :e finseq A, hl_MAP A B f l = hl_MAP A B f m -> l = m) <-> forall x y :e A, f x = f y -> x = y) (fun f => (forall l m :e finseq A, seq_map f l = seq_map f m -> l = m) <-> forall x y :e A, f x = f y -> x = y) (fun f Hfc => (imp_iff (forall l m :e finseq A, hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A f) m -> l = m) (forall l m :e finseq A, seq_map f l = seq_map f m -> l = m) (forall x y :e A, hl_lam A f x = hl_lam A f y -> x = y) (forall x y :e A, f x = f y -> x = y) (imp_forall_in (finseq A) (fun l => forall m :e finseq A, hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A f) m -> l = m) (fun l => forall m :e finseq A, seq_map f l = seq_map f m -> l = m) (fun l Hl => (imp_forall_in (finseq A) (fun m => hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A f) m -> l = m) (fun m => seq_map f l = seq_map f m -> l = m) (fun m Hm => (fun H__L : ((hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A f) m) -> (l = m)) => fun H__hyp12 : (seq_map f l = seq_map f m) => (imp_eq (l) (l) (m) (m) (fun q H => H) (fun q H => H)) (H__L ((imp_eq (seq_map f l) (hl_MAP A B (hl_lam A f) l) (seq_map f m) (hl_MAP A B (hl_lam A f) m) (eq_sym_i (hl_MAP A B (hl_lam A f) l) (seq_map f l) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl)) (eq_sym_i (hl_MAP A B (hl_lam A f) m) (seq_map f m) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (m) Hm))) H__hyp12))))))) (imp_forall_in (finseq A) (fun l => forall m :e finseq A, seq_map f l = seq_map f m -> l = m) (fun l => forall m :e finseq A, hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A f) m -> l = m) (fun l Hl => (imp_forall_in (finseq A) (fun m => seq_map f l = seq_map f m -> l = m) (fun m => hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A f) m -> l = m) (fun m Hm => (fun H__N : ((seq_map f l = seq_map f m) -> (l = m)) => fun H__hyp9 : (hl_MAP A B (hl_lam A f) l = hl_MAP A B (hl_lam A f) m) => (imp_eq (l) (l) (m) (m) (eq_sym_i (l) (l) (fun q H => H)) (eq_sym_i (m) (m) (fun q H => H))) (H__N ((imp_eq (hl_MAP A B (hl_lam A f) l) (seq_map f l) (hl_MAP A B (hl_lam A f) m) (seq_map f m) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (m) Hm)) H__hyp9))))))) (imp_forall_in (A) (fun x => forall y :e A, hl_lam A f x = hl_lam A f y -> x = y) (fun x => forall y :e A, f x = f y -> x = y) (fun x Hx => (imp_forall_in (A) (fun y => hl_lam A f x = hl_lam A f y -> x = y) (fun y => f x = f y -> x = y) (fun y Hy => (fun H__L : ((hl_lam A f x = hl_lam A f y) -> (x = y)) => fun H__hyp6 : (f x = f y) => (imp_eq (x) (x) (y) (y) (fun q H => H) (fun q H => H)) (H__L ((imp_eq (f x) (hl_lam A f x) (f y) (hl_lam A f y) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (hl_lam A f y) (f y) ((hl_lam_ap (A) f) (y) Hy))) H__hyp6))))))) (imp_forall_in (A) (fun x => forall y :e A, f x = f y -> x = y) (fun x => forall y :e A, hl_lam A f x = hl_lam A f y -> x = y) (fun x Hx => (imp_forall_in (A) (fun y => f x = f y -> x = y) (fun y => hl_lam A f x = hl_lam A f y -> x = y) (fun y Hy => (fun H__N : ((f x = f y) -> (x = y)) => fun H__hyp3 : (hl_lam A f x = hl_lam A f y) => (imp_eq (x) (x) (y) (y) (eq_sym_i (x) (x) (fun q H => H)) (eq_sym_i (y) (y) (fun q H => H))) (H__N ((imp_eq (hl_lam A f x) (f x) (hl_lam A f y) (f y) ((hl_lam_ap (A) f) (x) Hx) ((hl_lam_ap (A) f) (y) Hy)) H__hyp3)))))))))) (H__top A B HAne HBne)))).
Qed.
Theorem INJECTIVE_MAP : forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> ((forall l m :e finseq A, seq_map f l = seq_map f m -> l = m) <-> forall x y :e A, f x = f y -> x = y).
exact (INJECTIVE_MAP_bridge hlt_INJECTIVE_MAP).
Admitted.

// HOL Light: lists.ml:510 / SURJECTIVE_MAP   (hash md5:c68eac62c1e2887631b83ac6bf4e7cf3)
Theorem hlt_SURJECTIVE_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall m :e finseq B, exists l :e finseq A, hl_MAP A B f l = m) <-> forall y :e B, exists x :e A, f x = y.
Admitted.
Theorem SURJECTIVE_MAP_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall m :e finseq B, exists l :e finseq A, hl_MAP A B f l = m) <-> forall y :e B, exists x :e A, f x = y) -> (forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> ((forall m :e finseq B, exists l :e finseq A, seq_map f l = m) <-> forall y :e B, exists x :e A, f x = y)).
exact (fun H__top A B HAne HBne => (imp_forall_fun (A) (B) (fun f => (forall m :e finseq B, exists l :e finseq A, hl_MAP A B f l = m) <-> forall y :e B, exists x :e A, f x = y) (fun f => (forall m :e finseq B, exists l :e finseq A, seq_map f l = m) <-> forall y :e B, exists x :e A, f x = y) (fun f Hfc => (imp_iff (forall m :e finseq B, exists l :e finseq A, hl_MAP A B (hl_lam A f) l = m) (forall m :e finseq B, exists l :e finseq A, seq_map f l = m) (forall y :e B, exists x :e A, hl_lam A f x = y) (forall y :e B, exists x :e A, f x = y) (imp_forall_in (finseq B) (fun m => exists l :e finseq A, hl_MAP A B (hl_lam A f) l = m) (fun m => exists l :e finseq A, seq_map f l = m) (fun m Hm => (imp_exists_in (finseq A) (fun l => hl_MAP A B (hl_lam A f) l = m) (fun l => seq_map f l = m) (fun l Hl => (imp_eq (hl_MAP A B (hl_lam A f) l) (seq_map f l) (m) (m) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl) (fun q H => H)))))) (imp_forall_in (finseq B) (fun m => exists l :e finseq A, seq_map f l = m) (fun m => exists l :e finseq A, hl_MAP A B (hl_lam A f) l = m) (fun m Hm => (imp_exists_in (finseq A) (fun l => seq_map f l = m) (fun l => hl_MAP A B (hl_lam A f) l = m) (fun l Hl => (imp_eq (seq_map f l) (hl_MAP A B (hl_lam A f) l) (m) (m) (eq_sym_i (hl_MAP A B (hl_lam A f) l) (seq_map f l) ((hl_MAP_compat) (A) (B) HAne HBne (hl_lam A f) (hl_lam_Pi (A) (B) f Hfc) (fun hl__x:set => (f) hl__x) ((hl_lam_ap (A) f)) (l) Hl)) (eq_sym_i (m) (m) (fun q H => H))))))) (imp_forall_in (B) (fun y => exists x :e A, hl_lam A f x = y) (fun y => exists x :e A, f x = y) (fun y Hy => (imp_exists_in (A) (fun x => hl_lam A f x = y) (fun x => f x = y) (fun x Hx => (imp_eq (hl_lam A f x) (f x) (y) (y) ((hl_lam_ap (A) f) (x) Hx) (fun q H => H)))))) (imp_forall_in (B) (fun y => exists x :e A, f x = y) (fun y => exists x :e A, hl_lam A f x = y) (fun y Hy => (imp_exists_in (A) (fun x => f x = y) (fun x => hl_lam A f x = y) (fun x Hx => (imp_eq (f x) (hl_lam A f x) (y) (y) (eq_sym_i (hl_lam A f x) (f x) ((hl_lam_ap (A) f) (x) Hx)) (eq_sym_i (y) (y) (fun q H => H)))))))))) (H__top A B HAne HBne)).
Qed.
Theorem SURJECTIVE_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> ((forall m :e finseq B, exists l :e finseq A, seq_map f l = m) <-> forall y :e B, exists x :e A, f x = y).
exact (SURJECTIVE_MAP_bridge hlt_SURJECTIVE_MAP).
Admitted.

// HOL Light: lists.ml:519 / MAP_ID   (hash md5:84fd0b4115f0cf85275d63eec3f2c524)
Theorem hlt_MAP_ID : forall A:set, A <> Empty -> forall l :e finseq A, hl_MAP A A (fun x :e A => x) l = l.
Admitted.
Theorem MAP_ID_bridge : (forall A:set, A <> Empty -> forall l :e finseq A, hl_MAP A A (fun x :e A => x) l = l) -> (forall A:set, A <> Empty -> forall l :e finseq A, seq_map (fun x:set => x) l = l).
exact (fun H__top A HAne => (imp_forall_in (finseq A) (fun l => hl_MAP A A (fun x :e A => x) l = l) (fun l => seq_map (fun x:set => x) l = l) (fun l Hl => (imp_eq (hl_MAP A A (fun x :e A => x) l) (seq_map (fun x:set => x) l) (l) (l) ((hl_MAP_compat) (A) (A) HAne HAne (fun x :e A => x) (lam_Pi (A) (fun _ => A) (fun x => x) (fun x Hx => Hx)) (fun x:set => x) ((fun x Hx => (beta (A) (fun x:set => x) x Hx))) (l) Hl) (fun q H => H)))) (H__top A HAne)).
Qed.
Theorem MAP_ID : forall A:set, A <> Empty -> forall l :e finseq A, seq_map (fun x:set => x) l = l.
exact (MAP_ID_bridge hlt_MAP_ID).
Admitted.

// HOL Light: lists.ml:523 / MAP_I   (hash md5:7308c5409ad7fe485ea20ab13aadeb1b)
// not bridged: 
Theorem MAP_I : forall A:set, A <> Empty -> forall x :e finseq A, seq_map (fun x:set => x) x = x.
Admitted.

// HOL Light: lists.ml:527 / BUTLAST_CLAUSES   (hash md5:2669bd204e0a6c6c199749e98d4535d4)
// not bridged: 
Theorem BUTLAST_CLAUSES : forall A:set, A <> Empty -> seq_butlast seq_nil = seq_nil /\ ((forall a :e A, seq_butlast (seq_cons a seq_nil) = seq_nil) /\ forall a h :e A, forall t :e finseq A, seq_butlast (seq_cons a (seq_cons h t)) = seq_cons a (seq_butlast (seq_cons h t))).
Admitted.

// HOL Light: lists.ml:533 / BUTLAST_APPEND   (hash md5:b9b6989022b3a40753c7c1cd6dfbc030)
// not bridged: 
Theorem BUTLAST_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, seq_butlast (seq_append l m) = if m = seq_nil then seq_butlast l else seq_append l (seq_butlast m).
Admitted.

// HOL Light: lists.ml:540 / APPEND_BUTLAST_LAST   (hash md5:703f649413aa2037e3dcf32aa4963892)
// not bridged: 
Theorem APPEND_BUTLAST_LAST : forall A:set, forall l :e finseq A, ~ l = seq_nil -> seq_append (seq_butlast l) (seq_cons (seq_last l) seq_nil) = l.
Admitted.

// HOL Light: lists.ml:545 / LAST_APPEND   (hash md5:4020322e71adb76451026919c337000e)
// not bridged: 
Theorem LAST_APPEND : forall A:set, A <> Empty -> forall p q :e finseq A, seq_last (seq_append p q) = if q = seq_nil then seq_last p else seq_last q.
Admitted.

// HOL Light: lists.ml:550 / LENGTH_TL   (hash md5:a85a29a10af63dc1de3488e67a73bc80)
// not bridged: 
Theorem LENGTH_TL : forall A:set, forall l :e finseq A, ~ l = seq_nil -> seq_len (seq_tl l) = minus_nat (seq_len l) 1.
Admitted.

// HOL Light: lists.ml:554 / LAST_REVERSE   (hash md5:c75a8f7488d5cca7950ef0e9cc55247c)
// not bridged: 
Theorem LAST_REVERSE : forall A:set, forall l :e finseq A, ~ l = seq_nil -> seq_last (seq_rev l) = seq_hd l.
Admitted.

// HOL Light: lists.ml:559 / HD_REVERSE   (hash md5:ab3ea9bf8f9519ab0c9869a62f24e123)
// not bridged: 
Theorem HD_REVERSE : forall A:set, forall l :e finseq A, ~ l = seq_nil -> seq_hd (seq_rev l) = seq_last l.
Admitted.

// HOL Light: lists.ml:563 / EL_APPEND   (hash md5:748e8eba07efd541bbb8f4cee28509db)
// not bridged: 
Theorem EL_APPEND : forall A:set, A <> Empty -> forall k :e omega, forall l m :e finseq A, seq_nth (seq_append l m) k = if k < seq_len l then seq_nth l k else seq_nth m (minus_nat k (seq_len l)).
Admitted.

// HOL Light: lists.ml:572 / EL_TL   (hash md5:1c4e8150a9c01e601483be55a0dcfe79)
// not bridged: 
Theorem EL_TL : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, seq_nth (seq_tl l) n = seq_nth l (n + 1).
Admitted.

// HOL Light: lists.ml:576 / EL_CONS   (hash md5:96bf1046e3cf9e37940e276d513bcf2d)
// not bridged: 
Theorem EL_CONS : forall A:set, forall n :e omega, forall h :e A, forall t :e finseq A, seq_nth (seq_cons h t) n = if n = 0 then h else seq_nth t (minus_nat n 1).
Admitted.

// HOL Light: lists.ml:580 / LAST_EL   (hash md5:cedb10fc7f4c5badbfdc4bf1fc00dcd0)
// not bridged: 
Theorem LAST_EL : forall A:set, forall l :e finseq A, ~ l = seq_nil -> seq_last l = seq_nth l (minus_nat (seq_len l) 1).
Admitted.

// HOL Light: lists.ml:586 / HD_APPEND   (hash md5:da7d7062ece2bd17943b9d0f7e786eeb)
// not bridged: 
Theorem HD_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, seq_hd (seq_append l m) = if l = seq_nil then seq_hd m else seq_hd l.
Admitted.

// HOL Light: lists.ml:590 / CONS_HD_TL   (hash md5:c92d05c19eb5a4cde98682e8b8eceaaa)
// not bridged: 
Theorem CONS_HD_TL : forall A:set, forall l :e finseq A, ~ l = seq_nil -> l = seq_cons (seq_hd l) (seq_tl l).
Admitted.

// HOL Light: lists.ml:594 / EL_MAP   (hash md5:540a91f3328e7f6a379a49ab731fe835)
// not bridged: 
Theorem EL_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall n :e omega, forall l :e finseq A, n < seq_len l -> seq_nth (seq_map f l) n = f (seq_nth l n).
Admitted.

// HOL Light: lists.ml:599 / MAP_REVERSE   (hash md5:038d08910009b286fad2d63812deec2f)
// not bridged: 
Theorem MAP_REVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_rev (seq_map f l) = seq_map f (seq_rev l).
Admitted.

// HOL Light: lists.ml:604 / ALL_FILTER   (hash md5:6fae4f4a0d9017f391f4c71232191e71)
// not bridged: 
Theorem ALL_FILTER : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, seq_all P (seq_filter Q l) <-> seq_all (fun x:set => Q x -> P x) l.
Admitted.

// HOL Light: lists.ml:610 / APPEND_SING   (hash md5:657b1648e9b6042cfb6163edb02d09ee)
Theorem hlt_APPEND_SING : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, hl_APPEND A (hl_CONS A h (hl_NIL A)) t = hl_CONS A h t.
Admitted.
Theorem APPEND_SING_bridge : (forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, hl_APPEND A (hl_CONS A h (hl_NIL A)) t = hl_CONS A h t) -> (forall A:set, forall h :e A, forall t :e finseq A, seq_append (seq_cons h seq_nil) t = seq_cons h t).
exact (fun H__top A => (xm (A = Empty) (forall h :e A, forall t :e finseq A, seq_append (seq_cons h seq_nil) t = seq_cons h t) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall h :e hl__u, forall t :e finseq hl__u, seq_append (seq_cons h seq_nil) t = seq_cons h t) (forall_in_Empty (fun h => forall t :e finseq Empty, seq_append (seq_cons h seq_nil) t = seq_cons h t)))) (fun HAne => (imp_forall_in (A) (fun h => forall t :e finseq A, hl_APPEND A (hl_CONS A h (hl_NIL A)) t = hl_CONS A h t) (fun h => forall t :e finseq A, seq_append (seq_cons h seq_nil) t = seq_cons h t) (fun h Hh => (imp_forall_in (finseq A) (fun t => hl_APPEND A (hl_CONS A h (hl_NIL A)) t = hl_CONS A h t) (fun t => seq_append (seq_cons h seq_nil) t = seq_cons h t) (fun t Ht => (imp_eq (hl_APPEND A (hl_CONS A h (hl_NIL A)) t) (seq_append (seq_cons h seq_nil) t) (hl_CONS A h t) (seq_cons h t) ((((hl_NIL_compat) (A) HAne) (fun hl__u hl__v => hl_CONS A h (hl_NIL A) = seq_cons h hl__u) ((hl_CONS_compat) (A) HAne (h) Hh (hl_NIL A) ((hl_NIL_in) (A) HAne))) (fun hl__u hl__v => hl_APPEND A (hl_CONS A h (hl_NIL A)) t = seq_append hl__u t) ((hl_APPEND_compat) (A) HAne (hl_CONS A h (hl_NIL A)) (setexp_ap (finseq A) (finseq A) (hl_CONS A h) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (h) Hh) (hl_NIL A) ((hl_NIL_in) (A) HAne)) (t) Ht)) ((hl_CONS_compat) (A) HAne (h) Hh (t) Ht)))))) (H__top A HAne)))).
Qed.
Theorem APPEND_SING : forall A:set, forall h :e A, forall t :e finseq A, seq_append (seq_cons h seq_nil) t = seq_cons h t.
exact (APPEND_SING_bridge hlt_APPEND_SING).
Admitted.

// HOL Light: lists.ml:614 / MEM_APPEND_DECOMPOSE_LEFT   (hash md5:b6e9ffc4135587ba40aeaf58d991a37d)
Theorem hlt_MEM_APPEND_DECOMPOSE_LEFT : forall A:set, A <> Empty -> forall x :e A, forall l :e finseq A, hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2).
Admitted.
Theorem MEM_APPEND_DECOMPOSE_LEFT_bridge : (forall A:set, A <> Empty -> forall x :e A, forall l :e finseq A, hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2)) -> (forall A:set, forall x :e A, forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)).
exact (fun H__top A => (xm (A = Empty) (forall x :e A, forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall x :e hl__u, forall l :e finseq hl__u, seq_mem x l <-> exists l1 l2 :e finseq hl__u, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (forall_in_Empty (fun x => forall l :e finseq Empty, seq_mem x l <-> exists l1 l2 :e finseq Empty, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2))))) (fun HAne => (imp_forall_in (A) (fun x => forall l :e finseq A, hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2)) (fun x => forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (fun x Hx => (imp_forall_in (finseq A) (fun l => hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l => seq_mem x l <-> exists l1 l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (fun l Hl => (imp_iff (hl_MEM A x l = 1) (seq_mem x l) (exists l1 l2 :e finseq A, ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2)) (exists l1 l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (iffEL (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) (iffER (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) (imp_exists_in (finseq A) (fun l1 => exists l2 :e finseq A, ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l1 => exists l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (fun l1 Hl1 => (imp_exists_in (finseq A) (fun l2 => ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l2 => ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (fun l2 Hl2 => (imp_and (~ hl_MEM A x l1 = 1) (~ seq_mem x l1) (l = hl_APPEND A l1 (hl_CONS A x l2)) (l = seq_append l1 (seq_cons x l2)) (imp_not (hl_MEM A x l1 = 1) (seq_mem x l1) (iffER (hl_MEM A x l1 = 1) (seq_mem x l1) ((hl_MEM_compat) (A) HAne (x) Hx (l1) Hl1))) (imp_eq (l) (l) (hl_APPEND A l1 (hl_CONS A x l2)) (seq_append l1 (seq_cons x l2)) (fun q H => H) (((hl_CONS_compat) (A) HAne (x) Hx (l2) Hl2) (fun hl__u hl__v => hl_APPEND A l1 (hl_CONS A x l2) = seq_append l1 hl__u) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (hl_CONS A x l2) (setexp_ap (finseq A) (finseq A) (hl_CONS A x) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (x) Hx) (l2) Hl2))))))))) (imp_exists_in (finseq A) (fun l1 => exists l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (fun l1 => exists l2 :e finseq A, ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l1 Hl1 => (imp_exists_in (finseq A) (fun l2 => ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2)) (fun l2 => ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l2 Hl2 => (imp_and (~ seq_mem x l1) (~ hl_MEM A x l1 = 1) (l = seq_append l1 (seq_cons x l2)) (l = hl_APPEND A l1 (hl_CONS A x l2)) (imp_not (seq_mem x l1) (hl_MEM A x l1 = 1) (iffEL (hl_MEM A x l1 = 1) (seq_mem x l1) ((hl_MEM_compat) (A) HAne (x) Hx (l1) Hl1))) (imp_eq (l) (l) (seq_append l1 (seq_cons x l2)) (hl_APPEND A l1 (hl_CONS A x l2)) (eq_sym_i (l) (l) (fun q H => H)) (eq_sym_i (hl_APPEND A l1 (hl_CONS A x l2)) (seq_append l1 (seq_cons x l2)) (((hl_CONS_compat) (A) HAne (x) Hx (l2) Hl2) (fun hl__u hl__v => hl_APPEND A l1 (hl_CONS A x l2) = seq_append l1 hl__u) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (hl_CONS A x l2) (setexp_ap (finseq A) (finseq A) (hl_CONS A x) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (x) Hx) (l2) Hl2))))))))))))))) (H__top A HAne)))).
Qed.
Theorem MEM_APPEND_DECOMPOSE_LEFT : forall A:set, forall x :e A, forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2).
exact (MEM_APPEND_DECOMPOSE_LEFT_bridge hlt_MEM_APPEND_DECOMPOSE_LEFT).
Admitted.

// HOL Light: lists.ml:622 / MEM_APPEND_DECOMPOSE   (hash md5:655abb7cee4ccc640944195ea244e94f)
Theorem hlt_MEM_APPEND_DECOMPOSE : forall A:set, A <> Empty -> forall x :e A, forall l :e finseq A, hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, l = hl_APPEND A l1 (hl_CONS A x l2).
Admitted.
Theorem MEM_APPEND_DECOMPOSE_bridge : (forall A:set, A <> Empty -> forall x :e A, forall l :e finseq A, hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, l = hl_APPEND A l1 (hl_CONS A x l2)) -> (forall A:set, forall x :e A, forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, l = seq_append l1 (seq_cons x l2)).
exact (fun H__top A => (xm (A = Empty) (forall x :e A, forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, l = seq_append l1 (seq_cons x l2)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall x :e hl__u, forall l :e finseq hl__u, seq_mem x l <-> exists l1 l2 :e finseq hl__u, l = seq_append l1 (seq_cons x l2)) (forall_in_Empty (fun x => forall l :e finseq Empty, seq_mem x l <-> exists l1 l2 :e finseq Empty, l = seq_append l1 (seq_cons x l2))))) (fun HAne => (imp_forall_in (A) (fun x => forall l :e finseq A, hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, l = hl_APPEND A l1 (hl_CONS A x l2)) (fun x => forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, l = seq_append l1 (seq_cons x l2)) (fun x Hx => (imp_forall_in (finseq A) (fun l => hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l => seq_mem x l <-> exists l1 l2 :e finseq A, l = seq_append l1 (seq_cons x l2)) (fun l Hl => (imp_iff (hl_MEM A x l = 1) (seq_mem x l) (exists l1 l2 :e finseq A, l = hl_APPEND A l1 (hl_CONS A x l2)) (exists l1 l2 :e finseq A, l = seq_append l1 (seq_cons x l2)) (iffEL (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) (iffER (hl_MEM A x l = 1) (seq_mem x l) ((hl_MEM_compat) (A) HAne (x) Hx (l) Hl)) (imp_exists_in (finseq A) (fun l1 => exists l2 :e finseq A, l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l1 => exists l2 :e finseq A, l = seq_append l1 (seq_cons x l2)) (fun l1 Hl1 => (imp_exists_in (finseq A) (fun l2 => l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l2 => l = seq_append l1 (seq_cons x l2)) (fun l2 Hl2 => (imp_eq (l) (l) (hl_APPEND A l1 (hl_CONS A x l2)) (seq_append l1 (seq_cons x l2)) (fun q H => H) (((hl_CONS_compat) (A) HAne (x) Hx (l2) Hl2) (fun hl__u hl__v => hl_APPEND A l1 (hl_CONS A x l2) = seq_append l1 hl__u) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (hl_CONS A x l2) (setexp_ap (finseq A) (finseq A) (hl_CONS A x) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (x) Hx) (l2) Hl2)))))))) (imp_exists_in (finseq A) (fun l1 => exists l2 :e finseq A, l = seq_append l1 (seq_cons x l2)) (fun l1 => exists l2 :e finseq A, l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l1 Hl1 => (imp_exists_in (finseq A) (fun l2 => l = seq_append l1 (seq_cons x l2)) (fun l2 => l = hl_APPEND A l1 (hl_CONS A x l2)) (fun l2 Hl2 => (imp_eq (l) (l) (seq_append l1 (seq_cons x l2)) (hl_APPEND A l1 (hl_CONS A x l2)) (eq_sym_i (l) (l) (fun q H => H)) (eq_sym_i (hl_APPEND A l1 (hl_CONS A x l2)) (seq_append l1 (seq_cons x l2)) (((hl_CONS_compat) (A) HAne (x) Hx (l2) Hl2) (fun hl__u hl__v => hl_APPEND A l1 (hl_CONS A x l2) = seq_append l1 hl__u) ((hl_APPEND_compat) (A) HAne (l1) Hl1 (hl_CONS A x l2) (setexp_ap (finseq A) (finseq A) (hl_CONS A x) (setexp_ap (A) (finseq A :^: finseq A) (hl_CONS A) ((hl_CONS_in) (A) HAne) (x) Hx) (l2) Hl2)))))))))))))) (H__top A HAne)))).
Qed.
Theorem MEM_APPEND_DECOMPOSE : forall A:set, forall x :e A, forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, l = seq_append l1 (seq_cons x l2).
exact (MEM_APPEND_DECOMPOSE_bridge hlt_MEM_APPEND_DECOMPOSE).
Admitted.

// HOL Light: lists.ml:628 / PAIRWISE_APPEND   (hash md5:df5224d6ab1447dbda247a059923c97e)
// not bridged: 
Theorem PAIRWISE_APPEND : forall A:set, A <> Empty -> forall R0:set -> set -> prop, forall l m :e finseq A, seq_pairwise R0 (seq_append l m) <-> seq_pairwise R0 l /\ (seq_pairwise R0 m /\ forall x y :e A, seq_mem x l /\ seq_mem y m -> R0 x y).
Admitted.

// HOL Light: lists.ml:636 / PAIRWISE_MAP   (hash md5:2729e2a3e288fd1a4208cc9737da4dbb)
// not bridged: 
Theorem PAIRWISE_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall R0:set -> set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_pairwise R0 (seq_map f l) <-> seq_pairwise (fun x:set => fun y:set => R0 (f x) (f y)) l.
Admitted.

// HOL Light: lists.ml:642 / PAIRWISE_IMPLIES   (hash md5:8d75040c7d2a055f4216d39f8ea08f8d)
// not bridged: 
Theorem PAIRWISE_IMPLIES : forall A:set, A <> Empty -> forall R0 R':set -> set -> prop, forall l :e finseq A, seq_pairwise R0 l /\ (forall x y :e A, seq_mem x l /\ (seq_mem y l /\ R0 x y) -> R' x y) -> seq_pairwise R' l.
Admitted.

// HOL Light: lists.ml:649 / PAIRWISE_TRANSITIVE   (hash md5:602e07b92e365c30942cd7e171a820e7)
// not bridged: 
Theorem PAIRWISE_TRANSITIVE : forall A:set, forall R0:set -> set -> prop, forall x y :e A, forall l :e finseq A, (forall x0 y0 z :e A, R0 x0 y0 /\ R0 y0 z -> R0 x0 z) -> (seq_pairwise R0 (seq_cons x (seq_cons y l)) <-> R0 x y /\ seq_pairwise R0 (seq_cons y l)).
Admitted.

// HOL Light: lists.ml:660 / LENGTH_LIST_OF_SEQ   (hash md5:6917348fe479f76feb31698a1ce30b03)
// not bridged: 
Theorem LENGTH_LIST_OF_SEQ : forall A:set, A <> Empty -> forall s:set -> set, (forall x :e omega, s x :e A) -> forall n :e omega, seq_len (seq_mk n s) = n.
Admitted.

// HOL Light: lists.ml:665 / EL_LIST_OF_SEQ   (hash md5:361e7b194afb22170b3ff15a20553c77)
// not bridged: 
Theorem EL_LIST_OF_SEQ : forall A:set, A <> Empty -> forall s:set -> set, (forall x :e omega, s x :e A) -> forall m n :e omega, m < n -> seq_nth (seq_mk n s) m = s m.
Admitted.

// HOL Light: lists.ml:672 / LIST_OF_SEQ_EQ_NIL   (hash md5:13814f5ba3138c622e1efb0d01794f46)
// not bridged: 
Theorem LIST_OF_SEQ_EQ_NIL : forall A:set, A <> Empty -> forall s:set -> set, (forall x :e omega, s x :e A) -> forall n :e omega, seq_mk n s = seq_nil <-> n = 0.
Admitted.

// HOL Light: lists.ml:676 / LIST_OF_SEQ_EQ_SELF   (hash md5:84a0ee00a59f235eff5a2665fe75758c)
// not bridged: 
Theorem LIST_OF_SEQ_EQ_SELF : forall A:set, A <> Empty -> forall l :e finseq A, seq_mk (seq_len l) (fun i:set => seq_nth l i) = l.
Admitted.

// HOL Light: lists.ml:680 / LENGTH_EQ_LIST_OF_SEQ   (hash md5:79e80582378ebd2d94081d9da4bb1f99)
// not bridged: 
Theorem LENGTH_EQ_LIST_OF_SEQ : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, seq_len l = n <-> l = seq_mk n (fun i:set => seq_nth l i).
Admitted.

// HOL Light: lists.ml:684 / MAP_LIST_OF_SEQ   (hash md5:9e3b62b49b5eec817e8fb9ed186f19bb)
// not bridged: 
Theorem MAP_LIST_OF_SEQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e omega, f x :e A) -> forall g:set -> set, (forall x :e A, g x :e B) -> forall n :e omega, seq_map g (seq_mk n f) = seq_mk n (fun x:set => g (f x)).
Admitted.

// HOL Light: lists.ml:689 / LIST_OF_SEQ   (hash md5:32afee83991c959f93b0d743ee582241)
// not bridged: 
Theorem LIST_OF_SEQ : forall A:set, A <> Empty -> (forall f:set -> set, (forall x :e omega, f x :e A) -> seq_mk 0 f = seq_nil) /\ forall f:set -> set, (forall x :e omega, f x :e A) -> forall n :e omega, seq_mk (ordsucc n) f = seq_cons (f 0) (seq_mk n (fun x:set => f (ordsucc x))).
Admitted.

// HOL Light: lists.ml:722 / MONO_ALL   (hash md5:12dcd6b376bafee851fc134588275f08)
Theorem hlt_MONO_ALL : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, P x = 1 -> Q x = 1) -> hl_ALL A P l = 1 -> hl_ALL A Q l = 1.
Admitted.
Theorem MONO_ALL_bridge : (forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, P x = 1 -> Q x = 1) -> hl_ALL A P l = 1 -> hl_ALL A Q l = 1) -> (forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, P x -> Q x) -> seq_all P l -> seq_all Q l).
exact (fun H__top A HAne => (imp_forall_pred (A) (fun P => forall Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, P x = 1 -> Q x = 1) -> hl_ALL A P l = 1 -> hl_ALL A Q l = 1) (fun P => forall Q:set -> prop, forall l :e finseq A, (forall x :e A, P x -> Q x) -> seq_all P l -> seq_all Q l) (fun P => (imp_forall_pred (A) (fun Q => forall l :e finseq A, (forall x :e A, hl_chip A P x = 1 -> Q x = 1) -> hl_ALL A (hl_chip A P) l = 1 -> hl_ALL A Q l = 1) (fun Q => forall l :e finseq A, (forall x :e A, P x -> Q x) -> seq_all P l -> seq_all Q l) (fun Q => (imp_forall_in (finseq A) (fun l => (forall x :e A, hl_chip A P x = 1 -> hl_chip A Q x = 1) -> hl_ALL A (hl_chip A P) l = 1 -> hl_ALL A (hl_chip A Q) l = 1) (fun l => (forall x :e A, P x -> Q x) -> seq_all P l -> seq_all Q l) (fun l Hl => (fun H__L : ((forall x :e A, hl_chip A P x = 1 -> hl_chip A Q x = 1) -> (hl_ALL A (hl_chip A P) l = 1 -> hl_ALL A (hl_chip A Q) l = 1)) => fun H__hyp3 : (forall x :e A, P x -> Q x) => (fun H__L : ((hl_ALL A (hl_chip A P) l = 1) -> (hl_ALL A (hl_chip A Q) l = 1)) => fun H__hyp6 : (seq_all P l) => (iffEL (hl_ALL A (hl_chip A Q) l = 1) (seq_all Q l) ((hl_ALL_compat) (A) HAne (hl_chip A Q) (hl_chip_Pi (A) Q) (fun hl__x:set => (Q) hl__x) ((hl_chip_iff (A) Q)) (l) Hl)) (H__L ((iffER (hl_ALL A (hl_chip A P) l = 1) (seq_all P l) ((hl_ALL_compat) (A) HAne (hl_chip A P) (hl_chip_Pi (A) P) (fun hl__x:set => (P) hl__x) ((hl_chip_iff (A) P)) (l) Hl)) H__hyp6))) (H__L ((imp_forall_in (A) (fun x => P x -> Q x) (fun x => hl_chip A P x = 1 -> hl_chip A Q x = 1) (fun x Hx => (fun H__N : ((P x) -> (Q x)) => fun H__hyp5 : (hl_chip A P x = 1) => (iffER (hl_chip A Q x = 1) (Q x) ((hl_chip_iff (A) Q) (x) Hx)) (H__N ((iffEL (hl_chip A P x = 1) (P x) ((hl_chip_iff (A) P) (x) Hx)) H__hyp5))))) H__hyp3))))))))) (H__top A HAne)).
Qed.
Theorem MONO_ALL : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, P x -> Q x) -> seq_all P l -> seq_all Q l.
exact (MONO_ALL_bridge hlt_MONO_ALL).
Admitted.

// HOL Light: lists.ml:727 / MONO_ALL2   (hash md5:9aedd334a704373cb2ba0a5c9a1d1785)
// not bridged: 
Theorem MONO_ALL2 : forall A B:set, A <> Empty -> B <> Empty -> forall P Q:set -> set -> prop, forall l :e finseq A, forall l' :e finseq B, (forall x :e A, forall y :e B, P x y -> Q x y) -> seq_all2 P l l' -> seq_all2 Q l l'.
Admitted.

