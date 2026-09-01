// hol2mg certification module (private): shard wo of profile multivariate.
// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),
// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,
// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.

// HOL Light: Library/wo.ml:8 / SUBSET_PRED   (hash md5:8ba22a7cbd713aad5d5d70acce413110)
Theorem hlt_SUBSET_PRED : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, hl_SUBSET A P Q = 1 <-> forall x :e A, P x = 1 -> Q x = 1.
Admitted.
Theorem SUBSET_PRED_bridge : (forall A:set, A <> Empty -> forall P Q :e 2 :^: A, hl_SUBSET A P Q = 1 <-> forall x :e A, P x = 1 -> Q x = 1) -> (forall A:set, forall P Q c= A, P c= Q <-> forall x :e A, x :e P -> x :e Q).
exact (fun H__top A => (xm (A = Empty) (forall P Q c= A, P c= Q <-> forall x :e A, x :e P -> x :e Q) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P Q c= hl__u, P c= Q <-> forall x :e hl__u, x :e P -> x :e Q) (forall_Sub_Empty (fun P => forall Q c= Empty, P c= Q <-> forall x :e Empty, x :e P -> x :e Q) (forall_Sub_Empty (fun Q => Empty c= Q <-> forall x :e Empty, x :e Empty -> x :e Q) (iffI (Empty c= Empty) (forall x :e Empty, x :e Empty -> x :e Empty) (fun _ => (forall_in_Empty (fun x => x :e Empty -> x :e Empty))) (fun _ => (Subq_Empty (Empty)))))))) (fun HAne => ((imp_forall_sub (A) (fun P => forall Q :e 2 :^: A, hl_SUBSET A P Q = 1 <-> forall x :e A, P x = 1 -> Q x = 1) (fun P => forall Q c= A, P c= Q <-> forall x :e A, x :e P -> x :e Q) (fun P HPs => (imp_forall_sub (A) (fun Q => hl_SUBSET A (hl_chi A P) Q = 1 <-> forall x :e A, hl_chi A P x = 1 -> Q x = 1) (fun Q => P c= Q <-> forall x :e A, x :e P -> x :e Q) (fun Q HQs => (imp_iff (hl_SUBSET A (hl_chi A P) (hl_chi A Q) = 1) (P c= Q) (forall x :e A, hl_chi A P x = 1 -> hl_chi A Q x = 1) (forall x :e A, x :e P -> x :e Q) (iffEL (hl_SUBSET A (hl_chi A P) (hl_chi A Q) = 1) (P c= Q) ((hl_rep_chi (A) Q HQs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A P) (hl_chi A Q) = 1 <-> P c= hl__u) ((hl_rep_chi (A) P HPs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A P) (hl_chi A Q) = 1 <-> hl__u c= hl_rep A (hl_chi A Q)) ((hl_SUBSET_compat) (A) HAne (hl_chi A P) (hl_chi_Pi (A) P) (hl_chi A Q) (hl_chi_Pi (A) Q))))) (iffER (hl_SUBSET A (hl_chi A P) (hl_chi A Q) = 1) (P c= Q) ((hl_rep_chi (A) Q HQs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A P) (hl_chi A Q) = 1 <-> P c= hl__u) ((hl_rep_chi (A) P HPs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A P) (hl_chi A Q) = 1 <-> hl__u c= hl_rep A (hl_chi A Q)) ((hl_SUBSET_compat) (A) HAne (hl_chi A P) (hl_chi_Pi (A) P) (hl_chi A Q) (hl_chi_Pi (A) Q))))) (imp_forall_in (A) (fun x => hl_chi A P x = 1 -> hl_chi A Q x = 1) (fun x => x :e P -> x :e Q) (fun x Hx => (fun H__L : ((hl_chi A P x = 1) -> (hl_chi A Q x = 1)) => fun H__hyp5 : (x :e P) => (iffEL (hl_chi A Q x = 1) (x :e Q) ((hl_rep_chi (A) Q HQs) (fun hl__u hl__v => hl_chi A Q x = 1 <-> x :e hl__u) (hl_rep_iff (A) (hl_chi A Q) (x) Hx))) (H__L ((iffER (hl_chi A P x = 1) (x :e P) ((hl_rep_chi (A) P HPs) (fun hl__u hl__v => hl_chi A P x = 1 <-> x :e hl__u) (hl_rep_iff (A) (hl_chi A P) (x) Hx))) H__hyp5))))) (imp_forall_in (A) (fun x => x :e P -> x :e Q) (fun x => hl_chi A P x = 1 -> hl_chi A Q x = 1) (fun x Hx => (fun H__N : ((x :e P) -> (x :e Q)) => fun H__hyp3 : (hl_chi A P x = 1) => (iffER (hl_chi A Q x = 1) (x :e Q) ((hl_rep_chi (A) Q HQs) (fun hl__u hl__v => hl_chi A Q x = 1 <-> x :e hl__u) (hl_rep_iff (A) (hl_chi A Q) (x) Hx))) (H__N ((iffEL (hl_chi A P x = 1) (x :e P) ((hl_rep_chi (A) P HPs) (fun hl__u hl__v => hl_chi A P x = 1 <-> x :e hl__u) (hl_rep_iff (A) (hl_chi A P) (x) Hx))) H__hyp3)))))))))) (H__top A HAne))))).
Qed.
Theorem SUBSET_PRED : forall A:set, forall P Q c= A, P c= Q <-> forall x :e A, x :e P -> x :e Q.
exact (SUBSET_PRED_bridge hlt_SUBSET_PRED).
Admitted.

// HOL Light: Library/wo.ml:12 / UNIONS_PRED   (hash md5:76b0e0d615789ff56e8e2da69931509c)
Theorem hlt_UNIONS_PRED : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNIONS A P = fun x :e A => if exists p :e 2 :^: A, P p = 1 /\ p x = 1 then 1 else 0.
Admitted.
Theorem UNIONS_PRED_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNIONS A P = fun x :e A => if exists p :e 2 :^: A, P p = 1 /\ p x = 1 then 1 else 0) -> (forall A:set, forall P c= Power A, forall x :e A, x :e Union P <-> exists p c= A, p :e P /\ x :e p).
exact (fun H__top A => (xm (A = Empty) (forall P c= Power A, forall x :e A, x :e Union P <-> exists p c= A, p :e P /\ x :e p) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall P c= Power hl__u, forall x :e hl__u, x :e Union P <-> exists p c= hl__u, p :e P /\ x :e p) (fun P HP => (forall_in_Empty (fun x => x :e Union P <-> exists p c= Empty, p :e P /\ x :e p))))) (fun HAne => ((imp_forall_sub2 (A) (fun P => hl_UNIONS A P = fun x :e A => if exists p :e 2 :^: A, P p = 1 /\ p x = 1 then 1 else 0) (fun P => forall x :e A, x :e Union P <-> exists p c= A, p :e P /\ x :e p) (fun P HPs => (imp_trans (hl_UNIONS A (hl_chi2 A P) = fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) (forall x :e A, hl_UNIONS A (hl_chi2 A P) x = 1 <-> exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1) (forall x :e A, x :e Union P <-> exists p c= A, p :e P /\ x :e p) (imp_trans (hl_UNIONS A (hl_chi2 A P) = fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) (forall hl__pw :e (A), (hl_UNIONS A (hl_chi2 A P)) hl__pw = 1 <-> (fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) hl__pw = 1) (forall x :e A, hl_UNIONS A (hl_chi2 A P) x = 1 <-> exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1) (iffEL (hl_UNIONS A (hl_chi2 A P) = fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) (forall hl__pw :e (A), (hl_UNIONS A (hl_chi2 A P)) hl__pw = 1 <-> (fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) hl__pw = 1) (eq_Pi_pointwise_bool (A) (hl_UNIONS A (hl_chi2 A P)) (fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) (setexp_ap (2 :^: (2 :^: A)) (2 :^: A) (hl_UNIONS A) ((hl_UNIONS_in) (A) HAne) (hl_chi2 A P) (hl_chi2_Pi (A) P)) (lam_Pi (A) (fun _ => 2) (fun x => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) (fun x Hx => (If_in_2 (exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1)))))) (iffEL (forall hl__pw :e (A), (hl_UNIONS A (hl_chi2 A P)) hl__pw = 1 <-> (fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) hl__pw = 1) (forall x :e A, hl_UNIONS A (hl_chi2 A P) x = 1 <-> exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1) (pw_app_conv_bool (A) (hl_UNIONS A (hl_chi2 A P)) (fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) (fun x:set => (hl_UNIONS A (hl_chi2 A P)) x = 1) (fun x:set => exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1) (fun x Hx => (iff_refl ((hl_UNIONS A (hl_chi2 A P)) x = 1))) (fun x Hx => (iff_eq1_l ((fun x :e A => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) x) (if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) (beta (A) (fun x => if exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1 then 1 else 0) x Hx) (exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1) (If_1_iff (exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1))))))) (imp_forall_in (A) (fun x => hl_UNIONS A (hl_chi2 A P) x = 1 <-> exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1) (fun x => x :e Union P <-> exists p c= A, p :e P /\ x :e p) (fun x Hx => (imp_iff (hl_UNIONS A (hl_chi2 A P) x = 1) (x :e Union P) (exists p :e 2 :^: A, hl_chi2 A P p = 1 /\ p x = 1) (exists p c= A, p :e P /\ x :e p) (iffEL (hl_UNIONS A (hl_chi2 A P) x = 1) (x :e Union P) (iff_trans ((hl_UNIONS A (hl_chi2 A P) x) = 1) ((x) :e hl_rep (A) (hl_UNIONS A (hl_chi2 A P))) ((x) :e (Union P)) (rep_mem_iff (A) (hl_UNIONS A (hl_chi2 A P)) (x) Hx) (((hl_rep2_chi2 (A) P HPs) (fun hl__u hl__v => hl_rep A (hl_UNIONS A (hl_chi2 A P)) = Union hl__u) ((hl_UNIONS_compat) (A) HAne (hl_chi2 A P) (hl_chi2_Pi (A) P))) (fun hl__u hl__v => ((x) :e hl_rep (A) (hl_UNIONS A (hl_chi2 A P))) <-> ((x) :e hl__u)) (iff_refl ((x) :e hl_rep (A) (hl_UNIONS A (hl_chi2 A P))))))) (iffER (hl_UNIONS A (hl_chi2 A P) x = 1) (x :e Union P) (iff_trans ((hl_UNIONS A (hl_chi2 A P) x) = 1) ((x) :e hl_rep (A) (hl_UNIONS A (hl_chi2 A P))) ((x) :e (Union P)) (rep_mem_iff (A) (hl_UNIONS A (hl_chi2 A P)) (x) Hx) (((hl_rep2_chi2 (A) P HPs) (fun hl__u hl__v => hl_rep A (hl_UNIONS A (hl_chi2 A P)) = Union hl__u) ((hl_UNIONS_compat) (A) HAne (hl_chi2 A P) (hl_chi2_Pi (A) P))) (fun hl__u hl__v => ((x) :e hl_rep (A) (hl_UNIONS A (hl_chi2 A P))) <-> ((x) :e hl__u)) (iff_refl ((x) :e hl_rep (A) (hl_UNIONS A (hl_chi2 A P))))))) (imp_exists_sub (A) (fun p => hl_chi2 A P p = 1 /\ p x = 1) (fun p => p :e P /\ x :e p) (fun p Hp => (imp_and_dep (hl_chi2 A P p = 1) (hl_rep A p :e P) (p x = 1) (x :e hl_rep A p) (iffEL (hl_chi2 A P p = 1) (hl_rep A p :e P) ((hl_rep2_chi2 (A) P HPs) (fun hl__u hl__v => hl_chi2 A P p = 1 <-> hl_rep A p :e hl__u) (iff_trans (hl_chi2 A P p = 1) (p :e hl_rep (2 :^: A) (hl_chi2 A P)) (hl_rep A p :e hl_rep2 A (hl_chi2 A P)) (hl_rep_iff (2 :^: A) (hl_chi2 A P) (p) Hp) (mem_rep2_iff (A) (p) Hp (hl_chi2 A P))))) (fun H__and8 : (hl_rep A p :e P) => (iffEL (p x = 1) (x :e hl_rep A p) (hl_rep_iff (A) (p) (x) Hx)))))) (imp_exists_sub_rev (A) (fun p => hl_chi2 A P p = 1 /\ p x = 1) (fun p => p :e P /\ x :e p) (fun p Hps => (imp_and_dep_bwd (hl_chi2 A P (hl_chi A p) = 1) (p :e P) (hl_chi A p x = 1) (x :e p) (iffER (hl_chi2 A P (hl_chi A p) = 1) (p :e P) ((hl_rep2_chi2 (A) P HPs) (fun hl__u hl__v => hl_chi2 A P (hl_chi A p) = 1 <-> p :e hl__u) ((hl_rep_chi (A) p Hps) (fun hl__u hl__v => hl_chi2 A P (hl_chi A p) = 1 <-> hl__u :e hl_rep2 A (hl_chi2 A P)) (iff_trans (hl_chi2 A P (hl_chi A p) = 1) (hl_chi A p :e hl_rep (2 :^: A) (hl_chi2 A P)) (hl_rep A (hl_chi A p) :e hl_rep2 A (hl_chi2 A P)) (hl_rep_iff (2 :^: A) (hl_chi2 A P) (hl_chi A p) (hl_chi_Pi (A) p)) (mem_rep2_iff (A) (hl_chi A p) (hl_chi_Pi (A) p) (hl_chi2 A P)))))) (fun H__and6 : (p :e P) => (iffER (hl_chi A p x = 1) (x :e p) ((hl_rep_chi (A) p Hps) (fun hl__u hl__v => hl_chi A p x = 1 <-> x :e hl__u) (hl_rep_iff (A) (hl_chi A p) (x) Hx))))))))))))) (H__top A HAne))))).
Qed.
Theorem UNIONS_PRED : forall A:set, forall P c= Power A, forall x :e A, x :e Union P <-> exists p c= A, p :e P /\ x :e p.
exact (UNIONS_PRED_bridge hlt_UNIONS_PRED).
Admitted.

// HOL Light: Library/wo.ml:24 / fld   (hash md5:05cbc28a42bdeb921b2fdcb584c903de)
// not bridged: 
Theorem fld : forall A:set, A <> Empty -> forall R0:set -> set -> prop, fld_on A R0 = {x :e A | exists y :e A, R0 x y \/ R0 y x}.
Admitted.

// HOL Light: Library/wo.ml:27 / IN_FLD   (hash md5:b7e0757cca232f0b4ebf0e60af3eef93)
// not bridged: 
Theorem IN_FLD : forall A:set, forall l:set -> set -> prop, forall x :e A, x :e fld_on A l <-> exists y :e A, l x y \/ l y x.
Admitted.

// HOL Light: Library/wo.ml:31 / FLD_EQ_EMPTY   (hash md5:aaf910957b6b09c65374a02e5b9d320d)
// not bridged: 
Theorem FLD_EQ_EMPTY : forall A:set, A <> Empty -> forall R0:set -> set -> prop, fld_on A R0 = Empty <-> forall x y :e A, R0 x y <-> False.
Admitted.

// HOL Light: Library/wo.ml:36 / FLD_SUBSET   (hash md5:5fd68fe08477611bacf887c6e449e55f)
// not bridged: 
Theorem FLD_SUBSET : forall A:set, A <> Empty -> forall l r:set -> set -> prop, (forall x y :e A, l x y -> r x y) -> fld_on A l c= fld_on A r.
Admitted.

// HOL Light: Library/wo.ml:40 / FINITE_FLD   (hash md5:221c67af184a6d41d9fc94d81701828e)
// not bridged: 
Theorem FINITE_FLD : forall A:set, A <> Empty -> forall l:set -> set -> prop, finite (fld_on A l) <-> finite (\/_ x :e A, {(x,y) | y :e A, l x y}).
Admitted.

// HOL Light: Library/wo.ml:57 / qoset   (hash md5:71b84b246a2d26c304786d4ba7eb8402)
// not bridged: 
Theorem qoset : forall A:set, A <> Empty -> forall l:set -> set -> prop, qoset_on A l <-> (forall x :e A, x :e fld_on A l -> l x x) /\ forall x y z :e A, l x y /\ l y z -> l x z.
Admitted.

// HOL Light: Library/wo.ml:62 / poset   (hash md5:9eb9d00f49d57ef5bb24ac0ebb94be43)
// not bridged: 
Theorem poset : forall A:set, A <> Empty -> forall l:set -> set -> prop, poset_on A l <-> (forall x :e A, x :e fld_on A l -> l x x) /\ ((forall x y z :e A, l x y /\ l y z -> l x z) /\ forall x y :e A, l x y /\ l y x -> x = y).
Admitted.

// HOL Light: Library/wo.ml:68 / toset   (hash md5:247e77fb34d4f233ee042dd6057a5c01)
// not bridged: 
Theorem toset : forall A:set, A <> Empty -> forall l:set -> set -> prop, toset_on A l <-> (forall x :e A, x :e fld_on A l -> l x x) /\ ((forall x y z :e A, l x y /\ l y z -> l x z) /\ ((forall x y :e A, l x y /\ l y x -> x = y) /\ forall x y :e A, x :e fld_on A l /\ y :e fld_on A l -> l x y \/ l y x)).
Admitted.

// HOL Light: Library/wo.ml:75 / woset   (hash md5:7ca08e068575f7cb42f7096e9243b98a)
// not bridged: 
Theorem woset : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l <-> (forall x :e A, x :e fld_on A l -> l x x) /\ ((forall x y z :e A, l x y /\ l y z -> l x z) /\ ((forall x y :e A, l x y /\ l y x -> x = y) /\ ((forall x y :e A, x :e fld_on A l /\ y :e fld_on A l -> l x y \/ l y x) /\ forall s c= A, s c= fld_on A l /\ ~ s = Empty -> exists x :e A, x :e s /\ forall y :e A, y :e s -> l x y))).
Admitted.

// HOL Light: Library/wo.ml:84 / wqoset   (hash md5:4c1e76d7becc4454e8837e1f862ad260)
// not bridged: 
Theorem wqoset : forall A:set, A <> Empty -> forall l:set -> set -> prop, wqoset_on A l <-> (forall x :e A, x :e fld_on A l -> l x x) /\ ((forall x y z :e A, l x y /\ l y z -> l x z) /\ forall s c= A, s c= fld_on A l -> exists t c= A, finite t /\ (t c= s /\ forall y :e A, y :e s -> exists x :e A, x :e t /\ l x y)).
Admitted.

// HOL Light: Library/wo.ml:96 / chain   (hash md5:b0e50a83eb9ef23acfd8fbc65fe135c9)
// not bridged: 
Theorem chain : forall A:set, A <> Empty -> forall s c= A, forall l:set -> set -> prop, chain_on A l s <-> forall x y :e A, x :e s /\ y :e s -> l x y \/ l y x.
Admitted.

// HOL Light: Library/wo.ml:100 / antichain   (hash md5:9f8c1e2777f09734697f2b6f67754eeb)
// not bridged: 
Theorem antichain : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall s c= A, antichain_on A l s <-> s c= fld_on A l /\ forall x y :e s, x <> y -> ~ l x y.
Admitted.

// HOL Light: Library/wo.ml:104 / CHAIN   (hash md5:ced623fd7f75aea6e88768123010e4e0)
// not bridged: 
Theorem CHAIN : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall s c= A, chain_on A l s <-> s c= fld_on A l /\ forall x y :e A, x :e s /\ y :e s -> l x y \/ l y x.
Admitted.

// HOL Light: Library/wo.ml:111 / ANTICHAIN   (hash md5:10acd9b2f6228aa46bbcc5ccc7335891)
// not bridged: 
Theorem ANTICHAIN : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall s c= A, antichain_on A l s <-> s c= fld_on A l /\ forall x y :e A, x :e s /\ (y :e s /\ ~ x = y) -> ~ l x y.
Admitted.

// HOL Light: Library/wo.ml:118 / CHAIN_SUBSET   (hash md5:0e132e0e962bf13bad20814aecba4159)
// not bridged: 
Theorem CHAIN_SUBSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall s t c= A, chain_on A l s /\ t c= s -> chain_on A l t.
Admitted.

// HOL Light: Library/wo.ml:122 / ANTICHAIN_SUBSET   (hash md5:d8f6358187463e5150715b1f4afc280f)
// not bridged: 
Theorem ANTICHAIN_SUBSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall s t c= A, antichain_on A l s /\ t c= s -> antichain_on A l t.
Admitted.

// HOL Light: Library/wo.ml:130 / QOSET_REFL   (hash md5:e47d08b3a81af4c7de8168277dbd9f45)
// not bridged: 
Theorem QOSET_REFL : forall A:set, forall l:set -> set -> prop, qoset_on A l -> forall x :e A, x :e fld_on A l -> l x x.
Admitted.

// HOL Light: Library/wo.ml:134 / QOSET_TRANS   (hash md5:59e66d77f9a27a72715f9b5a655c50a9)
// not bridged: 
Theorem QOSET_TRANS : forall A:set, forall l:set -> set -> prop, qoset_on A l -> forall x y z :e A, l x y /\ l y z -> l x z.
Admitted.

// HOL Light: Library/wo.ml:138 / QOSET_REFL_EQ   (hash md5:a33e1eef0e289fec4806db389451a507)
// not bridged: 
Theorem QOSET_REFL_EQ : forall A:set, forall l:set -> set -> prop, forall x :e A, qoset_on A l -> (l x x <-> x :e fld_on A l).
Admitted.

// HOL Light: Library/wo.ml:142 / QOSET_FLDEQ   (hash md5:3398479f25cc5df7192f7b36a348fe1c)
// not bridged: 
Theorem QOSET_FLDEQ : forall A:set, forall l:set -> set -> prop, qoset_on A l -> forall x :e A, x :e fld_on A l <-> l x x.
Admitted.

// HOL Light: Library/wo.ml:146 / QOSET_FLD   (hash md5:0f940de64151196c1df0e80063856fbb)
// not bridged: 
Theorem QOSET_FLD : forall A:set, A <> Empty -> forall l:set -> set -> prop, qoset_on A l -> fld_on A l = {x :e A | l x x}.
Admitted.

// HOL Light: Library/wo.ml:150 / WOSET_IMP_TOSET   (hash md5:772f445e944d0df1930762c8a66f6455)
// not bridged: 
Theorem WOSET_IMP_TOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l -> toset_on A l.
Admitted.

// HOL Light: Library/wo.ml:155 / WOSET_IMP_POSET   (hash md5:7de086e012dec60c43c3972871d8d8de)
// not bridged: 
Theorem WOSET_IMP_POSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l -> poset_on A l.
Admitted.

// HOL Light: Library/wo.ml:160 / WOSET_IMP_QOSET   (hash md5:80c44d1adc79655f50651652a1294e0e)
// not bridged: 
Theorem WOSET_IMP_QOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l -> qoset_on A l.
Admitted.

// HOL Light: Library/wo.ml:165 / TOSET_IMP_POSET   (hash md5:a22e5bac08147216cd26852ad1476fc7)
// not bridged: 
Theorem TOSET_IMP_POSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, toset_on A l -> poset_on A l.
Admitted.

// HOL Light: Library/wo.ml:170 / TOSET_IMP_QOSET   (hash md5:c1a85dbd96c3ea7ef5346b1a31ce210c)
// not bridged: 
Theorem TOSET_IMP_QOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, toset_on A l -> qoset_on A l.
Admitted.

// HOL Light: Library/wo.ml:175 / POSET_IMP_QOSET   (hash md5:f32662a49cd9099be101ec0becbaff85)
// not bridged: 
Theorem POSET_IMP_QOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, poset_on A l -> qoset_on A l.
Admitted.

// HOL Light: Library/wo.ml:180 / WQOSET_IMP_QOSET   (hash md5:07de6333a63bdd261c234e6ef8ea7a04)
// not bridged: 
Theorem WQOSET_IMP_QOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, wqoset_on A l -> qoset_on A l.
Admitted.

// HOL Light: Library/wo.ml:189 / strictly   (hash md5:7fd6a43b1219fa509fad794c6203e7da)
// not bridged: 
Theorem strictly : forall A:set, forall R0:set -> set -> prop, forall x y :e A, strictly_rel R0 x y <-> R0 x y /\ ~ R0 y x.
Admitted.

// HOL Light: Library/wo.ml:192 / properly   (hash md5:471424611c00fd9f70f39fdfc1b1f077)
// not bridged: 
Theorem properly : forall A:set, forall R0:set -> set -> prop, forall x y :e A, properly_rel R0 x y <-> R0 x y /\ ~ x = y.
Admitted.

// HOL Light: Library/wo.ml:195 / PROPERLY_EQ_STRICTLY   (hash md5:d9353b1d1c2f8c10f220f7d20cbef382)
// not bridged: 
Theorem PROPERLY_EQ_STRICTLY : forall A:set, forall l:set -> set -> prop, poset_on A l -> forall x x0 :e A, properly_rel l x x0 <-> strictly_rel l x x0.
Admitted.

// HOL Light: Library/wo.ml:199 / STRICTLY_EQ_PROPERLY   (hash md5:369a99bfa9fdd81f48cc5061404de03e)
// not bridged: 
Theorem STRICTLY_EQ_PROPERLY : forall A:set, forall l:set -> set -> prop, poset_on A l -> forall x x0 :e A, strictly_rel l x x0 <-> properly_rel l x x0.
Admitted.

// HOL Light: Library/wo.ml:203 / STRICTLY_IMP_PROPERLY   (hash md5:c9fbb0e0a327c7b461afe4a0af0865c7)
// not bridged: 
Theorem STRICTLY_IMP_PROPERLY : forall A:set, forall l:set -> set -> prop, forall x y :e A, qoset_on A l /\ strictly_rel l x y -> properly_rel l x y.
Admitted.

// HOL Light: Library/wo.ml:207 / STRICTLY_STRICTLY   (hash md5:f9547be852e5a0b728ab5d8f1935916d)
// not bridged: 
Theorem STRICTLY_STRICTLY : forall A:set, forall R0:set -> set -> prop, forall x x0 :e A, strictly_rel (strictly_rel R0) x x0 <-> strictly_rel R0 x x0.
Admitted.

// HOL Light: Library/wo.ml:211 / PROPERLY_PROPERLY   (hash md5:61ad58407ba3f9753727f123f68e3510)
// not bridged: 
Theorem PROPERLY_PROPERLY : forall A:set, forall R0:set -> set -> prop, forall x x0 :e A, properly_rel (properly_rel R0) x x0 <-> properly_rel R0 x x0.
Admitted.

// HOL Light: Library/wo.ml:215 / STRICTLY_PROPERLY   (hash md5:3c6df8b103dbbcc39f26af3755e0b55c)
// not bridged: 
Theorem STRICTLY_PROPERLY : forall A:set, forall R0:set -> set -> prop, forall x x0 :e A, strictly_rel (properly_rel R0) x x0 <-> strictly_rel R0 x x0.
Admitted.

// HOL Light: Library/wo.ml:219 / PROPERLY_STRICTLY   (hash md5:e325505c6e750e97d46c0e6f35a5480f)
// not bridged: 
Theorem PROPERLY_STRICTLY : forall A:set, forall R0:set -> set -> prop, forall x x0 :e A, properly_rel (strictly_rel R0) x x0 <-> strictly_rel R0 x x0.
Admitted.

// HOL Light: Library/wo.ml:223 / PROPERLY_MONO   (hash md5:427576436c7f140d8823e13c67cd4b61)
// not bridged: 
Theorem PROPERLY_MONO : forall A:set, forall R0 S:set -> set -> prop, (forall x y :e A, R0 x y -> S x y) -> forall x y :e A, properly_rel R0 x y -> properly_rel S x y.
Admitted.

// HOL Light: Library/wo.ml:232 / POSET_QOSET   (hash md5:7fb0d02f99804de6e5b1ea2bf629ecd3)
// not bridged: 
Theorem POSET_QOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, poset_on A l <-> qoset_on A l /\ forall x y :e A, l x y /\ l y x -> x = y.
Admitted.

// HOL Light: Library/wo.ml:237 / TOSET   (hash md5:7052ccadaa38677a862c810c9dea09c9)
// not bridged: 
Theorem TOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, toset_on A l <-> (forall x y z :e A, l x y /\ l y z -> l x z) /\ ((forall x y :e A, l x y /\ l y x -> x = y) /\ forall x y :e A, x :e fld_on A l /\ y :e fld_on A l -> l x y \/ l y x).
Admitted.

// HOL Light: Library/wo.ml:245 / TOSET_POSET   (hash md5:f944fea9c28e87de1d6d8d61df0547dc)
// not bridged: 
Theorem TOSET_POSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, toset_on A l <-> poset_on A l /\ forall x y :e A, x :e fld_on A l /\ y :e fld_on A l -> l x y \/ l y x.
Admitted.

// HOL Light: Library/wo.ml:251 / WOSET_TOSET   (hash md5:ff66d333e21c54f74b8f981f6491fb38)
// not bridged: 
Theorem WOSET_TOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l <-> toset_on A l /\ forall s c= A, s c= fld_on A l /\ ~ s = Empty -> exists x :e A, x :e s /\ forall y :e A, y :e s -> l x y.
Admitted.

// HOL Light: Library/wo.ml:258 / WQOSET   (hash md5:318ddc7b6cfbbdefd5ae8098c7804e95)
// not bridged: 
Theorem WQOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, wqoset_on A l <-> (forall x y z :e A, l x y /\ l y z -> l x z) /\ forall s c= A, s c= fld_on A l -> exists t c= A, finite t /\ (t c= s /\ forall y :e A, y :e s -> exists x :e A, x :e t /\ l x y).
Admitted.

// HOL Light: Library/wo.ml:271 / WQOSET_QOSET   (hash md5:b09b9ae0470220afdf946b45a634766b)
// not bridged: 
Theorem WQOSET_QOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, wqoset_on A l <-> qoset_on A l /\ forall s c= A, s c= fld_on A l -> exists t c= A, finite t /\ (t c= s /\ forall y :e A, y :e s -> exists x :e A, x :e t /\ l x y).
Admitted.

// HOL Light: Library/wo.ml:280 / WOSET_POSET   (hash md5:c0881d44818683f938db87a88b42e21b)
// not bridged: 
Theorem WOSET_POSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l <-> poset_on A l /\ forall s c= A, s c= fld_on A l /\ ~ s = Empty -> exists x :e A, x :e s /\ forall y :e A, y :e s -> l x y.
Admitted.

// HOL Light: Library/wo.ml:290 / WOSET   (hash md5:d64e999e22d431e12c6b41fc38941557)
// not bridged: 
Theorem WOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l <-> (forall x y :e A, l x y /\ l y x -> x = y) /\ forall s c= A, s c= fld_on A l /\ ~ s = Empty -> exists x :e A, x :e s /\ forall y :e A, y :e s -> l x y.
Admitted.

// HOL Light: Library/wo.ml:306 / WOSET_WF   (hash md5:f44c3f6be47cbe75c12f4c212c4b5984)
// not bridged: 
Theorem WOSET_WF : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l <-> (forall x y :e A, x :e fld_on A l /\ y :e fld_on A l -> l x y \/ l y x) /\ forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ properly_rel l y x.
Admitted.

// HOL Light: Library/wo.ml:325 / WOSET_IMP_WQOSET   (hash md5:cdedb124f7c24262f401170ca403c1c7)
// not bridged: 
Theorem WOSET_IMP_WQOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l -> wqoset_on A l.
Admitted.

// HOL Light: Library/wo.ml:336 / WQOSET_SUPERSET   (hash md5:d8241c2984527279c26159bf448ef068)
// not bridged: 
Theorem WQOSET_SUPERSET : forall A:set, A <> Empty -> forall l m:set -> set -> prop, wqoset_on A l /\ (qoset_on A m /\ (fld_on A m c= fld_on A l /\ (forall x y :e A, l x y -> m x y))) -> wqoset_on A m.
Admitted.

// HOL Light: Library/wo.ml:469 / WQOSET_IMP_WF   (hash md5:b79b7dad875d8a9e5c064d2e7e744576)
// not bridged: 
Theorem WQOSET_IMP_WF : forall A:set, A <> Empty -> forall l:set -> set -> prop, wqoset_on A l -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ strictly_rel l y x.
Admitted.

// HOL Light: Library/wo.ml:473 / WQOSET_WF_SUPERSET   (hash md5:73c3c9b9de7bcb4f5a0906b005e09719)
// not bridged: 
Theorem WQOSET_WF_SUPERSET : forall A:set, A <> Empty -> forall l m:set -> set -> prop, wqoset_on A l /\ (qoset_on A m /\ (fld_on A m c= fld_on A l /\ (forall x y :e A, l x y -> m x y))) -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ strictly_rel m y x.
Admitted.

// HOL Light: Library/wo.ml:479 / WQOSET_WF_SUPERSET_EQ   (hash md5:08e49357620c6342354001974ce663f7)
// not bridged: 
Theorem WQOSET_WF_SUPERSET_EQ : forall A:set, A <> Empty -> forall l:set -> set -> prop, wqoset_on A l <-> qoset_on A l /\ forall m:set -> set -> prop, qoset_on A m /\ (fld_on A m = fld_on A l /\ (forall x y :e A, l x y -> m x y)) -> forall P c= A, P <> Empty -> exists x :e P, forall y :e P, ~ strictly_rel m y x.
Admitted.

// HOL Light: Library/wo.ml:507 / WOSET_WQOSET   (hash md5:05d59a3afa1514eaa9f2f8c366e47e13)
// not bridged: 
Theorem WOSET_WQOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, woset_on A l <-> toset_on A l /\ wqoset_on A l.
Admitted.

// HOL Light: Library/wo.ml:517 / FLD_RESTRICT_QOSET   (hash md5:bf740683a95267bae46fb13ee6a54650)
// not bridged: 
Theorem FLD_RESTRICT_QOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, qoset_on A l -> fld_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)) = {x :e A | x :e fld_on A l /\ P x}.
Admitted.

// HOL Light: Library/wo.ml:522 / FLD_RESTRICT_POSET   (hash md5:5101e32d037c4b248effc6c9ab5d3bf6)
// not bridged: 
Theorem FLD_RESTRICT_POSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, poset_on A l -> fld_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)) = {x :e A | x :e fld_on A l /\ P x}.
Admitted.

// HOL Light: Library/wo.ml:527 / FLD_RESTRICT_TOSET   (hash md5:8d9f0485d0513518c505ae97d70dedd3)
// not bridged: 
Theorem FLD_RESTRICT_TOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, toset_on A l -> fld_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)) = {x :e A | x :e fld_on A l /\ P x}.
Admitted.

// HOL Light: Library/wo.ml:532 / FLD_RESTRICT_WOSET   (hash md5:6e92a8faca058073dc810b5aa799af73)
// not bridged: 
Theorem FLD_RESTRICT_WOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, woset_on A l -> fld_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)) = {x :e A | x :e fld_on A l /\ P x}.
Admitted.

// HOL Light: Library/wo.ml:537 / FLD_RESTRICT_WQOSET   (hash md5:52c8e8fc6c7d1772cd84fb21cc3950e1)
// not bridged: 
Theorem FLD_RESTRICT_WQOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, wqoset_on A l -> fld_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)) = {x :e A | x :e fld_on A l /\ P x}.
Admitted.

// HOL Light: Library/wo.ml:542 / QOSET_RESTRICT   (hash md5:c29acca750efd1e5b1c449bfdb80e013)
// not bridged: 
Theorem QOSET_RESTRICT : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, qoset_on A l -> qoset_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)).
Admitted.

// HOL Light: Library/wo.ml:546 / POSET_RESTRICT   (hash md5:fee2faa1617151d175a58e499cf24dbb)
// not bridged: 
Theorem POSET_RESTRICT : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, poset_on A l -> poset_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)).
Admitted.

// HOL Light: Library/wo.ml:550 / TOSET_RESTRICT   (hash md5:a229add69c66ba37b5ad0d7532a42acc)
// not bridged: 
Theorem TOSET_RESTRICT : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, toset_on A l -> toset_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)).
Admitted.

// HOL Light: Library/wo.ml:554 / WOSET_RESTRICT   (hash md5:1d41eeec07d4a32c9a060ce76e8c5014)
// not bridged: 
Theorem WOSET_RESTRICT : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, woset_on A l -> woset_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)).
Admitted.

// HOL Light: Library/wo.ml:560 / WQOSET_RESTRICT   (hash md5:24cddb0c3edb4863a05412fd5a492dbf)
// not bridged: 
Theorem WQOSET_RESTRICT : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall P:set -> prop, wqoset_on A l -> wqoset_on A (fun x:set => fun y:set => P x /\ (P y /\ l x y)).
Admitted.

// HOL Light: Library/wo.ml:570 / QOSET_MAX   (hash md5:e3ea435ff075003764b20620dfe35696)
// not bridged: 
Theorem QOSET_MAX : forall A:set, forall l:set -> set -> prop, forall s c= A, qoset_on A l /\ (finite s /\ (~ s = Empty /\ s c= fld_on A l)) -> exists a :e A, a :e s /\ forall x :e A, x :e s -> ~ strictly_rel l a x.
Admitted.

// HOL Light: Library/wo.ml:570 / QOSET_MIN   (hash md5:b93e2b79632773deeb32903b193b416f)
// not bridged: 
Theorem QOSET_MIN : forall A:set, forall l:set -> set -> prop, forall s c= A, qoset_on A l /\ (finite s /\ (~ s = Empty /\ s c= fld_on A l)) -> exists a :e A, a :e s /\ forall x :e A, x :e s -> ~ strictly_rel l x a.
Admitted.

// HOL Light: Library/wo.ml:589 / POSET_MAX   (hash md5:f7ea34fef0c7b00298e979b44523803e)
// not bridged: 
Theorem POSET_MAX : forall A:set, forall l:set -> set -> prop, forall s c= A, poset_on A l /\ (finite s /\ (~ s = Empty /\ s c= fld_on A l)) -> exists a :e A, a :e s /\ forall x :e A, x :e s -> ~ properly_rel l a x.
Admitted.

// HOL Light: Library/wo.ml:589 / POSET_MIN   (hash md5:01e2d6a8b27bf6c143866b9dfba36b19)
// not bridged: 
Theorem POSET_MIN : forall A:set, forall l:set -> set -> prop, forall s c= A, poset_on A l /\ (finite s /\ (~ s = Empty /\ s c= fld_on A l)) -> exists a :e A, a :e s /\ forall x :e A, x :e s -> ~ properly_rel l x a.
Admitted.

// HOL Light: Library/wo.ml:598 / TOSET_MAX   (hash md5:cb019f4c5892e957be2f9294551186f7)
// not bridged: 
Theorem TOSET_MAX : forall A:set, forall l:set -> set -> prop, forall s c= A, toset_on A l /\ (finite s /\ (~ s = Empty /\ s c= fld_on A l)) -> exists a :e A, a :e s /\ forall x :e A, x :e s -> l x a.
Admitted.

// HOL Light: Library/wo.ml:598 / TOSET_MIN   (hash md5:63576656f5bc5a0e45480a89bc68b4fe)
// not bridged: 
Theorem TOSET_MIN : forall A:set, forall l:set -> set -> prop, forall s c= A, toset_on A l /\ (finite s /\ (~ s = Empty /\ s c= fld_on A l)) -> exists a :e A, a :e s /\ forall x :e A, x :e s -> l a x.
Admitted.

// HOL Light: Library/wo.ml:616 / FLD_TRIVIAL   (hash md5:c0511ba278d3ec981a91c7716fc3e806)
// not bridged: 
Theorem FLD_TRIVIAL : forall A:set, A <> Empty -> fld_on A (fun x:set => fun y:set => False) = Empty.
Admitted.

// HOL Light: Library/wo.ml:620 / WOSET_TRIVIAL   (hash md5:c3c9d2c46e6e69f80b8f0a550f51dfb0)
// not bridged: 
Theorem WOSET_TRIVIAL : forall A:set, A <> Empty -> woset_on A (fun x:set => fun y:set => False).
Admitted.

// HOL Light: Library/wo.ml:624 / WQOSET_TRIVIAL   (hash md5:43cec25ea841b5471ecaad1449452225)
// not bridged: 
Theorem WQOSET_TRIVIAL : forall A:set, A <> Empty -> wqoset_on A (fun x:set => fun y:set => False).
Admitted.

// HOL Light: Library/wo.ml:628 / TOSET_TRIVIAL   (hash md5:a3f3051498656054591147a90bb699f4)
// not bridged: 
Theorem TOSET_TRIVIAL : forall A:set, A <> Empty -> toset_on A (fun x:set => fun y:set => False).
Admitted.

// HOL Light: Library/wo.ml:632 / POSET_TRIVIAL   (hash md5:2d7c49760f7407c9fd325c184bb86c6a)
// not bridged: 
Theorem POSET_TRIVIAL : forall A:set, A <> Empty -> poset_on A (fun x:set => fun y:set => False).
Admitted.

// HOL Light: Library/wo.ml:636 / QOSET_TRIVIAL   (hash md5:b59df533c21f7da82603468057ed081f)
// not bridged: 
Theorem QOSET_TRIVIAL : forall A:set, A <> Empty -> qoset_on A (fun x:set => fun y:set => False).
Admitted.

// HOL Light: Library/wo.ml:644 / FLD_num   (hash md5:a06461dca798c1a91b0da1af3161a5f5)
// not bridged: 
Theorem FLD_num : fld_on omega (fun x:set => fun x0:set => x <= x0) = omega.
Admitted.

// HOL Light: Library/wo.ml:648 / WOSET_num   (hash md5:ee99eafe5a0ead5cc5d9f94e4fe7a3ed)
// not bridged: 
Theorem WOSET_num : woset_on omega (fun x:set => fun x0:set => x <= x0).
Admitted.

// HOL Light: Library/wo.ml:653 / WQOSET_num   (hash md5:61f25bddf77b1b9688a4da685627f16b)
// not bridged: 
Theorem WQOSET_num : wqoset_on omega (fun x:set => fun x0:set => x <= x0).
Admitted.

// HOL Light: Library/wo.ml:657 / TOSET_num   (hash md5:9e6cf6c197a349cf8d037560a5630af4)
// not bridged: 
Theorem TOSET_num : toset_on omega (fun x:set => fun x0:set => x <= x0).
Admitted.

// HOL Light: Library/wo.ml:661 / POSET_num   (hash md5:07c23219fdaf4b52f219ef0c85cd3b7f)
// not bridged: 
Theorem POSET_num : poset_on omega (fun x:set => fun x0:set => x <= x0).
Admitted.

// HOL Light: Library/wo.ml:665 / QOSET_num   (hash md5:46a5e13bf76226872115435ba91a1b15)
// not bridged: 
Theorem QOSET_num : qoset_on omega (fun x:set => fun x0:set => x <= x0).
Admitted.

// HOL Light: Library/wo.ml:674 / QOSET_POINTWISE   (hash md5:e66c42bee36f4383b32db2459b83d9ce)
// not bridged: 
Theorem QOSET_POINTWISE : forall A K:set, A <> Empty -> K <> Empty -> forall l:set -> set -> prop, forall s c= K, qoset_on (A :^: K) (fun x:set => fun y:set => forall i :e K, i :e s -> l (x i) (y i)) <-> s = Empty \/ qoset_on A l.
Admitted.

// HOL Light: Library/wo.ml:689 / FLD_POINTWISE   (hash md5:9ef479f341313b5569b12df3bcd0076d)
// not bridged: 
Theorem FLD_POINTWISE : forall A K:set, A <> Empty -> K <> Empty -> forall l:set -> set -> prop, forall s c= K, qoset_on A l -> fld_on (A :^: K) (fun x:set => fun y:set => forall i :e K, i :e s -> l (x i) (y i)) = {x :e A :^: K | forall i :e K, i :e s -> x i :e fld_on A l}.
Admitted.

// HOL Light: Library/wo.ml:698 / WQOSET_POINTWISE   (hash md5:e0fff5f4458fff4d6456d7bf5758273e)
// not bridged: 
Theorem WQOSET_POINTWISE : forall A K:set, A <> Empty -> K <> Empty -> forall l:set -> set -> prop, forall s c= K, wqoset_on A l /\ finite s -> wqoset_on (A :^: K) (fun x:set => fun y:set => forall i :e K, i :e s -> l (x i) (y i)).
Admitted.

// HOL Light: Library/wo.ml:719 / DICKSON   (hash md5:196bd61a5962492b4642b1f9b4c5c489)
Theorem hlt_DICKSON : forall n :e omega, forall x :e omega :^: omega :^: omega, exists i j :e omega, hl_lt i j = 1 /\ forall k :e omega, hl_lt k n = 1 -> hl_le (x i k) (x j k) = 1.
Admitted.
Theorem DICKSON_bridge : (forall n :e omega, forall x :e omega :^: omega :^: omega, exists i j :e omega, hl_lt i j = 1 /\ forall k :e omega, hl_lt k n = 1 -> hl_le (x i k) (x j k) = 1) -> (forall n :e omega, forall x:set -> set -> set, (forall x0 y :e omega, x x0 y :e omega) -> exists i j :e omega, i < j /\ forall k :e omega, k < n -> x i k <= x j k).
exact (fun H__top => ((imp_forall_in (omega) (fun n => forall x :e omega :^: omega :^: omega, exists i j :e omega, hl_lt i j = 1 /\ forall k :e omega, hl_lt k n = 1 -> hl_le (x i k) (x j k) = 1) (fun n => forall x:set -> set -> set, (forall x0 y :e omega, x x0 y :e omega) -> exists i j :e omega, i < j /\ forall k :e omega, k < n -> x i k <= x j k) (fun n Hn => (imp_forall_fun2 (omega) (omega) (omega) (fun x => exists i j :e omega, hl_lt i j = 1 /\ forall k :e omega, hl_lt k n = 1 -> hl_le (x i k) (x j k) = 1) (fun x => exists i j :e omega, i < j /\ forall k :e omega, k < n -> x i k <= x j k) (fun x Hxc => (imp_exists_in (omega) (fun i => exists j :e omega, hl_lt i j = 1 /\ forall k :e omega, hl_lt k n = 1 -> hl_le (hl_lam2 omega omega x i k) (hl_lam2 omega omega x j k) = 1) (fun i => exists j :e omega, i < j /\ forall k :e omega, k < n -> x i k <= x j k) (fun i Hi => (imp_exists_in (omega) (fun j => hl_lt i j = 1 /\ forall k :e omega, hl_lt k n = 1 -> hl_le (hl_lam2 omega omega x i k) (hl_lam2 omega omega x j k) = 1) (fun j => i < j /\ forall k :e omega, k < n -> x i k <= x j k) (fun j Hj => (imp_and_dep (hl_lt i j = 1) (i < j) (forall k :e omega, hl_lt k n = 1 -> hl_le (hl_lam2 omega omega x i k) (hl_lam2 omega omega x j k) = 1) (forall k :e omega, k < n -> x i k <= x j k) (iffEL (hl_lt i j = 1) (i < j) ((hl_lt_compat) (i) Hi (j) Hj)) (fun H__and4 : (i < j) => (imp_forall_in (omega) (fun k => hl_lt k n = 1 -> hl_le (hl_lam2 omega omega x i k) (hl_lam2 omega omega x j k) = 1) (fun k => k < n -> x i k <= x j k) (fun k Hk => (fun H__L : ((hl_lt k n = 1) -> (hl_le (hl_lam2 omega omega x i k) (hl_lam2 omega omega x j k) = 1)) => fun H__hyp6 : (k < n) => (iffEL (hl_le (hl_lam2 omega omega x i k) (hl_lam2 omega omega x j k) = 1) (x i k <= x j k) (((hl_lam2_ap (omega) (omega) x) (j) Hj (k) Hk) (fun hl__u hl__v => hl_le (hl_lam2 omega omega x i k) (hl_lam2 omega omega x j k) = 1 <-> x i k <= hl__u) (((hl_lam2_ap (omega) (omega) x) (i) Hi (k) Hk) (fun hl__u hl__v => hl_le (hl_lam2 omega omega x i k) (hl_lam2 omega omega x j k) = 1 <-> hl__u <= hl_lam2 omega omega x j k) ((hl_le_compat) (hl_lam2 omega omega x i k) (setexp_ap (omega) (omega) (hl_lam2 omega omega x i) (setexp_ap (omega) (omega :^: omega) (hl_lam2 omega omega x) (hl_lam2_Pi (omega) (omega) (omega) x Hxc) (i) Hi) (k) Hk) (hl_lam2 omega omega x j k) (setexp_ap (omega) (omega) (hl_lam2 omega omega x j) (setexp_ap (omega) (omega :^: omega) (hl_lam2 omega omega x) (hl_lam2_Pi (omega) (omega) (omega) x Hxc) (j) Hj) (k) Hk))))) (H__L ((iffER (hl_lt k n = 1) (k < n) ((hl_lt_compat) (k) Hk (n) Hn)) H__hyp6))))))))))))))) H__top)).
Qed.
Theorem DICKSON : forall n :e omega, forall x:set -> set -> set, (forall x0 y :e omega, x x0 y :e omega) -> exists i j :e omega, i < j /\ forall k :e omega, k < n -> x i k <= x j k.
exact (DICKSON_bridge hlt_DICKSON).
Admitted.

// HOL Light: Library/wo.ml:735 / inseg   (hash md5:ec45008cad5d0f463cdeb19351be5fed)
// not bridged: 
Theorem inseg : forall A:set, A <> Empty -> forall m l:set -> set -> prop, inseg_on A l m <-> forall x y :e A, l x y <-> m x y /\ y :e fld_on A l.
Admitted.

// HOL Light: Library/wo.ml:738 / INSEG_ANTISYM   (hash md5:b1bf16bda0d990e823917f12f8bea480)
// not bridged: 
Theorem INSEG_ANTISYM : forall A:set, forall l m:set -> set -> prop, inseg_on A l m /\ inseg_on A m l -> forall x x0 :e A, l x x0 <-> m x x0.
Admitted.

// HOL Light: Library/wo.ml:743 / INSEG_REFL   (hash md5:6bdc7631fa6762b62fcd1b0a0ec7aef7)
// not bridged: 
Theorem INSEG_REFL : forall A:set, A <> Empty -> forall l:set -> set -> prop, inseg_on A l l.
Admitted.

// HOL Light: Library/wo.ml:747 / INSEG_TRANS   (hash md5:24e1c75db21a65ca504ea7ea6f50a097)
// not bridged: 
Theorem INSEG_TRANS : forall A:set, A <> Empty -> forall l m n:set -> set -> prop, inseg_on A l m /\ inseg_on A m n -> inseg_on A l n.
Admitted.

// HOL Light: Library/wo.ml:755 / linseg   (hash md5:9d9b99aefa0874ee4df199a5aac220c9)
// not bridged: 
Theorem linseg : forall A:set, forall l:set -> set -> prop, forall a x y :e A, linseg_rel l a x y <-> l x y /\ properly_rel l y a.
Admitted.

// HOL Light: Library/wo.ml:762 / ordinal   (hash md5:fa7a75be6559963b12c05c747e618056)
// not bridged: 
Theorem ordinal_thm : forall A:set, A <> Empty -> forall l:set -> set -> prop, ordinal_on A l <-> woset_on A l /\ forall x :e A, x :e fld_on A l -> x = choose_in A (fun y:set => ~ properly_rel l y x).
Admitted.

// HOL Light: Library/wo.ml:774 / POSET_FLDEQ   (hash md5:648b8f7f3db3aa01bf83f13865bb02c3)
// not bridged: 
Theorem POSET_FLDEQ : forall A:set, forall l:set -> set -> prop, poset_on A l -> forall x :e A, x :e fld_on A l <-> l x x.
Admitted.

// HOL Light: Library/wo.ml:783 / WOSET_FLDEQ   (hash md5:4fffb1a5d138d64b4ece26726aee2fa9)
// not bridged: 
Theorem WOSET_FLDEQ : forall A:set, forall l:set -> set -> prop, woset_on A l -> forall x :e A, x :e fld_on A l <-> l x x.
Admitted.

// HOL Light: Library/wo.ml:787 / WOSET_TRANS_LESS   (hash md5:e3ba34923f09cfa6b78dbc2d48fcf3e2)
// not bridged: 
Theorem WOSET_TRANS_LESS : forall A:set, forall l:set -> set -> prop, woset_on A l -> forall x y z :e A, properly_rel l x y /\ l y z -> properly_rel l x z.
Admitted.

// HOL Light: Library/wo.ml:796 / PAIRED_EXT   (hash md5:eb26433fd3e315716f53d94c2be6e661)
Theorem hlt_PAIRED_EXT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l m :e C :^: B :^: A, (forall x :e A, forall y :e B, l x y = m x y) <-> l = m.
Admitted.
Theorem PAIRED_EXT_bridge : (forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l m :e C :^: B :^: A, (forall x :e A, forall y :e B, l x y = m x y) <-> l = m) -> (forall A B C:set, C <> Empty -> forall l:set -> set -> set, (forall x :e A, forall y :e B, l x y :e C) -> forall m:set -> set -> set, (forall x :e A, forall y :e B, m x y :e C) -> ((forall x :e A, forall y :e B, l x y = m x y) <-> forall x :e A, forall x0 :e B, l x x0 = m x x0)).
exact (fun H__top A B C HCne => (xm (B = Empty) (forall l:set -> set -> set, (forall x :e A, forall y :e B, l x y :e C) -> forall m:set -> set -> set, (forall x :e A, forall y :e B, m x y :e C) -> ((forall x :e A, forall y :e B, l x y = m x y) <-> forall x :e A, forall x0 :e B, l x x0 = m x x0)) (fun HBe => ((eq_sym_i B Empty HBe) (fun hl__u hl__v => forall l:set -> set -> set, (forall x :e A, forall y :e hl__u, l x y :e C) -> forall m:set -> set -> set, (forall x :e A, forall y :e hl__u, m x y :e C) -> ((forall x :e A, forall y :e hl__u, l x y = m x y) <-> forall x :e A, forall x0 :e hl__u, l x x0 = m x x0)) (fun l => (fun H : forall x :e A, forall y :e Empty, l x y :e C => (fun m => (fun H : forall x :e A, forall y :e Empty, m x y :e C => (iffI (forall x :e A, forall y :e Empty, l x y = m x y) (forall x :e A, forall x0 :e Empty, l x x0 = m x x0) (fun _ => (fun x Hx => (forall_in_Empty (fun x0 => l x x0 = m x x0)))) (fun _ => (fun x Hx => (forall_in_Empty (fun y => l x y = m x y))))))))))) (fun HBne => (xm (A = Empty) (forall l:set -> set -> set, (forall x :e A, forall y :e B, l x y :e C) -> forall m:set -> set -> set, (forall x :e A, forall y :e B, m x y :e C) -> ((forall x :e A, forall y :e B, l x y = m x y) <-> forall x :e A, forall x0 :e B, l x x0 = m x x0)) (fun HAe => ((eq_sym_i A Empty HAe) (fun hl__u hl__v => forall l:set -> set -> set, (forall x :e hl__u, forall y :e B, l x y :e C) -> forall m:set -> set -> set, (forall x :e hl__u, forall y :e B, m x y :e C) -> ((forall x :e hl__u, forall y :e B, l x y = m x y) <-> forall x :e hl__u, forall x0 :e B, l x x0 = m x x0)) (fun l => (fun H : forall x :e Empty, forall y :e B, l x y :e C => (fun m => (fun H : forall x :e Empty, forall y :e B, m x y :e C => (iffI (forall x :e Empty, forall y :e B, l x y = m x y) (forall x :e Empty, forall x0 :e B, l x x0 = m x x0) (fun _ => (forall_in_Empty (fun x => forall x0 :e B, l x x0 = m x x0))) (fun _ => (forall_in_Empty (fun x => forall y :e B, l x y = m x y)))))))))) (fun HAne => ((imp_forall_fun2 (A) (B) (C) (fun l => forall m :e C :^: B :^: A, (forall x :e A, forall y :e B, l x y = m x y) <-> l = m) (fun l => forall m:set -> set -> set, (forall x :e A, forall y :e B, m x y :e C) -> ((forall x :e A, forall y :e B, l x y = m x y) <-> forall x :e A, forall x0 :e B, l x x0 = m x x0)) (fun l Hlc => (imp_forall_fun2 (A) (B) (C) (fun m => (forall x :e A, forall y :e B, hl_lam2 A B l x y = m x y) <-> hl_lam2 A B l = m) (fun m => (forall x :e A, forall y :e B, l x y = m x y) <-> forall x :e A, forall x0 :e B, l x x0 = m x x0) (fun m Hmc => (imp_iff (forall x :e A, forall y :e B, hl_lam2 A B l x y = hl_lam2 A B m x y) (forall x :e A, forall y :e B, l x y = m x y) (hl_lam2 A B l = hl_lam2 A B m) (forall x :e A, forall x0 :e B, l x x0 = m x x0) (imp_forall_in (A) (fun x => forall y :e B, hl_lam2 A B l x y = hl_lam2 A B m x y) (fun x => forall y :e B, l x y = m x y) (fun x Hx => (imp_forall_in (B) (fun y => hl_lam2 A B l x y = hl_lam2 A B m x y) (fun y => l x y = m x y) (fun y Hy => (imp_eq (hl_lam2 A B l x y) (l x y) (hl_lam2 A B m x y) (m x y) ((hl_lam2_ap (A) (B) l) (x) Hx (y) Hy) ((hl_lam2_ap (A) (B) m) (x) Hx (y) Hy)))))) (imp_forall_in (A) (fun x => forall y :e B, l x y = m x y) (fun x => forall y :e B, hl_lam2 A B l x y = hl_lam2 A B m x y) (fun x Hx => (imp_forall_in (B) (fun y => l x y = m x y) (fun y => hl_lam2 A B l x y = hl_lam2 A B m x y) (fun y Hy => (imp_eq (l x y) (hl_lam2 A B l x y) (m x y) (hl_lam2 A B m x y) (eq_sym_i (hl_lam2 A B l x y) (l x y) ((hl_lam2_ap (A) (B) l) (x) Hx (y) Hy)) (eq_sym_i (hl_lam2 A B m x y) (m x y) ((hl_lam2_ap (A) (B) m) (x) Hx (y) Hy))))))) (imp_trans (hl_lam2 A B l = hl_lam2 A B m) (forall x :e A, hl_lam2 A B l x = hl_lam2 A B m x) (forall x :e A, forall x0 :e B, l x x0 = m x x0) (iffEL (hl_lam2 A B l = hl_lam2 A B m) (forall x :e A, hl_lam2 A B l x = hl_lam2 A B m x) (eq_Pi_pointwise (A) (C :^: B) (hl_lam2 A B l) (hl_lam2 A B m) (hl_lam2_Pi (A) (B) (C) l Hlc) (hl_lam2_Pi (A) (B) (C) m Hmc))) (imp_forall_in (A) (fun x => hl_lam2 A B l x = hl_lam2 A B m x) (fun x => forall x0 :e B, l x x0 = m x x0) (fun x Hx => (imp_trans (hl_lam2 A B l x = hl_lam2 A B m x) (forall x1 :e B, hl_lam2 A B l x x1 = hl_lam2 A B m x x1) (forall x0 :e B, l x x0 = m x x0) (iffEL (hl_lam2 A B l x = hl_lam2 A B m x) (forall x1 :e B, hl_lam2 A B l x x1 = hl_lam2 A B m x x1) (eq_Pi_pointwise (B) (C) (hl_lam2 A B l x) (hl_lam2 A B m x) (setexp_ap (A) (C :^: B) (hl_lam2 A B l) (hl_lam2_Pi (A) (B) (C) l Hlc) (x) Hx) (setexp_ap (A) (C :^: B) (hl_lam2 A B m) (hl_lam2_Pi (A) (B) (C) m Hmc) (x) Hx))) (imp_forall_in (B) (fun x0 => hl_lam2 A B l x x0 = hl_lam2 A B m x x0) (fun x0 => l x x0 = m x x0) (fun x0 Hx0 => (imp_eq (hl_lam2 A B l x x0) (l x x0) (hl_lam2 A B m x x0) (m x x0) ((hl_lam2_ap (A) (B) l) (x) Hx (x0) Hx0) ((hl_lam2_ap (A) (B) m) (x) Hx (x0) Hx0)))))))) (imp_trans (forall x :e A, forall x0 :e B, l x x0 = m x x0) (forall x :e A, hl_lam2 A B l x = hl_lam2 A B m x) (hl_lam2 A B l = hl_lam2 A B m) (imp_forall_in (A) (fun x => forall x0 :e B, l x x0 = m x x0) (fun x => hl_lam2 A B l x = hl_lam2 A B m x) (fun x Hx => (imp_trans (forall x0 :e B, l x x0 = m x x0) (forall x1 :e B, hl_lam2 A B l x x1 = hl_lam2 A B m x x1) (hl_lam2 A B l x = hl_lam2 A B m x) (imp_forall_in (B) (fun x0 => l x x0 = m x x0) (fun x0 => hl_lam2 A B l x x0 = hl_lam2 A B m x x0) (fun x0 Hx0 => (imp_eq (l x x0) (hl_lam2 A B l x x0) (m x x0) (hl_lam2 A B m x x0) (eq_sym_i (hl_lam2 A B l x x0) (l x x0) ((hl_lam2_ap (A) (B) l) (x) Hx (x0) Hx0)) (eq_sym_i (hl_lam2 A B m x x0) (m x x0) ((hl_lam2_ap (A) (B) m) (x) Hx (x0) Hx0))))) (iffER (hl_lam2 A B l x = hl_lam2 A B m x) (forall x1 :e B, hl_lam2 A B l x x1 = hl_lam2 A B m x x1) (eq_Pi_pointwise (B) (C) (hl_lam2 A B l x) (hl_lam2 A B m x) (setexp_ap (A) (C :^: B) (hl_lam2 A B l) (hl_lam2_Pi (A) (B) (C) l Hlc) (x) Hx) (setexp_ap (A) (C :^: B) (hl_lam2 A B m) (hl_lam2_Pi (A) (B) (C) m Hmc) (x) Hx)))))) (iffER (hl_lam2 A B l = hl_lam2 A B m) (forall x :e A, hl_lam2 A B l x = hl_lam2 A B m x) (eq_Pi_pointwise (A) (C :^: B) (hl_lam2 A B l) (hl_lam2 A B m) (hl_lam2_Pi (A) (B) (C) l Hlc) (hl_lam2_Pi (A) (B) (C) m Hmc))))))))) (H__top A B C HAne HBne HCne))))))).
Qed.
Theorem PAIRED_EXT : forall A B C:set, C <> Empty -> forall l:set -> set -> set, (forall x :e A, forall y :e B, l x y :e C) -> forall m:set -> set -> set, (forall x :e A, forall y :e B, m x y :e C) -> ((forall x :e A, forall y :e B, l x y = m x y) <-> forall x :e A, forall x0 :e B, l x x0 = m x x0).
exact (PAIRED_EXT_bridge hlt_PAIRED_EXT).
Admitted.

// HOL Light: Library/wo.ml:800 / WOSET_TRANS_LE   (hash md5:a488999cc030a045982fc36a5b7e1fac)
// not bridged: 
Theorem WOSET_TRANS_LE : forall A:set, forall l:set -> set -> prop, woset_on A l -> forall x y z :e A, l x y /\ properly_rel l y z -> properly_rel l x z.
Admitted.

// HOL Light: Library/wo.ml:805 / WOSET_WELL_CONTRAPOS   (hash md5:e7e709030e0266e388433d3ba9e9a166)
// not bridged: 
Theorem WOSET_WELL_CONTRAPOS : forall A:set, forall l:set -> set -> prop, woset_on A l -> forall P:set -> prop, (forall x :e A, P x -> x :e fld_on A l) /\ (exists x :e A, P x) -> exists y :e A, P y /\ forall z :e A, properly_rel l z y -> ~ P z.
Admitted.

// HOL Light: Library/wo.ml:813 / WOSET_TOTAL_LE   (hash md5:1112cead581e63db2fe4d300e59dc3b3)
// not bridged: 
Theorem WOSET_TOTAL_LE : forall A:set, forall l:set -> set -> prop, woset_on A l -> forall x y :e A, x :e fld_on A l /\ y :e fld_on A l -> l x y \/ properly_rel l y x.
Admitted.

// HOL Light: Library/wo.ml:818 / WOSET_TOTAL_LT   (hash md5:784ae76bfcc92cbbfb0e136a3a5e9945)
// not bridged: 
Theorem WOSET_TOTAL_LT : forall A:set, forall l:set -> set -> prop, woset_on A l -> forall x y :e A, x :e fld_on A l /\ y :e fld_on A l -> x = y \/ (properly_rel l x y \/ properly_rel l y x).
Admitted.

// HOL Light: Library/wo.ml:824 / ORDINAL_IMP_WOSET   (hash md5:210aa6664fb9642c1aeda04e97e0f21e)
// not bridged: 
Theorem ORDINAL_IMP_WOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, ordinal_on A l -> woset_on A l.
Admitted.

// HOL Light: Library/wo.ml:828 / WOSET_FINITE_TOSET   (hash md5:2f05c68181053f28ec19a8b863573544)
// not bridged: 
Theorem WOSET_FINITE_TOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, toset_on A l /\ finite (\/_ x :e A, {(x,y) | y :e A, l x y}) -> woset_on A l.
Admitted.

// HOL Light: Library/wo.ml:849 / UNION_FLD   (hash md5:4990bf86dbb599eab72fa79450ab1093)
// not bridged: 
Theorem UNION_FLD : forall A:set, forall x :e A, forall P:set -> prop, x :e fld_on A (fun x0:set => fun y:set => exists l :e Power A :^: A, P l /\ y :e l x0) <-> exists l :e Power A :^: A, P l /\ x :e fld_on A (fun x0:set => fun x1:set => x1 :e l x0).
Admitted.

// HOL Light: Library/wo.ml:853 / UNION_INSEG   (hash md5:2ac06ebd0b1f5602c14890edd8a55f43)
// not bridged: 
Theorem UNION_INSEG : forall A:set, A <> Empty -> forall P:set -> prop, forall l:set -> set -> prop, (forall m :e Power A :^: A, P m -> inseg_on A (fun x:set => fun x0:set => x0 :e m x) l) -> inseg_on A (fun x:set => fun y:set => exists l0 :e Power A :^: A, P l0 /\ y :e l0 x) l.
Admitted.

// HOL Light: Library/wo.ml:863 / INSEG_SUBSET   (hash md5:c9b257f79c0d431ecfb1eb1c654a6586)
// not bridged: 
Theorem INSEG_SUBSET : forall A:set, forall l m:set -> set -> prop, inseg_on A m l -> forall x y :e A, m x y -> l x y.
Admitted.

// HOL Light: Library/wo.ml:867 / INSEG_SUBSET_FLD   (hash md5:bcfced3867580d613bf2e0e62f5071d5)
// not bridged: 
Theorem INSEG_SUBSET_FLD : forall A:set, forall l m:set -> set -> prop, inseg_on A m l -> forall x :e A, x :e fld_on A m -> x :e fld_on A l.
Admitted.

// HOL Light: Library/wo.ml:871 / INSEG_FLD_SUBSET   (hash md5:6d70e5a2fc1bb1b4842d94e185082467)
// not bridged: 
Theorem INSEG_FLD_SUBSET : forall A:set, A <> Empty -> forall l m:set -> set -> prop, inseg_on A l m -> fld_on A l c= fld_on A m.
Admitted.

// HOL Light: Library/wo.ml:876 / INSEG_WOSET   (hash md5:6292d36815d8c86ca0b75ea210d860fd)
// not bridged: 
Theorem INSEG_WOSET : forall A:set, A <> Empty -> forall l m:set -> set -> prop, inseg_on A m l /\ woset_on A l -> woset_on A m.
Admitted.

// HOL Light: Library/wo.ml:886 / INSEG_ORDINAL   (hash md5:9e6d79fd80e528c974f149abd6ec543c)
// not bridged: 
Theorem INSEG_ORDINAL : forall A:set, A <> Empty -> forall l m:set -> set -> prop, inseg_on A m l /\ ordinal_on A l -> ordinal_on A m.
Admitted.

// HOL Light: Library/wo.ml:901 / LINSEG_INSEG   (hash md5:86ba11a198fd3bb4494226dc7caf463b)
// not bridged: 
Theorem LINSEG_INSEG : forall A:set, forall l:set -> set -> prop, forall a :e A, woset_on A l -> inseg_on A (linseg_rel l a) l.
Admitted.

// HOL Light: Library/wo.ml:907 / LINSEG_WOSET   (hash md5:22658b944b1a589082c7affd01fa467e)
// not bridged: 
Theorem LINSEG_WOSET : forall A:set, forall l:set -> set -> prop, forall a :e A, woset_on A l -> woset_on A (linseg_rel l a).
Admitted.

// HOL Light: Library/wo.ml:911 / LINSEG_FLD   (hash md5:26f260be89c86fa54e1b627eb325a32d)
// not bridged: 
Theorem LINSEG_FLD : forall A:set, forall l:set -> set -> prop, forall a x :e A, woset_on A l -> (x :e fld_on A (linseg_rel l a) <-> properly_rel l x a).
Admitted.

// HOL Light: Library/wo.ml:920 / INSEG_PROPER_SUBSET   (hash md5:64c4f0d4203120a77efd2a77d4c2e70b)
// not bridged: 
Theorem INSEG_PROPER_SUBSET : forall A:set, forall l m:set -> set -> prop, inseg_on A m l /\ ~ (forall x x0 :e A, l x x0 <-> m x x0) -> exists x y :e A, l x y /\ ~ m x y.
Admitted.

// HOL Light: Library/wo.ml:925 / INSEG_PROPER_SUBSET_FLD   (hash md5:4bff1944fe5a4401f71604a90f66961d)
// not bridged: 
Theorem INSEG_PROPER_SUBSET_FLD : forall A:set, forall l m:set -> set -> prop, inseg_on A m l /\ ~ (forall x x0 :e A, l x x0 <-> m x x0) -> exists a :e A, a :e fld_on A l /\ ~ a :e fld_on A m.
Admitted.

// HOL Light: Library/wo.ml:930 / INSEG_LINSEG   (hash md5:93c12b1496ac2559fb252fc21627d4d6)
// not bridged: 
Theorem INSEG_LINSEG : forall A:set, A <> Empty -> forall l m:set -> set -> prop, woset_on A l -> (inseg_on A m l <-> (forall x x0 :e A, m x x0 <-> l x x0) \/ exists a :e A, a :e fld_on A l /\ forall x x0 :e A, m x x0 <-> linseg_rel l a x x0).
Admitted.

// HOL Light: Library/wo.ml:951 / EXTEND_FLD   (hash md5:d63eb049be429d4df7b14821f162a9e6)
// not bridged: 
Theorem EXTEND_FLD : forall A:set, forall a :e A, forall l:set -> set -> prop, forall x :e A, woset_on A l -> (x :e fld_on A (fun x0:set => fun y:set => l x0 y /\ l y a) <-> l x a).
Admitted.

// HOL Light: Library/wo.ml:956 / EXTEND_INSEG   (hash md5:1ccb340eeabf04857b8ca67ae1d1f1ad)
// not bridged: 
Theorem EXTEND_INSEG : forall A:set, forall l:set -> set -> prop, forall a :e A, woset_on A l /\ a :e fld_on A l -> inseg_on A (fun x:set => fun y:set => l x y /\ l y a) l.
Admitted.

// HOL Light: Library/wo.ml:961 / EXTEND_LINSEG   (hash md5:dcb7c14e30398671dce406fce6ef4d96)
// not bridged: 
Theorem EXTEND_LINSEG : forall A:set, forall l:set -> set -> prop, forall a :e A, woset_on A l /\ a :e fld_on A l -> inseg_on A (fun x:set => fun y:set => linseg_rel l a x y \/ y = a /\ (x :e fld_on A (linseg_rel l a) \/ x = a)) l.
Admitted.

// HOL Light: Library/wo.ml:976 / ORDINAL_CHAINED_LEMMA   (hash md5:30c5f43295d17aa9797001056244120f)
// not bridged: 
Theorem ORDINAL_CHAINED_LEMMA : forall A:set, forall k l m:set -> set -> prop, ordinal_on A l /\ ordinal_on A m -> inseg_on A k l /\ inseg_on A k m -> (forall x x0 :e A, k x x0 <-> l x x0) \/ ((forall x x0 :e A, k x x0 <-> m x x0) \/ exists a :e A, a :e fld_on A l /\ (a :e fld_on A m /\ ((forall x x0 :e A, k x x0 <-> linseg_rel l a x x0) /\ forall x x0 :e A, k x x0 <-> linseg_rel m a x x0))).
Admitted.

// HOL Light: Library/wo.ml:999 / ORDINAL_CHAINED   (hash md5:659fb1b25661177ba889f45f69f25b1b)
// not bridged: 
Theorem ORDINAL_CHAINED : forall A:set, A <> Empty -> forall l m:set -> set -> prop, ordinal_on A l /\ ordinal_on A m -> inseg_on A m l \/ inseg_on A l m.
Admitted.

// HOL Light: Library/wo.ml:1027 / ORDINAL_FLD_UNIQUE   (hash md5:5c7b2394013c0c4689cb19febc03d4e1)
// not bridged: 
Theorem ORDINAL_FLD_UNIQUE : forall A:set, forall l m:set -> set -> prop, ordinal_on A l /\ (ordinal_on A m /\ fld_on A l = fld_on A m) -> forall x x0 :e A, l x x0 <-> m x x0.
Admitted.

// HOL Light: Library/wo.ml:1036 / ORDINAL_FLD_SUBSET   (hash md5:4a6c0173e0981fe7b134f1911f1bfc23)
// not bridged: 
Theorem ORDINAL_FLD_SUBSET : forall A:set, A <> Empty -> forall l m:set -> set -> prop, ordinal_on A l /\ (ordinal_on A m /\ fld_on A l c= fld_on A m) -> inseg_on A l m.
Admitted.

// HOL Light: Library/wo.ml:1047 / ORDINAL_FLD_SUBSET_EQ   (hash md5:e8a281badc4f4e2fc867cef9d1f8afe9)
// not bridged: 
Theorem ORDINAL_FLD_SUBSET_EQ : forall A:set, A <> Empty -> forall l m:set -> set -> prop, ordinal_on A l /\ ordinal_on A m -> (fld_on A l c= fld_on A m <-> inseg_on A l m).
Admitted.

// HOL Light: Library/wo.ml:1056 / FLD_SUC   (hash md5:775759749d7e06f8bc68749c0b30841f)
// not bridged: 
Theorem FLD_SUC : forall A:set, forall x :e A, forall l:set -> set -> prop, forall a :e A, x :e fld_on A (fun x0:set => fun y:set => l x0 y \/ y = a /\ (x0 :e fld_on A l \/ x0 = a)) <-> x :e fld_on A l \/ x = a.
Admitted.

// HOL Light: Library/wo.ml:1064 / ORDINAL_SUC   (hash md5:666965b60e6ebc6feb7d4ed740661a31)
// not bridged: 
Theorem ORDINAL_SUC : forall A:set, forall l:set -> set -> prop, ordinal_on A l /\ (exists x :e A, ~ x :e fld_on A l) -> ordinal_on A (fun x:set => fun y:set => l x y \/ y = choose_in A (fun y0:set => ~ y0 :e fld_on A l) /\ (x :e fld_on A l \/ x = choose_in A (fun y0:set => ~ y0 :e fld_on A l))).
Admitted.

// HOL Light: Library/wo.ml:1118 / ORDINAL_UNION   (hash md5:fc99ba2e77be46b92e085ac27f7be9dd)
// not bridged: 
Theorem ORDINAL_UNION : forall A:set, A <> Empty -> forall P:set -> prop, (forall l :e Power A :^: A, P l -> ordinal_on A (fun x:set => fun x0:set => x0 :e l x)) -> ordinal_on A (fun x:set => fun y:set => exists l :e Power A :^: A, P l /\ y :e l x).
Admitted.

// HOL Light: Library/wo.ml:1199 / ORDINAL_UNION_LEMMA   (hash md5:8ce0e405ca23a3bfc16ed65719aec471)
// not bridged: 
Theorem ORDINAL_UNION_LEMMA : forall A:set, forall l:set -> set -> prop, forall x :e A, ordinal_on A l -> x :e fld_on A l -> x :e fld_on A (fun a:set => fun b:set => exists l0:set -> set -> prop, ordinal_on A l0 /\ l0 a b).
Admitted.

// HOL Light: Library/wo.ml:1205 / ORDINAL_UP   (hash md5:14985b17ab4e6255fe11f59b410e4c01)
// not bridged: 
Theorem ORDINAL_UP : forall A:set, forall l:set -> set -> prop, ordinal_on A l -> (forall x :e A, x :e fld_on A l) \/ exists m:set -> set -> prop, exists x :e A, ordinal_on A m /\ (x :e fld_on A m /\ ~ x :e fld_on A l).
Admitted.

// HOL Light: Library/wo.ml:1218 / WO_ORDINAL   (hash md5:c712b891658c517a7de1cb4fa8d7f9fa)
// not bridged: 
Theorem WO_ORDINAL : forall A:set, A <> Empty -> exists l:set -> set -> prop, ordinal_on A l /\ forall x :e A, x :e fld_on A l.
Admitted.

// HOL Light: Library/wo.ml:1233 / FLD_RESTRICT   (hash md5:ee185f4a307c3ef9ee234866ef523389)
// not bridged: 
Theorem FLD_RESTRICT : forall A:set, forall x :e A, forall l:set -> set -> prop, woset_on A l -> forall P:set -> prop, x :e fld_on A (fun x0:set => fun y:set => P x0 /\ (P y /\ l x0 y)) <-> P x /\ x :e fld_on A l.
Admitted.

// HOL Light: Library/wo.ml:1244 / WO   (hash md5:d084f5ecfcc5610f745a17526d3b00db)
// not bridged: 
Theorem WO : forall A:set, A <> Empty -> forall P:set -> prop, exists l:set -> set -> prop, woset_on A l /\ forall x :e A, x :e fld_on A l <-> P x.
Admitted.

// HOL Light: Library/wo.ml:1268 / WF_INSEG_WOSET   (hash md5:87a87349a5b5fde0223d26f5cc21c3d4)
// not bridged: 
Theorem WF_INSEG_WOSET : forall A:set, A <> Empty -> forall P c= Power A :^: A, P <> Empty -> exists x :e P, forall y :e P, ~ (woset_on A (fun x0:set => fun x1:set => x1 :e y x0) /\ (woset_on A (fun x0:set => fun x1:set => x1 :e x x0) /\ (inseg_on A (fun x0:set => fun x1:set => x1 :e y x0) (fun x0:set => fun x1:set => x1 :e x x0) /\ ~ y = x))).
Admitted.

// HOL Light: Library/wo.ml:1323 / WOSET_INSEG_ORDINAL   (hash md5:30b0a0e11a6a9b69de17fac5b0041004)
// not bridged: 
Theorem WOSET_INSEG_ORDINAL : forall A:set, A <> Empty -> woset_on (Power A :^: A) (fun x:set => fun y:set => ordinal_on A (fun x0:set => fun x1:set => x1 :e x x0) /\ (ordinal_on A (fun x0:set => fun x1:set => x1 :e y x0) /\ inseg_on A (fun x0:set => fun x1:set => x1 :e x x0) (fun x0:set => fun x1:set => x1 :e y x0))).
Admitted.

// HOL Light: Library/wo.ml:1331 / SUBWOSET_ISO_INSEG   (hash md5:3a8643a52e442769e3fc98df04935dfd)
// not bridged: 
Theorem SUBWOSET_ISO_INSEG : forall A:set, A <> Empty -> forall l:set -> set -> prop, forall s c= A, woset_on A l /\ fld_on A l = A -> exists f:set -> set, (forall x :e A, f x :e A) /\ ((forall x y :e A, x :e s /\ y :e s -> (l (f x) (f y) <-> l x y)) /\ forall x y :e A, y :e {f x | x :e s} /\ l x y -> x :e {f x | x :e s}).
Admitted.

// HOL Light: Library/wo.ml:1402 / HP   (hash md5:714008b72c59823f58c3b8a5d909e436)
// not bridged: 
Theorem HP : forall A:set, A <> Empty -> forall l:set -> set -> prop, qoset_on A l -> exists P c= A, chain_on A l P /\ forall Q c= A, chain_on A l Q /\ P c= Q -> Q = P.
Admitted.

// HOL Light: Library/wo.ml:1493 / ZL_STRONG   (hash md5:9469153be05052c416e93183437c7409)
// not bridged: 
Theorem ZL_STRONG : forall A:set, A <> Empty -> forall l:set -> set -> prop, qoset_on A l /\ (forall c c= A, chain_on A l c -> exists y :e A, y :e fld_on A l /\ forall x :e A, x :e c -> l x y) -> exists y :e A, y :e fld_on A l /\ forall x :e A, l y x -> l x y.
Admitted.

// HOL Light: Library/wo.ml:1527 / ZL   (hash md5:eb57f2b0c16a68ac1cfacfa3269e5bd7)
// not bridged: 
Theorem ZL : forall A:set, A <> Empty -> forall l:set -> set -> prop, poset_on A l /\ (forall P c= A, chain_on A l P -> exists y :e A, y :e fld_on A l /\ forall x :e A, x :e P -> l x y) -> exists y :e A, y :e fld_on A l /\ forall x :e A, l y x -> y = x.
Admitted.

// HOL Light: Library/wo.ml:1540 / KL_POSET_LEMMA   (hash md5:18765351205978a3cca1e5c10310aae6)
// not bridged: 
Theorem KL_POSET_LEMMA : forall A:set, A <> Empty -> forall C c= A, forall l:set -> set -> prop, poset_on (Power A) (fun c1:set => fun c2:set => C c= c1 /\ (c1 c= c2 /\ chain_on A l c2)).
Admitted.

// HOL Light: Library/wo.ml:1552 / KL   (hash md5:f9ba27018d285fec89ae2222daf18bf0)
// not bridged: 
Theorem KL : forall A:set, A <> Empty -> forall l:set -> set -> prop, poset_on A l -> forall C c= A, chain_on A l C -> exists P c= A, chain_on A l P /\ C c= P /\ forall R0 c= A, chain_on A l R0 /\ P c= R0 -> R0 = P.
Admitted.

// HOL Light: Library/wo.ml:1609 / POSET_RESTRICTED_SUBSET   (hash md5:b2c3ba96fbff94e20c10b73e4eff91a3)
// not bridged: 
Theorem POSET_RESTRICTED_SUBSET : forall A:set, A <> Empty -> forall P:set -> prop, poset_on (Power A) (fun x:set => fun y:set => P x /\ (P y /\ x c= y)).
Admitted.

// HOL Light: Library/wo.ml:1615 / FLD_RESTRICTED_SUBSET   (hash md5:d419a760a880c3ac96660be7459f074b)
// not bridged: 
Theorem FLD_RESTRICTED_SUBSET : forall A:set, A <> Empty -> forall P:set -> prop, forall x c= A, x :e fld_on (Power A) (fun x0:set => fun y:set => P x0 /\ (P y /\ x0 c= y)) <-> P x.
Admitted.

// HOL Light: Library/wo.ml:1620 / ZL_SUBSETS   (hash md5:f4b9b301491b34e24ed64c2947145071)
Theorem hlt_ZL_SUBSETS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> exists z :e 2 :^: A, P z = 1 /\ forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x z = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x.
Admitted.
Theorem ZL_SUBSETS_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> exists z :e 2 :^: A, P z = 1 /\ forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x z = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x) -> (forall A:set, A <> Empty -> forall P:set -> prop, (forall c c= Power A, (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> exists z c= A, P z /\ forall x c= A, x :e c -> x c= z) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x).
exact (fun H__top A HAne => ((imp_forall_pred_rep (2 :^: A) (fun hl__x:set => hl_rep (A) hl__x) (fun P => (forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> exists z :e 2 :^: A, P z = 1 /\ forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x z = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun P => (forall c c= Power A, (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> exists z c= A, P z /\ forall x c= A, x :e c -> x c= z) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x) (fun P => (fun H__L : ((forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> exists z :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) z = 1 /\ forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x z = 1) -> (exists a :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1 /\ forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x)) => fun H__hyp1 : (forall c c= Power A, (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> exists z c= A, P z /\ forall x c= A, x :e c -> x c= z) => (imp_exists_sub (A) (fun a => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1 /\ forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun a => P a /\ forall x c= A, P x /\ a c= x -> a = x) (fun a Ha => (imp_and_dep (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1) (P (hl_rep A a)) (forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (forall x c= A, P x /\ hl_rep A a c= x -> hl_rep A a = x) (iffEL (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1) (P (hl_rep A a)) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (a) Ha)) (fun H__and16 : (P (hl_rep A a)) => (imp_forall_sub (A) (fun x => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun x => P x /\ hl_rep A a c= x -> hl_rep A a = x) (fun x Hxs => (fun H__L : ((hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 /\ hl_SUBSET A a (hl_chi A x) = 1) -> (a = hl_chi A x)) => fun H__hyp18 : (P x /\ hl_rep A a c= x) => (rep_eq_fwd (A) (a) (hl_chi A x) (hl_rep A a) (x) (fun q H => H) (hl_rep_chi (A) x Hxs)) (H__L ((imp_and_dep_bwd (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) (hl_SUBSET A a (hl_chi A x) = 1) (hl_rep A a c= x) (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A x) (hl_chi_Pi (A) x)))) (fun H__and19 : (P x) => (iffER (hl_SUBSET A a (hl_chi A x) = 1) (hl_rep A a c= x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A a (hl_chi A x) = 1 <-> hl_rep A a c= hl__u) ((hl_SUBSET_compat) (A) HAne (a) Ha (hl_chi A x) (hl_chi_Pi (A) x)))))) H__hyp18))))))))) (H__L ((imp_forall_sub2_rev (A) (fun c => (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> exists z :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) z = 1 /\ forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x z = 1) (fun c => (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> exists z c= A, P z /\ forall x c= A, x :e c -> x c= z) (fun c Hc => (fun H__N : (((forall x c= A, x :e hl_rep2 A c -> P x) /\ forall x y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) -> (exists z c= A, P z /\ forall x c= A, x :e hl_rep2 A c -> x c= z)) => fun H__hyp3 : ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) => (imp_exists_sub_rev (A) (fun z => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) z = 1 /\ forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x z = 1) (fun z => P z /\ forall x c= A, x :e hl_rep2 A c -> x c= z) (fun z Hzs => (imp_and_dep_bwd (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A z) = 1) (P z) (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x (hl_chi A z) = 1) (forall x c= A, x :e hl_rep2 A c -> x c= z) (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A z) = 1) (P z) ((hl_rep_chi (A) z Hzs) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A z) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A z) (hl_chi_Pi (A) z)))) (fun H__and12 : (P z) => (imp_forall_sub_rev (A) (fun x => hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x (hl_chi A z) = 1) (fun x => x :e hl_rep2 A c -> x c= z) (fun x Hx => (fun H__N : ((hl_rep A x :e hl_rep2 A c) -> (hl_rep A x c= z)) => fun H__hyp14 : (hl_IN (2 :^: A) x c = 1) => (iffER (hl_SUBSET A x (hl_chi A z) = 1) (hl_rep A x c= z) ((hl_rep_chi (A) z Hzs) (fun hl__u hl__v => hl_SUBSET A x (hl_chi A z) = 1 <-> hl_rep A x c= hl__u) ((hl_SUBSET_compat) (A) HAne (x) Hx (hl_chi A z) (hl_chi_Pi (A) z)))) (H__N ((iffEL (hl_IN (2 :^: A) x c = 1) (hl_rep A x :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (x) Hx (c) Hc)) H__hyp14))))))))) (H__N ((imp_and_dep (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) (forall x c= A, x :e hl_rep2 A c -> P x) (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) (forall x y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (imp_forall_sub (A) (fun x => hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) (fun x => x :e hl_rep2 A c -> P x) (fun x Hxs => (fun H__L : ((hl_IN (2 :^: A) (hl_chi A x) c = 1) -> (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1)) => fun H__hyp6 : (x :e hl_rep2 A c) => (iffEL (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A x) (hl_chi_Pi (A) x)))) (H__L ((iffER (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A x) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (c) Hc))) H__hyp6))))) (fun H__and4 : (forall x c= A, x :e hl_rep2 A c -> P x) => (imp_forall_sub (A) (fun x => forall y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) (fun x => forall y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (fun x Hxs => (imp_forall_sub (A) (fun y => hl_IN (2 :^: A) (hl_chi A x) c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A (hl_chi A x) y = 1 \/ hl_SUBSET A y (hl_chi A x) = 1) (fun y => x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (fun y Hys => (fun H__L : ((hl_IN (2 :^: A) (hl_chi A x) c = 1 /\ hl_IN (2 :^: A) (hl_chi A y) c = 1) -> (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 \/ hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1)) => fun H__hyp9 : (x :e hl_rep2 A c /\ y :e hl_rep2 A c) => (imp_or (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1) (x c= y) (hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1) (y c= x) (iffEL (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1) (x c= y) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 <-> x c= hl__u) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 <-> hl__u c= hl_rep A (hl_chi A y)) ((hl_SUBSET_compat) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (hl_chi A y) (hl_chi_Pi (A) y))))) (iffEL (hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1) (y c= x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1 <-> y c= hl__u) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1 <-> hl__u c= hl_rep A (hl_chi A x)) ((hl_SUBSET_compat) (A) HAne (hl_chi A y) (hl_chi_Pi (A) y) (hl_chi A x) (hl_chi_Pi (A) x)))))) (H__L ((imp_and_dep_bwd (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) (hl_IN (2 :^: A) (hl_chi A y) c = 1) (y :e hl_rep2 A c) (iffER (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A x) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (c) Hc))) (fun H__and10 : (x :e hl_rep2 A c) => (iffER (hl_IN (2 :^: A) (hl_chi A y) c = 1) (y :e hl_rep2 A c) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A y) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A y) (hl_chi_Pi (A) y) (c) Hc))))) H__hyp9))))))))) H__hyp3))))) H__hyp1))))) (H__top A HAne))).
Qed.
Theorem ZL_SUBSETS : forall A:set, A <> Empty -> forall P:set -> prop, (forall c c= Power A, (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> exists z c= A, P z /\ forall x c= A, x :e c -> x c= z) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x.
exact (ZL_SUBSETS_bridge hlt_ZL_SUBSETS).
Admitted.

// HOL Light: Library/wo.ml:1634 / ZL_SUBSETS_UNIONS   (hash md5:0260ca1929348d3566429db044770f7d)
Theorem hlt_ZL_SUBSETS_UNIONS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> P (hl_UNIONS A c) = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x.
Admitted.
Theorem ZL_SUBSETS_UNIONS_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> P (hl_UNIONS A c) = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x) -> (forall A:set, A <> Empty -> forall P:set -> prop, (forall c c= Power A, (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> P (Union c)) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x).
exact (fun H__top A HAne => ((imp_forall_pred_rep (2 :^: A) (fun hl__x:set => hl_rep (A) hl__x) (fun P => (forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> P (hl_UNIONS A c) = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun P => (forall c c= Power A, (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> P (Union c)) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x) (fun P => (fun H__L : ((forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1) -> (exists a :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1 /\ forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x)) => fun H__hyp1 : (forall c c= Power A, (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> P (Union c)) => (imp_exists_sub (A) (fun a => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1 /\ forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun a => P a /\ forall x c= A, P x /\ a c= x -> a = x) (fun a Ha => (imp_and_dep (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1) (P (hl_rep A a)) (forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (forall x c= A, P x /\ hl_rep A a c= x -> hl_rep A a = x) (iffEL (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1) (P (hl_rep A a)) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (a) Ha)) (fun H__and12 : (P (hl_rep A a)) => (imp_forall_sub (A) (fun x => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun x => P x /\ hl_rep A a c= x -> hl_rep A a = x) (fun x Hxs => (fun H__L : ((hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 /\ hl_SUBSET A a (hl_chi A x) = 1) -> (a = hl_chi A x)) => fun H__hyp14 : (P x /\ hl_rep A a c= x) => (rep_eq_fwd (A) (a) (hl_chi A x) (hl_rep A a) (x) (fun q H => H) (hl_rep_chi (A) x Hxs)) (H__L ((imp_and_dep_bwd (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) (hl_SUBSET A a (hl_chi A x) = 1) (hl_rep A a c= x) (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A x) (hl_chi_Pi (A) x)))) (fun H__and15 : (P x) => (iffER (hl_SUBSET A a (hl_chi A x) = 1) (hl_rep A a c= x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A a (hl_chi A x) = 1 <-> hl_rep A a c= hl__u) ((hl_SUBSET_compat) (A) HAne (a) Ha (hl_chi A x) (hl_chi_Pi (A) x)))))) H__hyp14))))))))) (H__L ((imp_forall_sub2_rev (A) (fun c => (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1) (fun c => (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> P (Union c)) (fun c Hc => (fun H__N : (((forall x c= A, x :e hl_rep2 A c -> P x) /\ forall x y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) -> (P (Union (hl_rep2 A c)))) => fun H__hyp3 : ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) => (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1) (P (Union (hl_rep2 A c))) (((hl_UNIONS_compat) (A) HAne (c) Hc) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_UNIONS A c) (setexp_ap (2 :^: (2 :^: A)) (2 :^: A) (hl_UNIONS A) ((hl_UNIONS_in) (A) HAne) (c) Hc)))) (H__N ((imp_and_dep (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) (forall x c= A, x :e hl_rep2 A c -> P x) (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) (forall x y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (imp_forall_sub (A) (fun x => hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) (fun x => x :e hl_rep2 A c -> P x) (fun x Hxs => (fun H__L : ((hl_IN (2 :^: A) (hl_chi A x) c = 1) -> (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1)) => fun H__hyp6 : (x :e hl_rep2 A c) => (iffEL (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A x) (hl_chi_Pi (A) x)))) (H__L ((iffER (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A x) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (c) Hc))) H__hyp6))))) (fun H__and4 : (forall x c= A, x :e hl_rep2 A c -> P x) => (imp_forall_sub (A) (fun x => forall y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) (fun x => forall y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (fun x Hxs => (imp_forall_sub (A) (fun y => hl_IN (2 :^: A) (hl_chi A x) c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A (hl_chi A x) y = 1 \/ hl_SUBSET A y (hl_chi A x) = 1) (fun y => x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (fun y Hys => (fun H__L : ((hl_IN (2 :^: A) (hl_chi A x) c = 1 /\ hl_IN (2 :^: A) (hl_chi A y) c = 1) -> (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 \/ hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1)) => fun H__hyp9 : (x :e hl_rep2 A c /\ y :e hl_rep2 A c) => (imp_or (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1) (x c= y) (hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1) (y c= x) (iffEL (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1) (x c= y) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 <-> x c= hl__u) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 <-> hl__u c= hl_rep A (hl_chi A y)) ((hl_SUBSET_compat) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (hl_chi A y) (hl_chi_Pi (A) y))))) (iffEL (hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1) (y c= x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1 <-> y c= hl__u) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1 <-> hl__u c= hl_rep A (hl_chi A x)) ((hl_SUBSET_compat) (A) HAne (hl_chi A y) (hl_chi_Pi (A) y) (hl_chi A x) (hl_chi_Pi (A) x)))))) (H__L ((imp_and_dep_bwd (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) (hl_IN (2 :^: A) (hl_chi A y) c = 1) (y :e hl_rep2 A c) (iffER (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A x) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (c) Hc))) (fun H__and10 : (x :e hl_rep2 A c) => (iffER (hl_IN (2 :^: A) (hl_chi A y) c = 1) (y :e hl_rep2 A c) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A y) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A y) (hl_chi_Pi (A) y) (c) Hc))))) H__hyp9))))))))) H__hyp3))))) H__hyp1))))) (H__top A HAne))).
Qed.
Theorem ZL_SUBSETS_UNIONS : forall A:set, A <> Empty -> forall P:set -> prop, (forall c c= Power A, (forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x) -> P (Union c)) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x.
exact (ZL_SUBSETS_UNIONS_bridge hlt_ZL_SUBSETS_UNIONS).
Admitted.

// HOL Light: Library/wo.ml:1643 / ZL_SUBSETS_UNIONS_NONEMPTY   (hash md5:01360ec3a83d9698acd207aa6060f3ea)
Theorem hlt_ZL_SUBSETS_UNIONS_NONEMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, P x = 1) /\ (forall c :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) /\ ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1)) -> P (hl_UNIONS A c) = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x.
Admitted.
Theorem ZL_SUBSETS_UNIONS_NONEMPTY_bridge : (forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, P x = 1) /\ (forall c :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) /\ ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1)) -> P (hl_UNIONS A c) = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x) -> (forall A:set, A <> Empty -> forall P:set -> prop, (exists x c= A, P x) /\ (forall c c= Power A, (exists x c= A, x :e c) /\ ((forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x)) -> P (Union c)) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x).
exact (fun H__top A HAne => ((imp_forall_pred_rep (2 :^: A) (fun hl__x:set => hl_rep (A) hl__x) (fun P => (exists x :e 2 :^: A, P x = 1) /\ (forall c :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) /\ ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1)) -> P (hl_UNIONS A c) = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun P => (exists x c= A, P x) /\ (forall c c= Power A, (exists x c= A, x :e c) /\ ((forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x)) -> P (Union c)) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x) (fun P => (fun H__L : (((exists x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ forall c :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) /\ ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1)) -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1) -> (exists a :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1 /\ forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x)) => fun H__hyp1 : ((exists x c= A, P x) /\ forall c c= Power A, (exists x c= A, x :e c) /\ ((forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x)) -> P (Union c)) => (imp_exists_sub (A) (fun a => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1 /\ forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun a => P a /\ forall x c= A, P x /\ a c= x -> a = x) (fun a Ha => (imp_and_dep (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1) (P (hl_rep A a)) (forall x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (forall x c= A, P x /\ hl_rep A a c= x -> hl_rep A a = x) (iffEL (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) a = 1) (P (hl_rep A a)) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (a) Ha)) (fun H__and16 : (P (hl_rep A a)) => (imp_forall_sub (A) (fun x => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1 /\ hl_SUBSET A a x = 1 -> a = x) (fun x => P x /\ hl_rep A a c= x -> hl_rep A a = x) (fun x Hxs => (fun H__L : ((hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 /\ hl_SUBSET A a (hl_chi A x) = 1) -> (a = hl_chi A x)) => fun H__hyp18 : (P x /\ hl_rep A a c= x) => (rep_eq_fwd (A) (a) (hl_chi A x) (hl_rep A a) (x) (fun q H => H) (hl_rep_chi (A) x Hxs)) (H__L ((imp_and_dep_bwd (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) (hl_SUBSET A a (hl_chi A x) = 1) (hl_rep A a c= x) (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A x) (hl_chi_Pi (A) x)))) (fun H__and19 : (P x) => (iffER (hl_SUBSET A a (hl_chi A x) = 1) (hl_rep A a c= x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A a (hl_chi A x) = 1 <-> hl_rep A a c= hl__u) ((hl_SUBSET_compat) (A) HAne (a) Ha (hl_chi A x) (hl_chi_Pi (A) x)))))) H__hyp18))))))))) (H__L ((imp_and_dep_bwd (exists x :e 2 :^: A, hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) (exists x c= A, P x) (forall c :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) /\ ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1)) -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1) (forall c c= Power A, (exists x c= A, x :e c) /\ ((forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x)) -> P (Union c)) (imp_exists_sub_rev (A) (fun x => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) (fun x => P x) (fun x Hxs => (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A x) (hl_chi_Pi (A) x)))))) (fun H__and2 : (exists x c= A, P x) => (imp_forall_sub2_rev (A) (fun c => (exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) /\ ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1)) -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1) (fun c => (exists x c= A, x :e c) /\ ((forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x)) -> P (Union c)) (fun c Hc => (fun H__N : (((exists x c= A, x :e hl_rep2 A c) /\ ((forall x c= A, x :e hl_rep2 A c -> P x) /\ forall x y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x)) -> (P (Union (hl_rep2 A c)))) => fun H__hyp5 : ((exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) /\ ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1)) => (iffER (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1) (P (Union (hl_rep2 A c))) (((hl_UNIONS_compat) (A) HAne (c) Hc) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_UNIONS A c) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_UNIONS A c) (setexp_ap (2 :^: (2 :^: A)) (2 :^: A) (hl_UNIONS A) ((hl_UNIONS_in) (A) HAne) (c) Hc)))) (H__N ((imp_and_dep (exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) (exists x c= A, x :e hl_rep2 A c) ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) /\ forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) ((forall x c= A, x :e hl_rep2 A c -> P x) /\ forall x y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (imp_exists_sub (A) (fun x => hl_IN (2 :^: A) x c = 1) (fun x => x :e hl_rep2 A c) (fun x Hx => (iffEL (hl_IN (2 :^: A) x c = 1) (hl_rep A x :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (x) Hx (c) Hc)))) (fun H__and6 : (exists x c= A, x :e hl_rep2 A c) => (imp_and_dep (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) (forall x c= A, x :e hl_rep2 A c -> P x) (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) (forall x y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (imp_forall_sub (A) (fun x => hl_IN (2 :^: A) x c = 1 -> hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) x = 1) (fun x => x :e hl_rep2 A c -> P x) (fun x Hxs => (fun H__L : ((hl_IN (2 :^: A) (hl_chi A x) c = 1) -> (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1)) => fun H__hyp10 : (x :e hl_rep2 A c) => (iffEL (hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1) (P x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_chip (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x)) (hl_chi A x) = 1 <-> P hl__u) ((hl_chip_iff (2 :^: A) (fun hl__x:set => P (hl_rep A hl__x))) (hl_chi A x) (hl_chi_Pi (A) x)))) (H__L ((iffER (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A x) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (c) Hc))) H__hyp10))))) (fun H__and8 : (forall x c= A, x :e hl_rep2 A c -> P x) => (imp_forall_sub (A) (fun x => forall y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) (fun x => forall y c= A, x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (fun x Hxs => (imp_forall_sub (A) (fun y => hl_IN (2 :^: A) (hl_chi A x) c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A (hl_chi A x) y = 1 \/ hl_SUBSET A y (hl_chi A x) = 1) (fun y => x :e hl_rep2 A c /\ y :e hl_rep2 A c -> x c= y \/ y c= x) (fun y Hys => (fun H__L : ((hl_IN (2 :^: A) (hl_chi A x) c = 1 /\ hl_IN (2 :^: A) (hl_chi A y) c = 1) -> (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 \/ hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1)) => fun H__hyp13 : (x :e hl_rep2 A c /\ y :e hl_rep2 A c) => (imp_or (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1) (x c= y) (hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1) (y c= x) (iffEL (hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1) (x c= y) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 <-> x c= hl__u) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A x) (hl_chi A y) = 1 <-> hl__u c= hl_rep A (hl_chi A y)) ((hl_SUBSET_compat) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (hl_chi A y) (hl_chi_Pi (A) y))))) (iffEL (hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1) (y c= x) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1 <-> y c= hl__u) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_SUBSET A (hl_chi A y) (hl_chi A x) = 1 <-> hl__u c= hl_rep A (hl_chi A x)) ((hl_SUBSET_compat) (A) HAne (hl_chi A y) (hl_chi_Pi (A) y) (hl_chi A x) (hl_chi_Pi (A) x)))))) (H__L ((imp_and_dep_bwd (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) (hl_IN (2 :^: A) (hl_chi A y) c = 1) (y :e hl_rep2 A c) (iffER (hl_IN (2 :^: A) (hl_chi A x) c = 1) (x :e hl_rep2 A c) ((hl_rep_chi (A) x Hxs) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A x) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A x) (hl_chi_Pi (A) x) (c) Hc))) (fun H__and14 : (x :e hl_rep2 A c) => (iffER (hl_IN (2 :^: A) (hl_chi A y) c = 1) (y :e hl_rep2 A c) ((hl_rep_chi (A) y Hys) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A y) c = 1 <-> hl__u :e hl_rep2 A c) ((hl_IN_compat_pow) (A) HAne (hl_chi A y) (hl_chi_Pi (A) y) (c) Hc))))) H__hyp13))))))))))) H__hyp5))))))) H__hyp1))))) (H__top A HAne))).
Qed.
Theorem ZL_SUBSETS_UNIONS_NONEMPTY : forall A:set, A <> Empty -> forall P:set -> prop, (exists x c= A, P x) /\ (forall c c= Power A, (exists x c= A, x :e c) /\ ((forall x c= A, x :e c -> P x) /\ (forall x y c= A, x :e c /\ y :e c -> x c= y \/ y c= x)) -> P (Union c)) -> exists a c= A, P a /\ forall x c= A, P x /\ a c= x -> a = x.
exact (ZL_SUBSETS_UNIONS_NONEMPTY_bridge hlt_ZL_SUBSETS_UNIONS_NONEMPTY).
Admitted.

// HOL Light: Library/wo.ml:1660 / TUKEY   (hash md5:1b6240bacc46c577204690f5a01fabcf)
Theorem hlt_TUKEY : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), ~ s = hl_EMPTY (2 :^: A) /\ (forall t :e 2 :^: A, (forall c :e 2 :^: A, hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c s = 1) <-> hl_IN (2 :^: A) t s = 1) -> exists u :e 2 :^: A, hl_IN (2 :^: A) u s = 1 /\ forall v :e 2 :^: A, hl_IN (2 :^: A) v s = 1 /\ hl_SUBSET A u v = 1 -> u = v.
Admitted.
Theorem TUKEY_bridge : (forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), ~ s = hl_EMPTY (2 :^: A) /\ (forall t :e 2 :^: A, (forall c :e 2 :^: A, hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c s = 1) <-> hl_IN (2 :^: A) t s = 1) -> exists u :e 2 :^: A, hl_IN (2 :^: A) u s = 1 /\ forall v :e 2 :^: A, hl_IN (2 :^: A) v s = 1 /\ hl_SUBSET A u v = 1 -> u = v) -> (forall A:set, A <> Empty -> forall s c= Power A, ~ s = Empty /\ (forall t c= A, (forall c c= A, finite c /\ c c= t -> c :e s) <-> t :e s) -> exists u c= A, u :e s /\ forall v c= A, v :e s /\ u c= v -> u = v).
exact (fun H__top A HAne => ((imp_forall_sub2 (A) (fun s => ~ s = hl_EMPTY (2 :^: A) /\ (forall t :e 2 :^: A, (forall c :e 2 :^: A, hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c s = 1) <-> hl_IN (2 :^: A) t s = 1) -> exists u :e 2 :^: A, hl_IN (2 :^: A) u s = 1 /\ forall v :e 2 :^: A, hl_IN (2 :^: A) v s = 1 /\ hl_SUBSET A u v = 1 -> u = v) (fun s => ~ s = Empty /\ (forall t c= A, (forall c c= A, finite c /\ c c= t -> c :e s) <-> t :e s) -> exists u c= A, u :e s /\ forall v c= A, v :e s /\ u c= v -> u = v) (fun s Hss => (fun H__L : ((~ hl_chi2 A s = hl_EMPTY (2 :^: A) /\ forall t :e 2 :^: A, (forall c :e 2 :^: A, hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c (hl_chi2 A s) = 1) <-> hl_IN (2 :^: A) t (hl_chi2 A s) = 1) -> (exists u :e 2 :^: A, hl_IN (2 :^: A) u (hl_chi2 A s) = 1 /\ forall v :e 2 :^: A, hl_IN (2 :^: A) v (hl_chi2 A s) = 1 /\ hl_SUBSET A u v = 1 -> u = v)) => fun H__hyp1 : (~ s = Empty /\ forall t c= A, (forall c c= A, finite c /\ c c= t -> c :e s) <-> t :e s) => (imp_exists_sub (A) (fun u => hl_IN (2 :^: A) u (hl_chi2 A s) = 1 /\ forall v :e 2 :^: A, hl_IN (2 :^: A) v (hl_chi2 A s) = 1 /\ hl_SUBSET A u v = 1 -> u = v) (fun u => u :e s /\ forall v c= A, v :e s /\ u c= v -> u = v) (fun u Hu => (imp_and_dep (hl_IN (2 :^: A) u (hl_chi2 A s) = 1) (hl_rep A u :e s) (forall v :e 2 :^: A, hl_IN (2 :^: A) v (hl_chi2 A s) = 1 /\ hl_SUBSET A u v = 1 -> u = v) (forall v c= A, v :e s /\ hl_rep A u c= v -> hl_rep A u = v) (iffEL (hl_IN (2 :^: A) u (hl_chi2 A s) = 1) (hl_rep A u :e s) ((hl_rep2_chi2 (A) s Hss) (fun hl__u hl__v => hl_IN (2 :^: A) u (hl_chi2 A s) = 1 <-> hl_rep A u :e hl__u) ((hl_IN_compat_pow) (A) HAne (u) Hu (hl_chi2 A s) (hl_chi2_Pi (A) s)))) (fun H__and11 : (hl_rep A u :e s) => (imp_forall_sub (A) (fun v => hl_IN (2 :^: A) v (hl_chi2 A s) = 1 /\ hl_SUBSET A u v = 1 -> u = v) (fun v => v :e s /\ hl_rep A u c= v -> hl_rep A u = v) (fun v Hvs => (fun H__L : ((hl_IN (2 :^: A) (hl_chi A v) (hl_chi2 A s) = 1 /\ hl_SUBSET A u (hl_chi A v) = 1) -> (u = hl_chi A v)) => fun H__hyp13 : (v :e s /\ hl_rep A u c= v) => (rep_eq_fwd (A) (u) (hl_chi A v) (hl_rep A u) (v) (fun q H => H) (hl_rep_chi (A) v Hvs)) (H__L ((imp_and_dep_bwd (hl_IN (2 :^: A) (hl_chi A v) (hl_chi2 A s) = 1) (v :e s) (hl_SUBSET A u (hl_chi A v) = 1) (hl_rep A u c= v) (iffER (hl_IN (2 :^: A) (hl_chi A v) (hl_chi2 A s) = 1) (v :e s) ((hl_rep_chi (A) v Hvs) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A v) (hl_chi2 A s) = 1 <-> hl__u :e s) ((hl_rep2_chi2 (A) s Hss) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A v) (hl_chi2 A s) = 1 <-> hl_rep A (hl_chi A v) :e hl__u) ((hl_IN_compat_pow) (A) HAne (hl_chi A v) (hl_chi_Pi (A) v) (hl_chi2 A s) (hl_chi2_Pi (A) s))))) (fun H__and14 : (v :e s) => (iffER (hl_SUBSET A u (hl_chi A v) = 1) (hl_rep A u c= v) ((hl_rep_chi (A) v Hvs) (fun hl__u hl__v => hl_SUBSET A u (hl_chi A v) = 1 <-> hl_rep A u c= hl__u) ((hl_SUBSET_compat) (A) HAne (u) Hu (hl_chi A v) (hl_chi_Pi (A) v)))))) H__hyp13))))))))) (H__L ((imp_and_dep_bwd (~ hl_chi2 A s = hl_EMPTY (2 :^: A)) (~ s = Empty) (forall t :e 2 :^: A, (forall c :e 2 :^: A, hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c (hl_chi2 A s) = 1) <-> hl_IN (2 :^: A) t (hl_chi2 A s) = 1) (forall t c= A, (forall c c= A, finite c /\ c c= t -> c :e s) <-> t :e s) (imp_not (s = Empty) (hl_chi2 A s = hl_EMPTY (2 :^: A)) (rep2_eq_fwd (A) (hl_chi2 A s) (hl_EMPTY (2 :^: A)) (s) (Empty) (hl_rep2_chi2 (A) s Hss) ((hl_EMPTY_compat_pow) (A) HAne))) (fun H__and2 : (~ s = Empty) => (imp_forall_sub_rev (A) (fun t => (forall c :e 2 :^: A, hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c (hl_chi2 A s) = 1) <-> hl_IN (2 :^: A) t (hl_chi2 A s) = 1) (fun t => (forall c c= A, finite c /\ c c= t -> c :e s) <-> t :e s) (fun t Ht => (imp_iff (forall c c= A, finite c /\ c c= hl_rep A t -> c :e s) (forall c :e 2 :^: A, hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c (hl_chi2 A s) = 1) (hl_rep A t :e s) (hl_IN (2 :^: A) t (hl_chi2 A s) = 1) (imp_forall_sub_rev (A) (fun c => hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c (hl_chi2 A s) = 1) (fun c => finite c /\ c c= hl_rep A t -> c :e s) (fun c Hc => (fun H__N : ((finite (hl_rep A c) /\ hl_rep A c c= hl_rep A t) -> (hl_rep A c :e s)) => fun H__hyp8 : (hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1) => (iffER (hl_IN (2 :^: A) c (hl_chi2 A s) = 1) (hl_rep A c :e s) ((hl_rep2_chi2 (A) s Hss) (fun hl__u hl__v => hl_IN (2 :^: A) c (hl_chi2 A s) = 1 <-> hl_rep A c :e hl__u) ((hl_IN_compat_pow) (A) HAne (c) Hc (hl_chi2 A s) (hl_chi2_Pi (A) s)))) (H__N ((imp_and_dep (hl_FINITE A c = 1) (finite (hl_rep A c)) (hl_SUBSET A c t = 1) (hl_rep A c c= hl_rep A t) (iffEL (hl_FINITE A c = 1) (finite (hl_rep A c)) ((hl_FINITE_compat) (A) HAne (c) Hc)) (fun H__and9 : (finite (hl_rep A c)) => (iffEL (hl_SUBSET A c t = 1) (hl_rep A c c= hl_rep A t) ((hl_SUBSET_compat) (A) HAne (c) Hc (t) Ht)))) H__hyp8))))) (imp_forall_sub (A) (fun c => hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c (hl_chi2 A s) = 1) (fun c => finite c /\ c c= hl_rep A t -> c :e s) (fun c Hcs => (fun H__L : ((hl_FINITE A (hl_chi A c) = 1 /\ hl_SUBSET A (hl_chi A c) t = 1) -> (hl_IN (2 :^: A) (hl_chi A c) (hl_chi2 A s) = 1)) => fun H__hyp5 : (finite c /\ c c= hl_rep A t) => (iffEL (hl_IN (2 :^: A) (hl_chi A c) (hl_chi2 A s) = 1) (c :e s) ((hl_rep_chi (A) c Hcs) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A c) (hl_chi2 A s) = 1 <-> hl__u :e s) ((hl_rep2_chi2 (A) s Hss) (fun hl__u hl__v => hl_IN (2 :^: A) (hl_chi A c) (hl_chi2 A s) = 1 <-> hl_rep A (hl_chi A c) :e hl__u) ((hl_IN_compat_pow) (A) HAne (hl_chi A c) (hl_chi_Pi (A) c) (hl_chi2 A s) (hl_chi2_Pi (A) s))))) (H__L ((imp_and_dep_bwd (hl_FINITE A (hl_chi A c) = 1) (finite c) (hl_SUBSET A (hl_chi A c) t = 1) (c c= hl_rep A t) (iffER (hl_FINITE A (hl_chi A c) = 1) (finite c) ((hl_rep_chi (A) c Hcs) (fun hl__u hl__v => hl_FINITE A (hl_chi A c) = 1 <-> finite hl__u) ((hl_FINITE_compat) (A) HAne (hl_chi A c) (hl_chi_Pi (A) c)))) (fun H__and6 : (finite c) => (iffER (hl_SUBSET A (hl_chi A c) t = 1) (c c= hl_rep A t) ((hl_rep_chi (A) c Hcs) (fun hl__u hl__v => hl_SUBSET A (hl_chi A c) t = 1 <-> hl__u c= hl_rep A t) ((hl_SUBSET_compat) (A) HAne (hl_chi A c) (hl_chi_Pi (A) c) (t) Ht))))) H__hyp5))))) (iffER (hl_IN (2 :^: A) t (hl_chi2 A s) = 1) (hl_rep A t :e s) ((hl_rep2_chi2 (A) s Hss) (fun hl__u hl__v => hl_IN (2 :^: A) t (hl_chi2 A s) = 1 <-> hl_rep A t :e hl__u) ((hl_IN_compat_pow) (A) HAne (t) Ht (hl_chi2 A s) (hl_chi2_Pi (A) s)))) (iffEL (hl_IN (2 :^: A) t (hl_chi2 A s) = 1) (hl_rep A t :e s) ((hl_rep2_chi2 (A) s Hss) (fun hl__u hl__v => hl_IN (2 :^: A) t (hl_chi2 A s) = 1 <-> hl_rep A t :e hl__u) ((hl_IN_compat_pow) (A) HAne (t) Ht (hl_chi2 A s) (hl_chi2_Pi (A) s))))))))) H__hyp1))))) (H__top A HAne))).
Qed.
Theorem TUKEY : forall A:set, A <> Empty -> forall s c= Power A, ~ s = Empty /\ (forall t c= A, (forall c c= A, finite c /\ c c= t -> c :e s) <-> t :e s) -> exists u c= A, u :e s /\ forall v c= A, v :e s /\ u c= v -> u = v.
exact (TUKEY_bridge hlt_TUKEY).
Admitted.

// HOL Light: Library/wo.ml:1680 / OEP   (hash md5:cc40d9685fc3a425cb38be27052e60f7)
// not bridged: 
Theorem OEP : forall A:set, A <> Empty -> forall p:set -> set -> prop, poset_on A p -> exists t:set -> set -> prop, toset_on A t /\ (fld_on A t = fld_on A p /\ forall x y :e A, p x y -> t x y).
Admitted.

// HOL Light: Library/wo.ml:1770 / TOSET_COFINAL_WOSET   (hash md5:219b5398837b970fbd5d759442edf53d)
// not bridged: 
Theorem TOSET_COFINAL_WOSET : forall A:set, A <> Empty -> forall l:set -> set -> prop, toset_on A l -> exists w:set -> set -> prop, (forall x y :e A, w x y -> l x y) /\ (woset_on A w /\ forall x :e A, x :e fld_on A l -> exists y :e A, y :e fld_on A w /\ l x y).
Admitted.

