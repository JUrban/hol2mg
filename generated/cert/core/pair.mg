// hol2mg certification module (private): shard pair of profile core.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: pair.ml:17 / LET_DEF   (hash md5:b500f0ea638d009d27d0410e5045329f)
// not bridged: 
Theorem LET_DEF : forall A B:set, forall f:set -> set, (forall x :e A, f x :e B) -> forall x :e A, f x = f x.
Admitted.

// HOL Light: pair.ml:20 / LET_END_DEF   (hash md5:3540107cfa54c763381fa257e545baa3)
// not bridged: 
Theorem LET_END_DEF : forall A:set, forall t :e A, t = t.
Admitted.

// HOL Light: pair.ml:67 / FST_DEF   (hash md5:085c9267477376ef68995b88baf72064)
Theorem hlt_FST_DEF : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, hl_FST A B p = hl_select A (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0).
Admitted.
Theorem FST_DEF_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, hl_FST A B p = hl_select A (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0)) -> (forall A B:set, forall p :e A :*: B, p 0 = choose_in A (fun x:set => exists y :e B, p = (x,y))).
exact (fun H__top A B => (xm (B = Empty) (forall p :e A :*: B, p 0 = choose_in A (fun x:set => exists y :e B, p = (x,y))) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall p :e A :*: hl__u, p 0 = choose_in A (fun x:set => exists y :e hl__u, p = (x,y))) ((eq_sym_i (A :*: Empty) (Empty) (setprod_Empty_R (A))) (fun hl__u hl__v => forall p :e hl__u, p 0 = choose_in A (fun x:set => exists y :e Empty, p = (x,y))) (forall_in_Empty (fun p => p 0 = choose_in A (fun x:set => exists y :e Empty, p = (x,y))))))) (fun HBne => (xm (A = Empty) (forall p :e A :*: B, p 0 = choose_in A (fun x:set => exists y :e B, p = (x,y))) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall p :e hl__u :*: B, p 0 = choose_in hl__u (fun x:set => exists y :e B, p = (x,y))) ((eq_sym_i (Empty :*: B) (Empty) (setprod_Empty_L (B))) (fun hl__u hl__v => forall p :e hl__u, p 0 = choose_in Empty (fun x:set => exists y :e B, p = (x,y))) (forall_in_Empty (fun p => p 0 = choose_in Empty (fun x:set => exists y :e B, p = (x,y))))))) (fun HAne => (imp_forall_in (A :*: B) (fun p => hl_FST A B p = hl_select A (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0)) (fun p => p 0 = choose_in A (fun x:set => exists y :e B, p = (x,y))) (fun p Hp => (imp_eq (hl_FST A B p) (p 0) (hl_select A (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0)) (choose_in A (fun x:set => exists y :e B, p = (x,y))) ((hl_FST_compat) (A) (B) HAne HBne (p) Hp) (eq_trans_i (hl_select A (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0)) (choose_in A (fun hl__x:set => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) hl__x = 1)) (choose_in A (fun x:set => exists y :e B, p = (x,y))) (hl_select_eq (A) (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) (lam_Pi (A) (fun _ => 2) (fun x => if exists y :e B, p = hl_pair A B x y then 1 else 0) (fun x Hx => (If_in_2 (exists y :e B, p = hl_pair A B x y))))) (choose_in_ext (A) (fun hl__x:set => (fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) hl__x = 1) (fun x:set => exists y :e B, p = (x,y)) (fun x Hx => (iff_eq1_l ((fun x :e A => if exists y :e B, p = hl_pair A B x y then 1 else 0) x) (if exists y :e B, p = hl_pair A B x y then 1 else 0) (beta (A) (fun x:set => (if exists y :e B, p = hl_pair A B x y then 1 else 0)) x Hx) (exists y :e B, p = (x,y)) (iff_trans ((if exists y :e B, p = hl_pair A B x y then 1 else 0) = 1) (exists y :e B, p = hl_pair A B x y) (exists y :e B, p = (x,y)) (If_1_iff (exists y :e B, p = hl_pair A B x y)) (iffI (exists y :e B, p = hl_pair A B x y) (exists y :e B, p = (x,y)) (imp_exists_in (B) (fun y => p = hl_pair A B x y) (fun y => p = (x,y)) (fun y Hy => (imp_eq (p) (p) (hl_pair A B x y) ((x,y)) (fun q H => H) ((hl_pair_compat) (A) (B) HAne HBne (x) Hx (y) Hy)))) (imp_exists_in (B) (fun y => p = (x,y)) (fun y => p = hl_pair A B x y) (fun y Hy => (imp_eq (p) (p) ((x,y)) (hl_pair A B x y) (eq_sym_i (p) (p) (fun q H => H)) (eq_sym_i (hl_pair A B x y) ((x,y)) ((hl_pair_compat) (A) (B) HAne HBne (x) Hx (y) Hy)))))))))))))) (H__top A B HAne HBne)))))).
Qed.
Theorem FST_DEF : forall A B:set, forall p :e A :*: B, p 0 = choose_in A (fun x:set => exists y :e B, p = (x,y)).
exact (FST_DEF_bridge hlt_FST_DEF).
Admitted.

// HOL Light: pair.ml:70 / SND_DEF   (hash md5:f00cacab114b37c19aba6b06c35bb916)
Theorem hlt_SND_DEF : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, hl_SND A B p = hl_select B (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0).
Admitted.
Theorem SND_DEF_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, hl_SND A B p = hl_select B (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0)) -> (forall A B:set, forall p :e A :*: B, p 1 = choose_in B (fun y:set => exists x :e A, p = (x,y))).
exact (fun H__top A B => (xm (B = Empty) (forall p :e A :*: B, p 1 = choose_in B (fun y:set => exists x :e A, p = (x,y))) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall p :e A :*: hl__u, p 1 = choose_in hl__u (fun y:set => exists x :e A, p = (x,y))) ((eq_sym_i (A :*: Empty) (Empty) (setprod_Empty_R (A))) (fun hl__u hl__v => forall p :e hl__u, p 1 = choose_in Empty (fun y:set => exists x :e A, p = (x,y))) (forall_in_Empty (fun p => p 1 = choose_in Empty (fun y:set => exists x :e A, p = (x,y))))))) (fun HBne => (xm (A = Empty) (forall p :e A :*: B, p 1 = choose_in B (fun y:set => exists x :e A, p = (x,y))) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall p :e hl__u :*: B, p 1 = choose_in B (fun y:set => exists x :e hl__u, p = (x,y))) ((eq_sym_i (Empty :*: B) (Empty) (setprod_Empty_L (B))) (fun hl__u hl__v => forall p :e hl__u, p 1 = choose_in B (fun y:set => exists x :e Empty, p = (x,y))) (forall_in_Empty (fun p => p 1 = choose_in B (fun y:set => exists x :e Empty, p = (x,y))))))) (fun HAne => (imp_forall_in (A :*: B) (fun p => hl_SND A B p = hl_select B (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0)) (fun p => p 1 = choose_in B (fun y:set => exists x :e A, p = (x,y))) (fun p Hp => (imp_eq (hl_SND A B p) (p 1) (hl_select B (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0)) (choose_in B (fun y:set => exists x :e A, p = (x,y))) ((hl_SND_compat) (A) (B) HAne HBne (p) Hp) (eq_trans_i (hl_select B (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0)) (choose_in B (fun hl__x:set => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) hl__x = 1)) (choose_in B (fun y:set => exists x :e A, p = (x,y))) (hl_select_eq (B) (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) (lam_Pi (B) (fun _ => 2) (fun y => if exists x :e A, p = hl_pair A B x y then 1 else 0) (fun y Hy => (If_in_2 (exists x :e A, p = hl_pair A B x y))))) (choose_in_ext (B) (fun hl__x:set => (fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) hl__x = 1) (fun y:set => exists x :e A, p = (x,y)) (fun y Hy => (iff_eq1_l ((fun y :e B => if exists x :e A, p = hl_pair A B x y then 1 else 0) y) (if exists x :e A, p = hl_pair A B x y then 1 else 0) (beta (B) (fun y:set => (if exists x :e A, p = hl_pair A B x y then 1 else 0)) y Hy) (exists x :e A, p = (x,y)) (iff_trans ((if exists x :e A, p = hl_pair A B x y then 1 else 0) = 1) (exists x :e A, p = hl_pair A B x y) (exists x :e A, p = (x,y)) (If_1_iff (exists x :e A, p = hl_pair A B x y)) (iffI (exists x :e A, p = hl_pair A B x y) (exists x :e A, p = (x,y)) (imp_exists_in (A) (fun x => p = hl_pair A B x y) (fun x => p = (x,y)) (fun x Hx => (imp_eq (p) (p) (hl_pair A B x y) ((x,y)) (fun q H => H) ((hl_pair_compat) (A) (B) HAne HBne (x) Hx (y) Hy)))) (imp_exists_in (A) (fun x => p = (x,y)) (fun x => p = hl_pair A B x y) (fun x Hx => (imp_eq (p) (p) ((x,y)) (hl_pair A B x y) (eq_sym_i (p) (p) (fun q H => H)) (eq_sym_i (hl_pair A B x y) ((x,y)) ((hl_pair_compat) (A) (B) HAne HBne (x) Hx (y) Hy)))))))))))))) (H__top A B HAne HBne)))))).
Qed.
Theorem SND_DEF : forall A B:set, forall p :e A :*: B, p 1 = choose_in B (fun y:set => exists x :e A, p = (x,y)).
exact (SND_DEF_bridge hlt_SND_DEF).
Admitted.

// HOL Light: pair.ml:73 / PAIR_EQ   (hash md5:71770245f4ddd568d85751053a9e5a6e)
Theorem hlt_PAIR_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, forall a :e A, forall b :e B, hl_pair A B x y = hl_pair A B a b <-> x = a /\ y = b.
Admitted.
Theorem PAIR_EQ_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall x :e A, forall y :e B, forall a :e A, forall b :e B, hl_pair A B x y = hl_pair A B a b <-> x = a /\ y = b) -> (forall A B:set, forall x :e A, forall y :e B, forall a :e A, forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b).
exact (fun H__top A B => (xm (B = Empty) (forall x :e A, forall y :e B, forall a :e A, forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall x :e A, forall y :e hl__u, forall a :e A, forall b :e hl__u, (x,y) = (a,b) <-> x = a /\ y = b) (fun x Hx => (forall_in_Empty (fun y => forall a :e A, forall b :e Empty, (x,y) = (a,b) <-> x = a /\ y = b))))) (fun HBne => (xm (A = Empty) (forall x :e A, forall y :e B, forall a :e A, forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall x :e hl__u, forall y :e B, forall a :e hl__u, forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b) (forall_in_Empty (fun x => forall y :e B, forall a :e Empty, forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b)))) (fun HAne => (imp_forall_in (A) (fun x => forall y :e B, forall a :e A, forall b :e B, hl_pair A B x y = hl_pair A B a b <-> x = a /\ y = b) (fun x => forall y :e B, forall a :e A, forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b) (fun x Hx => (imp_forall_in (B) (fun y => forall a :e A, forall b :e B, hl_pair A B x y = hl_pair A B a b <-> x = a /\ y = b) (fun y => forall a :e A, forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b) (fun y Hy => (imp_forall_in (A) (fun a => forall b :e B, hl_pair A B x y = hl_pair A B a b <-> x = a /\ y = b) (fun a => forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b) (fun a Ha => (imp_forall_in (B) (fun b => hl_pair A B x y = hl_pair A B a b <-> x = a /\ y = b) (fun b => (x,y) = (a,b) <-> x = a /\ y = b) (fun b Hb => (imp_iff (hl_pair A B x y = hl_pair A B a b) ((x,y) = (a,b)) (x = a /\ y = b) (x = a /\ y = b) (imp_eq (hl_pair A B x y) ((x,y)) (hl_pair A B a b) ((a,b)) ((hl_pair_compat) (A) (B) HAne HBne (x) Hx (y) Hy) ((hl_pair_compat) (A) (B) HAne HBne (a) Ha (b) Hb)) (imp_eq ((x,y)) (hl_pair A B x y) ((a,b)) (hl_pair A B a b) (eq_sym_i (hl_pair A B x y) ((x,y)) ((hl_pair_compat) (A) (B) HAne HBne (x) Hx (y) Hy)) (eq_sym_i (hl_pair A B a b) ((a,b)) ((hl_pair_compat) (A) (B) HAne HBne (a) Ha (b) Hb))) (imp_and (x = a) (x = a) (y = b) (y = b) (imp_eq (x) (x) (a) (a) (fun q H => H) (fun q H => H)) (imp_eq (y) (y) (b) (b) (fun q H => H) (fun q H => H))) (imp_and (x = a) (x = a) (y = b) (y = b) (imp_eq (x) (x) (a) (a) (eq_sym_i (x) (x) (fun q H => H)) (eq_sym_i (a) (a) (fun q H => H))) (imp_eq (y) (y) (b) (b) (eq_sym_i (y) (y) (fun q H => H)) (eq_sym_i (b) (b) (fun q H => H))))))))))))) (H__top A B HAne HBne)))))).
Qed.
Theorem PAIR_EQ : forall A B:set, forall x :e A, forall y :e B, forall a :e A, forall b :e B, (x,y) = (a,b) <-> x = a /\ y = b.
exact (PAIR_EQ_bridge hlt_PAIR_EQ).
Admitted.

// HOL Light: pair.ml:82 / PAIR_SURJECTIVE   (hash md5:8a85c46beb474e1e63192937ada8908b)
Theorem hlt_PAIR_SURJECTIVE : forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, exists x :e A, exists y :e B, p = hl_pair A B x y.
Admitted.
Theorem PAIR_SURJECTIVE_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall p :e A :*: B, exists x :e A, exists y :e B, p = hl_pair A B x y) -> (forall A B:set, forall p :e A :*: B, exists x :e A, exists y :e B, p = (x,y)).
exact (fun H__top A B => (xm (B = Empty) (forall p :e A :*: B, exists x :e A, exists y :e B, p = (x,y)) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall p :e A :*: hl__u, exists x :e A, exists y :e hl__u, p = (x,y)) ((eq_sym_i (A :*: Empty) (Empty) (setprod_Empty_R (A))) (fun hl__u hl__v => forall p :e hl__u, exists x :e A, exists y :e Empty, p = (x,y)) (forall_in_Empty (fun p => exists x :e A, exists y :e Empty, p = (x,y)))))) (fun HBne => (xm (A = Empty) (forall p :e A :*: B, exists x :e A, exists y :e B, p = (x,y)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall p :e hl__u :*: B, exists x :e hl__u, exists y :e B, p = (x,y)) ((eq_sym_i (Empty :*: B) (Empty) (setprod_Empty_L (B))) (fun hl__u hl__v => forall p :e hl__u, exists x :e Empty, exists y :e B, p = (x,y)) (forall_in_Empty (fun p => exists x :e Empty, exists y :e B, p = (x,y)))))) (fun HAne => (imp_forall_in (A :*: B) (fun p => exists x :e A, exists y :e B, p = hl_pair A B x y) (fun p => exists x :e A, exists y :e B, p = (x,y)) (fun p Hp => (imp_exists_in (A) (fun x => exists y :e B, p = hl_pair A B x y) (fun x => exists y :e B, p = (x,y)) (fun x Hx => (imp_exists_in (B) (fun y => p = hl_pair A B x y) (fun y => p = (x,y)) (fun y Hy => (imp_eq (p) (p) (hl_pair A B x y) ((x,y)) (fun q H => H) ((hl_pair_compat) (A) (B) HAne HBne (x) Hx (y) Hy)))))))) (H__top A B HAne HBne)))))).
Qed.
Theorem PAIR_SURJECTIVE : forall A B:set, forall p :e A :*: B, exists x :e A, exists y :e B, p = (x,y).
exact (PAIR_SURJECTIVE_bridge hlt_PAIR_SURJECTIVE).
Admitted.

// HOL Light: pair.ml:92 / FST   (hash md5:e9c3a4a3164ca2f9e6fad2d535f8ab0f)
// not bridged: 
Theorem FST : forall A B:set, forall x :e A, forall y :e B, x = x.
Admitted.

// HOL Light: pair.ml:100 / SND   (hash md5:e4ac88e20ba11cb060769e77dcb122fe)
// not bridged: 
Theorem SND : forall A B:set, forall x :e A, forall y :e B, y = y.
Admitted.

// HOL Light: pair.ml:108 / PAIR   (hash md5:23613fb98ddd9bc0b8abe81386bec32f)
Theorem hlt_PAIR : forall A B:set, A <> Empty -> B <> Empty -> forall x :e A :*: B, hl_pair A B (hl_FST A B x) (hl_SND A B x) = x.
Admitted.
Theorem PAIR_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall x :e A :*: B, hl_pair A B (hl_FST A B x) (hl_SND A B x) = x) -> (forall A B:set, forall x :e A :*: B, (x 0,x 1) = x).
exact (fun H__top A B => (xm (B = Empty) (forall x :e A :*: B, (x 0,x 1) = x) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall x :e A :*: hl__u, (x 0,x 1) = x) ((eq_sym_i (A :*: Empty) (Empty) (setprod_Empty_R (A))) (fun hl__u hl__v => forall x :e hl__u, (x 0,x 1) = x) (forall_in_Empty (fun x => (x 0,x 1) = x))))) (fun HBne => (xm (A = Empty) (forall x :e A :*: B, (x 0,x 1) = x) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall x :e hl__u :*: B, (x 0,x 1) = x) ((eq_sym_i (Empty :*: B) (Empty) (setprod_Empty_L (B))) (fun hl__u hl__v => forall x :e hl__u, (x 0,x 1) = x) (forall_in_Empty (fun x => (x 0,x 1) = x))))) (fun HAne => (imp_forall_in (A :*: B) (fun x => hl_pair A B (hl_FST A B x) (hl_SND A B x) = x) (fun x => (x 0,x 1) = x) (fun x Hx => (imp_eq (hl_pair A B (hl_FST A B x) (hl_SND A B x)) ((x 0,x 1)) (x) (x) (((hl_SND_compat) (A) (B) HAne HBne (x) Hx) (fun hl__u hl__v => hl_pair A B (hl_FST A B x) (hl_SND A B x) = (x 0,hl__u)) (((hl_FST_compat) (A) (B) HAne HBne (x) Hx) (fun hl__u hl__v => hl_pair A B (hl_FST A B x) (hl_SND A B x) = (hl__u,hl_SND A B x)) ((hl_pair_compat) (A) (B) HAne HBne (hl_FST A B x) (setexp_ap (A :*: B) (A) (hl_FST A B) ((hl_FST_in) (A) (B) HAne HBne) (x) Hx) (hl_SND A B x) (setexp_ap (A :*: B) (B) (hl_SND A B) ((hl_SND_in) (A) (B) HAne HBne) (x) Hx)))) (fun q H => H)))) (H__top A B HAne HBne)))))).
Qed.
Theorem PAIR : forall A B:set, forall x :e A :*: B, (x 0,x 1) = x.
exact (PAIR_bridge hlt_PAIR).
Admitted.

// HOL Light: pair.ml:115 / pair_INDUCT   (hash md5:77b383354fddaa2478d8ab26c6548c60)
Theorem hlt_pair_INDUCT : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (forall x :e A, forall y :e B, P (hl_pair A B x y) = 1) -> forall p :e A :*: B, P p = 1.
Admitted.
Theorem pair_INDUCT_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (forall x :e A, forall y :e B, P (hl_pair A B x y) = 1) -> forall p :e A :*: B, P p = 1) -> (forall A B:set, forall P:set -> prop, (forall x :e A, forall y :e B, P (x,y)) -> forall p :e A :*: B, P p).
exact (fun H__top A B => (xm (B = Empty) (forall P:set -> prop, (forall x :e A, forall y :e B, P (x,y)) -> forall p :e A :*: B, P p) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall P:set -> prop, (forall x :e A, forall y :e hl__u, P (x,y)) -> forall p :e A :*: hl__u, P p) (fun P => (fun H : forall x :e A, forall y :e Empty, P (x,y) => ((eq_sym_i (A :*: Empty) (Empty) (setprod_Empty_R (A))) (fun hl__u hl__v => forall p :e hl__u, P p) (forall_in_Empty (fun p => P p))))))) (fun HBne => (xm (A = Empty) (forall P:set -> prop, (forall x :e A, forall y :e B, P (x,y)) -> forall p :e A :*: B, P p) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, (forall x :e hl__u, forall y :e B, P (x,y)) -> forall p :e hl__u :*: B, P p) (fun P => (fun H : forall x :e Empty, forall y :e B, P (x,y) => ((eq_sym_i (Empty :*: B) (Empty) (setprod_Empty_L (B))) (fun hl__u hl__v => forall p :e hl__u, P p) (forall_in_Empty (fun p => P p))))))) (fun HAne => (imp_forall_pred (A :*: B) (fun P => (forall x :e A, forall y :e B, P (hl_pair A B x y) = 1) -> forall p :e A :*: B, P p = 1) (fun P => (forall x :e A, forall y :e B, P (x,y)) -> forall p :e A :*: B, P p) (fun P => (fun H__L : ((forall x :e A, forall y :e B, hl_chip (A :*: B) P (hl_pair A B x y) = 1) -> (forall p :e A :*: B, hl_chip (A :*: B) P p = 1)) => fun H__hyp1 : (forall x :e A, forall y :e B, P (x,y)) => (imp_forall_in (A :*: B) (fun p => hl_chip (A :*: B) P p = 1) (fun p => P p) (fun p Hp => (iffEL (hl_chip (A :*: B) P p = 1) (P p) ((hl_chip_iff (A :*: B) P) (p) Hp)))) (H__L ((imp_forall_in (A) (fun x => forall y :e B, P (x,y)) (fun x => forall y :e B, hl_chip (A :*: B) P (hl_pair A B x y) = 1) (fun x Hx => (imp_forall_in (B) (fun y => P (x,y)) (fun y => hl_chip (A :*: B) P (hl_pair A B x y) = 1) (fun y Hy => (iffER (hl_chip (A :*: B) P (hl_pair A B x y) = 1) (P (x,y)) (((hl_pair_compat) (A) (B) HAne HBne (x) Hx (y) Hy) (fun hl__u hl__v => hl_chip (A :*: B) P (hl_pair A B x y) = 1 <-> P hl__u) ((hl_chip_iff (A :*: B) P) (hl_pair A B x y) (setexp_ap (B) (A :*: B) (hl_pair A B x) (setexp_ap (A) ((A :*: B) :^: B) (hl_pair A B) ((hl_pair_in) (A) (B) HAne HBne) (x) Hx) (y) Hy)))))))) H__hyp1))))) (H__top A B HAne HBne)))))).
Qed.
Theorem pair_INDUCT : forall A B:set, forall P:set -> prop, (forall x :e A, forall y :e B, P (x,y)) -> forall p :e A :*: B, P p.
exact (pair_INDUCT_bridge hlt_pair_INDUCT).
Admitted.

// HOL Light: pair.ml:121 / pair_RECURSION   (hash md5:d319dfea4248978ad1e1ecfa13aee49a)
Theorem hlt_pair_RECURSION : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall PAIR' :e C :^: B :^: A, exists fn :e C :^: (A :*: B), forall a0 :e A, forall a1 :e B, fn (hl_pair A B a0 a1) = PAIR' a0 a1.
Admitted.
Theorem pair_RECURSION_bridge : (forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall PAIR' :e C :^: B :^: A, exists fn :e C :^: (A :*: B), forall a0 :e A, forall a1 :e B, fn (hl_pair A B a0 a1) = PAIR' a0 a1) -> (forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall PAIR':set -> set -> set, (forall x :e A, forall y :e B, PAIR' x y :e C) -> exists fn:set -> set, (forall x :e A :*: B, fn x :e C) /\ forall a0 :e A, forall a1 :e B, fn (a0,a1) = PAIR' a0 a1).
exact (fun H__top A B C HAne HBne HCne => (imp_forall_fun2 (A) (B) (C) (fun PAIR' => exists fn :e C :^: (A :*: B), forall a0 :e A, forall a1 :e B, fn (hl_pair A B a0 a1) = PAIR' a0 a1) (fun PAIR' => exists fn:set -> set, (forall x :e A :*: B, fn x :e C) /\ forall a0 :e A, forall a1 :e B, fn (a0,a1) = PAIR' a0 a1) (fun PAIR' HPAIR'c => (imp_exists_fun (A :*: B) (C) (fun fn => forall a0 :e A, forall a1 :e B, fn (hl_pair A B a0 a1) = hl_lam2 A B PAIR' a0 a1) (fun fn => forall a0 :e A, forall a1 :e B, fn (a0,a1) = PAIR' a0 a1) (fun fn Hfn => (imp_forall_in (A) (fun a0 => forall a1 :e B, fn (hl_pair A B a0 a1) = hl_lam2 A B PAIR' a0 a1) (fun a0 => forall a1 :e B, fn (a0,a1) = PAIR' a0 a1) (fun a0 Ha0 => (imp_forall_in (B) (fun a1 => fn (hl_pair A B a0 a1) = hl_lam2 A B PAIR' a0 a1) (fun a1 => fn (a0,a1) = PAIR' a0 a1) (fun a1 Ha1 => (imp_eq (fn (hl_pair A B a0 a1)) (fn (a0,a1)) (hl_lam2 A B PAIR' a0 a1) (PAIR' a0 a1) (((hl_pair_compat) (A) (B) HAne HBne (a0) Ha0 (a1) Ha1) (fun hl__u hl__v => fn (hl_pair A B a0 a1) = fn hl__u) (fun q H => H)) ((hl_lam2_ap (A) (B) PAIR') (a0) Ha0 (a1) Ha1)))))))))) (H__top A B C HAne HBne HCne)).
Qed.
Theorem pair_RECURSION : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall PAIR':set -> set -> set, (forall x :e A, forall y :e B, PAIR' x y :e C) -> exists fn:set -> set, (forall x :e A :*: B, fn x :e C) /\ forall a0 :e A, forall a1 :e B, fn (a0,a1) = PAIR' a0 a1.
exact (pair_RECURSION_bridge hlt_pair_RECURSION).
Admitted.

// HOL Light: pair.ml:187 / CURRY_DEF   (hash md5:cede113a4abd362ecff19b551d8931ed)
// not bridged: 
Theorem CURRY_DEF : forall A B C:set, forall f:set -> set, (forall x :e A :*: B, f x :e C) -> forall x :e A, forall y :e B, f (x,y) = f (x,y).
Admitted.

// HOL Light: pair.ml:190 / UNCURRY_DEF   (hash md5:3f03a0bbd511648cd075ac39bfcfc4bb)
// not bridged: 
Theorem UNCURRY_DEF : forall A B C:set, forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> forall x :e A, forall y :e B, f x y = f x y.
Admitted.

// HOL Light: pair.ml:295 / FORALL_PAIR_THM   (hash md5:259d29f2f6087c2bd6a11a52412f4491)
Theorem hlt_FORALL_PAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (forall p :e A :*: B, P p = 1) <-> forall p1 :e A, forall p2 :e B, P (hl_pair A B p1 p2) = 1.
Admitted.
Theorem FORALL_PAIR_THM_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (forall p :e A :*: B, P p = 1) <-> forall p1 :e A, forall p2 :e B, P (hl_pair A B p1 p2) = 1) -> (forall A B:set, forall P:set -> prop, (forall p :e A :*: B, P p) <-> forall p1 :e A, forall p2 :e B, P (p1,p2)).
exact (fun H__top A B => (xm (B = Empty) (forall P:set -> prop, (forall p :e A :*: B, P p) <-> forall p1 :e A, forall p2 :e B, P (p1,p2)) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall P:set -> prop, (forall p :e A :*: hl__u, P p) <-> forall p1 :e A, forall p2 :e hl__u, P (p1,p2)) (fun P => (iffI (forall p :e A :*: Empty, P p) (forall p1 :e A, forall p2 :e Empty, P (p1,p2)) (fun _ => (fun p1 Hp1 => (forall_in_Empty (fun p2 => P (p1,p2))))) (fun _ => ((eq_sym_i (A :*: Empty) (Empty) (setprod_Empty_R (A))) (fun hl__u hl__v => forall p :e hl__u, P p) (forall_in_Empty (fun p => P p)))))))) (fun HBne => (xm (A = Empty) (forall P:set -> prop, (forall p :e A :*: B, P p) <-> forall p1 :e A, forall p2 :e B, P (p1,p2)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, (forall p :e hl__u :*: B, P p) <-> forall p1 :e hl__u, forall p2 :e B, P (p1,p2)) (fun P => (iffI (forall p :e Empty :*: B, P p) (forall p1 :e Empty, forall p2 :e B, P (p1,p2)) (fun _ => (forall_in_Empty (fun p1 => forall p2 :e B, P (p1,p2)))) (fun _ => ((eq_sym_i (Empty :*: B) (Empty) (setprod_Empty_L (B))) (fun hl__u hl__v => forall p :e hl__u, P p) (forall_in_Empty (fun p => P p)))))))) (fun HAne => (imp_forall_pred (A :*: B) (fun P => (forall p :e A :*: B, P p = 1) <-> forall p1 :e A, forall p2 :e B, P (hl_pair A B p1 p2) = 1) (fun P => (forall p :e A :*: B, P p) <-> forall p1 :e A, forall p2 :e B, P (p1,p2)) (fun P => (imp_iff (forall p :e A :*: B, hl_chip (A :*: B) P p = 1) (forall p :e A :*: B, P p) (forall p1 :e A, forall p2 :e B, hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (forall p1 :e A, forall p2 :e B, P (p1,p2)) (imp_forall_in (A :*: B) (fun p => hl_chip (A :*: B) P p = 1) (fun p => P p) (fun p Hp => (iffEL (hl_chip (A :*: B) P p = 1) (P p) ((hl_chip_iff (A :*: B) P) (p) Hp)))) (imp_forall_in (A :*: B) (fun p => P p) (fun p => hl_chip (A :*: B) P p = 1) (fun p Hp => (iffER (hl_chip (A :*: B) P p = 1) (P p) ((hl_chip_iff (A :*: B) P) (p) Hp)))) (imp_forall_in (A) (fun p1 => forall p2 :e B, hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (fun p1 => forall p2 :e B, P (p1,p2)) (fun p1 Hp1 => (imp_forall_in (B) (fun p2 => hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (fun p2 => P (p1,p2)) (fun p2 Hp2 => (iffEL (hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (P (p1,p2)) (((hl_pair_compat) (A) (B) HAne HBne (p1) Hp1 (p2) Hp2) (fun hl__u hl__v => hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1 <-> P hl__u) ((hl_chip_iff (A :*: B) P) (hl_pair A B p1 p2) (setexp_ap (B) (A :*: B) (hl_pair A B p1) (setexp_ap (A) ((A :*: B) :^: B) (hl_pair A B) ((hl_pair_in) (A) (B) HAne HBne) (p1) Hp1) (p2) Hp2)))))))) (imp_forall_in (A) (fun p1 => forall p2 :e B, P (p1,p2)) (fun p1 => forall p2 :e B, hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (fun p1 Hp1 => (imp_forall_in (B) (fun p2 => P (p1,p2)) (fun p2 => hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (fun p2 Hp2 => (iffER (hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (P (p1,p2)) (((hl_pair_compat) (A) (B) HAne HBne (p1) Hp1 (p2) Hp2) (fun hl__u hl__v => hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1 <-> P hl__u) ((hl_chip_iff (A :*: B) P) (hl_pair A B p1 p2) (setexp_ap (B) (A :*: B) (hl_pair A B p1) (setexp_ap (A) ((A :*: B) :^: B) (hl_pair A B) ((hl_pair_in) (A) (B) HAne HBne) (p1) Hp1) (p2) Hp2))))))))))) (H__top A B HAne HBne)))))).
Qed.
Theorem FORALL_PAIR_THM : forall A B:set, forall P:set -> prop, (forall p :e A :*: B, P p) <-> forall p1 :e A, forall p2 :e B, P (p1,p2).
exact (FORALL_PAIR_THM_bridge hlt_FORALL_PAIR_THM).
Admitted.

// HOL Light: pair.ml:299 / EXISTS_PAIR_THM   (hash md5:64b789e52ff2b13a976b5610389dc69b)
Theorem hlt_EXISTS_PAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (exists p :e A :*: B, P p = 1) <-> exists p1 :e A, exists p2 :e B, P (hl_pair A B p1 p2) = 1.
Admitted.
Theorem EXISTS_PAIR_THM_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: (A :*: B), (exists p :e A :*: B, P p = 1) <-> exists p1 :e A, exists p2 :e B, P (hl_pair A B p1 p2) = 1) -> (forall A B:set, forall P:set -> prop, (exists p :e A :*: B, P p) <-> exists p1 :e A, exists p2 :e B, P (p1,p2)).
exact (fun H__top A B => (xm (B = Empty) (forall P:set -> prop, (exists p :e A :*: B, P p) <-> exists p1 :e A, exists p2 :e B, P (p1,p2)) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall P:set -> prop, (exists p :e A :*: hl__u, P p) <-> exists p1 :e A, exists p2 :e hl__u, P (p1,p2)) (fun P => (iffI (exists p :e A :*: Empty, P p) (exists p1 :e A, exists p2 :e Empty, P (p1,p2)) (fun H : exists p :e A :*: Empty, P p => FalseE ((fun H : exists p :e A :*: Empty, P p => not_exists_in_Empty (fun p => P p) ((setprod_Empty_R (A)) (fun hl__u hl__v => exists p :e hl__u, P p) H)) H) (exists p1 :e A, exists p2 :e Empty, P (p1,p2))) (fun H : exists p1 :e A, exists p2 :e Empty, P (p1,p2) => FalseE ((fun H : exists p1 :e A, exists p2 :e Empty, P (p1,p2) => H False (fun p1 Hp10 => (fun H : exists p2 :e Empty, P (p1,p2) => not_exists_in_Empty (fun p2 => P (p1,p2)) H) (andER (p1 :e A) (exists p2 :e Empty, P (p1,p2)) Hp10))) H) (exists p :e A :*: Empty, P p)))))) (fun HBne => (xm (A = Empty) (forall P:set -> prop, (exists p :e A :*: B, P p) <-> exists p1 :e A, exists p2 :e B, P (p1,p2)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> prop, (exists p :e hl__u :*: B, P p) <-> exists p1 :e hl__u, exists p2 :e B, P (p1,p2)) (fun P => (iffI (exists p :e Empty :*: B, P p) (exists p1 :e Empty, exists p2 :e B, P (p1,p2)) (fun H : exists p :e Empty :*: B, P p => FalseE ((fun H : exists p :e Empty :*: B, P p => not_exists_in_Empty (fun p => P p) ((setprod_Empty_L (B)) (fun hl__u hl__v => exists p :e hl__u, P p) H)) H) (exists p1 :e Empty, exists p2 :e B, P (p1,p2))) (fun H : exists p1 :e Empty, exists p2 :e B, P (p1,p2) => FalseE ((fun H : exists p1 :e Empty, exists p2 :e B, P (p1,p2) => not_exists_in_Empty (fun p1 => exists p2 :e B, P (p1,p2)) H) H) (exists p :e Empty :*: B, P p)))))) (fun HAne => (imp_forall_pred (A :*: B) (fun P => (exists p :e A :*: B, P p = 1) <-> exists p1 :e A, exists p2 :e B, P (hl_pair A B p1 p2) = 1) (fun P => (exists p :e A :*: B, P p) <-> exists p1 :e A, exists p2 :e B, P (p1,p2)) (fun P => (imp_iff (exists p :e A :*: B, hl_chip (A :*: B) P p = 1) (exists p :e A :*: B, P p) (exists p1 :e A, exists p2 :e B, hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (exists p1 :e A, exists p2 :e B, P (p1,p2)) (imp_exists_in (A :*: B) (fun p => hl_chip (A :*: B) P p = 1) (fun p => P p) (fun p Hp => (iffEL (hl_chip (A :*: B) P p = 1) (P p) ((hl_chip_iff (A :*: B) P) (p) Hp)))) (imp_exists_in (A :*: B) (fun p => P p) (fun p => hl_chip (A :*: B) P p = 1) (fun p Hp => (iffER (hl_chip (A :*: B) P p = 1) (P p) ((hl_chip_iff (A :*: B) P) (p) Hp)))) (imp_exists_in (A) (fun p1 => exists p2 :e B, hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (fun p1 => exists p2 :e B, P (p1,p2)) (fun p1 Hp1 => (imp_exists_in (B) (fun p2 => hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (fun p2 => P (p1,p2)) (fun p2 Hp2 => (iffEL (hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (P (p1,p2)) (((hl_pair_compat) (A) (B) HAne HBne (p1) Hp1 (p2) Hp2) (fun hl__u hl__v => hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1 <-> P hl__u) ((hl_chip_iff (A :*: B) P) (hl_pair A B p1 p2) (setexp_ap (B) (A :*: B) (hl_pair A B p1) (setexp_ap (A) ((A :*: B) :^: B) (hl_pair A B) ((hl_pair_in) (A) (B) HAne HBne) (p1) Hp1) (p2) Hp2)))))))) (imp_exists_in (A) (fun p1 => exists p2 :e B, P (p1,p2)) (fun p1 => exists p2 :e B, hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (fun p1 Hp1 => (imp_exists_in (B) (fun p2 => P (p1,p2)) (fun p2 => hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (fun p2 Hp2 => (iffER (hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1) (P (p1,p2)) (((hl_pair_compat) (A) (B) HAne HBne (p1) Hp1 (p2) Hp2) (fun hl__u hl__v => hl_chip (A :*: B) P (hl_pair A B p1 p2) = 1 <-> P hl__u) ((hl_chip_iff (A :*: B) P) (hl_pair A B p1 p2) (setexp_ap (B) (A :*: B) (hl_pair A B p1) (setexp_ap (A) ((A :*: B) :^: B) (hl_pair A B) ((hl_pair_in) (A) (B) HAne HBne) (p1) Hp1) (p2) Hp2))))))))))) (H__top A B HAne HBne)))))).
Qed.
Theorem EXISTS_PAIR_THM : forall A B:set, forall P:set -> prop, (exists p :e A :*: B, P p) <-> exists p1 :e A, exists p2 :e B, P (p1,p2).
exact (EXISTS_PAIR_THM_bridge hlt_EXISTS_PAIR_THM).
Admitted.

// HOL Light: pair.ml:303 / LAMBDA_PAIR_THM   (hash md5:5cd80d8f0fe05eb8b4cf070c629deed9)
// not bridged: 
Theorem LAMBDA_PAIR_THM : forall A B C:set, C <> Empty -> forall t:set -> set, (forall x :e A :*: B, t x :e C) -> forall p :e A :*: B, t p = t (p 0,p 1).
Admitted.

// HOL Light: pair.ml:307 / LAMBDA_PAIR   (hash md5:586467ad9feb215fbc9e08d6caadf6c7)
// not bridged: 
Theorem LAMBDA_PAIR : forall A B C:set, forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> forall p :e A :*: B, f (p 0) (p 1) = f (p 0) (p 1).
Admitted.

// HOL Light: pair.ml:311 / LAMBDA_TRIPLE_THM   (hash md5:85e4aaa45bf38442ceebb65097fe1b7d)
// not bridged: 
Theorem LAMBDA_TRIPLE_THM : forall A B C D:set, D <> Empty -> forall f:set -> set, (forall x :e A :*: (B :*: C), f x :e D) -> forall t :e A :*: (B :*: C), f t = f (t 0,(t 1 0,t 1 1)).
Admitted.

// HOL Light: pair.ml:315 / LAMBDA_TRIPLE   (hash md5:0cd632bb91bd111d0fb856a95916279d)
// not bridged: 
Theorem LAMBDA_TRIPLE : forall A B C D:set, forall f:set -> set -> set -> set, (forall x :e A, forall y :e B, forall z :e C, f x y z :e D) -> forall t :e A :*: (B :*: C), f (t 0) (t 1 0) (t 1 1) = f (t 0) (t 1 0) (t 1 1).
Admitted.

// HOL Light: pair.ml:320 / PAIRED_ETA_THM   (hash md5:eabdd9bb450ee7e823a340945ab828f6)
// not bridged: 
Theorem PAIRED_ETA_THM : forall A B C D E:set, C <> Empty -> D <> Empty -> E <> Empty -> (forall f:set -> set, (forall x :e A :*: B, f x :e C) -> forall x :e A :*: B, f (x 0,x 1) = f x) /\ ((forall f:set -> set, (forall x :e A :*: (B :*: C), f x :e D) -> forall x :e A :*: (B :*: C), f (x 0,(x 1 0,x 1 1)) = f x) /\ forall f:set -> set, (forall x :e A :*: (B :*: (C :*: D)), f x :e E) -> forall x :e A :*: (B :*: (C :*: D)), f (x 0,(x 1 0,(x 1 1 0,x 1 1 1))) = f x).
Admitted.

// HOL Light: pair.ml:326 / FORALL_UNCURRY   (hash md5:3474782c5e2db898cde1d87c3d0177cc)
// not bridged: 
Theorem FORALL_UNCURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> prop, (forall f :e C :^: B :^: A, P f) <-> forall f:set -> set, (forall x :e A :*: B, f x :e C) -> P (fun a :e A => fun b :e B => f (a,b)).
Admitted.

// HOL Light: pair.ml:332 / EXISTS_UNCURRY   (hash md5:506bf2c55fa053a1e1ca3b2230e04c52)
// not bridged: 
Theorem EXISTS_UNCURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> prop, (exists f :e C :^: B :^: A, P f) <-> exists f:set -> set, (forall x :e A :*: B, f x :e C) /\ P (fun a :e A => fun b :e B => f (a,b)).
Admitted.

// HOL Light: pair.ml:337 / EXISTS_CURRY   (hash md5:84fdce56e74c0991a44307b28abf72bc)
// not bridged: 
Theorem EXISTS_CURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> prop, (exists f :e C :^: (A :*: B), P f) <-> exists f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) /\ P (fun p :e A :*: B => f (p 0) (p 1)).
Admitted.

// HOL Light: pair.ml:341 / FORALL_CURRY   (hash md5:f2498f4182999751facb010e3dbfe0e1)
// not bridged: 
Theorem FORALL_CURRY : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> prop, (forall f :e C :^: (A :*: B), P f) <-> forall f:set -> set -> set, (forall x :e A, forall y :e B, f x y :e C) -> P (fun p :e A :*: B => f (p 0) (p 1)).
Admitted.

// HOL Light: pair.ml:345 / FORALL_UNPAIR_THM   (hash md5:2797620921562307b55cefd5730f67cd)
Theorem hlt_FORALL_UNPAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (forall x :e A, forall y :e B, P x y = 1) <-> forall z :e A :*: B, P (hl_FST A B z) (hl_SND A B z) = 1.
Admitted.
Theorem FORALL_UNPAIR_THM_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (forall x :e A, forall y :e B, P x y = 1) <-> forall z :e A :*: B, P (hl_FST A B z) (hl_SND A B z) = 1) -> (forall A B:set, forall P:set -> set -> prop, (forall x :e A, forall y :e B, P x y) <-> forall z :e A :*: B, P (z 0) (z 1)).
exact (fun H__top A B => (xm (B = Empty) (forall P:set -> set -> prop, (forall x :e A, forall y :e B, P x y) <-> forall z :e A :*: B, P (z 0) (z 1)) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall P:set -> set -> prop, (forall x :e A, forall y :e hl__u, P x y) <-> forall z :e A :*: hl__u, P (z 0) (z 1)) (fun P => (iffI (forall x :e A, forall y :e Empty, P x y) (forall z :e A :*: Empty, P (z 0) (z 1)) (fun _ => ((eq_sym_i (A :*: Empty) (Empty) (setprod_Empty_R (A))) (fun hl__u hl__v => forall z :e hl__u, P (z 0) (z 1)) (forall_in_Empty (fun z => P (z 0) (z 1))))) (fun _ => (fun x Hx => (forall_in_Empty (fun y => P x y)))))))) (fun HBne => (xm (A = Empty) (forall P:set -> set -> prop, (forall x :e A, forall y :e B, P x y) <-> forall z :e A :*: B, P (z 0) (z 1)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> set -> prop, (forall x :e hl__u, forall y :e B, P x y) <-> forall z :e hl__u :*: B, P (z 0) (z 1)) (fun P => (iffI (forall x :e Empty, forall y :e B, P x y) (forall z :e Empty :*: B, P (z 0) (z 1)) (fun _ => ((eq_sym_i (Empty :*: B) (Empty) (setprod_Empty_L (B))) (fun hl__u hl__v => forall z :e hl__u, P (z 0) (z 1)) (forall_in_Empty (fun z => P (z 0) (z 1))))) (fun _ => (forall_in_Empty (fun x => forall y :e B, P x y))))))) (fun HAne => (imp_forall_pred2 (A) (B) (fun P => (forall x :e A, forall y :e B, P x y = 1) <-> forall z :e A :*: B, P (hl_FST A B z) (hl_SND A B z) = 1) (fun P => (forall x :e A, forall y :e B, P x y) <-> forall z :e A :*: B, P (z 0) (z 1)) (fun P => (imp_iff (forall x :e A, forall y :e B, hl_chip2 A B P x y = 1) (forall x :e A, forall y :e B, P x y) (forall z :e A :*: B, hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (forall z :e A :*: B, P (z 0) (z 1)) (imp_forall_in (A) (fun x => forall y :e B, hl_chip2 A B P x y = 1) (fun x => forall y :e B, P x y) (fun x Hx => (imp_forall_in (B) (fun y => hl_chip2 A B P x y = 1) (fun y => P x y) (fun y Hy => (iffEL (hl_chip2 A B P x y = 1) (P x y) ((hl_chip2_iff (A) (B) P) (x) Hx (y) Hy)))))) (imp_forall_in (A) (fun x => forall y :e B, P x y) (fun x => forall y :e B, hl_chip2 A B P x y = 1) (fun x Hx => (imp_forall_in (B) (fun y => P x y) (fun y => hl_chip2 A B P x y = 1) (fun y Hy => (iffER (hl_chip2 A B P x y = 1) (P x y) ((hl_chip2_iff (A) (B) P) (x) Hx (y) Hy)))))) (imp_forall_in (A :*: B) (fun z => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (fun z => P (z 0) (z 1)) (fun z Hz => (iffEL (hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (P (z 0) (z 1)) (((hl_SND_compat) (A) (B) HAne HBne (z) Hz) (fun hl__u hl__v => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1 <-> P (z 0) hl__u) (((hl_FST_compat) (A) (B) HAne HBne (z) Hz) (fun hl__u hl__v => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1 <-> P hl__u (hl_SND A B z)) ((hl_chip2_iff (A) (B) P) (hl_FST A B z) (setexp_ap (A :*: B) (A) (hl_FST A B) ((hl_FST_in) (A) (B) HAne HBne) (z) Hz) (hl_SND A B z) (setexp_ap (A :*: B) (B) (hl_SND A B) ((hl_SND_in) (A) (B) HAne HBne) (z) Hz))))))) (imp_forall_in (A :*: B) (fun z => P (z 0) (z 1)) (fun z => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (fun z Hz => (iffER (hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (P (z 0) (z 1)) (((hl_SND_compat) (A) (B) HAne HBne (z) Hz) (fun hl__u hl__v => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1 <-> P (z 0) hl__u) (((hl_FST_compat) (A) (B) HAne HBne (z) Hz) (fun hl__u hl__v => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1 <-> P hl__u (hl_SND A B z)) ((hl_chip2_iff (A) (B) P) (hl_FST A B z) (setexp_ap (A :*: B) (A) (hl_FST A B) ((hl_FST_in) (A) (B) HAne HBne) (z) Hz) (hl_SND A B z) (setexp_ap (A :*: B) (B) (hl_SND A B) ((hl_SND_in) (A) (B) HAne HBne) (z) Hz)))))))))) (H__top A B HAne HBne)))))).
Qed.
Theorem FORALL_UNPAIR_THM : forall A B:set, forall P:set -> set -> prop, (forall x :e A, forall y :e B, P x y) <-> forall z :e A :*: B, P (z 0) (z 1).
exact (FORALL_UNPAIR_THM_bridge hlt_FORALL_UNPAIR_THM).
Admitted.

// HOL Light: pair.ml:349 / EXISTS_UNPAIR_THM   (hash md5:1887731dff3899ab41ca881b0c28956e)
Theorem hlt_EXISTS_UNPAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (exists x :e A, exists y :e B, P x y = 1) <-> exists z :e A :*: B, P (hl_FST A B z) (hl_SND A B z) = 1.
Admitted.
Theorem EXISTS_UNPAIR_THM_bridge : (forall A B:set, A <> Empty -> B <> Empty -> forall P :e 2 :^: B :^: A, (exists x :e A, exists y :e B, P x y = 1) <-> exists z :e A :*: B, P (hl_FST A B z) (hl_SND A B z) = 1) -> (forall A B:set, forall P:set -> set -> prop, (exists x :e A, exists y :e B, P x y) <-> exists z :e A :*: B, P (z 0) (z 1)).
exact (fun H__top A B => (xm (B = Empty) (forall P:set -> set -> prop, (exists x :e A, exists y :e B, P x y) <-> exists z :e A :*: B, P (z 0) (z 1)) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall P:set -> set -> prop, (exists x :e A, exists y :e hl__u, P x y) <-> exists z :e A :*: hl__u, P (z 0) (z 1)) (fun P => (iffI (exists x :e A, exists y :e Empty, P x y) (exists z :e A :*: Empty, P (z 0) (z 1)) (fun H : exists x :e A, exists y :e Empty, P x y => FalseE ((fun H : exists x :e A, exists y :e Empty, P x y => H False (fun x Hx0 => (fun H : exists y :e Empty, P x y => not_exists_in_Empty (fun y => P x y) H) (andER (x :e A) (exists y :e Empty, P x y) Hx0))) H) (exists z :e A :*: Empty, P (z 0) (z 1))) (fun H : exists z :e A :*: Empty, P (z 0) (z 1) => FalseE ((fun H : exists z :e A :*: Empty, P (z 0) (z 1) => not_exists_in_Empty (fun z => P (z 0) (z 1)) ((setprod_Empty_R (A)) (fun hl__u hl__v => exists z :e hl__u, P (z 0) (z 1)) H)) H) (exists x :e A, exists y :e Empty, P x y)))))) (fun HBne => (xm (A = Empty) (forall P:set -> set -> prop, (exists x :e A, exists y :e B, P x y) <-> exists z :e A :*: B, P (z 0) (z 1)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P:set -> set -> prop, (exists x :e hl__u, exists y :e B, P x y) <-> exists z :e hl__u :*: B, P (z 0) (z 1)) (fun P => (iffI (exists x :e Empty, exists y :e B, P x y) (exists z :e Empty :*: B, P (z 0) (z 1)) (fun H : exists x :e Empty, exists y :e B, P x y => FalseE ((fun H : exists x :e Empty, exists y :e B, P x y => not_exists_in_Empty (fun x => exists y :e B, P x y) H) H) (exists z :e Empty :*: B, P (z 0) (z 1))) (fun H : exists z :e Empty :*: B, P (z 0) (z 1) => FalseE ((fun H : exists z :e Empty :*: B, P (z 0) (z 1) => not_exists_in_Empty (fun z => P (z 0) (z 1)) ((setprod_Empty_L (B)) (fun hl__u hl__v => exists z :e hl__u, P (z 0) (z 1)) H)) H) (exists x :e Empty, exists y :e B, P x y)))))) (fun HAne => (imp_forall_pred2 (A) (B) (fun P => (exists x :e A, exists y :e B, P x y = 1) <-> exists z :e A :*: B, P (hl_FST A B z) (hl_SND A B z) = 1) (fun P => (exists x :e A, exists y :e B, P x y) <-> exists z :e A :*: B, P (z 0) (z 1)) (fun P => (imp_iff (exists x :e A, exists y :e B, hl_chip2 A B P x y = 1) (exists x :e A, exists y :e B, P x y) (exists z :e A :*: B, hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (exists z :e A :*: B, P (z 0) (z 1)) (imp_exists_in (A) (fun x => exists y :e B, hl_chip2 A B P x y = 1) (fun x => exists y :e B, P x y) (fun x Hx => (imp_exists_in (B) (fun y => hl_chip2 A B P x y = 1) (fun y => P x y) (fun y Hy => (iffEL (hl_chip2 A B P x y = 1) (P x y) ((hl_chip2_iff (A) (B) P) (x) Hx (y) Hy)))))) (imp_exists_in (A) (fun x => exists y :e B, P x y) (fun x => exists y :e B, hl_chip2 A B P x y = 1) (fun x Hx => (imp_exists_in (B) (fun y => P x y) (fun y => hl_chip2 A B P x y = 1) (fun y Hy => (iffER (hl_chip2 A B P x y = 1) (P x y) ((hl_chip2_iff (A) (B) P) (x) Hx (y) Hy)))))) (imp_exists_in (A :*: B) (fun z => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (fun z => P (z 0) (z 1)) (fun z Hz => (iffEL (hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (P (z 0) (z 1)) (((hl_SND_compat) (A) (B) HAne HBne (z) Hz) (fun hl__u hl__v => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1 <-> P (z 0) hl__u) (((hl_FST_compat) (A) (B) HAne HBne (z) Hz) (fun hl__u hl__v => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1 <-> P hl__u (hl_SND A B z)) ((hl_chip2_iff (A) (B) P) (hl_FST A B z) (setexp_ap (A :*: B) (A) (hl_FST A B) ((hl_FST_in) (A) (B) HAne HBne) (z) Hz) (hl_SND A B z) (setexp_ap (A :*: B) (B) (hl_SND A B) ((hl_SND_in) (A) (B) HAne HBne) (z) Hz))))))) (imp_exists_in (A :*: B) (fun z => P (z 0) (z 1)) (fun z => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (fun z Hz => (iffER (hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1) (P (z 0) (z 1)) (((hl_SND_compat) (A) (B) HAne HBne (z) Hz) (fun hl__u hl__v => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1 <-> P (z 0) hl__u) (((hl_FST_compat) (A) (B) HAne HBne (z) Hz) (fun hl__u hl__v => hl_chip2 A B P (hl_FST A B z) (hl_SND A B z) = 1 <-> P hl__u (hl_SND A B z)) ((hl_chip2_iff (A) (B) P) (hl_FST A B z) (setexp_ap (A :*: B) (A) (hl_FST A B) ((hl_FST_in) (A) (B) HAne HBne) (z) Hz) (hl_SND A B z) (setexp_ap (A :*: B) (B) (hl_SND A B) ((hl_SND_in) (A) (B) HAne HBne) (z) Hz)))))))))) (H__top A B HAne HBne)))))).
Qed.
Theorem EXISTS_UNPAIR_THM : forall A B:set, forall P:set -> set -> prop, (exists x :e A, exists y :e B, P x y) <-> exists z :e A :*: B, P (z 0) (z 1).
exact (EXISTS_UNPAIR_THM_bridge hlt_EXISTS_UNPAIR_THM).
Admitted.

// HOL Light: pair.ml:353 / FORALL_PAIR_FUN_THM   (hash md5:3f44ed9f97562f42b653ea47012379e0)
// not bridged: 
Theorem FORALL_PAIR_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> prop, (forall f :e (B :*: C) :^: A, P f) <-> forall g:set -> set, (forall x :e A, g x :e B) -> forall h:set -> set, (forall x :e A, h x :e C) -> P (fun a :e A => (g a,h a)).
Admitted.

// HOL Light: pair.ml:359 / EXISTS_PAIR_FUN_THM   (hash md5:5dc28a6866e08e1050ff02cae3d8934d)
// not bridged: 
Theorem EXISTS_PAIR_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> prop, (exists f :e (B :*: C) :^: A, P f) <-> exists g:set -> set, (forall x :e A, g x :e B) /\ exists h:set -> set, (forall x :e A, h x :e C) /\ P (fun a :e A => (g a,h a)).
Admitted.

// HOL Light: pair.ml:364 / FORALL_UNPAIR_FUN_THM   (hash md5:1a6f72f877498c6aad1d2989bbd1132b)
// not bridged: 
Theorem FORALL_UNPAIR_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> set -> prop, (forall f :e B :^: A, forall g :e C :^: A, P f g) <-> forall h:set -> set, (forall x :e A, h x :e B :*: C) -> P (fun x :e A => h x 0) (fun x :e A => h x 1).
Admitted.

// HOL Light: pair.ml:368 / EXISTS_UNPAIR_FUN_THM   (hash md5:93177ccf6056b9a0f9a555699cb99488)
// not bridged: 
Theorem EXISTS_UNPAIR_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> set -> prop, (exists f :e B :^: A, exists g :e C :^: A, P f g) <-> exists h:set -> set, (forall x :e A, h x :e B :*: C) /\ P (fun x :e A => h x 0) (fun x :e A => h x 1).
Admitted.

// HOL Light: pair.ml:372 / EXISTS_SWAP_FUN_THM   (hash md5:9888ea217761e153767f9ad2147522e0)
// not bridged: 
Theorem EXISTS_SWAP_FUN_THM : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall P:set -> prop, (exists f :e C :^: B :^: A, P f) <-> exists f:set -> set -> set, (forall x :e B, forall y :e A, f x y :e C) /\ P (fun a :e A => fun b :e B => f b a).
Admitted.

// HOL Light: pair.ml:385 / FORALL_PAIRED_THM   (hash md5:4ec8958129e197fc37c7dc4ea0662917)
// not bridged: 
Theorem FORALL_PAIRED_THM : forall A B:set, forall P:set -> set -> prop, (forall x :e A :*: B, P (x 0) (x 1)) <-> forall x :e A, forall y :e B, P x y.
Admitted.

// HOL Light: pair.ml:390 / EXISTS_PAIRED_THM   (hash md5:caae08eeb9bd820ce8e2117bbd7f2278)
// not bridged: 
Theorem EXISTS_PAIRED_THM : forall A B:set, forall P:set -> set -> prop, (exists x :e A :*: B, P (x 0) (x 1)) <-> exists x :e A, exists y :e B, P x y.
Admitted.

// HOL Light: pair.ml:399 / FORALL_TRIPLED_THM   (hash md5:be2c51f21777a9244c328b71b60faa85)
// not bridged: 
Theorem FORALL_TRIPLED_THM : forall A B C:set, forall P:set -> set -> set -> prop, (forall x :e A :*: (B :*: C), P (x 0) (x 1 0) (x 1 1)) <-> forall x :e A, forall y :e B, forall z :e C, P x y z.
Admitted.

// HOL Light: pair.ml:404 / EXISTS_TRIPLED_THM   (hash md5:67d23f67316ca5d0139bf32a88b9fd06)
// not bridged: 
Theorem EXISTS_TRIPLED_THM : forall A B C:set, forall P:set -> set -> set -> prop, (exists x :e A :*: (B :*: C), P (x 0) (x 1 0) (x 1 1)) <-> exists x :e A, exists y :e B, exists z :e C, P x y z.
Admitted.

// HOL Light: pair.ml:413 / CHOICE_UNPAIR_THM   (hash md5:356907205f7b241cfb4829881418d86c)
// not bridged: 
Theorem CHOICE_UNPAIR_THM : forall A B:set, A <> Empty -> B <> Empty -> forall P:set -> set -> prop, choose_in (A :*: B) (fun x:set => P (x 0) (x 1)) = choose_in (A :*: B) (fun p:set => P (p 0) (p 1)).
Admitted.

// HOL Light: pair.ml:417 / CHOICE_PAIRED_THM   (hash md5:f624d3c57fe4a90f2981badf934bc650)
// not bridged: 
Theorem CHOICE_PAIRED_THM : forall A B:set, forall P:set -> set -> prop, forall Q:set -> prop, (exists x :e A, exists y :e B, P x y) /\ (forall x :e A, forall y :e B, P x y -> Q (x,y)) -> Q (choose_in (A :*: B) (fun x:set => P (x 0) (x 1))).
Admitted.

