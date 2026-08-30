// hol2mg literal statements (private): shard lists of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: lists.ml:28 / HD   (hash md5:e48111d0d8d0854a2e64b2dfd1f92b7e)
Theorem hlt_HD : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, hl_HD A (hl_CONS A h t) = h.
Admitted.

// HOL Light: lists.ml:31 / TL   (hash md5:a461f6927361fce88089ebdcecc03cd9)
Theorem hlt_TL : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, hl_TL A (hl_CONS A h t) = t.
Admitted.

// HOL Light: lists.ml:34 / APPEND   (hash md5:3ef027801213877da04628f269452000)
Theorem hlt_APPEND : forall A:set, A <> Empty -> (forall l :e finseq A, hl_APPEND A (hl_NIL A) l = l) /\ forall h :e A, forall t l :e finseq A, hl_APPEND A (hl_CONS A h t) l = hl_CONS A h (hl_APPEND A t l).
Admitted.

// HOL Light: lists.ml:38 / REVERSE   (hash md5:7a7d177a687f80c4814a45c86aef55f8)
Theorem hlt_REVERSE : forall A:set, A <> Empty -> forall x :e A, forall l :e finseq A, hl_REVERSE A (hl_NIL A) = hl_NIL A /\ hl_REVERSE A (hl_CONS A x l) = hl_APPEND A (hl_REVERSE A l) (hl_CONS A x (hl_NIL A)).
Admitted.

// HOL Light: lists.ml:42 / LENGTH   (hash md5:17c615469c05a454f2fd034489234849)
Theorem hlt_LENGTH : forall A:set, A <> Empty -> hl_LENGTH A (hl_NIL A) = hl_NUMERAL hl_zero /\ forall h :e A, forall t :e finseq A, hl_LENGTH A (hl_CONS A h t) = hl_SUC (hl_LENGTH A t).
Admitted.

// HOL Light: lists.ml:46 / MAP   (hash md5:1cd1ca7bb70cda875ad5749c1ca01729)
Theorem hlt_MAP : forall A B:set, A <> Empty -> B <> Empty -> (forall f :e B :^: A, hl_MAP A B f (hl_NIL A) = hl_NIL B) /\ forall f :e B :^: A, forall h :e A, forall t :e finseq A, hl_MAP A B f (hl_CONS A h t) = hl_CONS B (f h) (hl_MAP A B f t).
Admitted.

// HOL Light: lists.ml:50 / LAST   (hash md5:8ceaa343a4f12fbf270147102b54e937)
Theorem hlt_LAST : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, hl_LAST A (hl_CONS A h t) = hl_COND A (if t = hl_NIL A then 1 else 0) h (hl_LAST A t).
Admitted.

// HOL Light: lists.ml:53 / BUTLAST   (hash md5:b5b341e30ed8ba1286f7407014f0f75b)
Theorem hlt_BUTLAST : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, hl_BUTLAST A (hl_NIL A) = hl_NIL A /\ hl_BUTLAST A (hl_CONS A h t) = hl_COND (finseq A) (if t = hl_NIL A then 1 else 0) (hl_NIL A) (hl_CONS A h (hl_BUTLAST A t)).
Admitted.

// HOL Light: lists.ml:57 / REPLICATE   (hash md5:9a34391ecfb036827021fde7076af99b)
Theorem hlt_REPLICATE : forall A:set, A <> Empty -> forall x :e A, forall n :e omega, hl_REPLICATE A (hl_NUMERAL hl_zero) x = hl_NIL A /\ hl_REPLICATE A (hl_SUC n) x = hl_CONS A x (hl_REPLICATE A n x).
Admitted.

// HOL Light: lists.ml:61 / NULL   (hash md5:700c5999e4885e76686f6dc603c83e3d)
Theorem hlt_NULL : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, (hl_NULL A (hl_NIL A) = 1 <-> True) /\ (hl_NULL A (hl_CONS A h t) = 1 <-> False).
Admitted.

// HOL Light: lists.ml:65 / ALL   (hash md5:4e7ccd881d3b6b76b557162de933a2a1)
Theorem hlt_ALL : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall h :e A, forall t :e finseq A, (hl_ALL A P (hl_NIL A) = 1 <-> True) /\ (hl_ALL A P (hl_CONS A h t) = 1 <-> P h = 1 /\ hl_ALL A P t = 1).
Admitted.

// HOL Light: lists.ml:69 / EX   (hash md5:8b0dcace39404907876ae25859ceb0ce)
Theorem hlt_EX : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall h :e A, forall t :e finseq A, (hl_EX A P (hl_NIL A) = 1 <-> False) /\ (hl_EX A P (hl_CONS A h t) = 1 <-> P h = 1 \/ hl_EX A P t = 1).
Admitted.

// HOL Light: lists.ml:73 / ITLIST   (hash md5:6a2990196b8ccb95c42ea9572b77c762)
Theorem hlt_ITLIST : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall b :e B, forall h :e A, forall t :e finseq A, hl_ITLIST A B f (hl_NIL A) b = b /\ hl_ITLIST A B f (hl_CONS A h t) b = f h (hl_ITLIST A B f t b).
Admitted.

// HOL Light: lists.ml:77 / MEM   (hash md5:e0472c3034cc7dc63e858905bbb6e42d)
Theorem hlt_MEM : forall A:set, A <> Empty -> forall x h :e A, forall t :e finseq A, (hl_MEM A x (hl_NIL A) = 1 <-> False) /\ (hl_MEM A x (hl_CONS A h t) = 1 <-> x = h \/ hl_MEM A x t = 1).
Admitted.

// HOL Light: lists.ml:81 / ALL2_DEF   (hash md5:05f0d882920f2505f89f2a84c1cd96a7)
Theorem hlt_ALL2_DEF : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall l2 :e finseq B, forall h1 :e A, forall t1 :e finseq A, (hl_ALL2 A B P (hl_NIL A) l2 = 1 <-> l2 = hl_NIL B) /\ (hl_ALL2 A B P (hl_CONS A h1 t1) l2 = 1 <-> l2 = hl_NIL B /\ False \/ ~ l2 = hl_NIL B /\ (P h1 (hl_HD B l2) = 1 /\ hl_ALL2 A B P t1 (hl_TL B l2) = 1)).
Admitted.

// HOL Light: lists.ml:87 / ALL2   (hash md5:b1f931b4c35afae213098fafc8984c88)
Theorem hlt_ALL2 : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall h1 :e A, forall t1 :e finseq A, forall h2 :e B, forall t2 :e finseq B, (hl_ALL2 A B P (hl_NIL A) (hl_NIL B) = 1 <-> True) /\ ((hl_ALL2 A B P (hl_CONS A h1 t1) (hl_NIL B) = 1 <-> False) /\ ((hl_ALL2 A B P (hl_NIL A) (hl_CONS B h2 t2) = 1 <-> False) /\ (hl_ALL2 A B P (hl_CONS A h1 t1) (hl_CONS B h2 t2) = 1 <-> P h1 h2 = 1 /\ hl_ALL2 A B P t1 t2 = 1))).
Admitted.

// HOL Light: lists.ml:94 / MAP2_DEF   (hash md5:132dd24cae8f7c26df87b26fc52a9f79)
Theorem hlt_MAP2_DEF : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B :^: A, forall l :e finseq B, forall h1 :e A, forall t1 :e finseq A, hl_MAP2 A B C f (hl_NIL A) l = hl_NIL C /\ hl_MAP2 A B C f (hl_CONS A h1 t1) l = hl_CONS C (f h1 (hl_HD B l)) (hl_MAP2 A B C f t1 (hl_TL B l)).
Admitted.

// HOL Light: lists.ml:98 / MAP2   (hash md5:1f34424eb953ced4a6af98ce77d6064e)
Theorem hlt_MAP2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B :^: A, forall h1 :e A, forall t1 :e finseq A, forall h2 :e B, forall t2 :e finseq B, hl_MAP2 A B C f (hl_NIL A) (hl_NIL B) = hl_NIL C /\ hl_MAP2 A B C f (hl_CONS A h1 t1) (hl_CONS B h2 t2) = hl_CONS C (f h1 h2) (hl_MAP2 A B C f t1 t2).
Admitted.

// HOL Light: lists.ml:103 / EL   (hash md5:90e8be5936c40bee20461b9eb5985f6a)
Theorem hlt_EL : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, hl_EL A (hl_NUMERAL hl_zero) l = hl_HD A l /\ hl_EL A (hl_SUC n) l = hl_EL A n (hl_TL A l).
Admitted.

// HOL Light: lists.ml:107 / FILTER   (hash md5:5e58d440998c996ea4b717dc791fcf55)
Theorem hlt_FILTER : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall h :e A, forall t :e finseq A, hl_FILTER A P (hl_NIL A) = hl_NIL A /\ hl_FILTER A P (hl_CONS A h t) = hl_COND (finseq A) (P h) (hl_CONS A h (hl_FILTER A P t)) (hl_FILTER A P t).
Admitted.

// HOL Light: lists.ml:111 / ASSOC   (hash md5:5bd30847065b5a896bf69c7d1af89f00)
Theorem hlt_ASSOC : forall A B:set, A <> Empty -> B <> Empty -> forall a :e A, forall h :e A :*: B, forall t :e finseq (A :*: B), hl_ASSOC A B a (hl_CONS (A :*: B) h t) = hl_COND B (if hl_FST A B h = a then 1 else 0) (hl_SND A B h) (hl_ASSOC A B a t).
Admitted.

// HOL Light: lists.ml:114 / ITLIST2_DEF   (hash md5:66a918c3b024e404b398a0b6e52f44d4)
Theorem hlt_ITLIST2_DEF : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: C :^: B :^: A, forall l2 :e finseq B, forall b :e C, forall h1 :e A, forall t1 :e finseq A, hl_ITLIST2 A B C f (hl_NIL A) l2 b = b /\ hl_ITLIST2 A B C f (hl_CONS A h1 t1) l2 b = f h1 (hl_HD B l2) (hl_ITLIST2 A B C f t1 (hl_TL B l2) b).
Admitted.

// HOL Light: lists.ml:118 / ITLIST2   (hash md5:806c92a11af80d573a20824facb83787)
Theorem hlt_ITLIST2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: C :^: B :^: A, forall b :e C, forall h1 :e A, forall t1 :e finseq A, forall h2 :e B, forall t2 :e finseq B, hl_ITLIST2 A B C f (hl_NIL A) (hl_NIL B) b = b /\ hl_ITLIST2 A B C f (hl_CONS A h1 t1) (hl_CONS B h2 t2) b = f h1 h2 (hl_ITLIST2 A B C f t1 t2 b).
Admitted.

// HOL Light: lists.ml:123 / ZIP_DEF   (hash md5:6e2d7c78c5f2e5c31038cd05c1782067)
Theorem hlt_ZIP_DEF : forall A B:set, A <> Empty -> B <> Empty -> forall l2 :e finseq B, forall h1 :e A, forall t1 :e finseq A, hl_ZIP A B (hl_NIL A) l2 = hl_NIL (A :*: B) /\ hl_ZIP A B (hl_CONS A h1 t1) l2 = hl_CONS (A :*: B) (hl_pair A B h1 (hl_HD B l2)) (hl_ZIP A B t1 (hl_TL B l2)).
Admitted.

// HOL Light: lists.ml:127 / ZIP   (hash md5:fd4494788599018ac29f29b4f2822be0)
Theorem hlt_ZIP : forall A B:set, A <> Empty -> B <> Empty -> forall h1 :e A, forall t1 :e finseq A, forall h2 :e B, forall t2 :e finseq B, hl_ZIP A B (hl_NIL A) (hl_NIL B) = hl_NIL (A :*: B) /\ hl_ZIP A B (hl_CONS A h1 t1) (hl_CONS B h2 t2) = hl_CONS (A :*: B) (hl_pair A B h1 h2) (hl_ZIP A B t1 t2).
Admitted.

// HOL Light: lists.ml:132 / ALLPAIRS   (hash md5:1030dd49ef6d6f70cf8c8a98f2734b3d)
Theorem hlt_ALLPAIRS : forall A B:set, A <> Empty -> B <> Empty -> forall f :e 2 :^: B :^: A, forall l :e finseq B, forall h :e A, forall t :e finseq A, (hl_ALLPAIRS A B f (hl_NIL A) l = 1 <-> True) /\ (hl_ALLPAIRS A B f (hl_CONS A h t) l = 1 <-> hl_ALL B (f h) l = 1 /\ hl_ALLPAIRS A B f t l = 1).
Admitted.

// HOL Light: lists.ml:136 / PAIRWISE   (hash md5:eb123e79540a9b1d62bbfe35e530d530)
Theorem hlt_PAIRWISE : forall A:set, A <> Empty -> forall r :e 2 :^: A :^: A, forall h :e A, forall t :e finseq A, (hl_PAIRWISE A r (hl_NIL A) = 1 <-> True) /\ (hl_PAIRWISE A r (hl_CONS A h t) = 1 <-> hl_ALL A (r h) t = 1 /\ hl_PAIRWISE A r t = 1).
Admitted.

// HOL Light: lists.ml:140 / list_of_seq   (hash md5:c4998480a49055100b294b5ff74a7003)
Theorem hlt_list_of_seq : forall A:set, A <> Empty -> forall s :e A :^: omega, forall n :e omega, hl_list_of_seq A s (hl_NUMERAL hl_zero) = hl_NIL A /\ hl_list_of_seq A s (hl_SUC n) = hl_APPEND A (hl_list_of_seq A s n) (hl_CONS A (s n) (hl_NIL A)).
Admitted.

// HOL Light: lists.ml:148 / NOT_CONS_NIL   (hash md5:77428f1d7d66f872892dab61338128c2)
Theorem hlt_NOT_CONS_NIL : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, ~ hl_CONS A h t = hl_NIL A.
Admitted.

// HOL Light: lists.ml:152 / LAST_CLAUSES   (hash md5:327d7c7a2dd7f193d5e0edf3faaf28a2)
Theorem hlt_LAST_CLAUSES : forall A:set, A <> Empty -> forall h k :e A, forall t :e finseq A, hl_LAST A (hl_CONS A h (hl_NIL A)) = h /\ hl_LAST A (hl_CONS A h (hl_CONS A k t)) = hl_LAST A (hl_CONS A k t).
Admitted.

// HOL Light: lists.ml:157 / APPEND_NIL   (hash md5:34e676cda4ec75f03b52d6a0a1fe6783)
Theorem hlt_APPEND_NIL : forall A:set, A <> Empty -> forall l :e finseq A, hl_APPEND A l (hl_NIL A) = l.
Admitted.

// HOL Light: lists.ml:161 / APPEND_ASSOC   (hash md5:595245cd5d4fe352684d336877239fe8)
Theorem hlt_APPEND_ASSOC : forall A:set, A <> Empty -> forall l m n :e finseq A, hl_APPEND A l (hl_APPEND A m n) = hl_APPEND A (hl_APPEND A l m) n.
Admitted.

// HOL Light: lists.ml:165 / REVERSE_APPEND   (hash md5:45852b5237ddc4ffb91f94da5306964d)
Theorem hlt_REVERSE_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, hl_REVERSE A (hl_APPEND A l m) = hl_APPEND A (hl_REVERSE A m) (hl_REVERSE A l).
Admitted.

// HOL Light: lists.ml:170 / REVERSE_REVERSE   (hash md5:496b982a508a66ca58b92a2491262a68)
Theorem hlt_REVERSE_REVERSE : forall A:set, A <> Empty -> forall l :e finseq A, hl_REVERSE A (hl_REVERSE A l) = l.
Admitted.

// HOL Light: lists.ml:174 / REVERSE_EQ_EMPTY   (hash md5:3467f2d6598e5780da4e41d8051ea125)
Theorem hlt_REVERSE_EQ_EMPTY : forall A:set, A <> Empty -> forall l :e finseq A, hl_REVERSE A l = hl_NIL A <-> l = hl_NIL A.
Admitted.

// HOL Light: lists.ml:178 / CONS_11   (hash md5:50a941211ca5b773825052d4a811750c)
Theorem hlt_CONS_11 : forall A:set, A <> Empty -> forall h1 h2 :e A, forall t1 t2 :e finseq A, hl_CONS A h1 t1 = hl_CONS A h2 t2 <-> h1 = h2 /\ t1 = t2.
Admitted.

// HOL Light: lists.ml:182 / list_CASES   (hash md5:6c9a307f18507870c827834056fdffa7)
Theorem hlt_list_CASES : forall A:set, A <> Empty -> forall l :e finseq A, l = hl_NIL A \/ exists h :e A, exists t :e finseq A, l = hl_CONS A h t.
Admitted.

// HOL Light: lists.ml:187 / LIST_EQ   (hash md5:e80393494d2381101e2f9fdd59b8a934)
Theorem hlt_LIST_EQ : forall A:set, A <> Empty -> forall l1 l2 :e finseq A, l1 = l2 <-> hl_LENGTH A l1 = hl_LENGTH A l2 /\ forall n :e omega, hl_lt n (hl_LENGTH A l2) = 1 -> hl_EL A n l1 = hl_EL A n l2.
Admitted.

// HOL Light: lists.ml:198 / LENGTH_APPEND   (hash md5:87d5d63471bb0040381d1296f836489b)
Theorem hlt_LENGTH_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, hl_LENGTH A (hl_APPEND A l m) = hl_add (hl_LENGTH A l) (hl_LENGTH A m).
Admitted.

// HOL Light: lists.ml:202 / MAP_APPEND   (hash md5:e005972551ddebaef8cd43f82996650d)
Theorem hlt_MAP_APPEND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l1 l2 :e finseq A, hl_MAP A B f (hl_APPEND A l1 l2) = hl_APPEND B (hl_MAP A B f l1) (hl_MAP A B f l2).
Admitted.

// HOL Light: lists.ml:206 / LENGTH_MAP   (hash md5:46b98d7ca2f174c0346df14d00117beb)
Theorem hlt_LENGTH_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq A, forall f :e B :^: A, hl_LENGTH B (hl_MAP A B f l) = hl_LENGTH A l.
Admitted.

// HOL Light: lists.ml:210 / LENGTH_EQ_NIL   (hash md5:a50730425650e431b90f58c470a41521)
Theorem hlt_LENGTH_EQ_NIL : forall A:set, A <> Empty -> forall l :e finseq A, hl_LENGTH A l = hl_NUMERAL hl_zero <-> l = hl_NIL A.
Admitted.

// HOL Light: lists.ml:214 / LENGTH_EQ_CONS   (hash md5:e87970b38cc89e65c536115c9b94fc0e)
Theorem hlt_LENGTH_EQ_CONS : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, hl_LENGTH A l = hl_SUC n <-> exists h :e A, exists t :e finseq A, l = hl_CONS A h t /\ hl_LENGTH A t = n.
Admitted.

// HOL Light: lists.ml:219 / LENGTH_REVERSE   (hash md5:17c013973224e3dee52a9c818586a264)
Theorem hlt_LENGTH_REVERSE : forall A:set, A <> Empty -> forall l :e finseq A, hl_LENGTH A (hl_REVERSE A l) = hl_LENGTH A l.
Admitted.

// HOL Light: lists.ml:225 / MAP_o   (hash md5:21dca6e4b2bded73c4144e9ca5c0eb7e)
Theorem hlt_MAP_o : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e B :^: A, forall g :e C :^: B, forall l :e finseq A, hl_MAP A C (hl_o B C A g f) l = hl_MAP B C g (hl_MAP A B f l).
Admitted.

// HOL Light: lists.ml:230 / MAP_EQ   (hash md5:ed81072fd7af91838cbb0ef3425ceb39)
Theorem hlt_MAP_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f g :e B :^: A, forall l :e finseq A, hl_ALL A (fun x :e A => if f x = g x then 1 else 0) l = 1 -> hl_MAP A B f l = hl_MAP A B g l.
Admitted.

// HOL Light: lists.ml:235 / ALL_IMP   (hash md5:02447eaab41cdada267141a0ab2c2687)
Theorem hlt_ALL_IMP : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ P x = 1 -> Q x = 1) /\ hl_ALL A P l = 1 -> hl_ALL A Q l = 1.
Admitted.

// HOL Light: lists.ml:240 / NOT_EX   (hash md5:4c09973e1cfa5822abdb256d3c655a88)
Theorem hlt_NOT_EX : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, ~ hl_EX A P l = 1 <-> hl_ALL A (fun x :e A => if ~ P x = 1 then 1 else 0) l = 1.
Admitted.

// HOL Light: lists.ml:245 / NOT_ALL   (hash md5:4bc3240b21d38b2b3cf45c9b36ab840f)
Theorem hlt_NOT_ALL : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, ~ hl_ALL A P l = 1 <-> hl_EX A (fun x :e A => if ~ P x = 1 then 1 else 0) l = 1.
Admitted.

// HOL Light: lists.ml:250 / ALL_MAP   (hash md5:0f6eaa20955e61ecced785b2b67da0a9)
Theorem hlt_ALL_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall l :e finseq A, hl_ALL B P (hl_MAP A B f l) = 1 <-> hl_ALL A (hl_o B 2 A P f) l = 1.
Admitted.

// HOL Light: lists.ml:255 / ALL_EQ   (hash md5:a9612881dce4440a96189975e8c668ce)
Theorem hlt_ALL_EQ : forall A:set, A <> Empty -> forall R1 P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A R1 l = 1 /\ (forall x :e A, R1 x = 1 -> (P x = 1 <-> Q x = 1)) -> (hl_ALL A P l = 1 <-> hl_ALL A Q l = 1).
Admitted.

// HOL Light: lists.ml:262 / ALL_T   (hash md5:1ef10b4f01356df5f7678160db331d50)
Theorem hlt_ALL_T : forall A:set, A <> Empty -> forall l :e finseq A, hl_ALL A (fun x :e A => if True then 1 else 0) l = 1.
Admitted.

// HOL Light: lists.ml:266 / MAP_EQ_ALL2   (hash md5:5873bdf08728aa876f1f063a2206bd4d)
Theorem hlt_MAP_EQ_ALL2 : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l m :e finseq A, hl_ALL2 A A (fun x :e A => fun y :e A => if f x = f y then 1 else 0) l m = 1 -> hl_MAP A B f l = hl_MAP A B f m.
Admitted.

// HOL Light: lists.ml:272 / ALL2_MAP   (hash md5:e2caf4faab982154814cddd9f86ed0f1)
Theorem hlt_ALL2_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: A :^: B, forall f :e B :^: A, forall l :e finseq A, hl_ALL2 B A P (hl_MAP A B f l) l = 1 <-> hl_ALL A (fun a :e A => P (f a) a) l = 1.
Admitted.

// HOL Light: lists.ml:277 / MAP_EQ_DEGEN   (hash md5:361b296c0ed0074ff5265305edb5dcbe)
Theorem hlt_MAP_EQ_DEGEN : forall A:set, A <> Empty -> forall l :e finseq A, forall f :e A :^: A, hl_ALL A (fun x :e A => if f x = x then 1 else 0) l = 1 -> hl_MAP A A f l = l.
Admitted.

// HOL Light: lists.ml:283 / ALL2_AND_RIGHT   (hash md5:3d794ca2edd1ddfef4b3be7863d04e50)
Theorem hlt_ALL2_AND_RIGHT : forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq A, forall m :e finseq B, forall P :e 2 :^: A, forall Q :e 2 :^: B :^: A, hl_ALL2 A B (fun x :e A => fun y :e B => if P x = 1 /\ Q x y = 1 then 1 else 0) l m = 1 <-> hl_ALL A P l = 1 /\ hl_ALL2 A B Q l m = 1.
Admitted.

// HOL Light: lists.ml:289 / ITLIST_APPEND   (hash md5:8a530b09bf93bfaa44eb3847190e9bde)
Theorem hlt_ITLIST_APPEND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: B :^: A, forall a :e B, forall l1 l2 :e finseq A, hl_ITLIST A B f (hl_APPEND A l1 l2) a = hl_ITLIST A B f l1 (hl_ITLIST A B f l2 a).
Admitted.

// HOL Light: lists.ml:295 / ITLIST_EXTRA   (hash md5:d13c7903e336f50874d6fbb2e0e01efa)
Theorem hlt_ITLIST_EXTRA : forall A B:set, A <> Empty -> B <> Empty -> forall a :e A, forall b :e B, forall f :e B :^: B :^: A, forall l :e finseq A, hl_ITLIST A B f (hl_APPEND A l (hl_CONS A a (hl_NIL A))) b = hl_ITLIST A B f l (f a b).
Admitted.

// HOL Light: lists.ml:299 / ALL_MP   (hash md5:8f58295fa10e24df7a4af0a66b5fb117)
Theorem hlt_ALL_MP : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A (fun x :e A => if P x = 1 -> Q x = 1 then 1 else 0) l = 1 /\ hl_ALL A P l = 1 -> hl_ALL A Q l = 1.
Admitted.

// HOL Light: lists.ml:304 / AND_ALL   (hash md5:598933552a82047c8fcb589d544d4d05)
Theorem hlt_AND_ALL : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A P l = 1 /\ hl_ALL A Q l = 1 <-> hl_ALL A (fun x :e A => if P x = 1 /\ Q x = 1 then 1 else 0) l = 1.
Admitted.

// HOL Light: lists.ml:309 / EX_IMP   (hash md5:b83579acec443120e1a67e8f0a4550f1)
Theorem hlt_EX_IMP : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 /\ P x = 1 -> Q x = 1) /\ hl_EX A P l = 1 -> hl_EX A Q l = 1.
Admitted.

// HOL Light: lists.ml:314 / ALL_MEM   (hash md5:5056d3db4b0de73fbe817f02698a3036)
Theorem hlt_ALL_MEM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, (forall x :e A, hl_MEM A x l = 1 -> P x = 1) <-> hl_ALL A P l = 1.
Admitted.

// HOL Light: lists.ml:319 / LENGTH_REPLICATE   (hash md5:ea436d6e3dda4edef3e9c33e1650e12c)
Theorem hlt_LENGTH_REPLICATE : forall A:set, A <> Empty -> forall n :e omega, forall x :e A, hl_LENGTH A (hl_REPLICATE A n x) = n.
Admitted.

// HOL Light: lists.ml:323 / MEM_REPLICATE   (hash md5:88140f512a18ae84690618c6a49b626e)
Theorem hlt_MEM_REPLICATE : forall A:set, A <> Empty -> forall n :e omega, forall x y :e A, hl_MEM A x (hl_REPLICATE A n y) = 1 <-> x = y /\ ~ n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: lists.ml:328 / EX_MAP   (hash md5:d621c58bd5cdfcecdbfb7a663680a360)
Theorem hlt_EX_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall l :e finseq A, hl_EX B P (hl_MAP A B f l) = 1 <-> hl_EX A (hl_o B 2 A P f) l = 1.
Admitted.

// HOL Light: lists.ml:333 / EXISTS_EX   (hash md5:d49b9f16d9da009544ebd72dd5849c7e)
Theorem hlt_EXISTS_EX : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall l :e finseq B, (exists x :e A, hl_EX B (P x) l = 1) <-> hl_EX B (fun s :e B => if exists x :e A, P x s = 1 then 1 else 0) l = 1.
Admitted.

// HOL Light: lists.ml:338 / FORALL_ALL   (hash md5:e7b6a1d0c12594c67f5b793f5fe03220)
Theorem hlt_FORALL_ALL : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall l :e finseq B, (forall x :e A, hl_ALL B (P x) l = 1) <-> hl_ALL B (fun s :e B => if forall x :e A, P x s = 1 then 1 else 0) l = 1.
Admitted.

// HOL Light: lists.ml:343 / MEM_APPEND   (hash md5:65331249734eb4cc4e9441c91b6a2d51)
Theorem hlt_MEM_APPEND : forall A:set, A <> Empty -> forall x :e A, forall l1 l2 :e finseq A, hl_MEM A x (hl_APPEND A l1 l2) = 1 <-> hl_MEM A x l1 = 1 \/ hl_MEM A x l2 = 1.
Admitted.

// HOL Light: lists.ml:347 / MEM_MAP   (hash md5:efcc0ae65a5073ec9a7e1049fea67bdc)
Theorem hlt_MEM_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall y :e B, forall l :e finseq A, hl_MEM B y (hl_MAP A B f l) = 1 <-> exists x :e A, hl_MEM A x l = 1 /\ y = f x.
Admitted.

// HOL Light: lists.ml:352 / FILTER_APPEND   (hash md5:d4d93b5f36ebb171c6fddf63d85463d1)
Theorem hlt_FILTER_APPEND : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l1 l2 :e finseq A, hl_FILTER A P (hl_APPEND A l1 l2) = hl_APPEND A (hl_FILTER A P l1) (hl_FILTER A P l2).
Admitted.

// HOL Light: lists.ml:358 / FILTER_MAP   (hash md5:1ef199560f30049cdd8cc0984c4dfff5)
Theorem hlt_FILTER_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B, forall f :e B :^: A, forall l :e finseq A, hl_FILTER B P (hl_MAP A B f l) = hl_MAP A B f (hl_FILTER A (hl_o B 2 A P f) l).
Admitted.

// HOL Light: lists.ml:364 / MEM_FILTER   (hash md5:39ddc253a1e4b67034a5db3986958b51)
Theorem hlt_MEM_FILTER : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, forall x :e A, hl_MEM A x (hl_FILTER A P l) = 1 <-> P x = 1 /\ hl_MEM A x l = 1.
Admitted.

// HOL Light: lists.ml:370 / LENGTH_FILTER   (hash md5:f819a6c8161e197da7164838439a8944)
Theorem hlt_LENGTH_FILTER : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, hl_le (hl_LENGTH A (hl_FILTER A P l)) (hl_LENGTH A l) = 1.
Admitted.

// HOL Light: lists.ml:376 / EX_MEM   (hash md5:dc236f3bb7a599b6add4c8d4d4fdc23f)
Theorem hlt_EX_MEM : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, (exists x :e A, P x = 1 /\ hl_MEM A x l = 1) <-> hl_EX A P l = 1.
Admitted.

// HOL Light: lists.ml:381 / MAP_FST_ZIP   (hash md5:3b52c86e60da8100259bbce8c718ace6)
Theorem hlt_MAP_FST_ZIP : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e finseq A, forall l2 :e finseq B, hl_LENGTH A l1 = hl_LENGTH B l2 -> hl_MAP (A :*: B) A (hl_FST A B) (hl_ZIP A B l1 l2) = l1.
Admitted.

// HOL Light: lists.ml:387 / MAP_SND_ZIP   (hash md5:ab1691b5345d2c7d820edad5c57c5686)
Theorem hlt_MAP_SND_ZIP : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e finseq A, forall l2 :e finseq B, hl_LENGTH A l1 = hl_LENGTH B l2 -> hl_MAP (A :*: B) B (hl_SND A B) (hl_ZIP A B l1 l2) = l2.
Admitted.

// HOL Light: lists.ml:393 / LENGTH_ZIP   (hash md5:a7bf6b5c7fc3e763c5d6d363dee05649)
Theorem hlt_LENGTH_ZIP : forall A B:set, A <> Empty -> B <> Empty -> forall l1 :e finseq A, forall l2 :e finseq B, hl_LENGTH A l1 = hl_LENGTH B l2 -> hl_LENGTH (A :*: B) (hl_ZIP A B l1 l2) = hl_LENGTH B l2.
Admitted.

// HOL Light: lists.ml:399 / MEM_ASSOC   (hash md5:dc073e622beda0ca861d2c4e9ed550a0)
Theorem hlt_MEM_ASSOC : forall A B:set, A <> Empty -> B <> Empty -> forall l :e finseq (A :*: B), forall x :e A, hl_MEM (A :*: B) (hl_pair A B x (hl_ASSOC A B x l)) l = 1 <-> hl_MEM A x (hl_MAP (A :*: B) A (hl_FST A B) l) = 1.
Admitted.

// HOL Light: lists.ml:405 / ALL_APPEND   (hash md5:0010b3895501ff7a5ff6e1d6798864ea)
Theorem hlt_ALL_APPEND : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l1 l2 :e finseq A, hl_ALL A P (hl_APPEND A l1 l2) = 1 <-> hl_ALL A P l1 = 1 /\ hl_ALL A P l2 = 1.
Admitted.

// HOL Light: lists.ml:410 / MEM_EL   (hash md5:114beac3511e6fe7508305290f9729d7)
Theorem hlt_MEM_EL : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, hl_lt n (hl_LENGTH A l) = 1 -> hl_MEM A (hl_EL A n l) l = 1.
Admitted.

// HOL Light: lists.ml:415 / MEM_EXISTS_EL   (hash md5:4493491e0722295075cb34926b005eaa)
Theorem hlt_MEM_EXISTS_EL : forall A:set, A <> Empty -> forall l :e finseq A, forall x :e A, hl_MEM A x l = 1 <-> exists i :e omega, hl_lt i (hl_LENGTH A l) = 1 /\ x = hl_EL A i l.
Admitted.

// HOL Light: lists.ml:422 / ALL_EL   (hash md5:237e34a641b79831cfd0911e87fd72fd)
Theorem hlt_ALL_EL : forall A:set, A <> Empty -> forall P :e 2 :^: A, forall l :e finseq A, (forall i :e omega, hl_lt i (hl_LENGTH A l) = 1 -> P (hl_EL A i l) = 1) <-> hl_ALL A P l = 1.
Admitted.

// HOL Light: lists.ml:426 / ALL2_MAP2   (hash md5:b81f14dfc5ba044192bd0ce1542135b6)
Theorem hlt_ALL2_MAP2 : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall P :e 2 :^: D :^: B, forall f :e B :^: A, forall g :e D :^: C, forall l :e finseq A, forall m :e finseq C, hl_ALL2 B D P (hl_MAP A B f l) (hl_MAP C D g m) = 1 <-> hl_ALL2 A C (fun x :e A => fun y :e C => P (f x) (g y)) l m = 1.
Admitted.

// HOL Light: lists.ml:432 / AND_ALL2   (hash md5:a6e52c25066ce6e8132c25b40a38fd8d)
Theorem hlt_AND_ALL2 : forall A B:set, A <> Empty -> B <> Empty -> forall P Q :e 2 :^: B :^: A, forall l :e finseq A, forall m :e finseq B, hl_ALL2 A B P l m = 1 /\ hl_ALL2 A B Q l m = 1 <-> hl_ALL2 A B (fun x :e A => fun y :e B => if P x y = 1 /\ Q x y = 1 then 1 else 0) l m = 1.
Admitted.

// HOL Light: lists.ml:439 / ALLPAIRS_SYM   (hash md5:808bb6d4c5cb3d40cbad02f407cc2372)
Theorem hlt_ALLPAIRS_SYM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall l :e finseq A, forall m :e finseq B, hl_ALLPAIRS A B P l m = 1 <-> hl_ALLPAIRS B A (fun x :e B => fun y :e A => P y x) m l = 1.
Admitted.

// HOL Light: lists.ml:445 / ALLPAIRS_MEM   (hash md5:ef9bf6d2f325f0fc0358e7051e150305)
Theorem hlt_ALLPAIRS_MEM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, forall l :e finseq A, forall m :e finseq B, (forall x :e A, forall y :e B, hl_MEM A x l = 1 /\ hl_MEM B y m = 1 -> P x y = 1) <-> hl_ALLPAIRS A B P l m = 1.
Admitted.

// HOL Light: lists.ml:452 / ALLPAIRS_MAP   (hash md5:f23de829602d7775e0cee60dfd35774c)
Theorem hlt_ALLPAIRS_MAP : forall A B C D:set, A <> Empty -> B <> Empty -> C <> Empty -> D <> Empty -> forall P :e 2 :^: D :^: B, forall f :e B :^: A, forall g :e D :^: C, forall l :e finseq A, forall m :e finseq C, hl_ALLPAIRS B D P (hl_MAP A B f l) (hl_MAP C D g m) = 1 <-> hl_ALLPAIRS A C (fun x :e A => fun y :e C => P (f x) (g y)) l m = 1.
Admitted.

// HOL Light: lists.ml:458 / ALLPAIRS_EQ   (hash md5:948fb2776481879cd9a3f3b4a954026e)
Theorem hlt_ALLPAIRS_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall R1 R' :e 2 :^: B :^: A, forall l :e finseq A, forall m :e finseq B, forall P :e 2 :^: A, forall Q :e 2 :^: B, hl_ALL A P l = 1 /\ (hl_ALL B Q m = 1 /\ (forall p :e A, forall q :e B, P p = 1 /\ Q q = 1 -> (R1 p q = 1 <-> R' p q = 1))) -> (hl_ALLPAIRS A B R1 l m = 1 <-> hl_ALLPAIRS A B R' l m = 1).
Admitted.

// HOL Light: lists.ml:464 / ALL2_ALL   (hash md5:ad773421ed933244304c5e83c0f77d3c)
Theorem hlt_ALL2_ALL : forall A:set, A <> Empty -> forall P :e 2 :^: A :^: A, forall l :e finseq A, hl_ALL2 A A P l l = 1 <-> hl_ALL A (fun x :e A => P x x) l = 1.
Admitted.

// HOL Light: lists.ml:469 / APPEND_EQ_NIL   (hash md5:e9edc19ed23cabaa314fa3fcaec3296e)
Theorem hlt_APPEND_EQ_NIL : forall A:set, A <> Empty -> forall l m :e finseq A, hl_APPEND A l m = hl_NIL A <-> l = hl_NIL A /\ m = hl_NIL A.
Admitted.

// HOL Light: lists.ml:473 / APPEND_LCANCEL   (hash md5:8c4ba0d4c05300994d04fcf35bfd2317)
Theorem hlt_APPEND_LCANCEL : forall A:set, A <> Empty -> forall l1 l2 l3 :e finseq A, hl_APPEND A l1 l2 = hl_APPEND A l1 l3 <-> l2 = l3.
Admitted.

// HOL Light: lists.ml:477 / APPEND_RCANCEL   (hash md5:7929e632510a0ef42809349c1908e7fc)
Theorem hlt_APPEND_RCANCEL : forall A:set, A <> Empty -> forall l1 l2 l3 :e finseq A, hl_APPEND A l1 l3 = hl_APPEND A l2 l3 <-> l1 = l2.
Admitted.

// HOL Light: lists.ml:483 / LENGTH_MAP2   (hash md5:42acf0238a4233db18add111006f2bd1)
Theorem hlt_LENGTH_MAP2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B :^: A, forall l :e finseq A, forall m :e finseq B, hl_LENGTH A l = hl_LENGTH B m -> hl_LENGTH C (hl_MAP2 A B C f l m) = hl_LENGTH B m.
Admitted.

// HOL Light: lists.ml:488 / EL_MAP2   (hash md5:7dcce9680a2312a32a4141f7d677e5a6)
Theorem hlt_EL_MAP2 : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e C :^: B :^: A, forall l :e finseq A, forall m :e finseq B, forall k :e omega, hl_lt k (hl_LENGTH A l) = 1 /\ hl_lt k (hl_LENGTH B m) = 1 -> hl_EL C k (hl_MAP2 A B C f l m) = f (hl_EL A k l) (hl_EL B k m).
Admitted.

// HOL Light: lists.ml:496 / MAP_EQ_NIL   (hash md5:f1250992840d45e0d3f24916f01553e8)
Theorem hlt_MAP_EQ_NIL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l :e finseq A, hl_MAP A B f l = hl_NIL B <-> l = hl_NIL A.
Admitted.

// HOL Light: lists.ml:500 / INJECTIVE_MAP   (hash md5:eb01dcdc910704add493aee7b5e61f6d)
Theorem hlt_INJECTIVE_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall l m :e finseq A, hl_MAP A B f l = hl_MAP A B f m -> l = m) <-> forall x y :e A, f x = f y -> x = y.
Admitted.

// HOL Light: lists.ml:510 / SURJECTIVE_MAP   (hash md5:c68eac62c1e2887631b83ac6bf4e7cf3)
Theorem hlt_SURJECTIVE_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, (forall m :e finseq B, exists l :e finseq A, hl_MAP A B f l = m) <-> forall y :e B, exists x :e A, f x = y.
Admitted.

// HOL Light: lists.ml:519 / MAP_ID   (hash md5:84fd0b4115f0cf85275d63eec3f2c524)
Theorem hlt_MAP_ID : forall A:set, A <> Empty -> forall l :e finseq A, hl_MAP A A (fun x :e A => x) l = l.
Admitted.

// HOL Light: lists.ml:523 / MAP_I   (hash md5:7308c5409ad7fe485ea20ab13aadeb1b)
Theorem hlt_MAP_I : forall A:set, A <> Empty -> hl_MAP A A (hl_I A) = hl_I (finseq A).
Admitted.

// HOL Light: lists.ml:527 / BUTLAST_CLAUSES   (hash md5:2669bd204e0a6c6c199749e98d4535d4)
Theorem hlt_BUTLAST_CLAUSES : forall A:set, A <> Empty -> hl_BUTLAST A (hl_NIL A) = hl_NIL A /\ ((forall a :e A, hl_BUTLAST A (hl_CONS A a (hl_NIL A)) = hl_NIL A) /\ forall a h :e A, forall t :e finseq A, hl_BUTLAST A (hl_CONS A a (hl_CONS A h t)) = hl_CONS A a (hl_BUTLAST A (hl_CONS A h t))).
Admitted.

// HOL Light: lists.ml:533 / BUTLAST_APPEND   (hash md5:b9b6989022b3a40753c7c1cd6dfbc030)
Theorem hlt_BUTLAST_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, hl_BUTLAST A (hl_APPEND A l m) = hl_COND (finseq A) (if m = hl_NIL A then 1 else 0) (hl_BUTLAST A l) (hl_APPEND A l (hl_BUTLAST A m)).
Admitted.

// HOL Light: lists.ml:540 / APPEND_BUTLAST_LAST   (hash md5:703f649413aa2037e3dcf32aa4963892)
Theorem hlt_APPEND_BUTLAST_LAST : forall A:set, A <> Empty -> forall l :e finseq A, ~ l = hl_NIL A -> hl_APPEND A (hl_BUTLAST A l) (hl_CONS A (hl_LAST A l) (hl_NIL A)) = l.
Admitted.

// HOL Light: lists.ml:545 / LAST_APPEND   (hash md5:4020322e71adb76451026919c337000e)
Theorem hlt_LAST_APPEND : forall A:set, A <> Empty -> forall p q :e finseq A, hl_LAST A (hl_APPEND A p q) = hl_COND A (if q = hl_NIL A then 1 else 0) (hl_LAST A p) (hl_LAST A q).
Admitted.

// HOL Light: lists.ml:550 / LENGTH_TL   (hash md5:a85a29a10af63dc1de3488e67a73bc80)
Theorem hlt_LENGTH_TL : forall A:set, A <> Empty -> forall l :e finseq A, ~ l = hl_NIL A -> hl_LENGTH A (hl_TL A l) = hl_sub (hl_LENGTH A l) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: lists.ml:554 / LAST_REVERSE   (hash md5:c75a8f7488d5cca7950ef0e9cc55247c)
Theorem hlt_LAST_REVERSE : forall A:set, A <> Empty -> forall l :e finseq A, ~ l = hl_NIL A -> hl_LAST A (hl_REVERSE A l) = hl_HD A l.
Admitted.

// HOL Light: lists.ml:559 / HD_REVERSE   (hash md5:ab3ea9bf8f9519ab0c9869a62f24e123)
Theorem hlt_HD_REVERSE : forall A:set, A <> Empty -> forall l :e finseq A, ~ l = hl_NIL A -> hl_HD A (hl_REVERSE A l) = hl_LAST A l.
Admitted.

// HOL Light: lists.ml:563 / EL_APPEND   (hash md5:748e8eba07efd541bbb8f4cee28509db)
Theorem hlt_EL_APPEND : forall A:set, A <> Empty -> forall k :e omega, forall l m :e finseq A, hl_EL A k (hl_APPEND A l m) = hl_COND A (hl_lt k (hl_LENGTH A l)) (hl_EL A k l) (hl_EL A (hl_sub k (hl_LENGTH A l)) m).
Admitted.

// HOL Light: lists.ml:572 / EL_TL   (hash md5:1c4e8150a9c01e601483be55a0dcfe79)
Theorem hlt_EL_TL : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, hl_EL A n (hl_TL A l) = hl_EL A (hl_add n (hl_NUMERAL (hl_BIT1 hl_zero))) l.
Admitted.

// HOL Light: lists.ml:576 / EL_CONS   (hash md5:96bf1046e3cf9e37940e276d513bcf2d)
Theorem hlt_EL_CONS : forall A:set, A <> Empty -> forall n :e omega, forall h :e A, forall t :e finseq A, hl_EL A n (hl_CONS A h t) = hl_COND A (if n = hl_NUMERAL hl_zero then 1 else 0) h (hl_EL A (hl_sub n (hl_NUMERAL (hl_BIT1 hl_zero))) t).
Admitted.

// HOL Light: lists.ml:580 / LAST_EL   (hash md5:cedb10fc7f4c5badbfdc4bf1fc00dcd0)
Theorem hlt_LAST_EL : forall A:set, A <> Empty -> forall l :e finseq A, ~ l = hl_NIL A -> hl_LAST A l = hl_EL A (hl_sub (hl_LENGTH A l) (hl_NUMERAL (hl_BIT1 hl_zero))) l.
Admitted.

// HOL Light: lists.ml:586 / HD_APPEND   (hash md5:da7d7062ece2bd17943b9d0f7e786eeb)
Theorem hlt_HD_APPEND : forall A:set, A <> Empty -> forall l m :e finseq A, hl_HD A (hl_APPEND A l m) = hl_COND A (if l = hl_NIL A then 1 else 0) (hl_HD A m) (hl_HD A l).
Admitted.

// HOL Light: lists.ml:590 / CONS_HD_TL   (hash md5:c92d05c19eb5a4cde98682e8b8eceaaa)
Theorem hlt_CONS_HD_TL : forall A:set, A <> Empty -> forall l :e finseq A, ~ l = hl_NIL A -> l = hl_CONS A (hl_HD A l) (hl_TL A l).
Admitted.

// HOL Light: lists.ml:594 / EL_MAP   (hash md5:540a91f3328e7f6a379a49ab731fe835)
Theorem hlt_EL_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall n :e omega, forall l :e finseq A, hl_lt n (hl_LENGTH A l) = 1 -> hl_EL B n (hl_MAP A B f l) = f (hl_EL A n l).
Admitted.

// HOL Light: lists.ml:599 / MAP_REVERSE   (hash md5:038d08910009b286fad2d63812deec2f)
Theorem hlt_MAP_REVERSE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e B :^: A, forall l :e finseq A, hl_REVERSE B (hl_MAP A B f l) = hl_MAP A B f (hl_REVERSE A l).
Admitted.

// HOL Light: lists.ml:604 / ALL_FILTER   (hash md5:6fae4f4a0d9017f391f4c71232191e71)
Theorem hlt_ALL_FILTER : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, hl_ALL A P (hl_FILTER A Q l) = 1 <-> hl_ALL A (fun x :e A => if Q x = 1 -> P x = 1 then 1 else 0) l = 1.
Admitted.

// HOL Light: lists.ml:610 / APPEND_SING   (hash md5:657b1648e9b6042cfb6163edb02d09ee)
Theorem hlt_APPEND_SING : forall A:set, A <> Empty -> forall h :e A, forall t :e finseq A, hl_APPEND A (hl_CONS A h (hl_NIL A)) t = hl_CONS A h t.
Admitted.

// HOL Light: lists.ml:614 / MEM_APPEND_DECOMPOSE_LEFT   (hash md5:b6e9ffc4135587ba40aeaf58d991a37d)
Theorem hlt_MEM_APPEND_DECOMPOSE_LEFT : forall A:set, A <> Empty -> forall x :e A, forall l :e finseq A, hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, ~ hl_MEM A x l1 = 1 /\ l = hl_APPEND A l1 (hl_CONS A x l2).
Admitted.

// HOL Light: lists.ml:622 / MEM_APPEND_DECOMPOSE   (hash md5:655abb7cee4ccc640944195ea244e94f)
Theorem hlt_MEM_APPEND_DECOMPOSE : forall A:set, A <> Empty -> forall x :e A, forall l :e finseq A, hl_MEM A x l = 1 <-> exists l1 l2 :e finseq A, l = hl_APPEND A l1 (hl_CONS A x l2).
Admitted.

// HOL Light: lists.ml:628 / PAIRWISE_APPEND   (hash md5:df5224d6ab1447dbda247a059923c97e)
Theorem hlt_PAIRWISE_APPEND : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall l m :e finseq A, hl_PAIRWISE A R1 (hl_APPEND A l m) = 1 <-> hl_PAIRWISE A R1 l = 1 /\ (hl_PAIRWISE A R1 m = 1 /\ forall x y :e A, hl_MEM A x l = 1 /\ hl_MEM A y m = 1 -> R1 x y = 1).
Admitted.

// HOL Light: lists.ml:636 / PAIRWISE_MAP   (hash md5:2729e2a3e288fd1a4208cc9737da4dbb)
Theorem hlt_PAIRWISE_MAP : forall A B:set, A <> Empty -> B <> Empty -> forall R1 :e 2 :^: B :^: B, forall f :e B :^: A, forall l :e finseq A, hl_PAIRWISE B R1 (hl_MAP A B f l) = 1 <-> hl_PAIRWISE A (fun x :e A => fun y :e A => R1 (f x) (f y)) l = 1.
Admitted.

// HOL Light: lists.ml:642 / PAIRWISE_IMPLIES   (hash md5:8d75040c7d2a055f4216d39f8ea08f8d)
Theorem hlt_PAIRWISE_IMPLIES : forall A:set, A <> Empty -> forall R1 R' :e 2 :^: A :^: A, forall l :e finseq A, hl_PAIRWISE A R1 l = 1 /\ (forall x y :e A, hl_MEM A x l = 1 /\ (hl_MEM A y l = 1 /\ R1 x y = 1) -> R' x y = 1) -> hl_PAIRWISE A R' l = 1.
Admitted.

// HOL Light: lists.ml:649 / PAIRWISE_TRANSITIVE   (hash md5:602e07b92e365c30942cd7e171a820e7)
Theorem hlt_PAIRWISE_TRANSITIVE : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, forall x y :e A, forall l :e finseq A, (forall x1 y1 z :e A, R1 x1 y1 = 1 /\ R1 y1 z = 1 -> R1 x1 z = 1) -> (hl_PAIRWISE A R1 (hl_CONS A x (hl_CONS A y l)) = 1 <-> R1 x y = 1 /\ hl_PAIRWISE A R1 (hl_CONS A y l) = 1).
Admitted.

// HOL Light: lists.ml:660 / LENGTH_LIST_OF_SEQ   (hash md5:6917348fe479f76feb31698a1ce30b03)
Theorem hlt_LENGTH_LIST_OF_SEQ : forall A:set, A <> Empty -> forall s :e A :^: omega, forall n :e omega, hl_LENGTH A (hl_list_of_seq A s n) = n.
Admitted.

// HOL Light: lists.ml:665 / EL_LIST_OF_SEQ   (hash md5:361e7b194afb22170b3ff15a20553c77)
Theorem hlt_EL_LIST_OF_SEQ : forall A:set, A <> Empty -> forall s :e A :^: omega, forall m n :e omega, hl_lt m n = 1 -> hl_EL A m (hl_list_of_seq A s n) = s m.
Admitted.

// HOL Light: lists.ml:672 / LIST_OF_SEQ_EQ_NIL   (hash md5:13814f5ba3138c622e1efb0d01794f46)
Theorem hlt_LIST_OF_SEQ_EQ_NIL : forall A:set, A <> Empty -> forall s :e A :^: omega, forall n :e omega, hl_list_of_seq A s n = hl_NIL A <-> n = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: lists.ml:676 / LIST_OF_SEQ_EQ_SELF   (hash md5:84a0ee00a59f235eff5a2665fe75758c)
Theorem hlt_LIST_OF_SEQ_EQ_SELF : forall A:set, A <> Empty -> forall l :e finseq A, hl_list_of_seq A (fun i :e omega => hl_EL A i l) (hl_LENGTH A l) = l.
Admitted.

// HOL Light: lists.ml:680 / LENGTH_EQ_LIST_OF_SEQ   (hash md5:79e80582378ebd2d94081d9da4bb1f99)
Theorem hlt_LENGTH_EQ_LIST_OF_SEQ : forall A:set, A <> Empty -> forall l :e finseq A, forall n :e omega, hl_LENGTH A l = n <-> l = hl_list_of_seq A (fun i :e omega => hl_EL A i l) n.
Admitted.

// HOL Light: lists.ml:684 / MAP_LIST_OF_SEQ   (hash md5:9e3b62b49b5eec817e8fb9ed186f19bb)
Theorem hlt_MAP_LIST_OF_SEQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e A :^: omega, forall g :e B :^: A, forall n :e omega, hl_MAP A B g (hl_list_of_seq A f n) = hl_list_of_seq B (hl_o A B omega g f) n.
Admitted.

// HOL Light: lists.ml:689 / LIST_OF_SEQ   (hash md5:32afee83991c959f93b0d743ee582241)
Theorem hlt_LIST_OF_SEQ : forall A:set, A <> Empty -> (forall f :e A :^: omega, hl_list_of_seq A f (hl_NUMERAL hl_zero) = hl_NIL A) /\ forall f :e A :^: omega, forall n :e omega, hl_list_of_seq A f (hl_SUC n) = hl_CONS A (f (hl_NUMERAL hl_zero)) (hl_list_of_seq A (hl_o omega A omega f hl_SUC) n).
Admitted.

// HOL Light: lists.ml:722 / MONO_ALL   (hash md5:12dcd6b376bafee851fc134588275f08)
Theorem hlt_MONO_ALL : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, forall l :e finseq A, (forall x :e A, P x = 1 -> Q x = 1) -> hl_ALL A P l = 1 -> hl_ALL A Q l = 1.
Admitted.

// HOL Light: lists.ml:727 / MONO_ALL2   (hash md5:9aedd334a704373cb2ba0a5c9a1d1785)
Theorem hlt_MONO_ALL2 : forall A B:set, A <> Empty -> B <> Empty -> forall P Q :e 2 :^: B :^: A, forall l :e finseq A, forall l' :e finseq B, (forall x :e A, forall y :e B, P x y = 1 -> Q x y = 1) -> hl_ALL2 A B P l l' = 1 -> hl_ALL2 A B Q l l' = 1.
Admitted.

