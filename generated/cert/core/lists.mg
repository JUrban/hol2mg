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
// not bridged: 
Theorem APPEND : forall A:set, A <> Empty -> (forall l :e finseq A, seq_append seq_nil l = l) /\ forall h :e A, forall t l :e finseq A, seq_append (seq_cons h t) l = seq_cons h (seq_append t l).
Admitted.

// HOL Light: lists.ml:38 / REVERSE   (hash md5:7a7d177a687f80c4814a45c86aef55f8)
// not bridged: 
Theorem REVERSE : forall A:set, forall x :e A, forall l :e finseq A, seq_rev seq_nil = seq_nil /\ seq_rev (seq_cons x l) = seq_append (seq_rev l) (seq_cons x seq_nil).
Admitted.

// HOL Light: lists.ml:42 / LENGTH   (hash md5:17c615469c05a454f2fd034489234849)
// not bridged: 
Theorem LENGTH : forall A:set, A <> Empty -> seq_len seq_nil = 0 /\ forall h :e A, forall t :e finseq A, seq_len (seq_cons h t) = ordsucc (seq_len t).
Admitted.

// HOL Light: lists.ml:46 / MAP   (hash md5:1cd1ca7bb70cda875ad5749c1ca01729)
// not bridged: 
Theorem MAP : forall A B:set, A <> Empty -> B <> Empty -> (forall f:set -> set, (forall x :e A, f x :e B) -> seq_map f seq_nil = seq_nil) /\ forall f:set -> set, (forall x :e A, f x :e B) -> forall h :e A, forall t :e finseq A, seq_map f (seq_cons h t) = seq_cons (f h) (seq_map f t).
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
// not bridged: 
Theorem ALL : forall A:set, forall P:set -> prop, forall h :e A, forall t :e finseq A, (seq_all P seq_nil <-> True) /\ (seq_all P (seq_cons h t) <-> P h /\ seq_all P t).
Admitted.

// HOL Light: lists.ml:69 / EX   (hash md5:8b0dcace39404907876ae25859ceb0ce)
// not bridged: 
Theorem EX : forall A:set, forall P:set -> prop, forall h :e A, forall t :e finseq A, (seq_ex P seq_nil <-> False) /\ (seq_ex P (seq_cons h t) <-> P h \/ seq_ex P t).
Admitted.

// HOL Light: lists.ml:73 / ITLIST   (hash md5:6a2990196b8ccb95c42ea9572b77c762)
// not bridged: 
Theorem ITLIST : forall A B:set, forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e B) -> forall b :e B, forall h :e A, forall t :e finseq A, seq_foldr f seq_nil b = b /\ seq_foldr f (seq_cons h t) b = f h (seq_foldr f t b).
Admitted.

// HOL Light: lists.ml:77 / MEM   (hash md5:e0472c3034cc7dc63e858905bbb6e42d)
// not bridged: 
Theorem MEM : forall A:set, forall x h :e A, forall t :e finseq A, (seq_mem x seq_nil <-> False) /\ (seq_mem x (seq_cons h t) <-> x = h \/ seq_mem x t).
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
// not bridged: 
Theorem NOT_CONS_NIL : forall A:set, forall h :e A, forall t :e finseq A, ~ seq_cons h t = seq_nil.
Admitted.

// HOL Light: lists.ml:152 / LAST_CLAUSES   (hash md5:327d7c7a2dd7f193d5e0edf3faaf28a2)
// not bridged: 
Theorem LAST_CLAUSES : forall A:set, forall h k :e A, forall t :e finseq A, seq_last (seq_cons h seq_nil) = h /\ seq_last (seq_cons h (seq_cons k t)) = seq_last (seq_cons k t).
Admitted.

// HOL Light: lists.ml:157 / APPEND_NIL   (hash md5:34e676cda4ec75f03b52d6a0a1fe6783)
// not bridged: 
Theorem APPEND_NIL : forall A:set, A <> Empty -> forall l :e finseq A, seq_append l seq_nil = l.
Admitted.

// HOL Light: lists.ml:161 / APPEND_ASSOC   (hash md5:595245cd5d4fe352684d336877239fe8)
// not bridged: 
Theorem APPEND_ASSOC : forall A:set, A <> Empty -> forall l m n :e finseq A, seq_append l (seq_append m n) = seq_append (seq_append l m) n.
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
// not bridged: 
Theorem CONS_11 : forall A:set, forall h1 h2 :e A, forall t1 t2 :e finseq A, seq_cons h1 t1 = seq_cons h2 t2 <-> h1 = h2 /\ t1 = t2.
Admitted.

// HOL Light: lists.ml:182 / list_CASES   (hash md5:6c9a307f18507870c827834056fdffa7)
// not bridged: 
Theorem list_CASES : forall A:set, forall l :e finseq A, l = seq_nil \/ exists h :e A, exists t :e finseq A, l = seq_cons h t.
Admitted.

// HOL Light: lists.ml:187 / LIST_EQ   (hash md5:e80393494d2381101e2f9fdd59b8a934)
// not bridged: 
Theorem LIST_EQ : forall A:set, forall l1 l2 :e finseq A, l1 = l2 <-> seq_len l1 = seq_len l2 /\ forall n :e omega, n < seq_len l2 -> seq_nth l1 n = seq_nth l2 n.
Admitted.

// HOL Light: lists.ml:198 / LENGTH_APPEND   (hash md5:87d5d63471bb0040381d1296f836489b)
// not bridged: 
Theorem LENGTH_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, seq_len (seq_append l m) = seq_len l + seq_len m.
Admitted.

// HOL Light: lists.ml:202 / MAP_APPEND   (hash md5:e005972551ddebaef8cd43f82996650d)
// not bridged: 
Theorem MAP_APPEND : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall l1 l2 :e finseq A, seq_map f (seq_append l1 l2) = seq_append (seq_map f l1) (seq_map f l2).
Admitted.

// HOL Light: lists.ml:206 / LENGTH_MAP   (hash md5:46b98d7ca2f174c0346df14d00117beb)
// not bridged: 
Theorem LENGTH_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq A, forall f:set -> set, (forall x :e A, f x :e B) -> seq_len (seq_map f l) = seq_len l.
Admitted.

// HOL Light: lists.ml:210 / LENGTH_EQ_NIL   (hash md5:a50730425650e431b90f58c470a41521)
// not bridged: 
Theorem LENGTH_EQ_NIL : forall A:set, A <> Empty -> forall l :e finseq A, seq_len l = 0 <-> l = seq_nil.
Admitted.

// HOL Light: lists.ml:214 / LENGTH_EQ_CONS   (hash md5:e87970b38cc89e65c536115c9b94fc0e)
// not bridged: 
Theorem LENGTH_EQ_CONS : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, seq_len l = ordsucc n <-> exists h :e A, exists t :e finseq A, l = seq_cons h t /\ seq_len t = n.
Admitted.

// HOL Light: lists.ml:219 / LENGTH_REVERSE   (hash md5:17c013973224e3dee52a9c818586a264)
// not bridged: 
Theorem LENGTH_REVERSE : forall A:set, A <> Empty -> forall l :e finseq A, seq_len (seq_rev l) = seq_len l.
Admitted.

// HOL Light: lists.ml:225 / MAP_o   (hash md5:21dca6e4b2bded73c4144e9ca5c0eb7e)
// not bridged: 
Theorem MAP_o : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e B, g x :e C) -> forall l :e finseq A, seq_map (fun x:set => g (f x)) l = seq_map g (seq_map f l).
Admitted.

// HOL Light: lists.ml:230 / MAP_EQ   (hash md5:ed81072fd7af91838cbb0ef3425ceb39)
// not bridged: 
Theorem MAP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall g:set -> set, (forall x :e A, g x :e B) -> forall l :e finseq A, seq_all (fun x:set => f x = g x) l -> seq_map f l = seq_map g l.
Admitted.

// HOL Light: lists.ml:235 / ALL_IMP   (hash md5:02447eaab41cdada267141a0ab2c2687)
// not bridged: 
Theorem ALL_IMP : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_all P l -> seq_all Q l.
Admitted.

// HOL Light: lists.ml:240 / NOT_EX   (hash md5:4c09973e1cfa5822abdb256d3c655a88)
// not bridged: 
Theorem NOT_EX : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, ~ seq_ex P l <-> seq_all (fun x:set => ~ P x) l.
Admitted.

// HOL Light: lists.ml:245 / NOT_ALL   (hash md5:4bc3240b21d38b2b3cf45c9b36ab840f)
// not bridged: 
Theorem NOT_ALL : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, ~ seq_all P l <-> seq_ex (fun x:set => ~ P x) l.
Admitted.

// HOL Light: lists.ml:250 / ALL_MAP   (hash md5:0f6eaa20955e61ecced785b2b67da0a9)
// not bridged: 
Theorem ALL_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_all P (seq_map f l) <-> seq_all (fun x:set => P (f x)) l.
Admitted.

// HOL Light: lists.ml:255 / ALL_EQ   (hash md5:a9612881dce4440a96189975e8c668ce)
// not bridged: 
Theorem ALL_EQ : forall A:set, A <> Empty -> forall R0 P Q:set -> prop, forall l :e finseq A, seq_all R0 l /\ (forall x :e A, R0 x -> (P x <-> Q x)) -> (seq_all P l <-> seq_all Q l).
Admitted.

// HOL Light: lists.ml:262 / ALL_T   (hash md5:1ef10b4f01356df5f7678160db331d50)
// not bridged: 
Theorem ALL_T : forall A:set, A <> Empty -> forall l :e finseq A, seq_all (fun x:set => True) l.
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
// not bridged: 
Theorem MAP_EQ_DEGEN : forall A:set, A <> Empty -> forall l :e finseq A, forall f:set -> set, (forall x :e A, f x :e A) -> seq_all (fun x:set => f x = x) l -> seq_map f l = l.
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
// not bridged: 
Theorem ALL_MP : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, seq_all (fun x:set => P x -> Q x) l /\ seq_all P l -> seq_all Q l.
Admitted.

// HOL Light: lists.ml:304 / AND_ALL   (hash md5:598933552a82047c8fcb589d544d4d05)
// not bridged: 
Theorem AND_ALL : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, seq_all P l /\ seq_all Q l <-> seq_all (fun x:set => P x /\ Q x) l.
Admitted.

// HOL Light: lists.ml:309 / EX_IMP   (hash md5:b83579acec443120e1a67e8f0a4550f1)
// not bridged: 
Theorem EX_IMP : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l /\ P x -> Q x) /\ seq_ex P l -> seq_ex Q l.
Admitted.

// HOL Light: lists.ml:314 / ALL_MEM   (hash md5:5056d3db4b0de73fbe817f02698a3036)
// not bridged: 
Theorem ALL_MEM : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, (forall x :e A, seq_mem x l -> P x) <-> seq_all P l.
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
// not bridged: 
Theorem EX_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> prop, forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_ex P (seq_map f l) <-> seq_ex (fun x:set => P (f x)) l.
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
// not bridged: 
Theorem MEM_APPEND : forall A:set, forall x :e A, forall l1 l2 :e finseq A, seq_mem x (seq_append l1 l2) <-> seq_mem x l1 \/ seq_mem x l2.
Admitted.

// HOL Light: lists.ml:347 / MEM_MAP   (hash md5:efcc0ae65a5073ec9a7e1049fea67bdc)
// not bridged: 
Theorem MEM_MAP : forall A B:set, A <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall y :e B, forall l :e finseq A, seq_mem y (seq_map f l) <-> exists x :e A, seq_mem x l /\ y = f x.
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
// not bridged: 
Theorem EX_MEM : forall A:set, A <> Empty -> forall P:set -> prop, forall l :e finseq A, (exists x :e A, P x /\ seq_mem x l) <-> seq_ex P l.
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
// not bridged: 
Theorem ALL_APPEND : forall A:set, A <> Empty -> forall P:set -> prop, forall l1 l2 :e finseq A, seq_all P (seq_append l1 l2) <-> seq_all P l1 /\ seq_all P l2.
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
// not bridged: 
Theorem APPEND_EQ_NIL : forall A:set, A <> Empty -> forall l m :e finseq A, seq_append l m = seq_nil <-> l = seq_nil /\ m = seq_nil.
Admitted.

// HOL Light: lists.ml:473 / APPEND_LCANCEL   (hash md5:8c4ba0d4c05300994d04fcf35bfd2317)
// not bridged: 
Theorem APPEND_LCANCEL : forall A:set, forall l1 l2 l3 :e finseq A, seq_append l1 l2 = seq_append l1 l3 <-> l2 = l3.
Admitted.

// HOL Light: lists.ml:477 / APPEND_RCANCEL   (hash md5:7929e632510a0ef42809349c1908e7fc)
// not bridged: 
Theorem APPEND_RCANCEL : forall A:set, forall l1 l2 l3 :e finseq A, seq_append l1 l3 = seq_append l2 l3 <-> l1 = l2.
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
// not bridged: 
Theorem MAP_EQ_NIL : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> forall l :e finseq A, seq_map f l = seq_nil <-> l = seq_nil.
Admitted.

// HOL Light: lists.ml:500 / INJECTIVE_MAP   (hash md5:eb01dcdc910704add493aee7b5e61f6d)
// not bridged: 
Theorem INJECTIVE_MAP : forall A B:set, B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> ((forall l m :e finseq A, seq_map f l = seq_map f m -> l = m) <-> forall x y :e A, f x = f y -> x = y).
Admitted.

// HOL Light: lists.ml:510 / SURJECTIVE_MAP   (hash md5:c68eac62c1e2887631b83ac6bf4e7cf3)
// not bridged: 
Theorem SURJECTIVE_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f:set -> set, (forall x :e A, f x :e B) -> ((forall m :e finseq B, exists l :e finseq A, seq_map f l = m) <-> forall y :e B, exists x :e A, f x = y).
Admitted.

// HOL Light: lists.ml:519 / MAP_ID   (hash md5:84fd0b4115f0cf85275d63eec3f2c524)
// not bridged: 
Theorem MAP_ID : forall A:set, A <> Empty -> forall l :e finseq A, seq_map (fun x:set => x) l = l.
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
// not bridged: 
Theorem APPEND_SING : forall A:set, forall h :e A, forall t :e finseq A, seq_append (seq_cons h seq_nil) t = seq_cons h t.
Admitted.

// HOL Light: lists.ml:614 / MEM_APPEND_DECOMPOSE_LEFT   (hash md5:b6e9ffc4135587ba40aeaf58d991a37d)
// not bridged: 
Theorem MEM_APPEND_DECOMPOSE_LEFT : forall A:set, forall x :e A, forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, ~ seq_mem x l1 /\ l = seq_append l1 (seq_cons x l2).
Admitted.

// HOL Light: lists.ml:622 / MEM_APPEND_DECOMPOSE   (hash md5:655abb7cee4ccc640944195ea244e94f)
// not bridged: 
Theorem MEM_APPEND_DECOMPOSE : forall A:set, forall x :e A, forall l :e finseq A, seq_mem x l <-> exists l1 l2 :e finseq A, l = seq_append l1 (seq_cons x l2).
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
// not bridged: 
Theorem MONO_ALL : forall A:set, A <> Empty -> forall P Q:set -> prop, forall l :e finseq A, (forall x :e A, P x -> Q x) -> seq_all P l -> seq_all Q l.
Admitted.

// HOL Light: lists.ml:727 / MONO_ALL2   (hash md5:9aedd334a704373cb2ba0a5c9a1d1785)
// not bridged: 
Theorem MONO_ALL2 : forall A B:set, A <> Empty -> B <> Empty -> forall P Q:set -> set -> prop, forall l :e finseq A, forall l' :e finseq B, (forall x :e A, forall y :e B, P x y -> Q x y) -> seq_all2 P l l' -> seq_all2 Q l l'.
Admitted.

