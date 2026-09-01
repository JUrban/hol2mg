// hol2mg literal statements (private): shard convex of profile multivariate.  Each theorem is the literal
// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.

// HOL Light: Multivariate/convex.ml:16 / TRANSLATION_EQ_IMP   (hash md5:ad020331c2c9b2fd7db6d88149f51000)
Theorem hlt_TRANSLATION_EQ_IMP : forall N:set, N <> Empty -> forall P :e 2 :^: (2 :^: hl_ty_cart R N), (forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, P (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> P s = 1) <-> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, P s = 1 -> P (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:27 / DIM_HYPERPLANE   (hash md5:9f0f7c36e9a99431c5e6149ce1f9b5b3)
Theorem hlt_DIM_HYPERPLANE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) -> hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4610 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4610 (if hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0)) = hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/convex.ml:33 / DIM_EQ_HYPERPLANE   (hash md5:d467979b66f4be4c30a78dfbb6bf7e1b)
Theorem hlt_DIM_EQ_HYPERPLANE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dim N s = hl_sub (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) <-> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_span N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4611 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4611 (if hl_dot N a x = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:42 / affine   (hash md5:322ee5044b45616965e2dd28a31b6a18)
Theorem hlt_affine_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 <-> forall x y :e hl_ty_cart R A, forall u v :e R, hl_IN (hl_ty_cart R A) x s = 1 /\ (hl_IN (hl_ty_cart R A) y s = 1 /\ hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_IN (hl_ty_cart R A) (hl_vector_add A (hl_vmul A u x) (hl_vmul A v y)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:46 / AFFINE_ALT   (hash md5:af73e48e1a2b40aab82da00f4a4ed378)
Theorem hlt_AFFINE_ALT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 <-> forall x y :e hl_ty_cart R A, forall u :e R, hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1 -> hl_IN (hl_ty_cart R A) (hl_vector_add A (hl_vmul A (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) x) (hl_vmul A u y)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:51 / AFFINE_SCALING   (hash md5:c6580609222840775aa55ad838ea4e06)
Theorem hlt_AFFINE_SCALING : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall c :e R, hl_affine A s = 1 -> hl_affine A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vmul A c x) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:58 / AFFINE_NEGATIONS   (hash md5:e4b7404cb035a12d7dc8fd9d668061f6)
Theorem hlt_AFFINE_NEGATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 -> hl_affine A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_neg A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:65 / AFFINE_SUMS   (hash md5:c0a6379cd80d6c3a3b7986d1c9acdabd)
Theorem hlt_AFFINE_SUMS : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 /\ hl_affine A t = 1 -> hl_affine A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4612 :e hl_ty_cart R A => if exists x y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4612 (if hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y t = 1 then 1 else 0) (hl_vector_add A x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:72 / AFFINE_DIFFERENCES   (hash md5:c02c16a4fc9efce81c5827619c986409)
Theorem hlt_AFFINE_DIFFERENCES : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 /\ hl_affine A t = 1 -> hl_affine A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4613 :e hl_ty_cart R A => if exists x y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4613 (if hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y t = 1 then 1 else 0) (hl_vector_sub A x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:79 / AFFINE_TRANSLATION_EQ   (hash md5:97d95973d505a94cd50c4a04b6708f77)
Theorem hlt_AFFINE_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_affine N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_affine N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:87 / AFFINE_TRANSLATION   (hash md5:a913080ca9e986d255afa9d512b60bc9)
Theorem hlt_AFFINE_TRANSLATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_affine N s = 1 -> hl_affine N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:91 / AFFINE_LINEAR_IMAGE   (hash md5:e5b47f54161454729eb3c5d2d7cbcbe7)
Theorem hlt_AFFINE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 /\ hl_linear A B f = 1 -> hl_affine B (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:96 / AFFINE_LINEAR_IMAGE_EQ   (hash md5:983fdfdae86298a3688fa6e00690dfda)
Theorem hlt_AFFINE_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (forall x y :e hl_ty_cart R B, f x = f y -> x = y) -> (hl_affine A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 <-> hl_affine B s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:103 / AFFINE_LINEAR_PREIMAGE   (hash md5:31dd5dbb1110be382d13cbe265280f00)
Theorem hlt_AFFINE_LINEAR_PREIMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_linear M N f = 1 /\ hl_affine N s = 1 -> hl_affine M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_4614 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_4614 (hl_IN (hl_ty_cart R N) (f x) s) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:107 / AFFINE_EMPTY   (hash md5:75972012bbdda9568c248be4c694387e)
Theorem hlt_AFFINE_EMPTY : forall A:set, A <> Empty -> hl_affine A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:111 / AFFINE_SING   (hash md5:99a0df2a257b3de828b49089b26638d5)
Theorem hlt_AFFINE_SING : forall A:set, A <> Empty -> forall x :e hl_ty_cart R A, hl_affine A (hl_INSERT (hl_ty_cart R A) x (hl_EMPTY (hl_ty_cart R A))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:117 / AFFINE_SCALING_EQ   (hash md5:29b92e77c6458a5f1d403fb63dd28c64)
Theorem hlt_AFFINE_SCALING_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_affine N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_affine N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:127 / AFFINE_AFFINITY_EQ   (hash md5:4dd0832a0dc4d031a3cb7ff502f0880c)
Theorem hlt_AFFINE_AFFINITY_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_affine N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_affine N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:133 / AFFINE_AFFINITY   (hash md5:2466fcea73545af2edb915cdda71dd13)
Theorem hlt_AFFINE_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_affine N s = 1 -> hl_affine N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:137 / AFFINE_UNIV   (hash md5:3e4ab7b14083f68a49fa86bdcd2446dd)
Theorem hlt_AFFINE_UNIV : forall N:set, N <> Empty -> hl_affine N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:141 / AFFINE_HYPERPLANE   (hash md5:e83e6a7b292070e6382bb51d3f5a2bd8)
Theorem hlt_AFFINE_HYPERPLANE : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall b :e R, hl_affine A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4615 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4615 (if hl_dot A a x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:146 / AFFINE_STANDARD_HYPERPLANE   (hash md5:063392f6bfe1ea557ae7f91c4331117c)
Theorem hlt_AFFINE_STANDARD_HYPERPLANE : forall N:set, N <> Empty -> forall b :e R, forall k :e omega, hl_affine N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4616 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4616 (if hl_vindex R N x k = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:155 / AFFINE_INTERS   (hash md5:a60a01f1047994a82e1d7d0445d27d54)
Theorem hlt_AFFINE_INTERS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R A), (forall s :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s f = 1 -> hl_affine A s = 1) -> hl_affine A (hl_INTERS (hl_ty_cart R A) f) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:159 / AFFINE_INTER   (hash md5:88e9209f966b7d8d293def3ac92d9cff)
Theorem hlt_AFFINE_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 /\ hl_affine A t = 1 -> hl_affine A (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:163 / AFFINE_AFFINE_HULL   (hash md5:abb3039efc33f0090b97e65464cd7b7c)
Theorem hlt_AFFINE_AFFINE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine A (hl_hull (hl_ty_cart R A) (hl_affine A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:167 / AFFINE_HULL_EQ   (hash md5:7da92cbfc5d613bed9953baa46afa0be)
Theorem hlt_AFFINE_HULL_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) s = s <-> hl_affine A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:171 / IS_AFFINE_HULL   (hash md5:50a87925c3927f5cbf629a6c14766f6c)
Theorem hlt_IS_AFFINE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 <-> exists t :e 2 :^: hl_ty_cart R A, s = hl_hull (hl_ty_cart R A) (hl_affine A) t.
Admitted.

// HOL Light: Multivariate/convex.ml:175 / AFFINE_HULL_UNIV   (hash md5:4356b12a98e6522ff5d5d1b33faab8c4)
Theorem hlt_AFFINE_HULL_UNIV : forall N:set, N <> Empty -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_UNIV (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:179 / AFFINE_HULLS_EQ   (hash md5:d99fe2832ae056806dfb57cdf00e1833)
Theorem hlt_AFFINE_HULLS_EQ : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s (hl_hull (hl_ty_cart R A) (hl_affine A) t) = 1 /\ hl_SUBSET (hl_ty_cart R A) t (hl_hull (hl_ty_cart R A) (hl_affine A) s) = 1 -> hl_hull (hl_ty_cart R A) (hl_affine A) s = hl_hull (hl_ty_cart R A) (hl_affine A) t.
Admitted.

// HOL Light: Multivariate/convex.ml:185 / AFFINE_HULL_TRANSLATION   (hash md5:5d0372433259411eef921e1109b4d1d2)
Theorem hlt_AFFINE_HULL_TRANSLATION : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s) = hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) (hl_hull (hl_ty_cart R A) (hl_affine A) s).
Admitted.

// HOL Light: Multivariate/convex.ml:192 / AFFINE_HULL_LINEAR_IMAGE   (hash md5:ab0c6e16e32a1c661ab43a51ccb14c29)
Theorem hlt_AFFINE_HULL_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 -> hl_hull (hl_ty_cart R A) (hl_affine A) (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_hull (hl_ty_cart R B) (hl_affine B) s).
Admitted.

// HOL Light: Multivariate/convex.ml:210 / IN_AFFINE_HULL_LINEAR_IMAGE   (hash md5:d92692b8ef3e92a5d2e63a51643e85df)
Theorem hlt_IN_AFFINE_HULL_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_linear M N f = 1 /\ hl_IN (hl_ty_cart R M) x (hl_hull (hl_ty_cart R M) (hl_affine M) s) = 1 -> hl_IN (hl_ty_cart R N) (f x) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:215 / SAME_DISTANCES_TO_AFFINE_HULL   (hash md5:9624d1002e87b1083912155b58685ad4)
Theorem hlt_SAME_DISTANCES_TO_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x a) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x b)) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x a) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x b).
Admitted.

// HOL Light: Multivariate/convex.ml:227 / BILINEAR_IN_AFFINE_HULL   (hash md5:06582c6df1133b007bba20c3729714e6)
Theorem hlt_BILINEAR_IN_AFFINE_HULL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_bilinear M N P f = 1 /\ (hl_IN (hl_ty_cart R M) x (hl_hull (hl_ty_cart R M) (hl_affine M) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_affine N) t) = 1) -> hl_IN (hl_ty_cart R P) (f x y) (hl_hull (hl_ty_cart R P) (hl_affine P) (hl_GSPEC (hl_ty_cart R P) (fun GEN_PVAR_4621 :e hl_ty_cart R P => if exists a :e hl_ty_cart R M, exists b :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R P) GEN_PVAR_4621 (if hl_IN (hl_ty_cart R M) a s = 1 /\ hl_IN (hl_ty_cart R N) b t = 1 then 1 else 0) (f a b) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:246 / IN_AFFINE_ADD_MUL   (hash md5:bdccff15360b76d6b7997c670b2e58f0)
Theorem hlt_IN_AFFINE_ADD_MUL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x :e hl_ty_cart R N, forall d :e R, hl_affine N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vector_add N a x) s = 1) -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N d x)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:252 / IN_AFFINE_ADD_MUL_DIFF   (hash md5:28c4a80823c597ff16bec425419fe9ed)
Theorem hlt_IN_AFFINE_ADD_MUL_DIFF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e R, forall x y z :e hl_ty_cart R N, hl_affine N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_IN (hl_ty_cart R N) z s = 1)) -> hl_IN (hl_ty_cart R N) (hl_vector_add N x (hl_vmul N a (hl_vector_sub N y z))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:264 / IN_AFFINE_MUL_DIFF_ADD   (hash md5:9a40a04340ddbec003d40699223fcd02)
Theorem hlt_IN_AFFINE_MUL_DIFF_ADD : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e R, forall x y z :e hl_ty_cart R N, hl_affine N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_IN (hl_ty_cart R N) z s = 1)) -> hl_IN (hl_ty_cart R N) (hl_vector_add N (hl_vmul N a (hl_vector_sub N x y)) z) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:270 / IN_AFFINE_SUB_MUL_DIFF   (hash md5:83bacd3405fb8a04278b162f0d24743b)
Theorem hlt_IN_AFFINE_SUB_MUL_DIFF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e R, forall x y z :e hl_ty_cart R N, hl_affine N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_IN (hl_ty_cart R N) z s = 1)) -> hl_IN (hl_ty_cart R N) (hl_vector_sub N x (hl_vmul N a (hl_vector_sub N y z))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:276 / AFFINE_DIFFS_SUBSPACE   (hash md5:c417a3cc6761c48972bd55d777ecedc9)
Theorem hlt_AFFINE_DIFFS_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_affine N s = 1 /\ hl_IN (hl_ty_cart R N) a s = 1 -> hl_subspace N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4622 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4622 (hl_IN (hl_ty_cart R N) x s) (hl_vector_sub N x a) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:292 / AFFINE_VSUM   (hash md5:be42933a2f469439b51d56447a05deaf)
Theorem hlt_AFFINE_VSUM : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: A, forall u :e R :^: A, forall x :e hl_ty_cart R N :^: A, hl_FINITE A k = 1 /\ (hl_affine N s = 1 /\ (hl_sum A k u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (forall i :e A, hl_IN A i k = 1 -> hl_IN (hl_ty_cart R N) (x i) s = 1))) -> hl_IN (hl_ty_cart R N) (hl_vsum A N k (fun i :e A => hl_vmul N (u i) (x i))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:316 / AFFINE_VSUM_STRONG   (hash md5:f64a56d275efed4b80afd816f136a58b)
Theorem hlt_AFFINE_VSUM_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: A, forall u :e R :^: A, forall x :e hl_ty_cart R N :^: A, hl_affine N s = 1 /\ (hl_sum A k u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (forall i :e A, hl_IN A i k = 1 -> u i = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_IN (hl_ty_cart R N) (x i) s = 1)) -> hl_IN (hl_ty_cart R N) (hl_vsum A N k (fun i :e A => hl_vmul N (u i) (x i))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:335 / AFFINE_INDEXED   (hash md5:de02f5c6e939e0b8db5206cae769ee3c)
Theorem hlt_AFFINE_INDEXED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 <-> forall k :e omega, forall u :e R :^: omega, forall x :e hl_ty_cart R N :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN (hl_ty_cart R N) (x i) s = 1) /\ hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_IN (hl_ty_cart R N) (hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) (fun i :e omega => hl_vmul N (u i) (x i))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:353 / AFFINE_HULL_INDEXED   (hash md5:0b925c04a12b4b5c1ef8be82fae2d282)
Theorem hlt_AFFINE_HULL_INDEXED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4625 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4625 (if exists k :e omega, exists u :e R :^: omega, exists x :e hl_ty_cart R N :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_IN (hl_ty_cart R N) (x i) s = 1) /\ (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) (fun i :e omega => hl_vmul N (u i) (x i)) = y) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:386 / AFFINE   (hash md5:9c368d2c1e913fb375ee3cdb56aa3761)
Theorem hlt_AFFINE : forall N:set, N <> Empty -> forall V :e 2 :^: hl_ty_cart R N, hl_affine N V = 1 <-> forall s :e 2 :^: hl_ty_cart R N, forall u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) s V = 1 /\ hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) -> hl_IN (hl_ty_cart R N) (hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x)) V = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:406 / AFFINE_EXPLICIT   (hash md5:2b62959bbe9198238b80d033515babe2)
Theorem hlt_AFFINE_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, forall u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_sum (hl_ty_cart R N) t u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) -> hl_IN (hl_ty_cart R N) (hl_vsum (hl_ty_cart R N) N t (fun x :e hl_ty_cart R N => hl_vmul N (u x) x)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:418 / AFFINE_HULL_EXPLICIT   (hash md5:035a96e41090c957616f643bedd88bae)
Theorem hlt_AFFINE_HULL_EXPLICIT : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) p = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4628 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4628 (if exists s :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = y))) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:470 / AFFINE_HULL_EXPLICIT_ALT   (hash md5:0b7c971fe428aa54d23291b570b7057f)
Theorem hlt_AFFINE_HULL_EXPLICIT_ALT : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) p = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4629 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4629 (if exists s :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = y)) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:482 / AFFINE_HULL_FINITE   (hash md5:3aaf33e7a5c30e906d3dc52adefd665e)
Theorem hlt_AFFINE_HULL_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4631 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4631 (if exists u :e R :^: hl_ty_cart R N, hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = y then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:515 / AFFINE_HULL_0_EXPLICIT   (hash md5:ba4b12a8be648f191a3c91e27c6f3833)
Theorem hlt_AFFINE_HULL_0_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 <-> exists t :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (~ hl_sum (hl_ty_cart R N) t u = hl_real_of_num (hl_NUMERAL hl_zero) /\ hl_vsum (hl_ty_cart R N) N t (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = hl_vec N (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:533 / AFFINE_HULL_EMPTY   (hash md5:795a1ebc85d130e4c0202062fa46509d)
Theorem hlt_AFFINE_HULL_EMPTY : forall A:set, A <> Empty -> hl_hull (hl_ty_cart R A) (hl_affine A) (hl_EMPTY (hl_ty_cart R A)) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:538 / AFFINE_HULL_EQ_EMPTY   (hash md5:14f811e968395fc1d782debf82097038)
Theorem hlt_AFFINE_HULL_EQ_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) s = hl_EMPTY (hl_ty_cart R A) <-> s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:543 / AFFINE_HULL_FINITE_STEP_GEN   (hash md5:8370b846ed1549607c64328e12b52181)
Theorem hlt_AFFINE_HULL_FINITE_STEP_GEN : forall N:set, N <> Empty -> forall w :e R, forall y :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall P :e 2 :^: R :^: hl_ty_cart R N, ((exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N)) = 1 -> P x (u x) = 1) /\ (hl_sum (hl_ty_cart R N) (hl_EMPTY (hl_ty_cart R N)) u = w /\ hl_vsum (hl_ty_cart R N) N (hl_EMPTY (hl_ty_cart R N)) (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y)) <-> w = hl_real_of_num (hl_NUMERAL hl_zero) /\ y = hl_vec N (hl_NUMERAL hl_zero)) /\ (hl_FINITE (hl_ty_cart R N) s = 1 /\ ((forall y1 :e R, hl_IN (hl_ty_cart R N) a s = 1 /\ P a y1 = 1 -> P a (hl_real_div y1 (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) /\ (forall x y1 :e R, hl_IN (hl_ty_cart R N) a s = 1 /\ (P a x = 1 /\ P a y1 = 1) -> P a (hl_real_add x y1) = 1)) -> ((exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) a s) = 1 -> P x (u x) = 1) /\ (hl_sum (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a s) u = w /\ hl_vsum (hl_ty_cart R N) N (hl_INSERT (hl_ty_cart R N) a s) (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y)) <-> exists v :e R, exists u :e R :^: hl_ty_cart R N, P a v = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> P x (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_sub w v /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = hl_vector_sub N y (hl_vmul N v a))))).
Admitted.

// HOL Light: Multivariate/convex.ml:594 / AFFINE_HULL_FINITE_STEP   (hash md5:47904e40cd820ee216be18b8691352a8)
Theorem hlt_AFFINE_HULL_FINITE_STEP : forall N:set, N <> Empty -> forall w :e R, forall y :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, ((exists u :e R :^: hl_ty_cart R N, hl_sum (hl_ty_cart R N) (hl_EMPTY (hl_ty_cart R N)) u = w /\ hl_vsum (hl_ty_cart R N) N (hl_EMPTY (hl_ty_cart R N)) (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) <-> w = hl_real_of_num (hl_NUMERAL hl_zero) /\ y = hl_vec N (hl_NUMERAL hl_zero)) /\ (hl_FINITE (hl_ty_cart R N) s = 1 -> ((exists u :e R :^: hl_ty_cart R N, hl_sum (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a s) u = w /\ hl_vsum (hl_ty_cart R N) N (hl_INSERT (hl_ty_cart R N) a s) (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) <-> exists v :e R, exists u :e R :^: hl_ty_cart R N, hl_sum (hl_ty_cart R N) s u = hl_real_sub w v /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = hl_vector_sub N y (hl_vmul N v a))).
Admitted.

// HOL Light: Multivariate/convex.ml:605 / AFFINE_HULL_2   (hash md5:329f4b5c6df3abcf71dc546619d1a871)
Theorem hlt_AFFINE_HULL_2 : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A)))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4634 :e hl_ty_cart R A => if exists u v :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4634 (if hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) (hl_vector_add A (hl_vmul A u a) (hl_vmul A v b)) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:614 / AFFINE_HULL_2_ALT   (hash md5:d9e2a4ec8aeb15f7fef5ce27bb7c388a)
Theorem hlt_AFFINE_HULL_2_ALT : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A)))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4635 :e hl_ty_cart R A => if exists u :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4635 (hl_IN R u (hl_UNIV R)) (hl_vector_add A a (hl_vmul A u (hl_vector_sub A b a))) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:623 / AFFINE_HULL_3   (hash md5:5ddbe4d405a32ef352b9f9b8eea328b0)
Theorem hlt_AFFINE_HULL_3 : forall A:set, A <> Empty -> forall a b c :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_INSERT (hl_ty_cart R A) c (hl_EMPTY (hl_ty_cart R A))))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4636 :e hl_ty_cart R A => if exists u v w :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4636 (if hl_real_add u (hl_real_add v w) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) (hl_vector_add A (hl_vmul A u a) (hl_vector_add A (hl_vmul A v b) (hl_vmul A w c))) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:632 / AFFINE_HULL_0_2_EXPLICIT   (hash md5:5ca42040829f126c32cad1bfab14da0d)
Theorem hlt_AFFINE_HULL_0_2_EXPLICIT : forall N:set, N <> Empty -> forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> exists a b :e R, hl_vector_add N (hl_vmul N a x) (hl_vmul N b y) = hl_vec N (hl_NUMERAL hl_zero) /\ ~ hl_real_add a b = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/convex.ml:645 / AFFINE_HULL_0_3_EXPLICIT   (hash md5:08e05ad7c5765f722f55e118fcafdbdb)
Theorem hlt_AFFINE_HULL_0_3_EXPLICIT : forall N:set, N <> Empty -> forall x y z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_INSERT (hl_ty_cart R N) z (hl_EMPTY (hl_ty_cart R N)))))) = 1 <-> exists a b c :e R, hl_vector_add N (hl_vmul N a x) (hl_vector_add N (hl_vmul N b y) (hl_vmul N c z)) = hl_vec N (hl_NUMERAL hl_zero) /\ ~ hl_real_add a (hl_real_add b c) = hl_real_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/convex.ml:664 / AFFINE_HULL_INSERT_SUBSET_SPAN   (hash md5:a7b7d193f90f833148df6d2cd8c7b9cb)
Theorem hlt_AFFINE_HULL_INSERT_SUBSET_SPAN : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a s)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4638 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4638 (hl_IN (hl_ty_cart R N) v (hl_span N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4637 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4637 (hl_IN (hl_ty_cart R N) x s) (hl_vector_sub N x a) = 1 then 1 else 0)))) (hl_vector_add N a v) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:693 / AFFINE_HULL_INSERT_SPAN   (hash md5:ff2b5e097540db3ce7d0d240c22445e0)
Theorem hlt_AFFINE_HULL_INSERT_SPAN : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) a s = 1 -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a s) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4640 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4640 (hl_IN (hl_ty_cart R N) v (hl_span N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4639 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4639 (hl_IN (hl_ty_cart R N) x s) (hl_vector_sub N x a) = 1 then 1 else 0)))) (hl_vector_add N a v) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:727 / AFFINE_HULL_SPAN   (hash md5:f0f8e82e2488a7008a2946af6f9e42c0)
Theorem hlt_AFFINE_HULL_SPAN : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 -> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4642 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4642 (hl_IN (hl_ty_cart R N) v (hl_span N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4641 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4641 (hl_IN (hl_ty_cart R N) x (hl_DELETE (hl_ty_cart R N) s a)) (hl_vector_sub N x a) = 1 then 1 else 0)))) (hl_vector_add N a v) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:738 / DIFFS_AFFINE_HULL_SPAN   (hash md5:7e85c81e1afd28c1fe94918f303bd370)
Theorem hlt_DIFFS_AFFINE_HULL_SPAN : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4643 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4643 (hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) s)) (hl_vector_sub N x a) = 1 then 1 else 0) = hl_span N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4644 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4644 (hl_IN (hl_ty_cart R N) x s) (hl_vector_sub N x a) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:748 / AFFINE_HULL_SING   (hash md5:72dee67377bd1fde9a1709c65a4530e0)
Theorem hlt_AFFINE_HULL_SING : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) = hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/convex.ml:754 / AFFINE_HULL_EQ_SING   (hash md5:870277ff349ab43958a61e2a2ba426ff)
Theorem hlt_AFFINE_HULL_EQ_SING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)) <-> s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:763 / AFFINE_HULL_SCALING   (hash md5:c6e8c944720ed3c322951185d0179064)
Theorem hlt_AFFINE_HULL_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) (hl_hull (hl_ty_cart R N) (hl_affine N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:778 / AFFINE_HULL_AFFINITY   (hash md5:a7fce0596865922c2b9f8bda5452859c)
Theorem hlt_AFFINE_HULL_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall c :e R, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N c x) a) s) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N c x) a) (hl_hull (hl_ty_cart R N) (hl_affine N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:790 / convex   (hash md5:b4fa4bc35f84236c9d7568457f82be50)
Theorem hlt_convex_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 <-> forall x y :e hl_ty_cart R A, forall u v :e R, hl_IN (hl_ty_cart R A) x s = 1 /\ (hl_IN (hl_ty_cart R A) y s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) -> hl_IN (hl_ty_cart R A) (hl_vector_add A (hl_vmul A u x) (hl_vmul A v y)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:795 / CONVEX_ALT   (hash md5:b8164c517888411b18a0f57f16357844)
Theorem hlt_CONVEX_ALT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 <-> forall x y :e hl_ty_cart R A, forall u :e R, hl_IN (hl_ty_cart R A) x s = 1 /\ (hl_IN (hl_ty_cart R A) y s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1)) -> hl_IN (hl_ty_cart R A) (hl_vector_add A (hl_vmul A (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) x) (hl_vmul A u y)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:803 / IN_CONVEX_SET   (hash md5:7fb138ee8e87f0f9ab99966f6e09b6b5)
Theorem hlt_IN_CONVEX_SET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a b :e hl_ty_cart R A, forall u :e R, hl_convex A s = 1 /\ (hl_IN (hl_ty_cart R A) a s = 1 /\ (hl_IN (hl_ty_cart R A) b s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1))) -> hl_IN (hl_ty_cart R A) (hl_vector_add A (hl_vmul A (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) a) (hl_vmul A u b)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:809 / MIDPOINT_IN_CONVEX   (hash md5:060c8af40a6d83423c406fe1ab4d9790)
Theorem hlt_MIDPOINT_IN_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1) -> hl_IN (hl_ty_cart R N) (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:819 / CONVEX_CONTAINS_SEGMENT   (hash md5:af5caa5b32c9788b0113a84c60e9aef9)
Theorem hlt_CONVEX_CONTAINS_SEGMENT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 <-> forall a b :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) a s = 1 /\ hl_IN (hl_ty_cart R A) b s = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:823 / CONVEX_CONTAINS_OPEN_SEGMENT   (hash md5:2dde103a59fd79e4f7a4d25bac9d57c9)
Theorem hlt_CONVEX_CONTAINS_OPEN_SEGMENT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 <-> forall a b :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) a s = 1 /\ hl_IN (hl_ty_cart R A) b s = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_open_segment A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:828 / CONVEX_CONTAINS_SEGMENT_EQ   (hash md5:b6451a00c3a8ef78b7ababab2266da13)
Theorem hlt_CONVEX_CONTAINS_SEGMENT_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 <-> forall a b :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1 <-> hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:834 / CONVEX_CONTAINS_SEGMENT_IMP   (hash md5:586700446741917feeca288bab755561)
Theorem hlt_CONVEX_CONTAINS_SEGMENT_IMP : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a b :e hl_ty_cart R A, hl_convex A s = 1 -> (hl_SUBSET (hl_ty_cart R A) (hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) s = 1 <-> hl_IN (hl_ty_cart R A) a s = 1 /\ hl_IN (hl_ty_cart R A) b s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:838 / SEGMENT_SUBSET_CONVEX   (hash md5:683646a7e093778f83666008177831d2)
Theorem hlt_SEGMENT_SUBSET_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:843 / CONVEX_CONTAINS   (hash md5:18649e33865bae330617b861f4149379)
Theorem hlt_CONVEX_CONTAINS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1)) -> hl_IN (hl_ty_cart R N) x s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:848 / CONVEX_EMPTY   (hash md5:2db735a023dd07e80b6b2ad0900ab3fd)
Theorem hlt_CONVEX_EMPTY : forall A:set, A <> Empty -> hl_convex A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:852 / CONVEX_SING   (hash md5:79d8689e7b80f6878abbfb1534334729)
Theorem hlt_CONVEX_SING : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_convex A (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:856 / CONVEX_UNIV   (hash md5:b3509548b72402936384c1d88d08a0ba)
Theorem hlt_CONVEX_UNIV : forall N:set, N <> Empty -> hl_convex N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:860 / CONVEX_INTERS   (hash md5:865fceffc61b8a4c44fd56443d453c72)
Theorem hlt_CONVEX_INTERS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R A), (forall s :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s f = 1 -> hl_convex A s = 1) -> hl_convex A (hl_INTERS (hl_ty_cart R A) f) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:864 / CONVEX_INTER   (hash md5:835b231c8abb1bf0c882a662fa17d433)
Theorem hlt_CONVEX_INTER : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ hl_convex A t = 1 -> hl_convex A (hl_INTER (hl_ty_cart R A) s t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:868 / CONVEX_HALFSPACE_LE   (hash md5:5af22d5c70c47e8d6e4d520b052a03f0)
Theorem hlt_CONVEX_HALFSPACE_LE : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall b :e R, hl_convex A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4647 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4647 (hl_real_le (hl_dot A a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:876 / CONVEX_HALFSPACE_COMPONENT_LE   (hash md5:fc7a6ecca356f7164e9f78277225c6db)
Theorem hlt_CONVEX_HALFSPACE_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4648 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4648 (hl_real_le (hl_vindex R N x k) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:885 / CONVEX_HALFSPACE_GE   (hash md5:539bcfe0e7c86423cbad09f387fd801d)
Theorem hlt_CONVEX_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4651 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4651 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:892 / CONVEX_HALFSPACE_COMPONENT_GE   (hash md5:86c2cfb78da13a9fbd19365fe9c2faa9)
Theorem hlt_CONVEX_HALFSPACE_COMPONENT_GE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4652 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4652 (hl_real_ge (hl_vindex R N x k) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:901 / CONVEX_HYPERPLANE   (hash md5:39eaf3cae90ada53c7f6911606db3969)
Theorem hlt_CONVEX_HYPERPLANE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4656 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4656 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:910 / CONVEX_STANDARD_HYPERPLANE   (hash md5:29be8ef4046ac87cde557622b983777a)
Theorem hlt_CONVEX_STANDARD_HYPERPLANE : forall N:set, N <> Empty -> forall k :e omega, forall a :e R, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4657 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4657 (if hl_vindex R N x k = a then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:919 / CONVEX_HALFSPACE_LT   (hash md5:6b58e3fde0d9e965f05164165cb5e60d)
Theorem hlt_CONVEX_HALFSPACE_LT : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall b :e R, hl_convex A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4658 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4658 (hl_real_lt (hl_dot A a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:925 / CONVEX_HALFSPACE_COMPONENT_LT   (hash md5:ccd7f9f665940bd817a7db0a5f8cccbc)
Theorem hlt_CONVEX_HALFSPACE_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4659 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4659 (hl_real_lt (hl_vindex R N x k) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:934 / CONVEX_HALFSPACE_GT   (hash md5:98760554f696877219b11600412e4de2)
Theorem hlt_CONVEX_HALFSPACE_GT : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall b :e R, hl_convex A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4660 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4660 (hl_real_gt (hl_dot A a x) b) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:939 / CONVEX_HALFSPACE_COMPONENT_GT   (hash md5:5e40c9b344a63877f1420b9f5a8efb19)
Theorem hlt_CONVEX_HALFSPACE_COMPONENT_GT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4661 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4661 (hl_real_gt (hl_vindex R N x k) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:948 / CONVEX_STRIP_COMPONENT_LE   (hash md5:8367fa0eeb9b86b423f5578c0fc85f7a)
Theorem hlt_CONVEX_STRIP_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4665 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4665 (hl_real_le (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:955 / CONVEX_STRIP_COMPONENT_LT   (hash md5:e38459c1eb736c931bb74a1c5fa3cf92)
Theorem hlt_CONVEX_STRIP_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4669 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4669 (hl_real_lt (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:962 / CONVEX_HALFSPACE_SGN   (hash md5:e11b4223775366657edcb94c40d5c902)
Theorem hlt_CONVEX_HALFSPACE_SGN : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4671 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4671 (if hl_real_sgn (hl_dot N a x) = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:975 / CONVEX_HALFSPACE_COMPONENT_SGN   (hash md5:d5c2e66bf2bf4ebf9c8630485157c152)
Theorem hlt_CONVEX_HALFSPACE_COMPONENT_SGN : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4672 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4672 (if hl_real_sgn (hl_vindex R N x k) = a then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:984 / CONVEX_POSITIVE_ORTHANT   (hash md5:5b378ae098666a057d8dbd63b56d408b)
Theorem hlt_CONVEX_POSITIVE_ORTHANT : forall N:set, N <> Empty -> hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4673 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4673 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:990 / LIMPT_OF_CONVEX   (hash md5:6dfa1efb5fa4089e45381e3ecf55cd6b)
Theorem hlt_LIMPT_OF_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) x s = 1 -> (hl_limit_point_of N x s = 1 <-> ~ s = hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/convex.ml:1017 / TRIVIAL_LIMIT_WITHIN_CONVEX   (hash md5:c935a8be75e2f1f0a7b8190310428c6c)
Theorem hlt_TRIVIAL_LIMIT_WITHIN_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) x s = 1 -> (hl_trivial_limit (hl_ty_cart R N) (hl_within (hl_ty_cart R N) (hl_at N x) s) = 1 <-> s = hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/convex.ml:1026 / CONVEX_TRANSLATION_EQ   (hash md5:4638ce7e2783cdfa2f52952391dfbd94)
Theorem hlt_CONVEX_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_convex N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1034 / CONVEX_TRANSLATION   (hash md5:7acb7d755d1061127727a9c6d3bd897f)
Theorem hlt_CONVEX_TRANSLATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 -> hl_convex N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1038 / CONVEX_LINEAR_IMAGE   (hash md5:1a8921f81473c5e1bff48bd356407e55)
Theorem hlt_CONVEX_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ hl_linear A B f = 1 -> hl_convex B (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1043 / CONVEX_LINEAR_IMAGE_EQ   (hash md5:59ecb201b6253d793de6a1e31daec80a)
Theorem hlt_CONVEX_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (forall x y :e hl_ty_cart R B, f x = f y -> x = y) -> (hl_convex A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 <-> hl_convex B s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1054 / CONVEX_VSUM   (hash md5:5f64405ddd8a788d7b1385a8e27c076e)
Theorem hlt_CONVEX_VSUM : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: A, forall u :e R :^: A, forall x :e hl_ty_cart R N :^: A, hl_FINITE A k = 1 /\ (hl_convex N s = 1 /\ (hl_sum A k u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (forall i :e A, hl_IN A i k = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u i) = 1 /\ hl_IN (hl_ty_cart R N) (x i) s = 1))) -> hl_IN (hl_ty_cart R N) (hl_vsum A N k (fun i :e A => hl_vmul N (u i) (x i))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1100 / CONVEX_VSUM_STRONG   (hash md5:e2273588f2e1c096e43a6156b5d91654)
Theorem hlt_CONVEX_VSUM_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: A, forall u :e R :^: A, forall x :e hl_ty_cart R N :^: A, hl_convex N s = 1 /\ (hl_sum A k u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (forall i :e A, hl_IN A i k = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u i) = 1 /\ (u i = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_IN (hl_ty_cart R N) (x i) s = 1))) -> hl_IN (hl_ty_cart R N) (hl_vsum A N k (fun i :e A => hl_vmul N (u i) (x i))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1119 / CONVEX_INDEXED   (hash md5:5e4803885ffe6aacc93b5e4ed4a4a456)
Theorem hlt_CONVEX_INDEXED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 <-> forall k :e omega, forall u :e R :^: omega, forall x :e hl_ty_cart R N :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u i) = 1 /\ hl_IN (hl_ty_cart R N) (x i) s = 1) /\ hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_IN (hl_ty_cart R N) (hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) (fun i :e omega => hl_vmul N (u i) (x i))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1137 / CONVEX_EXPLICIT   (hash md5:c91d8466fc4d0a58e2e0ee89b92b3d21)
Theorem hlt_CONVEX_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 <-> forall t :e 2 :^: hl_ty_cart R N, forall u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ hl_sum (hl_ty_cart R N) t u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) -> hl_IN (hl_ty_cart R N) (hl_vsum (hl_ty_cart R N) N t (fun x :e hl_ty_cart R N => hl_vmul N (u x) x)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1157 / CONVEX   (hash md5:373f0711462fd028797d2c91114d9e10)
Theorem hlt_CONVEX : forall N:set, N <> Empty -> forall V :e 2 :^: hl_ty_cart R N, hl_convex N V = 1 <-> forall s :e 2 :^: hl_ty_cart R N, forall u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) s V = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) -> hl_IN (hl_ty_cart R N) (hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x)) V = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1171 / CONVEX_FINITE   (hash md5:e0d0fa974fe4addbd8da090109bc66eb)
Theorem hlt_CONVEX_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> (hl_convex N s = 1 <-> forall u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_IN (hl_ty_cart R N) (hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x)) s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1188 / AFFINE_PCROSS   (hash md5:eef50dfcef8dd757cb9c9fdc8673c7f6)
Theorem hlt_AFFINE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_affine M s = 1 /\ hl_affine N t = 1 -> hl_affine (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1195 / AFFINE_PCROSS_EQ   (hash md5:f616b593d2aab3015b3b7770a8864d98)
Theorem hlt_AFFINE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_affine (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_affine M s = 1 /\ hl_affine N t = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1215 / CONVEX_PCROSS   (hash md5:1fa3a5668412201b4f291ffb1c9b87cc)
Theorem hlt_CONVEX_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ hl_convex N t = 1 -> hl_convex (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1222 / CONVEX_PCROSS_EQ   (hash md5:bec0860700d73c6ad4891bd061769856)
Theorem hlt_CONVEX_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_convex M s = 1 /\ hl_convex N t = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1246 / conic   (hash md5:f6a209c28d01492d0fbc124c211c2854)
Theorem hlt_conic_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_conic A s = 1 <-> forall x :e hl_ty_cart R A, forall c :e R, hl_IN (hl_ty_cart R A) x s = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 -> hl_IN (hl_ty_cart R A) (hl_vmul A c x) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1249 / SUBSPACE_IMP_CONIC   (hash md5:89c584f6e845f9e7d901624dcefc1933)
Theorem hlt_SUBSPACE_IMP_CONIC : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 -> hl_conic A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1253 / CONIC_EMPTY   (hash md5:a5f991bdd98f681e053d628b0daf5cec)
Theorem hlt_CONIC_EMPTY : forall A:set, A <> Empty -> hl_conic A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1257 / CONIC_UNIV   (hash md5:9ced06815f3946d2b08d1bc21969af98)
Theorem hlt_CONIC_UNIV : forall N:set, N <> Empty -> hl_conic N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1261 / CONIC_INTERS   (hash md5:467383d88ca98674bb9b5de275490a16)
Theorem hlt_CONIC_INTERS : forall A:set, A <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R A), (forall s :e 2 :^: hl_ty_cart R A, hl_IN (2 :^: hl_ty_cart R A) s f = 1 -> hl_conic A s = 1) -> hl_conic A (hl_INTERS (hl_ty_cart R A) f) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1265 / CONIC_LINEAR_IMAGE   (hash md5:b5b6c88394cf757cd27592d53b4dec6f)
Theorem hlt_CONIC_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_conic A s = 1 /\ hl_linear A B f = 1 -> hl_conic B (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1270 / CONIC_LINEAR_IMAGE_EQ   (hash md5:70767d36b1c52a4249dc6cd36fe9982d)
Theorem hlt_CONIC_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (forall x y :e hl_ty_cart R B, f x = f y -> x = y) -> (hl_conic A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 <-> hl_conic B s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1277 / CONIC_MUL   (hash md5:0db52a89aba9bc4a41d33d34daf75e37)
Theorem hlt_CONIC_MUL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, forall x :e hl_ty_cart R N, hl_conic N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1) -> hl_IN (hl_ty_cart R N) (hl_vmul N c x) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1281 / CONIC_CONIC_HULL   (hash md5:4e0ae98d4043477622bb4fc733376e87)
Theorem hlt_CONIC_CONIC_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_conic A (hl_hull (hl_ty_cart R A) (hl_conic A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1285 / CONIC_HULL_EQ   (hash md5:2892ac163eba2d5321df15fc90143404)
Theorem hlt_CONIC_HULL_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_conic A) s = s <-> hl_conic A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1289 / CONIC_HULL_UNIV   (hash md5:ae11ed5ee8d229b965abd485cad6629e)
Theorem hlt_CONIC_HULL_UNIV : forall N:set, N <> Empty -> hl_hull (hl_ty_cart R N) (hl_conic N) (hl_UNIV (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:1293 / CONIC_NEGATIONS   (hash md5:eda1f0d76586943fa09c9b498134e24a)
Theorem hlt_CONIC_NEGATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_conic A s = 1 -> hl_conic A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_neg A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1298 / CONIC_SPAN   (hash md5:e3a807910a4c171789180231b7c9ffd9)
Theorem hlt_CONIC_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_conic A (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1302 / CONIC_HULL_EXPLICIT   (hash md5:6a42e9a749293a70a7edefef1d00b086)
Theorem hlt_CONIC_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_conic N) s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4676 :e hl_ty_cart R N => if exists c :e R, exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4676 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_IN (hl_ty_cart R N) x s = 1 then 1 else 0) (hl_vmul N c x) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:1315 / CONIC_HULL_AS_IMAGE   (hash md5:c810d4afec015ef30d386156311d4a47)
Theorem hlt_CONIC_HULL_AS_IMAGE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_conic N) s = hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum 1 N)) (hl_ty_cart R N) (fun z :e hl_ty_cart R (hl_ty_finite_sum 1 N) => hl_vmul N (hl_drop (hl_fstcart R 1 N z)) (hl_sndcart R 1 N z)) (hl_PCROSS R 1 N (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_4677 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_4677 (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0)) s).
Admitted.

// HOL Light: Multivariate/convex.ml:1323 / CONIC_HULL_POINTLESS_AS_IMAGE   (hash md5:fa0476c4c9bde0b3870415e5d8ec78e5)
Theorem hlt_CONIC_HULL_POINTLESS_AS_IMAGE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_DELETE (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_vec N (hl_NUMERAL hl_zero)) = hl_IMAGE (hl_ty_cart R (hl_ty_finite_sum 1 N)) (hl_ty_cart R N) (fun z :e hl_ty_cart R (hl_ty_finite_sum 1 N) => hl_vmul N (hl_drop (hl_fstcart R 1 N z)) (hl_sndcart R 1 N z)) (hl_PCROSS R 1 N (hl_GSPEC (hl_ty_cart R 1) (fun GEN_PVAR_4678 :e hl_ty_cart R 1 => if exists t :e hl_ty_cart R 1, hl_SETSPEC (hl_ty_cart R 1) GEN_PVAR_4678 (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_drop t)) t = 1 then 1 else 0)) (hl_DELETE (hl_ty_cart R N) s (hl_vec N (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:1339 / CONIC_HULL_LINEAR_IMAGE   (hash md5:db8b151fa750b1a4656092b87ae273a1)
Theorem hlt_CONIC_HULL_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 -> hl_hull (hl_ty_cart R A) (hl_conic A) (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_hull (hl_ty_cart R B) (hl_conic B) s).
Admitted.

// HOL Light: Multivariate/convex.ml:1349 / CONIC_HULL_IMAGE_SCALE   (hash md5:e023ac95133d191c8b392db0f8b0073b)
Theorem hlt_CONIC_HULL_IMAGE_SCALE : forall N:set, N <> Empty -> forall c :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (c x) = 1) -> hl_hull (hl_ty_cart R N) (hl_conic N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N (c x) x) s) = hl_hull (hl_ty_cart R N) (hl_conic N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:1365 / CONVEX_CONIC_HULL   (hash md5:440b0a7d18b933c70d12c0d63e80401c)
Theorem hlt_CONVEX_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_convex N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1396 / CONIC_HALFSPACE_LE   (hash md5:a68ba099424cef64d2323616b120e8d0)
Theorem hlt_CONIC_HALFSPACE_LE : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_conic A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4683 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4683 (hl_real_le (hl_dot A a x) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1402 / CONIC_HALFSPACE_GE   (hash md5:b378e0618787104fadb757aba4f0e4ed)
Theorem hlt_CONIC_HALFSPACE_GE : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_conic A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4684 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4684 (hl_real_ge (hl_dot A a x) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1406 / CONIC_HULL_EMPTY   (hash md5:9e99e94257bbc2a814ba5a53870e537d)
Theorem hlt_CONIC_HULL_EMPTY : forall A:set, A <> Empty -> hl_hull (hl_ty_cart R A) (hl_conic A) (hl_EMPTY (hl_ty_cart R A)) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:1411 / CONIC_CONTAINS_0   (hash md5:45cd582fcb49d2f55391e5650738ea9e)
Theorem hlt_CONIC_CONTAINS_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:1420 / CONIC_HULL_EQ_EMPTY   (hash md5:15311cadaef7117eb56b3b9f17708dcf)
Theorem hlt_CONIC_HULL_EQ_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_conic A) s = hl_EMPTY (hl_ty_cart R A) <-> s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:1425 / CONIC_SUMS   (hash md5:d5c0f90a788631dd9b6ed2cf548006bf)
Theorem hlt_CONIC_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 /\ hl_conic N t = 1 -> hl_conic N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4685 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4685 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1430 / CONIC_PCROSS   (hash md5:54310397d8111d4a02bfbd753543d556)
Theorem hlt_CONIC_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_conic M s = 1 /\ hl_conic N t = 1 -> hl_conic (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1437 / CONIC_PCROSS_EQ   (hash md5:2374091baf6f89a6f76401f3bd994d54)
Theorem hlt_CONIC_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_conic (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> s = hl_EMPTY (hl_ty_cart R M) \/ (t = hl_EMPTY (hl_ty_cart R N) \/ hl_conic M s = 1 /\ hl_conic N t = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1457 / CONIC_POSITIVE_ORTHANT   (hash md5:1a03bd6b417b3bf4a84477d744497dfa)
Theorem hlt_CONIC_POSITIVE_ORTHANT : forall N:set, N <> Empty -> hl_conic N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4686 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4686 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1461 / CONIC_HULL_0   (hash md5:6242100a74dd8a26544935589214e901)
Theorem hlt_CONIC_HULL_0 : forall A:set, A <> Empty -> hl_hull (hl_ty_cart R A) (hl_conic A) (hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R A))) = hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/convex.ml:1466 / CONIC_HULL_CONTAINS_0   (hash md5:0ec23f7d5e8a2b9af744c1a74163c28d)
Theorem hlt_CONIC_HULL_CONTAINS_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_conic N) s) = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:1470 / CONIC_HULL_EQ_SING   (hash md5:0caf9e470940b405ef05e1544f4171a7)
Theorem hlt_CONIC_HULL_EQ_SING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_conic N) s = hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N)) <-> s = hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N)) /\ x = hl_vec N (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/convex.ml:1482 / CONIC_HULL_INTER_AFFINE_HULL   (hash md5:7b06b6d532173642abf38a10311ee160)
Theorem hlt_CONIC_HULL_INTER_AFFINE_HULL : forall N:set, N <> Empty -> forall s f :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) f s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) f) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = f.
Admitted.

// HOL Light: Multivariate/convex.ml:1509 / SEPARATE_CLOSED_CONES   (hash md5:311c15c0451ee846948e78bc0bb6b4bd)
Theorem hlt_SEPARATE_CLOSED_CONES : forall N:set, N <> Empty -> forall c d :e 2 :^: hl_ty_cart R N, hl_conic N c = 1 /\ (hl_closed N c = 1 /\ (hl_conic N d = 1 /\ (hl_closed N d = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) c d) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) = 1))) -> exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x c = 1 /\ hl_IN (hl_ty_cart R N) y d = 1 -> hl_real_ge (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) (hl_real_mul e1 (hl_real_max (hl_vector_norm N x) (hl_vector_norm N y))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1561 / CONTINUOUS_ON_COMPACT_SURFACE_PROJECTION   (hash md5:68c6196337635bb4beb7caf4d292b47e)
Theorem hlt_CONTINUOUS_ON_COMPACT_SURFACE_PROJECTION : forall N:set, N <> Empty -> forall s v :e 2 :^: hl_ty_cart R N, forall d :e R :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_DELETE (hl_ty_cart R N) v (hl_vec N (hl_NUMERAL hl_zero))) = 1 /\ (hl_conic N v = 1 /\ (forall x :e hl_ty_cart R N, forall k :e R, hl_IN (hl_ty_cart R N) x (hl_DELETE (hl_ty_cart R N) v (hl_vec N (hl_NUMERAL hl_zero))) = 1 -> (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) k = 1 /\ hl_IN (hl_ty_cart R N) (hl_vmul N k x) s = 1 <-> d x = k)))) -> hl_continuous_on N N (fun x :e hl_ty_cart R N => hl_vmul N (d x) x) (hl_DELETE (hl_ty_cart R N) v (hl_vec N (hl_NUMERAL hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1616 / affine_dependent   (hash md5:00762d1d1731a7ed132553848ae29f92)
Theorem hlt_affine_dependent_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_affine_dependent N s = 1 <-> exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_DELETE (hl_ty_cart R N) s x)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1620 / AFFINE_DEPENDENT_EXPLICIT   (hash md5:890ce8b4396272d065f5b3369c382fb0)
Theorem hlt_AFFINE_DEPENDENT_EXPLICIT : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_affine_dependent N p = 1 <-> exists s :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL hl_zero) /\ ((exists v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v s = 1 /\ ~ u v = hl_real_of_num (hl_NUMERAL hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = hl_vec N (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:1675 / AFFINE_DEPENDENT_EXPLICIT_FINITE   (hash md5:b6c4543407bdbada6de66d30463be729)
Theorem hlt_AFFINE_DEPENDENT_EXPLICIT_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> (hl_affine_dependent N s = 1 <-> exists u :e R :^: hl_ty_cart R N, hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL hl_zero) /\ ((exists v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v s = 1 /\ ~ u v = hl_real_of_num (hl_NUMERAL hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = hl_vec N (hl_NUMERAL hl_zero))).
Admitted.

// HOL Light: Multivariate/convex.ml:1691 / AFFINE_DEPENDENT_TRANSLATION_EQ   (hash md5:a886cb23910290ca7e9e085f23b02a3b)
Theorem hlt_AFFINE_DEPENDENT_TRANSLATION_EQ : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_affine_dependent A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s) = 1 <-> hl_affine_dependent A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1697 / AFFINE_DEPENDENT_TRANSLATION   (hash md5:f601f877c2642116d61ab2073e561e4e)
Theorem hlt_AFFINE_DEPENDENT_TRANSLATION : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a :e hl_ty_cart R A, hl_affine_dependent A s = 1 -> hl_affine_dependent A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1701 / AFFINE_DEPENDENT_LINEAR_IMAGE_EQ   (hash md5:21381f9d245c54a0f6961a24c674c276)
Theorem hlt_AFFINE_DEPENDENT_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_affine_dependent N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_affine_dependent M s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1709 / AFFINE_DEPENDENT_LINEAR_IMAGE   (hash md5:01600840d245fc6df4043bbf24852142)
Theorem hlt_AFFINE_DEPENDENT_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ (hl_IN (hl_ty_cart R M) y s = 1 /\ f x = f y) -> x = y) /\ hl_affine_dependent M s = 1) -> hl_affine_dependent N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1723 / AFFINE_DEPENDENT_MONO   (hash md5:688f14e632ab48b378290c40c93dd94e)
Theorem hlt_AFFINE_DEPENDENT_MONO : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_affine_dependent N s = 1 /\ hl_SUBSET (hl_ty_cart R N) s t = 1 -> hl_affine_dependent N t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1732 / AFFINE_INDEPENDENT_EMPTY   (hash md5:e1037835905466b96044c04c63465c73)
Theorem hlt_AFFINE_INDEPENDENT_EMPTY : forall A:set, A <> Empty -> ~ hl_affine_dependent A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1736 / AFFINE_INDEPENDENT_1   (hash md5:bffb822605e7b97ee6ce2d7aefb77c77)
Theorem hlt_AFFINE_INDEPENDENT_1 : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, ~ hl_affine_dependent N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1741 / AFFINE_INDEPENDENT_2   (hash md5:6c217236e02caaef4d8ff2d54ae61ce2)
Theorem hlt_AFFINE_INDEPENDENT_2 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, ~ hl_affine_dependent N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1750 / AFFINE_INDEPENDENT_SUBSET   (hash md5:e7d49c431e60a0106fd44f268baeab5d)
Theorem hlt_AFFINE_INDEPENDENT_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, ~ hl_affine_dependent A t = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1 -> ~ hl_affine_dependent A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1755 / AFFINE_INDEPENDENT_DELETE   (hash md5:d27af2fce6bbc9a0c32b15a24613dc58)
Theorem hlt_AFFINE_INDEPENDENT_DELETE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a :e hl_ty_cart R A, ~ hl_affine_dependent A s = 1 -> ~ hl_affine_dependent A (hl_DELETE (hl_ty_cart R A) s a) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1765 / coplanar   (hash md5:67012b0b66f89bdaa4e10caced2b7a66)
Theorem hlt_coplanar_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_coplanar A s = 1 <-> exists u v w :e hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s (hl_hull (hl_ty_cart R A) (hl_affine A) (hl_INSERT (hl_ty_cart R A) u (hl_INSERT (hl_ty_cart R A) v (hl_INSERT (hl_ty_cart R A) w (hl_EMPTY (hl_ty_cart R A)))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1768 / COLLINEAR_AFFINE_HULL   (hash md5:6c607db844ab14ffdcba004be927a082)
Theorem hlt_COLLINEAR_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_collinear N s = 1 <-> exists u v :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) u (hl_INSERT (hl_ty_cart R N) v (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1794 / COLLINEAR_IMP_COPLANAR   (hash md5:3a4851c8f30fcb740f857d7b131f6555)
Theorem hlt_COLLINEAR_IMP_COPLANAR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_collinear A s = 1 -> hl_coplanar A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1798 / COPLANAR_SMALL   (hash md5:53e096a291e03b73783d767fb00667ee)
Theorem hlt_COPLANAR_SMALL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R A) s) (hl_NUMERAL (hl_BIT1 (hl_BIT1 hl_zero))) = 1 -> hl_coplanar A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1808 / COPLANAR_EMPTY   (hash md5:1a0f8cca8af26766e4e156a497a1cb89)
Theorem hlt_COPLANAR_EMPTY : forall A:set, A <> Empty -> hl_coplanar A (hl_EMPTY (hl_ty_cart R A)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1812 / COPLANAR_SING   (hash md5:53bbc1e8d7f6aceaaa02015eeba09107)
Theorem hlt_COPLANAR_SING : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_coplanar A (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1816 / COPLANAR_2   (hash md5:5701c1b1acd87a9d810b2db8a58487f0)
Theorem hlt_COPLANAR_2 : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_coplanar A (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1820 / COPLANAR_3   (hash md5:2a08a43d326f70f17c819ead6835a4ab)
Theorem hlt_COPLANAR_3 : forall A:set, A <> Empty -> forall a b c :e hl_ty_cart R A, hl_coplanar A (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_INSERT (hl_ty_cart R A) c (hl_EMPTY (hl_ty_cart R A))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1825 / COLLINEAR_AFFINE_HULL_COLLINEAR   (hash md5:8c32299a20dd50792877d13d3be265c7)
Theorem hlt_COLLINEAR_AFFINE_HULL_COLLINEAR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_collinear A (hl_hull (hl_ty_cart R A) (hl_affine A) s) = 1 <-> hl_collinear A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1830 / COPLANAR_AFFINE_HULL_COPLANAR   (hash md5:322e80b9742821ede7e1e5fbc4f0b839)
Theorem hlt_COPLANAR_AFFINE_HULL_COPLANAR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_coplanar A (hl_hull (hl_ty_cart R A) (hl_affine A) s) = 1 <-> hl_coplanar A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1835 / COPLANAR_TRANSLATION_EQ   (hash md5:fe32377a01c58cee94e12acc1d7514b0)
Theorem hlt_COPLANAR_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_coplanar N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_coplanar N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1839 / COPLANAR_TRANSLATION   (hash md5:d61af02ad617cd60931ee3528fad4d18)
Theorem hlt_COPLANAR_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_coplanar N s = 1 -> hl_coplanar N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1845 / COPLANAR_LINEAR_IMAGE   (hash md5:a571d60d3b13688d25f333af4eef8ec9)
Theorem hlt_COPLANAR_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_coplanar M s = 1 /\ hl_linear M N f = 1 -> hl_coplanar N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1855 / COPLANAR_LINEAR_IMAGE_EQ   (hash md5:67e76201d9197542bb5e8d1cf324008f)
Theorem hlt_COPLANAR_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (forall x y :e hl_ty_cart R B, f x = f y -> x = y) -> (hl_coplanar A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 <-> hl_coplanar B s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1862 / COPLANAR_SUBSET   (hash md5:8f51442e153400c102d16835ee8f540d)
Theorem hlt_COPLANAR_SUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_coplanar A t = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_coplanar A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1866 / AFFINE_HULL_3_IMP_COLLINEAR   (hash md5:4dba703cc6a8c3ac26d5b027b846280f)
Theorem hlt_AFFINE_HULL_3_IMP_COLLINEAR : forall A:set, A <> Empty -> forall a b c :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) c (hl_hull (hl_ty_cart R A) (hl_affine A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A))))) = 1 -> hl_collinear A (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_INSERT (hl_ty_cart R A) c (hl_EMPTY (hl_ty_cart R A))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1872 / COLLINEAR_3_AFFINE_HULL   (hash md5:cb8a120b280c992ca78510f6f4d529c6)
Theorem hlt_COLLINEAR_3_AFFINE_HULL : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, ~ a = b -> (hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> hl_IN (hl_ty_cart R N) c (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1891 / COLLINEAR_3_EQ_AFFINE_DEPENDENT   (hash md5:b217e60a2075d969ca4153fe5a0129dd)
Theorem hlt_COLLINEAR_3_EQ_AFFINE_DEPENDENT : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> a = b \/ (a = c \/ (b = c \/ hl_affine_dependent N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:1911 / AFFINE_DEPENDENT_IMP_COLLINEAR_3   (hash md5:e53b68d3bc1e0b97840764876c46af41)
Theorem hlt_AFFINE_DEPENDENT_IMP_COLLINEAR_3 : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_affine_dependent N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 -> hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1925 / COLLINEAR_3_IN_AFFINE_HULL   (hash md5:8003a080f326bc0b99a6081eaff1250c)
Theorem hlt_COLLINEAR_3_IN_AFFINE_HULL : forall N:set, N <> Empty -> forall v0 v1 x :e hl_ty_cart R N, ~ v1 = v0 -> (hl_collinear N (hl_INSERT (hl_ty_cart R N) v0 (hl_INSERT (hl_ty_cart R N) v1 (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) v0 (hl_INSERT (hl_ty_cart R N) v1 (hl_EMPTY (hl_ty_cart R N))))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:1937 / COLLINEAR_3_EXPLICIT   (hash md5:9ad59a305417d74c83853f6d85da9dde)
Theorem hlt_COLLINEAR_3_EXPLICIT : forall N:set, N <> Empty -> forall x y z :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_INSERT (hl_ty_cart R N) z (hl_EMPTY (hl_ty_cart R N))))) = 1 <-> exists a b c :e R, hl_vector_add N (hl_vmul N a x) (hl_vector_add N (hl_vmul N b y) (hl_vmul N c z)) = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_real_add a (hl_real_add b c) = hl_real_of_num (hl_NUMERAL hl_zero) /\ ~ (a = hl_real_of_num (hl_NUMERAL hl_zero) /\ (b = hl_real_of_num (hl_NUMERAL hl_zero) /\ c = hl_real_of_num (hl_NUMERAL hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:1972 / CONVEX_CONNECTED   (hash md5:938ee87a441ce1e79fb59f88eb4cdc61)
Theorem hlt_CONVEX_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1985 / convex_on   (hash md5:9ad1e0594ba4685ad5bf69f959feb73c)
Theorem hlt_convex_on_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall f :e R :^: hl_ty_cart R A, hl_convex_on A f s = 1 <-> forall x y :e hl_ty_cart R A, forall u v :e R, hl_IN (hl_ty_cart R A) x s = 1 /\ (hl_IN (hl_ty_cart R A) y s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) -> hl_real_le (f (hl_vector_add A (hl_vmul A u x) (hl_vmul A v y))) (hl_real_add (hl_real_mul u (f x)) (hl_real_mul v (f y))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1990 / CONVEX_ON_EMPTY   (hash md5:a4f2ffdf0fc5ece4ace81111c4f6283c)
Theorem hlt_CONVEX_ON_EMPTY : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, hl_convex_on N f (hl_EMPTY (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1994 / CONVEX_ON_SUBSET   (hash md5:db409d679f2cf965a99add7bc490f8b6)
Theorem hlt_CONVEX_ON_SUBSET : forall A:set, A <> Empty -> forall f :e R :^: hl_ty_cart R A, forall s t :e 2 :^: hl_ty_cart R A, hl_convex_on A f t = 1 /\ hl_SUBSET (hl_ty_cart R A) s t = 1 -> hl_convex_on A f s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:1998 / CONVEX_ON_EQ   (hash md5:54888ca057193dbc20ec91c0aae19eb4)
Theorem hlt_CONVEX_ON_EQ : forall A:set, A <> Empty -> forall f g :e R :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ ((forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> f x = g x) /\ hl_convex_on A f s = 1) -> hl_convex_on A g s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2003 / CONVEX_ON_CONST   (hash md5:e6f67571f986c4520f36246bd79ca9a1)
Theorem hlt_CONVEX_ON_CONST : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a :e R, hl_convex_on A (fun x :e hl_ty_cart R A => a) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2007 / LINEAR_IMP_CONVEX_ON   (hash md5:b309484764a6be976f616c2c43f69150)
Theorem hlt_LINEAR_IMP_CONVEX_ON : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_linear N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) = 1 -> hl_convex_on N f s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2013 / CONVEX_ON_SING   (hash md5:091ab559d5f69bc454fff9f920d480a9)
Theorem hlt_CONVEX_ON_SING : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex_on N f (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2019 / CONVEX_ADD   (hash md5:5e5d095ce054a6482f62512c4260d28a)
Theorem hlt_CONVEX_ADD : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall f g :e R :^: hl_ty_cart R A, hl_convex_on A f s = 1 /\ hl_convex_on A g s = 1 -> hl_convex_on A (fun x :e hl_ty_cart R A => hl_real_add (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2027 / CONVEX_ADD_EQ   (hash md5:1fca2a97e8033418ed75565f17d007f9)
Theorem hlt_CONVEX_ADD_EQ : forall N:set, N <> Empty -> forall a :e R, forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N (fun x :e hl_ty_cart R N => hl_real_add a (f x)) s = 1 <-> hl_convex_on N f s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2035 / CONVEX_CMUL   (hash md5:e9669aad7d5e4454691002292f2be170)
Theorem hlt_CONVEX_CMUL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall c :e R, forall f :e R :^: hl_ty_cart R A, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_convex_on A f s = 1 -> hl_convex_on A (fun x :e hl_ty_cart R A => hl_real_mul c (f x)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2040 / CONVEX_MAX   (hash md5:3a6836e090bf5a4b6900b6a92b2e2af5)
Theorem hlt_CONVEX_MAX : forall A:set, A <> Empty -> forall f g :e R :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_convex_on A f s = 1 /\ hl_convex_on A g s = 1 -> hl_convex_on A (fun x :e hl_ty_cart R A => hl_real_max (f x) (g x)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2051 / CONVEX_ON_SUM   (hash md5:37e00cfca471ec3bc2f6a1ded83188e4)
Theorem hlt_CONVEX_ON_SUM : forall A N:set, A <> Empty -> N <> Empty -> forall t :e 2 :^: hl_ty_cart R N, forall f :e R :^: hl_ty_cart R N :^: A, forall s :e 2 :^: A, hl_FINITE A s = 1 /\ (forall a :e A, hl_IN A a s = 1 -> hl_convex_on N (f a) t = 1) -> hl_convex_on N (fun x :e hl_ty_cart R N => hl_sum A s (fun a :e A => f a x)) t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2060 / CONVEX_ON_IMP_MIDPOINT_CONVEX   (hash md5:2124e9611bfb0e6782e7ce5255c5adfe)
Theorem hlt_CONVEX_ON_IMP_MIDPOINT_CONVEX : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1) -> hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2070 / CONVEX_LOWER   (hash md5:3e7d9bd958041a66a9e5b724bc7a1487)
Theorem hlt_CONVEX_LOWER : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, forall u v :e R, hl_convex_on N f s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) -> hl_real_le (f (hl_vector_add N (hl_vmul N u x) (hl_vmul N v y))) (hl_real_max (f x) (f y)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2081 / CONVEX_LOWER_SEGMENT   (hash md5:7ef429c0a75cf82be6d9117e26bd185a)
Theorem hlt_CONVEX_LOWER_SEGMENT : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a b x :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1)) -> hl_real_le (f x) (hl_real_max (f a) (f b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2089 / CONVEX_LOWER_SEGMENT_LT   (hash md5:15afea1dc92dc2699fe4139ca736fffe)
Theorem hlt_CONVEX_LOWER_SEGMENT_LT : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a b x :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (~ x = b /\ hl_real_lt (f a) (f b) = 1)))) -> hl_real_lt (f x) (f b) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2109 / CONVEX_LOCAL_GLOBAL_MINIMUM_SEGMENT   (hash md5:361a511984f4e45e27479eb5be7cc832)
Theorem hlt_CONVEX_LOCAL_GLOBAL_MINIMUM_SEGMENT : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (forall z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z s = 1 /\ ~ z = x -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x z) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ (~ y = x /\ hl_real_le (f x) (f y) = 1)))) -> forall z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z s = 1 -> hl_real_le (f x) (f z) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2125 / CONVEX_LOCAL_GLOBAL_MINIMUM_GEN   (hash md5:f1a00066e381742ded592f1b5076c4e7)
Theorem hlt_CONVEX_LOCAL_GLOBAL_MINIMUM_GEN : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_IN (hl_ty_cart R N) x t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> hl_real_le (f x) (f y) = 1)))) -> forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f x) (f y) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2163 / CONVEX_LOCAL_GLOBAL_MINIMUM   (hash md5:51ddddaec83c297e701231dbd2b73a37)
Theorem hlt_CONVEX_LOCAL_GLOBAL_MINIMUM : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ (hl_IN (hl_ty_cart R N) x t = 1 /\ (hl_open N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y t = 1 -> hl_real_le (f x) (f y) = 1)))) -> forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f x) (f y) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2175 / CONVEX_DISTANCE   (hash md5:504cc3f52ecd4608f9ea5a1e297e5d1e)
Theorem hlt_CONVEX_DISTANCE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a :e hl_ty_cart R A, hl_convex_on A (fun x :e hl_ty_cart R A => hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a x)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2185 / CONVEX_NORM   (hash md5:327d9fa10697f6418c9683dc8ab769c4)
Theorem hlt_CONVEX_NORM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N (hl_vector_norm N) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2191 / CONVEX_ON_COMPOSE_LINEAR   (hash md5:a2d1b572a03309a28db11fe87b65aab5)
Theorem hlt_CONVEX_ON_COMPOSE_LINEAR : forall M N:set, M <> Empty -> N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall g :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_convex_on N f (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g s) = 1 /\ hl_linear M N g = 1 -> hl_convex_on M (hl_o (hl_ty_cart R N) R (hl_ty_cart R M) f g) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2202 / CONVEX_ON_TRANSLATION   (hash md5:d3cbc089c066097aac7ce63a8b0e5b4d)
Theorem hlt_CONVEX_ON_TRANSLATION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e R :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex_on N f (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = 1 <-> hl_convex_on N (fun x :e hl_ty_cart R N => f (hl_vector_add N a x)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2211 / LINEAR_CONVEX_ON_1   (hash md5:8145b45eb57a21485bf278f568e77527)
Theorem hlt_LINEAR_CONVEX_ON_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, hl_linear N 1 f = 1 <-> f (hl_vec N (hl_NUMERAL hl_zero)) = hl_vec 1 (hl_NUMERAL hl_zero) /\ (hl_convex_on N (hl_o (hl_ty_cart R 1) R (hl_ty_cart R N) hl_drop f) (hl_UNIV (hl_ty_cart R N)) = 1 /\ hl_convex_on N (hl_o R R (hl_ty_cart R N) hl_real_neg (hl_o (hl_ty_cart R 1) R (hl_ty_cart R N) hl_drop f)) (hl_UNIV (hl_ty_cart R N)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:2271 / CONVEX_CONCAVE_EQ_AFFINE   (hash md5:6f44dc78459b5598b9a2a16da04eb541)
Theorem hlt_CONVEX_CONCAVE_EQ_AFFINE : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, hl_convex_on N f (hl_UNIV (hl_ty_cart R N)) = 1 /\ hl_convex_on N (hl_o R R (hl_ty_cart R N) hl_real_neg f) (hl_UNIV (hl_ty_cart R N)) = 1 <-> exists a :e hl_ty_cart R N, exists b :e R, f = fun x :e hl_ty_cart R N => hl_real_add (hl_dot N a x) b.
Admitted.

// HOL Light: Multivariate/convex.ml:2295 / CONVEX_BALL   (hash md5:a32033dc7d5ee3c1e823e81515c2c6f2)
Theorem hlt_CONVEX_BALL : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_convex N (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2303 / CONNECTED_BALL   (hash md5:83228390b4c99af71b93b7e5d108fbdf)
Theorem hlt_CONNECTED_BALL : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_connected N (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2307 / CONVEX_CBALL   (hash md5:0bc1bce38edcab93d8201a6d993c35a0)
Theorem hlt_CONVEX_CBALL : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_convex N (hl_cball N (hl_pair (hl_ty_cart R N) R x e1)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2322 / CONNECTED_CBALL   (hash md5:2aa71a21536a3ea89582f9ef78dc411a)
Theorem hlt_CONNECTED_CBALL : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall e1 :e R, hl_connected N (hl_cball N (hl_pair (hl_ty_cart R N) R x e1)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2326 / CONVEX_INTERMEDIATE_BALL   (hash md5:8abf0dc41550178e4c3bee4d33f63a57)
Theorem hlt_CONVEX_INTERMEDIATE_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) t = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1 -> hl_convex N t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2337 / FRONTIER_OF_CONNECTED_COMPONENT_SUBSET   (hash md5:0b9c8e3fc0eb27b003ea2fc106876628)
Theorem hlt_FRONTIER_OF_CONNECTED_COMPONENT_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_frontier N (hl_connected_component N s x)) (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2360 / FRONTIER_OF_COMPONENTS_SUBSET   (hash md5:400e63dab2f0a3e7e9d1d160d820616b)
Theorem hlt_FRONTIER_OF_COMPONENTS_SUBSET : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_frontier N c) (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2366 / FRONTIER_OF_COMPONENTS_CLOSED_COMPLEMENT   (hash md5:b7ae3b8ae602486f1ae2c70ae6947d89)
Theorem hlt_FRONTIER_OF_COMPONENTS_CLOSED_COMPLEMENT : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_frontier N c) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2374 / CONTAINS_COMPONENT_OF_COMPACT_FRONTIER   (hash md5:2ee753e98cf47c758e45965fc4217d10)
Theorem hlt_CONTAINS_COMPONENT_OF_COMPACT_FRONTIER : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N s) = 1 -> exists d :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d (hl_components N (hl_frontier N s)) = 1 /\ hl_SUBSET (hl_ty_cart R N) d c = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2404 / CARD_LE_COMPONENTS_FRONTIER   (hash md5:52f1118a40513cc649beba4567be19bc)
Theorem hlt_CARD_LE_COMPONENTS_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 -> hl_sym_3c3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_components N s) (hl_components N (hl_frontier N s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2418 / CONTAINS_COMPONENT_OF_CLOSURE_FRONTIER   (hash md5:f4817c8a01ecef987f79467c96f88cad)
Theorem hlt_CONTAINS_COMPONENT_OF_CLOSURE_FRONTIER : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_closure N s)) = 1 -> exists d :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) d (hl_components N (hl_frontier N s)) = 1 /\ hl_SUBSET (hl_ty_cart R N) d c = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2447 / CARD_LE_COMPONENTS_CLOSURE_FRONTIER   (hash md5:3ea08efb7bffd1d44f19db7b2678a03a)
Theorem hlt_CARD_LE_COMPONENTS_CLOSURE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_sym_3c3d5f63 (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_components N (hl_closure N s)) (hl_components N (hl_frontier N s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2466 / CONNECTED_UNION_CLOPEN_IN_COMPLEMENT   (hash md5:3ec68aeafb5d52f74c521b996b0815a9)
Theorem hlt_CONNECTED_UNION_CLOPEN_IN_COMPLEMENT : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_connected N u = 1 /\ (hl_SUBSET (hl_ty_cart R N) s u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DIFF (hl_ty_cart R N) u s)) t = 1 /\ hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_DIFF (hl_ty_cart R N) u s)) t = 1))) -> hl_connected N (hl_UNION (hl_ty_cart R N) s t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2528 / COMPONENT_COMPLEMENT_CONNECTED   (hash md5:7b4597686e4a4919c5c8ee115228629b)
Theorem hlt_COMPONENT_COMPLEMENT_CONNECTED : forall N:set, N <> Empty -> forall s u c :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_connected N u = 1 /\ (hl_SUBSET (hl_ty_cart R N) s u = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) u s)) = 1)) -> hl_connected N (hl_DIFF (hl_ty_cart R N) u c) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2590 / BALL_SUBSET_OPEN_MAP_IMAGE   (hash md5:1be260630507fa854f1b884732745d9d)
Theorem hlt_BALL_SUBSET_OPEN_MAP_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall a :e hl_ty_cart R M, forall r :e R, hl_bounded M s = 1 /\ (hl_continuous_on M N f (hl_closure M s) = 1 /\ (hl_open N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_interior M s)) = 1 /\ (hl_IN (hl_ty_cart R M) a s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (forall z :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) z (hl_frontier M s) = 1 -> hl_real_le r (hl_vector_norm N (hl_vector_sub N (f z) (f a))) = 1))))) -> hl_SUBSET (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (f a) r)) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2670 / CONVEX_SCALING   (hash md5:935fa479509d9a92903d0563b1c84d74)
Theorem hlt_CONVEX_SCALING : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall c :e R, hl_convex A s = 1 -> hl_convex A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vmul A c x) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2677 / CONVEX_SCALING_EQ   (hash md5:b2b20c074fa5e1fa10e8bceb0c18424d)
Theorem hlt_CONVEX_SCALING_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_convex N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = 1 <-> c = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_convex N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2687 / CONVEX_NEGATIONS   (hash md5:a1d8900cabffab4a9e43daab96713e80)
Theorem hlt_CONVEX_NEGATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 -> hl_convex A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_neg A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2694 / CONVEX_SUMS   (hash md5:1a24cd4ac3b0a476ff2afbaf02da6fc2)
Theorem hlt_CONVEX_SUMS : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ hl_convex A t = 1 -> hl_convex A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4690 :e hl_ty_cart R A => if exists x y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4690 (if hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y t = 1 then 1 else 0) (hl_vector_add A x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2701 / CONVEX_DIFFERENCES   (hash md5:8be35ae009a718079c0f66c427ccf5dd)
Theorem hlt_CONVEX_DIFFERENCES : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ hl_convex A t = 1 -> hl_convex A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4691 :e hl_ty_cart R A => if exists x y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4691 (if hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y t = 1 then 1 else 0) (hl_vector_sub A x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2708 / CONVEX_AFFINITY_EQ   (hash md5:99c290910a1d9f990ec75dd7e0af3beb)
Theorem hlt_CONVEX_AFFINITY_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_convex N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1 <-> m = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_convex N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2714 / CONVEX_AFFINITY   (hash md5:3d5049233cffd8981ca52c0373470e3f)
Theorem hlt_CONVEX_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall m :e R, forall c :e hl_ty_cart R N, hl_convex N s = 1 -> hl_convex N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N m x) c) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2718 / CONVEX_LINEAR_PREIMAGE   (hash md5:58c666902e7fe730edfb1d81ecb88c4e)
Theorem hlt_CONVEX_LINEAR_PREIMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e hl_ty_cart R N :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_convex N s = 1 -> hl_convex M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_4692 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_4692 (hl_IN (hl_ty_cart R N) (f x) s) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2724 / CONVEX_SUMS_MULTIPLES   (hash md5:429e5ac33d31f0c01ba3ef267400399b)
Theorem hlt_CONVEX_SUMS_MULTIPLES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c d :e R, hl_convex N s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1) -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4693 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4693 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 then 1 else 0) (hl_vector_add N (hl_vmul N c x) (hl_vmul N d y)) = 1 then 1 else 0) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N (hl_real_add c d) x) s.
Admitted.

// HOL Light: Multivariate/convex.ml:2743 / CONVEX_TRANSLATION_SUBSET_PREIMAGE   (hash md5:7448bdec8f263278f027b7ece0c6e688)
Theorem hlt_CONVEX_TRANSLATION_SUBSET_PREIMAGE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N t = 1 -> hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4694 :e hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4694 (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) t) a = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2753 / CONVEX_TRANSLATION_SUPERSET_PREIMAGE   (hash md5:a913f839c89048928b3db3a106c804b7)
Theorem hlt_CONVEX_TRANSLATION_SUPERSET_PREIMAGE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N t = 1 -> hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4697 :e hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4697 (hl_SUBSET (hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) t)) a = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2765 / SUBSET_SUMS_LCANCEL   (hash md5:131cddf9e1603f73cf0ae6a9a2eee2a9)
Theorem hlt_SUBSET_SUMS_LCANCEL : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_bounded N s = 1 /\ (hl_closed N u = 1 /\ (hl_convex N u = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4698 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4698 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4699 :e hl_ty_cart R N => if exists x z :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4699 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) z u = 1 then 1 else 0) (hl_vector_add N x z) = 1 then 1 else 0)) = 1))) -> hl_SUBSET (hl_ty_cart R N) t u = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2832 / SUBSET_SUMS_RCANCEL   (hash md5:00a56889ddc12751931f18205d986ace)
Theorem hlt_SUBSET_SUMS_RCANCEL : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_closed N t = 1 /\ (hl_convex N t = 1 /\ (hl_bounded N u = 1 /\ (~ u = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4700 :e hl_ty_cart R N => if exists x z :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4700 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) z u = 1 then 1 else 0) (hl_vector_add N x z) = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4701 :e hl_ty_cart R N => if exists y z :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4701 (if hl_IN (hl_ty_cart R N) y t = 1 /\ hl_IN (hl_ty_cart R N) z u = 1 then 1 else 0) (hl_vector_add N y z) = 1 then 1 else 0)) = 1))) -> hl_SUBSET (hl_ty_cart R N) s t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2841 / EQ_SUMS_LCANCEL   (hash md5:f6c5315421d064e44686928455126149)
Theorem hlt_EQ_SUMS_LCANCEL : forall A:set, A <> Empty -> forall s t u :e 2 :^: hl_ty_cart R A, ~ s = hl_EMPTY (hl_ty_cart R A) /\ (hl_bounded A s = 1 /\ (hl_closed A t = 1 /\ (hl_convex A t = 1 /\ (hl_closed A u = 1 /\ (hl_convex A u = 1 /\ hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4702 :e hl_ty_cart R A => if exists x y :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4702 (if hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y t = 1 then 1 else 0) (hl_vector_add A x y) = 1 then 1 else 0) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4703 :e hl_ty_cart R A => if exists x z :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4703 (if hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) z u = 1 then 1 else 0) (hl_vector_add A x z) = 1 then 1 else 0)))))) -> t = u.
Admitted.

// HOL Light: Multivariate/convex.ml:2850 / EQ_SUMS_RCANCEL   (hash md5:4fa2ceab60ab3f9648bf5ad3efaef6b7)
Theorem hlt_EQ_SUMS_RCANCEL : forall A:set, A <> Empty -> forall s t u :e 2 :^: hl_ty_cart R A, hl_closed A s = 1 /\ (hl_convex A s = 1 /\ (hl_closed A t = 1 /\ (hl_convex A t = 1 /\ (hl_bounded A u = 1 /\ (~ u = hl_EMPTY (hl_ty_cart R A) /\ hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4704 :e hl_ty_cart R A => if exists x z :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4704 (if hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) z u = 1 then 1 else 0) (hl_vector_add A x z) = 1 then 1 else 0) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4705 :e hl_ty_cart R A => if exists y z :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4705 (if hl_IN (hl_ty_cart R A) y t = 1 /\ hl_IN (hl_ty_cart R A) z u = 1 then 1 else 0) (hl_vector_add A y z) = 1 then 1 else 0)))))) -> s = t.
Admitted.

// HOL Light: Multivariate/convex.ml:2863 / CONVEX_CONVEX_HULL   (hash md5:9ed3efb50fdcca9606017d2974d52423)
Theorem hlt_CONVEX_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A (hl_hull (hl_ty_cart R A) (hl_convex A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2867 / CONVEX_HULL_EQ   (hash md5:702255eab574211a66183e4ae180738e)
Theorem hlt_CONVEX_HULL_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_convex A) s = s <-> hl_convex A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2871 / CONVEX_HULLS_EQ   (hash md5:52dafe916b08d00f8524db7242b6f1fc)
Theorem hlt_CONVEX_HULLS_EQ : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s (hl_hull (hl_ty_cart R A) (hl_convex A) t) = 1 /\ hl_SUBSET (hl_ty_cart R A) t (hl_hull (hl_ty_cart R A) (hl_convex A) s) = 1 -> hl_hull (hl_ty_cart R A) (hl_convex A) s = hl_hull (hl_ty_cart R A) (hl_convex A) t.
Admitted.

// HOL Light: Multivariate/convex.ml:2877 / IS_CONVEX_HULL   (hash md5:74f9d592824049b55f39aad49c3c3b30)
Theorem hlt_IS_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 <-> exists t :e 2 :^: hl_ty_cart R A, s = hl_hull (hl_ty_cart R A) (hl_convex A) t.
Admitted.

// HOL Light: Multivariate/convex.ml:2881 / CONVEX_HULL_CONTAINS   (hash md5:e7eb9bbc308c7179e1a02901463e8734)
Theorem hlt_CONVEX_HULL_CONTAINS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) -> hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2887 / MIDPOINTS_IN_CONVEX_HULL   (hash md5:0d39a0d4b26e2248ae82e614738985de)
Theorem hlt_MIDPOINTS_IN_CONVEX_HULL : forall N:set, N <> Empty -> forall y x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_IN (hl_ty_cart R N) (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2892 / CONVEX_HULL_UNIV   (hash md5:55fb105f55bcd0626fb992e1fac0e945)
Theorem hlt_CONVEX_HULL_UNIV : forall N:set, N <> Empty -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_UNIV (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:2896 / BOUNDED_CONVEX_HULL   (hash md5:124159e088094bfb3085ba6dcf3eaab2)
Theorem hlt_BOUNDED_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_bounded N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2904 / BOUNDED_CONVEX_HULL_EQ   (hash md5:1fd38810ada8051c2ddf2f1cd8544ee4)
Theorem hlt_BOUNDED_CONVEX_HULL_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_bounded A (hl_hull (hl_ty_cart R A) (hl_convex A) s) = 1 <-> hl_bounded A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2908 / FINITE_IMP_BOUNDED_CONVEX_HULL   (hash md5:5039901efa27cd1fdbab3e41ef4444de)
Theorem hlt_FINITE_IMP_BOUNDED_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_FINITE (hl_ty_cart R A) s = 1 -> hl_bounded A (hl_hull (hl_ty_cart R A) (hl_convex A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:2916 / CONVEX_HULL_EMPTY   (hash md5:c939e8ed67d04ae8b00542f19111db85)
Theorem hlt_CONVEX_HULL_EMPTY : forall A:set, A <> Empty -> hl_hull (hl_ty_cart R A) (hl_convex A) (hl_EMPTY (hl_ty_cart R A)) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:2921 / CONVEX_HULL_EQ_EMPTY   (hash md5:75a5cd3319dda256e24ba16d9d2bbf70)
Theorem hlt_CONVEX_HULL_EQ_EMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_convex A) s = hl_EMPTY (hl_ty_cart R A) <-> s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:2926 / CONVEX_HULL_SING   (hash md5:85ab3a9c27fa5ea6447e6bcc9b11d032)
Theorem hlt_CONVEX_HULL_SING : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_convex A) (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) = hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/convex.ml:2930 / CONVEX_HULL_EQ_SING   (hash md5:b5cbceb8252d21f9cab446ec5a5348fc)
Theorem hlt_CONVEX_HULL_EQ_SING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)) <-> s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:2939 / CONVEX_HULL_INSERT   (hash md5:9ee86a8679ff209f0f6f6c276924e6c3)
Theorem hlt_CONVEX_HULL_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4706 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4706 (if exists u v :e R, exists b :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ (hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_IN (hl_ty_cart R N) b (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ x = hl_vector_add N (hl_vmul N u a) (hl_vmul N v b)))) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:2990 / CONVEX_HULL_INSERT_ALT   (hash md5:c685a970804f60f868417359d3e0c738)
Theorem hlt_CONVEX_HULL_INSERT_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s) = hl_COND (2 :^: hl_ty_cart R N) (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4707 :e hl_ty_cart R N => if exists u :e R, exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4707 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1) then 1 else 0) (hl_vector_add N (hl_vmul N (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) a) (hl_vmul N u x)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:3004 / CONVEX_HULL_INSERT_SEGMENTS   (hash md5:f4060dd236b7307b75061038af4b9ed8)
Theorem hlt_CONVEX_HULL_INSERT_SEGMENTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a s) = hl_COND (2 :^: hl_ty_cart R N) (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4708 :e 2 :^: hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4708 (hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s)) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:3016 / CONVEX_HULL_INDEXED   (hash md5:ee1e004415cfeafeaa494d59b332e849)
Theorem hlt_CONVEX_HULL_INDEXED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4709 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4709 (if exists k :e omega, exists u :e R :^: omega, exists x :e hl_ty_cart R N :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u i) = 1 /\ hl_IN (hl_ty_cart R N) (x i) s = 1) /\ (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) (fun i :e omega => hl_vmul N (u i) (x i)) = y) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3049 / CONVEX_HULL_FINITE_IMAGE_EXPLICIT   (hash md5:2daebd5e3f36cf70e6adedc7f5236a3b)
Theorem hlt_CONVEX_HULL_FINITE_IMAGE_EXPLICIT : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall k :e 2 :^: A, hl_FINITE A k = 1 -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_IMAGE A (hl_ty_cart R N) f k) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4710 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4710 (if exists u :e R :^: A, (forall a :e A, hl_IN A a k = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u a) = 1) /\ (hl_sum A k u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum A N k (fun a :e A => hl_vmul N (u a) (f a)) = y) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3122 / CONVEX_HULL_EXPLICIT   (hash md5:3cb2526fbb25d37a1dc5d2dbbc1fe83d)
Theorem hlt_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) p = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4712 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4712 (if exists s :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = y))) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3175 / CONVEX_HULL_FINITE   (hash md5:4955b8826b3fb902916a0959b72b3565)
Theorem hlt_CONVEX_HULL_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4714 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4714 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3213 / CONVEX_HULL_IMAGE   (hash md5:15c75582da11ce915b3b991ae5899ffe)
Theorem hlt_CONVEX_HULL_IMAGE : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall k :e 2 :^: A, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_IMAGE A (hl_ty_cart R N) f k) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4716 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4716 (if exists c :e 2 :^: A, exists u :e R :^: A, hl_FINITE A c = 1 /\ (hl_SUBSET A c k = 1 /\ ((forall a :e A, hl_IN A a c = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u a) = 1) /\ (hl_sum A c u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum A N c (fun a :e A => hl_vmul N (u a) (f a)) = y))) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3253 / CONVEX_HULL_IMAGE_LT   (hash md5:66cbeb3de5cd2e74cad934a9fbe20946)
Theorem hlt_CONVEX_HULL_IMAGE_LT : forall A N:set, A <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: A, forall k :e 2 :^: A, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_IMAGE A (hl_ty_cart R N) f k) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4718 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4718 (if exists c :e 2 :^: A, exists u :e R :^: A, hl_FINITE A c = 1 /\ (hl_SUBSET A c k = 1 /\ ((forall a :e A, hl_IN A a c = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (u a) = 1) /\ (hl_sum A c u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum A N c (fun a :e A => hl_vmul N (u a) (f a)) = y))) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3275 / CONVEX_HULL_UNION_EXPLICIT   (hash md5:ed8e4741b6e9d76fe41e815d0dd57b3d)
Theorem hlt_CONVEX_HULL_UNION_EXPLICIT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_convex N t = 1 -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_UNION (hl_ty_cart R N) s t) = hl_UNION (hl_ty_cart R N) s (hl_UNION (hl_ty_cart R N) t (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4719 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, exists u :e R, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4719 (if hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y t = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1)) then 1 else 0) (hl_vector_add N (hl_vmul N (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) x) (hl_vmul N u y)) = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:3340 / CONVEX_HULL_UNION_NONEMPTY_EXPLICIT   (hash md5:f53fa6fd25998673adf36a890d0f9922)
Theorem hlt_CONVEX_HULL_UNION_NONEMPTY_EXPLICIT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_convex N t = 1 /\ ~ t = hl_EMPTY (hl_ty_cart R N))) -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_UNION (hl_ty_cart R N) s t) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4720 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, exists u :e R, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4720 (if hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y t = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1)) then 1 else 0) (hl_vector_add N (hl_vmul N (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) x) (hl_vmul N u y)) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3358 / CONVEX_HULL_UNION_UNIONS   (hash md5:a5e5338ac0c72a69b5153bafa979b0d6)
Theorem hlt_CONVEX_HULL_UNION_UNIONS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), forall s :e 2 :^: hl_ty_cart R N, hl_convex N (hl_UNIONS (hl_ty_cart R N) f) = 1 /\ ~ f = hl_EMPTY (2 :^: hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_UNION (hl_ty_cart R N) s (hl_UNIONS (hl_ty_cart R N) f)) = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4721 :e 2 :^: hl_ty_cart R N => if exists t :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4721 (hl_IN (2 :^: hl_ty_cart R N) t f) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_UNION (hl_ty_cart R N) s t)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:3398 / CONVEX_HULL_FINITE_STEP   (hash md5:b341fef026f19d35b0a6a8b548857e8f)
Theorem hlt_CONVEX_HULL_FINITE_STEP : forall N:set, N <> Empty -> forall w :e R, forall y :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, ((exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) (hl_EMPTY (hl_ty_cart R N)) u = w /\ hl_vsum (hl_ty_cart R N) N (hl_EMPTY (hl_ty_cart R N)) (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y)) <-> w = hl_real_of_num (hl_NUMERAL hl_zero) /\ y = hl_vec N (hl_NUMERAL hl_zero)) /\ (hl_FINITE (hl_ty_cart R N) s = 1 -> ((exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) a s) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a s) u = w /\ hl_vsum (hl_ty_cart R N) N (hl_INSERT (hl_ty_cart R N) a s) (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y)) <-> exists v :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_sub w v /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = hl_vector_sub N y (hl_vmul N v a)))).
Admitted.

// HOL Light: Multivariate/convex.ml:3418 / CONVEX_HULL_2   (hash md5:78b328625abcc55478577e0e6956ed02)
Theorem hlt_CONVEX_HULL_2 : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_convex A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A)))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4722 :e hl_ty_cart R A => if exists u v :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4722 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ hl_real_add u v = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) then 1 else 0) (hl_vector_add A (hl_vmul A u a) (hl_vmul A v b)) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3427 / CONVEX_HULL_2_ALT   (hash md5:fed7f9f51b5d8bf6df7654c11db7e369)
Theorem hlt_CONVEX_HULL_2_ALT : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_convex A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A)))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4723 :e hl_ty_cart R A => if exists u :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4723 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 then 1 else 0) (hl_vector_add A a (hl_vmul A u (hl_vector_sub A b a))) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3437 / CONVEX_HULL_3   (hash md5:72a0aec1253f12097612c67cec5697fb)
Theorem hlt_CONVEX_HULL_3 : forall A:set, A <> Empty -> forall a b c :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_convex A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_INSERT (hl_ty_cart R A) c (hl_EMPTY (hl_ty_cart R A))))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4724 :e hl_ty_cart R A => if exists u v w :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4724 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) w = 1 /\ hl_real_add u (hl_real_add v w) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) then 1 else 0) (hl_vector_add A (hl_vmul A u a) (hl_vector_add A (hl_vmul A v b) (hl_vmul A w c))) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3447 / CONVEX_HULL_3_ALT   (hash md5:bf0fec96a05608cbfffd39663f9b3b2b)
Theorem hlt_CONVEX_HULL_3_ALT : forall A:set, A <> Empty -> forall a b c :e hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_convex A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_INSERT (hl_ty_cart R A) c (hl_EMPTY (hl_ty_cart R A))))) = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4725 :e hl_ty_cart R A => if exists u v :e R, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4725 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ hl_real_le (hl_real_add u v) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) then 1 else 0) (hl_vector_add A a (hl_vector_add A (hl_vmul A u (hl_vector_sub A b a)) (hl_vmul A v (hl_vector_sub A c a)))) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3459 / CONVEX_HULL_SUMS   (hash md5:4ac59d31e842dbb56d2d81c613399616)
Theorem hlt_CONVEX_HULL_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4726 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4726 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4727 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4727 (if hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex N) t) = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3489 / AFFINE_HULL_SUMS   (hash md5:ea87d0132f926a016ad3c30dd2a53048)
Theorem hlt_AFFINE_HULL_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4728 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4728 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4729 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4729 (if hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_affine N) t) = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:3519 / AFFINE_HULL_PCROSS   (hash md5:31d1368fd35dd48fbb0816d420bb7d06)
Theorem hlt_AFFINE_HULL_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_affine (hl_ty_finite_sum M N)) (hl_PCROSS R M N s t) = hl_PCROSS R M N (hl_hull (hl_ty_cart R M) (hl_affine M) s) (hl_hull (hl_ty_cart R N) (hl_affine N) t).
Admitted.

// HOL Light: Multivariate/convex.ml:3519 / CONVEX_HULL_PCROSS   (hash md5:8f262f96a86e8db3b4be5f02523978e0)
Theorem hlt_CONVEX_HULL_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R (hl_ty_finite_sum M N)) (hl_convex (hl_ty_finite_sum M N)) (hl_PCROSS R M N s t) = hl_PCROSS R M N (hl_hull (hl_ty_cart R M) (hl_convex M) s) (hl_hull (hl_ty_cart R N) (hl_convex N) t).
Admitted.

// HOL Light: Multivariate/convex.ml:3575 / BILINEAR_IN_CONVEX_HULL   (hash md5:949be6b9e33a869f2e581a103e2d5a0e)
Theorem hlt_BILINEAR_IN_CONVEX_HULL : forall M N P:set, M <> Empty -> N <> Empty -> P <> Empty -> forall f :e hl_ty_cart R P :^: hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R M, forall y :e hl_ty_cart R N, hl_bilinear M N P f = 1 /\ (hl_IN (hl_ty_cart R M) x (hl_hull (hl_ty_cart R M) (hl_convex M) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex N) t) = 1) -> hl_IN (hl_ty_cart R P) (f x y) (hl_hull (hl_ty_cart R P) (hl_convex P) (hl_GSPEC (hl_ty_cart R P) (fun GEN_PVAR_4738 :e hl_ty_cart R P => if exists a :e hl_ty_cart R M, exists b :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R P) GEN_PVAR_4738 (if hl_IN (hl_ty_cart R M) a s = 1 /\ hl_IN (hl_ty_cart R N) b t = 1 then 1 else 0) (f a b) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3594 / SUBSPACE_IMP_AFFINE   (hash md5:b93efe6c9ee46b64296e12f3beaba9fa)
Theorem hlt_SUBSPACE_IMP_AFFINE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 -> hl_affine A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3598 / AFFINE_IMP_CONVEX   (hash md5:d86ba388254fdd4adab9562779cbf2a3)
Theorem hlt_AFFINE_IMP_CONVEX : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 -> hl_convex A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3602 / SUBSPACE_IMP_CONVEX   (hash md5:fd9bcc0f47b4bcc032299f7eac53397f)
Theorem hlt_SUBSPACE_IMP_CONVEX : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 -> hl_convex A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3606 / AFFINE_HULL_SUBSET_SPAN   (hash md5:e53050f0916fafebf58d39cbe6f34910)
Theorem hlt_AFFINE_HULL_SUBSET_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_hull (hl_ty_cart R A) (hl_affine A) s) (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3611 / CONVEX_HULL_SUBSET_SPAN   (hash md5:f0f9859ac551477c8983bea84f7e81f9)
Theorem hlt_CONVEX_HULL_SUBSET_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_hull (hl_ty_cart R A) (hl_convex A) s) (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3616 / CONVEX_HULL_SUBSET_AFFINE_HULL   (hash md5:a2f653f9be4dbb0a294a769618f1375c)
Theorem hlt_CONVEX_HULL_SUBSET_AFFINE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_hull (hl_ty_cart R A) (hl_convex A) s) (hl_hull (hl_ty_cart R A) (hl_affine A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3621 / COLLINEAR_CONVEX_HULL_COLLINEAR   (hash md5:f889587006cf930b36920505a73a0bba)
Theorem hlt_COLLINEAR_CONVEX_HULL_COLLINEAR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_collinear N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 <-> hl_collinear N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3626 / AFFINE_SPAN   (hash md5:f2311d8edf160defa4f9357ba7b39a6d)
Theorem hlt_AFFINE_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine A (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3630 / CONVEX_SPAN   (hash md5:51c5aed6e08eea8e35638111bd08837a)
Theorem hlt_CONVEX_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3634 / SEGMENT_SUBSET_LINE   (hash md5:f9a70676ad1582b2b3b87b64ad4e5869)
Theorem hlt_SEGMENT_SUBSET_LINE : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1) /\ forall a b :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3643 / SPAN_CONVEX_HULL   (hash md5:7fc7983d40e76bad084cc1c0933deacc)
Theorem hlt_SPAN_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_span N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3651 / DIM_CONVEX_HULL   (hash md5:7eda4e12c6e935b0c3cf37d4d6087303)
Theorem hlt_DIM_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dim N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3655 / AFFINE_EQ_SUBSPACE   (hash md5:f4581cf202a6ef1aabe73ccce304f1f8)
Theorem hlt_AFFINE_EQ_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 -> (hl_affine N s = 1 <-> hl_subspace N s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:3669 / AFFINE_IMP_SUBSPACE   (hash md5:4b9dac8cb73d03aa126bd0117dc3e6cd)
Theorem hlt_AFFINE_IMP_SUBSPACE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine A s = 1 /\ hl_IN (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) s = 1 -> hl_subspace A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3673 / SUBSPACE_EQ_AFFINE   (hash md5:ca9235d97022f1b7d27c924eeef49f87)
Theorem hlt_SUBSPACE_EQ_AFFINE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 <-> hl_affine N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3677 / AFFINE_HULL_EQ_SPAN   (hash md5:11aa4a7cc25a8657a3a919c526ba9434)
Theorem hlt_AFFINE_HULL_EQ_SPAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:3695 / SPAN_AFFINE_HULL_INSERT   (hash md5:5f3dae0ac162abeb4e1e31cf9aa31e31)
Theorem hlt_SPAN_AFFINE_HULL_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_span N s = hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s).
Admitted.

// HOL Light: Multivariate/convex.ml:3699 / CLOSED_AFFINE   (hash md5:fc474fd430f189303300399d75bf1235)
Theorem hlt_CLOSED_AFFINE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 -> hl_closed N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3714 / CLOSED_AFFINE_HULL   (hash md5:dbd07528b70c860781763b464760862e)
Theorem hlt_CLOSED_AFFINE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_closed A (hl_hull (hl_ty_cart R A) (hl_affine A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3718 / CLOSURE_SUBSET_AFFINE_HULL   (hash md5:762a976d56cf2b1a73358c0317a6c652)
Theorem hlt_CLOSURE_SUBSET_AFFINE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_closure A s) (hl_hull (hl_ty_cart R A) (hl_affine A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3723 / AFFINE_HULL_CLOSURE   (hash md5:0400594fe71d9ce8c71c5a9ae3099274)
Theorem hlt_AFFINE_HULL_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_closure N s) = hl_hull (hl_ty_cart R N) (hl_affine N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:3731 / AFFINE_HULL_EQ_SPAN_EQ   (hash md5:c3e5eeaf0501a6a6a2c53a1ac70dba3d)
Theorem hlt_AFFINE_HULL_EQ_SPAN_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_span N s <-> hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3735 / AFFINE_DEPENDENT_IMP_DEPENDENT   (hash md5:71666088a649c15b282d12d37434973a)
Theorem hlt_AFFINE_DEPENDENT_IMP_DEPENDENT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_affine_dependent A s = 1 -> hl_dependent A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3740 / DEPENDENT_AFFINE_DEPENDENT_CASES   (hash md5:35168658218d0099eda475cbb9c8ae0d)
Theorem hlt_DEPENDENT_AFFINE_DEPENDENT_CASES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dependent N s = 1 <-> hl_affine_dependent N s = 1 \/ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3766 / DEPENDENT_IMP_AFFINE_DEPENDENT   (hash md5:944321d78e2eea9f24ab05a736c484ef)
Theorem hlt_DEPENDENT_IMP_AFFINE_DEPENDENT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_dependent N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4739 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4739 (hl_IN (hl_ty_cart R N) x s) (hl_vector_sub N x a) = 1 then 1 else 0)) = 1 /\ ~ hl_IN (hl_ty_cart R N) a s = 1 -> hl_affine_dependent N (hl_INSERT (hl_ty_cart R N) a s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3803 / AFFINE_DEPENDENT_BIGGERSET   (hash md5:ba8eff9c7eac77cf2ca7a004192db138)
Theorem hlt_AFFINE_DEPENDENT_BIGGERSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (hl_FINITE (hl_ty_cart R N) s = 1 -> hl_ge (hl_CARD (hl_ty_cart R N) s) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) -> hl_affine_dependent N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3822 / AFFINE_DEPENDENT_BIGGERSET_GENERAL   (hash md5:bcb337c6d38d9ff611b36716d67e0f67)
Theorem hlt_AFFINE_DEPENDENT_BIGGERSET_GENERAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, (hl_FINITE (hl_ty_cart R N) s = 1 -> hl_ge (hl_CARD (hl_ty_cart R N) s) (hl_add (hl_dim N s) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1) -> hl_affine_dependent N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3846 / AFFINE_INDEPENDENT_IMP_FINITE   (hash md5:7925a90071fbfff2991762ca95d83854)
Theorem hlt_AFFINE_INDEPENDENT_IMP_FINITE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_FINITE (hl_ty_cart R N) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3850 / AFFINE_INDEPENDENT_CARD_LE   (hash md5:1e9545c7374c6e55c10fcd776bdd704c)
Theorem hlt_AFFINE_INDEPENDENT_CARD_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_le (hl_CARD (hl_ty_cart R N) s) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3856 / AFFINE_INDEPENDENT_CONVEX_AFFINE_HULL   (hash md5:88b7f875053de093eca2afd9fa2605d9)
Theorem hlt_AFFINE_INDEPENDENT_CONVEX_AFFINE_HULL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ hl_SUBSET (hl_ty_cart R N) t s = 1 -> hl_hull (hl_ty_cart R N) (hl_convex N) t = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) t) (hl_hull (hl_ty_cart R N) (hl_convex N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:3891 / DISJOINT_AFFINE_HULL   (hash md5:4b8564e38c0ca782c9a3481046377bec)
Theorem hlt_DISJOINT_AFFINE_HULL : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_SUBSET (hl_ty_cart R N) u s = 1 /\ hl_DISJOINT (hl_ty_cart R N) t u = 1)) -> hl_DISJOINT (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) t) (hl_hull (hl_ty_cart R N) (hl_affine N) u) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:3925 / AFFINE_INDEPENDENT_SPAN_EQ   (hash md5:528037c80b5d77b2a11ed9b175602e60)
Theorem hlt_AFFINE_INDEPENDENT_SPAN_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ hl_CARD (hl_ty_cart R N) s = hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:3943 / AFFINE_INDEPENDENT_SPAN_GT   (hash md5:309799596c0cb6c054257a494d9e087a)
Theorem hlt_AFFINE_INDEPENDENT_SPAN_GT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ hl_lt (hl_dimindex N (hl_UNIV N)) (hl_CARD (hl_ty_cart R N) s) = 1 -> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:3952 / EMPTY_INTERIOR_AFFINE_HULL   (hash md5:fd921d57ffd7345e8e95d807018aefb1)
Theorem hlt_EMPTY_INTERIOR_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_interior N (hl_hull (hl_ty_cart R N) (hl_affine N) s) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:3971 / EMPTY_INTERIOR_CONVEX_HULL   (hash md5:832d8e099d2e415470dba471ce5ddcea)
Theorem hlt_EMPTY_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N)) = 1 -> hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:3981 / AFFINE_DEPENDENT_CHOOSE   (hash md5:d32cac55a54e5e25b651ed3c474c4566)
Theorem hlt_AFFINE_DEPENDENT_CHOOSE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> (hl_affine_dependent N (hl_INSERT (hl_ty_cart R N) a s) = 1 <-> ~ hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:4011 / AFFINE_INDEPENDENT_INSERT   (hash md5:6a85edfb092889cce5328c30b354b504)
Theorem hlt_AFFINE_INDEPENDENT_INSERT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ ~ hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> ~ hl_affine_dependent N (hl_INSERT (hl_ty_cart R N) a s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4017 / AFFINE_HULL_EXPLICIT_UNIQUE   (hash md5:023e48019c81920d1eed1918201268fe)
Theorem hlt_AFFINE_HULL_EXPLICIT_UNIQUE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall u u' :e R :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ (hl_sum (hl_ty_cart R N) s u' = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u' x) x))) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> u x = u' x.
Admitted.

// HOL Light: Multivariate/convex.ml:4032 / INDEPENDENT_IMP_AFFINE_DEPENDENT_0   (hash md5:d8badb9981de4e62b3f88df5195c7ed3)
Theorem hlt_INDEPENDENT_IMP_AFFINE_DEPENDENT_0 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_independent A s = 1 -> ~ hl_affine_dependent A (hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4037 / AFFINE_INDEPENDENT_STDBASIS   (hash md5:b4ba58a776608165a799eb2712be3766)
Theorem hlt_AFFINE_INDEPENDENT_STDBASIS : forall N:set, N <> Empty -> ~ hl_affine_dependent N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4745 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4745 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4042 / SPAN_CONIC_HULL   (hash md5:8a50d4f8b3718d5cdb8e5cfe3fa7935c)
Theorem hlt_SPAN_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_span N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = hl_span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4049 / CONIC_HULLS_EQ_IMP_SPANS_EQ   (hash md5:20b1fc997f900105f45ac0d1e34105c9)
Theorem hlt_CONIC_HULLS_EQ_IMP_SPANS_EQ : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_conic N) s = hl_hull (hl_ty_cart R N) (hl_conic N) t -> hl_span N s = hl_span N t.
Admitted.

// HOL Light: Multivariate/convex.ml:4054 / DIM_CONIC_HULL   (hash md5:a7d4ccc34cdf274aedcffe1b4acfc206)
Theorem hlt_DIM_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dim N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = hl_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4058 / CONIC_HULL_SUBSET_SPAN   (hash md5:30705d44ccdc3c540fb3bb18fb72e8c8)
Theorem hlt_CONIC_HULL_SUBSET_SPAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) (hl_span N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4062 / CONIC_IMAGE_MULTIPLE_EQ   (hash md5:cf1543ac78ed099a500022cef46a041a)
Theorem hlt_CONIC_IMAGE_MULTIPLE_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 <-> forall a :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N a x) s) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4066 / CONIC_IMAGE_MULTIPLE   (hash md5:c6d0cd0273ee018c18655249aea96887)
Theorem hlt_CONIC_IMAGE_MULTIPLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e R, hl_conic N s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 -> hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N a x) s = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4082 / AFFINE_TRANSLATION_SUBSPACE   (hash md5:b93c45b419f48720a89d042fc06eceb8)
Theorem hlt_AFFINE_TRANSLATION_SUBSPACE : forall N:set, N <> Empty -> forall t :e 2 :^: hl_ty_cart R N, hl_affine N t = 1 /\ ~ t = hl_EMPTY (hl_ty_cart R N) <-> exists a :e hl_ty_cart R N, exists s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 /\ t = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s.
Admitted.

// HOL Light: Multivariate/convex.ml:4095 / AFFINE_TRANSLATION_UNIQUE_SUBSPACE   (hash md5:2b7e7e57b5d7a689bd5bea39c0586fd4)
Theorem hlt_AFFINE_TRANSLATION_UNIQUE_SUBSPACE : forall N:set, N <> Empty -> forall t :e 2 :^: hl_ty_cart R N, hl_affine N t = 1 /\ ~ t = hl_EMPTY (hl_ty_cart R N) <-> hl_exists_unique (2 :^: hl_ty_cart R N) (fun s :e 2 :^: hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_subspace N s = 1 /\ t = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s then 1 else 0) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4119 / AFFINE_TRANSLATION_SUBSPACE_EXPLICIT   (hash md5:687bb13e3ff98269b61bc06d0a7db629)
Theorem hlt_AFFINE_TRANSLATION_SUBSPACE_EXPLICIT : forall N:set, N <> Empty -> forall t :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_affine N t = 1 /\ hl_IN (hl_ty_cart R N) a t = 1 -> hl_subspace N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4746 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4746 (hl_IN (hl_ty_cart R N) x t) (hl_vector_sub N x a) = 1 then 1 else 0)) = 1 /\ t = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4747 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4747 (hl_IN (hl_ty_cart R N) x t) (hl_vector_sub N x a) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:4133 / AFFINE_PARALLEL_SLICE   (hash md5:e7ee2ba554a86fe93bcd5a73e3ac4103)
Theorem hlt_AFFINE_PARALLEL_SLICE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall b :e R, hl_affine N s = 1 -> hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4751 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4751 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) \/ (hl_SUBSET (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4752 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4752 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = 1 \/ exists a' :e hl_ty_cart R N, exists b' :e R, ~ a' = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4753 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4753 (hl_real_le (hl_dot N a' x) b') x = 1 then 1 else 0)) = hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4754 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4754 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) /\ (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4755 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4755 (if hl_dot N a' x = b' then 1 else 0) x = 1 then 1 else 0)) = hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4756 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4756 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) /\ forall w :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) w s = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N w a') s = 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:4194 / MAXIMAL_AFFINE_INDEPENDENT_SUBSET   (hash md5:a3d2305b5bb861d19566bd75790722de)
Theorem hlt_MAXIMAL_AFFINE_INDEPENDENT_SUBSET : forall N:set, N <> Empty -> forall s b :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b s = 1 /\ (~ hl_affine_dependent N b = 1 /\ (forall b' :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b b' = 1 /\ (hl_SUBSET (hl_ty_cart R N) b' s = 1 /\ ~ hl_affine_dependent N b' = 1) -> b' = b)) -> hl_SUBSET (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) b) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4208 / MAXIMAL_AFFINE_INDEPENDENT_SUBSET_AFFINE   (hash md5:d9a3cb59766f77fd5ce6de98ffee6b3f)
Theorem hlt_MAXIMAL_AFFINE_INDEPENDENT_SUBSET_AFFINE : forall N:set, N <> Empty -> forall s b :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) b s = 1 /\ (~ hl_affine_dependent N b = 1 /\ (forall b' :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) b b' = 1 /\ (hl_SUBSET (hl_ty_cart R N) b' s = 1 /\ ~ hl_affine_dependent N b' = 1) -> b' = b))) -> hl_hull (hl_ty_cart R N) (hl_affine N) b = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4217 / EXTEND_TO_AFFINE_BASIS   (hash md5:2a4cdd6431b1fa1e48977357cd1d7f60)
Theorem hlt_EXTEND_TO_AFFINE_BASIS : forall N:set, N <> Empty -> forall s u :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ hl_SUBSET (hl_ty_cart R N) s u = 1 -> exists t :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t u = 1 /\ hl_hull (hl_ty_cart R N) (hl_affine N) t = hl_hull (hl_ty_cart R N) (hl_affine N) u)).
Admitted.

// HOL Light: Multivariate/convex.ml:4243 / AFFINE_BASIS_EXISTS   (hash md5:7896a512ed2a60bec2797dbe37e6421e)
Theorem hlt_AFFINE_BASIS_EXISTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, exists b :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N b = 1 /\ (hl_SUBSET (hl_ty_cart R N) b s = 1 /\ hl_hull (hl_ty_cart R N) (hl_affine N) b = hl_hull (hl_ty_cart R N) (hl_affine N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:4252 / aff_dim   (hash md5:9c0f3addecc214434b602ca1036e3760)
Theorem hlt_aff_dim_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_aff_dim A s = hl_select hl_ty_int (fun d :e hl_ty_int => if exists b :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) b = hl_hull (hl_ty_cart R A) (hl_affine A) s /\ (~ hl_affine_dependent A b = 1 /\ hl_int_of_num (hl_CARD (hl_ty_cart R A) b) = hl_int_add d (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:4257 / AFF_DIM   (hash md5:bf6ef5edb512f71346041b1c5f9d4029)
Theorem hlt_AFF_DIM : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, exists b :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) b = hl_hull (hl_ty_cart R A) (hl_affine A) s /\ (~ hl_affine_dependent A b = 1 /\ hl_aff_dim A s = hl_int_sub (hl_int_of_num (hl_CARD (hl_ty_cart R A) b)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:4267 / AFF_DIM_EMPTY   (hash md5:2aad80c357e8ce8297486bb355cea34f)
Theorem hlt_AFF_DIM_EMPTY : forall A:set, A <> Empty -> hl_aff_dim A (hl_EMPTY (hl_ty_cart R A)) = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/convex.ml:4273 / AFF_DIM_AFFINE_HULL   (hash md5:13044d3c8df8d33b7c3f00b6a69f702d)
Theorem hlt_AFF_DIM_AFFINE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_aff_dim A (hl_hull (hl_ty_cart R A) (hl_affine A) s) = hl_aff_dim A s.
Admitted.

// HOL Light: Multivariate/convex.ml:4277 / AFF_DIM_TRANSLATION_EQ   (hash md5:7adbf7fbfa023c1cedf38ebde622e945)
Theorem hlt_AFF_DIM_TRANSLATION_EQ : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = hl_aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4286 / AFFINE_HULL_CONIC_HULL   (hash md5:c6037139b447b08b39876cf3cfbf9c7d)
Theorem hlt_AFFINE_HULL_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_hull (hl_ty_cart R N) (hl_conic N) s) = hl_COND (2 :^: hl_ty_cart R N) (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s)).
Admitted.

// HOL Light: Multivariate/convex.ml:4295 / AFFINE_INDEPENDENT_CARD_DIM_DIFFS   (hash md5:1c63def2072ef52758d92507181c110e)
Theorem hlt_AFFINE_INDEPENDENT_CARD_DIM_DIFFS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ hl_IN (hl_ty_cart R N) a s = 1 -> hl_CARD (hl_ty_cart R N) s = hl_add (hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4758 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4758 (hl_IN (hl_ty_cart R N) x s) (hl_vector_sub N x a) = 1 then 1 else 0))) (hl_NUMERAL (hl_BIT1 hl_zero)).
Admitted.

// HOL Light: Multivariate/convex.ml:4320 / AFF_DIM_DIM_0   (hash md5:e6b1c649d53a9460f963f12deb0fcafa)
Theorem hlt_AFF_DIM_DIM_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_aff_dim N s = hl_int_of_num (hl_dim N s).
Admitted.

// HOL Light: Multivariate/convex.ml:4354 / AFF_DIM_DIM_SUBSPACE   (hash md5:31f1f0dad6ddb6f82ccc436190127f2b)
Theorem hlt_AFF_DIM_DIM_SUBSPACE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> hl_aff_dim N s = hl_int_of_num (hl_dim N s).
Admitted.

// HOL Light: Multivariate/convex.ml:4358 / AFF_DIM_DIM_AFFINE_DIFFS_STRONG   (hash md5:79f3cb3dca375a748faacbc1c524a59b)
Theorem hlt_AFF_DIM_DIM_AFFINE_DIFFS_STRONG : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 -> hl_aff_dim N s = hl_int_of_num (hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4764 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4764 (hl_IN (hl_ty_cart R N) x s) (hl_vector_sub N x a) = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:4364 / AFF_DIM_DIM_AFFINE_DIFFS   (hash md5:aac07bea2e7610bba2d7fb32e7306f7a)
Theorem hlt_AFF_DIM_DIM_AFFINE_DIFFS : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 -> hl_aff_dim N s = hl_int_of_num (hl_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4765 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4765 (hl_IN (hl_ty_cart R N) x s) (hl_vector_sub N x a) = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:4368 / AFF_DIM_LINEAR_IMAGE_LE   (hash md5:55090e3c2873a6fe5121ba8fdff9a3ae)
Theorem hlt_AFF_DIM_LINEAR_IMAGE_LE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_int_le (hl_aff_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) (hl_aff_dim M s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4390 / AFF_DIM_INJECTIVE_LINEAR_IMAGE   (hash md5:87d8deb6d340b2a9bee9a183b1fa77cb)
Theorem hlt_AFF_DIM_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_aff_dim N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_aff_dim M s.
Admitted.

// HOL Light: Multivariate/convex.ml:4407 / AFF_DIM_AFFINE_INDEPENDENT   (hash md5:f39e89c6705f801cbe37e53b61aa75eb)
Theorem hlt_AFF_DIM_AFFINE_INDEPENDENT : forall N:set, N <> Empty -> forall b :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N b = 1 -> hl_aff_dim N b = hl_int_sub (hl_int_of_num (hl_CARD (hl_ty_cart R N) b)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/convex.ml:4425 / AFF_DIM_UNIQUE   (hash md5:e5e1c62ebcdc6f64c9ff098111a56003)
Theorem hlt_AFF_DIM_UNIQUE : forall N:set, N <> Empty -> forall s b :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) b = hl_hull (hl_ty_cart R N) (hl_affine N) s /\ ~ hl_affine_dependent N b = 1 -> hl_aff_dim N s = hl_int_sub (hl_int_of_num (hl_CARD (hl_ty_cart R N) b)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/convex.ml:4431 / AFF_DIM_SING   (hash md5:1f6d8cef1ec02b3f4564a3505119ac37)
Theorem hlt_AFF_DIM_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_aff_dim N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = hl_int_of_num (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/convex.ml:4439 / AFF_DIM_LE_CARD   (hash md5:8d45cb8123bb3759b0ab7267fe0ea5ff)
Theorem hlt_AFF_DIM_LE_CARD : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_int_le (hl_aff_dim N s) (hl_int_sub (hl_int_of_num (hl_CARD (hl_ty_cart R N) s)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4450 / AFF_DIM_GE   (hash md5:fefa13b4adea08debf4224f7c74a4ecf)
Theorem hlt_AFF_DIM_GE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_aff_dim N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4455 / AFF_DIM_SUBSET   (hash md5:a5ad46e0bab76636a6a604f115b20ecc)
Theorem hlt_AFF_DIM_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 -> hl_int_le (hl_aff_dim N s) (hl_aff_dim N t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4463 / AFF_DIM_LE_DIM   (hash md5:a9f1e466b4b00fb386cbc9fd4e0eb0df)
Theorem hlt_AFF_DIM_LE_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_aff_dim N s) (hl_int_of_num (hl_dim N s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4469 / AFF_DIM_CONVEX_HULL   (hash md5:799a591742f63f98877b9263cf080015)
Theorem hlt_AFF_DIM_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4477 / AFF_DIM_CLOSURE   (hash md5:3bbea5ef4bc399332c3fcadd4b823254)
Theorem hlt_AFF_DIM_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N (hl_closure N s) = hl_aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4489 / AFF_DIM_2   (hash md5:e91fa89ef24b4c74ab23d7638271c274)
Theorem hlt_AFF_DIM_2 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_aff_dim N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))) = hl_COND hl_ty_int (if a = b then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/convex.ml:4498 / AFF_DIM_EQ_MINUS1   (hash md5:d0f133e1d078fd521ffd0e3c5afdabde)
Theorem hlt_AFF_DIM_EQ_MINUS1 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N s = hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) <-> s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:4509 / AFF_DIM_POS_LE   (hash md5:4fb4ff56ae9c6406ae202ea2a8d4256e)
Theorem hlt_AFF_DIM_POS_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_aff_dim N s) = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:4514 / AFF_DIM_EQ_0   (hash md5:ff83dfe74adff0c0dbb148d2d6b17100)
Theorem hlt_AFF_DIM_EQ_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N s = hl_int_of_num (hl_NUMERAL hl_zero) <-> exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:4528 / CONNECTED_IMP_PERFECT_AFF_DIM   (hash md5:240d122017b03aaa7b9ee6767cc5101b)
Theorem hlt_CONNECTED_IMP_PERFECT_AFF_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_connected N s = 1 /\ (~ hl_aff_dim N s = hl_int_of_num (hl_NUMERAL hl_zero) /\ hl_IN (hl_ty_cart R N) x s = 1) -> hl_limit_point_of N x s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4533 / AFF_DIM_UNIV   (hash md5:7287f03acb3badb9231f842c0f006ccb)
Theorem hlt_AFF_DIM_UNIV : forall N:set, N <> Empty -> hl_aff_dim N (hl_UNIV (hl_ty_cart R N)) = hl_int_of_num (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/convex.ml:4537 / AFF_DIM_EQ_AFFINE_HULL   (hash md5:7e49985226e735d755f127557bf5f278)
Theorem hlt_AFF_DIM_EQ_AFFINE_HULL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 /\ hl_int_le (hl_aff_dim N t) (hl_aff_dim N s) = 1 -> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_hull (hl_ty_cart R N) (hl_affine N) t.
Admitted.

// HOL Light: Multivariate/convex.ml:4548 / AFF_DIM_SUMS_INTER   (hash md5:8a4f71a188dd3f54c50d1ecde2e7d97e)
Theorem hlt_AFF_DIM_SUMS_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (hl_affine N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N)) -> hl_aff_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4773 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4773 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = hl_int_sub (hl_int_add (hl_aff_dim N s) (hl_aff_dim N t)) (hl_aff_dim N (hl_INTER (hl_ty_cart R N) s t)).
Admitted.

// HOL Light: Multivariate/convex.ml:4572 / AFF_DIM_PSUBSET   (hash md5:e5495fab5069eb55e2ce2d1920a7e17c)
Theorem hlt_AFF_DIM_PSUBSET : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_PSUBSET (hl_ty_cart R A) (hl_hull (hl_ty_cart R A) (hl_affine A) s) (hl_hull (hl_ty_cart R A) (hl_affine A) t) = 1 -> hl_int_lt (hl_aff_dim A s) (hl_aff_dim A t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4578 / AFF_DIM_EQ_FULL_GEN   (hash md5:8fa3097137a8c4818fa24a4ba75ed5be)
Theorem hlt_AFF_DIM_EQ_FULL_GEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 -> (hl_aff_dim N s = hl_aff_dim N t <-> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_hull (hl_ty_cart R N) (hl_affine N) t).
Admitted.

// HOL Light: Multivariate/convex.ml:4587 / AFF_DIM_EQ_FULL   (hash md5:acc21963340c4597418dfc31e9989f00)
Theorem hlt_AFF_DIM_EQ_FULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N s = hl_int_of_num (hl_dimindex N (hl_UNIV N)) <-> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:4592 / AFF_DIM_LE_UNIV   (hash md5:d5ba065e6d24af463df5f536fe77049c)
Theorem hlt_AFF_DIM_LE_UNIV : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_le (hl_aff_dim N s) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4597 / AFFINE_INDEPENDENT_IFF_CARD   (hash md5:5935b5fe22e9be454f7110679b869a8d)
Theorem hlt_AFFINE_INDEPENDENT_IFF_CARD : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 <-> hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_aff_dim N s = hl_int_sub (hl_int_of_num (hl_CARD (hl_ty_cart R N) s)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/convex.ml:4612 / AFFINE_HULL_CONVEX_INTER_NONEMPTY_INTERIOR   (hash md5:6dcc6c65abb41b5aa56431f8262f7872)
Theorem hlt_AFFINE_HULL_CONVEX_INTER_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_INTER (hl_ty_cart R N) s (hl_interior N t) = hl_EMPTY (hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INTER (hl_ty_cart R N) s t) = hl_hull (hl_ty_cart R N) (hl_affine N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:4649 / AFFINE_HULL_CONVEX_INTER_OPEN   (hash md5:b30129b2973d4b56403713491b921023)
Theorem hlt_AFFINE_HULL_CONVEX_INTER_OPEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_open N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N)) -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INTER (hl_ty_cart R N) s t) = hl_hull (hl_ty_cart R N) (hl_affine N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:4655 / AFFINE_HULL_AFFINE_INTER_NONEMPTY_INTERIOR   (hash md5:eed67a00e599b979133ac534cfe53f97)
Theorem hlt_AFFINE_HULL_AFFINE_INTER_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ ~ hl_INTER (hl_ty_cart R N) s (hl_interior N t) = hl_EMPTY (hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INTER (hl_ty_cart R N) s t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4662 / AFFINE_HULL_AFFINE_INTER_OPEN   (hash md5:a0f9d1817c397abc7526b4afeaa31524)
Theorem hlt_AFFINE_HULL_AFFINE_INTER_OPEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (hl_open N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N)) -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INTER (hl_ty_cart R N) s t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4668 / CONVEX_AND_AFFINE_INTER_OPEN   (hash md5:a38b18524d25f8646b099e8b6ba097d6)
Theorem hlt_CONVEX_AND_AFFINE_INTER_OPEN : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_affine N t = 1 /\ (hl_open N u = 1 /\ (hl_INTER (hl_ty_cart R N) s u = hl_INTER (hl_ty_cart R N) t u /\ ~ hl_INTER (hl_ty_cart R N) s u = hl_EMPTY (hl_ty_cart R N)))) -> hl_hull (hl_ty_cart R N) (hl_affine N) s = t.
Admitted.

// HOL Light: Multivariate/convex.ml:4685 / AFFINE_HULL_CONVEX_INTER_OPEN_IN   (hash md5:bac285ca03087e6b75592508c26eb7e5)
Theorem hlt_AFFINE_HULL_CONVEX_INTER_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N)) -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INTER (hl_ty_cart R N) s t) = hl_hull (hl_ty_cart R N) (hl_affine N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:4697 / AFFINE_HULL_AFFINE_INTER_OPEN_IN   (hash md5:2054eda7816be2e8d50d72cf672096db)
Theorem hlt_AFFINE_HULL_AFFINE_INTER_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N)) -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INTER (hl_ty_cart R N) s t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:4706 / AFFINE_HULL_OPEN_IN_CONVEX   (hash md5:193378f165a99f50132211ce27269775)
Theorem hlt_AFFINE_HULL_OPEN_IN_CONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) t = 1 /\ ~ t = hl_EMPTY (hl_ty_cart R N)) -> hl_hull (hl_ty_cart R N) (hl_affine N) t = hl_hull (hl_ty_cart R N) (hl_affine N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:4716 / AFFINE_HULL_OPEN_IN   (hash md5:bfd3d169e9bf238b2bf1af1cc01545ad)
Theorem hlt_AFFINE_HULL_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) t)) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_hull (hl_ty_cart R N) (hl_affine N) t.
Admitted.

// HOL Light: Multivariate/convex.ml:4724 / AFFINE_HULL_OPEN_IN_AFFINE   (hash md5:d9a729c1ac711492be300769e3309e4d)
Theorem hlt_AFFINE_HULL_OPEN_IN_AFFINE : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_affine N u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N)) -> hl_hull (hl_ty_cart R N) (hl_affine N) s = u.
Admitted.

// HOL Light: Multivariate/convex.ml:4730 / AFFINE_HULL_OPEN   (hash md5:612586230bcf87353181c95aeae98035)
Theorem hlt_AFFINE_HULL_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:4737 / AFFINE_HULL_NONEMPTY_INTERIOR   (hash md5:6e7ce39021fde15e99bdc02d901d3d8b)
Theorem hlt_AFFINE_HULL_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:4745 / AFF_DIM_OPEN   (hash md5:af4ae64212a23b751bee71d6d5cc5ceb)
Theorem hlt_AFF_DIM_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_aff_dim N s = hl_int_of_num (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/convex.ml:4749 / AFF_DIM_NONEMPTY_INTERIOR   (hash md5:51a2f09badc4789cc81b48d0094e53f7)
Theorem hlt_AFF_DIM_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> hl_aff_dim N s = hl_int_of_num (hl_dimindex N (hl_UNIV N)).
Admitted.

// HOL Light: Multivariate/convex.ml:4753 / EMPTY_INTERIOR_AFF_DIM   (hash md5:5c7383eb90a7fbc0a5a049c6c36299e5)
Theorem hlt_EMPTY_INTERIOR_AFF_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_aff_dim N s) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> hl_interior N s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:4757 / SPAN_OPEN   (hash md5:a8857b79fbc1376bca9f3e48705730c8)
Theorem hlt_SPAN_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_span N s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:4764 / DIM_OPEN   (hash md5:587e19342cb621a7884cac7b5ff9cc9c)
Theorem hlt_DIM_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_dim N s = hl_dimindex N (hl_UNIV N).
Admitted.

// HOL Light: Multivariate/convex.ml:4768 / AFF_DIM_INSERT   (hash md5:117e816b11dfbfcd6f83ce0ea763a628)
Theorem hlt_AFF_DIM_INSERT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N (hl_INSERT (hl_ty_cart R N) a s) = hl_COND hl_ty_int (hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s)) (hl_aff_dim N s) (hl_int_add (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:4783 / AFF_DIM_DIM   (hash md5:189921c495effd8fed6d7990dd2b4e68)
Theorem hlt_AFF_DIM_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N s = hl_COND hl_ty_int (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) (hl_int_of_num (hl_dim N s)) (hl_int_sub (hl_int_of_num (hl_dim N s)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:4792 / AFF_DIM_CONIC_HULL_DIM   (hash md5:fd04a054bd79a9af817b770e3315ab09)
Theorem hlt_AFF_DIM_CONIC_HULL_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = hl_COND hl_ty_int (if s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_dim N s)).
Admitted.

// HOL Light: Multivariate/convex.ml:4801 / AFFINE_BOUNDED_EQ_TRIVIAL   (hash md5:be805ee111c31948ba494a9e3b8552d0)
Theorem hlt_AFFINE_BOUNDED_EQ_TRIVIAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 -> (hl_bounded N s = 1 <-> s = hl_EMPTY (hl_ty_cart R N) \/ exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/convex.ml:4812 / AFFINE_BOUNDED_EQ_LOWDIM   (hash md5:04ababad1f5de114db543ef77809223a)
Theorem hlt_AFFINE_BOUNDED_EQ_LOWDIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 -> (hl_bounded N s = 1 <-> hl_int_le (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL hl_zero)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:4819 / COLLINEAR_AFF_DIM   (hash md5:0c882ae5b852202617ea7fff11dcf259)
Theorem hlt_COLLINEAR_AFF_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_collinear N s = 1 <-> hl_int_le (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4844 / COPLANAR_AFF_DIM   (hash md5:e100dee56645048556909e48a6cfbcf5)
Theorem hlt_COPLANAR_AFF_DIM : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_coplanar N s = 1 <-> hl_int_le (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4865 / HOMEOMORPHIC_AFFINE_SETS   (hash md5:18416083d3fb45f487ded5185e346456)
Theorem hlt_HOMEOMORPHIC_AFFINE_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_affine M s = 1 /\ (hl_affine N t = 1 /\ hl_aff_dim M s = hl_aff_dim N t) -> hl_homeomorphic M N s t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:4882 / AFF_DIM_OPEN_IN   (hash md5:aecc7d8e0d7c2d0fc1fe0f842f2b749b)
Theorem hlt_AFF_DIM_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) s = 1 /\ hl_affine N t = 1) -> hl_aff_dim N s = hl_aff_dim N t.
Admitted.

// HOL Light: Multivariate/convex.ml:4918 / DIM_OPEN_IN   (hash md5:5ced6f206aab765e1f164e70ddc54a02)
Theorem hlt_DIM_OPEN_IN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) t) s = 1 /\ hl_subspace N t = 1) -> hl_dim N s = hl_dim N t.
Admitted.

// HOL Light: Multivariate/convex.ml:4931 / AFF_DIM_CONVEX_INTER_NONEMPTY_INTERIOR   (hash md5:c64a38c869a440124c1e29f169e724a0)
Theorem hlt_AFF_DIM_CONVEX_INTER_NONEMPTY_INTERIOR : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_INTER (hl_ty_cart R N) s (hl_interior N t) = hl_EMPTY (hl_ty_cart R N) -> hl_aff_dim N (hl_INTER (hl_ty_cart R N) s t) = hl_aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4939 / AFF_DIM_CONVEX_INTER_OPEN   (hash md5:6730903bb475b0057d99eae7a24f46af)
Theorem hlt_AFF_DIM_CONVEX_INTER_OPEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_open N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N)) -> hl_aff_dim N (hl_INTER (hl_ty_cart R N) s t) = hl_aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:4947 / AFF_DIM_NONEMPTY_INTERIOR_OF   (hash md5:20b9e2177778197bbf0612736601f8c0)
Theorem hlt_AFF_DIM_NONEMPTY_INTERIOR_OF : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s u = 1 /\ (hl_affine N u = 1 /\ ~ hl_interior_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = hl_EMPTY (hl_ty_cart R N)) -> hl_aff_dim N s = hl_aff_dim N u.
Admitted.

// HOL Light: Multivariate/convex.ml:4959 / EMPTY_INTERIOR_OF_AFF_DIM   (hash md5:e9b86bfb05b929a6b513fe6c4d00c1e0)
Theorem hlt_EMPTY_INTERIOR_OF_AFF_DIM : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_affine N u = 1 /\ hl_int_lt (hl_aff_dim N s) (hl_aff_dim N u) = 1 -> hl_interior_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:4973 / AFFINE_HULL_HALFSPACE_LT   (hash md5:c5375602ffdf3af334d00db03ca39f05)
Theorem hlt_AFFINE_HULL_HALFSPACE_LT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4774 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4774 (hl_real_lt (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_COND (2 :^: hl_ty_cart R N) (if a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_le b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_UNIV (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:4980 / AFFINE_HULL_HALFSPACE_LE   (hash md5:30fcf8b3a7ca024c197f593ebb4e66e4)
Theorem hlt_AFFINE_HULL_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4776 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4776 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_COND (2 :^: hl_ty_cart R N) (if a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_lt b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_UNIV (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:4990 / AFFINE_HULL_HALFSPACE_GT   (hash md5:8abd955a000e62d12be91115f7511b77)
Theorem hlt_AFFINE_HULL_HALFSPACE_GT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4777 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4777 (hl_real_gt (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_COND (2 :^: hl_ty_cart R N) (if a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_ge b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_UNIV (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:4997 / AFFINE_HULL_HALFSPACE_GE   (hash md5:1c00dbacc1a1ff52342dd40c654e7123)
Theorem hlt_AFFINE_HULL_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4778 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4778 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_COND (2 :^: hl_ty_cart R N) (if a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_gt b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_UNIV (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:5005 / AFF_DIM_HALFSPACE_LT   (hash md5:1a26a8a2d4b44340487909536fb1f5de)
Theorem hlt_AFF_DIM_HALFSPACE_LT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_aff_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4779 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4779 (hl_real_lt (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_COND hl_ty_int (if a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_le b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_dimindex N (hl_UNIV N))).
Admitted.

// HOL Light: Multivariate/convex.ml:5013 / AFF_DIM_HALFSPACE_LE   (hash md5:0d708a1edbebf8ee626ad31c8c2251a8)
Theorem hlt_AFF_DIM_HALFSPACE_LE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_aff_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4780 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4780 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_COND hl_ty_int (if a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_lt b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_dimindex N (hl_UNIV N))).
Admitted.

// HOL Light: Multivariate/convex.ml:5021 / AFF_DIM_HALFSPACE_GT   (hash md5:e5d413b692cfa777c913e8ba7e6852d9)
Theorem hlt_AFF_DIM_HALFSPACE_GT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_aff_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4781 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4781 (hl_real_gt (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_COND hl_ty_int (if a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_ge b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_dimindex N (hl_UNIV N))).
Admitted.

// HOL Light: Multivariate/convex.ml:5029 / AFF_DIM_HALFSPACE_GE   (hash md5:a9459a785b0013b97d50bcd238d9bd7d)
Theorem hlt_AFF_DIM_HALFSPACE_GE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_aff_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4782 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4782 (hl_real_ge (hl_dot N a x) b) x = 1 then 1 else 0)) = hl_COND hl_ty_int (if a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_real_gt b (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_dimindex N (hl_UNIV N))).
Admitted.

// HOL Light: Multivariate/convex.ml:5037 / CHOOSE_AFFINE_SUBSET   (hash md5:75feffab4e0fa87551931bc15f76ff58)
Theorem hlt_CHOOSE_AFFINE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall d :e hl_ty_int, hl_affine N s = 1 /\ (hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) d = 1 /\ hl_int_le d (hl_aff_dim N s) = 1) -> exists t :e 2 :^: hl_ty_cart R N, hl_affine N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_aff_dim N t = d).
Admitted.

// HOL Light: Multivariate/convex.ml:5064 / NONEMPTY_AFFINE_EXISTS   (hash md5:8c913fc7b9dbdfbcf010a826b107e157)
Theorem hlt_NONEMPTY_AFFINE_EXISTS : forall N:set, N <> Empty -> forall n :e hl_ty_int, forall a :e hl_ty_cart R N, hl_int_le (hl_int_of_num (hl_NUMERAL hl_zero)) n = 1 /\ hl_int_le n (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> exists s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ hl_aff_dim N s = n).
Admitted.

// HOL Light: Multivariate/convex.ml:5076 / AFFINE_EXISTS   (hash md5:c32215453ff38df643c62716fcf20d07)
Theorem hlt_AFFINE_EXISTS : forall N:set, N <> Empty -> forall n :e hl_ty_int, hl_int_le (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) n = 1 /\ hl_int_le n (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> exists s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ hl_aff_dim N s = n.
Admitted.

// HOL Light: Multivariate/convex.ml:5085 / AFF_DIM_CONIC_HULL   (hash md5:b38ad7c0422c040272dfa6b9798e1437)
Theorem hlt_AFF_DIM_CONIC_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N (hl_hull (hl_ty_cart R N) (hl_conic N) s) = hl_COND hl_ty_int (if s = hl_EMPTY (hl_ty_cart R N) \/ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 then 1 else 0) (hl_aff_dim N s) (hl_int_add (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:5096 / AFF_DIM_PCROSS   (hash md5:cd2c6b3495b7cb6e421bba4b7b36e14b)
Theorem hlt_AFF_DIM_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R M) /\ ~ t = hl_EMPTY (hl_ty_cart R N) -> hl_aff_dim (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = hl_int_add (hl_aff_dim M s) (hl_aff_dim N t).
Admitted.

// HOL Light: Multivariate/convex.ml:5121 / AFF_DIM_UNION   (hash md5:abae1ef8ca20fe328b14acc0a6f64f98)
Theorem hlt_AFF_DIM_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (hl_affine N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N)) -> hl_aff_dim N (hl_UNION (hl_ty_cart R N) s t) = hl_int_sub (hl_int_add (hl_aff_dim N s) (hl_aff_dim N t)) (hl_aff_dim N (hl_INTER (hl_ty_cart R N) s t)).
Admitted.

// HOL Light: Multivariate/convex.ml:5137 / COPLANAR_INTERSECTING_LINES   (hash md5:44165db64dd30bf0394e2b829b8473b7)
Theorem hlt_COPLANAR_INTERSECTING_LINES : forall N:set, N <> Empty -> forall a b c d z :e hl_ty_cart R N, hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) z (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ hl_collinear N (hl_INSERT (hl_ty_cart R N) c (hl_INSERT (hl_ty_cart R N) z (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N))))) = 1 -> hl_coplanar N (hl_INSERT (hl_ty_cart R N) z (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N))))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:5155 / ISOMETRIC_HOMEOMORPHISM_AFFINE   (hash md5:837cc93eafd21be85faac8f3ba7ce5ae)
Theorem hlt_ISOMETRIC_HOMEOMORPHISM_AFFINE : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_affine M s = 1 /\ (hl_affine N t = 1 /\ hl_aff_dim M s = hl_aff_dim N t) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) s t) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ ((forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (f x) (f y)) = hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) x y)) /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 -> hl_distance M (hl_pair (hl_ty_cart R M) (hl_ty_cart R M) (g x) (g y)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)).
Admitted.

// HOL Light: Multivariate/convex.ml:5202 / RIGID_TRANSFORMATION_BETWEEN_CONGRUENT_SETS   (hash md5:0912c98cbdef9897fd73808d21e1c002)
Theorem hlt_RIGID_TRANSFORMATION_BETWEEN_CONGRUENT_SETS : forall A N:set, A <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R N :^: A, forall s :e 2 :^: A, (forall i j :e A, hl_IN A i s = 1 /\ hl_IN A j s = 1 -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (x i) (x j)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (y i) (y j))) -> exists a :e hl_ty_cart R N, exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ forall i :e A, hl_IN A i s = 1 -> y i = hl_vector_add N a (f (x i)).
Admitted.

// HOL Light: Multivariate/convex.ml:5354 / RIGID_TRANSFORMATION_BETWEEN_CONGRUENT_SETS_STRONG   (hash md5:5d9e8f4046343bd457fa98169efe4551)
Theorem hlt_RIGID_TRANSFORMATION_BETWEEN_CONGRUENT_SETS_STRONG : forall A N:set, A <> Empty -> N <> Empty -> forall x y :e hl_ty_cart R N :^: A, forall s t :e 2 :^: A, hl_SUBSET A t s = 1 /\ (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_IMAGE A (hl_ty_cart R N) y t) = hl_hull (hl_ty_cart R N) (hl_affine N) (hl_IMAGE A (hl_ty_cart R N) y s) /\ (forall i j :e A, hl_IN A i s = 1 /\ hl_IN A j t = 1 -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (x i) (x j)) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (y i) (y j)))) -> exists a :e hl_ty_cart R N, exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ forall i :e A, hl_IN A i s = 1 -> y i = hl_vector_add N a (f (x i)).
Admitted.

// HOL Light: Multivariate/convex.ml:5383 / RIGID_TRANSFORMATION_BETWEEN_3   (hash md5:fd4f72949dc7c699d5c7dcd24fe528cd)
Theorem hlt_RIGID_TRANSFORMATION_BETWEEN_3 : forall N:set, N <> Empty -> forall a b c a' b' c' :e hl_ty_cart R N, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a' b') /\ (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b c) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b' c') /\ hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c a) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c' a')) -> exists k :e hl_ty_cart R N, exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (a' = hl_vector_add N k (f a) /\ (b' = hl_vector_add N k (f b) /\ c' = hl_vector_add N k (f c))).
Admitted.

// HOL Light: Multivariate/convex.ml:5399 / RIGID_TRANSFORMATION_BETWEEN_2   (hash md5:5af298e26a05514c275ef03b0b3da3d3)
Theorem hlt_RIGID_TRANSFORMATION_BETWEEN_2 : forall N:set, N <> Empty -> forall a b a' b' :e hl_ty_cart R N, hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a' b') -> exists k :e hl_ty_cart R N, exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (a' = hl_vector_add N k (f a) /\ b' = hl_vector_add N k (f b)).
Admitted.

// HOL Light: Multivariate/convex.ml:5414 / CONVEX_HULL_CARATHEODORY_AFF_DIM   (hash md5:2d9a1accdff9f4fc9f3d3e138ec5f3ff)
Theorem hlt_CONVEX_HULL_CARATHEODORY_AFF_DIM : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) p = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4784 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4784 (if exists s :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ (hl_int_le (hl_int_of_num (hl_CARD (hl_ty_cart R N) s)) (hl_int_add (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = y)))) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:5492 / CARATHEODORY_AFF_DIM   (hash md5:a89bbd09e3c3ca462263287b9fa1cf08)
Theorem hlt_CARATHEODORY_AFF_DIM : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) p = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4785 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4785 (if exists s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ (hl_int_le (hl_int_of_num (hl_CARD (hl_ty_cart R N) s)) (hl_int_add (hl_aff_dim N p) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1)) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:5504 / CONVEX_HULL_CARATHEODORY   (hash md5:d63376e5d61c32c5f232245e9abd0542)
Theorem hlt_CONVEX_HULL_CARATHEODORY : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) p = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4786 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4786 (if exists s :e 2 :^: hl_ty_cart R N, exists u :e R :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ (hl_le (hl_CARD (hl_ty_cart R N) s) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = y)))) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:5522 / CARATHEODORY   (hash md5:e973613f6ffd4873644fbf6b8f4c8aaf)
Theorem hlt_CARATHEODORY : forall N:set, N <> Empty -> forall p :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) p = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4787 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4787 (if exists s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s p = 1 /\ (hl_le (hl_CARD (hl_ty_cart R N) s) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1)) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:5538 / AFFINE_HULL_INTER   (hash md5:d8c06dead850ab38b6da2c3d24061c14)
Theorem hlt_AFFINE_HULL_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N (hl_UNION (hl_ty_cart R N) s t) = 1 -> hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_hull (hl_ty_cart R N) (hl_affine N) t) = hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INTER (hl_ty_cart R N) s t).
Admitted.

// HOL Light: Multivariate/convex.ml:5538 / CONVEX_HULL_INTER   (hash md5:2901e9660fe49fb70a07a70a01954b62)
Theorem hlt_CONVEX_HULL_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N (hl_UNION (hl_ty_cart R N) s t) = 1 -> hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) s) (hl_hull (hl_ty_cart R N) (hl_convex N) t) = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INTER (hl_ty_cart R N) s t).
Admitted.

// HOL Light: Multivariate/convex.ml:5587 / AFFINE_HULL_INTERS   (hash md5:4b62d444c66d5f636076da5263ccef9e)
Theorem hlt_AFFINE_HULL_INTERS : forall N:set, N <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R N), ~ hl_affine_dependent N (hl_UNIONS (hl_ty_cart R N) s) = 1 -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INTERS (hl_ty_cart R N) s) = hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4794 :e 2 :^: hl_ty_cart R N => if exists t :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4794 (hl_IN (2 :^: hl_ty_cart R N) t s) (hl_hull (hl_ty_cart R N) (hl_affine N) t) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:5623 / CONVEX_HULL_INTERS   (hash md5:689d64d75a638e8fb0c235c3210dbcc6)
Theorem hlt_CONVEX_HULL_INTERS : forall N:set, N <> Empty -> forall s :e 2 :^: (2 :^: hl_ty_cart R N), ~ hl_affine_dependent N (hl_UNIONS (hl_ty_cart R N) s) = 1 -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INTERS (hl_ty_cart R N) s) = hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4799 :e 2 :^: hl_ty_cart R N => if exists t :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4799 (hl_IN (2 :^: hl_ty_cart R N) t s) (hl_hull (hl_ty_cart R N) (hl_convex N) t) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:5659 / IN_CONVEX_HULL_EXCHANGE   (hash md5:3db5007c5aa21a22543626a53bc5a907)
Theorem hlt_IN_CONVEX_HULL_EXCHANGE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> exists b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_DELETE (hl_ty_cart R N) s b))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:5746 / IN_CONVEX_HULL_EXCHANGE_UNIQUE   (hash md5:34225c0eda632dd739edd8965ae2789b)
Theorem hlt_IN_CONVEX_HULL_EXCHANGE_UNIQUE : forall N:set, N <> Empty -> forall s t t' :e 2 :^: hl_ty_cart R N, forall a x :e hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t' s = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a t)) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a t')) = 1)))) -> hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INTER (hl_ty_cart R N) t t'))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:5832 / CONVEX_HULL_EXCHANGE_UNION   (hash md5:64645c8f054ca4d70e14195160a02d58)
Theorem hlt_CONVEX_HULL_EXCHANGE_UNION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_hull (hl_ty_cart R N) (hl_convex N) s = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4804 :e 2 :^: hl_ty_cart R N => if exists b :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4804 (hl_IN (hl_ty_cart R N) b s) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_DELETE (hl_ty_cart R N) s b))) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:5848 / CONVEX_HULL_EXCHANGE_INTER   (hash md5:87b801a743546f52d33ed1c964c74c11)
Theorem hlt_CONVEX_HULL_EXCHANGE_INTER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall t t' :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_SUBSET (hl_ty_cart R N) t' s = 1)) -> hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a t)) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a t')) = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INTER (hl_ty_cart R N) t t')).
Admitted.

// HOL Light: Multivariate/convex.ml:5867 / AFF_DIM_EQ_INTER_HYPERPLANE   (hash md5:a2d5d4c55376f6836c8d41e7edcf2065)
Theorem hlt_AFF_DIM_EQ_INTER_HYPERPLANE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (hl_affine N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) t s = 1 /\ hl_int_add (hl_aff_dim N t) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = hl_aff_dim N s)) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_INTER (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4805 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4805 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) s = t.
Admitted.

// HOL Light: Multivariate/convex.ml:5893 / AFF_DIM_EQ_HYPERPLANE   (hash md5:ac39c31d0553e87a31c9dba616b18561)
Theorem hlt_AFF_DIM_EQ_HYPERPLANE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_aff_dim N s = hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) <-> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4806 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4806 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:5920 / AFF_DIM_HYPERPLANE   (hash md5:5196d425e3670bac76282074e48fedf9)
Theorem hlt_AFF_DIM_HYPERPLANE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) -> hl_aff_dim N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4807 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4807 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = hl_int_sub (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/convex.ml:5927 / BOUNDED_HYPERPLANE_EQ_TRIVIAL   (hash md5:7513cd53bf6532e826c41cf3f8403e4a)
Theorem hlt_BOUNDED_HYPERPLANE_EQ_TRIVIAL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_bounded N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4809 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4809 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = 1 <-> a = hl_vec N (hl_NUMERAL hl_zero) /\ ~ b = hl_real_of_num (hl_NUMERAL hl_zero) \/ ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero).
Admitted.

// HOL Light: Multivariate/convex.ml:5941 / AFFINE_HULL_FINITE_INTERSECTION_HYPERPLANES   (hash md5:b5167297a0d3fc4e2533960257c2de8a)
Theorem hlt_AFFINE_HULL_FINITE_INTERSECTION_HYPERPLANES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, exists f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_int_add (hl_int_of_num (hl_CARD (2 :^: hl_ty_cart R N) f)) (hl_aff_dim N s) = hl_int_of_num (hl_dimindex N (hl_UNIV N)) /\ (hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_INTERS (hl_ty_cart R N) f /\ forall h :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) h f = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4811 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4811 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:5998 / AFFINE_HYPERPLANE_SUMS_EQ_UNIV   (hash md5:753fb42a56c67d0476b702aee7407a28)
Theorem hlt_AFFINE_HYPERPLANE_SUMS_EQ_UNIV : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (~ hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4818 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4818 (if hl_dot N a v = b then 1 else 0) v = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_DIFF (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4819 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4819 (if hl_dot N a v = b then 1 else 0) v = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N)) -> hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4821 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4821 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4820 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4820 (if hl_dot N a v = b then 1 else 0) v = 1 then 1 else 0)) = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:6049 / AFF_DIM_AFFINE_INTER_HYPERPLANE   (hash md5:019bc62720b47ba81a0a3a6a727cd548)
Theorem hlt_AFF_DIM_AFFINE_INTER_HYPERPLANE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 -> hl_aff_dim N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4825 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4825 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0))) = hl_COND hl_ty_int (if hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4826 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4826 (if hl_dot N a v = b then 1 else 0) v = 1 then 1 else 0)) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_COND hl_ty_int (hl_SUBSET (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4827 :e hl_ty_cart R N => if exists v :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4827 (if hl_dot N a v = b then 1 else 0) v = 1 then 1 else 0))) (hl_aff_dim N s) (hl_int_sub (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/convex.ml:6071 / AFF_DIM_LT_FULL   (hash md5:742aa7f868c98304feff1f46fdf6814e)
Theorem hlt_AFF_DIM_LT_FULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_aff_dim N s) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 <-> ~ hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:6076 / AFF_LOWDIM_SUBSET_HYPERPLANE   (hash md5:36e64c2520c1f3a1bc45f31d3db13d99)
Theorem hlt_AFF_LOWDIM_SUBSET_HYPERPLANE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_aff_dim N s) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_SUBSET (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4828 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4828 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6094 / COLLINEAR_HYPERPLANE_2   (hash md5:a039f36f75891817bac08c496561bc89)
Theorem hlt_COLLINEAR_HYPERPLANE_2 : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall b :e R, hl_le (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 /\ ~ a = hl_vec N (hl_NUMERAL hl_zero) -> hl_collinear N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4829 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4829 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6100 / COLLINEAR_STANDARD_HYPERPLANE_2   (hash md5:a4f19aa6716d12f5a85b61d345fc3de9)
Theorem hlt_COLLINEAR_STANDARD_HYPERPLANE_2 : forall N:set, N <> Empty -> forall k :e omega, forall b :e R, hl_le (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1 -> hl_collinear N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4830 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4830 (if hl_vindex R N x k = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6113 / ROTATION_TO_GENERAL_POSITION_EXISTS_GEN   (hash md5:583a14ebf72e7556c963fd68d4f7713a)
Theorem hlt_ROTATION_TO_GENERAL_POSITION_EXISTS_GEN : forall N:set, N <> Empty -> forall n :e omega, forall s :e 2 :^: hl_ty_cart R N, hl_le n (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_COUNTABLE (hl_ty_cart R N) s = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n))) = 1) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ ((forall x :e hl_ty_cart R N, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i n = 1 -> hl_vindex R N x i = hl_real_of_num (hl_NUMERAL hl_zero)) -> f x = x) /\ (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f (hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n))) = hl_span N (hl_IMAGE omega (hl_ty_cart R N) (hl_basis N) (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) n)) /\ hl_pairwise (hl_ty_cart R N) (fun x :e hl_ty_cart R N => fun y :e hl_ty_cart R N => if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i n = 1 -> ~ hl_vindex R N (f x) i = hl_vindex R N (f y) i then 1 else 0) s = 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:6418 / ROTATION_TO_GENERAL_POSITION_EXISTS   (hash md5:f9a9601c053b173b63380ec03a54b846)
Theorem hlt_ROTATION_TO_GENERAL_POSITION_EXISTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_COUNTABLE (hl_ty_cart R N) s = 1 -> exists f :e hl_ty_cart R N :^: hl_ty_cart R N, hl_orthogonal_transformation N f = 1 /\ (hl_det N (hl_matrix N N f) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_pairwise (hl_ty_cart R N) (fun x :e hl_ty_cart R N => fun y :e hl_ty_cart R N => if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> ~ hl_vindex R N (f x) i = hl_vindex R N (f y) i then 1 else 0) s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:6435 / OPEN_CONVEX_HULL   (hash md5:84f48d4145a0b2cae8ea04d73b29bf22)
Theorem hlt_OPEN_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_open N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6471 / COMPACT_CONVEX_COMBINATIONS   (hash md5:56fc616bfe03135241d209f1a1c342fe)
Theorem hlt_COMPACT_CONVEX_COMBINATIONS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ hl_compact N t = 1 -> hl_compact N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4849 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, exists u :e R, exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4849 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1)) then 1 else 0) (hl_vector_add N (hl_vmul N (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) u) x) (hl_vmul N u y)) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6504 / COMPACT_CONVEX_HULL   (hash md5:f3407ac72f243135f1f4edfc9bfaf2b0)
Theorem hlt_COMPACT_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 -> hl_compact N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6598 / FINITE_IMP_COMPACT_CONVEX_HULL   (hash md5:bdffb5ed7b85822cd507e1b56f94a544)
Theorem hlt_FINITE_IMP_COMPACT_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_compact N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6602 / CONVEX_HULL_INTERIOR_SUBSET   (hash md5:8987dbad9a7a461772dc57e803f3c6e9)
Theorem hlt_CONVEX_HULL_INTERIOR_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_interior N s)) (hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6611 / SIMPLEX_FURTHEST_LT   (hash md5:d5ee6d77b4f9ed5cf97472baab6fda8a)
Theorem hlt_SIMPLEX_FURTHEST_LT : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ ~ hl_IN (hl_ty_cart R N) x s = 1 -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N x a)) (hl_vector_norm N (hl_vector_sub N y a)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6681 / SIMPLEX_FURTHEST_LT_EXISTS   (hash md5:40d5204740bec5f22fabc98caa384576)
Theorem hlt_SIMPLEX_FURTHEST_LT_EXISTS : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ ~ hl_IN (hl_ty_cart R N) x s = 1 -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_lt (hl_vector_norm N (hl_vector_sub N x a)) (hl_vector_norm N (hl_vector_sub N y a)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6693 / SIMPLEX_FURTHEST_LE_EXISTS   (hash md5:6bc6eee45c0e3969165e1495563e5529)
Theorem hlt_SIMPLEX_FURTHEST_LE_EXISTS : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 /\ hl_real_le (hl_vector_norm N (hl_vector_sub N x a)) (hl_vector_norm N (hl_vector_sub N y a)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6699 / SIMPLEX_FURTHEST_LE   (hash md5:ea2e74ea7c6712157936f785c5216305)
Theorem hlt_SIMPLEX_FURTHEST_LE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N x a)) (hl_vector_norm N (hl_vector_sub N y a)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6713 / SIMPLEX_EXTREMAL_LE   (hash md5:41209e192c554b6a70b5d1a01bb212db)
Theorem hlt_SIMPLEX_EXTREMAL_LE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> exists u v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) u s = 1 /\ (hl_IN (hl_ty_cart R N) v s = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N x y)) (hl_vector_norm N (hl_vector_sub N u v)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:6728 / SIMPLEX_EXTREMAL_LE_EXISTS   (hash md5:c47b123aff080f26b3cff81ad2d536fa)
Theorem hlt_SIMPLEX_EXTREMAL_LE_EXISTS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1) -> exists u v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) u s = 1 /\ (hl_IN (hl_ty_cart R N) v s = 1 /\ hl_real_le (hl_vector_norm N (hl_vector_sub N x y)) (hl_vector_norm N (hl_vector_sub N u v)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:6738 / CLOSER_POINTS_LEMMA   (hash md5:bcadcd0b5e98d5025a9ef1dcd6c6e656)
Theorem hlt_CLOSER_POINTS_LEMMA : forall N:set, N <> Empty -> forall y z :e hl_ty_cart R N, hl_real_gt (hl_dot N y z) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 -> exists u :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ forall v :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) v = 1 /\ hl_real_le v u = 1 -> hl_real_lt (hl_vector_norm N (hl_vector_sub N (hl_vmul N v z) y)) (hl_vector_norm N y) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6754 / CLOSER_POINT_LEMMA   (hash md5:e0a3e3a956c2f3263ffd4e541c506b5b)
Theorem hlt_CLOSER_POINT_LEMMA : forall A:set, A <> Empty -> forall x y z :e hl_ty_cart R A, hl_real_gt (hl_dot A (hl_vector_sub A y x) (hl_vector_sub A z x)) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 -> exists u :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_real_le u (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_add A x (hl_vmul A u (hl_vector_sub A z x))) y)) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) x y)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:6765 / ANY_CLOSEST_POINT_DOT   (hash md5:21501edd896f4647c74d86db1efb3ab0)
Theorem hlt_ANY_CLOSEST_POINT_DOT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x y :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ (forall z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a z)) = 1)))) -> hl_real_le (hl_dot N (hl_vector_sub N a x) (hl_vector_sub N y x)) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6779 / ANY_CLOSEST_POINT_UNIQUE   (hash md5:c13668f3ce1830db6650f5236934b874)
Theorem hlt_ANY_CLOSEST_POINT_UNIQUE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x y :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ ((forall z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a z)) = 1) /\ (forall z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a y)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a z)) = 1))))) -> x = y.
Admitted.

// HOL Light: Multivariate/convex.ml:6791 / CLOSEST_POINT_UNIQUE   (hash md5:7ae5c6b8b45d3860703d64d63fc13650)
Theorem hlt_CLOSEST_POINT_UNIQUE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (forall z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a z)) = 1))) -> x = hl_closest_point N s a.
Admitted.

// HOL Light: Multivariate/convex.ml:6800 / CLOSEST_POINT_DOT   (hash md5:b7320f8bcedb2dcf08fcfe652b644915)
Theorem hlt_CLOSEST_POINT_DOT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ hl_IN (hl_ty_cart R N) x s = 1) -> hl_real_le (hl_dot N (hl_vector_sub N a (hl_closest_point N s a)) (hl_vector_sub N x (hl_closest_point N s a))) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6808 / CLOSEST_POINT_LT   (hash md5:d3d47b7aa06069f8c0d7d3186bb1ff07)
Theorem hlt_CLOSEST_POINT_LT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall a x :e hl_ty_cart R A, hl_convex A s = 1 /\ (hl_closed A s = 1 /\ (hl_IN (hl_ty_cart R A) x s = 1 /\ ~ x = hl_closest_point A s a)) -> hl_real_lt (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a (hl_closest_point A s a))) (hl_distance A (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a x)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6817 / CLOSEST_POINT_LIPSCHITZ   (hash md5:640f6ef0c58caef5c2da59528f10e74c)
Theorem hlt_CLOSEST_POINT_LIPSCHITZ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N)) -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_closest_point N s x) (hl_closest_point N s y))) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6834 / CONTINUOUS_AT_CLOSEST_POINT   (hash md5:b01c182e0e33b17beb822982d5ba4683)
Theorem hlt_CONTINUOUS_AT_CLOSEST_POINT : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, hl_convex A s = 1 /\ (hl_closed A s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R A)) -> hl_continuous (hl_ty_cart R A) A (hl_closest_point A s) (hl_at A x) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6840 / CONTINUOUS_ON_CLOSEST_POINT   (hash md5:8f7ea965766f8a22ff8931ac4f370949)
Theorem hlt_CONTINUOUS_ON_CLOSEST_POINT : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ (hl_closed A s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R A)) -> hl_continuous_on A A (hl_closest_point A s) t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6845 / CLOSEST_POINT_TRANSLATION   (hash md5:6ca5349fbfc5f7f5528657bda8a399a6)
Theorem hlt_CLOSEST_POINT_TRANSLATION : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N)) -> hl_closest_point N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R N => hl_vector_add N a x1) s) (hl_vector_add N a x) = hl_vector_add N a (hl_closest_point N s x).
Admitted.

// HOL Light: Multivariate/convex.ml:6865 / ANY_CLOSEST_POINT_AFFINE_ORTHOGONAL   (hash md5:a7481de0559c0c0bb0b4a506c71b0a04)
Theorem hlt_ANY_CLOSEST_POINT_AFFINE_ORTHOGONAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_affine N s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) = 1)) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_orthogonal N (hl_vector_sub N x b) (hl_vector_sub N a b) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6888 / ORTHOGONAL_ANY_CLOSEST_POINT   (hash md5:4d132d0d765851a806c0a78035557ee2)
Theorem hlt_ORTHOGONAL_ANY_CLOSEST_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_orthogonal N (hl_vector_sub N x b) (hl_vector_sub N a b) = 1) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6897 / CLOSEST_POINT_AFFINE_ORTHOGONAL   (hash md5:13210230ff466e99101835bbea6df09e)
Theorem hlt_CLOSEST_POINT_AFFINE_ORTHOGONAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a x :e hl_ty_cart R N, hl_affine N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_IN (hl_ty_cart R N) x s = 1) -> hl_orthogonal N (hl_vector_sub N x (hl_closest_point N s a)) (hl_vector_sub N a (hl_closest_point N s a)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6907 / CLOSEST_POINT_AFFINE_ORTHOGONAL_EQ   (hash md5:0cb645550063627cab90d7352813980c)
Theorem hlt_CLOSEST_POINT_AFFINE_ORTHOGONAL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_affine N s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1 -> (hl_closest_point N s a = b <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_orthogonal N (hl_vector_sub N x b) (hl_vector_sub N a b) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:6923 / CLOSEST_POINT_SUBSPACE_ORTHOGONAL_EQ   (hash md5:17edaac2ff5b59f2a7d7f2e463ee099a)
Theorem hlt_CLOSEST_POINT_SUBSPACE_ORTHOGONAL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_subspace N s = 1 -> (hl_closest_point N s a = b <-> hl_IN (hl_ty_cart R N) b s = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_orthogonal N (hl_vector_sub N a b) x = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:6939 / CLOSEST_POINT_SUBSPACE_ORTHOGONAL   (hash md5:fd8246140a50cb7affd7d4dc1d14aad6)
Theorem hlt_CLOSEST_POINT_SUBSPACE_ORTHOGONAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_subspace N s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1 -> hl_orthogonal N (hl_vector_sub N a (hl_closest_point N s a)) b = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6944 / LINEAR_CLOSEST_POINT   (hash md5:1d6a48316040e86378afe3222dbfb8cd)
Theorem hlt_LINEAR_CLOSEST_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> hl_linear N N (hl_closest_point N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:6957 / SELF_ADJOINT_CLOSEST_POINT   (hash md5:2654c6e9e4877a7bb54af86eae7bafde)
Theorem hlt_SELF_ADJOINT_CLOSEST_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 -> hl_adjoint N N (hl_closest_point N s) = hl_closest_point N s.
Admitted.

// HOL Light: Multivariate/convex.ml:6971 / CLOSEST_POINT_IDEMPOTENT   (hash md5:a037488380206f644938df7e2e047333)
Theorem hlt_CLOSEST_POINT_IDEMPOTENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_o (hl_ty_cart R N) (hl_ty_cart R N) (hl_ty_cart R N) (hl_closest_point N s) (hl_closest_point N s) = hl_closest_point N s.
Admitted.

// HOL Light: Multivariate/convex.ml:6979 / MATRIX_INV_PROJECTION_IMAGE   (hash md5:5d275169795e0320440e73285ae2435e)
Theorem hlt_MATRIX_INV_PROJECTION_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, hl_matrix_mul M N N A (hl_matrix_inv M N A) = hl_matrix N N (hl_closest_point N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x :e hl_ty_cart R M => hl_matrix_vector_mul M N A x) (hl_UNIV (hl_ty_cart R M)))).
Admitted.

// HOL Light: Multivariate/convex.ml:6979 / MATRIX_INV_PROJECTION_IMAGE_ALT   (hash md5:0c3d15ed0c6623ea6494335975c4695a)
Theorem hlt_MATRIX_INV_PROJECTION_IMAGE_ALT : forall M N:set, M <> Empty -> N <> Empty -> forall A :e hl_ty_cart (hl_ty_cart R M) N, forall x :e hl_ty_cart R N, hl_matrix_vector_mul N N (hl_matrix_mul M N N A (hl_matrix_inv M N A)) x = hl_closest_point N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R M => hl_matrix_vector_mul M N A x1) (hl_UNIV (hl_ty_cart R M))) x.
Admitted.

// HOL Light: Multivariate/convex.ml:6998 / SEPARATING_HYPERPLANE_AFFINE_AFFINE   (hash md5:2adf8849846e796eee383b89dff53cb9)
Theorem hlt_SEPARATING_HYPERPLANE_AFFINE_AFFINE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 /\ (hl_affine N t = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_DISJOINT (hl_ty_cart R N) s t = 1))) -> exists a :e hl_ty_cart R N, exists b c :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_real_lt b c = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_dot N a x = b) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_dot N a x = c)).
Admitted.

// HOL Light: Multivariate/convex.ml:7055 / SEPARATING_HYPERPLANE_AFFINE_HULLS   (hash md5:408513117c7b32b04532253835858c3d)
Theorem hlt_SEPARATING_HYPERPLANE_AFFINE_HULLS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_DISJOINT (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_hull (hl_ty_cart R N) (hl_affine N) t) = 1) -> exists a :e hl_ty_cart R N, exists b c :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_real_lt b c = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_dot N a x = b) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_dot N a x = c)).
Admitted.

// HOL Light: Multivariate/convex.ml:7071 / SUPPORTING_HYPERPLANE_COMPACT_POINT_SUP   (hash md5:2573e4a92e70b04e70ae29009845924c)
Theorem hlt_SUPPORTING_HYPERPLANE_COMPACT_POINT_SUP : forall N:set, N <> Empty -> forall a c :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> exists b :e R, exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 /\ (hl_dot N a (hl_vector_sub N y c) = b /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_dot N a (hl_vector_sub N x c)) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7087 / SUPPORTING_HYPERPLANE_COMPACT_POINT_INF   (hash md5:ebb5f2bfb92806ac6797f20c192890cd)
Theorem hlt_SUPPORTING_HYPERPLANE_COMPACT_POINT_INF : forall N:set, N <> Empty -> forall a c :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> exists b :e R, exists y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 /\ (hl_dot N a (hl_vector_sub N y c) = b /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_ge (hl_dot N a (hl_vector_sub N x c)) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7101 / SUPPORTING_HYPERPLANE_CLOSED_POINT   (hash md5:0c61de93afd3d1ad295ac6265ae66bee)
Theorem hlt_SUPPORTING_HYPERPLANE_CLOSED_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_IN (hl_ty_cart R N) z s = 1)) -> exists a :e hl_ty_cart R N, exists b :e R, exists y :e hl_ty_cart R N, hl_real_lt (hl_dot N a z) b = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ (hl_dot N a y = b /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_ge (hl_dot N a x) b = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:7125 / SEPARATING_HYPERPLANE_CLOSED_POINT_INSET   (hash md5:17c1c3e4bb1dc55b22f2aeea3b7ca151)
Theorem hlt_SEPARATING_HYPERPLANE_CLOSED_POINT_INSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_IN (hl_ty_cart R N) z s = 1)) -> exists a :e hl_ty_cart R N, exists b :e R, hl_IN (hl_ty_cart R N) a s = 1 /\ (hl_real_lt (hl_dot N (hl_vector_sub N a z) z) b = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_gt (hl_dot N (hl_vector_sub N a z) x) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7157 / SEPARATING_HYPERPLANE_CLOSED_0_INSET   (hash md5:f367fb5ca2aa4b911f3097bcb10df006)
Theorem hlt_SEPARATING_HYPERPLANE_CLOSED_0_INSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1)) -> exists a :e hl_ty_cart R N, exists b :e R, hl_IN (hl_ty_cart R N) a s = 1 /\ (~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) b = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_gt (hl_dot N a x) b = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:7168 / SEPARATING_HYPERPLANE_CLOSED_POINT   (hash md5:07446405ad1abd2e374e6947a8902cc0)
Theorem hlt_SEPARATING_HYPERPLANE_CLOSED_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ ~ hl_IN (hl_ty_cart R N) z s = 1) -> exists a :e hl_ty_cart R N, exists b :e R, hl_real_lt (hl_dot N a z) b = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_gt (hl_dot N a x) b = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7178 / SEPARATING_HYPERPLANE_CLOSED_0   (hash md5:04ce4a06a36d855712317bfe15525ad5)
Theorem hlt_SEPARATING_HYPERPLANE_CLOSED_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) b = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_gt (hl_dot N a x) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7195 / SEPARATING_HYPERPLANE_CLOSED_COMPACT   (hash md5:9fcd647da12b785f8a20fdf851482c5a)
Theorem hlt_SEPARATING_HYPERPLANE_CLOSED_COMPACT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (hl_convex N t = 1 /\ (hl_compact N t = 1 /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_DISJOINT (hl_ty_cart R N) s t = 1)))) -> exists a :e hl_ty_cart R N, exists b :e R, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_gt (hl_dot N a x) b = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7248 / SEPARATING_HYPERPLANE_COMPACT_CLOSED   (hash md5:0c6c7a9f3c880c79427d2a0e194d234c)
Theorem hlt_SEPARATING_HYPERPLANE_COMPACT_CLOSED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_convex N t = 1 /\ (hl_closed N t = 1 /\ hl_DISJOINT (hl_ty_cart R N) s t = 1)))) -> exists a :e hl_ty_cart R N, exists b :e R, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_gt (hl_dot N a x) b = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7263 / SEPARATING_HYPERPLANE_COMPACT_CLOSED_NONZERO   (hash md5:24f9f47c432914799b3d2c411aeaf9b7)
Theorem hlt_SEPARATING_HYPERPLANE_COMPACT_CLOSED_NONZERO : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_convex N t = 1 /\ (hl_closed N t = 1 /\ hl_DISJOINT (hl_ty_cart R N) s t = 1)))) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_gt (hl_dot N a x) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7291 / SEPARATING_HYPERPLANE_COMPACT_COMPACT   (hash md5:50f6e1d001a3d31337c76b0ef58f3634)
Theorem hlt_SEPARATING_HYPERPLANE_COMPACT_COMPACT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (hl_convex N t = 1 /\ (hl_compact N t = 1 /\ hl_DISJOINT (hl_ty_cart R N) s t = 1))) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_gt (hl_dot N a x) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7320 / SEPARATING_HYPERPLANE_SET_0_INSPAN   (hash md5:f79e993851f43374668b8ab31dff4d90)
Theorem hlt_SEPARATING_HYPERPLANE_SET_0_INSPAN : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1) -> exists a :e hl_ty_cart R N, exists b :e A, hl_IN (hl_ty_cart R N) a (hl_span N s) = 1 /\ (~ a = hl_vec N (hl_NUMERAL hl_zero) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_dot N a x) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7381 / SEPARATING_HYPERPLANE_SET_POINT_INAFF   (hash md5:25c00d03ef7ee306cabafd6cdda554a2)
Theorem hlt_SEPARATING_HYPERPLANE_SET_POINT_INAFF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_IN (hl_ty_cart R N) z s = 1) -> exists a :e hl_ty_cart R N, exists b :e R, hl_IN (hl_ty_cart R N) (hl_vector_add N z a) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) z s)) = 1 /\ (~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_real_le (hl_dot N a z) b = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_ge (hl_dot N a x) b = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:7399 / SEPARATING_HYPERPLANE_SET_0   (hash md5:2a5329e86e5ed6d9dbc811e758f4cb2c)
Theorem hlt_SEPARATING_HYPERPLANE_SET_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_dot N a x) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7408 / SEPARATING_HYPERPLANE_SETS   (hash md5:7fb4eb1c3ba2603945bd0a83fa8a4421)
Theorem hlt_SEPARATING_HYPERPLANE_SETS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ hl_DISJOINT (hl_ty_cart R N) s t = 1))) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_ge (hl_dot N a x) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7438 / UNBOUNDED_COMPLEMENT_COMPONENT_CONVEX   (hash md5:d948381bcb3606b0a03175d4cdf41e8c)
Theorem hlt_UNBOUNDED_COMPLEMENT_COMPONENT_CONVEX : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 -> ~ hl_bounded N c = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7466 / UNBOUNDED_COMPLEMENT_CONVEX   (hash md5:d59cd58ee08dd79517e0e1007dc18c6e)
Theorem hlt_UNBOUNDED_COMPLEMENT_CONVEX : forall N:set, N <> Empty -> forall c :e 2 :^: hl_ty_cart R N, hl_convex N c = 1 /\ ~ c = hl_UNIV (hl_ty_cart R N) -> ~ hl_bounded N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) c) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7477 / COMPONENTS_CONVEX_COMPLEMENT_CONTAINS_HALFSPACE   (hash md5:d5e859eacf8ea23a25901096d73d3273)
Theorem hlt_COMPONENTS_CONVEX_COMPLEMENT_CONTAINS_HALFSPACE : forall N:set, N <> Empty -> forall s c :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (2 :^: hl_ty_cart R N) c (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1 -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4863 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4863 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0)) c = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7508 / CARD_COMPONENTS_COMPLEMENT_CONVEX   (hash md5:32ca3cd0006e579be8d9f8fec6a87b2c)
Theorem hlt_CARD_COMPONENTS_COMPLEMENT_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_le (hl_CARD (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7508 / FINITE_COMPONENTS_COMPLEMENT_CONVEX   (hash md5:7ffdd68d5e2904fd120ace4302eca360)
Theorem hlt_FINITE_COMPONENTS_COMPLEMENT_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_FINITE (2 :^: hl_ty_cart R N) (hl_components N (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7585 / CONVEX_CLOSURE   (hash md5:a9dc295043df7d2aac0b1be3123d8bd8)
Theorem hlt_CONVEX_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_convex N (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7595 / CONVEX_INTERIOR   (hash md5:af8a1d69f1b858943f176905855ea87b)
Theorem hlt_CONVEX_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_convex N (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7611 / CONVEX_HULL_CLOSURE_SUBSET   (hash md5:86d2b05c2d31c4bc3942962bbb4b9efd)
Theorem hlt_CONVEX_HULL_CLOSURE_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_closure N s)) (hl_closure N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7616 / CONVEX_HULL_CLOSURE   (hash md5:375a9442ced9e26d48e0acdbbb7e9be6)
Theorem hlt_CONVEX_HULL_CLOSURE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_bounded A s = 1 -> hl_hull (hl_ty_cart R A) (hl_convex A) (hl_closure A s) = hl_closure A (hl_hull (hl_ty_cart R A) (hl_convex A) s).
Admitted.

// HOL Light: Multivariate/convex.ml:7624 / SUPPORTING_HYPERPLANE_POINT   (hash md5:112f7f459c7bf6ed5a68818ec4d9ca94)
Theorem hlt_SUPPORTING_HYPERPLANE_POINT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_IN (hl_ty_cart R N) z s = 1) -> exists a :e hl_ty_cart R N, exists b :e R, exists y :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ (hl_real_le (hl_dot N a z) b = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_closure N s) = 1 /\ (hl_dot N a y = b /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closure N s) = 1 -> hl_real_ge (hl_dot N a x) b = 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:7653 / CONVEX_ON_SETDIST   (hash md5:e37e1338b954c002f58d2e7c064c9c97)
Theorem hlt_CONVEX_ON_SETDIST : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N t = 1 -> hl_convex_on N (fun x :e hl_ty_cart R N => hl_setdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) t)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7688 / CONVEX_HULL_TRANSLATION   (hash md5:6476ff062c432deb2c1051801159463f)
Theorem hlt_CONVEX_HULL_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) (hl_hull (hl_ty_cart R N) (hl_convex N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:7698 / CONVEX_HULL_SCALING   (hash md5:1e72ae13bf393160b9f6a0cf762e2211)
Theorem hlt_CONVEX_HULL_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) s) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N c x) (hl_hull (hl_ty_cart R N) (hl_convex N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:7712 / CONVEX_HULL_AFFINITY   (hash md5:a20968e379d883e573450c23d6fc7712)
Theorem hlt_CONVEX_HULL_AFFINITY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall c :e R, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N c x) a) s) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N (hl_vmul N c x) a) (hl_hull (hl_ty_cart R N) (hl_convex N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:7724 / CONVEX_HALFSPACE_INTERSECTION   (hash md5:ae9fc564c29279ef796dfd8c02d3bcbc)
Theorem hlt_CONVEX_HALFSPACE_INTERSECTION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ hl_convex N s = 1 -> s = hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4879 :e 2 :^: hl_ty_cart R N => if exists h :e 2 :^: hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4879 (if hl_SUBSET (hl_ty_cart R N) s h = 1 /\ exists a :e hl_ty_cart R N, exists b :e R, h = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4878 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4878 (hl_real_le (hl_dot N a x) b) x = 1 then 1 else 0) then 1 else 0) h = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:7747 / polar_dual   (hash md5:d52f4fe5cc7f4a913e800007bf32bed7)
Theorem hlt_polar_dual_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polar_dual N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4880 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4880 (if forall u :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) u s = 1 -> hl_real_ge (hl_dot N u x) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:7750 / POLAR_DUAL   (hash md5:e78c439cd2d2a6fdc6583ae3984fe574)
Theorem hlt_POLAR_DUAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polar_dual N s = hl_INTERS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_4883 :e 2 :^: hl_ty_cart R N => if exists u :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_4883 (hl_IN (hl_ty_cart R N) u s) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4882 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4882 (hl_real_ge (hl_dot N u x) (hl_real_neg (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) x = 1 then 1 else 0)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:7755 / CLOSED_POLAR_DUAL   (hash md5:d87b60fb5b956d2639df5c80b5138944)
Theorem hlt_CLOSED_POLAR_DUAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N (hl_polar_dual N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7761 / CONVEX_POLAR_DUAL   (hash md5:c33184db6ac1f3f92889f9a50e8a6403)
Theorem hlt_CONVEX_POLAR_DUAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N (hl_polar_dual N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7767 / POLAR_DUAL_0   (hash md5:3f89a1809432dcf8623919e4a896fc6b)
Theorem hlt_POLAR_DUAL_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_polar_dual N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7772 / POLAR_DUAL_EMPTY   (hash md5:e4495858371133b649bd1da39132318d)
Theorem hlt_POLAR_DUAL_EMPTY : forall N:set, N <> Empty -> hl_polar_dual N (hl_EMPTY (hl_ty_cart R N)) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:7776 / POLAR_DUAL_SING   (hash md5:002dc2c046bcc56341ee45701ba3f4c7)
Theorem hlt_POLAR_DUAL_SING : forall N:set, N <> Empty -> hl_polar_dual N (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N))) = hl_UNIV (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:7781 / POLAR_DUAL_UNIV   (hash md5:144c9efcae8565a1219ab1266e18e33a)
Theorem hlt_POLAR_DUAL_UNIV : forall N:set, N <> Empty -> hl_polar_dual N (hl_UNIV (hl_ty_cart R N)) = hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:7791 / POLAR_DUAL_ANTIMONO   (hash md5:beb29ad475cab910c81ca28c7b9cbf62)
Theorem hlt_POLAR_DUAL_ANTIMONO : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s t = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_polar_dual N t) (hl_polar_dual N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:7796 / POLAR_DUAL_UNION   (hash md5:3e8d6acd993207ed22f678658764cd0f)
Theorem hlt_POLAR_DUAL_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_polar_dual N (hl_UNION (hl_ty_cart R N) s t) = hl_INTER (hl_ty_cart R N) (hl_polar_dual N s) (hl_polar_dual N t).
Admitted.

// HOL Light: Multivariate/convex.ml:7800 / POLAR_DUAL_SCALING   (hash md5:cd85343b470bb38c6aaebaa05b8c2c7d)
Theorem hlt_POLAR_DUAL_SCALING : forall N:set, N <> Empty -> forall a :e R, forall s :e 2 :^: hl_ty_cart R N, ~ a = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_polar_dual N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4884 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4884 (hl_IN (hl_ty_cart R N) x s) (hl_vmul N a x) = 1 then 1 else 0)) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4885 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4885 (hl_IN (hl_ty_cart R N) x (hl_polar_dual N s)) (hl_vmul N (hl_real_inv a) x) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:7812 / POLAR_DUAL_UNIT_CBALL   (hash md5:b38b7a4c0ee5a4bc87fb13712b8f931d)
Theorem hlt_POLAR_DUAL_UNIT_CBALL : forall N:set, N <> Empty -> hl_polar_dual N (hl_cball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) = hl_cball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:7837 / POLAR_DUAL_CBALL   (hash md5:fdabcd47ccc29892008c39752f7413cf)
Theorem hlt_POLAR_DUAL_CBALL : forall N:set, N <> Empty -> forall r :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 -> hl_polar_dual N (hl_cball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) = hl_cball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_inv r)).
Admitted.

// HOL Light: Multivariate/convex.ml:7847 / POLAR_DUAL_POLAR_DUAL_GEN   (hash md5:af3ec696db998c5c7fc1b40ba4a6de7b)
Theorem hlt_POLAR_DUAL_POLAR_DUAL_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polar_dual N (hl_polar_dual N s) = hl_closure N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s)).
Admitted.

// HOL Light: Multivariate/convex.ml:7879 / POLAR_DUAL_POLAR_DUAL_EQ   (hash md5:eb287e4012c0cb4a967149bdc90f3adf)
Theorem hlt_POLAR_DUAL_POLAR_DUAL_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_polar_dual N (hl_polar_dual N s) = s <-> hl_closed N s = 1 /\ (hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:7900 / POLAR_DUAL_POLAR_DUAL   (hash md5:dfb75760c78fdb4b7274a2a1986a934b)
Theorem hlt_POLAR_DUAL_POLAR_DUAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 /\ (hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1) -> hl_polar_dual N (hl_polar_dual N s) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:7910 / RADON_EX_LEMMA   (hash md5:769251e34139adf39af6eecfeee7d482)
Theorem hlt_RADON_EX_LEMMA : forall N:set, N <> Empty -> forall c :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) c = 1 /\ hl_affine_dependent N c = 1 -> exists u :e R :^: hl_ty_cart R N, hl_sum (hl_ty_cart R N) c u = hl_real_of_num (hl_NUMERAL hl_zero) /\ ((exists v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) v c = 1 /\ ~ u v = hl_real_of_num (hl_NUMERAL hl_zero)) /\ hl_vsum (hl_ty_cart R N) N c (fun v :e hl_ty_cart R N => hl_vmul N (u v) v) = hl_vec N (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/convex.ml:7925 / RADON_S_LEMMA   (hash md5:076d30d2032a8275b659aeed7aad2c1f)
Theorem hlt_RADON_S_LEMMA : forall A:set, A <> Empty -> forall s :e 2 :^: A, forall f :e R :^: A, hl_FINITE A s = 1 /\ hl_sum A s f = hl_real_of_num (hl_NUMERAL hl_zero) -> hl_sum A (hl_GSPEC A (fun GEN_PVAR_4893 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4893 (if hl_IN A x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_real_neg (hl_sum A (hl_GSPEC A (fun GEN_PVAR_4894 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4894 (if hl_IN A x s = 1 /\ hl_real_lt (f x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) f).
Admitted.

// HOL Light: Multivariate/convex.ml:7954 / RADON_V_LEMMA   (hash md5:f6e8c49abef1e887eb2d23025da6aff0)
Theorem hlt_RADON_V_LEMMA : forall A N:set, A <> Empty -> N <> Empty -> forall s :e 2 :^: A, forall f :e hl_ty_cart R N :^: A, forall g :e R :^: A, hl_FINITE A s = 1 /\ (hl_vsum A N s f = hl_vec N (hl_NUMERAL hl_zero) /\ (forall x :e A, g x = hl_real_of_num (hl_NUMERAL hl_zero) -> f x = hl_vec N (hl_NUMERAL hl_zero))) -> hl_vsum A N (hl_GSPEC A (fun GEN_PVAR_4901 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4901 (if hl_IN A x s = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (g x) = 1 then 1 else 0) x = 1 then 1 else 0)) f = hl_vector_neg N (hl_vsum A N (hl_GSPEC A (fun GEN_PVAR_4902 :e A => if exists x :e A, hl_SETSPEC A GEN_PVAR_4902 (if hl_IN A x s = 1 /\ hl_real_lt (g x) (hl_real_of_num (hl_NUMERAL hl_zero)) = 1 then 1 else 0) x = 1 then 1 else 0)) f).
Admitted.

// HOL Light: Multivariate/convex.ml:7983 / RADON_PARTITION   (hash md5:bea325ea678848929793cc23296584a8)
Theorem hlt_RADON_PARTITION : forall N:set, N <> Empty -> forall c :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) c = 1 /\ hl_affine_dependent N c = 1 -> exists m p :e 2 :^: hl_ty_cart R N, hl_DISJOINT (hl_ty_cart R N) m p = 1 /\ (hl_UNION (hl_ty_cart R N) m p = c /\ ~ hl_DISJOINT (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) m) (hl_hull (hl_ty_cart R N) (hl_convex N) p) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:8092 / RADON   (hash md5:2178eed6c674edf1e9785cfad8969c48)
Theorem hlt_RADON : forall N:set, N <> Empty -> forall c :e 2 :^: hl_ty_cart R N, hl_affine_dependent N c = 1 -> exists m p :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) m c = 1 /\ (hl_SUBSET (hl_ty_cart R N) p c = 1 /\ (hl_DISJOINT (hl_ty_cart R N) m p = 1 /\ ~ hl_DISJOINT (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) m) (hl_hull (hl_ty_cart R N) (hl_convex N) p) = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:8116 / HELLY_INDUCT   (hash md5:2915773b99907369be56b764c4736148)
Theorem hlt_HELLY_INDUCT : forall N:set, N <> Empty -> forall n :e omega, forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_HAS_SIZE (2 :^: hl_ty_cart R N) f n = 1 /\ (hl_ge n (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1) /\ (forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) t f = 1 /\ hl_CARD (2 :^: hl_ty_cart R N) t = hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) -> ~ hl_INTERS (hl_ty_cart R N) t = hl_EMPTY (hl_ty_cart R N)))) -> ~ hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:8192 / HELLY   (hash md5:f8a3cc4d476bd2999398de3bf5d7cca5)
Theorem hlt_HELLY : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ (hl_ge (hl_CARD (2 :^: hl_ty_cart R N) f) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1) /\ (forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) t f = 1 /\ hl_CARD (2 :^: hl_ty_cart R N) t = hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero)) -> ~ hl_INTERS (hl_ty_cart R N) t = hl_EMPTY (hl_ty_cart R N)))) -> ~ hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:8201 / HELLY_ALT   (hash md5:dc7cf6b10ec48cca56e61097ceddf672)
Theorem hlt_HELLY_ALT : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), hl_FINITE (2 :^: hl_ty_cart R N) f = 1 /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1) /\ (forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) t f = 1 /\ hl_le (hl_CARD (2 :^: hl_ty_cart R N) t) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> ~ hl_INTERS (hl_ty_cart R N) t = hl_EMPTY (hl_ty_cart R N))) -> ~ hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:8212 / HELLY_CLOSED_ALT   (hash md5:70da2dcbf8634e706520f1771ccd9cdd)
Theorem hlt_HELLY_CLOSED_ALT : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1 /\ hl_closed N s = 1) /\ ((exists s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 /\ hl_bounded N s = 1) /\ (forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) t f = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) t = 1 /\ hl_le (hl_CARD (2 :^: hl_ty_cart R N) t) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> ~ hl_INTERS (hl_ty_cart R N) t = hl_EMPTY (hl_ty_cart R N))) -> ~ hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:8226 / HELLY_COMPACT_ALT   (hash md5:e849f79ad89b37510c2eee360341df38)
Theorem hlt_HELLY_COMPACT_ALT : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1 /\ hl_compact N s = 1) /\ (forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) t f = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) t = 1 /\ hl_le (hl_CARD (2 :^: hl_ty_cart R N) t) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) -> ~ hl_INTERS (hl_ty_cart R N) t = hl_EMPTY (hl_ty_cart R N)) -> ~ hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:8239 / HELLY_CLOSED   (hash md5:d88d92381d78387191044d1c897b058e)
Theorem hlt_HELLY_CLOSED : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (hl_FINITE (2 :^: hl_ty_cart R N) f = 1 -> hl_ge (hl_CARD (2 :^: hl_ty_cart R N) f) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1 /\ hl_closed N s = 1) /\ ((exists s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 /\ hl_bounded N s = 1) /\ (forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) t f = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) t = 1 /\ hl_CARD (2 :^: hl_ty_cart R N) t = hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) -> ~ hl_INTERS (hl_ty_cart R N) t = hl_EMPTY (hl_ty_cart R N)))) -> ~ hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:8259 / HELLY_COMPACT   (hash md5:a3c9d798358dfc435c51e433aba50547)
Theorem hlt_HELLY_COMPACT : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (hl_FINITE (2 :^: hl_ty_cart R N) f = 1 -> hl_ge (hl_CARD (2 :^: hl_ty_cart R N) f) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1 /\ hl_compact N s = 1) /\ (forall t :e 2 :^: (2 :^: hl_ty_cart R N), hl_SUBSET (2 :^: hl_ty_cart R N) t f = 1 /\ (hl_FINITE (2 :^: hl_ty_cart R N) t = 1 /\ hl_CARD (2 :^: hl_ty_cart R N) t = hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) -> ~ hl_INTERS (hl_ty_cart R N) t = hl_EMPTY (hl_ty_cart R N))) -> ~ hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:8277 / KIRCHBERGER   (hash md5:a9cb1aa5779c0f9d8a1753005e48c629)
Theorem hlt_KIRCHBERGER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_compact N t = 1 /\ (forall s' t' :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s' s = 1 /\ (hl_SUBSET (hl_ty_cart R N) t' t = 1 /\ (hl_FINITE (hl_ty_cart R N) s' = 1 /\ (hl_FINITE (hl_ty_cart R N) t' = 1 /\ hl_le (hl_add (hl_CARD (hl_ty_cart R N) s') (hl_CARD (hl_ty_cart R N) t')) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) = 1))) -> exists a :e hl_ty_cart R N, exists b :e R, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s' = 1 -> hl_real_lt (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t' = 1 -> hl_real_gt (hl_dot N a x) b = 1)) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_gt (hl_dot N a x) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:8387 / CONVEX_HULL_LINEAR_IMAGE   (hash md5:fc2948eb9698d283d35f7d2b014e37d3)
Theorem hlt_CONVEX_HULL_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 -> hl_hull (hl_ty_cart R A) (hl_convex A) (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f (hl_hull (hl_ty_cart R B) (hl_convex B) s).
Admitted.

// HOL Light: Multivariate/convex.ml:8404 / IN_CONVEX_HULL_LINEAR_IMAGE   (hash md5:5a5b394ad3f5249c6854031a5683fdcf)
Theorem hlt_IN_CONVEX_HULL_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall x :e hl_ty_cart R M, hl_linear M N f = 1 /\ hl_IN (hl_ty_cart R M) x (hl_hull (hl_ty_cart R M) (hl_convex M) s) = 1 -> hl_IN (hl_ty_cart R N) (f x) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8409 / CONIC_CONVEX_HULL   (hash md5:6272ff73c99951767ff51521b763a375)
Theorem hlt_CONIC_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 -> hl_conic N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8414 / CONIC_HULL_CONVEX_HULL   (hash md5:2a74e754937eacd8fe81bf5876e97caf)
Theorem hlt_CONIC_HULL_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_conic N) (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_hull (hl_ty_cart R N) (hl_conic N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:8425 / IS_INTERVAL_CONVEX   (hash md5:9ffb86964565cfa43759ada68a8baaf6)
Theorem hlt_IS_INTERVAL_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_convex N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8442 / IS_INTERVAL_CONNECTED   (hash md5:9c8ebf5cf8f77bbe1445282414b8cfbc)
Theorem hlt_IS_INTERVAL_CONNECTED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_connected N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8446 / IS_INTERVAL_CONNECTED_1   (hash md5:e586fe79353093d729bda722ff00f64d)
Theorem hlt_IS_INTERVAL_CONNECTED_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 <-> hl_connected 1 s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8465 / CONVEX_INTERVAL   (hash md5:7ff805370441c1da101428b4e2588afd)
Theorem hlt_CONVEX_INTERVAL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_convex N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_convex N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8469 / CONNECTED_INTERVAL   (hash md5:ce747a3e06df48cd3a70022b475fb0d8)
Theorem hlt_CONNECTED_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_connected N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_connected N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8474 / LIMIT_POINT_OF_INTERVAL   (hash md5:001ecb897c86e6d843e8516a5f457587)
Theorem hlt_LIMIT_POINT_OF_INTERVAL : forall N:set, N <> Empty -> (forall a b x :e hl_ty_cart R N, hl_limit_point_of N x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> ~ a = b /\ hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b x :e hl_ty_cart R N, hl_limit_point_of N x (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> ~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) /\ hl_IN (hl_ty_cart R N) x (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8491 / CONVEX_CONNECTED_COLLINEAR   (hash md5:0ce226fc52a0da7423517be1b08c68e3)
Theorem hlt_CONVEX_CONNECTED_COLLINEAR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_collinear N s = 1 -> (hl_convex N s = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:8560 / CONVEX_EQ_CONVEX_LINE_INTERSECTION   (hash md5:2ee58eabcff2000014b7a63390a35a71)
Theorem hlt_CONVEX_EQ_CONVEX_LINE_INTERSECTION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 <-> forall a b :e hl_ty_cart R N, hl_convex N (hl_INTER (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8570 / CONVEX_EQ_CONNECTED_LINE_INTERSECTION   (hash md5:3d1b17139011e93ae2c78418a119f425)
Theorem hlt_CONVEX_EQ_CONNECTED_LINE_INTERSECTION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 <-> forall a b :e hl_ty_cart R N, hl_connected N (hl_INTER (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8585 / IS_INTERVAL_CONVEX_1   (hash md5:c0286fed03ac68090da23349717dc4dc)
Theorem hlt_IS_INTERVAL_CONVEX_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 <-> hl_convex 1 s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8589 / CONVEX_CONNECTED_1   (hash md5:c85f907c35d0d1f4023f4883c7c91598)
Theorem hlt_CONVEX_CONNECTED_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_convex 1 s = 1 <-> hl_connected 1 s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8593 / CONNECTED_CONVEX_1   (hash md5:2b90c3c26e7366b242d33ca244f92813)
Theorem hlt_CONNECTED_CONVEX_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_connected 1 s = 1 <-> hl_convex 1 s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:8597 / CONNECTED_COMPACT_INTERVAL_1   (hash md5:564db39fa22c699368fddf4497419728)
Theorem hlt_CONNECTED_COMPACT_INTERVAL_1 : forall s :e 2 :^: hl_ty_cart R 1, hl_connected 1 s = 1 /\ hl_compact 1 s = 1 <-> exists a b :e hl_ty_cart R 1, s = hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:8601 / CONVEX_CONNECTED_1_GEN   (hash md5:e37772c4226b598ecb039158228fc37d)
Theorem hlt_CONVEX_CONNECTED_1_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_convex N s = 1 <-> hl_connected N s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:8608 / CONNECTED_CONVEX_1_GEN   (hash md5:519bf0a982d1e1a8adac9969793a082e)
Theorem hlt_CONNECTED_CONVEX_1_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_dimindex N (hl_UNIV N) = hl_NUMERAL (hl_BIT1 hl_zero) -> (hl_connected N s = 1 <-> hl_convex N s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:8613 / COMPACT_CONVEX_COLLINEAR_SEGMENT_ALT   (hash md5:50afcb4402353ef3e3914dadf6058a86)
Theorem hlt_COMPACT_CONVEX_COLLINEAR_SEGMENT_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_compact N s = 1 /\ (hl_connected N s = 1 /\ hl_collinear N s = 1)) -> exists a b :e hl_ty_cart R N, s = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/convex.ml:8654 / COMPACT_CONVEX_COLLINEAR_SEGMENT   (hash md5:d6c4ebf208ef239206402d99ee4cfd41)
Theorem hlt_COMPACT_CONVEX_COLLINEAR_SEGMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_compact N s = 1 /\ (hl_convex N s = 1 /\ hl_collinear N s = 1)) -> exists a b :e hl_ty_cart R N, s = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/convex.ml:8661 / IN_CONVEX_HULL_INTERVAL_1   (hash md5:8ab0b81139b433a767b75178f5bbb345)
Theorem hlt_IN_CONVEX_HULL_INTERVAL_1 : forall s :e 2 :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_hull (hl_ty_cart R 1) (hl_convex 1) s) = 1 <-> exists a b :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) a s = 1 /\ (hl_IN (hl_ty_cart R 1) b s = 1 /\ hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:8661 / IN_CONVEX_HULL_SEGMENT_1   (hash md5:c218722643d0bc6e76f982cd66d22842)
Theorem hlt_IN_CONVEX_HULL_SEGMENT_1 : forall s :e 2 :^: hl_ty_cart R 1, forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_hull (hl_ty_cart R 1) (hl_convex 1) s) = 1 <-> exists a b :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) a s = 1 /\ (hl_IN (hl_ty_cart R 1) b s = 1 /\ hl_IN (hl_ty_cart R 1) x (hl_closed_segment 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:8696 / JUNG   (hash md5:fef8db776413c0626648120a5c2fbccd)
Theorem hlt_JUNG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall r :e R, hl_bounded N s = 1 /\ hl_real_le (hl_real_mul (hl_sqrt (hl_real_div (hl_real_of_num (hl_dimindex N (hl_UNIV N))) (hl_real_of_num (hl_add (hl_mul (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))) (hl_diameter N s)) r = 1 -> exists a :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) s (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9008 / KIRSZBRAUN   (hash md5:fd5064f3ed9a34356e1d0be061b4bd01)
Theorem hlt_KIRSZBRAUN : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ (forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, (forall x y :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (hl_vector_sub N (g x) (g y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x.
Admitted.

// HOL Light: Multivariate/convex.ml:9637 / LIPSCHITZ_EXTENSION_EXISTS   (hash md5:c9249652204f8e915d7198912b8cabde)
Theorem hlt_LIPSCHITZ_EXTENSION_EXISTS : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, (exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 /\ hl_IN (hl_ty_cart R M) y s = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, (exists B :e R, forall x y :e hl_ty_cart R M, hl_real_le (hl_vector_norm N (hl_vector_sub N (g x) (g y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x.
Admitted.

// HOL Light: Multivariate/convex.ml:9653 / DUGUNDJI   (hash md5:d35c860a30fde796209a4654e7e5223c)
Theorem hlt_DUGUNDJI : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall c :e 2 :^: hl_ty_cart R N, forall u s :e 2 :^: hl_ty_cart R M, hl_convex N c = 1 /\ (~ c = hl_EMPTY (hl_ty_cart R N) /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1 /\ (hl_continuous_on M N f s = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) c = 1))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g u = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) g u) c = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x).
Admitted.

// HOL Light: Multivariate/convex.ml:9804 / TIETZE   (hash md5:0674e5c1070984deed2bd80c847294f6)
Theorem hlt_TIETZE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u s :e 2 :^: hl_ty_cart R M, forall B :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1 /\ (hl_continuous_on M N f s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_real_le (hl_vector_norm N (f x)) B = 1))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g u = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x) /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x u = 1 -> hl_real_le (hl_vector_norm N (g x)) B = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:9820 / TIETZE_CLOSED_INTERVAL   (hash md5:39335f03de0e106bc85295c07bb1a550)
Theorem hlt_TIETZE_CLOSED_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u s :e 2 :^: hl_ty_cart R M, forall a b :e hl_ty_cart R N, ~ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1 /\ (hl_continuous_on M N f s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_IN (hl_ty_cart R N) (f x) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g u = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x) /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x u = 1 -> hl_IN (hl_ty_cart R N) (g x) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:9835 / TIETZE_CLOSED_INTERVAL_1   (hash md5:9770638f94f903fa5f23f65a50f00707)
Theorem hlt_TIETZE_CLOSED_INTERVAL_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall u s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R 1, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_continuous_on N 1 f s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_IN (hl_ty_cart R 1) (f x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1))) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N, hl_continuous_on N 1 g u = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> g x = f x) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x u = 1 -> hl_IN (hl_ty_cart R 1) (g x) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:9847 / TIETZE_OPEN_INTERVAL   (hash md5:fcecbc3413c05e6014e2d9a312d4b322)
Theorem hlt_TIETZE_OPEN_INTERVAL : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u s :e 2 :^: hl_ty_cart R M, forall a b :e hl_ty_cart R N, ~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) /\ (hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1 /\ (hl_continuous_on M N f s = 1 /\ (forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> hl_IN (hl_ty_cart R N) (f x) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1))) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g u = 1 /\ ((forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x) /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x u = 1 -> hl_IN (hl_ty_cart R N) (g x) (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:9862 / TIETZE_OPEN_INTERVAL_1   (hash md5:550244b320acfed9f729f94fd4d21104)
Theorem hlt_TIETZE_OPEN_INTERVAL_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R 1 :^: hl_ty_cart R N, forall u s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R 1, hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (hl_closed_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ (hl_continuous_on N 1 f s = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_IN (hl_ty_cart R 1) (f x) (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1))) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R N, hl_continuous_on N 1 g u = 1 /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> g x = f x) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x u = 1 -> hl_IN (hl_ty_cart R 1) (g x) (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:9874 / TIETZE_UNBOUNDED   (hash md5:2f178483b7f86d3eb7cb3ed036cc24d3)
Theorem hlt_TIETZE_UNBOUNDED : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall u s :e 2 :^: hl_ty_cart R M, hl_closed_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) u) s = 1 /\ hl_continuous_on M N f s = 1 -> exists g :e hl_ty_cart R N :^: hl_ty_cart R M, hl_continuous_on M N g u = 1 /\ forall x :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x s = 1 -> g x = f x.
Admitted.

// HOL Light: Multivariate/convex.ml:9888 / convex_cone   (hash md5:df8897c765cb06663205aaa51abd55e4)
Theorem hlt_convex_cone_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex_cone A s = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R A) /\ (hl_convex A s = 1 /\ hl_conic A s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:9891 / CONVEX_CONE   (hash md5:cd0c47f3e3b3d4fc86d169570636d39c)
Theorem hlt_CONVEX_CONE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex_cone N s = 1 <-> hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 /\ ((forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N x y) s = 1) /\ forall x :e hl_ty_cart R N, forall c :e R, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 -> hl_IN (hl_ty_cart R N) (hl_vmul N c x) s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:9909 / CONVEX_CONE_ADD   (hash md5:27135487571002b7fb929657cb066e73)
Theorem hlt_CONVEX_CONE_ADD : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall x y :e hl_ty_cart R A, hl_convex_cone A s = 1 /\ (hl_IN (hl_ty_cart R A) x s = 1 /\ hl_IN (hl_ty_cart R A) y s = 1) -> hl_IN (hl_ty_cart R A) (hl_vector_add A x y) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9913 / CONVEX_CONE_MUL   (hash md5:de84ef35d5263130a9bae50bef61e6b6)
Theorem hlt_CONVEX_CONE_MUL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall c :e R, forall x :e hl_ty_cart R A, hl_convex_cone A s = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_IN (hl_ty_cart R A) x s = 1) -> hl_IN (hl_ty_cart R A) (hl_vmul A c x) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9917 / CONVEX_CONE_NONEMPTY   (hash md5:c79aeb50fb6de0dbd6eef2148eb3abe1)
Theorem hlt_CONVEX_CONE_NONEMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex_cone A s = 1 -> ~ s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:9921 / CONVEX_CONE_LINEAR_IMAGE   (hash md5:2615019d54feec1d276015b6e8c0c2ed)
Theorem hlt_CONVEX_CONE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_convex_cone M s = 1 /\ hl_linear M N f = 1 -> hl_convex_cone N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9927 / CONVEX_CONE_LINEAR_IMAGE_EQ   (hash md5:e7de178c38ee964dca73a753ffce1b77)
Theorem hlt_CONVEX_CONE_LINEAR_IMAGE_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> (hl_convex_cone N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = 1 <-> hl_convex_cone M s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:9936 / CONVEX_CONE_HALFSPACE_GE   (hash md5:f17f4784ef61f13c2603f26656e25e2f)
Theorem hlt_CONVEX_CONE_HALFSPACE_GE : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_convex_cone A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4948 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4948 (hl_real_ge (hl_dot A a x) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9941 / CONVEX_CONE_HALFSPACE_LE   (hash md5:c5dadb42e33c7274c2d12f23a6678ec5)
Theorem hlt_CONVEX_CONE_HALFSPACE_LE : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_convex_cone A (hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4949 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4949 (hl_real_le (hl_dot A a x) (hl_real_of_num (hl_NUMERAL hl_zero))) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9946 / CONVEX_CONE_CONTAINS_0   (hash md5:224b17ee19b417f31290dde4e2ac9a39)
Theorem hlt_CONVEX_CONE_CONTAINS_0 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex_cone N s = 1 -> hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9950 / CONVEX_CONE_INTERS   (hash md5:774d78e5e49a6bb116465ba2c6567791)
Theorem hlt_CONVEX_CONE_INTERS : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex_cone N s = 1) -> hl_convex_cone N (hl_INTERS (hl_ty_cart R N) f) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9957 / CONVEX_CONE_CONVEX_CONE_HULL   (hash md5:e77b45acbb6faf32b7e3ecef615ed915)
Theorem hlt_CONVEX_CONE_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex_cone A (hl_hull (hl_ty_cart R A) (hl_convex_cone A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9961 / CONVEX_CONVEX_CONE_HULL   (hash md5:907698b8d2d97d4c9632534bc5d181b1)
Theorem hlt_CONVEX_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A (hl_hull (hl_ty_cart R A) (hl_convex_cone A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9965 / CONIC_CONVEX_CONE_HULL   (hash md5:4fd47eab9e83d87f43f9f87afa32c5dc)
Theorem hlt_CONIC_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_conic A (hl_hull (hl_ty_cart R A) (hl_convex_cone A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9969 / CONVEX_CONE_HULL_NONEMPTY   (hash md5:919434d853a04c0b97cf004ecc59ff21)
Theorem hlt_CONVEX_CONE_HULL_NONEMPTY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, ~ hl_hull (hl_ty_cart R A) (hl_convex_cone A) s = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:9973 / CONVEX_CONE_HULL_CONTAINS_0   (hash md5:09e223f85d791588ebf0c903a2e678fb)
Theorem hlt_CONVEX_CONE_HULL_CONTAINS_0 : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_IN (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R A) (hl_convex_cone A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9977 / CONVEX_CONE_HULL_ADD   (hash md5:ec000ef5c55e4a014ade701c8d3e3248)
Theorem hlt_CONVEX_CONE_HULL_ADD : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N x y) (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9983 / CONVEX_CONE_HULL_MUL   (hash md5:f3257b12895139a94bcac76fb1e881e9)
Theorem hlt_CONVEX_CONE_HULL_MUL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall c :e R, forall x :e hl_ty_cart R N, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1 -> hl_IN (hl_ty_cart R N) (hl_vmul N c x) (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9989 / CONVEX_CONE_SUMS   (hash md5:8b6edb3456ad1f8ccb72ff3f366fa661)
Theorem hlt_CONVEX_CONE_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex_cone N s = 1 /\ hl_convex_cone N t = 1 -> hl_convex_cone N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4950 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4950 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9994 / CONVEX_CONE_PCROSS   (hash md5:d56d1e7d18654c8d71fcdce82e7555ce)
Theorem hlt_CONVEX_CONE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex_cone M s = 1 /\ hl_convex_cone N t = 1 -> hl_convex_cone (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:9999 / CONVEX_CONE_PCROSS_EQ   (hash md5:44a35cf1a5baefb9e16afc9692e6322e)
Theorem hlt_CONVEX_CONE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex_cone (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> hl_convex_cone M s = 1 /\ hl_convex_cone N t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10019 / CONVEX_CONE_HULL_UNION   (hash md5:f8d8ae71393ef0ff9686d8f2465827fe)
Theorem hlt_CONVEX_CONE_HULL_UNION : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex_cone N) (hl_UNION (hl_ty_cart R N) s t) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4951 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4951 (if hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex_cone N) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex_cone N) t) = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:10035 / CONVEX_CONE_SING   (hash md5:cedb0bcd04db303a113818b5de7edc38)
Theorem hlt_CONVEX_CONE_SING : forall A:set, A <> Empty -> hl_convex_cone A (hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R A))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10039 / CONVEX_HULL_SUBSET_CONVEX_CONE_HULL   (hash md5:a786cb00ea7c033e8fdd7ca2bdde281f)
Theorem hlt_CONVEX_HULL_SUBSET_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_hull (hl_ty_cart R A) (hl_convex A) s) (hl_hull (hl_ty_cart R A) (hl_convex_cone A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10044 / CONIC_HULL_SUBSET_CONVEX_CONE_HULL   (hash md5:486e439a9fd435aa60a403803a3f7e73)
Theorem hlt_CONIC_HULL_SUBSET_CONVEX_CONE_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_hull (hl_ty_cart R A) (hl_conic A) s) (hl_hull (hl_ty_cart R A) (hl_convex_cone A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10049 / CONVEX_CONE_HULL_SEPARATE_NONEMPTY   (hash md5:d0c26b17b2f7432c79352abae10cbd07)
Theorem hlt_CONVEX_CONE_HULL_SEPARATE_NONEMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_convex_cone N) s = hl_hull (hl_ty_cart R N) (hl_conic N) (hl_hull (hl_ty_cart R N) (hl_convex N) s).
Admitted.

// HOL Light: Multivariate/convex.ml:10060 / CONVEX_CONE_HULL_EMPTY   (hash md5:3e17ca5f74b3909ad2630cd80705635a)
Theorem hlt_CONVEX_CONE_HULL_EMPTY : forall A:set, A <> Empty -> hl_hull (hl_ty_cart R A) (hl_convex_cone A) (hl_EMPTY (hl_ty_cart R A)) = hl_INSERT (hl_ty_cart R A) (hl_vec A (hl_NUMERAL hl_zero)) (hl_EMPTY (hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/convex.ml:10066 / CONVEX_CONE_HULL_SEPARATE   (hash md5:1ca3438e595a40b72af486dfc18562a4)
Theorem hlt_CONVEX_CONE_HULL_SEPARATE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex_cone N) s = hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_conic N) (hl_hull (hl_ty_cart R N) (hl_convex N) s)).
Admitted.

// HOL Light: Multivariate/convex.ml:10076 / CONVEX_CONE_HULL_CONVEX_HULL_NONEMPTY   (hash md5:d417d633036ada668997dd5a23f60d97)
Theorem hlt_CONVEX_CONE_HULL_CONVEX_HULL_NONEMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_hull (hl_ty_cart R N) (hl_convex_cone N) s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4952 :e hl_ty_cart R N => if exists c :e R, exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4952 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 then 1 else 0) (hl_vmul N c x) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:10082 / CONVEX_CONE_HULL_CONVEX_HULL   (hash md5:dfa527ef6e3bdfc5d8d71a21643cba09)
Theorem hlt_CONVEX_CONE_HULL_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_convex_cone N) s = hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4953 :e hl_ty_cart R N => if exists c :e R, exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4953 (if hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 then 1 else 0) (hl_vmul N c x) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:10088 / CONVEX_CONE_HULL_LINEAR_IMAGE   (hash md5:bc29f3e813fe4ecc38687386b1b589aa)
Theorem hlt_CONVEX_CONE_HULL_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 -> hl_hull (hl_ty_cart R N) (hl_convex_cone N) (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_hull (hl_ty_cart R M) (hl_convex_cone M) s).
Admitted.

// HOL Light: Multivariate/convex.ml:10102 / SUBSPACE_IMP_CONVEX_CONE   (hash md5:c7e13f4fabe88e750df07ab11bd53d30)
Theorem hlt_SUBSPACE_IMP_CONVEX_CONE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_subspace A s = 1 -> hl_convex_cone A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10106 / CONVEX_CONE_SPAN   (hash md5:789910e3aae0745eeaf6fdf99e1a0838)
Theorem hlt_CONVEX_CONE_SPAN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex_cone A (hl_span A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10111 / CONVEX_CONE_NEGATIONS   (hash md5:50fb0127fe992a006dd769ff6c3346f3)
Theorem hlt_CONVEX_CONE_NEGATIONS : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex_cone A s = 1 -> hl_convex_cone A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (hl_vector_neg A) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10115 / SUBSPACE_CONVEX_CONE_SYMMETRIC   (hash md5:e62a04f9ce5526dc6d79396678e77500)
Theorem hlt_SUBSPACE_CONVEX_CONE_SYMMETRIC : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_subspace N s = 1 <-> hl_convex_cone N s = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_neg N x) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10125 / SPAN_CONVEX_CONE_ALLSIGNS   (hash md5:90e8356e56330e3c6948ea2615800cf9)
Theorem hlt_SPAN_CONVEX_CONE_ALLSIGNS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_span N s = hl_hull (hl_ty_cart R N) (hl_convex_cone N) (hl_UNION (hl_ty_cart R N) s (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (hl_vector_neg N) s)).
Admitted.

// HOL Light: Multivariate/convex.ml:10150 / epigraph   (hash md5:26017c53041eba7934e67395074c5c63)
Theorem hlt_epigraph_thm : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall f :e R :^: hl_ty_cart R N, hl_epigraph N s f = hl_GSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) (fun GEN_PVAR_4955 :e hl_ty_cart R (hl_ty_finite_sum N 1) => if exists xy :e hl_ty_cart R (hl_ty_finite_sum N 1), hl_SETSPEC (hl_ty_cart R (hl_ty_finite_sum N 1)) GEN_PVAR_4955 (if hl_IN (hl_ty_cart R N) (hl_fstcart R N 1 xy) s = 1 /\ hl_real_le (f (hl_fstcart R N 1 xy)) (hl_drop (hl_sndcart R N 1 xy)) = 1 then 1 else 0) xy = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:10155 / IN_EPIGRAPH   (hash md5:f71834bb9832c3e3904105cc0a9c375d)
Theorem hlt_IN_EPIGRAPH : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, forall f :e R :^: hl_ty_cart R A, forall x :e hl_ty_cart R A, forall y :e R, hl_IN (hl_ty_cart R (hl_ty_finite_sum A 1)) (hl_pastecart R A 1 x (hl_lift y)) (hl_epigraph A s f) = 1 <-> hl_IN (hl_ty_cart R A) x s = 1 /\ hl_real_le (f x) y = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10160 / CONVEX_EPIGRAPH   (hash md5:e588d8f5ad9aa3d4a618fb95f76def40)
Theorem hlt_CONVEX_EPIGRAPH : forall A:set, A <> Empty -> forall f :e R :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_convex_on A f s = 1 /\ hl_convex A s = 1 <-> hl_convex (hl_ty_finite_sum A 1) (hl_epigraph A s f) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10168 / CONVEX_EPIGRAPH_CONVEX   (hash md5:391dcc60d82590d5001ca372193bf0a0)
Theorem hlt_CONVEX_EPIGRAPH_CONVEX : forall A:set, A <> Empty -> forall f :e R :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 -> (hl_convex_on A f s = 1 <-> hl_convex (hl_ty_finite_sum A 1) (hl_epigraph A s f) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:10172 / CONVEX_ON_EPIGRAPH_SLICE_LE   (hash md5:ad309f5967cde29db435f7f95f81181e)
Theorem hlt_CONVEX_ON_EPIGRAPH_SLICE_LE : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e R, hl_convex_on N f s = 1 /\ hl_convex N s = 1 -> hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4956 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4956 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_le (f x) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10182 / CONVEX_ON_EPIGRAPH_SLICE_LT   (hash md5:0758ed2879132ada9a35f238c120ef2d)
Theorem hlt_CONVEX_ON_EPIGRAPH_SLICE_LT : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e R, hl_convex_on N f s = 1 /\ hl_convex N s = 1 -> hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4957 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4957 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_lt (f x) a = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10192 / CONVEX_ON_SUP   (hash md5:2fec17255ad4407e2fda8e9b7fa87bd0)
Theorem hlt_CONVEX_ON_SUP : forall A N:set, A <> Empty -> N <> Empty -> forall f :e R :^: hl_ty_cart R N :^: A, forall t :e 2 :^: A, forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ((forall i :e A, hl_IN A i t = 1 -> hl_convex_on N (f i) s = 1) /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> exists B :e R, forall i :e A, hl_IN A i t = 1 -> hl_real_le (f i x) B = 1)) -> hl_convex_on N (fun x :e hl_ty_cart R N => hl_sup (hl_GSPEC R (fun GEN_PVAR_4960 :e R => if exists i :e A, hl_SETSPEC R GEN_PVAR_4960 (hl_IN A i t) (f i x) = 1 then 1 else 0))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10222 / FORALL_OF_PASTECART   (hash md5:1a9c19ce6b211525d6000e815257a232)
Theorem hlt_FORALL_OF_PASTECART : forall A B M N:set, A <> Empty -> B <> Empty -> M <> Empty -> N <> Empty -> forall P :e 2 :^: (hl_ty_cart B N :^: A) :^: (hl_ty_cart B M :^: A), (forall p :e hl_ty_cart B (hl_ty_finite_sum M N) :^: A, P (hl_o (hl_ty_cart B (hl_ty_finite_sum M N)) (hl_ty_cart B M) A (hl_fstcart B M N) p) (hl_o (hl_ty_cart B (hl_ty_finite_sum M N)) (hl_ty_cart B N) A (hl_sndcart B M N) p) = 1) <-> forall x :e hl_ty_cart B M :^: A, forall y :e hl_ty_cart B N :^: A, P x y = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10228 / FORALL_OF_DROP   (hash md5:e34eae6303c9998155455e54b020d22f)
Theorem hlt_FORALL_OF_DROP : forall A:set, A <> Empty -> forall P :e 2 :^: (R :^: A), (forall v :e hl_ty_cart R 1 :^: A, P (hl_o (hl_ty_cart R 1) R A hl_drop v) = 1) <-> forall x :e R :^: A, P x = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10234 / CONVEX_ON_JENSEN   (hash md5:a34a8b0abffac43956ad3215791b4c01)
Theorem hlt_CONVEX_ON_JENSEN : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> (hl_convex_on N f s = 1 <-> forall k :e omega, forall u :e R :^: omega, forall x :e hl_ty_cart R N :^: omega, (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i k = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u i) = 1 /\ hl_IN (hl_ty_cart R N) (x i) s = 1) /\ hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) -> hl_real_le (f (hl_vsum omega N (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) (fun i :e omega => hl_vmul N (u i) (x i)))) (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) k) (fun i :e omega => hl_real_mul (u i) (f (x i)))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:10266 / CONVEX_ON_IMP_JENSEN   (hash md5:18e61e5e257824e4398d34c3d54fa13b)
Theorem hlt_CONVEX_ON_IMP_JENSEN : forall A N:set, A <> Empty -> N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall k :e 2 :^: A, forall u :e R :^: A, forall x :e hl_ty_cart R N :^: A, hl_convex_on N f s = 1 /\ (hl_convex N s = 1 /\ (hl_FINITE A k = 1 /\ ((forall i :e A, hl_IN A i k = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u i) = 1 /\ hl_IN (hl_ty_cart R N) (x i) s = 1) /\ hl_sum A k u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) -> hl_real_le (f (hl_vsum A N k (fun i :e A => hl_vmul N (u i) (x i)))) (hl_sum A k (fun i :e A => hl_real_mul (u i) (f (x i)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10288 / IVT_INCREASING_COMPONENT_ON_1   (hash md5:677a528d5155d9abe1f663eecaa9baef)
Theorem hlt_IVT_INCREASING_COMPONENT_ON_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall y :e R, forall k :e omega, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_real_le (hl_vindex R N (f a) k) y = 1 /\ hl_real_le y (hl_vindex R N (f b) k) = 1)))) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_vindex R N (f x) k = y.
Admitted.

// HOL Light: Multivariate/convex.ml:10304 / IVT_INCREASING_COMPONENT_1   (hash md5:1c0b9424c7a57905a6c003bc5dcff2db)
Theorem hlt_IVT_INCREASING_COMPONENT_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall y :e R, forall k :e omega, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_continuous (hl_ty_cart R 1) N f (hl_at 1 x) = 1) /\ (hl_real_le (hl_vindex R N (f a) k) y = 1 /\ hl_real_le y (hl_vindex R N (f b) k) = 1)))) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_vindex R N (f x) k = y.
Admitted.

// HOL Light: Multivariate/convex.ml:10313 / IVT_DECREASING_COMPONENT_ON_1   (hash md5:e52958e09affbf5cec9eacc29feec28e)
Theorem hlt_IVT_DECREASING_COMPONENT_ON_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall y :e R, forall k :e omega, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ (hl_continuous_on 1 N f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_real_le (hl_vindex R N (f b) k) y = 1 /\ hl_real_le y (hl_vindex R N (f a) k) = 1)))) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_vindex R N (f x) k = y.
Admitted.

// HOL Light: Multivariate/convex.ml:10324 / IVT_DECREASING_COMPONENT_1   (hash md5:3c34be3e648859739956ed10d8967e0b)
Theorem hlt_IVT_DECREASING_COMPONENT_1 : forall N:set, N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, forall y :e R, forall k :e omega, hl_real_le (hl_drop a) (hl_drop b) = 1 /\ (hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) k = 1 /\ (hl_le k (hl_dimindex N (hl_UNIV N)) = 1 /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_continuous (hl_ty_cart R 1) N f (hl_at 1 x) = 1) /\ (hl_real_le (hl_vindex R N (f b) k) y = 1 /\ hl_real_le y (hl_vindex R N (f a) k) = 1)))) -> exists x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_vindex R N (f x) k = y.
Admitted.

// HOL Light: Multivariate/convex.ml:10337 / CONVEX_ON_CONVEX_HULL_BOUND   (hash md5:9383e7efd9473071a4c9372118bbabc2)
Theorem hlt_CONVEX_ON_CONVEX_HULL_BOUND : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall b :e R, hl_convex_on N f (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (f x) b = 1) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_real_le (f x) b = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10357 / CONVEX_ON_CONVEX_HULL_BOUND_EQ   (hash md5:824ca244b47e9b898f066b9f84ba22e7)
Theorem hlt_CONVEX_ON_CONVEX_HULL_BOUND_EQ : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall b :e R, hl_convex_on N f (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_real_le (f x) b = 1) <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (f x) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:10364 / DIST_CONVEX_HULL_BOUND_EQ   (hash md5:e5a6b9f8bb82692eb5d5b286c41113f2)
Theorem hlt_DIST_CONVEX_HULL_BOUND_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall d :e R, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) d = 1) <-> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) d = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10371 / DIST_CONVEX_HULL_BOUND_2   (hash md5:6a9cc3c9f1f654a672e01b6b7a25e12a)
Theorem hlt_DIST_CONVEX_HULL_BOUND_2 : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall d :e R, (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) <-> forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10377 / DIAMETER_CONVEX_HULL   (hash md5:3d6d866bc400598d6de8cb9a44eabaf1)
Theorem hlt_DIAMETER_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_diameter N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_diameter N s.
Admitted.

// HOL Light: Multivariate/convex.ml:10383 / DIAMETER_SIMPLEX   (hash md5:b0851ad258ad8639143eda69fea1d84f)
Theorem hlt_DIAMETER_SIMPLEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_diameter N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_sup (hl_GSPEC R (fun GEN_PVAR_4961 :e R => if exists x y :e hl_ty_cart R N, hl_SETSPEC R GEN_PVAR_4961 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 then 1 else 0) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:10389 / UNIT_INTERVAL_CONVEX_HULL   (hash md5:2fa718d0b0a4c90d61d1cbd0a3fbfed2)
Theorem hlt_UNIT_INTERVAL_CONVEX_HULL : forall N:set, N <> Empty -> hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_vec N (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4970 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4970 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_vindex R N x i = hl_real_of_num (hl_NUMERAL hl_zero) \/ hl_vindex R N x i = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:10525 / CLOSED_INTERVAL_AS_CONVEX_HULL   (hash md5:63ede07ffeaa1f7dc2e506fda505b036)
Theorem hlt_CLOSED_INTERVAL_AS_CONVEX_HULL : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, exists s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_hull (hl_ty_cart R N) (hl_convex N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:10644 / CONVEX_ON_SECANTS_1_IMP   (hash md5:3768bb01b98fb55b601f1cc73cb3f790)
Theorem hlt_CONVEX_ON_SECANTS_1_IMP : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, forall a b c d :e hl_ty_cart R 1, hl_convex_on 1 f s = 1 /\ (hl_IN (hl_ty_cart R 1) a s = 1 /\ (hl_IN (hl_ty_cart R 1) b s = 1 /\ (hl_IN (hl_ty_cart R 1) c s = 1 /\ (hl_IN (hl_ty_cart R 1) d s = 1 /\ (hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (hl_real_le (hl_drop b) (hl_drop c) = 1 /\ hl_real_lt (hl_drop c) (hl_drop d) = 1)))))) -> hl_real_le (hl_real_div (hl_real_sub (f b) (f a)) (hl_real_sub (hl_drop b) (hl_drop a))) (hl_real_div (hl_real_sub (f d) (f c)) (hl_real_sub (hl_drop d) (hl_drop c))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10670 / CONVEX_ON_SECANTS_1   (hash md5:0463784c542821493fbcb2809e1edec7)
Theorem hlt_CONVEX_ON_SECANTS_1 : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_is_interval 1 s = 1 -> (hl_convex_on 1 f s = 1 <-> forall a b c d :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) a s = 1 /\ (hl_IN (hl_ty_cart R 1) b s = 1 /\ (hl_IN (hl_ty_cart R 1) c s = 1 /\ (hl_IN (hl_ty_cart R 1) d s = 1 /\ (hl_real_lt (hl_drop a) (hl_drop b) = 1 /\ (hl_real_le (hl_drop b) (hl_drop c) = 1 /\ hl_real_lt (hl_drop c) (hl_drop d) = 1))))) -> hl_real_le (hl_real_div (hl_real_sub (f b) (f a)) (hl_real_sub (hl_drop b) (hl_drop a))) (hl_real_div (hl_real_sub (f d) (f c)) (hl_real_sub (hl_drop d) (hl_drop c))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:10705 / starlike   (hash md5:a60bf5e0b894e220030f37ebb6436d9c)
Theorem hlt_starlike_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_starlike A s = 1 <-> exists a :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) a s = 1 /\ forall x :e hl_ty_cart R A, hl_IN (hl_ty_cart R A) x s = 1 -> hl_SUBSET (hl_ty_cart R A) (hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a x) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10708 / CONVEX_IMP_STARLIKE   (hash md5:b8de50490ffbb63f3e00bf5e4a67f93b)
Theorem hlt_CONVEX_IMP_STARLIKE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R A) -> hl_starlike A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10713 / CONIC_IMP_STARLIKE   (hash md5:a5e914ad197b32101febd49bc545d8dd)
Theorem hlt_CONIC_IMP_STARLIKE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_conic N s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_starlike N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10723 / SEGMENT_CONVEX_HULL   (hash md5:425735a37990dec5bd999cd94fcce3d8)
Theorem hlt_SEGMENT_CONVEX_HULL : forall A:set, A <> Empty -> forall a b :e hl_ty_cart R A, hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))) = hl_hull (hl_ty_cart R A) (hl_convex A) (hl_INSERT (hl_ty_cart R A) a (hl_INSERT (hl_ty_cart R A) b (hl_EMPTY (hl_ty_cart R A)))).
Admitted.

// HOL Light: Multivariate/convex.ml:10735 / CONTINUOUS_INCREASING_IMAGE_INTERVAL_1   (hash md5:7369fa286a0027cb9bea8270e8b1cc4e)
Theorem hlt_CONTINUOUS_INCREASING_IMAGE_INTERVAL_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1)) -> hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f a) (f b)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:10755 / CONTINUOUS_DECREASING_IMAGE_INTERVAL_1   (hash md5:0ccd4d9735661ca2f50e54eb70cedfc4)
Theorem hlt_CONTINUOUS_DECREASING_IMAGE_INTERVAL_1 : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, ~ hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))) = hl_EMPTY (hl_ty_cart R 1) /\ (hl_continuous_on 1 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f y)) (hl_drop (f x)) = 1)) -> hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (f b) (f a)) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:10775 / SEGMENT_FURTHEST_LE   (hash md5:bb082b36c3d9ca255262e9cad6843c25)
Theorem hlt_SEGMENT_FURTHEST_LE : forall N:set, N <> Empty -> forall a b x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N y x)) (hl_vector_norm N (hl_vector_sub N y a)) = 1 \/ hl_real_le (hl_vector_norm N (hl_vector_sub N y x)) (hl_vector_norm N (hl_vector_sub N y b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10786 / SEGMENT_BOUND   (hash md5:23c3768d92323b46e4e3121face17acc)
Theorem hlt_SEGMENT_BOUND : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N x a)) (hl_vector_norm N (hl_vector_sub N b a)) = 1 /\ hl_real_le (hl_vector_norm N (hl_vector_sub N x b)) (hl_vector_norm N (hl_vector_sub N b a)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10797 / BETWEEN_IN_CONVEX_HULL   (hash md5:7047be98e0924d1151ea822ae1630d49)
Theorem hlt_BETWEEN_IN_CONVEX_HULL : forall N:set, N <> Empty -> forall x a b :e hl_ty_cart R N, hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1 <-> hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10801 / STARLIKE_LINEAR_IMAGE   (hash md5:071020dc0639f06c135433f380795ded)
Theorem hlt_STARLIKE_LINEAR_IMAGE : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_starlike A s = 1 /\ hl_linear A B f = 1 -> hl_starlike B (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R B) f s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10806 / STARLIKE_LINEAR_IMAGE_EQ   (hash md5:2e470797db1bbcf9eb9edb8e73e37115)
Theorem hlt_STARLIKE_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R A :^: hl_ty_cart R B, forall s :e 2 :^: hl_ty_cart R B, hl_linear B A f = 1 /\ (forall x y :e hl_ty_cart R B, f x = f y -> x = y) -> (hl_starlike A (hl_IMAGE (hl_ty_cart R B) (hl_ty_cart R A) f s) = 1 <-> hl_starlike B s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:10813 / STARLIKE_TRANSLATION_EQ   (hash md5:105b9c6e6fcf9b99d5124bc9567577ac)
Theorem hlt_STARLIKE_TRANSLATION_EQ : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall s :e 2 :^: hl_ty_cart R A, hl_starlike A (hl_IMAGE (hl_ty_cart R A) (hl_ty_cart R A) (fun x :e hl_ty_cart R A => hl_vector_add A a x) s) = 1 <-> hl_starlike A s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10819 / BETWEEN_LINEAR_IMAGE_EQ   (hash md5:3053bc6e52c6ecee8605846616af2b1e)
Theorem hlt_BETWEEN_LINEAR_IMAGE_EQ : forall A B:set, A <> Empty -> B <> Empty -> forall f :e hl_ty_cart R B :^: hl_ty_cart R A, forall x y z :e hl_ty_cart R A, hl_linear A B f = 1 /\ (forall x1 y1 :e hl_ty_cart R A, f x1 = f y1 -> x1 = y1) -> (hl_between B (f x) (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) (f y) (f z)) = 1 <-> hl_between A x (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) y z) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:10826 / STARLIKE_CLOSURE   (hash md5:50d47e1344275c00daf73eefdc4101ae)
Theorem hlt_STARLIKE_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_starlike N s = 1 -> hl_starlike N (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10845 / STARLIKE_UNIV   (hash md5:770d3509d6c7a0bb67ed01b645c3fe03)
Theorem hlt_STARLIKE_UNIV : forall N:set, N <> Empty -> hl_starlike N (hl_UNIV (hl_ty_cart R N)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10850 / STARLIKE_PCROSS   (hash md5:84bf1ccedcf5b5d540b160190ff51239)
Theorem hlt_STARLIKE_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_starlike M s = 1 /\ hl_starlike N t = 1 -> hl_starlike (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10861 / STARLIKE_PCROSS_EQ   (hash md5:3a2f3849e09e37169cb5d8c4953753f7)
Theorem hlt_STARLIKE_PCROSS_EQ : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_starlike (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = 1 <-> hl_starlike M s = 1 /\ hl_starlike N t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10883 / BETWEEN_DIST_LT   (hash md5:34614556e697067e7d93deb0ad5f0a35)
Theorem hlt_BETWEEN_DIST_LT : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall r :e R, forall a b c :e hl_ty_cart R N, hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c a)) r = 1 /\ (hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c b)) r = 1 /\ hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1) -> hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c x)) r = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10892 / BETWEEN_DIST_LE   (hash md5:d508a8192fec1b398e55a43a45d836c5)
Theorem hlt_BETWEEN_DIST_LE : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall r :e R, forall a b c :e hl_ty_cart R N, hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c a)) r = 1 /\ (hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c b)) r = 1 /\ hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1) -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c x)) r = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10902 / BETWEEN_NORM_LT   (hash md5:deefd30dc7290ca22a4742fb9fc6c5fd)
Theorem hlt_BETWEEN_NORM_LT : forall N:set, N <> Empty -> forall r :e R, forall a b x :e hl_ty_cart R N, hl_real_lt (hl_vector_norm N a) r = 1 /\ (hl_real_lt (hl_vector_norm N b) r = 1 /\ hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1) -> hl_real_lt (hl_vector_norm N x) r = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10907 / BETWEEN_NORM_LE   (hash md5:da216b1f6499e2505e7a26172fd697a9)
Theorem hlt_BETWEEN_NORM_LE : forall N:set, N <> Empty -> forall r :e R, forall a b x :e hl_ty_cart R N, hl_real_le (hl_vector_norm N a) r = 1 /\ (hl_real_le (hl_vector_norm N b) r = 1 /\ hl_between N x (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = 1) -> hl_real_le (hl_vector_norm N x) r = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10912 / UNION_SEGMENT   (hash md5:a2317c2ae2304148f41970cee34731c4)
Theorem hlt_UNION_SEGMENT : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 -> hl_UNION (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b c) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/convex.ml:10924 / CONVEX_STARCENTRES   (hash md5:aaf510e0db14a94ac71b5b45fae8177d)
Theorem hlt_CONVEX_STARCENTRES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4974 :e hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4974 (if hl_IN (hl_ty_cart R N) a s = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) s = 1 then 1 else 0) a = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:10945 / MIDPOINT_CONVEX_SET   (hash md5:1a3d54a7dfae6c3adfaeb06b2a61a3d4)
Theorem hlt_MIDPOINT_CONVEX_SET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 \/ hl_closed N s = 1 -> (hl_convex N s = 1 <-> forall a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ hl_IN (hl_ty_cart R N) b s = 1 -> hl_IN (hl_ty_cart R N) (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:11046 / COLLINEAR_DESCALE   (hash md5:238f7ed648a72d836ce3f9724305a616)
Theorem hlt_COLLINEAR_DESCALE : forall N:set, N <> Empty -> forall a b c :e R, forall x y z :e hl_ty_cart R N, ~ a = hl_real_of_num (hl_NUMERAL hl_zero) /\ (~ c = hl_real_of_num (hl_NUMERAL hl_zero) /\ (hl_collinear N (hl_INSERT (hl_ty_cart R N) (hl_vmul N a x) (hl_INSERT (hl_ty_cart R N) (hl_vmul N b y) (hl_INSERT (hl_ty_cart R N) (hl_vmul N c z) (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_INSERT (hl_ty_cart R N) z (hl_EMPTY (hl_ty_cart R N)))))) = 1)) -> hl_collinear N (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_INSERT (hl_ty_cart R N) z (hl_EMPTY (hl_ty_cart R N))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11067 / CLOSED_SEGMENT_DESCALE   (hash md5:8b2e1df0b8f5a1f3b620f6dd9f340e08)
Theorem hlt_CLOSED_SEGMENT_DESCALE : forall N:set, N <> Empty -> forall a b c :e R, forall x y z :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) b = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vmul N b y) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N a x) (hl_vmul N c z)) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_INSERT (hl_ty_cart R N) z (hl_EMPTY (hl_ty_cart R N)))))) = 1))) -> hl_IN (hl_ty_cart R N) y (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x z) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11099 / OPEN_SEGMENT_DESCALE   (hash md5:c80b6dfeb5bf9a6e500505f3a15de733)
Theorem hlt_OPEN_SEGMENT_DESCALE : forall N:set, N <> Empty -> forall a b c :e R, forall x y z :e hl_ty_cart R N, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) a = 1 /\ (hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) b = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) c = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vmul N b y) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N a x) (hl_vmul N c z))) = 1 /\ (~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) x (hl_INSERT (hl_ty_cart R N) y (hl_INSERT (hl_ty_cart R N) z (hl_EMPTY (hl_ty_cart R N)))))) = 1 /\ ~ (x = y /\ z = y))))) -> hl_IN (hl_ty_cart R N) y (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x z)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11144 / IN_INTERIOR_CONVEX_SHRINK   (hash md5:6562d97c89e3c9dcbdb22910cc0dcdc1)
Theorem hlt_IN_INTERIOR_CONVEX_SHRINK : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, forall x c :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) c (hl_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_le e1 (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1))) -> hl_IN (hl_ty_cart R N) (hl_vector_sub N x (hl_vmul N e1 (hl_vector_sub N x c))) (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11174 / IN_INTERIOR_CLOSURE_CONVEX_SHRINK   (hash md5:97dfffa1eb96c228bc05f58f7059c2fc)
Theorem hlt_IN_INTERIOR_CLOSURE_CONVEX_SHRINK : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, forall x c :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) c (hl_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_closure N s) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_le e1 (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1))) -> hl_IN (hl_ty_cart R N) (hl_vector_sub N x (hl_vmul N e1 (hl_vector_sub N x c))) (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11220 / IN_INTERIOR_CLOSURE_CONVEX_SEGMENT   (hash md5:7dd36aff39ee2daade5d0396a8f5ff1e)
Theorem hlt_IN_INTERIOR_CLOSURE_CONVEX_SEGMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_closure N s) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11234 / relative_interior   (hash md5:37eddb15cabdba3e800a79972ec18f38)
Theorem hlt_relative_interior_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_relative_interior A s = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4975 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4975 (if exists t :e 2 :^: hl_ty_cart R A, hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) (hl_hull (hl_ty_cart R A) (hl_affine A) s)) t = 1 /\ (hl_IN (hl_ty_cart R A) x t = 1 /\ hl_SUBSET (hl_ty_cart R A) t s = 1) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:11239 / relative_frontier   (hash md5:b87ec9b836401eea23dc0eee62e41317)
Theorem hlt_relative_frontier_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_relative_frontier A s = hl_DIFF (hl_ty_cart R A) (hl_closure A s) (hl_relative_interior A s).
Admitted.

// HOL Light: Multivariate/convex.ml:11242 / RELATIVE_INTERIOR_INTERIOR_OF   (hash md5:1f65cf53652208236dcf25e9369c88c3)
Theorem hlt_RELATIVE_INTERIOR_INTERIOR_OF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_relative_interior N s = hl_interior_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:11248 / RELATIVE_FRONTIER_FRONTIER_OF   (hash md5:ac40af594bf74c4794b45094b824f963)
Theorem hlt_RELATIVE_FRONTIER_FRONTIER_OF : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_relative_frontier N s = hl_frontier_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:11259 / RELATIVE_INTERIOR   (hash md5:1c2ae86acb4c8f75b1fb9f267d731599)
Theorem hlt_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_relative_interior A s = hl_GSPEC (hl_ty_cart R A) (fun GEN_PVAR_4976 :e hl_ty_cart R A => if exists x :e hl_ty_cart R A, hl_SETSPEC (hl_ty_cart R A) GEN_PVAR_4976 (if hl_IN (hl_ty_cart R A) x s = 1 /\ exists t :e 2 :^: hl_ty_cart R A, hl_open A t = 1 /\ (hl_IN (hl_ty_cart R A) x t = 1 /\ hl_SUBSET (hl_ty_cart R A) (hl_INTER (hl_ty_cart R A) t (hl_hull (hl_ty_cart R A) (hl_affine A) s)) s = 1) then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:11270 / RELATIVE_INTERIOR_EQ   (hash md5:90410948b9f3411baddad03cf294b026)
Theorem hlt_RELATIVE_INTERIOR_EQ : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_relative_interior A s = s <-> hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) (hl_hull (hl_ty_cart R A) (hl_affine A) s)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11276 / RELATIVE_INTERIOR_OPEN_IN   (hash md5:08df57f6286462b5cce555ca306a0dcd)
Theorem hlt_RELATIVE_INTERIOR_OPEN_IN : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) (hl_hull (hl_ty_cart R A) (hl_affine A) s)) s = 1 -> hl_relative_interior A s = s.
Admitted.

// HOL Light: Multivariate/convex.ml:11281 / RELATIVE_INTERIOR_EMPTY   (hash md5:cff85e45b78c4e6d4eeafb428c22f32b)
Theorem hlt_RELATIVE_INTERIOR_EMPTY : forall A:set, A <> Empty -> hl_relative_interior A (hl_EMPTY (hl_ty_cart R A)) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:11285 / RELATIVE_FRONTIER_EMPTY   (hash md5:bdecb5b3cdcc23c724a4ea3e2afb048b)
Theorem hlt_RELATIVE_FRONTIER_EMPTY : forall A:set, A <> Empty -> hl_relative_frontier A (hl_EMPTY (hl_ty_cart R A)) = hl_EMPTY (hl_ty_cart R A).
Admitted.

// HOL Light: Multivariate/convex.ml:11289 / RELATIVE_INTERIOR_AFFINE   (hash md5:baeb12427768ac50c4d9b7c26511eb45)
Theorem hlt_RELATIVE_INTERIOR_AFFINE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_affine N s = 1 -> hl_relative_interior N s = s.
Admitted.

// HOL Light: Multivariate/convex.ml:11294 / RELATIVE_INTERIOR_UNIV   (hash md5:9e9ed5eeda52842268d9be6d866ae131)
Theorem hlt_RELATIVE_INTERIOR_UNIV : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_relative_interior A (hl_hull (hl_ty_cart R A) (hl_affine A) s) = hl_hull (hl_ty_cart R A) (hl_affine A) s.
Admitted.

// HOL Light: Multivariate/convex.ml:11300 / OPEN_IN_RELATIVE_INTERIOR   (hash md5:211472f38ba876516b41972bbcb343ba)
Theorem hlt_OPEN_IN_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) (hl_hull (hl_ty_cart R A) (hl_affine A) s)) (hl_relative_interior A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11307 / RELATIVE_INTERIOR_SUBSET   (hash md5:9bd3de8fef55e33ca20283350a244190)
Theorem hlt_RELATIVE_INTERIOR_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_relative_interior A s) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11311 / RELATIVE_FRONTIER_SUBSET   (hash md5:5697c36d627d7f1ac35b4e52d9cf569a)
Theorem hlt_RELATIVE_FRONTIER_SUBSET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_relative_frontier N s) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11315 / RELATIVE_FRONTIER_SUBSET_EQ   (hash md5:9027637cd731dd7b5a7bf5e3d01067b1)
Theorem hlt_RELATIVE_FRONTIER_SUBSET_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_relative_frontier N s) s = 1 <-> hl_closed N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11320 / BOUNDED_RELATIVE_INTERIOR   (hash md5:04a10a9d2e52b4c95212b3bfd07a754b)
Theorem hlt_BOUNDED_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_bounded N (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11324 / OPEN_IN_SET_RELATIVE_INTERIOR   (hash md5:8fdf5e6cbdf1bd7250e548d38c8f7ae8)
Theorem hlt_OPEN_IN_SET_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11331 / SUBSET_RELATIVE_INTERIOR   (hash md5:5ac4c36a400638d955e250b06b3589cd)
Theorem hlt_SUBSET_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) s t = 1 /\ hl_hull (hl_ty_cart R A) (hl_affine A) s = hl_hull (hl_ty_cart R A) (hl_affine A) t -> hl_SUBSET (hl_ty_cart R A) (hl_relative_interior A s) (hl_relative_interior A t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11336 / RELATIVE_INTERIOR_CLOSURE_SUBSET   (hash md5:8eb5f3449cc00abcb5b110fbe3981e7d)
Theorem hlt_RELATIVE_INTERIOR_CLOSURE_SUBSET : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_relative_interior A s) (hl_relative_interior A (hl_closure A s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11341 / RELATIVE_INTERIOR_MAXIMAL   (hash md5:bffd3334eb6ce2c2fe899ffbbb351cd3)
Theorem hlt_RELATIVE_INTERIOR_MAXIMAL : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) t s = 1 /\ hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) (hl_hull (hl_ty_cart R A) (hl_affine A) s)) t = 1 -> hl_SUBSET (hl_ty_cart R A) t (hl_relative_interior A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11347 / RELATIVE_INTERIOR_UNIQUE   (hash md5:56f2d1d7ec3a33016ac1e35ca955a754)
Theorem hlt_RELATIVE_INTERIOR_UNIQUE : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) t s = 1 /\ (hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) (hl_hull (hl_ty_cart R A) (hl_affine A) s)) t = 1 /\ (forall t' :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) t' s = 1 /\ hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) (hl_hull (hl_ty_cart R A) (hl_affine A) s)) t' = 1 -> hl_SUBSET (hl_ty_cart R A) t' t = 1)) -> hl_relative_interior A s = t.
Admitted.

// HOL Light: Multivariate/convex.ml:11357 / IN_RELATIVE_INTERIOR   (hash md5:6b710e5af5ca3f6cfc11a79ab780b97c)
Theorem hlt_IN_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 <-> hl_IN (hl_ty_cart R N) x s = 1 /\ exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R x e1)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11370 / IN_RELATIVE_INTERIOR_CBALL   (hash md5:dc146566eb28ef89ae638aa2633fa0e1)
Theorem hlt_IN_RELATIVE_INTERIOR_CBALL : forall N:set, N <> Empty -> forall x :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 <-> hl_IN (hl_ty_cart R N) x s = 1 /\ exists e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R x e1)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11389 / RELATIVE_INTERIOR_CONVEX_INTER_OPEN   (hash md5:f7729650d0d75dd9643ed65383092966)
Theorem hlt_RELATIVE_INTERIOR_CONVEX_INTER_OPEN : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_open N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N)) -> hl_relative_interior N (hl_INTER (hl_ty_cart R N) s t) = hl_INTER (hl_ty_cart R N) (hl_relative_interior N s) t.
Admitted.

// HOL Light: Multivariate/convex.ml:11405 / CONIC_HULL_EQ_AFFINE_HULL   (hash md5:a6b82d37a1fb60db42e68ccb901ff284)
Theorem hlt_CONIC_HULL_EQ_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 -> hl_hull (hl_ty_cart R N) (hl_conic N) s = hl_hull (hl_ty_cart R N) (hl_affine N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:11405 / CONIC_HULL_EQ_SPAN   (hash md5:8f0e7b6af6a0e6469226426e13b1bec8)
Theorem hlt_CONIC_HULL_EQ_SPAN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 -> hl_hull (hl_ty_cart R N) (hl_conic N) s = hl_span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11431 / CONIC_HULL_EQ_SPAN_EQ   (hash md5:66e49ee1c041fc8e817a65bbba73fefb)
Theorem hlt_CONIC_HULL_EQ_SPAN_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_conic N) s)) = 1 <-> hl_hull (hl_ty_cart R N) (hl_conic N) s = hl_span N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11439 / OPEN_IN_SUBSET_RELATIVE_INTERIOR   (hash md5:a20e46c12074f8c9769d012bf4edbd48)
Theorem hlt_OPEN_IN_SUBSET_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_open_in (hl_ty_cart R A) (hl_subtopology (hl_ty_cart R A) (hl_euclidean A) (hl_hull (hl_ty_cart R A) (hl_affine A) t)) s = 1 -> (hl_SUBSET (hl_ty_cart R A) s (hl_relative_interior A t) = 1 <-> hl_SUBSET (hl_ty_cart R A) s t = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:11445 / RELATIVE_INTERIOR_TRANSLATION   (hash md5:ca83884b3f5a9b57dc4b0c1e60ab39cd)
Theorem hlt_RELATIVE_INTERIOR_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_relative_interior N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) (hl_relative_interior N s).
Admitted.

// HOL Light: Multivariate/convex.ml:11453 / RELATIVE_FRONTIER_TRANSLATION   (hash md5:25d53785bc09bcc9134f97bcf75f3009)
Theorem hlt_RELATIVE_FRONTIER_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_relative_frontier N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) (hl_relative_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:11461 / RELATIVE_INTERIOR_INJECTIVE_LINEAR_IMAGE   (hash md5:d5513150b5eb91e33e6969bb0ac3ea5f)
Theorem hlt_RELATIVE_INTERIOR_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_relative_interior N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_relative_interior M s).
Admitted.

// HOL Light: Multivariate/convex.ml:11474 / RELATIVE_FRONTIER_INJECTIVE_LINEAR_IMAGE   (hash md5:f572e999f88d0f2a2a9758cd321336a4)
Theorem hlt_RELATIVE_FRONTIER_INJECTIVE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_relative_frontier N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_relative_frontier M s).
Admitted.

// HOL Light: Multivariate/convex.ml:11482 / RELATIVE_INTERIOR_RELATIVE_INTERIOR   (hash md5:6f51efc7421167f7f2e1428b8f0fc2b3)
Theorem hlt_RELATIVE_INTERIOR_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_relative_interior N (hl_relative_interior N s) = hl_relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11503 / RELATIVE_INTERIOR_EQ_EMPTY   (hash md5:26f8537aa9558047217fc6fcf880d86c)
Theorem hlt_RELATIVE_INTERIOR_EQ_EMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> (hl_relative_interior N s = hl_EMPTY (hl_ty_cart R N) <-> s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:11581 / AFF_DIM_NONEMPTY_INTERIOR_OF_EQ   (hash md5:26f17a9ce9256b732c3dad1cc1b09b6b)
Theorem hlt_AFF_DIM_NONEMPTY_INTERIOR_OF_EQ : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_affine N u = 1 /\ hl_SUBSET (hl_ty_cart R N) s u = 1) -> (hl_aff_dim N s = hl_aff_dim N u <-> s = hl_EMPTY (hl_ty_cart R N) /\ u = hl_EMPTY (hl_ty_cart R N) \/ ~ hl_interior_of (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:11598 / RELATIVE_INTERIOR_INTERIOR   (hash md5:d206b14ffd1e566fc3b3c4c2c6fa28a8)
Theorem hlt_RELATIVE_INTERIOR_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N) -> hl_relative_interior N s = hl_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11603 / RELATIVE_INTERIOR_OPEN   (hash md5:a3849b205ef7e04f2aab1fd488efae0a)
Theorem hlt_RELATIVE_INTERIOR_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_relative_interior N s = s.
Admitted.

// HOL Light: Multivariate/convex.ml:11609 / RELATIVE_INTERIOR_NONEMPTY_INTERIOR   (hash md5:5cd9fb4622c23bf78a6b1d067216d943)
Theorem hlt_RELATIVE_INTERIOR_NONEMPTY_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, ~ hl_interior A s = hl_EMPTY (hl_ty_cart R A) -> hl_relative_interior A s = hl_interior A s.
Admitted.

// HOL Light: Multivariate/convex.ml:11613 / RELATIVE_FRONTIER_NONEMPTY_INTERIOR   (hash md5:c0ee5df6ed1e28d19883ee100659f968)
Theorem hlt_RELATIVE_FRONTIER_NONEMPTY_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, ~ hl_interior A s = hl_EMPTY (hl_ty_cart R A) -> hl_relative_frontier A s = hl_frontier A s.
Admitted.

// HOL Light: Multivariate/convex.ml:11617 / RELATIVE_FRONTIER_FRONTIER   (hash md5:cb7563545cb11686cef1e317c698482d)
Theorem hlt_RELATIVE_FRONTIER_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N) -> hl_relative_frontier N s = hl_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11621 / RELATIVE_FRONTIER_OPEN   (hash md5:f7b8d659ff4feb46e813bc2ac145533d)
Theorem hlt_RELATIVE_FRONTIER_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 -> hl_relative_frontier N s = hl_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:11628 / AFFINE_HULL_CONVEX_HULL   (hash md5:eb52a6210c96663df6f6db573ee9cc4f)
Theorem hlt_AFFINE_HULL_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_hull (hl_ty_cart R A) (hl_affine A) (hl_hull (hl_ty_cart R A) (hl_convex A) s) = hl_hull (hl_ty_cart R A) (hl_affine A) s.
Admitted.

// HOL Light: Multivariate/convex.ml:11635 / INTERIOR_SIMPLEX_NONEMPTY   (hash md5:81d5030f33835f50bc869bd4a4346d7b)
Theorem hlt_INTERIOR_SIMPLEX_NONEMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_independent N s = 1 /\ hl_HAS_SIZE (hl_ty_cart R N) s (hl_dimindex N (hl_UNIV N)) = 1 -> exists a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11657 / INTERIOR_SUBSET_RELATIVE_INTERIOR   (hash md5:7d2e8e17d155252acc3e41823536e198)
Theorem hlt_INTERIOR_SUBSET_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_SUBSET (hl_ty_cart R A) (hl_interior A s) (hl_relative_interior A s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11662 / RELATIVE_FRONTIER_SUBSET_FRONTIER   (hash md5:19c9a24d5800c526a924dc05279774de)
Theorem hlt_RELATIVE_FRONTIER_SUBSET_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_relative_frontier N s) (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11668 / CONVEX_RELATIVE_INTERIOR   (hash md5:3d42cd60a2d55f64640aba94fd86c01a)
Theorem hlt_CONVEX_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_convex N (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11694 / IN_RELATIVE_INTERIOR_CONVEX_SHRINK   (hash md5:7b9323316567049b560e5bc1675c57ca)
Theorem hlt_IN_RELATIVE_INTERIOR_CONVEX_SHRINK : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, forall x c :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) c (hl_relative_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_le e1 (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1))) -> hl_IN (hl_ty_cart R N) (hl_vector_sub N x (hl_vmul N e1 (hl_vector_sub N x c))) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11737 / IN_RELATIVE_INTERIOR_CLOSURE_CONVEX_SHRINK   (hash md5:f3911a501666ebb3364087290c46d8d9)
Theorem hlt_IN_RELATIVE_INTERIOR_CLOSURE_CONVEX_SHRINK : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall e1 :e R, forall x c :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) c (hl_relative_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_closure N s) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_le e1 (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1))) -> hl_IN (hl_ty_cart R N) (hl_vector_sub N x (hl_vmul N e1 (hl_vector_sub N x c))) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11798 / IN_RELATIVE_INTERIOR_CLOSURE_CONVEX_SEGMENT   (hash md5:42936251b69e043abac3d4efd857a955)
Theorem hlt_IN_RELATIVE_INTERIOR_CLOSURE_CONVEX_SEGMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_closure N s) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11808 / INTER_RELATIVE_FRONTIER_CONIC_HULL   (hash md5:ab0c03ae5cd253dea881d7e0be703f95)
Theorem hlt_INTER_RELATIVE_FRONTIER_CONIC_HULL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_relative_frontier N s) = 1) -> t = hl_INTER (hl_ty_cart R N) (hl_relative_frontier N s) (hl_hull (hl_ty_cart R N) (hl_conic N) t).
Admitted.

// HOL Light: Multivariate/convex.ml:11841 / INTER_CONVEX_HULL_INSERT_RELATIVE_EXTERIOR   (hash md5:debf3d4d278b1a2630c4eff902ea8fe7)
Theorem hlt_INTER_CONVEX_HULL_INSERT_RELATIVE_EXTERIOR : forall N:set, N <> Empty -> forall c t s :e 2 :^: hl_ty_cart R N, forall z :e hl_ty_cart R N, hl_convex N c = 1 /\ (hl_SUBSET (hl_ty_cart R N) t c = 1 /\ (hl_IN (hl_ty_cart R N) z (hl_relative_interior N c) = 1 /\ hl_DISJOINT (hl_ty_cart R N) s (hl_relative_interior N c) = 1)) -> hl_INTER (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) z t)) = hl_INTER (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_convex N) t).
Admitted.

// HOL Light: Multivariate/convex.ml:11866 / CONVEX_OPEN_SEGMENT_CASES   (hash md5:82b045e2ee1cbcf2071839f7da5ef0c3)
Theorem hlt_CONVEX_OPEN_SEGMENT_CASES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_closure N s) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_closure N s) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_relative_frontier N s) = 1 \/ hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11886 / CONVEX_OPEN_SEGMENT_CASES_ALT   (hash md5:9063210c599a71b9fa8f83e89c8175fa)
Theorem hlt_CONVEX_OPEN_SEGMENT_CASES_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_closure N s) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_closure N s) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_frontier N s) = 1 \/ hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11899 / EXTEND_CONVEX_RELATIVE_FRONTIER_SEGMENT   (hash md5:9500a13cfdc242ecfc7dfa324f3a3051)
Theorem hlt_EXTEND_CONVEX_RELATIVE_FRONTIER_SEGMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_closure N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_closure N s) = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1))) -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11922 / SEGMENT_SUBSET_RELATIVE_FRONTIER_CONVEX   (hash md5:94819190c4fd9c33a4e0961aee4a351b)
Theorem hlt_SEGMENT_SUBSET_RELATIVE_FRONTIER_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b c :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) c (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) (hl_relative_frontier N s) = 1) -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11931 / EXTEND_CONVEX_FRONTIER_SEGMENT   (hash md5:393005de290391c512ff8bbb75f27b23)
Theorem hlt_EXTEND_CONVEX_FRONTIER_SEGMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_closure N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_closure N s) = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1))) -> hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:11954 / RELATIVE_INTERIOR_SING   (hash md5:0cd9185e0f66aecf6e1209f953aa8415)
Theorem hlt_RELATIVE_INTERIOR_SING : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, hl_relative_interior A (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) = hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A)).
Admitted.

// HOL Light: Multivariate/convex.ml:11962 / RELATIVE_FRONTIER_SING   (hash md5:0495974caf5876f4c8dbe36cf9c5539e)
Theorem hlt_RELATIVE_FRONTIER_SING : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_relative_frontier N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:11967 / RELATIVE_INTERIOR_CBALL   (hash md5:69aed58999159391c4caa6ae861050c9)
Theorem hlt_RELATIVE_INTERIOR_CBALL : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall r :e R, hl_relative_interior A (hl_cball A (hl_pair (hl_ty_cart R A) R a r)) = hl_COND (2 :^: hl_ty_cart R A) (if r = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_INSERT (hl_ty_cart R A) a (hl_EMPTY (hl_ty_cart R A))) (hl_ball A (hl_pair (hl_ty_cart R A) R a r)).
Admitted.

// HOL Light: Multivariate/convex.ml:11977 / RELATIVE_INTERIOR_BALL   (hash md5:e3f10f53c3d3855d5ab05a0eba23306c)
Theorem hlt_RELATIVE_INTERIOR_BALL : forall A:set, A <> Empty -> forall a :e hl_ty_cart R A, forall r :e R, hl_relative_interior A (hl_ball A (hl_pair (hl_ty_cart R A) R a r)) = hl_ball A (hl_pair (hl_ty_cart R A) R a r).
Admitted.

// HOL Light: Multivariate/convex.ml:11981 / RELATIVE_FRONTIER_CBALL   (hash md5:625d3ad07c01cfe991406f5885ec947b)
Theorem hlt_RELATIVE_FRONTIER_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_relative_frontier N (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = hl_COND (2 :^: hl_ty_cart R N) (if r = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)).
Admitted.

// HOL Light: Multivariate/convex.ml:11992 / RELATIVE_FRONTIER_BALL   (hash md5:2f7272d15350fa3f37f4b622b0818980)
Theorem hlt_RELATIVE_FRONTIER_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_relative_frontier N (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) = hl_COND (2 :^: hl_ty_cart R N) (if r = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)).
Admitted.

// HOL Light: Multivariate/convex.ml:12004 / DIFFERENT_NORM_3_COLLINEAR_POINTS   (hash md5:e21bc66548c61de8845fa16765d43ac3)
Theorem hlt_DIFFERENT_NORM_3_COLLINEAR_POINTS : forall N:set, N <> Empty -> forall a b x :e hl_ty_cart R N, ~ (hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 /\ (hl_vector_norm N a = hl_vector_norm N b /\ hl_vector_norm N x = hl_vector_norm N b)).
Admitted.

// HOL Light: Multivariate/convex.ml:12025 / OPEN_SEGMENT_SUBSET_BALL   (hash md5:2472490f1e66bc4ae9ff8bcfe71f8015)
Theorem hlt_OPEN_SEGMENT_SUBSET_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, forall u v :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) u (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1 /\ hl_IN (hl_ty_cart R N) v (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) u v)) (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12060 / STARLIKE_CONVEX_TWEAK_BOUNDARY_POINTS   (hash md5:53aa6493f0772c2c8aebd9821ec53fc9)
Theorem hlt_STARLIKE_CONVEX_TWEAK_BOUNDARY_POINTS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) (hl_relative_interior N s) t = 1 /\ hl_SUBSET (hl_ty_cart R N) t (hl_closure N s) = 1)) -> hl_starlike N t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12077 / RELATIVE_INTERIOR_PROLONG   (hash md5:e3370880f48efc3e5f58030d29fed155)
Theorem hlt_RELATIVE_INTERIOR_PROLONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> exists t :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) t = 1 /\ hl_IN (hl_ty_cart R N) (hl_vector_add N y (hl_vmul N t (hl_vector_sub N x y))) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12101 / RELATIVE_INTERIOR_CONVEX_PROLONG   (hash md5:89c93e58cb45a173258cb500348b3c43)
Theorem hlt_RELATIVE_INTERIOR_CONVEX_PROLONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_relative_interior N s = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4977 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4977 (if hl_IN (hl_ty_cart R N) x s = 1 /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> exists t :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) t = 1 /\ hl_IN (hl_ty_cart R N) (hl_vector_add N y (hl_vmul N t (hl_vector_sub N x y))) s = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:12134 / RELATIVE_INTERIOR_EQ_CLOSURE   (hash md5:f94dc5394745fdd4fbcc2ccba9e6f500)
Theorem hlt_RELATIVE_INTERIOR_EQ_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_relative_interior N s = hl_closure N s <-> hl_affine N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12154 / RAY_TO_RELATIVE_FRONTIER   (hash md5:5d4b2c0b1777b9a198791d94c519d090)
Theorem hlt_RAY_TO_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a l :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vector_add N a l) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ ~ l = hl_vec N (hl_NUMERAL hl_zero))) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N d l)) (hl_relative_frontier N s) = 1 /\ forall e1 :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_lt e1 d = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N e1 l)) (hl_relative_interior N s) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12257 / RAY_TO_FRONTIER   (hash md5:2ed6d283e813bb577b154a32becdb3fd)
Theorem hlt_RAY_TO_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a l :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_interior N s) = 1 /\ ~ l = hl_vec N (hl_NUMERAL hl_zero)) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N d l)) (hl_frontier N s) = 1 /\ forall e1 :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ hl_real_lt e1 d = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N e1 l)) (hl_interior N s) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12270 / SEGMENT_TO_RELATIVE_FRONTIER   (hash md5:a13ef0761ea592ae43f01e4bbc280369)
Theorem hlt_SEGMENT_TO_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ ~ (x = y /\ s = hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N)))))) -> exists z :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) z (hl_relative_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x z) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x z)) (hl_relative_interior N s) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12318 / SEGMENT_TO_RELATIVE_FRONTIER_SIMPLE   (hash md5:aa10c37d62ccc34c9c051a396c86554b)
Theorem hlt_SEGMENT_TO_RELATIVE_FRONTIER_SIMPLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ ~ s = hl_INSERT (hl_ty_cart R N) x (hl_EMPTY (hl_ty_cart R N))) -> exists a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_relative_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_relative_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12356 / SEGMENT_TO_FRONTIER_SIMPLE   (hash md5:01147e723a746659793d674a28c5aee8)
Theorem hlt_SEGMENT_TO_FRONTIER_SIMPLE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_bounded N s = 1 /\ hl_IN (hl_ty_cart R N) x s = 1 -> exists a b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a (hl_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12394 / SEGMENT_OUT_TO_FRONTIER   (hash md5:5d8c3e2cf912b0447d3e442f9c9bef9d)
Theorem hlt_SEGMENT_OUT_TO_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_closure N s) = 1 /\ ~ b = a) -> exists c :e hl_ty_cart R N, ~ c = a /\ (hl_IN (hl_ty_cart R N) c (hl_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12418 / SUBSET_CONVEX_HULL_RELATIVE_FRONTIER   (hash md5:78e818947c174eff935905660c3e2e45)
Theorem hlt_SUBSET_CONVEX_HULL_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ ~ (exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) -> hl_SUBSET (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_relative_frontier N s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12433 / SUBSET_CONVEX_HULL_FRONTIER   (hash md5:8eb676d39aab65d8d2d070b0f7fae137)
Theorem hlt_SUBSET_CONVEX_HULL_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_SUBSET (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_frontier N s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12447 / AFFINE_HULL_RELATIVE_FRONTIER_BOUNDED   (hash md5:8126b6f3728a478fb7fad92ca793543f)
Theorem hlt_AFFINE_HULL_RELATIVE_FRONTIER_BOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ ~ (exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) -> hl_hull (hl_ty_cart R N) (hl_affine N) (hl_relative_frontier N s) = hl_hull (hl_ty_cart R N) (hl_affine N) s.
Admitted.

// HOL Light: Multivariate/convex.ml:12461 / KREIN_MILMAN_RELATIVE_FRONTIER   (hash md5:32a1f1f69df777d412c9bac2bdf7cfe1)
Theorem hlt_KREIN_MILMAN_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_compact N s = 1 /\ ~ (exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)))) -> s = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_relative_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12471 / KREIN_MILMAN_RELATIVE_BOUNDARY   (hash md5:16f408e1ef1af322b52343b0e21c7c42)
Theorem hlt_KREIN_MILMAN_RELATIVE_BOUNDARY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_compact N s = 1 /\ ~ (exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)))) -> s = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DIFF (hl_ty_cart R N) s (hl_relative_interior N s)).
Admitted.

// HOL Light: Multivariate/convex.ml:12479 / KREIN_MILMAN_FRONTIER   (hash md5:0a255bc0ad33e3fd3a6ab32848656737)
Theorem hlt_KREIN_MILMAN_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_compact N s = 1 -> s = hl_hull (hl_ty_cart R N) (hl_convex N) (hl_frontier N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12488 / RELATIVE_FRONTIER_NOT_SING   (hash md5:10971f70ece14ba7523d5ea06a7afa81)
Theorem hlt_RELATIVE_FRONTIER_NOT_SING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_bounded N s = 1 -> ~ hl_relative_frontier N s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:12526 / RELATIVE_INTERIOR_PCROSS   (hash md5:aa789e400b3637c7f5619f79058405d5)
Theorem hlt_RELATIVE_INTERIOR_PCROSS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_relative_interior (hl_ty_finite_sum M N) (hl_PCROSS R M N s t) = hl_PCROSS R M N (hl_relative_interior M s) (hl_relative_interior N t).
Admitted.

// HOL Light: Multivariate/convex.ml:12553 / RELATIVE_FRONTIER_EQ_EMPTY   (hash md5:3b088825fafff155c38a91b059bb84f7)
Theorem hlt_RELATIVE_FRONTIER_EQ_EMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_relative_frontier N s = hl_EMPTY (hl_ty_cart R N) <-> hl_affine N s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12560 / DIAMETER_BOUNDED_BOUND_LT   (hash md5:d5f5958a2a61f10a924199b08f2f99a2)
Theorem hlt_DIAMETER_BOUNDED_BOUND_LT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_closure N s) = 1 /\ ~ hl_diameter N s = hl_real_of_num (hl_NUMERAL hl_zero))) -> hl_real_lt (hl_vector_norm N (hl_vector_sub N x y)) (hl_diameter N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12607 / DIAMETER_ATTAINED_RELATIVE_FRONTIER   (hash md5:32c1fca00b782157f755a0881d3e4c6c)
Theorem hlt_DIAMETER_ATTAINED_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ ~ hl_diameter N s = hl_real_of_num (hl_NUMERAL hl_zero) -> exists x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_relative_frontier N s) = 1 /\ hl_vector_norm N (hl_vector_sub N x y) = hl_diameter N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12624 / DIAMETER_RELATIVE_FRONTIER   (hash md5:f0ab1a271eae1e909be33199a8aef089)
Theorem hlt_DIAMETER_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ ~ (exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) -> hl_diameter N (hl_relative_frontier N s) = hl_diameter N s.
Admitted.

// HOL Light: Multivariate/convex.ml:12640 / DIAMETER_ATTAINED_FRONTIER   (hash md5:1fcb4854fe1186b14f8b723ac25ed410)
Theorem hlt_DIAMETER_ATTAINED_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ ~ hl_diameter N s = hl_real_of_num (hl_NUMERAL hl_zero) -> exists x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_frontier N s) = 1 /\ hl_vector_norm N (hl_vector_sub N x y) = hl_diameter N s).
Admitted.

// HOL Light: Multivariate/convex.ml:12650 / DIAMETER_FRONTIER   (hash md5:c9708aea456bdc8039383c556eecb499)
Theorem hlt_DIAMETER_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_diameter N (hl_frontier N s) = hl_diameter N s.
Admitted.

// HOL Light: Multivariate/convex.ml:12667 / CLOSEST_POINT_IN_RELATIVE_INTERIOR   (hash md5:beaf0a859bd6acebd6ddc640c4778502)
Theorem hlt_CLOSEST_POINT_IN_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_closed N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_IN (hl_ty_cart R N) x (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1) -> (hl_IN (hl_ty_cart R N) (hl_closest_point N s x) (hl_relative_interior N s) = 1 <-> hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12707 / CLOSEST_POINT_IN_RELATIVE_FRONTIER   (hash md5:75d4bb8a22361aabd20c5bf7a092cc9a)
Theorem hlt_CLOSEST_POINT_IN_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_closed N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_IN (hl_ty_cart R N) x (hl_DIFF (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) s) (hl_relative_interior N s)) = 1) -> hl_IN (hl_ty_cart R N) (hl_closest_point N s x) (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12714 / IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT   (hash md5:69ab0984556d2888c7c4b8463ab10e38)
Theorem hlt_IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ ~ x = a)) -> exists b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12745 / IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT_STRONG   (hash md5:353e21134fe3d8b033fa245ad73b28cf)
Theorem hlt_IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT_STRONG : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x a :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ ~ x = a)) -> exists b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b (hl_relative_interior N s) = 1 /\ hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12768 / IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT_EQ   (hash md5:6a35c497f6d408179f2817357b259fa3)
Theorem hlt_IN_RELATIVE_INTERIOR_IN_OPEN_SEGMENT_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 -> (hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 <-> ~ s = hl_EMPTY (hl_ty_cart R N) /\ forall a :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) a s = 1 /\ ~ a = x -> exists b :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12792 / INTER_RELATIVE_INTERIOR_SUBSET   (hash md5:b52241f5b8226043cfb6c56f43f99376)
Theorem hlt_INTER_RELATIVE_INTERIOR_SUBSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_convex N t = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_relative_interior N s) (hl_relative_interior N t)) (hl_relative_interior N (hl_INTER (hl_ty_cart R N) s t)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12830 / RELATIVE_INTERIOR_INTER   (hash md5:5d06fd8342a9cf96b6fa9a416cc92a23)
Theorem hlt_RELATIVE_INTERIOR_INTER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_relative_interior N s) (hl_relative_interior N t) = hl_EMPTY (hl_ty_cart R N)) -> hl_relative_interior N (hl_INTER (hl_ty_cart R N) s t) = hl_INTER (hl_ty_cart R N) (hl_relative_interior N s) (hl_relative_interior N t).
Admitted.

// HOL Light: Multivariate/convex.ml:12856 / SUBSET_RELATIVE_INTERIOR_INTERSECTING_CONVEX   (hash md5:e9b6e508ca2ee65ac52d6e3910d73b3e)
Theorem hlt_SUBSET_RELATIVE_INTERIOR_INTERSECTING_CONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (hl_SUBSET (hl_ty_cart R N) s t = 1 /\ ~ hl_INTER (hl_ty_cart R N) s (hl_relative_interior N t) = hl_EMPTY (hl_ty_cart R N))) -> hl_SUBSET (hl_ty_cart R N) (hl_relative_interior N s) (hl_relative_interior N t) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12875 / CONVEX_HULL_SPHERE   (hash md5:b4da9f112dd1d6f4e3cb45376da17d30)
Theorem hlt_CONVEX_HULL_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_hull (hl_ty_cart R N) (hl_convex N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = hl_cball N (hl_pair (hl_ty_cart R N) R a r).
Admitted.

// HOL Light: Multivariate/convex.ml:12881 / SPHERE_SUBSET_CONVEX   (hash md5:ff8ca6fb37c038955aff166c7cba3764)
Theorem hlt_SPHERE_SUBSET_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_convex N s = 1 -> (hl_SUBSET (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) s = 1 <-> hl_SUBSET (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:12886 / DIAMETER_SPHERE   (hash md5:9365e37100f8ec9a34a27826c9233348)
Theorem hlt_DIAMETER_SPHERE : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_diameter N (hl_sphere N (hl_pair (hl_ty_cart R N) R a r)) = hl_COND R (hl_real_lt r (hl_real_of_num (hl_NUMERAL hl_zero))) (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) r).
Admitted.

// HOL Light: Multivariate/convex.ml:12895 / CONVEX_NEARBY_IN_SCALING   (hash md5:c5a30223c680151d71d71e7162aadc2a)
Theorem hlt_CONVEX_NEARBY_IN_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall r :e R, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) r = 1) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) -> hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R N => hl_vmul N r x1) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12924 / CONVEX_NEARBY_IN_SCALING_RELATIVE_INTERIOR   (hash md5:f99974e762f67c6561031ccbbde22489)
Theorem hlt_CONVEX_NEARBY_IN_SCALING_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall r :e R, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) r = 1) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1) -> hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R N => hl_vmul N r x1) (hl_relative_interior N s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12959 / CONVEX_NEARBY_NOT_IN_SCALING   (hash md5:04df3dd6d0fdfe4f3a996efa0fc7f351)
Theorem hlt_CONVEX_NEARBY_NOT_IN_SCALING : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall r :e R, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ hl_real_lt r (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1)) -> exists d :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) d = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1 /\ hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1 -> ~ hl_IN (hl_ty_cart R N) y (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x1 :e hl_ty_cart R N => hl_vmul N r x1) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:12993 / IS_INTERVAL_RELATIVE_INTERIOR   (hash md5:bf28deca9d445c6db430e469ff345ecc)
Theorem hlt_IS_INTERVAL_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_is_interval N (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13022 / IS_INTERVAL_INTERIOR   (hash md5:587629bf5976d6bbf187db5b7da0736e)
Theorem hlt_IS_INTERVAL_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_is_interval N (hl_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13029 / IS_INTERVAL_CLOSURE   (hash md5:8ac42d5a3de32f298afa0febcc73fe59)
Theorem hlt_IS_INTERVAL_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_is_interval N s = 1 -> hl_is_interval N (hl_closure N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13076 / CONVEX_PREIMAGE_CONCAVE_SCALING   (hash md5:80aae44facc4b69be04b0011d2dec724)
Theorem hlt_CONVEX_PREIMAGE_CONCAVE_SCALING : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 /\ (hl_convex_on N (fun x :e hl_ty_cart R N => hl_real_neg (f x)) t = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (f x) = 1)))) -> hl_convex N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4982 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4982 (if hl_IN (hl_ty_cart R N) x t = 1 /\ hl_IN (hl_ty_cart R N) (hl_vmul N (hl_real_inv (f x)) x) s = 1 then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13118 / CONVEXITY_PRESERVING_SHRINK_0   (hash md5:2413b01d4759a56c59418fabb0d0e356)
Theorem hlt_CONVEXITY_PRESERVING_SHRINK_0 : forall N:set, N <> Empty -> exists f g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) f g) = 1 /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_conic N) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = hl_hull (hl_ty_cart R N) (hl_conic N) s) /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 -> hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1) /\ ((forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 -> hl_convex N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s) = 1) /\ forall s :e 2 :^: hl_ty_cart R N, hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 -> hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) f s)) = 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:13240 / HAUSDIST_CONVEX_HULLS   (hash md5:c3e5323eb7e0cf535f57fcf240c73177)
Theorem hlt_HAUSDIST_CONVEX_HULLS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ hl_bounded N t = 1 -> hl_real_le (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) s) (hl_hull (hl_ty_cart R N) (hl_convex N) t))) (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13264 / HAUSDIST_SUMS   (hash md5:1e4394b4a2bd2deef8251b633de64fd1)
Theorem hlt_HAUSDIST_SUMS : forall N:set, N <> Empty -> forall s t u :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 /\ (hl_bounded N t = 1 /\ (hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (hl_bounded N u = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (~ t = hl_EMPTY (hl_ty_cart R N) /\ ~ u = hl_EMPTY (hl_ty_cart R N))))))) -> hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4990 :e hl_ty_cart R N => if exists x e1 :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4990 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) e1 u = 1 then 1 else 0) (hl_vector_add N x e1) = 1 then 1 else 0)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4991 :e hl_ty_cart R N => if exists y e1 :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4991 (if hl_IN (hl_ty_cart R N) y t = 1 /\ hl_IN (hl_ty_cart R N) e1 u = 1 then 1 else 0) (hl_vector_add N y e1) = 1 then 1 else 0))) = hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t).
Admitted.

// HOL Light: Multivariate/convex.ml:13319 / HAUSDIST_COMPLEMENTS_CONVEX_EXPLICIT   (hash md5:8d1791a30761e8b7acd0476babc7c834)
Theorem hlt_HAUSDIST_COMPLEMENTS_CONVEX_EXPLICIT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, forall d :e R, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_bounded N t = 1 /\ (~ hl_IN (hl_ty_cart R N) x s = 1 /\ hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) d = 1)))) -> exists y :e hl_ty_cart R N, ~ hl_IN (hl_ty_cart R N) y t = 1 /\ hl_real_lt (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) d = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13382 / HAUSDIST_COMPLEMENTS_CONVEX_LE   (hash md5:3f61e87d325863567cf2f28a491d644a)
Theorem hlt_HAUSDIST_COMPLEMENTS_CONVEX_LE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ (hl_convex N t = 1 /\ (hl_bounded N t = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ ~ t = hl_EMPTY (hl_ty_cart R N))))) -> hl_real_le (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) s) (hl_DIFF (hl_ty_cart R N) (hl_UNIV (hl_ty_cart R N)) t))) (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) s t)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13410 / CONVEX_HAUSDIST_LIMIT   (hash md5:dad2b2565d3ad6e139914ddab8a46d09)
Theorem hlt_CONVEX_HAUSDIST_LIMIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N :^: omega, forall t :e 2 :^: hl_ty_cart R N, hl_eventually omega (fun n :e omega => if hl_bounded N (s n) = 1 /\ (hl_convex N (s n) = 1 /\ ~ s n = hl_EMPTY (hl_ty_cart R N)) then 1 else 0) hl_sequentially = 1 /\ (hl_compact N t = 1 /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (s n) t))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1) -> hl_convex N t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13448 / COMPLETE_HAUSDIST_CONVEX   (hash md5:7d3a0f29e6de276b79ae993e744bec78)
Theorem hlt_COMPLETE_HAUSDIST_CONVEX : forall N:set, N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: omega, forall c :e 2 :^: hl_ty_cart R N, hl_closed N c = 1 /\ ((forall n :e omega, hl_bounded N (f n) = 1 /\ (hl_convex N (f n) = 1 /\ (~ f n = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) (f n) c = 1))) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall m n :e omega, hl_ge m N1 = 1 /\ hl_ge n N1 = 1 -> hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (f m) (f n))) e1 = 1)) -> exists s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) s c = 1 /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (f n) s))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:13465 / COMPLETE_HAUSDIST_CONVEX_UNIV   (hash md5:f2260fb28b53acbc8983f1a54d4a0b30)
Theorem hlt_COMPLETE_HAUSDIST_CONVEX_UNIV : forall N:set, N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: omega, (forall n :e omega, hl_bounded N (f n) = 1 /\ (hl_convex N (f n) = 1 /\ ~ f n = hl_EMPTY (hl_ty_cart R N))) /\ (forall e1 :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 -> exists N1 :e omega, forall m n :e omega, hl_ge m N1 = 1 /\ hl_ge n N1 = 1 -> hl_real_lt (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (f m) (f n))) e1 = 1) -> exists s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 /\ (hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (f n) s))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:13477 / BLASCHKE   (hash md5:84d9cdcd7ddd4f353cf7947bb280e148)
Theorem hlt_BLASCHKE : forall N:set, N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: omega, forall c :e 2 :^: hl_ty_cart R N, hl_compact N c = 1 /\ (forall n :e omega, hl_convex N (f n) = 1 /\ (~ f n = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) (f n) c = 1)) -> exists r :e omega :^: omega, exists s :e 2 :^: hl_ty_cart R N, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ (hl_compact N s = 1 /\ (hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ (hl_SUBSET (hl_ty_cart R N) s c = 1 /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (f (r n)) s))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1)))).
Admitted.

// HOL Light: Multivariate/convex.ml:13495 / BLASCHKE_UNIV   (hash md5:f8ce83ac974a31aea7b5e5341ccea31d)
Theorem hlt_BLASCHKE_UNIV : forall N:set, N <> Empty -> forall f :e 2 :^: hl_ty_cart R N :^: omega, forall c :e 2 :^: hl_ty_cart R N, hl_bounded N c = 1 /\ (forall n :e omega, hl_convex N (f n) = 1 /\ (~ f n = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) (f n) c = 1)) -> exists r :e omega :^: omega, exists s :e 2 :^: hl_ty_cart R N, (forall m n :e omega, hl_lt m n = 1 -> hl_lt (r m) (r n) = 1) /\ (hl_compact N s = 1 /\ (hl_convex N s = 1 /\ (~ s = hl_EMPTY (hl_ty_cart R N) /\ hl_tendsto omega 1 (fun n :e omega => hl_lift (hl_hausdist N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (f (r n)) s))) (hl_vec 1 (hl_NUMERAL hl_zero)) hl_sequentially = 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:13512 / CONVEX_CLOSURE_INTERIOR   (hash md5:7732b2762c76b5af5b137f1a8c3ec234)
Theorem hlt_CONVEX_CLOSURE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> hl_closure N (hl_interior N s) = hl_closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13542 / EMPTY_INTERIOR_SUBSET_HYPERPLANE   (hash md5:bfe45de74773ccc36be0154626333186)
Theorem hlt_EMPTY_INTERIOR_SUBSET_HYPERPLANE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ hl_SUBSET (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_4993 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_4993 (if hl_dot N a x = b then 1 else 0) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13579 / CONVEX_INTERIOR_CLOSURE   (hash md5:e5b2d6d0291bf8154766b1f94464a80f)
Theorem hlt_CONVEX_INTERIOR_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_interior N (hl_closure N s) = hl_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13623 / FRONTIER_CLOSURE_CONVEX   (hash md5:dae9e8c4be87c432846ad4d1dc421ffd)
Theorem hlt_FRONTIER_CLOSURE_CONVEX : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_frontier N (hl_closure N s) = hl_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13627 / CONVEX_CLOSURE_RELATIVE_INTERIOR   (hash md5:8c18d191b802161d729458855dfa02e2)
Theorem hlt_CONVEX_CLOSURE_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_closure N (hl_relative_interior N s) = hl_closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13658 / OPEN_IN_CONVEX_MEETS_RELATIVE_INTERIOR   (hash md5:359f57887f30239c4e40c04cc8b74190)
Theorem hlt_OPEN_IN_CONVEX_MEETS_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_convex N u = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) u) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N)) -> ~ hl_INTER (hl_ty_cart R N) s (hl_relative_interior N u) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:13671 / OPEN_SUBSET_CLOSURE_CONVEX   (hash md5:46f8c86a0b3ae6324da4af8ed3e7ebfc)
Theorem hlt_OPEN_SUBSET_CLOSURE_CONVEX : forall N:set, N <> Empty -> forall u s :e 2 :^: hl_ty_cart R N, hl_open N u = 1 /\ hl_convex N s = 1 -> (hl_SUBSET (hl_ty_cart R N) u (hl_closure N s) = 1 <-> hl_SUBSET (hl_ty_cart R N) u (hl_interior N s) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:13679 / SETDIST_RELATIVE_INTERIOR   (hash md5:4fda9a57b9aa4bc3280b15f200cd4c08)
Theorem hlt_SETDIST_RELATIVE_INTERIOR : forall A B:set, A <> Empty -> B <> Empty -> (forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 -> hl_setdist A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) (hl_relative_interior A s) t) = hl_setdist A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) s t)) /\ forall s t :e 2 :^: hl_ty_cart R B, hl_convex B t = 1 -> hl_setdist B (hl_pair (2 :^: hl_ty_cart R B) (2 :^: hl_ty_cart R B) s (hl_relative_interior B t)) = hl_setdist B (hl_pair (2 :^: hl_ty_cart R B) (2 :^: hl_ty_cart R B) s t).
Admitted.

// HOL Light: Multivariate/convex.ml:13684 / HAUSDIST_RELATIVE_INTERIOR   (hash md5:267710483a3504c281fdf52979a47d9f)
Theorem hlt_HAUSDIST_RELATIVE_INTERIOR : forall A B:set, A <> Empty -> B <> Empty -> (forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 -> hl_hausdist A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) (hl_relative_interior A s) t) = hl_hausdist A (hl_pair (2 :^: hl_ty_cart R A) (2 :^: hl_ty_cart R A) s t)) /\ forall s t :e 2 :^: hl_ty_cart R B, hl_convex B t = 1 -> hl_hausdist B (hl_pair (2 :^: hl_ty_cart R B) (2 :^: hl_ty_cart R B) s (hl_relative_interior B t)) = hl_hausdist B (hl_pair (2 :^: hl_ty_cart R B) (2 :^: hl_ty_cart R B) s t).
Admitted.

// HOL Light: Multivariate/convex.ml:13689 / AFFINE_HULL_RELATIVE_INTERIOR   (hash md5:9764e00a8101dd1f4a36001a7dbab061)
Theorem hlt_AFFINE_HULL_RELATIVE_INTERIOR : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 -> hl_hull (hl_ty_cart R A) (hl_affine A) (hl_relative_interior A s) = hl_hull (hl_ty_cart R A) (hl_affine A) s.
Admitted.

// HOL Light: Multivariate/convex.ml:13694 / AFF_DIM_RELATIVE_INTERIOR   (hash md5:fa498da51a5e7231c54fdf4771eed2c4)
Theorem hlt_AFF_DIM_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_aff_dim N (hl_relative_interior N s) = hl_aff_dim N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13698 / CONVEX_RELATIVE_INTERIOR_CLOSURE   (hash md5:3a0099f33aea8dd75552125cbbb3786f)
Theorem hlt_CONVEX_RELATIVE_INTERIOR_CLOSURE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_relative_interior N (hl_closure N s) = hl_relative_interior N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13744 / RELATIVE_FRONTIER_CLOSURE   (hash md5:8278df09fe76f38801f1096b0f8aa9f6)
Theorem hlt_RELATIVE_FRONTIER_CLOSURE : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 -> hl_relative_frontier A (hl_closure A s) = hl_relative_frontier A s.
Admitted.

// HOL Light: Multivariate/convex.ml:13749 / RELATIVE_FRONTIER_RELATIVE_INTERIOR   (hash md5:443c8ba6d2e21d65afdf4948eae2290a)
Theorem hlt_RELATIVE_FRONTIER_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> hl_relative_frontier N (hl_relative_interior N s) = hl_relative_frontier N s.
Admitted.

// HOL Light: Multivariate/convex.ml:13756 / CONNECTED_INTER_RELATIVE_FRONTIER   (hash md5:af44928f78ebff9d0964db94232ac521)
Theorem hlt_CONNECTED_INTER_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_connected N s = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) t) = 1 /\ (~ hl_INTER (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_DIFF (hl_ty_cart R N) s t = hl_EMPTY (hl_ty_cart R N))) -> ~ hl_INTER (hl_ty_cart R N) s (hl_relative_frontier N t) = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:13783 / CLOSED_RELATIVE_FRONTIER   (hash md5:0483247f44d661462037b3c1e9a7e97b)
Theorem hlt_CLOSED_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_closed N (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13795 / CLOSED_RELATIVE_BOUNDARY   (hash md5:d2d62470e145e1deab7bf9e102471e50)
Theorem hlt_CLOSED_RELATIVE_BOUNDARY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_closed A s = 1 -> hl_closed A (hl_DIFF (hl_ty_cart R A) s (hl_relative_interior A s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13799 / COMPACT_RELATIVE_BOUNDARY   (hash md5:d410a192b86c0186d47214033c825714)
Theorem hlt_COMPACT_RELATIVE_BOUNDARY : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_compact A s = 1 -> hl_compact A (hl_DIFF (hl_ty_cart R A) s (hl_relative_interior A s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13804 / BOUNDED_RELATIVE_FRONTIER   (hash md5:c5a7cdba6bdffad64a03fcf775cc7722)
Theorem hlt_BOUNDED_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_bounded N (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13809 / COMPACT_RELATIVE_FRONTIER_BOUNDED   (hash md5:de1eac62c42ebcf22bd3c0ddeb3102be)
Theorem hlt_COMPACT_RELATIVE_FRONTIER_BOUNDED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_bounded N s = 1 -> hl_compact N (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13814 / COMPACT_RELATIVE_FRONTIER   (hash md5:2a8b296eb100a0cbda2c14163ec3b430)
Theorem hlt_COMPACT_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_compact N s = 1 -> hl_compact N (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:13818 / CONVEX_SAME_RELATIVE_INTERIOR_CLOSURE   (hash md5:2ff35720a7232383cabbec6a4acc6619)
Theorem hlt_CONVEX_SAME_RELATIVE_INTERIOR_CLOSURE : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ hl_convex A t = 1 -> (hl_relative_interior A s = hl_relative_interior A t <-> hl_closure A s = hl_closure A t).
Admitted.

// HOL Light: Multivariate/convex.ml:13825 / CONVEX_SAME_RELATIVE_INTERIOR_CLOSURE_STRADDLE   (hash md5:d2a54df85202f2b461cfcee7df7aa484)
Theorem hlt_CONVEX_SAME_RELATIVE_INTERIOR_CLOSURE_STRADDLE : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ hl_convex A t = 1 -> (hl_relative_interior A s = hl_relative_interior A t <-> hl_SUBSET (hl_ty_cart R A) (hl_relative_interior A s) t = 1 /\ hl_SUBSET (hl_ty_cart R A) t (hl_closure A s) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:13834 / RELATIVE_INTERIOR_LINEAR_IMAGE_CONVEX   (hash md5:fb9ace5ac0d174e581bc16110974b883)
Theorem hlt_RELATIVE_INTERIOR_LINEAR_IMAGE_CONVEX : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ hl_convex M s = 1 -> hl_relative_interior N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f (hl_relative_interior M s).
Admitted.

// HOL Light: Multivariate/convex.ml:13869 / RELATIVE_INTERIOR_LINEAR_PREIMAGE_CONVEX   (hash md5:6bd15800facfe77eaa16943468942f40)
Theorem hlt_RELATIVE_INTERIOR_LINEAR_PREIMAGE_CONVEX : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R N, hl_linear M N f = 1 /\ (hl_convex N s = 1 /\ ~ hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5004 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5004 (hl_IN (hl_ty_cart R N) (f x) (hl_relative_interior N s)) x = 1 then 1 else 0) = hl_EMPTY (hl_ty_cart R M)) -> hl_relative_interior M (hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5005 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5005 (hl_IN (hl_ty_cart R N) (f x) s) x = 1 then 1 else 0)) = hl_GSPEC (hl_ty_cart R M) (fun GEN_PVAR_5006 :e hl_ty_cart R M => if exists x :e hl_ty_cart R M, hl_SETSPEC (hl_ty_cart R M) GEN_PVAR_5006 (hl_IN (hl_ty_cart R N) (f x) (hl_relative_interior N s)) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:13915 / RELATIVE_INTERIOR_SUMS   (hash md5:c97118c32982e5a827ae18d34cce4673)
Theorem hlt_RELATIVE_INTERIOR_SUMS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_convex N t = 1 -> hl_relative_interior N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5008 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5008 (if hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y t = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0)) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5009 :e hl_ty_cart R N => if exists x y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5009 (if hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_relative_interior N t) = 1 then 1 else 0) (hl_vector_add N x y) = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:13933 / CLOSURE_INTERS_CONVEX   (hash md5:e9026a7bb3548750e0f1f5056e8e5764)
Theorem hlt_CLOSURE_INTERS_CONVEX : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1) /\ ~ hl_INTERS (hl_ty_cart R N) (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_relative_interior N) f) = hl_EMPTY (hl_ty_cart R N) -> hl_closure N (hl_INTERS (hl_ty_cart R N) f) = hl_INTERS (hl_ty_cart R N) (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_closure N) f).
Admitted.

// HOL Light: Multivariate/convex.ml:13969 / CLOSURE_INTERS_CONVEX_OPEN   (hash md5:4b25bfdbc8d0abfd2898c8b3df7ba2cd)
Theorem hlt_CLOSURE_INTERS_CONVEX_OPEN : forall N:set, N <> Empty -> forall f :e 2 :^: (2 :^: hl_ty_cart R N), (forall s :e 2 :^: hl_ty_cart R N, hl_IN (2 :^: hl_ty_cart R N) s f = 1 -> hl_convex N s = 1 /\ hl_open N s = 1) -> hl_closure N (hl_INTERS (hl_ty_cart R N) f) = hl_COND (2 :^: hl_ty_cart R N) (if hl_INTERS (hl_ty_cart R N) f = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_INTERS (hl_ty_cart R N) (hl_IMAGE (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_closure N) f)).
Admitted.

// HOL Light: Multivariate/convex.ml:13983 / CLOSURE_INTER_CONVEX   (hash md5:df1e83e8338deac5c459c0da57baab36)
Theorem hlt_CLOSURE_INTER_CONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_relative_interior N s) (hl_relative_interior N t) = hl_EMPTY (hl_ty_cart R N)) -> hl_closure N (hl_INTER (hl_ty_cart R N) s t) = hl_INTER (hl_ty_cart R N) (hl_closure N s) (hl_closure N t).
Admitted.

// HOL Light: Multivariate/convex.ml:13993 / CLOSURE_INTER_CONVEX_OPEN   (hash md5:017a0d62f2bf80bca3a50a674d71bbda)
Theorem hlt_CLOSURE_INTER_CONVEX_OPEN : forall A:set, A <> Empty -> forall s t :e 2 :^: hl_ty_cart R A, hl_convex A s = 1 /\ (hl_open A s = 1 /\ (hl_convex A t = 1 /\ hl_open A t = 1)) -> hl_closure A (hl_INTER (hl_ty_cart R A) s t) = hl_COND (2 :^: hl_ty_cart R A) (if hl_INTER (hl_ty_cart R A) s t = hl_EMPTY (hl_ty_cart R A) then 1 else 0) (hl_EMPTY (hl_ty_cart R A)) (hl_INTER (hl_ty_cart R A) (hl_closure A s) (hl_closure A t)).
Admitted.

// HOL Light: Multivariate/convex.ml:14001 / CLOSURE_CONVEX_INTER_SUPERSET   (hash md5:e0c6360cd9d260f849832545bf5a41b9)
Theorem hlt_CLOSURE_CONVEX_INTER_SUPERSET : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) /\ hl_SUBSET (hl_ty_cart R N) (hl_interior N s) (hl_closure N t) = 1) -> hl_closure N (hl_INTER (hl_ty_cart R N) s t) = hl_closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14014 / CLOSURE_DYADIC_RATIONALS_IN_CONVEX_SET   (hash md5:82a2b34380c526ae17a534f09cf50a97)
Theorem hlt_CLOSURE_DYADIC_RATIONALS_IN_CONVEX_SET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> hl_closure N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5010 :e hl_ty_cart R N => if exists n :e omega, exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5010 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_integer (hl_vindex R N x i) = 1 then 1 else 0) (hl_vmul N (hl_real_inv (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) x) = 1 then 1 else 0))) = hl_closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14024 / CLOSURE_RATIONALS_IN_CONVEX_SET   (hash md5:3f24bdb67acec0afbce774658a3c5b5b)
Theorem hlt_CLOSURE_RATIONALS_IN_CONVEX_SET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) -> hl_closure N (hl_INTER (hl_ty_cart R N) s (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5011 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5011 (if forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_rational (hl_vindex R N x i) = 1 then 1 else 0) x = 1 then 1 else 0))) = hl_closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14033 / RELATIVE_INTERIOR_CONVEX_INTER_AFFINE   (hash md5:b1f2c395015a8f511d1743be7d8d4d45)
Theorem hlt_RELATIVE_INTERIOR_CONVEX_INTER_AFFINE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_affine N t = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_interior N s) t = hl_EMPTY (hl_ty_cart R N)) -> hl_relative_interior N (hl_INTER (hl_ty_cart R N) s t) = hl_INTER (hl_ty_cart R N) (hl_interior N s) t.
Admitted.

// HOL Light: Multivariate/convex.ml:14081 / CONNECTED_WITH_RELATIVE_INTERIOR_OPEN_IN_CONVEX   (hash md5:d2ff18a4b046c1e7541818842e517e53)
Theorem hlt_CONNECTED_WITH_RELATIVE_INTERIOR_OPEN_IN_CONVEX : forall N:set, N <> Empty -> forall c s :e 2 :^: hl_ty_cart R N, hl_convex N c = 1 /\ (hl_connected N s = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) c) s = 1) -> hl_connected N (hl_INTER (hl_ty_cart R N) (hl_relative_interior N c) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14137 / RELATIVE_INTERIOR_CBALL_INTER_AFFINE   (hash md5:9de7435ef9ede7c791a2af22ca1e8d31)
Theorem hlt_RELATIVE_INTERIOR_CBALL_INTER_AFFINE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall r :e R, hl_affine N s = 1 /\ (hl_IN (hl_ty_cart R N) a s = 1 /\ ~ r = hl_real_of_num (hl_NUMERAL hl_zero)) -> hl_relative_interior N (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) s) = hl_INTER (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) s.
Admitted.

// HOL Light: Multivariate/convex.ml:14155 / NONDECREASING_EXTENDS_TO_CONVEX_HULL   (hash md5:6b4fa6704f6826d83ec273e753547dd6)
Theorem hlt_NONDECREASING_EXTENDS_TO_CONVEX_HULL : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_hull (hl_ty_cart R 1) (hl_convex 1) s) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_hull (hl_ty_cart R 1) (hl_convex 1) s) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (g x)) (hl_drop (g y)) = 1) /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> g x = f x.
Admitted.

// HOL Light: Multivariate/convex.ml:14182 / NONDECREASING_EXTENDS_FROM_DENSE   (hash md5:e8d5af0009ab6b17ddea74bcd8e80a5d)
Theorem hlt_NONDECREASING_EXTENDS_FROM_DENSE : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_closure 1 s = hl_UNIV (hl_ty_cart R 1) /\ (hl_closure 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = hl_UNIV (hl_ty_cart R 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (hl_drop (f x)) (hl_drop (f y)) = 1)) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_real_le (hl_drop x) (hl_drop y) = 1 -> hl_real_le (hl_drop (g x)) (hl_drop (g y)) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> g x = f x) /\ (hl_continuous_on 1 1 g (hl_UNIV (hl_ty_cart R 1)) = 1 /\ hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g (hl_UNIV (hl_ty_cart R 1)) = hl_UNIV (hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:14243 / INCREASING_EXTENDS_FROM_DENSE   (hash md5:5559714aa34738c004bb2f76848feac1)
Theorem hlt_INCREASING_EXTENDS_FROM_DENSE : forall f :e hl_ty_cart R 1 :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_closure 1 s = hl_UNIV (hl_ty_cart R 1) /\ (hl_closure 1 (hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) f s) = hl_UNIV (hl_ty_cart R 1) /\ (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ hl_real_lt (hl_drop x) (hl_drop y) = 1) -> hl_real_lt (hl_drop (f x)) (hl_drop (f y)) = 1)) -> exists g :e hl_ty_cart R 1 :^: hl_ty_cart R 1, (forall x y :e hl_ty_cart R 1, hl_real_lt (hl_drop (g x)) (hl_drop (g y)) = 1 <-> hl_real_lt (hl_drop x) (hl_drop y) = 1) /\ ((forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 -> g x = f x) /\ (hl_continuous_on 1 1 g (hl_UNIV (hl_ty_cart R 1)) = 1 /\ hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R 1) g (hl_UNIV (hl_ty_cart R 1)) = hl_UNIV (hl_ty_cart R 1))).
Admitted.

// HOL Light: Multivariate/convex.ml:14286 / BOUNDED_SEGMENT   (hash md5:d65fcecdd870e993ade40706cd28f22d)
Theorem hlt_BOUNDED_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_bounded N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_bounded N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14297 / SEGMENT_IMAGE_INTERVAL   (hash md5:91ee49dbb801b0857ddc548079b0ece1)
Theorem hlt_SEGMENT_IMAGE_INTERVAL : forall A B:set, A <> Empty -> B <> Empty -> (forall a b :e hl_ty_cart R A, hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A))) = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R A) (fun u :e hl_ty_cart R 1 => hl_vector_add A (hl_vmul A (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_drop u)) a) (hl_vmul A (hl_drop u) b)) (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1))))) /\ forall a b :e hl_ty_cart R B, ~ a = b -> hl_open_segment B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b) = hl_IMAGE (hl_ty_cart R 1) (hl_ty_cart R B) (fun u :e hl_ty_cart R 1 => hl_vector_add B (hl_vmul B (hl_real_sub (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) (hl_drop u)) a) (hl_vmul B (hl_drop u) b)) (hl_open_interval 1 (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) (hl_vec 1 (hl_NUMERAL hl_zero)) (hl_vec 1 (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/convex.ml:14309 / CLOSURE_SEGMENT   (hash md5:6ae8674b4f7ed471f2198b4c7361ceda)
Theorem hlt_CLOSURE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_closure N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ forall a b :e hl_ty_cart R N, hl_closure N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_COND (2 :^: hl_ty_cart R N) (if a = b then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))).
Admitted.

// HOL Light: Multivariate/convex.ml:14331 / CLOSED_SEGMENT   (hash md5:60f106b5eec7fee0e2ca7ef5c582ce48)
Theorem hlt_CLOSED_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_closed N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_closed N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> a = b.
Admitted.

// HOL Light: Multivariate/convex.ml:14338 / COMPACT_SEGMENT   (hash md5:3f9607888306721572b40426065d7ecb)
Theorem hlt_COMPACT_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_compact N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_compact N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> a = b.
Admitted.

// HOL Light: Multivariate/convex.ml:14343 / AFFINE_HULL_SEGMENT   (hash md5:f3513899f06d09d389d4193915cb10e6)
Theorem hlt_AFFINE_HULL_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) /\ forall a b :e hl_ty_cart R N, hl_hull (hl_ty_cart R N) (hl_affine N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_COND (2 :^: hl_ty_cart R N) (if a = b then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/convex.ml:14353 / SEGMENT_AS_BALL   (hash md5:68db38111f35d8f2a2e05448870969fa)
Theorem hlt_SEGMENT_AS_BALL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) (hl_cball N (hl_pair (hl_ty_cart R N) R (hl_vmul N (hl_real_inv (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vector_add N a b)) (hl_real_div (hl_vector_norm N (hl_vector_sub N b a)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))))))) /\ forall a b :e hl_ty_cart R N, hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_INTER (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vmul N (hl_real_inv (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_vector_add N a b)) (hl_real_div (hl_vector_norm N (hl_vector_sub N b a)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))))).
Admitted.

// HOL Light: Multivariate/convex.ml:14382 / CONVEX_SEGMENT   (hash md5:6a96d773d0d0a2b376fc87e44c4ad838)
Theorem hlt_CONVEX_SEGMENT : forall A B:set, A <> Empty -> B <> Empty -> (forall a b :e hl_ty_cart R A, hl_convex A (hl_closed_segment A (hl_CONS (hl_ty_cart R A :*: hl_ty_cart R A) (hl_pair (hl_ty_cart R A) (hl_ty_cart R A) a b) (hl_NIL (hl_ty_cart R A :*: hl_ty_cart R A)))) = 1) /\ forall a b :e hl_ty_cart R B, hl_convex B (hl_open_segment B (hl_pair (hl_ty_cart R B) (hl_ty_cart R B) a b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14388 / RELATIVE_INTERIOR_SEGMENT   (hash md5:c587e8eaa2c40b1ea9b5b58dbcc35eaf)
Theorem hlt_RELATIVE_INTERIOR_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_relative_interior N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_COND (2 :^: hl_ty_cart R N) (if a = b then 1 else 0) (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b))) /\ forall a b :e hl_ty_cart R N, hl_relative_interior N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b).
Admitted.

// HOL Light: Multivariate/convex.ml:14407 / OPEN_IN_SEGMENT   (hash md5:76ca9d36cd6ac152f359b97645cca504)
Theorem hlt_OPEN_IN_SEGMENT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) s = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b))) = 1 -> hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) s) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14415 / AFF_DIM_SEGMENT   (hash md5:e448195a75cac12f5b0808256016b61c)
Theorem hlt_AFF_DIM_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_aff_dim N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_COND hl_ty_int (if a = b then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) /\ forall a b :e hl_ty_cart R N, hl_aff_dim N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_COND hl_ty_int (if a = b then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))).
Admitted.

// HOL Light: Multivariate/convex.ml:14427 / CONVEX_SEMIOPEN_SEGMENT   (hash md5:0ad8ace5599dc0eac4b39ae1bbdbc7bc)
Theorem hlt_CONVEX_SEMIOPEN_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_convex N (hl_DELETE (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) a) = 1) /\ forall a b :e hl_ty_cart R N, hl_convex N (hl_DELETE (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) b) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14454 / CONNECTED_SEMIOPEN_SEGMENT   (hash md5:1ec49849d73083670877ed90a64cfc8e)
Theorem hlt_CONNECTED_SEMIOPEN_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_connected N (hl_DELETE (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) a) = 1) /\ forall a b :e hl_ty_cart R N, hl_connected N (hl_DELETE (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) b) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14459 / SEGMENT_EQ_EMPTY   (hash md5:56cfc2ad6b09457b5e8c168abf883ed6)
Theorem hlt_SEGMENT_EQ_EMPTY : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, ~ hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N)) /\ forall a b :e hl_ty_cart R N, hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) <-> a = b.
Admitted.

// HOL Light: Multivariate/convex.ml:14467 / FINITE_SEGMENT   (hash md5:5f431e8e9c97932fed618c0ad4c09e4b)
Theorem hlt_FINITE_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> a = b) /\ forall a b :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1 <-> a = b.
Admitted.

// HOL Light: Multivariate/convex.ml:14484 / SEGMENT_EQ_SING   (hash md5:27cf674eb61480c7a9ff4b1c57fc733d)
Theorem hlt_SEGMENT_EQ_SING : forall N:set, N <> Empty -> (forall a b c :e hl_ty_cart R N, hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N)) <-> a = c /\ b = c) /\ forall a b c :e hl_ty_cart R N, ~ hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:14495 / SEGMENT_SUBSET_RELATIVE_FRONTIER_CONVEX_GEN   (hash md5:1da68d39ff2e840d69e5c254d2be5c9b)
Theorem hlt_SEGMENT_SUBSET_RELATIVE_FRONTIER_CONVEX_GEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b c :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 /\ (~ a = b /\ (~ a = c /\ (~ b = c /\ hl_SUBSET (hl_ty_cart R N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) (hl_relative_frontier N s) = 1)))) -> hl_SUBSET (hl_ty_cart R N) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N)))))) (hl_relative_frontier N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14514 / SUBSET_SEGMENT_OPEN_CLOSED   (hash md5:f730122c0ef92313e1e21e4c1373ac3f)
Theorem hlt_SUBSET_SEGMENT_OPEN_CLOSED : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1 <-> a = b \/ hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14569 / SUBSET_SEGMENT   (hash md5:693bc6ecf94c8b5666ace8a45c5bab4a)
Theorem hlt_SUBSET_SEGMENT : forall N:set, N <> Empty -> (forall a b c d :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> hl_IN (hl_ty_cart R N) a (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ ((forall a b c d :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1 <-> hl_IN (hl_ty_cart R N) a (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1) /\ ((forall a b c d :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 <-> a = b \/ hl_IN (hl_ty_cart R N) a (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b c d :e hl_ty_cart R N, hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) = 1 <-> a = b \/ hl_IN (hl_ty_cart R N) a (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 /\ hl_IN (hl_ty_cart R N) b (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:14594 / INTERIOR_SEGMENT   (hash md5:5387cdc54dee9b0abbb90a8dc0b895ac)
Theorem hlt_INTERIOR_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_interior N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_COND (2 :^: hl_ty_cart R N) (hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) (hl_EMPTY (hl_ty_cart R N)) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b))) /\ forall a b :e hl_ty_cart R N, hl_interior N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_COND (2 :^: hl_ty_cart R N) (hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) (hl_EMPTY (hl_ty_cart R N)) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)).
Admitted.

// HOL Light: Multivariate/convex.ml:14622 / FRONTIER_SEGMENT   (hash md5:e858def84659444ac47f96f578c83b45)
Theorem hlt_FRONTIER_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_frontier N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_COND (2 :^: hl_ty_cart R N) (hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) /\ forall a b :e hl_ty_cart R N, hl_frontier N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_COND (2 :^: hl_ty_cart R N) (if a = b then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_COND (2 :^: hl_ty_cart R N) (hl_le (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) (hl_dimindex N (hl_UNIV N))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/convex.ml:14639 / SEGMENT_EQ   (hash md5:b21b4da801dba45716cc4ad4e5e43768)
Theorem hlt_SEGMENT_EQ : forall N:set, N <> Empty -> (forall a b c d :e hl_ty_cart R N, hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) <-> hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))) = hl_INSERT (hl_ty_cart R N) c (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N)))) /\ ((forall a b c d :e hl_ty_cart R N, ~ hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d)) /\ ((forall a b c d :e hl_ty_cart R N, ~ hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) /\ forall a b c d :e hl_ty_cart R N, hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) <-> a = b /\ c = d \/ hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))) = hl_INSERT (hl_ty_cart R N) c (hl_INSERT (hl_ty_cart R N) d (hl_EMPTY (hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/convex.ml:14679 / COLLINEAR_SEGMENT   (hash md5:7c30b1c08a1b29a77bcee731557ca053)
Theorem hlt_COLLINEAR_SEGMENT : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_collinear N (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1) /\ forall a b :e hl_ty_cart R N, hl_collinear N (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14690 / INTER_SEGMENT   (hash md5:1546856e33089f06d6c4df5f2457ac3e)
Theorem hlt_INTER_SEGMENT : forall N:set, N <> Empty -> forall a b c :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) b (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a c) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1 \/ ~ hl_collinear N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_INSERT (hl_ty_cart R N) c (hl_EMPTY (hl_ty_cart R N))))) = 1 -> hl_INTER (hl_ty_cart R N) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) b c) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:14718 / CONVEX_LINE_INTERSECTION_UNIQUE_CLOSED   (hash md5:d0bae4d0ea81baf9d632fac9a17f43fe)
Theorem hlt_CONVEX_LINE_INTERSECTION_UNIQUE_CLOSED : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_relative_frontier N s) = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_relative_interior N s) = hl_EMPTY (hl_ty_cart R N)))) -> hl_INTER (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))).
Admitted.

// HOL Light: Multivariate/convex.ml:14757 / CONVEX_LINE_INTERSECTION_UNIQUE_OPEN_IN   (hash md5:fd542d8d775028ab19f752ec03154da0)
Theorem hlt_CONVEX_LINE_INTERSECTION_UNIQUE_OPEN_IN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_relative_frontier N s) = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) s = hl_EMPTY (hl_ty_cart R N)))) -> hl_INTER (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b).
Admitted.

// HOL Light: Multivariate/convex.ml:14786 / CONVEX_LINE_INTERSECTION_UNIQUE_OPEN   (hash md5:8fe9bed278fad096ba1fefe8983f859b)
Theorem hlt_CONVEX_LINE_INTERSECTION_UNIQUE_OPEN : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_open N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_relative_frontier N s) = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) s = hl_EMPTY (hl_ty_cart R N)))) -> hl_INTER (hl_ty_cart R N) s (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b).
Admitted.

// HOL Light: Multivariate/convex.ml:14797 / CONVEX_LINE_INTERSECTIONS   (hash md5:1103d30a9bdc877e85dc2e445b4645f2)
Theorem hlt_CONVEX_LINE_INTERSECTIONS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_relative_frontier N s) = 1 /\ ~ hl_INTER (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_relative_interior N s) = hl_EMPTY (hl_ty_cart R N))) -> ~ a = b /\ (hl_INTER (hl_ty_cart R N) (hl_closure N s) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) /\ (hl_INTER (hl_ty_cart R N) (hl_relative_interior N s) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) /\ hl_INTER (hl_ty_cart R N) (hl_relative_frontier N s) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/convex.ml:14822 / CONVEX_LINE_INTERSECTIONS_ALT   (hash md5:f95b246f8500eb776289cb7e0e0fbf8d)
Theorem hlt_CONVEX_LINE_INTERSECTIONS_ALT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_frontier N s) = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_relative_frontier N s) = 1 /\ ~ hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) (hl_relative_frontier N s) = 1)) -> ~ a = b /\ (hl_INTER (hl_ty_cart R N) (hl_closure N s) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_closed_segment N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) /\ (hl_INTER (hl_ty_cart R N) (hl_relative_interior N s) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) /\ hl_INTER (hl_ty_cart R N) (hl_relative_frontier N s) (hl_hull (hl_ty_cart R N) (hl_affine N) (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))) = hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N))))).
Admitted.

// HOL Light: Multivariate/convex.ml:14843 / CLOSED_STRIP_COMPONENT_LE   (hash md5:dcc56b9e4fffa1bbba78d09161af1217)
Theorem hlt_CLOSED_STRIP_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_closed N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5020 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5020 (hl_real_le (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14850 / OPEN_STRIP_COMPONENT_LT   (hash md5:6885c21cac2e978115b8ff49b1a1e046)
Theorem hlt_OPEN_STRIP_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_open N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5024 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5024 (hl_real_lt (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:14857 / INTERIOR_STRIP_COMPONENT_LE   (hash md5:e746efcc06d7f1660d56ff3c0f7a4b60)
Theorem hlt_INTERIOR_STRIP_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_interior N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5028 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5028 (hl_real_le (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5029 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5029 (hl_real_lt (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:14865 / CLOSURE_STRIP_COMPONENT_LT   (hash md5:2c11bf6a4881d29f0189122d9d0c3427)
Theorem hlt_CLOSURE_STRIP_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_closure N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5030 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5030 (hl_real_lt (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)) = hl_COND (2 :^: hl_ty_cart R N) (if a = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5031 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5031 (hl_real_le (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:14882 / FRONTIER_STRIP_COMPONENT_LE   (hash md5:e6d3b0e65183bac112be991714a1a472)
Theorem hlt_FRONTIER_STRIP_COMPONENT_LE : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_frontier N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5032 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5032 (hl_real_le (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5033 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5033 (if hl_real_abs (hl_vindex R N x k) = a then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:14888 / FRONTIER_STRIP_COMPONENT_LT   (hash md5:d4420b0e375f483963948213c6e08ebf)
Theorem hlt_FRONTIER_STRIP_COMPONENT_LT : forall N:set, N <> Empty -> forall a :e R, forall k :e omega, hl_frontier N (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5034 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5034 (hl_real_lt (hl_real_abs (hl_vindex R N x k)) a) x = 1 then 1 else 0)) = hl_COND (2 :^: hl_ty_cart R N) (if a = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_EMPTY (hl_ty_cart R N)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5035 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5035 (if hl_real_abs (hl_vindex R N x k) = a then 1 else 0) x = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:14900 / DENSE_COMPLEMENT_SUBSPACE   (hash md5:e873b359acc34857ecf24dfe9b6ee225)
Theorem hlt_DENSE_COMPLEMENT_SUBSPACE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_lt (hl_dim N t) (hl_dim N s) = 1 /\ hl_subspace N s = 1 -> hl_closure N (hl_DIFF (hl_ty_cart R N) s t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:14944 / DENSE_COMPLEMENT_AFFINE   (hash md5:5b6c2285c11ea9894939b2724acfd880)
Theorem hlt_DENSE_COMPLEMENT_AFFINE : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_aff_dim N t) (hl_aff_dim N s) = 1 /\ hl_affine N s = 1 -> hl_closure N (hl_DIFF (hl_ty_cart R N) s t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:14958 / DENSE_COMPLEMENT_OPEN_IN_AFFINE_HULL   (hash md5:93d25388b85cee67775fecf5e8f8231e)
Theorem hlt_DENSE_COMPLEMENT_OPEN_IN_AFFINE_HULL : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_aff_dim N t) (hl_aff_dim N s) = 1 /\ hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 -> hl_closure N (hl_DIFF (hl_ty_cart R N) s t) = hl_closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14974 / DENSE_COMPLEMENT_CONVEX   (hash md5:072a51b3d8529dc4c8c253faaae6b774)
Theorem hlt_DENSE_COMPLEMENT_CONVEX : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_aff_dim N t) (hl_aff_dim N s) = 1 /\ hl_convex N s = 1 -> hl_closure N (hl_DIFF (hl_ty_cart R N) s t) = hl_closure N s.
Admitted.

// HOL Light: Multivariate/convex.ml:14986 / DENSE_COMPLEMENT_CONVEX_CLOSED   (hash md5:ef4db395be3c65fcbe165e0d71044bfe)
Theorem hlt_DENSE_COMPLEMENT_CONVEX_CLOSED : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_int_lt (hl_aff_dim N t) (hl_aff_dim N s) = 1 /\ (hl_convex N s = 1 /\ hl_closed N s = 1) -> hl_closure N (hl_DIFF (hl_ty_cart R N) s t) = s.
Admitted.

// HOL Light: Multivariate/convex.ml:14997 / COMPACT_FRONTIER_LINE_LEMMA   (hash md5:fa98b5329fe9b3ce3f71a5cbf073b153)
Theorem hlt_COMPACT_FRONTIER_LINE_LEMMA : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_compact N s = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 /\ ~ x = hl_vec N (hl_NUMERAL hl_zero)) -> exists u :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) u = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vmul N u x) (hl_frontier N s) = 1 /\ forall v :e R, hl_real_lt u v = 1 -> ~ hl_IN (hl_ty_cart R N) (hl_vmul N v x) s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:15071 / STARLIKE_COMPACT_PROJECTIVE   (hash md5:c4a3821acbc6092b0c07d53ca7ad5b99)
Theorem hlt_STARLIKE_COMPACT_PROJECTIVE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_compact N s = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1 /\ (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_open_segment N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x)) (hl_relative_interior N s) = 1)) -> hl_homeomorphic N N (hl_DIFF (hl_ty_cart R N) s (hl_relative_interior N s)) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R a (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) = 1 /\ (hl_homeomorphic N N s (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) = 1 /\ hl_homeomorphic N N (hl_relative_interior N s) (hl_INTER (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R a (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:15416 / HOMEOMORPHIC_CONVEX_COMPACT   (hash md5:7e4bba1e2838c49ec267b2858c495d96)
Theorem hlt_HOMEOMORPHIC_CONVEX_COMPACT : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) /\ (hl_convex N t = 1 /\ (hl_compact N t = 1 /\ ~ hl_interior N t = hl_EMPTY (hl_ty_cart R N))))) -> hl_homeomorphic N N s t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15424 / HOMEOMORPHIC_CONVEX_COMPACT_CBALL   (hash md5:3a8496bbf3b196a9ccb4e698f9763c7c)
Theorem hlt_HOMEOMORPHIC_CONVEX_COMPACT_CBALL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall b :e hl_ty_cart R N, forall e1 :e R, hl_convex N s = 1 /\ (hl_compact N s = 1 /\ (~ hl_interior N s = hl_EMPTY (hl_ty_cart R N) /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1)) -> hl_homeomorphic N N s (hl_cball N (hl_pair (hl_ty_cart R N) R b e1)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15432 / HOMEOMORPHIC_CLOSED_INTERVALS   (hash md5:9339772e395153baaa3181244fd1f6af)
Theorem hlt_HOMEOMORPHIC_CLOSED_INTERVALS : forall N:set, N <> Empty -> forall a b c d :e hl_ty_cart R N, ~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) /\ ~ hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) = hl_EMPTY (hl_ty_cart R N) -> hl_homeomorphic N N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) c d) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15444 / HOMEOMORPHIC_RELATIVELY_OPEN_CONVEX_SETS   (hash md5:b10160700b2ab38e7fbdd8add654d61b)
Theorem hlt_HOMEOMORPHIC_RELATIVELY_OPEN_CONVEX_SETS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ (hl_open_in (hl_ty_cart R M) (hl_subtopology (hl_ty_cart R M) (hl_euclidean M) (hl_hull (hl_ty_cart R M) (hl_affine M) s)) s = 1 /\ (hl_convex N t = 1 /\ (hl_open_in (hl_ty_cart R N) (hl_subtopology (hl_ty_cart R N) (hl_euclidean N) (hl_hull (hl_ty_cart R N) (hl_affine N) t)) t = 1 /\ hl_aff_dim M s = hl_aff_dim N t))) -> hl_homeomorphic M N s t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15529 / HOMEOMORPHIC_CONVEX_OPEN_SETS   (hash md5:d1a54d5c0bd3ff1a21257104a20e8824)
Theorem hlt_HOMEOMORPHIC_CONVEX_OPEN_SETS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_open N s = 1 /\ (hl_convex N t = 1 /\ (hl_open N t = 1 /\ (s = hl_EMPTY (hl_ty_cart R N) <-> t = hl_EMPTY (hl_ty_cart R N))))) -> hl_homeomorphic N N s t = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15542 / LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION_EXPLICIT   (hash md5:8f0c4e3766c72883183c546711f03968)
Theorem hlt_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION_EXPLICIT : forall N:set, N <> Empty -> forall r :e R, forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) (hl_relative_interior N s) = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_relative_frontier N s) = 1)))) -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N (hl_real_inv (hl_vector_norm N x)) x) (hl_vmul N (hl_real_inv (hl_vector_norm N y)) y))) (hl_real_mul (hl_real_inv r) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15575 / LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION   (hash md5:37df831de84f01a326eb622e64f16c4a)
Theorem hlt_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1 -> exists B :e R, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_relative_frontier N s) = 1 -> hl_real_le (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N (hl_real_inv (hl_vector_norm N x)) x) (hl_vmul N (hl_real_inv (hl_vector_norm N y)) y))) (hl_real_mul B (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15592 / INVERSE_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION_EXPLICIT   (hash md5:fe83a936b62d0f637d0928dcb7f6a5a5)
Theorem hlt_INVERSE_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION_EXPLICIT : forall N:set, N <> Empty -> forall r R1 :e R, forall s :e 2 :^: hl_ty_cart R N, forall x y :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_ball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) r)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) (hl_relative_interior N s) = 1 /\ (hl_SUBSET (hl_ty_cart R N) s (hl_cball N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) R1)) = 1 /\ (hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_relative_frontier N s) = 1))))) -> hl_real_ge (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N (hl_real_inv (hl_vector_norm N x)) x) (hl_vmul N (hl_real_inv (hl_vector_norm N y)) y))) (hl_real_mul (hl_real_div r (hl_real_pow R1 (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15931 / INVERSE_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION   (hash md5:8a6d9bb04422b1eaa123c30b5c6551d3)
Theorem hlt_INVERSE_LIPSCHITZ_CONVEX_SPHERICAL_PROJECTION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1) -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_relative_frontier N s) = 1 -> hl_real_ge (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_vmul N (hl_real_inv (hl_vector_norm N x)) x) (hl_vmul N (hl_real_inv (hl_vector_norm N y)) y))) (hl_real_mul B (hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:15954 / BILIPSCHITZ_HOMEOMORPHISM_SPHERICAL_PROJECTION   (hash md5:be6b5ffe211c9aab2281ed2384e9ef9e)
Theorem hlt_BILIPSCHITZ_HOMEOMORPHISM_SPHERICAL_PROJECTION : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_bounded N s = 1 /\ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_relative_interior N s) = 1) -> exists g :e hl_ty_cart R N :^: hl_ty_cart R N, hl_homeomorphism N N (hl_pair (2 :^: hl_ty_cart R N) (2 :^: hl_ty_cart R N) (hl_relative_frontier N s) (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_hull (hl_ty_cart R N) (hl_affine N) s))) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R N) (hl_ty_cart R N :^: hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vmul N (hl_real_inv (hl_vector_norm N x)) x) g) = 1 /\ ((exists B :e R, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_relative_frontier N s) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (hl_vmul N (hl_real_inv (hl_vector_norm N x)) x) (hl_vmul N (hl_real_inv (hl_vector_norm N y)) y))) (hl_real_mul B (hl_vector_norm N (hl_vector_sub N x y))) = 1) /\ exists B :e R, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_INTER (hl_ty_cart R N) (hl_sphere N (hl_pair (hl_ty_cart R N) R (hl_vec N (hl_NUMERAL hl_zero)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (g x) (g y))) (hl_real_mul B (hl_vector_norm N (hl_vector_sub N x y))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:16032 / BILIPSCHITZ_HOMEOMORPHISM_RELATIVE_FRONTIERS   (hash md5:9fdffd88f310ce4d29722836d320ba8b)
Theorem hlt_BILIPSCHITZ_HOMEOMORPHISM_RELATIVE_FRONTIERS : forall M N:set, M <> Empty -> N <> Empty -> forall s :e 2 :^: hl_ty_cart R M, forall t :e 2 :^: hl_ty_cart R N, hl_convex M s = 1 /\ (hl_bounded M s = 1 /\ (hl_convex N t = 1 /\ (hl_bounded N t = 1 /\ hl_aff_dim M s = hl_aff_dim N t))) -> exists f :e hl_ty_cart R N :^: hl_ty_cart R M, exists g :e hl_ty_cart R M :^: hl_ty_cart R N, hl_homeomorphism M N (hl_pair (2 :^: hl_ty_cart R M) (2 :^: hl_ty_cart R N) (hl_relative_frontier M s) (hl_relative_frontier N t)) (hl_pair (hl_ty_cart R N :^: hl_ty_cart R M) (hl_ty_cart R M :^: hl_ty_cart R N) f g) = 1 /\ ((exists B :e R, forall x y :e hl_ty_cart R M, hl_IN (hl_ty_cart R M) x (hl_relative_frontier M s) = 1 /\ hl_IN (hl_ty_cart R M) y (hl_relative_frontier M s) = 1 -> hl_real_le (hl_vector_norm N (hl_vector_sub N (f x) (f y))) (hl_real_mul B (hl_vector_norm M (hl_vector_sub M x y))) = 1) /\ exists B :e R, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_relative_frontier N t) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_relative_frontier N t) = 1 -> hl_real_le (hl_vector_norm M (hl_vector_sub M (g x) (g y))) (hl_real_mul B (hl_vector_norm N (hl_vector_sub N x y))) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:16221 / AFF_DIM_NONEMPTY_INTERIOR_EQ   (hash md5:77801971a621b0a2d6a947f626077bca)
Theorem hlt_AFF_DIM_NONEMPTY_INTERIOR_EQ : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 -> (hl_aff_dim N s = hl_int_of_num (hl_dimindex N (hl_UNIV N)) <-> ~ hl_interior N s = hl_EMPTY (hl_ty_cart R N)).
Admitted.

// HOL Light: Multivariate/convex.ml:16232 / AFF_DIM_BALL   (hash md5:a102fa073759f916ba3eb497b3329f47)
Theorem hlt_AFF_DIM_BALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_aff_dim N (hl_ball N (hl_pair (hl_ty_cart R N) R a r)) = hl_COND hl_ty_int (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))).
Admitted.

// HOL Light: Multivariate/convex.ml:16241 / AFF_DIM_CBALL   (hash md5:f0e18156640ce3be453af6337b8c1d4a)
Theorem hlt_AFF_DIM_CBALL : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall r :e R, hl_aff_dim N (hl_cball N (hl_pair (hl_ty_cart R N) R a r)) = hl_COND hl_ty_int (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r) (hl_int_of_num (hl_dimindex N (hl_UNIV N))) (hl_COND hl_ty_int (if r = hl_real_of_num (hl_NUMERAL hl_zero) then 1 else 0) (hl_int_of_num (hl_NUMERAL hl_zero)) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero))))).
Admitted.

// HOL Light: Multivariate/convex.ml:16253 / AFF_DIM_INTERVAL   (hash md5:844b121c69bdcba1133d5411ee8fbb67)
Theorem hlt_AFF_DIM_INTERVAL : forall N:set, N <> Empty -> (forall a b :e hl_ty_cart R N, hl_aff_dim N (hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N)))) = hl_COND hl_ty_int (if hl_closed_interval N (hl_CONS (hl_ty_cart R N :*: hl_ty_cart R N) (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) (hl_NIL (hl_ty_cart R N :*: hl_ty_cart R N))) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_CARD omega (hl_GSPEC omega (fun GEN_PVAR_5046 :e omega => if exists i :e omega, hl_SETSPEC omega GEN_PVAR_5046 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ (hl_le i (hl_dimindex N (hl_UNIV N)) = 1 /\ hl_real_lt (hl_vindex R N a i) (hl_vindex R N b i) = 1) then 1 else 0) i = 1 then 1 else 0))))) /\ forall a b :e hl_ty_cart R N, hl_aff_dim N (hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b)) = hl_COND hl_ty_int (if hl_open_interval N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b) = hl_EMPTY (hl_ty_cart R N) then 1 else 0) (hl_int_neg (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_int_of_num (hl_dimindex N (hl_UNIV N))).
Admitted.

// HOL Light: Multivariate/convex.ml:16311 / GRAPH_EMBEDS_IN_R3   (hash md5:58f6cf3d2e65362f49885ce05cf46f11)
Theorem hlt_GRAPH_EMBEDS_IN_R3 : forall A:set, A <> Empty -> forall s :e 2 :^: A, hl_sym_3c3d5f63 A R s (hl_UNIV R) = 1 -> exists v :e hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :^: A, (forall a b :e A, hl_IN A a s = 1 /\ hl_IN A b s = 1 -> (v a = v b <-> a = b)) /\ forall a b c d :e A, ~ hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v a) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v b) (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))) = hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v c) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v d) (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))) -> hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_INTER (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_closed_segment (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v a) (v b)) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1 + 1)))))) (hl_closed_segment (idx_n (2 * dimindex 1 + 1)) (hl_CONS (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_pair (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v c) (v d)) (hl_NIL (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)) :*: hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))) (hl_INTER (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v a) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v b) (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1 + 1)))))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v c) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))) (v d) (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1 + 1))))))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16436 / MIDPOINT_CONVEX_DYADIC_RATIONALS   (hash md5:14795da137354072e62d83446b014346)
Theorem hlt_MIDPOINT_CONVEX_DYADIC_RATIONALS : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_IN (hl_ty_cart R N) (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y)) s = 1 /\ hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1) -> forall n m p :e omega, forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ hl_add m p = hl_EXP (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))) n) -> hl_IN (hl_ty_cart R N) (hl_vector_add N (hl_vmul N (hl_real_div (hl_real_of_num m) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) x) (hl_vmul N (hl_real_div (hl_real_of_num p) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) y)) s = 1 /\ hl_real_le (f (hl_vector_add N (hl_vmul N (hl_real_div (hl_real_of_num m) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) x) (hl_vmul N (hl_real_div (hl_real_of_num p) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) y))) (hl_real_add (hl_real_mul (hl_real_div (hl_real_of_num m) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) (f x)) (hl_real_mul (hl_real_div (hl_real_of_num p) (hl_real_pow (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) n)) (f y))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16479 / CONTINUOUS_MIDPOINT_CONVEX   (hash md5:5095e3a295d79c9319987d2e4612cf72)
Theorem hlt_CONTINUOUS_MIDPOINT_CONVEX : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_continuous_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) s = 1 /\ (hl_convex N s = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (f (hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y))) (hl_real_div (hl_real_add (f x) (f y)) (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero))))) = 1)) -> hl_convex_on N f s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16548 / SEPARATING_HYPERPLANE_RELATIVE_INTERIORS   (hash md5:c7d7e0eb6fdd986028f8fba690c6e897)
Theorem hlt_SEPARATING_HYPERPLANE_RELATIVE_INTERIORS : forall N:set, N <> Empty -> forall s t :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (hl_convex N t = 1 /\ (~ (s = hl_EMPTY (hl_ty_cart R N) /\ t = hl_UNIV (hl_ty_cart R N) \/ s = hl_UNIV (hl_ty_cart R N) /\ t = hl_EMPTY (hl_ty_cart R N)) /\ hl_DISJOINT (hl_ty_cart R N) (hl_relative_interior N s) (hl_relative_interior N t) = 1)) -> exists a :e hl_ty_cart R N, exists b :e R, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_dot N a x) b = 1) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x t = 1 -> hl_real_ge (hl_dot N a x) b = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:16591 / SUPPORTING_HYPERPLANE_RELATIVE_BOUNDARY   (hash md5:efb4764891aa9b48a54565561c9aab86)
Theorem hlt_SUPPORTING_HYPERPLANE_RELATIVE_BOUNDARY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) x s = 1 /\ ~ hl_IN (hl_ty_cart R N) x (hl_relative_interior N s) = 1) -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (hl_dot N a x) (hl_dot N a y) = 1) /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_relative_interior N s) = 1 -> hl_real_lt (hl_dot N a x) (hl_dot N a y) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:16642 / SUPPORTING_HYPERPLANE_RELATIVE_FRONTIER   (hash md5:d25f811f2cdfd1852b04ddb5dbe02745)
Theorem hlt_SUPPORTING_HYPERPLANE_RELATIVE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_relative_frontier N s) = 1 -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ ((forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_closure N s) = 1 -> hl_real_le (hl_dot N a x) (hl_dot N a y) = 1) /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_relative_interior N s) = 1 -> hl_real_lt (hl_dot N a x) (hl_dot N a y) = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:16653 / SUPPORTING_HYPERPLANE_FRONTIER   (hash md5:a2b1f47a3b109253544b32f046b14459)
Theorem hlt_SUPPORTING_HYPERPLANE_FRONTIER : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_convex N s = 1 /\ hl_IN (hl_ty_cart R N) x (hl_frontier N s) = 1 -> exists a :e hl_ty_cart R N, ~ a = hl_vec N (hl_NUMERAL hl_zero) /\ forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_closure N s) = 1 -> hl_real_le (hl_dot N a x) (hl_dot N a y) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16675 / UNBOUNDED_CONVEX_CLOSED_CONTAINS_RAY   (hash md5:da3e3d3d21731869144e1c8a93caea17)
Theorem hlt_UNBOUNDED_CONVEX_CLOSED_CONTAINS_RAY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (~ hl_bounded N s = 1 /\ (hl_closed N s = 1 /\ hl_IN (hl_ty_cart R N) a s = 1)) -> exists l :e hl_ty_cart R N, ~ l = hl_vec N (hl_NUMERAL hl_zero) /\ forall t :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N t l)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16723 / CONVEX_CLOSED_CONTAINS_SAME_RAY   (hash md5:41042a01d9cea2421029308f0c8012e3)
Theorem hlt_CONVEX_CLOSED_CONTAINS_SAME_RAY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b l :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_closed N s = 1 /\ (hl_IN (hl_ty_cart R N) b s = 1 /\ (forall t :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N t l)) s = 1))) -> forall t :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N b (hl_vmul N t l)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16756 / UNBOUNDED_CONVEX_CLOSED_CONTAINS_RAYS   (hash md5:641e09e9eb13619bf4de5d4c46a77003)
Theorem hlt_UNBOUNDED_CONVEX_CLOSED_CONTAINS_RAYS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ (~ hl_bounded N s = 1 /\ hl_closed N s = 1) -> exists l :e hl_ty_cart R N, ~ l = hl_vec N (hl_NUMERAL hl_zero) /\ forall a :e hl_ty_cart R N, forall t :e R, hl_IN (hl_ty_cart R N) a s = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N t l)) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16766 / RELATIVE_INTERIOR_UNBOUNDED_CONVEX_CONTAINS_RAY   (hash md5:c6de8655f8ee5adeff27e34a7a8ed568)
Theorem hlt_RELATIVE_INTERIOR_UNBOUNDED_CONVEX_CONTAINS_RAY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex N s = 1 /\ (~ hl_bounded N s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1) -> exists l :e hl_ty_cart R N, ~ l = hl_vec N (hl_NUMERAL hl_zero) /\ forall t :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N t l)) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16787 / RELATIVE_INTERIOR_CONVEX_CONTAINS_SAME_RAY   (hash md5:046694221bbb16fa8d325ea9fe725b40)
Theorem hlt_RELATIVE_INTERIOR_CONVEX_CONTAINS_SAME_RAY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall a b l :e hl_ty_cart R N, hl_convex N s = 1 /\ (hl_IN (hl_ty_cart R N) b (hl_relative_interior N s) = 1 /\ (forall t :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N t l)) (hl_relative_interior N s) = 1)) -> forall t :e R, hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N b (hl_vmul N t l)) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16807 / RELATIVE_INTERIOR_UNBOUNDED_CONVEX_CONTAINS_RAYS   (hash md5:e9bdea76acce14a22d6586910089e3fc)
Theorem hlt_RELATIVE_INTERIOR_UNBOUNDED_CONVEX_CONTAINS_RAYS : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_convex N s = 1 /\ ~ hl_bounded N s = 1 -> exists l :e hl_ty_cart R N, ~ l = hl_vec N (hl_NUMERAL hl_zero) /\ forall a :e hl_ty_cart R N, forall t :e R, hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1 /\ hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) t = 1 -> hl_IN (hl_ty_cart R N) (hl_vector_add N a (hl_vmul N t l)) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16820 / CONVEX_TRIPLE_RELATIVE_FRONTIER   (hash md5:38078b6f4c167787b9aeb099a71b60b0)
Theorem hlt_CONVEX_TRIPLE_RELATIVE_FRONTIER : forall s :e 2 :^: hl_ty_cart R (idx_n (2 * dimindex 1)), forall a b c d :e hl_ty_cart R (idx_n (2 * dimindex 1)), forall e1 :e R, hl_convex (idx_n (2 * dimindex 1)) s = 1 /\ (hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))))))) (hl_relative_frontier (idx_n (2 * dimindex 1)) s) = 1 /\ (~ a = b /\ (~ a = c /\ (~ b = c /\ (hl_dot (idx_n (2 * dimindex 1)) d a = e1 /\ (hl_dot (idx_n (2 * dimindex 1)) d b = e1 /\ hl_dot (idx_n (2 * dimindex 1)) d c = e1)))))) -> hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) s (hl_GSPEC (hl_ty_cart R (idx_n (2 * dimindex 1))) (fun GEN_PVAR_5054 :e hl_ty_cart R (idx_n (2 * dimindex 1)) => if exists x :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_SETSPEC (hl_ty_cart R (idx_n (2 * dimindex 1))) GEN_PVAR_5054 (hl_real_le (hl_dot (idx_n (2 * dimindex 1)) d x) e1) x = 1 then 1 else 0)) = 1 \/ hl_SUBSET (hl_ty_cart R (idx_n (2 * dimindex 1))) s (hl_GSPEC (hl_ty_cart R (idx_n (2 * dimindex 1))) (fun GEN_PVAR_5055 :e hl_ty_cart R (idx_n (2 * dimindex 1)) => if exists x :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_SETSPEC (hl_ty_cart R (idx_n (2 * dimindex 1))) GEN_PVAR_5055 (hl_real_ge (hl_dot (idx_n (2 * dimindex 1)) d x) e1) x = 1 then 1 else 0)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:16916 / EXPLICIT_SUBSET_RELATIVE_INTERIOR_CONVEX_HULL   (hash md5:d3bc4de59acc1d6dc5403ab1e2964f94)
Theorem hlt_EXPLICIT_SUBSET_RELATIVE_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5056 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5056 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1 /\ hl_real_lt (u x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0)) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17031 / EXPLICIT_SUBSET_RELATIVE_INTERIOR_CONVEX_HULL_MINIMAL   (hash md5:5ace7de4d881e390776f5647d7627a66)
Theorem hlt_EXPLICIT_SUBSET_RELATIVE_INTERIOR_CONVEX_HULL_MINIMAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 -> hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5057 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5057 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0)) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17065 / RELATIVE_INTERIOR_CONVEX_HULL_EXPLICIT   (hash md5:ab8741a5259aedbb5e3673229cfbc9b3)
Theorem hlt_RELATIVE_INTERIOR_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5060 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5060 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:17138 / EXPLICIT_SUBSET_INTERIOR_CONVEX_HULL   (hash md5:7807af617910fb00b98d5c45fc4d94cf)
Theorem hlt_EXPLICIT_SUBSET_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N) -> hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5061 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5061 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1 /\ hl_real_lt (u x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0)) (hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17149 / EXPLICIT_SUBSET_INTERIOR_CONVEX_HULL_MINIMAL   (hash md5:0b4f9d62e5676ea1829fa8efd82293c9)
Theorem hlt_EXPLICIT_SUBSET_INTERIOR_CONVEX_HULL_MINIMAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ hl_hull (hl_ty_cart R N) (hl_affine N) s = hl_UNIV (hl_ty_cart R N) -> hl_SUBSET (hl_ty_cart R N) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5062 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5062 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0)) (hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17160 / INTERIOR_CONVEX_HULL_EXPLICIT_MINIMAL   (hash md5:940c2da795789e753f455463551daaec)
Theorem hlt_INTERIOR_CONVEX_HULL_EXPLICIT_MINIMAL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_COND (2 :^: hl_ty_cart R N) (hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N))) (hl_EMPTY (hl_ty_cart R N)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5063 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5063 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:17180 / INTERIOR_CONVEX_HULL_EXPLICIT   (hash md5:2939f2dab5e7510a252724cd1b7c62f8)
Theorem hlt_INTERIOR_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_COND (2 :^: hl_ty_cart R N) (hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N))) (hl_EMPTY (hl_ty_cart R N)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5064 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5064 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1 /\ hl_real_lt (u x) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:17220 / DISJOINT_RELATIVE_INTERIOR_CONVEX_HULL   (hash md5:ad668f637a8b2fc8f09eef9a7cff8917)
Theorem hlt_DISJOINT_RELATIVE_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ ~ (exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) -> hl_INTER (hl_ty_cart R N) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) s = hl_EMPTY (hl_ty_cart R N).
Admitted.

// HOL Light: Multivariate/convex.ml:17244 / INTERIOR_CONVEX_HULL_3_MINIMAL   (hash md5:7d18efed2bed9ae3d056a7c063c87fd5)
Theorem hlt_INTERIOR_CONVEX_HULL_3_MINIMAL : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1)), ~ hl_collinear (idx_n (2 * dimindex 1)) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))))))) = 1 -> hl_interior (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) = hl_GSPEC (hl_ty_cart R (idx_n (2 * dimindex 1))) (fun GEN_PVAR_5065 :e hl_ty_cart R (idx_n (2 * dimindex 1)) => if exists v :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_SETSPEC (hl_ty_cart R (idx_n (2 * dimindex 1))) GEN_PVAR_5065 (if exists x y z :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) z = 1 /\ (hl_real_add x (hl_real_add y z) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vector_add (idx_n (2 * dimindex 1)) (hl_vmul (idx_n (2 * dimindex 1)) x a) (hl_vector_add (idx_n (2 * dimindex 1)) (hl_vmul (idx_n (2 * dimindex 1)) y b) (hl_vmul (idx_n (2 * dimindex 1)) z c)) = v))) then 1 else 0) v = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:17265 / INTERIOR_CONVEX_HULL_3   (hash md5:725cf6fed1a507968eb689d7766f635f)
Theorem hlt_INTERIOR_CONVEX_HULL_3 : forall a b c :e hl_ty_cart R (idx_n (2 * dimindex 1)), ~ hl_collinear (idx_n (2 * dimindex 1)) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1))))))) = 1 -> hl_interior (idx_n (2 * dimindex 1)) (hl_hull (hl_ty_cart R (idx_n (2 * dimindex 1))) (hl_convex (idx_n (2 * dimindex 1))) (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) a (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) b (hl_INSERT (hl_ty_cart R (idx_n (2 * dimindex 1))) c (hl_EMPTY (hl_ty_cart R (idx_n (2 * dimindex 1)))))))) = hl_GSPEC (hl_ty_cart R (idx_n (2 * dimindex 1))) (fun GEN_PVAR_5066 :e hl_ty_cart R (idx_n (2 * dimindex 1)) => if exists v :e hl_ty_cart R (idx_n (2 * dimindex 1)), hl_SETSPEC (hl_ty_cart R (idx_n (2 * dimindex 1))) GEN_PVAR_5066 (if exists x y z :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) x = 1 /\ (hl_real_lt x (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) y = 1 /\ (hl_real_lt y (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) z = 1 /\ (hl_real_lt z (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ (hl_real_add x (hl_real_add y z) = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vector_add (idx_n (2 * dimindex 1)) (hl_vmul (idx_n (2 * dimindex 1)) x a) (hl_vector_add (idx_n (2 * dimindex 1)) (hl_vmul (idx_n (2 * dimindex 1)) y b) (hl_vmul (idx_n (2 * dimindex 1)) z c)) = v)))))) then 1 else 0) v = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:17283 / CLOSURE_CONVEX_HULL   (hash md5:b731268bb95139aa3e8a2394f84f094b)
Theorem hlt_CLOSURE_CONVEX_HULL : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_compact A s = 1 -> hl_closure A (hl_hull (hl_ty_cart R A) (hl_convex A) s) = hl_hull (hl_ty_cart R A) (hl_convex A) s.
Admitted.

// HOL Light: Multivariate/convex.ml:17287 / RELATIVE_FRONTIER_CONVEX_HULL_EXPLICIT   (hash md5:486a306c3aa46fcb0ad5e9588a969c79)
Theorem hlt_RELATIVE_FRONTIER_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_relative_frontier N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5067 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5067 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ ((exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ u x = hl_real_of_num (hl_NUMERAL hl_zero)) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y)) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:17322 / FRONTIER_CONVEX_HULL_EXPLICIT   (hash md5:3e0027e921c1daccb7307d88f78a51a1)
Theorem hlt_FRONTIER_CONVEX_HULL_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_frontier N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5068 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5068 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ ((hl_lt (hl_dimindex N (hl_UNIV N)) (hl_CARD (hl_ty_cart R N) s) = 1 -> (exists x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ u x = hl_real_of_num (hl_NUMERAL hl_zero))) /\ (hl_sum (hl_ty_cart R N) s u = hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)) /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y)) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:17346 / RELATIVE_FRONTIER_OF_CONVEX_HULL   (hash md5:840df54bc030559b9588158b58bff46a)
Theorem hlt_RELATIVE_FRONTIER_OF_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_relative_frontier N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5069 :e 2 :^: hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5069 (hl_IN (hl_ty_cart R N) a s) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DELETE (hl_ty_cart R N) s a)) = 1 then 1 else 0)).
Admitted.

// HOL Light: Multivariate/convex.ml:17372 / FRONTIER_CONVEX_HULL_CASES   (hash md5:c1ebe6f47c3f8de711119a9421a66fe7)
Theorem hlt_FRONTIER_CONVEX_HULL_CASES : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 -> hl_frontier N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_COND (2 :^: hl_ty_cart R N) (hl_le (hl_CARD (hl_ty_cart R N) s) (hl_dimindex N (hl_UNIV N))) (hl_hull (hl_ty_cart R N) (hl_convex N) s) (hl_UNIONS (hl_ty_cart R N) (hl_GSPEC (2 :^: hl_ty_cart R N) (fun GEN_PVAR_5070 :e 2 :^: hl_ty_cart R N => if exists a :e hl_ty_cart R N, hl_SETSPEC (2 :^: hl_ty_cart R N) GEN_PVAR_5070 (hl_IN (hl_ty_cart R N) a s) (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_DELETE (hl_ty_cart R N) s a)) = 1 then 1 else 0))).
Admitted.

// HOL Light: Multivariate/convex.ml:17393 / IN_FRONTIER_CONVEX_HULL   (hash md5:96bc3df42ed801b532f78ce97ff7db6e)
Theorem hlt_IN_FRONTIER_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_le (hl_CARD (hl_ty_cart R N) s) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_IN (hl_ty_cart R N) x s = 1) -> hl_IN (hl_ty_cart R N) x (hl_frontier N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17422 / NOT_IN_INTERIOR_CONVEX_HULL   (hash md5:c8cb31025a8608f0db6adfb07a55f29e)
Theorem hlt_NOT_IN_INTERIOR_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ (hl_le (hl_CARD (hl_ty_cart R N) s) (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_IN (hl_ty_cart R N) x s = 1) -> ~ hl_IN (hl_ty_cart R N) x (hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17430 / INTERIOR_CONVEX_HULL_EQ_EMPTY   (hash md5:2b8e6c7166bd4d88616a972de631a6c3)
Theorem hlt_INTERIOR_CONVEX_HULL_EQ_EMPTY : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_HAS_SIZE (hl_ty_cart R N) s (hl_add (hl_dimindex N (hl_UNIV N)) (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 -> (hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s) = hl_EMPTY (hl_ty_cart R N) <-> hl_affine_dependent N s = 1).
Admitted.

// HOL Light: Multivariate/convex.ml:17462 / SIMPLEX_EXPLICIT   (hash md5:3197ca84254464871672f715cafe6b5d)
Theorem hlt_SIMPLEX_EXPLICIT : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ hl_IN (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s = 1 -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) s) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5071 :e hl_ty_cart R N => if exists y :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5071 (if exists u :e R :^: hl_ty_cart R N, (forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (u x) = 1) /\ (hl_real_le (hl_sum (hl_ty_cart R N) s u) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 /\ hl_vsum (hl_ty_cart R N) N s (fun x :e hl_ty_cart R N => hl_vmul N (u x) x) = y) then 1 else 0) y = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:17487 / STD_SIMPLEX   (hash md5:4f2fbd1a0a003fc7762979487d5c5bf0)
Theorem hlt_STD_SIMPLEX : forall N:set, N <> Empty -> hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5072 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5072 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0))) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5073 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5073 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_le (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x i) = 1) /\ hl_real_le (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N x i)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:17523 / INTERIOR_STD_SIMPLEX   (hash md5:3f260fdb55d116cfcdbf746cb3fb64c3)
Theorem hlt_INTERIOR_STD_SIMPLEX : forall N:set, N <> Empty -> hl_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) (hl_INSERT (hl_ty_cart R N) (hl_vec N (hl_NUMERAL hl_zero)) (hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5074 :e hl_ty_cart R N => if exists i :e omega, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5074 (if hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 then 1 else 0) (hl_basis N i) = 1 then 1 else 0)))) = hl_GSPEC (hl_ty_cart R N) (fun GEN_PVAR_5075 :e hl_ty_cart R N => if exists x :e hl_ty_cart R N, hl_SETSPEC (hl_ty_cart R N) GEN_PVAR_5075 (if (forall i :e omega, hl_le (hl_NUMERAL (hl_BIT1 hl_zero)) i = 1 /\ hl_le i (hl_dimindex N (hl_UNIV N)) = 1 -> hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) (hl_vindex R N x i) = 1) /\ hl_real_lt (hl_sum omega (hl_numseg (hl_NUMERAL (hl_BIT1 hl_zero)) (hl_dimindex N (hl_UNIV N))) (fun i :e omega => hl_vindex R N x i)) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero))) = 1 then 1 else 0) x = 1 then 1 else 0).
Admitted.

// HOL Light: Multivariate/convex.ml:17589 / barycentre   (hash md5:7e8ebf0fbdf1ac7b4d3c8f8b382c1895)
Theorem hlt_barycentre_thm : forall A:set, A <> Empty -> forall s :e 2 :^: hl_ty_cart R A, hl_barycentre A s = hl_COND (hl_ty_cart R A) (hl_FINITE (hl_ty_cart R A) s) (hl_vsum (hl_ty_cart R A) A s (fun x :e hl_ty_cart R A => hl_vmul A (hl_real_inv (hl_real_of_num (hl_CARD (hl_ty_cart R A) s))) x)) (hl_vec A (hl_NUMERAL hl_zero)).
Admitted.

// HOL Light: Multivariate/convex.ml:17593 / BARYCENTRE_0   (hash md5:4c0650430f1604e47a34be512720fed3)
Theorem hlt_BARYCENTRE_0 : forall A:set, A <> Empty -> hl_barycentre A (hl_EMPTY (hl_ty_cart R A)) = hl_vec A (hl_NUMERAL hl_zero).
Admitted.

// HOL Light: Multivariate/convex.ml:17597 / BARYCENTRE_1   (hash md5:8036748c55ad74a47730da079863f5fc)
Theorem hlt_BARYCENTRE_1 : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, hl_barycentre N (hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) = a.
Admitted.

// HOL Light: Multivariate/convex.ml:17602 / BARYCENTRE_2   (hash md5:8e8f7aa0471040127a095ed45b1ce781)
Theorem hlt_BARYCENTRE_2 : forall N:set, N <> Empty -> forall a b :e hl_ty_cart R N, hl_barycentre N (hl_INSERT (hl_ty_cart R N) a (hl_INSERT (hl_ty_cart R N) b (hl_EMPTY (hl_ty_cart R N)))) = hl_midpoint N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a b).
Admitted.

// HOL Light: Multivariate/convex.ml:17610 / BARYCENTRE_IN_RELATIVE_INTERIOR   (hash md5:27b711c257eaaec6e105df141373e399)
Theorem hlt_BARYCENTRE_IN_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_IN (hl_ty_cart R N) (hl_barycentre N s) (hl_relative_interior N (hl_hull (hl_ty_cart R N) (hl_convex N) s)) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17622 / BARYCENTRE_IN_CONVEX_HULL   (hash md5:1b0b8b79423dd95da216afcd2e56a70f)
Theorem hlt_BARYCENTRE_IN_CONVEX_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_IN (hl_ty_cart R N) (hl_barycentre N s) (hl_hull (hl_ty_cart R N) (hl_convex N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17628 / BARYCENTRE_IN_AFFINE_HULL   (hash md5:2ef06d22bd5ba54790b75fecd9735860)
Theorem hlt_BARYCENTRE_IN_AFFINE_HULL : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) -> hl_IN (hl_ty_cart R N) (hl_barycentre N s) (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17634 / BARYCENTRE_TRANSLATION   (hash md5:216dec7d5c91ced35813743ffc33ae01)
Theorem hlt_BARYCENTRE_TRANSLATION : forall N:set, N <> Empty -> forall a :e hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_barycentre N (hl_IMAGE (hl_ty_cart R N) (hl_ty_cart R N) (fun x :e hl_ty_cart R N => hl_vector_add N a x) s) = hl_vector_add N (hl_COND (hl_ty_cart R N) (if hl_FINITE (hl_ty_cart R N) s = 1 /\ ~ s = hl_EMPTY (hl_ty_cart R N) then 1 else 0) a (hl_vec N (hl_NUMERAL hl_zero))) (hl_barycentre N s).
Admitted.

// HOL Light: Multivariate/convex.ml:17651 / BARYCENTRE_LINEAR_IMAGE   (hash md5:5882ad4d18988e494f6cd948d11e657e)
Theorem hlt_BARYCENTRE_LINEAR_IMAGE : forall M N:set, M <> Empty -> N <> Empty -> forall f :e hl_ty_cart R N :^: hl_ty_cart R M, forall s :e 2 :^: hl_ty_cart R M, hl_linear M N f = 1 /\ (forall x y :e hl_ty_cart R M, f x = f y -> x = y) -> hl_barycentre N (hl_IMAGE (hl_ty_cart R M) (hl_ty_cart R N) f s) = f (hl_barycentre M s).
Admitted.

// HOL Light: Multivariate/convex.ml:17664 / BARYCENTRE_NOT_IN_SET   (hash md5:dc2b46ae48eebcdbc0440b38523d1d74)
Theorem hlt_BARYCENTRE_NOT_IN_SET : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, ~ hl_affine_dependent N s = 1 /\ ~ (exists a :e hl_ty_cart R N, s = hl_INSERT (hl_ty_cart R N) a (hl_EMPTY (hl_ty_cart R N))) -> ~ hl_IN (hl_ty_cart R N) (hl_barycentre N s) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:17678 / REGULAR_POLYTOPE_DIST_BARYCENTRE   (hash md5:46e4620c06503bd09869b6f08750632a)
Theorem hlt_REGULAR_POLYTOPE_DIST_BARYCENTRE : forall N:set, N <> Empty -> forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, forall r :e R, hl_HAS_SIZE (hl_ty_cart R N) s n = 1 /\ (forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ (hl_IN (hl_ty_cart R N) y s = 1 /\ ~ x = y) -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) = r) -> forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) (hl_barycentre N s) x) = hl_real_mul (hl_sqrt (hl_real_div (hl_real_sub (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_of_num n)))) r.
Admitted.

// HOL Light: Multivariate/convex.ml:17739 / REGULAR_POLYTOPE_EXISTS   (hash md5:ee471c8ccb3d26bc510b024ea3b294ee)
Theorem hlt_REGULAR_POLYTOPE_EXISTS : forall N:set, N <> Empty -> forall r :e R, forall s :e 2 :^: hl_ty_cart R N, forall n :e omega, hl_int_le (hl_int_of_num n) (hl_int_add (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 -> exists k :e 2 :^: hl_ty_cart R N, hl_HAS_SIZE (hl_ty_cart R N) k n = 1 /\ (~ hl_affine_dependent N k = 1 /\ (hl_SUBSET (hl_ty_cart R N) k (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x k = 1 /\ (hl_IN (hl_ty_cart R N) y k = 1 /\ ~ x = y) -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) = r)).
Admitted.

// HOL Light: Multivariate/convex.ml:17836 / REGULAR_POLYTOPE_WITH_BARYCENTRE_EXISTS_ALT   (hash md5:39fd364dde154273962e3c57f5215600)
Theorem hlt_REGULAR_POLYTOPE_WITH_BARYCENTRE_EXISTS_ALT : forall N:set, N <> Empty -> forall r :e R, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall n :e omega, hl_int_le (hl_int_of_num n) (hl_int_add (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ ~ n = hl_NUMERAL hl_zero)) -> exists k :e 2 :^: hl_ty_cart R N, hl_HAS_SIZE (hl_ty_cart R N) k n = 1 /\ (~ hl_affine_dependent N k = 1 /\ (hl_SUBSET (hl_ty_cart R N) k (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ (hl_barycentre N k = a /\ ((forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x k = 1 /\ (hl_IN (hl_ty_cart R N) y k = 1 /\ ~ x = y) -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) = r) /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x k = 1 -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x) = hl_real_mul (hl_sqrt (hl_real_div (hl_real_sub (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_of_num n)))) r)))).
Admitted.

// HOL Light: Multivariate/convex.ml:17869 / REGULAR_POLYTOPE_WITH_BARYCENTRE_EXISTS   (hash md5:ea8f300c3235ad766915ebc09ddefa0d)
Theorem hlt_REGULAR_POLYTOPE_WITH_BARYCENTRE_EXISTS : forall N:set, N <> Empty -> forall r :e R, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, forall n :e omega, hl_int_le (hl_int_of_num n) (hl_int_add (hl_aff_dim N s) (hl_int_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))) = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) r = 1 /\ (hl_IN (hl_ty_cart R N) a (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ hl_lt (hl_NUMERAL (hl_BIT1 hl_zero)) n = 1)) -> exists k :e 2 :^: hl_ty_cart R N, hl_HAS_SIZE (hl_ty_cart R N) k n = 1 /\ (~ hl_affine_dependent N k = 1 /\ (hl_SUBSET (hl_ty_cart R N) k (hl_hull (hl_ty_cart R N) (hl_affine N) s) = 1 /\ (hl_barycentre N k = a /\ ((forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x k = 1 -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) a x) = r) /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x k = 1 /\ (hl_IN (hl_ty_cart R N) y k = 1 /\ ~ x = y) -> hl_distance N (hl_pair (hl_ty_cart R N) (hl_ty_cart R N) x y) = hl_real_mul (hl_sqrt (hl_real_div (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_of_num n)) (hl_real_sub (hl_real_of_num n) (hl_real_of_num (hl_NUMERAL (hl_BIT1 hl_zero)))))) r)))).
Admitted.

// HOL Light: Multivariate/convex.ml:17897 / CONVEX_IMP_LOCALLY_BOUNDED   (hash md5:ff1ba4652555ab9d26d283dde16618e2)
Theorem hlt_CONVEX_IMP_LOCALLY_BOUNDED : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1 -> exists e1 B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ forall x :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) = 1 -> hl_real_le (hl_real_abs (f x)) B = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:17996 / CONVEX_IMP_LOCALLY_LIPSCHITZ   (hash md5:f142344e38eaa3ed0b3f10e7f5e6b853)
Theorem hlt_CONVEX_IMP_LOCALLY_LIPSCHITZ : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, forall a :e hl_ty_cart R N, hl_convex_on N f s = 1 /\ hl_IN (hl_ty_cart R N) a (hl_relative_interior N s) = 1 -> exists e1 B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) e1 = 1 /\ (hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ (hl_SUBSET (hl_ty_cart R N) (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) s = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) = 1 /\ hl_IN (hl_ty_cart R N) y (hl_INTER (hl_ty_cart R N) (hl_cball N (hl_pair (hl_ty_cart R N) R a e1)) (hl_hull (hl_ty_cart R N) (hl_affine N) s)) = 1 -> hl_real_le (hl_real_abs (hl_real_sub (f x) (f y))) (hl_real_mul B (hl_vector_norm N (hl_vector_sub N x y))) = 1)).
Admitted.

// HOL Light: Multivariate/convex.ml:18089 / CONVEX_ON_CONTINUOUS_ON_RELATIVE_INTERIOR   (hash md5:cbf52dfdb0740baad0071ccfc782a753)
Theorem hlt_CONVEX_ON_CONTINUOUS_ON_RELATIVE_INTERIOR : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_convex_on N f s = 1 -> hl_continuous_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) (hl_relative_interior N s) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:18112 / CONVEX_ON_CONTINUOUS   (hash md5:49869533e1e93f80205439bd546e131a)
Theorem hlt_CONVEX_ON_CONTINUOUS : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s :e 2 :^: hl_ty_cart R N, hl_open N s = 1 /\ hl_convex_on N f s = 1 -> hl_continuous_on N 1 (hl_o R (hl_ty_cart R 1) (hl_ty_cart R N) hl_lift f) s = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:18117 / CONVEX_IMP_LIPSCHITZ   (hash md5:090762ccadeb3e3deaa0c7aad66b1d8a)
Theorem hlt_CONVEX_IMP_LIPSCHITZ : forall N:set, N <> Empty -> forall f :e R :^: hl_ty_cart R N, forall s t :e 2 :^: hl_ty_cart R N, hl_convex_on N f t = 1 /\ (hl_compact N s = 1 /\ hl_SUBSET (hl_ty_cart R N) s (hl_relative_interior N t) = 1) -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) x s = 1 /\ hl_IN (hl_ty_cart R N) y s = 1 -> hl_real_le (hl_real_abs (hl_real_sub (f x) (f y))) (hl_real_mul B (hl_vector_norm N (hl_vector_sub N x y))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:18212 / CONVEX_BOUNDS_LEMMA   (hash md5:07ad2e5ad00a655791dff09a5dee3087)
Theorem hlt_CONVEX_BOUNDS_LEMMA : forall N:set, N <> Empty -> forall b :e R, forall f :e R :^: hl_ty_cart R N, forall x :e hl_ty_cart R N, forall e1 :e R, hl_convex_on N f (hl_cball N (hl_pair (hl_ty_cart R N) R x e1)) = 1 /\ (forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_cball N (hl_pair (hl_ty_cart R N) R x e1)) = 1 -> hl_real_le (f y) b = 1) -> forall y :e hl_ty_cart R N, hl_IN (hl_ty_cart R N) y (hl_cball N (hl_pair (hl_ty_cart R N) R x e1)) = 1 -> hl_real_le (hl_real_abs (f y)) (hl_real_add b (hl_real_mul (hl_real_of_num (hl_NUMERAL (hl_BIT0 (hl_BIT1 hl_zero)))) (hl_real_abs (f x)))) = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:18241 / CONVEX_IMP_BOUNDED_ON_INTERVAL   (hash md5:b672696c32455def26f933742341c9bf)
Theorem hlt_CONVEX_IMP_BOUNDED_ON_INTERVAL : forall f :e R :^: hl_ty_cart R 1, forall a b :e hl_ty_cart R 1, hl_convex_on 1 f (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> exists B :e R, hl_real_lt (hl_real_of_num (hl_NUMERAL hl_zero)) B = 1 /\ forall x :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_closed_interval 1 (hl_CONS (hl_ty_cart R 1 :*: hl_ty_cart R 1) (hl_pair (hl_ty_cart R 1) (hl_ty_cart R 1) a b) (hl_NIL (hl_ty_cart R 1 :*: hl_ty_cart R 1)))) = 1 -> hl_real_le (hl_real_abs (f x)) B = 1.
Admitted.

// HOL Light: Multivariate/convex.ml:18267 / CONVEX_IMP_PIECEWISE_MONOTONE   (hash md5:3466a08c4dd51edc4cbc587971154e4c)
Theorem hlt_CONVEX_IMP_PIECEWISE_MONOTONE : forall f :e R :^: hl_ty_cart R 1, forall s :e 2 :^: hl_ty_cart R 1, hl_convex_on 1 f s = 1 /\ hl_is_interval 1 s = 1 -> (forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_interior 1 s) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_interior 1 s) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (f x) (f y) = 1) \/ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x (hl_interior 1 s) = 1 /\ (hl_IN (hl_ty_cart R 1) y (hl_interior 1 s) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1) -> hl_real_le (f y) (f x) = 1) \/ exists a :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) a (hl_interior 1 s) = 1 /\ ((forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ (hl_real_le (hl_drop x) (hl_drop y) = 1 /\ hl_real_le (hl_drop y) (hl_drop a) = 1)) -> hl_real_le (f y) (f x) = 1) /\ forall x y :e hl_ty_cart R 1, hl_IN (hl_ty_cart R 1) x s = 1 /\ (hl_IN (hl_ty_cart R 1) y s = 1 /\ (hl_real_le (hl_drop a) (hl_drop x) = 1 /\ hl_real_le (hl_drop x) (hl_drop y) = 1)) -> hl_real_le (f x) (f y) = 1)).
Admitted.

