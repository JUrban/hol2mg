// hol2mg literal statements (private): shard matroids of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Library/matroids.ml:13 / matroid_tybij   (hash md5:78e5a3468d65a8b335a8a9aa99514ff7)
Theorem hlt_matroid_tybij : forall A:set, A <> Empty -> (forall a :e hl_ty_matroid A, hl_matroid A (hl_dest_matroid A a) = a) /\ forall r :e 2 :^: A :*: 2 :^: A :^: (2 :^: A), (forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1) /\ ((forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A s (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1) /\ ((forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SUBSET A (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r t) = 1) /\ ((forall s :e 2 :^: A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 -> hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) /\ ((forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1 -> exists s' :e 2 :^: A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s') = 1)) /\ (forall s :e 2 :^: A, forall x y :e A, hl_SUBSET A s (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ (hl_IN A x (hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) r) = 1 /\ (hl_IN A y (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_INSERT A x s)) = 1 /\ ~ hl_IN A y (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r s) = 1)) -> hl_IN A x (hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) r (hl_INSERT A y s)) = 1))))) <-> hl_dest_matroid A (hl_matroid A r) = r.
Admitted.

// HOL Light: Library/matroids.ml:27 / matroid_set   (hash md5:9c0e86db0100e92d2d609fb5fcea524c)
Theorem hlt_matroid_set_thm : forall A:set, A <> Empty -> hl_matroid_set A = fun m :e hl_ty_matroid A => hl_FST (2 :^: A) (2 :^: A :^: (2 :^: A)) (hl_dest_matroid A m).
Admitted.

// HOL Light: Library/matroids.ml:30 / matroid_span   (hash md5:6e39183db8c6a57b3eeb3df9057beeff)
Theorem hlt_matroid_span_thm : forall A:set, A <> Empty -> hl_matroid_span A = fun m :e hl_ty_matroid A => hl_SND (2 :^: A) (2 :^: A :^: (2 :^: A)) (hl_dest_matroid A m).
Admitted.

// HOL Light: Library/matroids.ml:41 / MATROID_SPAN_INC   (hash md5:f1e4be7ecfcdbfdc8941797449b0745b)
Theorem hlt_MATROID_SPAN_INC : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_IN A x s = 1 -> hl_IN A x (hl_matroid_span A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:46 / SUBSET_MATROID_SPAN   (hash md5:225bc91987cd36b02e4a00699ab74c17)
Theorem hlt_SUBSET_MATROID_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> (hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1 <-> hl_SUBSET A s (hl_matroid_span A m t) = 1).
Admitted.

// HOL Light: Library/matroids.ml:54 / MATROID_SPAN_MINIMAL   (hash md5:42e1a4c7d6522e4f585dd0dd0a2d6562)
Theorem hlt_MATROID_SPAN_MINIMAL : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A t (hl_matroid_set A m) = 1 /\ hl_SUBSET A s (hl_matroid_span A m t) = 1 -> hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1.
Admitted.

// HOL Light: Library/matroids.ml:61 / MATROID_SPAN_SET   (hash md5:22d961869e5c6dfcc3b57c3e0149a154)
Theorem hlt_MATROID_SPAN_SET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_span A m (hl_matroid_set A m) = hl_matroid_set A m.
Admitted.

// HOL Light: Library/matroids.ml:66 / MATROID_SPAN_EQ   (hash md5:6773c11efd3b820c5083b0a3134a791d)
Theorem hlt_MATROID_SPAN_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> (hl_matroid_span A m s = hl_matroid_span A m t <-> hl_SUBSET A s (hl_matroid_span A m t) = 1 /\ hl_SUBSET A t (hl_matroid_span A m s) = 1).
Admitted.

// HOL Light: Library/matroids.ml:73 / MATROID_SPAN_EQ_SET   (hash md5:90576758baee065050ed8829f2939e1e)
Theorem hlt_MATROID_SPAN_EQ_SET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> (hl_matroid_span A m s = hl_matroid_set A m <-> hl_SUBSET A (hl_matroid_set A m) (hl_matroid_span A m s) = 1).
Admitted.

// HOL Light: Library/matroids.ml:80 / MATROID_SPAN_SUBSET_EQ   (hash md5:74f12ffd5741cc6199a4513ad1a83393)
Theorem hlt_MATROID_SPAN_SUBSET_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> (hl_matroid_span A m s = hl_matroid_span A m t <-> hl_SUBSET A t (hl_matroid_span A m s) = 1).
Admitted.

// HOL Light: Library/matroids.ml:87 / MATROID_SPAN_INTER_SUBSET   (hash md5:95034c530a127ab443aea9c39817afb6)
Theorem hlt_MATROID_SPAN_INTER_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> hl_SUBSET A (hl_matroid_span A m (hl_INTER A s t)) (hl_INTER A (hl_matroid_span A m s) (hl_matroid_span A m t)) = 1.
Admitted.

// HOL Light: Library/matroids.ml:95 / MATROID_SPAN_UNION   (hash md5:2e1651f7f4fab4ae47bc078be98f0238)
Theorem hlt_MATROID_SPAN_UNION : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> hl_matroid_span A m (hl_UNION A s t) = hl_matroid_span A m (hl_UNION A (hl_matroid_span A m s) (hl_matroid_span A m t)).
Admitted.

// HOL Light: Library/matroids.ml:108 / MATROID_SPAN_UNION_LEFT   (hash md5:2fa4d340aaef5fac4b8a3f878396602a)
Theorem hlt_MATROID_SPAN_UNION_LEFT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> hl_matroid_span A m (hl_UNION A s t) = hl_matroid_span A m (hl_UNION A (hl_matroid_span A m s) t).
Admitted.

// HOL Light: Library/matroids.ml:115 / MATROID_SPAN_UNION_RIGHT   (hash md5:a6beefac547e8d5b0a0ab08a4ac20bbb)
Theorem hlt_MATROID_SPAN_UNION_RIGHT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> hl_matroid_span A m (hl_UNION A s t) = hl_matroid_span A m (hl_UNION A s (hl_matroid_span A m t)).
Admitted.

// HOL Light: Library/matroids.ml:122 / MATROID_SPAN_UNION_SUBSET   (hash md5:6c51f1c307d8b07b9b51e53ef142d0d4)
Theorem hlt_MATROID_SPAN_UNION_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> hl_SUBSET A (hl_UNION A (hl_matroid_span A m s) (hl_matroid_span A m t)) (hl_matroid_span A m (hl_UNION A s t)) = 1.
Admitted.

// HOL Light: Library/matroids.ml:130 / MATROID_SPAN_EXCHANGE_DELETE   (hash md5:0c748db50950a2cde5b089d00df01b8e)
Theorem hlt_MATROID_SPAN_EXCHANGE_DELETE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall a b :e A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_IN A b (hl_matroid_set A m) = 1 /\ (hl_IN A a (hl_matroid_span A m s) = 1 /\ ~ hl_IN A a (hl_matroid_span A m (hl_DELETE A s b)) = 1)) -> hl_IN A b (hl_matroid_span A m (hl_INSERT A a (hl_DELETE A s b))) = 1.
Admitted.

// HOL Light: Library/matroids.ml:143 / MATROID_SPAN_UNION_EQ   (hash md5:f64aac6bd14a2c28c701a79ac51e3ad6)
Theorem hlt_MATROID_SPAN_UNION_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> (hl_matroid_span A m (hl_UNION A s t) = hl_matroid_span A m t <-> hl_SUBSET A s (hl_matroid_span A m t) = 1).
Admitted.

// HOL Light: Library/matroids.ml:154 / MATROID_SPAN_INSERT_EQ   (hash md5:06ceb94676fee37ee134bab281cedf61)
Theorem hlt_MATROID_SPAN_INSERT_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_IN A x (hl_matroid_set A m) = 1 -> (hl_matroid_span A m (hl_INSERT A x s) = hl_matroid_span A m s <-> hl_IN A x (hl_matroid_span A m s) = 1).
Admitted.

// HOL Light: Library/matroids.ml:162 / MATROID_SPAN_DELETE_EQ   (hash md5:45f1c5b87b5415ba5841b662f3cbdff1)
Theorem hlt_MATROID_SPAN_DELETE_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_IN A x s = 1 /\ hl_SUBSET A s (hl_matroid_set A m) = 1 -> (hl_matroid_span A m (hl_DELETE A s x) = hl_matroid_span A m s <-> hl_IN A x (hl_matroid_span A m (hl_DELETE A s x)) = 1).
Admitted.

// HOL Light: Library/matroids.ml:171 / MATROID_SPAN_TRANS   (hash md5:a9d4a85251cd5dcf24da028f556496e0)
Theorem hlt_MATROID_SPAN_TRANS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall x y :e A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_IN A x (hl_matroid_span A m s) = 1 /\ hl_IN A y (hl_matroid_span A m (hl_INSERT A x s)) = 1) -> hl_IN A y (hl_matroid_span A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:179 / MATROID_SPAN_FINITARY_GEN   (hash md5:dbc0b8fffc8ab1534db7ca8df457a1c3)
Theorem hlt_MATROID_SPAN_FINITARY_GEN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s k :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_FINITE A k = 1 /\ hl_SUBSET A k (hl_matroid_span A m s) = 1) -> exists s' :e 2 :^: A, hl_FINITE A s' = 1 /\ (hl_SUBSET A s' s = 1 /\ hl_SUBSET A k (hl_matroid_span A m s') = 1).
Admitted.

// HOL Light: Library/matroids.ml:204 / MATROID_SPAN_FINITARY_MINIMAL   (hash md5:15b637f842b1ba948a540b1e107625d1)
Theorem hlt_MATROID_SPAN_FINITARY_MINIMAL : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_IN A x (hl_matroid_span A m s) = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (hl_IN A x (hl_matroid_span A m t) = 1 /\ forall t' :e 2 :^: A, hl_PSUBSET A t' t = 1 -> ~ hl_IN A x (hl_matroid_span A m t') = 1)).
Admitted.

// HOL Light: Library/matroids.ml:227 / matroid_spanning   (hash md5:8e9f30b5ce7a2c8185d87174a5509850)
Theorem hlt_matroid_spanning_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall m :e hl_ty_matroid A, hl_matroid_spanning A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_matroid_span A m s = hl_matroid_set A m.
Admitted.

// HOL Light: Library/matroids.ml:231 / matroid_independent   (hash md5:aa802083b8c49782a2c14fa588739914)
Theorem hlt_matroid_independent_thm : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_independent A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ forall x :e A, hl_IN A x s = 1 -> ~ hl_IN A x (hl_matroid_span A m (hl_DELETE A s x)) = 1.
Admitted.

// HOL Light: Library/matroids.ml:236 / matroid_basis   (hash md5:9ef687dfc1353fa32914e0e96ebd731d)
Theorem hlt_matroid_basis_thm : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_basis A m s = 1 <-> hl_matroid_spanning A m s = 1 /\ hl_matroid_independent A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:240 / matroid_dependent   (hash md5:b8032639c6be97c7ab60cb05ed58eb19)
Theorem hlt_matroid_dependent_thm : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_dependent A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ ~ hl_matroid_independent A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:244 / MATROID_SPANNING_IMP_SUBSET   (hash md5:d48ab00c4a8c02a620a7ec68a622cb72)
Theorem hlt_MATROID_SPANNING_IMP_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_spanning A m s = 1 -> hl_SUBSET A s (hl_matroid_set A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:248 / MATROID_INDEPENDENT_IMP_SUBSET   (hash md5:b6da092448746afb15c475115bcc84be)
Theorem hlt_MATROID_INDEPENDENT_IMP_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_independent A m s = 1 -> hl_SUBSET A s (hl_matroid_set A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:252 / MATROID_DEPENDENT_IMP_SUBSET   (hash md5:4249ae1defa86fce636f1ea3a2f71c38)
Theorem hlt_MATROID_DEPENDENT_IMP_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_dependent A m s = 1 -> hl_SUBSET A s (hl_matroid_set A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:256 / MATROID_BASIS_IMP_SUBSET   (hash md5:84beec8ad89541543dc6631828d0cddd)
Theorem hlt_MATROID_BASIS_IMP_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_basis A m s = 1 -> hl_SUBSET A s (hl_matroid_set A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:260 / MATROID_SPANNING_ALT   (hash md5:7f6c1374cf905c0a3a68355863372b53)
Theorem hlt_MATROID_SPANNING_ALT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_spanning A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A (hl_matroid_set A m) (hl_matroid_span A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:267 / MATROID_SPANNING_SET   (hash md5:fbc716dd9c704dd3badef071c62afa76)
Theorem hlt_MATROID_SPANNING_SET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_spanning A m (hl_matroid_set A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:272 / MATROID_INDEPENDENT   (hash md5:0ca721c3299f69b6caa45cdb64fadebf)
Theorem hlt_MATROID_INDEPENDENT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_independent A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ ~ hl_matroid_dependent A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:278 / MATROID_DEPENDENT   (hash md5:b01d00eef6be9effba0ce16d05f4a462)
Theorem hlt_MATROID_DEPENDENT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_dependent A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ exists x :e A, hl_IN A x s = 1 /\ hl_IN A x (hl_matroid_span A m (hl_DELETE A s x)) = 1.
Admitted.

// HOL Light: Library/matroids.ml:290 / MATROID_INDEPENDENT_EMPTY   (hash md5:482b12463cf61d0ab883ea45bbd8260a)
Theorem hlt_MATROID_INDEPENDENT_EMPTY : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_independent A m (hl_EMPTY A) = 1.
Admitted.

// HOL Light: Library/matroids.ml:294 / MATROID_INDEPENDENT_MONO   (hash md5:95c82addc0721a6fcf720ed1fc35c4f4)
Theorem hlt_MATROID_INDEPENDENT_MONO : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_independent A m t = 1 /\ hl_SUBSET A s t = 1 -> hl_matroid_independent A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:304 / MATROID_INDEPENDENT_FINITARY   (hash md5:dbf52e3d8435fb9a99cac2aabd3a9fee)
Theorem hlt_MATROID_INDEPENDENT_FINITARY : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_independent A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ forall t :e 2 :^: A, hl_FINITE A t = 1 /\ hl_SUBSET A t s = 1 -> hl_matroid_independent A m t = 1.
Admitted.

// HOL Light: Library/matroids.ml:324 / MATROID_DEPENDENT_FINITARY   (hash md5:9d0d49e8ff94b4689586b4d664c76ef8)
Theorem hlt_MATROID_DEPENDENT_FINITARY : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_dependent A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ hl_matroid_dependent A m t = 1).
Admitted.

// HOL Light: Library/matroids.ml:334 / MATROID_INDEPENDENT_INSERT   (hash md5:48281f56788af3f1f177af82e30bdfac)
Theorem hlt_MATROID_INDEPENDENT_INSERT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall a :e A, hl_matroid_independent A m (hl_INSERT A a s) = 1 <-> hl_IN A a s = 1 /\ hl_matroid_independent A m s = 1 \/ ~ hl_IN A a s = 1 /\ (hl_IN A a (hl_matroid_set A m) = 1 /\ (hl_matroid_independent A m s = 1 /\ ~ hl_IN A a (hl_matroid_span A m s) = 1)).
Admitted.

// HOL Light: Library/matroids.ml:365 / MATROID_SPAN_PSUBSET_INDEPENDENT   (hash md5:1023a0cbb8e72f3911753c07ec3de1c3)
Theorem hlt_MATROID_SPAN_PSUBSET_INDEPENDENT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_PSUBSET A s t = 1 /\ hl_matroid_independent A m t = 1 -> hl_PSUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1.
Admitted.

// HOL Light: Library/matroids.ml:381 / MATROID_SPAN_PSUBSET_EXPLICIT   (hash md5:dda41f3d539cd492b537dd82222a0916)
Theorem hlt_MATROID_SPAN_PSUBSET_EXPLICIT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_PSUBSET A s t = 1 /\ hl_matroid_independent A m t = 1 -> exists a :e A, hl_IN A a t = 1 /\ ~ hl_IN A a (hl_matroid_span A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:393 / MATROID_SPANNING_SUBSET_INDEPENDENT   (hash md5:f211f1e1c22e6b815e17d2834be678aa)
Theorem hlt_MATROID_SPANNING_SUBSET_INDEPENDENT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A t s = 1 /\ (hl_matroid_independent A m s = 1 /\ hl_SUBSET A s (hl_matroid_span A m t) = 1) -> s = t.
Admitted.

// HOL Light: Library/matroids.ml:405 / MATROID_SPANNING_PSUBSET_INDEPENDENT   (hash md5:16303631850e76d876105c5e47012d80)
Theorem hlt_MATROID_SPANNING_PSUBSET_INDEPENDENT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, ~ (hl_PSUBSET A s t = 1 /\ (hl_matroid_spanning A m s = 1 /\ hl_matroid_independent A m t = 1)).
Admitted.

// HOL Light: Library/matroids.ml:415 / MATROID_MAXIMAL_INDEPENDENT_SUBSET_SPAN   (hash md5:2140c578b152c9df6caa44a8d6a258ed)
Theorem hlt_MATROID_MAXIMAL_INDEPENDENT_SUBSET_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ (hl_SUBSET A t (hl_matroid_set A m) = 1 /\ (hl_matroid_independent A m s = 1 /\ (forall s' :e 2 :^: A, hl_PSUBSET A s s' = 1 /\ hl_SUBSET A s' t = 1 -> ~ hl_matroid_independent A m s' = 1))) -> hl_matroid_span A m s = hl_matroid_span A m t.
Admitted.

// HOL Light: Library/matroids.ml:431 / MATROID_BASIS_EQ_MAXIMAL_INDEPENDENT   (hash md5:8ba5783ec8055ca454b5faf9434c48f3)
Theorem hlt_MATROID_BASIS_EQ_MAXIMAL_INDEPENDENT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_basis A m s = 1 <-> hl_matroid_independent A m s = 1 /\ forall s' :e 2 :^: A, hl_PSUBSET A s s' = 1 -> ~ hl_matroid_independent A m s' = 1.
Admitted.

// HOL Light: Library/matroids.ml:445 / MATROID_BASIS_EQ_MINIMAL_SPANNING   (hash md5:df2462beb7bbe19fbbf10dbee3afddc9)
Theorem hlt_MATROID_BASIS_EQ_MINIMAL_SPANNING : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_basis A m s = 1 <-> hl_matroid_spanning A m s = 1 /\ forall s' :e 2 :^: A, hl_PSUBSET A s' s = 1 -> ~ hl_matroid_spanning A m s' = 1.
Admitted.

// HOL Light: Library/matroids.ml:461 / MATROID_INDEPENDENT_CHAIN   (hash md5:beb602f3613426adfff0fd4e9a0c481d)
Theorem hlt_MATROID_INDEPENDENT_CHAIN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall c :e 2 :^: (2 :^: A), (forall s :e 2 :^: A, hl_IN (2 :^: A) s c = 1 -> hl_matroid_independent A m s = 1) /\ (forall s t :e 2 :^: A, hl_IN (2 :^: A) s c = 1 /\ hl_IN (2 :^: A) t c = 1 -> hl_SUBSET A s t = 1 \/ hl_SUBSET A t s = 1) -> hl_matroid_independent A m (hl_UNIONS A c) = 1.
Admitted.

// HOL Light: Library/matroids.ml:476 / MATROID_SPAN_CHAIN   (hash md5:cd2cbc2c2e550a51b0fa0fdea3bac8af)
Theorem hlt_MATROID_SPAN_CHAIN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall c :e 2 :^: (2 :^: A), ~ c = hl_EMPTY (2 :^: A) /\ ((forall s :e 2 :^: A, hl_IN (2 :^: A) s c = 1 -> hl_SUBSET A s (hl_matroid_set A m) = 1) /\ (forall s t :e 2 :^: A, hl_IN (2 :^: A) s c = 1 /\ hl_IN (2 :^: A) t c = 1 -> hl_SUBSET A s t = 1 \/ hl_SUBSET A t s = 1)) -> hl_matroid_span A m (hl_UNIONS A c) = hl_UNIONS A (hl_GSPEC (2 :^: A) (fun GEN_PVAR_1229 :e 2 :^: A => if exists s :e 2 :^: A, hl_SETSPEC (2 :^: A) GEN_PVAR_1229 (hl_IN (2 :^: A) s c) (hl_matroid_span A m s) = 1 then 1 else 0)).
Admitted.

// HOL Light: Library/matroids.ml:495 / MATROID_INTERMEDIATE_SPAN   (hash md5:325a145375a242ade1ac8564f023420a)
Theorem hlt_MATROID_INTERMEDIATE_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_independent A m s = 1 /\ (hl_SUBSET A t (hl_matroid_set A m) = 1 /\ hl_SUBSET A s (hl_matroid_span A m t) = 1) -> exists b :e 2 :^: A, hl_SUBSET A s b = 1 /\ (hl_SUBSET A b (hl_UNION A s t) = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_matroid_span A m b = hl_matroid_span A m t)).
Admitted.

// HOL Light: Library/matroids.ml:525 / MATROID_INTERMEDIATE_BASIS   (hash md5:e926a3f44f2ce721c8729e5207ef9612)
Theorem hlt_MATROID_INTERMEDIATE_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_independent A m s = 1 /\ hl_matroid_spanning A m t = 1 -> exists b :e 2 :^: A, hl_SUBSET A s b = 1 /\ (hl_SUBSET A b (hl_UNION A s t) = 1 /\ hl_matroid_basis A m b = 1).
Admitted.

// HOL Light: Library/matroids.ml:534 / MATROID_INDEPENDENT_EXTENDS_TO_BASIS   (hash md5:ca513053a1fcf510da4d00b4fc75810d)
Theorem hlt_MATROID_INDEPENDENT_EXTENDS_TO_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_independent A m s = 1 -> exists b :e 2 :^: A, hl_SUBSET A s b = 1 /\ hl_matroid_basis A m b = 1.
Admitted.

// HOL Light: Library/matroids.ml:542 / MATROID_BASIS_EXISTS   (hash md5:dad66f43760d6d1e66e6a2025e06a9be)
Theorem hlt_MATROID_BASIS_EXISTS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, exists b :e 2 :^: A, hl_matroid_basis A m b = 1.
Admitted.

// HOL Light: Library/matroids.ml:546 / MATROID_SPANNING_CONTAINS_BASIS   (hash md5:469fb2c66d63240fdab0dd739725e6d7)
Theorem hlt_MATROID_SPANNING_CONTAINS_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_spanning A m s = 1 -> exists b :e 2 :^: A, hl_SUBSET A b s = 1 /\ hl_matroid_basis A m b = 1.
Admitted.

// HOL Light: Library/matroids.ml:554 / MATROID_SPAN_DEPENDENCE   (hash md5:a37f5d1d72f5321105dea2db87fa7315)
Theorem hlt_MATROID_SPAN_DEPENDENCE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_IN A x (hl_matroid_set A m) = 1 /\ hl_SUBSET A s (hl_matroid_set A m) = 1 -> (hl_IN A x (hl_matroid_span A m s) = 1 <-> hl_IN A x s = 1 \/ exists t :e 2 :^: A, hl_SUBSET A t s = 1 /\ (hl_matroid_independent A m t = 1 /\ hl_matroid_dependent A m (hl_INSERT A x t) = 1)).
Admitted.

// HOL Light: Library/matroids.ml:575 / MATROID_STEINITZ_EXCHANGE   (hash md5:b05c149fcdcc83cadf09eda481842fb6)
Theorem hlt_MATROID_STEINITZ_EXCHANGE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A t (hl_matroid_set A m) = 1 /\ (hl_FINITE A s = 1 /\ (hl_matroid_independent A m s = 1 /\ hl_SUBSET A s (hl_matroid_span A m t) = 1)) -> exists t' :e 2 :^: A, hl_SUBSET A t' t = 1 /\ (hl_HAS_SIZE A t' (hl_CARD A s) = 1 /\ hl_matroid_span A m (hl_UNION A (hl_DIFF A t t') s) = hl_matroid_span A m t).
Admitted.

// HOL Light: Library/matroids.ml:634 / MATROID_INDEPENDENT_CARD_LE_SPAN_FINITE   (hash md5:76c2b6b98e7bf293202527c524e8bfab)
Theorem hlt_MATROID_INDEPENDENT_CARD_LE_SPAN_FINITE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t (hl_matroid_set A m) = 1 /\ (hl_matroid_independent A m s = 1 /\ hl_SUBSET A s (hl_matroid_span A m t) = 1)) -> hl_FINITE A s = 1 /\ hl_le (hl_CARD A s) (hl_CARD A t) = 1.
Admitted.

// HOL Light: Library/matroids.ml:652 / MATROID_EQ_SPANS_FINITE   (hash md5:b8770a339418d637d0d0fa1a8e265068)
Theorem hlt_MATROID_EQ_SPANS_FINITE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_independent A m s = 1 /\ (hl_matroid_independent A m t = 1 /\ hl_matroid_span A m s = hl_matroid_span A m t) -> (hl_FINITE A s = 1 <-> hl_FINITE A t = 1).
Admitted.

// HOL Light: Library/matroids.ml:660 / MATROID_EQ_SPANS_SIZE   (hash md5:1e1579dc8c349eb39db6c6b159f30fda)
Theorem hlt_MATROID_EQ_SPANS_SIZE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, forall n :e omega, hl_matroid_independent A m s = 1 /\ (hl_matroid_independent A m t = 1 /\ hl_matroid_span A m s = hl_matroid_span A m t) -> (hl_HAS_SIZE A s n = 1 <-> hl_HAS_SIZE A t n = 1).
Admitted.

// HOL Light: Library/matroids.ml:669 / MATROID_BASES_FINITE   (hash md5:fefdefb9177faf642d5111cafb13cf7c)
Theorem hlt_MATROID_BASES_FINITE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_basis A m s = 1 /\ hl_matroid_basis A m t = 1 -> (hl_FINITE A s = 1 <-> hl_FINITE A t = 1).
Admitted.

// HOL Light: Library/matroids.ml:675 / MATROID_BASES_SIZE   (hash md5:e8b95d9d3152fbf2840fd48ef2105e52)
Theorem hlt_MATROID_BASES_SIZE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, forall n :e omega, hl_matroid_basis A m s = 1 /\ hl_matroid_basis A m t = 1 -> (hl_HAS_SIZE A s n = 1 <-> hl_HAS_SIZE A t n = 1).
Admitted.

// HOL Light: Library/matroids.ml:682 / MATROID_INDEPENDENT_CARD_LE_SPAN   (hash md5:39c3a8193cef36f9cb0dd26c9baa0d04)
Theorem hlt_MATROID_INDEPENDENT_CARD_LE_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A t (hl_matroid_set A m) = 1 /\ (hl_matroid_independent A m s = 1 /\ hl_SUBSET A s (hl_matroid_span A m t) = 1) -> hl_sym_3c3d5f63 A A s t = 1.
Admitted.

// HOL Light: Library/matroids.ml:739 / MATROID_INDEPENDENT_CARD_LE_SPANNING   (hash md5:5a79d81a4377b3ff81c5d3cf6d2f50c3)
Theorem hlt_MATROID_INDEPENDENT_CARD_LE_SPANNING : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_independent A m s = 1 /\ hl_matroid_spanning A m t = 1 -> hl_sym_3c3d5f63 A A s t = 1.
Admitted.

// HOL Light: Library/matroids.ml:747 / MATROID_EQ_SPANS_CARD_EQ   (hash md5:3eeb70d0bc6581c0ab3aaf8de1f332cc)
Theorem hlt_MATROID_EQ_SPANS_CARD_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_independent A m s = 1 /\ (hl_matroid_independent A m t = 1 /\ hl_matroid_span A m s = hl_matroid_span A m t) -> hl_sym_3d5f63 A A s t = 1.
Admitted.

// HOL Light: Library/matroids.ml:756 / MATROID_BASES_CARD_EQ   (hash md5:bc1599f4319b1a7a34c293c5f7caca19)
Theorem hlt_MATROID_BASES_CARD_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_basis A m s = 1 /\ hl_matroid_basis A m t = 1 -> hl_sym_3d5f63 A A s t = 1.
Admitted.

// HOL Light: Library/matroids.ml:762 / MATROID_INDEPENDENT_SPANNING_FINITE   (hash md5:8b8901b779ba112b3ac7184c8640eafe)
Theorem hlt_MATROID_INDEPENDENT_SPANNING_FINITE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_independent A m s = 1 /\ (hl_matroid_spanning A m t = 1 /\ hl_FINITE A t = 1) -> hl_FINITE A s = 1.
Admitted.

// HOL Light: Library/matroids.ml:768 / MATROID_DEPENDENT_FINITARY_MINIMAL   (hash md5:538e89f21bad7442602cd1bd7a759841)
Theorem hlt_MATROID_DEPENDENT_FINITARY_MINIMAL : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_dependent A m s = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (hl_matroid_dependent A m t = 1 /\ forall t' :e 2 :^: A, hl_PSUBSET A t' t = 1 -> hl_matroid_independent A m t' = 1)).
Admitted.

// HOL Light: Library/matroids.ml:788 / MATROID_MINIMALLY_DEPENDENT   (hash md5:4c03aadee73aa4392bfd715ebf261510)
Theorem hlt_MATROID_MINIMALLY_DEPENDENT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, (forall t :e 2 :^: A, hl_PSUBSET A t s = 1 -> hl_matroid_independent A m t = 1) -> (hl_matroid_dependent A m s = 1 <-> ~ s = hl_EMPTY A /\ (hl_SUBSET A s (hl_matroid_set A m) = 1 /\ forall a :e A, hl_IN A a s = 1 -> hl_IN A a (hl_matroid_span A m (hl_DELETE A s a)) = 1)).
Admitted.

// HOL Light: Library/matroids.ml:815 / MATROID_MINIMALLY_DEPENDENT_SUBSET   (hash md5:bb8aed7faa8b0197610dd903cdf583ef)
Theorem hlt_MATROID_MINIMALLY_DEPENDENT_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_dependent A m s = 1 -> exists t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t s = 1 /\ (hl_matroid_dependent A m t = 1 /\ (~ t = hl_EMPTY A /\ forall a :e A, hl_IN A a t = 1 -> hl_IN A a (hl_matroid_span A m (hl_DELETE A t a)) = 1))).
Admitted.

// HOL Light: Library/matroids.ml:829 / matroid_subspace   (hash md5:b90191eda80edc38b5bfd0a6bca6a213)
Theorem hlt_matroid_subspace_thm : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_subspace A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_matroid_span A m s = s.
Admitted.

// HOL Light: Library/matroids.ml:833 / MATROID_SUBSPACE_IMP_SUBSET   (hash md5:6e63b2700ca0c6344e391719cc88fe32)
Theorem hlt_MATROID_SUBSPACE_IMP_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_subspace A m s = 1 -> hl_SUBSET A s (hl_matroid_set A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:837 / MATROID_SUBSPACE_SET   (hash md5:519f4ed913b88164ac7048fb13d42b38)
Theorem hlt_MATROID_SUBSPACE_SET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_subspace A m (hl_matroid_set A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:841 / MATROID_SUBSPACE_SPAN   (hash md5:e8483b6a7ba83bc5f9fdd836ffdafc5f)
Theorem hlt_MATROID_SUBSPACE_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_subspace A m (hl_matroid_span A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:847 / MATROID_SUBSPACE   (hash md5:fe5aac9b1f8b6b6da02927653273f10f)
Theorem hlt_MATROID_SUBSPACE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_subspace A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A (hl_matroid_span A m s) s = 1.
Admitted.

// HOL Light: Library/matroids.ml:854 / MATROID_SUBSPACE_INTERS   (hash md5:49f3cf47f2414b5e75bc7272d878e249)
Theorem hlt_MATROID_SUBSPACE_INTERS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall f :e 2 :^: (2 :^: A), ~ f = hl_EMPTY (2 :^: A) /\ (forall s :e 2 :^: A, hl_IN (2 :^: A) s f = 1 -> hl_matroid_subspace A m s = 1) -> hl_matroid_subspace A m (hl_INTERS A f) = 1.
Admitted.

// HOL Light: Library/matroids.ml:865 / MATROID_SUBSPACE_INTER   (hash md5:3f5e7655b59cda5bfda96648b7b14e32)
Theorem hlt_MATROID_SUBSPACE_INTER : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_subspace A m s = 1 /\ hl_matroid_subspace A m t = 1 -> hl_matroid_subspace A m (hl_INTER A s t) = 1.
Admitted.

// HOL Light: Library/matroids.ml:872 / MATROID_SPAN_INTER_SPANS   (hash md5:3e1496906fda0f9169c3653230137c18)
Theorem hlt_MATROID_SPAN_INTER_SPANS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_SUBSET A t (hl_matroid_set A m) = 1 -> hl_matroid_span A m (hl_INTER A (hl_matroid_span A m s) (hl_matroid_span A m t)) = hl_INTER A (hl_matroid_span A m s) (hl_matroid_span A m t).
Admitted.

// HOL Light: Library/matroids.ml:880 / MATROID_SUBSPACE_CHAIN   (hash md5:49a6f6d37b7fd21fcf17064d5dccda20)
Theorem hlt_MATROID_SUBSPACE_CHAIN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall c :e 2 :^: (2 :^: A), ~ c = hl_EMPTY (2 :^: A) /\ ((forall s :e 2 :^: A, hl_IN (2 :^: A) s c = 1 -> hl_matroid_subspace A m s = 1) /\ (forall s t :e 2 :^: A, hl_IN (2 :^: A) s c = 1 /\ hl_IN (2 :^: A) t c = 1 -> hl_SUBSET A s t = 1 \/ hl_SUBSET A t s = 1)) -> hl_matroid_subspace A m (hl_UNIONS A c) = 1.
Admitted.

// HOL Light: Library/matroids.ml:889 / MATROID_SPAN_SUBSPACE   (hash md5:71974e94da522bac38cbcd96ecfde0fc)
Theorem hlt_MATROID_SPAN_SUBSPACE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, hl_SUBSET A b s = 1 /\ (hl_SUBSET A s (hl_matroid_span A m b) = 1 /\ hl_matroid_subspace A m s = 1) -> hl_matroid_span A m b = s.
Admitted.

// HOL Light: Library/matroids.ml:896 / MATROID_SPAN_EQ_SELF   (hash md5:2a895cb5570d06ee2cafd74b27c8d6b4)
Theorem hlt_MATROID_SPAN_EQ_SELF : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> (hl_matroid_span A m s = s <-> hl_matroid_subspace A m s = 1).
Admitted.

// HOL Light: Library/matroids.ml:902 / MATROID_SPAN_OF_SUBSPACE   (hash md5:7195c96bfd4ada059b481720810e9693)
Theorem hlt_MATROID_SPAN_OF_SUBSPACE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_subspace A m s = 1 -> hl_matroid_span A m s = s.
Admitted.

// HOL Light: Library/matroids.ml:907 / MATROID_SPAN_SUBSET_SUBSPACE   (hash md5:c19ad41faa3e717a2af689228c46e918)
Theorem hlt_MATROID_SPAN_SUBSET_SUBSPACE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_matroid_subspace A m t = 1 -> hl_SUBSET A (hl_matroid_span A m s) t = 1.
Admitted.

// HOL Light: Library/matroids.ml:916 / submatroid   (hash md5:2ded485caf4395d8d8387fceab9a4179)
Theorem hlt_submatroid_thm : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall m :e hl_ty_matroid A, hl_submatroid A m s = hl_matroid A (hl_pair (2 :^: A) (2 :^: A :^: (2 :^: A)) (hl_matroid_span A m (hl_INTER A (hl_matroid_set A m) s)) (hl_matroid_span A m)).
Admitted.

// HOL Light: Library/matroids.ml:920 / SUBMATROID_GEN   (hash md5:3b5043b400099e9e6619fdbc23cc6327)
Theorem hlt_SUBMATROID_GEN : forall A:set, A <> Empty -> (forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_set A (hl_submatroid A m s) = hl_matroid_span A m (hl_INTER A (hl_matroid_set A m) s)) /\ forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_span A (hl_submatroid A m s) = hl_matroid_span A m.
Admitted.

// HOL Light: Library/matroids.ml:940 / SUBMATROID   (hash md5:2117c275a1e3b58f3a0640ca0109975f)
Theorem hlt_SUBMATROID : forall A:set, A <> Empty -> (forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_subspace A m s = 1 -> hl_matroid_set A (hl_submatroid A m s) = s) /\ forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_span A (hl_submatroid A m s) = hl_matroid_span A m.
Admitted.

// HOL Light: Library/matroids.ml:947 / SUBMATROID_SPAN   (hash md5:b7337b6cb95f1409469e5ba972104111)
Theorem hlt_SUBMATROID_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_submatroid A m (hl_matroid_span A m s) = hl_submatroid A m s.
Admitted.

// HOL Light: Library/matroids.ml:954 / SUBMATROID_SUBSET   (hash md5:fc8bfe5c2460d1230cdd39320d225c9d)
Theorem hlt_SUBMATROID_SUBSET : forall A:set, A <> Empty -> (forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_set A (hl_submatroid A m s) = hl_matroid_span A m s) /\ forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_span A (hl_submatroid A m s) = hl_matroid_span A m.
Admitted.

// HOL Light: Library/matroids.ml:961 / SUBMATROID_SET   (hash md5:aa4041f65b4908527d6e46344af918ed)
Theorem hlt_SUBMATROID_SET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_submatroid A m (hl_matroid_set A m) = m.
Admitted.

// HOL Light: Library/matroids.ml:966 / MATROID_INDEPENDENT_SUBMATROID   (hash md5:fcbc547df571586d35b59ed571b537ba)
Theorem hlt_MATROID_INDEPENDENT_SUBMATROID : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> (hl_matroid_independent A (hl_submatroid A m s) b = 1 <-> hl_SUBSET A b (hl_matroid_span A m s) = 1 /\ hl_matroid_independent A m b = 1).
Admitted.

// HOL Light: Library/matroids.ml:974 / MATROID_SPANNING_SUBMATROID   (hash md5:db5c27ecc46936ee4412dc0bc5384220)
Theorem hlt_MATROID_SPANNING_SUBMATROID : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> (hl_matroid_spanning A (hl_submatroid A m s) b = 1 <-> hl_SUBSET A b (hl_matroid_span A m s) = 1 /\ hl_matroid_span A m b = hl_matroid_span A m s).
Admitted.

// HOL Light: Library/matroids.ml:981 / MATROID_SPANNING_SUBMATROID_SELF   (hash md5:6edaeebdedc1cf213c12aed11d4e3b13)
Theorem hlt_MATROID_SPANNING_SUBMATROID_SELF : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_spanning A (hl_submatroid A m s) s = 1.
Admitted.

// HOL Light: Library/matroids.ml:986 / MATROID_BASIS_SUBMATROID   (hash md5:129f8664e0ff9eeca6ba7d7a6f1c0a62)
Theorem hlt_MATROID_BASIS_SUBMATROID : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> (hl_matroid_basis A (hl_submatroid A m s) b = 1 <-> hl_SUBSET A b (hl_matroid_span A m s) = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_matroid_span A m b = hl_matroid_span A m s)).
Admitted.

// HOL Light: Library/matroids.ml:997 / MATROID_SUBSET_CONTAINS_BASIS   (hash md5:74e5ed161d8001a4e11fa534903d0590)
Theorem hlt_MATROID_SUBSET_CONTAINS_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> exists b :e 2 :^: A, hl_SUBSET A b s = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_matroid_span A m b = hl_matroid_span A m s).
Admitted.

// HOL Light: Library/matroids.ml:1008 / MATROID_STEINITZ_EXCHANGE_FINITE   (hash md5:6e58ae8775c824608ab0452b7f6a2752)
Theorem hlt_MATROID_STEINITZ_EXCHANGE_FINITE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t (hl_matroid_set A m) = 1 /\ (hl_matroid_independent A m s = 1 /\ hl_SUBSET A s (hl_matroid_span A m t) = 1)) -> exists t' :e 2 :^: A, hl_HAS_SIZE A t' (hl_CARD A t) = 1 /\ (hl_SUBSET A s t' = 1 /\ (hl_SUBSET A t' (hl_UNION A s t) = 1 /\ hl_matroid_span A m t' = hl_matroid_span A m t)).
Admitted.

// HOL Light: Library/matroids.ml:1036 / MATROID_STEINITZ_EXCHANGE_ALT   (hash md5:1b51dbcb841d4742231fd63b70d9d0c1)
Theorem hlt_MATROID_STEINITZ_EXCHANGE_ALT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_FINITE A t = 1 /\ (hl_SUBSET A t (hl_matroid_set A m) = 1 /\ (hl_matroid_independent A m s = 1 /\ hl_SUBSET A s (hl_matroid_span A m t) = 1)) -> exists t' :e 2 :^: A, hl_SUBSET A t' t = 1 /\ (hl_add (hl_CARD A t') (hl_CARD A s) = hl_CARD A t /\ hl_matroid_span A m (hl_UNION A s t') = hl_matroid_span A m t).
Admitted.

// HOL Light: Library/matroids.ml:1057 / matroid_finite_dimensional   (hash md5:1fd5d94579de074af9945f4576873309)
Theorem hlt_matroid_finite_dimensional_thm : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_finite_dimensional A m = 1 <-> exists b :e 2 :^: A, hl_FINITE A b = 1 /\ hl_matroid_spanning A m b = 1.
Admitted.

// HOL Light: Library/matroids.ml:1061 / matroid_dimension   (hash md5:69fbfbe2d789c822a424c94186727b4d)
Theorem hlt_matroid_dimension_thm : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_dimension A m = hl_select omega (fun n :e omega => if forall b :e 2 :^: A, hl_matroid_basis A m b = 1 -> hl_HAS_SIZE A b n = 1 then 1 else 0).
Admitted.

// HOL Light: Library/matroids.ml:1065 / matroid_finite_dim   (hash md5:c67fa1b5b0b8bdb313496926b94b1bc6)
Theorem hlt_matroid_finite_dim_thm : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_matroid_finite_dimensional A (hl_submatroid A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1070 / matroid_dim   (hash md5:daf6efa5e05a8280d1702a2a5d094e8a)
Theorem hlt_matroid_dim_thm : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_dim A m s = hl_matroid_dimension A (hl_submatroid A m s).
Admitted.

// HOL Light: Library/matroids.ml:1073 / MATROID_FINITE_DIM_IMP_SUBSET   (hash md5:1ef7f3466f133df3441046c4bb2f13bc)
Theorem hlt_MATROID_FINITE_DIM_IMP_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 -> hl_SUBSET A s (hl_matroid_set A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1077 / MATROID_FINITE_DIM_SET   (hash md5:6b40539ed789f67ea3c875a338be1a05)
Theorem hlt_MATROID_FINITE_DIM_SET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_finite_dim A m (hl_matroid_set A m) = 1 <-> hl_matroid_finite_dimensional A m = 1.
Admitted.

// HOL Light: Library/matroids.ml:1082 / MATROID_DIM_SET   (hash md5:42c5e4f398bbac08ea4fd3a300e3cb15)
Theorem hlt_MATROID_DIM_SET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_dim A m (hl_matroid_set A m) = hl_matroid_dimension A m.
Admitted.

// HOL Light: Library/matroids.ml:1087 / MATROID_FINITE_DIM_SPAN_EQ   (hash md5:4fea48a6eb761c0e8949126c6bfa6add)
Theorem hlt_MATROID_FINITE_DIM_SPAN_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_matroid_finite_dim A m (hl_matroid_span A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1094 / MATROID_FINITE_DIM_SPAN   (hash md5:fa223005cf59154693a53c81356965d0)
Theorem hlt_MATROID_FINITE_DIM_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> (hl_matroid_finite_dim A m (hl_matroid_span A m s) = 1 <-> hl_matroid_finite_dim A m s = 1).
Admitted.

// HOL Light: Library/matroids.ml:1101 / MATROID_DIM_SPAN   (hash md5:5f94bb70e8e0dc0ad67e69a5ae730f96)
Theorem hlt_MATROID_DIM_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_dim A m (hl_matroid_span A m s) = hl_matroid_dim A m s.
Admitted.

// HOL Light: Library/matroids.ml:1107 / MATROID_FINITE_DIMENSIONAL   (hash md5:3ca184b6db1c05b022297e47ea202263)
Theorem hlt_MATROID_FINITE_DIMENSIONAL : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_finite_dimensional A m = 1 <-> exists b :e 2 :^: A, hl_FINITE A b = 1 /\ (hl_SUBSET A b (hl_matroid_set A m) = 1 /\ hl_SUBSET A (hl_matroid_set A m) (hl_matroid_span A m b) = 1).
Admitted.

// HOL Light: Library/matroids.ml:1116 / MATROID_FINITE_DIMENSIONAL_BASIS   (hash md5:0dd1b7797169b3317d200688ad18cbdd)
Theorem hlt_MATROID_FINITE_DIMENSIONAL_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_finite_dimensional A m = 1 <-> exists b :e 2 :^: A, hl_FINITE A b = 1 /\ hl_matroid_basis A m b = 1.
Admitted.

// HOL Light: Library/matroids.ml:1124 / MATROID_FINITE_DIMENSIONAL_CONTAINS_BASIS   (hash md5:8df46bd9b75abd5c6e4e79c98e9d4a35)
Theorem hlt_MATROID_FINITE_DIMENSIONAL_CONTAINS_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dimensional A m = 1 /\ hl_matroid_spanning A m s = 1 -> exists b :e 2 :^: A, hl_FINITE A b = 1 /\ (hl_SUBSET A b s = 1 /\ hl_matroid_basis A m b = 1).
Admitted.

// HOL Light: Library/matroids.ml:1133 / MATROID_FINITE_DIMENSIONAL_ANY   (hash md5:40f1784a57cc29b3352483efb1e4ad57)
Theorem hlt_MATROID_FINITE_DIMENSIONAL_ANY : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, hl_matroid_basis A m b = 1 -> (hl_matroid_finite_dimensional A m = 1 <-> hl_FINITE A b = 1).
Admitted.

// HOL Light: Library/matroids.ml:1178 / MATROID_FINITE_DIMENSIONAL_DIM   (hash md5:6dba3bd0d18e83c153aa36f614f4c258)
Theorem hlt_MATROID_FINITE_DIMENSIONAL_DIM : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dimensional A m = 1 /\ hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_finite_dim A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:1186 / FINITE_IMP_MATROID_FINITE_DIM   (hash md5:ce2c3b373a342bc3c99e04f4c7643342)
Theorem hlt_FINITE_IMP_MATROID_FINITE_DIM : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_finite_dim A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:1191 / MATROID_FINITE_DIM_FINITE   (hash md5:626cc08097ddf30e7413d21bfc8f7c57)
Theorem hlt_MATROID_FINITE_DIM_FINITE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_FINITE A s = 1 -> (hl_matroid_finite_dim A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1).
Admitted.

// HOL Light: Library/matroids.ml:1196 / MATROID_FINITE_DIM_EMPTY   (hash md5:78110b9c7f493c5cc9314e3990bb420a)
Theorem hlt_MATROID_FINITE_DIM_EMPTY : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_finite_dim A m (hl_EMPTY A) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1200 / MATROID_FINITE_DIM_MONO   (hash md5:c7782b18a8783d577c576b5857ae1a00)
Theorem hlt_MATROID_FINITE_DIM_MONO : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_finite_dim A m t = 1 /\ hl_SUBSET A s t = 1 -> hl_matroid_finite_dim A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:1205 / MATROID_FINITE_DIM_UNION   (hash md5:bf63ad19c04d439b89cc67840bbf4dc9)
Theorem hlt_MATROID_FINITE_DIM_UNION : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_finite_dim A m (hl_UNION A s t) = 1 <-> hl_matroid_finite_dim A m s = 1 /\ hl_matroid_finite_dim A m t = 1.
Admitted.

// HOL Light: Library/matroids.ml:1219 / MATROID_FINITE_DIM_INSERT   (hash md5:4c07a6408996e14410e84446249b98ef)
Theorem hlt_MATROID_FINITE_DIM_INSERT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_matroid_finite_dim A m (hl_INSERT A x s) = 1 <-> hl_IN A x (hl_matroid_set A m) = 1 /\ hl_matroid_finite_dim A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:1228 / MATROID_DIMENSION_ALT   (hash md5:7448e7e1c8d5aaab9d3e56d0c7ec9bf1)
Theorem hlt_MATROID_DIMENSION_ALT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_dimension A m = hl_select omega (fun n :e omega => if exists b :e 2 :^: A, hl_matroid_basis A m b = 1 /\ hl_HAS_SIZE A b n = 1 then 1 else 0).
Admitted.

// HOL Light: Library/matroids.ml:1235 / MATROID_DIM_BASIS   (hash md5:d79a80d50b95c3deba4d176e0ceee856)
Theorem hlt_MATROID_DIM_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_dim A m s = hl_select omega (fun n :e omega => if exists b :e 2 :^: A, hl_SUBSET A b s = 1 /\ (hl_matroid_independent A m b = 1 /\ (hl_matroid_span A m b = hl_matroid_span A m s /\ hl_HAS_SIZE A b n = 1)) then 1 else 0).
Admitted.

// HOL Light: Library/matroids.ml:1249 / MATROID_DIM_ALT   (hash md5:c3fd25a795e3a37d2277e89e4e523ab3)
Theorem hlt_MATROID_DIM_ALT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_dim A m s = hl_select omega (fun n :e omega => if exists b :e 2 :^: A, hl_SUBSET A b s = 1 /\ (hl_matroid_independent A m b = 1 /\ (hl_SUBSET A s (hl_matroid_span A m b) = 1 /\ hl_HAS_SIZE A b n = 1)) then 1 else 0).
Admitted.

// HOL Light: Library/matroids.ml:1261 / MATROID_DIMENSION_UNIQUE   (hash md5:0a9ef9a89c5f122475746702b5983aca)
Theorem hlt_MATROID_DIMENSION_UNIQUE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, forall n :e omega, hl_matroid_basis A m b = 1 /\ hl_HAS_SIZE A b n = 1 -> hl_matroid_dimension A m = n.
Admitted.

// HOL Light: Library/matroids.ml:1267 / MATROID_DIMENSION_EQ_CARD   (hash md5:40750e520ba551fa4db9affda5cb4d59)
Theorem hlt_MATROID_DIMENSION_EQ_CARD : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, hl_matroid_basis A m b = 1 /\ hl_FINITE A b = 1 -> hl_matroid_dimension A m = hl_CARD A b.
Admitted.

// HOL Light: Library/matroids.ml:1272 / MATROID_DIM_UNIQUE_ALT   (hash md5:0b884820bbca4e099142cab204bc3b54)
Theorem hlt_MATROID_DIM_UNIQUE_ALT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, forall n :e omega, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_SUBSET A b (hl_matroid_set A m) = 1 /\ (hl_HAS_SIZE A b n = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_matroid_span A m b = hl_matroid_span A m s))) -> hl_matroid_dim A m s = n.
Admitted.

// HOL Light: Library/matroids.ml:1284 / MATROID_DIM_UNIQUE   (hash md5:68192ff308a3c4a611dd3aea7f657dc3)
Theorem hlt_MATROID_DIM_UNIQUE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, forall n :e omega, hl_SUBSET A b s = 1 /\ (hl_HAS_SIZE A b n = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_SUBSET A s (hl_matroid_span A m b) = 1)) -> hl_matroid_dim A m s = n.
Admitted.

// HOL Light: Library/matroids.ml:1294 / MATROID_SPAN_DIM_EQ   (hash md5:1ff6669e06512e877244ab0ce905d4e4)
Theorem hlt_MATROID_SPAN_DIM_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_SUBSET A t (hl_matroid_set A m) = 1 /\ hl_matroid_span A m s = hl_matroid_span A m t) -> hl_matroid_dim A m s = hl_matroid_dim A m t.
Admitted.

// HOL Light: Library/matroids.ml:1302 / MATROID_SPAN_INSERT_REFL   (hash md5:36af3fc8ffae499fc2036bc25a1450f8)
Theorem hlt_MATROID_SPAN_INSERT_REFL : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ hl_IN A x (hl_matroid_span A m s) = 1 -> hl_matroid_span A m (hl_INSERT A x s) = hl_matroid_span A m s.
Admitted.

// HOL Light: Library/matroids.ml:1308 / MATROID_BASIS_EXISTS_DIMENSION   (hash md5:68f5f01703f349329f562ea1d17ae0d5)
Theorem hlt_MATROID_BASIS_EXISTS_DIMENSION : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_finite_dimensional A m = 1 <-> exists b :e 2 :^: A, hl_HAS_SIZE A b (hl_matroid_dimension A m) = 1 /\ hl_matroid_basis A m b = 1.
Admitted.

// HOL Light: Library/matroids.ml:1315 / MATROID_BASIS_EXISTS_DIM   (hash md5:fc25fecfe5d319d7d49c3cc42f7b35a0)
Theorem hlt_MATROID_BASIS_EXISTS_DIM : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ exists b :e 2 :^: A, hl_HAS_SIZE A b (hl_matroid_dim A m s) = 1 /\ (hl_SUBSET A b (hl_matroid_span A m s) = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_matroid_span A m b = hl_matroid_span A m s)).
Admitted.

// HOL Light: Library/matroids.ml:1328 / MATROID_CONTAINS_BASIS_DIM   (hash md5:da40722a86545fd60475e10622f6f49b)
Theorem hlt_MATROID_CONTAINS_BASIS_DIM : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 <-> hl_SUBSET A s (hl_matroid_set A m) = 1 /\ exists b :e 2 :^: A, hl_HAS_SIZE A b (hl_matroid_dim A m s) = 1 /\ (hl_SUBSET A b s = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_matroid_span A m b = hl_matroid_span A m s)).
Admitted.

// HOL Light: Library/matroids.ml:1340 / MATROID_DIM_EQ_CARD_GEN   (hash md5:836d97ac78a4bfd490e2a10d824d7b8f)
Theorem hlt_MATROID_DIM_EQ_CARD_GEN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, hl_SUBSET A b s = 1 /\ (hl_FINITE A b = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_SUBSET A s (hl_matroid_span A m b) = 1)) -> hl_matroid_dim A m s = hl_CARD A b.
Admitted.

// HOL Light: Library/matroids.ml:1347 / MATROID_DIM_EQ_CARD   (hash md5:498d7023c2161f630b5d07aa8ab8273d)
Theorem hlt_MATROID_DIM_EQ_CARD : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, hl_FINITE A b = 1 /\ hl_matroid_independent A m b = 1 -> hl_matroid_dim A m b = hl_CARD A b.
Admitted.

// HOL Light: Library/matroids.ml:1354 / MATROID_DIMENSION_LE   (hash md5:e6cf2240ce07b1c1699387d05f10cbf2)
Theorem hlt_MATROID_DIMENSION_LE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, forall n :e omega, hl_SUBSET A b (hl_matroid_set A m) = 1 /\ (hl_SUBSET A (hl_matroid_set A m) (hl_matroid_span A m b) = 1 /\ (hl_FINITE A b = 1 /\ hl_le (hl_CARD A b) n = 1)) -> hl_le (hl_matroid_dimension A m) n = 1.
Admitted.

// HOL Light: Library/matroids.ml:1369 / MATROID_DIMENSION_FINITE_LE   (hash md5:42172e65e927c197e07feb5f39731519)
Theorem hlt_MATROID_DIMENSION_FINITE_LE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, forall n :e omega, hl_SUBSET A b (hl_matroid_set A m) = 1 /\ (hl_SUBSET A (hl_matroid_set A m) (hl_matroid_span A m b) = 1 /\ (hl_FINITE A b = 1 /\ hl_le (hl_CARD A b) n = 1)) -> hl_matroid_finite_dimensional A m = 1 /\ hl_le (hl_matroid_dimension A m) n = 1.
Admitted.

// HOL Light: Library/matroids.ml:1376 / MATROID_DIM_LE   (hash md5:2733ccda47423b7a157f8d8f6efe2112)
Theorem hlt_MATROID_DIM_LE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, forall n :e omega, hl_FINITE A b = 1 /\ (hl_le (hl_CARD A b) n = 1 /\ (hl_SUBSET A b (hl_matroid_set A m) = 1 /\ hl_SUBSET A s (hl_matroid_span A m b) = 1)) -> hl_le (hl_matroid_dim A m s) n = 1.
Admitted.

// HOL Light: Library/matroids.ml:1393 / MATROID_DIM_FINITE_LE   (hash md5:1da0572f12726e46474214c2cf3ce505)
Theorem hlt_MATROID_DIM_FINITE_LE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, forall n :e omega, hl_FINITE A b = 1 /\ (hl_le (hl_CARD A b) n = 1 /\ (hl_SUBSET A b (hl_matroid_set A m) = 1 /\ hl_SUBSET A s (hl_matroid_span A m b) = 1)) -> hl_matroid_finite_dim A m s = 1 /\ hl_le (hl_matroid_dim A m s) n = 1.
Admitted.

// HOL Light: Library/matroids.ml:1400 / MATROID_DIM_LE_CARD_GEN   (hash md5:9ce1b8544fb45640c70b513725df7d86)
Theorem hlt_MATROID_DIM_LE_CARD_GEN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, hl_FINITE A b = 1 /\ (hl_SUBSET A b (hl_matroid_set A m) = 1 /\ hl_SUBSET A s (hl_matroid_span A m b) = 1) -> hl_le (hl_matroid_dim A m s) (hl_CARD A b) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1407 / MATROID_DIM_LE_CARD   (hash md5:b0c54183422036d12248fc8a67400122)
Theorem hlt_MATROID_DIM_LE_CARD : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_le (hl_matroid_dim A m s) (hl_CARD A s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1412 / MATROID_DIMENSION_GE_FINITE_CARD   (hash md5:559fce0977b2abcf9f0421b767784c50)
Theorem hlt_MATROID_DIMENSION_GE_FINITE_CARD : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, hl_matroid_finite_dimensional A m = 1 /\ hl_matroid_independent A m b = 1 -> hl_FINITE A b = 1 /\ hl_le (hl_CARD A b) (hl_matroid_dimension A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1421 / MATROID_DIMENSION_GE   (hash md5:658479d68f19d3f7f94227fca89e582f)
Theorem hlt_MATROID_DIMENSION_GE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, forall n :e omega, hl_matroid_finite_dimensional A m = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_le n (hl_CARD A b) = 1) -> hl_le n (hl_matroid_dimension A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1429 / MATROID_DIMENSION_GE_CARD   (hash md5:739f39a06b76910e7788ffaece2256d7)
Theorem hlt_MATROID_DIMENSION_GE_CARD : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall b :e 2 :^: A, hl_matroid_finite_dimensional A m = 1 /\ hl_matroid_independent A m b = 1 -> hl_le (hl_CARD A b) (hl_matroid_dimension A m) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1435 / MATROID_DIM_GE_FINITE_CARD   (hash md5:b522137ae705e15f232a046515928600)
Theorem hlt_MATROID_DIM_GE_FINITE_CARD : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, hl_matroid_finite_dim A m s = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_SUBSET A b s = 1) -> hl_FINITE A b = 1 /\ hl_le (hl_CARD A b) (hl_matroid_dim A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1444 / MATROID_DIM_GE   (hash md5:f276d420264179346e2b0a84638ad2c7)
Theorem hlt_MATROID_DIM_GE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, forall n :e omega, hl_matroid_finite_dim A m s = 1 /\ (hl_matroid_independent A m b = 1 /\ (hl_SUBSET A b s = 1 /\ hl_le n (hl_CARD A b) = 1)) -> hl_le n (hl_matroid_dim A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1451 / MATROID_DIM_GE_CARD_GEN   (hash md5:abfb02cd67984e6b03f76ea8e5b40ab8)
Theorem hlt_MATROID_DIM_GE_CARD_GEN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s b :e 2 :^: A, hl_matroid_finite_dim A m s = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_SUBSET A b s = 1) -> hl_le (hl_CARD A b) (hl_matroid_dim A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1457 / MATROID_DIM_GE_CARD   (hash md5:1843c2e1a69eda4679f66e4cc856f19a)
Theorem hlt_MATROID_DIM_GE_CARD : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 /\ hl_matroid_independent A m s = 1 -> hl_le (hl_CARD A s) (hl_matroid_dim A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1463 / FINITE_IMP_MATROID_FINITE_DIM_SPAN   (hash md5:6f37817744a8aed9a1ceee0033d76f89)
Theorem hlt_FINITE_IMP_MATROID_FINITE_DIM_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ hl_SUBSET A s (hl_matroid_set A m) = 1 -> hl_matroid_finite_dim A m (hl_matroid_span A m s) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1469 / MATROID_INDEPENDENT_IMP_FINITE   (hash md5:73c168142fa58ac13ff4c06bfdfbd67f)
Theorem hlt_MATROID_INDEPENDENT_IMP_FINITE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_matroid_finite_dim A m s = 1 /\ hl_matroid_independent A m s = 1 -> hl_FINITE A s = 1.
Admitted.

// HOL Light: Library/matroids.ml:1475 / MATROID_DIM_EQ_FINITE_CARD_EQ   (hash md5:c2fd96a20022a70e435773661c4ad75c)
Theorem hlt_MATROID_DIM_EQ_FINITE_CARD_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_FINITE A s = 1 /\ hl_matroid_dim A m s = hl_CARD A s) <-> hl_matroid_finite_dim A m s = 1 /\ hl_matroid_independent A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:1475 / MATROID_DIM_GE_FINITE_CARD_EQ   (hash md5:b44484842bb553698d6fb08a1b755552)
Theorem hlt_MATROID_DIM_GE_FINITE_CARD_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_FINITE A s = 1 /\ hl_le (hl_CARD A s) (hl_matroid_dim A m s) = 1) <-> hl_matroid_finite_dim A m s = 1 /\ hl_matroid_independent A m s = 1.
Admitted.

// HOL Light: Library/matroids.ml:1500 / MATROID_DIM_EMPTY   (hash md5:fe6d0b4f5151fa27eb3f0415fa63fc4a)
Theorem hlt_MATROID_DIM_EMPTY : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, hl_matroid_dim A m (hl_EMPTY A) = hl_NUMERAL hl_zero.
Admitted.

// HOL Light: Library/matroids.ml:1507 / MATROID_DIM_INSERT   (hash md5:c294b11a21831f523e2ffead7299984b)
Theorem hlt_MATROID_DIM_INSERT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall x :e A, hl_matroid_finite_dim A m s = 1 /\ hl_IN A x (hl_matroid_set A m) = 1 -> hl_matroid_dim A m (hl_INSERT A x s) = hl_COND omega (hl_IN A x (hl_matroid_span A m s)) (hl_matroid_dim A m s) (hl_add (hl_matroid_dim A m s) (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Library/matroids.ml:1534 / MATROID_DIM_SUBSET   (hash md5:46bc636256024a83ad29cff6b5877721)
Theorem hlt_MATROID_DIM_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s t = 1 /\ hl_matroid_finite_dim A m t = 1 -> hl_le (hl_matroid_dim A m s) (hl_matroid_dim A m t) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1549 / MATROID_DIM_SUBSET_ALT   (hash md5:7afccfe5c0abd5cd77d1a1771492e7e7)
Theorem hlt_MATROID_DIM_SUBSET_ALT : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_span A m t) = 1 /\ hl_matroid_finite_dim A m t = 1 -> hl_le (hl_matroid_dim A m s) (hl_matroid_dim A m t) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1556 / MATROID_DIM_SPAN_SUBSET   (hash md5:902cdf5d56a9b589814b7b76ff3fc134)
Theorem hlt_MATROID_DIM_SPAN_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1 /\ hl_matroid_finite_dim A m t = 1) -> hl_le (hl_matroid_dim A m s) (hl_matroid_dim A m t) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1565 / MATROID_DIM_SPAN_PSUBSET   (hash md5:dde69cae6437986072e417d96c1dc4c7)
Theorem hlt_MATROID_DIM_SPAN_PSUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_PSUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1 /\ hl_matroid_finite_dim A m t = 1) -> hl_lt (hl_matroid_dim A m s) (hl_matroid_dim A m t) = 1.
Admitted.

// HOL Light: Library/matroids.ml:1589 / MATROID_DIM_SPAN_EQ_GEN   (hash md5:c330a129ba0d2f04798581fb9a412f59)
Theorem hlt_MATROID_DIM_SPAN_EQ_GEN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_matroid_finite_dim A m t = 1 /\ (hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1 /\ hl_le (hl_matroid_dim A m t) (hl_matroid_dim A m s) = 1)) -> hl_matroid_span A m s = hl_matroid_span A m t.
Admitted.

// HOL Light: Library/matroids.ml:1597 / MATROID_DIM_SPAN_EQ   (hash md5:2ccc8c018f27032c5e1c5df2d5bfad0e)
Theorem hlt_MATROID_DIM_SPAN_EQ : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_matroid_finite_dim A m t = 1 /\ (hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1 /\ hl_matroid_dim A m s = hl_matroid_dim A m t)) -> hl_matroid_span A m s = hl_matroid_span A m t.
Admitted.

// HOL Light: Library/matroids.ml:1605 / MATROID_DIM_EQ_SPAN   (hash md5:4ba0786f69069b2d6e1ae43f9cb38299)
Theorem hlt_MATROID_DIM_EQ_SPAN : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s t :e 2 :^: A, hl_matroid_finite_dim A m t = 1 /\ (hl_SUBSET A s t = 1 /\ hl_le (hl_matroid_dim A m t) (hl_matroid_dim A m s) = 1) -> hl_matroid_span A m s = hl_matroid_span A m t.
Admitted.

// HOL Light: Library/matroids.ml:1612 / MATROID_CHOOSE_SUBSET   (hash md5:91ce06484e9e434d9e5fe4e3c76384ee)
Theorem hlt_MATROID_CHOOSE_SUBSET : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall n :e omega, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_matroid_finite_dim A m s = 1 -> hl_le n (hl_matroid_dim A m s) = 1) -> exists t :e 2 :^: A, hl_SUBSET A t s = 1 /\ (hl_matroid_independent A m t = 1 /\ hl_HAS_SIZE A t n = 1).
Admitted.

// HOL Light: Library/matroids.ml:1625 / MATROID_CHOOSE_SUBSPACE   (hash md5:bea51d4a6b9351b8029db32f8e5e2d4b)
Theorem hlt_MATROID_CHOOSE_SUBSPACE : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall n :e omega, hl_SUBSET A s (hl_matroid_set A m) = 1 /\ (hl_matroid_finite_dim A m s = 1 -> hl_le n (hl_matroid_dim A m s) = 1) -> exists t :e 2 :^: A, hl_matroid_subspace A m t = 1 /\ (hl_SUBSET A t (hl_matroid_span A m s) = 1 /\ (hl_matroid_finite_dim A m t = 1 /\ hl_matroid_dim A m t = n)).
Admitted.

// HOL Light: Library/matroids.ml:1640 / MATROID_LOWDIM_EXPAND_BASIS   (hash md5:1eb1e21ea16693772a0f831f7106d827)
Theorem hlt_MATROID_LOWDIM_EXPAND_BASIS : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall n :e omega, hl_matroid_finite_dim A m s = 1 /\ (hl_le (hl_matroid_dim A m s) n = 1 /\ (hl_matroid_finite_dimensional A m = 1 -> hl_le n (hl_matroid_dimension A m) = 1)) -> exists b :e 2 :^: A, hl_HAS_SIZE A b n = 1 /\ (hl_matroid_independent A m b = 1 /\ hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_span A m b) = 1).
Admitted.

// HOL Light: Library/matroids.ml:1666 / MATROID_LOWDIM_EXPAND_DIMENSION   (hash md5:bfd4ef0afc772ef5787d0e3ae90b8827)
Theorem hlt_MATROID_LOWDIM_EXPAND_DIMENSION : forall A:set, A <> Empty -> forall m :e hl_ty_matroid A, forall s :e 2 :^: A, forall n :e omega, hl_matroid_finite_dim A m s = 1 /\ (hl_le (hl_matroid_dim A m s) n = 1 /\ (hl_matroid_finite_dimensional A m = 1 -> hl_le n (hl_matroid_dimension A m) = 1)) -> exists t :e 2 :^: A, hl_matroid_finite_dim A m t = 1 /\ (hl_matroid_dim A m t = n /\ hl_SUBSET A (hl_matroid_span A m s) (hl_matroid_span A m t) = 1).
Admitted.

