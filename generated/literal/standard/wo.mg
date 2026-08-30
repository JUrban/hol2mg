// hol2mg literal statements (private): shard wo of profile standard.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/wo.ml:8 / SUBSET_PRED   (hash md5:8ba22a7cbd713aad5d5d70acce413110)
Theorem hlt_SUBSET_PRED : forall A:set, A <> Empty -> forall P Q :e 2 :^: A, hl_SUBSET A P Q = 1 <-> forall x :e A, P x = 1 -> Q x = 1.
Admitted.

// HOL Light: Library/wo.ml:12 / UNIONS_PRED   (hash md5:76b0e0d615789ff56e8e2da69931509c)
Theorem hlt_UNIONS_PRED : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_UNIONS A P = fun x :e A => if exists p :e 2 :^: A, P p = 1 /\ p x = 1 then 1 else 0.
Admitted.

// HOL Light: Library/wo.ml:24 / fld   (hash md5:05cbc28a42bdeb921b2fdcb584c903de)
Theorem hlt_fld : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_fld A R1 = hl_GSPEC A (fun GEN_PVAR_452 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_452 (if exists y :e A, R1 x y = 1 \/ R1 y x = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:27 / IN_FLD   (hash md5:b7e0757cca232f0b4ebf0e60af3eef93)
Theorem hlt_IN_FLD : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall x :e A, hl_IN A x (hl_fld A l) = 1 <-> exists y :e A, l x y = 1 \/ l y x = 1.
Admitted.

// HOL Light: Library/wo.ml:31 / FLD_EQ_EMPTY   (hash md5:aaf910957b6b09c65374a02e5b9d320d)
Theorem hlt_FLD_EQ_EMPTY : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_fld A R1 = hl_EMPTY A <-> R1 = fun x :e A => fun y :e A => if False then 1 else 0.
Admitted.

// HOL Light: Library/wo.ml:36 / FLD_SUBSET   (hash md5:5fd68fe08477611bacf887c6e449e55f)
Theorem hlt_FLD_SUBSET : forall A:set, A <> Empty -> forall l r :e 2 :^: A :^: A, (forall x y :e A, l x y = 1 -> r x y = 1) -> hl_SUBSET A (hl_fld A l) (hl_fld A r) = 1.
Admitted.

// HOL Light: Library/wo.ml:40 / FINITE_FLD   (hash md5:221c67af184a6d41d9fc94d81701828e)
Theorem hlt_FINITE_FLD : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_FINITE A (hl_fld A l) = 1 <-> hl_FINITE (A :*: A) (hl_GSPEC (A :*: A) (fun GEN_PVAR_453 :e A :*: A => if exists x y :e A, hl_SETSPEC (A :*: A) GEN_PVAR_453 (l x y) (hl_pair A A x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Library/wo.ml:57 / qoset   (hash md5:71b84b246a2d26c304786d4ba7eb8402)
Theorem hlt_qoset : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_qoset A l = 1 <-> (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1.
Admitted.

// HOL Light: Library/wo.ml:62 / poset   (hash md5:9eb9d00f49d57ef5bb24ac0ebb94be43)
Theorem hlt_poset : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 <-> (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y).
Admitted.

// HOL Light: Library/wo.ml:68 / toset   (hash md5:247e77fb34d4f233ee042dd6057a5c01)
Theorem hlt_toset : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_toset A l = 1 <-> (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1)).
Admitted.

// HOL Light: Library/wo.ml:75 / woset   (hash md5:7ca08e068575f7cb42f7096e9243b98a)
Theorem hlt_woset : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 <-> (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ ((forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1))).
Admitted.

// HOL Light: Library/wo.ml:84 / wqoset   (hash md5:4c1e76d7becc4454e8837e1f862ad260)
Theorem hlt_wqoset : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> (forall x :e A, hl_IN A x (hl_fld A l) = 1 -> l x x = 1) /\ ((forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1)).
Admitted.

// HOL Light: Library/wo.ml:96 / chain   (hash md5:b0e50a83eb9ef23acfd8fbc65fe135c9)
Theorem hlt_chain : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall l :e 2 :^: A :^: A, hl_chain A l s = 1 <-> forall x y :e A, hl_IN A x s = 1 /\ hl_IN A y s = 1 -> l x y = 1 \/ l y x = 1.
Admitted.

// HOL Light: Library/wo.ml:100 / antichain   (hash md5:9f8c1e2777f09734697f2b6f67754eeb)
Theorem hlt_antichain : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_antichain A l s = 1 <-> hl_SUBSET A s (hl_fld A l) = 1 /\ hl_pairwise A (fun x :e A => fun y :e A => if ~ l x y = 1 then 1 else 0) s = 1.
Admitted.

// HOL Light: Library/wo.ml:104 / CHAIN   (hash md5:ced623fd7f75aea6e88768123010e4e0)
Theorem hlt_CHAIN : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_chain A l s = 1 <-> hl_SUBSET A s (hl_fld A l) = 1 /\ forall x y :e A, hl_IN A x s = 1 /\ hl_IN A y s = 1 -> l x y = 1 \/ l y x = 1.
Admitted.

// HOL Light: Library/wo.ml:111 / ANTICHAIN   (hash md5:10acd9b2f6228aa46bbcc5ccc7335891)
Theorem hlt_ANTICHAIN : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_antichain A l s = 1 <-> hl_SUBSET A s (hl_fld A l) = 1 /\ forall x y :e A, hl_IN A x s = 1 /\ (hl_IN A y s = 1 /\ ~ x = y) -> ~ l x y = 1.
Admitted.

// HOL Light: Library/wo.ml:118 / CHAIN_SUBSET   (hash md5:0e132e0e962bf13bad20814aecba4159)
Theorem hlt_CHAIN_SUBSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s t :e 2 :^: A, hl_chain A l s = 1 /\ hl_SUBSET A t s = 1 -> hl_chain A l t = 1.
Admitted.

// HOL Light: Library/wo.ml:122 / ANTICHAIN_SUBSET   (hash md5:d8f6358187463e5150715b1f4afc280f)
Theorem hlt_ANTICHAIN_SUBSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s t :e 2 :^: A, hl_antichain A l s = 1 /\ hl_SUBSET A t s = 1 -> hl_antichain A l t = 1.
Admitted.

// HOL Light: Library/wo.ml:130 / QOSET_REFL   (hash md5:e47d08b3a81af4c7de8168277dbd9f45)
Theorem hlt_QOSET_REFL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_qoset A l = 1 -> forall x :e A, hl_fld A l x = 1 -> l x x = 1.
Admitted.

// HOL Light: Library/wo.ml:134 / QOSET_TRANS   (hash md5:59e66d77f9a27a72715f9b5a655c50a9)
Theorem hlt_QOSET_TRANS : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_qoset A l = 1 -> forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1.
Admitted.

// HOL Light: Library/wo.ml:138 / QOSET_REFL_EQ   (hash md5:a33e1eef0e289fec4806db389451a507)
Theorem hlt_QOSET_REFL_EQ : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall x :e A, hl_qoset A l = 1 -> (l x x = 1 <-> hl_IN A x (hl_fld A l) = 1).
Admitted.

// HOL Light: Library/wo.ml:142 / QOSET_FLDEQ   (hash md5:3398479f25cc5df7192f7b36a348fe1c)
Theorem hlt_QOSET_FLDEQ : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_qoset A l = 1 -> forall x :e A, hl_fld A l x = 1 <-> l x x = 1.
Admitted.

// HOL Light: Library/wo.ml:146 / QOSET_FLD   (hash md5:0f940de64151196c1df0e80063856fbb)
Theorem hlt_QOSET_FLD : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_qoset A l = 1 -> hl_fld A l = hl_GSPEC A (fun GEN_PVAR_454 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_454 (l x x) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:150 / WOSET_IMP_TOSET   (hash md5:772f445e944d0df1930762c8a66f6455)
Theorem hlt_WOSET_IMP_TOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> hl_toset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:155 / WOSET_IMP_POSET   (hash md5:7de086e012dec60c43c3972871d8d8de)
Theorem hlt_WOSET_IMP_POSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> hl_poset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:160 / WOSET_IMP_QOSET   (hash md5:80c44d1adc79655f50651652a1294e0e)
Theorem hlt_WOSET_IMP_QOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> hl_qoset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:165 / TOSET_IMP_POSET   (hash md5:a22e5bac08147216cd26852ad1476fc7)
Theorem hlt_TOSET_IMP_POSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_toset A l = 1 -> hl_poset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:170 / TOSET_IMP_QOSET   (hash md5:c1a85dbd96c3ea7ef5346b1a31ce210c)
Theorem hlt_TOSET_IMP_QOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_toset A l = 1 -> hl_qoset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:175 / POSET_IMP_QOSET   (hash md5:f32662a49cd9099be101ec0becbaff85)
Theorem hlt_POSET_IMP_QOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> hl_qoset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:180 / WQOSET_IMP_QOSET   (hash md5:07de6333a63bdd261c234e6ef8ea7a04)
Theorem hlt_WQOSET_IMP_QOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 -> hl_qoset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:189 / strictly   (hash md5:7fd6a43b1219fa509fad794c6203e7da)
Theorem hlt_strictly : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_strictly A R1 = fun x :e A => fun y :e A => if R1 x y = 1 /\ ~ R1 y x = 1 then 1 else 0.
Admitted.

// HOL Light: Library/wo.ml:192 / properly   (hash md5:471424611c00fd9f70f39fdfc1b1f077)
Theorem hlt_properly : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_properly A R1 = fun x :e A => fun y :e A => if R1 x y = 1 /\ ~ x = y then 1 else 0.
Admitted.

// HOL Light: Library/wo.ml:195 / PROPERLY_EQ_STRICTLY   (hash md5:d9353b1d1c2f8c10f220f7d20cbef382)
Theorem hlt_PROPERLY_EQ_STRICTLY : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> hl_properly A l = hl_strictly A l.
Admitted.

// HOL Light: Library/wo.ml:199 / STRICTLY_EQ_PROPERLY   (hash md5:369a99bfa9fdd81f48cc5061404de03e)
Theorem hlt_STRICTLY_EQ_PROPERLY : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> hl_strictly A l = hl_properly A l.
Admitted.

// HOL Light: Library/wo.ml:203 / STRICTLY_IMP_PROPERLY   (hash md5:c9fbb0e0a327c7b461afe4a0af0865c7)
Theorem hlt_STRICTLY_IMP_PROPERLY : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall x y :e A, hl_qoset A l = 1 /\ hl_strictly A l x y = 1 -> hl_properly A l x y = 1.
Admitted.

// HOL Light: Library/wo.ml:207 / STRICTLY_STRICTLY   (hash md5:f9547be852e5a0b728ab5d8f1935916d)
Theorem hlt_STRICTLY_STRICTLY : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_strictly A (hl_strictly A R1) = hl_strictly A R1.
Admitted.

// HOL Light: Library/wo.ml:211 / PROPERLY_PROPERLY   (hash md5:61ad58407ba3f9753727f123f68e3510)
Theorem hlt_PROPERLY_PROPERLY : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_properly A (hl_properly A R1) = hl_properly A R1.
Admitted.

// HOL Light: Library/wo.ml:215 / STRICTLY_PROPERLY   (hash md5:3c6df8b103dbbcc39f26af3755e0b55c)
Theorem hlt_STRICTLY_PROPERLY : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_strictly A (hl_properly A R1) = hl_strictly A R1.
Admitted.

// HOL Light: Library/wo.ml:219 / PROPERLY_STRICTLY   (hash md5:e325505c6e750e97d46c0e6f35a5480f)
Theorem hlt_PROPERLY_STRICTLY : forall A:set, A <> Empty -> forall R1 :e 2 :^: A :^: A, hl_properly A (hl_strictly A R1) = hl_strictly A R1.
Admitted.

// HOL Light: Library/wo.ml:223 / PROPERLY_MONO   (hash md5:427576436c7f140d8823e13c67cd4b61)
Theorem hlt_PROPERLY_MONO : forall A:set, A <> Empty -> forall R1 S :e 2 :^: A :^: A, (forall x y :e A, R1 x y = 1 -> S x y = 1) -> forall x y :e A, hl_properly A R1 x y = 1 -> hl_properly A S x y = 1.
Admitted.

// HOL Light: Library/wo.ml:232 / POSET_QOSET   (hash md5:7fb0d02f99804de6e5b1ea2bf629ecd3)
Theorem hlt_POSET_QOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 <-> hl_qoset A l = 1 /\ forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y.
Admitted.

// HOL Light: Library/wo.ml:237 / TOSET   (hash md5:7052ccadaa38677a862c810c9dea09c9)
Theorem hlt_TOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_toset A l = 1 <-> (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ ((forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1).
Admitted.

// HOL Light: Library/wo.ml:245 / TOSET_POSET   (hash md5:f944fea9c28e87de1d6d8d61df0547dc)
Theorem hlt_TOSET_POSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_toset A l = 1 <-> hl_poset A l = 1 /\ forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1.
Admitted.

// HOL Light: Library/wo.ml:251 / WOSET_TOSET   (hash md5:ff66d333e21c54f74b8f981f6491fb38)
Theorem hlt_WOSET_TOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 <-> hl_toset A l = 1 /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1.
Admitted.

// HOL Light: Library/wo.ml:258 / WQOSET   (hash md5:318ddc7b6cfbbdefd5ae8098c7804e95)
Theorem hlt_WQOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> (forall x y z :e A, l x y = 1 /\ l y z = 1 -> l x z = 1) /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1).
Admitted.

// HOL Light: Library/wo.ml:271 / WQOSET_QOSET   (hash md5:b09b9ae0470220afdf946b45a634766b)
Theorem hlt_WQOSET_QOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> hl_qoset A l = 1 /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ forall y :e A, hl_IN A y s = 1 -> exists x :e A, hl_IN A x t = 1 /\ l x y = 1).
Admitted.

// HOL Light: Library/wo.ml:280 / WOSET_POSET   (hash md5:c0881d44818683f938db87a88b42e21b)
Theorem hlt_WOSET_POSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 <-> hl_poset A l = 1 /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1.
Admitted.

// HOL Light: Library/wo.ml:290 / WOSET   (hash md5:d64e999e22d431e12c6b41fc38941557)
Theorem hlt_WOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 <-> (forall x y :e A, l x y = 1 /\ l y x = 1 -> x = y) /\ forall s :e 2 :^: A, hl_SUBSET A s (hl_fld A l) = 1 /\ ~ s = hl_EMPTY A -> exists x :e A, hl_IN A x s = 1 /\ forall y :e A, hl_IN A y s = 1 -> l x y = 1.
Admitted.

// HOL Light: Library/wo.ml:306 / WOSET_WF   (hash md5:f44c3f6be47cbe75c12f4c212c4b5984)
Theorem hlt_WOSET_WF : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 <-> (forall x y :e A, hl_IN A x (hl_fld A l) = 1 /\ hl_IN A y (hl_fld A l) = 1 -> l x y = 1 \/ l y x = 1) /\ hl_WF A (hl_properly A l) = 1.
Admitted.

// HOL Light: Library/wo.ml:325 / WOSET_IMP_WQOSET   (hash md5:cdedb124f7c24262f401170ca403c1c7)
Theorem hlt_WOSET_IMP_WQOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> hl_wqoset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:336 / WQOSET_SUPERSET   (hash md5:d8241c2984527279c26159bf448ef068)
Theorem hlt_WQOSET_SUPERSET : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_wqoset A l = 1 /\ (hl_qoset A m = 1 /\ (hl_SUBSET A (hl_fld A m) (hl_fld A l) = 1 /\ (forall x y :e A, l x y = 1 -> m x y = 1))) -> hl_wqoset A m = 1.
Admitted.

// HOL Light: Library/wo.ml:469 / WQOSET_IMP_WF   (hash md5:b79b7dad875d8a9e5c064d2e7e744576)
Theorem hlt_WQOSET_IMP_WF : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 -> hl_WF A (hl_strictly A l) = 1.
Admitted.

// HOL Light: Library/wo.ml:473 / WQOSET_WF_SUPERSET   (hash md5:73c3c9b9de7bcb4f5a0906b005e09719)
Theorem hlt_WQOSET_WF_SUPERSET : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_wqoset A l = 1 /\ (hl_qoset A m = 1 /\ (hl_SUBSET A (hl_fld A m) (hl_fld A l) = 1 /\ (forall x y :e A, l x y = 1 -> m x y = 1))) -> hl_WF A (hl_strictly A m) = 1.
Admitted.

// HOL Light: Library/wo.ml:479 / WQOSET_WF_SUPERSET_EQ   (hash md5:08e49357620c6342354001974ce663f7)
Theorem hlt_WQOSET_WF_SUPERSET_EQ : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_wqoset A l = 1 <-> hl_qoset A l = 1 /\ forall m :e 2 :^: A :^: A, hl_qoset A m = 1 /\ (hl_fld A m = hl_fld A l /\ (forall x y :e A, l x y = 1 -> m x y = 1)) -> hl_WF A (hl_strictly A m) = 1.
Admitted.

// HOL Light: Library/wo.ml:507 / WOSET_WQOSET   (hash md5:05d59a3afa1514eaa9f2f8c366e47e13)
Theorem hlt_WOSET_WQOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 <-> hl_toset A l = 1 /\ hl_wqoset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:517 / FLD_RESTRICT_QOSET   (hash md5:bf740683a95267bae46fb13ee6a54650)
Theorem hlt_FLD_RESTRICT_QOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_qoset A l = 1 -> hl_fld A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = hl_GSPEC A (fun GEN_PVAR_464 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_464 (if hl_IN A x (hl_fld A l) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:522 / FLD_RESTRICT_POSET   (hash md5:5101e32d037c4b248effc6c9ab5d3bf6)
Theorem hlt_FLD_RESTRICT_POSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_poset A l = 1 -> hl_fld A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = hl_GSPEC A (fun GEN_PVAR_465 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_465 (if hl_IN A x (hl_fld A l) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:527 / FLD_RESTRICT_TOSET   (hash md5:8d9f0485d0513518c505ae97d70dedd3)
Theorem hlt_FLD_RESTRICT_TOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_toset A l = 1 -> hl_fld A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = hl_GSPEC A (fun GEN_PVAR_466 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_466 (if hl_IN A x (hl_fld A l) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:532 / FLD_RESTRICT_WOSET   (hash md5:6e92a8faca058073dc810b5aa799af73)
Theorem hlt_FLD_RESTRICT_WOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_woset A l = 1 -> hl_fld A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = hl_GSPEC A (fun GEN_PVAR_467 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_467 (if hl_IN A x (hl_fld A l) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:537 / FLD_RESTRICT_WQOSET   (hash md5:52c8e8fc6c7d1772cd84fb21cc3950e1)
Theorem hlt_FLD_RESTRICT_WQOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_wqoset A l = 1 -> hl_fld A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = hl_GSPEC A (fun GEN_PVAR_468 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_468 (if hl_IN A x (hl_fld A l) = 1 /\ P x = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:542 / QOSET_RESTRICT   (hash md5:c29acca750efd1e5b1c449bfdb80e013)
Theorem hlt_QOSET_RESTRICT : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_qoset A l = 1 -> hl_qoset A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:546 / POSET_RESTRICT   (hash md5:fee2faa1617151d175a58e499cf24dbb)
Theorem hlt_POSET_RESTRICT : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_poset A l = 1 -> hl_poset A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:550 / TOSET_RESTRICT   (hash md5:a229add69c66ba37b5ad0d7532a42acc)
Theorem hlt_TOSET_RESTRICT : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_toset A l = 1 -> hl_toset A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:554 / WOSET_RESTRICT   (hash md5:1d41eeec07d4a32c9a060ce76e8c5014)
Theorem hlt_WOSET_RESTRICT : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_woset A l = 1 -> hl_woset A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:560 / WQOSET_RESTRICT   (hash md5:24cddb0c3edb4863a05412fd5a492dbf)
Theorem hlt_WQOSET_RESTRICT : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall P :e 2 :^: A, hl_wqoset A l = 1 -> hl_wqoset A (fun x :e A => fun y :e A => if P x = 1 /\ (P y = 1 /\ l x y = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:570 / QOSET_MAX   (hash md5:e3ea435ff075003764b20620dfe35696)
Theorem hlt_QOSET_MAX : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_qoset A l = 1 /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ hl_SUBSET A s (hl_fld A l) = 1)) -> exists a :e A, hl_IN A a s = 1 /\ forall x :e A, hl_IN A x s = 1 -> ~ hl_strictly A l a x = 1.
Admitted.

// HOL Light: Library/wo.ml:570 / QOSET_MIN   (hash md5:b93e2b79632773deeb32903b193b416f)
Theorem hlt_QOSET_MIN : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_qoset A l = 1 /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ hl_SUBSET A s (hl_fld A l) = 1)) -> exists a :e A, hl_IN A a s = 1 /\ forall x :e A, hl_IN A x s = 1 -> ~ hl_strictly A l x a = 1.
Admitted.

// HOL Light: Library/wo.ml:589 / POSET_MAX   (hash md5:f7ea34fef0c7b00298e979b44523803e)
Theorem hlt_POSET_MAX : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_poset A l = 1 /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ hl_SUBSET A s (hl_fld A l) = 1)) -> exists a :e A, hl_IN A a s = 1 /\ forall x :e A, hl_IN A x s = 1 -> ~ hl_properly A l a x = 1.
Admitted.

// HOL Light: Library/wo.ml:589 / POSET_MIN   (hash md5:01e2d6a8b27bf6c143866b9dfba36b19)
Theorem hlt_POSET_MIN : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_poset A l = 1 /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ hl_SUBSET A s (hl_fld A l) = 1)) -> exists a :e A, hl_IN A a s = 1 /\ forall x :e A, hl_IN A x s = 1 -> ~ hl_properly A l x a = 1.
Admitted.

// HOL Light: Library/wo.ml:598 / TOSET_MAX   (hash md5:cb019f4c5892e957be2f9294551186f7)
Theorem hlt_TOSET_MAX : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_toset A l = 1 /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ hl_SUBSET A s (hl_fld A l) = 1)) -> exists a :e A, hl_IN A a s = 1 /\ forall x :e A, hl_IN A x s = 1 -> l x a = 1.
Admitted.

// HOL Light: Library/wo.ml:598 / TOSET_MIN   (hash md5:63576656f5bc5a0e45480a89bc68b4fe)
Theorem hlt_TOSET_MIN : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_toset A l = 1 /\ (hl_FINITE A s = 1 /\ (~ s = hl_EMPTY A /\ hl_SUBSET A s (hl_fld A l) = 1)) -> exists a :e A, hl_IN A a s = 1 /\ forall x :e A, hl_IN A x s = 1 -> l a x = 1.
Admitted.

// HOL Light: Library/wo.ml:616 / FLD_TRIVIAL   (hash md5:c0511ba278d3ec981a91c7716fc3e806)
Theorem hlt_FLD_TRIVIAL : forall A:set, A <> Empty -> hl_fld A (fun x :e A => fun y :e A => if False then 1 else 0) = hl_EMPTY A.
Admitted.

// HOL Light: Library/wo.ml:620 / WOSET_TRIVIAL   (hash md5:c3c9d2c46e6e69f80b8f0a550f51dfb0)
Theorem hlt_WOSET_TRIVIAL : forall A:set, A <> Empty -> hl_woset A (fun x :e A => fun y :e A => if False then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:624 / WQOSET_TRIVIAL   (hash md5:43cec25ea841b5471ecaad1449452225)
Theorem hlt_WQOSET_TRIVIAL : forall A:set, A <> Empty -> hl_wqoset A (fun x :e A => fun y :e A => if False then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:628 / TOSET_TRIVIAL   (hash md5:a3f3051498656054591147a90bb699f4)
Theorem hlt_TOSET_TRIVIAL : forall A:set, A <> Empty -> hl_toset A (fun x :e A => fun y :e A => if False then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:632 / POSET_TRIVIAL   (hash md5:2d7c49760f7407c9fd325c184bb86c6a)
Theorem hlt_POSET_TRIVIAL : forall A:set, A <> Empty -> hl_poset A (fun x :e A => fun y :e A => if False then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:636 / QOSET_TRIVIAL   (hash md5:b59df533c21f7da82603468057ed081f)
Theorem hlt_QOSET_TRIVIAL : forall A:set, A <> Empty -> hl_qoset A (fun x :e A => fun y :e A => if False then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:644 / FLD_num   (hash md5:a06461dca798c1a91b0da1af3161a5f5)
Theorem hlt_FLD_num : hl_fld omega hl_le = hl_UNIV omega.
Admitted.

// HOL Light: Library/wo.ml:648 / WOSET_num   (hash md5:ee99eafe5a0ead5cc5d9f94e4fe7a3ed)
Theorem hlt_WOSET_num : hl_woset omega hl_le = 1.
Admitted.

// HOL Light: Library/wo.ml:653 / WQOSET_num   (hash md5:61f25bddf77b1b9688a4da685627f16b)
Theorem hlt_WQOSET_num : hl_wqoset omega hl_le = 1.
Admitted.

// HOL Light: Library/wo.ml:657 / TOSET_num   (hash md5:9e6cf6c197a349cf8d037560a5630af4)
Theorem hlt_TOSET_num : hl_toset omega hl_le = 1.
Admitted.

// HOL Light: Library/wo.ml:661 / POSET_num   (hash md5:07c23219fdaf4b52f219ef0c85cd3b7f)
Theorem hlt_POSET_num : hl_poset omega hl_le = 1.
Admitted.

// HOL Light: Library/wo.ml:665 / QOSET_num   (hash md5:46a5e13bf76226872115435ba91a1b15)
Theorem hlt_QOSET_num : hl_qoset omega hl_le = 1.
Admitted.

// HOL Light: Library/wo.ml:674 / QOSET_POINTWISE   (hash md5:e66c42bee36f4383b32db2459b83d9ce)
Theorem hlt_QOSET_POINTWISE : forall A K:set, A <> Empty -> K <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: K, hl_qoset (A :^: K) (fun x :e A :^: K => fun y :e A :^: K => if forall i :e K, hl_IN K i s = 1 -> l (x i) (y i) = 1 then 1 else 0) = 1 <-> s = hl_EMPTY K \/ hl_qoset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:689 / FLD_POINTWISE   (hash md5:9ef479f341313b5569b12df3bcd0076d)
Theorem hlt_FLD_POINTWISE : forall A K:set, A <> Empty -> K <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: K, hl_qoset A l = 1 -> hl_fld (A :^: K) (fun x :e A :^: K => fun y :e A :^: K => if forall i :e K, hl_IN K i s = 1 -> l (x i) (y i) = 1 then 1 else 0) = hl_GSPEC (A :^: K) (fun GEN_PVAR_469 :e A :^: K => if exists x :e A :^: K, hl_SETSPEC (A :^: K) GEN_PVAR_469 (if forall i :e K, hl_IN K i s = 1 -> hl_IN A (x i) (hl_fld A l) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:698 / WQOSET_POINTWISE   (hash md5:e0fff5f4458fff4d6456d7bf5758273e)
Theorem hlt_WQOSET_POINTWISE : forall A K:set, A <> Empty -> K <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: K, hl_wqoset A l = 1 /\ hl_FINITE K s = 1 -> hl_wqoset (A :^: K) (fun x :e A :^: K => fun y :e A :^: K => if forall i :e K, hl_IN K i s = 1 -> l (x i) (y i) = 1 then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:719 / DICKSON   (hash md5:196bd61a5962492b4642b1f9b4c5c489)
Theorem hlt_DICKSON : forall n :e omega, forall x :e omega :^: omega :^: omega, exists i j :e omega, hl_lt i j = 1 /\ forall k :e omega, hl_lt k n = 1 -> hl_le (x i k) (x j k) = 1.
Admitted.

// HOL Light: Library/wo.ml:735 / inseg   (hash md5:ec45008cad5d0f463cdeb19351be5fed)
Theorem hlt_inseg : forall A:set, A <> Empty -> forall m l :e 2 :^: A :^: A, hl_inseg A l m = 1 <-> forall x y :e A, l x y = 1 <-> m x y = 1 /\ hl_fld A l y = 1.
Admitted.

// HOL Light: Library/wo.ml:738 / INSEG_ANTISYM   (hash md5:b1bf16bda0d990e823917f12f8bea480)
Theorem hlt_INSEG_ANTISYM : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_inseg A l m = 1 /\ hl_inseg A m l = 1 -> l = m.
Admitted.

// HOL Light: Library/wo.ml:743 / INSEG_REFL   (hash md5:6bdc7631fa6762b62fcd1b0a0ec7aef7)
Theorem hlt_INSEG_REFL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_inseg A l l = 1.
Admitted.

// HOL Light: Library/wo.ml:747 / INSEG_TRANS   (hash md5:24e1c75db21a65ca504ea7ea6f50a097)
Theorem hlt_INSEG_TRANS : forall A:set, A <> Empty -> forall l m n :e 2 :^: A :^: A, hl_inseg A l m = 1 /\ hl_inseg A m n = 1 -> hl_inseg A l n = 1.
Admitted.

// HOL Light: Library/wo.ml:755 / linseg   (hash md5:9d9b99aefa0874ee4df199a5aac220c9)
Theorem hlt_linseg : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall a :e A, hl_linseg A l a = fun x :e A => fun y :e A => if l x y = 1 /\ hl_properly A l y a = 1 then 1 else 0.
Admitted.

// HOL Light: Library/wo.ml:762 / ordinal   (hash md5:fa7a75be6559963b12c05c747e618056)
Theorem hlt_ordinal_thm : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_ordinal A l = 1 <-> hl_woset A l = 1 /\ forall x :e A, hl_fld A l x = 1 -> x = hl_select A (fun y :e A => if ~ hl_properly A l y x = 1 then 1 else 0).
Admitted.

// HOL Light: Library/wo.ml:774 / POSET_FLDEQ   (hash md5:648b8f7f3db3aa01bf83f13865bb02c3)
Theorem hlt_POSET_FLDEQ : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> forall x :e A, hl_fld A l x = 1 <-> l x x = 1.
Admitted.

// HOL Light: Library/wo.ml:783 / WOSET_FLDEQ   (hash md5:4fffb1a5d138d64b4ece26726aee2fa9)
Theorem hlt_WOSET_FLDEQ : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x :e A, hl_fld A l x = 1 <-> l x x = 1.
Admitted.

// HOL Light: Library/wo.ml:787 / WOSET_TRANS_LESS   (hash md5:e3ba34923f09cfa6b78dbc2d48fcf3e2)
Theorem hlt_WOSET_TRANS_LESS : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y z :e A, hl_properly A l x y = 1 /\ l y z = 1 -> hl_properly A l x z = 1.
Admitted.

// HOL Light: Library/wo.ml:796 / PAIRED_EXT   (hash md5:eb26433fd3e315716f53d94c2be6e661)
Theorem hlt_PAIRED_EXT : forall A B C:set, A <> Empty -> B <> Empty -> C <> Empty -> forall l m :e C :^: B :^: A, (forall x :e A, forall y :e B, l x y = m x y) <-> l = m.
Admitted.

// HOL Light: Library/wo.ml:800 / WOSET_TRANS_LE   (hash md5:a488999cc030a045982fc36a5b7e1fac)
Theorem hlt_WOSET_TRANS_LE : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y z :e A, l x y = 1 /\ hl_properly A l y z = 1 -> hl_properly A l x z = 1.
Admitted.

// HOL Light: Library/wo.ml:805 / WOSET_WELL_CONTRAPOS   (hash md5:e7e709030e0266e388433d3ba9e9a166)
Theorem hlt_WOSET_WELL_CONTRAPOS : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall P :e 2 :^: A, (forall x :e A, P x = 1 -> hl_fld A l x = 1) /\ (exists x :e A, P x = 1) -> exists y :e A, P y = 1 /\ forall z :e A, hl_properly A l z y = 1 -> ~ P z = 1.
Admitted.

// HOL Light: Library/wo.ml:813 / WOSET_TOTAL_LE   (hash md5:1112cead581e63db2fe4d300e59dc3b3)
Theorem hlt_WOSET_TOTAL_LE : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y :e A, hl_fld A l x = 1 /\ hl_fld A l y = 1 -> l x y = 1 \/ hl_properly A l y x = 1.
Admitted.

// HOL Light: Library/wo.ml:818 / WOSET_TOTAL_LT   (hash md5:784ae76bfcc92cbbfb0e136a3a5e9945)
Theorem hlt_WOSET_TOTAL_LT : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall x y :e A, hl_fld A l x = 1 /\ hl_fld A l y = 1 -> x = y \/ (hl_properly A l x y = 1 \/ hl_properly A l y x = 1).
Admitted.

// HOL Light: Library/wo.ml:824 / ORDINAL_IMP_WOSET   (hash md5:210aa6664fb9642c1aeda04e97e0f21e)
Theorem hlt_ORDINAL_IMP_WOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_ordinal A l = 1 -> hl_woset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:828 / WOSET_FINITE_TOSET   (hash md5:2f05c68181053f28ec19a8b863573544)
Theorem hlt_WOSET_FINITE_TOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_toset A l = 1 /\ hl_FINITE (A :*: A) (hl_GSPEC (A :*: A) (fun GEN_PVAR_471 :e A :*: A => if exists x y :e A, hl_SETSPEC (A :*: A) GEN_PVAR_471 (l x y) (hl_pair A A x y) = 1 then 1 else 0)) = 1 -> hl_woset A l = 1.
Admitted.

// HOL Light: Library/wo.ml:849 / UNION_FLD   (hash md5:4990bf86dbb599eab72fa79450ab1093)
Theorem hlt_UNION_FLD : forall A:set, A <> Empty -> forall x :e A, forall P :e 2 :^: (2 :^: A :^: A), hl_fld A (fun x1 :e A => fun y :e A => if exists l :e 2 :^: A :^: A, P l = 1 /\ l x1 y = 1 then 1 else 0) x = 1 <-> exists l :e 2 :^: A :^: A, P l = 1 /\ hl_fld A l x = 1.
Admitted.

// HOL Light: Library/wo.ml:853 / UNION_INSEG   (hash md5:2ac06ebd0b1f5602c14890edd8a55f43)
Theorem hlt_UNION_INSEG : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A :^: A), forall l :e 2 :^: A :^: A, (forall m :e 2 :^: A :^: A, P m = 1 -> hl_inseg A m l = 1) -> hl_inseg A (fun x :e A => fun y :e A => if exists l1 :e 2 :^: A :^: A, P l1 = 1 /\ l1 x y = 1 then 1 else 0) l = 1.
Admitted.

// HOL Light: Library/wo.ml:863 / INSEG_SUBSET   (hash md5:c9b257f79c0d431ecfb1eb1c654a6586)
Theorem hlt_INSEG_SUBSET : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_inseg A m l = 1 -> forall x y :e A, m x y = 1 -> l x y = 1.
Admitted.

// HOL Light: Library/wo.ml:867 / INSEG_SUBSET_FLD   (hash md5:bcfced3867580d613bf2e0e62f5071d5)
Theorem hlt_INSEG_SUBSET_FLD : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_inseg A m l = 1 -> forall x :e A, hl_fld A m x = 1 -> hl_fld A l x = 1.
Admitted.

// HOL Light: Library/wo.ml:871 / INSEG_FLD_SUBSET   (hash md5:6d70e5a2fc1bb1b4842d94e185082467)
Theorem hlt_INSEG_FLD_SUBSET : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_inseg A l m = 1 -> hl_SUBSET A (hl_fld A l) (hl_fld A m) = 1.
Admitted.

// HOL Light: Library/wo.ml:876 / INSEG_WOSET   (hash md5:6292d36815d8c86ca0b75ea210d860fd)
Theorem hlt_INSEG_WOSET : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_inseg A m l = 1 /\ hl_woset A l = 1 -> hl_woset A m = 1.
Admitted.

// HOL Light: Library/wo.ml:886 / INSEG_ORDINAL   (hash md5:9e6d79fd80e528c974f149abd6ec543c)
Theorem hlt_INSEG_ORDINAL : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_inseg A m l = 1 /\ hl_ordinal A l = 1 -> hl_ordinal A m = 1.
Admitted.

// HOL Light: Library/wo.ml:901 / LINSEG_INSEG   (hash md5:86ba11a198fd3bb4494226dc7caf463b)
Theorem hlt_LINSEG_INSEG : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall a :e A, hl_woset A l = 1 -> hl_inseg A (hl_linseg A l a) l = 1.
Admitted.

// HOL Light: Library/wo.ml:907 / LINSEG_WOSET   (hash md5:22658b944b1a589082c7affd01fa467e)
Theorem hlt_LINSEG_WOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall a :e A, hl_woset A l = 1 -> hl_woset A (hl_linseg A l a) = 1.
Admitted.

// HOL Light: Library/wo.ml:911 / LINSEG_FLD   (hash md5:26f260be89c86fa54e1b627eb325a32d)
Theorem hlt_LINSEG_FLD : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall a x :e A, hl_woset A l = 1 -> (hl_fld A (hl_linseg A l a) x = 1 <-> hl_properly A l x a = 1).
Admitted.

// HOL Light: Library/wo.ml:920 / INSEG_PROPER_SUBSET   (hash md5:64c4f0d4203120a77efd2a77d4c2e70b)
Theorem hlt_INSEG_PROPER_SUBSET : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_inseg A m l = 1 /\ ~ l = m -> exists x y :e A, l x y = 1 /\ ~ m x y = 1.
Admitted.

// HOL Light: Library/wo.ml:925 / INSEG_PROPER_SUBSET_FLD   (hash md5:4bff1944fe5a4401f71604a90f66961d)
Theorem hlt_INSEG_PROPER_SUBSET_FLD : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_inseg A m l = 1 /\ ~ l = m -> exists a :e A, hl_fld A l a = 1 /\ ~ hl_fld A m a = 1.
Admitted.

// HOL Light: Library/wo.ml:930 / INSEG_LINSEG   (hash md5:93c12b1496ac2559fb252fc21627d4d6)
Theorem hlt_INSEG_LINSEG : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_woset A l = 1 -> (hl_inseg A m l = 1 <-> m = l \/ exists a :e A, hl_fld A l a = 1 /\ m = hl_linseg A l a).
Admitted.

// HOL Light: Library/wo.ml:951 / EXTEND_FLD   (hash md5:d63eb049be429d4df7b14821f162a9e6)
Theorem hlt_EXTEND_FLD : forall A:set, A <> Empty -> forall a :e A, forall l :e 2 :^: A :^: A, forall x :e A, hl_woset A l = 1 -> (hl_fld A (fun x1 :e A => fun y :e A => if l x1 y = 1 /\ l y a = 1 then 1 else 0) x = 1 <-> l x a = 1).
Admitted.

// HOL Light: Library/wo.ml:956 / EXTEND_INSEG   (hash md5:1ccb340eeabf04857b8ca67ae1d1f1ad)
Theorem hlt_EXTEND_INSEG : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall a :e A, hl_woset A l = 1 /\ hl_fld A l a = 1 -> hl_inseg A (fun x :e A => fun y :e A => if l x y = 1 /\ l y a = 1 then 1 else 0) l = 1.
Admitted.

// HOL Light: Library/wo.ml:961 / EXTEND_LINSEG   (hash md5:dcb7c14e30398671dce406fce6ef4d96)
Theorem hlt_EXTEND_LINSEG : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall a :e A, hl_woset A l = 1 /\ hl_fld A l a = 1 -> hl_inseg A (fun x :e A => fun y :e A => if hl_linseg A l a x y = 1 \/ y = a /\ (hl_fld A (hl_linseg A l a) x = 1 \/ x = a) then 1 else 0) l = 1.
Admitted.

// HOL Light: Library/wo.ml:976 / ORDINAL_CHAINED_LEMMA   (hash md5:30c5f43295d17aa9797001056244120f)
Theorem hlt_ORDINAL_CHAINED_LEMMA : forall A:set, A <> Empty -> forall k l m :e 2 :^: A :^: A, hl_ordinal A l = 1 /\ hl_ordinal A m = 1 -> hl_inseg A k l = 1 /\ hl_inseg A k m = 1 -> k = l \/ (k = m \/ exists a :e A, hl_fld A l a = 1 /\ (hl_fld A m a = 1 /\ (k = hl_linseg A l a /\ k = hl_linseg A m a))).
Admitted.

// HOL Light: Library/wo.ml:999 / ORDINAL_CHAINED   (hash md5:659fb1b25661177ba889f45f69f25b1b)
Theorem hlt_ORDINAL_CHAINED : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_ordinal A l = 1 /\ hl_ordinal A m = 1 -> hl_inseg A m l = 1 \/ hl_inseg A l m = 1.
Admitted.

// HOL Light: Library/wo.ml:1027 / ORDINAL_FLD_UNIQUE   (hash md5:5c7b2394013c0c4689cb19febc03d4e1)
Theorem hlt_ORDINAL_FLD_UNIQUE : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_ordinal A l = 1 /\ (hl_ordinal A m = 1 /\ hl_fld A l = hl_fld A m) -> l = m.
Admitted.

// HOL Light: Library/wo.ml:1036 / ORDINAL_FLD_SUBSET   (hash md5:4a6c0173e0981fe7b134f1911f1bfc23)
Theorem hlt_ORDINAL_FLD_SUBSET : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_ordinal A l = 1 /\ (hl_ordinal A m = 1 /\ hl_SUBSET A (hl_fld A l) (hl_fld A m) = 1) -> hl_inseg A l m = 1.
Admitted.

// HOL Light: Library/wo.ml:1047 / ORDINAL_FLD_SUBSET_EQ   (hash md5:e8a281badc4f4e2fc867cef9d1f8afe9)
Theorem hlt_ORDINAL_FLD_SUBSET_EQ : forall A:set, A <> Empty -> forall l m :e 2 :^: A :^: A, hl_ordinal A l = 1 /\ hl_ordinal A m = 1 -> (hl_SUBSET A (hl_fld A l) (hl_fld A m) = 1 <-> hl_inseg A l m = 1).
Admitted.

// HOL Light: Library/wo.ml:1056 / FLD_SUC   (hash md5:775759749d7e06f8bc68749c0b30841f)
Theorem hlt_FLD_SUC : forall A:set, A <> Empty -> forall x :e A, forall l :e 2 :^: A :^: A, forall a :e A, hl_fld A (fun x1 :e A => fun y :e A => if l x1 y = 1 \/ y = a /\ (hl_fld A l x1 = 1 \/ x1 = a) then 1 else 0) x = 1 <-> hl_fld A l x = 1 \/ x = a.
Admitted.

// HOL Light: Library/wo.ml:1064 / ORDINAL_SUC   (hash md5:666965b60e6ebc6feb7d4ed740661a31)
Theorem hlt_ORDINAL_SUC : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_ordinal A l = 1 /\ (exists x :e A, ~ hl_fld A l x = 1) -> hl_ordinal A (fun x :e A => fun y :e A => if l x y = 1 \/ y = hl_select A (fun y1 :e A => if ~ hl_fld A l y1 = 1 then 1 else 0) /\ (hl_fld A l x = 1 \/ x = hl_select A (fun y1 :e A => if ~ hl_fld A l y1 = 1 then 1 else 0)) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:1118 / ORDINAL_UNION   (hash md5:fc99ba2e77be46b92e085ac27f7be9dd)
Theorem hlt_ORDINAL_UNION : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A :^: A), (forall l :e 2 :^: A :^: A, P l = 1 -> hl_ordinal A l = 1) -> hl_ordinal A (fun x :e A => fun y :e A => if exists l :e 2 :^: A :^: A, P l = 1 /\ l x y = 1 then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:1199 / ORDINAL_UNION_LEMMA   (hash md5:8ce0e405ca23a3bfc16ed65719aec471)
Theorem hlt_ORDINAL_UNION_LEMMA : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall x :e A, hl_ordinal A l = 1 -> hl_fld A l x = 1 -> hl_fld A (fun a :e A => fun b :e A => if exists l1 :e 2 :^: A :^: A, hl_ordinal A l1 = 1 /\ l1 a b = 1 then 1 else 0) x = 1.
Admitted.

// HOL Light: Library/wo.ml:1205 / ORDINAL_UP   (hash md5:14985b17ab4e6255fe11f59b410e4c01)
Theorem hlt_ORDINAL_UP : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_ordinal A l = 1 -> (forall x :e A, hl_fld A l x = 1) \/ exists m :e 2 :^: A :^: A, exists x :e A, hl_ordinal A m = 1 /\ (hl_fld A m x = 1 /\ ~ hl_fld A l x = 1).
Admitted.

// HOL Light: Library/wo.ml:1218 / WO_ORDINAL   (hash md5:c712b891658c517a7de1cb4fa8d7f9fa)
Theorem hlt_WO_ORDINAL : forall A:set, A <> Empty -> exists l :e 2 :^: A :^: A, hl_ordinal A l = 1 /\ forall x :e A, hl_fld A l x = 1.
Admitted.

// HOL Light: Library/wo.ml:1233 / FLD_RESTRICT   (hash md5:ee185f4a307c3ef9ee234866ef523389)
Theorem hlt_FLD_RESTRICT : forall A:set, A <> Empty -> forall x :e A, forall l :e 2 :^: A :^: A, hl_woset A l = 1 -> forall P :e 2 :^: A, hl_fld A (fun x1 :e A => fun y :e A => if P x1 = 1 /\ (P y = 1 /\ l x1 y = 1) then 1 else 0) x = 1 <-> P x = 1 /\ hl_fld A l x = 1.
Admitted.

// HOL Light: Library/wo.ml:1244 / WO   (hash md5:d084f5ecfcc5610f745a17526d3b00db)
Theorem hlt_WO : forall A:set, A <> Empty -> forall P :e 2 :^: A, exists l :e 2 :^: A :^: A, hl_woset A l = 1 /\ hl_fld A l = P.
Admitted.

// HOL Light: Library/wo.ml:1268 / WF_INSEG_WOSET   (hash md5:87a87349a5b5fde0223d26f5cc21c3d4)
Theorem hlt_WF_INSEG_WOSET : forall A:set, A <> Empty -> hl_WF (2 :^: A :^: A) (fun x :e 2 :^: A :^: A => fun y :e 2 :^: A :^: A => if hl_woset A x = 1 /\ (hl_woset A y = 1 /\ (hl_inseg A x y = 1 /\ ~ x = y)) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:1323 / WOSET_INSEG_ORDINAL   (hash md5:30b0a0e11a6a9b69de17fac5b0041004)
Theorem hlt_WOSET_INSEG_ORDINAL : forall A:set, A <> Empty -> hl_woset (2 :^: A :^: A) (fun x :e 2 :^: A :^: A => fun y :e 2 :^: A :^: A => if hl_ordinal A x = 1 /\ (hl_ordinal A y = 1 /\ hl_inseg A x y = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:1331 / SUBWOSET_ISO_INSEG   (hash md5:3a8643a52e442769e3fc98df04935dfd)
Theorem hlt_SUBWOSET_ISO_INSEG : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, forall s :e 2 :^: A, hl_woset A l = 1 /\ hl_fld A l = hl_UNIV A -> exists f :e A :^: A, (forall x y :e A, hl_IN A x s = 1 /\ hl_IN A y s = 1 -> (l (f x) (f y) = 1 <-> l x y = 1)) /\ forall x y :e A, hl_IN A y (hl_IMAGE A A f s) = 1 /\ l x y = 1 -> hl_IN A x (hl_IMAGE A A f s) = 1.
Admitted.

// HOL Light: Library/wo.ml:1402 / HP   (hash md5:714008b72c59823f58c3b8a5d909e436)
Theorem hlt_HP : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_qoset A l = 1 -> exists P :e 2 :^: A, hl_chain A l P = 1 /\ forall Q :e 2 :^: A, hl_chain A l Q = 1 /\ hl_SUBSET A P Q = 1 -> Q = P.
Admitted.

// HOL Light: Library/wo.ml:1493 / ZL_STRONG   (hash md5:9469153be05052c416e93183437c7409)
Theorem hlt_ZL_STRONG : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_qoset A l = 1 /\ (forall c :e 2 :^: A, hl_chain A l c = 1 -> exists y :e A, hl_IN A y (hl_fld A l) = 1 /\ forall x :e A, hl_IN A x c = 1 -> l x y = 1) -> exists y :e A, hl_IN A y (hl_fld A l) = 1 /\ forall x :e A, l y x = 1 -> l x y = 1.
Admitted.

// HOL Light: Library/wo.ml:1527 / ZL   (hash md5:eb57f2b0c16a68ac1cfacfa3269e5bd7)
Theorem hlt_ZL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 /\ (forall P :e 2 :^: A, hl_chain A l P = 1 -> exists y :e A, hl_fld A l y = 1 /\ forall x :e A, P x = 1 -> l x y = 1) -> exists y :e A, hl_fld A l y = 1 /\ forall x :e A, l y x = 1 -> y = x.
Admitted.

// HOL Light: Library/wo.ml:1540 / KL_POSET_LEMMA   (hash md5:18765351205978a3cca1e5c10310aae6)
Theorem hlt_KL_POSET_LEMMA : forall A:set, A <> Empty -> forall C :e 2 :^: A, forall l :e 2 :^: A :^: A, hl_poset (2 :^: A) (fun c1 :e 2 :^: A => fun c2 :e 2 :^: A => if hl_SUBSET A C c1 = 1 /\ (hl_SUBSET A c1 c2 = 1 /\ hl_chain A l c2 = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:1552 / KL   (hash md5:f9ba27018d285fec89ae2222daf18bf0)
Theorem hlt_KL : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_poset A l = 1 -> forall C :e 2 :^: A, hl_chain A l C = 1 -> exists P :e 2 :^: A, hl_chain A l P = 1 /\ hl_SUBSET A C P = 1 /\ forall R1 :e 2 :^: A, hl_chain A l R1 = 1 /\ hl_SUBSET A P R1 = 1 -> R1 = P.
Admitted.

// HOL Light: Library/wo.ml:1609 / POSET_RESTRICTED_SUBSET   (hash md5:b2c3ba96fbff94e20c10b73e4eff91a3)
Theorem hlt_POSET_RESTRICTED_SUBSET : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_poset (2 :^: A) (fun x :e 2 :^: A => fun y :e 2 :^: A => if P x = 1 /\ (P y = 1 /\ hl_SUBSET A x y = 1) then 1 else 0) = 1.
Admitted.

// HOL Light: Library/wo.ml:1615 / FLD_RESTRICTED_SUBSET   (hash md5:d419a760a880c3ac96660be7459f074b)
Theorem hlt_FLD_RESTRICTED_SUBSET : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), hl_fld (2 :^: A) (fun x :e 2 :^: A => fun y :e 2 :^: A => if P x = 1 /\ (P y = 1 /\ hl_SUBSET A x y = 1) then 1 else 0) = P.
Admitted.

// HOL Light: Library/wo.ml:1620 / ZL_SUBSETS   (hash md5:f4b9b301491b34e24ed64c2947145071)
Theorem hlt_ZL_SUBSETS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> exists z :e 2 :^: A, P z = 1 /\ forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> hl_SUBSET A x z = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x.
Admitted.

// HOL Light: Library/wo.ml:1634 / ZL_SUBSETS_UNIONS   (hash md5:0260ca1929348d3566429db044770f7d)
Theorem hlt_ZL_SUBSETS_UNIONS : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (forall c :e 2 :^: (2 :^: A), (forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1) -> P (hl_UNIONS A c) = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x.
Admitted.

// HOL Light: Library/wo.ml:1643 / ZL_SUBSETS_UNIONS_NONEMPTY   (hash md5:01360ec3a83d9698acd207aa6060f3ea)
Theorem hlt_ZL_SUBSETS_UNIONS_NONEMPTY : forall A:set, A <> Empty -> forall P :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, P x = 1) /\ (forall c :e 2 :^: (2 :^: A), (exists x :e 2 :^: A, hl_IN (2 :^: A) x c = 1) /\ ((forall x :e 2 :^: A, hl_IN (2 :^: A) x c = 1 -> P x = 1) /\ (forall x y :e 2 :^: A, hl_IN (2 :^: A) x c = 1 /\ hl_IN (2 :^: A) y c = 1 -> hl_SUBSET A x y = 1 \/ hl_SUBSET A y x = 1)) -> P (hl_UNIONS A c) = 1) -> exists a :e 2 :^: A, P a = 1 /\ forall x :e 2 :^: A, P x = 1 /\ hl_SUBSET A a x = 1 -> a = x.
Admitted.

// HOL Light: Library/wo.ml:1660 / TUKEY   (hash md5:1b6240bacc46c577204690f5a01fabcf)
Theorem hlt_TUKEY : forall A:set, A <> Empty -> forall s :e 2 :^: (2 :^: A), ~ s = hl_EMPTY (2 :^: A) /\ (forall t :e 2 :^: A, (forall c :e 2 :^: A, hl_FINITE A c = 1 /\ hl_SUBSET A c t = 1 -> hl_IN (2 :^: A) c s = 1) <-> hl_IN (2 :^: A) t s = 1) -> exists u :e 2 :^: A, hl_IN (2 :^: A) u s = 1 /\ forall v :e 2 :^: A, hl_IN (2 :^: A) v s = 1 /\ hl_SUBSET A u v = 1 -> u = v.
Admitted.

// HOL Light: Library/wo.ml:1680 / OEP   (hash md5:cc40d9685fc3a425cb38be27052e60f7)
Theorem hlt_OEP : forall A:set, A <> Empty -> forall p :e 2 :^: A :^: A, hl_poset A p = 1 -> exists t :e 2 :^: A :^: A, hl_toset A t = 1 /\ (hl_fld A t = hl_fld A p /\ forall x y :e A, p x y = 1 -> t x y = 1).
Admitted.

// HOL Light: Library/wo.ml:1770 / TOSET_COFINAL_WOSET   (hash md5:219b5398837b970fbd5d759442edf53d)
Theorem hlt_TOSET_COFINAL_WOSET : forall A:set, A <> Empty -> forall l :e 2 :^: A :^: A, hl_toset A l = 1 -> exists w :e 2 :^: A :^: A, (forall x y :e A, w x y = 1 -> l x y = 1) /\ (hl_woset A w = 1 /\ forall x :e A, hl_IN A x (hl_fld A l) = 1 -> exists y :e A, hl_IN A y (hl_fld A w) = 1 /\ l x y = 1).
Admitted.

