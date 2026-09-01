// hol2mg literal statements (private): shard frag of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/frag.ml:5 / frag_tybij   (hash md5:f94e2843347f90420904dde878042c4f)
Theorem hlt_frag_tybij : forall A:set, A <> Empty -> (forall a :e hl_ty_frag A, hl_mk_frag A (hl_dest_frag A a) = a) /\ forall r :e hl_ty_int :^: A, hl_FINITE A (hl_GSPEC A (fun GEN_PVAR_711 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_711 (if ~ r x = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = 1 <-> hl_dest_frag A (hl_mk_frag A r) = r.
Admitted.

// HOL Light: Library/frag.ml:12 / frag_support   (hash md5:edc1457054e0ab10f576f6c3a4a56347)
Theorem hlt_frag_support_thm : forall A:set, A <> Empty -> forall x :e hl_ty_frag A, hl_frag_support A x = hl_GSPEC A (fun GEN_PVAR_712 :e A => if exists a :e A, hl_SETSPEC A GEN_PVAR_712 (if ~ hl_dest_frag A x a = hl_int_of_num (hl_NUMERAL hl_zero) then 1 else 0) a = 1 then 1 else 0).
Admitted.

// HOL Light: Library/frag.ml:15 / frag_0   (hash md5:26c5d318ab10b11559b7ba8bb9877a6b)
Theorem hlt_frag_0_thm : forall A:set, A <> Empty -> hl_frag_0 A = hl_mk_frag A (fun x :e A => hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/frag.ml:18 / frag_of   (hash md5:df74599eb41ad7f06282a24c4b085ca6)
Theorem hlt_frag_of_thm : forall A:set, A <> Empty -> forall c :e A, hl_frag_of A c = hl_mk_frag A (fun a :e A => hl_COND hl_ty_int (if a = c then 1 else 0) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_of_num (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Library/frag.ml:21 / frag_neg   (hash md5:505c4f84b144f6add08782838b129726)
Theorem hlt_frag_neg_thm : forall A:set, A <> Empty -> forall x :e hl_ty_frag A, hl_frag_neg A x = hl_mk_frag A (fun a :e A => hl_int_neg (hl_dest_frag A x a)).
Admitted.

// HOL Light: Library/frag.ml:24 / frag_cmul   (hash md5:2ba4b203fd93e0583b1f279f506e126e)
Theorem hlt_frag_cmul_thm : forall A:set, A <> Empty -> forall c :e hl_ty_int, forall x :e hl_ty_frag A, hl_frag_cmul A c x = hl_mk_frag A (fun a :e A => hl_int_mul c (hl_dest_frag A x a)).
Admitted.

// HOL Light: Library/frag.ml:27 / frag_add   (hash md5:a82fd610b3623be46bb4fe8a330899d4)
Theorem hlt_frag_add_thm : forall A:set, A <> Empty -> forall x y :e hl_ty_frag A, hl_frag_add A x y = hl_mk_frag A (fun a :e A => hl_int_add (hl_dest_frag A x a) (hl_dest_frag A y a)).
Admitted.

// HOL Light: Library/frag.ml:30 / frag_sub   (hash md5:e6f78064d23dbbd11c22d8f111771078)
Theorem hlt_frag_sub_thm : forall A:set, A <> Empty -> forall x y :e hl_ty_frag A, hl_frag_sub A x y = hl_mk_frag A (fun a :e A => hl_int_sub (hl_dest_frag A x a) (hl_dest_frag A y a)).
Admitted.

// HOL Light: Library/frag.ml:33 / FRAG_EQ   (hash md5:7f1ad9b989fa9586e455aafbe70d56ab)
Theorem hlt_FRAG_EQ : forall A:set, A <> Empty -> forall c1 c2 :e hl_ty_frag A, c1 = c2 <-> hl_dest_frag A c1 = hl_dest_frag A c2.
Admitted.

// HOL Light: Library/frag.ml:37 / DEST_FRAG_0   (hash md5:7647a644a73a2f6c0914602be1358d41)
Theorem hlt_DEST_FRAG_0 : forall A:set, A <> Empty -> hl_dest_frag A (hl_frag_0 A) = fun x :e A => hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Library/frag.ml:42 / DEST_FRAG_OF   (hash md5:5d05f4c2f34f56ca8adec79c7b490d6d)
Theorem hlt_DEST_FRAG_OF : forall A:set, A <> Empty -> forall c :e A, hl_dest_frag A (hl_frag_of A c) = fun a :e A => hl_COND hl_ty_int (if a = c then 1 else 0) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_int_of_num (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Library/frag.ml:50 / DEST_FRAG_NEG   (hash md5:32acf233a18b32692fe2829746bff710)
Theorem hlt_DEST_FRAG_NEG : forall A:set, A <> Empty -> forall x :e hl_ty_frag A, hl_dest_frag A (hl_frag_neg A x) = fun a :e A => hl_int_neg (hl_dest_frag A x a).
Admitted.

// HOL Light: Library/frag.ml:55 / DEST_FRAG_CMUL   (hash md5:02500476abd5734ca388c9311df2f14f)
Theorem hlt_DEST_FRAG_CMUL : forall A:set, A <> Empty -> forall c :e hl_ty_int, forall x :e hl_ty_frag A, hl_dest_frag A (hl_frag_cmul A c x) = fun a :e A => hl_int_mul c (hl_dest_frag A x a).
Admitted.

// HOL Light: Library/frag.ml:63 / DEST_FRAG_ADD   (hash md5:d17824c43518a82eb98c53234ca182b4)
Theorem hlt_DEST_FRAG_ADD : forall A:set, A <> Empty -> forall x y :e hl_ty_frag A, hl_dest_frag A (hl_frag_add A x y) = fun a :e A => hl_int_add (hl_dest_frag A x a) (hl_dest_frag A y a).
Admitted.

// HOL Light: Library/frag.ml:72 / DEST_FRAG_SUB   (hash md5:2aca7a2c07bb9d7e3ad4a5e54177fa98)
Theorem hlt_DEST_FRAG_SUB : forall A:set, A <> Empty -> forall x y :e hl_ty_frag A, hl_dest_frag A (hl_frag_sub A x y) = fun a :e A => hl_int_sub (hl_dest_frag A x a) (hl_dest_frag A y a).
Admitted.

// HOL Light: Library/frag.ml:81 / FRAG_OF_NONZERO   (hash md5:415145607584c1890a197478f9183308)
Theorem hlt_FRAG_OF_NONZERO : forall A:set, A <> Empty -> forall a :e A, ~ hl_frag_of A a = hl_frag_0 A.
Admitted.

// HOL Light: Library/frag.ml:104 / FINITE_FRAG_SUPPORT   (hash md5:755996d96ac4a7cd70a08c8236c33c60)
Theorem hlt_FINITE_FRAG_SUPPORT : forall A:set, A <> Empty -> forall x :e hl_ty_frag A, hl_FINITE A (hl_frag_support A x) = 1.
Admitted.

// HOL Light: Library/frag.ml:108 / FRAG_SUPPORT_0   (hash md5:4ce09c6cfd506ac34029ef640398c04e)
Theorem hlt_FRAG_SUPPORT_0 : forall A:set, A <> Empty -> hl_frag_support A (hl_frag_0 A) = hl_EMPTY A.
Admitted.

// HOL Light: Library/frag.ml:112 / FRAG_SUPPORT_OF   (hash md5:3675048f1ba54191d5d31a0bef583a7c)
Theorem hlt_FRAG_SUPPORT_OF : forall A:set, A <> Empty -> forall a :e A, hl_frag_support A (hl_frag_of A a) = hl_INSERT A a (hl_EMPTY A).
Admitted.

// HOL Light: Library/frag.ml:120 / FRAG_SUPPORT_NEG   (hash md5:c6b8f30f91221487ea0acb2597c15c93)
Theorem hlt_FRAG_SUPPORT_NEG : forall A:set, A <> Empty -> forall x :e hl_ty_frag A, hl_frag_support A (hl_frag_neg A x) = hl_frag_support A x.
Admitted.

// HOL Light: Library/frag.ml:124 / FRAG_SUPPORT_CMUL   (hash md5:8bf0a6c87d996dc043e73a8fad194805)
Theorem hlt_FRAG_SUPPORT_CMUL : forall A:set, A <> Empty -> forall a :e hl_ty_int, forall x :e hl_ty_frag A, hl_SUBSET A (hl_frag_support A (hl_frag_cmul A a x)) (hl_frag_support A x) = 1.
Admitted.

// HOL Light: Library/frag.ml:130 / FRAG_SUPPORT_ADD   (hash md5:fa0aea46917b793ef41af32cf1a704bb)
Theorem hlt_FRAG_SUPPORT_ADD : forall A:set, A <> Empty -> forall x y :e hl_ty_frag A, hl_SUBSET A (hl_frag_support A (hl_frag_add A x y)) (hl_UNION A (hl_frag_support A x) (hl_frag_support A y)) = 1.
Admitted.

// HOL Light: Library/frag.ml:137 / FRAG_SUPPORT_SUB   (hash md5:22238439b0147f8736174a25ba84510b)
Theorem hlt_FRAG_SUPPORT_SUB : forall A:set, A <> Empty -> forall x y :e hl_ty_frag A, hl_SUBSET A (hl_frag_support A (hl_frag_sub A x y)) (hl_UNION A (hl_frag_support A x) (hl_frag_support A y)) = 1.
Admitted.

// HOL Light: Library/frag.ml:144 / FRAG_SUPPORT_EQ_EMPTY   (hash md5:c5aff3c5597ed7194caaf95e4a070d90)
Theorem hlt_FRAG_SUPPORT_EQ_EMPTY : forall A:set, A <> Empty -> forall c :e hl_ty_frag A, hl_frag_support A c = hl_EMPTY A <-> c = hl_frag_0 A.
Admitted.

// HOL Light: Library/frag.ml:150 / FRAG_OF_EQ   (hash md5:c51be5662bf13c2c28fd59277332bda3)
Theorem hlt_FRAG_OF_EQ : forall A:set, A <> Empty -> forall x y :e A, hl_frag_of A x = hl_frag_of A y <-> x = y.
Admitted.

// HOL Light: Library/frag.ml:154 / FRAG_ADD_EQ_0   (hash md5:0481f0627fd1728fe83a0b176257cea8)
Theorem hlt_FRAG_ADD_EQ_0 : forall A:set, A <> Empty -> forall c1 c2 :e hl_ty_frag A, hl_DISJOINT A (hl_frag_support A c1) (hl_frag_support A c2) = 1 /\ hl_frag_add A c1 c2 = hl_frag_0 A -> c1 = hl_frag_0 A /\ c2 = hl_frag_0 A.
Admitted.

// HOL Light: Library/frag.ml:166 / NEUTRAL_FRAG_ADD   (hash md5:954fd3d86c22c3fa2ce219c40bbf9d6b)
Theorem hlt_NEUTRAL_FRAG_ADD : forall A:set, A <> Empty -> hl_neutral (hl_ty_frag A) (hl_frag_add A) = hl_frag_0 A.
Admitted.

// HOL Light: Library/frag.ml:172 / MONOIDAL_FRAG_ADD   (hash md5:39b91b3246efb27f3a48bdf03ed09625)
Theorem hlt_MONOIDAL_FRAG_ADD : forall A:set, A <> Empty -> hl_monoidal (hl_ty_frag A) (hl_frag_add A) = 1.
Admitted.

// HOL Light: Library/frag.ml:176 / FRAG_CMUL_SUM   (hash md5:ebd946d5fd2494d123892b41b4343c86)
Theorem hlt_FRAG_CMUL_SUM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag A :^: B, forall k :e 2 :^: B, forall a :e hl_ty_int, hl_frag_cmul A a (hl_iterate (hl_ty_frag A) B (hl_frag_add A) k f) = hl_iterate (hl_ty_frag A) B (hl_frag_add A) k (fun b :e B => hl_frag_cmul A a (f b)).
Admitted.

// HOL Light: Library/frag.ml:198 / FRAG_SUPPORT_SUM   (hash md5:47dba8dccdded9d6d7d139cf25188f39)
Theorem hlt_FRAG_SUPPORT_SUM : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag A :^: B, forall k :e 2 :^: B, hl_SUBSET A (hl_frag_support A (hl_iterate (hl_ty_frag A) B (hl_frag_add A) k f)) (hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_721 :e 2 :^: A => if exists i :e B, hl_SETSPEC (2 :^: A) GEN_PVAR_721 (hl_IN B i k) (hl_frag_support A (f i)) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Library/frag.ml:220 / frag_extend   (hash md5:0d6967de68309fd6895fcf28bb33e20a)
Theorem hlt_frag_extend_thm : forall A B:set, A <> Empty -> B <> Empty -> forall x :e hl_ty_frag A, forall f :e hl_ty_frag B :^: A, hl_frag_extend A B f x = hl_iterate (hl_ty_frag B) A (hl_frag_add B) (hl_frag_support A x) (fun a :e A => hl_frag_cmul B (hl_dest_frag A x a) (f a)).
Admitted.

// HOL Light: Library/frag.ml:225 / FRAG_EXTEND   (hash md5:c88d85c5ff610ce98e5ad9736f6908cd)
Theorem hlt_FRAG_EXTEND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, forall x :e hl_ty_frag A, hl_frag_extend A B f x = hl_iterate (hl_ty_frag B) A (hl_frag_add B) (hl_UNIV A) (fun a :e A => hl_frag_cmul B (hl_dest_frag A x a) (f a)).
Admitted.

// HOL Light: Library/frag.ml:235 / FRAG_EXTEND_0   (hash md5:7e2df2a3c79ecf1fed46a18998fcf6ca)
Theorem hlt_FRAG_EXTEND_0 : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, hl_frag_extend A B f (hl_frag_0 A) = hl_frag_0 B.
Admitted.

// HOL Light: Library/frag.ml:241 / FRAG_EXTEND_OF   (hash md5:d71b040e5b9e1738c3aca9f0a62ee9eb)
Theorem hlt_FRAG_EXTEND_OF : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, forall a :e A, hl_frag_extend A B f (hl_frag_of A a) = f a.
Admitted.

// HOL Light: Library/frag.ml:248 / FRAG_EXTEND_CMUL   (hash md5:f251deb2e470446fe0195e69e4e44130)
Theorem hlt_FRAG_EXTEND_CMUL : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, forall c :e hl_ty_int, forall x :e hl_ty_frag A, hl_frag_extend A B f (hl_frag_cmul A c x) = hl_frag_cmul B c (hl_frag_extend A B f x).
Admitted.

// HOL Light: Library/frag.ml:257 / FRAG_EXTEND_NEG   (hash md5:272d50e05818aaadb49401494823627a)
Theorem hlt_FRAG_EXTEND_NEG : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, forall x :e hl_ty_frag A, hl_frag_extend A B f (hl_frag_neg A x) = hl_frag_neg B (hl_frag_extend A B f x).
Admitted.

// HOL Light: Library/frag.ml:263 / FRAG_EXTEND_ADD   (hash md5:668234617e59c0714fd31df15b73415a)
Theorem hlt_FRAG_EXTEND_ADD : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, forall x y :e hl_ty_frag A, hl_frag_extend A B f (hl_frag_add A x y) = hl_frag_add B (hl_frag_extend A B f x) (hl_frag_extend A B f y).
Admitted.

// HOL Light: Library/frag.ml:282 / FRAG_EXTEND_SUB   (hash md5:dade3d20efc6c8007096ce40de888f91)
Theorem hlt_FRAG_EXTEND_SUB : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, forall x y :e hl_ty_frag A, hl_frag_extend A B f (hl_frag_sub A x y) = hl_frag_sub B (hl_frag_extend A B f x) (hl_frag_extend A B f y).
Admitted.

// HOL Light: Library/frag.ml:290 / FRAG_EXTEND_SUM   (hash md5:7513318f437b0ba02c2c5d1fb7ef954b)
Theorem hlt_FRAG_EXTEND_SUM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_frag B :^: A, forall g :e hl_ty_frag A :^: C, forall k :e 2 :^: C, hl_FINITE C k = 1 -> hl_frag_extend A B f (hl_iterate (hl_ty_frag A) C (hl_frag_add A) k g) = hl_iterate (hl_ty_frag B) C (hl_frag_add B) k (hl_o (hl_ty_frag A) (hl_ty_frag B) C (hl_frag_extend A B f) g).
Admitted.

// HOL Light: Library/frag.ml:300 / FRAG_EXTEND_EQ   (hash md5:0bbbfaf992fea31cfb0f5473a5ffba07)
Theorem hlt_FRAG_EXTEND_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall g h :e hl_ty_frag B :^: A, forall c :e hl_ty_frag A, (forall f :e A, hl_IN A f (hl_frag_support A c) = 1 -> g f = h f) -> hl_frag_extend A B g c = hl_frag_extend A B h c.
Admitted.

// HOL Light: Library/frag.ml:308 / FRAG_EXTEND_EQ_0   (hash md5:5153eaf08f1dfc07c6869c9e752326a6)
Theorem hlt_FRAG_EXTEND_EQ_0 : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, forall c :e hl_ty_frag A, (forall a :e A, hl_IN A a (hl_frag_support A c) = 1 -> f a = hl_frag_0 B) -> hl_frag_extend A B f c = hl_frag_0 B.
Admitted.

// HOL Light: Library/frag.ml:318 / FRAG_SUPPORT_FRAG_EXTEND   (hash md5:1a835c1494fd122abecdd797786fd4c3)
Theorem hlt_FRAG_SUPPORT_FRAG_EXTEND : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_frag B :^: A, forall c :e hl_ty_frag A, hl_SUBSET B (hl_frag_support B (hl_frag_extend A B f c)) (hl_UNIONS B (hl_GSPEC (2 :^: B) (fun GEN_PVAR_722 :e 2 :^: B => if exists a :e A, hl_SETSPEC (2 :^: B) GEN_PVAR_722 (hl_IN A a (hl_frag_support A c)) (hl_frag_support B (f a)) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Library/frag.ml:328 / FRAG_EXPANSION   (hash md5:3cb80b38a34657054b5099e1baa00519)
Theorem hlt_FRAG_EXPANSION : forall A:set, A <> Empty -> forall x :e hl_ty_frag A, x = hl_frag_extend A A (hl_frag_of A) x.
Admitted.

// HOL Light: Library/frag.ml:348 / FRAG_CLOSURE_SUB_CMUL   (hash md5:b2a4350d71e05f418840a8875e9f799b)
Theorem hlt_FRAG_CLOSURE_SUB_CMUL : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_frag A, P (hl_frag_0 A) = 1 /\ (forall c1 c2 :e hl_ty_frag A, P c1 = 1 /\ P c2 = 1 -> P (hl_frag_sub A c1 c2) = 1) -> forall a :e hl_ty_int, forall c :e hl_ty_frag A, P c = 1 -> P (hl_frag_cmul A a c) = 1.
Admitted.

// HOL Light: Library/frag.ml:370 / FRAG_INDUCTION   (hash md5:37a73729baebbf60b215b9397971db86)
Theorem hlt_FRAG_INDUCTION : forall A:set, A <> Empty -> forall P :e 2 :^: hl_ty_frag A, forall s :e 2 :^: A, P (hl_frag_0 A) = 1 /\ ((forall a :e A, hl_IN A a s = 1 -> P (hl_frag_of A a) = 1) /\ (forall c1 c2 :e hl_ty_frag A, P c1 = 1 /\ P c2 = 1 -> P (hl_frag_sub A c1 c2) = 1)) -> forall c :e hl_ty_frag A, hl_SUBSET A (hl_frag_support A c) s = 1 -> P c = 1.
Admitted.

// HOL Light: Library/frag.ml:392 / FRAG_EXTEND_COMPOSE   (hash md5:42aed3f45de2b1fc3ac7a2d34ddf1c94)
Theorem hlt_FRAG_EXTEND_COMPOSE : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall f :e hl_ty_frag C :^: B, forall g :e B :^: A, forall c :e hl_ty_frag A, hl_frag_extend B C f (hl_frag_extend A B (hl_o B (hl_ty_frag B) A (hl_frag_of B) g) c) = hl_frag_extend A C (hl_o B (hl_ty_frag C) A f g) c.
Admitted.

// HOL Light: Library/frag.ml:400 / FRAG_SPLIT   (hash md5:35abe568d23d68a5598b0c2ae89c1f43)
Theorem hlt_FRAG_SPLIT : forall A:set, A <> Empty -> forall c :e hl_ty_frag A, forall s t :e 2 :^: A, hl_SUBSET A (hl_frag_support A c) (hl_UNION A s t) = 1 -> exists d e1 :e hl_ty_frag A, hl_SUBSET A (hl_frag_support A d) s = 1 /\ (hl_SUBSET A (hl_frag_support A e1) t = 1 /\ hl_frag_add A d e1 = c).
Admitted.

